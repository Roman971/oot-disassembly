.section .text
func_80B80CF0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x07A0(a2)             # 000007A0
    addiu   a1, $zero, 0x0021          # a1 = 00000021
    sll     t7, t6,  2
    addu    t8, a2, t7
    lw      a0, 0x0790(t8)             # 00000790
    jal     func_800495BC
    sw      a0, 0x0024($sp)
    lh      t9, 0x002E($sp)
    lui     t1, %hi(var_80B84018)      # t1 = 80B80000
    addiu   t1, t1, %lo(var_80B84018)  # t1 = 80B84018
    sll     t0, t9,  3
    subu    t0, t0, t9
    sll     t0, t0,  2
    addu    v0, t0, t1
    lw      a0, 0x0024($sp)
    lw      t3, 0x0000(v0)             # 00000000
    addiu   v1, $sp, 0x0018            # v1 = FFFFFFF0
    sw      t3, 0x0050(a0)             # 00000050
    lw      t2, 0x0004(v0)             # 00000004
    sw      t2, 0x0054(a0)             # 00000054
    lw      t3, 0x0008(v0)             # 00000008
    sw      t3, 0x0058(a0)             # 00000058
    lw      t5, 0x000C(v0)             # 0000000C
    lw      t4, 0x0010(v0)             # 00000010
    sw      t5, 0x0000(v1)             # FFFFFFF0
    lw      t5, 0x0014(v0)             # 00000014
    lw      t7, 0x0000(v1)             # FFFFFFF0
    sw      t4, 0x0004(v1)             # FFFFFFF4
    sw      t5, 0x0008(v1)             # FFFFFFF8
    sw      t7, 0x0074(a0)             # 00000074
    lw      t6, 0x0004(v1)             # FFFFFFF4
    sw      t6, 0x0078(a0)             # 00000078
    lw      t7, 0x0008(v1)             # FFFFFFF8
    sw      t7, 0x007C(a0)             # 0000007C
    lw      t9, 0x0000(v1)             # FFFFFFF0
    sw      t9, 0x005C(a0)             # 0000005C
    lw      t8, 0x0004(v1)             # FFFFFFF4
    sw      t8, 0x0060(a0)             # 00000060
    lw      t9, 0x0008(v1)             # FFFFFFF8
    sw      t9, 0x0064(a0)             # 00000064
    lh      t0, 0x0018(v0)             # 00000018
    sh      t0, 0x015A(a0)             # 0000015A
    lh      t1, 0x001A(v0)             # 0000001A
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x00FC(a0)            # 000000FC
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80B80DC8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x07A0(a2)             # 000007A0
    lw      t9, 0x1C44(a2)             # 00001C44
    addiu   a1, $zero, 0x0025          # a1 = 00000025
    sll     t7, t6,  2
    addu    t8, a2, t7
    lw      a0, 0x0790(t8)             # 00000790
    sw      t9, 0x0020($sp)
    jal     func_800495BC
    sw      a0, 0x0024($sp)
    jal     func_800499F0
    lw      a0, 0x0024($sp)
    lh      t0, 0x002E($sp)
    lui     t2, %hi(var_80B84FC0)      # t2 = 80B80000
    addiu   t2, t2, %lo(var_80B84FC0)  # t2 = 80B84FC0
    sll     t1, t0,  2
    subu    t1, t1, t0
    sll     t1, t1,  2
    addu    v0, t1, t2
    lh      t3, 0x0008(v0)             # 00000008
    lw      a1, 0x0000(v0)             # 00000000
    lw      a2, 0x0004(v0)             # 00000004
    lw      a0, 0x0024($sp)
    lw      a3, 0x0020($sp)
    jal     func_80049A00
    sw      t3, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80B80E4C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_800597C0
    addiu   a1, $zero, 0x0016          # a1 = 00000016
    beq     v0, $zero, lbl_80B80E70
    andi    v1, v0, 0xFFFF             # v1 = 00000000
    beq     $zero, $zero, lbl_80B80EE0
    or      v0, v1, $zero              # v0 = 00000000
lbl_80B80E70:
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0x8BF0             # a0 = 800F8BF0
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x598C(v1)            # 8011A674
    lw      t6, 0x0048(a0)             # 800F8C38
    or      v0, $zero, $zero           # v0 = 00000000
    and     t7, t6, v1
    beql    t7, $zero, lbl_80B80E9C
    lw      t8, 0x004C(a0)             # 800F8C3C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      t8, 0x004C(a0)             # 800F8C3C
lbl_80B80E9C:
    and     t9, t8, v1
    beql    t9, $zero, lbl_80B80EB4
    lw      t0, 0x0050(a0)             # 800F8C40
    addiu   v0, v0, 0x0001             # v0 = 00000002
    andi    v0, v0, 0xFFFF             # v0 = 00000002
    lw      t0, 0x0050(a0)             # 800F8C40
lbl_80B80EB4:
    and     t1, t0, v1
    beq     t1, $zero, lbl_80B80EC8
    addiu   v1, $zero, 0x703C          # v1 = 0000703C
    addiu   v0, v0, 0x0001             # v0 = 00000003
    andi    v0, v0, 0xFFFF             # v0 = 00000003
lbl_80B80EC8:
    slti    $at, v0, 0x0002
    bne     $at, $zero, lbl_80B80EDC
    nop
    beq     $zero, $zero, lbl_80B80EDC
    addiu   v1, $zero, 0x703D          # v1 = 0000703D
lbl_80B80EDC:
    andi    v0, v1, 0xFFFF             # v0 = 0000703D
lbl_80B80EE0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B80EF0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_800DD464
    addiu   a0, a1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80B80F20
    lw      $ra, 0x0014($sp)
    beq     $zero, $zero, lbl_80B80F24
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B80F20:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B80F24:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80B80F2C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      v0, 0x0200(a2)             # 00000200
    blez    v0, lbl_80B80F4C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80B80F50
    sh      t6, 0x0200(a2)             # 00000200
lbl_80B80F4C:
    sh      $zero, 0x0200(a2)          # 00000200
lbl_80B80F50:
    lh      v0, 0x0200(a2)             # 00000200
    slti    $at, v0, 0x0003
    beql    $at, $zero, lbl_80B80F6C
    lbu     t7, 0x01FD(a2)             # 000001FD
    sb      v0, 0x01FB(a2)             # 000001FB
    sb      v0, 0x01FA(a2)             # 000001FA
    lbu     t7, 0x01FD(a2)             # 000001FD
lbl_80B80F6C:
    sltiu   $at, t7, 0x0007
    beq     $at, $zero, lbl_80B81028
    sll     t7, t7,  2
    lui     $at, %hi(var_80B850B0)     # $at = 80B80000
    addu    $at, $at, t7
    lw      t7, %lo(var_80B850B0)($at)
    jr      t7
    nop
var_80B80F8C:
    bne     v0, $zero, lbl_80B81028
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    jal     func_80063BF0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    beq     $zero, $zero, lbl_80B81028
    sh      v0, 0x0200(a2)             # 00000200
var_80B80FAC:
    bne     v0, $zero, lbl_80B81028
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sb      t9, 0x01FB(a2)             # 000001FB
    beq     $zero, $zero, lbl_80B81028
    sb      t9, 0x01FA(a2)             # 000001FA
var_80B80FC0:
    bne     v0, $zero, lbl_80B81028
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    sb      t0, 0x01FA(a2)             # 000001FA
    beq     $zero, $zero, lbl_80B81028
    sb      t1, 0x01FB(a2)             # 000001FB
var_80B80FD8:
    bne     v0, $zero, lbl_80B81028
    addiu   t2, $zero, 0x0006          # t2 = 00000006
    addiu   t3, $zero, 0x0005          # t3 = 00000005
    sb      t2, 0x01FA(a2)             # 000001FA
    beq     $zero, $zero, lbl_80B81028
    sb      t3, 0x01FB(a2)             # 000001FB
var_80B80FF0:
    bne     v0, $zero, lbl_80B81028
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    sb      t5, 0x01FB(a2)             # 000001FB
    beq     $zero, $zero, lbl_80B81028
    sb      t5, 0x01FA(a2)             # 000001FA
var_80B81004:
    bne     v0, $zero, lbl_80B81028
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sb      t7, 0x01FB(a2)             # 000001FB
    beq     $zero, $zero, lbl_80B81028
    sb      t7, 0x01FA(a2)             # 000001FA
var_80B81018:
    slti    $at, v0, 0x0003
    bnel    $at, $zero, lbl_80B8102C
    lbu     v0, 0x01FE(a2)             # 000001FE
    sh      $zero, 0x0200(a2)          # 00000200
lbl_80B81028:
    lbu     v0, 0x01FE(a2)             # 000001FE
lbl_80B8102C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    beq     v0, $at, lbl_80B81058
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B81060
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80B81068
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    beq     $zero, $zero, lbl_80B8106C
    sb      $zero, 0x01FC(a2)          # 000001FC
lbl_80B81058:
    beq     $zero, $zero, lbl_80B8106C
    sb      t8, 0x01FC(a2)             # 000001FC
lbl_80B81060:
    beq     $zero, $zero, lbl_80B8106C
    sb      t9, 0x01FC(a2)             # 000001FC
lbl_80B81068:
    sb      t0, 0x01FC(a2)             # 000001FC
lbl_80B8106C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B8107C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lbu     t6, 0x0171(a1)             # 00000171
    addiu   a2, a1, 0x013C             # a2 = 0000013C
    lui     a3, 0x3F80                 # a3 = 3F800000
    ori     t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x0171(a1)             # 00000171
    jal     func_8008B778
    lw      a0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B810BC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x001C($sp)
    addiu   a1, a0, 0x01D0             # a1 = 000001D0
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lw      v0, 0x1C44(t6)             # 00001C44
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    lw      t8, 0x0024(v0)             # 00000024
    sw      t8, 0x01E8(a0)             # 000001E8
    lw      t7, 0x0028(v0)             # 00000028
    sw      t7, 0x01EC(a0)             # 000001EC
    lw      t8, 0x002C(v0)             # 0000002C
    jal     func_80027854
    sw      t8, 0x01F0(a0)             # 000001F0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B81108:
    lw      t6, 0x000C(a0)             # 0000000C
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0000(a1)            # 00000000
    lw      t7, 0x0010(a0)             # 00000010
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0004(a1)           # 00000004
    lw      t8, 0x0014(a0)             # 00000014
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0008(a1)           # 00000008
    jr      $ra
    nop


func_80B8114C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0030($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      s0, 0x1C44(a3)             # 00001C44
    sw      a3, 0x0034($sp)
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x0030($sp)
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_800218EC
    sw      s0, 0x002C($sp)
    lw      v0, 0x0030($sp)
    lw      t7, 0x0024(v0)             # 00000024
    sw      t7, 0x0024(s0)             # 00000024
    lw      t6, 0x0028(v0)             # 00000028
    sw      t6, 0x0028(s0)             # 00000028
    lw      t7, 0x002C(v0)             # 0000002C
    sw      t7, 0x002C(s0)             # 0000002C
    lh      a0, 0x00B6(v0)             # 000000B6
    jal     func_800636C4              # sins?
    sh      a0, 0x0026($sp)
    lui     $at, 0x4260                # $at = 42600000
    mtc1    $at, $f6                   # $f6 = 56.00
    lwc1    $f4, 0x0024(s0)            # 00000024
    lh      a0, 0x0026($sp)
    mul.s   $f8, $f6, $f0
    add.s   $f10, $f4, $f8
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(s0)           # 00000024
    lui     $at, 0x4260                # $at = 42600000
    mtc1    $at, $f18                  # $f18 = 56.00
    lwc1    $f16, 0x002C(s0)           # 0000002C
    mtc1    $zero, $f2                 # $f2 = 0.00
    mul.s   $f6, $f18, $f0
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    swc1    $f2, 0x0068(s0)            # 00000068
    add.s   $f4, $f16, $f6
    swc1    $f4, 0x002C(s0)            # 0000002C
    lw      t8, 0x002C($sp)
    swc1    $f2, 0x0828(t8)            # 00000828
    jal     func_80B80DC8
    lw      a0, 0x0034($sp)
    jal     func_80099620
    addiu   a0, $zero, 0x0020          # a0 = 00000020
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    lw      t9, 0x0030($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      $zero, 0x0204(t9)          # 00000204
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80B81224:
    lw      v0, 0x0144(a0)             # 00000144
    lui     t6, 0x0602                 # t6 = 06020000
    addiu   t6, t6, 0xB874             # t6 = 0601B874
    beq     t6, v0, lbl_80B812E0
    lui     t7, 0x0602                 # t7 = 06020000
    addiu   t7, t7, 0xBCF0             # t7 = 0601BCF0
    beq     t7, v0, lbl_80B812E0
    lui     t8, 0x0601                 # t8 = 06010000
    addiu   t8, t8, 0x25E4             # t8 = 060125E4
    beq     t8, v0, lbl_80B812E0
    lui     t9, 0x0601                 # t9 = 06010000
    addiu   t9, t9, 0x2E58             # t9 = 06012E58
    beq     t9, v0, lbl_80B812E0
    lui     t0, 0x0601                 # t0 = 06010000
    addiu   t0, t0, 0x5F14             # t0 = 06015F14
    beq     t0, v0, lbl_80B812E0
    lui     t1, 0x0601                 # t1 = 06010000
    addiu   t1, t1, 0x69B4             # t1 = 060169B4
    beq     t1, v0, lbl_80B812E0
    lui     t2, 0x0601                 # t2 = 06010000
    addiu   t2, t2, 0x6D08             # t2 = 06016D08
    beq     t2, v0, lbl_80B812E0
    lui     t3, 0x0602                 # t3 = 06020000
    addiu   t3, t3, 0x805C             # t3 = 0601805C
    beq     t3, v0, lbl_80B812E0
    lui     t4, 0x0602                 # t4 = 06020000
    addiu   t4, t4, 0xA2FC             # t4 = 0601A2FC
    beq     t4, v0, lbl_80B812E0
    lui     t5, 0x0602                 # t5 = 06020000
    addiu   t5, t5, 0xAAE0             # t5 = 0601AAE0
    beq     t5, v0, lbl_80B812E0
    lui     t6, 0x0602                 # t6 = 06020000
    addiu   t6, t6, 0xCE08             # t6 = 0601CE08
    beq     t6, v0, lbl_80B812E0
    lui     t7, 0x0602                 # t7 = 06020000
    addiu   t7, t7, 0x8898             # t7 = 06018898
    beq     t7, v0, lbl_80B812E0
    lui     t8, 0x0602                 # t8 = 06020000
    addiu   t8, t8, 0x910C             # t8 = 0601910C
    beq     t8, v0, lbl_80B812E0
    lui     t9, 0x0601                 # t9 = 06010000
    addiu   t9, t9, 0xF0A4             # t9 = 0600F0A4
    beq     t9, v0, lbl_80B812E0
    lui     t0, 0x0601                 # t0 = 06010000
    addiu   t0, t0, 0xF894             # t0 = 0600F894
    bnel    t0, v0, lbl_80B812EC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B812E0:
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B812E8:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B812EC:
    jr      $ra
    nop


func_80B812F4:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s1, 0x0028($sp)
    sw      a1, 0x0044($sp)
    addiu   s1, s0, 0x013C             # s1 = 0000013C
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   t6, s0, 0x0208             # t6 = 00000208
    addiu   t7, s0, 0x0274             # t7 = 00000274
    addiu   t8, $zero, 0x0012          # t8 = 00000012
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a2, a2, 0xE038             # a2 = 0600E038
    or      a1, s1, $zero              # a1 = 0000013C
    lw      a0, 0x0044($sp)
    jal     func_8008C788
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x4190                 # a3 = 41900000
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    or      a0, s1, $zero              # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0015          # a2 = 00000015
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      a1, 0x0030($sp)
    jal     func_8004AB7C
    lw      a0, 0x0044($sp)
    lui     a3, %hi(var_80B83CB0)      # a3 = 80B80000
    lw      a1, 0x0030($sp)
    addiu   a3, a3, %lo(var_80B83CB0)  # a3 = 80B83CB0
    lw      a0, 0x0044($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, %hi(var_80B83CDC)      # a2 = 80B80000
    addiu   a2, a2, %lo(var_80B83CDC)  # a2 = 80B83CDC
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050370
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   t9, $zero, 0x0006          # t9 = 00000006
    ori     t0, $zero, 0xFFFF          # t0 = 0000FFFF
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sb      t9, 0x001F(s0)             # 0000001F
    sh      t0, 0x010E(s0)             # 0000010E
    sb      $zero, 0x01FE(s0)          # 000001FE
    sb      $zero, 0x01FD(s0)          # 000001FD
    lw      t2, 0x1360(v0)             # 8011B930
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    slti    $at, t2, 0x0004
    bne     $at, $zero, lbl_80B81408
    or      a0, s1, $zero              # a0 = 0000013C
    jal     func_80027C98
    or      a2, $zero, $zero           # a2 = 00000000
    lui     t3, %hi(func_80B83664)     # t3 = 80B80000
    addiu   t3, t3, %lo(func_80B83664) # t3 = 80B83664
    beq     $zero, $zero, lbl_80B8149C
    sw      t3, 0x0180(s0)             # 00000180
lbl_80B81408:
    lhu     t4, 0x0EDC(v0)             # 00000EDC
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    andi    t5, t4, 0x0001             # t5 = 00000000
    beq     t5, $zero, lbl_80B81438
    or      a0, s1, $zero              # a0 = 0000013C
    jal     func_80027C98
    or      a2, $zero, $zero           # a2 = 00000000
    lui     t6, %hi(func_80B835EC)     # t6 = 80B80000
    addiu   t6, t6, %lo(func_80B835EC) # t6 = 80B835EC
    beq     $zero, $zero, lbl_80B8149C
    sw      t6, 0x0180(s0)             # 00000180
lbl_80B81438:
    lw      t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x05F0         # $at = 000005F0
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    beq     t7, $at, lbl_80B81468
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s1, $zero              # a0 = 0000013C
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    jal     func_80027C98
    addiu   a2, $zero, 0x0015          # a2 = 00000015
    sb      $zero, 0x01F9(s0)          # 000001F9
    beq     $zero, $zero, lbl_80B81490
    sb      $zero, 0x01F8(s0)          # 000001F8
lbl_80B81468:
    jal     func_80B8114C
    lw      a1, 0x0044($sp)
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    or      a0, s1, $zero              # a0 = 0000013C
    jal     func_80027C98
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sb      t8, 0x01F9(s0)             # 000001F9
    sb      $zero, 0x01F8(s0)          # 000001F8
lbl_80B81490:
    lui     t9, %hi(func_80B83374)     # t9 = 80B80000
    addiu   t9, t9, %lo(func_80B83374) # t9 = 80B83374
    sw      t9, 0x0180(s0)             # 00000180
lbl_80B8149C:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80B814B0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x0184             # a1 = 00000184
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B814DC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    lw      a1, 0x014C(a2)             # 0000014C
    jal     func_8008D6A8
    sw      a0, 0x001C($sp)
    bne     v0, $zero, lbl_80B8150C
    lw      a0, 0x001C($sp)
    beq     $zero, $zero, lbl_80B81520
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B8150C:
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    jal     func_80027C98
    lw      a2, 0x0024($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B81520:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80B81530:
    lwc1    $f2, 0x014C(a0)            # 0000014C
    lui     $at, 0xBF80                # $at = BF800000
    lwc1    $f0, 0x0148(a0)            # 00000148
    mtc1    $at, $f4                   # $f4 = -1.00
    swc1    $f2, 0x0148(a0)            # 00000148
    swc1    $f2, 0x0154(a0)            # 00000154
    swc1    $f0, 0x014C(a0)            # 0000014C
    swc1    $f4, 0x0158(a0)            # 00000158
    jr      $ra
    nop


func_80B81558:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      s0, 0x1C44(a1)             # 00001C44
    sw      a3, 0x0030($sp)
    sw      a1, 0x0034($sp)
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80022930
    sw      s0, 0x002C($sp)
    lw      a1, 0x0034($sp)
    bne     v0, $zero, lbl_80B81634
    lw      a3, 0x0030($sp)
    lh      t6, 0x008A(a3)             # 0000008A
    lh      t7, 0x00B6(a3)             # 000000B6
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    t7, $f8                    # $f8 = 0.00
    cvt.s.w $f6, $f4
    cvt.s.w $f10, $f8
    sub.s   $f16, $f6, $f10
    trunc.w.s $f18, $f16
    mfc1    v0, $f18
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80B815D0
    subu    v1, $zero, v0
    sll     v1, v0, 16
    beq     $zero, $zero, lbl_80B815D8
    sra     v1, v1, 16
lbl_80B815D0:
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_80B815D8:
    lwc1    $f4, 0x0028(a3)            # 00000028
    lwc1    $f8, 0x0028(s0)            # 00000028
    slti    $at, v1, 0x3FFC
    c.eq.s  $f4, $f8
    nop
    bc1f    lbl_80B815FC
    nop
    bnel    $at, $zero, lbl_80B81608
    lh      t9, 0x01C4(a3)             # 000001C4
lbl_80B815FC:
    beq     $zero, $zero, lbl_80B816A4
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t9, 0x01C4(a3)             # 000001C4
lbl_80B81608:
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f16                  # $f16 = 60.00
    mtc1    t9, $f6                    # $f6 = 0.00
    or      a0, a3, $zero              # a0 = 00000000
    cvt.s.w $f10, $f6
    add.s   $f18, $f10, $f16
    mfc1    a2, $f18
    jal     func_80022A68
    nop
    beq     $zero, $zero, lbl_80B816A4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B81634:
    lw      t1, 0x0024(a3)             # 00000024
    sw      t1, 0x0024(s0)             # 00000024
    lw      t0, 0x0028(a3)             # 00000028
    sw      t0, 0x0028(s0)             # 00000028
    lw      t1, 0x002C(a3)             # 0000002C
    sw      t1, 0x002C(s0)             # 0000002C
    lh      a0, 0x00B6(a3)             # 000000B6
    jal     func_800636C4              # sins?
    sh      a0, 0x0026($sp)
    lui     $at, 0x4260                # $at = 42600000
    mtc1    $at, $f8                   # $f8 = 56.00
    lwc1    $f4, 0x0024(s0)            # 00000024
    lh      a0, 0x0026($sp)
    mul.s   $f6, $f8, $f0
    add.s   $f10, $f4, $f6
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(s0)           # 00000024
    lui     $at, 0x4260                # $at = 42600000
    mtc1    $at, $f18                  # $f18 = 56.00
    lwc1    $f16, 0x002C(s0)           # 0000002C
    mtc1    $zero, $f2                 # $f2 = 0.00
    mul.s   $f8, $f18, $f0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    swc1    $f2, 0x0068(s0)            # 00000068
    add.s   $f4, $f16, $f8
    swc1    $f4, 0x002C(s0)            # 0000002C
    lw      t2, 0x002C($sp)
    swc1    $f2, 0x0828(t2)            # 00000828
lbl_80B816A4:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80B816B8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     v0, 0x01F8(s0)             # 000001F8
    sltiu   $at, v0, 0x0007
    beq     $at, $zero, lbl_80B81984
    sll     t6, v0,  2
    lui     $at, %hi(var_80B850CC)     # $at = 80B80000
    addu    $at, $at, t6
    lw      t6, %lo(var_80B850CC)($at)
    jr      t6
    nop
var_80B816F4:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lwc1    $f6, 0x0154(s0)            # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f4, $f6
    nop
    bc1fl   lbl_80B81720
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x686A          # a1 = 0000686A
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B81720:
    jal     func_80B814DC
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    bne     v0, $zero, lbl_80B81738
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B81984
    lbu     v0, 0x01F8(s0)             # 000001F8
lbl_80B81738:
    addiu   a1, $zero, 0x702E          # a1 = 0000702E
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t7, 0x01F8(s0)             # 000001F8
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x01F8(s0)             # 000001F8
    beq     $zero, $zero, lbl_80B81984
    andi    v0, t8, 0x00FF             # v0 = 00000001
var_80B81758:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B817A4
    nop
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B817A4
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B80CF0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x702F          # a1 = 0000702F
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t9, 0x01F8(s0)             # 000001F8
    sh      $zero, 0x0204(s0)          # 00000204
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sb      t0, 0x01F8(s0)             # 000001F8
lbl_80B817A4:
    beq     $zero, $zero, lbl_80B81984
    lbu     v0, 0x01F8(s0)             # 000001F8
var_80B817AC:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B81840
    nop
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B81840
    lui     t4, 0x8012                 # t4 = 80120000
    lui     v0, 0x0200                 # v0 = 02000000
    addiu   v0, v0, 0x3994             # v0 = 02003994
    sll     t1, v0,  4
    srl     t2, t1, 28
    sll     t3, t2,  2
    addu    t4, t4, t3
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t4, 0x0C38(t4)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t5, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t4, t5
    addu    t7, t6, $at
    sw      t7, 0x1D68(s1)             # 00001D68
    lui     $at, 0x8012                # $at = 80120000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sb      t8, -0x461C($at)           # 8011B9E4
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B80DC8
    or      a1, $zero, $zero           # a1 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t9, $zero, 0x0037          # t9 = 00000037
    sb      t9, 0x03DC($at)            # 000103DC
    lbu     t0, 0x01F8(s0)             # 000001F8
    sh      $zero, 0x0204(s0)          # 00000204
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sb      t1, 0x01F8(s0)             # 000001F8
lbl_80B81840:
    beq     $zero, $zero, lbl_80B81984
    lbu     v0, 0x01F8(s0)             # 000001F8
var_80B81848:
    lh      t2, 0x0204(s0)             # 00000204
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x70F9          # a1 = 000070F9
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sh      t3, 0x0204(s0)             # 00000204
    lh      t4, 0x0204(s0)             # 00000204
    slti    $at, t4, 0x002D
    bne     $at, $zero, lbl_80B81880
    nop
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t5, 0x01F8(s0)             # 000001F8
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sb      t6, 0x01F8(s0)             # 000001F8
lbl_80B81880:
    beq     $zero, $zero, lbl_80B81984
    lbu     v0, 0x01F8(s0)             # 000001F8
var_80B81888:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B818D4
    nop
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B818D4
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B80DC8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t7, $zero, 0x0037          # t7 = 00000037
    sb      t7, 0x03DC($at)            # 000103DC
    lbu     t8, 0x01F8(s0)             # 000001F8
    sh      $zero, 0x0204(s0)          # 00000204
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x01F8(s0)             # 000001F8
lbl_80B818D4:
    beq     $zero, $zero, lbl_80B81984
    lbu     v0, 0x01F8(s0)             # 000001F8
var_80B818DC:
    lh      t0, 0x0204(s0)             # 00000204
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x70FA          # a1 = 000070FA
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x0204(s0)             # 00000204
    lh      t2, 0x0204(s0)             # 00000204
    slti    $at, t2, 0x000A
    bne     $at, $zero, lbl_80B81914
    nop
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t3, 0x01F8(s0)             # 000001F8
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sb      t4, 0x01F8(s0)             # 000001F8
lbl_80B81914:
    beq     $zero, $zero, lbl_80B81984
    lbu     v0, 0x01F8(s0)             # 000001F8
var_80B8191C:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80B81984
    lbu     v0, 0x01F8(s0)             # 000001F8
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B81980
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B80CF0
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0016          # a2 = 00000016
    lbu     t5, 0x01F8(s0)             # 000001F8
    sb      $zero, 0x01FE(s0)          # 000001FE
    sh      $zero, 0x0204(s0)          # 00000204
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sb      t6, 0x01F8(s0)             # 000001F8
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x70FB          # a1 = 000070FB
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
lbl_80B81980:
    lbu     v0, 0x01F8(s0)             # 000001F8
lbl_80B81984:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     v0, $at, lbl_80B81998
    lw      $ra, 0x001C($sp)
    beq     $zero, $zero, lbl_80B8199C
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80B81998:
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B8199C:
    or      v0, v1, $zero              # v0 = 00000000
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80B819B0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     v0, 0x01F8(s0)             # 000001F8
    sltiu   $at, v0, 0x000E
    beq     $at, $zero, lbl_80B81EB0
    sll     t6, v0,  2
    lui     $at, %hi(var_80B850E8)     # $at = 80B80000
    addu    $at, $at, t6
    lw      t6, %lo(var_80B850E8)($at)
    jr      t6
    nop
var_80B819EC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B814DC
    addiu   a1, $zero, 0x0019          # a1 = 00000019
    beq     v0, $zero, lbl_80B81A0C
    nop
    lbu     t7, 0x01F8(s0)             # 000001F8
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x01F8(s0)             # 000001F8
lbl_80B81A0C:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B81A58
    nop
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B81A58
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B80CF0
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t9, $zero, 0x0037          # t9 = 00000037
    sb      t9, 0x03DC($at)            # 000103DC
    addiu   t0, $zero, 0x0028          # t0 = 00000028
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sh      t0, 0x0202(s0)             # 00000202
    sb      t1, 0x01F8(s0)             # 000001F8
lbl_80B81A58:
    beq     $zero, $zero, lbl_80B81EB0
    lbu     v0, 0x01F8(s0)             # 000001F8
var_80B81A60:
    lh      v0, 0x0202(s0)             # 00000202
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x7030          # a1 = 00007030
    bne     v0, $zero, lbl_80B81A7C
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
    beq     $zero, $zero, lbl_80B81A84
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B81A7C:
    sh      t2, 0x0202(s0)             # 00000202
    lh      v1, 0x0202(s0)             # 00000202
lbl_80B81A84:
    bne     v1, $zero, lbl_80B81AA0
    nop
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t3, 0x01F8(s0)             # 000001F8
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sb      t4, 0x01F8(s0)             # 000001F8
lbl_80B81AA0:
    beq     $zero, $zero, lbl_80B81EB0
    lbu     v0, 0x01F8(s0)             # 000001F8
var_80B81AA8:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80B81ACC
    nop
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80B81AD4
    lui     t5, 0x0001                 # t5 = 00010000
lbl_80B81ACC:
    beq     $zero, $zero, lbl_80B81EB0
    lbu     v0, 0x01F8(s0)             # 000001F8
lbl_80B81AD4:
    addu    t5, t5, s1
    lbu     t5, 0x04BD(t5)             # 000104BD
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    or      a0, s1, $zero              # a0 = 00000000
    bne     t5, $zero, lbl_80B81B38
    nop
    jal     func_80B80CF0
    or      a0, s1, $zero              # a0 = 00000000
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x001C          # a2 = 0000001C
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      $zero, 0x0200(s0)          # 00000200
    sb      t6, 0x01FD(s0)             # 000001FD
    sb      t7, 0x01FE(s0)             # 000001FE
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x7032          # a1 = 00007032
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    beq     $zero, $zero, lbl_80B81B78
    sb      t8, 0x01F8(s0)             # 000001F8
lbl_80B81B38:
    jal     func_80B80CF0
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0009          # a2 = 00000009
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sb      t9, 0x01FE(s0)             # 000001FE
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x7031          # a1 = 00007031
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t0, 0x01F8(s0)             # 000001F8
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sb      t1, 0x01F8(s0)             # 000001F8
lbl_80B81B78:
    beq     $zero, $zero, lbl_80B81EB0
    lbu     v0, 0x01F8(s0)             # 000001F8
var_80B81B80:
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f4                   # $f4 = 16.00
    lwc1    $f6, 0x0154(s0)            # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f4, $f6
    nop
    bc1fl   lbl_80B81BAC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x686B          # a1 = 0000686B
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B81BAC:
    jal     func_80B814DC
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    beq     v0, $zero, lbl_80B81BC8
    nop
    lbu     t2, 0x01F8(s0)             # 000001F8
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sb      t3, 0x01F8(s0)             # 000001F8
lbl_80B81BC8:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B81C24
    nop
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B81C24
    addiu   t4, $zero, 0x0037          # t4 = 00000037
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    sb      t4, 0x03DC($at)            # 000103DC
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0009          # a2 = 00000009
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sb      t5, 0x01FE(s0)             # 000001FE
    jal     func_80B81530
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    sb      t6, 0x01F8(s0)             # 000001F8
lbl_80B81C24:
    beq     $zero, $zero, lbl_80B81EB0
    lbu     v0, 0x01F8(s0)             # 000001F8
var_80B81C2C:
    sb      $zero, 0x01FE(s0)          # 000001FE
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B80CF0
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x7030          # a1 = 00007030
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t7, $zero, 0x000C          # t7 = 0000000C
    sb      t7, 0x01F8(s0)             # 000001F8
    beq     $zero, $zero, lbl_80B81EB0
    andi    v0, t7, 0x00FF             # v0 = 0000000C
var_80B81C5C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B814DC
    addiu   a1, $zero, 0x0019          # a1 = 00000019
    beq     v0, $zero, lbl_80B81C74
    addiu   t8, $zero, 0x000D          # t8 = 0000000D
    sb      t8, 0x01F8(s0)             # 000001F8
lbl_80B81C74:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80B81C98
    nop
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80B81CA0
    lui     t9, 0x0001                 # t9 = 00010000
lbl_80B81C98:
    beq     $zero, $zero, lbl_80B81EB0
    lbu     v0, 0x01F8(s0)             # 000001F8
lbl_80B81CA0:
    addu    t9, t9, s1
    lbu     t9, 0x04BD(t9)             # 000104BD
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    or      a0, s1, $zero              # a0 = 00000000
    bne     t9, $zero, lbl_80B81D04
    nop
    jal     func_80B80CF0
    or      a0, s1, $zero              # a0 = 00000000
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x001C          # a2 = 0000001C
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sh      $zero, 0x0200(s0)          # 00000200
    sb      t0, 0x01FD(s0)             # 000001FD
    sb      t1, 0x01FE(s0)             # 000001FE
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x7032          # a1 = 00007032
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t2, $zero, 0x0007          # t2 = 00000007
    beq     $zero, $zero, lbl_80B81D40
    sb      t2, 0x01F8(s0)             # 000001F8
lbl_80B81D04:
    jal     func_80B80CF0
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0009          # a2 = 00000009
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    sb      t3, 0x01FE(s0)             # 000001FE
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x7031          # a1 = 00007031
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    sb      t4, 0x01F8(s0)             # 000001F8
lbl_80B81D40:
    beq     $zero, $zero, lbl_80B81EB0
    lbu     v0, 0x01F8(s0)             # 000001F8
var_80B81D48:
    lui     $at, 0x4188                # $at = 41880000
    mtc1    $at, $f8                   # $f8 = 17.00
    lwc1    $f10, 0x0154(s0)           # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f8, $f10
    nop
    bc1fl   lbl_80B81D74
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x686D          # a1 = 0000686D
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B81D74:
    jal     func_80B814DC
    addiu   a1, $zero, 0x001D          # a1 = 0000001D
    beq     v0, $zero, lbl_80B81D90
    nop
    lbu     t5, 0x01F8(s0)             # 000001F8
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sb      t6, 0x01F8(s0)             # 000001F8
lbl_80B81D90:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B81DF4
    nop
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B81DF4
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B80DC8
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    or      a2, $zero, $zero           # a2 = 00000000
    sh      $zero, 0x0200(s0)          # 00000200
    sb      $zero, 0x01FD(s0)          # 000001FD
    sb      $zero, 0x01FE(s0)          # 000001FE
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x70FC          # a1 = 000070FC
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t7, $zero, 0x0009          # t7 = 00000009
    sb      t7, 0x01F8(s0)             # 000001F8
lbl_80B81DF4:
    beq     $zero, $zero, lbl_80B81EB0
    lbu     v0, 0x01F8(s0)             # 000001F8
var_80B81DFC:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B81E44
    nop
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B81E44
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B80CF0
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x70FD          # a1 = 000070FD
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t8, 0x01F8(s0)             # 000001F8
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x01F8(s0)             # 000001F8
lbl_80B81E44:
    beq     $zero, $zero, lbl_80B81EB0
    lbu     v0, 0x01F8(s0)             # 000001F8
var_80B81E4C:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80B81EB0
    lbu     v0, 0x01F8(s0)             # 000001F8
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B81EAC
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    jal     func_80027C98
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    sb      t0, 0x01FD(s0)             # 000001FD
    sb      t1, 0x01FE(s0)             # 000001FE
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x70FE          # a1 = 000070FE
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t2, 0x01F8(s0)             # 000001F8
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sb      t3, 0x01F8(s0)             # 000001F8
lbl_80B81EAC:
    lbu     v0, 0x01F8(s0)             # 000001F8
lbl_80B81EB0:
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     v0, $at, lbl_80B81EC4
    lw      $ra, 0x001C($sp)
    beq     $zero, $zero, lbl_80B81EC8
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80B81EC4:
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B81EC8:
    or      v0, v1, $zero              # v0 = 00000000
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80B81EDC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     t6, 0x01F8(s0)             # 000001F8
    sltiu   $at, t6, 0x0012
    beq     $at, $zero, lbl_80B82490
    sll     t6, t6,  2
    lui     $at, %hi(var_80B85120)     # $at = 80B80000
    addu    $at, $at, t6
    lw      t6, %lo(var_80B85120)($at)
    jr      t6
    nop
var_80B81F18:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B814DC
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    beql    v0, $zero, lbl_80B82494
    lh      v0, 0x0204(s0)             # 00000204
    lbu     t7, 0x01F8(s0)             # 000001F8
    addiu   t8, t7, 0x0001             # t8 = 00000001
    beq     $zero, $zero, lbl_80B82490
    sb      t8, 0x01F8(s0)             # 000001F8
var_80B81F3C:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80B82494
    lh      v0, 0x0204(s0)             # 00000204
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B82490
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B80CF0
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   t9, $zero, 0x000B          # t9 = 0000000B
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    lui     $at, 0x0001                # $at = 00010000
    sh      t9, 0x0200(s0)             # 00000200
    sb      t0, 0x01FD(s0)             # 000001FD
    sb      $zero, 0x01FE(s0)          # 000001FE
    addu    $at, $at, s1
    addiu   t1, $zero, 0x0037          # t1 = 00000037
    sb      t1, 0x03DC($at)            # 000103DC
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x70FF          # a1 = 000070FF
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t2, 0x01F8(s0)             # 000001F8
    addiu   t3, t2, 0x0001             # t3 = 00000001
    beq     $zero, $zero, lbl_80B82490
    sb      t3, 0x01F8(s0)             # 000001F8
var_80B81FC0:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B814DC
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    beq     v0, $zero, lbl_80B81FE0
    nop
    lbu     t4, 0x01F8(s0)             # 000001F8
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sb      t5, 0x01F8(s0)             # 000001F8
lbl_80B81FE0:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80B82494
    lh      v0, 0x0204(s0)             # 00000204
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B82490
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    jal     func_80027C98
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    lui     $at, 0x0001                # $at = 00010000
    sh      $zero, 0x0200(s0)          # 00000200
    sb      $zero, 0x01FD(s0)          # 000001FD
    addu    $at, $at, s1
    addiu   t6, $zero, 0x0037          # t6 = 00000037
    sb      t6, 0x03DC($at)            # 000103DC
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    beq     $zero, $zero, lbl_80B82490
    sb      t7, 0x01F8(s0)             # 000001F8
var_80B82038:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B814DC
    addiu   a1, $zero, 0x0011          # a1 = 00000011
    beq     v0, $zero, lbl_80B82490
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2073          # a1 = 00002073
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t8, 0x01F8(s0)             # 000001F8
    addiu   t9, t8, 0x0001             # t9 = 00000001
    beq     $zero, $zero, lbl_80B82490
    sb      t9, 0x01F8(s0)             # 000001F8
var_80B82068:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80B82494
    lh      v0, 0x0204(s0)             # 00000204
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B82490
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B80DC8
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    or      a2, $zero, $zero           # a2 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t0, $zero, 0x0037          # t0 = 00000037
    sb      t0, 0x03DC($at)            # 000103DC
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    sh      $zero, 0x0204(s0)          # 00000204
    beq     $zero, $zero, lbl_80B82490
    sb      t1, 0x01F8(s0)             # 000001F8
var_80B820C8:
    lh      t2, 0x0204(s0)             # 00000204
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2074          # a1 = 00002074
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sh      t3, 0x0204(s0)             # 00000204
    lh      t4, 0x0204(s0)             # 00000204
    slti    $at, t4, 0x000F
    bnel    $at, $zero, lbl_80B82494
    lh      v0, 0x0204(s0)             # 00000204
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t5, 0x01F8(s0)             # 000001F8
    addiu   t6, t5, 0x0001             # t6 = 00000001
    beq     $zero, $zero, lbl_80B82490
    sb      t6, 0x01F8(s0)             # 000001F8
var_80B82104:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80B82494
    lh      v0, 0x0204(s0)             # 00000204
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B82490
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    jal     func_80027C98
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x01FE(s0)             # 000001FE
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2075          # a1 = 00002075
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t8, 0x01F8(s0)             # 000001F8
    addiu   t9, t8, 0x0001             # t9 = 00000001
    beq     $zero, $zero, lbl_80B82490
    sb      t9, 0x01F8(s0)             # 000001F8
var_80B82160:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B814DC
    addiu   a1, $zero, 0x0019          # a1 = 00000019
    beq     v0, $zero, lbl_80B82180
    nop
    lbu     t0, 0x01F8(s0)             # 000001F8
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sb      t1, 0x01F8(s0)             # 000001F8
lbl_80B82180:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80B82494
    lh      v0, 0x0204(s0)             # 00000204
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B82490
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x7033          # a1 = 00007033
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    beq     $zero, $zero, lbl_80B82490
    sb      t2, 0x01F8(s0)             # 000001F8
var_80B821BC:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80B82494
    lh      v0, 0x0204(s0)             # 00000204
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B82490
    lui     t3, 0x0001                 # t3 = 00010000
    addu    t3, t3, s1
    lbu     t3, 0x04BD(t3)             # 000104BD
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    or      a0, s1, $zero              # a0 = 00000000
    bne     t3, $zero, lbl_80B82238
    nop
    jal     func_80B80DC8
    or      a0, s1, $zero              # a0 = 00000000
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0021          # a2 = 00000021
    lui     $at, 0x0001                # $at = 00010000
    sb      $zero, 0x01FE(s0)          # 000001FE
    addu    $at, $at, s1
    addiu   t4, $zero, 0x0037          # t4 = 00000037
    sb      t4, 0x03DC($at)            # 000103DC
    addiu   t5, $zero, 0x000F          # t5 = 0000000F
    sh      $zero, 0x0204(s0)          # 00000204
    beq     $zero, $zero, lbl_80B82490
    sb      t5, 0x01F8(s0)             # 000001F8
lbl_80B82238:
    jal     func_80B80CF0
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t6, $zero, 0x0037          # t6 = 00000037
    sb      t6, 0x03DC($at)            # 000103DC
    lbu     t8, 0x01F8(s0)             # 000001F8
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sh      t7, 0x0202(s0)             # 00000202
    sb      t9, 0x01F8(s0)             # 000001F8
    beq     $zero, $zero, lbl_80B82490
    swc1    $f4, 0x0158(s0)            # 00000158
var_80B82270:
    lh      v0, 0x0202(s0)             # 00000202
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    bne     v0, $zero, lbl_80B8228C
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    beq     $zero, $zero, lbl_80B82294
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B8228C:
    sh      t0, 0x0202(s0)             # 00000202
    lh      v1, 0x0202(s0)             # 00000202
lbl_80B82294:
    bne     v1, $zero, lbl_80B82490
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    jal     func_80027C98
    addiu   a2, $zero, 0x000B          # a2 = 0000000B
    addiu   t1, $zero, 0x000B          # t1 = 0000000B
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    sh      t1, 0x0200(s0)             # 00000200
    sb      t2, 0x01FD(s0)             # 000001FD
    sb      t3, 0x01FE(s0)             # 000001FE
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x7034          # a1 = 00007034
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t4, 0x01F8(s0)             # 000001F8
    addiu   t5, t4, 0x0001             # t5 = 00000001
    beq     $zero, $zero, lbl_80B82490
    sb      t5, 0x01F8(s0)             # 000001F8
var_80B822DC:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lwc1    $f8, 0x0154(s0)            # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f6, $f8
    nop
    bc1fl   lbl_80B82308
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x686C          # a1 = 0000686C
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B82308:
    jal     func_80B814DC
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
    beq     v0, $zero, lbl_80B82324
    nop
    lbu     t6, 0x01F8(s0)             # 000001F8
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x01F8(s0)             # 000001F8
lbl_80B82324:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80B82494
    lh      v0, 0x0204(s0)             # 00000204
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B82490
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    jal     func_80027C98
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    sh      t8, 0x0200(s0)             # 00000200
    sb      $zero, 0x01FD(s0)          # 000001FD
    sb      t9, 0x01FE(s0)             # 000001FE
    addu    $at, $at, s1
    addiu   t0, $zero, 0x0037          # t0 = 00000037
    sb      t0, 0x03DC($at)            # 000103DC
    addiu   t1, $zero, 0x000E          # t1 = 0000000E
    beq     $zero, $zero, lbl_80B82490
    sb      t1, 0x01F8(s0)             # 000001F8
var_80B82388:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B814DC
    addiu   a1, $zero, 0x0019          # a1 = 00000019
    beq     v0, $zero, lbl_80B82490
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x7033          # a1 = 00007033
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    beq     $zero, $zero, lbl_80B82490
    sb      t2, 0x01F8(s0)             # 000001F8
var_80B823B4:
    lh      t3, 0x0204(s0)             # 00000204
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x7035          # a1 = 00007035
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sh      t4, 0x0204(s0)             # 00000204
    lh      t5, 0x0204(s0)             # 00000204
    slti    $at, t5, 0x001E
    bnel    $at, $zero, lbl_80B82494
    lh      v0, 0x0204(s0)             # 00000204
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t6, 0x01F8(s0)             # 000001F8
    addiu   t7, t6, 0x0001             # t7 = 00000001
    beq     $zero, $zero, lbl_80B82490
    sb      t7, 0x01F8(s0)             # 000001F8
var_80B823F0:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80B82430
    lh      t1, 0x0204(s0)             # 00000204
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B8242C
    addiu   t8, $zero, 0x0037          # t8 = 00000037
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    sb      t8, 0x03DC($at)            # 000103DC
    lbu     t9, 0x01F8(s0)             # 000001F8
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sb      t0, 0x01F8(s0)             # 000001F8
lbl_80B8242C:
    lh      t1, 0x0204(s0)             # 00000204
lbl_80B82430:
    addiu   $at, $zero, 0x0082         # $at = 00000082
    addiu   t4, $zero, 0x0037          # t4 = 00000037
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sh      t2, 0x0204(s0)             # 00000204
    lh      t3, 0x0204(s0)             # 00000204
    addiu   t5, $zero, 0x00A0          # t5 = 000000A0
    ori     t6, $zero, 0xFFF7          # t6 = 0000FFF7
    bne     t3, $at, lbl_80B82490
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    sb      t4, 0x03DC($at)            # 000103DC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    sh      t5, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x8012                # $at = 80120000
    sh      t6, -0x461E($at)           # 8011B9E2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    sb      t7, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sb      t8, 0x1E5E($at)            # 00011E5E
lbl_80B82490:
    lh      v0, 0x0204(s0)             # 00000204
lbl_80B82494:
    addiu   $at, $zero, 0x0011         # $at = 00000011
    lw      $ra, 0x001C($sp)
    bne     v0, $at, lbl_80B824B4
    slti    $at, v0, 0x0083
    bnel    $at, $zero, lbl_80B824B8
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_80B824B8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B824B4:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B824B8:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80B824C8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lh      t6, 0x07A0(s0)             # 000007A0
    lbu     v0, 0x01F8(s1)             # 000001F8
    sll     t7, t6,  2
    addu    t8, s0, t7
    sltiu   $at, v0, 0x000D
    beq     $at, $zero, lbl_80B828F8
    lw      v1, 0x0790(t8)             # 00000790
    sll     t9, v0,  2
    lui     $at, %hi(var_80B85168)     # $at = 80B80000
    addu    $at, $at, t9
    lw      t9, %lo(var_80B85168)($at)
    jr      t9
    nop
var_80B82514:
    lh      t0, 0x0204(s1)             # 00000204
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x7037          # a1 = 00007037
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x0204(s1)             # 00000204
    lh      t2, 0x0204(s1)             # 00000204
    slti    $at, t2, 0x003C
    bne     $at, $zero, lbl_80B8254C
    nop
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t3, 0x01F8(s1)             # 000001F8
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sb      t4, 0x01F8(s1)             # 000001F8
lbl_80B8254C:
    beq     $zero, $zero, lbl_80B828F8
    lbu     v0, 0x01F8(s1)             # 000001F8
var_80B82554:
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B8259C
    nop
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B8259C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B80CF0
    addiu   a1, $zero, 0x0007          # a1 = 00000007
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2076          # a1 = 00002076
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t5, 0x01F8(s1)             # 000001F8
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sb      t6, 0x01F8(s1)             # 000001F8
lbl_80B8259C:
    beq     $zero, $zero, lbl_80B828F8
    lbu     v0, 0x01F8(s1)             # 000001F8
var_80B825A4:
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B825EC
    nop
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B825EC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B80DC8
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t7, $zero, 0x0037          # t7 = 00000037
    sb      t7, 0x03DC($at)            # 000103DC
    lbu     t8, 0x01F8(s1)             # 000001F8
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x01F8(s1)             # 000001F8
lbl_80B825EC:
    beq     $zero, $zero, lbl_80B828F8
    lbu     v0, 0x01F8(s1)             # 000001F8
var_80B825F4:
    lh      t0, 0x015E(v1)             # 0000015E
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    bne     t0, $at, lbl_80B828F8
    addiu   a1, $zero, 0x2077          # a1 = 00002077
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t1, 0x01F8(s1)             # 000001F8
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sb      t2, 0x01F8(s1)             # 000001F8
    beq     $zero, $zero, lbl_80B828F8
    andi    v0, t2, 0x00FF             # v0 = 00000001
var_80B82624:
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80B82648
    nop
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80B82650
    lui     t3, 0x0001                 # t3 = 00010000
lbl_80B82648:
    beq     $zero, $zero, lbl_80B828F8
    lbu     v0, 0x01F8(s1)             # 000001F8
lbl_80B82650:
    addu    t3, t3, s0
    lbu     t3, 0x04BD(t3)             # 000104BD
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    bne     t3, $zero, lbl_80B82690
    addiu   a0, s1, 0x013C             # a0 = 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B80CF0
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x7005          # a1 = 00007005
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t4, $zero, 0x0009          # t4 = 00000009
    beq     $zero, $zero, lbl_80B826C8
    sb      t4, 0x01F8(s1)             # 000001F8
lbl_80B82690:
    jal     func_80027C98
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    sb      t5, 0x01FE(s1)             # 000001FE
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x7038          # a1 = 00007038
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t6, 0x01F8(s1)             # 000001F8
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x6869          # a1 = 00006869
    addiu   t7, t6, 0x0001             # t7 = 00000001
    jal     func_80022FD0
    sb      t7, 0x01F8(s1)             # 000001F8
lbl_80B826C8:
    beq     $zero, $zero, lbl_80B828F8
    lbu     v0, 0x01F8(s1)             # 000001F8
var_80B826D0:
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B814DC
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    beq     v0, $zero, lbl_80B826F0
    nop
    lbu     t8, 0x01F8(s1)             # 000001F8
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x01F8(s1)             # 000001F8
lbl_80B826F0:
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B82744
    nop
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B82744
    addiu   a0, s1, 0x013C             # a0 = 0000013C
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    jal     func_80027C98
    addiu   a2, $zero, 0x0021          # a2 = 00000021
    sb      $zero, 0x01FE(s1)          # 000001FE
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x7037          # a1 = 00007037
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t0, 0x01F8(s1)             # 000001F8
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sb      t1, 0x01F8(s1)             # 000001F8
lbl_80B82744:
    beq     $zero, $zero, lbl_80B828F8
    lbu     v0, 0x01F8(s1)             # 000001F8
var_80B8274C:
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B82788
    nop
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B82788
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2076          # a1 = 00002076
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t2, 0x01F8(s1)             # 000001F8
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sb      t3, 0x01F8(s1)             # 000001F8
lbl_80B82788:
    beq     $zero, $zero, lbl_80B828F8
    lbu     v0, 0x01F8(s1)             # 000001F8
var_80B82790:
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B827C8
    nop
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B827C8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2077          # a1 = 00002077
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    sb      t4, 0x01F8(s1)             # 000001F8
lbl_80B827C8:
    beq     $zero, $zero, lbl_80B828F8
    lbu     v0, 0x01F8(s1)             # 000001F8
var_80B827D0:
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B82820
    nop
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B82820
    addiu   a0, s1, 0x013C             # a0 = 0000013C
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    jal     func_80027C98
    addiu   a2, $zero, 0x001A          # a2 = 0000001A
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2078          # a1 = 00002078
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t5, 0x01F8(s1)             # 000001F8
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sb      t6, 0x01F8(s1)             # 000001F8
lbl_80B82820:
    beq     $zero, $zero, lbl_80B828F8
    lbu     v0, 0x01F8(s1)             # 000001F8
var_80B82828:
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B814DC
    addiu   a1, $zero, 0x001B          # a1 = 0000001B
    beq     v0, $zero, lbl_80B82848
    nop
    lbu     t7, 0x01F8(s1)             # 000001F8
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x01F8(s1)             # 000001F8
lbl_80B82848:
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80B8286C
    nop
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80B82874
    lui     t9, 0x0001                 # t9 = 00010000
lbl_80B8286C:
    beq     $zero, $zero, lbl_80B828F8
    lbu     v0, 0x01F8(s1)             # 000001F8
lbl_80B82874:
    addu    t9, t9, s0
    lbu     t9, 0x04BD(t9)             # 000104BD
    addiu   t0, $zero, 0x0037          # t0 = 00000037
    or      a0, s0, $zero              # a0 = 00000000
    bne     t9, $zero, lbl_80B828A4
    addiu   a1, $zero, 0x700B          # a1 = 0000700B
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      t0, 0x03DC($at)            # 000103DC
    addiu   t1, $zero, 0x000D          # t1 = 0000000D
    beq     $zero, $zero, lbl_80B828B4
    sb      t1, 0x01F8(s1)             # 000001F8
lbl_80B828A4:
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t2, $zero, 0x000C          # t2 = 0000000C
    sb      t2, 0x01F8(s1)             # 000001F8
lbl_80B828B4:
    beq     $zero, $zero, lbl_80B828F8
    lbu     v0, 0x01F8(s1)             # 000001F8
var_80B828BC:
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80B828F8
    lbu     v0, 0x01F8(s1)             # 000001F8
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B828F4
    addiu   t3, $zero, 0x0037          # t3 = 00000037
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      t3, 0x03DC($at)            # 000103DC
    addiu   t4, $zero, 0x000D          # t4 = 0000000D
    sb      t4, 0x01F8(s1)             # 000001F8
lbl_80B828F4:
    lbu     v0, 0x01F8(s1)             # 000001F8
lbl_80B828F8:
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     v0, $at, lbl_80B8290C
    lw      $ra, 0x001C($sp)
    beq     $zero, $zero, lbl_80B82910
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80B8290C:
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B82910:
    or      v0, v1, $zero              # v0 = 00000000
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80B82924:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     a2, 0x01F8(s1)             # 000001F8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    beq     a2, $zero, lbl_80B82970
    or      v1, a2, $zero              # v1 = 00000000
    beq     a2, $at, lbl_80B829D4
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_80B82A68
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v1, $at, lbl_80B82AFC
    nop
    beq     $zero, $zero, lbl_80B82B40
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_80B82970:
    jal     func_80B80DC8
    addiu   a1, $zero, 0x0007          # a1 = 00000007
    lui     v0, 0x0200                 # v0 = 02000000
    addiu   v0, v0, 0x0444             # v0 = 02000444
    sll     t6, v0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t9, t0
    addu    t2, t1, $at
    sw      t2, 0x1D68(s0)             # 00001D68
    lui     $at, 0x8012                # $at = 80120000
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sb      t3, -0x461C($at)           # 8011B9E4
    lbu     t4, 0x01F8(s1)             # 000001F8
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sb      t5, 0x01F8(s1)             # 000001F8
    beq     $zero, $zero, lbl_80B82B3C
    andi    a2, t5, 0x00FF             # a2 = 00000001
lbl_80B829D4:
    lbu     t6, 0x1D6C(s0)             # 00001D6C
    lui     v0, 0x0200                 # v0 = 02000000
    addiu   v0, v0, 0x0104             # v0 = 02000104
    beq     t6, $zero, lbl_80B82A08
    sll     t9, v0,  4
    lhu     t7, 0x1D74(s0)             # 00001D74
    addiu   $at, $zero, 0x005A         # $at = 0000005A
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    bnel    t7, $at, lbl_80B82B40
    addiu   $at, $zero, 0x0004         # $at = 00000004
    sb      t8, 0x1D6C(s0)             # 00001D6C
    beq     $zero, $zero, lbl_80B82B3C
    lbu     a2, 0x01F8(s1)             # 000001F8
lbl_80B82A08:
    srl     t0, t9, 28
    sll     t1, t0,  2
    lui     t2, 0x8012                 # t2 = 80120000
    addu    t2, t2, t1
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t2, 0x0C38(t2)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t3, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t4, t2, t3
    addu    t5, t4, $at
    sw      t5, 0x1D68(s0)             # 00001D68
    lui     $at, 0x8012                # $at = 80120000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, -0x461C($at)           # 8011B9E4
    lbu     t7, 0x01F8(s1)             # 000001F8
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x01F8(s1)             # 000001F8
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    beq     $zero, $zero, lbl_80B82B3C
    lbu     a2, 0x01F8(s1)             # 000001F8
lbl_80B82A68:
    lbu     t9, 0x1D6C(s0)             # 00001D6C
    addiu   a1, $zero, 0x00A0          # a1 = 000000A0
    addiu   a3, $zero, 0x0028          # a3 = 00000028
    beql    t9, $zero, lbl_80B82AA0
    mtc1    $zero, $f12                # $f12 = 0.00
    lhu     t0, 0x1D74(s0)             # 00001D74
    addiu   $at, $zero, 0x00D1         # $at = 000000D1
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    bnel    t0, $at, lbl_80B82B40
    addiu   $at, $zero, 0x0004         # $at = 00000004
    sb      t1, 0x1D6C(s0)             # 00001D6C
    beq     $zero, $zero, lbl_80B82B3C
    lbu     a2, 0x01F8(s1)             # 000001F8
    mtc1    $zero, $f12                # $f12 = 0.00
lbl_80B82AA0:
    jal     func_800915CC
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    addiu   a0, s1, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x001E          # a2 = 0000001E
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B80CF0
    addiu   a1, $zero, 0x000B          # a1 = 0000000B
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x7039          # a1 = 00007039
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t2, 0x01F8(s1)             # 000001F8
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sb      t3, 0x01F8(s1)             # 000001F8
    beq     $zero, $zero, lbl_80B82B3C
    andi    a2, t3, 0x00FF             # a2 = 00000001
lbl_80B82AFC:
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80B82B3C
    lbu     a2, 0x01F8(s1)             # 000001F8
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B82B38
    addiu   t4, $zero, 0x0037          # t4 = 00000037
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      t4, 0x03DC($at)            # 000103DC
    lbu     t5, 0x01F8(s1)             # 000001F8
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sb      t6, 0x01F8(s1)             # 000001F8
lbl_80B82B38:
    lbu     a2, 0x01F8(s1)             # 000001F8
lbl_80B82B3C:
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_80B82B40:
    bne     a2, $at, lbl_80B82B50
    lw      $ra, 0x001C($sp)
    beq     $zero, $zero, lbl_80B82B54
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80B82B50:
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B82B54:
    or      v0, v1, $zero              # v0 = 00000000
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80B82B68:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     v1, 0x01F8(s0)             # 000001F8
    lw      v0, 0x1C44(s1)             # 00001C44
    sltiu   $at, v1, 0x000D
    beq     $at, $zero, lbl_80B83004
    sll     t6, v1,  2
    lui     $at, %hi(var_80B8519C)     # $at = 80B80000
    addu    $at, $at, t6
    lw      t6, %lo(var_80B8519C)($at)
    jr      t6
    nop
var_80B82BA8:
    lw      t8, 0x0024(s0)             # 00000024
    sw      t8, 0x0024(v0)             # 00000024
    lw      t7, 0x0028(s0)             # 00000028
    sw      t7, 0x0028(v0)             # 00000028
    lw      t8, 0x002C(s0)             # 0000002C
    sw      t8, 0x002C(v0)             # 0000002C
    lh      a0, 0x00B6(s0)             # 000000B6
    sw      v0, 0x0024($sp)
    addiu   a0, a0, 0xC004             # a0 = FFFFC004
    sll     a0, a0, 16
    sra     a0, a0, 16
    jal     func_800636C4              # sins?
    sh      a0, 0x0022($sp)
    lui     $at, 0x4208                # $at = 42080000
    mtc1    $at, $f6                   # $f6 = 34.00
    lw      v0, 0x0024($sp)
    lh      a0, 0x0022($sp)
    mul.s   $f8, $f6, $f0
    lwc1    $f4, 0x0024(v0)            # 00000024
    add.s   $f10, $f4, $f8
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(v0)           # 00000024
    lui     $at, 0x4208                # $at = 42080000
    mtc1    $at, $f18                  # $f18 = 34.00
    lw      v0, 0x0024($sp)
    or      a0, s1, $zero              # a0 = 00000000
    mul.s   $f6, $f18, $f0
    lwc1    $f16, 0x002C(v0)           # 0000002C
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    add.s   $f4, $f16, $f6
    jal     func_80B80DC8
    swc1    $f4, 0x002C(v0)            # 0000002C
    lbu     t0, 0x01F8(s0)             # 000001F8
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      $zero, 0x0200(s0)          # 00000200
    sb      t9, 0x01FD(s0)             # 000001FD
    sb      v0, 0x01FE(s0)             # 000001FE
    sh      $zero, 0x0204(s0)          # 00000204
    sb      t1, 0x01F8(s0)             # 000001F8
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2079          # a1 = 00002079
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
var_80B82C5C:
    lh      t2, 0x0204(s0)             # 00000204
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sh      t3, 0x0204(s0)             # 00000204
    lh      t4, 0x0204(s0)             # 00000204
    slti    $at, t4, 0x0014
    bne     $at, $zero, lbl_80B82C84
    nop
    lbu     t5, 0x01F8(s0)             # 000001F8
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sb      t6, 0x01F8(s0)             # 000001F8
lbl_80B82C84:
    beq     $zero, $zero, lbl_80B83004
    lbu     v1, 0x01F8(s0)             # 000001F8
var_80B82C8C:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B82CD8
    nop
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B82CD8
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B80DC8
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t7, $zero, 0x0037          # t7 = 00000037
    sb      t7, 0x03DC($at)            # 000103DC
    lbu     t8, 0x01F8(s0)             # 000001F8
    sh      $zero, 0x0204(s0)          # 00000204
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x01F8(s0)             # 000001F8
lbl_80B82CD8:
    beq     $zero, $zero, lbl_80B83004
    lbu     v1, 0x01F8(s0)             # 000001F8
var_80B82CE0:
    lh      t0, 0x0204(s0)             # 00000204
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x207A          # a1 = 0000207A
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x0204(s0)             # 00000204
    lh      t2, 0x0204(s0)             # 00000204
    slti    $at, t2, 0x0014
    bne     $at, $zero, lbl_80B82D18
    nop
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t3, 0x01F8(s0)             # 000001F8
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sb      t4, 0x01F8(s0)             # 000001F8
lbl_80B82D18:
    beq     $zero, $zero, lbl_80B83004
    lbu     v1, 0x01F8(s0)             # 000001F8
var_80B82D20:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B82D8C
    nop
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B82D8C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B80CF0
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0017          # a2 = 00000017
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    lui     $at, 0x0001                # $at = 00010000
    sh      $zero, 0x0200(s0)          # 00000200
    sb      $zero, 0x01FD(s0)          # 000001FD
    sb      t5, 0x01FE(s0)             # 000001FE
    addu    $at, $at, s1
    addiu   t6, $zero, 0x0037          # t6 = 00000037
    sb      t6, 0x03DC($at)            # 000103DC
    lbu     t7, 0x01F8(s0)             # 000001F8
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x01F8(s0)             # 000001F8
lbl_80B82D8C:
    beq     $zero, $zero, lbl_80B83004
    lbu     v1, 0x01F8(s0)             # 000001F8
var_80B82D94:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B814DC
    addiu   a1, $zero, 0x0018          # a1 = 00000018
    beq     v0, $zero, lbl_80B82DC0
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x207B          # a1 = 0000207B
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t9, 0x01F8(s0)             # 000001F8
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sb      t0, 0x01F8(s0)             # 000001F8
lbl_80B82DC0:
    beq     $zero, $zero, lbl_80B83004
    lbu     v1, 0x01F8(s0)             # 000001F8
var_80B82DC8:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B82E04
    nop
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B82E04
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x703A          # a1 = 0000703A
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t1, 0x01F8(s0)             # 000001F8
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sb      t2, 0x01F8(s0)             # 000001F8
lbl_80B82E04:
    beq     $zero, $zero, lbl_80B83004
    lbu     v1, 0x01F8(s0)             # 000001F8
var_80B82E0C:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80B82E30
    nop
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80B82E38
    lui     t3, 0x0001                 # t3 = 00010000
lbl_80B82E30:
    beq     $zero, $zero, lbl_80B83004
    lbu     v1, 0x01F8(s0)             # 000001F8
lbl_80B82E38:
    addu    t3, t3, s1
    lbu     t3, 0x04BD(t3)             # 000104BD
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    bne     t3, $zero, lbl_80B82E98
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x001F          # a2 = 0000001F
    addiu   t4, $zero, 0x000B          # t4 = 0000000B
    addiu   t5, $zero, 0x0005          # t5 = 00000005
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      t4, 0x0200(s0)             # 00000200
    sb      t5, 0x01FD(s0)             # 000001FD
    sb      t6, 0x01FE(s0)             # 000001FE
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x703B          # a1 = 0000703B
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t7, $zero, 0x000B          # t7 = 0000000B
    beq     $zero, $zero, lbl_80B82ED0
    sb      t7, 0x01F8(s0)             # 000001F8
lbl_80B82E98:
    jal     func_80027C98
    addiu   a2, $zero, 0x000D          # a2 = 0000000D
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addiu   t8, $zero, 0x000B          # t8 = 0000000B
    lui     $at, 0x0001                # $at = 00010000
    sh      t8, 0x0200(s0)             # 00000200
    sb      v0, 0x01FD(s0)             # 000001FD
    sb      v0, 0x01FE(s0)             # 000001FE
    addu    $at, $at, s1
    addiu   t9, $zero, 0x0037          # t9 = 00000037
    sb      t9, 0x03DC($at)            # 000103DC
    lbu     t0, 0x01F8(s0)             # 000001F8
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sb      t1, 0x01F8(s0)             # 000001F8
lbl_80B82ED0:
    beq     $zero, $zero, lbl_80B83004
    lbu     v1, 0x01F8(s0)             # 000001F8
var_80B82ED8:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B814DC
    addiu   a1, $zero, 0x000F          # a1 = 0000000F
    beq     v0, $zero, lbl_80B82F18
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    sh      t2, 0x0200(s0)             # 00000200
    sb      $zero, 0x01FD(s0)          # 000001FD
    sb      t3, 0x01FE(s0)             # 000001FE
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x7073          # a1 = 00007073
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t4, 0x01F8(s0)             # 000001F8
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sb      t5, 0x01F8(s0)             # 000001F8
lbl_80B82F18:
    beq     $zero, $zero, lbl_80B83004
    lbu     v1, 0x01F8(s0)             # 000001F8
var_80B82F20:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B82F70
    nop
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B82F70
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    jal     func_80027C98
    addiu   a2, $zero, 0x000E          # a2 = 0000000E
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t6, $zero, 0x0037          # t6 = 00000037
    sb      t6, 0x03DC($at)            # 000103DC
    lbu     t7, 0x01F8(s0)             # 000001F8
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x01F8(s0)             # 000001F8
lbl_80B82F70:
    beq     $zero, $zero, lbl_80B83004
    lbu     v1, 0x01F8(s0)             # 000001F8
var_80B82F78:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B814DC
    addiu   a1, $zero, 0x0018          # a1 = 00000018
    beq     v0, $zero, lbl_80B82FA0
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x703A          # a1 = 0000703A
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t9, $zero, 0x0007          # t9 = 00000007
    sb      t9, 0x01F8(s0)             # 000001F8
lbl_80B82FA0:
    beq     $zero, $zero, lbl_80B83004
    lbu     v1, 0x01F8(s0)             # 000001F8
var_80B82FA8:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B814DC
    addiu   a1, $zero, 0x0020          # a1 = 00000020
    beq     v0, $zero, lbl_80B82FC8
    nop
    lbu     t0, 0x01F8(s0)             # 000001F8
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sb      t1, 0x01F8(s0)             # 000001F8
lbl_80B82FC8:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80B83004
    lbu     v1, 0x01F8(s0)             # 000001F8
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B83000
    addiu   t2, $zero, 0x0037          # t2 = 00000037
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    sb      t2, 0x03DC($at)            # 000103DC
    addiu   t3, $zero, 0x000D          # t3 = 0000000D
    sb      t3, 0x01F8(s0)             # 000001F8
lbl_80B83000:
    lbu     v1, 0x01F8(s0)             # 000001F8
lbl_80B83004:
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     v1, $at, lbl_80B83018
    lw      $ra, 0x001C($sp)
    beq     $zero, $zero, lbl_80B8301C
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80B83018:
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B8301C:
    or      v0, v1, $zero              # v0 = 00000000
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80B83030:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lbu     v1, 0x01F8(s0)             # 000001F8
    sltiu   $at, v1, 0x0008
    beq     $at, $zero, lbl_80B83348
    sll     t6, v1,  2
    lui     $at, %hi(var_80B851D0)     # $at = 80B80000
    addu    $at, $at, t6
    lw      t6, %lo(var_80B851D0)($at)
    jr      t6
    nop
var_80B8306C:
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0012          # a2 = 00000012
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sh      $zero, 0x0200(s0)          # 00000200
    sb      $zero, 0x01FD(s0)          # 000001FD
    sb      t7, 0x01FE(s0)             # 000001FE
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B80DC8
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    lbu     t8, 0x01F8(s0)             # 000001F8
    sh      $zero, 0x0204(s0)          # 00000204
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x01F8(s0)             # 000001F8
var_80B830AC:
    lh      t0, 0x0204(s0)             # 00000204
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x7123          # a1 = 00007123
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x0204(s0)             # 00000204
    lh      t2, 0x0204(s0)             # 00000204
    slti    $at, t2, 0x000A
    bne     $at, $zero, lbl_80B830E4
    nop
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t3, 0x01F8(s0)             # 000001F8
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sb      t4, 0x01F8(s0)             # 000001F8
lbl_80B830E4:
    beq     $zero, $zero, lbl_80B83348
    lbu     v1, 0x01F8(s0)             # 000001F8
var_80B830EC:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B83158
    nop
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B83158
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B80CF0
    addiu   a1, $zero, 0x000D          # a1 = 0000000D
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0013          # a2 = 00000013
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    sh      $zero, 0x0200(s0)          # 00000200
    sb      $zero, 0x01FD(s0)          # 000001FD
    sb      t5, 0x01FE(s0)             # 000001FE
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x207C          # a1 = 0000207C
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t6, 0x01F8(s0)             # 000001F8
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x01F8(s0)             # 000001F8
lbl_80B83158:
    beq     $zero, $zero, lbl_80B83348
    lbu     v1, 0x01F8(s0)             # 000001F8
var_80B83160:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B814DC
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    beq     v0, $zero, lbl_80B83180
    nop
    lbu     t8, 0x01F8(s0)             # 000001F8
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x01F8(s0)             # 000001F8
lbl_80B83180:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B831E4
    nop
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B831E4
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x207D          # a1 = 0000207D
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    sh      $zero, 0x0206(s0)          # 00000206
    lh      t1, 0x0206(s0)             # 00000206
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    sh      $zero, 0x0200(s0)          # 00000200
    sb      $zero, 0x01FD(s0)          # 000001FD
    sb      $zero, 0x01FE(s0)          # 000001FE
    sb      t0, 0x01F8(s0)             # 000001F8
    sb      t1, 0x01FF(s0)             # 000001FF
lbl_80B831E4:
    beq     $zero, $zero, lbl_80B83348
    lbu     v1, 0x01F8(s0)             # 000001F8
var_80B831EC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B814DC
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    beq     v0, $zero, lbl_80B8320C
    nop
    lbu     t2, 0x01F8(s0)             # 000001F8
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sb      t3, 0x01F8(s0)             # 000001F8
lbl_80B8320C:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80B83230
    nop
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    bnel    v0, $zero, lbl_80B8323C
    lh      t4, 0x07A0(s1)             # 000007A0
lbl_80B83230:
    beq     $zero, $zero, lbl_80B83348
    lbu     v1, 0x01F8(s0)             # 000001F8
    lh      t4, 0x07A0(s1)             # 000007A0
lbl_80B8323C:
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sll     t5, t4,  2
    addu    t6, s1, t5
    jal     func_800495BC
    lw      a0, 0x0790(t6)             # 00000790
    addiu   t7, $zero, 0x0007          # t7 = 00000007
    lui     t9, 0x0001                 # t9 = 00010000
    sb      t7, 0x01F8(s0)             # 000001F8
    addu    t9, t9, s1
    lw      t9, 0x1D5C(t9)             # 00011D5C
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lwc1    $f18, 0x0090(s0)           # 00000090
    lwc1    $f16, 0x0094(s0)           # 00000094
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    abs.s   $f18, $f18
    abs.s   $f16, $f16
    add.s   $f18, $f18, $f14
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    add.s   $f14, $f16, $f14
    mfc1    a3, $f18
    addiu   a2, $zero, 0x000B          # a2 = 0000000B
    jal     func_80022BD4
    swc1    $f14, 0x0010($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sb      t8, 0x04BF($at)            # 000104BF
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t0, $zero, 0x0036          # t0 = 00000036
    sb      t0, 0x03DC($at)            # 000103DC
    beq     $zero, $zero, lbl_80B83348
    lbu     v1, 0x01F8(s0)             # 000001F8
var_80B832D4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022BB0
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B8330C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    jal     func_80027C98
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t1, 0x01F8(s0)             # 000001F8
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sb      t2, 0x01F8(s0)             # 000001F8
    beq     $zero, $zero, lbl_80B83348
    andi    v1, t2, 0x00FF             # v1 = 00000001
lbl_80B8330C:
    lwc1    $f18, 0x0090(s0)           # 00000090
    lwc1    $f16, 0x0094(s0)           # 00000094
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    abs.s   $f18, $f18
    abs.s   $f16, $f16
    add.s   $f18, $f18, $f14
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    add.s   $f14, $f16, $f14
    mfc1    a3, $f18
    addiu   a2, $zero, 0x000B          # a2 = 0000000B
    jal     func_80022BD4
    swc1    $f14, 0x0010($sp)
    lbu     v1, 0x01F8(s0)             # 000001F8
lbl_80B83348:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     v1, $at, lbl_80B8335C
    lw      $ra, 0x0024($sp)
    beq     $zero, $zero, lbl_80B83360
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80B8335C:
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B83360:
    or      v0, v1, $zero              # v0 = 00000000
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80B83374:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x0024($sp)
    lbu     t8, 0x01F9(s0)             # 000001F9
    sltiu   $at, t8, 0x0009
    beq     $at, $zero, lbl_80B83574
    sll     t8, t8,  2
    lui     $at, %hi(var_80B851F0)     # $at = 80B80000
    addu    $at, $at, t8
    lw      t8, %lo(var_80B851F0)($at)
    jr      t8
    nop
var_80B833B8:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B81558
    lw      a1, 0x002C($sp)
    beql    v0, $zero, lbl_80B83578
    lw      t0, 0x0024($sp)
    lbu     t9, 0x01F9(s0)             # 000001F9
    sb      $zero, 0x01F8(s0)          # 000001F8
    addiu   t0, t9, 0x0001             # t0 = 00000001
    beq     $zero, $zero, lbl_80B83574
    sb      t0, 0x01F9(s0)             # 000001F9
var_80B833E0:
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    sh      $zero, 0x0200(s0)          # 00000200
    sb      $zero, 0x01FD(s0)          # 000001FD
    sb      t1, 0x01FE(s0)             # 000001FE
    jal     func_800C69A0
    addiu   a0, $zero, 0x0051          # a0 = 00000051
    lw      a0, 0x002C($sp)
    jal     func_80B80CF0
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    jal     func_80099620
    addiu   a0, $zero, 0x0020          # a0 = 00000020
    lbu     t2, 0x01F9(s0)             # 000001F9
    sb      $zero, 0x01F8(s0)          # 000001F8
    addiu   t3, t2, 0x0001             # t3 = 00000001
    beq     $zero, $zero, lbl_80B83574
    sb      t3, 0x01F9(s0)             # 000001F9
var_80B8343C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B816B8
    lw      a1, 0x002C($sp)
    beql    v0, $zero, lbl_80B83578
    lw      t0, 0x0024($sp)
    lbu     t4, 0x01F9(s0)             # 000001F9
    sb      $zero, 0x01F8(s0)          # 000001F8
    addiu   t5, t4, 0x0001             # t5 = 00000001
    beq     $zero, $zero, lbl_80B83574
    sb      t5, 0x01F9(s0)             # 000001F9
var_80B83464:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B819B0
    lw      a1, 0x002C($sp)
    beql    v0, $zero, lbl_80B83578
    lw      t0, 0x0024($sp)
    lbu     t6, 0x01F9(s0)             # 000001F9
    sb      $zero, 0x01F8(s0)          # 000001F8
    addiu   t7, t6, 0x0001             # t7 = 00000001
    beq     $zero, $zero, lbl_80B83574
    sb      t7, 0x01F9(s0)             # 000001F9
var_80B8348C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B81EDC
    lw      a1, 0x002C($sp)
    beql    v0, $zero, lbl_80B83578
    lw      t0, 0x0024($sp)
    lbu     t8, 0x01F9(s0)             # 000001F9
    sb      $zero, 0x01F8(s0)          # 000001F8
    addiu   t9, t8, 0x0001             # t9 = 00000001
    beq     $zero, $zero, lbl_80B83574
    sb      t9, 0x01F9(s0)             # 000001F9
var_80B834B4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B824C8
    lw      a1, 0x002C($sp)
    beql    v0, $zero, lbl_80B83578
    lw      t0, 0x0024($sp)
    lbu     t0, 0x01F9(s0)             # 000001F9
    sb      $zero, 0x01F8(s0)          # 000001F8
    addiu   t1, t0, 0x0001             # t1 = 00000001
    beq     $zero, $zero, lbl_80B83574
    sb      t1, 0x01F9(s0)             # 000001F9
var_80B834DC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B82924
    lw      a1, 0x002C($sp)
    beql    v0, $zero, lbl_80B83578
    lw      t0, 0x0024($sp)
    lbu     t2, 0x01F9(s0)             # 000001F9
    sb      $zero, 0x01F8(s0)          # 000001F8
    addiu   t3, t2, 0x0001             # t3 = 00000001
    beq     $zero, $zero, lbl_80B83574
    sb      t3, 0x01F9(s0)             # 000001F9
var_80B83504:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B82B68
    lw      a1, 0x002C($sp)
    beql    v0, $zero, lbl_80B83578
    lw      t0, 0x0024($sp)
    lbu     t4, 0x01F9(s0)             # 000001F9
    sb      $zero, 0x01F8(s0)          # 000001F8
    addiu   t5, t4, 0x0001             # t5 = 00000001
    beq     $zero, $zero, lbl_80B83574
    sb      t5, 0x01F9(s0)             # 000001F9
var_80B8352C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B83030
    lw      a1, 0x002C($sp)
    beq     v0, $zero, lbl_80B83574
    lw      a0, 0x002C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t7, 0x0EDC(v1)             # 8011B4AC
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    lui     t9, %hi(func_80B835EC)     # t9 = 80B80000
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      t6, 0x13EE(v1)             # 8011B9BE
    sh      t8, 0x0EDC(v1)             # 8011B4AC
    addiu   t9, t9, %lo(func_80B835EC) # t9 = 80B835EC
    sw      t9, 0x0180(s0)             # 00000180
lbl_80B83574:
    lw      t0, 0x0024($sp)
lbl_80B83578:
    lbu     t3, 0x01F9(s0)             # 000001F9
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lw      t2, 0x0024(t0)             # 00000024
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x01D0             # a1 = 000001D0
    sw      t2, 0x01E8(s0)             # 000001E8
    lw      t1, 0x0028(t0)             # 00000028
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t1, 0x01EC(s0)             # 000001EC
    lw      t2, 0x002C(t0)             # 0000002C
    bne     t3, $at, lbl_80B835B4
    sw      t2, 0x01F0(s0)             # 000001F0
    beq     $zero, $zero, lbl_80B835B4
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80B835B4:
    sll     a3, v0, 16
    jal     func_80027854
    sra     a3, a3, 16
    jal     func_80B81224
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B835D8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B8107C
    lw      a1, 0x002C($sp)
lbl_80B835D8:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80B835EC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      a1, 0x0024($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lh      t6, 0x01C4(a1)             # 000001C4
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f8                   # $f8 = 60.00
    mtc1    t6, $f4                    # $f4 = 0.00
    lui     t7, %hi(func_80B80E4C)     # t7 = 80B80000
    lui     t8, %hi(func_80B80EF0)     # t8 = 80B80000
    cvt.s.w $f6, $f4
    addiu   t8, t8, %lo(func_80B80EF0) # t8 = 80B80EF0
    addiu   t7, t7, %lo(func_80B80E4C) # t7 = 80B80E4C
    sw      t7, 0x0010($sp)
    sw      t8, 0x0014($sp)
    sw      a1, 0x0020($sp)
    add.s   $f10, $f6, $f8
    lw      a0, 0x0024($sp)
    addiu   a2, a1, 0x01D0             # a2 = 000001D0
    mfc1    a3, $f10
    jal     func_800271FC
    nop
    lw      a0, 0x0020($sp)
    jal     func_80B810BC
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80B83664:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0074($sp)
    lui     t7, %hi(var_80B85044)      # t7 = 80B80000
    addiu   t7, t7, %lo(var_80B85044)  # t7 = 80B85044
    addiu   t0, t7, 0x0024             # t0 = 80B85068
    addiu   t6, $sp, 0x0048            # t6 = FFFFFFD8
lbl_80B83688:
    lw      t9, 0x0000(t7)             # 80B85044
    addiu   t7, t7, 0x000C             # t7 = 80B85050
    addiu   t6, t6, 0x000C             # t6 = FFFFFFE4
    sw      t9, -0x000C(t6)            # FFFFFFD8
    lw      t8, -0x0008(t7)            # 80B85048
    sw      t8, -0x0008(t6)            # FFFFFFDC
    lw      t9, -0x0004(t7)            # 80B8504C
    bne     t7, t0, lbl_80B83688
    sw      t9, -0x0004(t6)            # FFFFFFE0
    lw      t9, 0x0000(t7)             # 80B85050
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sw      t9, 0x0000(t6)             # FFFFFFE4
    jal     func_8008C9C0
    sw      a0, 0x0028($sp)
    beq     v0, $zero, lbl_80B836EC
    nop
    lw      t2, 0x0144(s0)             # 00000144
    lui     t1, 0x0601                 # t1 = 06010000
    addiu   t1, t1, 0x0DF8             # t1 = 06010DF8
    bne     t1, t2, lbl_80B836EC
    lw      a0, 0x0028($sp)
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    jal     func_80027C98
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_80B836EC:
    jal     func_80B81224
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B83704
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B8107C
    lw      a1, 0x0074($sp)
lbl_80B83704:
    lw      v1, 0x0074($sp)
    addiu   $at, $zero, 0x0064         # $at = 00000064
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    lhu     v0, 0x1D74(v1)             # 00001D74
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    bne     v0, $at, lbl_80B8372C
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFC8
    sb      t3, 0x01FD(s0)             # 000001FD
    lhu     v0, 0x1D74(v1)             # 00001D74
lbl_80B8372C:
    addiu   $at, $zero, 0x01C2         # $at = 000001C2
    bnel    v0, $at, lbl_80B83748
    lw      a3, 0x1D8C(v1)             # 00001D8C
    sh      t4, 0x0200(s0)             # 00000200
    sb      $zero, 0x01FD(s0)          # 000001FD
    sb      t5, 0x01FE(s0)             # 000001FE
    lw      a3, 0x1D8C(v1)             # 00001D8C
lbl_80B83748:
    beq     a3, $zero, lbl_80B83800
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80B81108
    sw      a3, 0x0044($sp)
    lh      v0, 0x0206(s0)             # 00000206
    lw      a3, 0x0044($sp)
    addiu   t0, $sp, 0x0038            # t0 = FFFFFFC8
    bne     v0, $zero, lbl_80B837BC
    lui     a1, %hi(var_80B83CE8)      # a1 = 80B80000
    lw      t6, 0x0000(t0)             # FFFFFFC8
    addiu   v1, $sp, 0x002C            # v1 = FFFFFFBC
    sw      t6, 0x0000(v1)             # FFFFFFBC
    lw      t7, 0x0004(t0)             # FFFFFFCC
    lw      t9, 0x0000(v1)             # FFFFFFBC
    sw      t7, 0x0004(v1)             # FFFFFFC0
    lw      t6, 0x0008(t0)             # FFFFFFD0
    sw      t6, 0x0008(v1)             # FFFFFFC4
    sw      t9, 0x0008(s0)             # 00000008
    lw      t8, 0x0004(v1)             # FFFFFFC0
    lh      v0, 0x0206(s0)             # 00000206
    sw      t8, 0x000C(s0)             # 0000000C
    lw      t9, 0x0008(v1)             # FFFFFFC4
    sw      t9, 0x0010(s0)             # 00000010
    lw      t2, 0x0000(v1)             # FFFFFFBC
    sw      t2, 0x0024(s0)             # 00000024
    lw      t1, 0x0004(v1)             # FFFFFFC0
    sw      t1, 0x0028(s0)             # 00000028
    lw      t2, 0x0008(v1)             # FFFFFFC4
    sw      t2, 0x002C(s0)             # 0000002C
lbl_80B837BC:
    lhu     v1, 0x0000(a3)             # 00000000
    lw      a0, 0x0028($sp)
    addiu   a1, a1, %lo(var_80B83CE8)  # a1 = 80B83CE8
    beq     v1, v0, lbl_80B837EC
    sll     t3, v1,  2
    addu    a2, $sp, t3
    lw      a2, 0x0048(a2)             # 00000048
    jal     func_80027C98
    sw      a3, 0x0044($sp)
    lw      a3, 0x0044($sp)
    lhu     t4, 0x0000(a3)             # 00000000
    sh      t4, 0x0206(s0)             # 00000206
lbl_80B837EC:
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    swc1    $f0, 0x005C(s0)            # 0000005C
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f0, 0x0064(s0)            # 00000064
lbl_80B83800:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0070           # $sp = 00000000
    jr      $ra
    nop


func_80B83814:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lw      t7, 0x0180(s0)             # 00000180
    lui     t6, %hi(func_80B83664)     # t6 = 80B80000
    addiu   t6, t6, %lo(func_80B83664) # t6 = 80B83664
    beq     t6, t7, lbl_80B83844
    nop
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
lbl_80B83844:
    jal     func_80B80F2C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sw      t8, 0x0014($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)
    jalr    $ra, t9
    nop
    addiu   a2, s0, 0x0184             # a2 = 00000184
    or      a1, a2, $zero              # a1 = 00000184
    sw      a2, 0x002C($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x003C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x002C($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80B838C4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lw      t6, 0x002C($sp)
    addiu   $at, $zero, 0x0011         # $at = 00000011
    addiu   t7, $sp, 0x001C            # t7 = FFFFFFF4
    bne     t6, $at, lbl_80B83994
    lw      t8, 0x003C($sp)
    lwl     t0, 0x01D8(t8)             # 000001D8
    lwr     t0, 0x01DB(t8)             # 000001DB
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0x4461                # $at = 44610000
    sw      t0, 0x0000(t7)             # FFFFFFF4
    lhu     t0, 0x01DC(t8)             # 000001DC
    mtc1    $at, $f12                  # $f12 = 900.00
    mfc1    a2, $f14
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA7F4
    sh      t0, 0x0004(t7)             # FFFFFFF8
    lh      t1, 0x001E($sp)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f8                   # $f8 = 32768.00
    mtc1    t1, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80B85214)     # $at = 80B80000
    lwc1    $f16, %lo(var_80B85214)($at)
    cvt.s.w $f6, $f4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f10, $f6, $f8
    mul.s   $f12, $f10, $f16
    jal     func_800AA9E0
    nop
    lh      t2, 0x001C($sp)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f6                   # $f6 = 32768.00
    mtc1    t2, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_80B85218)     # $at = 80B80000
    lwc1    $f10, %lo(var_80B85218)($at)
    cvt.s.w $f4, $f18
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f8, $f4, $f6
    mul.s   $f12, $f8, $f10
    jal     func_800AAD4C
    nop
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0xC461                # $at = C4610000
    mtc1    $at, $f12                  # $f12 = -900.00
    mfc1    a2, $f14
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_80B83994:
    lw      t3, 0x002C($sp)
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    lw      t5, 0x003C($sp)
    bnel    t3, $at, lbl_80B83A28
    lw      t0, 0x002C($sp)
    lwl     t7, 0x01DE(t5)             # 000001DE
    lwr     t7, 0x01E1(t5)             # 000001E1
    addiu   t4, $sp, 0x001C            # t4 = FFFFFFF4
    lui     $at, 0x4700                # $at = 47000000
    sw      t7, 0x0000(t4)             # FFFFFFF4
    lhu     t7, 0x01E2(t5)             # 000001E2
    mtc1    $at, $f4                   # $f4 = 32768.00
    lui     $at, %hi(var_80B8521C)     # $at = 80B80000
    sh      t7, 0x0004(t4)             # FFFFFFF8
    lh      t8, 0x001E($sp)
    lwc1    $f8, %lo(var_80B8521C)($at)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    div.s   $f6, $f18, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AAB94
    nop
    lh      t9, 0x001C($sp)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f18                  # $f18 = 32768.00
    mtc1    t9, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_80B85220)     # $at = 80B80000
    lwc1    $f6, %lo(var_80B85220)($at)
    cvt.s.w $f16, $f10
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f4, $f16, $f18
    mul.s   $f12, $f4, $f6
    jal     func_800AA9E0
    nop
    lw      t0, 0x002C($sp)
lbl_80B83A28:
    or      v0, $zero, $zero           # v0 = 00000000
    slti    $at, t0, 0x0003
    bne     $at, $zero, lbl_80B83A44
    slti    $at, t0, 0x0007
    beq     $at, $zero, lbl_80B83A44
    lw      t1, 0x0030($sp)
    sw      $zero, 0x0000(t1)          # 00000000
lbl_80B83A44:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80B83A54:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      a0, 0x0028($sp)
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFF4
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lui     t6, %hi(var_80B8506C)      # t6 = 80B80000
    addiu   t6, t6, %lo(var_80B8506C)  # t6 = 80B8506C
    lw      t8, 0x0000(t6)             # 80B8506C
    addiu   $at, $zero, 0x0011         # $at = 00000011
    sw      t8, 0x0000(a0)             # FFFFFFF4
    lw      t7, 0x0004(t6)             # 80B85070
    sw      t7, 0x0004(a0)             # FFFFFFF8
    lw      t8, 0x0008(t6)             # 80B85074
    bne     a1, $at, lbl_80B83AA0
    sw      t8, 0x0008(a0)             # FFFFFFFC
    lw      a1, 0x0038($sp)
    jal     func_800AB958
    addiu   a1, a1, 0x0038             # a1 = 00000038
lbl_80B83AA0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80B83AB0:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      $ra, 0x002C($sp)
    lui     $ra, 0x8012                # $ra = 80120000
    sw      s0, 0x0028($sp)
    lui     t5, 0x00FF                 # t5 = 00FF0000
    ori     t5, t5, 0xFFFF             # t5 = 00FFFFFF
    or      s0, a0, $zero              # s0 = 00000000
    addiu   $ra, $ra, 0x0C38           # $ra = 80120C38
    addiu   t4, $sp, 0x0048            # t4 = FFFFFFD0
    lui     t7, %hi(var_80B85078)      # t7 = 80B80000
    addiu   t7, t7, %lo(var_80B85078)  # t7 = 80B85078
    lw      t9, 0x0000(t7)             # 80B85078
    lw      t8, 0x0004(t7)             # 80B8507C
    addiu   t6, $sp, 0x0064            # t6 = FFFFFFEC
    sw      t9, 0x0000(t6)             # FFFFFFEC
    sw      t8, 0x0004(t6)             # FFFFFFF0
    lw      t8, 0x000C(t7)             # 80B85084
    lw      t9, 0x0008(t7)             # 80B85080
    sw      t8, 0x000C(t6)             # FFFFFFF8
    sw      t9, 0x0008(t6)             # FFFFFFF4
    lui     t6, %hi(var_80B85088)      # t6 = 80B80000
    addiu   t6, t6, %lo(var_80B85088)  # t6 = 80B85088
    lw      t8, 0x0000(t6)             # 80B85088
    sw      t8, 0x0000(t4)             # FFFFFFD0
    lw      t7, 0x0004(t6)             # 80B8508C
    sw      t7, 0x0004(t4)             # FFFFFFD4
    lw      t8, 0x0008(t6)             # 80B85090
    sw      t8, 0x0008(t4)             # FFFFFFD8
    lw      t7, 0x000C(t6)             # 80B85094
    sw      t7, 0x000C(t4)             # FFFFFFDC
    lw      t8, 0x0010(t6)             # 80B85098
    sw      t8, 0x0010(t4)             # FFFFFFE0
    lw      t7, 0x0014(t6)             # 80B8509C
    sw      t7, 0x0014(t4)             # FFFFFFE4
    lw      t8, 0x0018(t6)             # 80B850A0
    sw      t8, 0x0018(t4)             # FFFFFFE8
    lw      v1, 0x0000(a1)             # 00000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    sw      t6, 0x0000(v0)             # 00000000
    lbu     t7, 0x01FB(s0)             # 000001FB
    lui     $at, 0x8000                # $at = 80000000
    sll     t8, t7,  2
    addu    t9, t4, t8
    lw      a3, 0x0000(t9)             # 00000008
    sll     t7, a3,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    addu    t7, $ra, t9
    lw      t8, 0x0000(t7)             # 80B85078
    and     t6, a3, t5
    addu    t9, t6, t8
    addu    t7, t9, $at
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lbu     t9, 0x01FA(s0)             # 000001FA
    lui     $at, 0x8000                # $at = 80000000
    sll     t7, t9,  2
    addu    t6, t4, t7
    lw      t1, 0x0000(t6)             # 00000008
    sll     t9, t1,  4
    srl     t7, t9, 28
    sll     t6, t7,  2
    addu    t9, $ra, t6
    lw      t7, 0x0000(t9)             # 00000008
    and     t8, t1, t5
    addu    t6, t8, t7
    addu    t9, t6, $at
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0028             # t7 = DB060028
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      t7, 0x0000(v0)             # 00000000
    lbu     t6, 0x01FC(s0)             # 000001FC
    lui     $at, 0x8000                # $at = 80000000
    sll     t9, t6,  2
    addu    t3, $sp, t9
    lw      t3, 0x0064(t3)             # 00000064
    sll     t7, t3,  4
    srl     t6, t7, 28
    sll     t9, t6,  2
    addu    t7, $ra, t9
    lw      t6, 0x0000(t7)             # DB060028
    and     t8, t3, t5
    addu    t9, t8, t6
    addu    t7, t9, $at
    sw      t7, 0x0004(v0)             # 00000004
    lw      a0, 0x0000(a1)             # 00000000
    jal     func_8007E298
    sw      a1, 0x007C($sp)
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t8, %hi(func_80B838C4)     # t8 = 80B80000
    lui     t6, %hi(func_80B83A54)     # t6 = 80B80000
    addiu   t6, t6, %lo(func_80B83A54) # t6 = 80B83A54
    addiu   t8, t8, %lo(func_80B838C4) # t8 = 80B838C4
    sw      t8, 0x0010($sp)
    sw      t6, 0x0014($sp)
    sw      s0, 0x0018($sp)
    jal     func_80089D8C
    lw      a0, 0x007C($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0078           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80B83C90: .word 0x01D30400, 0x00000019, 0x01910000, 0x000002E0
.word func_80B812F4
.word func_80B814B0
.word func_80B83814
.word func_80B83AB0
var_80B83CB0: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x000A002C, 0x00000000, 0x00000000
var_80B83CDC: .word 0x00000000, 0x00000000, 0xFF000000
var_80B83CE8: .word \
0x06000654, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x0600E5C8, 0x3F800000, \
0x00000000, 0xBF800000, 0x02000000, 0xBF800000, \
0x0600EBC4, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xBF800000, 0x06010DF8, 0x3F800000, \
0x00000000, 0xBF800000, 0x02000000, 0xBF800000, \
0x06011248, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xBF800000, 0x06011698, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xBF800000, \
0x06011B34, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xC1000000, 0x060125E4, 0x3F800000, \
0x00000000, 0xBF800000, 0x02000000, 0x00000000, \
0x06012E58, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x06013280, 0x3F800000, \
0x00000000, 0xBF800000, 0x02000000, 0xBF800000, \
0x06013628, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xBF800000, 0x06013A50, 0x3F800000, \
0x00000000, 0xBF800000, 0x02000000, 0xBF800000, \
0x06013EA0, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xBF800000, 0x06015F14, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x060169B4, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x06016D08, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x0601726C, 0x3F800000, 0x00000000, 0xBF800000, \
0x02000000, 0xBF800000, 0x06017818, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1000000, \
0x0601805C, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x06018898, 0x3F800000, \
0x00000000, 0xBF800000, 0x02000000, 0xBF800000, \
0x0601910C, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xBF800000, 0x06019600, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x0601991C, 0x3F800000, 0x00000000, 0xBF800000, \
0x02000000, 0xBF800000, 0x0601A2FC, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x0601AAE0, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x0601AE88, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xBF800000, \
0x0601B874, 0x3F800000, 0x00000000, 0xBF800000, \
0x02000000, 0x00000000, 0x0601BCF0, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x0601C494, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xBF800000, 0x0601C7B0, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xBF800000, \
0x0601CE08, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x0600F0A4, 0x3F800000, \
0x00000000, 0xBF800000, 0x02000000, 0x00000000, \
0x0600F894, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x06000654, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1000000
var_80B84018: .word \
0xC3F50000, 0x42F00000, 0x00000000, 0xC3DC0000, \
0x42EA0000, 0x00000000, 0x0000002D, 0xC3F20000, \
0x42F40000, 0xC1E80000, 0xC3F00000, 0x42E80000, \
0x41900000, 0x00000050, 0xC3CE8000, 0x43080000, \
0xC2900000, 0xC3C98000, 0x430D0000, 0xC2B20000, \
0x00000019, 0xC3E30000, 0x42F00000, 0x00000000, \
0xC3D90000, 0x42F20000, 0x00000000, 0x00000014, \
0xC3E28000, 0x42D60000, 0xC1500000, 0xC3DC0000, \
0x42CC0000, 0xC1C80000, 0x00000028, 0xC3E30000, \
0x42D20000, 0x42480000, 0xC3E28000, 0x42D20000, \
0x42840000, 0x0000003C, 0xC3F80000, 0x42EE0000, \
0x00000000, 0xC3DD8000, 0x42E60000, 0x00000000, \
0x0000002D, 0xC3F10000, 0x42EE0000, 0x00000000, \
0xC3DC0000, 0x42E60000, 0x00000000, 0x0000001E, \
0xC409C000, 0x42EE0000, 0x40E00000, 0xC412C000, \
0x42E60000, 0x41600000, 0x00000019, 0xC3F48000, \
0x43010000, 0x00000000, 0xC3EB0000, 0x43000000, \
0x00000000, 0x00000028, 0xC4034000, 0x42FC0000, \
0x00000000, 0xC3FE8000, 0x42FC0000, 0x00000000, \
0x0000000A, 0xC3F58000, 0x42F00000, 0xC0E00000, \
0xC3FE8000, 0x42E60000, 0xC0E00000, 0x0000004B, \
0xC3F28000, 0x42EE0000, 0xC20C0000, 0xC3F20000, \
0x42E80000, 0x41700000, 0x0000002D, 0xC3F20000, \
0x42F60000, 0xC0C00000, 0xC3D98000, 0x42F40000, \
0xC1300000, 0x0000002D
var_80B841A0: .word \
0x00000014, 0x42A19989, 0xFE1C007A, 0xFFE30000, \
0x00000014, 0x42A19989, 0xFE1C007A, 0xFFE30000, \
0x00000014, 0x42A19989, 0xFE1C007A, 0xFFE30000, \
0x00000014, 0x42A19989, 0xFE3C0079, 0xFFEB0000, \
0x00000014, 0x42A19989, 0xFE3C0079, 0xFFEB0000, \
0x00000014, 0x42A19989, 0xFE3C0079, 0xFFEB0000, \
0xFF000014, 0x42A19989, 0xFE3C0079, 0xFFEB0000, \
0xFF00001E, 0x42A19989, 0xFE3C0079, 0xFFEB0000
var_80B84220: .word \
0x00000000, 0x42A19989, 0xFE200074, 0x00120000, \
0x00000000, 0x42A19989, 0xFE200074, 0x00120000, \
0x00000000, 0x42A19989, 0xFE200074, 0x00120000, \
0x00000000, 0x42A19989, 0xFE200074, 0x00120000, \
0x00000000, 0x42A19989, 0xFE200074, 0x00120000, \
0x00000000, 0x42A19989, 0xFE200074, 0x00120000, \
0xFF000000, 0x42A19989, 0xFE200074, 0x00120000, \
0xFF000000, 0x42A19989, 0xFE200074, 0x00120000
var_80B842A0: .word \
0x00000014, 0x4234CCDC, 0xFE490074, 0x00000000, \
0x00000014, 0x4234CCDC, 0xFE490074, 0x00000000, \
0x00000014, 0x424A667B, 0xFE4F0074, 0x00000000, \
0x00000014, 0x425E6680, 0xFE510074, 0x00000000, \
0x00000014, 0x4270001E, 0xFE550074, 0x00000000, \
0x00000014, 0x4282000F, 0xFE580074, 0x00000000, \
0x00000014, 0x428D999D, 0xFE5A0074, 0x00000000, \
0x00000014, 0x4297332D, 0xFE5D0073, 0x00000000, \
0xFF000014, 0x4297332D, 0xFE5D0074, 0x00000000, \
0xFF00001E, 0x4297332D, 0xFE5D0073, 0x00000000
var_80B84340: .word \
0x00000000, 0x427199B8, 0xFE200072, 0x00000000, \
0x00000000, 0x4234CCDC, 0xFE200072, 0x00000000, \
0x00000000, 0x4234CCDC, 0xFE260072, 0x00000000, \
0x00000000, 0x424A667B, 0xFE280072, 0x00000000, \
0x00000000, 0x425E6680, 0xFE2C0072, 0x00000000, \
0x00000000, 0x4270001E, 0xFE2F0072, 0x00000000, \
0x00000000, 0x4282000F, 0xFE310072, 0x00000000, \
0x00000000, 0x428D999D, 0xFE340072, 0x00000000, \
0xFF000000, 0x4297332D, 0xFE340072, 0x00000000, \
0xFF000000, 0x4297332D, 0xFE340072, 0x00000000
var_80B843E0: .word \
0x00000019, 0x4270001E, 0xFF8C0032, 0x01D50000, \
0x00000019, 0x4270001E, 0xFF8C0032, 0x01D50000, \
0x00000019, 0x4270001E, 0xFF8A0032, 0x01D30000, \
0x00000019, 0x4270001E, 0xFF880032, 0x01D10000, \
0x00000019, 0x4270001E, 0xFF850032, 0x01D00000, \
0x00000019, 0x4270001E, 0xFF820032, 0x01CF0000, \
0x00000019, 0x4270001E, 0xFF7F0032, 0x01CE0000, \
0x00000019, 0x4270001E, 0xFF7D0032, 0x01CE0000, \
0x00000019, 0x4270001E, 0xFF7A0032, 0x01CF0000, \
0x00000019, 0x4270001E, 0xFF770032, 0x01D00000, \
0x00000019, 0x4270001E, 0xFF740032, 0x01D20000, \
0x00000019, 0x4270001E, 0xFF740032, 0x01D20000, \
0xFF000019, 0x4270001E, 0xFF740032, 0x01D20000, \
0xFF000019, 0x4270001E, 0xFF740032, 0x01D20000
var_80B844C0: .word \
0x00000000, 0x41A33320, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0xFF000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0xFF000000, 0x4270001E, 0xFF7E0032, 0x01E00000
var_80B845A0: .word \
0x0000001E, 0x41A66654, 0xFE550074, 0x00040000, \
0x0000001E, 0x41A66654, 0xFE560073, 0x00040000, \
0x0000001E, 0x41A66654, 0xFE530073, 0x00070000, \
0x0000001E, 0x41A66654, 0xFE540072, 0x000C0000, \
0x0000001E, 0x41A66654, 0xFE520072, 0x000E0000, \
0x0000001E, 0x41A66654, 0xFE520072, 0x000E0000, \
0x0000001E, 0x41A66654, 0xFE520072, 0x000E0000, \
0xFF00001E, 0x41A66654, 0xFE520070, 0x000E0000, \
0xFF00001E, 0x41A66654, 0xFE520070, 0x000E0000
var_80B84630: .word \
0x00000000, 0x41A66654, 0xFE7B006D, 0x00240000, \
0x00000000, 0x41A66654, 0xFE7B006D, 0x00240000, \
0x00000000, 0x41A66654, 0xFE7B006D, 0x00240000, \
0x00000000, 0x41A66654, 0xFE7B006D, 0x00240000, \
0x00000000, 0x41A66654, 0xFE7B006D, 0x00240000, \
0x00000000, 0x41A66654, 0xFE7B006D, 0x00240000, \
0x00000000, 0x41A66654, 0xFE7B006D, 0x00240000, \
0xFF000000, 0x41A66654, 0xFE7B006D, 0x00240000, \
0xFF000000, 0x41A66654, 0xFE7B006D, 0x00240000
var_80B846C0: .word \
0x0000001E, 0x42340000, 0xFE100077, 0x00000000, \
0x0000001E, 0x42340000, 0xFE100077, 0x00000000, \
0x0000001E, 0x42340000, 0xFE100077, 0x00000000, \
0x0000000F, 0x42340000, 0xFE100077, 0x00000000, \
0x0000000F, 0x42373343, 0xFE29007A, 0x00000000, \
0x0000000F, 0x42373343, 0xFE75008B, 0x00000000, \
0x0000000F, 0x42373343, 0xFF3F00B7, 0x00000000, \
0x0000000F, 0x42373343, 0x001D00E8, 0x00000000, \
0x0000001E, 0x42373343, 0x01680130, 0x00000000, \
0x0000001E, 0x42373343, 0x01AD0148, 0x00000000, \
0x0000001E, 0x42373343, 0x01AD0148, 0x00000000, \
0x0000001E, 0x42373343, 0x01AD0148, 0x00000000, \
0x0000001E, 0x42373343, 0x01AD0148, 0x00000000, \
0xFF00001E, 0x42373343, 0x01AD0148, 0x00000000, \
0xFF00001E, 0x42373343, 0x01AD0148, 0x00000000
var_80B847B0: .word \
0x00000000, 0x42340000, 0xFE450073, 0x00000000, \
0x00000000, 0x42340000, 0xFE450073, 0x00000000, \
0x00000000, 0x42340000, 0xFE450073, 0x00000000, \
0x00000000, 0x42340000, 0xFE450073, 0x00000000, \
0x00000000, 0x42373343, 0xFE5C0085, 0x00000000, \
0x00000000, 0x42373343, 0xFEA80096, 0x00000000, \
0x00000000, 0x42373343, 0xFF7100C2, 0x00000000, \
0x00000000, 0x42373343, 0x005000F3, 0x00000000, \
0x00000000, 0x42373343, 0x019C013B, 0x00000000, \
0x00000000, 0x42373343, 0x01E2014C, 0x00000000, \
0x00000000, 0x42373343, 0x01E2014C, 0x00000000, \
0x00000000, 0x42373343, 0x01E2014C, 0x00000000, \
0x00000000, 0x42373343, 0x01E2014C, 0x00000000, \
0xFF000000, 0x42373343, 0x01E2014C, 0x00000000, \
0xFF000000, 0x42373343, 0x01E2014C, 0x00000000
var_80B848A0: .word \
0x00000019, 0x42726685, 0x00420194, 0x01A90000, \
0x00000019, 0x427199B8, 0x00420194, 0x01A90000, \
0x00000019, 0x425E6680, 0x00420194, 0x01AA0000, \
0x00000019, 0x425CCCE6, 0x003F0175, 0x019D0000, \
0x00000019, 0x424999AE, 0x001A0161, 0x01980000, \
0x00000019, 0x424999AE, 0x00110145, 0x018D0000, \
0x00000019, 0x423599A9, 0x00110146, 0x018D0000, \
0x00000019, 0x4234CCDC, 0xFF7800B1, 0x01030000, \
0x00000019, 0x422199A4, 0xFEFE006F, 0x00A90000, \
0x00000019, 0x4220CCD7, 0xFE87006C, 0x00410000, \
0x00000019, 0x420CCCD2, 0xFE87006C, 0x00410000, \
0x00000019, 0x420CCCD2, 0xFE87006C, 0x00410000, \
0xFF00001E, 0x41F1999A, 0xFE88006C, 0x00410000, \
0xFF00001E, 0x41F1999A, 0xFE88006C, 0x00410000
var_80B84980: .word \
0x00000000, 0x42373343, 0x001D017F, 0x01BD0000, \
0x00000000, 0x42373343, 0x001D017F, 0x01BD0000, \
0x00000000, 0x42373343, 0x001D017F, 0x01BD0000, \
0x00000000, 0x42373343, 0x001D017F, 0x01BD0000, \
0x00000000, 0x42373343, 0x001D017F, 0x01BD0000, \
0x00000000, 0x42373343, 0x0031015B, 0x01A80000, \
0x00000000, 0x42373343, 0x0031015B, 0x01A80000, \
0x00000000, 0x41F1999A, 0xFF9900C0, 0x011E0000, \
0x00000000, 0x41F1999A, 0xFF200071, 0x00C60000, \
0x00000000, 0x41F1999A, 0xFEA7006D, 0x00600000, \
0x00000000, 0x41F1999A, 0xFEA7006D, 0x00600000, \
0x00000000, 0x41F1999A, 0xFEA7006D, 0x00600000, \
0xFF000000, 0x41F1999A, 0xFEA7006D, 0x00600000, \
0xFF000000, 0x41F1999A, 0xFEA7006D, 0x00600000
var_80B84A60: .word \
0x0000000A, 0x41F00000, 0xFE1E0077, 0x00000000, \
0x0000000A, 0x41F00000, 0xFE1E0077, 0x00000000, \
0x0000000A, 0x41F00000, 0xFE1E0077, 0x00000000, \
0x0000000A, 0x41F66668, 0xFE1E0077, 0x00000000, \
0x0000000A, 0x41F66668, 0xFE1E0077, 0x00000000, \
0x0000000A, 0x41F66668, 0xFE32007E, 0x00000000, \
0x0000001E, 0x41F66668, 0xFE750096, 0x00000000, \
0x0000001E, 0x41F66668, 0xFE750096, 0x00000000, \
0xFF00001E, 0x41F66668, 0xFE750096, 0x00000000, \
0xFF00001E, 0x41F66668, 0xFE750096, 0x00000000
var_80B84B00: .word \
0x00000000, 0x41F00000, 0xFE480073, 0x00000000, \
0x00000000, 0x41F00000, 0xFE480073, 0x00000000, \
0x00000000, 0x41F00000, 0xFE480073, 0x00000000, \
0x00000000, 0x41F66668, 0xFE480073, 0x00000000, \
0x00000000, 0x41F66668, 0xFE480073, 0x00000000, \
0x00000000, 0x41F66668, 0xFE59008E, 0x00000000, \
0x00000000, 0x41F66668, 0xFE9A00AB, 0x00000000, \
0x00000000, 0x41F66668, 0xFE9A00AB, 0x00000000, \
0xFF000000, 0x41F66668, 0xFE9A00AB, 0x00000000, \
0xFF000000, 0x41F66668, 0xFE9A00AB, 0x00000000
var_80B84BA0: .word \
0x0000001E, 0x41C80000, 0xFDD90077, 0x00070000, \
0x0000001E, 0x41C80000, 0xFDD90077, 0x00070000, \
0x0000000F, 0x41C80000, 0xFDD90077, 0x00070000, \
0x0000000F, 0x42700000, 0xFE1B0078, 0xFFF90000, \
0x0000001E, 0x42700000, 0xFE1B0078, 0xFFF90000, \
0x0000001E, 0x42700000, 0xFE1B0078, 0xFFF90000, \
0x0000001E, 0x42700000, 0xFE1B0076, 0xFFFB0000, \
0xFF00001E, 0x42700000, 0xFE1B0077, 0xFFFA0000, \
0xFF00001E, 0x42700000, 0xFE1B0077, 0xFFFA0000
var_80B84C30: .word \
0x00000000, 0x4234CCDC, 0xFDB50073, 0x000E0000, \
0x00000000, 0x41CB3366, 0xFDB50073, 0x000E0000, \
0x00000000, 0x41CB3366, 0xFDB50073, 0x000E0000, \
0x00000000, 0x4270CD09, 0xFDF70075, 0xFFFF0000, \
0x00000000, 0x4270CD09, 0xFDF70075, 0xFFFF0000, \
0x00000000, 0x4270CD09, 0xFDF70075, 0xFFFF0000, \
0x00000000, 0x4270CD09, 0xFDF70075, 0xFFFF0000, \
0xFF000000, 0x4270CD09, 0xFDF70074, 0x00000000, \
0xFF000000, 0x4270CC08, 0xFDF70074, 0x00000000
var_80B84CC0: .word \
0x0000001E, 0x4270001E, 0x004B0034, 0x00320000, \
0x0000001E, 0x4270001E, 0x004B0034, 0x00300000, \
0x0000003C, 0x4270001E, 0x004A0034, 0x002D0000, \
0x0000003C, 0x4270001E, 0x00310033, 0xFFD50000, \
0x0000001E, 0x4270001E, 0x00310033, 0xFFD50000, \
0x0000001E, 0x4270001E, 0x00310033, 0xFFD50000, \
0xFF00001E, 0x4270001E, 0x00310033, 0xFFD50000, \
0xFF00001E, 0x4270001E, 0x00310033, 0xFFD50000
var_80B84D40: .word \
0x00000000, 0x4270001E, 0x005A0034, 0x00350000, \
0x00000000, 0x4270001E, 0x005A0034, 0x00320000, \
0x00000000, 0x4270001E, 0x005A0034, 0x002D0000, \
0x00000000, 0x4270001E, 0x00410033, 0xFFD40000, \
0x00000000, 0x4270001E, 0x00410033, 0xFFD40000, \
0x00000000, 0x4270001E, 0x00410033, 0xFFD40000, \
0xFF000000, 0x4270001E, 0x00410033, 0xFFD40000, \
0xFF000000, 0x4270001E, 0x00410033, 0xFFD40000
var_80B84DC0: .word \
0x0000001F, 0x4270001E, 0xFE3F0079, 0xFFED0000, \
0x0000001E, 0x4270001E, 0xFE3F0079, 0xFFED0000, \
0x0000001E, 0x4270001E, 0xFE3F0079, 0xFFED0000, \
0x0000001E, 0x4270001E, 0xFE38006E, 0xFFEF0000, \
0x0000001E, 0x4270001E, 0xFE38006E, 0xFFEF0000, \
0x0000001E, 0x4270001E, 0xFE38006E, 0xFFEF0000, \
0xFF00001E, 0x4270001E, 0xFE38006E, 0xFFEF0000, \
0xFF00001E, 0x4270001E, 0xFE38006E, 0xFFEF0000
var_80B84E40: .word \
0x00000000, 0x4270001E, 0xFE47006B, 0xFFEA0000, \
0x00000000, 0x4270001E, 0xFE47006B, 0xFFEA0000, \
0x00000000, 0x4270001E, 0xFE47006B, 0xFFEA0000, \
0x00000000, 0x4270001E, 0xFE47006B, 0xFFEA0000, \
0x00000000, 0x4270001E, 0xFE47006B, 0xFFEA0000, \
0x00000000, 0x4270001E, 0xFE47006B, 0xFFEA0000, \
0xFF000000, 0x4270001E, 0xFE47006B, 0xFFEA0000, \
0xFF000000, 0x4270001E, 0xFE47006B, 0xFFEA0000
var_80B84EC0: .word \
0x0000001E, 0x41A66654, 0xFEB5006E, 0xFFA50000, \
0x0000001E, 0x41A66654, 0xFEB5006E, 0xFFA50000, \
0x0000001E, 0x41A66654, 0xFEB5006E, 0xFFA50000, \
0x0000001E, 0x41A66654, 0xFE010079, 0x00070000, \
0x0000001E, 0x41A66654, 0xFE010079, 0x00070000, \
0x0000001E, 0x41A66654, 0xFE010079, 0x00070000, \
0xFF00001E, 0x41A66654, 0xFE010079, 0x00070000, \
0xFF00001E, 0x41A66654, 0xFE010079, 0x00070000
var_80B84F40: .word \
0x00000000, 0x41A66654, 0xFE8F006E, 0xFFBA0000, \
0x00000000, 0x41A66654, 0xFE8F006E, 0xFFBA0000, \
0x00000000, 0x41A66654, 0xFE8F006E, 0xFFBA0000, \
0x00000000, 0x41A66654, 0xFDDB007C, 0x001D0000, \
0x00000000, 0x41A66654, 0xFDDB007C, 0x001D0000, \
0x00000000, 0x41A66654, 0xFDDB007C, 0x001D0000, \
0xFF000000, 0x41A66654, 0xFDDB007C, 0x001D0000, \
0xFF000000, 0x41A66654, 0xFDDB007C, 0x001D0000
var_80B84FC0: .word var_80B841A0
.word var_80B84220
.word 0x00000000
.word var_80B842A0
.word var_80B84340
.word 0x00000000
.word var_80B843E0
.word var_80B844C0
.word 0x00000000
.word var_80B845A0
.word var_80B84630
.word 0x00000000
.word var_80B846C0
.word var_80B847B0
.word 0x00000000
.word var_80B848A0
.word var_80B84980
.word 0x00000000
.word var_80B84A60
.word var_80B84B00
.word 0x00000000
.word var_80B84BA0
.word var_80B84C30
.word 0x00000000
.word var_80B84CC0
.word var_80B84D40
.word 0x00000000
.word var_80B84DC0
.word var_80B84E40
.word 0x00000000
.word var_80B84EC0
.word var_80B84F40
.word 0x00000000
var_80B85044: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0000001A, \
0x00000015, 0x00000003
var_80B8506C: .word 0x00000000, 0x00000000, 0x00000000
var_80B85078: .word 0x060046F0, 0x06004AF0, 0x06004EF0, 0x060052F0
var_80B85088: .word \
0x06002AF0, 0x06002EF0, 0x060032F0, 0x060036F0, \
0x06003AF0, 0x06003EF0, 0x060042F0, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80B850B0: .word var_80B80F8C
.word var_80B80FAC
.word var_80B80FC0
.word var_80B80FD8
.word var_80B80FF0
.word var_80B81004
.word var_80B81018
var_80B850CC: .word var_80B816F4
.word var_80B81758
.word var_80B817AC
.word var_80B81848
.word var_80B81888
.word var_80B818DC
.word var_80B8191C
var_80B850E8: .word var_80B819EC
.word lbl_80B81A0C
.word var_80B81A60
.word var_80B81AA8
.word var_80B81B80
.word lbl_80B81BC8
.word var_80B81C2C
.word var_80B81D48
.word lbl_80B81D90
.word var_80B81DFC
.word var_80B81E4C
.word lbl_80B81EB0
.word var_80B81C5C
.word lbl_80B81C74
var_80B85120: .word var_80B81F18
.word var_80B81F3C
.word var_80B81FC0
.word lbl_80B81FE0
.word var_80B82038
.word var_80B82068
.word var_80B820C8
.word var_80B82104
.word var_80B82160
.word lbl_80B82180
.word var_80B821BC
.word var_80B82270
.word var_80B822DC
.word lbl_80B82324
.word var_80B82388
.word var_80B823B4
.word var_80B823F0
.word lbl_80B8242C
var_80B85168: .word var_80B82514
.word var_80B82554
.word var_80B825A4
.word var_80B825F4
.word var_80B82624
.word var_80B826D0
.word lbl_80B826F0
.word var_80B8274C
.word var_80B82790
.word var_80B827D0
.word var_80B82828
.word lbl_80B82848
.word var_80B828BC
var_80B8519C: .word var_80B82BA8
.word var_80B82C5C
.word var_80B82C8C
.word var_80B82CE0
.word var_80B82D20
.word var_80B82D94
.word var_80B82DC8
.word var_80B82E0C
.word var_80B82ED8
.word var_80B82F20
.word var_80B82F78
.word var_80B82FA8
.word lbl_80B82FC8
var_80B851D0: .word var_80B8306C
.word var_80B830AC
.word var_80B830EC
.word var_80B83160
.word lbl_80B83180
.word var_80B831EC
.word lbl_80B8320C
.word var_80B832D4
var_80B851F0: .word var_80B833B8
.word var_80B833E0
.word var_80B8343C
.word var_80B83464
.word var_80B8348C
.word var_80B834B4
.word var_80B834DC
.word var_80B83504
.word var_80B8352C
var_80B85214: .word 0x40490FDB
var_80B85218: .word 0x40490FDB
var_80B8521C: .word 0x40490FDB
var_80B85220: .word 0x40490FDB, 0x00000000, 0x00000000, 0x00000000

