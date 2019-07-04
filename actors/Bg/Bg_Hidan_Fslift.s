.section .text
func_808F2ED0:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x0054($sp)
    lui     a1, %hi(var_808F3310)      # a1 = 808F0000
    sw      $zero, 0x0044($sp)
    addiu   a1, a1, %lo(var_808F3310)  # a1 = 808F3310
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0xE1E8             # a0 = 0600E1E8
    jal     func_80033EF4
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFF4
    lw      a0, 0x0054($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0044($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lwc1    $f4, 0x0024(s0)            # 00000024
    sw      v0, 0x013C(s0)             # 0000013C
    lui     $at, 0x4220                # $at = 42200000
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    mtc1    $at, $f8                   # $f8 = 40.00
    lui     $at, 0xC1E0                # $at = C1E00000
    mtc1    $at, $f18                  # $f18 = -28.00
    add.s   $f10, $f6, $f8
    lw      a2, 0x0054($sp)
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f10, 0x0014($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    sw      t7, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    add.s   $f4, $f16, $f18
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    addiu   a3, $zero, 0x012D          # a3 = 0000012D
    swc1    $f4, 0x0018($sp)
    jal     func_800253F0
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    bne     v0, $zero, lbl_808F2F9C
    lui     t8, %hi(func_808F3068)     # t8 = 808F0000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808F2FA8
    lw      $ra, 0x003C($sp)
lbl_808F2F9C:
    addiu   t8, t8, %lo(func_808F3068) # t8 = 00003068
    sw      t8, 0x0154(s0)             # 00000154
    lw      $ra, 0x003C($sp)
lbl_808F2FA8:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra
    nop


func_808F2FB8:
    lw      v0, 0x011C(a0)             # 0000011C
    beql    v0, $zero, lbl_808F3010
    sw      $zero, 0x011C(a0)          # 0000011C
    lw      t6, 0x0130(v0)             # 00000130
    beql    t6, $zero, lbl_808F3010
    sw      $zero, 0x011C(a0)          # 0000011C
    lwc1    $f4, 0x0024(a0)            # 00000024
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    swc1    $f4, 0x0024(v0)            # 00000024
    lwc1    $f6, 0x0028(a0)            # 00000028
    lw      t7, 0x011C(a0)             # 0000011C
    lui     $at, 0xC1E0                # $at = C1E00000
    add.s   $f10, $f6, $f8
    mtc1    $at, $f18                  # $f18 = -28.00
    swc1    $f10, 0x0028(t7)           # 00000028
    lwc1    $f16, 0x002C(a0)           # 0000002C
    lw      t8, 0x011C(a0)             # 0000011C
    add.s   $f4, $f16, $f18
    jr      $ra
    swc1    $f4, 0x002C(t8)            # 0000002C
lbl_808F300C:
    sw      $zero, 0x011C(a0)          # 0000011C
lbl_808F3010:
    jr      $ra
    nop


func_808F3018:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_808F304C:
    lui     t7, %hi(func_808F3068)     # t7 = 808F0000
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    addiu   t7, t7, %lo(func_808F3068) # t7 = 808F3068
    sh      t6, 0x0158(a0)             # 00000158
    sw      t7, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_808F3068:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    lh      v0, 0x0158(a0)             # 00000158
    beq     v0, $zero, lbl_808F3088
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0158(a0)             # 00000158
    lh      v0, 0x0158(a0)             # 00000158
lbl_808F3088:
    bnel    v0, $zero, lbl_808F30FC
    lw      $ra, 0x0014($sp)
    lwc1    $f4, 0x0028(a0)            # 00000028
    lwc1    $f6, 0x000C(a0)            # 0000000C
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    sub.s   $f8, $f4, $f6
    or      v1, $zero, $zero           # v1 = 00000000
    c.lt.s  $f8, $f10
    nop
    bc1fl   lbl_808F30C0
    sw      v1, 0x001C($sp)
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sw      v1, 0x001C($sp)
lbl_808F30C0:
    jal     func_80035388
    sw      a0, 0x0020($sp)
    lw      v1, 0x001C($sp)
    beq     v0, $zero, lbl_808F30E8
    lw      a0, 0x0020($sp)
    beq     v1, $zero, lbl_808F30E8
    lui     t7, %hi(func_808F3174)     # t7 = 808F0000
    addiu   t7, t7, %lo(func_808F3174) # t7 = 808F3174
    beq     $zero, $zero, lbl_808F30F8
    sw      t7, 0x0154(a0)             # 00000154
lbl_808F30E8:
    bne     v1, $zero, lbl_808F30F8
    lui     t8, %hi(func_808F3108)     # t8 = 808F0000
    addiu   t8, t8, %lo(func_808F3108) # t8 = 808F3108
    sw      t8, 0x0154(a0)             # 00000154
lbl_808F30F8:
    lw      $ra, 0x0014($sp)
lbl_808F30FC:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808F3108:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x000C(s0)             # 0000000C
    jal     func_8006385C
    lui     a2, 0x4080                 # a2 = 40800000
    beq     v0, $zero, lbl_808F3150
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2835          # a1 = 00002835
    jal     func_808F304C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808F3158
    nop
lbl_808F3150:
    jal     func_8002313C
    addiu   a1, $zero, 0x20B9          # a1 = 000020B9
lbl_808F3158:
    jal     func_808F2FB8
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808F3174:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_80035388
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808F31EC
    lui     $at, %hi(var_808F3320)     # $at = 808F0000
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lwc1    $f6, %lo(var_808F3320)($at)
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x4080                 # a2 = 40800000
    add.s   $f8, $f4, $f6
    mfc1    a1, $f8
    jal     func_8006385C
    nop
    beq     v0, $zero, lbl_808F31DC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2835          # a1 = 00002835
    jal     func_808F304C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808F31F4
    nop
lbl_808F31DC:
    jal     func_8002313C
    addiu   a1, $zero, 0x20B9          # a1 = 000020B9
    beq     $zero, $zero, lbl_808F31F4
    nop
lbl_808F31EC:
    jal     func_808F304C
    or      a0, s0, $zero              # a0 = 00000000
lbl_808F31F4:
    jal     func_808F2FB8
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808F3210:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      t9, 0x0154(s0)             # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jalr    $ra, t9
    nop
    jal     func_80035364
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808F3274
    nop
    lh      t6, 0x015A(s0)             # 0000015A
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    bnel    t6, $zero, lbl_808F3260
    lw      t8, 0x0024($sp)
    sh      t7, 0x015A(s0)             # 0000015A
    lw      t8, 0x0024($sp)
lbl_808F3260:
    addiu   a1, $zero, 0x0030          # a1 = 00000030
    jal     func_800495BC
    lw      a0, 0x0790(t8)             # 00000790
    beq     $zero, $zero, lbl_808F32A8
    lw      $ra, 0x001C($sp)
lbl_808F3274:
    jal     func_80035364
    or      a0, s0, $zero              # a0 = 00000000
    bnel    v0, $zero, lbl_808F32A8
    lw      $ra, 0x001C($sp)
    lh      t0, 0x015A(s0)             # 0000015A
    lw      t1, 0x0024($sp)
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    beql    t0, $zero, lbl_808F32A4
    sh      $zero, 0x015A(s0)          # 0000015A
    jal     func_800495BC
    lw      a0, 0x0790(t1)             # 00000790
    sh      $zero, 0x015A(s0)          # 0000015A
lbl_808F32A4:
    lw      $ra, 0x001C($sp)
lbl_808F32A8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808F32B8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xB630             # a1 = 0600B630
    jal     func_80028048
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop

.section .data

var_808F32F0: .word 0x004E0100, 0x00000010, 0x002C0000, 0x0000015C
.word func_808F2ED0
.word func_808F3018
.word func_808F3210
.word func_808F32B8
var_808F3310: .word 0xC8500064, 0xB0F8012C, 0xB0FC015E, 0x30F407D0

.section .rodata

var_808F3320: .word 0x44458000, 0x00000000, 0x00000000, 0x00000000

