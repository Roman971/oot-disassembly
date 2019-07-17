.section .text
func_80890590:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lw      t9, 0x0024(s0)             # 00000024
    lui     $at, 0xC060                # $at = C0600000
    mtc1    $at, $f4                   # $f4 = -3.50
    sw      t9, 0x0038(s0)             # 00000038
    lw      t9, 0x002C(s0)             # 0000002C
    lw      t8, 0x0028(s0)             # 00000028
    addiu   t6, $zero, 0x0047          # t6 = 00000047
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sb      t6, 0x0117(s0)             # 00000117
    sb      t7, 0x001F(s0)             # 0000001F
    swc1    $f4, 0x006C(s0)            # 0000006C
    sw      t9, 0x0040(s0)             # 00000040
    sw      t8, 0x003C(s0)             # 0000003C
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t0, s0, 0x0180             # t0 = 00000180
    addiu   t1, s0, 0x01EC             # t1 = 000001EC
    addiu   t2, $zero, 0x0012          # t2 = 00000012
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    addiu   a3, a3, 0x01E4             # a3 = 060001E4
    addiu   a2, a2, 0x1EE8             # a2 = 06001EE8
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C684
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   t3, $zero, 0x00FE          # t3 = 000000FE
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    sb      t3, 0x00AE(s0)             # 000000AE
    sb      t4, 0x00AF(s0)             # 000000AF
    addiu   a1, s0, 0x0280             # a1 = 00000280
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80891D30)      # a3 = 80890000
    lw      a1, 0x0034($sp)
    addiu   a3, a3, %lo(var_80891D30)  # a3 = 80891D30
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lh      t5, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_80891D80)     # $at = 80890000
    addiu   t7, $zero, 0x0023          # t7 = 00000023
    sh      t5, 0x026A(s0)             # 0000026A
    lh      t6, 0x026A(s0)             # 0000026A
    lwc1    $f6, %lo(var_80891D80)($at)
    lui     $at, 0x3FC0                # $at = 3FC00000
    beq     t6, $zero, lbl_808906B4
    swc1    $f6, 0x027C(s0)            # 0000027C
    lwc1    $f8, 0x027C(s0)            # 0000027C
    mtc1    $at, $f10                  # $f10 = 1.50
    addiu   t8, $zero, 0x002D          # t8 = 0000002D
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    mul.s   $f16, $f8, $f10
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    addiu   t1, $zero, 0x0010          # t1 = 00000010
    sh      t7, 0x02C0(s0)             # 000002C0
    sh      t8, 0x02C2(s0)             # 000002C2
    sb      t9, 0x00AF(s0)             # 000000AF
    sb      t0, 0x029C(s0)             # 0000029C
    swc1    $f16, 0x027C(s0)           # 0000027C
    sb      t1, 0x029D(s0)             # 0000029D
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x1C24             # a1 = 00001C24
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800265D4
    addiu   a3, $zero, 0x0005          # a3 = 00000005
lbl_808906B4:
    lui     $at, %hi(var_80891D84)     # $at = 80890000
    lwc1    $f4, %lo(var_80891D84)($at)
    lwc1    $f18, 0x027C(s0)           # 0000027C
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    mul.s   $f0, $f18, $f4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    mfc1    a1, $f0
    swc1    $f0, 0x0274(s0)            # 00000274
    jal     func_8001EC20
    swc1    $f0, 0x00BC(s0)            # 000000BC
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f0                   # $f0 = 60.00
    lui     t2, %hi(var_80891CF0)      # t2 = 80890000
    addiu   t2, t2, %lo(var_80891CF0)  # t2 = 80891CF0
    sw      t2, 0x0098(s0)             # 00000098
    addiu   t3, $zero, 0x001D          # t3 = 0000001D
    mfc1    a3, $f0
    sw      t3, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x420C                 # a2 = 420C0000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    addiu   a0, s1, 0x07C0             # a0 = 000007C0
    lw      a1, 0x0078(s0)             # 00000078
    jal     func_800343D4
    lbu     a2, 0x007D(s0)             # 0000007D
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80890750
    lui     t4, %hi(func_808907E4)     # t4 = 80890000
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v0, $at, lbl_80890750
    nop
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8089075C
    lw      $ra, 0x002C($sp)
lbl_80890750:
    addiu   t4, t4, %lo(func_808907E4) # t4 = 000007E4
    sw      t4, 0x025C(s0)             # 0000025C
    lw      $ra, 0x002C($sp)
lbl_8089075C:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_8089076C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a2, 0x0280             # a1 = 00000280
    jal     func_8004ABCC
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lw      v1, 0x0118(a2)             # 00000118
    beql    v1, $zero, lbl_808907D8
    lw      $ra, 0x0014($sp)
    lw      t6, 0x0130(v1)             # 00000130
    or      v0, v1, $zero              # v0 = 00000000
    beql    t6, $zero, lbl_808907D8
    lw      $ra, 0x0014($sp)
    lh      v1, 0x0142(v1)             # 00000142
    addiu   t9, $zero, 0x0258          # t9 = 00000258
    blez    v1, lbl_808907C0
    addiu   t7, v1, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0142(v0)             # 00000142
lbl_808907C0:
    lh      t8, 0x026A(a2)             # 0000026A
    beql    t8, $zero, lbl_808907D8
    lw      $ra, 0x0014($sp)
    sw      $zero, 0x015C(v0)          # 0000015C
    sh      t9, 0x0154(v0)             # 00000154
    lw      $ra, 0x0014($sp)
lbl_808907D8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808907E4:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x01E4             # a0 = 060001E4
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      t6, 0x003C($sp)
    lui     $at, 0xC120                # $at = C1200000
    cvt.s.w $f6, $f4
    lw      t7, 0x1C44(t6)             # 00001C44
    mtc1    $at, $f8                   # $f8 = -10.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x01E4             # a1 = 060001E4
    sw      $zero, 0x0014($sp)
    swc1    $f6, 0x0010($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x4000                 # a2 = 40000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      t7, 0x0030($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lw      t8, 0x0030($sp)
    addiu   v1, $zero, 0x0014          # v1 = 00000014
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    lwc1    $f0, 0x0828(t8)            # 00000828
    addiu   a1, $zero, 0x39EE          # a1 = 000039EE
    or      a0, s0, $zero              # a0 = 00000000
    abs.s   $f0, $f0
    trunc.w.s $f10, $f0
    mfc1    t2, $f10
    nop
    sll     t3, t2,  1
    subu    t4, v1, t3
    sh      t4, 0x0268(s0)             # 00000268
    lh      v0, 0x0268(s0)             # 00000268
    bgezl   v0, lbl_80890890
    slti    $at, v0, 0x0015
    sh      t5, 0x0268(s0)             # 00000268
    lh      v0, 0x0268(s0)             # 00000268
    slti    $at, v0, 0x0015
lbl_80890890:
    bnel    $at, $zero, lbl_808908A0
    lw      t6, 0x0004(s0)             # 00000004
    sh      v1, 0x0268(s0)             # 00000268
    lw      t6, 0x0004(s0)             # 00000004
lbl_808908A0:
    lh      t8, 0x026A(s0)             # 0000026A
    lui     $at, 0xF7FF                # $at = F7FF0000
    lwc1    $f16, 0x0080(s0)           # 00000080
    ori     $at, $at, 0xFFFF           # $at = F7FFFFFF
    and     t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    beq     t8, $zero, lbl_808908D0
    swc1    $f16, 0x0028(s0)           # 00000028
    jal     func_80022FD0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808908D8
    nop
lbl_808908D0:
    jal     func_80022FD0
    addiu   a1, $zero, 0x3986          # a1 = 00003986
lbl_808908D8:
    lui     t9, %hi(func_808908F8)     # t9 = 80890000
    addiu   t9, t9, %lo(func_808908F8) # t9 = 808908F8
    sw      t9, 0x025C(s0)             # 0000025C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_808908F8:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0044($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t7, 0x1C44(t6)             # 00001C44
    jal     func_8008C9C0
    sw      t7, 0x003C($sp)
    lw      a0, 0x0044($sp)
    lui     t8, 0x0001                 # t8 = 00010000
    or      a1, s0, $zero              # a1 = 00000000
    addu    t8, t8, a0
    lw      t8, 0x1DE4(t8)             # 00011DE4
    addiu   a2, s0, 0x0024             # a2 = 00000024
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    andi    t9, t8, 0x0003             # t9 = 00000000
    bne     t9, $zero, lbl_80890974
    lui     $at, 0x4100                # $at = 41000000
    lw      a3, 0x00C4(s0)             # 000000C4
    mtc1    $at, $f4                   # $f4 = 8.00
    addiu   t1, $zero, 0x01F4          # t1 = 000001F4
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x0020($sp)
    sw      t2, 0x001C($sp)
    sw      t1, 0x0018($sp)
    sw      t0, 0x0010($sp)
    jal     func_800260E8
    swc1    $f4, 0x0014($sp)
lbl_80890974:
    lh      t4, 0x0268(s0)             # 00000268
    lui     $at, 0x3F80                # $at = 3F800000
    bnel    t4, $zero, lbl_80890B08
    lw      $ra, 0x0034($sp)
    mtc1    $at, $f0                   # $f0 = 1.00
    addiu   a0, s0, 0x00C4             # a0 = 000000C4
    lui     a1, 0x4140                 # a1 = 41400000
    mfc1    a2, $f0
    mfc1    a3, $f0
    jal     func_80064280
    nop
    mtc1    $zero, $f2                 # $f2 = 0.00
    lwc1    $f6, 0x00BC(s0)            # 000000BC
    lw      v1, 0x003C($sp)
    c.lt.s  $f6, $f2
    nop
    bc1fl   lbl_808909EC
    lhu     t5, 0x0270(s0)             # 00000270
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_800642F0
    lw      a2, 0x0278(s0)             # 00000278
    addiu   a0, s0, 0x0278             # a0 = 00000278
    lui     a1, 0x4396                 # a1 = 43960000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x40A0                 # a3 = 40A00000
    beq     $zero, $zero, lbl_80890B08
    lw      $ra, 0x0034($sp)
    lhu     t5, 0x0270(s0)             # 00000270
lbl_808909EC:
    swc1    $f2, 0x0278(s0)            # 00000278
    swc1    $f2, 0x00BC(s0)            # 000000BC
    sltiu   $at, t5, 0x0005
    beq     $at, $zero, lbl_80890ABC
    lwc1    $f0, 0x0828(v1)            # 00000828
    sll     t5, t5,  2
    lui     $at, %hi(var_80891D88)     # $at = 80890000
    addu    $at, $at, t5
    lw      t5, %lo(var_80891D88)($at)
    jr      t5
    nop
var_80890A18:
    lh      t6, 0x008A(s0)             # 0000008A
    beq     $zero, $zero, lbl_80890ABC
    sh      t6, 0x0032(s0)             # 00000032
var_80890A24:
    lh      t7, 0x008A(s0)             # 0000008A
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f16                  # $f16 = 800.00
    mtc1    t7, $f8                    # $f8 = 0.00
    mul.s   $f18, $f16, $f0
    cvt.s.w $f10, $f8
    add.s   $f4, $f10, $f18
    trunc.w.s $f6, $f4
    mfc1    t9, $f6
    beq     $zero, $zero, lbl_80890ABC
    sh      t9, 0x0032(s0)             # 00000032
var_80890A50:
    lh      v0, 0x008A(s0)             # 0000008A
    lh      t0, 0x00B6(v1)             # 000000B6
    lui     $at, %hi(var_80891D9C)     # $at = 80890000
    lwc1    $f10, %lo(var_80891D9C)($at)
    subu    t1, t0, v0
    mtc1    t1, $f8                    # $f8 = 0.00
    mul.s   $f18, $f0, $f10
    mtc1    v0, $f6                    # $f6 = 0.00
    cvt.s.w $f16, $f8
    cvt.s.w $f8, $f6
    mul.s   $f4, $f16, $f18
    add.s   $f10, $f8, $f4
    trunc.w.s $f16, $f10
    mfc1    t3, $f16
    beq     $zero, $zero, lbl_80890ABC
    sh      t3, 0x0032(s0)             # 00000032
var_80890A90:
    lh      t4, 0x008A(s0)             # 0000008A
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f8                   # $f8 = 800.00
    mtc1    t4, $f18                   # $f18 = 0.00
    mul.s   $f4, $f8, $f0
    cvt.s.w $f6, $f18
    sub.s   $f10, $f6, $f4
    trunc.w.s $f16, $f10
    mfc1    t6, $f16
    nop
    sh      t6, 0x0032(s0)             # 00000032
lbl_80890ABC:
    lh      t7, 0x026A(s0)             # 0000026A
    lui     t8, %hi(func_80890C34)     # t8 = 80890000
    addiu   t9, $zero, 0x0082          # t9 = 00000082
    beq     t7, $zero, lbl_80890ADC
    lui     $at, 0x4080                # $at = 40800000
    addiu   t8, t8, %lo(func_80890C34) # t8 = 80890C34
    beq     $zero, $zero, lbl_80890B04
    sw      t8, 0x025C(s0)             # 0000025C
lbl_80890ADC:
    mtc1    $at, $f12                  # $f12 = 4.00
    jal     func_80026D64
    sh      t9, 0x0262(s0)             # 00000262
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f18                  # $f18 = 6.00
    lui     t0, %hi(func_80890B18)     # t0 = 80890000
    addiu   t0, t0, %lo(func_80890B18) # t0 = 80890B18
    add.s   $f8, $f0, $f18
    sw      t0, 0x025C(s0)             # 0000025C
    swc1    $f8, 0x0068(s0)            # 00000068
lbl_80890B04:
    lw      $ra, 0x0034($sp)
lbl_80890B08:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80890B18:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f0                   # $f0 = 12.00
    lwc1    $f4, 0x00C4(s0)            # 000000C4
    addiu   a0, s0, 0x00C4             # a0 = 000000C4
    lui     a2, 0x4040                 # a2 = 40400000
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_80890B68
    lw      a0, 0x0024($sp)
    mfc1    a1, $f0
    jal     func_80064280
    lui     a3, 0x3F80                 # a3 = 3F800000
    lw      a0, 0x0024($sp)
lbl_80890B68:
    lw      a1, 0x0078(s0)             # 00000078
    lbu     a2, 0x007D(s0)             # 0000007D
    jal     func_800343D4
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80890BA0
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v0, $at, lbl_80890BA0
    lui     t6, %hi(func_80890F34)     # t6 = 80890000
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t6, t6, %lo(func_80890F34) # t6 = 80890F34
    sw      t6, 0x025C(s0)             # 0000025C
    beq     $zero, $zero, lbl_80890C20
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_80890BA0:
    lh      t7, 0x0262(s0)             # 00000262
    lui     t0, %hi(func_80890F34)     # t0 = 80890000
    lui     $at, 0x41F0                # $at = 41F00000
    beq     t7, $zero, lbl_80890BF8
    addiu   t0, t0, %lo(func_80890F34) # t0 = 80890F34
    lwc1    $f0, 0x0090(s0)            # 00000090
    mtc1    $at, $f8                   # $f8 = 30.00
    lui     $at, 0x43C8                # $at = 43C80000
    c.lt.s  $f0, $f8
    nop
    bc1t    lbl_80890BF8
    nop
    mtc1    $at, $f10                  # $f10 = 400.00
    nop
    c.lt.s  $f10, $f0
    nop
    bc1t    lbl_80890BF8
    nop
    lhu     t8, 0x0088(s0)             # 00000088
    andi    t9, t8, 0x0008             # t9 = 00000000
    beql    t9, $zero, lbl_80890C04
    lh      t1, 0x0264(s0)             # 00000264
lbl_80890BF8:
    beq     $zero, $zero, lbl_80890C20
    sw      t0, 0x025C(s0)             # 0000025C
    lh      t1, 0x0264(s0)             # 00000264
lbl_80890C04:
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t1, $zero, lbl_80890C24
    lw      $ra, 0x001C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x398A          # a1 = 0000398A
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    sh      t2, 0x0264(s0)             # 00000264
lbl_80890C20:
    lw      $ra, 0x001C($sp)
lbl_80890C24:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80890C34:
    sw      a1, 0x0004($sp)
    lw      t6, 0x0004(a0)             # 00000004
    lui     t8, %hi(func_80890C58)     # t8 = 80890000
    addiu   t8, t8, %lo(func_80890C58) # t8 = 80890C58
    ori     t7, t6, 0x0005             # t7 = 00000005
    sw      t7, 0x0004(a0)             # 00000004
    sw      t8, 0x025C(a0)             # 0000025C
    jr      $ra
    nop


func_80890C58:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f0                   # $f0 = 12.00
    lwc1    $f4, 0x00C4(s0)            # 000000C4
    addiu   a0, s0, 0x00C4             # a0 = 000000C4
    lui     a2, 0x4040                 # a2 = 40400000
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_80890CA8
    lw      a0, 0x0024($sp)
    mfc1    a1, $f0
    jal     func_80064280
    lui     a3, 0x3F80                 # a3 = 3F800000
    lw      a0, 0x0024($sp)
lbl_80890CA8:
    lw      a1, 0x0078(s0)             # 00000078
    lbu     a2, 0x007D(s0)             # 0000007D
    jal     func_800343D4
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80890CC8
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     v0, $at, lbl_80890CF4
lbl_80890CC8:
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f6                   # $f6 = 400.00
    lwc1    $f0, 0x0090(s0)            # 00000090
    c.lt.s  $f6, $f0
    nop
    bc1t    lbl_80890CF4
    nop
    lhu     t6, 0x0088(s0)             # 00000088
    lui     $at, 0x428C                # $at = 428C0000
    andi    t7, t6, 0x0008             # t7 = 00000000
    beq     t7, $zero, lbl_80890D04
lbl_80890CF4:
    lui     t8, %hi(func_80890F34)     # t8 = 80890000
    addiu   t8, t8, %lo(func_80890F34) # t8 = 80890F34
    beq     $zero, $zero, lbl_80890EB4
    sw      t8, 0x025C(s0)             # 0000025C
lbl_80890D04:
    mtc1    $at, $f8                   # $f8 = 70.00
    nop
    c.lt.s  $f0, $f8
    nop
    bc1f    lbl_80890D30
    nop
    lh      t9, 0x0260(s0)             # 00000260
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    bne     t9, $zero, lbl_80890D30
    nop
    sh      t0, 0x0260(s0)             # 00000260
lbl_80890D30:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lwc1    $f10, 0x0090(s0)           # 00000090
    lui     $at, 0x4316                # $at = 43160000
    mul.s   $f6, $f0, $f4
    mtc1    $at, $f8                   # $f8 = 150.00
    sub.s   $f18, $f10, $f16
    lui     $at, %hi(var_80891DA0)     # $at = 80890000
    lwc1    $f4, %lo(var_80891DA0)($at)
    lwc1    $f16, 0x0068(s0)           # 00000068
    lui     $at, 0x4040                # $at = 40400000
    add.s   $f10, $f6, $f8
    addiu   a1, $zero, 0x398A          # a1 = 0000398A
    div.s   $f2, $f18, $f10
    mtc1    $at, $f18                  # $f18 = 3.00
    lui     $at, 0x4040                # $at = 40400000
    mul.s   $f6, $f2, $f4
    add.s   $f8, $f16, $f6
    swc1    $f8, 0x0068(s0)            # 00000068
    lwc1    $f12, 0x0068(s0)           # 00000068
    c.le.s  $f18, $f12
    nop
    bc1fl   lbl_80890DB4
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f10                  # $f10 = -3.00
    nop
    swc1    $f10, 0x0068(s0)           # 00000068
    lwc1    $f12, 0x0068(s0)           # 00000068
    lui     $at, 0xC040                # $at = C0400000
lbl_80890DB4:
    mtc1    $at, $f0                   # $f0 = -3.00
    nop
    c.lt.s  $f12, $f0
    nop
    bc1fl   lbl_80890DD4
    lh      t1, 0x0260(s0)             # 00000260
    swc1    $f0, 0x0068(s0)            # 00000068
    lh      t1, 0x0260(s0)             # 00000260
lbl_80890DD4:
    bnel    t1, $zero, lbl_80890DE8
    lh      v0, 0x008A(s0)             # 0000008A
    beq     $zero, $zero, lbl_80890DF4
    lh      v0, 0x008A(s0)             # 0000008A
    lh      v0, 0x008A(s0)             # 0000008A
lbl_80890DE8:
    subu    v0, $zero, v0
    sll     v0, v0, 16
    sra     v0, v0, 16
lbl_80890DF4:
    lh      v1, 0x0032(s0)             # 00000032
    subu    v0, v0, v1
    sll     v0, v0, 16
    sra     v0, v0, 16
    blezl   v0, lbl_80890E48
    mtc1    v0, $f16                   # $f16 = 0.00
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x41F8                # $at = 41F80000
    mtc1    $at, $f6                   # $f6 = 31.00
    cvt.s.w $f16, $f4
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    div.s   $f8, $f16, $f6
    add.s   $f10, $f8, $f18
    trunc.w.s $f4, $f10
    mfc1    a0, $f4
    nop
    sll     a0, a0, 16
    beq     $zero, $zero, lbl_80890E78
    sra     a0, a0, 16
    mtc1    v0, $f16                   # $f16 = 0.00
lbl_80890E48:
    lui     $at, 0x41F8                # $at = 41F80000
    mtc1    $at, $f8                   # $f8 = 31.00
    cvt.s.w $f6, $f16
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    div.s   $f18, $f6, $f8
    sub.s   $f4, $f18, $f10
    trunc.w.s $f16, $f4
    mfc1    a0, $f16
    nop
    sll     a0, a0, 16
    sra     a0, a0, 16
lbl_80890E78:
    mtc1    a0, $f6                    # $f6 = 0.00
    mtc1    v1, $f8                    # $f8 = 0.00
    lh      t6, 0x0264(s0)             # 00000264
    cvt.s.w $f0, $f6
    cvt.s.w $f18, $f8
    add.s   $f10, $f0, $f0
    add.s   $f4, $f18, $f10
    trunc.w.s $f16, $f4
    mfc1    t5, $f16
    bne     t6, $zero, lbl_80890EB4
    sh      t5, 0x0032(s0)             # 00000032
    jal     func_80022FD0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sh      t7, 0x0264(s0)             # 00000264
lbl_80890EB4:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80890EC8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, a3, 0x0068             # a0 = 00000068
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_800642F0
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lh      t6, 0x0262(a3)             # 00000262
    bnel    t6, $zero, lbl_80890F28
    lw      $ra, 0x0014($sp)
    lh      t7, 0x026A(a3)             # 0000026A
    lui     t9, %hi(func_80890F34)     # t9 = 80890000
    lui     t8, %hi(func_80890C34)     # t8 = 80890000
    beq     t7, $zero, lbl_80890F20
    addiu   t9, t9, %lo(func_80890F34) # t9 = 80890F34
    addiu   t8, t8, %lo(func_80890C34) # t8 = 80890C34
    beq     $zero, $zero, lbl_80890F24
    sw      t8, 0x025C(a3)             # 0000025C
lbl_80890F20:
    sw      t9, 0x025C(a3)             # 0000025C
lbl_80890F24:
    lw      $ra, 0x0014($sp)
lbl_80890F28:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80890F34:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sh      $zero, 0x026E(a0)          # 0000026E
    sw      a0, 0x0018($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x3987          # a1 = 00003987
    lw      a0, 0x0018($sp)
    lui     $at, 0x0800                # $at = 08000000
    lui     t0, %hi(func_80890F8C)     # t0 = 80890000
    lw      t6, 0x0004(a0)             # 00000004
    addiu   t0, t0, %lo(func_80890F8C) # t0 = 80890F8C
    sw      t0, 0x025C(a0)             # 0000025C
    or      t7, t6, $at                # t7 = 08000000
    addiu   $at, $zero, 0xFFFA         # $at = FFFFFFFA
    and     t9, t7, $at
    sw      t7, 0x0004(a0)             # 00000004
    sw      t9, 0x0004(a0)             # 00000004
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80890F8C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s0, 0x00C4             # a0 = 000000C4
    jal     func_800642F0
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_800642F0
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f0, 0x0274(s0)            # 00000274
    lwc1    $f4, 0x00BC(s0)            # 000000BC
    lw      a0, 0x003C($sp)
    add.s   $f8, $f0, $f6
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a0
    c.le.s  $f8, $f4
    nop
    bc1f    lbl_80891080
    nop
    lw      t6, 0x1DE4(t6)             # 00011DE4
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    andi    t7, t6, 0x0003             # t7 = 00000000
    bne     t7, $zero, lbl_80891050
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lw      a3, 0x00C4(s0)             # 000000C4
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f10                  # $f10 = 8.00
    addiu   t9, $zero, 0x01F4          # t9 = 000001F4
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0020($sp)
    sw      t0, 0x001C($sp)
    sw      t9, 0x0018($sp)
    sw      t8, 0x0010($sp)
    jal     func_800260E8
    swc1    $f10, 0x0014($sp)
    lwc1    $f0, 0x0274(s0)            # 00000274
lbl_80891050:
    mfc1    a1, $f0
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lw      a3, 0x0278(s0)             # 00000278
    addiu   a0, s0, 0x0278             # a0 = 00000278
    lui     a1, 0x4396                 # a1 = 43960000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x40A0                 # a3 = 40A00000
    beq     $zero, $zero, lbl_8089108C
    lw      $ra, 0x0034($sp)
lbl_80891080:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0034($sp)
lbl_8089108C:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8089109C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f4                   # $f4 = -8.00
    lh      t7, 0x008A(a0)             # 0000008A
    addiu   t6, $zero, 0x000E          # t6 = 0000000E
    sh      t6, 0x0266(a0)             # 00000266
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    swc1    $f4, 0x0068(a0)            # 00000068
    sh      t7, 0x0032(a0)             # 00000032
    sw      a0, 0x0020($sp)
    sw      t8, 0x0010($sp)
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    lw      a0, 0x0020($sp)
    lui     t9, %hi(func_80891100)     # t9 = 80890000
    addiu   t9, t9, %lo(func_80891100) # t9 = 80891100
    sw      t9, 0x025C(a0)             # 0000025C
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80891100:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    lwc1    $f0, 0x0068(a1)            # 00000068
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80891154
    lh      t6, 0x0266(a1)             # 00000266
    mtc1    $at, $f6                   # $f6 = 1.00
    nop
    add.s   $f8, $f0, $f6
    swc1    $f8, 0x0068(a1)            # 00000068
    lh      t6, 0x0266(a1)             # 00000266
lbl_80891154:
    bnel    t6, $zero, lbl_8089118C
    lw      $ra, 0x0014($sp)
    lh      t7, 0x026A(a1)             # 0000026A
    lui     t0, %hi(func_80890F34)     # t0 = 80890000
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    beq     t7, $zero, lbl_80891184
    addiu   t0, t0, %lo(func_80890F34) # t0 = 80890F34
    lui     t9, %hi(func_80890C34)     # t9 = 80890000
    addiu   t9, t9, %lo(func_80890C34) # t9 = 80890C34
    sh      t8, 0x0260(a1)             # 00000260
    beq     $zero, $zero, lbl_80891188
    sw      t9, 0x025C(a1)             # 0000025C
lbl_80891184:
    sw      t0, 0x025C(a1)             # 0000025C
lbl_80891188:
    lw      $ra, 0x0014($sp)
lbl_8089118C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80891198:
    sw      a1, 0x0004($sp)
    lw      t8, 0x0004(a0)             # 00000004
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f4                   # $f4 = -8.00
    lui     $at, 0x0800                # $at = 08000000
    or      t9, t8, $at                # t9 = 08000000
    lh      t7, 0x008A(a0)             # 0000008A
    addiu   $at, $zero, 0xFFFA         # $at = FFFFFFFA
    lui     t2, %hi(func_808911E8)     # t2 = 80890000
    addiu   t6, $zero, 0x000E          # t6 = 0000000E
    sw      t9, 0x0004(a0)             # 00000004
    and     t1, t9, $at
    addiu   t2, t2, %lo(func_808911E8) # t2 = 808911E8
    sh      t6, 0x0268(a0)             # 00000268
    sw      t1, 0x0004(a0)             # 00000004
    sw      t2, 0x025C(a0)             # 0000025C
    swc1    $f4, 0x0068(a0)            # 00000068
    sh      t7, 0x0032(a0)             # 00000032
    jr      $ra
    nop


func_808911E8:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x005C($sp)
    lh      t6, 0x0268(s0)             # 00000268
    beql    t6, $zero, lbl_8089123C
    lh      v0, 0x026E(s0)             # 0000026E
    lwc1    $f0, 0x0068(s0)            # 00000068
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_8089133C
    lw      $ra, 0x003C($sp)
    mtc1    $at, $f6                   # $f6 = 1.00
    nop
    add.s   $f8, $f0, $f6
    beq     $zero, $zero, lbl_80891338
    swc1    $f8, 0x0068(s0)            # 00000068
    lh      v0, 0x026E(s0)             # 0000026E
lbl_8089123C:
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80891254
    swc1    $f10, 0x0068(s0)           # 00000068
    lbu     t7, 0x00AF(s0)             # 000000AF
    beq     t7, $zero, lbl_80891324
lbl_80891254:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_8089130C
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    nop
    lwc1    $f16, 0x0024(s0)           # 00000024
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x004C($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x0050($sp)
    lwc1    $f8, 0x002C(s0)            # 0000002C
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f2                   # $f2 = 3.00
    add.s   $f10, $f0, $f8
    lw      a0, 0x005C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x004C            # a2 = FFFFFFF4
    swc1    $f10, 0x0054($sp)
    lh      t8, 0x026A(s0)             # 0000026A
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    addiu   t9, $zero, 0x0096          # t9 = 00000096
    beq     t8, $zero, lbl_808912DC
    addiu   t0, $zero, 0x0096          # t0 = 00000096
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f2                   # $f2 = 6.00
    nop
lbl_808912DC:
    addiu   t1, $zero, 0x00FA          # t1 = 000000FA
    addiu   t2, $zero, 0x00EB          # t2 = 000000EB
    addiu   t3, $zero, 0x00F5          # t3 = 000000F5
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sw      t4, 0x0024($sp)
    sw      t3, 0x0020($sp)
    sw      t2, 0x001C($sp)
    sw      t1, 0x0018($sp)
    sw      t9, 0x0010($sp)
    sw      t0, 0x0014($sp)
    jal     func_8001DC4C
    swc1    $f2, 0x0028($sp)
lbl_8089130C:
    lui     t6, %hi(func_808916C8)     # t6 = 80890000
    addiu   t5, $zero, 0x0042          # t5 = 00000042
    addiu   t6, t6, %lo(func_808916C8) # t6 = 808916C8
    sh      t5, 0x0268(s0)             # 00000268
    beq     $zero, $zero, lbl_80891338
    sw      t6, 0x025C(s0)             # 0000025C
lbl_80891324:
    lui     t8, %hi(func_8089134C)     # t8 = 80890000
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    addiu   t8, t8, %lo(func_8089134C) # t8 = 8089134C
    sh      t7, 0x0268(s0)             # 00000268
    sw      t8, 0x025C(s0)             # 0000025C
lbl_80891338:
    lw      $ra, 0x003C($sp)
lbl_8089133C:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_8089134C:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x005C($sp)
    lh      v0, 0x0268(s0)             # 00000268
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80891440
    nop
    lh      t6, 0x026E(s0)             # 0000026E
    addiu   $at, $zero, 0x0002         # $at = 00000002
    andi    t7, v0, 0x000F             # t7 = 00000000
    bnel    t6, $at, lbl_80891464
    lw      $ra, 0x003C($sp)
    bne     t7, $zero, lbl_80891460
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    nop
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x004C($sp)
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    add.s   $f10, $f0, $f8
    jal     func_80026D90
    swc1    $f10, 0x0050($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f2                   # $f2 = 3.00
    add.s   $f18, $f0, $f16
    lw      a0, 0x005C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x004C            # a2 = FFFFFFF4
    swc1    $f18, 0x0054($sp)
    lh      t8, 0x026A(s0)             # 0000026A
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    addiu   t9, $zero, 0x0096          # t9 = 00000096
    beq     t8, $zero, lbl_80891408
    addiu   t0, $zero, 0x0096          # t0 = 00000096
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f2                   # $f2 = 6.00
    nop
lbl_80891408:
    addiu   t1, $zero, 0x00FA          # t1 = 000000FA
    addiu   t2, $zero, 0x00EB          # t2 = 000000EB
    addiu   t3, $zero, 0x00F5          # t3 = 000000F5
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sw      t4, 0x0024($sp)
    sw      t3, 0x0020($sp)
    sw      t2, 0x001C($sp)
    sw      t1, 0x0018($sp)
    sw      t9, 0x0010($sp)
    sw      t0, 0x0014($sp)
    jal     func_8001DC4C
    swc1    $f2, 0x0028($sp)
    beq     $zero, $zero, lbl_80891464
    lw      $ra, 0x003C($sp)
lbl_80891440:
    jal     func_80022FD0
    addiu   a1, $zero, 0x3989          # a1 = 00003989
    lw      a0, 0x005C($sp)
    jal     func_80025B4C
    or      a1, s0, $zero              # a1 = 00000000
    lui     t5, %hi(func_808914E8)     # t5 = 80890000
    addiu   t5, t5, %lo(func_808914E8) # t5 = 808914E8
    sw      t5, 0x025C(s0)             # 0000025C
lbl_80891460:
    lw      $ra, 0x003C($sp)
lbl_80891464:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_80891474:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f4                   # $f4 = -8.00
    lh      t6, 0x008A(a0)             # 0000008A
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    swc1    $f4, 0x0068(a0)            # 00000068
    sh      t6, 0x0032(a0)             # 00000032
    sw      a0, 0x0020($sp)
    sw      t7, 0x0010($sp)
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    lw      a0, 0x0020($sp)
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t1, %hi(func_808914E8)     # t1 = 80890000
    lw      t9, 0x0004(a0)             # 00000004
    addiu   t8, $zero, 0x000E          # t8 = 0000000E
    addiu   t1, t1, %lo(func_808914E8) # t1 = 808914E8
    and     t0, t9, $at
    sh      t8, 0x0268(a0)             # 00000268
    sw      t0, 0x0004(a0)             # 00000004
    sw      t1, 0x025C(a0)             # 0000025C
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808914E8:
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      s0, 0x0048($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x004C($sp)
    sw      a1, 0x0084($sp)
    lui     t7, %hi(var_80891D5C)      # t7 = 80890000
    addiu   t7, t7, %lo(var_80891D5C)  # t7 = 80891D5C
    lw      t9, 0x0000(t7)             # 80891D5C
    addiu   t6, $sp, 0x0068            # t6 = FFFFFFE8
    lw      t8, 0x0004(t7)             # 80891D60
    sw      t9, 0x0000(t6)             # FFFFFFE8
    lw      t9, 0x0008(t7)             # 80891D64
    lui     t1, %hi(var_80891D68)      # t1 = 80890000
    addiu   t1, t1, %lo(var_80891D68)  # t1 = 80891D68
    sw      t8, 0x0004(t6)             # FFFFFFEC
    sw      t9, 0x0008(t6)             # FFFFFFF0
    lw      t3, 0x0000(t1)             # 80891D68
    addiu   t0, $sp, 0x005C            # t0 = FFFFFFDC
    lw      t2, 0x0004(t1)             # 80891D6C
    sw      t3, 0x0000(t0)             # FFFFFFDC
    lw      t3, 0x0008(t1)             # 80891D70
    sw      t2, 0x0004(t0)             # FFFFFFE0
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    sw      t3, 0x0008(t0)             # FFFFFFE4
    lh      t4, 0x0268(s0)             # 00000268
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    addiu   a0, s0, 0x027C             # a0 = 0000027C
    beq     t4, $zero, lbl_8089158C
    lui     a2, 0x3C23                 # a2 = 3C230000
    lwc1    $f0, 0x0068(s0)            # 00000068
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_808916B8
    lw      $ra, 0x004C($sp)
    mtc1    $at, $f6                   # $f6 = 1.00
    nop
    add.s   $f8, $f0, $f6
    beq     $zero, $zero, lbl_808916B4
    swc1    $f8, 0x0068(s0)            # 00000068
lbl_8089158C:
    mtc1    $zero, $f10                # $f10 = 0.00
    ori     a2, a2, 0xD70A             # a2 = 3C23D70A
    jal     func_800642F0
    swc1    $f10, 0x0068(s0)           # 00000068
    lui     $at, %hi(var_80891DA4)     # $at = 80890000
    lwc1    $f18, %lo(var_80891DA4)($at)
    lwc1    $f16, 0x027C(s0)           # 0000027C
    lui     $at, 0x4080                # $at = 40800000
    addiu   a1, $sp, 0x0074            # a1 = FFFFFFF4
    c.lt.s  $f16, $f18
    addiu   a2, $sp, 0x005C            # a2 = FFFFFFDC
    addiu   a3, $sp, 0x0068            # a3 = FFFFFFE8
    addiu   t5, $zero, 0x0078          # t5 = 00000078
    bc1f    lbl_808916B4
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    lwc1    $f4, 0x0024(s0)            # 00000024
    mtc1    $at, $f10                  # $f10 = 4.00
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    swc1    $f4, 0x0074($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    swc1    $f6, 0x0078($sp)
    lwc1    $f8, 0x002C(s0)            # 0000002C
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0009          # t2 = 00000009
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x003C($sp)
    sw      t2, 0x0038($sp)
    sw      t1, 0x0034($sp)
    sw      t0, 0x0028($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      t9, 0x0024($sp)
    sw      t8, 0x0020($sp)
    sw      t7, 0x001C($sp)
    sw      t6, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sw      t5, 0x0010($sp)
    lw      a0, 0x0084($sp)
    swc1    $f10, 0x0060($sp)
    jal     func_8001E1D4
    swc1    $f8, 0x007C($sp)
    lh      t4, 0x026A(s0)             # 0000026A
    addiu   a2, $sp, 0x0074            # a2 = FFFFFFF4
    lw      a0, 0x0084($sp)
    bne     t4, $zero, lbl_80891668
    or      a1, s0, $zero              # a1 = 00000000
    lw      a0, 0x0084($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80013A84
    addiu   a3, $zero, 0x00E0          # a3 = 000000E0
    beq     $zero, $zero, lbl_80891674
    lw      v1, 0x0118(s0)             # 00000118
lbl_80891668:
    jal     func_80013A84
    addiu   a3, $zero, 0x00C0          # a3 = 000000C0
    lw      v1, 0x0118(s0)             # 00000118
lbl_80891674:
    beql    v1, $zero, lbl_808916B8
    lw      $ra, 0x004C($sp)
    lw      t5, 0x0130(v1)             # 00000130
    or      v0, v1, $zero              # v0 = 00000000
    beq     t5, $zero, lbl_808916AC
    nop
    lh      t6, 0x026A(s0)             # 0000026A
    bne     t6, $zero, lbl_808916AC
    nop
    lh      v1, 0x014E(v1)             # 0000014E
    slti    $at, v1, 0x000A
    beq     $at, $zero, lbl_808916AC
    addiu   t7, v1, 0x0001             # t7 = 00000001
    sh      t7, 0x014E(v0)             # 0000014E
lbl_808916AC:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_808916B4:
    lw      $ra, 0x004C($sp)
lbl_808916B8:
    lw      s0, 0x0048($sp)
    addiu   $sp, $sp, 0x0080           # $sp += 0x80
    jr      $ra
    nop


func_808916C8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x0268(a0)             # 00000268
    slti    $at, t6, 0x0025
    beq     $at, $zero, lbl_8089174C
    lui     $at, %hi(var_80891DA8)     # $at = 80890000
    lwc1    $f12, %lo(var_80891DA8)($at)
    jal     func_80026D90
    sw      a0, 0x0018($sp)
    trunc.w.s $f4, $f0
    lw      a0, 0x0018($sp)
    lui     $at, %hi(var_80891DAC)     # $at = 80890000
    mfc1    t8, $f4
    nop
    sh      t8, 0x00B4(a0)             # 000000B4
    jal     func_80026D90
    lwc1    $f12, %lo(var_80891DAC)($at)
    trunc.w.s $f6, $f0
    lw      a0, 0x0018($sp)
    lh      t1, 0x0268(a0)             # 00000268
    mfc1    t0, $f6
    bne     t1, $zero, lbl_8089174C
    sh      t0, 0x00B8(a0)             # 000000B8
    lh      t2, 0x026A(a0)             # 0000026A
    lui     t4, %hi(func_80890F34)     # t4 = 80890000
    lui     t3, %hi(func_80890C34)     # t3 = 80890000
    beq     t2, $zero, lbl_80891748
    addiu   t4, t4, %lo(func_80890F34) # t4 = 80890F34
    addiu   t3, t3, %lo(func_80890C34) # t3 = 80890C34
    beq     $zero, $zero, lbl_8089174C
    sw      t3, 0x025C(a0)             # 0000025C
lbl_80891748:
    sw      t4, 0x025C(a0)             # 0000025C
lbl_8089174C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8089175C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lbu     v0, 0x0291(s0)             # 00000291
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80891984
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    lw      v1, 0x025C(s0)             # 0000025C
    lui     t8, %hi(func_808914E8)     # t8 = 80890000
    addiu   t8, t8, %lo(func_808914E8) # t8 = 808914E8
    beq     t8, v1, lbl_80891984
    sb      t7, 0x0291(s0)             # 00000291
    lui     t9, %hi(func_80891100)     # t9 = 80890000
    addiu   t9, t9, %lo(func_80891100) # t9 = 80891100
    beql    t9, v1, lbl_80891988
    lw      $ra, 0x0024($sp)
    lbu     t1, 0x00B1(s0)             # 000000B1
    sh      $zero, 0x00B8(s0)          # 000000B8
    lh      t0, 0x00B8(s0)             # 000000B8
    addiu   t2, t1, 0xFFFF             # t2 = FFFFFFFF
    sltiu   $at, t2, 0x000E
    sh      $zero, 0x026E(s0)          # 0000026E
    beq     $at, $zero, lbl_80891984
    sh      t0, 0x00B4(s0)             # 000000B4
    sll     t2, t2,  2
    lui     $at, %hi(var_80891DB0)     # $at = 80890000
    addu    $at, $at, t2
    lw      t2, %lo(var_80891DB0)($at)
    jr      t2
    nop
var_808917DC:
    lbu     t3, 0x00AF(s0)             # 000000AF
    slti    $at, t3, 0x0002
    bne     $at, $zero, lbl_80891834
    nop
    lh      t4, 0x026E(s0)             # 0000026E
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, t4, lbl_80891834
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    jal     func_80022FD0
    sh      v0, 0x026E(s0)             # 0000026E
    addiu   t5, $zero, 0x0050          # t5 = 00000050
    sw      t5, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t6, %hi(func_80891198)     # t6 = 80890000
    addiu   t6, t6, %lo(func_80891198) # t6 = 80891198
    beq     $zero, $zero, lbl_80891984
    sw      t6, 0x025C(s0)             # 0000025C
lbl_80891834:
    lbu     t7, 0x00AF(s0)             # 000000AF
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    slti    $at, t7, 0x0003
    bnel    $at, $zero, lbl_80891890
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    lh      t8, 0x026E(s0)             # 0000026E
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    beq     v0, t8, lbl_8089188C
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    sh      v0, 0x026E(s0)             # 0000026E
    addiu   t9, $zero, 0x0050          # t9 = 00000050
    sw      t9, 0x0010($sp)
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    lui     t0, %hi(func_80891198)     # t0 = 80890000
    addiu   t0, t0, %lo(func_80891198) # t0 = 80891198
    beq     $zero, $zero, lbl_80891984
    sw      t0, 0x025C(s0)             # 0000025C
lbl_8089188C:
    addiu   t1, $zero, 0x0006          # t1 = 00000006
lbl_80891890:
    sh      t1, 0x026C(s0)             # 0000026C
    jal     func_80028390
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t2, 0x00AF(s0)             # 000000AF
    addiu   a1, $zero, 0x3989          # a1 = 00003989
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t2, $zero, lbl_808918D8
    lw      t5, 0x025C(s0)             # 0000025C
    jal     func_80022FD0
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x002C($sp)
    jal     func_80025B4C
    or      a1, s0, $zero              # a1 = 00000000
    lui     t3, %hi(func_80891474)     # t3 = 80890000
    addiu   t3, t3, %lo(func_80891474) # t3 = 80891474
    beq     $zero, $zero, lbl_80891984
    sw      t3, 0x025C(s0)             # 0000025C
    lw      t5, 0x025C(s0)             # 0000025C
lbl_808918D8:
    lui     t4, %hi(func_808916C8)     # t4 = 80890000
    addiu   t4, t4, %lo(func_808916C8) # t4 = 808916C8
    bne     t4, t5, lbl_808918F4
    nop
    sh      $zero, 0x00B8(s0)          # 000000B8
    lh      t6, 0x00B8(s0)             # 000000B8
    sh      t6, 0x00B4(s0)             # 000000B4
lbl_808918F4:
    jal     func_80022FD0
    addiu   a1, $zero, 0x3988          # a1 = 00003988
    lui     t7, %hi(func_8089109C)     # t7 = 80890000
    addiu   t7, t7, %lo(func_8089109C) # t7 = 8089109C
    beq     $zero, $zero, lbl_80891984
    sw      t7, 0x025C(s0)             # 0000025C
var_8089190C:
    jal     func_80028390
    or      a0, s0, $zero              # a0 = 00000000
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    sh      v0, 0x026C(s0)             # 0000026C
    sh      v0, 0x026E(s0)             # 0000026E
    addiu   t8, $zero, 0x0050          # t8 = 00000050
    sw      t8, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t9, %hi(func_80891198)     # t9 = 80890000
    addiu   t9, t9, %lo(func_80891198) # t9 = 80891198
    beq     $zero, $zero, lbl_80891984
    sw      t9, 0x025C(s0)             # 0000025C
var_8089194C:
    lh      t0, 0x026E(s0)             # 0000026E
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, t0, lbl_80891984
    or      a1, $zero, $zero           # a1 = 00000000
    sh      v0, 0x026E(s0)             # 0000026E
    addiu   t1, $zero, 0x0050          # t1 = 00000050
    sw      t1, 0x0010($sp)
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t2, %hi(func_80891198)     # t2 = 80890000
    addiu   t2, t2, %lo(func_80891198) # t2 = 80891198
    sw      t2, 0x025C(s0)             # 0000025C
lbl_80891984:
    lw      $ra, 0x0024($sp)
lbl_80891988:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80891998:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lw      t6, 0x1C44(a1)             # 00001C44
    sw      a1, 0x0044($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8089175C
    sw      t6, 0x0034($sp)
    lw      t9, 0x025C(s0)             # 0000025C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    jalr    $ra, t9
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    lw      a1, 0x027C(s0)             # 0000027C
    lh      v0, 0x0260(s0)             # 00000260
    beq     v0, $zero, lbl_808919EC
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0260(s0)             # 00000260
lbl_808919EC:
    lh      v0, 0x0262(s0)             # 00000262
    beq     v0, $zero, lbl_808919FC
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0262(s0)             # 00000262
lbl_808919FC:
    lh      v0, 0x0268(s0)             # 00000268
    beq     v0, $zero, lbl_80891A0C
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x0268(s0)             # 00000268
lbl_80891A0C:
    lh      v0, 0x0264(s0)             # 00000264
    beq     v0, $zero, lbl_80891A1C
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x0264(s0)             # 00000264
lbl_80891A1C:
    lh      v0, 0x0266(s0)             # 00000266
    beq     v0, $zero, lbl_80891A2C
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x0266(s0)             # 00000266
lbl_80891A2C:
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f0                   # $f0 = 60.00
    addiu   t3, $zero, 0x001D          # t3 = 0000001D
    sw      t3, 0x0014($sp)
    mfc1    a3, $f0
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x420C                 # a2 = 420C0000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lbu     v1, 0x0290(s0)             # 00000290
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0280             # a1 = 00000280
    andi    t4, v1, 0x0004             # t4 = 00000000
    beq     t4, $zero, lbl_80891AE0
    andi    t5, v1, 0xFFFB             # t5 = 00000000
    lw      v0, 0x025C(s0)             # 0000025C
    lui     t6, %hi(func_80890B18)     # t6 = 80890000
    addiu   t6, t6, %lo(func_80890B18) # t6 = 80890B18
    beq     t6, v0, lbl_80891A98
    sb      t5, 0x0290(s0)             # 00000290
    lui     t9, %hi(func_80890C58)     # t9 = 80890000
    addiu   t9, t9, %lo(func_80890C58) # t9 = 80890C58
    bnel    t9, v0, lbl_80891AE4
    lbu     v1, 0x0290(s0)             # 00000290
lbl_80891A98:
    lh      t7, 0x0032(s0)             # 00000032
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    mtc1    t7, $f6                    # $f6 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f10                  # $f10 = -1.00
    cvt.s.w $f8, $f6
    lui     t2, %hi(func_80890EC8)     # t2 = 80890000
    addiu   t1, $zero, 0x000E          # t1 = 0000000E
    addiu   t2, t2, %lo(func_80890EC8) # t2 = 80890EC8
    sh      t1, 0x0262(s0)             # 00000262
    sw      t2, 0x025C(s0)             # 0000025C
    mul.s   $f16, $f8, $f10
    swc1    $f4, 0x0068(s0)            # 00000068
    trunc.w.s $f18, $f16
    mfc1    t0, $f18
    beq     $zero, $zero, lbl_80891C34
    sh      t0, 0x0032(s0)             # 00000032
lbl_80891AE0:
    lbu     v1, 0x0290(s0)             # 00000290
lbl_80891AE4:
    lui     $at, 0x41F0                # $at = 41F00000
    andi    t3, v1, 0x0002             # t3 = 00000000
    beq     t3, $zero, lbl_80891B30
    andi    t4, v1, 0xFFFD             # t4 = 00000000
    sb      t4, 0x0290(s0)             # 00000290
    lw      t5, 0x0034($sp)
    lw      t6, 0x0284(s0)             # 00000284
    bnel    t5, t6, lbl_80891B34
    lw      t2, 0x0024(s0)             # 00000024
    lh      t9, 0x026A(s0)             # 0000026A
    bnel    t9, $zero, lbl_80891B34
    lw      t2, 0x0024(s0)             # 00000024
    lw      t8, 0x025C(s0)             # 0000025C
    lui     t7, %hi(func_80890F8C)     # t7 = 80890000
    addiu   t7, t7, %lo(func_80890F8C) # t7 = 80890F8C
    beq     t7, t8, lbl_80891B30
    lui     t0, %hi(func_80890F34)     # t0 = 80890000
    addiu   t0, t0, %lo(func_80890F34) # t0 = 80890F34
    sw      t0, 0x025C(s0)             # 0000025C
lbl_80891B30:
    lw      t2, 0x0024(s0)             # 00000024
lbl_80891B34:
    lh      t3, 0x026A(s0)             # 0000026A
    lw      t1, 0x0028(s0)             # 00000028
    sw      t2, 0x0038(s0)             # 00000038
    lw      t2, 0x002C(s0)             # 0000002C
    sw      t1, 0x003C(s0)             # 0000003C
    bne     t3, $zero, lbl_80891B68
    sw      t2, 0x0040(s0)             # 00000040
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    lwc1    $f4, 0x003C(s0)            # 0000003C
    add.s   $f8, $f4, $f6
    beq     $zero, $zero, lbl_80891B7C
    swc1    $f8, 0x003C(s0)            # 0000003C
lbl_80891B68:
    lwc1    $f10, 0x003C(s0)           # 0000003C
    mtc1    $at, $f16                  # $f16 = 15.00
    nop
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x003C(s0)           # 0000003C
lbl_80891B7C:
    jal     func_80050B00
    sw      a1, 0x0028($sp)
    lui     $at, 0xC42F                # $at = C42F0000
    mtc1    $at, $f6                   # $f6 = -700.00
    lwc1    $f4, 0x00BC(s0)            # 000000BC
    c.le.s  $f6, $f4
    nop
    bc1fl   lbl_80891C38
    lw      $ra, 0x0024($sp)
    lbu     t4, 0x00AF(s0)             # 000000AF
    blezl   t4, lbl_80891C38
    lw      $ra, 0x0024($sp)
    lw      t6, 0x025C(s0)             # 0000025C
    lui     t5, %hi(func_80890F8C)     # t5 = 80890000
    addiu   t5, t5, %lo(func_80890F8C) # t5 = 80890F8C
    beq     t5, t6, lbl_80891C34
    lw      a0, 0x0044($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at
    sw      a1, 0x002C($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0028($sp)
    lwc1    $f8, 0x00BC(s0)            # 000000BC
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     t9, %hi(func_80890B18)     # t9 = 80890000
    lw      a0, 0x0044($sp)
    c.lt.s  $f8, $f10
    addiu   t9, t9, %lo(func_80890B18) # t9 = 80890B18
    lw      a1, 0x002C($sp)
    lw      a2, 0x0028($sp)
    bc1tl   lbl_80891C38
    lw      $ra, 0x0024($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      t9, 0x0030($sp)
    lw      v0, 0x025C(s0)             # 0000025C
    lw      t7, 0x0030($sp)
    lui     t8, %hi(func_80890C58)     # t8 = 80890000
    addiu   t8, t8, %lo(func_80890C58) # t8 = 80890C58
    beq     t7, v0, lbl_80891C28
    lw      a0, 0x0044($sp)
    bnel    t8, v0, lbl_80891C38
    lw      $ra, 0x0024($sp)
lbl_80891C28:
    lw      a1, 0x002C($sp)
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x0028($sp)
lbl_80891C34:
    lw      $ra, 0x0024($sp)
lbl_80891C38:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80891C48:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0024($sp)
    lw      t0, 0x0030($sp)
    lui     t9, 0xFA00                 # t9 = FA000000
    lw      a2, 0x0024($sp)
    lh      t7, 0x026A(t0)             # 0000026A
    ori     t9, t9, 0x0001             # t9 = FA000001
    lui     t3, 0xFA00                 # t3 = FA000000
    beq     t7, $zero, lbl_80891CAC
    or      a3, $zero, $zero           # a3 = 00000000
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t1, 0x9B37                 # t1 = 9B370000
    ori     t1, t1, 0xFFFF             # t1 = 9B37FFFF
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(a2)             # 000002C0
    sw      t1, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_80891CCC
    lw      a1, 0x0140(t0)             # 00000140
lbl_80891CAC:
    lw      v1, 0x02C0(a2)             # 000002C0
    ori     t3, t3, 0x0001             # t3 = FA000001
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(a2)             # 000002C0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      a1, 0x0140(t0)             # 00000140
lbl_80891CCC:
    lw      a2, 0x015C(t0)             # 0000015C
    sw      t0, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    jal     func_8008993C
    lw      a0, 0x0034($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop

.section .data

var_80891CF0: .word \
0x00E2E1E2, 0xC1E2E2D2, 0xE1E4E6E2, 0x34E2E2E2, \
0xE2003400, 0x0000E2E8, 0xE4E2E8E4, 0x10000000
var_80891D10: .word 0x001C0800, 0x08000015, 0x00170000, 0x000002CC
.word func_80890590
.word func_8089076C
.word func_80891998
.word func_80891C48
var_80891D30: .word \
0x05110939, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x08080000, 0xFFCFFFFF, 0x00000000, 0x01050100, \
0x00140028, 0x00000000, 0x00000000
var_80891D5C: .word 0x00000000, 0x00000000, 0x00000000
var_80891D68: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80891D80: .word 0x3D23D70A
var_80891D84: .word 0xC6D6D800
var_80891D88: .word var_80890A18
.word var_80890A24
.word var_80890A50
.word var_80890A50
.word var_80890A90
var_80891D9C: .word 0x3E19999A
var_80891DA0: .word 0x3FE66666
var_80891DA4: .word 0x3C23D70A
var_80891DA8: .word 0x453B8000
var_80891DAC: .word 0x453B8000
var_80891DB0: .word var_8089194C
.word lbl_80891984
.word var_8089190C
.word lbl_80891984
.word lbl_80891984
.word lbl_80891984
.word lbl_80891984
.word lbl_80891984
.word lbl_80891984
.word lbl_80891984
.word var_808917DC
.word var_808917DC
.word lbl_80891834
.word lbl_8089188C
.word 0x00000000, 0x00000000

