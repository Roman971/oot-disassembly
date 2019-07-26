.section .text
func_808D69B0:
    sw      a1, 0x023C(a0)             # 0000023C
    jr      $ra
    nop


func_808D69BC:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s7, 0x0048($sp)
    sw      s6, 0x0044($sp)
    sw      s5, 0x0040($sp)
    sw      s1, 0x0030($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    addiu   s6, $sp, 0x0058            # s6 = FFFFFFF0
    addiu   s7, $sp, 0x0054            # s7 = FFFFFFEC
    sw      $ra, 0x004C($sp)
    sw      s4, 0x003C($sp)
    sw      s3, 0x0038($sp)
    sw      s2, 0x0034($sp)
    sw      s0, 0x002C($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lui     t6, %hi(var_808D751C)      # t6 = 808D0000
    addiu   t6, t6, %lo(var_808D751C)  # t6 = 808D751C
    lw      t8, 0x0000(t6)             # 808D751C
    lui     t9, %hi(var_808D7520)      # t9 = 808D0000
    addiu   t9, t9, %lo(var_808D7520)  # t9 = 808D7520
    lui     $at, 0x4120                # $at = 41200000
    sw      t8, 0x0000(s6)             # FFFFFFF0
    lw      t1, 0x0000(t9)             # 808D7520
    mtc1    $at, $f22                  # $f22 = 10.00
    lui     $at, 0x41A0                # $at = 41A00000
    lui     s4, %hi(var_808D7530)      # s4 = 808D0000
    lui     s3, %hi(var_808D7524)      # s3 = 808D0000
    mtc1    $at, $f20                  # $f20 = 20.00
    addiu   s3, s3, %lo(var_808D7524)  # s3 = 808D7524
    addiu   s4, s4, %lo(var_808D7530)  # s4 = 808D7530
    addiu   s0, $zero, 0x0004          # s0 = 00000004
    addiu   s2, $sp, 0x005C            # s2 = FFFFFFF4
    sw      t1, 0x0000(s7)             # FFFFFFEC
lbl_808D6A44:
    jal     func_80026D90
    mov.s   $f12, $f20
    lwc1    $f4, 0x0000(s1)            # 00000000
    mov.s   $f12, $f22
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x005C($sp)
    lwc1    $f8, 0x0004(s1)            # 00000004
    mov.s   $f12, $f20
    add.s   $f10, $f0, $f8
    jal     func_80026D90
    swc1    $f10, 0x0060($sp)
    lwc1    $f16, 0x0008(s1)           # 00000008
    sw      s7, 0x0014($sp)
    sw      s6, 0x0010($sp)
    add.s   $f18, $f0, $f16
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = FFFFFFF4
    or      a2, s3, $zero              # a2 = 808D7524
    swc1    $f18, 0x0064($sp)
    jal     func_8001C66C
    or      a3, s4, $zero              # a3 = 808D7530
    addiu   s0, s0, 0xFFFF             # s0 = 00000003
    bne     s0, $zero, lbl_808D6A44
    nop
    lw      $ra, 0x004C($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    lw      s2, 0x0034($sp)
    lw      s3, 0x0038($sp)
    lw      s4, 0x003C($sp)
    lw      s5, 0x0040($sp)
    lw      s6, 0x0044($sp)
    lw      s7, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp += 0x68


func_808D6ADC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lui     a1, %hi(var_808D753C)      # a1 = 808D0000
    sw      $zero, 0x002C($sp)
    addiu   a1, a1, %lo(var_808D753C)  # a1 = 808D753C
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x1DDC             # a0 = 06001DDC
    jal     func_80033EF4
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0810             # a1 = 00000810
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800313A4              # DynaPolyInfo_setActor
    lw      a3, 0x002C($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      v0, 0x013C(s0)             # 0000013C
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    mfc1    a1, $f0
    mfc1    a3, $f0
    jal     func_8001EC20
    or      a2, $zero, $zero           # a2 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_808D6BA0
    or      a0, s1, $zero              # a0 = 00000000
    lui     a1, %hi(func_808D7234)     # a1 = 808D0000
    addiu   a1, a1, %lo(func_808D7234) # a1 = 808D7234
    jal     func_808D69B0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t6, $zero, 0x1333          # t6 = 00001333
    lui     $at, 0x0001                # $at = 00010000
    sh      t6, 0x00B4(s0)             # 000000B4
    addu    v0, s1, $at
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    sh      t7, 0x1D32(v0)             # 00001D32
    lh      t8, 0x1D32(v0)             # 00001D32
    b       lbl_808D6C2C
    sh      t8, 0x1D30(v0)             # 00001D30
lbl_808D6BA0:
    addiu   a1, s0, 0x0158             # a1 = 00000158
    jal     func_8004AB7C
    sw      a1, 0x0020($sp)
    addiu   a1, s0, 0x01A4             # a1 = 000001A4
    sw      a1, 0x0024($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x01F0             # a1 = 000001F0
    sw      a1, 0x0028($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_808D74C0)      # a3 = 808D0000
    addiu   a3, a3, %lo(var_808D74C0)  # a3 = 808D74C0
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0020($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a3, %hi(var_808D74EC)      # a3 = 808D0000
    addiu   a3, a3, %lo(var_808D74EC)  # a3 = 808D74EC
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a3, %hi(var_808D74EC)      # a3 = 808D0000
    addiu   a3, a3, %lo(var_808D74EC)  # a3 = 808D74EC
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0028($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a1, %hi(func_808D6CAC)     # a1 = 808D0000
    addiu   a1, a1, %lo(func_808D6CAC) # a1 = 808D6CAC
    jal     func_808D69B0
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, %hi(var_808D76F0)     # $at = 808D0000
    sb      $zero, %lo(var_808D76F0)($at)
lbl_808D6C2C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_808D6C40:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lw      t6, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      a1, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a1, 0x0158             # a1 = 00000158
    lw      a1, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a1, 0x01A4             # a1 = 000001A4
    lw      a1, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a1, 0x01F0             # a1 = 000001F0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808D6CAC:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    addiu   a1, s0, 0x0158             # a1 = 00000158
    sw      a1, 0x0038($sp)
    jal     func_800264C8
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808D6EA8
    addiu   a0, s0, 0x0024             # a0 = 00000024
    addiu   a1, v0, 0x0024             # a1 = 00000024
    jal     func_80063F00
    sw      v0, 0x003C($sp)
    lh      t6, 0x00B6(s0)             # 000000B6
    lui     a1, 0x0001                 # a1 = 00010000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    slt     $at, v0, t6
    bne     $at, $zero, lbl_808D6D08
    addu    v0, s1, a1
    b       lbl_808D6D0C
    sh      t7, 0x0154(s0)             # 00000154
lbl_808D6D08:
    sh      $zero, 0x0154(s0)          # 00000154
lbl_808D6D0C:
    lh      t8, 0x1D30(v0)             # 00001D30
    addiu   a0, $zero, 0x00FF          # a0 = 000000FF
    bnel    a0, t8, lbl_808D6D30
    lh      t0, 0x1D32(v0)             # 00001D32
    lh      t9, 0x0154(s0)             # 00000154
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    t9, $at, lbl_808D6D48
    lh      a1, 0x001C(s0)             # 0000001C
    lh      t0, 0x1D32(v0)             # 00001D32
lbl_808D6D30:
    lh      v1, 0x0154(s0)             # 00000154
    bne     a0, t0, lbl_808D6DE0
    sll     t6, v1,  1
    bnel    v1, $zero, lbl_808D6DE4
    addu    t7, s1, t6
    lh      a1, 0x001C(s0)             # 0000001C
lbl_808D6D48:
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800204D0
    andi    a1, a1, 0x003F             # a1 = 00000000
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sh      $zero, 0x0154(s0)          # 00000154
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t1, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     a1, %hi(func_808D6F70)     # a1 = 808D0000
    addiu   a1, a1, %lo(func_808D6F70) # a1 = 808D6F70
    jal     func_808D69B0
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0D34          # a1 = 00000D34
    addiu   a2, $zero, 0x00A0          # a2 = 000000A0
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
lbl_808D6DAC:
    lui     v0, %hi(var_808D7518)      # v0 = 808D0000
    addiu   v0, v0, %lo(var_808D7518)  # v0 = 808D7518
    lh      t2, 0x0000(v0)             # 808D7518
    lui     v1, %hi(var_808D7754)      # v1 = 808D0000
    addiu   v1, v1, %lo(var_808D7754)  # v1 = 808D7754
    bne     t2, $zero, lbl_808D6F5C
    lw      t3, 0x003C($sp)
    sw      t3, 0x0118(s0)             # 00000118
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, $zero, 0x0032          # t5 = 00000032
    sh      t4, 0x0000(v0)             # 808D7518
    b       lbl_808D6F5C
    sw      t5, 0x0000(v1)             # 808D7754
lbl_808D6DE0:
    addu    t7, s1, t6
lbl_808D6DE4:
    addu    t8, t7, a1
    lh      t9, 0x1D30(t8)             # 00001D30
    addiu   a1, $zero, 0x0BF9          # a1 = 00000BF9
    or      a0, s1, $zero              # a0 = 00000000
    bne     t9, $zero, lbl_808D6E58
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0BF9          # a1 = 00000BF9
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    lui     a1, %hi(func_808D7244)     # a1 = 808D0000
    addiu   a1, a1, %lo(func_808D7244) # a1 = 808D7244
    jal     func_808D69B0
    or      a0, s0, $zero              # a0 = 00000000
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t0, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_808D6DAC
    nop
lbl_808D6E58:
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t1, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4806          # a0 = 00004806
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     v1, %hi(var_808D7754)      # v1 = 808D0000
    addiu   v1, v1, %lo(var_808D7754)  # v1 = 808D7754
    lw      t2, 0x0000(v1)             # 808D7754
    addiu   t3, t2, 0x001E             # t3 = 0000001E
    b       lbl_808D6F5C
    sw      t3, 0x0000(v1)             # 808D7754
lbl_808D6EA8:
    jal     func_800288B4
    addiu   a0, $zero, 0x00B0          # a0 = 000000B0
    beq     v0, $zero, lbl_808D6F5C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80050B00
    lw      a1, 0x0038($sp)
    addiu   a1, s0, 0x01A4             # a1 = 000001A4
    sw      a1, 0x0034($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x01F0             # a1 = 000001F0
    sw      a1, 0x0030($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lh      t4, 0x01A2(s0)             # 000001A2
    lh      t6, 0x01EE(s0)             # 000001EE
    lh      t8, 0x01EA(s0)             # 000001EA
    lh      t0, 0x023A(s0)             # 0000023A
    lh      t2, 0x0236(s0)             # 00000236
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   t5, t4, 0x00C8             # t5 = 000000C8
    addiu   t7, t6, 0x00D7             # t7 = 000000D7
    addiu   t9, t8, 0x005A             # t9 = 0000005A
    addiu   t1, t0, 0x00D7             # t1 = 000000D7
    addiu   t3, t2, 0xFFA6             # t3 = FFFFFFA6
    sh      t5, 0x01A2(s0)             # 000001A2
    sh      t7, 0x01EE(s0)             # 000001EE
    sh      t9, 0x01EA(s0)             # 000001EA
    sh      t1, 0x023A(s0)             # 0000023A
    sh      t3, 0x0236(s0)             # 00000236
    addu    a1, s1, $at
    sw      a1, 0x002C($sp)
    lw      a2, 0x0038($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a0, s1, $zero              # a0 = 00000000
    lw      s0, 0x002C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    lw      a2, 0x0034($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0030($sp)
lbl_808D6F5C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_808D6F70:
    addiu   $sp, $sp, 0xFF18           # $sp -= 0xE8
    sw      s4, 0x0040($sp)
    sw      s1, 0x0034($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s3, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s0, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    lui     t7, %hi(var_808D754C)      # t7 = 808D0000
    addiu   t7, t7, %lo(var_808D754C)  # t7 = 808D754C
    addiu   t0, t7, 0x0084             # t0 = 808D75D0
    addiu   t6, $sp, 0x0058            # t6 = FFFFFF70
lbl_808D6FA8:
    lw      t9, 0x0000(t7)             # 808D754C
    addiu   t7, t7, 0x000C             # t7 = 808D7558
    addiu   t6, t6, 0x000C             # t6 = FFFFFF7C
    sw      t9, -0x000C(t6)            # FFFFFF70
    lw      t8, -0x0008(t7)            # 808D7550
    sw      t8, -0x0008(t6)            # FFFFFF74
    lw      t9, -0x0004(t7)            # 808D7554
    bne     t7, t0, lbl_808D6FA8
    sw      t9, -0x0004(t6)            # FFFFFF78
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s4, $at
    lh      v1, 0x1D30(v0)             # 00001D30
    slti    $at, v1, 0x00FF
    beq     $at, $zero, lbl_808D6FE8
    addiu   t1, v1, 0x0005             # t1 = 00000005
    sh      t1, 0x1D30(v0)             # 00001D30
lbl_808D6FE8:
    lh      v1, 0x1D32(v0)             # 00001D32
    slti    $at, v1, 0x00FF
    beq     $at, $zero, lbl_808D6FFC
    addiu   t2, v1, 0x0005             # t2 = 00000005
    sh      t2, 0x1D32(v0)             # 00001D32
lbl_808D6FFC:
    lh      t3, 0x1D30(v0)             # 00001D30
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    bne     v1, t3, lbl_808D7020
    nop
    lh      t4, 0x1D32(v0)             # 00001D32
    lui     v0, %hi(var_808D7754)      # v0 = 808D0000
    addiu   v0, v0, %lo(var_808D7754)  # v0 = 808D7754
    beql    v1, t4, lbl_808D703C
    lw      t7, 0x0000(v0)             # 808D7754
lbl_808D7020:
    lui     v0, %hi(var_808D7754)      # v0 = 808D0000
    addiu   v0, v0, %lo(var_808D7754)  # v0 = 808D7754
    lw      t5, 0x0000(v0)             # 808D7754
    addiu   t0, t5, 0xFFFF             # t0 = FFFFFFFF
    b       lbl_808D7210
    sw      t0, 0x0000(v0)             # 808D7754
    lw      t7, 0x0000(v0)             # 808D7754
lbl_808D703C:
    addiu   $at, $zero, 0x006C         # $at = 0000006C
    addiu   s0, $sp, 0x00D0            # s0 = FFFFFFE8
    bne     t7, $at, lbl_808D70C4
    addiu   s3, $sp, 0x0058            # s3 = FFFFFF70
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f20                  # $f20 = 2.00
    addiu   s2, $sp, 0x00DC            # s2 = FFFFFFF4
    lwc1    $f4, 0x0000(s0)            # FFFFFFE8
lbl_808D705C:
    lwc1    $f6, 0x0024(s1)            # 00000024
    mfc1    a2, $f20
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    add.s   $f8, $f4, $f6
    addiu   t8, $zero, 0x004B          # t8 = 0000004B
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    or      a0, s4, $zero              # a0 = 00000000
    swc1    $f8, 0x00DC($sp)
    lwc1    $f16, 0x0028(s1)           # 00000028
    lwc1    $f10, 0x0004(s0)           # FFFFFFEC
    or      a1, s2, $zero              # a1 = FFFFFFF4
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x00E0($sp)
    lwc1    $f6, 0x002C(s1)            # 0000002C
    lwc1    $f4, 0x0008(s0)            # FFFFFFF0
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    add.s   $f8, $f4, $f6
    sw      t6, 0x0010($sp)
    jal     func_80026308
    swc1    $f8, 0x00E4($sp)
    addiu   s0, s0, 0xFFF4             # s0 = FFFFFFDC
    sltu    $at, s0, s3
    beql    $at, $zero, lbl_808D705C
    lwc1    $f4, 0x0000(s0)            # FFFFFFDC
lbl_808D70C4:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f20                  # $f20 = 200.00
    lwc1    $f10, 0x0024(s1)           # 00000024
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    add.s   $f16, $f10, $f20
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    addiu   s2, $sp, 0x00DC            # s2 = FFFFFFF4
    swc1    $f16, 0x00DC($sp)
    lwc1    $f18, 0x0028(s1)           # 00000028
    or      a0, s2, $zero              # a0 = FFFFFFF4
    or      a1, s4, $zero              # a1 = 00000000
    sub.s   $f6, $f18, $f4
    swc1    $f6, 0x00E0($sp)
    lwc1    $f8, 0x002C(s1)            # 0000002C
    add.s   $f16, $f8, $f10
    jal     func_808D69BC
    swc1    $f16, 0x00E4($sp)
    lwc1    $f18, 0x0024(s1)           # 00000024
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    sub.s   $f4, $f18, $f20
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f18                  # $f18 = 100.00
    or      a0, s2, $zero              # a0 = FFFFFFF4
    swc1    $f4, 0x00DC($sp)
    lwc1    $f6, 0x0028(s1)            # 00000028
    or      a1, s4, $zero              # a1 = 00000000
    sub.s   $f10, $f6, $f8
    swc1    $f10, 0x00E0($sp)
    lwc1    $f16, 0x002C(s1)           # 0000002C
    add.s   $f4, $f16, $f18
    jal     func_808D69BC
    swc1    $f4, 0x00E4($sp)
    addiu   a0, s1, 0x0154             # a0 = 00000154
    addiu   a1, $zero, 0x0064          # a1 = 00000064
    jal     func_800637D4
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f12                  # $f12 = 500.00
    addiu   a1, $zero, 0x0078          # a1 = 00000078
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    lh      t1, 0x0154(s1)             # 00000154
    addiu   t2, $zero, 0x006E          # t2 = 0000006E
    addiu   t3, $zero, 0x0032          # t3 = 00000032
    subu    a2, t2, t1
    sll     a2, a2, 16
    sra     a2, a2, 16
    sw      t3, 0x0010($sp)
    addiu   a0, s1, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x1333          # a1 = 00001333
    jal     func_80064508
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    bne     v0, $zero, lbl_808D71EC
    lui     a3, 0x8010                 # a3 = 80100000
    lui     a1, %hi(func_808D7234)     # a1 = 808D0000
    addiu   a1, a1, %lo(func_808D7234) # a1 = 808D7234
    jal     func_808D69B0
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t4, t4, 0x43A8             # t4 = 801043A8
    sw      t4, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x281D          # a0 = 0000281D
    addiu   a1, s1, 0x00E4             # a1 = 000000E4
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_808D7214
    lw      $ra, 0x0044($sp)
lbl_808D71EC:
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 000043A0
    addiu   t5, t5, 0x43A8             # t5 = 801043A8
    sw      t5, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x201E          # a0 = 0000201E
    addiu   a1, s1, 0x00E4             # a1 = 000000E4
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_808D7210:
    lw      $ra, 0x0044($sp)
lbl_808D7214:
    ldc1    $f20, 0x0028($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    lw      s3, 0x003C($sp)
    lw      s4, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00E8           # $sp += 0xE8


func_808D7234:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_808D7244:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     v1, 0x0001                 # v1 = 00010000
    lh      t6, 0x0154(a0)             # 00000154
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    sll     t7, t6,  1
    addu    t8, a1, t7
    addu    v0, t8, v1
    lh      t9, 0x1D30(v0)             # 00001D30
    addiu   t0, t9, 0x0005             # t0 = 00000005
    sh      t0, 0x1D30(v0)             # 00001D30
    lh      t1, 0x0154(a0)             # 00000154
    sll     t2, t1,  1
    addu    t3, a1, t2
    addu    t4, t3, v1
    lh      t5, 0x1D30(t4)             # 00001D30
    lui     a1, %hi(func_808D6CAC)     # a1 = 808D0000
    bnel    t5, $at, lbl_808D729C
    lw      $ra, 0x0014($sp)
    jal     func_808D69B0
    addiu   a1, a1, %lo(func_808D6CAC) # a1 = 808D6CAC
    lw      $ra, 0x0014($sp)
lbl_808D729C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808D72A8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x0118(a2)             # 00000118
    lui     v0, %hi(var_808D7754)      # v0 = 808D0000
    addiu   v0, v0, %lo(var_808D7754)  # v0 = 808D7754
    bnel    t6, $zero, lbl_808D735C
    lw      t5, 0x0000(v0)             # 808D7754
    lbu     v1, 0x01B6(a2)             # 000001B6
    andi    v0, v1, 0x0002             # v0 = 00000000
    bne     v0, $zero, lbl_808D72EC
    andi    t9, v1, 0xFFFD             # t9 = 00000000
    lbu     t7, 0x0202(a2)             # 00000202
    andi    t8, t7, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_808D73E0
    lw      t9, 0x023C(a2)             # 0000023C
lbl_808D72EC:
    beq     v0, $zero, lbl_808D72FC
    lbu     a0, 0x0202(a2)             # 00000202
    b       lbl_808D7300
    lw      v0, 0x01B0(a2)             # 000001B0
lbl_808D72FC:
    lw      v0, 0x01FC(a2)             # 000001FC
lbl_808D7300:
    andi    t0, a0, 0xFFFD             # t0 = 00000000
    sb      t9, 0x01B6(a2)             # 000001B6
    sb      t0, 0x0202(a2)             # 00000202
    lbu     t1, 0x0002(v0)             # 00000002
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    t1, $at, lbl_808D73E0
    lw      t9, 0x023C(a2)             # 0000023C
    lh      t2, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bnel    t2, $at, lbl_808D73E0
    lw      t9, 0x023C(a2)             # 0000023C
    lh      t3, 0x001C(v0)             # 0000001C
    addiu   t4, $zero, 0x0032          # t4 = 00000032
    lui     $at, %hi(var_808D7754)     # $at = 808D0000
    bnel    t3, $zero, lbl_808D73E0
    lw      t9, 0x023C(a2)             # 0000023C
    mtc1    $zero, $f4                 # $f4 = 0.00
    sw      v0, 0x0118(a2)             # 00000118
    sh      t4, 0x01E8(v0)             # 000001E8
    swc1    $f4, 0x0068(v0)            # 00000068
    b       lbl_808D73DC
    sw      $zero, %lo(var_808D7754)($at)
    lw      t5, 0x0000(v0)             # 00000000
lbl_808D735C:
    lw      a0, 0x001C($sp)
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sw      t6, 0x0000(v0)             # 00000000
    lh      a1, 0x001C(a2)             # 0000001C
    sw      a2, 0x0018($sp)
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    lui     v1, %hi(var_808D76F0)      # v1 = 808D0000
    addiu   v1, v1, %lo(var_808D76F0)  # v1 = 808D76F0
    lbu     t7, 0x0000(v1)             # 808D76F0
    lw      a2, 0x0018($sp)
    lui     t8, %hi(var_808D7754)      # t8 = 808D0000
    bnel    t7, $zero, lbl_808D73E0
    lw      t9, 0x023C(a2)             # 0000023C
    lw      t8, %lo(var_808D7754)(t8)
    lw      a0, 0x001C($sp)
    slti    $at, t8, 0x008D
    bnel    $at, $zero, lbl_808D73E0
    lw      t9, 0x023C(a2)             # 0000023C
    lh      a1, 0x001C(a2)             # 0000001C
    sw      a2, 0x0018($sp)
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    lui     v1, %hi(var_808D76F0)      # v1 = 808D0000
    addiu   v1, v1, %lo(var_808D76F0)  # v1 = 808D76F0
    beq     v0, $zero, lbl_808D73D8
    lw      a2, 0x0018($sp)
    lbu     t9, 0x0000(v1)             # 808D76F0
    addiu   t0, t9, 0x0001             # t0 = 00000001
    b       lbl_808D73DC
    sb      t0, 0x0000(v1)             # 808D76F0
lbl_808D73D8:
    sw      $zero, 0x0118(a2)          # 00000118
lbl_808D73DC:
    lw      t9, 0x023C(a2)             # 0000023C
lbl_808D73E0:
    or      a0, a2, $zero              # a0 = 00000000
    lw      a1, 0x001C($sp)
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808D7400:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    addiu   a0, $zero, 0x00B0          # a0 = 000000B0
    jal     func_800288B4
    lw      s0, 0x0000(t6)             # 00000000
    beq     v0, $zero, lbl_808D7484
    lw      t7, 0x0034($sp)
    jal     func_8007E298
    lw      a0, 0x0000(t7)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t0, 0x0034($sp)
    lw      a0, 0x0000(t0)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    lui     t2, 0xDE00                 # t2 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t3, 0x0600                 # t3 = 06000000
    addiu   t3, t3, 0x1350             # t3 = 06001350
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
lbl_808D7484:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop
    nop
    nop

.section .data

var_808D74A0: .word 0x003F0100, 0x00000000, 0x002B0000, 0x00000240
.word func_808D6ADC
.word func_808D6C40
.word func_808D72A8
.word func_808D7400
var_808D74C0: .word \
0x0A003900, 0x00010000, 0x02000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010000, \
0x0050001E, 0x00500000, 0x00000000
var_808D74EC: .word \
0x0A00003D, 0x20010000, 0x02000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0032003C, 0x01180000, 0x00000000
var_808D7518: .word 0x00000000
var_808D751C: .word 0x64646400
var_808D7520: .word 0x28282800
var_808D7524: .word 0x00000000, 0xBFC00000, 0x00000000
var_808D7530: .word 0x00000000, 0xBE4CCCCD, 0x00000000
var_808D753C: .word 0xC8500064, 0xB0F41388, 0xB0F803E8, 0x30FC0320
var_808D754C: .word \
0x00000000, 0xC3480000, 0x43D70000, 0x41A00000, \
0xC3480000, 0x43D20000, 0xC1A00000, 0xC3480000, \
0x43D20000, 0x42200000, 0xC3480000, 0x43BE0000, \
0xC2200000, 0xC3480000, 0x43BE0000, 0x42480000, \
0xC3480000, 0x43AF0000, 0xC2480000, 0xC3480000, \
0x43AF0000, 0x42700000, 0xC3480000, 0x43A00000, \
0xC2700000, 0xC3480000, 0x43A00000, 0x428C0000, \
0xC3480000, 0x43910000, 0xC28C0000, 0xC3480000, \
0x43910000

.section .rodata


.bss

var_808D76F0: .space 0x64
var_808D7754: .space 0x0C
