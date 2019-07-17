# "Scheduler Thread" part of the code file
#
# Handles the "sched" thread.
#
# Starts at VRAM: 800A2B20 / VROM: B18A80
#

.section .text
func_800A2B20:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      a1, 0x0004(a3)             # 00000004
    beq     a1, $zero, lbl_800A2B88
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_800D2420
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0xE520             # t7 = 800FE520
    lb      t6, 0x0011(a3)             # 00000011
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    sb      t6, 0x0012(a3)             # 00000012
    lw      t8, 0x0000(t7)             # 800FE520
    lw      a0, 0x0008(a3)             # 00000008
    beq     a0, $zero, lbl_800A2B74
    nop
    beq     $zero, $zero, lbl_800A2B78
    lhu     a1, 0x000A(a0)             # 0000000A
lbl_800A2B74:
    lhu     a1, -0x1AFE(a1)            # 800FE502
lbl_800A2B78:
    lw      a0, 0x0004(a3)             # 00000004
    jal     func_800AF430
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
lbl_800A2B88:
    lw      a0, 0x0008(a3)             # 00000008
    beql    a0, $zero, lbl_800A2BB0
    sb      $zero, 0x0010(a3)          # 00000010
    jal     func_80003D60
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    jal     func_800D2E40
    lw      a0, 0x000C(a3)             # 0000000C
    lw      a3, 0x0018($sp)
    sb      $zero, 0x0010(a3)          # 00000010
lbl_800A2BB0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A2BC0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_800A2B20
    or      a0, a1, $zero              # a0 = 00000000
    lw      t6, 0x0018($sp)
    lw      t7, 0x024C(t6)             # 0000024C
    beql    t7, $zero, lbl_800A2BF8
    lw      $ra, 0x0014($sp)
    jal     func_80003BE0
    or      a0, $zero, $zero           # a0 = 00000000
    lw      t8, 0x0018($sp)
    sw      $zero, 0x024C(t8)          # 0000024C
    lw      $ra, 0x0014($sp)
lbl_800A2BF8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A2C04:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_800A2C10:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    jal     func_800D5CF0
    nop
    jal     func_80003BE0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A2C44:
    lw      v0, 0x0010(a1)             # 00000010
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t9, 0x8010                 # t9 = 80100000
    bne     v0, $at, lbl_800A2C8C
    addiu   t9, t9, 0xE520             # t9 = 800FE520
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0xE520             # t6 = 800FE520
    lw      t7, 0x0000(t6)             # 800FE520
    lw      v0, 0x0228(a0)             # 00000228
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    beql    v0, $zero, lbl_800A2C80
    sw      a1, 0x0220(a0)             # 00000220
    beq     $zero, $zero, lbl_800A2C80
    sw      a1, 0x0000(v0)             # 00000000
    sw      a1, 0x0220(a0)             # 00000220
lbl_800A2C80:
    sw      a1, 0x0228(a0)             # 00000228
    beq     $zero, $zero, lbl_800A2CAC
    sw      t8, 0x023C(a0)             # 0000023C
lbl_800A2C8C:
    lw      t0, 0x0000(t9)             # 800FE520
    lw      v0, 0x022C(a0)             # 0000022C
    beql    v0, $zero, lbl_800A2CA8
    sw      a1, 0x0224(a0)             # 00000224
    beq     $zero, $zero, lbl_800A2CA8
    sw      a1, 0x0000(v0)             # 00000000
    sw      a1, 0x0224(a0)             # 00000224
lbl_800A2CA8:
    sw      a1, 0x022C(a0)             # 0000022C
lbl_800A2CAC:
    lw      t1, 0x0008(a1)             # 00000008
    sw      $zero, 0x0000(a1)          # 00000000
    andi    t2, t1, 0x0003             # t2 = 00000000
    sw      t2, 0x0004(a1)             # 00000004
    jr      $ra
    nop


func_800A2CC4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0230(a0)             # 00000230
    lw      v1, 0x0004(v0)             # 00000004
    andi    t6, v1, 0x0010             # t6 = 00000000
    bne     t6, $zero, lbl_800A2CF4
    ori     t7, v1, 0x0010             # t7 = 00000010
    jal     func_800D0710
    sw      t7, 0x0004(v0)             # 00000004
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0xE520             # t8 = 800FE520
    lw      t9, 0x0000(t8)             # 800FE520
lbl_800A2CF4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A2D04:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    bnel    a1, $zero, lbl_800A2D24
    lw      a0, 0x0244(a2)             # 00000244
    beq     $zero, $zero, lbl_800A2DB8
    or      v0, $zero, $zero           # v0 = 00000000
    lw      a0, 0x0244(a2)             # 00000244
lbl_800A2D24:
    beql    a0, $zero, lbl_800A2D38
    lw      v0, 0x0248(a2)             # 00000248
    beq     $zero, $zero, lbl_800A2DB8
    or      v0, $zero, $zero           # v0 = 00000000
    lw      v0, 0x0248(a2)             # 00000248
lbl_800A2D38:
    beq     v0, $zero, lbl_800A2D48
    nop
    beq     $zero, $zero, lbl_800A2DB8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A2D48:
    beq     v0, $zero, lbl_800A2D58
    or      v1, $zero, $zero           # v1 = 00000000
    beq     $zero, $zero, lbl_800A2D58
    lw      v1, 0x0004(v0)             # 00000004
lbl_800A2D58:
    lw      t6, 0x000C(a1)             # 0000000C
    lw      v0, 0x0000(t6)             # 00000000
    bne     v1, v0, lbl_800A2D70
    nop
    beq     $zero, $zero, lbl_800A2DB8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A2D70:
    beq     a0, $zero, lbl_800A2D80
    or      v1, $zero, $zero           # v1 = 00000000
    beq     $zero, $zero, lbl_800A2D80
    lw      v1, 0x0004(a0)             # 00000004
lbl_800A2D80:
    bne     v1, v0, lbl_800A2D90
    nop
    beq     $zero, $zero, lbl_800A2DB8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A2D90:
    jal     func_800D5D50
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      t7, 0x000C(a1)             # 0000000C
    lw      t8, 0x0000(t7)             # 00000000
    bnel    v0, t8, lbl_800A2DB8
    or      v0, a1, $zero              # v0 = 00000000
    beq     $zero, $zero, lbl_800A2DB8
    or      v0, $zero, $zero           # v0 = 00000000
    or      v0, a1, $zero              # v0 = 00000000
lbl_800A2DB8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A2DC8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    lw      t6, 0x023C(a0)             # 0000023C
    or      v1, a3, $zero              # v1 = 00000000
    lw      s0, 0x0224(a0)             # 00000224
    beq     t6, $zero, lbl_800A2E24
    lw      v0, 0x0220(a0)             # 00000220
    andi    t7, a3, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_800A2E24
    lw      t8, 0x002C($sp)
    sw      v0, 0x0000(t8)             # 00000000
    lw      t9, 0x0220(a0)             # 00000220
    sw      $zero, 0x023C(a0)          # 0000023C
    addiu   $at, $zero, 0xFFFD         # $at = FFFFFFFD
    lw      t0, 0x0000(t9)             # 00000000
    and     v1, a3, $at
    bne     t0, $zero, lbl_800A2EE4
    sw      t0, 0x0220(a0)             # 00000220
    beq     $zero, $zero, lbl_800A2EE4
    sw      $zero, 0x0228(a0)          # 00000228
lbl_800A2E24:
    beql    s0, $zero, lbl_800A2EE8
    or      v0, v1, $zero              # v0 = 00000000
    lw      t2, 0x0004(s0)             # 00000004
    andi    t6, a3, 0x0002             # t6 = 00000000
    andi    t3, t2, 0x0020             # t3 = 00000000
    bne     t3, $zero, lbl_800A2E54
    nop
    lw      t4, 0x0008(s0)             # 00000008
    addiu   $at, $zero, 0x0003         # $at = 00000003
    andi    t5, t4, 0x0001             # t5 = 00000000
    bne     t5, $zero, lbl_800A2E80
    nop
lbl_800A2E54:
    beq     t6, $zero, lbl_800A2EE4
    lw      t7, 0x002C($sp)
    sw      s0, 0x0000(t7)             # 00000000
    lw      t8, 0x0224(a0)             # 00000224
    addiu   $at, $zero, 0xFFFD         # $at = FFFFFFFD
    and     v1, a3, $at
    lw      t9, 0x0000(t8)             # 00000000
    bne     t9, $zero, lbl_800A2EE4
    sw      t9, 0x0224(a0)             # 00000224
    beq     $zero, $zero, lbl_800A2EE4
    sw      $zero, 0x022C(a0)          # 0000022C
lbl_800A2E80:
    bnel    a3, $at, lbl_800A2EE8
    or      v0, v1, $zero              # v0 = 00000000
    lw      t1, 0x000C(s0)             # 0000000C
    or      a1, s0, $zero              # a1 = 00000000
    beql    t1, $zero, lbl_800A2EBC
    lw      t2, 0x0030($sp)
    sw      v1, 0x0024($sp)
    sw      a0, 0x0028($sp)
    jal     func_800A2D04
    sw      a3, 0x0034($sp)
    lw      v1, 0x0024($sp)
    lw      a0, 0x0028($sp)
    beq     v0, $zero, lbl_800A2EE4
    lw      a3, 0x0034($sp)
    lw      t2, 0x0030($sp)
lbl_800A2EBC:
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    and     v1, a3, $at
    sw      s0, 0x0000(t2)             # 00000000
    lw      t3, 0x002C($sp)
    sw      s0, 0x0000(t3)             # 00000000
    lw      t4, 0x0224(a0)             # 00000224
    lw      t5, 0x0000(t4)             # 00000000
    bne     t5, $zero, lbl_800A2EE4
    sw      t5, 0x0224(a0)             # 00000224
    sw      $zero, 0x022C(a0)          # 0000022C
lbl_800A2EE4:
    or      v0, v1, $zero              # v0 = 00000000
lbl_800A2EE8:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_800A2EFC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x0244(a0)             # 00000244
    bnel    t6, $zero, lbl_800A2F3C
    lw      $ra, 0x0014($sp)
    lw      v0, 0x0240(a0)             # 00000240
    lw      t7, 0x000C(a2)             # 0000000C
    beq     v0, $zero, lbl_800A2F30
    sw      t7, 0x0244(a0)             # 00000244
    lb      t8, 0x0012(v0)             # 00000012
    bgtzl   t8, lbl_800A2F3C
    lw      $ra, 0x0014($sp)
lbl_800A2F30:
    jal     func_800A2BC0
    lw      a1, 0x000C(a2)             # 0000000C
    lw      $ra, 0x0014($sp)
lbl_800A2F3C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A2F48:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0004(a3)             # 00000004
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t7, t6, 0x0003             # t7 = 00000000
    bne     t7, $zero, lbl_800A2FB0
    nop
    lw      a0, 0x0050(a3)             # 00000050
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beql    a0, $zero, lbl_800A2F90
    lw      t8, 0x0008(a3)             # 00000008
    lw      a1, 0x0054(a3)             # 00000054
    jal     func_80001E20              # osSendMesg
    sw      a3, 0x001C($sp)
    lw      a3, 0x001C($sp)
    lw      t8, 0x0008(a3)             # 00000008
lbl_800A2F90:
    lw      a0, 0x0018($sp)
    andi    t9, t8, 0x0040             # t9 = 00000000
    beq     t9, $zero, lbl_800A2FA8
    nop
    jal     func_800A2EFC
    or      a1, a3, $zero              # a1 = 00000000
lbl_800A2FA8:
    beq     $zero, $zero, lbl_800A2FB0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800A2FB0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A2FC0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0030($sp)
    beql    s0, $zero, lbl_800A312C
    lw      $ra, 0x001C($sp)
    lw      t6, 0x0010(s0)             # 00000010
    bnel    t6, $zero, lbl_800A3044
    lw      t3, 0x0004(s0)             # 00000004
    lw      v0, 0x0008(s0)             # 00000008
    andi    t7, v0, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_800A3014
    andi    t0, v0, 0x0001             # t0 = 00000000
    lw      t8, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFD         # $at = FFFFFFFD
    and     t9, t8, $at
    sw      t9, 0x0004(s0)             # 00000004
    sw      $zero, 0x0230(a0)          # 00000230
    lw      v0, 0x0008(s0)             # 00000008
    andi    t0, v0, 0x0001             # t0 = 00000000
lbl_800A3014:
    beq     t0, $zero, lbl_800A3030
    nop
    lw      t1, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t2, t1, $at
    sw      t2, 0x0004(s0)             # 00000004
    sw      $zero, 0x0234(a0)          # 00000234
lbl_800A3030:
    jal     func_800A2F48
    or      a1, s0, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_800A312C
    lw      $ra, 0x001C($sp)
    lw      t3, 0x0004(s0)             # 00000004
lbl_800A3044:
    addiu   $at, $zero, 0xFFCF         # $at = FFFFFFCF
    and     t4, t3, $at
    sw      t4, 0x0004(s0)             # 00000004
    jal     func_800D5AA0              # osWritebackDCacheAll
    sw      a0, 0x0028($sp)
    addiu   a0, s0, 0x0010             # a0 = 00000010
    jal     func_800CF7BC
    sw      a0, 0x0020($sp)
    lw      v0, 0x0010(s0)             # 00000010
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    v0, $at, lbl_800A3090
    addiu   $at, $zero, 0x0001         # $at = 00000001
    jal     func_800048C0              # osGetTime
    nop
    lui     $at, 0x8012                # $at = 80120000
    sw      v0, 0x0F48($at)            # 80120F48
    beq     $zero, $zero, lbl_800A30C4
    sw      v1, 0x0F4C($at)            # 80120F4C
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_800A3090:
    bne     v0, $at, lbl_800A30B0
    nop
    jal     func_800048C0              # osGetTime
    nop
    lui     $at, 0x8012                # $at = 80120000
    sw      v0, 0x0F40($at)            # 80120F40
    beq     $zero, $zero, lbl_800A30C4
    sw      v1, 0x0F44($at)            # 80120F44
lbl_800A30B0:
    jal     func_800048C0              # osGetTime
    nop
    lui     $at, 0x8012                # $at = 80120000
    sw      v0, 0x0F50($at)            # 80120F50
    sw      v1, 0x0F54($at)            # 80120F54
lbl_800A30C4:
    jal     func_800CF94C
    lw      a0, 0x0020($sp)
    lui     v0, 0x8010                 # v0 = 80100000
    addiu   v0, v0, 0xE520             # v0 = 800FE520
    lw      t5, 0x0000(v0)             # 800FE520
    lw      a0, 0x0030($sp)
    lw      v1, 0x0028($sp)
    bne     s0, a0, lbl_800A3128
    sw      s0, 0x0230(v1)             # 00000230
    lw      t6, 0x0234(v1)             # 00000234
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t1, 0x8012                 # t1 = 80120000
    bnel    t6, $zero, lbl_800A312C
    lw      $ra, 0x001C($sp)
    lw      t7, 0x0000(v0)             # 800FE520
    lw      t8, 0x0000(v0)             # 800FE520
    lw      t9, 0x0000(v0)             # 800FE520
    beql    t9, $zero, lbl_800A3114
    sw      a0, 0x0234(v1)             # 00000234
    sw      a0, 0x0234(v1)             # 00000234
lbl_800A3114:
    lw      t1, 0x0F44(t1)             # 80120F44
    lw      t0, 0x0F40(t0)             # 80120F40
    lui     $at, 0x8012                # $at = 80120000
    sw      t1, 0x0F5C($at)            # 80120F5C
    sw      t0, 0x0F58($at)            # 80120F58
lbl_800A3128:
    lw      $ra, 0x001C($sp)
lbl_800A312C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_800A313C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    addiu   s3, $sp, 0x0030            # s3 = FFFFFFF0
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    addiu   s1, s2, 0x0038             # s1 = 00000038
    sw      $zero, 0x003C($sp)
    sw      $zero, 0x0038($sp)
    sw      $zero, 0x0030($sp)
    or      a0, s1, $zero              # a0 = 00000038
    or      a1, s3, $zero              # a1 = FFFFFFF0
    jal     func_80002030              # osRecvMesg
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   s0, $zero, 0xFFFF          # s0 = FFFFFFFF
    beq     v0, s0, lbl_800A31A8
    or      a0, s2, $zero              # a0 = 00000000
lbl_800A3188:
    jal     func_800A2C44
    lw      a1, 0x0030($sp)
    or      a0, s1, $zero              # a0 = 00000038
    or      a1, s3, $zero              # a1 = FFFFFFF0
    jal     func_80002030              # osRecvMesg
    or      a2, $zero, $zero           # a2 = 00000000
    bnel    v0, s0, lbl_800A3188
    or      a0, s2, $zero              # a0 = 00000000
lbl_800A31A8:
    lw      t6, 0x023C(s2)             # 0000023C
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFFC
    beql    t6, $zero, lbl_800A31E8
    lw      t0, 0x0230(s2)             # 00000230
    lw      t7, 0x0230(s2)             # 00000230
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0xE520             # t8 = 800FE520
    beql    t7, $zero, lbl_800A31E8
    lw      t0, 0x0230(s2)             # 00000230
    lw      t9, 0x0000(t8)             # 800FE520
    jal     func_800A2CC4
    or      a0, s2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800A322C
    lw      $ra, 0x0024($sp)
    lw      t0, 0x0230(s2)             # 00000230
lbl_800A31E8:
    lw      t3, 0x0234(s2)             # 00000234
    addiu   a2, $sp, 0x0038            # a2 = FFFFFFF8
    sltiu   t1, t0, 0x0001
    sll     t2, t1,  1
    sltiu   t4, t3, 0x0001
    or      s0, t2, t4                 # s0 = 00000000
    jal     func_800A2DC8
    or      a3, s0, $zero              # a3 = 00000000
    beq     v0, s0, lbl_800A321C
    or      a0, s2, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)
    jal     func_800A2FC0
    lw      a2, 0x0038($sp)
lbl_800A321C:
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   t5, t5, 0xE520             # t5 = 800FE520
    lw      t6, 0x0000(t5)             # 800FE520
    lw      $ra, 0x0024($sp)
lbl_800A322C:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_800A3244:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0xE520             # t6 = 800FE520
    lw      t7, 0x0000(t6)             # 800FE520
    lw      t8, 0x0238(a0)             # 00000238
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sw      t9, 0x0238(a0)             # 00000238
    jal     func_800D5D50
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    or      v1, $zero, $zero           # v1 = 00000000
    lw      a1, 0x0244(a0)             # 00000244
    beq     a1, $zero, lbl_800A3288
    nop
    beq     $zero, $zero, lbl_800A3288
    lw      v1, 0x0004(a1)             # 00000004
lbl_800A3288:
    bnel    v1, v0, lbl_800A32C8
    lw      v0, 0x0240(a0)             # 00000240
    lw      v0, 0x0240(a0)             # 00000240
    beq     v0, $zero, lbl_800A32A4
    nop
    sb      $zero, 0x0010(v0)          # 00000010
    lw      a1, 0x0244(a0)             # 00000244
lbl_800A32A4:
    beql    a1, $zero, lbl_800A32B8
    lw      t0, 0x0248(a0)             # 00000248
    sb      $zero, 0x0010(a1)          # 00000010
    lw      a1, 0x0244(a0)             # 00000244
    lw      t0, 0x0248(a0)             # 00000248
lbl_800A32B8:
    sw      a1, 0x0240(a0)             # 00000240
    sw      $zero, 0x0248(a0)          # 00000248
    sw      t0, 0x0244(a0)             # 00000244
    lw      v0, 0x0240(a0)             # 00000240
lbl_800A32C8:
    beq     v0, $zero, lbl_800A3308
    nop
    lb      v1, 0x0012(v0)             # 00000012
    blez    v1, lbl_800A32E8
    addiu   t1, v1, 0xFFFF             # t1 = FFFFFFFF
    sb      t1, 0x0012(v0)             # 00000012
    lw      t2, 0x0240(a0)             # 00000240
    lb      v1, 0x0012(t2)             # 00000012
lbl_800A32E8:
    bgtz    v1, lbl_800A3308
    nop
    lw      a1, 0x0244(a0)             # 00000244
    beq     a1, $zero, lbl_800A3308
    nop
    jal     func_800A2BC0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
lbl_800A3308:
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   t3, t3, 0xE520             # t3 = 800FE520
    lw      t4, 0x0000(t3)             # 800FE520
    jal     func_800A313C
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A332C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      $zero, 0x0038($sp)
    sw      $zero, 0x0034($sp)
    lw      t6, 0x0230(s0)             # 00000230
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      v0, 0x0010(t6)             # 00000010
    bnel    v0, $at, lbl_800A33B8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    jal     func_800048C0              # osGetTime
    nop
    lui     t9, 0x8012                 # t9 = 80120000
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t9, 0x0F4C(t9)             # 80120F4C
    addiu   t7, t7, 0x0FA0             # t7 = 80120FA0
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, 0x0F48(t8)             # 80120F48
    lw      t2, 0x0000(t7)             # 80120FA0
    lw      t3, 0x0004(t7)             # 80120FA4
    sltu    $at, v1, t9
    subu    t1, v1, t9
    subu    t0, v0, t8
    subu    t0, t0, $at
    addu    t5, t1, t3
    sltu    $at, t5, t3
    addu    t4, $at, t0
    lui     $at, 0x8012                # $at = 80120000
    addu    t4, t4, t2
    sw      t4, 0x0FA0($at)            # 80120FA0
    lui     $at, 0x8012                # $at = 80120000
    beq     $zero, $zero, lbl_800A3474
    sw      t5, 0x0FA4($at)            # 80120FA4
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_800A33B8:
    bne     v0, $at, lbl_800A341C
    nop
    jal     func_800048C0              # osGetTime
    nop
    lui     t7, 0x8012                 # t7 = 80120000
    lui     t0, 0x8012                 # t0 = 80120000
    lw      t7, 0x0F44(t7)             # 80120F44
    addiu   t0, t0, 0x0FA8             # t0 = 80120FA8
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, 0x0F40(t6)             # 80120F40
    lw      t2, 0x0000(t0)             # 80120FA8
    lw      t3, 0x0004(t0)             # 80120FAC
    sltu    $at, v1, t7
    subu    t9, v1, t7
    subu    t8, v0, t6
    subu    t8, t8, $at
    addu    t5, t9, t3
    sltu    $at, t5, t3
    addu    t4, $at, t8
    lui     $at, 0x8012                # $at = 80120000
    addu    t4, t4, t2
    sw      t4, 0x0FA8($at)            # 80120FA8
    lui     $at, 0x8012                # $at = 80120000
    beq     $zero, $zero, lbl_800A3474
    sw      t5, 0x0FAC($at)            # 80120FAC
lbl_800A341C:
    jal     func_800048C0              # osGetTime
    nop
    lui     t7, 0x8012                 # t7 = 80120000
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t7, 0x0F54(t7)             # 80120F54
    addiu   t8, t8, 0x0FB0             # t8 = 80120FB0
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, 0x0F50(t6)             # 80120F50
    lw      t2, 0x0000(t8)             # 80120FB0
    lw      t3, 0x0004(t8)             # 80120FB4
    sltu    $at, v1, t7
    subu    t1, v1, t7
    subu    t0, v0, t6
    subu    t0, t0, $at
    addu    t5, t1, t3
    sltu    $at, t5, t3
    addu    t4, $at, t0
    lui     $at, 0x8012                # $at = 80120000
    addu    t4, t4, t2
    sw      t4, 0x0FB0($at)            # 80120FB0
    lui     $at, 0x8012                # $at = 80120000
    sw      t5, 0x0FB4($at)            # 80120FB4
lbl_800A3474:
    lw      a1, 0x0230(s0)             # 00000230
    lui     t9, 0x8010                 # t9 = 80100000
    sw      $zero, 0x0230(s0)          # 00000230
    addiu   t9, t9, 0xE520             # t9 = 800FE520
    lw      t6, 0x0000(t9)             # 800FE520
    lw      t7, 0x0004(a1)             # 00000004
    addiu   a0, a1, 0x0010             # a0 = 00000010
    andi    t8, t7, 0x0010             # t8 = 00000000
    beq     t8, $zero, lbl_800A34E4
    nop
    jal     func_800D2690
    sw      a1, 0x003C($sp)
    beq     v0, $zero, lbl_800A34E4
    lw      a1, 0x003C($sp)
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   t0, t0, 0xE520             # t0 = 800FE520
    lw      t1, 0x0000(t0)             # 800FE520
    lw      t2, 0x0004(a1)             # 00000004
    ori     t3, t2, 0x0020             # t3 = 00000020
    sw      t3, 0x0004(a1)             # 00000004
    lw      t4, 0x0224(s0)             # 00000224
    sw      t4, 0x0000(a1)             # 00000000
    lw      t5, 0x022C(s0)             # 0000022C
    sw      a1, 0x0224(s0)             # 00000224
    bnel    t5, $zero, lbl_800A350C
    lw      t8, 0x0230(s0)             # 00000230
    beq     $zero, $zero, lbl_800A3508
    sw      a1, 0x022C(s0)             # 0000022C
lbl_800A34E4:
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0xE520             # t9 = 800FE520
    lw      t6, 0x0000(t9)             # 800FE520
    lw      v0, 0x0004(a1)             # 00000004
    addiu   $at, $zero, 0xFFFD         # $at = FFFFFFFD
    and     t7, v0, $at
    sw      t7, 0x0004(a1)             # 00000004
    jal     func_800A2F48
    or      a0, s0, $zero              # a0 = 00000000
lbl_800A3508:
    lw      t8, 0x0230(s0)             # 00000230
lbl_800A350C:
    lw      t2, 0x0234(s0)             # 00000234
    or      a0, s0, $zero              # a0 = 00000000
    sltiu   t0, t8, 0x0001
    sll     t1, t0,  1
    sltiu   t3, t2, 0x0001
    or      a3, t1, t3                 # a3 = 00000000
    sw      a3, 0x0030($sp)
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFF8
    jal     func_800A2DC8
    addiu   a2, $sp, 0x0034            # a2 = FFFFFFF4
    lw      a3, 0x0030($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0038($sp)
    beq     v0, a3, lbl_800A3550
    nop
    jal     func_800A2FC0
    lw      a2, 0x0034($sp)
lbl_800A3550:
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   t4, t4, 0xE520             # t4 = 800FE520
    lw      t5, 0x0000(t4)             # 800FE520
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_800A3570:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      $zero, 0x0028($sp)
    jal     func_800048C0              # osGetTime
    sw      $zero, 0x0024($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, 0x0F5C(t7)             # 80120F5C
    lw      t6, 0x0F58(t6)             # 80120F58
    lui     t0, 0x8012                 # t0 = 80120000
    sltu    $at, v1, t7
    subu    t8, v0, t6
    subu    t8, t8, $at
    addiu   t0, t0, 0x0FC0             # t0 = 80120FC0
    sw      t8, 0x0000(t0)             # 80120FC0
    subu    t9, v1, t7
    sw      t9, 0x0004(t0)             # 80120FC4
    lw      a1, 0x0234(s0)             # 00000234
    sw      $zero, 0x0234(s0)          # 00000234
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lw      t1, 0x0004(a1)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    and     t2, t1, $at
    jal     func_800A2F48
    sw      t2, 0x0004(a1)             # 00000004
    lw      t3, 0x0230(s0)             # 00000230
    lw      t6, 0x0234(s0)             # 00000234
    or      a0, s0, $zero              # a0 = 00000000
    sltiu   t4, t3, 0x0001
    sll     t5, t4,  1
    sltiu   t7, t6, 0x0001
    or      a3, t5, t7                 # a3 = 00000000
    sw      a3, 0x0020($sp)
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF8
    jal     func_800A2DC8
    addiu   a2, $sp, 0x0024            # a2 = FFFFFFF4
    lw      a3, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0028($sp)
    beq     v0, a3, lbl_800A3624
    nop
    jal     func_800A2FC0
    lw      a2, 0x0024($sp)
lbl_800A3624:
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0xE520             # t8 = 800FE520
    lw      t9, 0x0000(t8)             # 800FE520
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_800A3644:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0xE520             # t6 = 800FE520
    lw      t7, 0x0000(t6)             # 800FE520
    addiu   a1, $zero, 0x029E          # a1 = 0000029E
    jal     func_80001E20              # osSendMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A3674:
# sched thread entrypoint
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s8, 0x0038($sp)
    sw      s7, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    lui     s1, 0x8010                 # s1 = 80100000
    sw      $zero, 0x004C($sp)
    addiu   s1, s1, 0xE520             # s1 = 800FE520
    addiu   s8, $zero, 0x0004          # s8 = 00000004
    addiu   s7, $zero, 0x0003          # s7 = 00000003
    addiu   s6, $zero, 0x0001          # s6 = 00000001
    addiu   s5, $zero, 0x029E          # s5 = 0000029E
    addiu   s4, $zero, 0x029C          # s4 = 0000029C
    addiu   s3, $zero, 0x029B          # s3 = 0000029B
    addiu   s2, $sp, 0x004C            # s2 = FFFFFFFC
    lw      t6, 0x0000(s1)             # 800FE520
lbl_800A36D0:
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = FFFFFFFC
    jal     func_80002030              # osRecvMesg
    or      a2, s6, $zero              # a2 = 00000001
    lw      t7, 0x004C($sp)
    beql    t7, s3, lbl_800A3714
    lw      t9, 0x0000(s1)             # 800FE520
    beql    t7, s4, lbl_800A3728
    lw      t0, 0x0000(s1)             # 800FE520
    bne     t7, s5, lbl_800A3738
    lw      t1, 0x004C($sp)
    lw      t8, 0x0000(s1)             # 800FE520
    jal     func_800A313C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800A36D0
    lw      t6, 0x0000(s1)             # 800FE520
    lw      t9, 0x0000(s1)             # 800FE520
lbl_800A3714:
    jal     func_800A332C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800A36D0
    lw      t6, 0x0000(s1)             # 800FE520
    lw      t0, 0x0000(s1)             # 800FE520
lbl_800A3728:
    jal     func_800A3570
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800A36D0
    lw      t6, 0x0000(s1)             # 800FE520
lbl_800A3738:
    lh      v0, 0x0000(t1)             # 00000000
    beq     v0, s6, lbl_800A375C
    nop
    beq     v0, s7, lbl_800A377C
    nop
    beq     v0, s8, lbl_800A376C
    nop
    beq     $zero, $zero, lbl_800A36D0
    lw      t6, 0x0000(s1)             # 800FE520
lbl_800A375C:
    jal     func_800A3244
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800A36D0
    lw      t6, 0x0000(s1)             # 800FE520
lbl_800A376C:
    jal     func_800A2C04
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800A36D0
    lw      t6, 0x0000(s1)             # 800FE520
lbl_800A377C:
    jal     func_800A2C10
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800A36D0
    lw      t6, 0x0000(s1)             # 800FE520
    nop
    nop
    nop
    nop
    nop
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    lw      s5, 0x002C($sp)
    lw      s6, 0x0030($sp)
    lw      s7, 0x0034($sp)
    lw      s8, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_800A37D0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0258          # a1 = 00000258
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x024C(s0)             # 0000024C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0018             # a1 = 00000018
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addiu   a0, s0, 0x0038             # a0 = 00000038
    addiu   a1, s0, 0x0050             # a1 = 00000050
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_80003BE0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_800D2E40
    addiu   a0, $zero, 0x0042          # a0 = 00000042
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80003FB0              # osSetEventMesg
    addiu   a2, $zero, 0x029B          # a2 = 0000029B
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80003FB0              # osSetEventMesg
    addiu   a2, $zero, 0x029C          # a2 = 0000029C
    lw      a0, 0x0044($sp)
    addiu   a1, s0, 0x0250             # a1 = 00000250
    jal     func_800ACE90
    or      a2, s0, $zero              # a2 = 00000000
    lw      t7, 0x0034($sp)
    lw      t8, 0x0038($sp)
    addiu   a0, s0, 0x0070             # a0 = 00000070
    lui     a2, 0x800A                 # a2 = 800A0000
    addiu   a2, a2, 0x3674             # a2 = 800A3674
    sw      a0, 0x002C($sp)
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    or      a3, s0, $zero              # a3 = 00000000
    sw      t7, 0x0010($sp)
    jal     func_80002F20              # osCreateThread
    sw      t8, 0x0014($sp)
    jal     func_80005EC0              # osStartThread
    lw      a0, 0x002C($sp)
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop
    nop
    nop
