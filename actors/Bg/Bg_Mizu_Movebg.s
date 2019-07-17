.section .text
func_8090DCD0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_8002049C
    addiu   a1, $zero, 0x001C          # a1 = 0000001C
    beq     v0, $zero, lbl_8090DCF8
    lw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_8090DD28
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_8090DCF8:
    jal     func_8002049C
    addiu   a1, $zero, 0x001D          # a1 = 0000001D
    beq     v0, $zero, lbl_8090DD10
    lw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_8090DD28
    addiu   v1, $zero, 0x0002          # v1 = 00000002
lbl_8090DD10:
    jal     func_8002049C
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    beq     v0, $zero, lbl_8090DD28
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    beq     $zero, $zero, lbl_8090DD28
    addiu   v1, $zero, 0x0003          # v1 = 00000003
lbl_8090DD28:
    or      v0, v1, $zero              # v0 = 00000003
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8090DD3C:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x006C($sp)
    lw      t6, 0x006C($sp)
    lui     a1, %hi(var_8090EC10)      # a1 = 80910000
    addiu   a1, a1, %lo(var_8090EC10)  # a1 = 8090EC10
    lw      t7, 0x07C0(t6)             # 000007C0
    or      a0, s0, $zero              # a0 = 00000000
    lw      t8, 0x0028(t7)             # 00000028
    sw      $zero, 0x0054($sp)
    jal     func_80063F7C
    sw      t8, 0x005C($sp)
    lhu     t9, 0x001C(s0)             # 0000001C
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     t4, %hi(var_8090EBD0)      # t4 = 80910000
    sra     t1, t9, 12
    andi    t2, t1, 0x000F             # t2 = 00000000
    sll     t3, t2,  2
    addu    t4, t4, t3
    swc1    $f4, 0x0158(s0)            # 00000158
    lw      t4, %lo(var_8090EBD0)(t4)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_80035260
    sw      t4, 0x0170(s0)             # 00000170
    lhu     t5, 0x001C(s0)             # 0000001C
    lui     a0, %hi(var_8090EBF0)      # a0 = 80910000
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFEC
    sra     t6, t5, 12
    andi    t7, t6, 0x000F             # t7 = 00000000
    sll     t8, t7,  2
    addu    a0, a0, t8
    jal     func_80033EF4
    lw      a0, %lo(var_8090EBF0)(a0)
    lw      a0, 0x006C($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0054($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lhu     t0, 0x001C(s0)             # 0000001C
    sw      v0, 0x013C(s0)             # 0000013C
    sra     v1, t0, 12
    andi    v1, v1, 0x000F             # v1 = 00000000
    sltiu   $at, v1, 0x0008
    beq     $at, $zero, lbl_8090E024
    sll     t9, v1,  2
    lui     $at, %hi(var_8090EC40)     # $at = 80910000
    addu    $at, $at, t9
    lw      t9, %lo(var_8090EC40)($at)
    jr      t9
    nop
var_8090DE10:
    lw      t1, 0x005C($sp)
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f10                  # $f10 = 15.00
    lh      t2, 0x0022(t1)             # 00000022
    lui     $at, 0x442F                # $at = 442F0000
    mtc1    $at, $f18                  # $f18 = 700.00
    mtc1    t2, $f6                    # $f6 = 0.00
    lwc1    $f16, 0x0158(s0)           # 00000158
    lui     t3, %hi(func_8090E3D0)     # t3 = 80910000
    cvt.s.w $f8, $f6
    sub.s   $f2, $f16, $f18
    add.s   $f0, $f8, $f10
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_8090DE5C
    swc1    $f0, 0x0028(s0)            # 00000028
    beq     $zero, $zero, lbl_8090DE5C
    swc1    $f2, 0x0028(s0)            # 00000028
    swc1    $f0, 0x0028(s0)            # 00000028
lbl_8090DE5C:
    lhu     v1, 0x001C(s0)             # 0000001C
    addiu   t3, t3, %lo(func_8090E3D0) # t3 = 8090E3D0
    sw      t3, 0x0154(s0)             # 00000154
    sra     v1, v1, 12
    beq     $zero, $zero, lbl_8090E024
    andi    v1, v1, 0x000F             # v1 = 00000000
var_8090DE74:
    lw      t4, 0x005C($sp)
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f8                   # $f8 = 15.00
    lh      t5, 0x0022(t4)             # 00000022
    lui     $at, %hi(var_8090EC60)     # $at = 80910000
    lwc1    $f16, %lo(var_8090EC60)($at)
    mtc1    t5, $f4                    # $f4 = 0.00
    lwc1    $f10, 0x0158(s0)           # 00000158
    lui     t6, %hi(func_8090E3D0)     # t6 = 80910000
    cvt.s.w $f6, $f4
    sub.s   $f2, $f10, $f16
    add.s   $f0, $f6, $f8
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_8090DEC0
    swc1    $f0, 0x0028(s0)            # 00000028
    beq     $zero, $zero, lbl_8090DEC0
    swc1    $f2, 0x0028(s0)            # 00000028
    swc1    $f0, 0x0028(s0)            # 00000028
lbl_8090DEC0:
    lhu     v1, 0x001C(s0)             # 0000001C
    addiu   t6, t6, %lo(func_8090E3D0) # t6 = 8090E3D0
    sw      t6, 0x0154(s0)             # 00000154
    sra     v1, v1, 12
    beq     $zero, $zero, lbl_8090E024
    andi    v1, v1, 0x000F             # v1 = 00000000
var_8090DED8:
    lw      t7, 0x005C($sp)
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    lh      t8, 0x0022(t7)             # 00000022
    lui     $at, 0x442F                # $at = 442F0000
    mtc1    $at, $f10                  # $f10 = 700.00
    mtc1    t8, $f18                   # $f18 = 0.00
    lwc1    $f8, 0x0158(s0)            # 00000158
    lui     t9, %hi(func_8090E3D0)     # t9 = 80910000
    cvt.s.w $f4, $f18
    sub.s   $f2, $f8, $f10
    add.s   $f0, $f4, $f6
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_8090DF24
    swc1    $f0, 0x0028(s0)            # 00000028
    beq     $zero, $zero, lbl_8090DF24
    swc1    $f2, 0x0028(s0)            # 00000028
    swc1    $f0, 0x0028(s0)            # 00000028
lbl_8090DF24:
    lhu     v1, 0x001C(s0)             # 0000001C
    addiu   t9, t9, %lo(func_8090E3D0) # t9 = 8090E3D0
    sw      t9, 0x0154(s0)             # 00000154
    sra     v1, v1, 12
    beq     $zero, $zero, lbl_8090E024
    andi    v1, v1, 0x000F             # v1 = 00000000
var_8090DF3C:
    jal     func_8090DCD0
    lw      a0, 0x006C($sp)
    sll     t1, v0,  2
    lui     $at, %hi(var_8090EBC0)     # $at = 80910000
    addu    $at, $at, t1
    lwc1    $f16, %lo(var_8090EBC0)($at)
    lwc1    $f18, 0x0158(s0)           # 00000158
    lhu     v1, 0x001C(s0)             # 0000001C
    lui     t2, %hi(func_8090E3D0)     # t2 = 80910000
    add.s   $f4, $f16, $f18
    addiu   t2, t2, %lo(func_8090E3D0) # t2 = 8090E3D0
    sra     v1, v1, 12
    sw      t2, 0x0154(s0)             # 00000154
    swc1    $f4, 0x0028(s0)            # 00000028
    beq     $zero, $zero, lbl_8090E024
    andi    v1, v1, 0x000F             # v1 = 00000000
var_8090DF7C:
    lw      a0, 0x006C($sp)
    jal     func_8002049C
    andi    a1, t0, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_8090DFB0
    lui     t3, %hi(func_8090E3D0)     # t3 = 80910000
    lwc1    $f6, 0x0158(s0)            # 00000158
    lui     $at, %hi(var_8090EC68)     # $at = 80910000
    ldc1    $f10, %lo(var_8090EC68)($at)
    cvt.d.s $f8, $f6
    add.d   $f16, $f8, $f10
    cvt.s.d $f18, $f16
    beq     $zero, $zero, lbl_8090DFB8
    swc1    $f18, 0x0028(s0)           # 00000028
lbl_8090DFB0:
    lwc1    $f4, 0x0158(s0)            # 00000158
    swc1    $f4, 0x0028(s0)            # 00000028
lbl_8090DFB8:
    lhu     v1, 0x001C(s0)             # 0000001C
    addiu   t3, t3, %lo(func_8090E3D0) # t3 = 8090E3D0
    sw      t3, 0x0154(s0)             # 00000154
    sra     v1, v1, 12
    beq     $zero, $zero, lbl_8090E024
    andi    v1, v1, 0x000F             # v1 = 00000000
var_8090DFD0:
    addiu   v0, $zero, 0x00A0          # v0 = 000000A0
    andi    a3, t0, 0x000F             # a3 = 00000000
    sw      v0, 0x015C(s0)             # 0000015C
    sw      v0, 0x0160(s0)             # 00000160
    sw      v0, 0x0164(s0)             # 00000164
    sw      v0, 0x0168(s0)             # 00000168
    sw      a3, 0x0174(s0)             # 00000174
    lw      t4, 0x006C($sp)
    lui     a0, 0x0001                 # a0 = 00010000
    sra     a2, t0,  8
    addu    a0, a0, t4
    lw      a0, 0x1E08(a0)             # 00011E08
    andi    a2, a2, 0x000F             # a2 = 00000000
    jal     func_8090E1B8
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lhu     v1, 0x001C(s0)             # 0000001C
    lui     t5, %hi(func_8090E70C)     # t5 = 80910000
    addiu   t5, t5, %lo(func_8090E70C) # t5 = 8090E70C
    sra     v1, v1, 12
    sw      t5, 0x0154(s0)             # 00000154
    andi    v1, v1, 0x000F             # v1 = 00000000
lbl_8090E024:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v1, $at, lbl_8090E048
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v1, $at, lbl_8090E048
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v1, $at, lbl_8090E048
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v1, $at, lbl_8090E0F4
    lw      $ra, 0x003C($sp)
lbl_8090E048:
    lh      t6, 0x0032(s0)             # 00000032
    lui     $at, %hi(var_8090EC70)     # $at = 80910000
    lwc1    $f10, %lo(var_8090EC70)($at)
    mtc1    t6, $f6                    # $f6 = 0.00
    or      a1, $zero, $zero           # a1 = 00000000
    cvt.s.w $f8, $f6
    mul.s   $f12, $f8, $f10
    jal     func_800AAB94
    nop
    lui     a0, %hi(var_8090EC20)      # a0 = 80910000
    addiu   a0, a0, %lo(var_8090EC20)  # a0 = 8090EC20
    jal     func_800AB958
    addiu   a1, $sp, 0x0048            # a1 = FFFFFFE0
    lwc1    $f16, 0x0024(s0)           # 00000024
    lwc1    $f18, 0x0048($sp)
    lwc1    $f8, 0x004C($sp)
    lw      a2, 0x006C($sp)
    add.s   $f4, $f16, $f18
    lwc1    $f18, 0x0050($sp)
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    addiu   a3, $zero, 0x012D          # a3 = 0000012D
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0014($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x0018($sp)
    lh      t7, 0x0030(s0)             # 00000030
    sw      t7, 0x001C($sp)
    lh      t8, 0x0032(s0)             # 00000032
    sw      t8, 0x0020($sp)
    lh      t9, 0x0034(s0)             # 00000034
    sw      t1, 0x0028($sp)
    jal     func_800253F0
    sw      t9, 0x0024($sp)
    bnel    v0, $zero, lbl_8090E0F4
    lw      $ra, 0x003C($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x003C($sp)
lbl_8090E0F4:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_8090E104:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      v0, 0x0018($sp)
    lhu     t7, 0x001C(v0)             # 0000001C
    sra     t8, t7, 12
    andi    t9, t8, 0x000F             # t9 = 00000000
    addiu   t0, t9, 0xFFFD             # t0 = FFFFFFFD
    sltiu   $at, t0, 0x0005
    beq     $at, $zero, lbl_8090E1A8
    sll     t0, t0,  2
    lui     $at, %hi(var_8090EC74)     # $at = 80910000
    addu    $at, $at, t0
    lw      t0, %lo(var_8090EC74)($at)
    jr      t0
    nop
var_8090E15C:
    lbu     t1, 0x016C(v0)             # 0000016C
    lui     v0, %hi(var_8090EE60)      # v0 = 80910000
    addiu   v0, v0, %lo(var_8090EE60)  # v0 = 8090EE60
    andi    t2, t1, 0x0002             # t2 = 00000000
    beql    t2, $zero, lbl_8090E1AC
    lw      $ra, 0x0014($sp)
    lbu     t3, 0x0000(v0)             # 8090EE60
    andi    t4, t3, 0xFFFD             # t4 = 00000000
    beq     $zero, $zero, lbl_8090E1A8
    sb      t4, 0x0000(v0)             # 8090EE60
var_8090E184:
    lbu     t5, 0x016C(v0)             # 8090EFCC
    lui     v0, %hi(var_8090EE60)      # v0 = 80910000
    addiu   v0, v0, %lo(var_8090EE60)  # v0 = 8090EE60
    andi    t6, t5, 0x0001             # t6 = 00000000
    beql    t6, $zero, lbl_8090E1AC
    lw      $ra, 0x0014($sp)
    lbu     t7, 0x0000(v0)             # 8090EE60
    andi    t8, t7, 0xFFFE             # t8 = 00000000
    sb      t8, 0x0000(v0)             # 8090EE60
lbl_8090E1A8:
    lw      $ra, 0x0014($sp)
lbl_8090E1AC:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8090E1B8:
    sll     t6, a2,  3
    addu    t7, a0, t6
    lw      t0, 0x0004(t7)             # 00000004
    lui     t2, 0x8012                 # t2 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t8, t0,  4
    srl     t9, t8, 28
    sll     t1, t9,  2
    addu    t2, t2, t1
    lw      t2, 0x0C38(t2)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t5, a3,  2
    subu    t5, t5, a3
    and     t3, t0, $at
    sll     t5, t5,  1
    addu    t4, t2, t3
    addu    v1, t4, t5
    lui     $at, 0x8000                # $at = 80000000
    addu    v1, v1, $at
    lh      t6, 0x0000(v1)             # 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0000(a1)            # 00000000
    lh      t7, 0x0002(v1)             # 00000002
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0004(a1)           # 00000004
    lh      t8, 0x0004(v1)             # 00000004
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0008(a1)           # 00000008
    jr      $ra
    nop


func_8090E24C:
    lui     $at, 0xC170                # $at = C1700000
    mtc1    $at, $f2                   # $f2 = -15.00
    lui     $at, %hi(var_8090EC8C)     # $at = 80910000
    lw      t6, 0x07C0(a1)             # 000007C0
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   v1, $zero, 0x00A0          # v1 = 000000A0
    lw      t7, 0x0028(t6)             # 00000028
    lh      t8, 0x0022(t7)             # 00000022
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f0, $f4
    c.lt.s  $f0, $f2
    nop
    bc1f    lbl_8090E2A0
    nop
    lui     $at, 0x42BE                # $at = 42BE0000
    mtc1    $at, $f14                  # $f14 = 95.00
    lui     $at, %hi(var_8090EC88)     # $at = 80910000
    sw      v0, 0x015C(a0)             # 0000015C
    beq     $zero, $zero, lbl_8090E300
    lwc1    $f12, %lo(var_8090EC88)($at)
lbl_8090E2A0:
    lwc1    $f12, %lo(var_8090EC8C)($at)
    addiu   v1, $zero, 0x00A0          # v1 = 000000A0
    lui     $at, 0x42BE                # $at = 42BE0000
    c.lt.s  $f0, $f12
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    bc1fl   lbl_8090E2FC
    mtc1    $at, $f14                  # $f14 = 95.00
    lui     $at, 0x42BE                # $at = 42BE0000
    mtc1    $at, $f14                  # $f14 = 95.00
    sub.s   $f6, $f0, $f2
    lui     $at, 0x43E6                # $at = 43E60000
    mtc1    $at, $f8                   # $f8 = 460.00
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   v1, $zero, 0x00A0          # v1 = 000000A0
    div.s   $f10, $f6, $f8
    mul.s   $f16, $f10, $f14
    trunc.w.s $f18, $f16
    mfc1    t0, $f18
    nop
    subu    t1, v0, t0
    beq     $zero, $zero, lbl_8090E300
    sw      t1, 0x015C(a0)             # 0000015C
    mtc1    $at, $f14                  # $f14 = 460.00
lbl_8090E2FC:
    sw      v1, 0x015C(a0)             # 0000015C
lbl_8090E300:
    c.lt.s  $f0, $f12
    lui     $at, %hi(var_8090EC90)     # $at = 80910000
    bc1f    lbl_8090E318
    nop
    beq     $zero, $zero, lbl_8090E360
    sw      v0, 0x0160(a0)             # 00000160
lbl_8090E318:
    lwc1    $f4, %lo(var_8090EC90)($at)
    lui     $at, 0x43A0                # $at = 43A00000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_8090E360
    sw      v1, 0x0160(a0)             # 00000160
    sub.s   $f6, $f0, $f12
    mtc1    $at, $f8                   # $f8 = 320.00
    nop
    div.s   $f10, $f6, $f8
    mul.s   $f16, $f10, $f14
    trunc.w.s $f18, $f16
    mfc1    t3, $f18
    nop
    subu    t4, v0, t3
    beq     $zero, $zero, lbl_8090E360
    sw      t4, 0x0160(a0)             # 00000160
    sw      v1, 0x0160(a0)             # 00000160
lbl_8090E360:
    lui     $at, %hi(var_8090EC94)     # $at = 80910000
    lwc1    $f12, %lo(var_8090EC94)($at)
    c.lt.s  $f0, $f12
    nop
    bc1fl   lbl_8090E384
    c.lt.s  $f0, $f2
    beq     $zero, $zero, lbl_8090E3C0
    sw      v0, 0x0164(a0)             # 00000164
    c.lt.s  $f0, $f2
lbl_8090E384:
    lui     $at, 0x444D                # $at = 444D0000
    bc1fl   lbl_8090E3C0
    sw      v1, 0x0164(a0)             # 00000164
    sub.s   $f4, $f0, $f12
    mtc1    $at, $f6                   # $f6 = 820.00
    nop
    div.s   $f8, $f4, $f6
    mul.s   $f10, $f8, $f14
    trunc.w.s $f16, $f10
    mfc1    t6, $f16
    nop
    subu    t7, v0, t6
    beq     $zero, $zero, lbl_8090E3C0
    sw      t7, 0x0164(a0)             # 00000164
    sw      v1, 0x0164(a0)             # 00000164
lbl_8090E3C0:
    lw      t8, 0x0164(a0)             # 00000164
    sw      t8, 0x0168(a0)             # 00000168
    jr      $ra
    nop


func_8090E3D0:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lw      t6, 0x07C0(a1)             # 000007C0
    or      a0, s0, $zero              # a0 = 00000000
    lw      v1, 0x0028(t6)             # 00000028
    sw      a1, 0x0044($sp)
    jal     func_8090E24C
    sw      v1, 0x003C($sp)
    lhu     a2, 0x001C(s0)             # 0000001C
    lw      v1, 0x003C($sp)
    sra     v0, a2, 12
    andi    v0, v0, 0x000F             # v0 = 00000000
    sltiu   $at, v0, 0x0007
    beq     $at, $zero, lbl_8090E638
    sll     t7, v0,  2
    lui     $at, %hi(var_8090EC98)     # $at = 80910000
    addu    $at, $at, t7
    lw      t7, %lo(var_8090EC98)($at)
    jr      t7
    nop
var_8090E428:
    lh      t8, 0x0022(v1)             # 00000022
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f8                   # $f8 = 15.00
    mtc1    t8, $f4                    # $f4 = 0.00
    lui     $at, 0x442F                # $at = 442F0000
    mtc1    $at, $f16                  # $f16 = 700.00
    cvt.s.w $f6, $f4
    lwc1    $f10, 0x0158(s0)           # 00000158
    sub.s   $f2, $f10, $f16
    add.s   $f0, $f6, $f8
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_8090E46C
    swc1    $f0, 0x0028(s0)            # 00000028
    beq     $zero, $zero, lbl_8090E46C
    swc1    $f2, 0x0028(s0)            # 00000028
    swc1    $f0, 0x0028(s0)            # 00000028
lbl_8090E46C:
    lhu     v0, 0x001C(s0)             # 0000001C
    sra     v0, v0, 12
    beq     $zero, $zero, lbl_8090E638
    andi    v0, v0, 0x000F             # v0 = 00000000
var_8090E47C:
    lh      t9, 0x0022(v1)             # 00000022
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    mtc1    t9, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_8090ECB4)     # $at = 80910000
    lwc1    $f10, %lo(var_8090ECB4)($at)
    cvt.s.w $f4, $f18
    lwc1    $f8, 0x0158(s0)            # 00000158
    sub.s   $f2, $f8, $f10
    add.s   $f0, $f4, $f6
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_8090E4C0
    swc1    $f0, 0x0028(s0)            # 00000028
    beq     $zero, $zero, lbl_8090E4C0
    swc1    $f2, 0x0028(s0)            # 00000028
    swc1    $f0, 0x0028(s0)            # 00000028
lbl_8090E4C0:
    lhu     v0, 0x001C(s0)             # 0000001C
    sra     v0, v0, 12
    beq     $zero, $zero, lbl_8090E638
    andi    v0, v0, 0x000F             # v0 = 00000000
var_8090E4D0:
    jal     func_8090DCD0
    lw      a0, 0x0044($sp)
    sll     t0, v0,  2
    lui     $at, %hi(var_8090EBC0)     # $at = 80910000
    addu    $at, $at, t0
    lwc1    $f16, %lo(var_8090EBC0)($at)
    lwc1    $f18, 0x0158(s0)           # 00000158
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x3F80                 # a2 = 3F800000
    add.s   $f0, $f16, $f18
    mfc1    a1, $f0
    jal     func_8006385C
    nop
    bne     v0, $zero, lbl_8090E584
    lui     v1, %hi(var_8090EE60)      # v1 = 80910000
    addiu   v1, v1, %lo(var_8090EE60)  # v1 = 8090EE60
    lbu     v0, 0x0000(v1)             # 8090EE60
    andi    t1, v0, 0x0002             # t1 = 00000000
    bnel    t1, $zero, lbl_8090E54C
    lbu     t8, 0x016C(s0)             # 0000016C
    lhu     t2, 0x001C(s0)             # 0000001C
    ori     t5, v0, 0x0002             # t5 = 00000002
    sra     t3, t2,  4
    andi    t4, t3, 0x000F             # t4 = 00000000
    beql    t4, $zero, lbl_8090E54C
    lbu     t8, 0x016C(s0)             # 0000016C
    sb      t5, 0x0000(v1)             # 8090EE60
    lbu     t6, 0x016C(s0)             # 0000016C
    ori     t7, t6, 0x0002             # t7 = 00000002
    sb      t7, 0x016C(s0)             # 0000016C
    lbu     t8, 0x016C(s0)             # 0000016C
lbl_8090E54C:
    andi    t9, t8, 0x0002             # t9 = 00000000
    beql    t9, $zero, lbl_8090E588
    lhu     v0, 0x001C(s0)             # 0000001C
    lb      t0, 0x0003(s0)             # 00000003
    addiu   a1, $zero, 0x2024          # a1 = 00002024
    or      a0, s0, $zero              # a0 = 00000000
    bne     t0, $zero, lbl_8090E57C
    nop
    jal     func_8002313C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8090E588
    lhu     v0, 0x001C(s0)             # 0000001C
lbl_8090E57C:
    jal     func_80023108
    addiu   a1, $zero, 0x2024          # a1 = 00002024
lbl_8090E584:
    lhu     v0, 0x001C(s0)             # 0000001C
lbl_8090E588:
    sra     v0, v0, 12
    beq     $zero, $zero, lbl_8090E638
    andi    v0, v0, 0x000F             # v0 = 00000000
var_8090E594:
    lw      a0, 0x0044($sp)
    jal     func_8002049C
    andi    a1, a2, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_8090E5BC
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     $at, %hi(var_8090ECB8)     # $at = 80910000
    lwc1    $f6, %lo(var_8090ECB8)($at)
    lwc1    $f4, 0x0158(s0)            # 00000158
    beq     $zero, $zero, lbl_8090E5C0
    add.s   $f0, $f4, $f6
lbl_8090E5BC:
    lwc1    $f0, 0x0158(s0)            # 00000158
lbl_8090E5C0:
    mfc1    a1, $f0
    jal     func_8006385C
    lui     a2, 0x3F80                 # a2 = 3F800000
    bne     v0, $zero, lbl_8090E62C
    lui     v1, %hi(var_8090EE60)      # v1 = 80910000
    addiu   v1, v1, %lo(var_8090EE60)  # v1 = 8090EE60
    lbu     v0, 0x0000(v1)             # 8090EE60
    or      a0, s0, $zero              # a0 = 00000000
    andi    t1, v0, 0x0002             # t1 = 00000000
    bnel    t1, $zero, lbl_8090E618
    lbu     t8, 0x016C(s0)             # 0000016C
    lhu     t2, 0x001C(s0)             # 0000001C
    ori     t5, v0, 0x0002             # t5 = 00000002
    sra     t3, t2,  4
    andi    t4, t3, 0x000F             # t4 = 00000000
    beql    t4, $zero, lbl_8090E618
    lbu     t8, 0x016C(s0)             # 0000016C
    sb      t5, 0x0000(v1)             # 8090EE60
    lbu     t6, 0x016C(s0)             # 0000016C
    ori     t7, t6, 0x0002             # t7 = 00000002
    sb      t7, 0x016C(s0)             # 0000016C
    lbu     t8, 0x016C(s0)             # 0000016C
lbl_8090E618:
    andi    t9, t8, 0x0002             # t9 = 00000000
    beql    t9, $zero, lbl_8090E630
    lhu     v0, 0x001C(s0)             # 0000001C
    jal     func_80023108
    addiu   a1, $zero, 0x2024          # a1 = 00002024
lbl_8090E62C:
    lhu     v0, 0x001C(s0)             # 0000001C
lbl_8090E630:
    sra     v0, v0, 12
    andi    v0, v0, 0x000F             # v0 = 00000000
lbl_8090E638:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_8090E65C
    lw      t1, 0x0044($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_8090E65C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_8090E65C
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v0, $at, lbl_8090E6F8
lbl_8090E65C:
    lui     t2, 0x0001                 # t2 = 00010000
    addu    t2, t2, t1
    lb      t2, 0x1CBC(t2)             # 00011CBC
    lb      t0, 0x0003(s0)             # 00000003
    bnel    t0, t2, lbl_8090E6FC
    lw      $ra, 0x001C($sp)
    lh      t3, 0x0032(s0)             # 00000032
    lui     $at, %hi(var_8090ECBC)     # $at = 80910000
    lwc1    $f16, %lo(var_8090ECBC)($at)
    mtc1    t3, $f8                    # $f8 = 0.00
    or      a1, $zero, $zero           # a1 = 00000000
    cvt.s.w $f10, $f8
    mul.s   $f12, $f10, $f16
    jal     func_800AAB94
    nop
    lui     a0, %hi(var_8090EC2C)      # a0 = 80910000
    addiu   a0, a0, %lo(var_8090EC2C)  # a0 = 8090EC2C
    jal     func_800AB958
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFE8
    lwc1    $f18, 0x0024(s0)           # 00000024
    lwc1    $f4, 0x0028($sp)
    lw      t4, 0x011C(s0)             # 0000011C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0024(t4)            # 00000024
    lwc1    $f10, 0x002C($sp)
    lwc1    $f8, 0x0028(s0)            # 00000028
    lw      t5, 0x011C(s0)             # 0000011C
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x0028(t5)           # 00000028
    lwc1    $f4, 0x0030($sp)
    lwc1    $f18, 0x002C(s0)           # 0000002C
    lw      t6, 0x011C(s0)             # 0000011C
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x002C(t6)            # 0000002C
    lw      v0, 0x011C(s0)             # 0000011C
    lw      t7, 0x0004(v0)             # 00000004
    and     t8, t7, $at
    sw      t8, 0x0004(v0)             # 00000004
lbl_8090E6F8:
    lw      $ra, 0x001C($sp)
lbl_8090E6FC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_8090E70C:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x004C($sp)
    lhu     v0, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_8090ECC0)     # $at = 80910000
    lwc1    $f8, %lo(var_8090ECC0)($at)
    sra     t6, v0,  4
    andi    t7, t6, 0x000F             # t7 = 00000000
    mtc1    t7, $f4                    # $f4 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    lw      a3, 0x0174(s0)             # 00000174
    cvt.s.w $f6, $f4
    sra     a2, v0,  8
    andi    a2, a2, 0x000F             # a2 = 00000000
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFF4
    mul.s   $f10, $f6, $f8
    swc1    $f10, 0x0068(s0)           # 00000068
    lw      v1, 0x004C($sp)
    addu    v1, v1, $at
    lw      a0, 0x1E08(v1)             # 00001E08
    jal     func_8090E1B8
    sw      v1, 0x0028($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800214D8
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFF4
    lwc1    $f18, 0x0068(s0)           # 00000068
    addiu   a0, s0, 0x0024             # a0 = 00000024
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFF4
    c.lt.s  $f0, $f18
    addiu   a2, s0, 0x0030             # a2 = 00000030
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    bc1f    lbl_8090E79C
    nop
    swc1    $f0, 0x0068(s0)            # 00000068
lbl_8090E79C:
    jal     func_800285B0
    sw      a0, 0x0020($sp)
    jal     func_800212B8
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f4, 0x003C($sp)
    lwc1    $f6, 0x0024(s0)            # 00000024
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f16                  # $f16 = 2.00
    sub.s   $f2, $f4, $f6
    lwc1    $f8, 0x0040($sp)
    lwc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f4, 0x002C(s0)            # 0000002C
    abs.s   $f0, $f2
    lwc1    $f18, 0x0044($sp)
    c.lt.s  $f0, $f16
    sub.s   $f12, $f8, $f10
    bc1f    lbl_8090E858
    sub.s   $f14, $f18, $f4
    abs.s   $f0, $f12
    c.lt.s  $f0, $f16
    nop
    bc1f    lbl_8090E858
    nop
    abs.s   $f0, $f14
    c.lt.s  $f0, $f16
    nop
    bc1f    lbl_8090E858
    nop
    lw      t8, 0x0174(s0)             # 00000174
    lw      v0, 0x0028($sp)
    lhu     a2, 0x001C(s0)             # 0000001C
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sw      t9, 0x0174(s0)             # 00000174
    lw      t1, 0x1E08(v0)             # 00001E08
    sra     a2, a2,  8
    andi    a2, a2, 0x000F             # a2 = 00000000
    sll     t2, a2,  3
    addu    t3, t1, t2
    lbu     t4, 0x0000(t3)             # 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    slt     $at, t9, t4
    bne     $at, $zero, lbl_8090E858
    nop
    sw      $zero, 0x0174(s0)          # 00000174
    lw      a1, 0x0020($sp)
    jal     func_8090E1B8
    lw      a0, 0x1E08(v0)             # 00001E08
lbl_8090E858:
    lui     v1, %hi(var_8090EE60)      # v1 = 80910000
    addiu   v1, v1, %lo(var_8090EE60)  # v1 = 8090EE60
    lbu     v0, 0x0000(v1)             # 8090EE60
    or      a0, s0, $zero              # a0 = 00000000
    andi    t5, v0, 0x0001             # t5 = 00000000
    bnel    t5, $zero, lbl_8090E8A0
    lbu     t3, 0x016C(s0)             # 0000016C
    lhu     t6, 0x001C(s0)             # 0000001C
    ori     t9, v0, 0x0001             # t9 = 00000001
    sra     t7, t6,  4
    andi    t8, t7, 0x000F             # t8 = 00000000
    beql    t8, $zero, lbl_8090E8A0
    lbu     t3, 0x016C(s0)             # 0000016C
    sb      t9, 0x0000(v1)             # 8090EE60
    lbu     t1, 0x016C(s0)             # 0000016C
    ori     t2, t1, 0x0001             # t2 = 00000001
    sb      t2, 0x016C(s0)             # 0000016C
    lbu     t3, 0x016C(s0)             # 0000016C
lbl_8090E8A0:
    andi    t0, t3, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_8090E8B8
    lw      $ra, 0x001C($sp)
    jal     func_80023108
    addiu   a1, $zero, 0x2082          # a1 = 00002082
    lw      $ra, 0x001C($sp)
lbl_8090E8B8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_8090E8C8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8090E8EC:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s3, 0x0050($sp)
    sw      s2, 0x004C($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s1, 0x0048($sp)
    sw      s0, 0x0044($sp)
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, s2
    lw      a0, 0x0000(s2)             # 00000000
    lw      t6, 0x1DE4(t6)             # 00011DE4
    or      s1, a0, $zero              # s1 = 00000000
    jal     func_8007E298
    sw      t6, 0x007C($sp)
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      t8, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    sw      t4, 0x0028($sp)
    sw      t3, 0x0024($sp)
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t9, 0x0010($sp)
    sw      $zero, 0x0034($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    lw      t5, 0x015C(s3)             # 0000015C
    lw      a2, 0x007C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      s0, 0x0070($sp)
    sw      t5, 0x0038($sp)
    jal     func_8007ECA4
    sw      a2, 0x0058($sp)
    lw      v1, 0x0070($sp)
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0024             # t7 = DB060024
    sw      v0, 0x0004(v1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    sw      t3, 0x0028($sp)
    sw      t2, 0x0024($sp)
    sw      t1, 0x0018($sp)
    sw      $zero, 0x0034($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    lw      t4, 0x0160(s3)             # 00000160
    lw      a2, 0x0058($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      s0, 0x006C($sp)
    jal     func_8007ECA4
    sw      t4, 0x0038($sp)
    lw      t0, 0x006C($sp)
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0028             # t6 = DB060028
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s1)             # 000002C0
    sw      t6, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    sw      t2, 0x0028($sp)
    sw      t1, 0x0024($sp)
    sw      t9, 0x0018($sp)
    sw      $zero, 0x0034($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    lw      t3, 0x0164(s3)             # 00000164
    lw      a2, 0x0058($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      s0, 0x0068($sp)
    jal     func_8007ECA4
    sw      t3, 0x0038($sp)
    lw      v1, 0x0068($sp)
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x002C             # t5 = DB06002C
    sw      v0, 0x0004(v1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s1)             # 000002C0
    sw      t5, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    lw      a2, 0x007C($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    sw      t1, 0x0028($sp)
    sw      t9, 0x0024($sp)
    sw      t8, 0x0018($sp)
    sw      $zero, 0x0034($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    lw      t2, 0x0168(s3)             # 00000168
    addu    $at, a2, $zero
    sll     a2, a2,  2
    subu    a2, a2, $at
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      s0, 0x0064($sp)
    jal     func_8007ECA4
    sw      t2, 0x0038($sp)
    lw      t0, 0x0064($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s1)             # 000002C0
    sw      t4, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0060($sp)
    lw      v1, 0x0060($sp)
    sw      v0, 0x0004(v1)             # 00000004
    lw      t5, 0x0170(s3)             # 00000170
    beql    t5, $zero, lbl_8090EB80
    lw      $ra, 0x0054($sp)
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(s0)             # 00000000
    lw      t8, 0x0170(s3)             # 00000170
    sw      t8, 0x0004(s0)             # 00000004
    lw      $ra, 0x0054($sp)
lbl_8090EB80:
    lw      s0, 0x0044($sp)
    lw      s1, 0x0048($sp)
    lw      s2, 0x004C($sp)
    lw      s3, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88
    nop
    nop

.section .data

var_8090EBA0: .word 0x00640100, 0x00000010, 0x00590000, 0x00000178
.word func_8090DD3C
.word func_8090E104
.word func_8090E8C8
.word func_8090E8EC
var_8090EBC0: .word 0xC2E66667, 0xC2E66667, 0xC2E66667, 0x00000000
var_8090EBD0: .word \
0x06000190, 0x06000680, 0x06000C20, 0x06002E10, \
0x06002E10, 0x06002E10, 0x06002E10, 0x060011F0
var_8090EBF0: .word \
0x060003F0, 0x06000998, 0x06000ED0, 0x06003590, \
0x06003590, 0x06003590, 0x06003590, 0x060015F8
var_8090EC10: .word 0xB0F805DC, 0xB0FC044C, 0xB0F403E8, 0x48500064
var_8090EC20: .word 0x00000000, 0x42A00000, 0x41B80000
var_8090EC2C: .word \
0x00000000, 0x42A00000, 0x41B80000, 0x00000000, \
0x00000000

.section .rodata

var_8090EC40: .word var_8090DE10
.word var_8090DE74
.word var_8090DED8
.word var_8090DF3C
.word var_8090DF7C
.word var_8090DF7C
.word var_8090DF7C
.word var_8090DFD0
var_8090EC60: .word 0x44318000, 0x00000000
var_8090EC68: .word 0x405CCCCC, 0xCCCCCCCC
var_8090EC70: .word 0x38C90FDB
var_8090EC74: .word var_8090E15C
.word var_8090E15C
.word var_8090E15C
.word var_8090E15C
.word var_8090E184
var_8090EC88: .word 0x43DE8000
var_8090EC8C: .word 0x43DE8000
var_8090EC90: .word 0x443F4000
var_8090EC94: .word 0xC450C000
var_8090EC98: .word var_8090E428
.word var_8090E47C
.word var_8090E428
.word var_8090E4D0
.word var_8090E594
.word var_8090E594
.word var_8090E594
var_8090ECB4: .word 0x44318000
var_8090ECB8: .word 0x42E66667
var_8090ECBC: .word 0x38C90FDB
var_8090ECC0: .word 0x3DCCCCCD, 0x00000000, 0x00000000, 0x00000000

.bss

var_8090EE60: .space 0x10
