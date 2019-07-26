.section .text
func_809EF5F0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    sw      $zero, 0x0018($sp)
    lw      a0, 0x0020($sp)
    jal     func_80035260
    or      a1, a3, $zero              # a1 = 00000000
    lw      a0, 0x0028($sp)
    jal     func_80033EF4
    addiu   a1, $sp, 0x0018            # a1 = FFFFFFF8
    lw      a0, 0x0024($sp)
    lw      a2, 0x0020($sp)
    lw      a3, 0x0018($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      t6, 0x0020($sp)
    sw      v0, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_809EF648:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x0158             # a1 = 00000158
    sw      a1, 0x0020($sp)
    lw      a0, 0x002C($sp)
    jal     func_8004A484
    sw      a2, 0x0028($sp)
    lw      a2, 0x0028($sp)
    lui     a3, %hi(var_809F0684)      # a3 = 809F0000
    lw      a1, 0x0020($sp)
    addiu   t6, a2, 0x0178             # t6 = 00000178
    sw      t6, 0x0010($sp)
    addiu   a3, a3, %lo(var_809F0684)  # a3 = 809F0684
    jal     func_8004A874
    lw      a0, 0x002C($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_809EF69C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lh      v0, 0x01BC(s0)             # 000001BC
    blez    v0, lbl_809EF6C4
    addiu   t7, v0, 0x0FA0             # t7 = 00000FA0
    addiu   t6, v0, 0x05DC             # t6 = 000005DC
    b       lbl_809EF6C8
    sh      t6, 0x01BC(s0)             # 000001BC
lbl_809EF6C4:
    sh      t7, 0x01BC(s0)             # 000001BC
lbl_809EF6C8:
    lh      t8, 0x001C(s0)             # 0000001C
    andi    t9, t8, 0x00FF             # t9 = 00000000
    sltiu   $at, t9, 0x0005
    beq     $at, $zero, lbl_809EF7E4
    sll     t9, t9,  2
    lui     $at, %hi(var_809F06B0)     # $at = 809F0000
    addu    $at, $at, t9
    lw      t9, %lo(var_809F06B0)($at)
    jr      t9
    nop
var_809EF6F0:
    jal     func_80063684              # coss?
    lh      a0, 0x01BC(s0)             # 000001BC
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, %hi(var_809F06C4)     # $at = 809F0000
    lwc1    $f8, %lo(var_809F06C4)($at)
    mul.s   $f6, $f0, $f4
    lui     $at, %hi(var_809F06C8)     # $at = 809F0000
    lwc1    $f16, %lo(var_809F06C8)($at)
    lh      a0, 0x01BC(s0)             # 000001BC
    add.s   $f10, $f6, $f8
    mul.s   $f18, $f10, $f16
    jal     func_80063684              # coss?
    swc1    $f18, 0x01C4(s0)           # 000001C4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, 0x41A4                # $at = 41A40000
    mtc1    $at, $f8                   # $f8 = 20.50
    mul.s   $f6, $f0, $f4
    lui     $at, %hi(var_809F06CC)     # $at = 809F0000
    lwc1    $f16, %lo(var_809F06CC)($at)
    lwc1    $f2, 0x01B8(s0)            # 000001B8
    lui     $at, %hi(var_809F06D0)     # $at = 809F0000
    mul.s   $f18, $f2, $f16
    add.s   $f10, $f6, $f8
    mul.s   $f4, $f10, $f18
    swc1    $f4, 0x01C0(s0)            # 000001C0
    lwc1    $f6, %lo(var_809F06D0)($at)
    mul.s   $f8, $f2, $f6
    b       lbl_809EF7E4
    swc1    $f8, 0x0054(s0)            # 00000054
var_809EF76C:
    jal     func_80063684              # coss?
    lh      a0, 0x01BC(s0)             # 000001BC
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     $at, %hi(var_809F06D4)     # $at = 809F0000
    lwc1    $f18, %lo(var_809F06D4)($at)
    mul.s   $f10, $f0, $f16
    lui     $at, %hi(var_809F06D8)     # $at = 809F0000
    lwc1    $f6, %lo(var_809F06D8)($at)
    lh      a0, 0x01BC(s0)             # 000001BC
    add.s   $f4, $f10, $f18
    mul.s   $f8, $f4, $f6
    jal     func_80063684              # coss?
    swc1    $f8, 0x01C4(s0)            # 000001C4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     $at, 0x41A4                # $at = 41A40000
    mtc1    $at, $f18                  # $f18 = 20.50
    mul.s   $f10, $f0, $f16
    lui     $at, %hi(var_809F06DC)     # $at = 809F0000
    lwc1    $f6, %lo(var_809F06DC)($at)
    lwc1    $f2, 0x01B8(s0)            # 000001B8
    lui     $at, %hi(var_809F06E0)     # $at = 809F0000
    mul.s   $f8, $f2, $f6
    add.s   $f4, $f10, $f18
    mul.s   $f16, $f4, $f8
    swc1    $f16, 0x01C0(s0)           # 000001C0
    lwc1    $f10, %lo(var_809F06E0)($at)
    mul.s   $f18, $f2, $f10
    swc1    $f18, 0x0054(s0)           # 00000054
lbl_809EF7E4:
    lui     $at, %hi(var_809F06E4)     # $at = 809F0000
    lwc1    $f6, %lo(var_809F06E4)($at)
    lwc1    $f4, 0x01C0(s0)            # 000001C0
    div.s   $f8, $f6, $f4
    swc1    $f8, 0x00BC(s0)            # 000000BC
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_809EF808:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_809F0694)      # a1 = 809F0000
    addiu   a1, a1, %lo(var_809F0694)  # a1 = 809F0694
    andi    v0, v0, 0x00FF             # v0 = 00000000
    sll     v0, v0, 16
    sra     v0, v0, 16
    sh      v0, 0x002E($sp)
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x002E($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    mtc1    $zero, $f4                 # $f4 = 0.00
    beq     v0, $at, lbl_809EF85C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_809EF870
lbl_809EF85C:
    lui     $at, %hi(var_809F06E8)     # $at = 809F0000
    lwc1    $f0, %lo(var_809F06E8)($at)
    swc1    $f0, 0x0058(s0)            # 00000058
    b       lbl_809EF880
    swc1    $f0, 0x0050(s0)            # 00000050
lbl_809EF870:
    lui     $at, %hi(var_809F06EC)     # $at = 809F0000
    lwc1    $f0, %lo(var_809F06EC)($at)
    swc1    $f0, 0x0058(s0)            # 00000058
    swc1    $f0, 0x0050(s0)            # 00000050
lbl_809EF880:
    swc1    $f4, 0x0054(s0)            # 00000054
    sh      v0, 0x002E($sp)
    jal     func_80020F04
    lui     a1, 0x4120                 # a1 = 41200000
    lh      v0, 0x002E($sp)
    sltiu   $at, v0, 0x0005
    beq     $at, $zero, lbl_809EF8F8
    sw      v0, 0x0024($sp)
    sll     t6, v0,  2
    lui     $at, %hi(var_809F06F0)     # $at = 809F0000
    addu    $at, $at, t6
    lw      t6, %lo(var_809F06F0)($at)
    jr      t6
    nop
var_809EF8B8:
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x5CF8             # a2 = 06005CF8
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)
    jal     func_809EF5F0
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    b       lbl_809EF8FC
    lh      a1, 0x001C(s0)             # 0000001C
var_809EF8D8:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809EF648
    lw      a1, 0x003C($sp)
    lw      t7, 0x0004(s0)             # 00000004
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    sb      t9, 0x001F(s0)             # 0000001F
    ori     t8, t7, 0x0001             # t8 = 00000001
    sw      t8, 0x0004(s0)             # 00000004
lbl_809EF8F8:
    lh      a1, 0x001C(s0)             # 0000001C
lbl_809EF8FC:
    lw      a0, 0x003C($sp)
    sra     a1, a1,  8
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    lw      t0, 0x0024($sp)
    sltiu   $at, t0, 0x0005
    beq     $at, $zero, lbl_809EF9A8
    sll     t0, t0,  2
    lui     $at, %hi(var_809F0704)     # $at = 809F0000
    addu    $at, $at, t0
    lw      t0, %lo(var_809F0704)($at)
    jr      t0
    nop
var_809EF930:
    beq     v0, $zero, lbl_809EF948
    nop
    jal     func_809EFCB8
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_809EF9B4
    lw      $ra, 0x001C($sp)
lbl_809EF948:
    jal     func_809EFB40
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_809EF9B4
    lw      $ra, 0x001C($sp)
var_809EF958:
    beq     v0, $zero, lbl_809EF970
    nop
    jal     func_809F00D4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_809EF9B4
    lw      $ra, 0x001C($sp)
lbl_809EF970:
    jal     func_809EFDFC
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_809EF9B4
    lw      $ra, 0x001C($sp)
var_809EF980:
    beq     v0, $zero, lbl_809EF998
    nop
    jal     func_809F028C
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_809EF9B4
    lw      $ra, 0x001C($sp)
lbl_809EF998:
    jal     func_809F0104
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_809EF9B4
    lw      $ra, 0x001C($sp)
lbl_809EF9A8:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_809EF9B4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_809EF9C4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sltiu   $at, t7, 0x0005
    beq     $at, $zero, lbl_809EFA20
    sll     t7, t7,  2
    lui     $at, %hi(var_809F0718)     # $at = 809F0000
    addu    $at, $at, t7
    lw      t7, %lo(var_809F0718)($at)
    jr      t7
    nop
var_809EF9FC:
    lw      a0, 0x001C($sp)
    lw      a2, 0x013C(a3)             # 0000013C
    jal     func_80031638              # DynaPolyInfo_delReserve
    addiu   a1, a0, 0x0810             # a1 = 00000810
    b       lbl_809EFA24
    lw      $ra, 0x0014($sp)
var_809EFA14:
    lw      a0, 0x001C($sp)
    jal     func_8004A550
    addiu   a1, a3, 0x0158             # a1 = 00000158
lbl_809EFA20:
    lw      $ra, 0x0014($sp)
lbl_809EFA24:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809EFA30:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0020($sp)
    lw      a0, 0x0024($sp)
    lh      a1, 0x001C(t6)             # 0000001C
    sra     a1, a1,  8
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    bne     v0, $zero, lbl_809EFAB4
    lw      t7, 0x0020($sp)
    lh      v0, 0x001C(t7)             # 0000001C
    lw      a0, 0x0024($sp)
    andi    v1, v0, 0x00FF             # v1 = 00000000
    sra     a1, v0,  8
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_800204D0
    sw      v1, 0x0018($sp)
    lw      v1, 0x0018($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lw      a0, 0x0024($sp)
    beq     v1, $zero, lbl_809EFA98
    lw      a1, 0x0020($sp)
    bne     v1, $at, lbl_809EFAA8
    addiu   a2, $zero, 0x4802          # a2 = 00004802
lbl_809EFA98:
    jal     func_8006BB7C
    addiu   a2, $zero, 0x4807          # a2 = 00004807
    b       lbl_809EFAB8
    lw      $ra, 0x0014($sp)
lbl_809EFAA8:
    lw      a0, 0x0024($sp)
    jal     func_8006BB7C
    lw      a1, 0x0020($sp)
lbl_809EFAB4:
    lw      $ra, 0x0014($sp)
lbl_809EFAB8:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809EFAC4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x0018($sp)
    lw      a0, 0x001C($sp)
    lh      a1, 0x001C(t6)             # 0000001C
    sra     a1, a1,  8
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_809EFB30
    lw      t7, 0x0018($sp)
    lh      a1, 0x001C(t7)             # 0000001C
    lw      a0, 0x001C($sp)
    sra     a1, a1,  8
    jal     func_80020510
    andi    a1, a1, 0x003F             # a1 = 00000000
    lw      t8, 0x0018($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lw      a0, 0x001C($sp)
    lh      t9, 0x001C(t8)             # 0000001C
    or      a1, t8, $zero              # a1 = 00000000
    andi    t0, t9, 0x00FF             # t0 = 00000000
    bnel    t0, $at, lbl_809EFB34
    lw      $ra, 0x0014($sp)
    jal     func_8006BB7C
    addiu   a2, $zero, 0x4807          # a2 = 00004807
lbl_809EFB30:
    lw      $ra, 0x0014($sp)
lbl_809EFB34:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809EFB40:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     t6, %hi(func_809EFB60)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809EFB60) # t6 = 809EFB60
    sw      t6, 0x0154(a0)             # 00000154
    swc1    $f4, 0x01B8(a0)            # 000001B8
    jr      $ra
    nop


func_809EFB60:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    andi    v0, v0, 0x00FF             # v0 = 00000000
    beq     v0, $zero, lbl_809EFB98
    nop
    beq     v0, $at, lbl_809EFBC4
    nop
    b       lbl_809EFBEC
    lw      $ra, 0x001C($sp)
lbl_809EFB98:
    jal     func_800353AC
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_809EFBEC
    lw      $ra, 0x001C($sp)
    jal     func_809EFBFC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809EFA30
    lw      a1, 0x0024($sp)
    b       lbl_809EFBEC
    lw      $ra, 0x001C($sp)
lbl_809EFBC4:
    jal     func_80035364
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_809EFBEC
    lw      $ra, 0x001C($sp)
    jal     func_809EFBFC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809EFA30
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
lbl_809EFBEC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809EFBFC:
    lui     t6, %hi(func_809EFC18)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809EFC18) # t6 = 809EFC18
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t6, 0x0154(a0)             # 00000154
    sh      t7, 0x01CA(a0)             # 000001CA
    jr      $ra
    nop


func_809EFC18:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_80049DA4
    nop
    lbu     t6, 0x0002(s0)             # 00000002
    lui     $at, %hi(var_809F072C)     # $at = 809F0000
    beql    v0, t6, lbl_809EFC54
    lwc1    $f4, 0x01B8(s0)            # 000001B8
    lh      t7, 0x01CA(s0)             # 000001CA
    bgtzl   t7, lbl_809EFCA8
    lw      $ra, 0x001C($sp)
    lwc1    $f4, 0x01B8(s0)            # 000001B8
lbl_809EFC54:
    lwc1    $f6, %lo(var_809F072C)($at)
    lui     $at, %hi(var_809F0730)     # $at = 809F0000
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x01B8(s0)            # 000001B8
    lwc1    $f16, 0x01B8(s0)           # 000001B8
    lwc1    $f10, %lo(var_809F0730)($at)
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_809EFCA8
    lw      $ra, 0x001C($sp)
    jal     func_809EFCB8
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2815          # a1 = 00002815
    lwc1    $f12, 0x008C(s0)           # 0000008C
    addiu   a1, $zero, 0x0078          # a1 = 00000078
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    lw      $ra, 0x001C($sp)
lbl_809EFCA8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809EFCB8:
    lui     $at, %hi(var_809F0734)     # $at = 809F0000
    lwc1    $f4, %lo(var_809F0734)($at)
    lui     t6, %hi(func_809EFCE0)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809EFCE0) # t6 = 809EFCE0
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    sw      t6, 0x0154(a0)             # 00000154
    sh      t7, 0x01C8(a0)             # 000001C8
    swc1    $f4, 0x01B8(a0)            # 000001B8
    jr      $ra
    nop


func_809EFCE0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    andi    v0, v1, 0x00FF             # v0 = 00000000
    beq     v0, $zero, lbl_809EFD18
    nop
    beq     v0, $at, lbl_809EFD58
    lw      a0, 0x0024($sp)
    b       lbl_809EFD78
    lw      $ra, 0x001C($sp)
lbl_809EFD18:
    jal     func_800353AC
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_809EFD50
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    lh      t6, 0x01C8(s0)             # 000001C8
    bgtzl   t6, lbl_809EFD78
    lw      $ra, 0x001C($sp)
    jal     func_809EFD88
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809EFAC4
    lw      a1, 0x0024($sp)
    b       lbl_809EFD78
    lw      $ra, 0x001C($sp)
lbl_809EFD50:
    b       lbl_809EFD74
    sh      t7, 0x01C8(s0)             # 000001C8
lbl_809EFD58:
    sra     a1, v1,  8
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    bnel    v0, $zero, lbl_809EFD78
    lw      $ra, 0x001C($sp)
    jal     func_809EFD88
    or      a0, s0, $zero              # a0 = 00000000
lbl_809EFD74:
    lw      $ra, 0x001C($sp)
lbl_809EFD78:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809EFD88:
    lui     t6, %hi(func_809EFD9C)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809EFD9C) # t6 = 809EFD9C
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_809EFD9C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     $at, %hi(var_809F0738)     # $at = 809F0000
    lwc1    $f6, %lo(var_809F0738)($at)
    lwc1    $f4, 0x01B8(a0)            # 000001B8
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x01B8(a0)            # 000001B8
    lwc1    $f10, 0x01B8(a0)           # 000001B8
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_809EFDF0
    lw      $ra, 0x0014($sp)
    jal     func_809EFB40
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x2815          # a1 = 00002815
    lw      $ra, 0x0014($sp)
lbl_809EFDF0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809EFDFC:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     t6, %hi(func_809EFE1C)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809EFE1C) # t6 = 809EFE1C
    sw      t6, 0x0154(a0)             # 00000154
    swc1    $f4, 0x01B8(a0)            # 000001B8
    jr      $ra
    nop


func_809EFE1C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_80035364
    lw      a0, 0x0018($sp)
    beql    v0, $zero, lbl_809EFE48
    lw      $ra, 0x0014($sp)
    jal     func_809EFE54
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
lbl_809EFE48:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809EFE54:
    lui     t6, %hi(func_809EFE68)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809EFE68) # t6 = 809EFE68
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_809EFE68:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     $at, %hi(var_809F073C)     # $at = 809F0000
    lwc1    $f6, %lo(var_809F073C)($at)
    lwc1    $f4, 0x01B8(a0)            # 000001B8
    lui     $at, %hi(var_809F0740)     # $at = 809F0000
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x01B8(a0)            # 000001B8
    lwc1    $f16, 0x01B8(a0)           # 000001B8
    lwc1    $f10, %lo(var_809F0740)($at)
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_809EFED4
    lw      $ra, 0x0014($sp)
    jal     func_809EFF9C
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x2815          # a1 = 00002815
    lw      a0, 0x0018($sp)
    addiu   a1, $zero, 0x0078          # a1 = 00000078
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    jal     func_800915CC
    lwc1    $f12, 0x008C(a0)           # 0000008C
    lw      $ra, 0x0014($sp)
lbl_809EFED4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809EFEE0:
    lui     t6, %hi(func_809EFEFC)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809EFEFC) # t6 = 809EFEFC
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t6, 0x0154(a0)             # 00000154
    sh      t7, 0x01CA(a0)             # 000001CA
    jr      $ra
    nop


func_809EFEFC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_80049DA4
    nop
    lbu     t6, 0x0002(s0)             # 00000002
    lui     $at, %hi(var_809F0744)     # $at = 809F0000
    beql    v0, t6, lbl_809EFF38
    lwc1    $f4, 0x01B8(s0)            # 000001B8
    lh      t7, 0x01CA(s0)             # 000001CA
    bgtzl   t7, lbl_809EFF8C
    lw      $ra, 0x001C($sp)
    lwc1    $f4, 0x01B8(s0)            # 000001B8
lbl_809EFF38:
    lwc1    $f6, %lo(var_809F0744)($at)
    lui     $at, %hi(var_809F0748)     # $at = 809F0000
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x01B8(s0)            # 000001B8
    lwc1    $f16, 0x01B8(s0)           # 000001B8
    lwc1    $f10, %lo(var_809F0748)($at)
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_809EFF8C
    lw      $ra, 0x001C($sp)
    jal     func_809F00D4
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2815          # a1 = 00002815
    lwc1    $f12, 0x008C(s0)           # 0000008C
    addiu   a1, $zero, 0x0078          # a1 = 00000078
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    lw      $ra, 0x001C($sp)
lbl_809EFF8C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809EFF9C:
    lui     $at, %hi(var_809F074C)     # $at = 809F0000
    lwc1    $f4, %lo(var_809F074C)($at)
    lui     t6, %hi(func_809EFFC4)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809EFFC4) # t6 = 809EFFC4
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    sw      t6, 0x0154(a0)             # 00000154
    sh      t7, 0x01C8(a0)             # 000001C8
    swc1    $f4, 0x01B8(a0)            # 000001B8
    jr      $ra
    nop


func_809EFFC4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0024($sp)
    lw      t7, 0x1C44(t6)             # 00001C44
    lw      v1, 0x039C(t7)             # 0000039C
    sw      a0, 0x0020($sp)
    jal     func_80035364
    sw      v1, 0x001C($sp)
    lw      v1, 0x001C($sp)
    beq     v0, $zero, lbl_809F003C
    lw      a0, 0x0020($sp)
    beq     v1, $zero, lbl_809F0034
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    lh      t8, 0x0000(v1)             # 00000000
    addiu   $at, $zero, 0x00A1         # $at = 000000A1
    bne     t8, $at, lbl_809F0034
    nop
    lh      t9, 0x01C8(a0)             # 000001C8
    bgtzl   t9, lbl_809F0054
    lw      $ra, 0x0014($sp)
    jal     func_809EFEE0
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    jal     func_809EFA30
    lw      a1, 0x0024($sp)
    b       lbl_809F0054
    lw      $ra, 0x0014($sp)
lbl_809F0034:
    b       lbl_809F0050
    sh      t0, 0x01C8(a0)             # 000001C8
lbl_809F003C:
    lh      t1, 0x01C8(a0)             # 000001C8
    bgtzl   t1, lbl_809F0054
    lw      $ra, 0x0014($sp)
    jal     func_809F0060
    nop
lbl_809F0050:
    lw      $ra, 0x0014($sp)
lbl_809F0054:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809F0060:
    lui     t6, %hi(func_809F0074)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809F0074) # t6 = 809F0074
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_809F0074:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     $at, %hi(var_809F0750)     # $at = 809F0000
    lwc1    $f6, %lo(var_809F0750)($at)
    lwc1    $f4, 0x01B8(a0)            # 000001B8
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x01B8(a0)            # 000001B8
    lwc1    $f10, 0x01B8(a0)           # 000001B8
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_809F00C8
    lw      $ra, 0x0014($sp)
    jal     func_809EFDFC
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x2815          # a1 = 00002815
    lw      $ra, 0x0014($sp)
lbl_809F00C8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809F00D4:
    lui     $at, %hi(var_809F0754)     # $at = 809F0000
    lwc1    $f4, %lo(var_809F0754)($at)
    lui     t6, %hi(func_809F00F4)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809F00F4) # t6 = 809F00F4
    sw      t6, 0x0154(a0)             # 00000154
    swc1    $f4, 0x01B8(a0)            # 000001B8
    jr      $ra
    nop


func_809F00F4:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_809F0104:
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f4                   # $f4 = 2.00
    lui     t6, %hi(func_809F0124)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809F0124) # t6 = 809F0124
    sw      t6, 0x0154(a0)             # 00000154
    swc1    $f4, 0x01B8(a0)            # 000001B8
    jr      $ra
    nop


func_809F0124:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      v0, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    andi    v0, v0, 0x00FF             # v0 = 00000000
    beq     v0, $at, lbl_809F0154
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beql    v0, $at, lbl_809F0198
    lbu     t0, 0x0169(a0)             # 00000169
    b       lbl_809F01E0
    lw      $ra, 0x0014($sp)
lbl_809F0154:
    lbu     t6, 0x0169(a0)             # 00000169
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_809F01E0
    lw      $ra, 0x0014($sp)
    lh      t8, 0x01C8(a0)             # 000001C8
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    bgtzl   t8, lbl_809F01E0
    lw      $ra, 0x0014($sp)
    sh      t9, 0x01C8(a0)             # 000001C8
    jal     func_809F01EC
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_809EFA30
    lw      a1, 0x001C($sp)
    b       lbl_809F01E0
    lw      $ra, 0x0014($sp)
    lbu     t0, 0x0169(a0)             # 00000169
lbl_809F0198:
    andi    t1, t0, 0x0002             # t1 = 00000000
    beql    t1, $zero, lbl_809F01E0
    lw      $ra, 0x0014($sp)
    lbu     t2, 0x01CC(a0)             # 000001CC
    andi    t3, t2, 0x0002             # t3 = 00000000
    bnel    t3, $zero, lbl_809F01E0
    lw      $ra, 0x0014($sp)
    lh      t4, 0x01C8(a0)             # 000001C8
    addiu   t5, $zero, 0x000A          # t5 = 0000000A
    bgtzl   t4, lbl_809F01E0
    lw      $ra, 0x0014($sp)
    sh      t5, 0x01C8(a0)             # 000001C8
    jal     func_809F01EC
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_809EFA30
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
lbl_809F01E0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809F01EC:
    lui     t6, %hi(func_809F0208)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809F0208) # t6 = 809F0208
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t6, 0x0154(a0)             # 00000154
    sh      t7, 0x01CA(a0)             # 000001CA
    jr      $ra
    nop


func_809F0208:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_80049DA4
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, %hi(var_809F0758)     # $at = 809F0000
    lbu     t6, 0x0002(a0)             # 00000002
    beql    v0, t6, lbl_809F0240
    lwc1    $f4, 0x01B8(a0)            # 000001B8
    lh      t7, 0x01CA(a0)             # 000001CA
    bgtzl   t7, lbl_809F0280
    lw      $ra, 0x0014($sp)
    lwc1    $f4, 0x01B8(a0)            # 000001B8
lbl_809F0240:
    lwc1    $f6, %lo(var_809F0758)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x01B8(a0)            # 000001B8
    lwc1    $f16, 0x01B8(a0)           # 000001B8
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_809F0280
    lw      $ra, 0x0014($sp)
    jal     func_809F028C
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x2815          # a1 = 00002815
    lw      $ra, 0x0014($sp)
lbl_809F0280:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809F028C:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     t6, %hi(func_809F02AC)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809F02AC) # t6 = 809F02AC
    sw      t6, 0x0154(a0)             # 00000154
    swc1    $f4, 0x01B8(a0)            # 000001B8
    jr      $ra
    nop


func_809F02AC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      v1, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      a0, a3, $zero              # a0 = 00000000
    andi    v0, v1, 0x00FF             # v0 = 00000000
    beq     v0, $at, lbl_809F02E8
    sra     a1, v1,  8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beql    v0, $at, lbl_809F0310
    lbu     t6, 0x0169(a2)             # 00000169
    b       lbl_809F0360
    lw      $ra, 0x0014($sp)
lbl_809F02E8:
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_8002049C
    sw      a2, 0x0018($sp)
    bne     v0, $zero, lbl_809F035C
    lw      a2, 0x0018($sp)
    jal     func_809F036C
    or      a0, a2, $zero              # a0 = 00000000
    b       lbl_809F0360
    lw      $ra, 0x0014($sp)
    lbu     t6, 0x0169(a2)             # 00000169
lbl_809F0310:
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_809F0360
    lw      $ra, 0x0014($sp)
    lbu     t8, 0x01CC(a2)             # 000001CC
    andi    t9, t8, 0x0002             # t9 = 00000000
    bnel    t9, $zero, lbl_809F0360
    lw      $ra, 0x0014($sp)
    lh      t0, 0x01C8(a2)             # 000001C8
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    or      a0, a2, $zero              # a0 = 00000000
    bgtzl   t0, lbl_809F0360
    lw      $ra, 0x0014($sp)
    sh      t1, 0x01C8(a2)             # 000001C8
    sw      a3, 0x001C($sp)
    jal     func_809F036C
    sw      a2, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_809EFAC4
    lw      a1, 0x001C($sp)
lbl_809F035C:
    lw      $ra, 0x0014($sp)
lbl_809F0360:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809F036C:
    lui     t6, %hi(func_809F0388)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809F0388) # t6 = 809F0388
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t6, 0x0154(a0)             # 00000154
    sh      t7, 0x01CA(a0)             # 000001CA
    jr      $ra
    nop


func_809F0388:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    andi    t7, t6, 0x00FF             # t7 = 00000000
    bne     t7, $at, lbl_809F03C8
    nop
    jal     func_80049DA4
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lbu     t8, 0x0002(a0)             # 00000002
    beq     v0, t8, lbl_809F03C8
    nop
    lh      t9, 0x01CA(a0)             # 000001CA
    bgtz    t9, lbl_809F040C
lbl_809F03C8:
    lui     $at, %hi(var_809F075C)     # $at = 809F0000
    lwc1    $f6, %lo(var_809F075C)($at)
    lwc1    $f4, 0x01B8(a0)            # 000001B8
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f16                  # $f16 = 2.00
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x01B8(a0)            # 000001B8
    lwc1    $f10, 0x01B8(a0)           # 000001B8
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_809F0410
    lw      $ra, 0x0014($sp)
    jal     func_809F0104
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x2815          # a1 = 00002815
lbl_809F040C:
    lw      $ra, 0x0014($sp)
lbl_809F0410:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809F041C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lh      v0, 0x01CA(s0)             # 000001CA
    blez    v0, lbl_809F0444
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x01CA(s0)             # 000001CA
lbl_809F0444:
    lw      t9, 0x0154(s0)             # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    jal     func_809EF69C
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    andi    v0, v0, 0x00FF             # v0 = 00000000
    beq     v0, $at, lbl_809F048C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_809F048C
    nop
    lh      t7, 0x01C8(s0)             # 000001C8
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    b       lbl_809F050C
    sh      t8, 0x01C8(s0)             # 000001C8
lbl_809F048C:
    jal     func_8007943C
    or      a0, s1, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_809F04AC
    lui     $at, 0x43B9                # $at = 43B90000
    lh      v0, 0x01C8(s0)             # 000001C8
    blez    v0, lbl_809F04AC
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x01C8(s0)             # 000001C8
lbl_809F04AC:
    lwc1    $f4, 0x01C4(s0)            # 000001C4
    mtc1    $at, $f6                   # $f6 = 370.00
    lbu     v0, 0x0169(s0)             # 00000169
    lw      t4, 0x0174(s0)             # 00000174
    mul.s   $f8, $f4, $f6
    lui     $at, 0x0001                # $at = 00010000
    andi    t1, v0, 0xFFFD             # t1 = 00000000
    sb      t1, 0x0169(s0)             # 00000169
    ori     $at, $at, 0x1E60           # $at = 00011E60
    sb      v0, 0x01CC(s0)             # 000001CC
    addu    a1, s1, $at
    trunc.w.s $f10, $f8
    addiu   a2, s0, 0x0158             # a2 = 00000158
    or      a0, s1, $zero              # a0 = 00000000
    mfc1    t3, $f10
    nop
    sh      t3, 0x002E(t4)             # 0000002E
    sw      a2, 0x0024($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a1, 0x0028($sp)
    lw      a1, 0x0028($sp)
    lw      a2, 0x0024($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
lbl_809F050C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_809F0520:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lwc1    $f4, 0x00BC(a0)            # 000000BC
    lwc1    $f6, 0x01C0(a0)            # 000001C0
    lwc1    $f10, 0x0028(a0)           # 00000028
    lwc1    $f12, 0x0024(a0)           # 00000024
    mul.s   $f8, $f4, $f6
    lw      a2, 0x002C(a0)             # 0000002C
    sw      a0, 0x0018($sp)
    addiu   a3, a0, 0x00B4             # a3 = 000000B4
    jal     func_800AB510
    add.s   $f14, $f10, $f8
    lw      a0, 0x0018($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x01C4(a0)           # 000001C4
    lwc1    $f14, 0x01C0(a0)           # 000001C0
    mfc1    a2, $f12
    jal     func_800AA8FC
    nop
    lw      a0, 0x001C($sp)
    jal     func_80028048
    lw      a1, 0x0020($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809F0590:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sltiu   $at, t7, 0x0005
    beq     $at, $zero, lbl_809F062C
    sll     t7, t7,  2
    lui     $at, %hi(var_809F0760)     # $at = 809F0000
    addu    $at, $at, t7
    lw      t7, %lo(var_809F0760)($at)
    jr      t7
    nop
var_809F05C4:
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x61A0             # a2 = 060061A0
    jal     func_809F0520
    or      a0, a3, $zero              # a0 = 00000000
    b       lbl_809F0630
    lw      $ra, 0x0014($sp)
var_809F05DC:
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x61A0             # a2 = 060061A0
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_809F0520
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80050CE4
    addiu   a1, a3, 0x0158             # a1 = 00000158
    lw      a3, 0x0018($sp)
    lui     a0, %hi(var_809F06A0)      # a0 = 809F0000
    addiu   a0, a0, %lo(var_809F06A0)  # a0 = 809F06A0
    jal     func_800AB958
    addiu   a1, a3, 0x0038             # a1 = 00000038
    b       lbl_809F0630
    lw      $ra, 0x0014($sp)
var_809F061C:
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x5A20             # a2 = 06005A20
    jal     func_809F0520
    or      a0, a3, $zero              # a0 = 00000000
lbl_809F062C:
    lw      $ra, 0x0014($sp)
lbl_809F0630:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop

.section .data

var_809F0640: .word 0x00E60000, 0x00000010, 0x00960000, 0x000001D0
.word func_809EF808
.word func_809EF9C4
.word func_809F041C
.word func_809F0590
var_809F0660: .word \
0x00000000, 0x00000000, 0x00000000, 0xEFC1FFFE, \
0x00000000, 0x00010100, 0x00000000, 0x00780000, \
0x01720064
var_809F0684: .word 0x0A000939, 0x20000000, 0x00000001
.word var_809F0660
var_809F0694: .word 0xB0F40578, 0xB0F801F4, 0x30FC04B0
var_809F06A0: .word 0x00000000, 0x430C0000, 0x00000000, 0x00000000

.section .rodata

var_809F06B0: .word var_809EF6F0
.word var_809EF6F0
.word var_809EF6F0
.word var_809EF76C
.word var_809EF76C
var_809F06C4: .word 0x410D5556
var_809F06C8: .word 0x3C449BA6
var_809F06CC: .word 0x3BA3D70B
var_809F06D0: .word 0x3DCCCCCD
var_809F06D4: .word 0x40E55555
var_809F06D8: .word 0x3BF5C290
var_809F06DC: .word 0x3BA3D70B
var_809F06E0: .word 0x3DCCCCCD
var_809F06E4: .word 0x3F99999A
var_809F06E8: .word 0x3D4CCCCD
var_809F06EC: .word 0x3DCCCCCD
var_809F06F0: .word var_809EF8B8
.word var_809EF8B8
.word var_809EF8B8
.word var_809EF8D8
.word var_809EF8D8
var_809F0704: .word var_809EF930
.word var_809EF958
.word var_809EF930
.word var_809EF980
.word var_809EF980
var_809F0718: .word var_809EF9FC
.word var_809EF9FC
.word var_809EF9FC
.word var_809EFA14
.word var_809EFA14
var_809F072C: .word 0x3E4CCCCD
var_809F0730: .word 0x3DCCCCCD
var_809F0734: .word 0x3DCCCCCD
var_809F0738: .word 0x3E4CCCCD
var_809F073C: .word 0x3E4CCCCD
var_809F0740: .word 0x3F19999A
var_809F0744: .word 0x3E4CCCCD
var_809F0748: .word 0x3DCCCCCD
var_809F074C: .word 0x3F19999A
var_809F0750: .word 0x3E4CCCCD
var_809F0754: .word 0x3DCCCCCD
var_809F0758: .word 0x3E99999A
var_809F075C: .word 0x3E99999A
var_809F0760: .word var_809F061C
.word var_809F05C4
.word var_809F05C4
.word var_809F05DC
.word var_809F05DC
.word 0x00000000, 0x00000000, 0x00000000

