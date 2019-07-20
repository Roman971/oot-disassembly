# "Control Pad Manager Thread" part of the code file
#
# Handles the "padmgr" thread.
#
# Starts at VRAM: 800A2000 / VROM: B17F60
#

.section .text
func_800A2000:
# Pulls message from IC + 0x28 containing the event mq for available input
# A0 = Input Context (8011D500)
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x0028             # a0 = 00000028
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFFC
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      v0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800A2030:
# Puts message on IC + 0x28 containing the event mq for available input
# A0 = Input Context (8011D500)
# A1 = OSMesgQueue* event mq for available input
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x0028             # a0 = 00000028
    jal     func_80001E20              # osSendMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A2058:
# Pulls empty message from IC + 0x40
# A0 = Input Context (8011D500)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x0040             # a0 = 00000040
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A2084:
# Puts empty message on IC + 0x40
# A0 = Input Context (8011D500)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x0040             # a0 = 00000040
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80001E20              # osSendMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A20B0:
# A0 = Input Context (8011D500)
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s2, 0x0020($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    jal     func_800A2000
    or      a0, s2, $zero              # a0 = 00000000
    sw      v0, 0x003C($sp)
    or      s3, $zero, $zero           # s3 = 00000000
    or      s1, $zero, $zero           # s1 = 00000000
    or      s0, s2, $zero              # s0 = 00000000
    addiu   s4, $zero, 0x0001          # s4 = 00000001
lbl_800A20EC:
    lbu     t6, 0x02AA(s0)             # 000002AA
    sll     t7, s1,  2
    addu    t8, s2, t7
    beql    t6, $zero, lbl_800A21D8
    addiu   s1, s1, 0x0001             # s1 = 00000001
    lbu     t9, 0x0002(t8)             # 00000002
    andi    t0, t9, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_800A21C8
    lbu     v0, 0x02AE(s0)             # 000002AE
    lbu     t1, 0x02AE(s0)             # 000002AE
    bnel    s4, t1, lbl_800A21D8
    addiu   s1, s1, 0x0001             # s1 = 00000002
    lbu     t2, 0x02B2(s0)             # 000002B2
    beql    t2, $zero, lbl_800A2178
    lbu     t6, 0x02B6(s0)             # 000002B6
    lbu     t3, 0x02B6(s0)             # 000002B6
    sll     t4, s1,  2
    subu    t4, t4, s1
    slti    $at, t3, 0x0003
    beq     $at, $zero, lbl_800A21D4
    sll     t4, t4,  2
    addu    t4, t4, s1
    sll     t4, t4,  3
    addu    a3, s2, t4
    addiu   a0, a3, 0x02BC             # a0 = 000002BC
    addiu   s3, $zero, 0x0001          # s3 = 00000001
    jal     func_800CF990
    or      a1, s4, $zero              # a1 = 00000001
    beq     v0, $zero, lbl_800A216C
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    beq     $zero, $zero, lbl_800A21D4
    sb      $zero, 0x02AE(s0)          # 000002AE
lbl_800A216C:
    beq     $zero, $zero, lbl_800A21D4
    sb      t5, 0x02B6(s0)             # 000002B6
    lbu     t6, 0x02B6(s0)             # 000002B6
lbl_800A2178:
    sll     t7, s1,  2
    subu    t7, t7, s1
    beq     t6, $zero, lbl_800A21D4
    sll     t7, t7,  2
    addu    t7, t7, s1
    sll     t7, t7,  3
    addu    a3, s2, t7
    addiu   a0, a3, 0x02BC             # a0 = 000002BC
    addiu   s3, $zero, 0x0001          # s3 = 00000001
    jal     func_800CF990
    or      a1, $zero, $zero           # a1 = 00000000
    beql    v0, $zero, lbl_800A21B8
    lbu     t8, 0x02B6(s0)             # 000002B6
    beq     $zero, $zero, lbl_800A21D4
    sb      $zero, 0x02AE(s0)          # 000002AE
    lbu     t8, 0x02B6(s0)             # 000002B6
lbl_800A21B8:
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    beq     $zero, $zero, lbl_800A21D4
    sb      t9, 0x02B6(s0)             # 000002B6
    lbu     v0, 0x02AE(s0)             # 000002AE
lbl_800A21C8:
    beql    v0, $zero, lbl_800A21D8
    addiu   s1, s1, 0x0001             # s1 = 00000003
    sb      $zero, 0x02AE(s0)          # 000002AE
lbl_800A21D4:
    addiu   s1, s1, 0x0001             # s1 = 00000004
lbl_800A21D8:
    slti    $at, s1, 0x0004
    bne     $at, $zero, lbl_800A20EC
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s3, $zero, lbl_800A22C0
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x0F30(v0)             # 80120F30
    andi    v0, v0, 0x0003             # v0 = 00000000
    addu    v1, s2, v0
    lbu     t0, 0x02AA(v1)             # 000002AA
    sll     t1, v0,  2
    or      s1, v0, $zero              # s1 = 00000000
    beq     t0, $zero, lbl_800A22C0
    addu    t2, s2, t1
    lbu     t3, 0x0002(t2)             # 00000002
    andi    t4, t3, 0x0001             # t4 = 00000000
    beq     t4, $zero, lbl_800A22C0
    nop
    lbu     t5, 0x02AE(v1)             # 000002AE
    sll     t6, v0,  2
    subu    t6, t6, v0
    beq     s4, t5, lbl_800A22C0
    lw      a0, 0x003C($sp)
    sll     t6, t6,  2
    addu    t6, t6, v0
    sll     t6, t6,  3
    addu    a3, s2, t6
    addiu   a3, a3, 0x02BC             # a3 = 000002BC
    or      a1, a3, $zero              # a1 = 000002BC
    sw      a3, 0x0030($sp)
    jal     func_800CFC04
    or      a2, v0, $zero              # a2 = 00000000
    bne     v0, $zero, lbl_800A228C
    lw      a3, 0x0030($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addu    t8, s2, s1
    sb      t7, 0x02AE(t8)             # 000002AE
    sw      a3, 0x0030($sp)
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_800CF990
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      a0, 0x0030($sp)
    jal     func_800CF990
    or      a1, $zero, $zero           # a1 = 00000000
    beq     $zero, $zero, lbl_800A22C0
    nop
lbl_800A228C:
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     v0, $at, lbl_800A22A4
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addu    t0, s2, s1
    beq     $zero, $zero, lbl_800A22C0
    sb      t9, 0x02AE(t0)             # 000002AE
lbl_800A22A4:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_800A22C0
    lui     t1, 0x8010                 # t1 = 80100000
    lw      t1, -0x1AEC(t1)            # 800FE514
    lui     $at, 0x8010                # $at = 80100000
    addiu   t2, t1, 0x0001             # t2 = 80100001
    sw      t2, -0x1AEC($at)           # 800FE514
lbl_800A22C0:
    lui     t3, 0x8012                 # t3 = 80120000
    lw      t3, 0x0F30(t3)             # 80120F30
    lui     $at, 0x8012                # $at = 80120000
    or      a0, s2, $zero              # a0 = 00000000
    addiu   t4, t3, 0x0001             # t4 = 80120001
    sw      t4, 0x0F30($at)            # 80120F30
    jal     func_800A2030
    lw      a1, 0x003C($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_800A2300:
# A0 = Input Context (8011D500)
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s4, 0x0024($sp)
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s5, 0x0028($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    jal     func_800A2000
    or      a0, s4, $zero              # a0 = 00000000
    lui     s2, 0x8012                 # s2 = 80120000
    or      s5, v0, $zero              # s5 = 00000000
    addiu   s2, s2, 0x1C94             # s2 = 80121C94
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s1, s4, 0x02BC             # s1 = 000002BC
    addiu   s3, $zero, 0x0004          # s3 = 00000004
lbl_800A2344:
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 000002BC
    jal     func_800CFC04
    or      a2, s0, $zero              # a2 = 00000000
    bne     v0, $zero, lbl_800A2368
    or      a0, s1, $zero              # a0 = 000002BC
    lw      t6, 0x0000(s2)             # 80121C94
    jal     func_800CF990
    or      a1, $zero, $zero           # a1 = 00000000
lbl_800A2368:
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s3, lbl_800A2344
    addiu   s1, s1, 0x0068             # s1 = 00000324
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_800A2030
    or      a1, s5, $zero              # a1 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_800A23A4:
# Store byte 0x3 to Input Context + 0x045C
# A0 = Input Context (8011D500)
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sb      t6, 0x045C(a0)             # 0000045C
    jr      $ra
    nop


func_800A23B4:
    addu    t6, a0, a1
    sb      a2, 0x02B2(t6)             # 000002B2
    addiu   t7, $zero, 0x00F0          # t7 = 000000F0
    sb      t7, 0x045D(a0)             # 0000045D
    jr      $ra
    nop


func_800A23CC:
    lbu     t6, 0x0000(a1)             # 00000000
    addiu   t0, $zero, 0x00F0          # t0 = 000000F0
    sb      t6, 0x02B2(a0)             # 000002B2
    lbu     t7, 0x0001(a1)             # 00000001
    sb      t7, 0x02B3(a0)             # 000002B3
    lbu     t8, 0x0002(a1)             # 00000002
    sb      t8, 0x02B4(a0)             # 000002B4
    lbu     t9, 0x0003(a1)             # 00000003
    sb      t9, 0x02B5(a0)             # 000002B5
    sb      t0, 0x045D(a0)             # 0000045D
    jr      $ra
    nop


func_800A23FC:
# A0 = Input Context (8011D500)
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s3, 0x0024($sp)
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s8, 0x0038($sp)
    sw      s7, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    jal     func_800A2058
    or      a0, s3, $zero              # a0 = 00000000
    lbu     t6, 0x02A9(s3)             # 000002A9
    addiu   s0, s3, 0x0230             # s0 = 00000230
    addiu   s1, s3, 0x0290             # s1 = 00000290
    blez    t6, lbl_800A25A4
    or      s2, $zero, $zero           # s2 = 00000000
    lui     s6, 0x8011                 # s6 = 80110000
    addiu   s6, s6, 0x8E20             # s6 = 80108E20
    addiu   s8, $zero, 0x0001          # s8 = 00000001
    addiu   s7, $zero, 0x00FF          # s7 = 000000FF
    addiu   s5, $zero, 0x0008          # s5 = 00000008
    addiu   s4, $zero, 0x0004          # s4 = 00000004
lbl_800A2460:
    lwl     t8, 0x0000(s0)             # 00000230
    lwr     t8, 0x0003(s0)             # 00000233
    addiu   v1, s0, 0x0006             # v1 = 00000236
    swl     t8, 0x0000(v1)             # 00000236
    swr     t8, 0x0003(v1)             # 00000239
    lhu     t8, 0x0004(s0)             # 00000234
    sh      t8, 0x0004(v1)             # 0000023A
    lbu     v0, 0x0004(s1)             # 00000294
    beql    v0, $zero, lbl_800A24A4
    lwl     t0, 0x0000(s1)             # 00000290
    beql    v0, s4, lbl_800A24D4
    lwl     t3, 0x0000(v1)             # 00000236
    beq     v0, s5, lbl_800A24EC
    or      a0, s6, $zero              # a0 = 80108E20
    beq     $zero, $zero, lbl_800A2520
    nop
    lwl     t0, 0x0000(s1)             # 00000290
lbl_800A24A4:
    lwr     t0, 0x0003(s1)             # 00000293
    addu    v0, s3, s2
    swl     t0, 0x0000(s0)             # 00000230
    swr     t0, 0x0003(s0)             # 00000233
    lhu     t0, 0x0004(s1)             # 00000294
    sh      t0, 0x0004(s0)             # 00000234
    lbu     t1, 0x02AA(v0)             # 000002AA
    bnel    t1, $zero, lbl_800A252C
    lhu     v1, 0x0006(s0)             # 00000236
    beq     $zero, $zero, lbl_800A2528
    sb      s8, 0x02AA(v0)             # 000002AA
    lwl     t3, 0x0000(v1)             # 00000236
lbl_800A24D4:
    lwr     t3, 0x0003(v1)             # 00000239
    swl     t3, 0x0000(s0)             # 00000230
    swr     t3, 0x0003(s0)             # 00000233
    lhu     t3, 0x0004(v1)             # 0000023A
    beq     $zero, $zero, lbl_800A2528
    sh      t3, 0x0004(s0)             # 00000234
lbl_800A24EC:
    sh      $zero, 0x0000(s0)          # 00000230
    sb      $zero, 0x0002(s0)          # 00000232
    sb      $zero, 0x0003(s0)          # 00000233
    lbu     t4, 0x0004(s1)             # 00000294
    addu    v0, s3, s2
    sb      t4, 0x0004(s0)             # 00000234
    lbu     t5, 0x02AA(v0)             # 000002AA
    beql    t5, $zero, lbl_800A252C
    lhu     v1, 0x0006(s0)             # 00000236
    sb      $zero, 0x02AA(v0)          # 000002AA
    sb      $zero, 0x02AE(v0)          # 000002AE
    beq     $zero, $zero, lbl_800A2528
    sb      s7, 0x02B6(v0)             # 000002B6
lbl_800A2520:
    jal     func_800AF734
    addiu   a1, $zero, 0x017B          # a1 = 0000017B
lbl_800A2528:
    lhu     v1, 0x0006(s0)             # 00000236
lbl_800A252C:
    lhu     a1, 0x0000(s0)             # 00000230
    lhu     t6, 0x000C(s0)             # 0000023C
    lhu     t0, 0x0012(s0)             # 00000242
    xor     v0, v1, a1
    and     t2, v0, v1
    and     t8, v0, a1
    or      t9, t6, t8                 # t9 = 00000000
    or      t3, t0, t2                 # t3 = 00000000
    sh      t9, 0x000C(s0)             # 0000023C
    sh      t3, 0x0012(s0)             # 00000242
    jal     func_800CCED4
    or      a0, s0, $zero              # a0 = 00000230
    lb      t4, 0x0002(s0)             # 00000232
    lb      t5, 0x0008(s0)             # 00000238
    lb      t0, 0x0003(s0)             # 00000233
    lb      t2, 0x0009(s0)             # 00000239
    lb      t9, 0x000E(s0)             # 0000023E
    lb      t7, 0x000F(s0)             # 0000023F
    subu    t8, t4, t5
    subu    t5, t0, t2
    addu    t1, t9, t8
    addu    t6, t7, t5
    sb      t1, 0x000E(s0)             # 0000023E
    sb      t6, 0x000F(s0)             # 0000023F
    lbu     t9, 0x02A9(s3)             # 000002A9
    addiu   s2, s2, 0x0001             # s2 = 00000001
    addiu   s0, s0, 0x0018             # s0 = 00000248
    slt     $at, s2, t9
    bne     $at, $zero, lbl_800A2460
    addiu   s1, s1, 0x0006             # s1 = 00000296
lbl_800A25A4:
    jal     func_800A2084
    or      a0, s3, $zero              # a0 = 00000000
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
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_800A25DC:
# padmgr main logic
# A0 = Input Context (8011D500)
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_800A2000
    or      a0, s0, $zero              # a0 = 00000000
    sw      v0, 0x002C($sp)
    jal     func_800D0160
    or      a0, v0, $zero              # a0 = 00000000
    lw      v1, 0x0460(s0)             # 00000460
    beq     v1, $zero, lbl_800A2614
    or      a0, s0, $zero              # a0 = 00000000
    jalr    $ra, v1
    lw      a1, 0x0464(s0)             # 00000464
lbl_800A2614:
    lw      a0, 0x002C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a0, s0, 0x0290             # a0 = 00000290
    jal     func_800D01E4
    sw      a0, 0x0020($sp)
    addiu   a0, s0, 0x0296             # a0 = 00000296
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    addiu   a0, s0, 0x02A2             # a0 = 000002A2
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    lbu     t6, 0x045E(s0)             # 0000045E
    lw      a0, 0x0020($sp)
    beq     t6, $zero, lbl_800A2660
    nop
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0018          # a1 = 00000018
lbl_800A2660:
    jal     func_800A23FC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800D0DF0
    lw      a0, 0x002C($sp)
    lw      a0, 0x002C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_800D0E74
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800A2030
    lw      a1, 0x002C($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    or      v1, s0, $zero              # v1 = 00000000
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   a1, $zero, 0x0005          # a1 = 00000005
lbl_800A26A8:
    lbu     t7, 0x0003(v1)             # 00000003
    bnel    t7, $zero, lbl_800A26D0
    addiu   v0, v0, 0x0001             # v0 = 00000001
    lhu     t8, 0x0000(v1)             # 00000000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sllv    t0, t9, v0
    bnel    a1, t8, lbl_800A26D0
    addiu   v0, v0, 0x0001             # v0 = 00000002
    or      a0, a0, t0                 # a0 = 00000000
    addiu   v0, v0, 0x0001             # v0 = 00000003
lbl_800A26D0:
    bne     v0, a2, lbl_800A26A8
    addiu   v1, v1, 0x0004             # v1 = 00000004
    sb      a0, 0x02A8(s0)             # 000002A8
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0x1C94             # t1 = 80121C94
    lw      t2, 0x0000(t1)             # 80121C94
    beql    t2, $zero, lbl_800A2704
    lbu     t3, 0x045C(s0)             # 0000045C
    jal     func_800A2300
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800A2768
    lw      $ra, 0x001C($sp)
    lbu     t3, 0x045C(s0)             # 0000045C
lbl_800A2704:
    blezl   t3, lbl_800A272C
    lbu     t6, 0x045D(s0)             # 0000045D
    lbu     t4, 0x045C(s0)             # 0000045C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t5, t4, 0xFFFF             # t5 = FFFFFFFF
    jal     func_800A2300
    sb      t5, 0x045C(s0)             # 0000045C
    beq     $zero, $zero, lbl_800A2768
    lw      $ra, 0x001C($sp)
    lbu     t6, 0x045D(s0)             # 0000045D
lbl_800A272C:
    bnel    t6, $zero, lbl_800A2748
    lbu     t7, 0x045E(s0)             # 0000045E
    jal     func_800A2300
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800A2768
    lw      $ra, 0x001C($sp)
    lbu     t7, 0x045E(s0)             # 0000045E
lbl_800A2748:
    bnel    t7, $zero, lbl_800A2768
    lw      $ra, 0x001C($sp)
    jal     func_800A20B0
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t8, 0x045D(s0)             # 0000045D
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sb      t9, 0x045D(s0)             # 0000045D
    lw      $ra, 0x001C($sp)
lbl_800A2768:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_800A2778:
# Wrapper for 800A23A4
# Store byte 0x1 to Input Context + 0x045E
# A0 = Input Context (8011D500)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    jal     func_800A23A4
    sb      t6, 0x045E(a0)             # 0000045E
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A279C:
# Crash Debugger/Input Related?
# A0 = Input Context (8011D500)
# A1 = Global Context + 0x14, controller 1 button struct
# A2 = s32 some flag (0 or 1)
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    or      s3, a1, $zero              # s3 = 00000000
    or      s4, a2, $zero              # s4 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0030($sp)
    jal     func_800A2058
    lw      a0, 0x0030($sp)
    lw      s1, 0x0030($sp)
    or      s0, s3, $zero              # s0 = 00000000
    addiu   s3, $zero, 0x0004          # s3 = 00000004
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s1, s1, 0x0230             # s1 = 00000230
lbl_800A27E0:
    beql    s4, $zero, lbl_800A2860
    lwl     t9, 0x0000(s0)             # 00000000
    lwl     t7, 0x0000(s1)             # 00000230
    lwr     t7, 0x0003(s1)             # 00000233
    swl     t7, 0x0000(s0)             # 00000000
    swr     t7, 0x0003(s0)             # 00000003
    lwl     t6, 0x0004(s1)             # 00000234
    lwr     t6, 0x0007(s1)             # 00000237
    swl     t6, 0x0004(s0)             # 00000004
    swr     t6, 0x0007(s0)             # 00000007
    lwl     t7, 0x0008(s1)             # 00000238
    lwr     t7, 0x000B(s1)             # 0000023B
    swl     t7, 0x0008(s0)             # 00000008
    swr     t7, 0x000B(s0)             # 0000000B
    lwl     t6, 0x000C(s1)             # 0000023C
    lwr     t6, 0x000F(s1)             # 0000023F
    swl     t6, 0x000C(s0)             # 0000000C
    swr     t6, 0x000F(s0)             # 0000000F
    lwl     t7, 0x0010(s1)             # 00000240
    lwr     t7, 0x0013(s1)             # 00000243
    swl     t7, 0x0010(s0)             # 00000010
    swr     t7, 0x0013(s0)             # 00000013
    lwl     t6, 0x0014(s1)             # 00000244
    lwr     t6, 0x0017(s1)             # 00000247
    swl     t6, 0x0014(s0)             # 00000014
    swr     t6, 0x0017(s0)             # 00000017
    sh      $zero, 0x000C(s1)          # 0000023C
    sb      $zero, 0x000E(s1)          # 0000023E
    sb      $zero, 0x000F(s1)          # 0000023F
    beq     $zero, $zero, lbl_800A28E0
    sh      $zero, 0x0012(s1)          # 00000242
    lwl     t9, 0x0000(s0)             # 00000000
lbl_800A2860:
    lwr     t9, 0x0003(s0)             # 00000003
    or      a0, s0, $zero              # a0 = 00000000
    swl     t9, 0x0006(s0)             # 00000006
    swr     t9, 0x0009(s0)             # 00000009
    lhu     t9, 0x0004(s0)             # 00000004
    lhu     v1, 0x0006(s0)             # 00000006
    sh      t9, 0x000A(s0)             # 0000000A
    lwl     t1, 0x0000(s1)             # 00000230
    lwr     t1, 0x0003(s1)             # 00000233
    swl     t1, 0x0000(s0)             # 00000000
    swr     t1, 0x0003(s0)             # 00000003
    lhu     a1, 0x0000(s0)             # 00000000
    lhu     t1, 0x0004(s1)             # 00000234
    xor     v0, v1, a1
    and     t3, v1, v0
    and     t2, a1, v0
    sh      t2, 0x000C(s0)             # 0000000C
    sh      t3, 0x0012(s0)             # 00000012
    jal     func_800CCED4
    sh      t1, 0x0004(s0)             # 00000004
    lb      t4, 0x0002(s0)             # 00000002
    lb      t5, 0x0008(s0)             # 00000008
    lb      t1, 0x0003(s0)             # 00000003
    lb      t2, 0x0009(s0)             # 00000009
    lb      t9, 0x000E(s0)             # 0000000E
    lb      t6, 0x000F(s0)             # 0000000F
    subu    t8, t4, t5
    subu    t5, t1, t2
    addu    t0, t9, t8
    addu    t7, t6, t5
    sb      t0, 0x000E(s0)             # 0000000E
    sb      t7, 0x000F(s0)             # 0000000F
lbl_800A28E0:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    addiu   s1, s1, 0x0018             # s1 = 00000248
    bne     s2, s3, lbl_800A27E0
    addiu   s0, s0, 0x0018             # s0 = 00000018
    jal     func_800A2084
    lw      a0, 0x0030($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_800A2918:
# padmgr thread entrypoint
# A0 = Input Context (8011D500)
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s7, 0x0030($sp)
    sw      s6, 0x002C($sp)
    sw      s5, 0x0028($sp)
    sw      s4, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    lui     s1, 0x8010                 # s1 = 80100000
    sw      $zero, 0x0044($sp)
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s1, s1, 0xE510             # s1 = 800FE510
    addiu   s3, s0, 0x0058             # s3 = 00000058
    addiu   s7, $zero, 0x0004          # s7 = 00000004
    addiu   s6, $zero, 0x0003          # s6 = 00000003
    addiu   s5, $zero, 0x0001          # s5 = 00000001
    addiu   s4, $sp, 0x0044            # s4 = FFFFFFFC
    or      a0, s3, $zero              # a0 = 00000058
lbl_800A296C:
    or      a1, s4, $zero              # a1 = FFFFFFFC
    jal     func_80002030              # osRecvMesg
    or      a2, s5, $zero              # a2 = 00000001
    lw      t6, 0x0044($sp)
    lh      v0, 0x0000(t6)             # 00000000
    beq     v0, s5, lbl_800A29A0
    nop
    beql    v0, s6, lbl_800A29D4
    or      s2, s5, $zero              # s2 = 00000001
    beq     v0, s7, lbl_800A29C0
    nop
    beq     $zero, $zero, lbl_800A29D4
    nop
lbl_800A29A0:
    jal     func_800A25DC
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x0000(s1)             # 800FE510
    slti    $at, t7, 0x0003
    bne     $at, $zero, lbl_800A29D4
    nop
    beq     $zero, $zero, lbl_800A29D4
    nop
lbl_800A29C0:
    jal     func_800A2778
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800A29D4
    nop
    or      s2, s5, $zero              # s2 = 00000001
lbl_800A29D4:
    beql    s2, $zero, lbl_800A296C
    or      a0, s3, $zero              # a0 = 00000058
    lw      a0, 0x0078(s0)             # 00000078
    jal     func_800ACF1C
    addiu   a1, s0, 0x0070             # a1 = 00000070
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    lw      s6, 0x002C($sp)
    lw      s7, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_800A2A14:
# Initializes padmgr thread and input context
# A0 = Input Context (8011D500)
# A1 = OSMesgQueue* event mq for available input
# A2 = Irqmgr Context (8011D968)
# A3 = OSId thread ID
# SP + 0x10 = OSPri thread priority
# SP + 0x14 = void* stack start address
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0468          # a1 = 00000468
    lw      t6, 0x0038($sp)
    addiu   a3, s0, 0x0058             # a3 = 00000058
    or      a0, a3, $zero              # a0 = 00000058
    sw      t6, 0x0078(s0)             # 00000078
    sw      a3, 0x002C($sp)
    addiu   a1, s0, 0x0018             # a1 = 00000018
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      a2, 0x002C($sp)
    lw      a0, 0x0078(s0)             # 00000078
    jal     func_800ACE90
    addiu   a1, s0, 0x0070             # a1 = 00000070
    addiu   a0, s0, 0x0028             # a0 = 00000028
    addiu   a1, s0, 0x0010             # a1 = 00000010
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800A2030
    lw      a1, 0x0034($sp)
    addiu   a0, s0, 0x0040             # a0 = 00000040
    addiu   a1, s0, 0x0014             # a1 = 00000014
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_800A2084
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0034($sp)
    addiu   a1, s0, 0x02A8             # a1 = 000002A8
    jal     func_800CD3D0
    or      a2, s0, $zero              # a2 = 00000000
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sb      t7, 0x02A9(s0)             # 000002A9
    jal     func_800D3270
    andi    a0, t7, 0x00FF             # a0 = 00000004
    lw      t8, 0x0044($sp)
    lw      t9, 0x0040($sp)
    addiu   a0, s0, 0x0080             # a0 = 00000080
    lui     a2, 0x800A                 # a2 = 800A0000
    addiu   a2, a2, 0x2918             # a2 = 800A2918
    sw      a0, 0x002C($sp)
    lw      a1, 0x003C($sp)
    or      a3, s0, $zero              # a3 = 00000000
    sw      t8, 0x0010($sp)
    jal     func_80002F20              # osCreateThread
    sw      t9, 0x0014($sp)
    jal     func_80005EC0              # osStartThread
    lw      a0, 0x002C($sp)
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
