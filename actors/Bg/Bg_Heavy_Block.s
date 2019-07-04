.section .text
func_80941030:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lui     $at, 0x4480                # $at = 44800000
    mtc1    $at, $f12                  # $f12 = 1024.00
    jal     func_80026D90
    nop
    lwc1    $f4, 0x001C($sp)
    lw      t8, 0x0018($sp)
    lui     $at, 0x4480                # $at = 44800000
    mul.s   $f6, $f0, $f4
    mtc1    $at, $f12                  # $f12 = 1024.00
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    jal     func_80026D90
    sh      t7, 0x0030(t8)             # 00000030
    lwc1    $f10, 0x001C($sp)
    lw      t1, 0x0018($sp)
    lui     $at, 0x4480                # $at = 44800000
    mul.s   $f16, $f0, $f10
    mtc1    $at, $f12                  # $f12 = 1024.00
    trunc.w.s $f18, $f16
    mfc1    t0, $f18
    jal     func_80026D90
    sh      t0, 0x0032(t1)             # 00000032
    lwc1    $f4, 0x001C($sp)
    lw      t4, 0x0018($sp)
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t3, $f8
    nop
    sh      t3, 0x0034(t4)             # 00000034
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_809410C0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lui     $at, %hi(var_8094275C)     # $at = 80940000
    lwc1    $f4, %lo(var_8094275C)($at)
    lui     $at, 0xC140                # $at = C1400000
    mtc1    $at, $f6                   # $f6 = -12.00
    lui     $at, 0x4140                # $at = 41400000
    swc1    $f4, 0x006C(s0)            # 0000006C
    swc1    $f6, 0x0070(s0)            # 00000070
    lwc1    $f10, 0x002C($sp)
    mtc1    $at, $f8                   # $f8 = 12.00
    nop
    mul.s   $f12, $f8, $f10
    jal     func_80026D90
    nop
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     $at, 0x4000                # $at = 40000000
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_8094113C
    mtc1    $at, $f6                   # $f6 = 2.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f18                  # $f18 = 2.00
    nop
    sub.s   $f4, $f0, $f18
    beq     $zero, $zero, lbl_80941148
    swc1    $f4, 0x0024($sp)
    mtc1    $at, $f6                   # $f6 = 2.00
lbl_8094113C:
    nop
    add.s   $f8, $f0, $f6
    swc1    $f8, 0x0024($sp)
lbl_80941148:
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f12                  # $f12 = 8.00
    jal     func_80026D64
    nop
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f10                  # $f10 = 4.00
    lwc1    $f2, 0x002C($sp)
    lui     $at, 0xC100                # $at = C1000000
    add.s   $f16, $f0, $f10
    mtc1    $at, $f4                   # $f4 = -8.00
    mul.s   $f18, $f16, $f2
    swc1    $f18, 0x0060(s0)           # 00000060
    mul.s   $f12, $f4, $f2
    jal     func_80026D64
    nop
    swc1    $f0, 0x0064(s0)            # 00000064
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s0)             # 00000032
    swc1    $f0, 0x0020($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lwc1    $f6, 0x0020($sp)
    lwc1    $f8, 0x0024($sp)
    lwc1    $f16, 0x0064(s0)           # 00000064
    lh      a0, 0x0032(s0)             # 00000032
    mul.s   $f10, $f6, $f8
    nop
    mul.s   $f18, $f0, $f16
    add.s   $f4, $f18, $f10
    jal     func_800636C4              # sins?
    swc1    $f4, 0x005C(s0)            # 0000005C
    swc1    $f0, 0x0020($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s0)             # 00000032
    lwc1    $f6, 0x0020($sp)
    lwc1    $f16, 0x0024($sp)
    lwc1    $f10, 0x0064(s0)           # 00000064
    neg.s   $f8, $f6
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f18, $f8, $f16
    nop
    mul.s   $f4, $f0, $f10
    add.s   $f6, $f4, $f18
    swc1    $f6, 0x0064(s0)            # 00000064
    jal     func_80941030
    lw      a1, 0x002C($sp)
    lui     $at, %hi(var_80942760)     # $at = 80940000
    jal     func_80026D90
    lwc1    $f12, %lo(var_80942760)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f16, $f0, $f8
    mfc1    a1, $f16
    jal     func_80020F88
    nop
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8094123C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    sw      $zero, 0x0024($sp)
    lw      t6, 0x0004(s0)             # 00000004
    lui     $at, 0x0002                # $at = 00020000
    ori     $at, $at, 0x0030           # $at = 00020030
    or      t7, t6, $at                # t7 = 00020030
    sw      t7, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x169C             # a0 = 0600169C
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_809412B0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lui     a1, %hi(var_809426D0)      # a1 = 80940000
    addiu   a1, a1, %lo(var_809426D0)  # a1 = 809426D0
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a2, $zero, $zero           # a2 = 00000000
    mfc1    a1, $f0
    mfc1    a3, $f0
    jal     func_8001EC20
    nop
    sh      $zero, 0x0162(s0)          # 00000162
    lh      t6, 0x00A4(s1)             # 000000A4
    addiu   $at, $zero, 0x0064         # $at = 00000064
    bnel    t6, $at, lbl_80941324
    lh      t1, 0x001C(s0)             # 0000001C
    lh      t7, 0x001C(s0)             # 0000001C
    andi    t8, t7, 0xFF00             # t8 = 00000000
    sh      t8, 0x001C(s0)             # 0000001C
    lh      t9, 0x001C(s0)             # 0000001C
    ori     t0, t9, 0x0004             # t0 = 00000004
    sh      t0, 0x001C(s0)             # 0000001C
    lh      t1, 0x001C(s0)             # 0000001C
lbl_80941324:
    andi    t2, t1, 0x00FF             # t2 = 00000000
    sltiu   $at, t2, 0x0005
    beq     $at, $zero, lbl_809414C8
    sll     t2, t2,  2
    lui     $at, %hi(var_80942764)     # $at = 80940000
    addu    $at, $at, t2
    lw      t2, %lo(var_80942764)($at)
    jr      t2
    nop
var_80941348:
    lui     t3, %hi(func_8094260C)     # t3 = 80940000
    lui     t4, %hi(func_8094153C)     # t4 = 80940000
    addiu   t3, t3, %lo(func_8094260C) # t3 = 8094260C
    addiu   t4, t4, %lo(func_8094153C) # t4 = 8094153C
    sw      t3, 0x0134(s0)             # 00000134
    sw      t4, 0x0164(s0)             # 00000164
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809410C0
    lui     a1, 0x3F80                 # a1 = 3F800000
    lw      t6, 0x0004(s0)             # 00000004
    lui     $at, 0xC248                # $at = C2480000
    mtc1    $at, $f4                   # $f4 = -50.00
    addiu   t5, $zero, 0x0078          # t5 = 00000078
    ori     t7, t6, 0x0010             # t7 = 00000010
    sh      t5, 0x0160(s0)             # 00000160
    sw      t7, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_809414E0
    swc1    $f4, 0x0158(s0)            # 00000158
var_80941390:
    lui     t8, %hi(func_8094260C)     # t8 = 80940000
    lui     t9, %hi(func_8094153C)     # t9 = 80940000
    addiu   t8, t8, %lo(func_8094260C) # t8 = 8094260C
    addiu   t9, t9, %lo(func_8094153C) # t9 = 8094153C
    sw      t8, 0x0134(s0)             # 00000134
    sw      t9, 0x0164(s0)             # 00000164
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809410C0
    lui     a1, 0x4000                 # a1 = 40000000
    lw      t1, 0x0004(s0)             # 00000004
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f6                   # $f6 = -20.00
    addiu   t0, $zero, 0x0078          # t0 = 00000078
    ori     t2, t1, 0x0010             # t2 = 00000010
    sh      t0, 0x0160(s0)             # 00000160
    sw      t2, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_809414E0
    swc1    $f6, 0x0158(s0)            # 00000158
var_809413D8:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8094123C
    or      a1, s1, $zero              # a1 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    sra     a1, a1,  8
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80941410
    lui     t3, %hi(func_80941C5C)     # t3 = 80940000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809414E4
    lw      $ra, 0x001C($sp)
lbl_80941410:
    addiu   t3, t3, %lo(func_80941C5C) # t3 = 00001C5C
    beq     $zero, $zero, lbl_809414E0
    sw      t3, 0x0164(s0)             # 00000164
var_8094141C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8094123C
    or      a1, s1, $zero              # a1 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    sra     a1, a1,  8
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_809414A0
    lui     t0, %hi(func_80941C5C)     # t0 = 80940000
    lui     $at, 0x44D5                # $at = 44D50000
    mtc1    $at, $f8                   # $f8 = 1704.00
    lui     $at, 0x44BC                # $at = 44BC0000
    mtc1    $at, $f10                  # $f10 = 1504.00
    addiu   t5, $zero, 0x8AD0          # t5 = FFFF8AD0
    addiu   t7, $zero, 0xC000          # t7 = FFFFC000
    sh      t5, 0x0030(s0)             # 00000030
    sh      t7, 0x0032(s0)             # 00000032
    sh      $zero, 0x0034(s0)          # 00000034
    lui     $at, 0x4401                # $at = 44010000
    lh      t6, 0x0030(s0)             # 00000030
    lh      t8, 0x0032(s0)             # 00000032
    lh      t9, 0x0034(s0)             # 00000034
    mtc1    $at, $f16                  # $f16 = 516.00
    lui     t4, %hi(func_80942204)     # t4 = 80940000
    addiu   t4, t4, %lo(func_80942204) # t4 = 80942204
    sw      t4, 0x0164(s0)             # 00000164
    swc1    $f8, 0x0024(s0)            # 00000024
    swc1    $f10, 0x0028(s0)           # 00000028
    sh      t6, 0x00B4(s0)             # 000000B4
    sh      t8, 0x00B6(s0)             # 000000B6
    sh      t9, 0x00B8(s0)             # 000000B8
    swc1    $f16, 0x002C(s0)           # 0000002C
lbl_809414A0:
    addiu   t0, t0, %lo(func_80941C5C) # t0 = 80941C5C
    beq     $zero, $zero, lbl_809414E0
    sw      t0, 0x0164(s0)             # 00000164
var_809414AC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8094123C
    or      a1, s1, $zero              # a1 = 00000000
    lui     t1, %hi(func_80941C5C)     # t1 = 80940000
    addiu   t1, t1, %lo(func_80941C5C) # t1 = 80941C5C
    beq     $zero, $zero, lbl_809414E0
    sw      t1, 0x0164(s0)             # 00000164
lbl_809414C8:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8094123C
    or      a1, s1, $zero              # a1 = 00000000
    lui     t2, %hi(func_80941C5C)     # t2 = 80940000
    addiu   t2, t2, %lo(func_80941C5C) # t2 = 80941C5C
    sw      t2, 0x0164(s0)             # 00000164
lbl_809414E0:
    lw      $ra, 0x001C($sp)
lbl_809414E4:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_809414F4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      v0, 0x001C(a3)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    andi    v0, v0, 0x00FF             # v0 = 00000000
    beq     v0, $at, lbl_8094152C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_8094152C
    lw      a0, 0x001C($sp)
    addiu   a1, a0, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(a3)             # 0000013C
lbl_8094152C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8094153C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lwc1    $f4, 0x0060(s0)            # 00000060
    lwc1    $f6, 0x006C(s0)            # 0000006C
    lwc1    $f0, 0x0070(s0)            # 00000070
    lui     $at, %hi(var_80942778)     # $at = 80940000
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0060(s0)            # 00000060
    lwc1    $f10, 0x0060(s0)           # 00000060
    c.lt.s  $f10, $f0
    nop
    bc1f    lbl_80941580
    nop
    swc1    $f0, 0x0060(s0)            # 00000060
lbl_80941580:
    lwc1    $f0, %lo(var_80942778)($at)
    lwc1    $f16, 0x005C(s0)           # 0000005C
    lwc1    $f4, 0x0064(s0)            # 00000064
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f18, $f16, $f0
    nop
    mul.s   $f6, $f4, $f0
    swc1    $f18, 0x005C(s0)           # 0000005C
    jal     func_80021124
    swc1    $f6, 0x0064(s0)            # 00000064
    lh      t6, 0x00B4(s0)             # 000000B4
    lh      t7, 0x0030(s0)             # 00000030
    lh      t9, 0x00B6(s0)             # 000000B6
    lh      t0, 0x0032(s0)             # 00000032
    lh      t2, 0x00B8(s0)             # 000000B8
    lh      t3, 0x0034(s0)             # 00000034
    lhu     t5, 0x0162(s0)             # 00000162
    addu    t8, t6, t7
    addu    t1, t9, t0
    addu    t4, t2, t3
    andi    t6, t5, 0x0001             # t6 = 00000000
    sh      t8, 0x00B4(s0)             # 000000B4
    sh      t1, 0x00B6(s0)             # 000000B6
    bne     t6, $zero, lbl_809416D0
    sh      t4, 0x00B8(s0)             # 000000B8
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f10, 0x0158(s0)           # 00000158
    lwc1    $f18, 0x0104(s0)           # 00000104
    lwc1    $f4, 0x0158(s0)            # 00000158
    add.s   $f16, $f8, $f10
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f0                   # $f0 = 50.00
    add.s   $f6, $f18, $f4
    mtc1    $zero, $f8                 # $f8 = 0.00
    swc1    $f16, 0x0028(s0)           # 00000028
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    swc1    $f6, 0x0104(s0)            # 00000104
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t7, 0x0014($sp)
    lw      a0, 0x002C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f16, 0x0158(s0)           # 00000158
    lwc1    $f4, 0x0104(s0)            # 00000104
    lwc1    $f6, 0x0158(s0)            # 00000158
    lhu     t8, 0x0088(s0)             # 00000088
    sub.s   $f18, $f10, $f16
    andi    t9, t8, 0x0001             # t9 = 00000000
    sub.s   $f8, $f4, $f6
    swc1    $f18, 0x0028(s0)           # 00000028
    beq     t9, $zero, lbl_809416D0
    swc1    $f8, 0x0104(s0)            # 00000104
    lhu     t0, 0x0162(s0)             # 00000162
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f12                  # $f12 = 4.00
    ori     t1, t0, 0x0001             # t1 = 00000001
    jal     func_80026D64
    sh      t1, 0x0162(s0)             # 00000162
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f10                  # $f10 = 2.00
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f12                  # $f12 = 8.00
    add.s   $f16, $f0, $f10
    jal     func_80026D90
    swc1    $f16, 0x0060(s0)           # 00000060
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f12                  # $f12 = 8.00
    jal     func_80026D90
    swc1    $f0, 0x005C(s0)            # 0000005C
    swc1    $f0, 0x0064(s0)            # 00000064
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80941030
    lui     a1, 0x3F80                 # a1 = 3F800000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2852          # a1 = 00002852
    lwc1    $f12, 0x0090(s0)           # 00000090
    addiu   a1, $zero, 0x0096          # a1 = 00000096
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_800915CC
    addiu   a3, $zero, 0x0008          # a3 = 00000008
lbl_809416D0:
    lh      v0, 0x0160(s0)             # 00000160
    blez    v0, lbl_809416E4
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
    beq     $zero, $zero, lbl_809416EC
    sh      t2, 0x0160(s0)             # 00000160
lbl_809416E4:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_809416EC:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80941700:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0090($sp)
    sw      a3, 0x009C($sp)
    lbu     v1, 0x00AF($sp)
    lwc1    $f4, 0x009C($sp)
    swc1    $f12, 0x0048($sp)
    andi    t6, v1, 0x0001             # t6 = 00000000
    swc1    $f14, 0x004C($sp)
    beq     t6, $zero, lbl_80941760
    swc1    $f4, 0x0050($sp)
    addiu   t7, $zero, 0x0096          # t7 = 00000096
    addiu   t8, $zero, 0x0050          # t8 = 00000050
    sb      t7, 0x008C($sp)
    sb      $zero, 0x008A($sp)
    sb      $zero, 0x0089($sp)
    sb      $zero, 0x008E($sp)
    sb      $zero, 0x008D($sp)
    sb      t8, 0x0088($sp)
    sb      $zero, 0x008B($sp)
    beq     $zero, $zero, lbl_809417A0
    sb      $zero, 0x008F($sp)
lbl_80941760:
    addiu   t9, $zero, 0x00AA          # t9 = 000000AA
    addiu   t0, $zero, 0x0082          # t0 = 00000082
    addiu   t1, $zero, 0x005A          # t1 = 0000005A
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    addiu   t3, $zero, 0x0064          # t3 = 00000064
    addiu   t4, $zero, 0x003C          # t4 = 0000003C
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sb      t2, 0x008F($sp)
    sb      t1, 0x008E($sp)
    sb      t0, 0x008D($sp)
    sb      t9, 0x008C($sp)
    sb      t6, 0x008B($sp)
    sb      t5, 0x008A($sp)
    sb      t4, 0x0089($sp)
    sb      t3, 0x0088($sp)
lbl_809417A0:
    mtc1    $zero, $f0                 # $f0 = 0.00
    andi    t7, v1, 0x0008             # t7 = 00000000
    lui     $at, 0x3F00                # $at = 3F000000
    swc1    $f0, 0x0068($sp)
    beq     t7, $zero, lbl_809417C0
    swc1    $f0, 0x0060($sp)
    beq     $zero, $zero, lbl_809417CC
    swc1    $f0, 0x0064($sp)
lbl_809417C0:
    mtc1    $at, $f6                   # $f6 = 0.50
    nop
    swc1    $f6, 0x0064($sp)
lbl_809417CC:
    lw      t8, 0x0090($sp)
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFEC
    addiu   a1, $sp, 0x0070            # a1 = FFFFFFE0
    lh      t9, 0x07A0(t8)             # 000007F0
    andi    v0, v1, 0x0006             # v0 = 00000000
    sll     t0, t9,  2
    addu    t1, t8, t0
    lw      t2, 0x0790(t1)             # 000007EA
    lw      t4, 0x005C(t2)             # 0000015B
    sw      t4, 0x0000(a0)             # FFFFFFEC
    lw      t3, 0x0060(t2)             # 0000015F
    sw      t3, 0x0004(a0)             # FFFFFFF0
    lw      t4, 0x0064(t2)             # 00000163
    addiu   t2, $zero, 0x03E8          # t2 = 000003E8
    addiu   t3, $zero, 0x00A0          # t3 = 000000A0
    sw      t4, 0x0008(a0)             # FFFFFFF4
    lw      t5, 0x0090($sp)
    lh      t6, 0x07A0(t5)             # 000007B4
    sll     t7, t6,  2
    addu    t9, t5, t7
    lw      t8, 0x0790(t9)             # 0000083A
    lw      t1, 0x0050(t8)             # 000000A0
    sw      t1, 0x0000(a1)             # FFFFFFE0
    lw      t0, 0x0054(t8)             # 000000A4
    sw      t0, 0x0004(a1)             # FFFFFFE4
    lw      t1, 0x0058(t8)             # 000000A8
    sw      t1, 0x0008(a1)             # FFFFFFE8
    sh      t2, 0x0040($sp)
    beq     v0, $zero, lbl_80941910
    sh      t3, 0x0042($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_8094188C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80941864
    lwc1    $f8, 0x00A0($sp)
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80941A04
    lui     $at, 0x4120                # $at = 41200000
lbl_80941864:
    lwc1    $f10, 0x00A4($sp)
    lwc1    $f12, 0x00A8($sp)
    addiu   t4, $zero, 0x012C          # t4 = 0000012C
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    swc1    $f8, 0x0054($sp)
    sh      t4, 0x0040($sp)
    sh      t6, 0x0042($sp)
    swc1    $f10, 0x0058($sp)
    beq     $zero, $zero, lbl_80941A00
    swc1    $f12, 0x005C($sp)
lbl_8094188C:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D64
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    lui     $at, 0x477F                # $at = 477F0000
    mtc1    $at, $f12                  # $f12 = 65280.00
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x0044($sp)
    trunc.w.s $f4, $f0
    mfc1    v0, $f4
    nop
    sll     a0, v0, 16
    sra     a0, a0, 16
    jal     func_800636C4              # sins?
    sh      v0, 0x006E($sp)
    lwc1    $f6, 0x0044($sp)
    lwc1    $f10, 0x00A0($sp)
    lwc1    $f18, 0x00A4($sp)
    mul.s   $f8, $f0, $f6
    lh      a0, 0x006E($sp)
    swc1    $f18, 0x0058($sp)
    add.s   $f16, $f8, $f10
    jal     func_80063684              # coss?
    swc1    $f16, 0x0054($sp)
    lwc1    $f4, 0x0044($sp)
    lwc1    $f8, 0x00A8($sp)
    mul.s   $f6, $f0, $f4
    add.s   $f12, $f6, $f8
    beq     $zero, $zero, lbl_80941A00
    swc1    $f12, 0x005C($sp)
lbl_80941910:
    jal     func_80063F00
    nop
    sh      v0, 0x006E($sp)
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFEC
    jal     func_80063F34
    addiu   a1, $sp, 0x0070            # a1 = FFFFFFE0
    subu    t7, $zero, v0
    sh      t7, 0x006C($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x006E($sp)
    swc1    $f0, 0x0038($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x006C($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    lwc1    $f16, 0x0038($sp)
    lwc1    $f6, 0x00A0($sp)
    lh      a0, 0x006C($sp)
    mul.s   $f18, $f10, $f16
    nop
    mul.s   $f4, $f0, $f18
    add.s   $f8, $f4, $f6
    jal     func_800636C4              # sins?
    swc1    $f8, 0x0054($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    lwc1    $f18, 0x00A4($sp)
    lh      a0, 0x006E($sp)
    mul.s   $f16, $f0, $f10
    add.s   $f4, $f16, $f18
    jal     func_80063684              # coss?
    swc1    $f4, 0x0058($sp)
    swc1    $f0, 0x0038($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x006C($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f2                   # $f2 = 20.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lwc1    $f8, 0x0038($sp)
    lwc1    $f18, 0x00A8($sp)
    lwc1    $f4, 0x0048($sp)
    mul.s   $f10, $f6, $f8
    lwc1    $f6, 0x0054($sp)
    mul.s   $f16, $f0, $f10
    nop
    mul.s   $f8, $f6, $f2
    add.s   $f12, $f16, $f18
    lwc1    $f18, 0x0058($sp)
    lwc1    $f16, 0x004C($sp)
    sub.s   $f10, $f4, $f8
    mul.s   $f6, $f18, $f2
    lwc1    $f8, 0x0050($sp)
    swc1    $f12, 0x005C($sp)
    swc1    $f10, 0x0048($sp)
    mul.s   $f10, $f12, $f2
    sub.s   $f4, $f16, $f6
    sub.s   $f18, $f8, $f10
    swc1    $f4, 0x004C($sp)
    swc1    $f18, 0x0050($sp)
lbl_80941A00:
    lui     $at, 0x4120                # $at = 41200000
lbl_80941A04:
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D64
    nop
    trunc.w.s $f16, $f0
    lh      t0, 0x0040($sp)
    lh      t1, 0x0042($sp)
    addiu   t9, $sp, 0x008C            # t9 = FFFFFFFC
    mfc1    t3, $f16
    addiu   t8, $sp, 0x0088            # t8 = FFFFFFF8
    sw      t8, 0x0014($sp)
    addiu   t4, t3, 0x0014             # t4 = 00000014
    sw      t4, 0x0020($sp)
    sw      t9, 0x0010($sp)
    lw      a0, 0x0090($sp)
    addiu   a1, $sp, 0x0048            # a1 = FFFFFFB8
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFC4
    addiu   a3, $sp, 0x0060            # a3 = FFFFFFD0
    sw      t0, 0x0018($sp)
    jal     func_8001BF34
    sw      t1, 0x001C($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0090           # $sp = 00000000
    jr      $ra
    nop


func_80941A64:
    addiu   $sp, $sp, 0xFF10           # $sp = FFFFFF10
    sw      s3, 0x006C($sp)
    sw      s1, 0x0064($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0074($sp)
    sw      s4, 0x0070($sp)
    sw      s2, 0x0068($sp)
    sw      s0, 0x0060($sp)
    sdc1    $f30, 0x0058($sp)
    sdc1    $f28, 0x0050($sp)
    sdc1    $f26, 0x0048($sp)
    sdc1    $f24, 0x0040($sp)
    sdc1    $f22, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    lui     t7, %hi(var_809426E0)      # t7 = 80940000
    addiu   t7, t7, %lo(var_809426E0)  # t7 = 809426E0
    addiu   t0, t7, 0x0048             # t0 = 80942728
    addiu   t6, $sp, 0x00A4            # t6 = FFFFFFB4
lbl_80941AB0:
    lw      t9, 0x0000(t7)             # 809426E0
    addiu   t7, t7, 0x000C             # t7 = 809426EC
    addiu   t6, t6, 0x000C             # t6 = FFFFFFC0
    sw      t9, -0x000C(t6)            # FFFFFFB4
    lw      t8, -0x0008(t7)            # 809426E4
    sw      t8, -0x0008(t6)            # FFFFFFB8
    lw      t9, -0x0004(t7)            # 809426E8
    bne     t7, t0, lbl_80941AB0
    sw      t9, -0x0004(t6)            # FFFFFFBC
    jal     func_800636C4              # sins?
    lh      a0, 0x0030(s1)             # 00000030
    mov.s   $f30, $f0
    jal     func_80063684              # coss?
    lh      a0, 0x0030(s1)             # 00000030
    swc1    $f0, 0x008C($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s1)             # 00000032
    swc1    $f0, 0x0088($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0032(s1)             # 00000032
    lwc1    $f4, 0x0088($sp)
    mtc1    $zero, $f26                # $f26 = 0.00
    mov.s   $f28, $f0
    neg.s   $f6, $f4
    addiu   s0, $sp, 0x00A4            # s0 = FFFFFFB4
    swc1    $f6, 0x007C($sp)
    addiu   s2, s3, 0x1C24             # s2 = 00001C24
    addiu   s4, $sp, 0x00EC            # s4 = FFFFFFFC
    lwc1    $f14, 0x008C($sp)
lbl_80941B24:
    lwc1    $f0, 0x0008(s0)            # FFFFFFBC
    lwc1    $f2, 0x0004(s0)            # FFFFFFB8
    lwc1    $f12, 0x0000(s0)           # FFFFFFB4
    mul.s   $f8, $f0, $f14
    lwc1    $f6, 0x0088($sp)
    lwc1    $f18, 0x0024(s1)           # 00000024
    mul.s   $f10, $f2, $f30
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    or      a0, s2, $zero              # a0 = 00001C24
    mul.s   $f16, $f12, $f28
    or      a1, s3, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0092          # a2 = 00000092
    add.s   $f20, $f8, $f10
    lwc1    $f10, 0x0028(s1)           # 00000028
    add.s   $f4, $f16, $f18
    mul.s   $f8, $f6, $f20
    neg.s   $f6, $f0
    mul.s   $f16, $f2, $f14
    add.s   $f22, $f4, $f8
    mul.s   $f4, $f6, $f30
    lwc1    $f8, 0x007C($sp)
    add.s   $f18, $f10, $f16
    lwc1    $f16, 0x002C(s1)           # 0000002C
    mul.s   $f10, $f12, $f8
    mfc1    a3, $f22
    add.s   $f24, $f4, $f18
    mul.s   $f4, $f28, $f20
    add.s   $f6, $f10, $f16
    swc1    $f24, 0x0010($sp)
    add.s   $f20, $f6, $f4
    swc1    $f20, 0x0014($sp)
    lh      t1, 0x00B4(s1)             # 000000B4
    sw      t1, 0x0018($sp)
    lh      t2, 0x00B6(s1)             # 000000B6
    sw      t3, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    jal     func_80025110              # ActorSpawn
    sw      t2, 0x001C($sp)
    swc1    $f24, 0x0010($sp)
    swc1    $f20, 0x0014($sp)
    lh      t4, 0x00B4(s1)             # 000000B4
    mfc1    a3, $f22
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    sw      t4, 0x0018($sp)
    lh      t5, 0x00B6(s1)             # 000000B6
    sw      t0, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    or      a0, s2, $zero              # a0 = 00001C24
    or      a1, s3, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0092          # a2 = 00000092
    jal     func_80025110              # ActorSpawn
    sw      t5, 0x001C($sp)
    mfc1    a1, $f22
    mfc1    a2, $f24
    mfc1    a3, $f20
    or      a0, s3, $zero              # a0 = 00000000
    swc1    $f26, 0x0010($sp)
    swc1    $f26, 0x0014($sp)
    swc1    $f26, 0x0018($sp)
    jal     func_80941700
    sw      $zero, 0x001C($sp)
    addiu   s0, s0, 0x000C             # s0 = FFFFFFC0
    bnel    s0, s4, lbl_80941B24
    lwc1    $f14, 0x008C($sp)
    lw      $ra, 0x0074($sp)
    ldc1    $f20, 0x0030($sp)
    ldc1    $f22, 0x0038($sp)
    ldc1    $f24, 0x0040($sp)
    ldc1    $f26, 0x0048($sp)
    ldc1    $f28, 0x0050($sp)
    ldc1    $f30, 0x0058($sp)
    lw      s0, 0x0060($sp)
    lw      s1, 0x0064($sp)
    lw      s2, 0x0068($sp)
    lw      s3, 0x006C($sp)
    lw      s4, 0x0070($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00F0           # $sp = 00000000


func_80941C5C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022BB0
    or      a1, s0, $zero              # a1 = 00000000
    beql    v0, $zero, lbl_80941D74
    lw      $ra, 0x0024($sp)
    lh      v0, 0x001C(s1)             # 0000001C
    sh      $zero, 0x0160(s1)          # 00000160
    or      a0, s0, $zero              # a0 = 00000000
    andi    v0, v0, 0x00FF             # v0 = 00000000
    beq     v0, $zero, lbl_80941CDC
    addiu   a1, $zero, 0x0FB5          # a1 = 00000FB5
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80941CC0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80941CF4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80941D0C
    lh      t6, 0x07A0(s0)             # 000007A0
lbl_80941CC0:
    addiu   a1, $zero, 0x0FB4          # a1 = 00000FB4
    addiu   a2, $zero, 0x010E          # a2 = 0000010E
    or      a3, s1, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    beq     $zero, $zero, lbl_80941D0C
    lh      t6, 0x07A0(s0)             # 000007A0
lbl_80941CDC:
    addiu   a2, $zero, 0x00DC          # a2 = 000000DC
    or      a3, s1, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    beq     $zero, $zero, lbl_80941D0C
    lh      t6, 0x07A0(s0)             # 000007A0
lbl_80941CF4:
    addiu   a1, $zero, 0x0FB6          # a1 = 00000FB6
    addiu   a2, $zero, 0x00D2          # a2 = 000000D2
    or      a3, s1, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    lh      t6, 0x07A0(s0)             # 000007A0
lbl_80941D0C:
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     t7, t6,  2
    addu    t8, s0, t7
    jal     func_8007D85C
    lw      a0, 0x0790(t8)             # 00000790
    sll     a0, v0, 16
    sw      v0, 0x002C($sp)
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x61A8          # a1 = 000061A8
    lh      s0, 0x002E($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sll     a0, s0, 16
    sra     a0, a0, 16
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    jal     func_8007D6B0
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    lui     t9, %hi(func_80941D84)     # t9 = 80940000
    addiu   t9, t9, %lo(func_80941D84) # t9 = 80941D84
    sw      t9, 0x0164(s1)             # 00000164
    lw      $ra, 0x0024($sp)
lbl_80941D74:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80941D84:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x004C($sp)
    lw      t6, 0x004C($sp)
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    lw      t7, 0x1C44(t6)             # 00001C44
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    sw      t7, 0x0044($sp)
    lh      v0, 0x0160(s0)             # 00000160
    bnel    v0, $at, lbl_80941DDC
    slti    $at, v0, 0x0028
    mtc1    $zero, $f12                # $f12 = 0.00
    jal     func_800915CC
    addiu   a3, $zero, 0x0014          # a3 = 00000014
    lw      a0, 0x0044($sp)
    jal     func_80022F84
    addiu   a1, $zero, 0x086C          # a1 = 0000086C
    lh      v0, 0x0160(s0)             # 00000160
    slti    $at, v0, 0x0028
lbl_80941DDC:
    beq     $at, $zero, lbl_80941E98
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $at, $f12                  # $f12 = 110.00
    jal     func_80026D90
    nop
    swc1    $f0, 0x0030($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $at, $f12                  # $f12 = 110.00
    jal     func_80026D90
    swc1    $f0, 0x0034($sp)
    swc1    $f0, 0x0038($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0xC28C                # $at = C28C0000
    mtc1    $at, $f2                   # $f2 = -70.00
    lwc1    $f10, 0x0034($sp)
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x0030($sp)
    mul.s   $f16, $f10, $f2
    lui     $at, 0x4120                # $at = 41200000
    add.s   $f8, $f4, $f6
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, 0xBF80                # $at = BF800000
    addiu   t8, $zero, 0x000C          # t8 = 0000000C
    add.s   $f18, $f16, $f8
    lwc1    $f8, 0x0038($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    add.s   $f10, $f4, $f6
    mul.s   $f4, $f0, $f2
    mfc1    a1, $f18
    add.s   $f18, $f16, $f8
    mfc1    a2, $f10
    mtc1    $zero, $f10                # $f10 = 0.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    mtc1    $at, $f16                  # $f16 = -1.00
    add.s   $f6, $f4, $f18
    sw      t8, 0x001C($sp)
    lw      a0, 0x004C($sp)
    swc1    $f10, 0x0010($sp)
    mfc1    a3, $f6
    swc1    $f8, 0x0018($sp)
    jal     func_80941700
    swc1    $f16, 0x0014($sp)
    lh      v0, 0x0160(s0)             # 00000160
lbl_80941E98:
    addiu   t9, v0, 0x0001             # t9 = 00000001
    sh      t9, 0x0160(s0)             # 00000160
    lw      a1, 0x0044($sp)
    lw      a0, 0x004C($sp)
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022D40
    lw      a1, 0x004C($sp)
    beq     v0, $zero, lbl_80941ED8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x28E2          # a1 = 000028E2
    lui     t0, %hi(func_80941EEC)     # t0 = 80940000
    addiu   t0, t0, %lo(func_80941EEC) # t0 = 80941EEC
    sw      t0, 0x0164(s0)             # 00000164
lbl_80941ED8:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_80941EEC:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f4, 0x0008(s0)            # 00000008
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f8                   # $f8 = 1000.00
    swc1    $f4, 0x0034($sp)
    lwc1    $f6, 0x000C(s0)            # 0000000C
    addiu   t6, $sp, 0x0034            # t6 = FFFFFFEC
    addiu   a0, s1, 0x07C0             # a0 = 000007C0
    add.s   $f10, $f6, $f8
    addiu   a1, s0, 0x0078             # a1 = 00000078
    addiu   a2, $sp, 0x0044            # a2 = FFFFFFFC
    or      a3, s0, $zero              # a3 = 00000000
    swc1    $f10, 0x0038($sp)
    lwc1    $f16, 0x0010(s0)           # 00000010
    sw      t6, 0x0010($sp)
    jal     func_8002F4B8              # Raycast
    swc1    $f16, 0x003C($sp)
    lwc1    $f18, 0x000C(s0)           # 0000000C
    swc1    $f0, 0x0080(s0)            # 00000080
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    c.le.s  $f18, $f0
    addiu   a2, $zero, 0x003C          # a2 = 0000003C
    bc1fl   lbl_809421E4
    lwc1    $f12, 0x0060(s0)           # 00000060
    mtc1    $zero, $f12                # $f12 = 0.00
    jal     func_800915CC
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    andi    v0, v0, 0x00FF             # v0 = 00000000
    beq     v0, $zero, lbl_80942114
    nop
    beq     v0, $at, lbl_80941FA8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80942090
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80942184
    lh      t1, 0x07A0(s1)             # 000007A0
lbl_80941FA8:
    jal     func_80941A64
    or      a1, s1, $zero              # a1 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    sra     a1, a1,  8
    jal     func_800204D0
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lh      t7, 0x07A0(s1)             # 000007A0
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     t8, t7,  2
    addu    t9, s1, t8
    jal     func_8007D85C
    lw      a0, 0x0790(t9)             # 00000790
    sll     a0, v0, 16
    sw      v0, 0x0040($sp)
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x6D60          # a1 = 00006D60
    lh      a0, 0x0042($sp)
    addiu   a1, $zero, 0x000E          # a1 = 0000000E
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    sw      $zero, 0x0010($sp)
    jal     func_8007D738
    sw      a0, 0x0028($sp)
    lw      a0, 0x0028($sp)
    jal     func_8007D6B0
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    lh      t0, 0x07A0(s1)             # 000007A0
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    sll     t1, t0,  2
    addu    t2, s1, t1
    jal     func_8007D85C
    lw      a0, 0x0790(t2)             # 00000790
    sll     a0, v0, 16
    sw      v0, 0x0040($sp)
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x2EE0          # a1 = 00002EE0
    lh      a0, 0x0042($sp)
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)
    jal     func_8007D738
    sw      a0, 0x0028($sp)
    lw      a0, 0x0028($sp)
    jal     func_8007D6B0
    addiu   a1, $zero, 0x03E7          # a1 = 000003E7
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x001E          # a2 = 0000001E
    jal     func_80058FF8
    addiu   a3, $zero, 0x28E1          # a3 = 000028E1
    beq     $zero, $zero, lbl_809421F4
    lw      $ra, 0x0024($sp)
lbl_80942090:
    jal     func_80022FD0
    addiu   a1, $zero, 0x281D          # a1 = 0000281D
    lh      t3, 0x07A0(s1)             # 000007A0
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     t4, t3,  2
    addu    t5, s1, t4
    jal     func_8007D85C
    lw      a0, 0x0790(t5)             # 00000790
    sll     a0, v0, 16
    sw      v0, 0x0040($sp)
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x6D60          # a1 = 00006D60
    lh      a0, 0x0042($sp)
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0078          # a3 = 00000078
    sw      $zero, 0x0010($sp)
    jal     func_8007D738
    sw      a0, 0x0028($sp)
    lw      a0, 0x0028($sp)
    jal     func_8007D6B0
    addiu   a1, $zero, 0x0028          # a1 = 00000028
    lh      a1, 0x001C(s0)             # 0000001C
    lui     t6, %hi(func_80942214)     # t6 = 80940000
    addiu   t6, t6, %lo(func_80942214) # t6 = 80942214
    sra     a1, a1,  8
    sw      t6, 0x0164(s0)             # 00000164
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_800204D0
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809421E4
    lwc1    $f12, 0x0060(s0)           # 00000060
lbl_80942114:
    jal     func_80022FD0
    addiu   a1, $zero, 0x289F          # a1 = 0000289F
    lh      t7, 0x07A0(s1)             # 000007A0
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     t8, t7,  2
    addu    t9, s1, t8
    jal     func_8007D85C
    lw      a0, 0x0790(t9)             # 00000790
    sll     a0, v0, 16
    sw      v0, 0x0040($sp)
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x6D60          # a1 = 00006D60
    lh      a0, 0x0042($sp)
    addiu   a1, $zero, 0x000E          # a1 = 0000000E
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    sw      $zero, 0x0010($sp)
    jal     func_8007D738
    sw      a0, 0x0028($sp)
    lw      a0, 0x0028($sp)
    jal     func_8007D6B0
    addiu   a1, $zero, 0x0028          # a1 = 00000028
    lui     t0, %hi(func_80942214)     # t0 = 80940000
    addiu   t0, t0, %lo(func_80942214) # t0 = 80942214
    beq     $zero, $zero, lbl_809421E0
    sw      t0, 0x0164(s0)             # 00000164
    lh      t1, 0x07A0(s1)             # 000007A0
lbl_80942184:
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     t2, t1,  2
    addu    t3, s1, t2
    jal     func_8007D85C
    lw      a0, 0x0790(t3)             # 00000790
    sll     a0, v0, 16
    sw      v0, 0x0040($sp)
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x6D60          # a1 = 00006D60
    lh      a0, 0x0042($sp)
    addiu   a1, $zero, 0x000E          # a1 = 0000000E
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    sw      $zero, 0x0010($sp)
    jal     func_8007D738
    sw      a0, 0x0028($sp)
    lw      a0, 0x0028($sp)
    jal     func_8007D6B0
    addiu   a1, $zero, 0x0028          # a1 = 00000028
    lui     t4, %hi(func_80942214)     # t4 = 80940000
    addiu   t4, t4, %lo(func_80942214) # t4 = 80942214
    sw      t4, 0x0164(s0)             # 00000164
lbl_809421E0:
    lwc1    $f12, 0x0060(s0)           # 00000060
lbl_809421E4:
    jal     func_800AA4F8
    lwc1    $f14, 0x0068(s0)           # 00000068
    sh      v0, 0x00B4(s0)             # 000000B4
    lw      $ra, 0x0024($sp)
lbl_809421F4:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80942204:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80942214:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sdc1    $f20, 0x0028($sp)
    sw      a1, 0x005C($sp)
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sw      t6, 0x0010($sp)
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x8AD0          # a1 = FFFF8AD0
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    beq     v0, $zero, lbl_80942458
    addiu   $at, $zero, 0xFFCF         # $at = FFFFFFCF
    mtc1    $zero, $f20                # $f20 = 0.00
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x41A0                 # a2 = 41A00000
    mfc1    a1, $f20
    jal     func_8006385C
    nop
    mfc1    a1, $f20
    addiu   a0, s0, 0x0060             # a0 = 00000060
    jal     func_8006385C
    lui     a2, 0x4040                 # a2 = 40400000
    swc1    $f20, 0x006C(s0)           # 0000006C
    addiu   a1, s0, 0x0008             # a1 = 00000008
    lw      t8, 0x0000(a1)             # 00000008
    addiu   v1, s0, 0x0024             # v1 = 00000024
    or      a0, s0, $zero              # a0 = 00000000
    sw      t8, 0x0000(v1)             # 00000024
    lw      t7, 0x0004(a1)             # 0000000C
    sw      t7, 0x0004(v1)             # 00000028
    lw      t8, 0x0008(a1)             # 00000010
    sw      t8, 0x0008(v1)             # 0000002C
    sw      a1, 0x003C($sp)
    jal     func_8002121C
    sw      v1, 0x0040($sp)
    lw      v1, 0x0040($sp)
    lw      a1, 0x003C($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    lw      t0, 0x0000(v1)             # 00000000
    sw      t0, 0x0000(a1)             # 00000000
    lw      t9, 0x0004(v1)             # 00000004
    sw      t9, 0x0004(a1)             # 00000004
    lw      t0, 0x0008(v1)             # 00000008
    sw      t0, 0x0008(a1)             # 00000008
    lh      v0, 0x001C(s0)             # 0000001C
    andi    v0, v0, 0x00FF             # v0 = 00000000
    beql    v0, $zero, lbl_809423F4
    mtc1    $at, $f12                  # $f12 = 100.00
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80942470
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D90
    nop
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    jal     func_80026D64
    swc1    $f0, 0x0044($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D90
    swc1    $f0, 0x0048($sp)
    lui     $at, %hi(var_8094277C)     # $at = 80940000
    lwc1    $f6, %lo(var_8094277C)($at)
    lwc1    $f4, 0x0044($sp)
    lui     $at, %hi(var_80942780)     # $at = 80940000
    lwc1    $f16, %lo(var_80942780)($at)
    add.s   $f8, $f4, $f6
    lui     $at, 0x440A                # $at = 440A0000
    mtc1    $at, $f4                   # $f4 = 552.00
    lwc1    $f10, 0x0048($sp)
    mfc1    a1, $f8
    add.s   $f6, $f0, $f4
    lw      a0, 0x005C($sp)
    swc1    $f20, 0x0010($sp)
    add.s   $f18, $f10, $f16
    mfc1    a3, $f6
    swc1    $f20, 0x0014($sp)
    swc1    $f20, 0x0018($sp)
    mfc1    a2, $f18
    jal     func_80941700
    sw      $zero, 0x001C($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D90
    nop
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f12                  # $f12 = 80.00
    jal     func_80026D64
    swc1    $f0, 0x0044($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D90
    swc1    $f0, 0x0048($sp)
    lui     $at, %hi(var_80942784)     # $at = 80940000
    lwc1    $f10, %lo(var_80942784)($at)
    lwc1    $f8, 0x0044($sp)
    lui     $at, %hi(var_80942788)     # $at = 80940000
    lwc1    $f4, %lo(var_80942788)($at)
    add.s   $f16, $f8, $f10
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f8                   # $f8 = 600.00
    lwc1    $f18, 0x0048($sp)
    mfc1    a1, $f16
    add.s   $f10, $f0, $f8
    lw      a0, 0x005C($sp)
    swc1    $f20, 0x0010($sp)
    add.s   $f6, $f18, $f4
    mfc1    a3, $f10
    swc1    $f20, 0x0014($sp)
    swc1    $f20, 0x0018($sp)
    mfc1    a2, $f6
    jal     func_80941700
    sw      $zero, 0x001C($sp)
    beq     $zero, $zero, lbl_80942474
    lw      $ra, 0x0034($sp)
    mtc1    $at, $f12                  # $f12 = 0.00
lbl_809423F4:
    jal     func_80026D90
    nop
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    jal     func_80026D90
    swc1    $f0, 0x0048($sp)
    lui     $at, %hi(var_8094278C)     # $at = 80940000
    lwc1    $f18, %lo(var_8094278C)($at)
    lui     $at, %hi(var_80942790)     # $at = 80940000
    lwc1    $f6, %lo(var_80942790)($at)
    lwc1    $f16, 0x0048($sp)
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    add.s   $f8, $f0, $f6
    sw      t1, 0x001C($sp)
    lw      a0, 0x005C($sp)
    add.s   $f4, $f16, $f18
    mfc1    a3, $f8
    lui     a2, 0x41E8                 # a2 = 41E80000
    swc1    $f20, 0x0010($sp)
    mfc1    a1, $f4
    swc1    $f20, 0x0014($sp)
    jal     func_80941700
    swc1    $f20, 0x0018($sp)
    beq     $zero, $zero, lbl_80942474
    lw      $ra, 0x0034($sp)
lbl_80942458:
    lw      t2, 0x0004(s0)             # 00000004
    lui     t4, %hi(func_80942204)     # t4 = 80940000
    addiu   t4, t4, %lo(func_80942204) # t4 = 80942204
    and     t3, t2, $at
    sw      t3, 0x0004(s0)             # 00000004
    sw      t4, 0x0164(s0)             # 00000164
lbl_80942470:
    lw      $ra, 0x0034($sp)
lbl_80942474:
    ldc1    $f20, 0x0028($sp)
    lw      s0, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80942484:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0164(a0)             # 00000164
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809424A8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x003C($sp)
    addiu   a3, s0, 0x00B4             # a3 = 000000B4
    lw      v0, 0x1C44(t6)             # 00001C44
    lw      v1, 0x0164(s0)             # 00000164
    lui     t7, %hi(func_80941D84)     # t7 = 80940000
    addiu   t7, t7, %lo(func_80941D84) # t7 = 80941D84
    bne     v1, t7, lbl_8094251C
    lw      s1, 0x0000(t6)             # 00000000
    lwc1    $f12, 0x03A0(v0)           # 000003A0
    lwc1    $f14, 0x03A4(v0)           # 000003A4
    jal     func_800AB510
    lw      a2, 0x03A8(v0)             # 000003A8
    lwc1    $f4, 0x015C(s0)            # 0000015C
    lwc1    $f12, 0x0154(s0)           # 00000154
    lwc1    $f14, 0x0158(s0)           # 00000158
    neg.s   $f6, $f4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f6
    neg.s   $f12, $f12
    jal     func_800AA7F4
    neg.s   $f14, $f14
    beq     $zero, $zero, lbl_8094257C
    nop
lbl_8094251C:
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f10, 0x006C(s0)           # 0000006C
    lui     t8, %hi(func_80942214)     # t8 = 80940000
    addiu   t8, t8, %lo(func_80942214) # t8 = 80942214
    c.eq.s  $f8, $f10
    nop
    bc1f    lbl_8094257C
    nop
    bne     v1, t8, lbl_8094257C
    addiu   a3, s0, 0x00B4             # a3 = 000000B4
    lwc1    $f12, 0x0008(s0)           # 00000008
    lwc1    $f14, 0x000C(s0)           # 0000000C
    jal     func_800AB510
    lw      a2, 0x0010(s0)             # 00000010
    lui     $at, %hi(var_80942734)     # $at = 80940000
    lwc1    $f16, %lo(var_8094273C)($at)
    lwc1    $f12, %lo(var_80942734)($at)
    lwc1    $f14, %lo(var_80942738)($at)
    neg.s   $f18, $f16
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f18
    neg.s   $f12, $f12
    jal     func_800AA7F4
    neg.s   $f14, $f14
lbl_8094257C:
    lui     a0, %hi(var_80942728)      # a0 = 80940000
    addiu   a0, a0, %lo(var_80942728)  # a0 = 80942728
    jal     func_800AB958
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lui     a0, %hi(var_80942734)      # a0 = 80940000
    addiu   a0, a0, %lo(var_80942734)  # a0 = 80942734
    jal     func_800AB958
    addiu   a1, s0, 0x0008             # a1 = 00000008
    lw      t9, 0x003C($sp)
    jal     func_8007E298
    lw      a0, 0x0000(t9)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s1)             # 000002C0
    sw      t1, 0x0000(s0)             # 00000000
    lw      t2, 0x003C($sp)
    lw      a0, 0x0000(t2)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0020($sp)
    lw      a1, 0x0020($sp)
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x13C0             # t5 = 060013C0
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s1)             # 000002C0
    sw      t5, 0x0004(s0)             # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_8094260C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      v0, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     a2, 0xC1A0                 # a2 = C1A00000
    andi    v0, v0, 0x00FF             # v0 = 00000000
    beq     v0, $at, lbl_80942640
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80942670
    lui     a2, 0xC0A0                 # a2 = C0A00000
    beq     $zero, $zero, lbl_8094269C
    lw      $ra, 0x0014($sp)
lbl_80942640:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    lui     $at, 0xC382                # $at = C3820000
    mtc1    $at, $f14                  # $f14 = -260.00
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x18A0             # a1 = 060018A0
    jal     func_80028048
    lw      a0, 0x001C($sp)
    beq     $zero, $zero, lbl_8094269C
    lw      $ra, 0x0014($sp)
lbl_80942670:
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f12                  # $f12 = 45.00
    lui     $at, 0xC38C                # $at = C38C0000
    mtc1    $at, $f14                  # $f14 = -280.00
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1A30             # a1 = 06001A30
    jal     func_80028048
    lw      a0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
lbl_8094269C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop

.section .data

var_809426B0: .word 0x00920100, 0x00000000, 0x009A0000, 0x00000168
.word func_809412B0
.word func_809414F4
.word func_80942484
.word func_809424A8
var_809426D0: .word 0xC0500001, 0xB0F40FA0, 0xB0F80190, 0x30FC0190
var_809426E0: .word \
0x00000000, 0x43960000, 0xC1A00000, 0x42480000, \
0x43480000, 0xC1A00000, 0xC2480000, 0x43480000, \
0xC1A00000, 0x00000000, 0x42C80000, 0x41F00000, \
0x00000000, 0x42C80000, 0xC28C0000, 0x00000000, \
0x00000000, 0xC1A00000
var_80942728: .word 0x00000000, 0x00000000, 0x00000000
var_80942734: .word 0x00000000
var_80942738: .word 0x43C80000
var_8094273C: .word 0x00000000

.section .rodata

.word \
0x4E415F53, 0x455F504C, 0x5F50554C, 0x4C5F5550, \
0x5F424947, 0x524F434B, 0x00000000
var_8094275C: .word 0xBF19999A
var_80942760: .word 0x3E4CCCCD
var_80942764: .word var_809414AC
.word var_809413D8
.word var_80941348
.word var_80941390
.word var_8094141C
var_80942778: .word 0x3F7AE148
var_8094277C: .word 0x44D1C000
var_80942780: .word 0x44A0C000
var_80942784: .word 0x44D82000
var_80942788: .word 0x449EA000
var_8094278C: .word 0xC437C000
var_80942790: .word 0xC555A000, 0x00000000, 0x00000000, 0x00000000

