.section .text
func_80AF1D00:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lui     a1, %hi(var_80AF2260)      # a1 = 80AF0000
    sw      $zero, 0x0024($sp)
    addiu   a1, a1, %lo(var_80AF2260)  # a1 = 80AF2260
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x0170             # a0 = 06000170
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lh      a1, 0x001C(s0)             # 0000001C
    sw      v0, 0x013C(s0)             # 0000013C
    lw      a0, 0x0034($sp)
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80AF1D8C
    lui     t7, %hi(func_80AF1F88)     # t7 = 80AF0000
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lui     t6, %hi(func_80AF1F88)     # t6 = 80AF0000
    addiu   t6, t6, %lo(func_80AF1F88) # t6 = 80AF1F88
    add.s   $f8, $f4, $f6
    sw      t6, 0x0158(s0)             # 00000158
    b       lbl_80AF1D9C
    swc1    $f8, 0x0028(s0)            # 00000028
lbl_80AF1D8C:
    addiu   t7, t7, %lo(func_80AF1F88) # t7 = 80AF1F88
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    sw      t7, 0x0158(s0)             # 00000158
    sb      t8, 0x0156(s0)             # 00000156
lbl_80AF1D9C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80AF1DB0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF1DE4:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      a3, 0x0044($sp)
    mtc1    a2, $f12                   # $f12 = 0.00
    or      a3, a0, $zero              # a3 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    lw      v0, 0x1C44(a3)             # 00001C44
    lw      a0, 0x003C($sp)
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFE4
    lwc1    $f4, 0x0024(v0)            # 00000024
    addiu   a2, $sp, 0x0028            # a2 = FFFFFFF0
    swc1    $f4, 0x0028($sp)
    lwc1    $f6, 0x0028(v0)            # 00000028
    add.s   $f8, $f6, $f12
    swc1    $f8, 0x002C($sp)
    lwc1    $f10, 0x002C(v0)           # 0000002C
    jal     func_8002154C
    swc1    $f10, 0x0030($sp)
    lwc1    $f0, 0x001C($sp)
    lwc1    $f16, 0x0044($sp)
    lwc1    $f18, 0x0048($sp)
    abs.s   $f0, $f0
    lui     $at, %hi(var_80AF2270)     # $at = 80AF0000
    c.lt.s  $f16, $f0
    lwc1    $f0, 0x0020($sp)
    lw      $ra, 0x0014($sp)
    bc1t    lbl_80AF1E6C
    nop
    abs.s   $f0, $f0
    c.lt.s  $f18, $f0
    lwc1    $f0, 0x0024($sp)
    bc1f    lbl_80AF1E74
    nop
lbl_80AF1E6C:
    b       lbl_80AF1E74
    lwc1    $f0, %lo(var_80AF2270)($at)
lbl_80AF1E74:
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80AF1E7C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    lw      t6, 0x1C44(a1)             # 00001C44
    sw      a1, 0x002C($sp)
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_8007943C
    sw      t6, 0x0024($sp)
    bne     v0, $zero, lbl_80AF1F74
    lw      a0, 0x002C($sp)
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f4                   # $f4 = 15.00
    lw      a1, 0x0028($sp)
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_80AF1DE4
    swc1    $f4, 0x0010($sp)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    mov.s   $f2, $f0
    abs.s   $f0, $f0
    mtc1    $zero, $f12                # $f12 = 0.00
    c.lt.s  $f0, $f6
    lw      t7, 0x0024($sp)
    lw      t9, 0x0028($sp)
    bc1fl   lbl_80AF1F78
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t8, 0x00B6(t7)             # 000000B6
    lh      t0, 0x00B6(t9)             # 000000B6
    c.lt.s  $f12, $f2
    ori     t1, $zero, 0x8000          # t1 = 00008000
    subu    v0, t8, t0
    sll     v0, v0, 16
    bc1f    lbl_80AF1F14
    sra     v0, v0, 16
    subu    v0, t1, v0
    sll     v0, v0, 16
    sra     v0, v0, 16
lbl_80AF1F14:
    bltz    v0, lbl_80AF1F24
    subu    v1, $zero, v0
    b       lbl_80AF1F24
    or      v1, v0, $zero              # v1 = 00000000
lbl_80AF1F24:
    slti    $at, v1, 0x2000
    beql    $at, $zero, lbl_80AF1F78
    or      v0, $zero, $zero           # v0 = 00000000
    c.le.s  $f12, $f2
    lui     $at, 0xBF80                # $at = BF800000
    bc1fl   lbl_80AF1F60
    mtc1    $at, $f0                   # $f0 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
    trunc.w.s $f8, $f0
    mfc1    v0, $f8
    b       lbl_80AF1F7C
    lw      $ra, 0x001C($sp)
    mtc1    $at, $f0                   # $f0 = 1.00
lbl_80AF1F60:
    nop
    trunc.w.s $f8, $f0
    mfc1    v0, $f8
    b       lbl_80AF1F7C
    lw      $ra, 0x001C($sp)
lbl_80AF1F74:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AF1F78:
    lw      $ra, 0x001C($sp)
lbl_80AF1F7C:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AF1F88:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lh      t6, 0x0154(s0)             # 00000154
    lui     t0, 0x8012                 # t0 = 80120000
    or      a0, s0, $zero              # a0 = 00000000
    beq     t6, $zero, lbl_80AF1FF8
    or      a1, a2, $zero              # a1 = 00000000
    lui     t7, %hi(func_80AF2098)     # t7 = 80AF0000
    addiu   t7, t7, %lo(func_80AF2098) # t7 = 80AF2098
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    sw      t7, 0x0158(s0)             # 00000158
    lhu     t8, 0x1402(t0)             # 8011B9D2
    or      a0, a2, $zero              # a0 = 00000000
    addu    v0, t0, t8
    lb      t9, 0x00BC(v0)             # 000000BC
    addiu   t1, t9, 0xFFFF             # t1 = FFFFFFFF
    sb      t1, 0x00BC(v0)             # 000000BC
    lh      a1, 0x001C(s0)             # 0000001C
    jal     func_800204D0
    andi    a1, a1, 0x003F             # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x287C          # a1 = 0000287C
    b       lbl_80AF2088
    lw      $ra, 0x001C($sp)
lbl_80AF1FF8:
    jal     func_80AF1E7C
    sw      a2, 0x002C($sp)
    lw      a2, 0x002C($sp)
    beq     v0, $zero, lbl_80AF2084
    or      a3, v0, $zero              # a3 = 00000000
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lhu     t2, 0x1402(t0)             # 8011B9D2
    lw      v1, 0x1C44(a2)             # 00001C44
    addiu   t5, $zero, 0xFDFD          # t5 = FFFFFDFD
    addu    t3, t0, t2
    lb      t4, 0x00BC(t3)             # 000000BC
    or      a0, a2, $zero              # a0 = 00000000
    bgtzl   t4, lbl_80AF2040
    lh      a1, 0x001C(s0)             # 0000001C
    b       lbl_80AF2084
    sh      t5, 0x0680(v1)             # 00000680
    lh      a1, 0x001C(s0)             # 0000001C
lbl_80AF2040:
    sw      a3, 0x0024($sp)
    sw      v1, 0x0020($sp)
    sra     a1, a1,  8
    jal     func_800206E8
    andi    a1, a1, 0x001F             # a1 = 00000000
    lw      v1, 0x0020($sp)
    bne     v0, $zero, lbl_80AF206C
    lw      a3, 0x0024($sp)
    addiu   t6, $zero, 0xFDDB          # t6 = FFFFFDDB
    b       lbl_80AF2084
    sh      t6, 0x0680(v1)             # 00000680
lbl_80AF206C:
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    sb      t7, 0x041C(v1)             # 0000041C
    sb      a3, 0x041D(v1)             # 0000041D
    sw      s0, 0x0420(v1)             # 00000420
    sh      t8, 0x041E(v1)             # 0000041E
lbl_80AF2084:
    lw      $ra, 0x001C($sp)
lbl_80AF2088:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AF2098:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lbu     v0, 0x0156(a0)             # 00000156
    addiu   a1, $zero, 0x2814          # a1 = 00002814
    bne     v0, $zero, lbl_80AF20BC
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_80AF20C4
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80AF20BC:
    sb      t6, 0x0156(a0)             # 00000156
    andi    v1, t6, 0x00FF             # v1 = 000000FF
lbl_80AF20C4:
    bnel    v1, $zero, lbl_80AF20E8
    lw      $ra, 0x0014($sp)
    jal     func_80022FD0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     t7, %hi(func_80AF20F4)     # t7 = 80AF0000
    addiu   t7, t7, %lo(func_80AF20F4) # t7 = 80AF20F4
    sw      t7, 0x0158(a0)             # 00000158
    lw      $ra, 0x0014($sp)
lbl_80AF20E8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF20F4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x0060             # a0 = 00000060
    lui     a1, 0x4170                 # a1 = 41700000
    lui     a2, 0x4040                 # a2 = 40400000
    jal     func_8006385C
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x000C(a3)            # 0000000C
    addiu   a0, a3, 0x0028             # a0 = 00000028
    lw      a2, 0x0060(a3)             # 00000060
    add.s   $f8, $f4, $f6
    mfc1    a1, $f8
    jal     func_8006385C
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF2150:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0158(a0)             # 00000158
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF2174:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0020($sp)
    lw      a2, 0x0020($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x002C($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lw      a2, 0x0020($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   t2, t2, 0x0040             # t2 = 06000040
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(a2)             # 000002C0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      t3, 0x0028($sp)
    lui     a2, 0x3CCC                 # a2 = 3CCC0000
    lui     $at, %hi(var_80AF2274)     # $at = 80AF0000
    lbu     t4, 0x0156(t3)             # 00000156
    ori     a2, a2, 0xCCCD             # a2 = 3CCCCCCD
    beql    t4, $zero, lbl_80AF2230
    lw      $ra, 0x0014($sp)
    lwc1    $f12, %lo(var_80AF2274)($at)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      t5, 0x0028($sp)
    lw      a0, 0x002C($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_80026DC8
    lbu     a1, 0x0156(t5)             # 00000156
    lw      $ra, 0x0014($sp)
lbl_80AF2230:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop

.section .data

var_80AF2240: .word 0x01720700, 0x00000000, 0x014B0000, 0x0000015C
.word func_80AF1D00
.word func_80AF1DB0
.word func_80AF2150
.word func_80AF2174
var_80AF2260: .word 0x40500001, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80AF2270: .word 0x7F7FFFFF
var_80AF2274: .word 0x3C23D70A, 0x00000000, 0x00000000

