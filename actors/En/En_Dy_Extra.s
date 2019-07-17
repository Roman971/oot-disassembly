.section .text
func_80B22D80:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80B22D90:
    lui     $at, %hi(var_80B23280)     # $at = 80B20000
    lwc1    $f0, %lo(var_80B23280)($at)
    sw      a1, 0x0004($sp)
    lh      t6, 0x001C(a0)             # 0000001C
    lw      t8, 0x0024(a0)             # 00000024
    swc1    $f0, 0x014C(a0)            # 0000014C
    lui     $at, %hi(var_80B23284)     # $at = 80B20000
    sh      t6, 0x0140(a0)             # 00000140
    lwc1    $f4, %lo(var_80B23284)($at)
    sw      t8, 0x0158(a0)             # 00000158
    lw      t8, 0x002C(a0)             # 0000002C
    lw      t7, 0x0028(a0)             # 00000028
    swc1    $f0, 0x0154(a0)            # 00000154
    lui     $at, %hi(var_80B23288)     # $at = 80B20000
    swc1    $f4, 0x0150(a0)            # 00000150
    sw      t8, 0x0160(a0)             # 00000160
    sw      t7, 0x015C(a0)             # 0000015C
    lwc1    $f6, %lo(var_80B23288)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     t0, %hi(func_80B22E04)     # t0 = 80B20000
    addiu   t9, $zero, 0x003C          # t9 = 0000003C
    addiu   t0, t0, %lo(func_80B22E04) # t0 = 80B22E04
    sh      t9, 0x0144(a0)             # 00000144
    sw      t0, 0x013C(a0)             # 0000013C
    swc1    $f6, 0x006C(a0)            # 0000006C
    swc1    $f8, 0x0148(a0)            # 00000148
    jr      $ra
    nop


func_80B22E04:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x006C             # a0 = 0000006C
    jal     func_80064280
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     $at, 0xC25C                # $at = C25C0000
    mtc1    $at, $f6                   # $f6 = -55.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80B22E60
    lh      t6, 0x0144(s0)             # 00000144
    mtc1    $zero, $f8                 # $f8 = 0.00
    nop
    swc1    $f8, 0x0060(s0)            # 00000060
    lh      t6, 0x0144(s0)             # 00000144
lbl_80B22E60:
    bnel    t6, $zero, lbl_80B22E88
    lw      $ra, 0x001C($sp)
    lh      t7, 0x0142(s0)             # 00000142
    lui     t9, %hi(func_80B22E98)     # t9 = 80B20000
    addiu   t8, $zero, 0x00C8          # t8 = 000000C8
    beq     t7, $zero, lbl_80B22E84
    addiu   t9, t9, %lo(func_80B22E98) # t9 = 80B22E98
    sh      t8, 0x0144(s0)             # 00000144
    sw      t9, 0x013C(s0)             # 0000013C
lbl_80B22E84:
    lw      $ra, 0x001C($sp)
lbl_80B22E88:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B22E98:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x006C             # a0 = 0000006C
    jal     func_80064280
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lh      t6, 0x0144(s0)             # 00000144
    lui     $at, %hi(var_80B2328C)     # $at = 80B20000
    beq     t6, $zero, lbl_80B22EFC
    nop
    lwc1    $f4, 0x0148(s0)            # 00000148
    lwc1    $f6, %lo(var_80B2328C)($at)
    lui     a1, 0x3CF5                 # a1 = 3CF50000
    ori     a1, a1, 0xC28F             # a1 = 3CF5C28F
    c.lt.s  $f4, $f6
    addiu   a0, s0, 0x0148             # a0 = 00000148
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    bc1f    lbl_80B22F0C
    nop
lbl_80B22EFC:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B22F40
    lw      $ra, 0x001C($sp)
lbl_80B22F0C:
    jal     func_800642F0
    ori     a2, a2, 0xCCCD             # a2 = 0000CCCD
    lui     $at, 0xC25C                # $at = C25C0000
    mtc1    $at, $f10                  # $f10 = -55.00
    lwc1    $f8, 0x0028(s0)            # 00000028
    c.lt.s  $f8, $f10
    nop
    bc1fl   lbl_80B22F40
    lw      $ra, 0x001C($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    nop
    swc1    $f16, 0x0060(s0)           # 00000060
    lw      $ra, 0x001C($sp)
lbl_80B22F40:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B22F50:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      v0, 0x0144(a0)             # 00000144
    addiu   a1, $zero, 0x00C4          # a1 = 000000C4
    beq     v0, $zero, lbl_80B22F70
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0144(a0)             # 00000144
lbl_80B22F70:
    lwc1    $f4, 0x014C(a0)            # 0000014C
    lwc1    $f6, 0x0150(a0)            # 00000150
    lwc1    $f8, 0x0154(a0)            # 00000154
    swc1    $f4, 0x0050(a0)            # 00000050
    swc1    $f6, 0x0054(a0)            # 00000054
    swc1    $f8, 0x0058(a0)            # 00000058
    jal     func_80022FD0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9
    nop
    jal     func_8002121C
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B22FBC:
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      s1, 0x0038($sp)
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    sw      a0, 0x0080($sp)
    lui     a3, 0x0602                 # a3 = 06020000
    addiu   a3, a3, 0xBFB0             # a3 = 0601BFB0
    sll     t6, a3,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t3, a3, $at
    lw      t4, 0x0080($sp)
    lui     $at, 0x8000                # $at = 80000000
    addu    a2, t9, t3
    lw      s0, 0x0000(s1)             # 00000000
    addu    a2, a2, $at
    sb      $zero, 0x0068($sp)
    lui     $at, 0x4370                # $at = 43700000
    mtc1    $at, $f6                   # $f6 = 240.00
    lwc1    $f4, 0x0148(t4)            # 00000148
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f18                  # $f18 = 255.00
    mul.s   $f8, $f4, $f6
    lui     v1, %hi(var_80B23260)      # v1 = 80B20000
    addiu   v1, v1, %lo(var_80B23260)  # v1 = 80B23260
    addiu   a3, $zero, 0x001B          # a3 = 0000001B
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a1, $sp, 0x0068            # a1 = FFFFFFE8
    trunc.w.s $f10, $f8
    mfc1    t6, $f10
    nop
    sb      t6, 0x0069($sp)
    lwc1    $f16, 0x0148(t4)           # 00000148
    mul.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    t8, $f6
    nop
    sb      t8, 0x006A($sp)
lbl_80B2306C:
    lbu     a0, 0x0000(v1)             # 80B23260
    beq     a0, $zero, lbl_80B23088
    addu    t9, a1, a0
    lbu     t3, 0x0000(t9)             # 80120000
    sll     t5, v0,  4
    addu    t6, a2, t5
    sb      t3, 0x000F(t6)             # 0000000F
lbl_80B23088:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    bne     v0, a3, lbl_80B2306C
    addiu   v1, v1, 0x0001             # v1 = 80B23261
    jal     func_8007E2C0
    lw      a0, 0x0000(s1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      v0, 0x009C(s1)             # 0000009C
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t4, $zero, 0x0010          # t4 = 00000010
    subu    $at, $zero, v0
    sll     t3, $at,  3
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    sw      t6, 0x0024($sp)
    sw      t5, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    sw      t3, 0x0020($sp)
    sw      t4, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v1, 0x005C($sp)
    sw      v0, 0x001C($sp)
    jal     func_8007EB84
    sll     a2, v0,  1
    lw      t0, 0x005C($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xE700                 # t8 = E7000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0054($sp)
    lw      t1, 0x0054($sp)
    lw      t2, 0x0080($sp)
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    ori     t6, t6, 0x0080             # t6 = FA000080
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lh      t4, 0x0140(t2)             # 00000140
    lui     t8, %hi(var_80B23250)      # t8 = 80B20000
    addiu   t8, t8, %lo(var_80B23250)  # t8 = 80B23250
    sll     t7, t4,  2
    addu    a0, t7, t8
    lbu     t5, 0x0002(a0)             # 00000002
    lbu     t4, 0x0000(a0)             # 00000000
    sll     t3, t5,  8
    lbu     t5, 0x0001(a0)             # 00000001
    sll     t7, t4, 24
    or      t8, t3, t7                 # t8 = 00000008
    sll     t6, t5, 16
    or      t4, t8, t6                 # t4 = FA000088
    ori     t3, t4, 0x00FF             # t3 = FA0000FF
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    lui     t6, %hi(var_80B23258)      # t6 = 80B20000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lh      t5, 0x0140(t2)             # 00000140
    addiu   t6, t6, %lo(var_80B23258)  # t6 = 80B23258
    lui     t4, 0xDE00                 # t4 = DE000000
    sll     t8, t5,  2
    addu    a1, t8, t6
    lbu     t3, 0x0002(a1)             # 00000002
    lbu     t5, 0x0000(a1)             # 00000000
    sll     t7, t3,  8
    lbu     t3, 0x0001(a1)             # 00000001
    sll     t8, t5, 24
    or      t6, t7, t8                 # t6 = 00000008
    sll     t9, t3, 16
    or      t5, t6, t9                 # t5 = FB000008
    ori     t7, t5, 0x0080             # t7 = FB000088
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0x0602                 # t3 = 06020000
    addiu   t3, t3, 0xC160             # t3 = 0601C160
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp += 0x80

.section .data

var_80B23230: .word 0x01840600, 0x00000030, 0x000A0000, 0x00000164
.word func_80B22D90
.word func_80B22D80
.word func_80B22F50
.word func_80B22FBC
var_80B23250: .word 0xFFFFAAFF, 0xFFFFAAFF
var_80B23258: .word 0xFF64FFFF, 0x64FFFFFF
var_80B23260: .word \
0x02010102, 0x00000201, 0x00020100, 0x02010002, \
0x01000201, 0x00020100, 0x01020000, 0x00000000

.section .rodata

var_80B23280: .word 0x3CCCCCCD
var_80B23284: .word 0x3D1FBE77
var_80B23288: .word 0xBE4CCCCD
var_80B2328C: .word 0x3CA3D70A

