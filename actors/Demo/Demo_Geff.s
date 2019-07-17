.section .text
func_80B661E0:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80B661F0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      v0, 0x001C(a0)             # 0000001C
    bltz    v0, lbl_80B66210
    slti    $at, v0, 0x0009
    bnel    $at, $zero, lbl_80B66224
    sw      $zero, 0x013C(a0)          # 0000013C
lbl_80B66210:
    jal     func_80020EB4
    nop
    beq     $zero, $zero, lbl_80B6622C
    lw      $ra, 0x0014($sp)
    sw      $zero, 0x013C(a0)          # 0000013C
lbl_80B66224:
    sw      $zero, 0x0140(a0)          # 00000140
    lw      $ra, 0x0014($sp)
lbl_80B6622C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B66238:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      a0, 0x0000(a2)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0024($sp)
    lw      a0, 0x0024($sp)
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0002             # t7 = DA380002
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lw      a0, 0x0024($sp)
    lui     t2, 0xD838                 # t2 = D8380000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(a0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t0, 0x002C($sp)
    sw      t0, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a0)             # 000002C0
    ori     t2, t2, 0x0002             # t2 = D8380002
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(a0)             # 000002C0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B662D0:
    lw      v0, 0x0144(a0)             # 00000144
    lw      v1, 0x0000(a1)             # 00000000
    lw      a3, 0x02C0(v1)             # 000002C0
    sll     t8, v0,  4
    addu    t8, t8, v0
    sll     t8, t8,  2
    lui     t7, 0xDB06                 # t7 = DB060000
    addiu   t6, a3, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    ori     t7, t7, 0x0018             # t7 = DB060018
    addu    t0, a1, t8
    lui     $at, 0x0001                # $at = 00010000
    addu    t0, t0, $at
    sw      t7, 0x0000(a3)             # 00000000
    lw      t9, 0x17B4(t0)             # 000017B4
    sw      t9, 0x0004(a3)             # 00000004
    lw      t1, 0x17B4(t0)             # 000017B4
    lui     $at, 0x8000                # $at = 80000000
    addu    t2, t1, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t2, 0x0C50($at)            # 80120C50
    jr      $ra
    nop


func_80B6632C:
    sw      a1, 0x0004($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lhu     t6, 0x001C(a0)             # 0000001C
    sw      v0, 0x013C(a0)             # 0000013C
    sw      v0, 0x0140(a0)             # 00000140
    sltiu   $at, t6, 0x0008
    beq     $at, $zero, lbl_80B66468
    sll     t6, t6,  2
    lui     $at, %hi(var_80B668A0)     # $at = 80B60000
    addu    $at, $at, t6
    lw      t6, %lo(var_80B668A0)($at)
    jr      t6
    nop
var_80B66360:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBA00             # v1 = 8011BA00
    lw      t7, 0x0000(v1)             # 8011BA00
    lui     $at, %hi(var_80B668C0)     # $at = 80B60000
    lwc1    $f0, %lo(var_80B668C0)($at)
    lh      t8, 0x1462(t7)             # 00001462
    lui     $at, %hi(var_80B668C4)     # $at = 80B60000
    lwc1    $f2, %lo(var_80B668C4)($at)
    mtc1    t8, $f4                    # $f4 = 0.00
    addiu   v0, a0, 0x0050             # v0 = 00000050
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    add.s   $f10, $f8, $f2
    swc1    $f10, 0x0000(v0)           # 00000050
    lw      t9, 0x0000(v1)             # 8011BA00
    lh      t0, 0x1464(t9)             # 00001464
    mtc1    t0, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    mul.s   $f4, $f18, $f0
    add.s   $f6, $f4, $f2
    swc1    $f6, 0x0004(v0)            # 00000054
    lw      t1, 0x0000(v1)             # 8011BA00
    lh      t2, 0x1466(t1)             # 00001466
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    mul.s   $f16, $f10, $f0
    add.s   $f18, $f16, $f2
    jr      $ra
    swc1    $f18, 0x0008(v0)           # 00000058


func_80B663DC:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBA00             # v1 = 8011BA00
    lw      t3, 0x0000(v1)             # 8011BA00
    lui     $at, %hi(var_80B668C8)     # $at = 80B60000
    lwc1    $f0, %lo(var_80B668C8)($at)
    lh      t4, 0x1468(t3)             # 00001468
    lui     $at, %hi(var_80B668CC)     # $at = 80B60000
    lwc1    $f10, %lo(var_80B668CC)($at)
    mtc1    t4, $f4                    # $f4 = 0.00
    addiu   v0, a0, 0x0050             # v0 = 00000050
    lui     $at, %hi(var_80B668D0)     # $at = 80B60000
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x0000(v0)           # 00000050
    lw      t5, 0x0000(v1)             # 8011BA00
    lwc1    $f8, %lo(var_80B668D0)($at)
    lui     $at, %hi(var_80B668D4)     # $at = 80B60000
    lh      t6, 0x146A(t5)             # 0000146A
    mtc1    t6, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f0
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0004(v0)           # 00000054
    lw      t7, 0x0000(v1)             # 8011BA00
    lwc1    $f6, %lo(var_80B668D4)($at)
    lh      t8, 0x146C(t7)             # 0000146C
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    mul.s   $f4, $f18, $f0
    add.s   $f8, $f4, $f6
    jr      $ra
    swc1    $f8, 0x0008(v0)            # 00000058
lbl_80B66468:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBA00             # v1 = 8011BA00
    lw      t9, 0x0000(v1)             # 8011BA00
    lui     $at, %hi(var_80B668D8)     # $at = 80B60000
    lwc1    $f0, %lo(var_80B668D8)($at)
    lh      t0, 0x146E(t9)             # 0000146E
    lui     $at, %hi(var_80B668DC)     # $at = 80B60000
    lwc1    $f4, %lo(var_80B668DC)($at)
    mtc1    t0, $f10                   # $f10 = 0.00
    addiu   v0, a0, 0x0050             # v0 = 00000050
    lui     $at, %hi(var_80B668E0)     # $at = 80B60000
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f0
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0000(v0)            # 00000050
    lw      t1, 0x0000(v1)             # 8011BA00
    lwc1    $f18, %lo(var_80B668E0)($at)
    lui     $at, %hi(var_80B668E4)     # $at = 80B60000
    lh      t2, 0x1470(t1)             # 00001470
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    mul.s   $f16, $f10, $f0
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x0004(v0)            # 00000054
    lw      t3, 0x0000(v1)             # 8011BA00
    lwc1    $f16, %lo(var_80B668E4)($at)
    lh      t4, 0x1472(t3)             # 00001472
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    mul.s   $f10, $f8, $f0
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0008(v0)           # 00000058
    jr      $ra
    nop


func_80B664F8:
    lw      t6, 0x0148(a0)             # 00000148
    bne     t6, $zero, lbl_80B66594
    nop
    lh      v0, 0x001C(a0)             # 0000001C
    lw      v1, 0x1C64(a1)             # 00001C64
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_80B66530
    addiu   a1, $zero, 0x0174          # a1 = 00000174
    beq     v0, $at, lbl_80B66530
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $at, lbl_80B66534
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_80B66534
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80B66530:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B66534:
    beq     v1, $zero, lbl_80B66594
    nop
    lh      t7, 0x0000(v1)             # 00000000
lbl_80B66540:
    bnel    a1, t7, lbl_80B6658C
    lw      v1, 0x0124(v1)             # 00000124
    lh      t8, 0x001C(v1)             # 0000001C
    bnel    v0, t8, lbl_80B6658C
    lw      v1, 0x0124(v1)             # 00000124
    lwc1    $f4, 0x0024(a0)            # 00000024
    lwc1    $f6, 0x0024(v1)            # 00000024
    lwc1    $f10, 0x0028(a0)           # 00000028
    sub.s   $f8, $f4, $f6
    lwc1    $f4, 0x002C(a0)            # 0000002C
    swc1    $f8, 0x014C(a0)            # 0000014C
    lwc1    $f16, 0x0028(v1)           # 00000028
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x0150(a0)           # 00000150
    lwc1    $f6, 0x002C(v1)            # 0000002C
    sw      v1, 0x0148(a0)             # 00000148
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0154(a0)            # 00000154
    lw      v1, 0x0124(v1)             # 00000124
lbl_80B6658C:
    bnel    v1, $zero, lbl_80B66540
    lh      t7, 0x0000(v1)             # 00000000
lbl_80B66594:
    jr      $ra
    nop


func_80B6659C:
    sw      a1, 0x0004($sp)
    lw      v0, 0x0148(a0)             # 00000148
    lh      v1, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $zero, lbl_80B665FC
    nop
    beq     v1, $at, lbl_80B665FC
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v1, $at, lbl_80B665FC
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v1, $at, lbl_80B665FC
    nop
    lwc1    $f4, 0x0024(v0)            # 00000024
    lwc1    $f6, 0x014C(a0)            # 0000014C
    lwc1    $f16, 0x0150(a0)           # 00000150
    add.s   $f8, $f4, $f6
    lwc1    $f6, 0x0154(a0)            # 00000154
    swc1    $f8, 0x0024(a0)            # 00000024
    lwc1    $f10, 0x0028(v0)           # 00000028
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0028(a0)           # 00000028
    lwc1    $f4, 0x002C(v0)            # 0000002C
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x002C(a0)            # 0000002C
lbl_80B665FC:
    jr      $ra
    nop


func_80B66604:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B664F8
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80B6659C
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B6663C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0EA0             # a1 = 06000EA0
    jal     func_80B66238
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B6666C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      v0, 0x001C(a0)             # 0000001C
    lui     v1, %hi(var_80B66844)      # v1 = 80B60000
    sll     t6, v0,  2
    addu    v1, v1, t6
    lw      v1, %lo(var_80B66844)(v1)
    bne     v1, $zero, lbl_80B666A0
    nop
    jal     func_80020EB4
    nop
    beq     $zero, $zero, lbl_80B666AC
    lw      $ra, 0x0014($sp)
lbl_80B666A0:
    jalr    $ra, v1
    nop
    lw      $ra, 0x0014($sp)
lbl_80B666AC:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B666B8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    sw      a1, 0x003C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      v0, 0x001C(a3)             # 0000001C
    lw      a0, 0x003C($sp)
    lui     $at, 0x0001                # $at = 00010000
    lui     a1, %hi(var_80B66830)      # a1 = 80B60000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    sll     t6, v0,  1
    addu    a1, a1, t6
    addu    a0, a0, $at
    lh      a1, %lo(var_80B66830)(a1)
    sw      a0, 0x001C($sp)
    jal     func_80081628              # ObjectIndex
    sw      a3, 0x0038($sp)
    lw      a0, 0x001C($sp)
    lw      a3, 0x0038($sp)
    bgez    v0, lbl_80B66718
    or      a2, v0, $zero              # a2 = 00000000
    jal     func_80020EB4
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B66748
    lw      $ra, 0x0014($sp)
lbl_80B66718:
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0024($sp)
    jal     func_80081688
    sw      a3, 0x0038($sp)
    lw      a2, 0x0024($sp)
    beq     v0, $zero, lbl_80B66744
    lw      a3, 0x0038($sp)
    sw      a2, 0x0144(a3)             # 00000144
    lw      a1, 0x003C($sp)
    jal     func_80B6666C
    or      a0, a3, $zero              # a0 = 00000000
lbl_80B66744:
    lw      $ra, 0x0014($sp)
lbl_80B66748:
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B66754:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x013C(a0)             # 0000013C
    bltz    v0, lbl_80B6678C
    slti    $at, v0, 0x0002
    beq     $at, $zero, lbl_80B6678C
    sll     t6, v0,  2
    lui     v1, %hi(var_80B66868)      # v1 = 80B60000
    addu    v1, v1, t6
    lw      v1, %lo(var_80B66868)(v1)
    beql    v1, $zero, lbl_80B66790
    lw      $ra, 0x0014($sp)
    jalr    $ra, v1
    nop
lbl_80B6678C:
    lw      $ra, 0x0014($sp)
lbl_80B66790:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B6679C:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80B667AC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    lw      v0, 0x0140(a0)             # 00000140
    bltz    v0, lbl_80B66814
    slti    $at, v0, 0x0002
    beq     $at, $zero, lbl_80B66814
    sll     t6, v0,  2
    lui     t7, %hi(var_80B66870)      # t7 = 80B60000
    addiu   t7, t7, %lo(var_80B66870)  # t7 = 80B66870
    addu    v1, t6, t7
    lw      a2, 0x0000(v1)             # 00000000
    lui     t8, %hi(var_80B66870)      # t8 = 80B60000
    addiu   t8, t8, %lo(var_80B66870)  # t8 = 80B66870
    beql    a2, $zero, lbl_80B66818
    lw      $ra, 0x0014($sp)
    beq     v1, t8, lbl_80B6680C
    lw      a1, 0x002C($sp)
    sw      v1, 0x001C($sp)
    jal     func_80B662D0
    sw      a0, 0x0028($sp)
    lw      v1, 0x001C($sp)
    lw      a0, 0x0028($sp)
    lw      a2, 0x0000(v1)             # 00000000
lbl_80B6680C:
    jalr    $ra, a2
    lw      a1, 0x002C($sp)
lbl_80B66814:
    lw      $ra, 0x0014($sp)
lbl_80B66818:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80B66830: .word \
0x01860186, 0x01860186, 0x01860186, 0x01860186, \
0x01860000
var_80B66844: .word func_80B6632C
.word func_80B6632C
.word func_80B6632C
.word func_80B6632C
.word func_80B6632C
.word func_80B6632C
.word func_80B6632C
.word func_80B6632C
.word func_80B6632C
var_80B66868: .word func_80B666B8
.word func_80B66604
var_80B66870: .word func_80B6679C
.word func_80B6663C
var_80B66878: .word 0x01B20900, 0x00000030, 0x01860000, 0x00000158
.word func_80B661F0
.word func_80B661E0
.word func_80B66754
.word func_80B667AC
.word 0x00000000, 0x00000000

.section .rodata

var_80B668A0: .word var_80B66360
.word func_80B663DC
.word lbl_80B66468
.word var_80B66360
.word func_80B663DC
.word lbl_80B66468
.word var_80B66360
.word func_80B663DC
var_80B668C0: .word 0x3C23D70A
var_80B668C4: .word 0x3E99999A
var_80B668C8: .word 0x3C23D70A
var_80B668CC: .word 0x3E19999A
var_80B668D0: .word 0x3E947AE1
var_80B668D4: .word 0x3DF5C28F
var_80B668D8: .word 0x3C23D70A
var_80B668DC: .word 0x3DCCCCCD
var_80B668E0: .word 0x3E19999A
var_80B668E4: .word 0x3E4CCCCD, 0x00000000, 0x00000000

