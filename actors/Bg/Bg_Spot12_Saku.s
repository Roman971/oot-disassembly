.section .text
func_80B3D9C0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
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
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80B3DA18:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x238C             # a2 = 0600238C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jal     func_80B3D9C0
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a1, %hi(var_80B3DDC0)      # a1 = 80B40000
    addiu   a1, a1, %lo(var_80B3DDC0)  # a1 = 80B3DDC0
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80B3DA7C
    nop
    jal     func_80B3DC94
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3DA88
    lw      $ra, 0x001C($sp)
lbl_80B3DA7C:
    jal     func_80B3DACC
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_80B3DA88:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80B3DA98:
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


func_80B3DACC:
    lui     t6, %hi(func_80B3DAFC)     # t6 = 80B40000
    addiu   t6, t6, %lo(func_80B3DAFC) # t6 = 80B3DAFC
    sw      t6, 0x0154(a0)             # 00000154
    lui     $at, %hi(var_80B3DDD0)     # $at = 80B40000
    lwc1    $f4, %lo(var_80B3DDD0)($at)
    lwc1    $f6, 0x0008(a0)            # 00000008
    lwc1    $f8, 0x0010(a0)            # 00000010
    swc1    $f4, 0x0050(a0)            # 00000050
    swc1    $f6, 0x0024(a0)            # 00000024
    swc1    $f8, 0x002C(a0)            # 0000002C
    jr      $ra
    nop


func_80B3DAFC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0020($sp)
    lw      a0, 0x0024($sp)
    lh      a1, 0x001C(t6)             # 0000001C
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beql    v0, $zero, lbl_80B3DB58
    lw      $ra, 0x001C($sp)
    jal     func_80B3DB64
    lw      a0, 0x0020($sp)
    lw      t8, 0x0020($sp)
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    addiu   a1, $zero, 0x104A          # a1 = 0000104A
    sh      t7, 0x0158(t8)             # 00000158
    sw      $zero, 0x0010($sp)
    lw      a3, 0x0020($sp)
    lw      a0, 0x0024($sp)
    jal     func_8006B6FC
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    lw      $ra, 0x001C($sp)
lbl_80B3DB58:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80B3DB64:
    lh      t6, 0x0158(a0)             # 00000158
    lui     t7, %hi(func_80B3DB84)     # t7 = 80B40000
    addiu   t7, t7, %lo(func_80B3DB84) # t7 = 80B3DB84
    bne     t6, $zero, lbl_80B3DB7C
    nop
    sw      t7, 0x0154(a0)             # 00000154
lbl_80B3DB7C:
    jr      $ra
    nop


func_80B3DB84:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lui     $at, %hi(var_80B3DDD4)     # $at = 80B40000
    lwc1    $f4, %lo(var_80B3DDD4)($at)
    lui     a1, 0x3BEA                 # a1 = 3BEA0000
    lui     a2, 0x3E23                 # a2 = 3E230000
    lui     a3, 0x3B10                 # a3 = 3B100000
    ori     a3, a3, 0x2DE0             # a3 = 3B102DE0
    ori     a2, a2, 0xD70A             # a2 = 3E23D70A
    ori     a1, a1, 0x0EA2             # a1 = 3BEA0EA2
    addiu   a0, s0, 0x0050             # a0 = 00000050
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    swc1    $f0, 0x002C($sp)
    lui     $at, %hi(var_80B3DDD8)     # $at = 80B40000
    lwc1    $f6, %lo(var_80B3DDD8)($at)
    lwc1    $f8, 0x0050(s0)            # 00000050
    lui     $at, 0x4452                # $at = 44520000
    mtc1    $at, $f16                  # $f16 = 840.00
    sub.s   $f10, $f6, $f8
    mul.s   $f18, $f10, $f16
    swc1    $f18, 0x0028($sp)
    lh      a0, 0x00B6(s0)             # 000000B6
    addiu   a0, a0, 0x4000             # a0 = 00004000
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lwc1    $f6, 0x0028($sp)
    lwc1    $f4, 0x0008(s0)            # 00000008
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f8, $f0, $f6
    addiu   a0, a0, 0x4000             # a0 = 00004000
    sll     a0, a0, 16
    sra     a0, a0, 16
    sub.s   $f10, $f4, $f8
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f18, 0x0028($sp)
    lwc1    $f16, 0x0010(s0)           # 00000010
    lui     $at, %hi(var_80B3DDDC)     # $at = 80B40000
    mul.s   $f6, $f0, $f18
    or      a0, s0, $zero              # a0 = 00000000
    sub.s   $f4, $f16, $f6
    swc1    $f4, 0x002C(s0)            # 0000002C
    lwc1    $f0, 0x002C($sp)
    lwc1    $f8, %lo(var_80B3DDDC)($at)
    abs.s   $f0, $f0
    c.lt.s  $f0, $f8
    nop
    bc1f    lbl_80B3DC78
    nop
    jal     func_80B3DC94
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x280E          # a1 = 0000280E
    beq     $zero, $zero, lbl_80B3DC84
    lw      $ra, 0x0024($sp)
lbl_80B3DC78:
    jal     func_8002313C
    addiu   a1, $zero, 0x2067          # a1 = 00002067
    lw      $ra, 0x0024($sp)
lbl_80B3DC84:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80B3DC94:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lui     t6, %hi(func_80B3DD28)     # t6 = 80B40000
    addiu   t6, t6, %lo(func_80B3DD28) # t6 = 80B3DD28
    lh      a0, 0x00B6(a1)             # 000000B6
    sw      t6, 0x0154(a1)             # 00000154
    lui     $at, %hi(var_80B3DDE0)     # $at = 80B40000
    lwc1    $f4, %lo(var_80B3DDE0)($at)
    addiu   a0, a0, 0x4000             # a0 = 00004000
    sll     a0, a0, 16
    swc1    $f4, 0x0050(a1)            # 00000050
    sw      a1, 0x0018($sp)
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x429C                # $at = 429C0000
    mtc1    $at, $f8                   # $f8 = 78.00
    lw      a1, 0x0018($sp)
    mul.s   $f10, $f0, $f8
    lwc1    $f6, 0x0008(a1)            # 00000008
    lh      a0, 0x00B6(a1)             # 000000B6
    addiu   a0, a0, 0x4000             # a0 = 00004000
    sll     a0, a0, 16
    sub.s   $f16, $f6, $f10
    sra     a0, a0, 16
    jal     func_80063684              # coss?
    swc1    $f16, 0x0024(a1)           # 00000024
    lui     $at, 0x429C                # $at = 429C0000
    mtc1    $at, $f4                   # $f4 = 78.00
    lw      a1, 0x0018($sp)
    mul.s   $f8, $f0, $f4
    lwc1    $f18, 0x0010(a1)           # 00000010
    sub.s   $f6, $f18, $f8
    swc1    $f6, 0x002C(a1)            # 0000002C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80B3DD28:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80B3DD38:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lh      v0, 0x0158(a0)             # 00000158
    blez    v0, lbl_80B3DD50
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0158(a0)             # 00000158
lbl_80B3DD50:
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B3DD6C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2260             # a1 = 06002260
    jal     func_80028048
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop
    nop

.section .data

var_80B3DDA0: .word 0x01910100, 0x00000000, 0x01620000, 0x0000015C
.word func_80B3DA18
.word func_80B3DA98
.word func_80B3DD38
.word func_80B3DD6C
var_80B3DDC0: .word 0xC8500064, 0xB0F404B0, 0xB0F801F4, 0x30FC03E8

.section .rodata

var_80B3DDD0: .word 0x3DCCCCCD
var_80B3DDD4: .word 0x3A83126F
var_80B3DDD8: .word 0x3DCCCCCD
var_80B3DDDC: .word 0x38D1B717
var_80B3DDE0: .word 0x3BEA0EA2, 0x00000000, 0x00000000, 0x00000000

