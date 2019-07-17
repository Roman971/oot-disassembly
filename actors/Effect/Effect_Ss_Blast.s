.section .text
func_80B2E570:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    lw      t7, 0x0000(a3)             # 00000000
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    sw      t7, 0x0000(a2)             # 00000000
    lw      t6, 0x0004(a3)             # 00000004
    lui     v0, 0x0402                 # v0 = 04020000
    addiu   v0, v0, 0xA550             # v0 = 0401A550
    sw      t6, 0x0004(a2)             # 00000004
    lwc1    $f4, 0x0004(a2)            # 00000004
    lw      t7, 0x0008(a3)             # 00000008
    sll     t2, v0,  4
    add.s   $f8, $f4, $f6
    sw      t7, 0x0008(a2)             # 00000008
    srl     t3, t2, 28
    sll     t4, t3,  2
    swc1    $f8, 0x0004(a2)            # 00000004
    lw      t9, 0x000C(a3)             # 0000000C
    lui     t5, 0x8012                 # t5 = 80120000
    addu    t5, t5, t4
    sw      t9, 0x000C(a2)             # 0000000C
    lw      t8, 0x0010(a3)             # 00000010
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sw      t8, 0x0010(a2)             # 00000010
    lw      t9, 0x0014(a3)             # 00000014
    and     t6, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    sw      t9, 0x0014(a2)             # 00000014
    lw      t1, 0x0018(a3)             # 00000018
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t1, 0x0018(a2)             # 00000018
    lw      t0, 0x001C(a3)             # 0000001C
    sw      t0, 0x001C(a2)             # 0000001C
    lw      t1, 0x0020(a3)             # 00000020
    lui     t0, %hi(func_80B2E6CC)     # t0 = 80B30000
    addiu   t0, t0, %lo(func_80B2E6CC) # t0 = 80B2E6CC
    sw      t1, 0x0020(a2)             # 00000020
    lw      t5, 0x0C38(t5)             # 80120C38
    lui     t1, %hi(func_80B2E838)     # t1 = 80B30000
    addiu   t1, t1, %lo(func_80B2E838) # t1 = 80B2E838
    addu    t7, t5, t6
    addu    t8, t7, $at
    sw      t8, 0x0038(a2)             # 00000038
    lh      t9, 0x0032(a3)             # 00000032
    sw      t0, 0x0028(a2)             # 00000028
    sw      t1, 0x0024(a2)             # 00000024
    sh      t9, 0x005C(a2)             # 0000005C
    lbu     t2, 0x0024(a3)             # 00000024
    sh      t2, 0x0040(a2)             # 00000040
    lbu     t3, 0x0025(a3)             # 00000025
    sh      t3, 0x0042(a2)             # 00000042
    lbu     t4, 0x0026(a3)             # 00000026
    sh      t4, 0x0044(a2)             # 00000044
    lbu     t5, 0x0027(a3)             # 00000027
    sh      t5, 0x0046(a2)             # 00000046
    lbu     t6, 0x0028(a3)             # 00000028
    sh      t6, 0x0048(a2)             # 00000048
    lbu     t7, 0x0029(a3)             # 00000029
    sh      t7, 0x004A(a2)             # 0000004A
    lbu     t8, 0x002A(a3)             # 0000002A
    sh      t8, 0x004C(a2)             # 0000004C
    lbu     t9, 0x002B(a3)             # 0000002B
    sh      t9, 0x004E(a2)             # 0000004E
    lh      t1, 0x0032(a3)             # 00000032
    lbu     t0, 0x0027(a3)             # 00000027
    div     $zero, t0, t1
    mflo    t2
    sh      t2, 0x0050(a2)             # 00000050
    lh      t3, 0x002C(a3)             # 0000002C
    bne     t1, $zero, lbl_80B2E698
    nop
    break   # 0x01C00
lbl_80B2E698:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t1, $at, lbl_80B2E6B0
    lui     $at, 0x8000                # $at = 80000000
    bne     t0, $at, lbl_80B2E6B0
    nop
    break   # 0x01800
lbl_80B2E6B0:
    sh      t3, 0x0052(a2)             # 00000052
    lh      t4, 0x002E(a3)             # 0000002E
    sh      t4, 0x0054(a2)             # 00000054
    lh      t5, 0x0030(a3)             # 00000030
    sh      t5, 0x0056(a2)             # 00000056
    jr      $ra
    nop


func_80B2E6CC:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s0, 0x0014($sp)
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      a0, 0x0088($sp)
    sw      a1, 0x008C($sp)
    lw      t6, 0x0088($sp)
    lw      a0, 0x0000(t6)             # 00000000
    or      s1, a0, $zero              # s1 = 00000000
    lh      t7, 0x0052(s0)             # 00000052
    lui     $at, %hi(var_80B2E8B0)     # $at = 80B30000
    lwc1    $f8, %lo(var_80B2E8B0)($at)
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f10, $f6, $f8
    jal     func_8007E2C0
    swc1    $f10, 0x003C($sp)
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFBC
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lh      t0, 0x004E(s0)             # 0000004E
    lh      t6, 0x004A(s0)             # 0000004A
    lh      t3, 0x0048(s0)             # 00000048
    andi    t1, t0, 0x00FF             # t1 = 00000000
    lh      t0, 0x004C(s0)             # 0000004C
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sll     t4, t3, 24
    or      t5, t1, t4                 # t5 = 00000000
    sll     t8, t7, 16
    andi    t2, t0, 0x00FF             # t2 = 00000000
    sll     t3, t2,  8
    or      t9, t5, t8                 # t9 = 00000008
    or      t1, t9, t3                 # t1 = 00000008
    sw      t1, 0x0004(v1)             # 00000004
    lw      a0, 0x0088($sp)
    jal     func_8009CB3C
    or      a2, s0, $zero              # a2 = 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lh      t7, 0x0046(s0)             # 00000046
    lh      t3, 0x0042(s0)             # 00000042
    lh      t0, 0x0040(s0)             # 00000040
    andi    t5, t7, 0x00FF             # t5 = 00000000
    lh      t7, 0x0044(s0)             # 00000044
    andi    t1, t3, 0x00FF             # t1 = 00000000
    sll     t2, t0, 24
    or      t9, t5, t2                 # t9 = 00000000
    sll     t4, t1, 16
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sll     t0, t8,  8
    or      t6, t9, t4                 # t6 = 00000008
    or      t5, t6, t0                 # t5 = 00000008
    sw      t5, 0x0004(v1)             # 00000004
    jal     func_800AA764
    addiu   a0, $sp, 0x0044            # a0 = FFFFFFBC
    lwc1    $f12, 0x003C($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      v1, 0x0028($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t4, 0x0038(s0)             # 00000038
    sw      t4, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_80B2E838:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    or      a3, a2, $zero              # a3 = 00000000
    lh      a2, 0x0050(a3)             # 00000050
    sw      a3, 0x0020($sp)
    addiu   a0, a3, 0x0046             # a0 = 00000046
    jal     func_800637D4
    or      a1, $zero, $zero           # a1 = 00000000
    lw      a3, 0x0020($sp)
    lh      v0, 0x0054(a3)             # 00000054
    lh      t6, 0x0052(a3)             # 00000052
    addu    t7, t6, v0
    beq     v0, $zero, lbl_80B2E884
    sh      t7, 0x0052(a3)             # 00000052
    lh      t8, 0x0056(a3)             # 00000056
    subu    t9, v0, t8
    sh      t9, 0x0054(a3)             # 00000054
lbl_80B2E884:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

.word 0x00000004
.word func_80B2E570
.word 0x00000000, 0x00000000

.section .rodata

var_80B2E8B0: .word 0x3B23D70A, 0x00000000, 0x00000000, 0x00000000

