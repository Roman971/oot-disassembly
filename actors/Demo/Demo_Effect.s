.section .text
func_8092ACC0:
    sw      a1, 0x018C(a0)             # 0000018C
    jr      $ra
    nop


func_8092ACCC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x001C($sp)
    lhu     a2, 0x1D74(a3)             # 00001D74
    sll     t7, t6,  2
    addu    t8, a3, t7
    lw      v0, 0x1D8C(t8)             # 00001D8C
    lhu     a0, 0x0004(v0)             # 00000004
    jal     func_8005C690
    lhu     a1, 0x0002(v0)             # 00000002
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    mov.s   $f2, $f0
    lw      $ra, 0x0014($sp)
    c.lt.s  $f12, $f0
    nop
    bc1fl   lbl_8092AD24
    mov.s   $f0, $f2
    mov.s   $f2, $f12
    mov.s   $f0, $f2
lbl_8092AD24:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_8092AD2C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     t6, %hi(func_8092E3F8)     # t6 = 80930000
    addiu   t6, t6, %lo(func_8092E3F8) # t6 = 8092E3F8
    sw      t6, 0x0188(s0)             # 00000188
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x5A2C(t7)            # 8011A5D4
    lui     t9, %hi(func_8092E014)     # t9 = 80930000
    lui     t8, %hi(func_8092E058)     # t8 = 80930000
    beq     t7, $zero, lbl_8092AD6C
    addiu   t9, t9, %lo(func_8092E014) # t9 = 8092E014
    addiu   t8, t8, %lo(func_8092E058) # t8 = 8092E058
    beq     $zero, $zero, lbl_8092AD70
    sw      t8, 0x0184(s0)             # 00000184
lbl_8092AD6C:
    sw      t9, 0x0184(s0)             # 00000184
lbl_8092AD70:
    lh      t0, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x0043         # $at = 00000043
    or      a0, s0, $zero              # a0 = 00000000
    bne     t0, $at, lbl_8092AD9C
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    lui     a1, 0x3EB3                 # a1 = 3EB30000
    ori     a1, a1, 0x3333             # a1 = 3EB33333
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8092ADA8
    addiu   t1, $zero, 0x0001          # t1 = 00000001
lbl_8092AD9C:
    jal     func_80020F88
    ori     a1, a1, 0xCCCD             # a1 = 0000CCCD
    addiu   t1, $zero, 0x0001          # t1 = 00000001
lbl_8092ADA8:
    addiu   t2, $zero, 0x4000          # t2 = 00004000
    sh      t1, 0x017C(s0)             # 0000017C
    sh      t2, 0x00B4(s0)             # 000000B4
    jal     func_8092D12C
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x0182(s0)          # 00000182
    lh      v0, 0x0182(s0)             # 00000182
    sb      $zero, 0x0176(s0)          # 00000176
    lui     $at, %hi(var_809301B0)     # $at = 80930000
    sh      v0, 0x0180(s0)             # 00000180
    sh      v0, 0x017E(s0)             # 0000017E
    sh      $zero, %lo(var_809301B0)($at)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_8092ADEC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     t6, %hi(func_8092FB94)     # t6 = 80930000
    lui     t7, %hi(func_8092B8DC)     # t7 = 80930000
    addiu   t6, t6, %lo(func_8092FB94) # t6 = 8092FB94
    addiu   t7, t7, %lo(func_8092B8DC) # t7 = 8092B8DC
    sb      $zero, 0x0174(a0)          # 00000174
    sb      $zero, 0x0175(a0)          # 00000175
    sw      t6, 0x0188(a0)             # 00000188
    sw      t7, 0x0184(a0)             # 00000184
    sw      a0, 0x0018($sp)
    jal     func_80020F88
    lui     a1, 0x3E80                 # a1 = 3E800000
    lw      a0, 0x0018($sp)
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    sh      t8, 0x017C(a0)             # 0000017C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_8092AE38:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x0064($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    lui     a2, %hi(var_809301B4)      # a2 = 80930000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    a3, v0, 0x00FF             # a3 = 00000000
    sll     t8, a3,  1
    addu    a2, a2, t8
    lh      a2, %lo(var_809301B4)(a2)
    andi    t6, v0, 0xF000             # t6 = 00000000
    sra     t7, t6, 12
    bne     a2, $at, lbl_8092AE80
    sw      t7, 0x0050($sp)
    beq     $zero, $zero, lbl_8092AEA8
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8092AE80:
    lw      a0, 0x0064($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    sll     a1, a2, 16
    sra     a1, a1, 16
    sw      a3, 0x0054($sp)
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at
    lw      a3, 0x0054($sp)
    or      v1, v0, $zero              # v1 = 00000000
lbl_8092AEA8:
    bltz    v1, lbl_8092AEB4
    or      a0, s0, $zero              # a0 = 00000000
    sb      v1, 0x015C(s0)             # 0000015C
lbl_8092AEB4:
    sh      $zero, 0x017A(s0)          # 0000017A
    lui     a1, 0x3E4C                 # a1 = 3E4C0000
    ori     a1, a1, 0xCCCD             # a1 = 3E4CCCCD
    jal     func_80020F88
    sw      a3, 0x0054($sp)
    lw      a3, 0x0054($sp)
    sltiu   $at, a3, 0x001A
    beq     $at, $zero, lbl_8092B5F8
    sll     t9, a3,  2
    lui     $at, %hi(var_80930220)     # $at = 80930000
    addu    $at, $at, t9
    lw      t9, %lo(var_80930220)($at)
    jr      t9
    nop
var_8092AEEC:
    lui     t0, %hi(func_8092E800)     # t0 = 80930000
    lui     t1, %hi(func_8092B710)     # t1 = 80930000
    addiu   t0, t0, %lo(func_8092E800) # t0 = 8092E800
    addiu   t1, t1, %lo(func_8092B710) # t1 = 8092B710
    sw      t0, 0x0188(s0)             # 00000188
    beq     $zero, $zero, lbl_8092B5F8
    sw      t1, 0x0184(s0)             # 00000184
var_8092AF08:
    lui     t2, %hi(func_8092EACC)     # t2 = 80930000
    lui     t3, %hi(func_8092B6E0)     # t3 = 80930000
    addiu   t2, t2, %lo(func_8092EACC) # t2 = 8092EACC
    addiu   t3, t3, %lo(func_8092B6E0) # t3 = 8092B6E0
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    sw      t2, 0x0188(s0)             # 00000188
    sw      t3, 0x0184(s0)             # 00000184
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8092B5FC
    mtc1    $zero, $f0                 # $f0 = 0.00
var_8092AF38:
    lui     t4, %hi(func_8092F23C)     # t4 = 80930000
    lui     t5, %hi(func_8092C750)     # t5 = 80930000
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   t4, t4, %lo(func_8092F23C) # t4 = 8092F23C
    addiu   t5, t5, %lo(func_8092C750) # t5 = 8092C750
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    lui     a1, 0x3D4C                 # a1 = 3D4C0000
    sw      t4, 0x0188(s0)             # 00000188
    sw      t5, 0x0184(s0)             # 00000184
    sb      v0, 0x0174(s0)             # 00000174
    sb      t6, 0x0175(s0)             # 00000175
    sh      $zero, 0x0178(s0)          # 00000178
    ori     a1, a1, 0xCCCD             # a1 = 3D4CCCCD
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   t7, $zero, 0x00BC          # t7 = 000000BC
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    sb      t7, 0x0168(s0)             # 00000168
    sb      v0, 0x0169(s0)             # 00000169
    sb      v0, 0x016A(s0)             # 0000016A
    sb      t8, 0x016C(s0)             # 0000016C
    sb      v0, 0x016D(s0)             # 0000016D
    beq     $zero, $zero, lbl_8092B5F8
    sb      $zero, 0x016B(s0)          # 0000016B
var_8092AF9C:
    lui     t9, %hi(func_8092F00C)     # t9 = 80930000
    lui     t0, %hi(func_8092C830)     # t0 = 80930000
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   t9, t9, %lo(func_8092F00C) # t9 = 8092F00C
    addiu   t0, t0, %lo(func_8092C830) # t0 = 8092C830
    sw      t9, 0x0188(s0)             # 00000188
    sw      t0, 0x0184(s0)             # 00000184
    sb      v0, 0x0174(s0)             # 00000174
    sb      $zero, 0x0175(s0)          # 00000175
    sb      $zero, 0x0176(s0)          # 00000176
    sh      $zero, 0x0178(s0)          # 00000178
    lw      t1, 0x0050($sp)
    sltiu   $at, t1, 0x0007
    beq     $at, $zero, lbl_8092B0CC
    sll     t1, t1,  2
    lui     $at, %hi(var_80930288)     # $at = 80930000
    addu    $at, $at, t1
    lw      t1, %lo(var_80930288)($at)
    jr      t1
    nop
var_8092AFEC:
    addiu   t2, $zero, 0x0032          # t2 = 00000032
    sb      v0, 0x0168(s0)             # 00000168
    sb      v0, 0x0169(s0)             # 00000169
    sb      v0, 0x016A(s0)             # 0000016A
    sb      t2, 0x016C(s0)             # 0000016C
    sb      v0, 0x016B(s0)             # 0000016B
    beq     $zero, $zero, lbl_8092B0CC
    sb      $zero, 0x016D(s0)          # 0000016D
var_8092B00C:
    addiu   t3, $zero, 0x0096          # t3 = 00000096
    sb      v0, 0x0168(s0)             # 00000168
    sb      v0, 0x0169(s0)             # 00000169
    sb      v0, 0x016A(s0)             # 0000016A
    sb      t3, 0x016C(s0)             # 0000016C
    sb      $zero, 0x016B(s0)          # 0000016B
    beq     $zero, $zero, lbl_8092B0CC
    sb      v0, 0x016D(s0)             # 0000016D
var_8092B02C:
    addiu   t4, $zero, 0x00C8          # t4 = 000000C8
    sb      v0, 0x0168(s0)             # 00000168
    sb      v0, 0x0169(s0)             # 00000169
    sb      v0, 0x016A(s0)             # 0000016A
    sb      t4, 0x016C(s0)             # 0000016C
    sb      $zero, 0x016B(s0)          # 0000016B
    beq     $zero, $zero, lbl_8092B0CC
    sb      $zero, 0x016D(s0)          # 0000016D
var_8092B04C:
    addiu   t5, $zero, 0x0096          # t5 = 00000096
    sb      v0, 0x0168(s0)             # 00000168
    sb      v0, 0x0169(s0)             # 00000169
    sb      v0, 0x016A(s0)             # 0000016A
    sb      t5, 0x016C(s0)             # 0000016C
    sb      v0, 0x016B(s0)             # 0000016B
    beq     $zero, $zero, lbl_8092B0CC
    sb      $zero, 0x016D(s0)          # 0000016D
var_8092B06C:
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    sb      v0, 0x0168(s0)             # 00000168
    sb      v0, 0x0169(s0)             # 00000169
    sb      v0, 0x016A(s0)             # 0000016A
    sb      t6, 0x016B(s0)             # 0000016B
    sb      v0, 0x016C(s0)             # 0000016C
    beq     $zero, $zero, lbl_8092B0CC
    sb      $zero, 0x016D(s0)          # 0000016D
var_8092B08C:
    addiu   t7, $zero, 0x00C8          # t7 = 000000C8
    addiu   t8, $zero, 0x0032          # t8 = 00000032
    sb      v0, 0x0168(s0)             # 00000168
    sb      v0, 0x0169(s0)             # 00000169
    sb      v0, 0x016A(s0)             # 0000016A
    sb      t8, 0x016C(s0)             # 0000016C
    sb      t7, 0x016B(s0)             # 0000016B
    beq     $zero, $zero, lbl_8092B0CC
    sb      v0, 0x016D(s0)             # 0000016D
var_8092B0B0:
    addiu   t9, $zero, 0x00C8          # t9 = 000000C8
    sb      v0, 0x0168(s0)             # 00000168
    sb      v0, 0x0169(s0)             # 00000169
    sb      v0, 0x016A(s0)             # 0000016A
    sb      t9, 0x016C(s0)             # 0000016C
    sb      $zero, 0x016B(s0)          # 0000016B
    sb      $zero, 0x016D(s0)          # 0000016D
lbl_8092B0CC:
    addiu   t0, $zero, 0x0007          # t0 = 00000007
    sh      t0, 0x017C(s0)             # 0000017C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     $zero, $zero, lbl_8092B5FC
    mtc1    $zero, $f0                 # $f0 = 0.00
var_8092B0E8:
    lui     t1, %hi(func_8092F364)     # t1 = 80930000
    lui     t2, %hi(func_8092CB28)     # t2 = 80930000
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   t1, t1, %lo(func_8092F364) # t1 = 8092F364
    addiu   t2, t2, %lo(func_8092CB28) # t2 = 8092CB28
    sb      v0, 0x0174(s0)             # 00000174
    sw      t1, 0x0188(s0)             # 00000188
    beq     $zero, $zero, lbl_8092B5F8
    sw      t2, 0x0184(s0)             # 00000184
var_8092B10C:
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    lui     t3, %hi(func_8092EC50)     # t3 = 80930000
    lui     t4, %hi(func_8092CB94)     # t4 = 80930000
    addiu   v1, $zero, 0x00AA          # v1 = 000000AA
    addiu   t3, t3, %lo(func_8092EC50) # t3 = 8092EC50
    addiu   t4, t4, %lo(func_8092CB94) # t4 = 8092CB94
    sw      t3, 0x0188(s0)             # 00000188
    sb      v1, 0x0169(s0)             # 00000169
    sb      v0, 0x0168(s0)             # 00000168
    sb      v0, 0x016A(s0)             # 0000016A
    sb      v0, 0x016B(s0)             # 0000016B
    sb      v0, 0x016D(s0)             # 0000016D
    sb      $zero, 0x016C(s0)          # 0000016C
    sb      $zero, 0x0174(s0)          # 00000174
    sb      $zero, 0x0176(s0)          # 00000176
    sw      t4, 0x0184(s0)             # 00000184
    beq     $zero, $zero, lbl_8092B5F8
    sh      $zero, 0x017C(s0)          # 0000017C
var_8092B164:
    lui     t5, 0x8012                 # t5 = 80120000
    lw      t5, -0x5A30(t5)            # 8011A5D0
    addiu   $at, $zero, 0x013D         # $at = 0000013D
    or      a0, s0, $zero              # a0 = 00000000
    bne     t5, $at, lbl_8092B190
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    lui     a1, 0x3F80                 # a1 = 3F800000
    beq     $zero, $zero, lbl_8092B19C
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_8092B190:
    jal     func_80020F88
    ori     a1, a1, 0xCCCD             # a1 = 0000CCCD
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_8092B19C:
    lui     t6, %hi(func_8092EC50)     # t6 = 80930000
    lui     t0, %hi(func_8092CD30)     # t0 = 80930000
    addiu   v1, $zero, 0x00AA          # v1 = 000000AA
    addiu   t6, t6, %lo(func_8092EC50) # t6 = 8092EC50
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    addiu   t0, t0, %lo(func_8092CD30) # t0 = 8092CD30
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t6, 0x0188(s0)             # 00000188
    sb      v1, 0x0168(s0)             # 00000168
    sb      v0, 0x0169(s0)             # 00000169
    sb      v0, 0x016A(s0)             # 0000016A
    sb      t7, 0x016C(s0)             # 0000016C
    sb      v0, 0x016D(s0)             # 0000016D
    sb      $zero, 0x016B(s0)          # 0000016B
    sb      t8, 0x0174(s0)             # 00000174
    sb      t9, 0x0175(s0)             # 00000175
    sb      $zero, 0x0176(s0)          # 00000176
    sh      $zero, 0x0178(s0)          # 00000178
    sw      t0, 0x0184(s0)             # 00000184
    beq     $zero, $zero, lbl_8092B5F8
    sh      t1, 0x017C(s0)             # 0000017C
var_8092B1F8:
    lui     t2, 0x8012                 # t2 = 80120000
    lw      t2, -0x5A30(t2)            # 8011A5D0
    addiu   $at, $zero, 0x00EE         # $at = 000000EE
    or      a0, s0, $zero              # a0 = 00000000
    bne     t2, $at, lbl_8092B228
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    lui     a1, 0x4019                 # a1 = 40190000
    ori     a1, a1, 0x999A             # a1 = 4019999A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8092B230
    nop
lbl_8092B228:
    jal     func_80020F88
    ori     a1, a1, 0xCCCD             # a1 = 0000CCCD
lbl_8092B230:
    lui     t3, %hi(func_8092EC50)     # t3 = 80930000
    lui     t6, %hi(func_8092CF28)     # t6 = 80930000
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   v1, $zero, 0x00AA          # v1 = 000000AA
    addiu   t3, t3, %lo(func_8092EC50) # t3 = 8092EC50
    addiu   t4, $zero, 0x00C8          # t4 = 000000C8
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    addiu   t6, t6, %lo(func_8092CF28) # t6 = 8092CF28
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t3, 0x0188(s0)             # 00000188
    sb      v1, 0x0168(s0)             # 00000168
    sb      v1, 0x016A(s0)             # 0000016A
    sb      v0, 0x0169(s0)             # 00000169
    sb      t4, 0x016C(s0)             # 0000016C
    sb      $zero, 0x016B(s0)          # 0000016B
    sb      $zero, 0x016D(s0)          # 0000016D
    sb      t5, 0x0174(s0)             # 00000174
    sb      $zero, 0x0176(s0)          # 00000176
    sw      t6, 0x0184(s0)             # 00000184
    beq     $zero, $zero, lbl_8092B5F8
    sh      t7, 0x017C(s0)             # 0000017C
var_8092B284:
    lui     t8, %hi(func_8092F4EC)     # t8 = 80930000
    lui     t9, %hi(func_8092C414)     # t9 = 80930000
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   t8, t8, %lo(func_8092F4EC) # t8 = 8092F4EC
    addiu   t9, t9, %lo(func_8092C414) # t9 = 8092C414
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    sw      t8, 0x0188(s0)             # 00000188
    sw      t9, 0x0184(s0)             # 00000184
    sh      t0, 0x0178(s0)             # 00000178
    sb      t1, 0x0174(s0)             # 00000174
    beq     $zero, $zero, lbl_8092B5F8
    sb      v0, 0x0175(s0)             # 00000175
var_8092B2B8:
    lui     t2, %hi(func_8092F4EC)     # t2 = 80930000
    lui     t3, %hi(func_8092C488)     # t3 = 80930000
    addiu   t2, t2, %lo(func_8092F4EC) # t2 = 8092F4EC
    addiu   t3, t3, %lo(func_8092C488) # t3 = 8092C488
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t2, 0x0188(s0)             # 00000188
    sw      t3, 0x0184(s0)             # 00000184
    sh      t4, 0x0178(s0)             # 00000178
    sb      t5, 0x0174(s0)             # 00000174
    sb      $zero, 0x0175(s0)          # 00000175
    beq     $zero, $zero, lbl_8092B5F8
    sh      t6, 0x017C(s0)             # 0000017C
var_8092B2F0:
    lui     t7, %hi(func_8092F4EC)     # t7 = 80930000
    lui     t8, %hi(func_8092C380)     # t8 = 80930000
    addiu   t7, t7, %lo(func_8092F4EC) # t7 = 8092F4EC
    addiu   t8, t8, %lo(func_8092C380) # t8 = 8092C380
    addiu   t9, $zero, 0x015F          # t9 = 0000015F
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    sw      t7, 0x0188(s0)             # 00000188
    sw      t8, 0x0184(s0)             # 00000184
    sh      t9, 0x0178(s0)             # 00000178
    sb      t0, 0x0174(s0)             # 00000174
    beq     $zero, $zero, lbl_8092B5F8
    sb      $zero, 0x0175(s0)          # 00000175
var_8092B320:
    lui     t1, %hi(func_8092F654)     # t1 = 80930000
    lui     t2, %hi(func_8092C098)     # t2 = 80930000
    addiu   t1, t1, %lo(func_8092F654) # t1 = 8092F654
    addiu   t2, t2, %lo(func_8092C098) # t2 = 8092C098
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    lui     a1, 0x3CA3                 # a1 = 3CA30000
    sw      t1, 0x0188(s0)             # 00000188
    sw      t2, 0x0184(s0)             # 00000184
    sb      $zero, 0x0176(s0)          # 00000176
    sb      $zero, 0x0175(s0)          # 00000175
    sb      $zero, 0x0174(s0)          # 00000174
    sh      $zero, 0x0178(s0)          # 00000178
    sb      $zero, 0x0168(s0)          # 00000168
    sh      t3, 0x017C(s0)             # 0000017C
    ori     a1, a1, 0xD70A             # a1 = 3CA3D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f4, 0x0024(s0)            # 00000024
    lw      a2, 0x0064($sp)
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    addiu   a3, $zero, 0x008B          # a3 = 0000008B
    swc1    $f6, 0x0014($sp)
    lwc1    $f8, 0x002C(s0)            # 0000002C
    sw      a0, 0x0040($sp)
    sw      $zero, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_800253F0
    swc1    $f8, 0x0018($sp)
    beq     v0, $zero, lbl_8092B3BC
    sw      v0, 0x0048($sp)
    lui     a1, 0x3F19                 # a1 = 3F190000
    ori     a1, a1, 0x999A             # a1 = 3F19999A
    jal     func_80020F88
    or      a0, v0, $zero              # a0 = 00000000
lbl_8092B3BC:
    lwc1    $f10, 0x0024(s0)           # 00000024
    addiu   t4, $zero, 0x0011          # t4 = 00000011
    lw      a0, 0x0040($sp)
    swc1    $f10, 0x0010($sp)
    lwc1    $f16, 0x0028(s0)           # 00000028
    lw      a1, 0x0048($sp)
    lw      a2, 0x0064($sp)
    swc1    $f16, 0x0014($sp)
    lwc1    $f18, 0x002C(s0)           # 0000002C
    sw      t4, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    addiu   a3, $zero, 0x008B          # a3 = 0000008B
    jal     func_800253F0
    swc1    $f18, 0x0018($sp)
    beq     v0, $zero, lbl_8092B5F8
    or      a0, v0, $zero              # a0 = 00000000
    lui     a1, 0x3ECC                 # a1 = 3ECC0000
    jal     func_80020F88
    ori     a1, a1, 0xCCCD             # a1 = 3ECCCCCD
    beq     $zero, $zero, lbl_8092B5FC
    mtc1    $zero, $f0                 # $f0 = 0.00
var_8092B418:
    jal     func_8092ADEC
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t5, $zero, 0x000C          # t5 = 0000000C
    beq     $zero, $zero, lbl_8092B5F8
    sb      t5, 0x0176(s0)             # 00000176
var_8092B42C:
    jal     func_8092ADEC
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t6, $zero, 0x000D          # t6 = 0000000D
    beq     $zero, $zero, lbl_8092B5F8
    sb      t6, 0x0176(s0)             # 00000176
var_8092B440:
    jal     func_8092ADEC
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t7, $zero, 0x000B          # t7 = 0000000B
    beq     $zero, $zero, lbl_8092B5F8
    sb      t7, 0x0176(s0)             # 00000176
var_8092B454:
    jal     func_8092ADEC
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t8, $zero, 0x000E          # t8 = 0000000E
    beq     $zero, $zero, lbl_8092B5F8
    sb      t8, 0x0176(s0)             # 00000176
var_8092B468:
    jal     func_8092ADEC
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    beq     $zero, $zero, lbl_8092B5F8
    sb      t9, 0x0176(s0)             # 00000176
var_8092B47C:
    jal     func_8092ADEC
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t0, $zero, 0x0010          # t0 = 00000010
    beq     $zero, $zero, lbl_8092B5F8
    sb      t0, 0x0176(s0)             # 00000176
var_8092B490:
    jal     func_8092ADEC
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t1, $zero, 0x0061          # t1 = 00000061
    beq     $zero, $zero, lbl_8092B5F8
    sb      t1, 0x0176(s0)             # 00000176
var_8092B4A4:
    lw      t2, 0x0004(s0)             # 00000004
    lui     $at, 0x0200                # $at = 02000000
    or      t3, t2, $at                # t3 = 02000000
    sw      t3, 0x0004(s0)             # 00000004
var_8092B4B4:
    lui     t4, %hi(func_8092FDAC)     # t4 = 80930000
    lui     t5, %hi(func_8092BB1C)     # t5 = 80930000
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   t4, t4, %lo(func_8092FDAC) # t4 = 8092FDAC
    addiu   t5, t5, %lo(func_8092BB1C) # t5 = 8092BB1C
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sw      t4, 0x0188(s0)             # 00000188
    sw      t5, 0x0184(s0)             # 00000184
    sb      $zero, 0x016B(s0)          # 0000016B
    sb      t6, 0x016C(s0)             # 0000016C
    sb      v0, 0x016D(s0)             # 0000016D
    jal     func_80059BD0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     $zero, $zero, lbl_8092B5F8
    sh      $zero, 0x0178(s0)          # 00000178
var_8092B4F0:
    lui     t7, 0x0600                 # t7 = 06000000
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t7, t7, 0x1240             # t7 = 06001240
    addiu   t8, t8, 0x10E0             # t8 = 060010E0
    addiu   t9, $zero, 0x0013          # t9 = 00000013
    sw      t7, 0x0160(s0)             # 00000160
    sw      t8, 0x0164(s0)             # 00000164
    sb      t9, 0x0174(s0)             # 00000174
    sb      $zero, 0x0175(s0)          # 00000175
    lw      a0, 0x0064($sp)
    jal     func_8092AD2C
    or      a1, s0, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_8092B5FC
    mtc1    $zero, $f0                 # $f0 = 0.00
var_8092B528:
    lui     t0, 0x0600                 # t0 = 06000000
    lui     t1, 0x0600                 # t1 = 06000000
    addiu   t0, t0, 0x20A0             # t0 = 060020A0
    addiu   t1, t1, 0x1FB0             # t1 = 06001FB0
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    sw      t0, 0x0160(s0)             # 00000160
    sw      t1, 0x0164(s0)             # 00000164
    sb      t2, 0x0174(s0)             # 00000174
    sb      $zero, 0x0175(s0)          # 00000175
    lw      a0, 0x0064($sp)
    jal     func_8092AD2C
    or      a1, s0, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_8092B5FC
    mtc1    $zero, $f0                 # $f0 = 0.00
var_8092B560:
    lui     t3, 0x0600                 # t3 = 06000000
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t3, t3, 0x3530             # t3 = 06003530
    addiu   t4, t4, 0x3370             # t4 = 06003370
    addiu   t5, $zero, 0x0015          # t5 = 00000015
    sw      t3, 0x0160(s0)             # 00000160
    sw      t4, 0x0164(s0)             # 00000164
    sb      t5, 0x0174(s0)             # 00000174
    sb      $zero, 0x0175(s0)          # 00000175
    lw      a0, 0x0064($sp)
    jal     func_8092AD2C
    or      a1, s0, $zero              # a1 = 00000000
    lw      a0, 0x0064($sp)
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0009          # a3 = 00000009
    jal     func_800265D4
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    lw      t6, 0x0064($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t8, 0x8012                 # t8 = 80120000
    lh      t7, 0x00A4(t6)             # 000000A4
    bnel    t7, $at, lbl_8092B5FC
    mtc1    $zero, $f0                 # $f0 = 0.00
    lhu     t8, -0x4B10(t8)            # 8011B4F0
    andi    t9, t8, 0x0020             # t9 = 00000000
    beql    t9, $zero, lbl_8092B5FC
    mtc1    $zero, $f0                 # $f0 = 0.00
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8092B628
    lw      $ra, 0x003C($sp)
var_8092B5DC:
    lui     t0, %hi(func_8092E26C)     # t0 = 80930000
    addiu   t0, t0, %lo(func_8092E26C) # t0 = 8092E26C
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sw      $zero, 0x0188(s0)          # 00000188
    sw      t0, 0x0184(s0)             # 00000184
    sb      $zero, 0x0174(s0)          # 00000174
    sh      t1, 0x017C(s0)             # 0000017C
lbl_8092B5F8:
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_8092B5FC:
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a2, $zero, $zero           # a2 = 00000000
    mfc1    a1, $f0
    mfc1    a3, $f0
    jal     func_8001EC20
    nop
    lui     a1, %hi(func_8092B688)     # a1 = 80930000
    addiu   a1, a1, %lo(func_8092B688) # a1 = 8092B688
    jal     func_8092ACC0
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x003C($sp)
lbl_8092B628:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra
    nop


func_8092B638:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      v0, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    or      a0, a3, $zero              # a0 = 00000000
    andi    v0, v0, 0x00FF             # v0 = 00000000
    beq     v0, $at, lbl_8092B670
    addiu   $at, $zero, 0x0018         # $at = 00000018
    beq     v0, $at, lbl_8092B670
    addiu   $at, $zero, 0x0019         # $at = 00000019
    bnel    v0, $at, lbl_8092B67C
    lw      $ra, 0x0014($sp)
lbl_8092B670:
    jal     func_80059CB0
    addiu   a1, a2, 0x013C             # a1 = 0000013C
    lw      $ra, 0x0014($sp)
lbl_8092B67C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8092B688:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lbu     a1, 0x015C(a2)             # 0000015C
    sw      a2, 0x0018($sp)
    jal     func_80081688
    addu    a0, a3, $at
    beq     v0, $zero, lbl_8092B6D0
    lw      a2, 0x0018($sp)
    lbu     t6, 0x015C(a2)             # 0000015C
    lw      t7, 0x0188(a2)             # 00000188
    lw      t8, 0x0184(a2)             # 00000184
    sb      t6, 0x001E(a2)             # 0000001E
    sw      t7, 0x0134(a2)             # 00000134
    sw      t8, 0x018C(a2)             # 0000018C
lbl_8092B6D0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8092B6E0:
    sw      a1, 0x0004($sp)
    lw      v0, 0x0118(a0)             # 00000118
    beq     v0, $zero, lbl_8092B708
    nop
    lwc1    $f4, 0x0024(v0)            # 00000024
    swc1    $f4, 0x0024(a0)            # 00000024
    lwc1    $f6, 0x0028(v0)            # 00000028
    swc1    $f6, 0x0028(a0)            # 00000028
    lwc1    $f8, 0x002C(v0)            # 0000002C
    swc1    $f8, 0x002C(a0)            # 0000002C
lbl_8092B708:
    jr      $ra
    nop


func_8092B710:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_8092B6E0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f6                   # $f6 = 14.00
    lwc1    $f4, 0x0028(a0)            # 00000028
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0028(a0)            # 00000028
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_8092B744:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a2, $at, lbl_8092B778
    lw      t6, 0x005C($sp)
    lui     t7, 0x0001                 # t7 = 00010000
    addu    t7, t7, t6
    lw      t7, 0x1DE4(t7)             # 00011DE4
    andi    t8, t7, 0x0001             # t8 = 00000000
    bnel    t8, $zero, lbl_8092B8D0
    lw      $ra, 0x0024($sp)
lbl_8092B778:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, %hi(var_809302A4)     # $at = 80930000
    lwc1    $f4, %lo(var_809302A4)($at)
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    sb      t9, 0x0030($sp)
    sb      t0, 0x0031($sp)
    sb      t1, 0x0032($sp)
    sb      t2, 0x002C($sp)
    sb      t3, 0x002D($sp)
    sb      t4, 0x002E($sp)
    sb      $zero, 0x0033($sp)
    swc1    $f0, 0x0050($sp)
    swc1    $f0, 0x0040($sp)
    swc1    $f0, 0x0048($sp)
    beq     a2, $zero, lbl_8092B804
    swc1    $f4, 0x0044($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    nop
    sub.s   $f8, $f0, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x004C($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    nop
    sub.s   $f16, $f0, $f10
    beq     $zero, $zero, lbl_8092B840
    swc1    $f16, 0x0054($sp)
lbl_8092B804:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    nop
    sub.s   $f2, $f0, $f18
    add.s   $f4, $f2, $f2
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x004C($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    nop
    sub.s   $f2, $f0, $f6
    add.s   $f8, $f2, $f2
    swc1    $f8, 0x0054($sp)
lbl_8092B840:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D90
    nop
    lw      t5, 0x0058($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    lwc1    $f10, 0x0024(t5)           # 00000024
    add.s   $f16, $f0, $f10
    jal     func_80026D90
    swc1    $f16, 0x0034($sp)
    lw      t6, 0x0058($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    lwc1    $f18, 0x0028(t6)           # 00000028
    add.s   $f4, $f0, $f18
    jal     func_80026D90
    swc1    $f4, 0x0038($sp)
    lw      t7, 0x0058($sp)
    addiu   t8, $sp, 0x0030            # t8 = FFFFFFD8
    addiu   t9, $sp, 0x002C            # t9 = FFFFFFD4
    lwc1    $f6, 0x002C(t7)            # 0000002C
    addiu   t0, $zero, 0x03E8          # t0 = 000003E8
    addiu   t1, $zero, 0x0010          # t1 = 00000010
    add.s   $f8, $f0, $f6
    sw      t1, 0x001C($sp)
    sw      t0, 0x0018($sp)
    sw      t9, 0x0014($sp)
    swc1    $f8, 0x003C($sp)
    sw      t8, 0x0010($sp)
    lw      a0, 0x005C($sp)
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFDC
    addiu   a2, $sp, 0x004C            # a2 = FFFFFFF4
    jal     func_8001C6A8
    addiu   a3, $sp, 0x0040            # a3 = FFFFFFE8
    lw      $ra, 0x0024($sp)
lbl_8092B8D0:
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra
    nop


func_8092B8DC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_8092BB0C
    lw      $ra, 0x001C($sp)
    lh      a2, 0x017C(s0)             # 0000017C
    sll     t7, a2,  2
    addu    t8, a1, t7
    lw      t9, 0x1D8C(t8)             # 00001D8C
    beql    t9, $zero, lbl_8092BB0C
    lw      $ra, 0x001C($sp)
    lbu     t0, 0x0174(s0)             # 00000174
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    beq     t0, $zero, lbl_8092B938
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80930094
    sw      a1, 0x0024($sp)
    beq     $zero, $zero, lbl_8092B94C
    lbu     t2, 0x0176(s0)             # 00000176
lbl_8092B938:
    jal     func_80930140
    sw      a1, 0x0024($sp)
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sb      t1, 0x0174(s0)             # 00000174
    lbu     t2, 0x0176(s0)             # 00000176
lbl_8092B94C:
    addiu   $at, $zero, 0x0061         # $at = 00000061
    or      a0, s0, $zero              # a0 = 00000000
    beq     t2, $at, lbl_8092B968
    lui     a1, 0x3E4C                 # a1 = 3E4C0000
    addiu   t3, $zero, 0xE0C0          # t3 = FFFFE0C0
    beq     $zero, $zero, lbl_8092B974
    sh      t3, 0x00B4(s0)             # 000000B4
lbl_8092B968:
    lh      t4, 0x00B6(s0)             # 000000B6
    addiu   t5, t4, 0x0400             # t5 = 00000400
    sh      t5, 0x00B6(s0)             # 000000B6
lbl_8092B974:
    jal     func_80020F88
    ori     a1, a1, 0xCCCD             # a1 = 3E4CCCCD
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    lw      t6, 0x0000(a3)             # 8011A5D0
    addiu   v1, $zero, 0x0053          # v1 = 00000053
    bnel    v1, t6, lbl_8092B9FC
    lh      t1, 0x017C(s0)             # 0000017C
    lh      t7, 0x017C(s0)             # 0000017C
    lw      a1, 0x0024($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    sll     t8, t7,  2
    addu    t9, a1, t8
    lw      t0, 0x1D8C(t9)             # 00001D8C
    or      a0, s0, $zero              # a0 = 00000000
    lhu     v0, 0x0000(t0)             # 00000000
    beq     v0, $at, lbl_8092B9CC
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_8092B9E4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8092B9FC
    lh      t1, 0x017C(s0)             # 0000017C
lbl_8092B9CC:
    jal     func_8092B744
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    beq     $zero, $zero, lbl_8092B9F8
    addiu   v1, $zero, 0x0053          # v1 = 00000053
lbl_8092B9E4:
    jal     func_8092B744
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    addiu   v1, $zero, 0x0053          # v1 = 00000053
lbl_8092B9F8:
    lh      t1, 0x017C(s0)             # 0000017C
lbl_8092B9FC:
    lw      a1, 0x0024($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    sll     t2, t1,  2
    addu    t3, a1, t2
    lw      t4, 0x1D8C(t3)             # 00001D8C
    lhu     v0, 0x0000(t4)             # 00000000
    beq     v0, $at, lbl_8092BA34
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_8092BA84
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_8092BB00
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8092BB0C
    lw      $ra, 0x001C($sp)
lbl_8092BA34:
    lw      t5, 0x0000(a3)             # 8011A5D0
    or      a0, s0, $zero              # a0 = 00000000
    bne     v1, t5, lbl_8092BA54
    nop
    jal     func_80022FD0
    addiu   a1, $zero, 0x2097          # a1 = 00002097
    beq     $zero, $zero, lbl_8092BA60
    lbu     t6, 0x0176(s0)             # 00000176
lbl_8092BA54:
    jal     func_80064738
    addiu   a0, $zero, 0x2095          # a0 = 00002095
    lbu     t6, 0x0176(s0)             # 00000176
lbl_8092BA60:
    addiu   $at, $zero, 0x0061         # $at = 00000061
    addiu   t9, $zero, 0x3E80          # t9 = 00003E80
    beq     t6, $at, lbl_8092BA7C
    nop
    lh      t7, 0x00B6(s0)             # 000000B6
    addiu   t8, t7, 0x3E80             # t8 = 00003E80
    sh      t8, 0x00B6(s0)             # 000000B6
lbl_8092BA7C:
    beq     $zero, $zero, lbl_8092BB08
    sh      t9, 0x0178(s0)             # 00000178
lbl_8092BA84:
    lh      v0, 0x0178(s0)             # 00000178
    lui     $at, %hi(var_809302A8)     # $at = 80930000
    lwc1    $f8, %lo(var_809302A8)($at)
    addiu   t0, v0, 0xFC18             # t0 = FFFFFC18
    mtc1    t0, $f4                    # $f4 = NaN
    lbu     t6, 0x0176(s0)             # 00000176
    addiu   $at, $zero, 0x0061         # $at = 00000061
    cvt.s.w $f6, $f4
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f10, $f6, $f8
    trunc.w.s $f16, $f10
    mfc1    t4, $f16
    nop
    subu    t5, v0, t4
    beq     t6, $at, lbl_8092BAD4
    sh      t5, 0x0178(s0)             # 00000178
    lh      t7, 0x00B6(s0)             # 000000B6
    lh      t8, 0x0178(s0)             # 00000178
    addu    t9, t7, t8
    sh      t9, 0x00B6(s0)             # 000000B6
lbl_8092BAD4:
    lw      t0, 0x0000(a3)             # 00000000
    bne     v1, t0, lbl_8092BAF0
    nop
    jal     func_80022FD0
    addiu   a1, $zero, 0x2097          # a1 = 00002097
    beq     $zero, $zero, lbl_8092BB0C
    lw      $ra, 0x001C($sp)
lbl_8092BAF0:
    jal     func_80064738
    addiu   a0, $zero, 0x2095          # a0 = 00002095
    beq     $zero, $zero, lbl_8092BB0C
    lw      $ra, 0x001C($sp)
lbl_8092BB00:
    jal     func_80022FD0
    addiu   a1, $zero, 0x2095          # a1 = 00002095
lbl_8092BB08:
    lw      $ra, 0x001C($sp)
lbl_8092BB0C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_8092BB1C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0020($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lh      t6, 0x001C(s1)             # 0000001C
    addiu   s0, s1, 0x013C             # s0 = 0000013C
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sw      t7, 0x002C($sp)
    addiu   a3, a3, 0x0050             # a3 = 06000050
    addiu   a2, a2, 0x12E8             # a2 = 060012E8
    or      a1, s0, $zero              # a1 = 0000013C
    jal     func_80059C00
    lw      a0, 0x0034($sp)
    lw      v0, 0x002C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   $at, $zero, 0x0018         # $at = 00000018
    beq     v0, $at, lbl_8092BB80
    addiu   a1, a1, 0x0050             # a1 = 06000050
    addiu   $at, $zero, 0x0019         # $at = 00000019
    bne     v0, $at, lbl_8092BC04
    lui     v1, 0x8012                 # v1 = 80120000
lbl_8092BB80:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     $at, 0x426C                # $at = 426C0000
    mtc1    $at, $f2                   # $f2 = 59.00
    lui     $at, %hi(var_809302AC)     # $at = 80930000
    lwc1    $f4, %lo(var_809302AC)($at)
    mfc1    a2, $f0
    mfc1    a3, $f2
    or      a0, s0, $zero              # a0 = 0000013C
    swc1    $f0, 0x0010($sp)
    jal     func_80059CE0
    swc1    $f4, 0x0014($sp)
    lw      a0, 0x0034($sp)
    jal     func_80059D18
    or      a1, s0, $zero              # a1 = 0000013C
    lui     t8, %hi(func_8092C014)     # t8 = 80930000
    addiu   t8, t8, %lo(func_8092C014) # t8 = 8092C014
    sw      t8, 0x018C(s1)             # 0000018C
    lw      t9, 0x002C($sp)
    addiu   $at, $zero, 0x0018         # $at = 00000018
    or      a0, s1, $zero              # a0 = 00000000
    bne     t9, $at, lbl_8092BBF4
    lui     a1, 0x3DAC                 # a1 = 3DAC0000
    lui     a1, 0x3E0F                 # a1 = 3E0F0000
    ori     a1, a1, 0x5C29             # a1 = 3E0F5C29
    jal     func_80020F88
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8092BCC8
    lw      $ra, 0x0024($sp)
lbl_8092BBF4:
    jal     func_80020F88
    ori     a1, a1, 0x0832             # a1 = 00000832
    beq     $zero, $zero, lbl_8092BCC8
    lw      $ra, 0x0024($sp)
lbl_8092BC04:
    addiu   v1, v1, 0xA5D0             # v1 = FFFFA5D0
    lw      v0, 0x1360(v1)             # FFFFB930
    addiu   $at, $zero, 0x0005         # $at = 00000005
    or      a0, s0, $zero              # a0 = 0000013C
    beq     v0, $at, lbl_8092BC40
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beql    v0, $at, lbl_8092BC44
    lui     $at, 0x3F80                # $at = 3F800000
    lw      t0, 0x0000(v1)             # FFFFA5D0
    addiu   $at, $zero, 0x0324         # $at = 00000324
    bnel    t0, $at, lbl_8092BC88
    lui     $at, 0x3F80                # $at = 3F800000
    lhu     t1, 0x0EEC(v1)             # FFFFB4BC
    andi    t2, t1, 0x0200             # t2 = 00000000
    bne     t2, $zero, lbl_8092BC84
lbl_8092BC40:
    lui     $at, 0x3F80                # $at = 3F800000
lbl_8092BC44:
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     $at, 0x426C                # $at = 426C0000
    mtc1    $at, $f2                   # $f2 = 59.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    mfc1    a2, $f0
    mfc1    a3, $f2
    swc1    $f2, 0x0010($sp)
    jal     func_80059CE0
    swc1    $f6, 0x0014($sp)
    lw      a0, 0x0034($sp)
    jal     func_80059D18
    or      a1, s0, $zero              # a1 = 0000013C
    lui     t3, %hi(func_8092BEA0)     # t3 = 80930000
    addiu   t3, t3, %lo(func_8092BEA0) # t3 = 8092BEA0
    beq     $zero, $zero, lbl_8092BCC4
    sw      t3, 0x018C(s1)             # 0000018C
lbl_8092BC84:
    lui     $at, 0x3F80                # $at = 3F800000
lbl_8092BC88:
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     $at, 0x426C                # $at = 426C0000
    mtc1    $at, $f2                   # $f2 = 59.00
    mfc1    a2, $f0
    or      a0, s0, $zero              # a0 = 0000013C
    mfc1    a3, $f2
    swc1    $f0, 0x0010($sp)
    jal     func_80059CE0
    swc1    $f0, 0x0014($sp)
    lw      a0, 0x0034($sp)
    jal     func_80059D18
    or      a1, s0, $zero              # a1 = 0000013C
    lui     t4, %hi(func_8092BCD8)     # t4 = 80930000
    addiu   t4, t4, %lo(func_8092BCD8) # t4 = 8092BCD8
    sw      t4, 0x018C(s1)             # 0000018C
lbl_8092BCC4:
    lw      $ra, 0x0024($sp)
lbl_8092BCC8:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_8092BCD8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      a0, 0x002C($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_8005991C
    sw      a2, 0x0028($sp)
    beq     v0, $zero, lbl_8092BD6C
    lw      a2, 0x0028($sp)
    lh      t6, 0x017A(a2)             # 0000017A
    or      a0, $zero, $zero           # a0 = 00000000
    andi    t7, t6, 0x0002             # t7 = 00000000
    bnel    t7, $zero, lbl_8092BD30
    addiu   a1, a2, 0x013C             # a1 = 0000013C
    jal     func_800C4C84
    sw      a2, 0x0028($sp)
    lw      a2, 0x0028($sp)
    lh      t8, 0x017A(a2)             # 0000017A
    ori     t9, t8, 0x0002             # t9 = 00000002
    sh      t9, 0x017A(a2)             # 0000017A
    addiu   a1, a2, 0x013C             # a1 = 0000013C
lbl_8092BD30:
    sw      a1, 0x0024($sp)
    jal     func_80059D18
    lw      a0, 0x002C($sp)
    beq     v0, $zero, lbl_8092BD6C
    lw      a0, 0x0024($sp)
    lui     $at, 0x426C                # $at = 426C0000
    mtc1    $at, $f4                   # $f4 = 59.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0050             # a1 = 06000050
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4270                 # a3 = 42700000
    swc1    $f4, 0x0010($sp)
    jal     func_80059CE0
    swc1    $f6, 0x0014($sp)
lbl_8092BD6C:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8092BD7C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    lui     v1, 0x0600                 # v1 = 06000000
    addiu   v1, v1, 0x0060             # v1 = 06000060
    sll     t6, v1,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, v1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    v0, t9, t0
    addu    v0, v0, $at
    lui     $at, 0x434A                # $at = 434A0000
    mtc1    $at, $f4                   # $f4 = 202.00
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f10                  # $f10 = 255.00
    mul.s   $f6, $f4, $f12
    lui     t5, %hi(var_809301E8)      # t5 = 80930000
    lbu     t5, %lo(var_809301E8)(t5)
    mul.s   $f16, $f10, $f12
    lui     a0, %hi(var_809301E9)      # a0 = 80930000
    addiu   a2, $sp, 0x000C            # a2 = FFFFFFF4
    sb      $zero, 0x000C($sp)
    addiu   a0, a0, %lo(var_809301E9)  # a0 = 809301E9
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    trunc.w.s $f8, $f6
    addiu   a3, $zero, 0x0015          # a3 = 00000015
    addu    t6, a2, t5
    trunc.w.s $f18, $f16
    mfc1    t2, $f8
    mfc1    t4, $f18
    sb      t2, 0x000D($sp)
    beq     t5, $zero, lbl_8092BE18
    sb      t4, 0x000E($sp)
    lbu     t7, 0x0000(t6)             # 00000000
    sb      t7, 0x000F(v0)             # 0000000F
lbl_8092BE18:
    addiu   a2, $sp, 0x000C            # a2 = FFFFFFF4
lbl_8092BE1C:
    lbu     a1, 0x0000(a0)             # 809301E9
    beq     a1, $zero, lbl_8092BE38
    addu    t8, a2, a1
    lbu     t9, 0x0000(t8)             # 00000000
    sll     t0, v1,  4
    addu    t1, v0, t0
    sb      t9, 0x000F(t1)             # 0000000F
lbl_8092BE38:
    lbu     a1, 0x0001(a0)             # 809301EA
    beq     a1, $zero, lbl_8092BE54
    addu    t2, a2, a1
    lbu     t3, 0x0000(t2)             # 00000000
    sll     t4, v1,  4
    addu    t5, v0, t4
    sb      t3, 0x001F(t5)             # 8093001F
lbl_8092BE54:
    lbu     a1, 0x0002(a0)             # 809301EB
    beq     a1, $zero, lbl_8092BE70
    addu    t6, a2, a1
    lbu     t7, 0x0000(t6)             # 00000000
    sll     t8, v1,  4
    addu    t0, v0, t8
    sb      t7, 0x002F(t0)             # 0000002F
lbl_8092BE70:
    lbu     a1, 0x0003(a0)             # 809301EC
    beq     a1, $zero, lbl_8092BE8C
    addu    t9, a2, a1
    lbu     t1, 0x0000(t9)             # 80120000
    sll     t2, v1,  4
    addu    t4, v0, t2
    sb      t1, 0x003F(t4)             # 0000003F
lbl_8092BE8C:
    addiu   v1, v1, 0x0004             # v1 = 00000005
    bne     v1, a3, lbl_8092BE1C
    addiu   a0, a0, 0x0004             # a0 = 809301ED
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_8092BEA0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x0178(a0)             # 00000178
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0178(a0)             # 00000178
    lh      v0, 0x0178(a0)             # 00000178
    slti    $at, v0, 0x00FB
    bnel    $at, $zero, lbl_8092BF00
    slti    $at, v0, 0x0065
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lw      t8, 0x0000(v0)             # 8011A5D0
    addiu   $at, $zero, 0x0324         # $at = 00000324
    bne     t8, $at, lbl_8092BEEC
    nop
    lhu     t9, 0x0EEC(v0)             # 8011B4BC
    ori     t0, t9, 0x0200             # t0 = 00000200
    sh      t0, 0x0EEC(v0)             # 8011B4BC
lbl_8092BEEC:
    jal     func_80020EB4
    nop
    beq     $zero, $zero, lbl_8092BF4C
    lw      $ra, 0x0014($sp)
    slti    $at, v0, 0x0065
lbl_8092BF00:
    bne     $at, $zero, lbl_8092BF40
    addiu   t1, $zero, 0x00FA          # t1 = 000000FA
    subu    t2, t1, v0
    mtc1    t2, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_809302B0)     # $at = 80930000
    lwc1    $f8, %lo(var_809302B0)($at)
    cvt.s.w $f6, $f4
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    mul.s   $f0, $f6, $f8
    swc1    $f0, 0x0050(a0)            # 00000050
    swc1    $f0, 0x0058(a0)            # 00000058
    mul.s   $f12, $f0, $f10
    jal     func_8092BD7C
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
lbl_8092BF40:
    jal     func_80023108
    addiu   a1, $zero, 0x209D          # a1 = 0000209D
    lw      $ra, 0x0014($sp)
lbl_8092BF4C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8092BF58:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x0178(a0)             # 00000178
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0178(a0)             # 00000178
    lh      v0, 0x0178(a0)             # 00000178
    slti    $at, v0, 0x0065
    beq     $at, $zero, lbl_8092BFEC
    subu    t9, t8, v0
    mtc1    t9, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_809302B4)     # $at = 80930000
    lwc1    $f8, %lo(var_809302B4)($at)
    cvt.s.w $f6, $f4
    lui     $at, %hi(var_809302B8)     # $at = 80930000
    lwc1    $f10, %lo(var_809302B8)($at)
    lh      t0, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0019         # $at = 00000019
    mul.s   $f12, $f6, $f8
    andi    t1, t0, 0x00FF             # t1 = 00000000
    mul.s   $f2, $f12, $f10
    bne     t1, $at, lbl_8092BFC8
    mov.s   $f0, $f2
    lui     $at, %hi(var_809302BC)     # $at = 80930000
    lwc1    $f16, %lo(var_809302BC)($at)
    mul.s   $f0, $f2, $f16
    nop
lbl_8092BFC8:
    swc1    $f0, 0x0050(a0)            # 00000050
    swc1    $f0, 0x0058(a0)            # 00000058
    jal     func_8092BD7C
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80023108
    addiu   a1, $zero, 0x209D          # a1 = 0000209D
    beq     $zero, $zero, lbl_8092C008
    lw      $ra, 0x0014($sp)
lbl_8092BFEC:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    jal     func_8092BD7C
    sw      a0, 0x0018($sp)
    jal     func_80020EB4
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
lbl_8092C008:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8092C014:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      a0, 0x0028($sp)
    jal     func_80023108
    addiu   a1, $zero, 0x209D          # a1 = 0000209D
    lw      a1, 0x0028($sp)
    lw      a0, 0x002C($sp)
    addiu   a1, a1, 0x013C             # a1 = 0000013C
    jal     func_80059D18
    sw      a1, 0x0024($sp)
    beq     v0, $zero, lbl_8092C088
    lw      a0, 0x0024($sp)
    lui     $at, 0x426C                # $at = 426C0000
    mtc1    $at, $f4                   # $f4 = 59.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0050             # a1 = 06000050
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4270                 # a3 = 42700000
    swc1    $f4, 0x0010($sp)
    jal     func_80059CE0
    swc1    $f6, 0x0014($sp)
    lw      v0, 0x0028($sp)
    lui     t6, %hi(func_8092BF58)     # t6 = 80930000
    addiu   t6, t6, %lo(func_8092BF58) # t6 = 8092BF58
    sw      t6, 0x018C(v0)             # 0000018C
    sh      $zero, 0x0178(v0)          # 00000178
lbl_8092C088:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8092C098:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lh      t6, 0x0178(a0)             # 00000178
    addiu   t7, t6, 0x03E8             # t7 = 000003E8
    sh      t7, 0x0178(a0)             # 00000178
    lbu     t8, 0x1D6C(a1)             # 00001D6C
    beql    t8, $zero, lbl_8092C374
    lw      $ra, 0x0014($sp)
    lh      a2, 0x017C(a0)             # 0000017C
    or      a3, $zero, $zero           # a3 = 00000000
    sll     t9, a2,  2
    addu    t0, a1, t9
    lw      t1, 0x1D8C(t0)             # 00001D8C
    beql    t1, $zero, lbl_8092C374
    lw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_8092FF34
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lh      t2, 0x017C(a0)             # 0000017C
    sll     t3, t2,  2
    addu    t4, a1, t3
    lw      t5, 0x1D8C(t4)             # 00001D8C
    lhu     t6, 0x0000(t5)             # 00000000
    bne     t6, $at, lbl_8092C330
    nop
    lbu     v1, 0x0168(a0)             # 00000168
    slti    $at, v1, 0x008C
    beq     $at, $zero, lbl_8092C124
    or      v0, v1, $zero              # v0 = 00000000
    addiu   t7, v1, 0x0001             # t7 = 00000001
    sb      t7, 0x0168(a0)             # 00000168
    andi    v0, t7, 0x00FF             # v0 = 00000001
lbl_8092C124:
    slti    $at, v0, 0x001E
    beq     $at, $zero, lbl_8092C1D0
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x4108                # $at = 41080000
    mtc1    $at, $f8                   # $f8 = 8.50
    cvt.s.w $f6, $f4
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f10, $f6, $f8
    cfc1    t8, $f31
    ctc1    t9, $f31
    nop
    cvt.w.s $f16, $f10
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_8092C1B8
    mfc1    t9, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f16, $f10, $f16
    ctc1    t9, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_8092C1AC
    nop
    mfc1    t9, $f16
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8092C1C4
    or      t9, t9, $at                # t9 = 80000000
lbl_8092C1AC:
    beq     $zero, $zero, lbl_8092C1C4
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f16
lbl_8092C1B8:
    nop
    bltz    t9, lbl_8092C1AC
    nop
lbl_8092C1C4:
    ctc1    t8, $f31
    beq     $zero, $zero, lbl_8092C330
    sb      t9, 0x0174(a0)             # 00000174
lbl_8092C1D0:
    slti    $at, v0, 0x003C
    beq     $at, $zero, lbl_8092C280
    sb      v1, 0x0174(a0)             # 00000174
    addiu   t0, v0, 0xFFE2             # t0 = FFFFFFE3
    mtc1    t0, $f18                   # $f18 = NaN
    lui     $at, 0x4108                # $at = 41080000
    mtc1    $at, $f6                   # $f6 = 8.50
    cvt.s.w $f4, $f18
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f8, $f4, $f6
    cfc1    t1, $f31
    ctc1    t2, $f31
    nop
    cvt.w.s $f10, $f8
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_8092C268
    mfc1    t2, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t2, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_8092C25C
    nop
    mfc1    t2, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8092C274
    or      t2, t2, $at                # t2 = 80000000
lbl_8092C25C:
    beq     $zero, $zero, lbl_8092C274
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f10
lbl_8092C268:
    nop
    bltz    t2, lbl_8092C25C
    nop
lbl_8092C274:
    ctc1    t1, $f31
    beq     $zero, $zero, lbl_8092C330
    sb      t2, 0x0175(a0)             # 00000175
lbl_8092C280:
    slti    $at, v0, 0x008D
    beq     $at, $zero, lbl_8092C330
    addiu   t3, v0, 0xFFC4             # t3 = FFFFFFC5
    mtc1    t3, $f16                   # $f16 = NaN
    lui     $at, 0x404C                # $at = 404C0000
    mtc1    $at, $f4                   # $f4 = 3.19
    cvt.s.w $f18, $f16
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sb      v1, 0x0175(a0)             # 00000175
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f6, $f18, $f4
    cfc1    t4, $f31
    ctc1    t5, $f31
    nop
    cvt.w.s $f8, $f6
    cfc1    t5, $f31
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    beql    t5, $zero, lbl_8092C318
    mfc1    t5, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    t5, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t5, $f31
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    bne     t5, $zero, lbl_8092C30C
    nop
    mfc1    t5, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8092C324
    or      t5, t5, $at                # t5 = 80000000
lbl_8092C30C:
    beq     $zero, $zero, lbl_8092C324
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    mfc1    t5, $f8
lbl_8092C318:
    nop
    bltz    t5, lbl_8092C30C
    nop
lbl_8092C324:
    ctc1    t4, $f31
    sb      t5, 0x0176(a0)             # 00000176
    nop
lbl_8092C330:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lw      t6, 0x0000(v0)             # 8011A5D0
    addiu   $at, $zero, 0x00A0         # $at = 000000A0
    bnel    t6, $at, lbl_8092C374
    lw      $ra, 0x0014($sp)
    lw      t7, 0x1360(v0)             # 8011B930
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    t7, $at, lbl_8092C374
    lw      $ra, 0x0014($sp)
    lhu     t8, 0x1D74(a1)             # 00001D74
    addiu   $at, $zero, 0x008F         # $at = 0000008F
    bnel    t8, $at, lbl_8092C374
    lw      $ra, 0x0014($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x1842          # a1 = 00001842
    lw      $ra, 0x0014($sp)
lbl_8092C374:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8092C380:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      v0, 0x0178(a0)             # 00000178
    lbu     v1, 0x0174(a0)             # 00000174
    slt     $at, v0, v1
    beq     $at, $zero, lbl_8092C3B8
    subu    t6, v0, v1
    sh      $zero, 0x0178(a0)          # 00000178
    jal     func_80020EB4
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_8092C3BC
    sh      $zero, 0x0178(a0)          # 00000178
lbl_8092C3B8:
    sh      t6, 0x0178(a0)             # 00000178
lbl_8092C3BC:
    lh      v0, 0x0178(a0)             # 00000178
    slti    $at, v0, 0x0100
    beq     $at, $zero, lbl_8092C3F0
    slti    $at, v0, 0x00E1
    bne     $at, $zero, lbl_8092C3E8
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    subu    t7, $zero, v0
    sll     t8, t7,  3
    addiu   t9, t8, 0x0800             # t9 = 00000800
    beq     $zero, $zero, lbl_8092C3F0
    sb      t9, 0x0175(a0)             # 00000175
lbl_8092C3E8:
    sb      t0, 0x0175(a0)             # 00000175
    lh      v0, 0x0178(a0)             # 00000178
lbl_8092C3F0:
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_8092C408
    lw      $ra, 0x0014($sp)
    jal     func_800C4C84
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    lw      $ra, 0x0014($sp)
lbl_8092C408:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8092C414:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_8092B6E0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    lh      t6, 0x0178(a0)             # 00000178
    lbu     t7, 0x0174(a0)             # 00000174
    addu    t8, t6, t7
    sh      t8, 0x0178(a0)             # 00000178
    lh      v0, 0x0178(a0)             # 00000178
    slti    $at, v0, 0x00E1
    bne     $at, $zero, lbl_8092C458
    subu    t9, $zero, v0
    sll     t0, t9,  3
    addiu   t1, t0, 0x0800             # t1 = 00000800
    sb      t1, 0x0175(a0)             # 00000175
lbl_8092C458:
    slti    $at, v0, 0x0100
    bnel    $at, $zero, lbl_8092C47C
    lw      $ra, 0x0014($sp)
    sh      t2, 0x0178(a0)             # 00000178
    jal     func_80020EB4
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    sh      $zero, 0x0178(a0)          # 00000178
    lw      $ra, 0x0014($sp)
lbl_8092C47C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8092C488:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8092B6E0
    sw      a1, 0x003C($sp)
    lw      a1, 0x003C($sp)
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_8092C534
    lw      $ra, 0x0034($sp)
    lh      t7, 0x017C(s0)             # 0000017C
    sll     t8, t7,  2
    addu    t9, a1, t8
    lw      v0, 0x1D8C(t9)             # 00001D8C
    beql    v0, $zero, lbl_8092C534
    lw      $ra, 0x0034($sp)
    lhu     t0, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    bne     t0, $at, lbl_8092C530
    addiu   a2, $zero, 0x008B          # a2 = 0000008B
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      t1, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)
    beq     v0, $zero, lbl_8092C51C
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80020F88
    addiu   a1, $zero, 0x0000          # a1 = 00000000
lbl_8092C51C:
    lui     t2, %hi(func_8092C414)     # t2 = 80930000
    addiu   t2, t2, %lo(func_8092C414) # t2 = 8092C414
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    sw      t2, 0x018C(s0)             # 0000018C
    sb      t3, 0x0175(s0)             # 00000175
lbl_8092C530:
    lw      $ra, 0x0034($sp)
lbl_8092C534:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8092C544:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x0044($sp)
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lwc1    $f4, 0x006C(s0)            # 0000006C
    lwc1    $f10, 0x0068(s0)           # 00000068
    lbu     v0, 0x0174(s0)             # 00000174
    mul.s   $f8, $f4, $f6
    addiu   a2, $zero, 0x008B          # a2 = 0000008B
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    add.s   $f16, $f10, $f8
    beq     v0, $zero, lbl_8092C598
    swc1    $f16, 0x0068(s0)           # 00000068
    beq     $zero, $zero, lbl_8092C684
    sb      t6, 0x0174(s0)             # 00000174
lbl_8092C598:
    lwc1    $f18, 0x0028(s0)           # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    lw      a1, 0x0044($sp)
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    sw      a0, 0x0038($sp)
    sw      t7, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f4, 0x0014($sp)
    beq     v0, $zero, lbl_8092C5DC
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80020F88
    addiu   a1, $zero, 0x0000          # a1 = 00000000
lbl_8092C5DC:
    lwc1    $f6, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    swc1    $f6, 0x0010($sp)
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sw      t8, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    lw      a0, 0x0038($sp)
    lw      a1, 0x0044($sp)
    addiu   a2, $zero, 0x008B          # a2 = 0000008B
    jal     func_80025110              # ActorSpawn
    swc1    $f10, 0x0014($sp)
    beq     v0, $zero, lbl_8092C628
    or      a0, v0, $zero              # a0 = 00000000
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    jal     func_80020F88
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
lbl_8092C628:
    lwc1    $f8, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    swc1    $f8, 0x0010($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    sw      t9, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    lw      a0, 0x0038($sp)
    lw      a1, 0x0044($sp)
    addiu   a2, $zero, 0x008B          # a2 = 0000008B
    jal     func_80025110              # ActorSpawn
    swc1    $f16, 0x0014($sp)
    beq     v0, $zero, lbl_8092C674
    or      a0, v0, $zero              # a0 = 00000000
    lui     a1, 0x3E4C                 # a1 = 3E4C0000
    jal     func_80020F88
    ori     a1, a1, 0xCCCD             # a1 = 3E4CCCCD
lbl_8092C674:
    jal     func_80064738
    addiu   a0, $zero, 0x1842          # a0 = 00001842
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_8092C684:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_8092C698:
    sw      a1, 0x0004($sp)
    lw      v0, 0x0118(a0)             # 00000118
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    lh      t6, 0x00B6(v0)             # 000000B6
    addiu   t7, $zero, 0x0032          # t7 = 00000032
    sb      t7, 0x0174(a0)             # 00000174
    lui     $at, %hi(var_809302C0)     # $at = 80930000
    sh      t6, 0x0032(a0)             # 00000032
    swc1    $f4, 0x0068(a0)            # 00000068
    lwc1    $f6, %lo(var_809302C0)($at)
    lui     $at, 0xBFC0                # $at = BFC00000
    mtc1    $at, $f8                   # $f8 = -1.50
    lui     t8, %hi(func_8092C544)     # t8 = 80930000
    addiu   t8, t8, %lo(func_8092C544) # t8 = 8092C544
    sw      t8, 0x018C(a0)             # 0000018C
    swc1    $f6, 0x006C(a0)            # 0000006C
    swc1    $f8, 0x0070(a0)            # 00000070
    jr      $ra
    nop


func_8092C6E8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lbu     v0, 0x0175(a0)             # 00000175
    lui     $at, %hi(var_809302C4)     # $at = 80930000
    lwc1    $f4, 0x0050(a0)            # 00000050
    sll     t6, v0,  4
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sb      t6, 0x0174(a0)             # 00000174
    sb      t7, 0x0175(a0)             # 00000175
    lwc1    $f6, %lo(var_809302C4)($at)
    sw      a0, 0x0018($sp)
    mul.s   $f8, $f4, $f6
    mfc1    a1, $f8
    jal     func_80020F88
    nop
    lw      a0, 0x0018($sp)
    lbu     t8, 0x0175(a0)             # 00000175
    bnel    t8, $zero, lbl_8092C744
    lw      $ra, 0x0014($sp)
    jal     func_80020EB4
    nop
    lw      $ra, 0x0014($sp)
lbl_8092C744:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8092C750:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      v0, 0x0118(a0)             # 00000118
    beql    v0, $zero, lbl_8092C7C4
    lbu     t7, 0x0175(a0)             # 00000175
    lbu     t6, 0x0175(a0)             # 00000175
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    mtc1    t6, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_809302C8)     # $at = 80930000
    lwc1    $f16, %lo(var_809302C8)($at)
    cvt.s.w $f8, $f6
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    sub.s   $f10, $f4, $f8
    lwc1    $f8, 0x0050(v0)            # 00000050
    sw      a0, 0x0018($sp)
    mul.s   $f18, $f10, $f16
    nop
    mul.s   $f4, $f18, $f6
    nop
    mul.s   $f10, $f4, $f8
    mfc1    a1, $f10
    jal     func_80020F88
    nop
    beq     $zero, $zero, lbl_8092C7F8
    lw      a0, 0x0018($sp)
    lbu     t7, 0x0175(a0)             # 00000175
lbl_8092C7C4:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    mtc1    t7, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_809302CC)     # $at = 80930000
    lwc1    $f8, %lo(var_809302CC)($at)
    cvt.s.w $f6, $f18
    sw      a0, 0x0018($sp)
    sub.s   $f4, $f16, $f6
    mul.s   $f10, $f4, $f8
    mfc1    a1, $f10
    jal     func_80020F88
    nop
    lw      a0, 0x0018($sp)
lbl_8092C7F8:
    lbu     v0, 0x0175(a0)             # 00000175
    lui     t0, %hi(func_8092C6E8)     # t0 = 80930000
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    beq     v0, $zero, lbl_8092C818
    addiu   t0, t0, %lo(func_8092C6E8) # t0 = 8092C6E8
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    beq     $zero, $zero, lbl_8092C820
    sb      t8, 0x0175(a0)             # 00000175
lbl_8092C818:
    sb      t9, 0x0175(a0)             # 00000175
    sw      t0, 0x018C(a0)             # 0000018C
lbl_8092C820:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8092C830:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lh      v1, 0x001C(s0)             # 0000001C
    lbu     t6, 0x1D6C(s1)             # 00001D6C
    andi    v1, v1, 0x0F00             # v1 = 00000000
    beq     t6, $zero, lbl_8092CB14
    sra     v1, v1,  8
    lh      a2, 0x017C(s0)             # 0000017C
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    sll     t7, a2,  2
    addu    t8, s1, t7
    lw      t9, 0x1D8C(t8)             # 00001D8C
    or      a3, $zero, $zero           # a3 = 00000000
    beql    t9, $zero, lbl_8092CB18
    lw      $ra, 0x0024($sp)
    jal     func_8092FF34
    sw      v1, 0x0028($sp)
    lh      t0, 0x017C(s0)             # 0000017C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      v1, 0x0028($sp)
    sll     t1, t0,  2
    addu    t2, s1, t1
    lw      t3, 0x1D8C(t2)             # 00001D8C
    lhu     v0, 0x0000(t3)             # 00000000
    beq     v0, $at, lbl_8092C8BC
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_8092C964
    addiu   a0, s0, 0x0050             # a0 = 00000050
    beq     $zero, $zero, lbl_8092C998
    lh      v0, 0x00A4(s1)             # 000000A4
lbl_8092C8BC:
    lh      v0, 0x0178(s0)             # 00000178
    slti    $at, v0, 0x00F0
    beql    $at, $zero, lbl_8092C950
    lbu     t5, 0x0175(s0)             # 00000175
    bne     v1, $zero, lbl_8092C914
    lui     $at, %hi(var_809302D8)     # $at = 80930000
    lui     $at, %hi(var_809302D0)     # $at = 80930000
    lwc1    $f4, %lo(var_809302D0)($at)
    lwc1    $f0, 0x0050(s0)            # 00000050
    lui     $at, %hi(var_809302D4)     # $at = 80930000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_8092C950
    lbu     t5, 0x0175(s0)             # 00000175
    lwc1    $f6, %lo(var_809302D4)($at)
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f8, $f0, $f6
    swc1    $f8, 0x0050(s0)            # 00000050
    jal     func_80020F88
    lw      a1, 0x0050(s0)             # 00000050
    beq     $zero, $zero, lbl_8092C94C
    lh      v0, 0x0178(s0)             # 00000178
lbl_8092C914:
    lwc1    $f0, 0x0050(s0)            # 00000050
    lwc1    $f10, %lo(var_809302D8)($at)
    lui     $at, %hi(var_809302DC)     # $at = 80930000
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_8092C950
    lbu     t5, 0x0175(s0)             # 00000175
    lwc1    $f16, %lo(var_809302DC)($at)
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f18, $f0, $f16
    swc1    $f18, 0x0050(s0)           # 00000050
    jal     func_80020F88
    lw      a1, 0x0050(s0)             # 00000050
    lh      v0, 0x0178(s0)             # 00000178
lbl_8092C94C:
    lbu     t5, 0x0175(s0)             # 00000175
lbl_8092C950:
    addiu   t4, v0, 0x0006             # t4 = 00000006
    sh      t4, 0x0178(s0)             # 00000178
    addiu   t6, t5, 0x0001             # t6 = 00000001
    beq     $zero, $zero, lbl_8092C994
    sb      t6, 0x0175(s0)             # 00000175
lbl_8092C964:
    lui     $at, %hi(var_809302E0)     # $at = 80930000
    lwc1    $f0, %lo(var_809302E0)($at)
    lui     $at, %hi(var_809302E4)     # $at = 80930000
    lwc1    $f4, %lo(var_809302E4)($at)
    mfc1    a2, $f0
    mfc1    a3, $f0
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    lw      a1, 0x0050(s0)             # 00000050
lbl_8092C994:
    lh      v0, 0x00A4(s1)             # 000000A4
lbl_8092C998:
    addiu   $at, $zero, 0x0055         # $at = 00000055
    lui     t7, 0x8012                 # t7 = 80120000
    bnel    v0, $at, lbl_8092C9DC
    addiu   $at, $zero, 0x0060         # $at = 00000060
    lw      t7, -0x46D0(t7)            # 8011B930
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    t7, $at, lbl_8092C9DC
    addiu   $at, $zero, 0x0060         # $at = 00000060
    lhu     t8, 0x1D74(s1)             # 00001D74
    addiu   $at, $zero, 0x00C5         # $at = 000000C5
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t8, $at, lbl_8092C9DC
    addiu   $at, $zero, 0x0060         # $at = 00000060
    jal     func_80022FD0
    addiu   a1, $zero, 0x2846          # a1 = 00002846
    lh      v0, 0x00A4(s1)             # 000000A4
    addiu   $at, $zero, 0x0060         # $at = 00000060
lbl_8092C9DC:
    bne     v0, $at, lbl_8092CA30
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x46D0(t9)            # 8011B930
    addiu   $at, $zero, 0x0005         # $at = 00000005
    or      a0, s0, $zero              # a0 = 00000000
    bne     t9, $at, lbl_8092CA30
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_8092E3B4
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    bne     v0, $zero, lbl_8092CA10
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2047          # a1 = 00002047
lbl_8092CA10:
    lhu     t0, 0x1D74(s1)             # 00001D74
    addiu   $at, $zero, 0x0280         # $at = 00000280
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t0, $at, lbl_8092CA30
    lh      v0, 0x00A4(s1)             # 000000A4
    jal     func_80022FD0
    addiu   a1, $zero, 0x2846          # a1 = 00002846
    lh      v0, 0x00A4(s1)             # 000000A4
lbl_8092CA30:
    addiu   $at, $zero, 0x0059         # $at = 00000059
    bne     v0, $at, lbl_8092CA88
    lui     t1, 0x8012                 # t1 = 80120000
    lw      t1, -0x46D0(t1)            # 8011B930
    addiu   $at, $zero, 0x0004         # $at = 00000004
    or      a0, s0, $zero              # a0 = 00000000
    bne     t1, $at, lbl_8092CA88
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_8092E3B4
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    bne     v0, $zero, lbl_8092CA68
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2047          # a1 = 00002047
lbl_8092CA68:
    lhu     t2, 0x1D74(s1)             # 00001D74
    addiu   $at, $zero, 0x0288         # $at = 00000288
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t2, $at, lbl_8092CA88
    lh      v0, 0x00A4(s1)             # 000000A4
    jal     func_80022FD0
    addiu   a1, $zero, 0x2846          # a1 = 00002846
    lh      v0, 0x00A4(s1)             # 000000A4
lbl_8092CA88:
    addiu   $at, $zero, 0x0043         # $at = 00000043
    bne     v0, $at, lbl_8092CAD4
    lui     t3, 0x8012                 # t3 = 80120000
    lw      t3, -0x46D0(t3)            # 8011B930
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bnel    t3, $at, lbl_8092CAD8
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    lh      t4, 0x017C(s0)             # 0000017C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    sll     t5, t4,  2
    addu    t6, s1, t5
    lw      t7, 0x1D8C(t6)             # 00001D8C
    lhu     v1, 0x0000(t7)             # 00000000
    bnel    v1, $at, lbl_8092CAD8
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    jal     func_80022FD0
    addiu   a1, $zero, 0x2047          # a1 = 00002047
    lh      v0, 0x00A4(s1)             # 000000A4
lbl_8092CAD4:
    addiu   $at, $zero, 0x003B         # $at = 0000003B
lbl_8092CAD8:
    beq     v0, $at, lbl_8092CAE8
    addiu   $at, $zero, 0x003D         # $at = 0000003D
    bnel    v0, $at, lbl_8092CB18
    lw      $ra, 0x0024($sp)
lbl_8092CAE8:
    lh      t8, 0x017C(s0)             # 0000017C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    sll     t9, t8,  2
    addu    t0, s1, t9
    lw      t1, 0x1D8C(t0)             # 00001D8C
    lhu     t2, 0x0000(t1)             # 00000000
    bnel    t2, $at, lbl_8092CB18
    lw      $ra, 0x0024($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x2047          # a1 = 00002047
lbl_8092CB14:
    lw      $ra, 0x0024($sp)
lbl_8092CB18:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_8092CB28:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lbu     v0, 0x0174(a0)             # 00000174
    slti    $at, v0, 0x0004
    bne     $at, $zero, lbl_8092CB7C
    lui     $at, %hi(var_809302E8)     # $at = 80930000
    lwc1    $f0, %lo(var_809302E8)($at)
    lwc1    $f4, 0x0050(a0)            # 00000050
    lwc1    $f8, 0x0054(a0)            # 00000054
    lwc1    $f16, 0x0058(a0)           # 00000058
    mul.s   $f6, $f4, $f0
    addiu   t6, v0, 0xFFFD             # t6 = FFFFFFFD
    sb      t6, 0x0174(a0)             # 00000174
    mul.s   $f10, $f8, $f0
    nop
    mul.s   $f18, $f16, $f0
    swc1    $f6, 0x0050(a0)            # 00000050
    swc1    $f10, 0x0054(a0)           # 00000054
    beq     $zero, $zero, lbl_8092CB84
    swc1    $f18, 0x0058(a0)           # 00000058
lbl_8092CB7C:
    jal     func_80020EB4
    nop
lbl_8092CB84:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8092CB94:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    lbu     t6, 0x1D6C(s0)             # 00001D6C
    beql    t6, $zero, lbl_8092CD20
    lw      $ra, 0x003C($sp)
    lh      a2, 0x017C(s1)             # 0000017C
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    sll     t7, a2,  2
    addu    t8, s0, t7
    lw      t9, 0x1D8C(t8)             # 00001D8C
    beql    t9, $zero, lbl_8092CD20
    lw      $ra, 0x003C($sp)
    jal     func_8092FF34
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t0, 0x017C(s1)             # 0000017C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   a0, s0, 0x1C24             # a0 = 00001C24
    sll     t1, t0,  2
    addu    t2, s0, t1
    lw      t3, 0x1D8C(t2)             # 00001D8C
    lhu     t4, 0x0000(t3)             # 00000000
    bne     t4, $at, lbl_8092CC60
    nop
    lwc1    $f4, 0x0024(s1)            # 00000024
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    or      a1, s1, $zero              # a1 = 00000000
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0028(s1)            # 00000028
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x008B          # a3 = 0000008B
    swc1    $f6, 0x0014($sp)
    lwc1    $f8, 0x002C(s1)            # 0000002C
    sw      t5, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_800253F0
    swc1    $f8, 0x0018($sp)
    beq     v0, $zero, lbl_8092CC60
    or      a0, v0, $zero              # a0 = 00000000
    lui     t6, %hi(func_8092C698)     # t6 = 80930000
    addiu   t6, t6, %lo(func_8092C698) # t6 = 8092C698
    lui     a1, 0x3CA3                 # a1 = 3CA30000
    sw      t6, 0x0184(v0)             # 00000184
    jal     func_80020F88
    ori     a1, a1, 0xD70A             # a1 = 3CA3D70A
lbl_8092CC60:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      t7, 0x0000(v1)             # 8011A5D0
    addiu   $at, $zero, 0x00A0         # $at = 000000A0
    bnel    t7, $at, lbl_8092CD20
    lw      $ra, 0x003C($sp)
    lw      v0, 0x1360(v1)             # 8011B930
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_8092CCA0
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_8092CCDC
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beql    v0, $at, lbl_8092CD04
    lhu     t9, 0x1D74(s0)             # 00001D74
    beq     $zero, $zero, lbl_8092CD20
    lw      $ra, 0x003C($sp)
lbl_8092CCA0:
    lhu     v0, 0x1D74(s0)             # 00001D74
    addiu   $at, $zero, 0x0120         # $at = 00000120
    or      a0, s1, $zero              # a0 = 00000000
    bnel    v0, $at, lbl_8092CCC4
    addiu   $at, $zero, 0x027B         # $at = 0000027B
    jal     func_80022FD0
    addiu   a1, $zero, 0x1840          # a1 = 00001840
    lhu     v0, 0x1D74(s0)             # 00001D74
    addiu   $at, $zero, 0x027B         # $at = 0000027B
lbl_8092CCC4:
    bne     v0, $at, lbl_8092CD1C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x1840          # a1 = 00001840
    beq     $zero, $zero, lbl_8092CD20
    lw      $ra, 0x003C($sp)
lbl_8092CCDC:
    lhu     t8, 0x1D74(s0)             # 00001D74
    addiu   $at, $zero, 0x0037         # $at = 00000037
    or      a0, s1, $zero              # a0 = 00000000
    bnel    t8, $at, lbl_8092CD20
    lw      $ra, 0x003C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x1841          # a1 = 00001841
    beq     $zero, $zero, lbl_8092CD20
    lw      $ra, 0x003C($sp)
    lhu     t9, 0x1D74(s0)             # 00001D74
lbl_8092CD04:
    addiu   $at, $zero, 0x015E         # $at = 0000015E
    or      a0, s1, $zero              # a0 = 00000000
    bnel    t9, $at, lbl_8092CD20
    lw      $ra, 0x003C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x1841          # a1 = 00001841
lbl_8092CD1C:
    lw      $ra, 0x003C($sp)
lbl_8092CD20:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_8092CD30:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    lbu     t6, 0x1D6C(s1)             # 00001D6C
    beql    t6, $zero, lbl_8092CF18
    lw      $ra, 0x0034($sp)
    lh      a2, 0x017C(s0)             # 0000017C
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    sll     t7, a2,  2
    addu    t8, s1, t7
    lw      t9, 0x1D8C(t8)             # 00001D8C
    beql    t9, $zero, lbl_8092CF18
    lw      $ra, 0x0034($sp)
    jal     func_8092FF34
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t0, 0x017C(s0)             # 0000017C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    sll     t1, t0,  2
    addu    t2, s1, t1
    lw      t3, 0x1D8C(t2)             # 00001D8C
    lhu     t4, 0x0000(t3)             # 00000000
    bne     t4, $at, lbl_8092CE10
    nop
    lh      v0, 0x0178(s0)             # 00000178
    beq     v0, $zero, lbl_8092CDB0
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    beq     $zero, $zero, lbl_8092CE10
    sh      t5, 0x0178(s0)             # 00000178
lbl_8092CDB0:
    lbu     t6, 0x0175(s0)             # 00000175
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    sh      t6, 0x0178(s0)             # 00000178
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    addiu   t1, $zero, 0x0007          # t1 = 00000007
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    swc1    $f6, 0x0014($sp)
    lh      t7, 0x0030(s0)             # 00000030
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x008B          # a2 = 0000008B
    addiu   t8, t7, 0x4000             # t8 = 00004000
    sw      t8, 0x0018($sp)
    lh      t9, 0x0032(s0)             # 00000032
    sw      t9, 0x001C($sp)
    lh      t0, 0x0034(s0)             # 00000034
    sw      t1, 0x0024($sp)
    jal     func_80025110              # ActorSpawn
    sw      t0, 0x0020($sp)
    beq     v0, $zero, lbl_8092CE10
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80020F88
    lui     a1, 0x3F80                 # a1 = 3F800000
lbl_8092CE10:
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x5A30(v1)            # 8011A5D0
    addiu   $at, $zero, 0x00A0         # $at = 000000A0
    lui     v0, 0x8012                 # v0 = 80120000
    bnel    v1, $at, lbl_8092CEC8
    addiu   $at, $zero, 0x013D         # $at = 0000013D
    lw      v0, -0x46D0(v0)            # 8011B930
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_8092CE50
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_8092CE78
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beql    v0, $at, lbl_8092CEA4
    lhu     t4, 0x1D74(s1)             # 00001D74
    beq     $zero, $zero, lbl_8092CEC8
    addiu   $at, $zero, 0x013D         # $at = 0000013D
lbl_8092CE50:
    lhu     t2, 0x1D74(s1)             # 00001D74
    addiu   $at, $zero, 0x012A         # $at = 0000012A
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t2, $at, lbl_8092CEC8
    addiu   $at, $zero, 0x013D         # $at = 0000013D
    jal     func_80022FD0
    addiu   a1, $zero, 0x1840          # a1 = 00001840
    lui     v1, 0x8012                 # v1 = 80120000
    beq     $zero, $zero, lbl_8092CEC4
    lw      v1, -0x5A30(v1)            # 8011A5D0
lbl_8092CE78:
    lhu     t3, 0x1D74(s1)             # 00001D74
    addiu   $at, $zero, 0x0069         # $at = 00000069
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t3, $at, lbl_8092CEC8
    addiu   $at, $zero, 0x013D         # $at = 0000013D
    jal     func_80022FD0
    addiu   a1, $zero, 0x1841          # a1 = 00001841
    lui     v1, 0x8012                 # v1 = 80120000
    beq     $zero, $zero, lbl_8092CEC4
    lw      v1, -0x5A30(v1)            # 8011A5D0
    lhu     t4, 0x1D74(s1)             # 00001D74
lbl_8092CEA4:
    addiu   $at, $zero, 0x0168         # $at = 00000168
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t4, $at, lbl_8092CEC8
    addiu   $at, $zero, 0x013D         # $at = 0000013D
    jal     func_80022FD0
    addiu   a1, $zero, 0x1841          # a1 = 00001841
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x5A30(v1)            # 8011A5D0
lbl_8092CEC4:
    addiu   $at, $zero, 0x013D         # $at = 0000013D
lbl_8092CEC8:
    bne     v1, $at, lbl_8092CF14
    lui     t5, 0x8012                 # t5 = 80120000
    lw      t5, -0x46D0(t5)            # 8011B930
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    t5, $at, lbl_8092CF18
    lw      $ra, 0x0034($sp)
    lhu     v0, 0x1D74(s1)             # 00001D74
    addiu   $at, $zero, 0x0048         # $at = 00000048
    or      a0, s0, $zero              # a0 = 00000000
    bnel    v0, $at, lbl_8092CF04
    addiu   $at, $zero, 0x0050         # $at = 00000050
    jal     func_80022FD0
    addiu   a1, $zero, 0x1841          # a1 = 00001841
    lhu     v0, 0x1D74(s1)             # 00001D74
    addiu   $at, $zero, 0x0050         # $at = 00000050
lbl_8092CF04:
    bnel    v0, $at, lbl_8092CF18
    lw      $ra, 0x0034($sp)
    jal     func_800C4C84
    addiu   a0, $zero, 0x0004          # a0 = 00000004
lbl_8092CF14:
    lw      $ra, 0x0034($sp)
lbl_8092CF18:
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_8092CF28:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    lbu     t6, 0x1D6C(s1)             # 00001D6C
    beql    t6, $zero, lbl_8092D0BC
    lw      $ra, 0x003C($sp)
    lh      a2, 0x017C(s0)             # 0000017C
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    sll     t7, a2,  2
    addu    t8, s1, t7
    lw      t9, 0x1D8C(t8)             # 00001D8C
    beql    t9, $zero, lbl_8092D0BC
    lw      $ra, 0x003C($sp)
    jal     func_8092FF34
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t0, 0x017C(s0)             # 0000017C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    sll     t1, t0,  2
    addu    t2, s1, t1
    lw      t3, 0x1D8C(t2)             # 00001D8C
    lhu     t4, 0x0000(t3)             # 00000000
    bne     t4, $at, lbl_8092D014
    nop
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f8                   # $f8 = 150.00
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    sub.s   $f10, $f6, $f8
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x008B          # a3 = 0000008B
    swc1    $f10, 0x0014($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    sw      t5, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_800253F0
    swc1    $f16, 0x0018($sp)
    beq     v0, $zero, lbl_8092D004
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, %hi(var_809302EC)     # $at = 80930000
    lwc1    $f0, %lo(var_809302EC)($at)
    lui     $at, %hi(var_809302F0)     # $at = 80930000
    swc1    $f0, 0x0050(v0)            # 00000050
    lwc1    $f18, %lo(var_809302F0)($at)
    swc1    $f0, 0x0058(v0)            # 00000058
    swc1    $f18, 0x0054(v0)           # 00000054
lbl_8092D004:
    jal     func_80022FD0
    addiu   a1, $zero, 0x1841          # a1 = 00001841
    jal     func_800C4C84
    addiu   a0, $zero, 0x0003          # a0 = 00000003
lbl_8092D014:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      t6, 0x0000(v1)             # 8011A5D0
    addiu   $at, $zero, 0x00A0         # $at = 000000A0
    bnel    t6, $at, lbl_8092D0BC
    lw      $ra, 0x003C($sp)
    lw      v0, 0x1360(v1)             # 8011B930
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_8092D054
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_8092D078
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beql    v0, $at, lbl_8092D0A0
    lhu     t9, 0x1D74(s1)             # 00001D74
    beq     $zero, $zero, lbl_8092D0BC
    lw      $ra, 0x003C($sp)
lbl_8092D054:
    lhu     t7, 0x1D74(s1)             # 00001D74
    addiu   $at, $zero, 0x013B         # $at = 0000013B
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t7, $at, lbl_8092D0BC
    lw      $ra, 0x003C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x1840          # a1 = 00001840
    beq     $zero, $zero, lbl_8092D0BC
    lw      $ra, 0x003C($sp)
lbl_8092D078:
    lhu     t8, 0x1D74(s1)             # 00001D74
    addiu   $at, $zero, 0x0050         # $at = 00000050
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t8, $at, lbl_8092D0BC
    lw      $ra, 0x003C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x1841          # a1 = 00001841
    beq     $zero, $zero, lbl_8092D0BC
    lw      $ra, 0x003C($sp)
    lhu     t9, 0x1D74(s1)             # 00001D74
lbl_8092D0A0:
    addiu   $at, $zero, 0x0172         # $at = 00000172
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t9, $at, lbl_8092D0BC
    lw      $ra, 0x003C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x1841          # a1 = 00001841
    lw      $ra, 0x003C($sp)
lbl_8092D0BC:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_8092D0CC:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    lwc1    $f12, 0x0010($sp)
    lwc1    $f0, 0x0024(a3)            # 00000024
    lwc1    $f4, 0x0000($sp)
    lwc1    $f2, 0x0028(a3)            # 00000028
    lwc1    $f14, 0x002C(a3)           # 0000002C
    sub.s   $f6, $f4, $f0
    mul.s   $f8, $f6, $f12
    add.s   $f10, $f0, $f8
    swc1    $f10, 0x0024(a3)           # 00000024
    lwc1    $f16, 0x0004($sp)
    sub.s   $f18, $f16, $f2
    mul.s   $f4, $f18, $f12
    add.s   $f6, $f2, $f4
    swc1    $f6, 0x0028(a3)            # 00000028
    lwc1    $f8, 0x0008($sp)
    sub.s   $f10, $f8, $f14
    mul.s   $f16, $f10, $f12
    add.s   $f18, $f14, $f16
    swc1    $f18, 0x002C(a3)           # 0000002C
    jr      $ra
    nop


func_8092D12C:
    lbu     v0, 0x0174(a0)             # 00000174
    addiu   $at, $zero, 0x0013         # $at = 00000013
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    beq     v0, $at, lbl_8092D160
    addiu   a1, $zero, 0x0096          # a1 = 00000096
    addiu   $at, $zero, 0x0014         # $at = 00000014
    beq     v0, $at, lbl_8092D1A0
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    addiu   $at, $zero, 0x0015         # $at = 00000015
    beq     v0, $at, lbl_8092D1E4
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    jr      $ra
    nop
lbl_8092D160:
    addiu   a2, $zero, 0x00AA          # a2 = 000000AA
    addiu   t6, $zero, 0x00A0          # t6 = 000000A0
    addiu   t7, $zero, 0x0078          # t7 = 00000078
    sb      t6, 0x016A(a0)             # 0000016A
    sb      v1, 0x0168(a0)             # 00000168
    sb      v1, 0x0169(a0)             # 00000169
    sb      $zero, 0x016B(a0)          # 0000016B
    sb      v1, 0x016C(a0)             # 0000016C
    sb      $zero, 0x016D(a0)          # 0000016D
    sb      a2, 0x0170(a0)             # 00000170
    sb      v1, 0x016E(a0)             # 0000016E
    sb      v1, 0x016F(a0)             # 0000016F
    sb      t7, 0x0172(a0)             # 00000172
    sb      a1, 0x0171(a0)             # 00000171
    jr      $ra
    sb      $zero, 0x0173(a0)          # 00000173
lbl_8092D1A0:
    addiu   a1, $zero, 0x0096          # a1 = 00000096
    addiu   a2, $zero, 0x00AA          # a2 = 000000AA
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    addiu   t9, $zero, 0x0078          # t9 = 00000078
    sb      a2, 0x0169(a0)             # 00000169
    sb      v1, 0x0168(a0)             # 00000168
    sb      v1, 0x016A(a0)             # 0000016A
    sb      t8, 0x016D(a0)             # 0000016D
    sb      v1, 0x016B(a0)             # 0000016B
    sb      $zero, 0x016C(a0)          # 0000016C
    sb      a2, 0x0170(a0)             # 00000170
    sb      v1, 0x016E(a0)             # 0000016E
    sb      v1, 0x016F(a0)             # 0000016F
    sb      t9, 0x0172(a0)             # 00000172
    sb      a1, 0x0171(a0)             # 00000171
    jr      $ra
    sb      $zero, 0x0173(a0)          # 00000173
lbl_8092D1E4:
    addiu   v0, $zero, 0x0032          # v0 = 00000032
    addiu   a1, $zero, 0x0096          # a1 = 00000096
    addiu   a2, $zero, 0x00AA          # a2 = 000000AA
    addiu   t0, $zero, 0x0078          # t0 = 00000078
    sb      v0, 0x0168(a0)             # 00000168
    sb      v1, 0x0169(a0)             # 00000169
    sb      v1, 0x016A(a0)             # 0000016A
    sb      a1, 0x016D(a0)             # 0000016D
    sb      v0, 0x016B(a0)             # 0000016B
    sb      $zero, 0x016C(a0)          # 0000016C
    sb      a2, 0x0170(a0)             # 00000170
    sb      v1, 0x016E(a0)             # 0000016E
    sb      v1, 0x016F(a0)             # 0000016F
    sb      t0, 0x0172(a0)             # 00000172
    sb      a1, 0x0171(a0)             # 00000171
    sb      $zero, 0x0173(a0)          # 00000173
    jr      $ra
    nop


func_8092D22C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    mtc1    a1, $f12                   # $f12 = 0.00
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_8092D12C
    swc1    $f12, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f4                   # $f4 = 255.00
    lbu     t6, 0x0168(a0)             # 00000168
    lui     $at, 0x3F80                # $at = 3F800000
    lwc1    $f12, 0x001C($sp)
    mtc1    $at, $f6                   # $f6 = 1.00
    mtc1    t6, $f10                   # $f10 = 0.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f8, $f6, $f12
    cvt.s.w $f16, $f10
    mul.s   $f0, $f4, $f8
    nop
    mul.s   $f18, $f16, $f12
    add.s   $f6, $f18, $f0
    cfc1    t7, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f4, $f6
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beq     t8, $zero, lbl_8092D2EC
    nop
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f4, $f6, $f4
    ctc1    t8, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_8092D2E4
    nop
    mfc1    t8, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8092D2FC
    or      t8, t8, $at                # t8 = 80000000
lbl_8092D2E4:
    beq     $zero, $zero, lbl_8092D2FC
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
lbl_8092D2EC:
    mfc1    t8, $f4
    nop
    bltz    t8, lbl_8092D2E4
    nop
lbl_8092D2FC:
    lbu     t9, 0x0169(a0)             # 00000169
    ctc1    t7, $f31
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    mtc1    t9, $f8                    # $f8 = 0.00
    sb      t8, 0x0168(a0)             # 00000168
    cvt.s.w $f10, $f8
    mul.s   $f16, $f10, $f12
    add.s   $f18, $f16, $f0
    cfc1    t0, $f31
    ctc1    t1, $f31
    nop
    cvt.w.s $f6, $f18
    cfc1    t1, $f31
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    beq     t1, $zero, lbl_8092D384
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sub.s   $f6, $f18, $f6
    ctc1    t1, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t1, $f31
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    bne     t1, $zero, lbl_8092D37C
    nop
    mfc1    t1, $f6
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8092D394
    or      t1, t1, $at                # t1 = 80000000
lbl_8092D37C:
    beq     $zero, $zero, lbl_8092D394
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
lbl_8092D384:
    mfc1    t1, $f6
    nop
    bltz    t1, lbl_8092D37C
    nop
lbl_8092D394:
    lbu     t2, 0x016A(a0)             # 0000016A
    ctc1    t0, $f31
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    mtc1    t2, $f4                    # $f4 = 0.00
    sb      t1, 0x0169(a0)             # 00000169
    cvt.s.w $f8, $f4
    mul.s   $f10, $f8, $f12
    add.s   $f16, $f10, $f0
    cfc1    t3, $f31
    ctc1    t4, $f31
    nop
    cvt.w.s $f18, $f16
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beq     t4, $zero, lbl_8092D41C
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    t4, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_8092D414
    nop
    mfc1    t4, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8092D42C
    or      t4, t4, $at                # t4 = 80000000
lbl_8092D414:
    beq     $zero, $zero, lbl_8092D42C
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
lbl_8092D41C:
    mfc1    t4, $f18
    nop
    bltz    t4, lbl_8092D414
    nop
lbl_8092D42C:
    lbu     t5, 0x016E(a0)             # 0000016E
    ctc1    t3, $f31
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    mtc1    t5, $f6                    # $f6 = 0.00
    sb      t4, 0x016A(a0)             # 0000016A
    cvt.s.w $f4, $f6
    mul.s   $f8, $f4, $f12
    add.s   $f10, $f8, $f0
    cfc1    t6, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f16, $f10
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beq     t7, $zero, lbl_8092D4B4
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f16, $f10, $f16
    ctc1    t7, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_8092D4AC
    nop
    mfc1    t7, $f16
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8092D4C4
    or      t7, t7, $at                # t7 = 80000000
lbl_8092D4AC:
    beq     $zero, $zero, lbl_8092D4C4
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
lbl_8092D4B4:
    mfc1    t7, $f16
    nop
    bltz    t7, lbl_8092D4AC
    nop
lbl_8092D4C4:
    lbu     t8, 0x016F(a0)             # 0000016F
    ctc1    t6, $f31
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    mtc1    t8, $f18                   # $f18 = NaN
    sb      t7, 0x016E(a0)             # 0000016E
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.s.w $f6, $f18
    mul.s   $f4, $f6, $f12
    add.s   $f8, $f4, $f0
    cfc1    t9, $f31
    ctc1    t0, $f31
    nop
    cvt.w.s $f10, $f8
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    beql    t0, $zero, lbl_8092D554
    mfc1    t0, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t0, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    bne     t0, $zero, lbl_8092D548
    nop
    mfc1    t0, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8092D560
    or      t0, t0, $at                # t0 = 80000000
lbl_8092D548:
    beq     $zero, $zero, lbl_8092D560
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    mfc1    t0, $f10
lbl_8092D554:
    nop
    bltz    t0, lbl_8092D548
    nop
lbl_8092D560:
    lbu     t1, 0x0170(a0)             # 00000170
    ctc1    t9, $f31
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    mtc1    t1, $f16                   # $f16 = NaN
    sb      t0, 0x016F(a0)             # 0000016F
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.s.w $f18, $f16
    mul.s   $f6, $f18, $f12
    add.s   $f4, $f6, $f0
    cfc1    t2, $f31
    ctc1    t3, $f31
    nop
    cvt.w.s $f8, $f4
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beql    t3, $zero, lbl_8092D5F0
    mfc1    t3, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f8, $f4, $f8
    ctc1    t3, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_8092D5E4
    nop
    mfc1    t3, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8092D5FC
    or      t3, t3, $at                # t3 = 80000000
lbl_8092D5E4:
    beq     $zero, $zero, lbl_8092D5FC
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    mfc1    t3, $f8
lbl_8092D5F0:
    nop
    bltz    t3, lbl_8092D5E4
    nop
lbl_8092D5FC:
    lbu     t4, 0x016B(a0)             # 0000016B
    ctc1    t2, $f31
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    mtc1    t4, $f10                   # $f10 = NaN
    sb      t3, 0x0170(a0)             # 00000170
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f12
    cfc1    t5, $f31
    ctc1    t6, $f31
    nop
    cvt.w.s $f6, $f18
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_8092D688
    mfc1    t6, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f6, $f18, $f6
    ctc1    t6, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_8092D67C
    nop
    mfc1    t6, $f6
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8092D694
    or      t6, t6, $at                # t6 = 80000000
lbl_8092D67C:
    beq     $zero, $zero, lbl_8092D694
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f6
lbl_8092D688:
    nop
    bltz    t6, lbl_8092D67C
    nop
lbl_8092D694:
    lbu     t7, 0x016C(a0)             # 0000016C
    ctc1    t5, $f31
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    mtc1    t7, $f4                    # $f4 = NaN
    sb      t6, 0x016B(a0)             # 0000016B
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.s.w $f8, $f4
    mul.s   $f10, $f8, $f12
    cfc1    t8, $f31
    ctc1    t9, $f31
    nop
    cvt.w.s $f16, $f10
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_8092D720
    mfc1    t9, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f16, $f10, $f16
    ctc1    t9, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_8092D714
    nop
    mfc1    t9, $f16
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8092D72C
    or      t9, t9, $at                # t9 = 80000000
lbl_8092D714:
    beq     $zero, $zero, lbl_8092D72C
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f16
lbl_8092D720:
    nop
    bltz    t9, lbl_8092D714
    nop
lbl_8092D72C:
    lbu     t0, 0x016D(a0)             # 0000016D
    ctc1    t8, $f31
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    mtc1    t0, $f18                   # $f18 = NaN
    sb      t9, 0x016C(a0)             # 0000016C
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.s.w $f6, $f18
    mul.s   $f4, $f6, $f12
    cfc1    t1, $f31
    ctc1    t2, $f31
    nop
    cvt.w.s $f8, $f4
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_8092D7B8
    mfc1    t2, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f8, $f4, $f8
    ctc1    t2, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_8092D7AC
    nop
    mfc1    t2, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8092D7C4
    or      t2, t2, $at                # t2 = 80000000
lbl_8092D7AC:
    beq     $zero, $zero, lbl_8092D7C4
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f8
lbl_8092D7B8:
    nop
    bltz    t2, lbl_8092D7AC
    nop
lbl_8092D7C4:
    lbu     t3, 0x0171(a0)             # 00000171
    ctc1    t1, $f31
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    mtc1    t3, $f10                   # $f10 = NaN
    sb      t2, 0x016D(a0)             # 0000016D
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f12
    cfc1    t4, $f31
    ctc1    t5, $f31
    nop
    cvt.w.s $f6, $f18
    cfc1    t5, $f31
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    beql    t5, $zero, lbl_8092D850
    mfc1    t5, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sub.s   $f6, $f18, $f6
    ctc1    t5, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t5, $f31
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    bne     t5, $zero, lbl_8092D844
    nop
    mfc1    t5, $f6
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8092D85C
    or      t5, t5, $at                # t5 = 80000000
lbl_8092D844:
    beq     $zero, $zero, lbl_8092D85C
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    mfc1    t5, $f6
lbl_8092D850:
    nop
    bltz    t5, lbl_8092D844
    nop
lbl_8092D85C:
    lbu     t6, 0x0172(a0)             # 00000172
    ctc1    t4, $f31
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    mtc1    t6, $f4                    # $f4 = NaN
    sb      t5, 0x0171(a0)             # 00000171
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.s.w $f8, $f4
    mul.s   $f10, $f8, $f12
    cfc1    t7, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f16, $f10
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_8092D8E8
    mfc1    t8, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f16, $f10, $f16
    ctc1    t8, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_8092D8DC
    nop
    mfc1    t8, $f16
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8092D8F4
    or      t8, t8, $at                # t8 = 80000000
lbl_8092D8DC:
    beq     $zero, $zero, lbl_8092D8F4
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f16
lbl_8092D8E8:
    nop
    bltz    t8, lbl_8092D8DC
    nop
lbl_8092D8F4:
    lbu     t9, 0x0173(a0)             # 00000173
    ctc1    t7, $f31
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    mtc1    t9, $f18                   # $f18 = NaN
    sb      t8, 0x0172(a0)             # 00000172
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.s.w $f6, $f18
    mul.s   $f4, $f6, $f12
    cfc1    t0, $f31
    ctc1    t1, $f31
    nop
    cvt.w.s $f8, $f4
    cfc1    t1, $f31
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    beql    t1, $zero, lbl_8092D980
    mfc1    t1, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sub.s   $f8, $f4, $f8
    ctc1    t1, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t1, $f31
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    bne     t1, $zero, lbl_8092D974
    nop
    mfc1    t1, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8092D98C
    or      t1, t1, $at                # t1 = 80000000
lbl_8092D974:
    beq     $zero, $zero, lbl_8092D98C
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    mfc1    t1, $f8
lbl_8092D980:
    nop
    bltz    t1, lbl_8092D974
    nop
lbl_8092D98C:
    ctc1    t0, $f31
    sb      t1, 0x0173(a0)             # 00000173
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_8092D9A0:
    lbu     v0, 0x0174(a1)             # 00000174
    addiu   $at, $zero, 0x0013         # $at = 00000013
    beq     v0, $at, lbl_8092D9C8
    addiu   $at, $zero, 0x0014         # $at = 00000014
    beq     v0, $at, lbl_8092D9F4
    addiu   $at, $zero, 0x0015         # $at = 00000015
    beql    v0, $at, lbl_8092D9E4
    lui     $at, 0x4220                # $at = 42200000
    jr      $ra
    nop
lbl_8092D9C8:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    lwc1    $f4, 0x0000(a0)            # 00000000
    sub.s   $f8, $f4, $f6
    jr      $ra
    swc1    $f8, 0x0000(a0)            # 00000000
lbl_8092D9E0:
    lui     $at, 0x4220                # $at = 42200000
lbl_8092D9E4:
    mtc1    $at, $f16                  # $f16 = 40.00
    lwc1    $f10, 0x0000(a0)           # 00000000
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0000(a0)           # 00000000
lbl_8092D9F4:
    jr      $ra
    nop


func_8092D9FC:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    swc1    $f12, 0x0048($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    lwc1    $f4, 0x005C($sp)
    lwc1    $f6, 0x0050($sp)
    lwc1    $f8, 0x0060($sp)
    lwc1    $f10, 0x0054($sp)
    sub.s   $f2, $f4, $f6
    lwc1    $f6, 0x0058($sp)
    lwc1    $f4, 0x0064($sp)
    sub.s   $f16, $f8, $f10
    mul.s   $f8, $f2, $f2
    lui     $at, %hi(var_809302F4)     # $at = 80930000
    sub.s   $f18, $f4, $f6
    mul.s   $f10, $f16, $f16
    add.s   $f4, $f8, $f10
    mul.s   $f6, $f18, $f18
    lwc1    $f10, %lo(var_809302F4)($at)
    lwc1    $f8, 0x0048($sp)
    add.s   $f0, $f4, $f6
    sqrt.s  $f0, $f0
    mul.s   $f22, $f0, $f14
    nop
    mul.s   $f20, $f8, $f10
    jal     func_800D2CD0
    mov.s   $f12, $f20
    lwc1    $f4, 0x0068($sp)
    lw      s0, 0x0074($sp)
    mov.s   $f12, $f20
    mul.s   $f6, $f0, $f4
    swc1    $f22, 0x0028(s0)           # 00000028
    jal     func_800CF470
    swc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0068($sp)
    lui     $at, %hi(var_809302F8)     # $at = 80930000
    lwc1    $f4, 0x0024(s0)            # 00000024
    mul.s   $f10, $f0, $f8
    swc1    $f10, 0x002C(s0)           # 0000002C
    lh      t6, 0x006C($sp)
    lwc1    $f10, %lo(var_809302F8)($at)
    swc1    $f4, 0x0038($sp)
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    mul.s   $f22, $f8, $f10
    jal     func_800D2CD0
    mov.s   $f12, $f22
    mov.s   $f20, $f0
    jal     func_800CF470
    mov.s   $f12, $f22
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f8, 0x002C(s0)            # 0000002C
    mov.s   $f12, $f22
    mul.s   $f6, $f4, $f20
    nop
    mul.s   $f10, $f0, $f8
    sub.s   $f4, $f6, $f10
    jal     func_800D2CD0
    swc1    $f4, 0x0034($sp)
    mov.s   $f20, $f0
    jal     func_800CF470
    mov.s   $f12, $f22
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lh      t7, 0x006E($sp)
    mul.s   $f6, $f0, $f8
    lui     $at, %hi(var_809302FC)     # $at = 80930000
    mul.s   $f4, $f10, $f20
    mtc1    t7, $f10                   # $f10 = 0.00
    add.s   $f8, $f6, $f4
    lwc1    $f4, %lo(var_809302FC)($at)
    cvt.s.w $f6, $f10
    swc1    $f8, 0x0030($sp)
    mul.s   $f22, $f6, $f4
    jal     func_800D2CD0
    mov.s   $f12, $f22
    mov.s   $f20, $f0
    jal     func_800CF470
    mov.s   $f12, $f22
    lwc1    $f8, 0x0038($sp)
    lwc1    $f6, 0x0030($sp)
    mov.s   $f12, $f22
    mul.s   $f10, $f8, $f20
    nop
    mul.s   $f4, $f0, $f6
    sub.s   $f8, $f10, $f4
    swc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x0034($sp)
    jal     func_800D2CD0
    swc1    $f6, 0x0028(s0)            # 00000028
    mov.s   $f20, $f0
    jal     func_800CF470
    mov.s   $f12, $f22
    lwc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f4, 0x0050($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    add.s   $f8, $f10, $f4
    swc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x0054($sp)
    add.s   $f4, $f6, $f10
    swc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f8, 0x0038($sp)
    lwc1    $f10, 0x0030($sp)
    mul.s   $f6, $f0, $f8
    nop
    mul.s   $f4, $f10, $f20
    lwc1    $f10, 0x0058($sp)
    add.s   $f8, $f6, $f4
    add.s   $f6, $f8, $f10
    swc1    $f6, 0x002C(s0)            # 0000002C
    lw      $ra, 0x002C($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_8092DBE0:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lh      a1, 0x017C(s0)             # 0000017C
    or      a0, a2, $zero              # a0 = 00000000
    sll     t6, a1,  2
    addu    v0, a2, t6
    lw      t7, 0x1D8C(v0)             # 00001D8C
    lw      t8, 0x000C(t7)             # 0000000C
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0064($sp)
    lw      t9, 0x1D8C(v0)             # 00001D8C
    lw      t0, 0x0010(t9)             # 00000010
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0068($sp)
    lw      t1, 0x1D8C(v0)             # 00001D8C
    lw      t2, 0x0014(t1)             # 00000014
    mtc1    t2, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    swc1    $f4, 0x006C($sp)
    lw      t3, 0x1D8C(v0)             # 00001D8C
    lw      t4, 0x0018(t3)             # 00000018
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    swc1    $f8, 0x0058($sp)
    lw      t5, 0x1D8C(v0)             # 00001D8C
    lw      t6, 0x001C(t5)             # 0000001C
    mtc1    t6, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    swc1    $f18, 0x005C($sp)
    lw      t7, 0x1D8C(v0)             # 00001D8C
    lw      t8, 0x0020(t7)             # 00000020
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    jal     func_8092ACCC
    swc1    $f6, 0x0060($sp)
    swc1    $f0, 0x0054($sp)
    lbu     v0, 0x0174(s0)             # 00000174
    addiu   $at, $zero, 0x0013         # $at = 00000013
    beq     v0, $at, lbl_8092DCC4
    addiu   $at, $zero, 0x0014         # $at = 00000014
    beq     v0, $at, lbl_8092DCD0
    addiu   $at, $zero, 0x0015         # $at = 00000015
    beql    v0, $at, lbl_8092DCE4
    lui     $at, 0x4370                # $at = 43700000
    beq     $zero, $zero, lbl_8092DCF4
    lui     $at, 0x41F0                # $at = 41F00000
lbl_8092DCC4:
    mtc1    $zero, $f8                 # $f8 = 0.00
    beq     $zero, $zero, lbl_8092DCF0
    swc1    $f8, 0x0050($sp)
lbl_8092DCD0:
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f10                  # $f10 = 120.00
    beq     $zero, $zero, lbl_8092DCF0
    swc1    $f10, 0x0050($sp)
    lui     $at, 0x4370                # $at = 43700000
lbl_8092DCE4:
    mtc1    $at, $f18                  # $f18 = 240.00
    nop
    swc1    $f18, 0x0050($sp)
lbl_8092DCF0:
    lui     $at, 0x41F0                # $at = 41F00000
lbl_8092DCF4:
    mtc1    $at, $f12                  # $f12 = 30.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lwc1    $f2, 0x0058($sp)
    lwc1    $f6, 0x0068($sp)
    mul.s   $f16, $f4, $f0
    lwc1    $f0, 0x0064($sp)
    lwc1    $f8, 0x005C($sp)
    c.lt.s  $f12, $f16
    nop
    bc1fl   lbl_8092DD2C
    c.eq.s  $f0, $f2
    mov.s   $f16, $f12
    c.eq.s  $f0, $f2
lbl_8092DD2C:
    nop
    bc1fl   lbl_8092DD60
    sub.s   $f14, $f2, $f0
    c.eq.s  $f6, $f8
    lwc1    $f10, 0x006C($sp)
    lwc1    $f18, 0x0060($sp)
    bc1fl   lbl_8092DD60
    sub.s   $f14, $f2, $f0
    c.eq.s  $f10, $f18
    nop
    bc1tl   lbl_8092DDA8
    lh      t1, 0x0182(s0)             # 00000182
    sub.s   $f14, $f2, $f0
lbl_8092DD60:
    lwc1    $f4, 0x0060($sp)
    lwc1    $f6, 0x006C($sp)
    swc1    $f16, 0x004C($sp)
    neg.s   $f14, $f14
    jal     func_800AA670
    sub.s   $f12, $f4, $f6
    lui     $at, %hi(var_80930300)     # $at = 80930000
    lwc1    $f8, %lo(var_80930300)($at)
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFF4
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFE8
    mul.s   $f10, $f0, $f8
    trunc.w.s $f18, $f10
    mfc1    t0, $f18
    jal     func_80063F00
    sh      t0, 0x017E(s0)             # 0000017E
    lwc1    $f16, 0x004C($sp)
    sh      v0, 0x0180(s0)             # 00000180
    lh      t1, 0x0182(s0)             # 00000182
lbl_8092DDA8:
    lui     $at, 0x3BB4                # $at = 3BB40000
    mtc1    $at, $f8                   # $f8 = 0.01
    addiu   t2, t1, 0x0400             # t2 = 00000400
    sh      t2, 0x0182(s0)             # 00000182
    lh      t3, 0x0182(s0)             # 00000182
    lwc1    $f18, 0x0050($sp)
    addiu   t4, $sp, 0x0064            # t4 = FFFFFFF4
    mtc1    t3, $f4                    # $f4 = 0.00
    addiu   t7, $sp, 0x0058            # t7 = FFFFFFE8
    lwc1    $f14, 0x0054($sp)
    cvt.s.w $f6, $f4
    mul.s   $f10, $f6, $f8
    add.s   $f12, $f18, $f10
    swc1    $f12, 0x0050($sp)
    lw      t6, 0x0000(t4)             # FFFFFFF4
    sw      t6, 0x0008($sp)
    lw      a3, 0x0004(t4)             # FFFFFFF8
    lw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    lw      t6, 0x0008(t4)             # FFFFFFFC
    sw      t6, 0x0010($sp)
    lw      t9, 0x0000(t7)             # FFFFFFE8
    sw      t9, 0x0014($sp)
    lw      t8, 0x0004(t7)             # FFFFFFEC
    sw      t8, 0x0018($sp)
    lw      t9, 0x0008(t7)             # FFFFFFF0
    swc1    $f16, 0x0020($sp)
    sw      t9, 0x001C($sp)
    lwl     t1, 0x017E(s0)             # 0000017E
    lwr     t1, 0x0181(s0)             # 00000181
    swl     t1, 0x0024($sp)
    swr     t1, 0x0027($sp)
    lhu     t1, 0x0182(s0)             # 00000182
    sw      s0, 0x002C($sp)
    jal     func_8092D9FC
    sh      t1, 0x0028($sp)
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0070           # $sp = 00000000
    jr      $ra
    nop


func_8092DE4C:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s7, 0x0050($sp)
    sw      s6, 0x004C($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s6, a2, $zero              # s6 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s5, 0x0048($sp)
    sw      s4, 0x0044($sp)
    sw      s3, 0x0040($sp)
    sw      s2, 0x003C($sp)
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    lui     $at, %hi(var_80930304)     # $at = 80930000
    lwc1    $f4, %lo(var_80930304)($at)
    swc1    $f0, 0x0080($sp)
    swc1    $f0, 0x0070($sp)
    swc1    $f0, 0x0078($sp)
    swc1    $f4, 0x0074($sp)
    lbu     t6, 0x0174(a0)             # 00000174
    lui     t9, %hi(var_80930200)      # t9 = 80930000
    addiu   t9, t9, %lo(var_80930200)  # t9 = 80930200
    sll     t7, t6,  2
    subu    t7, t7, t6
    sll     t7, t7,  1
    addiu   t8, t7, 0xFF8E             # t8 = FFFFFF8E
    addu    v0, t8, t9
    lbu     t0, 0x0000(v0)             # 00000000
    lui     $at, 0x3FC0                # $at = 3FC00000
    or      s0, $zero, $zero           # s0 = 00000000
    sb      t0, 0x006C($sp)
    lbu     t1, 0x0001(v0)             # 00000001
    addiu   s1, a0, 0x0024             # s1 = 00000024
    addiu   s5, $sp, 0x0068            # s5 = FFFFFFE0
    sb      t1, 0x006D($sp)
    lbu     t2, 0x0002(v0)             # 00000002
    addiu   s4, $sp, 0x006C            # s4 = FFFFFFE4
    addiu   s3, $sp, 0x0070            # s3 = FFFFFFE8
    sb      t2, 0x006E($sp)
    lbu     t3, 0x0003(v0)             # 00000003
    sb      t3, 0x0068($sp)
    lbu     t4, 0x0004(v0)             # 00000004
    sb      t4, 0x0069($sp)
    lbu     t5, 0x0005(v0)             # 00000005
    sb      $zero, 0x006F($sp)
    blez    s6, lbl_8092DF7C
    sb      t5, 0x006A($sp)
    mtc1    $at, $f22                  # $f22 = 1.50
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f20                  # $f20 = 0.50
    addiu   s2, $sp, 0x007C            # s2 = FFFFFFF4
lbl_8092DF20:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f6, $f0, $f20
    mul.s   $f8, $f6, $f22
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x007C($sp)
    sub.s   $f10, $f0, $f20
    addiu   t6, $zero, 0x0BB8          # t6 = 00000BB8
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    sw      t7, 0x001C($sp)
    mul.s   $f16, $f10, $f22
    sw      t6, 0x0018($sp)
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000024
    or      a2, s2, $zero              # a2 = FFFFFFF4
    or      a3, s3, $zero              # a3 = FFFFFFE8
    sw      s4, 0x0010($sp)
    swc1    $f16, 0x0084($sp)
    jal     func_8001C6A8
    sw      s5, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s6, lbl_8092DF20
    nop
lbl_8092DF7C:
    lw      $ra, 0x0054($sp)
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    lw      s2, 0x003C($sp)
    lw      s3, 0x0040($sp)
    lw      s4, 0x0044($sp)
    lw      s5, 0x0048($sp)
    lw      s6, 0x004C($sp)
    lw      s7, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp = 00000000


func_8092DFB0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_8092E3B4
    sw      a0, 0x0018($sp)
    bne     v0, $zero, lbl_8092E004
    lw      a0, 0x0018($sp)
    lui     a2, %hi(var_809301B0)      # a2 = 80930000
    addiu   a2, a2, %lo(var_809301B0)  # a2 = 809301B0
    lh      v1, 0x0000(a2)             # 809301B0
    lh      v0, 0x001C(a0)             # 0000001C
    bne     v0, v1, lbl_8092DFF4
    nop
    jal     func_8002313C
    addiu   a1, $zero, 0x206E          # a1 = 0000206E
    beq     $zero, $zero, lbl_8092E008
    lw      $ra, 0x0014($sp)
lbl_8092DFF4:
    bne     v1, $zero, lbl_8092E004
    addiu   a1, $zero, 0x206E          # a1 = 0000206E
    jal     func_8002313C
    sh      v0, 0x0000(a2)             # 00000000
lbl_8092E004:
    lw      $ra, 0x0014($sp)
lbl_8092E008:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8092E014:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lh      t6, 0x0178(a0)             # 00000178
    lh      t8, 0x00B6(a0)             # 000000B6
    addiu   t7, t6, 0x0001             # t7 = 00000001
    addiu   t9, t8, 0x0400             # t9 = 00000400
    sh      t7, 0x0178(a0)             # 00000178
    sh      t9, 0x00B6(a0)             # 000000B6
    jal     func_8092DFB0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_8092D22C
    lui     a1, 0x3F80                 # a1 = 3F800000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8092E058:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lh      t6, 0x0178(s0)             # 00000178
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0178(s0)             # 00000178
    lbu     t8, 0x1D6C(s1)             # 00001D6C
    beq     t8, $zero, lbl_8092E1D0
    nop
    lh      a2, 0x017C(s0)             # 0000017C
    sll     t9, a2,  2
    addu    t0, s1, t9
    lw      v1, 0x1D8C(t0)             # 00001D8C
    beq     v1, $zero, lbl_8092E1D0
    nop
    lhu     v0, 0x0000(v1)             # 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $at, lbl_8092E0CC
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_8092E120
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_8092E198
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8092E1A8
    or      a1, s1, $zero              # a1 = 00000000
lbl_8092E0CC:
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, -0x4B54(v0)            # 8011B4AC
    lui     $at, 0x8012                # $at = 80120000
    andi    t1, v0, 0x0800             # t1 = 00000000
    beq     t1, $zero, lbl_8092E0E8
    ori     t2, v0, 0x0800             # t2 = 80120800
    sh      t2, -0x4B54($at)           # 8011B4AC
lbl_8092E0E8:
    jal     func_8092DBE0
    or      a1, s1, $zero              # a1 = 00000000
    lui     t3, 0x0001                 # t3 = 00010000
    addu    t3, t3, s1
    lw      t3, 0x1DE4(t3)             # 00011DE4
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    andi    t4, t3, 0x0001             # t4 = 00000000
    bne     t4, $zero, lbl_8092E1D0
    nop
    jal     func_8092DE4C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beq     $zero, $zero, lbl_8092E1D0
    nop
lbl_8092E120:
    lbu     t5, 0x0175(s0)             # 00000175
    or      a1, s1, $zero              # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    beq     t5, $zero, lbl_8092E178
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8092FF34
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a0, s0, 0x0024             # a0 = 00000024
    jal     func_8092D9A0
    or      a1, s0, $zero              # a1 = 00000000
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, s1
    lw      t6, 0x1DE4(t6)             # 00011DE4
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    andi    t7, t6, 0x0001             # t7 = 00000000
    bne     t7, $zero, lbl_8092E1D0
    nop
    jal     func_8092DE4C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beq     $zero, $zero, lbl_8092E1D0
    nop
lbl_8092E178:
    jal     func_80930140
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a0, s0, 0x0024             # a0 = 00000024
    jal     func_8092D9A0
    or      a1, s0, $zero              # a1 = 00000000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    beq     $zero, $zero, lbl_8092E1D0
    sb      t8, 0x0175(s0)             # 00000175
lbl_8092E198:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8092E25C
    lw      $ra, 0x001C($sp)
lbl_8092E1A8:
    jal     func_8092FF34
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x5A30(t9)            # 8011A5D0
    addiu   $at, $zero, 0x0053         # $at = 00000053
    addiu   a0, s0, 0x0024             # a0 = 00000024
    bne     t9, $at, lbl_8092E1D0
    nop
    jal     func_8092D9A0
    or      a1, s0, $zero              # a1 = 00000000
lbl_8092E1D0:
    lui     t0, 0x8012                 # t0 = 80120000
    lw      t0, -0x5A30(t0)            # 8011A5D0
    addiu   $at, $zero, 0x0053         # $at = 00000053
    lui     t1, 0x8012                 # t1 = 80120000
    bnel    t0, $at, lbl_8092E238
    lh      t8, 0x00B6(s0)             # 000000B6
    lhu     t1, -0x4B54(t1)            # 8011B4AC
    andi    t2, t1, 0x0800             # t2 = 00000000
    bnel    t2, $zero, lbl_8092E238
    lh      t8, 0x00B6(s0)             # 000000B6
    lbu     v0, 0x1D6C(s1)             # 00001D6C
    sltu    v0, $zero, v0
    beq     v0, $zero, lbl_8092E21C
    nop
    lh      t3, 0x017C(s0)             # 0000017C
    sll     t4, t3,  2
    addu    t5, s1, t4
    lw      v0, 0x1D8C(t5)             # 00001D8C
    sltu    v0, $zero, v0
lbl_8092E21C:
    bnel    v0, $zero, lbl_8092E238
    lh      t8, 0x00B6(s0)             # 000000B6
    lh      t6, 0x017A(s0)             # 0000017A
    ori     t7, t6, 0x0001             # t7 = 00000001
    beq     $zero, $zero, lbl_8092E258
    sh      t7, 0x017A(s0)             # 0000017A
    lh      t8, 0x00B6(s0)             # 000000B6
lbl_8092E238:
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    addiu   t9, t8, 0x0400             # t9 = 00000400
    jal     func_8092DFB0
    sh      t9, 0x00B6(s0)             # 000000B6
    lh      t0, 0x017A(s0)             # 0000017A
    andi    t1, t0, 0xFFFE             # t1 = 00000000
    sh      t1, 0x017A(s0)             # 0000017A
lbl_8092E258:
    lw      $ra, 0x001C($sp)
lbl_8092E25C:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_8092E26C:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x0024($sp)
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_8092E384
    lw      $ra, 0x0024($sp)
    lh      t7, 0x017C(a0)             # 0000017C
    sll     t8, t7,  2
    addu    t9, a1, t8
    lw      v0, 0x1D8C(t9)             # 00001D8C
    beql    v0, $zero, lbl_8092E384
    lw      $ra, 0x0024($sp)
    lhu     t0, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t0, $at, lbl_8092E384
    lw      $ra, 0x0024($sp)
    lw      t3, 0x0024(a0)             # 00000024
    addiu   t1, $sp, 0x004C            # t1 = FFFFFFF4
    lui     $at, 0x4416                # $at = 44160000
    sw      t3, 0x0000(t1)             # FFFFFFF4
    lw      t2, 0x0028(a0)             # 00000028
    mtc1    $at, $f6                   # $f6 = 600.00
    lui     $at, 0x4396                # $at = 43960000
    sw      t2, 0x0004(t1)             # FFFFFFF8
    lw      t3, 0x002C(a0)             # 0000002C
    mtc1    $at, $f12                  # $f12 = 300.00
    sw      t3, 0x0008(t1)             # FFFFFFFC
    lwc1    $f4, 0x0050($sp)
    sw      a1, 0x005C($sp)
    sw      a0, 0x0058($sp)
    add.s   $f8, $f4, $f6
    jal     func_80026D90
    swc1    $f8, 0x0050($sp)
    lwc1    $f10, 0x004C($sp)
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f12                  # $f12 = 300.00
    add.s   $f16, $f10, $f0
    jal     func_80026D90
    swc1    $f16, 0x004C($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lwc1    $f18, 0x0054($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    add.s   $f6, $f4, $f0
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f10                  # $f10 = -20.00
    lui     $at, %hi(var_80930308)     # $at = 80930000
    add.s   $f8, $f18, $f6
    lwc1    $f16, %lo(var_80930308)($at)
    addiu   t4, $zero, 0x012C          # t4 = 0000012C
    addiu   t5, $zero, 0x001E          # t5 = 0000001E
    swc1    $f8, 0x0054($sp)
    sw      t5, 0x0018($sp)
    sw      t4, 0x0010($sp)
    lw      a0, 0x005C($sp)
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFF4
    addiu   a2, $sp, 0x0040            # a2 = FFFFFFE8
    addiu   a3, $sp, 0x0034            # a3 = FFFFFFDC
    sw      $zero, 0x0014($sp)
    swc1    $f2, 0x0048($sp)
    swc1    $f2, 0x0040($sp)
    swc1    $f2, 0x003C($sp)
    swc1    $f2, 0x0034($sp)
    swc1    $f10, 0x0044($sp)
    jal     func_8001C234
    swc1    $f16, 0x0038($sp)
    lw      v0, 0x0058($sp)
    lbu     t6, 0x0174(v0)             # 00000174
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x0174(v0)             # 00000174
    lw      $ra, 0x0024($sp)
lbl_8092E384:
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra
    nop


func_8092E390:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lw      t9, 0x018C(a0)             # 0000018C
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8092E3B4:
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_8092E3F0
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t7, 0x017C(a0)             # 0000017C
    sll     t8, t7,  2
    addu    t9, a1, t8
    lw      v0, 0x1D8C(t9)             # 00001D8C
    beql    v0, $zero, lbl_8092E3F0
    or      v0, $zero, $zero           # v0 = 00000000
    lhu     t0, 0x0000(v0)             # 00000000
    bnel    a2, t0, lbl_8092E3F0
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8092E3EC:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8092E3F0:
    jr      $ra
    nop


func_8092E3F8:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s3, 0x0040($sp)
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s2, 0x003C($sp)
    sw      s0, 0x0034($sp)
    lh      s2, 0x0178(s1)             # 00000178
    lw      s0, 0x0000(s3)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    jal     func_8092E3B4
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    bnel    v0, $zero, lbl_8092E7E8
    lw      $ra, 0x0044($sp)
    lh      t6, 0x017A(s1)             # 0000017A
    andi    t7, t6, 0x0001             # t7 = 00000000
    bnel    t7, $zero, lbl_8092E7E8
    lw      $ra, 0x0044($sp)
    lbu     v0, 0x0174(s1)             # 00000174
    addiu   $at, $zero, 0x0013         # $at = 00000013
    beq     v0, $at, lbl_8092E474
    addiu   $at, $zero, 0x0014         # $at = 00000014
    beq     v0, $at, lbl_8092E4FC
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   $at, $zero, 0x0015         # $at = 00000015
    beq     v0, $at, lbl_8092E580
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    beq     $zero, $zero, lbl_8092E600
    lw      v1, 0x02C0(s0)             # 000002C0
lbl_8092E474:
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    sll     v0, s2,  1
    andi    t5, s2, 0x00FF             # t5 = 00000000
    subu    t6, t1, t5
    andi    v0, v0, 0x00FF             # v0 = 00000000
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    sll     a2, s2,  2
    addiu   t2, $zero, 0x0040          # t2 = 00000040
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    sw      t7, 0x0024($sp)
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    andi    a2, a2, 0x00FF             # a2 = 00000000
    sw      t8, 0x0028($sp)
    subu    a3, t1, v0
    sw      v0, 0x001C($sp)
    sw      t6, 0x0020($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0060($sp)
    lw      t0, 0x0060($sp)
    sw      v0, 0x0004(t0)             # 00000004
    beq     $zero, $zero, lbl_8092E600
    lw      v1, 0x02C0(s0)             # 000002C0
lbl_8092E4FC:
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0024             # t2 = DB060024
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    sll     v0, s2,  1
    andi    t6, s2, 0x00FF             # t6 = 00000000
    subu    t7, t1, t6
    andi    v0, v0, 0x00FF             # v0 = 00000000
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    sll     a2, s2,  2
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    sw      t8, 0x0024($sp)
    sw      t5, 0x0018($sp)
    sw      t4, 0x0014($sp)
    sw      t3, 0x0010($sp)
    andi    a2, a2, 0x007F             # a2 = 00000000
    sw      t9, 0x0028($sp)
    subu    a3, t1, v0
    sw      v0, 0x001C($sp)
    sw      t7, 0x0020($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      v1, 0x005C($sp)
    lw      t0, 0x005C($sp)
    sw      v0, 0x0004(t0)             # 00000004
    beq     $zero, $zero, lbl_8092E600
    lw      v1, 0x02C0(s0)             # 000002C0
lbl_8092E580:
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0024             # t3 = DB060024
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    sll     v0, s2,  1
    andi    t7, s2, 0x00FF             # t7 = 00000000
    subu    t8, t1, t7
    andi    v0, v0, 0x00FF             # v0 = 00000000
    addiu   t2, $zero, 0x0010          # t2 = 00000010
    sll     a2, s2,  2
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    sw      t9, 0x0024($sp)
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    andi    a2, a2, 0x00FF             # a2 = 00000000
    sw      t2, 0x0028($sp)
    subu    a3, t1, v0
    sw      v0, 0x001C($sp)
    sw      t8, 0x0020($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0058($sp)
    lw      t0, 0x0058($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
lbl_8092E600:
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0020             # t4 = DB060020
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    andi    a1, s2, 0x00FF             # a1 = 00000000
    addiu   t5, $zero, 0x0010          # t5 = 00000010
    sw      t5, 0x0010($sp)
    or      a2, a1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    jal     func_8007EB00
    sw      v1, 0x0054($sp)
    lw      t0, 0x0054($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      s2, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s2, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(s2)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    sw      v1, 0x004C($sp)
    lw      a1, 0x004C($sp)
    sw      v0, 0x0004(a1)             # 00000004
    jal     func_8007E2C0
    lw      a0, 0x0000(s3)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    jal     func_80022554
    or      a2, $zero, $zero           # a2 = 00000000
    lui     s2, 0xFA00                 # s2 = FA000000
    ori     s2, s2, 0x0080             # s2 = FA000080
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      s2, 0x0000(v1)             # 00000000
    lbu     t4, 0x016A(s1)             # 0000016A
    lbu     t7, 0x0168(s1)             # 00000168
    lbu     t3, 0x0169(s1)             # 00000169
    sll     t5, t4,  8
    sll     t8, t7, 24
    or      t9, t5, t8                 # t9 = 00000000
    sll     t4, t3, 16
    or      t6, t9, t4                 # t6 = 00000000
    ori     t7, t6, 0x00FF             # t7 = 000000FF
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFB00                 # t8 = FB000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lbu     t3, 0x016D(s1)             # 0000016D
    lbu     t6, 0x016B(s1)             # 0000016B
    lbu     t2, 0x016C(s1)             # 0000016C
    sll     t9, t3,  8
    sll     t7, t6, 24
    or      t5, t9, t7                 # t5 = 000000FF
    sll     t3, t2, 16
    or      t4, t5, t3                 # t4 = 000000FF
    ori     t6, t4, 0x00FF             # t6 = 000000FF
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0160(s1)             # 00000160
    sw      t8, 0x0004(v1)             # 00000004
    jal     func_8007E298
    lw      a0, 0x0000(s3)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    jal     func_80022438
    or      a2, $zero, $zero           # a2 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      s2, 0x0000(v1)             # 00000000
    lbu     t3, 0x0170(s1)             # 00000170
    lbu     t9, 0x016E(s1)             # 0000016E
    lbu     t5, 0x016F(s1)             # 0000016F
    sll     t4, t3,  8
    sll     t7, t9, 24
    or      t8, t4, t7                 # t8 = 00000000
    sll     t3, t5, 16
    or      t6, t8, t3                 # t6 = 00000000
    ori     t9, t6, 0x00FF             # t9 = 000000FF
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xFB00                 # t7 = FB000000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lbu     t5, 0x0173(s1)             # 00000173
    lbu     t6, 0x0171(s1)             # 00000171
    lbu     t2, 0x0172(s1)             # 00000172
    sll     t8, t5,  8
    sll     t9, t6, 24
    or      t4, t8, t9                 # t4 = 000000FF
    sll     t5, t2, 16
    or      t3, t4, t5                 # t3 = 000000FF
    ori     t6, t3, 0x00FF             # t6 = 000000FF
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t7, 0x0164(s1)             # 00000164
    sw      t7, 0x0004(v1)             # 00000004
    lw      $ra, 0x0044($sp)
lbl_8092E7E8:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    lw      s2, 0x003C($sp)
    lw      s3, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_8092E800:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s1, 0x0038($sp)
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    lui     t0, 0x0001                 # t0 = 00010000
    addu    t0, t0, s1
    lw      t0, 0x1DE4(t0)             # 00011DE4
    lw      a2, 0x0118(a0)             # 00000118
    andi    t0, t0, 0xFFFF             # t0 = 00000000
    beq     a2, $zero, lbl_8092E860
    lw      s0, 0x0000(s1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    ori     t7, t7, 0x8080             # t7 = FA008080
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lbu     t9, 0x0176(a2)             # 00000176
    addiu   $at, $zero, 0xAA00         # $at = FFFFAA00
    or      t2, t9, $at                # t2 = FFFFAA00
    sw      t2, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_8092E884
    lw      a0, 0x0000(s1)             # 00000000
lbl_8092E860:
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    ori     t4, t4, 0x8080             # t4 = FA008080
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    addiu   t5, $zero, 0xAAFF          # t5 = FFFFAAFF
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
lbl_8092E884:
    jal     func_8007E2C0
    sw      t0, 0x0074($sp)
    addiu   v0, $zero, 0x01FF          # v0 = 000001FF
    lw      t0, 0x0074($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    sll     a2, t0,  1
    andi    a2, a2, 0x01FF             # a2 = 00000000
    subu    t4, v0, a2
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    andi    t8, t0, 0x01FF             # t8 = 00000000
    addiu   t9, $zero, 0x0080          # t9 = 00000080
    addiu   t2, $zero, 0x0080          # t2 = 00000080
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    sw      t5, 0x0024($sp)
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      t9, 0x0010($sp)
    subu    a3, v0, t8
    sw      t6, 0x0028($sp)
    sw      t4, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0060($sp)
    lw      t1, 0x0060($sp)
    sw      v0, 0x0004(t1)             # 00000004
    jal     func_800AA6EC
    nop
    mtc1    $zero, $f12                # $f12 = 0.00
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_8093030C)     # $at = 80930000
    lwc1    $f12, %lo(var_8093030C)($at)
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f14                  # $f14 = 150.00
    mfc1    a2, $f12
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x005C($sp)
    lw      a1, 0x005C($sp)
    lui     t2, 0xDE00                 # t2 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x0980             # a2 = 06000980
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      a2, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    jal     func_800AA724
    sw      a2, 0x0044($sp)
    jal     func_800AA6EC
    nop
    lui     $at, %hi(var_80930310)     # $at = 80930000
    lwc1    $f12, %lo(var_80930310)($at)
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_80930314)     # $at = 80930000
    lwc1    $f12, %lo(var_80930314)($at)
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f14                  # $f14 = 150.00
    mfc1    a2, $f12
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0054($sp)
    lw      a1, 0x0054($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDE00                 # t6 = DE000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x0044($sp)
    sw      t7, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
    jal     func_800AA6EC
    nop
    lui     $at, %hi(var_80930318)     # $at = 80930000
    lwc1    $f12, %lo(var_80930318)($at)
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_8093031C)     # $at = 80930000
    lwc1    $f12, %lo(var_8093031C)($at)
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f14                  # $f14 = 150.00
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x004C($sp)
    lw      a1, 0x004C($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t4, 0x0044($sp)
    sw      t4, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp = 00000000


func_8092EACC:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s2, 0x0040($sp)
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sw      a0, 0x0078($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    a2, s2, $at
    lw      t6, 0x1DE4(a2)             # 00001DE4
    lui     t8, 0xFA00                 # t8 = FA000000
    ori     t8, t8, 0x4040             # t8 = FA004040
    sw      t6, 0x0070($sp)
    lw      s1, 0x0000(s2)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xFFC8                 # t9 = FFC80000
    ori     t9, t9, 0x00FF             # t9 = FFC800FF
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xFF00                 # t4 = FF000000
    ori     t4, t4, 0x00FF             # t4 = FF0000FF
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    lui     t3, 0xFB00                 # t3 = FB000000
    sw      t3, 0x0000(s0)             # 00000000
    sw      t4, 0x0004(s0)             # 00000004
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_8007E2C0
    sw      a2, 0x004C($sp)
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      s0, 0x005C($sp)
    lw      t0, 0x005C($sp)
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0020             # t4 = DB060020
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0001             # t8 = DA380001
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    lw      t9, 0x004C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    lw      t2, 0x1DE0(t9)             # 00001DE0
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    sw      t2, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(s0)             # 00000000
    lw      t8, 0x0070($sp)
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t3, $zero, 0x007F          # t3 = 0000007F
    sll     t9, t8,  2
    addu    t9, t9, t8
    sll     t9, t9,  2
    andi    t2, t9, 0x007F             # t2 = 00000000
    subu    t4, t3, t2
    sw      t4, 0x0020($sp)
    sw      t6, 0x0028($sp)
    sw      t5, 0x0024($sp)
    sw      $zero, 0x001C($sp)
    sw      t7, 0x0018($sp)
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    jal     func_8007EB84
    sw      s0, 0x0054($sp)
    lw      t1, 0x0054($sp)
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x0040             # t9 = 06000040
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_8092EC50:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s2, 0x0040($sp)
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s1, 0x003C($sp)
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, s2
    lw      t6, 0x1DE4(t6)             # 00011DE4
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    sw      t6, 0x0064($sp)
    lw      s1, 0x0000(s2)             # 00000000
    jal     func_8092E3B4
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    bne     v0, $zero, lbl_8092EFF4
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lw      t7, 0x0000(v0)             # 8011A5D0
    addiu   $at, $zero, 0x00A0         # $at = 000000A0
    bnel    t7, $at, lbl_8092ECF8
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    lw      t8, 0x1360(v0)             # 8011B930
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    bne     t8, $at, lbl_8092ECE4
    nop
    lhu     t9, 0x1D74(s2)             # 00001D74
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    slti    $at, t9, 0x02A9
    beql    $at, $zero, lbl_8092ED04
    lw      v0, 0x0064($sp)
    jal     func_80064780
    addiu   a1, $zero, 0x208B          # a1 = 0000208B
    beq     $zero, $zero, lbl_8092ED04
    lw      v0, 0x0064($sp)
lbl_8092ECE4:
    jal     func_80064780
    addiu   a1, $zero, 0x208B          # a1 = 0000208B
    beq     $zero, $zero, lbl_8092ED04
    lw      v0, 0x0064($sp)
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
lbl_8092ECF8:
    jal     func_80064780
    addiu   a1, $zero, 0x208B          # a1 = 0000208B
    lw      v0, 0x0064($sp)
lbl_8092ED04:
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0020             # t3 = DB060020
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    sll     t9, v0,  3
    addu    t9, t9, v0
    sll     t9, t9,  2
    subu    t9, t9, v0
    sll     t9, t9,  1
    addiu   t4, $zero, 0x0080          # t4 = 00000080
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)
    sw      t4, 0x0010($sp)
    andi    t2, t9, 0x01FF             # t2 = 00000000
    addiu   t3, $zero, 0x01FF          # t3 = 000001FF
    sll     t7, v0,  1
    andi    t8, t7, 0x00FF             # t8 = 00000000
    subu    t4, t3, t2
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sll     a2, v0,  2
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    sw      t5, 0x0014($sp)
    sw      t5, 0x0024($sp)
    andi    a2, a2, 0x01FF             # a2 = 00000000
    sw      t6, 0x0028($sp)
    sw      t4, 0x0020($sp)
    sw      t8, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0058($sp)
    lw      t0, 0x0058($sp)
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    addiu   t3, $zero, 0x0060          # t3 = 00000060
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t4, 0x0064($sp)
    lw      a0, 0x0000(s2)             # 00000000
    sw      t9, 0x0010($sp)
    sll     t5, t4,  2
    sll     t7, t4,  4
    subu    t7, t7, t4
    addu    t5, t5, t4
    sll     t5, t5,  1
    sll     t7, t7,  1
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0018($sp)
    andi    t8, t7, 0x01FF             # t8 = 00000008
    andi    t6, t5, 0x00FF             # t6 = 00000000
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sw      t3, 0x0014($sp)
    subu    t3, t9, t8
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t2, $zero, 0x0008          # t2 = 00000008
    sw      t2, 0x0024($sp)
    sw      t5, 0x0028($sp)
    sw      t3, 0x0020($sp)
    sw      t6, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0054($sp)
    lw      t1, 0x0054($sp)
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    ori     t4, t4, 0x8080             # t4 = FA008080
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lbu     t9, 0x016A(s0)             # 0000016A
    lbu     t2, 0x0168(s0)             # 00000168
    lbu     t7, 0x0169(s0)             # 00000169
    sll     t8, t9,  8
    sll     t5, t2, 24
    or      t6, t8, t5                 # t6 = 00000000
    sll     t9, t7, 16
    or      t3, t6, t9                 # t3 = 00000000
    ori     t2, t3, 0x00FF             # t2 = 000000FF
    sw      t2, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t5, 0xFB00                 # t5 = FB000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lbu     t7, 0x016D(s0)             # 0000016D
    lbu     t3, 0x016B(s0)             # 0000016B
    lbu     t4, 0x016C(s0)             # 0000016C
    sll     t6, t7,  8
    sll     t2, t3, 24
    or      t8, t6, t2                 # t8 = 000000FF
    sll     t7, t4, 16
    or      t9, t8, t7                 # t9 = 000000FF
    ori     t3, t9, 0x00FF             # t3 = 000000FF
    sw      t3, 0x0004(v1)             # 00000004
    jal     func_8007E2C0
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AA6EC
    nop
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0048($sp)
    lw      a2, 0x0048($sp)
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x0330             # t8 = 06000330
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    jal     func_8007E298
    lw      a0, 0x0000(s2)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80022438
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AA724
    nop
    lbu     t7, 0x0176(s0)             # 00000176
    addiu   t9, t7, 0x0001             # t9 = 00000001
    andi    v0, t9, 0x00FF             # v0 = 00000001
    slti    $at, v0, 0x0079
    bne     $at, $zero, lbl_8092EF40
    sb      t9, 0x0176(s0)             # 00000176
    sb      $zero, 0x0176(s0)          # 00000176
    andi    v0, $zero, 0x00FF          # v0 = 00000000
lbl_8092EF40:
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    cvt.s.w $f6, $f4
    lui     $at, %hi(var_80930320)     # $at = 80930000
    lwc1    $f16, %lo(var_80930320)($at)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f10, $f6, $f8
    nop
    mul.s   $f12, $f10, $f16
    jal     func_800AAD4C
    nop
    lui     $at, %hi(var_80930324)     # $at = 80930000
    lwc1    $f12, %lo(var_80930324)($at)
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     $at, 0xC30C                # $at = C30C0000
    mtc1    $at, $f14                  # $f14 = -140.00
    mfc1    a2, $f12
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, %hi(var_80930328)     # $at = 80930000
    lwc1    $f12, %lo(var_80930328)($at)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s1)             # 000002C0
    sw      t6, 0x0000(s0)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s2)             # 00000000
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x3C50             # t4 = 06003C50
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s1)             # 000002C0
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      t5, 0x0000(v1)             # 00000000
    sw      t4, 0x0004(v1)             # 00000004
lbl_8092EFF4:
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_8092F00C:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s2, 0x0020($sp)
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x001C($sp)
    lw      s1, 0x0000(s2)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_8092E3B4
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    bnel    v0, $zero, lbl_8092F228
    lw      $ra, 0x0024($sp)
    lbu     t6, 0x0176(s0)             # 00000176
    bne     t6, $zero, lbl_8092F058
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    beq     $zero, $zero, lbl_8092F224
    sb      t7, 0x0176(s0)             # 00000176
lbl_8092F058:
    jal     func_8007E2C0
    lw      a0, 0x0000(s2)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t9, 0xFA00                 # t9 = FA000000
    ori     t9, t9, 0x0080             # t9 = FA000080
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lbu     t3, 0x0168(s0)             # 00000168
    lbu     t7, 0x0169(s0)             # 00000169
    lbu     t1, 0x0174(s0)             # 00000174
    lbu     t2, 0x016A(s0)             # 0000016A
    sll     t4, t3, 24
    sll     t8, t7, 16
    or      t5, t1, t4                 # t5 = 00000000
    or      t9, t5, t8                 # t9 = 00000008
    sll     t3, t2,  8
    or      t1, t9, t3                 # t1 = 00000008
    sw      t1, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t6, 0xFB00                 # t6 = FB000000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lbu     t2, 0x016B(s0)             # 0000016B
    lbu     t5, 0x016D(s0)             # 0000016D
    lbu     t4, 0x016C(s0)             # 0000016C
    sll     t9, t2, 24
    sll     t8, t5,  8
    or      t3, t8, t9                 # t3 = 00000008
    sll     t6, t4, 16
    or      t7, t3, t6                 # t7 = FB000008
    ori     t5, t7, 0x00FF             # t5 = FB0000FF
    sw      t5, 0x0004(v1)             # 00000004
    lbu     t0, 0x0175(s0)             # 00000175
    lui     $at, %hi(var_8093032C)     # $at = 80930000
    lwc1    $f8, %lo(var_8093032C)($at)
    andi    t2, t0, 0x0001             # t2 = 00000000
    mtc1    t2, $f4                    # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    cvt.s.w $f6, $f4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f10, $f6, $f8
    add.s   $f12, $f10, $f16
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    jal     func_800AA6EC
    nop
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    a0, s2, $at
    sw      a0, 0x002C($sp)
    jal     func_800AA79C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      t8, 0x0178(s0)             # 00000178
    lui     $at, %hi(var_80930330)     # $at = 80930000
    lwc1    $f6, %lo(var_80930330)($at)
    mtc1    t8, $f18                   # $f18 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f4, $f18
    mul.s   $f12, $f4, $f6
    jal     func_800AAD4C
    nop
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0040($sp)
    lw      a1, 0x0040($sp)
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     a2, 0x0401                 # a2 = 04010000
    addiu   a2, a2, 0x05D0             # a2 = 040105D0
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      a2, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    jal     func_800AA724
    sw      a2, 0x0030($sp)
    lw      a0, 0x002C($sp)
    jal     func_800AA79C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      t6, 0x0178(s0)             # 00000178
    lui     $at, %hi(var_80930334)     # $at = 80930000
    lwc1    $f18, %lo(var_80930334)($at)
    mtc1    t6, $f8                    # $f8 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f10, $f8
    neg.s   $f16, $f10
    mul.s   $f12, $f16, $f18
    jal     func_800AAD4C
    nop
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0000(s0)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s2)             # 00000000
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t2, 0xDE00                 # t2 = DE000000
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t8, 0x0030($sp)
    sw      t8, 0x0004(v1)             # 00000004
lbl_8092F224:
    lw      $ra, 0x0024($sp)
lbl_8092F228:
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_8092F23C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0040($sp)
    lw      s0, 0x0000(a1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    ori     t7, t7, 0x8080             # t7 = FA008080
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0040($sp)
    lui     $at, 0xBCFF                # $at = BCFF0000
    ori     $at, $at, 0xFF00           # $at = BCFFFF00
    lbu     t0, 0x0174(t8)             # 00000174
    lui     t3, 0xFB00                 # t3 = FB000000
    or      t1, t0, $at                # t1 = BCFFFF00
    sw      t1, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0x0064                 # t4 = 00640000
    ori     t4, t4, 0xFFFF             # t4 = 0064FFFF
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(a1)             # 00000000
    jal     func_8007E2C0
    sw      a1, 0x0044($sp)
    lw      a0, 0x0044($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA79C
    addu    a0, a0, $at
    lw      t5, 0x0040($sp)
    lui     $at, %hi(var_80930338)     # $at = 80930000
    lwc1    $f8, %lo(var_80930338)($at)
    lh      t6, 0x0178(t5)             # 00000178
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AAD4C
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0044($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      t0, 0x0040($sp)
    lh      t1, 0x0178(t0)             # 00000178
    addiu   t2, t1, 0x01F4             # t2 = 000001F4
    sh      t2, 0x0178(t0)             # 00000178
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0x0401                 # t5 = 04010000
    addiu   t5, t5, 0x05D0             # t5 = 040105D0
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_8092F364:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s2, 0x0040($sp)
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     t0, 0x0001                 # t0 = 00010000
    addu    t0, t0, s2
    lw      t0, 0x1DE4(t0)             # 00011DE4
    lw      s1, 0x0000(s2)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    ori     t7, t7, 0x4040             # t7 = FA004040
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lbu     t9, 0x0174(a2)             # 00000174
    addiu   $at, $zero, 0xA000         # $at = FFFFA000
    lui     t4, 0xFB00                 # t4 = FB000000
    or      t2, t9, $at                # t2 = FFFFA000
    sw      t2, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0x32C8                 # t5 = 32C80000
    ori     t5, t5, 0x00FF             # t5 = 32C800FF
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0004(s0)             # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_8007E2C0
    sw      t0, 0x0064($sp)
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0050($sp)
    lw      v1, 0x0050($sp)
    lw      t0, 0x0064($sp)
    lui     t9, 0xDB06                 # t9 = DB060000
    sw      v0, 0x0004(v1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    ori     t9, t9, 0x0020             # t9 = DB060020
    sll     t7, t0,  2
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    subu    t7, t7, t0
    sll     t7, t7,  3
    addu    t7, t7, t0
    sll     t5, t0,  2
    addu    t5, t5, t0
    sll     t7, t7,  1
    addiu   t2, $zero, 0x0100          # t2 = 00000100
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    andi    t8, t7, 0x01FF             # t8 = 00000000
    sll     t5, t5,  1
    addiu   t9, $zero, 0x0200          # t9 = 00000200
    sll     a2, t0,  2
    addu    a2, a2, t0
    subu    t2, t9, t8
    andi    t6, t5, 0x007F             # t6 = 00000000
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0010          # t4 = 00000010
    sw      t4, 0x0028($sp)
    sw      t3, 0x0024($sp)
    sw      t6, 0x001C($sp)
    sw      t2, 0x0020($sp)
    andi    a2, a2, 0x03FF             # a2 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      s0, 0x004C($sp)
    lw      t1, 0x004C($sp)
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x11D0             # t7 = 060011D0
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp = 00000000


func_8092F4EC:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    lw      t6, 0x0068($sp)
    lw      t8, 0x006C($sp)
    lh      t7, 0x0178(t6)             # 00000178
    sw      t7, 0x005C($sp)
    lw      a0, 0x0000(t8)             # 00000000
    jal     func_8007E2C0
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xFA00                 # t3 = FA000000
    ori     t3, t3, 0x8080             # t3 = FA008080
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t4, 0x0068($sp)
    lui     $at, 0xAAFF                # $at = AAFF0000
    ori     $at, $at, 0xFF00           # $at = AAFFFF00
    lbu     t6, 0x0175(t4)             # 00000175
    lui     t9, 0xFB00                 # t9 = FB000000
    or      t7, t6, $at                # t7 = AAFFFF00
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0x0064                 # t3 = 00640000
    ori     t3, t3, 0xFFFF             # t3 = 0064FFFF
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t6, 0x006C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0048($sp)
    lw      t0, 0x0048($sp)
    lw      t2, 0x005C($sp)
    lui     t8, 0xDB06                 # t8 = DB060000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    ori     t8, t8, 0x0020             # t8 = DB060020
    sll     t3, t2,  1
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x006C($sp)
    andi    t4, t3, 0x01FF             # t4 = 00000000
    sll     a2, t2,  2
    lw      a0, 0x0000(t9)             # 00000000
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    addu    a2, a2, t2
    addiu   t3, $zero, 0x0400          # t3 = 00000400
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t7, $zero, 0x0080          # t7 = 00000080
    addiu   t5, $zero, 0x01FF          # t5 = 000001FF
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    sw      t6, 0x0010($sp)
    subu    a3, t5, t4
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    sw      t3, 0x0028($sp)
    andi    a2, a2, 0x003F             # a2 = 00000000
    sw      t9, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0044($sp)
    lw      t1, 0x0044($sp)
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x0190             # t6 = 06000190
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0068           # $sp = 00000000
    jr      $ra
    nop


func_8092F654:
    addiu   $sp, $sp, 0xFF60           # $sp = FFFFFF60
    sw      s3, 0x0040($sp)
    sw      s2, 0x003C($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    lui     v0, 0x0600                 # v0 = 06000000
    addiu   v0, v0, 0x0000             # v0 = 06000000
    sll     t6, v0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    lui     t5, 0x0001                 # t5 = 00010000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    addu    t5, t5, s2
    lw      t5, 0x1DE4(t5)             # 00011DE4
    and     t4, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t0, t9, t4
    addu    t0, t0, $at
    sw      t5, 0x0090($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A30(t6)            # 8011A5D0
    lw      a2, 0x0000(s2)             # 00000000
    addiu   $at, $zero, 0x0400         # $at = 00000400
    bne     t6, $at, lbl_8092F6E0
    or      s1, a2, $zero              # s1 = 00000000
    lhu     t7, 0x1D74(s2)             # 00001D74
    slti    $at, t7, 0x0375
    beq     $at, $zero, lbl_8092FB78
lbl_8092F6E0:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8007E2C0
    sw      t0, 0x0094($sp)
    lbu     t8, 0x0175(s3)             # 00000175
    lw      t0, 0x0094($sp)
    or      a0, s3, $zero              # a0 = 00000000
    blez    t8, lbl_8092F874
    addiu   a1, $zero, 0x208D          # a1 = 0000208D
    jal     func_80022FD0
    sw      t0, 0x0094($sp)
    jal     func_800AA6EC
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    lui     $at, %hi(var_8093033C)     # $at = 80930000
    lwc1    $f14, %lo(var_8093033C)($at)
    mfc1    a2, $f12
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0084($sp)
    lw      v1, 0x0084($sp)
    lw      t3, 0x0090($sp)
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    sw      v0, 0x0004(v1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0024             # t6 = DB060024
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    sll     t7, t3,  2
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sll     t6, t3,  1
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    sw      t4, 0x0014($sp)
    andi    t7, t6, 0x00FF             # t7 = 00000024
    subu    a3, t2, t8
    subu    t8, t2, t7
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    sw      t9, 0x0010($sp)
    sw      t9, 0x0024($sp)
    sw      t5, 0x0018($sp)
    sw      t4, 0x0028($sp)
    sw      t8, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      s0, 0x0080($sp)
    lw      t1, 0x0080($sp)
    lw      t0, 0x0094($sp)
    sw      v0, 0x0004(t1)             # 00000004
    lbu     v1, 0x0175(s3)             # 00000175
    sb      v1, 0x05FF(t0)             # 000005FF
    sb      v1, 0x05EF(t0)             # 000005EF
    sb      v1, 0x05DF(t0)             # 000005DF
    sb      v1, 0x05CF(t0)             # 000005CF
    sb      v1, 0x059F(t0)             # 0000059F
    sb      v1, 0x058F(t0)             # 0000058F
    sb      v1, 0x057F(t0)             # 0000057F
    sb      v1, 0x056F(t0)             # 0000056F
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    ori     t6, t6, 0x8080             # t6 = FA008080
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lbu     t8, 0x0175(s3)             # 00000175
    lui     $at, 0xB4FF                # $at = B4FF0000
    ori     $at, $at, 0xFF00           # $at = B4FFFF00
    or      t9, t8, $at                # t9 = B4FFFF00
    sw      t9, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0x00FF                 # t6 = 00FF0000
    ori     t6, t6, 0x96FF             # t6 = 00FF96FF
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    lui     t5, 0xFB00                 # t5 = FB000000
    sw      t5, 0x0000(s0)             # 00000000
    sw      t6, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x0840             # t9 = 06000840
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      t8, 0x0000(s0)             # 00000000
    sw      t9, 0x0004(s0)             # 00000004
    jal     func_800AA724
    nop
lbl_8092F874:
    lbu     t4, 0x0174(s3)             # 00000174
    or      a0, s3, $zero              # a0 = 00000000
    beql    t4, $zero, lbl_8092FB7C
    lw      $ra, 0x0044($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x208C          # a1 = 0000208C
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0070($sp)
    lw      v1, 0x0070($sp)
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    sw      v0, 0x0004(v1)             # 00000004
    lbu     t7, 0x0174(s3)             # 00000174
    slti    $at, t7, 0x00FA
    beq     $at, $zero, lbl_8092FA34
    nop
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80022554
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007E2C0
    lw      a0, 0x0000(s2)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xE200                 # t9 = E2000000
    lui     t4, 0x0C18                 # t4 = 0C180000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    ori     t4, t4, 0x49D8             # t4 = 0C1849D8
    ori     t9, t9, 0x001C             # t9 = E200001C
    sw      t9, 0x0000(s0)             # 00000000
    sw      t4, 0x0004(s0)             # 00000004
    lh      t5, 0x0178(s3)             # 00000178
    lui     $at, %hi(var_80930340)     # $at = 80930000
    lwc1    $f8, %lo(var_80930340)($at)
    mtc1    t5, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AAB94
    nop
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0068($sp)
    lw      v1, 0x0068($sp)
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    sw      v0, 0x0004(v1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0010          # t5 = 00000010
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    sw      t7, 0x0024($sp)
    sw      t6, 0x0018($sp)
    sw      t8, 0x0028($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      s0, 0x0064($sp)
    lw      t0, 0x0064($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    ori     t4, t4, 0x8080             # t4 = FA008080
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(s0)             # 00000000
    lbu     t6, 0x0174(s3)             # 00000174
    addiu   $at, $zero, 0xA000         # $at = FFFFA000
    lui     t9, 0xFB00                 # t9 = FB000000
    or      t7, t6, $at                # t7 = FFFFA000
    sw      t7, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xAA8C                 # t4 = AA8C0000
    ori     t4, t4, 0x00FF             # t4 = AA8C00FF
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0004(s0)             # 00000004
    sw      t9, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x0600             # t7 = 06000600
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(s0)             # 00000000
    sw      t7, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_8092FB7C
    lw      $ra, 0x0044($sp)
lbl_8092FA34:
    jal     func_80022438
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007E298
    lw      a0, 0x0000(s2)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t9, 0xE200                 # t9 = E2000000
    lui     t4, 0x0C19                 # t4 = 0C190000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    ori     t4, t4, 0x2078             # t4 = 0C192078
    ori     t9, t9, 0x001C             # t9 = E200001C
    sw      t9, 0x0000(s0)             # 00000000
    sw      t4, 0x0004(s0)             # 00000004
    lh      t5, 0x0178(s3)             # 00000178
    lui     $at, %hi(var_80930344)     # $at = 80930000
    lwc1    $f18, %lo(var_80930344)($at)
    mtc1    t5, $f10                   # $f10 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f16, $f10
    mul.s   $f12, $f16, $f18
    jal     func_800AAB94
    nop
    lw      s3, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s3, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(s3)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s2)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0010          # t5 = 00000010
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    sw      t7, 0x0024($sp)
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    sw      t8, 0x0028($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      s0, 0x004C($sp)
    lw      t0, 0x004C($sp)
    lui     t4, 0xFA00                 # t4 = FA000000
    lui     t7, 0xFB00                 # t7 = FB000000
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    ori     t4, t4, 0x8080             # t4 = FA008080
    addiu   t5, $zero, 0xA0FF          # t5 = FFFFA0FF
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t5, 0x0004(s0)             # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t8, 0xAA8C                 # t8 = AA8C0000
    ori     t8, t8, 0x00FF             # t8 = AA8C00FF
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t8, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x0600             # t5 = 06000600
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      t4, 0x0000(s0)             # 00000000
    sw      t5, 0x0004(s0)             # 00000004
lbl_8092FB78:
    lw      $ra, 0x0044($sp)
lbl_8092FB7C:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    lw      s2, 0x003C($sp)
    lw      s3, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A0           # $sp = 00000000


func_8092FB94:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_8092E3B4
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    bne     v0, $zero, lbl_8092FC18
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_8092E3B4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    bnel    v0, $zero, lbl_8092FC1C
    lw      $ra, 0x001C($sp)
    lbu     t6, 0x0175(s0)             # 00000175
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    bne     t6, $zero, lbl_8092FBF4
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_8092FC18
    sb      t7, 0x0175(s0)             # 00000175
lbl_8092FBF4:
    jal     func_80022438
    or      a2, $zero, $zero           # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80022554
    or      a2, $zero, $zero           # a2 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800570C0
    lbu     a1, 0x0176(s0)             # 00000176
lbl_8092FC18:
    lw      $ra, 0x001C($sp)
lbl_8092FC1C:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_8092FC2C:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    sw      a2, 0x0060($sp)
    sw      a3, 0x0064($sp)
    lw      t6, 0x0058($sp)
    lui     t2, 0x0001                 # t2 = 00010000
    addu    t2, t2, t6
    lw      t2, 0x1DE4(t2)             # 00011DE4
    lw      a0, 0x0000(t6)             # 00000000
    sw      t2, 0x004C($sp)
    jal     func_8007E2C0
    sw      a0, 0x0048($sp)
    lw      v1, 0x0048($sp)
    lw      t2, 0x004C($sp)
    lw      t3, 0x0064($sp)
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    lui     t9, 0xAAFF                 # t9 = AAFF0000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(v1)             # 000002D0
    ori     t9, t9, 0xFFFF             # t9 = AAFFFFFF
    ori     t8, t8, 0x0080             # t8 = FA000080
    sw      t8, 0x0000(v0)             # 00000000
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t6, 0xFB00                 # t6 = FB000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(v1)             # 000002D0
    sw      t6, 0x0000(v0)             # 00000000
    lbu     t6, 0x016B(t3)             # 0000016B
    lbu     t8, 0x016D(t3)             # 0000016D
    sll     a2, t2,  2
    sll     t7, t6, 24
    lbu     t6, 0x016C(t3)             # 0000016C
    sll     t9, t8,  8
    or      t8, t9, t7                 # t8 = AAFFFFFF
    sll     t9, t6, 16
    or      t7, t8, t9                 # t7 = AAFFFFFF
    ori     t5, t7, 0x00FF             # t5 = AAFFFFFF
    sw      t5, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t9, 0x0058($sp)
    addiu   t8, $zero, 0x0100          # t8 = 00000100
    sll     t7, t2,  4
    lw      a0, 0x0000(t9)             # AAFFFFFF
    sw      t8, 0x0010($sp)
    andi    t5, t7, 0x00FF             # t5 = 000000FF
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    subu    a3, t6, t5
    sll     t8, t2,  2
    subu    t8, t8, t2
    sll     t6, t2,  2
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    sw      t9, 0x0014($sp)
    andi    t5, t6, 0x01FF             # t5 = 000000FF
    sll     t8, t8,  2
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0018($sp)
    andi    t9, t8, 0x007F             # t9 = 00000000
    addiu   t7, $zero, 0x007F          # t7 = 0000007F
    sw      t5, 0x001C($sp)
    subu    a2, a2, t2
    sll     a2, a2,  1
    addiu   t5, $zero, 0x0080          # t5 = 00000080
    subu    t6, t7, t9
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sw      t8, 0x0028($sp)
    sw      t6, 0x0020($sp)
    sw      t5, 0x0024($sp)
    andi    a2, a2, 0x03FF             # a2 = 00000000
    jal     func_8007EB84
    sw      v0, 0x0038($sp)
    lw      t4, 0x0038($sp)
    addiu   v1, $zero, 0x0400          # v1 = 00000400
    sw      v0, 0x0004(t4)             # 00000004
    lw      t7, 0x0060($sp)
    bne     t7, $zero, lbl_8092FD98
    lw      t9, 0x005C($sp)
    lw      v0, 0x001C(t9)             # 0000001C
    sh      v1, 0x0000(v0)             # 00000000
    lh      t6, 0x0000(v0)             # 00000000
    sh      v1, 0x0002(v0)             # 00000002
    sh      t6, 0x0004(v0)             # 00000004
lbl_8092FD98:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra
    nop


func_8092FDAC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    lw      t8, 0x0030($sp)
    addiu   $at, $zero, 0x0018         # $at = 00000018
    lw      t7, 0x0000(t6)             # 00000000
    sw      t7, 0x002C($sp)
    lh      v0, 0x001C(t8)             # 0000001C
    andi    v0, v0, 0x00FF             # v0 = 00000000
    beq     v0, $at, lbl_8092FE1C
    addiu   $at, $zero, 0x0019         # $at = 00000019
    beq     v0, $at, lbl_8092FE1C
    or      a0, t6, $zero              # a0 = 00000000
    jal     func_8005991C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    bne     v0, $zero, lbl_8092FE1C
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lw      t9, 0x1360(v0)             # 8011B930
    slti    $at, t9, 0x0004
    beql    $at, $zero, lbl_8092FE20
    lw      t1, 0x002C($sp)
    lw      t0, 0x0000(v0)             # 8011A5D0
    addiu   $at, $zero, 0x0324         # $at = 00000324
    bnel    t0, $at, lbl_8092FE78
    lw      $ra, 0x0024($sp)
lbl_8092FE1C:
    lw      t1, 0x002C($sp)
lbl_8092FE20:
    addiu   a1, $zero, 0x0019          # a1 = 00000019
    jal     func_8007DFBC
    lw      a0, 0x02D0(t1)             # 000002D0
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    lw      t2, 0x002C($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    sw      v0, 0x02D0(t2)             # 000002D0
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      a0, 0x0030($sp)
    lui     a3, %hi(func_8092FC2C)     # a3 = 80930000
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x0014($sp)
    addiu   a3, a3, %lo(func_8092FC2C) # a3 = 8092FC2C
    lw      a1, 0x0034($sp)
    sw      $zero, 0x0010($sp)
    addiu   a2, a0, 0x013C             # a2 = 0000013C
    jal     func_8005A36C
    sw      a0, 0x0018($sp)
    lw      $ra, 0x0024($sp)
lbl_8092FE78:
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_8092FE84:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lwc1    $f4, 0x0038($sp)
    lwc1    $f6, 0x002C($sp)
    lwc1    $f8, 0x0040($sp)
    lwc1    $f10, 0x0034($sp)
    sub.s   $f12, $f4, $f6
    sub.s   $f14, $f8, $f10
    mul.s   $f16, $f12, $f12
    nop
    mul.s   $f18, $f14, $f14
    add.s   $f0, $f16, $f18
    sqrt.s  $f0, $f0
    jal     func_800CD76C
    swc1    $f0, 0x0018($sp)
    lui     $at, %hi(var_80930348)     # $at = 80930000
    lwc1    $f4, %lo(var_80930348)($at)
    lw      t8, 0x0028($sp)
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    nop
    sh      t7, 0x00B6(t8)             # 000000B6
    lwc1    $f16, 0x0030($sp)
    lwc1    $f10, 0x003C($sp)
    lwc1    $f14, 0x0018($sp)
    sub.s   $f12, $f10, $f16
    jal     func_800CD76C
    neg.s   $f12, $f12
    lui     $at, %hi(var_8093034C)     # $at = 80930000
    lwc1    $f18, %lo(var_8093034C)($at)
    lw      t1, 0x0028($sp)
    mul.s   $f4, $f0, $f18
    trunc.w.s $f6, $f4
    mfc1    t0, $f6
    nop
    sh      t0, 0x00B4(t1)             # 000000B4
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_8092FF34:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0048($sp)
    sw      a1, 0x004C($sp)
    sw      a3, 0x0054($sp)
    lw      a0, 0x004C($sp)
    sll     t7, a2,  2
    or      a1, a2, $zero              # a1 = 00000000
    addu    v0, a0, t7
    lw      t8, 0x1D8C(v0)             # 00001D8C
    lw      t9, 0x000C(t8)             # 0000000C
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x003C($sp)
    lw      t0, 0x1D8C(v0)             # 00001D8C
    lw      t1, 0x0010(t0)             # 00000010
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0040($sp)
    lw      t2, 0x1D8C(v0)             # 00001D8C
    lw      t3, 0x0014(t2)             # 00000014
    mtc1    t3, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0044($sp)
    lw      t4, 0x1D8C(v0)             # 00001D8C
    lw      t5, 0x0018(t4)             # 00000018
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0030($sp)
    lw      t7, 0x1D8C(v0)             # 00001D8C
    lw      t8, 0x001C(t7)             # 0000001C
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0034($sp)
    lw      t9, 0x1D8C(v0)             # 00001D8C
    lw      t0, 0x0020(t9)             # 00000020
    mtc1    t0, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    jal     func_8092ACCC
    swc1    $f18, 0x0038($sp)
    lwc1    $f4, 0x0030($sp)
    lwc1    $f6, 0x003C($sp)
    lw      a0, 0x0048($sp)
    addiu   t2, $sp, 0x003C            # t2 = FFFFFFF4
    sub.s   $f8, $f4, $f6
    mul.s   $f10, $f8, $f0
    add.s   $f16, $f10, $f6
    swc1    $f16, 0x0024(a0)           # 00000024
    lwc1    $f4, 0x0040($sp)
    lwc1    $f18, 0x0034($sp)
    sub.s   $f8, $f18, $f4
    mul.s   $f10, $f8, $f0
    add.s   $f6, $f10, $f4
    swc1    $f6, 0x0028(a0)            # 00000028
    lwc1    $f18, 0x0044($sp)
    lwc1    $f16, 0x0038($sp)
    sub.s   $f8, $f16, $f18
    mul.s   $f10, $f8, $f0
    add.s   $f4, $f10, $f18
    swc1    $f4, 0x002C(a0)            # 0000002C
    lw      t1, 0x0054($sp)
    beql    t1, $zero, lbl_80930088
    lw      $ra, 0x0024($sp)
    lw      t4, 0x0000(t2)             # FFFFFFF4
    addiu   t5, $sp, 0x0030            # t5 = FFFFFFE8
    sw      t4, 0x0004($sp)
    lw      a2, 0x0004(t2)             # FFFFFFF8
    lw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    lw      a3, 0x0008(t2)             # FFFFFFFC
    sw      a3, 0x000C($sp)
    lw      t8, 0x0000(t5)             # FFFFFFE8
    sw      t8, 0x0010($sp)
    lw      t7, 0x0004(t5)             # FFFFFFEC
    sw      t7, 0x0014($sp)
    lw      t8, 0x0008(t5)             # FFFFFFF0
    jal     func_8092FE84
    sw      t8, 0x0018($sp)
    lw      $ra, 0x0024($sp)
lbl_80930088:
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_80930094:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    mtc1    a3, $f12                   # $f12 = 0.00
    or      a3, a0, $zero              # a3 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    lw      t7, 0x0038($sp)
    lw      t6, 0x0034($sp)
    addiu   t5, $sp, 0x0024            # t5 = FFFFFFF4
    sll     t8, t7,  2
    addu    v0, t6, t8
    lw      t9, 0x1D8C(v0)             # 00001D8C
    lw      t0, 0x0018(t9)             # 00000018
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0024($sp)
    lw      t1, 0x1D8C(v0)             # 00001D8C
    lw      t2, 0x001C(t1)             # 0000001C
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0028($sp)
    lw      t3, 0x1D8C(v0)             # 00001D8C
    lw      t4, 0x0020(t3)             # 00000020
    mtc1    t4, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x002C($sp)
    lw      t6, 0x0000(t5)             # FFFFFFF4
    sw      t6, 0x0000($sp)
    lw      a1, 0x0004(t5)             # FFFFFFF8
    lw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    lw      a2, 0x0008(t5)             # FFFFFFFC
    swc1    $f12, 0x0010($sp)
    jal     func_8092D0CC
    sw      a2, 0x0008($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80930140:
    sll     t6, a2,  2
    addu    t7, a1, t6
    lw      v0, 0x1D8C(t7)             # 00001D8C
    lw      t8, 0x000C(v0)             # 0000000C
    lw      t9, 0x0010(v0)             # 00000010
    lw      t0, 0x0014(v0)             # 00000014
    mtc1    t8, $f4                    # $f4 = 0.00
    mtc1    t9, $f6                    # $f6 = 0.00
    mtc1    t0, $f8                    # $f8 = 0.00
    cvt.s.w $f0, $f4
    cvt.s.w $f2, $f6
    swc1    $f0, 0x0024(a0)            # 00000024
    cvt.s.w $f12, $f8
    swc1    $f2, 0x0028(a0)            # 00000028
    swc1    $f12, 0x002C(a0)           # 0000002C
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80930190: .word 0x008B0100, 0x00000030, 0x00010000, 0x00000190
.word func_8092AE38
.word func_8092B638
.word func_8092E390
.word 0x00000000
var_809301B0: .word 0x00000000
var_809301B4: .word \
0x008E008F, 0x00010091, 0x00930093, 0x00930094, \
0x009500BA, 0x00BA00BA, 0x00BA00BA, 0x00BA00A8, \
0x00940094, 0x000100AD, 0x00AD00AD, 0x00AD0158, \
0x00A800A8
var_809301E8: .byte 0x01
var_809301E9: .byte \
0x01, 0x02, 0x00, 0x01, 0x01, 0x02, 0x00, 0x01, 0x02, 0x00, 0x02, 0x01, 0x00, 0x01, 0x00, 0x02, \
0x00, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00
var_80930200: .word \
0xFFFFFF64, 0xFF00FFFF, 0xFFC80096, 0xFFFFFF00, \
0x64FF0000, 0x00000000, 0xDF000000, 0x00000000

.section .rodata

var_80930220: .word var_8092AEEC
.word var_8092AF08
.word var_8092AF38
.word var_8092B0E8
.word var_8092B10C
.word var_8092B164
.word var_8092B1F8
.word var_8092B284
.word var_8092B320
.word var_8092B418
.word var_8092B42C
.word var_8092B440
.word var_8092B454
.word var_8092B468
.word var_8092B47C
.word var_8092B4B4
.word var_8092B2F0
.word var_8092B2B8
.word var_8092AF9C
.word var_8092B4F0
.word var_8092B528
.word var_8092B560
.word var_8092B5DC
.word var_8092B490
.word var_8092B4A4
.word var_8092B4A4
var_80930288: .word var_8092AFEC
.word var_8092B00C
.word var_8092B02C
.word var_8092B04C
.word var_8092B06C
.word var_8092B08C
.word var_8092B0B0
var_809302A4: .word 0xBDCCCCCD
var_809302A8: .word 0x3DCCCCCD
var_809302AC: .word 0x3FD9999A
var_809302B0: .word 0x3AAEC33E
var_809302B4: .word 0x3C23D70A
var_809302B8: .word 0x3E0F5C29
var_809302BC: .word 0x3F19999A
var_809302C0: .word 0xBCF5C28F
var_809302C4: .word 0x3F666666
var_809302C8: .word 0x3C23D70A
var_809302CC: .word 0x3C23D70A
var_809302D0: .word 0x3E6B851F
var_809302D4: .word 0x3A83126F
var_809302D8: .word 0x4001EB85
var_809302DC: .word 0x3D4CCCCD
var_809302E0: .word 0x3DCCCCCD
var_809302E4: .word 0x3BA3D70A
var_809302E8: .word 0x3F866666
var_809302EC: .word 0x3E6B851F
var_809302F0: .word 0x3E19999A
var_809302F4: .word 0x3C8EFA35
var_809302F8: .word 0x38C90FDB
var_809302FC: .word 0x38C90FDB
var_80930300: .word 0x4622F983
var_80930304: .word 0xBDCCCCCD
var_80930308: .word 0x3E4CCCCD
var_8093030C: .word 0x3E449809
var_80930310: .word 0x40060A92
var_80930314: .word 0x3E449809
var_80930318: .word 0x40860A92
var_8093031C: .word 0x3E449809
var_80930320: .word 0x3C8EFA35
var_80930324: .word 0x3FC90FDB
var_80930328: .word 0x3CF5C28F
var_8093032C: .word 0x3D4CCCCD
var_80930330: .word 0x3C8EFA35
var_80930334: .word 0x3C8EFA35
var_80930338: .word 0x38C90FDB
var_8093033C: .word 0x4019999A
var_80930340: .word 0x38C90FDB
var_80930344: .word 0x38C90FDB
var_80930348: .word 0x4622F983
var_8093034C: .word 0x4622F983

