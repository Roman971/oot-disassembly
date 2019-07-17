.section .text
func_8088D7F0:
    sw      a1, 0x02B0(a0)             # 000002B0
    jr      $ra
    nop


func_8088D7FC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    lui     a1, %hi(var_80890334)      # a1 = 80890000
    addiu   a1, a1, %lo(var_80890334)  # a1 = 80890334
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    lui     a1, 0x3C23                 # a1 = 3C230000
    sb      t6, 0x001F(s0)             # 0000001F
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t7, s0, 0x0180             # t7 = 00000180
    addiu   t8, s0, 0x0216             # t8 = 00000216
    addiu   t9, $zero, 0x0019          # t9 = 00000019
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    addiu   a3, a3, 0x12E4             # a3 = 060012E4
    addiu   a2, a2, 0x3A20             # a2 = 06003A20
    lw      a0, 0x003C($sp)
    jal     func_8008C684
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lui     a1, 0xC348                 # a1 = C3480000
    jal     func_8001EC20
    lui     a3, 0x428C                 # a3 = 428C0000
    lw      t1, 0x0028(s0)             # 00000028
    lui     $at, 0x41A0                # $at = 41A00000
    lw      t2, 0x0024(s0)             # 00000024
    sw      t1, 0x003C(s0)             # 0000003C
    lwc1    $f4, 0x003C(s0)            # 0000003C
    mtc1    $at, $f6                   # $f6 = 20.00
    sw      t2, 0x0038(s0)             # 00000038
    lw      t2, 0x002C(s0)             # 0000002C
    add.s   $f8, $f4, $f6
    lui     t0, %hi(var_80890314)      # t0 = 80890000
    addiu   t0, t0, %lo(var_80890314)  # t0 = 80890314
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    addiu   t4, $zero, 0x00FE          # t4 = 000000FE
    sb      $zero, 0x02AD(s0)          # 000002AD
    sw      t0, 0x0098(s0)             # 00000098
    sh      $zero, 0x02D0(s0)          # 000002D0
    sw      $zero, 0x02C4(s0)          # 000002C4
    swc1    $f8, 0x003C(s0)            # 0000003C
    sb      t3, 0x00AF(s0)             # 000000AF
    sb      t4, 0x00AE(s0)             # 000000AE
    addiu   a1, s0, 0x02D8             # a1 = 000002D8
    sw      t2, 0x0040(s0)             # 00000040
    sw      a1, 0x0030($sp)
    jal     func_8004A484
    lw      a0, 0x003C($sp)
    lui     a3, %hi(var_80890304)      # a3 = 80890000
    addiu   t5, s0, 0x02F8             # t5 = 000002F8
    lw      a1, 0x0030($sp)
    sw      t5, 0x0010($sp)
    addiu   a3, a3, %lo(var_80890304)  # a3 = 80890304
    lw      a0, 0x003C($sp)
    jal     func_8004A874
    or      a2, s0, $zero              # a2 = 00000000
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   t6, $zero, 0x001D          # t6 = 0000001D
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    bne     t7, $at, lbl_8088D938
    sw      t6, 0x02CC(s0)             # 000002CC
    lbu     t1, 0x0117(s0)             # 00000117
    ori     t9, t6, 0x0040             # t9 = 0000005D
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sw      t9, 0x02CC(s0)             # 000002CC
    sb      t0, 0x00AF(s0)             # 000000AF
    sb      t2, 0x0117(s0)             # 00000117
lbl_8088D938:
    jal     func_8088D99C
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8088D954:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lw      v0, 0x0118(a2)             # 00000118
    addiu   a1, a2, 0x02D8             # a1 = 000002D8
    beq     v0, $zero, lbl_8088D984
    nop
    lh      a0, 0x0142(v0)             # 00000142
    blez    a0, lbl_8088D984
    addiu   t6, a0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0142(v0)             # 00000142
lbl_8088D984:
    jal     func_8004A550
    or      a0, a3, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8088D99C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x12E4             # a1 = 060012E4
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0x4080                 # a2 = 40800000
    jal     func_8008D328
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    addiu   a0, $zero, 0x000F          # a0 = 0000000F
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    jal     func_80063BF0
    sb      t6, 0x02AC(a3)             # 000002AC
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a1, %hi(func_8088DA04)     # a1 = 80890000
    addiu   a1, a1, %lo(func_8088DA04) # a1 = 8088DA04
    sh      v0, 0x02D0(a0)             # 000002D0
    jal     func_8088D7F0
    swc1    $f4, 0x0068(a0)            # 00000068
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8088DA04:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a1, 0x0034($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    mtc1    $zero, $f20                # $f20 = 0.00
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    a1, $f20
    lui     a3, 0x3F00                 # a3 = 3F000000
    jal     func_80064178
    swc1    $f20, 0x0010($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    bnel    t6, $at, lbl_8088DABC
    lhu     t9, 0x0088(s0)             # 00000088
    lhu     t7, 0x0088(s0)             # 00000088
    addiu   a0, s0, 0x0060             # a0 = 00000060
    lui     a2, 0x3F80                 # a2 = 3F800000
    andi    t8, t7, 0x0020             # t8 = 00000000
    beq     t8, $zero, lbl_8088DAAC
    lui     $at, 0xBF80                # $at = BF800000
    swc1    $f20, 0x006C(s0)           # 0000006C
    mfc1    a1, $f20
    swc1    $f20, 0x0010($sp)
    jal     func_80064178
    lui     a3, 0x4000                 # a3 = 40000000
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f6, 0x0084(s0)            # 00000084
    swc1    $f20, 0x0010($sp)
    addiu   a0, s0, 0x0028             # a0 = 00000028
    add.s   $f8, $f4, $f6
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4000                 # a3 = 40000000
    mfc1    a1, $f8
    jal     func_80064178
    nop
    beq     $zero, $zero, lbl_8088DABC
    lhu     t9, 0x0088(s0)             # 00000088
lbl_8088DAAC:
    mtc1    $at, $f10                  # $f10 = 0.00
    nop
    swc1    $f10, 0x006C(s0)           # 0000006C
    lhu     t9, 0x0088(s0)             # 00000088
lbl_8088DABC:
    lui     $at, 0x4396                # $at = 43960000
    andi    t0, t9, 0x0003             # t0 = 00000000
    beql    t0, $zero, lbl_8088DAE8
    lh      v0, 0x02D0(s0)             # 000002D0
    lwc1    $f16, 0x0060(s0)           # 00000060
    c.le.s  $f16, $f20
    nop
    bc1fl   lbl_8088DAE8
    lh      v0, 0x02D0(s0)             # 000002D0
    swc1    $f20, 0x0060(s0)           # 00000060
    lh      v0, 0x02D0(s0)             # 000002D0
lbl_8088DAE8:
    blez    v0, lbl_8088DAF8
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    beq     $zero, $zero, lbl_8088DB34
    sh      t1, 0x02D0(s0)             # 000002D0
lbl_8088DAF8:
    lwc1    $f18, 0x0090(s0)           # 00000090
    mtc1    $at, $f4                   # $f4 = 300.00
    lui     $at, 0x42A0                # $at = 42A00000
    c.lt.s  $f18, $f4
    nop
    bc1fl   lbl_8088DB38
    lw      $ra, 0x002C($sp)
    mtc1    $at, $f6                   # $f6 = 80.00
    lwc1    $f8, 0x0094(s0)            # 00000094
    c.le.s  $f8, $f6
    nop
    bc1fl   lbl_8088DB38
    lw      $ra, 0x002C($sp)
    jal     func_8088E264
    or      a0, s0, $zero              # a0 = 00000000
lbl_8088DB34:
    lw      $ra, 0x002C($sp)
lbl_8088DB38:
    ldc1    $f20, 0x0020($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_8088DB48:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x083C             # a1 = 0600083C
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D1C4
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sb      t6, 0x02AC(a2)             # 000002AC
    jal     func_80063BF0
    sh      $zero, 0x02D0(a2)          # 000002D0
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, %hi(func_8088DBBC)     # a1 = 80890000
    lh      t7, 0x00B6(a0)             # 000000B6
    addiu   a1, a1, %lo(func_8088DBBC) # a1 = 8088DBBC
    sb      v0, 0x02D2(a0)             # 000002D2
    swc1    $f0, 0x0068(a0)            # 00000068
    swc1    $f0, 0x0060(a0)            # 00000060
    jal     func_8088D7F0
    sh      t7, 0x0032(a0)             # 00000032
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8088DBBC:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x005C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x0038($sp)
    beql    v0, $zero, lbl_8088DE88
    lh      v0, 0x02D0(s0)             # 000002D0
    lh      v1, 0x02D0(s0)             # 000002D0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $zero, lbl_8088DC14
    sw      v1, 0x0050($sp)
    beq     v1, $at, lbl_8088DCB0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_8088DE08
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    v1, $at, lbl_8088DE40
    mtc1    $zero, $f18                # $f18 = 0.00
    beq     $zero, $zero, lbl_8088DE68
    lw      t9, 0x0050($sp)
lbl_8088DC14:
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    bne     t7, $at, lbl_8088DC34
    sh      t6, 0x02D0(s0)             # 000002D0
    lhu     t8, 0x0088(s0)             # 00000088
    andi    t9, t8, 0x0020             # t9 = 00000000
    bne     t9, $zero, lbl_8088DC68
lbl_8088DC34:
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f4                   # $f4 = -32000.00
    lwc1    $f0, 0x0080(s0)            # 00000080
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f0
    nop
    bc1f    lbl_8088DC58
    nop
    swc1    $f0, 0x0028(s0)            # 00000028
lbl_8088DC58:
    jal     func_80022FD0
    addiu   a1, $zero, 0x386C          # a1 = 0000386C
    beq     $zero, $zero, lbl_8088DC88
    lui     $at, 0x4100                # $at = 41000000
lbl_8088DC68:
    lwc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f8, 0x0084(s0)            # 00000084
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x388E          # a1 = 0000388E
    add.s   $f10, $f6, $f8
    jal     func_80022FD0
    swc1    $f10, 0x0028(s0)           # 00000028
    lui     $at, 0x4100                # $at = 41000000
lbl_8088DC88:
    mtc1    $at, $f16                  # $f16 = 8.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f18                  # $f18 = -1.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f4                   # $f4 = 4.00
    lh      v1, 0x02D0(s0)             # 000002D0
    swc1    $f16, 0x0060(s0)           # 00000060
    swc1    $f18, 0x006C(s0)           # 0000006C
    beq     $zero, $zero, lbl_8088DE64
    swc1    $f4, 0x0068(s0)            # 00000068
lbl_8088DCB0:
    lw      t0, 0x0004(s0)             # 00000004
    lhu     v1, 0x0088(s0)             # 00000088
    lui     $at, 0x0100                # $at = 01000000
    or      t1, t0, $at                # t1 = 01000000
    andi    t2, v1, 0x0003             # t2 = 00000000
    bne     t2, $zero, lbl_8088DCE8
    sw      t1, 0x0004(s0)             # 00000004
    lh      t3, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    andi    t4, v1, 0x0020             # t4 = 00000000
    bne     t3, $at, lbl_8088DE00
    nop
    beq     t4, $zero, lbl_8088DE00
    nop
lbl_8088DCE8:
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f8, 0x0060(s0)            # 00000060
    c.le.s  $f8, $f6
    nop
    bc1f    lbl_8088DE00
    nop
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    bne     t6, $at, lbl_8088DD28
    sh      t5, 0x02D0(s0)             # 000002D0
    lhu     t7, 0x0088(s0)             # 00000088
    lui     $at, 0xC100                # $at = C1000000
    andi    t8, t7, 0x0020             # t8 = 00000000
    bnel    t8, $zero, lbl_8088DD60
    lwc1    $f6, 0x0060(s0)            # 00000060
lbl_8088DD28:
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f10                  # $f10 = -32000.00
    lwc1    $f0, 0x0080(s0)            # 00000080
    mtc1    $zero, $f16                # $f16 = 0.00
    mtc1    $zero, $f18                # $f18 = 0.00
    c.lt.s  $f10, $f0
    nop
    bc1fl   lbl_8088DD54
    swc1    $f16, 0x0060(s0)           # 00000060
    swc1    $f0, 0x0028(s0)            # 00000028
    swc1    $f16, 0x0060(s0)           # 00000060
lbl_8088DD54:
    beq     $zero, $zero, lbl_8088DDF8
    swc1    $f18, 0x0068(s0)           # 00000068
    lwc1    $f6, 0x0060(s0)            # 00000060
lbl_8088DD60:
    mtc1    $at, $f8                   # $f8 = -32000.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFEC
    c.lt.s  $f6, $f8
    swc1    $f4, 0x006C(s0)            # 0000006C
    bc1fl   lbl_8088DDEC
    mtc1    $zero, $f10                # $f10 = 0.00
    lw      t0, 0x0024(s0)             # 00000024
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f6                   # $f6 = 0.75
    sw      t0, 0x0000(a1)             # FFFFFFEC
    lw      t9, 0x0028(s0)             # 00000028
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    sw      t9, 0x0004(a1)             # FFFFFFF0
    lw      t0, 0x002C(s0)             # 0000002C
    sw      t0, 0x0008(a1)             # FFFFFFF4
    lwc1    $f10, 0x0048($sp)
    lwc1    $f16, 0x0084(s0)           # 00000084
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0048($sp)
    lwc1    $f4, 0x0060(s0)            # 00000060
    lh      t1, 0x02D0(s0)             # 000002D0
    mul.s   $f8, $f4, $f6
    addiu   t2, t1, 0x0001             # t2 = 01000001
    sh      t2, 0x02D0(s0)             # 000002D0
    lh      t3, 0x02D0(s0)             # 000002D0
    swc1    $f8, 0x0060(s0)            # 00000060
    sw      $zero, 0x0010($sp)
    lw      a0, 0x005C($sp)
    jal     func_8001CF3C
    sw      t3, 0x0050($sp)
    beq     $zero, $zero, lbl_8088DDFC
    lh      t4, 0x00B6(s0)             # 000000B6
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_8088DDEC:
    mtc1    $zero, $f16                # $f16 = 0.00
    swc1    $f10, 0x0060(s0)           # 00000060
    swc1    $f16, 0x0068(s0)           # 00000068
lbl_8088DDF8:
    lh      t4, 0x00B6(s0)             # 000000B6
lbl_8088DDFC:
    sh      t4, 0x0032(s0)             # 00000032
lbl_8088DE00:
    beq     $zero, $zero, lbl_8088DE64
    lh      v1, 0x02D0(s0)             # 000002D0
lbl_8088DE08:
    lbu     v0, 0x02D2(s0)             # 000002D2
    beq     v0, $zero, lbl_8088DE2C
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    lbu     t6, 0x02E8(s0)             # 000002E8
    sb      t5, 0x02D2(s0)             # 000002D2
    sh      $zero, 0x02D0(s0)          # 000002D0
    andi    t7, t6, 0xFFFD             # t7 = 00000000
    beq     $zero, $zero, lbl_8088DE34
    sb      t7, 0x02E8(s0)             # 000002E8
lbl_8088DE2C:
    jal     func_8088E264
    or      a0, s0, $zero              # a0 = 00000000
lbl_8088DE34:
    beq     $zero, $zero, lbl_8088DE64
    lh      v1, 0x02D0(s0)             # 000002D0
    mtc1    $zero, $f18                # $f18 = 0.00
lbl_8088DE40:
    lwc1    $f4, 0x0084(s0)            # 00000084
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    c.eq.s  $f18, $f4
    nop
    bc1fl   lbl_8088DE68
    lw      t9, 0x0050($sp)
    sh      t8, 0x02D0(s0)             # 000002D0
    lh      v1, 0x02D0(s0)             # 000002D0
    sw      v1, 0x0050($sp)
lbl_8088DE64:
    lw      t9, 0x0050($sp)
lbl_8088DE68:
    lw      a0, 0x0038($sp)
    sll     t0, v1,  2
    beq     t9, v1, lbl_8088DE84
    lui     a1, %hi(var_80890344)      # a1 = 80890000
    addu    a1, a1, t0
    jal     func_8008D1C4
    lw      a1, %lo(var_80890344)(a1)
lbl_8088DE84:
    lh      v0, 0x02D0(s0)             # 000002D0
lbl_8088DE88:
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beq     v0, $zero, lbl_8088DEC0
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_8088DF54
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_8088E064
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_8088E080
    addiu   a0, s0, 0x0060             # a0 = 00000060
    beq     $zero, $zero, lbl_8088E0E4
    lhu     v1, 0x0088(s0)             # 00000088
lbl_8088DEC0:
    lh      a1, 0x008A(s0)             # 0000008A
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lh      t1, 0x0032(s0)             # 00000032
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f6                   # $f6 = 300.00
    lwc1    $f8, 0x0090(s0)            # 00000090
    sh      t1, 0x00B6(s0)             # 000000B6
    lh      t3, 0x00B6(s0)             # 000000B6
    lh      t2, 0x008A(s0)             # 0000008A
    c.lt.s  $f6, $f8
    lui     $at, 0x42A0                # $at = 42A00000
    subu    v1, t2, t3
    sll     v1, v1, 16
    bc1f    lbl_8088DF28
    sra     v1, v1, 16
    mtc1    $at, $f10                  # $f10 = 80.00
    lwc1    $f16, 0x0094(s0)           # 00000094
    c.lt.s  $f10, $f16
    nop
    bc1f    lbl_8088DF28
    nop
    jal     func_8088D99C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8088DF4C
    nop
lbl_8088DF28:
    bltz    v1, lbl_8088DF38
    subu    v0, $zero, v1
    beq     $zero, $zero, lbl_8088DF38
    or      v0, v1, $zero              # v0 = 00000000
lbl_8088DF38:
    slti    $at, v0, 0x2328
    bne     $at, $zero, lbl_8088DF4C
    nop
    jal     func_8088E264
    or      a0, s0, $zero              # a0 = 00000000
lbl_8088DF4C:
    beq     $zero, $zero, lbl_8088E0E4
    lhu     v1, 0x0088(s0)             # 00000088
lbl_8088DF54:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lwc1    $f18, 0x0060(s0)           # 00000060
    c.le.s  $f4, $f18
    nop
    bc1fl   lbl_8088DFB4
    lbu     v0, 0x02E8(s0)             # 000002E8
    lhu     t4, 0x0088(s0)             # 00000088
    lw      a0, 0x005C($sp)
    andi    t5, t4, 0x0001             # t5 = 00000000
    beql    t5, $zero, lbl_8088DFB4
    lbu     v0, 0x02E8(s0)             # 000002E8
    jal     func_80028320
    addiu   a1, s0, 0x0338             # a1 = 00000338
    lw      a0, 0x005C($sp)
    jal     func_80028320
    addiu   a1, s0, 0x0344             # a1 = 00000344
    lw      a0, 0x005C($sp)
    jal     func_80028320
    addiu   a1, s0, 0x0350             # a1 = 00000350
    lw      a0, 0x005C($sp)
    jal     func_80028320
    addiu   a1, s0, 0x035C             # a1 = 0000035C
    lbu     v0, 0x02E8(s0)             # 000002E8
lbl_8088DFB4:
    lw      t9, 0x005C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    andi    t6, v0, 0x0002             # t6 = 00000000
    bne     t6, $zero, lbl_8088DFF4
    andi    t0, v0, 0xFFFD             # t0 = 00000000
    lw      t7, 0x0004(s0)             # 00000004
    lui     $at, 0x0001                # $at = 00010000
    lw      a0, 0x005C($sp)
    andi    t8, t7, 0x0040             # t8 = 00000000
    beq     t8, $zero, lbl_8088DFF4
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s0, 0x02D8             # a2 = 000002D8
    beq     $zero, $zero, lbl_8088E05C
    nop
lbl_8088DFF4:
    lw      a3, 0x1C44(t9)             # 00001C44
    sb      t0, 0x02E8(s0)             # 000002E8
    lw      a0, 0x0038($sp)
    addiu   a1, a1, 0x12E4             # a1 = 000012E4
    lui     a2, 0x4080                 # a2 = 40800000
    jal     func_8008D328
    sw      a3, 0x0040($sp)
    lw      a3, 0x0040($sp)
    lw      t2, 0x02DC(s0)             # 000002DC
    lh      t1, 0x008A(s0)             # 0000008A
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f18                  # $f18 = -6.00
    sh      t1, 0x0032(s0)             # 00000032
    bne     a3, t2, lbl_8088E04C
    swc1    $f18, 0x0068(s0)           # 00000068
    lbu     t3, 0x02E8(s0)             # 000002E8
    or      a0, a3, $zero              # a0 = 00000000
    andi    t4, t3, 0x0004             # t4 = 00000000
    bne     t4, $zero, lbl_8088E04C
    nop
    jal     func_80022FD0
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
lbl_8088E04C:
    lui     a1, %hi(func_8088EBD4)     # a1 = 80890000
    addiu   a1, a1, %lo(func_8088EBD4) # a1 = 8088EBD4
    jal     func_8088D7F0
    or      a0, s0, $zero              # a0 = 00000000
lbl_8088E05C:
    beq     $zero, $zero, lbl_8088E0E4
    lhu     v1, 0x0088(s0)             # 00000088
lbl_8088E064:
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508
    addiu   a3, $zero, 0x05DC          # a3 = 000005DC
    beq     $zero, $zero, lbl_8088E0E4
    lhu     v1, 0x0088(s0)             # 00000088
lbl_8088E080:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4000                 # a3 = 40000000
    mfc1    a1, $f0
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    a1, $f0
    lui     a3, 0x3F00                 # a3 = 3F000000
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f10, 0x0084(s0)           # 00000084
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   a0, s0, 0x0028             # a0 = 00000028
    add.s   $f16, $f8, $f10
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4000                 # a3 = 40000000
    swc1    $f18, 0x0010($sp)
    mfc1    a1, $f16
    jal     func_80064178
    nop
    lhu     v1, 0x0088(s0)             # 00000088
lbl_8088E0E4:
    andi    t5, v1, 0x0002             # t5 = 00000000
    beq     t5, $zero, lbl_8088E1C0
    andi    t6, v1, 0x0020             # t6 = 00000000
    bne     t6, $zero, lbl_8088E1C0
    lw      a0, 0x005C($sp)
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    addiu   t8, $zero, 0x000F          # t8 = 0000000F
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, s0, 0x0344             # t0 = 00000344
    addiu   t1, s0, 0x0350             # t1 = 00000350
    addiu   t2, s0, 0x035C             # t2 = 0000035C
    sw      t2, 0x0030($sp)
    sw      t1, 0x0034($sp)
    sw      t0, 0x0038($sp)
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    addiu   a1, s0, 0x0338             # a1 = 00000338
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    addiu   t3, $zero, 0x0050          # t3 = 00000050
    addiu   t4, $zero, 0x000F          # t4 = 0000000F
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0018($sp)
    sw      t4, 0x0014($sp)
    sw      t3, 0x0010($sp)
    lw      a0, 0x005C($sp)
    lw      a1, 0x0038($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    addiu   t7, $zero, 0x000F          # t7 = 0000000F
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    lw      a0, 0x005C($sp)
    lw      a1, 0x0034($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    addiu   t9, $zero, 0x0050          # t9 = 00000050
    addiu   t0, $zero, 0x000F          # t0 = 0000000F
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0018($sp)
    sw      t0, 0x0014($sp)
    sw      t9, 0x0010($sp)
    lw      a0, 0x005C($sp)
    lw      a1, 0x0030($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    lhu     v1, 0x0088(s0)             # 00000088
lbl_8088E1C0:
    lh      t2, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    andi    t3, v1, 0x0040             # t3 = 00000000
    bne     t2, $at, lbl_8088E238
    andi    t8, v1, 0x0002             # t8 = 00000000
    beq     t3, $zero, lbl_8088E220
    andi    t7, v1, 0x0002             # t7 = 00000000
    lh      t4, 0x02D0(s0)             # 000002D0
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     t4, $at, lbl_8088E204
    swc1    $f4, 0x0068(s0)            # 00000068
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x388A          # a1 = 0000388A
    beq     $zero, $zero, lbl_8088E214
    lhu     t5, 0x0088(s0)             # 00000088
lbl_8088E204:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x388F          # a1 = 0000388F
    lhu     t5, 0x0088(s0)             # 00000088
lbl_8088E214:
    andi    t6, t5, 0xFFBF             # t6 = 00000000
    beq     $zero, $zero, lbl_8088E250
    sh      t6, 0x0088(s0)             # 00000088
lbl_8088E220:
    beq     t7, $zero, lbl_8088E250
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    beq     $zero, $zero, lbl_8088E254
    lw      $ra, 0x002C($sp)
lbl_8088E238:
    beq     t8, $zero, lbl_8088E250
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    jal     func_80022FD0
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_8088E250:
    lw      $ra, 0x002C($sp)
lbl_8088E254:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_8088E264:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0A14             # a1 = 06000A14
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008D2D4
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    lui     a1, %hi(func_8088E300)     # a1 = 80890000
    lhu     v0, 0x0088(a2)             # 00000088
    sb      t6, 0x02AC(a2)             # 000002AC
    or      a0, a2, $zero              # a0 = 00000000
    andi    t7, v0, 0x0003             # t7 = 00000000
    bnel    t7, $zero, lbl_8088E2C8
    mtc1    $zero, $f0                 # $f0 = 0.00
    lh      t8, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    andi    t9, v0, 0x0020             # t9 = 00000000
    bne     t8, $at, lbl_8088E2E8
    nop
    beq     t9, $zero, lbl_8088E2E8
    nop
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_8088E2C8:
    lwc1    $f4, 0x0060(a2)            # 00000060
    c.le.s  $f4, $f0
    nop
    bc1f    lbl_8088E2E8
    nop
    swc1    $f0, 0x006C(a2)            # 0000006C
    swc1    $f0, 0x0060(a2)            # 00000060
    swc1    $f0, 0x0068(a2)            # 00000068
lbl_8088E2E8:
    jal     func_8088D7F0
    addiu   a1, a1, %lo(func_8088E300) # a1 = 8088E300
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8088E300:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lhu     v0, 0x0088(s0)             # 00000088
    or      a0, s0, $zero              # a0 = 00000000
    andi    t6, v0, 0x0003             # t6 = 00000000
    bnel    t6, $zero, lbl_8088E348
    mtc1    $zero, $f0                 # $f0 = 0.00
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    andi    t8, v0, 0x0020             # t8 = 00000000
    bnel    t7, $at, lbl_8088E36C
    lh      t9, 0x001C(s0)             # 0000001C
    beql    t8, $zero, lbl_8088E36C
    lh      t9, 0x001C(s0)             # 0000001C
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_8088E348:
    lwc1    $f4, 0x0060(s0)            # 00000060
    c.le.s  $f4, $f0
    nop
    bc1fl   lbl_8088E36C
    lh      t9, 0x001C(s0)             # 0000001C
    swc1    $f0, 0x006C(s0)            # 0000006C
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f0, 0x0068(s0)            # 00000068
    lh      t9, 0x001C(s0)             # 0000001C
lbl_8088E36C:
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    bne     t9, $at, lbl_8088E398
    nop
    lhu     t0, 0x0088(s0)             # 00000088
    andi    t1, t0, 0x0020             # t1 = 00000000
    beq     t1, $zero, lbl_8088E398
    nop
    lwc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f8, 0x0084(s0)            # 00000084
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0028(s0)           # 00000028
lbl_8088E398:
    jal     func_800213B4
    lw      a1, 0x1C44(a2)             # 00001C44
    lh      a0, 0x0032(s0)             # 00000032
    subu    v1, v0, a0
    sll     v1, v1, 16
    sra     v1, v1, 16
    blezl   v1, lbl_8088E400
    mtc1    v1, $f18                   # $f18 = 0.00
    mtc1    v1, $f16                   # $f16 = 0.00
    lui     $at, 0x4228                # $at = 42280000
    mtc1    $at, $f4                   # $f4 = 42.00
    cvt.s.w $f18, $f16
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    div.s   $f6, $f18, $f4
    add.s   $f10, $f6, $f8
    trunc.w.s $f16, $f10
    mfc1    t4, $f16
    nop
    sll     t5, t4,  1
    addu    t6, a0, t5
    sll     a1, t4, 16
    sra     a1, a1, 16
    beq     $zero, $zero, lbl_8088E43C
    sh      t6, 0x0032(s0)             # 00000032
    mtc1    v1, $f18                   # $f18 = 0.00
lbl_8088E400:
    lui     $at, 0x4228                # $at = 42280000
    mtc1    $at, $f6                   # $f6 = 42.00
    cvt.s.w $f4, $f18
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    div.s   $f8, $f4, $f6
    sub.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t9, $f18
    nop
    sll     t0, t9,  1
    addu    t1, a0, t0
    sll     a1, t9, 16
    sra     a1, a1, 16
    sh      t1, 0x0032(s0)             # 00000032
lbl_8088E43C:
    blezl   v1, lbl_8088E464
    mtc1    a1, $f16                   # $f16 = 0.00
    mtc1    a1, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80890400)     # $at = 80890000
    lwc1    $f8, %lo(var_80890400)($at)
    cvt.s.w $f6, $f4
    mul.s   $f10, $f6, $f8
    beq     $zero, $zero, lbl_8088E478
    swc1    $f10, 0x0158(s0)           # 00000158
    mtc1    a1, $f16                   # $f16 = 0.00
lbl_8088E464:
    lui     $at, %hi(var_80890404)     # $at = 80890000
    lwc1    $f4, %lo(var_80890404)($at)
    cvt.s.w $f18, $f16
    mul.s   $f6, $f18, $f4
    swc1    $f6, 0x0158(s0)            # 00000158
lbl_8088E478:
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lwc1    $f8, 0x0154(s0)            # 00000154
    trunc.w.s $f10, $f8
    mfc1    t5, $f10
    nop
    andi    t6, t5, 0x0007             # t6 = 00000000
    bnel    t6, $zero, lbl_8088E4E0
    lui     $at, 0x4396                # $at = 43960000
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    or      a0, s0, $zero              # a0 = 00000000
    bne     t7, $at, lbl_8088E4D4
    nop
    lhu     t8, 0x0088(s0)             # 00000088
    addiu   a1, $zero, 0x3835          # a1 = 00003835
    andi    t9, t8, 0x0020             # t9 = 00000000
    beq     t9, $zero, lbl_8088E4D4
    nop
    jal     func_80022FD0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8088E4E0
    lui     $at, 0x4396                # $at = 43960000
lbl_8088E4D4:
    jal     func_80022FD0
    addiu   a1, $zero, 0x386F          # a1 = 0000386F
    lui     $at, 0x4396                # $at = 43960000
lbl_8088E4E0:
    mtc1    $at, $f16                  # $f16 = 300.00
    lwc1    $f18, 0x0090(s0)           # 00000090
    lh      t0, 0x0032(s0)             # 00000032
    lui     $at, 0x42A0                # $at = 42A00000
    c.lt.s  $f16, $f18
    or      a0, s0, $zero              # a0 = 00000000
    sh      t0, 0x00B6(s0)             # 000000B6
    bc1f    lbl_8088E52C
    nop
    mtc1    $at, $f4                   # $f4 = 80.00
    lwc1    $f6, 0x0094(s0)            # 00000094
    c.lt.s  $f4, $f6
    nop
    bc1f    lbl_8088E52C
    nop
    jal     func_8088D99C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8088E58C
    lw      $ra, 0x001C($sp)
lbl_8088E52C:
    jal     func_80021A28
    addiu   a1, $zero, 0x0E38          # a1 = 00000E38
    beq     v0, $zero, lbl_8088E588
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f8                   # $f8 = 180.00
    lwc1    $f10, 0x0090(s0)           # 00000090
    lui     $at, 0x42A0                # $at = 42A00000
    c.le.s  $f10, $f8
    nop
    bc1f    lbl_8088E580
    nop
    mtc1    $at, $f16                  # $f16 = 80.00
    lwc1    $f18, 0x0094(s0)           # 00000094
    c.le.s  $f18, $f16
    nop
    bc1f    lbl_8088E580
    nop
    jal     func_8088DB48
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8088E58C
    lw      $ra, 0x001C($sp)
lbl_8088E580:
    jal     func_8088E59C
    or      a0, s0, $zero              # a0 = 00000000
lbl_8088E588:
    lw      $ra, 0x001C($sp)
lbl_8088E58C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8088E59C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0C70             # a1 = 06000C70
    jal     func_8008D2D4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f6                   # $f6 = -1.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f8                   # $f8 = 4.00
    addiu   t6, $zero, 0x000C          # t6 = 0000000C
    sb      t6, 0x02AC(s0)             # 000002AC
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    swc1    $f4, 0x0060(s0)            # 00000060
    swc1    $f6, 0x006C(s0)            # 0000006C
    jal     func_80063BF0
    swc1    $f8, 0x0068(s0)            # 00000068
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sb      v0, 0x02D2(s0)             # 000002D2
    bne     t7, $at, lbl_8088E62C
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t8, 0x0088(s0)             # 00000088
    addiu   a1, $zero, 0x388E          # a1 = 0000388E
    andi    t9, t8, 0x0020             # t9 = 00000000
    beq     t9, $zero, lbl_8088E62C
    nop
    jal     func_80022FD0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8088E634
    nop
lbl_8088E62C:
    jal     func_80022FD0
    addiu   a1, $zero, 0x386C          # a1 = 0000386C
lbl_8088E634:
    lui     a1, %hi(func_8088E658)     # a1 = 80890000
    addiu   a1, a1, %lo(func_8088E658) # a1 = 8088E658
    jal     func_8088D7F0
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8088E658:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0028($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x004C($sp)
    mfc1    a1, $f0
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a3, 0x3F80                 # a3 = 3F800000
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lhu     v0, 0x0088(s0)             # 00000088
    andi    t6, v0, 0x0042             # t6 = 00000000
    beq     t6, $zero, lbl_8088E77C
    andi    t7, v0, 0x0040             # t7 = 00000000
    bne     t7, $zero, lbl_8088E770
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t8, $zero, 0x0050          # t8 = 00000050
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    lw      a0, 0x004C($sp)
    addiu   a1, s0, 0x0338             # a1 = 00000338
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    addiu   t1, $zero, 0x0050          # t1 = 00000050
    addiu   t2, $zero, 0x000F          # t2 = 0000000F
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      t1, 0x0010($sp)
    lw      a0, 0x004C($sp)
    addiu   a1, s0, 0x0344             # a1 = 00000344
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    addiu   t4, $zero, 0x0050          # t4 = 00000050
    addiu   t5, $zero, 0x000F          # t5 = 0000000F
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    lw      a0, 0x004C($sp)
    addiu   a1, s0, 0x0350             # a1 = 00000350
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    addiu   t8, $zero, 0x000F          # t8 = 0000000F
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    lw      a0, 0x004C($sp)
    addiu   a1, s0, 0x035C             # a1 = 0000035C
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    beq     $zero, $zero, lbl_8088E77C
    lhu     v0, 0x0088(s0)             # 00000088
lbl_8088E770:
    jal     func_80022FD0
    addiu   a1, $zero, 0x388A          # a1 = 0000388A
    lhu     v0, 0x0088(s0)             # 00000088
lbl_8088E77C:
    andi    t0, v0, 0x0002             # t0 = 00000000
    bnel    t0, $zero, lbl_8088E7A8
    lbu     v1, 0x02D2(s0)             # 000002D2
    lh      t1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    andi    t2, v0, 0x0040             # t2 = 00000000
    bnel    t1, $at, lbl_8088E7CC
    andi    t4, v0, 0x0003             # t4 = 00000000
    beql    t2, $zero, lbl_8088E7CC
    andi    t4, v0, 0x0003             # t4 = 00000000
    lbu     v1, 0x02D2(s0)             # 000002D2
lbl_8088E7A8:
    beq     v1, $zero, lbl_8088E7BC
    addiu   t3, v1, 0xFFFF             # t3 = FFFFFFFF
    sb      t3, 0x02D2(s0)             # 000002D2
    beq     $zero, $zero, lbl_8088E7C8
    lhu     v0, 0x0088(s0)             # 00000088
lbl_8088E7BC:
    jal     func_8088D99C
    or      a0, s0, $zero              # a0 = 00000000
    lhu     v0, 0x0088(s0)             # 00000088
lbl_8088E7C8:
    andi    t4, v0, 0x0003             # t4 = 00000000
lbl_8088E7CC:
    bnel    t4, $zero, lbl_8088E7F4
    mtc1    $zero, $f0                 # $f0 = 0.00
    lh      t5, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    andi    t6, v0, 0x0060             # t6 = 00000000
    bnel    t5, $at, lbl_8088EAC0
    lw      t6, 0x0004(s0)             # 00000004
    beql    t6, $zero, lbl_8088EAC0
    lw      t6, 0x0004(s0)             # 00000004
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_8088E7F4:
    lwc1    $f4, 0x0060(s0)            # 00000060
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    c.le.s  $f4, $f0
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    bc1fl   lbl_8088EAC0
    lw      t6, 0x0004(s0)             # 00000004
    swc1    $f0, 0x0068(s0)            # 00000068
    lh      a1, 0x008A(s0)             # 0000008A
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lh      t8, 0x001C(s0)             # 0000001C
    lh      t7, 0x00B6(s0)             # 000000B6
    addiu   v1, $zero, 0xFFFE          # v1 = FFFFFFFE
    bne     v1, t8, lbl_8088E844
    sh      t7, 0x0032(s0)             # 00000032
    lhu     v0, 0x0088(s0)             # 00000088
    andi    t9, v0, 0x0020             # t9 = 00000000
    bne     t9, $zero, lbl_8088E868
    andi    t0, v0, 0x0040             # t0 = 00000000
lbl_8088E844:
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f6                   # $f6 = -32000.00
    lwc1    $f0, 0x0080(s0)            # 00000080
    c.lt.s  $f6, $f0
    nop
    bc1fl   lbl_8088E93C
    lui     $at, 0x4396                # $at = 43960000
    beq     $zero, $zero, lbl_8088E938
    swc1    $f0, 0x0028(s0)            # 00000028
lbl_8088E868:
    beq     t0, $zero, lbl_8088E8DC
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFF4
    lw      t2, 0x0024(s0)             # 00000024
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f6                   # $f6 = 0.75
    sw      t2, 0x0000(a1)             # FFFFFFF4
    lw      t1, 0x0028(s0)             # 00000028
    mtc1    $zero, $f18                # $f18 = 0.00
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t1, 0x0004(a1)             # FFFFFFF8
    lw      t2, 0x002C(s0)             # 0000002C
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    sw      t2, 0x0008(a1)             # FFFFFFFC
    lhu     t3, 0x0088(s0)             # 00000088
    lwc1    $f10, 0x0084(s0)           # 00000084
    andi    t4, t3, 0xFFBF             # t4 = 00000000
    sh      t4, 0x0088(s0)             # 00000088
    lwc1    $f8, 0x0040($sp)
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x0040($sp)
    lwc1    $f4, 0x0060(s0)            # 00000060
    swc1    $f18, 0x006C(s0)           # 0000006C
    mul.s   $f8, $f4, $f6
    swc1    $f8, 0x0060(s0)            # 00000060
    sw      $zero, 0x0010($sp)
    jal     func_8001CF3C
    lw      a0, 0x004C($sp)
    beq     $zero, $zero, lbl_8088EB58
    lw      $ra, 0x002C($sp)
lbl_8088E8DC:
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x0060             # a0 = 00000060
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    a1, $f0
    lui     a3, 0x4000                 # a3 = 40000000
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    lwc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f16, 0x0084(s0)           # 00000084
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a0, s0, 0x0028             # a0 = 00000028
    add.s   $f18, $f10, $f16
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4000                 # a3 = 40000000
    swc1    $f4, 0x0010($sp)
    mfc1    a1, $f18
    jal     func_80064178
    nop
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f8, 0x0084(s0)            # 00000084
    c.eq.s  $f6, $f8
    nop
    bc1f    lbl_8088EB54
lbl_8088E938:
    lui     $at, 0x4396                # $at = 43960000
lbl_8088E93C:
    mtc1    $at, $f10                  # $f10 = 300.00
    lwc1    $f0, 0x0090(s0)            # 00000090
    addiu   v1, $zero, 0xFFFE          # v1 = FFFFFFFE
    lui     $at, 0x42A0                # $at = 42A00000
    c.lt.s  $f10, $f0
    nop
    bc1fl   lbl_8088E988
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f16                  # $f16 = 180.00
    lwc1    $f18, 0x0094(s0)           # 00000094
    c.lt.s  $f16, $f18
    nop
    bc1fl   lbl_8088E988
    lui     $at, 0x4334                # $at = 43340000
    jal     func_8088D99C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8088EB58
    lw      $ra, 0x002C($sp)
    lui     $at, 0x4334                # $at = 43340000
lbl_8088E988:
    mtc1    $at, $f4                   # $f4 = 180.00
    lui     $at, 0x42A0                # $at = 42A00000
    c.le.s  $f0, $f4
    nop
    bc1fl   lbl_8088EA4C
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f8, 0x0094(s0)            # 00000094
    c.le.s  $f8, $f6
    nop
    bc1fl   lbl_8088EA4C
    lui     $at, 0x4120                # $at = 41200000
    lbu     t5, 0x02D2(s0)             # 000002D2
    lui     $at, 0x4120                # $at = 41200000
    bgtzl   t5, lbl_8088E9DC
    mtc1    $at, $f10                  # $f10 = 10.00
    jal     func_8088E264
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8088EB58
    lw      $ra, 0x002C($sp)
    mtc1    $at, $f10                  # $f10 = 0.00
lbl_8088E9DC:
    lw      t6, 0x0004(s0)             # 00000004
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f16                  # $f16 = 4.00
    lui     $at, 0x0100                # $at = 01000000
    or      t7, t6, $at                # t7 = 01000000
    lh      t8, 0x001C(s0)             # 0000001C
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f18                  # $f18 = -1.00
    sw      t7, 0x0004(s0)             # 00000004
    swc1    $f10, 0x0060(s0)           # 00000060
    swc1    $f16, 0x0068(s0)           # 00000068
    bne     v1, t8, lbl_8088EA34
    swc1    $f18, 0x006C(s0)           # 0000006C
    lhu     t9, 0x0088(s0)             # 00000088
    or      a0, s0, $zero              # a0 = 00000000
    andi    t0, t9, 0x0020             # t0 = 00000000
    beql    t0, $zero, lbl_8088EA38
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x388E          # a1 = 0000388E
    beq     $zero, $zero, lbl_8088EB58
    lw      $ra, 0x002C($sp)
lbl_8088EA34:
    or      a0, s0, $zero              # a0 = 00000000
lbl_8088EA38:
    jal     func_80022FD0
    addiu   a1, $zero, 0x386C          # a1 = 0000386C
    beq     $zero, $zero, lbl_8088EB58
    lw      $ra, 0x002C($sp)
    lui     $at, 0x4120                # $at = 41200000
lbl_8088EA4C:
    mtc1    $at, $f4                   # $f4 = 10.00
    lw      t1, 0x0004(s0)             # 00000004
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f6                   # $f6 = 4.00
    lui     $at, 0x0100                # $at = 01000000
    or      t2, t1, $at                # t2 = 01000000
    lh      t3, 0x001C(s0)             # 0000001C
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f8                   # $f8 = -1.00
    sw      t2, 0x0004(s0)             # 00000004
    swc1    $f4, 0x0060(s0)            # 00000060
    swc1    $f6, 0x0068(s0)            # 00000068
    bne     v1, t3, lbl_8088EAA8
    swc1    $f8, 0x006C(s0)            # 0000006C
    lhu     t4, 0x0088(s0)             # 00000088
    or      a0, s0, $zero              # a0 = 00000000
    andi    t5, t4, 0x0020             # t5 = 00000000
    beql    t5, $zero, lbl_8088EAAC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x388E          # a1 = 0000388E
    beq     $zero, $zero, lbl_8088EB58
    lw      $ra, 0x002C($sp)
lbl_8088EAA8:
    or      a0, s0, $zero              # a0 = 00000000
lbl_8088EAAC:
    jal     func_80022FD0
    addiu   a1, $zero, 0x386C          # a1 = 0000386C
    beq     $zero, $zero, lbl_8088EB58
    lw      $ra, 0x002C($sp)
    lw      t6, 0x0004(s0)             # 00000004
lbl_8088EAC0:
    lui     $at, 0x0100                # $at = 01000000
    lh      a1, 0x008A(s0)             # 0000008A
    or      t7, t6, $at                # t7 = 01000000
    sw      t7, 0x0004(s0)             # 00000004
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f16                  # $f16 = 6.00
    lwc1    $f10, 0x0060(s0)           # 00000060
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_8088EB58
    lw      $ra, 0x002C($sp)
    lhu     t8, 0x0088(s0)             # 00000088
    lw      a0, 0x004C($sp)
    addiu   a1, s0, 0x0338             # a1 = 00000338
    andi    t9, t8, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_8088EB54
    addiu   t0, s0, 0x0344             # t0 = 00000344
    addiu   t1, s0, 0x0350             # t1 = 00000350
    addiu   t2, s0, 0x035C             # t2 = 0000035C
    sw      t2, 0x0030($sp)
    sw      t1, 0x0034($sp)
    jal     func_80028320
    sw      t0, 0x0038($sp)
    lw      a0, 0x004C($sp)
    jal     func_80028320
    lw      a1, 0x0038($sp)
    lw      a0, 0x004C($sp)
    jal     func_80028320
    lw      a1, 0x0034($sp)
    lw      a0, 0x004C($sp)
    jal     func_80028320
    lw      a1, 0x0030($sp)
lbl_8088EB54:
    lw      $ra, 0x002C($sp)
lbl_8088EB58:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_8088EB68:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sb      t6, 0x02AC(a3)             # 000002AC
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x12E4             # a1 = 060012E4
    sw      a3, 0x0018($sp)
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D328
    lui     a2, 0x4080                 # a2 = 40800000
    lw      a0, 0x0018($sp)
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f4                   # $f4 = -6.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f6                   # $f6 = -1.00
    lh      t7, 0x008A(a0)             # 0000008A
    lui     a1, %hi(func_8088EBD4)     # a1 = 80890000
    addiu   a1, a1, %lo(func_8088EBD4) # a1 = 8088EBD4
    swc1    $f4, 0x0068(a0)            # 00000068
    sh      t7, 0x0032(a0)             # 00000032
    jal     func_8088D7F0
    swc1    $f6, 0x006C(a0)            # 0000006C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8088EBD4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    mfc1    a1, $f0
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3F00                 # a3 = 3F000000
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    lhu     v0, 0x0088(s0)             # 00000088
    andi    t6, v0, 0x0003             # t6 = 00000000
    bnel    t6, $zero, lbl_8088EC34
    mtc1    $zero, $f2                 # $f2 = 0.00
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   t0, $zero, 0xFFFE          # t0 = FFFFFFFE
    andi    t8, v0, 0x0020             # t8 = 00000000
    bnel    t0, t7, lbl_8088ECB0
    mtc1    $zero, $f2                 # $f2 = 0.00
    beql    t8, $zero, lbl_8088ECB0
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $zero, $f2                 # $f2 = 0.00
lbl_8088EC34:
    lwc1    $f4, 0x0060(s0)            # 00000060
    addiu   t0, $zero, 0xFFFE          # t0 = FFFFFFFE
    c.le.s  $f4, $f2
    nop
    bc1fl   lbl_8088ECB0
    mtc1    $zero, $f2                 # $f2 = 0.00
    lh      t9, 0x001C(s0)             # 0000001C
    andi    t1, v0, 0x0020             # t1 = 00000000
    lui     $at, 0xC6FA                # $at = C6FA0000
    bnel    t0, t9, lbl_8088EC6C
    lwc1    $f0, 0x0080(s0)            # 00000080
    bnel    t1, $zero, lbl_8088EC94
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f0, 0x0080(s0)            # 00000080
lbl_8088EC6C:
    mtc1    $at, $f6                   # $f6 = -32000.00
    nop
    c.lt.s  $f6, $f0
    nop
    bc1fl   lbl_8088ECB0
    mtc1    $zero, $f2                 # $f2 = 0.00
    swc1    $f0, 0x0028(s0)            # 00000028
    beq     $zero, $zero, lbl_8088ECAC
    lhu     v0, 0x0088(s0)             # 00000088
    lwc1    $f8, 0x0028(s0)            # 00000028
lbl_8088EC94:
    lwc1    $f10, 0x0084(s0)           # 00000084
    swc1    $f2, 0x0060(s0)            # 00000060
    swc1    $f2, 0x006C(s0)            # 0000006C
    add.s   $f16, $f8, $f10
    lhu     v0, 0x0088(s0)             # 00000088
    swc1    $f16, 0x0028(s0)           # 00000028
lbl_8088ECAC:
    mtc1    $zero, $f2                 # $f2 = 0.00
lbl_8088ECB0:
    andi    t2, v0, 0x0042             # t2 = 00000000
    beq     t2, $zero, lbl_8088EDA4
    andi    t3, v0, 0x0040             # t3 = 00000000
    bne     t3, $zero, lbl_8088ED8C
    andi    t7, v0, 0xFFBF             # t7 = 00000000
    addiu   t4, $zero, 0x0050          # t4 = 00000050
    addiu   t5, $zero, 0x000F          # t5 = 0000000F
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    lw      a0, 0x0034($sp)
    addiu   a1, s0, 0x0338             # a1 = 00000338
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    addiu   t8, $zero, 0x000F          # t8 = 0000000F
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    lw      a0, 0x0034($sp)
    addiu   a1, s0, 0x0344             # a1 = 00000344
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    addiu   t1, $zero, 0x0050          # t1 = 00000050
    addiu   t2, $zero, 0x000F          # t2 = 0000000F
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      t1, 0x0010($sp)
    lw      a0, 0x0034($sp)
    addiu   a1, s0, 0x0350             # a1 = 00000350
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    addiu   t4, $zero, 0x0050          # t4 = 00000050
    addiu   t5, $zero, 0x000F          # t5 = 0000000F
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    lw      a0, 0x0034($sp)
    addiu   a1, s0, 0x035C             # a1 = 0000035C
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    mtc1    $zero, $f2                 # $f2 = 0.00
    beq     $zero, $zero, lbl_8088EDA4
    addiu   t0, $zero, 0xFFFE          # t0 = FFFFFFFE
lbl_8088ED8C:
    sh      t7, 0x0088(s0)             # 00000088
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x388F          # a1 = 0000388F
    mtc1    $zero, $f2                 # $f2 = 0.00
    addiu   t0, $zero, 0xFFFE          # t0 = FFFFFFFE
lbl_8088EDA4:
    lwc1    $f18, 0x0068(s0)           # 00000068
    lh      v1, 0x00B6(s0)             # 000000B6
    lh      t8, 0x008A(s0)             # 0000008A
    c.eq.s  $f2, $f18
    subu    a0, t8, v1
    sll     a0, a0, 16
    bc1f    lbl_8088EF10
    sra     a0, a0, 16
    lhu     v0, 0x0088(s0)             # 00000088
    lui     $at, 0x4396                # $at = 43960000
    andi    t9, v0, 0x0001             # t9 = 00000000
    bnel    t9, $zero, lbl_8088EDF4
    lwc1    $f0, 0x0090(s0)            # 00000090
    lh      t1, 0x001C(s0)             # 0000001C
    andi    t2, v0, 0x0020             # t2 = 00000000
    bne     t0, t1, lbl_8088EF10
    nop
    beq     t2, $zero, lbl_8088EF10
    nop
    lwc1    $f0, 0x0090(s0)            # 00000090
lbl_8088EDF4:
    mtc1    $at, $f4                   # $f4 = 300.00
    lbu     t3, 0x02E8(s0)             # 000002E8
    sh      v1, 0x0032(s0)             # 00000032
    c.lt.s  $f4, $f0
    andi    t4, t3, 0xFFFD             # t4 = 00000000
    sb      t4, 0x02E8(s0)             # 000002E8
    lui     $at, 0x42A0                # $at = 42A00000
    bc1fl   lbl_8088EEAC
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f6                   # $f6 = 180.00
    lwc1    $f8, 0x0094(s0)            # 00000094
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_8088EEAC
    lui     $at, 0x4334                # $at = 43340000
    lh      v0, 0x00B4(s0)             # 000000B4
    bltz    v0, lbl_8088EE44
    subu    v1, $zero, v0
    beq     $zero, $zero, lbl_8088EE44
    or      v1, v0, $zero              # v1 = 00000000
lbl_8088EE44:
    slti    $at, v1, 0x0FA0
    beql    $at, $zero, lbl_8088EEAC
    lui     $at, 0x4334                # $at = 43340000
    lh      v0, 0x00B8(s0)             # 000000B8
    bltz    v0, lbl_8088EE64
    subu    v1, $zero, v0
    beq     $zero, $zero, lbl_8088EE64
    or      v1, v0, $zero              # v1 = 00000000
lbl_8088EE64:
    slti    $at, v1, 0x0FA0
    beql    $at, $zero, lbl_8088EEAC
    lui     $at, 0x4334                # $at = 43340000
    lhu     v0, 0x0088(s0)             # 00000088
    andi    t5, v0, 0x0001             # t5 = 00000000
    bne     t5, $zero, lbl_8088EE98
    nop
    lh      t6, 0x001C(s0)             # 0000001C
    andi    t7, v0, 0x0020             # t7 = 00000000
    bnel    t0, t6, lbl_8088EEAC
    lui     $at, 0x4334                # $at = 43340000
    beql    t7, $zero, lbl_8088EEAC
    lui     $at, 0x4334                # $at = 43340000
lbl_8088EE98:
    jal     func_8088D99C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8088EF10
    nop
    lui     $at, 0x4334                # $at = 43340000
lbl_8088EEAC:
    mtc1    $at, $f10                  # $f10 = 180.00
    lui     $at, 0x42A0                # $at = 42A00000
    c.lt.s  $f0, $f10
    nop
    bc1f    lbl_8088EF08
    nop
    mtc1    $at, $f16                  # $f16 = 80.00
    lwc1    $f18, 0x0094(s0)           # 00000094
    c.le.s  $f18, $f16
    nop
    bc1f    lbl_8088EF08
    nop
    bltz    a0, lbl_8088EEEC
    subu    v1, $zero, a0
    beq     $zero, $zero, lbl_8088EEEC
    or      v1, a0, $zero              # v1 = 00000000
lbl_8088EEEC:
    slti    $at, v1, 0x1771
    beq     $at, $zero, lbl_8088EF08
    nop
    jal     func_8088DB48
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8088EF10
    nop
lbl_8088EF08:
    jal     func_8088E59C
    or      a0, s0, $zero              # a0 = 00000000
lbl_8088EF10:
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8088EF2C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x12E4             # a0 = 060012E4
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x4080                # $at = 40800000
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4.00
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a2, $f0
    mfc1    a3, $f0
    addiu   a1, a1, 0x12E4             # a1 = 060012E4
    swc1    $f6, 0x0010($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sw      $zero, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f10                  # $f10 = -6.00
    lbu     t8, 0x02D4(s0)             # 000002D4
    lh      t7, 0x008A(s0)             # 0000008A
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    sb      t6, 0x02AC(s0)             # 000002AC
    swc1    $f10, 0x0068(s0)           # 00000068
    bne     t8, $at, lbl_8088EFB0
    sh      t7, 0x0032(s0)             # 00000032
    addiu   t9, $zero, 0x0030          # t9 = 00000030
    sb      t9, 0x02D3(s0)             # 000002D3
lbl_8088EFB0:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    lui     a1, %hi(func_8088EFE0)     # a1 = 80890000
    addiu   a1, a1, %lo(func_8088EFE0) # a1 = 8088EFE0
    jal     func_8088D7F0
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8088EFE0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    mfc1    a1, $f0
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3F00                 # a3 = 3F000000
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    lhu     v0, 0x0088(s0)             # 00000088
    andi    t6, v0, 0x0003             # t6 = 00000000
    bnel    t6, $zero, lbl_8088F040
    mtc1    $zero, $f2                 # $f2 = 0.00
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   t0, $zero, 0xFFFE          # t0 = FFFFFFFE
    andi    t8, v0, 0x0020             # t8 = 00000000
    bnel    t0, t7, lbl_8088F0BC
    mtc1    $zero, $f2                 # $f2 = 0.00
    beql    t8, $zero, lbl_8088F0BC
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $zero, $f2                 # $f2 = 0.00
lbl_8088F040:
    lwc1    $f4, 0x0060(s0)            # 00000060
    addiu   t0, $zero, 0xFFFE          # t0 = FFFFFFFE
    c.le.s  $f4, $f2
    nop
    bc1fl   lbl_8088F0BC
    mtc1    $zero, $f2                 # $f2 = 0.00
    lh      t9, 0x001C(s0)             # 0000001C
    andi    t1, v0, 0x0020             # t1 = 00000000
    lui     $at, 0xC6FA                # $at = C6FA0000
    bnel    t0, t9, lbl_8088F078
    lwc1    $f0, 0x0080(s0)            # 00000080
    bnel    t1, $zero, lbl_8088F0A0
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f0, 0x0080(s0)            # 00000080
lbl_8088F078:
    mtc1    $at, $f6                   # $f6 = -32000.00
    nop
    c.lt.s  $f6, $f0
    nop
    bc1fl   lbl_8088F0BC
    mtc1    $zero, $f2                 # $f2 = 0.00
    swc1    $f0, 0x0028(s0)            # 00000028
    beq     $zero, $zero, lbl_8088F0B8
    lhu     v0, 0x0088(s0)             # 00000088
    lwc1    $f8, 0x0028(s0)            # 00000028
lbl_8088F0A0:
    lwc1    $f10, 0x0084(s0)           # 00000084
    swc1    $f2, 0x0060(s0)            # 00000060
    swc1    $f2, 0x006C(s0)            # 0000006C
    add.s   $f16, $f8, $f10
    lhu     v0, 0x0088(s0)             # 00000088
    swc1    $f16, 0x0028(s0)           # 00000028
lbl_8088F0B8:
    mtc1    $zero, $f2                 # $f2 = 0.00
lbl_8088F0BC:
    andi    t2, v0, 0x0042             # t2 = 00000000
    beq     t2, $zero, lbl_8088F1B0
    andi    t3, v0, 0x0040             # t3 = 00000000
    bne     t3, $zero, lbl_8088F198
    andi    t7, v0, 0xFFBF             # t7 = 00000000
    addiu   t4, $zero, 0x0050          # t4 = 00000050
    addiu   t5, $zero, 0x000F          # t5 = 0000000F
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    lw      a0, 0x0034($sp)
    addiu   a1, s0, 0x0338             # a1 = 00000338
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    addiu   t8, $zero, 0x000F          # t8 = 0000000F
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    lw      a0, 0x0034($sp)
    addiu   a1, s0, 0x0344             # a1 = 00000344
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    addiu   t1, $zero, 0x0050          # t1 = 00000050
    addiu   t2, $zero, 0x000F          # t2 = 0000000F
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      t1, 0x0010($sp)
    lw      a0, 0x0034($sp)
    addiu   a1, s0, 0x0350             # a1 = 00000350
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    addiu   t4, $zero, 0x0050          # t4 = 00000050
    addiu   t5, $zero, 0x000F          # t5 = 0000000F
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    lw      a0, 0x0034($sp)
    addiu   a1, s0, 0x035C             # a1 = 0000035C
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    mtc1    $zero, $f2                 # $f2 = 0.00
    beq     $zero, $zero, lbl_8088F1B0
    addiu   t0, $zero, 0xFFFE          # t0 = FFFFFFFE
lbl_8088F198:
    sh      t7, 0x0088(s0)             # 00000088
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x388F          # a1 = 0000388F
    mtc1    $zero, $f2                 # $f2 = 0.00
    addiu   t0, $zero, 0xFFFE          # t0 = FFFFFFFE
lbl_8088F1B0:
    lh      v1, 0x00B6(s0)             # 000000B6
    lh      t8, 0x008A(s0)             # 0000008A
    lbu     t9, 0x0114(s0)             # 00000114
    subu    a0, t8, v1
    sll     a0, a0, 16
    bne     t9, $zero, lbl_8088F360
    sra     a0, a0, 16
    lwc1    $f18, 0x0068(s0)           # 00000068
    c.eq.s  $f2, $f18
    nop
    bc1f    lbl_8088F360
    nop
    lhu     v0, 0x0088(s0)             # 00000088
    andi    t1, v0, 0x0001             # t1 = 00000000
    bnel    t1, $zero, lbl_8088F20C
    lbu     t4, 0x00AF(s0)             # 000000AF
    lh      t2, 0x001C(s0)             # 0000001C
    andi    t3, v0, 0x0020             # t3 = 00000000
    bne     t0, t2, lbl_8088F360
    nop
    beq     t3, $zero, lbl_8088F360
    nop
    lbu     t4, 0x00AF(s0)             # 000000AF
lbl_8088F20C:
    sh      v1, 0x0032(s0)             # 00000032
    bnel    t4, $zero, lbl_8088F22C
    lbu     t5, 0x02AD(s0)             # 000002AD
    jal     func_8088F37C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8088F360
    nop
    lbu     t5, 0x02AD(s0)             # 000002AD
lbl_8088F22C:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t5, $at, lbl_8088F24C
    lui     $at, 0x4396                # $at = 43960000
    jal     func_8088F788
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8088F360
    nop
    lui     $at, 0x4396                # $at = 43960000
lbl_8088F24C:
    mtc1    $at, $f4                   # $f4 = 300.00
    lwc1    $f0, 0x0090(s0)            # 00000090
    lui     $at, 0x42A0                # $at = 42A00000
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_8088F2FC
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f6                   # $f6 = 180.00
    lwc1    $f8, 0x0094(s0)            # 00000094
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_8088F2FC
    lui     $at, 0x4334                # $at = 43340000
    lh      v0, 0x00B4(s0)             # 000000B4
    bltz    v0, lbl_8088F294
    subu    v1, $zero, v0
    beq     $zero, $zero, lbl_8088F294
    or      v1, v0, $zero              # v1 = 00000000
lbl_8088F294:
    slti    $at, v1, 0x0FA0
    beql    $at, $zero, lbl_8088F2FC
    lui     $at, 0x4334                # $at = 43340000
    lh      v0, 0x00B8(s0)             # 000000B8
    bltz    v0, lbl_8088F2B4
    subu    v1, $zero, v0
    beq     $zero, $zero, lbl_8088F2B4
    or      v1, v0, $zero              # v1 = 00000000
lbl_8088F2B4:
    slti    $at, v1, 0x0FA0
    beql    $at, $zero, lbl_8088F2FC
    lui     $at, 0x4334                # $at = 43340000
    lhu     v0, 0x0088(s0)             # 00000088
    andi    t6, v0, 0x0001             # t6 = 00000000
    bne     t6, $zero, lbl_8088F2E8
    nop
    lh      t7, 0x001C(s0)             # 0000001C
    andi    t8, v0, 0x0020             # t8 = 00000000
    bnel    t0, t7, lbl_8088F2FC
    lui     $at, 0x4334                # $at = 43340000
    beql    t8, $zero, lbl_8088F2FC
    lui     $at, 0x4334                # $at = 43340000
lbl_8088F2E8:
    jal     func_8088D99C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8088F360
    nop
    lui     $at, 0x4334                # $at = 43340000
lbl_8088F2FC:
    mtc1    $at, $f10                  # $f10 = 180.00
    lui     $at, 0x42A0                # $at = 42A00000
    c.lt.s  $f0, $f10
    nop
    bc1f    lbl_8088F358
    nop
    mtc1    $at, $f16                  # $f16 = 80.00
    lwc1    $f18, 0x0094(s0)           # 00000094
    c.le.s  $f18, $f16
    nop
    bc1f    lbl_8088F358
    nop
    bltz    a0, lbl_8088F33C
    subu    v1, $zero, a0
    beq     $zero, $zero, lbl_8088F33C
    or      v1, a0, $zero              # v1 = 00000000
lbl_8088F33C:
    slti    $at, v1, 0x1771
    beq     $at, $zero, lbl_8088F358
    nop
    jal     func_8088DB48
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8088F360
    nop
lbl_8088F358:
    jal     func_8088E59C
    or      a0, s0, $zero              # a0 = 00000000
lbl_8088F360:
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8088F37C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a1, %hi(func_8088F3B0)     # a1 = 80890000
    sb      $zero, 0x02AC(a0)          # 000002AC
    sb      $zero, 0x0114(a0)          # 00000114
    addiu   a1, a1, %lo(func_8088F3B0) # a1 = 8088F3B0
    jal     func_8088D7F0
    swc1    $f4, 0x0068(a0)            # 00000068
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8088F3B0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x0020($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    lw      a0, 0x0024($sp)
    addiu   a2, $zero, 0x386E          # a2 = 0000386E
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_8001E510
    addiu   a1, a1, 0x00E4             # a1 = 000000E4
    lw      a0, 0x0020($sp)
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    lui     a1, %hi(func_8088F424)     # a1 = 80890000
    addiu   a1, a1, %lo(func_8088F424) # a1 = 8088F424
    jal     func_8088D7F0
    sb      t8, 0x02AC(a0)             # 000002AC
    lw      a0, 0x0020($sp)
    addiu   a1, $zero, 0x0018          # a1 = 00000018
    lw      a2, 0x0024($sp)
    jal     func_80025D04
    addiu   a0, a0, 0x02B4             # a0 = 000002B4
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8088F424:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      a3, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x02B4             # a1 = 000002B4
    addiu   a3, a3, 0x000B             # a3 = 0000000B
    sll     a3, a3, 16
    sra     a3, a3, 16
    jal     func_80025F04
    lw      a2, 0x0024($sp)
    beq     v0, $zero, lbl_8088F49C
    lw      a0, 0x0024($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    or      a1, s0, $zero              # a1 = 00000000
    bne     t6, $at, lbl_8088F48C
    addiu   a2, s0, 0x0024             # a2 = 00000024
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    jal     func_80013A84
    addiu   a3, $zero, 0x00E0          # a3 = 000000E0
    beq     $zero, $zero, lbl_8088F494
    nop
lbl_8088F48C:
    jal     func_80013A84
    addiu   a3, $zero, 0x0040          # a3 = 00000040
lbl_8088F494:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_8088F49C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8088F4B0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0A14             # a1 = 06000A14
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D360
    lui     a2, 0x3FC0                 # a2 = 3FC00000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3888          # a1 = 00003888
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $at, $f6                   # $f6 = -1.00
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, $zero, 0x01F4          # t7 = 000001F4
    sb      t6, 0x02AD(s0)             # 000002AD
    sh      t7, 0x02D0(s0)             # 000002D0
    swc1    $f4, 0x0068(s0)            # 00000068
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x006C(s0)            # 0000006C
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     a1, %hi(func_8088F5CC)     # a1 = 80890000
    mul.s   $f10, $f0, $f8
    lui     $at, 0x4F00                # $at = 4F000000
    addiu   a1, a1, %lo(func_8088F5CC) # a1 = 8088F5CC
    or      a0, s0, $zero              # a0 = 00000000
    cfc1    t8, $f31
    ctc1    t9, $f31
    nop
    cvt.w.s $f16, $f10
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_8088F594
    mfc1    t9, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f16, $f10, $f16
    ctc1    t9, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_8088F588
    nop
    mfc1    t9, $f16
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8088F5A0
    or      t9, t9, $at                # t9 = 80000000
lbl_8088F588:
    beq     $zero, $zero, lbl_8088F5A0
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f16
lbl_8088F594:
    nop
    bltz    t9, lbl_8088F588
    nop
lbl_8088F5A0:
    lui     $at, 0x4130                # $at = 41300000
    mtc1    $at, $f18                  # $f18 = 11.00
    ctc1    t8, $f31
    sb      t9, 0x02D2(s0)             # 000002D2
    jal     func_8088D7F0
    swc1    $f18, 0x0060(s0)           # 00000060
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8088F5CC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    addiu   a1, $zero, 0x7FFF          # a1 = 00007FFF
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lbu     t6, 0x02D2(s0)             # 000002D2
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    andi    t8, t7, 0x00FF             # t8 = 000000FF
    bne     t8, $zero, lbl_8088F6C0
    sb      t7, 0x02D2(s0)             # 000002D2
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f6, $f0, $f4
    cfc1    t9, $f31
    ctc1    t0, $f31
    nop
    cvt.w.s $f8, $f6
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    beql    t0, $zero, lbl_8088F694
    mfc1    t0, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    t0, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    bne     t0, $zero, lbl_8088F688
    nop
    mfc1    t0, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8088F6A0
    or      t0, t0, $at                # t0 = 80000000
lbl_8088F688:
    beq     $zero, $zero, lbl_8088F6A0
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    mfc1    t0, $f8
lbl_8088F694:
    nop
    bltz    t0, lbl_8088F688
    nop
lbl_8088F6A0:
    ctc1    t9, $f31
    jal     func_800CDCCC              # Rand.Next() float
    sb      t0, 0x02D2(s0)             # 000002D2
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    nop
    mul.s   $f16, $f0, $f10
    swc1    $f16, 0x0154(s0)           # 00000154
lbl_8088F6C0:
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lhu     v0, 0x0088(s0)             # 00000088
    lui     $at, 0x452F                # $at = 452F0000
    andi    t1, v0, 0x0003             # t1 = 00000000
    beq     t1, $zero, lbl_8088F748
    andi    t2, v0, 0x0002             # t2 = 00000000
    beq     t2, $zero, lbl_8088F720
    lw      a0, 0x003C($sp)
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f18                  # $f18 = 4.00
    addiu   t3, $zero, 0x000B          # t3 = 0000000B
    sw      t3, 0x0010($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    lui     a3, 0x41A0                 # a3 = 41A00000
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    jal     func_800260E8
    swc1    $f18, 0x0014($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
lbl_8088F720:
    lh      t4, 0x02D0(s0)             # 000002D0
    addiu   t5, t4, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x02D0(s0)             # 000002D0
    lh      t6, 0x02D0(s0)             # 000002D0
    bnel    t6, $zero, lbl_8088F778
    lw      $ra, 0x0034($sp)
    jal     func_8088F788
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8088F778
    lw      $ra, 0x0034($sp)
lbl_8088F748:
    lwc1    $f0, 0x00BC(s0)            # 000000BC
    mtc1    $at, $f4                   # $f4 = 0.00
    lui     $at, 0x43C8                # $at = 43C80000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_8088F778
    lw      $ra, 0x0034($sp)
    mtc1    $at, $f6                   # $f6 = 400.00
    nop
    add.s   $f8, $f0, $f6
    swc1    $f8, 0x00BC(s0)            # 000000BC
    lw      $ra, 0x0034($sp)
lbl_8088F778:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8088F788:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     $at, 0x4150                # $at = 41500000
    mtc1    $at, $f4                   # $f4 = 13.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x03E8          # t7 = 000003E8
    sb      t6, 0x02AD(a0)             # 000002AD
    sh      t7, 0x02D0(a0)             # 000002D0
    swc1    $f4, 0x0060(a0)            # 00000060
    sw      a0, 0x0018($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x3888          # a1 = 00003888
    lui     a1, %hi(func_8088F7D8)     # a1 = 80890000
    lw      a0, 0x0018($sp)
    jal     func_8088D7F0
    addiu   a1, a1, %lo(func_8088F7D8) # a1 = 8088F7D8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8088F7D8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lhu     t6, 0x0088(s0)             # 00000088
    lw      a0, 0x0034($sp)
    addiu   a1, s0, 0x0338             # a1 = 00000338
    andi    t7, t6, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_8088F8EC
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   t8, $zero, 0x0050          # t8 = 00000050
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    addiu   t1, $zero, 0x0050          # t1 = 00000050
    addiu   t2, $zero, 0x000F          # t2 = 0000000F
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      t1, 0x0010($sp)
    lw      a0, 0x0034($sp)
    addiu   a1, s0, 0x0344             # a1 = 00000344
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    addiu   t4, $zero, 0x0050          # t4 = 00000050
    addiu   t5, $zero, 0x000F          # t5 = 0000000F
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    lw      a0, 0x0034($sp)
    addiu   a1, s0, 0x0350             # a1 = 00000350
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    addiu   t8, $zero, 0x000F          # t8 = 0000000F
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    lw      a0, 0x0034($sp)
    addiu   a1, s0, 0x035C             # a1 = 0000035C
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80026308
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0080(s0)            # 00000080
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    swc1    $f4, 0x00BC(s0)            # 000000BC
    jal     func_80022FD0
    swc1    $f6, 0x0028(s0)            # 00000028
    jal     func_8088D99C
    or      a0, s0, $zero              # a0 = 00000000
lbl_8088F8EC:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8088F900:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lbu     v0, 0x02E9(a0)             # 000002E9
    andi    t6, v0, 0x0002             # t6 = 00000000
    beql    t6, $zero, lbl_8088FA48
    lbu     t7, 0x00AF(a0)             # 000000AF
    lbu     t7, 0x02AC(a0)             # 000002AC
    slti    $at, t7, 0x0006
    bnel    $at, $zero, lbl_8088FA48
    lbu     t7, 0x00AF(a0)             # 000000AF
    lbu     v1, 0x00B1(a0)             # 000000B1
    andi    t8, v0, 0xFFFD             # t8 = 00000000
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     v1, $at, lbl_8088FAC8
    sb      t8, 0x02E9(a0)             # 000002E9
    sb      v1, 0x02D4(a0)             # 000002D4
    lw      a1, 0x02F4(a0)             # 000002F4
    sw      a0, 0x0020($sp)
    jal     func_800283BC
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a0, 0x0020($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lbu     v0, 0x00B1(a0)             # 000000B1
    beq     v0, $at, lbl_8088F96C
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bnel    v0, $at, lbl_8088F9B0
    lbu     t1, 0x0114(a0)             # 00000114
lbl_8088F96C:
    lbu     t9, 0x02AC(a0)             # 000002AC
    addiu   $at, $zero, 0x0007         # $at = 00000007
    or      a1, $zero, $zero           # a1 = 00000000
    beq     t9, $at, lbl_8088FAC8
    addiu   a2, $zero, 0x0078          # a2 = 00000078
    addiu   t0, $zero, 0x0050          # t0 = 00000050
    sw      t0, 0x0010($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80027090
    sw      a0, 0x0020($sp)
    jal     func_80028390
    lw      a0, 0x0020($sp)
    jal     func_8088EF2C
    lw      a0, 0x0020($sp)
    beq     $zero, $zero, lbl_8088FACC
    lw      $ra, 0x001C($sp)
    lbu     t1, 0x0114(a0)             # 00000114
lbl_8088F9B0:
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    beq     t1, $zero, lbl_8088F9CC
    or      a3, $zero, $zero           # a3 = 00000000
    lhu     t2, 0x0112(a0)             # 00000112
    andi    t3, t2, 0x4000             # t3 = 00000000
    bne     t3, $zero, lbl_8088F9E8
lbl_8088F9CC:
    addiu   t4, $zero, 0x0008          # t4 = 00000008
    sw      t4, 0x0010($sp)
    jal     func_80027090
    sw      a0, 0x0020($sp)
    jal     func_80028390
    lw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
lbl_8088F9E8:
    lbu     t5, 0x00AF(a0)             # 000000AF
    addiu   a1, $zero, 0x386D          # a1 = 0000386D
    bne     t5, $zero, lbl_8088FA08
    nop
    jal     func_8088F37C
    nop
    beq     $zero, $zero, lbl_8088FACC
    lw      $ra, 0x001C($sp)
lbl_8088FA08:
    jal     func_80022FD0
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lbu     t6, 0x02AD(a0)             # 000002AD
    beq     t6, $at, lbl_8088FA34
    nop
    jal     func_8088EB68
    nop
    beq     $zero, $zero, lbl_8088FACC
    lw      $ra, 0x001C($sp)
lbl_8088FA34:
    jal     func_8088F788
    nop
    beq     $zero, $zero, lbl_8088FACC
    lw      $ra, 0x001C($sp)
    lbu     t7, 0x00AF(a0)             # 000000AF
lbl_8088FA48:
    beql    t7, $zero, lbl_8088FACC
    lw      $ra, 0x001C($sp)
    lbu     t8, 0x1C26(a1)             # 00001C26
    lui     $at, 0x43C8                # $at = 43C80000
    beql    t8, $zero, lbl_8088FACC
    lw      $ra, 0x001C($sp)
    mtc1    $at, $f4                   # $f4 = 400.00
    lwc1    $f6, 0x0090(a0)            # 00000090
    c.le.s  $f6, $f4
    nop
    bc1fl   lbl_8088FACC
    lw      $ra, 0x001C($sp)
    lhu     t9, 0x0088(a0)             # 00000088
    andi    t0, t9, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_8088FACC
    lw      $ra, 0x001C($sp)
    lbu     t1, 0x02AD(a0)             # 000002AD
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t1, $at, lbl_8088FAAC
    lbu     v0, 0x02AC(a0)             # 000002AC
    jal     func_8088F788
    nop
    beq     $zero, $zero, lbl_8088FACC
    lw      $ra, 0x001C($sp)
    lbu     v0, 0x02AC(a0)             # 000002AC
lbl_8088FAAC:
    slti    $at, v0, 0x0006
    beq     $at, $zero, lbl_8088FAC0
    slti    $at, v0, 0x0006
    bnel    $at, $zero, lbl_8088FACC
    lw      $ra, 0x001C($sp)
lbl_8088FAC0:
    jal     func_8088F4B0
    nop
lbl_8088FAC8:
    lw      $ra, 0x001C($sp)
lbl_8088FACC:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8088FAD8:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8088F900
    or      a1, s1, $zero              # a1 = 00000000
    lbu     t6, 0x00B1(s0)             # 000000B1
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beql    t6, $at, lbl_8088FE58
    lw      t4, 0x0028(s0)             # 00000028
    lw      t9, 0x02B0(s0)             # 000002B0
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f4, 0x0010($sp)
    lw      t7, 0x02CC(s0)             # 000002CC
    lui     a2, 0x41C8                 # a2 = 41C80000
    lui     a3, 0x4220                 # a3 = 42200000
    jal     func_80021E6C
    sw      t7, 0x0014($sp)
    lh      t8, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    bnel    t8, $at, lbl_8088FDB4
    lhu     t7, 0x0088(s0)             # 00000088
    lhu     t0, 0x0088(s0)             # 00000088
    lui     $at, 0x0001                # $at = 00010000
    andi    t1, t0, 0x0020             # t1 = 00000000
    beql    t1, $zero, lbl_8088FDB4
    lhu     t7, 0x0088(s0)             # 00000088
    lw      t2, 0x0078(s0)             # 00000078
    addu    t3, s1, $at
    sw      t3, 0x0030($sp)
    sw      t2, 0x003C($sp)
    lw      t5, 0x1DE4(t3)             # 00001DE4
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x07C0             # a1 = 000007C0
    andi    t6, t5, 0x0007             # t6 = 00000000
    beq     t6, $zero, lbl_8088FBB8
    addiu   t9, $sp, 0x0034            # t9 = FFFFFFEC
    lwc1    $f6, 0x0060(s0)            # 00000060
    mtc1    $zero, $f8                 # $f8 = 0.00
    nop
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_8088FC08
    lw      t8, 0x0030($sp)
lbl_8088FBB8:
    lw      a2, 0x0350(s0)             # 00000350
    lw      a3, 0x0358(s0)             # 00000358
    addiu   t7, $sp, 0x0038            # t7 = FFFFFFF0
    sw      t7, 0x0014($sp)
    jal     func_80034908
    sw      t9, 0x0010($sp)
    beq     v0, $zero, lbl_8088FC04
    lwc1    $f10, 0x0034($sp)
    lwc1    $f16, 0x0354(s0)           # 00000354
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0350             # a1 = 00000350
    c.le.s  $f16, $f10
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x00DC          # a3 = 000000DC
    bc1fl   lbl_8088FC08
    lw      t8, 0x0030($sp)
    swc1    $f10, 0x0354(s0)           # 00000354
    jal     func_8001CF3C
    sw      $zero, 0x0010($sp)
lbl_8088FC04:
    lw      t8, 0x0030($sp)
lbl_8088FC08:
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x07C0             # a1 = 000007C0
    lw      t0, 0x1DE4(t8)             # 00001DE4
    addiu   t3, $sp, 0x0034            # t3 = FFFFFFEC
    addiu   t4, $sp, 0x0038            # t4 = FFFFFFF0
    addiu   t1, t0, 0x0002             # t1 = 00000002
    andi    t2, t1, 0x0007             # t2 = 00000002
    beql    t2, $zero, lbl_8088FC4C
    lw      a2, 0x035C(s0)             # 0000035C
    lwc1    $f18, 0x0060(s0)           # 00000060
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    c.lt.s  $f18, $f4
    nop
    bc1fl   lbl_8088FC94
    lw      t5, 0x0030($sp)
    lw      a2, 0x035C(s0)             # 0000035C
lbl_8088FC4C:
    lw      a3, 0x0364(s0)             # 00000364
    sw      t4, 0x0014($sp)
    jal     func_80034908
    sw      t3, 0x0010($sp)
    beq     v0, $zero, lbl_8088FC90
    lwc1    $f6, 0x0034($sp)
    lwc1    $f8, 0x0360(s0)            # 00000360
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x035C             # a1 = 0000035C
    c.le.s  $f8, $f6
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x00DC          # a3 = 000000DC
    bc1fl   lbl_8088FC94
    lw      t5, 0x0030($sp)
    swc1    $f6, 0x0360(s0)            # 00000360
    jal     func_8001CF3C
    sw      $zero, 0x0010($sp)
lbl_8088FC90:
    lw      t5, 0x0030($sp)
lbl_8088FC94:
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x07C0             # a1 = 000007C0
    lw      t6, 0x1DE4(t5)             # 00001DE4
    addiu   t8, $sp, 0x0034            # t8 = FFFFFFEC
    addiu   t0, $sp, 0x0038            # t0 = FFFFFFF0
    addiu   t9, t6, 0x0004             # t9 = 00000004
    andi    t7, t9, 0x0007             # t7 = 00000004
    beql    t7, $zero, lbl_8088FCD8
    lw      a2, 0x0338(s0)             # 00000338
    lwc1    $f16, 0x0060(s0)           # 00000060
    mtc1    $zero, $f10                # $f10 = 0.00
    nop
    c.lt.s  $f16, $f10
    nop
    bc1fl   lbl_8088FD20
    lw      t1, 0x0030($sp)
    lw      a2, 0x0338(s0)             # 00000338
lbl_8088FCD8:
    lw      a3, 0x0340(s0)             # 00000340
    sw      t0, 0x0014($sp)
    jal     func_80034908
    sw      t8, 0x0010($sp)
    beq     v0, $zero, lbl_8088FD1C
    lwc1    $f18, 0x0034($sp)
    lwc1    $f4, 0x033C(s0)            # 0000033C
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0338             # a1 = 00000338
    c.le.s  $f4, $f18
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x00DC          # a3 = 000000DC
    bc1fl   lbl_8088FD20
    lw      t1, 0x0030($sp)
    swc1    $f18, 0x033C(s0)           # 0000033C
    jal     func_8001CF3C
    sw      $zero, 0x0010($sp)
lbl_8088FD1C:
    lw      t1, 0x0030($sp)
lbl_8088FD20:
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x07C0             # a1 = 000007C0
    lw      t2, 0x1DE4(t1)             # 00001DE4
    addiu   t5, $sp, 0x0034            # t5 = FFFFFFEC
    addiu   t6, $sp, 0x0038            # t6 = FFFFFFF0
    addiu   t3, t2, 0x0001             # t3 = 00000001
    andi    t4, t3, 0x0007             # t4 = 00000001
    beql    t4, $zero, lbl_8088FD64
    lw      a2, 0x0344(s0)             # 00000344
    lwc1    $f8, 0x0060(s0)            # 00000060
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    c.lt.s  $f8, $f6
    nop
    bc1fl   lbl_8088FDAC
    lw      t9, 0x003C($sp)
    lw      a2, 0x0344(s0)             # 00000344
lbl_8088FD64:
    lw      a3, 0x034C(s0)             # 0000034C
    sw      t6, 0x0014($sp)
    jal     func_80034908
    sw      t5, 0x0010($sp)
    beq     v0, $zero, lbl_8088FDA8
    lwc1    $f16, 0x0034($sp)
    lwc1    $f10, 0x0348(s0)           # 00000348
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0344             # a1 = 00000344
    c.le.s  $f10, $f16
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x00DC          # a3 = 000000DC
    bc1fl   lbl_8088FDAC
    lw      t9, 0x003C($sp)
    swc1    $f16, 0x0348(s0)           # 00000348
    jal     func_8001CF3C
    sw      $zero, 0x0010($sp)
lbl_8088FDA8:
    lw      t9, 0x003C($sp)
lbl_8088FDAC:
    sw      t9, 0x0078(s0)             # 00000078
    lhu     t7, 0x0088(s0)             # 00000088
lbl_8088FDB4:
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    andi    t8, t7, 0x0003             # t8 = 00000000
    beq     t8, $zero, lbl_8088FDF8
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x00B6(s0)             # 000000B6
    jal     func_80028720
    addiu   a2, s0, 0x00B4             # a2 = 000000B4
    lbu     t0, 0x02AD(s0)             # 000002AD
    slti    $at, t0, 0x0002
    bnel    $at, $zero, lbl_8088FE58
    lw      t4, 0x0028(s0)             # 00000028
    lh      t1, 0x00B8(s0)             # 000000B8
    addiu   t2, t1, 0x7FFF             # t2 = 00007FFF
    beq     $zero, $zero, lbl_8088FE54
    sh      t2, 0x00B8(s0)             # 000000B8
lbl_8088FDF8:
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lbu     t3, 0x02AD(s0)             # 000002AD
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    or      a1, $zero, $zero           # a1 = 00000000
    slti    $at, t3, 0x0002
    beq     $at, $zero, lbl_8088FE54
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lwc1    $f0, 0x00BC(s0)            # 000000BC
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x43C8                # $at = 43C80000
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_8088FE58
    lw      t4, 0x0028(s0)             # 00000028
    mtc1    $at, $f18                  # $f18 = 400.00
    nop
    sub.s   $f8, $f0, $f18
    swc1    $f8, 0x00BC(s0)            # 000000BC
lbl_8088FE54:
    lw      t4, 0x0028(s0)             # 00000028
lbl_8088FE58:
    lui     $at, 0x41A0                # $at = 41A00000
    lw      t5, 0x0024(s0)             # 00000024
    sw      t4, 0x003C(s0)             # 0000003C
    lwc1    $f6, 0x003C(s0)            # 0000003C
    mtc1    $at, $f10                  # $f10 = 20.00
    sw      t5, 0x0038(s0)             # 00000038
    lw      t5, 0x002C(s0)             # 0000002C
    add.s   $f16, $f6, $f10
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    swc1    $f16, 0x003C(s0)           # 0000003C
    addiu   a2, s0, 0x02D8             # a2 = 000002D8
    sw      t5, 0x0040(s0)             # 00000040
    sw      a2, 0x002C($sp)
    sw      a1, 0x0030($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0030($sp)
    lw      a2, 0x002C($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_8088FEC4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     s0, $at, lbl_8088FF18
    lui     a0, %hi(var_8089035C)      # a0 = 80890000
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     s0, $at, lbl_8088FF30
    lui     a0, %hi(var_8089035C)      # a0 = 80890000
    addiu   $at, $zero, 0x0012         # $at = 00000012
    beq     s0, $at, lbl_8088FF48
    lui     a0, %hi(var_8089035C)      # a0 = 80890000
    addiu   $at, $zero, 0x0017         # $at = 00000017
    beq     s0, $at, lbl_8088FF60
    lui     a0, %hi(var_8089035C)      # a0 = 80890000
    beq     $zero, $zero, lbl_8088FF74
    lw      a0, 0x0040($sp)
lbl_8088FF18:
    lw      a1, 0x0040($sp)
    addiu   a0, a0, %lo(var_8089035C)  # a0 = 8089035C
    jal     func_800AB958
    addiu   a1, a1, 0x0350             # a1 = 00000350
    beq     $zero, $zero, lbl_8088FF74
    lw      a0, 0x0040($sp)
lbl_8088FF30:
    lw      a1, 0x0040($sp)
    addiu   a0, a0, %lo(var_8089035C)  # a0 = 0000035C
    jal     func_800AB958
    addiu   a1, a1, 0x0344             # a1 = 00000344
    beq     $zero, $zero, lbl_8088FF74
    lw      a0, 0x0040($sp)
lbl_8088FF48:
    lw      a1, 0x0040($sp)
    addiu   a0, a0, %lo(var_8089035C)  # a0 = 0000035C
    jal     func_800AB958
    addiu   a1, a1, 0x035C             # a1 = 0000035C
    beq     $zero, $zero, lbl_8088FF74
    lw      a0, 0x0040($sp)
lbl_8088FF60:
    lw      a1, 0x0040($sp)
    addiu   a0, a0, %lo(var_8089035C)  # a0 = 0000035C
    jal     func_800AB958
    addiu   a1, a1, 0x0338             # a1 = 00000338
    lw      a0, 0x0040($sp)
lbl_8088FF74:
    lw      t7, 0x0038($sp)
    addiu   t6, $zero, 0x0018          # t6 = 00000018
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    sw      t8, 0x0018($sp)
    sw      t6, 0x0010($sp)
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0018          # a3 = 00000018
    addiu   a0, a0, 0x02B4             # a0 = 000002B4
    jal     func_80025DFC
    sw      t7, 0x0014($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8088FFB4:
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x0084($sp)
    lw      t6, 0x0084($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0078($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80050CE4
    addiu   a1, s0, 0x02D8             # a1 = 000002D8
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lw      v1, 0x0078($sp)
    bne     t7, $at, lbl_808900E0
    lui     t2, 0x8012                 # t2 = 80120000
    lui     t2, 0x8012                 # t2 = 80120000
    lui     t3, 0x00FF                 # t3 = 00FF0000
    ori     t3, t3, 0xFFFF             # t3 = 00FFFFFF
    addiu   t2, t2, 0x0C38             # t2 = 80120C38
    lui     t4, 0x8000                 # t4 = 80000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1300             # a1 = 06001300
    sll     t5, a1,  4
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    srl     t6, t5, 28
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    sll     t7, t6,  2
    addu    t8, t2, t7
    sw      t9, 0x0000(v0)             # 00000000
    lw      t9, 0x0000(t8)             # 00000008
    and     t5, a1, t3
    lui     a3, 0x0600                 # a3 = 06000000
    addu    t6, t9, t5
    addu    t7, t6, t4
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    addiu   a3, a3, 0x1700             # a3 = 06001700
    sll     t5, a3,  4
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    srl     t6, t5, 28
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    sll     t7, t6,  2
    addu    t8, t2, t7
    sw      t9, 0x0000(v0)             # 00000000
    lw      t9, 0x0000(t8)             # 00000008
    and     t5, a3, t3
    lui     t1, 0x0600                 # t1 = 06000000
    addu    t6, t9, t5
    addu    t7, t6, t4
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    addiu   t1, t1, 0x1900             # t1 = 06001900
    sll     t5, t1,  4
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    srl     t6, t5, 28
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0028             # t9 = DB060028
    sll     t7, t6,  2
    addu    t8, t2, t7
    sw      t9, 0x0000(v0)             # 00000000
    lw      t9, 0x0000(t8)             # 00000008
    and     t5, t1, t3
    addu    t6, t9, t5
    addu    t7, t6, t4
    sw      t7, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_808901BC
    nop
lbl_808900E0:
    lui     t3, 0x00FF                 # t3 = 00FF0000
    ori     t3, t3, 0xFFFF             # t3 = 00FFFFFF
    addiu   t2, t2, 0x0C38             # t2 = 80121870
    lui     t4, 0x8000                 # t4 = 80000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1B00             # a1 = 06001B00
    sll     t5, a1,  4
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    srl     t6, t5, 28
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    sll     t7, t6,  2
    addu    t8, t2, t7
    sw      t9, 0x0000(v0)             # 00000000
    lw      t9, 0x0000(t8)             # 00000008
    and     t5, a1, t3
    lui     a3, 0x0600                 # a3 = 06000000
    addu    t6, t9, t5
    addu    t7, t6, t4
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    addiu   a3, a3, 0x1F00             # a3 = 06001F00
    sll     t5, a3,  4
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    srl     t6, t5, 28
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    sll     t7, t6,  2
    addu    t8, t2, t7
    sw      t9, 0x0000(v0)             # 00000000
    lw      t9, 0x0000(t8)             # 00000008
    and     t5, a3, t3
    lui     t1, 0x0600                 # t1 = 06000000
    addu    t6, t9, t5
    addu    t7, t6, t4
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    addiu   t1, t1, 0x2100             # t1 = 06002100
    sll     t5, t1,  4
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    srl     t6, t5, 28
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0028             # t9 = DB060028
    sll     t7, t6,  2
    addu    t8, t2, t7
    sw      t9, 0x0000(v0)             # 00000000
    lw      t9, 0x0000(t8)             # 00000008
    and     t5, t1, t3
    addu    t6, t9, t5
    addu    t7, t6, t4
    sw      t7, 0x0004(v0)             # 00000004
lbl_808901BC:
    lui     t8, %hi(func_8088FEC4)     # t8 = 80890000
    addiu   t8, t8, %lo(func_8088FEC4) # t8 = 8088FEC4
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    sw      s0, 0x0014($sp)
    sw      t8, 0x0010($sp)
    lw      a0, 0x0084($sp)
    jal     func_8008993C
    or      a3, $zero, $zero           # a3 = 00000000
    lbu     t9, 0x02D3(s0)             # 000002D3
    beql    t9, $zero, lbl_808902B0
    lw      $ra, 0x003C($sp)
    lbu     t7, 0x02D3(s0)             # 000002D3
    lbu     t5, 0x0114(s0)             # 00000114
    or      a1, s0, $zero              # a1 = 00000000
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    andi    t0, t8, 0x00FF             # t0 = 000000FF
    andi    t9, t0, 0x0003             # t9 = 00000003
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sb      t6, 0x0114(s0)             # 00000114
    bne     t9, $zero, lbl_808902AC
    sb      t8, 0x02D3(s0)             # 000002D3
    sra     v1, t0,  2
    sll     t5, v1,  2
    subu    t5, t5, v1
    lui     t6, %hi(var_80890368)      # t6 = 80890000
    addiu   t6, t6, %lo(var_80890368)  # t6 = 80890368
    sll     t5, t5,  2
    addu    v0, t5, t6
    lwc1    $f4, 0x0000(v0)            # 00000000
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x0004(v0)           # 00000004
    addiu   t7, $zero, 0x0096          # t7 = 00000096
    add.s   $f8, $f4, $f6
    lwc1    $f4, 0x0008(v0)            # 00000008
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   t6, $zero, 0x00F5          # t6 = 000000F5
    swc1    $f8, 0x0050($sp)
    lwc1    $f16, 0x0028(s0)           # 00000028
    addiu   t5, $zero, 0x00EB          # t5 = 000000EB
    addiu   t8, $zero, 0x0096          # t8 = 00000096
    add.s   $f18, $f10, $f16
    mtc1    $at, $f10                  # $f10 = 1.00
    addiu   t9, $zero, 0x00FA          # t9 = 000000FA
    lw      a0, 0x0084($sp)
    swc1    $f18, 0x0054($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      t7, 0x0010($sp)
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    add.s   $f8, $f4, $f6
    sw      t7, 0x0024($sp)
    sw      t6, 0x0020($sp)
    sw      t5, 0x001C($sp)
    swc1    $f8, 0x0058($sp)
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    addiu   a2, $sp, 0x0050            # a2 = FFFFFFD0
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    jal     func_8001DC4C
    swc1    $f10, 0x0028($sp)
lbl_808902AC:
    lw      $ra, 0x003C($sp)
lbl_808902B0:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0080           # $sp += 0x80
    jr      $ra
    nop

.section .data

var_808902C0: .word 0x001B0500, 0x00000015, 0x00160000, 0x00000368
.word func_8088D7FC
.word func_8088D954
.word func_8088FAD8
.word func_8088FFB4
var_808902E0: .word \
0x00000000, 0xFFCFFFFF, 0x00080000, 0xFFCFFFFF, \
0x00000000, 0x01050100, 0x00000000, 0x05DC0000, \
0x00140064
var_80890304: .word 0x06110939, 0x10000000, 0x00000001
.word var_808902E0
var_80890314: .word \
0x10020102, 0x10020210, 0x01020402, 0xF4020202, \
0x02E0F3E0, 0x00000104, 0x02020804, 0x00000400
var_80890334: .word 0x89170045, 0xB04C07D0, 0xB070FFD8, 0x386CFC18
var_80890344: .word \
0x0600083C, 0x060004F8, 0x0600069C, 0x00000000, \
0x00000000, 0x00000000
var_8089035C: .word 0x452F0000, 0xC3480000, 0x00000000
var_80890368: .word \
0x41A00000, 0x41A00000, 0x00000000, 0x41200000, \
0x42200000, 0x41200000, 0xC1200000, 0x42200000, \
0x41200000, 0xC1A00000, 0x41A00000, 0x00000000, \
0x41200000, 0x42200000, 0xC1200000, 0xC1200000, \
0x42200000, 0xC1200000, 0x00000000, 0x41A00000, \
0xC1A00000, 0x41200000, 0x00000000, 0x41200000, \
0x41200000, 0x00000000, 0xC1200000, 0x00000000, \
0x41A00000, 0x41A00000, 0xC1200000, 0x00000000, \
0x41200000, 0xC1200000, 0x00000000, 0xC1200000, \
0x00000000, 0x00000000

.section .rodata

var_80890400: .word 0x3C23D70A
var_80890404: .word 0x3C23D70A, 0x00000000, 0x00000000

