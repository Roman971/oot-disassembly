.section .text
func_809D0090:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x013C(s0)             # 0000013C
    sw      $zero, 0x0140(s0)          # 00000140
    or      v0, $zero, $zero           # v0 = 00000000
    or      v1, s0, $zero              # v1 = 00000000
    addiu   a0, $zero, 0x0003          # a0 = 00000003
lbl_809D00B8:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    addiu   v1, v1, 0x0004             # v1 = 00000004
    bne     v0, a0, lbl_809D00B8
    sw      $zero, 0x0140(v1)          # 00000144
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     $at, %hi(var_809D108C)     # $at = 809D0000
    lwc1    $f6, %lo(var_809D108C)($at)
    addiu   t7, $zero, 0x4000          # t7 = 00004000
    addiu   t8, $zero, 0x8003          # t8 = FFFF8003
    sw      t8, 0x0024($sp)
    sw      t7, 0x001C($sp)
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    lui     a3, 0xC37A                 # a3 = C37A0000
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0020($sp)
    swc1    $f4, 0x0010($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)
    bne     v0, $zero, lbl_809D0120
    sw      v0, 0x015C(s0)             # 0000015C
    lui     a0, %hi(var_809D1070)      # a0 = 809D0000
    addiu   a0, a0, %lo(var_809D1070)  # a0 = 809D1070
    jal     func_80001B38
    addiu   a1, $zero, 0x017E          # a1 = 0000017E
lbl_809D0120:
    sw      $zero, 0x0160(s0)          # 00000160
    sw      $zero, 0x0168(s0)          # 00000168
    sw      $zero, 0x0164(s0)          # 00000164
    sw      $zero, 0x016C(s0)          # 0000016C
    sw      $zero, 0x0170(s0)          # 00000170
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_809D014C:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_809D0160:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)
    sw      $zero, 0x0008(v0)          # 8011A5D8
    lw      t6, 0x0164(a0)             # 00000164
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t1, $zero, 0x0558          # t1 = 00000558
    bne     t6, $at, lbl_809D023C
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    addiu   t7, $zero, 0x04CE          # t7 = 000004CE
    sh      t7, 0x1E1A($at)            # 00011E1A
    lhu     v1, 0x13FA(v0)             # 8011B9CA
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x7FFF           # $at = FFFF7FFF
    andi    t8, v1, 0x0040             # t8 = 00000000
    beq     t8, $zero, lbl_809D01FC
    andi    t5, v1, 0xFFF0             # t5 = 00000000
    andi    t9, v1, 0xFFF0             # t9 = 00000000
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     t1, t9, 0x0006             # t1 = 00000006
    ori     $at, $at, 0x7FFF           # $at = FFFF7FFF
    and     t2, t1, $at
    sh      t1, 0x13FA(v0)             # 8011B9CA
    ori     t3, t2, 0x8000             # t3 = 00008000
    lui     $at, 0x0001                # $at = 00010000
    sh      t3, 0x13FA(v0)             # 8011B9CA
    addu    $at, $at, a1
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    sb      t4, 0x1E5E($at)            # 00011E5E
    sw      a1, 0x001C($sp)
    jal     func_80063434
    addiu   a0, $zero, 0x0042          # a0 = 00000042
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    b       lbl_809D027C
    lw      a1, 0x001C($sp)
lbl_809D01FC:
    ori     t7, t5, 0x0004             # t7 = 00000004
    and     t8, t7, $at
    sh      t7, 0x13FA(v0)             # 8011B9CA
    ori     t9, t8, 0x8000             # t9 = 00008000
    sh      t9, 0x13FA(v0)             # 8011B9CA
    addiu   a0, $zero, 0x0042          # a0 = 00000042
    jal     func_80063434
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lui     $at, 0x0001                # $at = 00010000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   t0, $zero, 0x002E          # t0 = 0000002E
    addu    $at, $at, a1
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    b       lbl_809D027C
    sb      t0, 0x1E5E($at)            # 00011E5E
lbl_809D023C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    sh      t1, 0x1E1A($at)            # 00011E1A
    lhu     t2, 0x13FA(v0)             # 8011B9CA
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    andi    t3, t2, 0xFFF0             # t3 = 00000000
    ori     t4, t3, 0x0003             # t4 = 00000003
    sh      t4, 0x13FA(v0)             # 8011B9CA
    sb      t5, 0x1E5E($at)            # 00011E5E
    lhu     t6, 0x13FA(v0)             # 8011B9CA
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x7FFF           # $at = FFFF7FFF
    and     t7, t6, $at
    ori     t8, t7, 0x8000             # t8 = 00008000
    sh      t8, 0x13FA(v0)             # 8011B9CA
lbl_809D027C:
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x4600(t9)            # 8011BA00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    sh      $zero, 0x0586(t9)          # 80120586
    sb      t0, 0x1E15($at)            # 00011E15
    sh      $zero, 0x13CE(v0)          # 8011B99E
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809D02AC:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s2, 0x0030($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s4, 0x0038($sp)
    sw      s3, 0x0034($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a1, 0x0044($sp)
    lw      v1, 0x0160(s2)             # 00000160
    lw      t6, 0x0044($sp)
    slti    $at, v1, 0x0033
    bne     $at, $zero, lbl_809D030C
    lw      s4, 0x1C44(t6)             # 00001C44
    lw      v0, 0x0140(s2)             # 00000140
    or      a0, $zero, $zero           # a0 = 00000000
    andi    t7, v0, 0x0002             # t7 = 00000000
    bne     t7, $zero, lbl_809D030C
    ori     t8, v0, 0x0002             # t8 = 00000002
    jal     func_8007397C
    sw      t8, 0x0140(s2)             # 00000140
    b       lbl_809D03AC
    lw      v1, 0x0160(s2)             # 00000160
lbl_809D030C:
    slti    $at, v1, 0x0051
    bnel    $at, $zero, lbl_809D0350
    slti    $at, v1, 0x0052
    lw      t9, 0x0430(s4)             # 00000430
    beql    t9, $zero, lbl_809D0350
    slti    $at, v1, 0x0052
    lw      v0, 0x0140(s2)             # 00000140
    addiu   s3, $zero, 0x0001          # s3 = 00000001
    andi    t0, v0, 0x0001             # t0 = 00000000
    bne     t0, $zero, lbl_809D034C
    ori     t1, v0, 0x0001             # t1 = 00000001
    sw      t1, 0x0140(s2)             # 00000140
    lw      a0, 0x0430(s4)             # 00000430
    sw      s3, 0x0378(a0)             # 00000378
    b       lbl_809D03AC
    lw      v1, 0x0160(s2)             # 00000160
lbl_809D034C:
    slti    $at, v1, 0x0052
lbl_809D0350:
    bnel    $at, $zero, lbl_809D03B0
    lui     $at, 0x43C8                # $at = 43C80000
    lw      t2, 0x0140(s2)             # 00000140
    addiu   s3, $zero, 0x0001          # s3 = 00000001
    addiu   a0, $zero, 0x4835          # a0 = 00004835
    andi    t3, t2, 0x0004             # t3 = 00000000
    bne     t3, $zero, lbl_809D03AC
    lui     a1, 0x8010                 # a1 = 80100000
    lw      v0, 0x015C(s2)             # 0000015C
    lui     t6, 0x8010                 # t6 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    sw      s3, 0x0378(v0)             # 00000378
    lw      t4, 0x0140(s2)             # 00000140
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    addiu   a3, t6, 0x43A0             # a3 = 801043A0
    ori     t5, t4, 0x0004             # t5 = 00000004
    sw      t5, 0x0140(s2)             # 00000140
    sw      t7, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a1, a1, 0x4394             # a1 = 80104394
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      v1, 0x0160(s2)             # 00000160
lbl_809D03AC:
    lui     $at, 0x43C8                # $at = 43C80000
lbl_809D03B0:
    addiu   t8, v1, 0x0001             # t8 = 00000001
    lui     s1, %hi(var_809D0F80)      # s1 = 809D0000
    mtc1    $at, $f20                  # $f20 = 400.00
    addiu   s3, $zero, 0x0001          # s3 = 00000001
    sw      t8, 0x0160(s2)             # 00000160
    addiu   s1, s1, %lo(var_809D0F80)  # s1 = 809D0F80
    or      s0, $zero, $zero           # s0 = 00000000
lbl_809D03CC:
    lw      v0, 0x0430(s4)             # 00000430
    or      a0, s1, $zero              # a0 = 809D0F80
    beql    v0, $zero, lbl_809D0428
    lw      a1, 0x015C(s2)             # 0000015C
    jal     func_800A5560
    addiu   a1, v0, 0x0024             # a1 = 00000024
    c.lt.s  $f0, $f20
    nop
    bc1fl   lbl_809D0428
    lw      a1, 0x015C(s2)             # 0000015C
    blez    s0, lbl_809D0414
    sll     t9, s0,  2
    addu    v0, s2, t9
    lw      t0, 0x0140(v0)             # 00000140
    bne     s3, t0, lbl_809D0414
    nop
    b       lbl_809D0424
    sw      s3, 0x0144(v0)             # 00000144
lbl_809D0414:
    bne     s0, $zero, lbl_809D0424
    sll     t1, s0,  2
    addu    t2, s2, t1
    sw      s3, 0x0144(t2)             # 00000144
lbl_809D0424:
    lw      a1, 0x015C(s2)             # 0000015C
lbl_809D0428:
    or      a0, s1, $zero              # a0 = 809D0F80
    jal     func_800A5560
    addiu   a1, a1, 0x0024             # a1 = 00000024
    c.lt.s  $f0, $f20
    nop
    bc1fl   lbl_809D0478
    addiu   s0, s0, 0x0001             # s0 = 00000001
    blez    s0, lbl_809D0464
    sll     t3, s0,  2
    addu    v0, s2, t3
    lw      t4, 0x014C(v0)             # 0000014C
    bne     s3, t4, lbl_809D0464
    nop
    b       lbl_809D0474
    sw      s3, 0x0150(v0)             # 00000150
lbl_809D0464:
    bne     s0, $zero, lbl_809D0474
    sll     t5, s0,  2
    addu    t6, s2, t5
    sw      s3, 0x0150(t6)             # 00000150
lbl_809D0474:
    addiu   s0, s0, 0x0001             # s0 = 00000002
lbl_809D0478:
    slti    $at, s0, 0x0003
    bne     $at, $zero, lbl_809D03CC
    addiu   s1, s1, 0x000C             # s1 = 809D0F8C
    lw      t7, 0x0164(s2)             # 00000164
    bnel    t7, $zero, lbl_809D06E0
    lw      v0, 0x0168(s2)             # 00000168
    lw      v0, 0x0430(s4)             # 00000430
    beql    v0, $zero, lbl_809D054C
    lw      v0, 0x015C(s2)             # 0000015C
    lw      t8, 0x014C(s2)             # 0000014C
    lui     v1, %hi(var_809D0FA4)      # v1 = 809D0000
    addiu   v1, v1, %lo(var_809D0FA4)  # v1 = 809D0FA4
    bnel    s3, t8, lbl_809D054C
    lw      v0, 0x015C(s2)             # 0000015C
    lwc1    $f4, 0x0024(v0)            # 00000024
    lwc1    $f12, 0x0000(v1)           # 809D0FA4
    lwc1    $f14, 0x0004(v1)           # 809D0FA8
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(v0)            # 0000002C
    lw      a2, 0x0008(v1)             # 809D0FAC
    lw      a3, 0x000C(v1)             # 809D0FB0
    jal     func_800A506C
    swc1    $f6, 0x0014($sp)
    beql    v0, $zero, lbl_809D054C
    lw      v0, 0x015C(s2)             # 0000015C
    lw      t9, 0x016C(s2)             # 0000016C
    addiu   t2, $zero, 0x0037          # t2 = 00000037
    addiu   a0, $zero, 0x0041          # a0 = 00000041
    addiu   t0, t9, 0x0001             # t0 = 00000001
    blez    t0, lbl_809D052C
    sw      t0, 0x016C(s2)             # 0000016C
    sw      s3, 0x0164(s2)             # 00000164
    jal     func_800CAA70
    sw      t2, 0x0168(s2)             # 00000168
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t3, t3, 0x43A8             # t3 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t3, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4835          # a0 = 00004835
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_809D052C:
    or      s0, $zero, $zero           # s0 = 00000000
    or      v0, s2, $zero              # v0 = 00000000
    addiu   s1, $zero, 0x0003          # s1 = 00000003
lbl_809D0538:
    addiu   s0, s0, 0x0001             # s0 = 00000001
    addiu   v0, v0, 0x0004             # v0 = 00000004
    bne     s0, s1, lbl_809D0538
    sw      $zero, 0x0140(v0)          # 00000144
    lw      v0, 0x015C(s2)             # 0000015C
lbl_809D054C:
    lui     v1, %hi(var_809D0FA4)      # v1 = 809D0000
    addiu   v1, v1, %lo(var_809D0FA4)  # v1 = 809D0FA4
    beq     v0, $zero, lbl_809D0614
    addiu   s1, $zero, 0x0003          # s1 = 00000003
    lw      t4, 0x0158(s2)             # 00000158
    bnel    s3, t4, lbl_809D0618
    lw      v0, 0x0430(s4)             # 00000430
    lwc1    $f8, 0x0024(v0)            # 00000028
    lwc1    $f12, 0x0000(v1)           # 809D0FA4
    lwc1    $f14, 0x0004(v1)           # 809D0FA8
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x002C(v0)           # 00000030
    lw      a2, 0x0008(v1)             # 809D0FAC
    lw      a3, 0x000C(v1)             # 809D0FB0
    jal     func_800A506C
    swc1    $f10, 0x0014($sp)
    beql    v0, $zero, lbl_809D0618
    lw      v0, 0x0430(s4)             # 00000430
    lw      t5, 0x0170(s2)             # 00000170
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    addiu   t9, $zero, 0x0046          # t9 = 00000046
    addiu   t6, t5, 0x0001             # t6 = 00000001
    blez    t6, lbl_809D05FC
    sw      t6, 0x0170(s2)             # 00000170
    lw      v0, 0x015C(s2)             # 0000015C
    sw      t8, 0x0164(s2)             # 00000164
    sw      t9, 0x0168(s2)             # 00000168
    lw      t0, 0x01E0(v0)             # 000001E0
    lui     $at, 0x0080                # $at = 00800000
    addiu   a0, $zero, 0x0041          # a0 = 00000041
    or      t1, t0, $at                # t1 = 00800000
    jal     func_800CAA70
    sw      t1, 0x01E0(v0)             # 000001E0
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t2, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4835          # a0 = 00004835
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_809D05FC:
    or      s0, $zero, $zero           # s0 = 00000000
    or      v0, s2, $zero              # v0 = 00000000
lbl_809D0604:
    addiu   s0, s0, 0x0001             # s0 = 00000001
    addiu   v0, v0, 0x0004             # v0 = 00000004
    bne     s0, s1, lbl_809D0604
    sw      $zero, 0x014C(v0)          # 00000150
lbl_809D0614:
    lw      v0, 0x0430(s4)             # 00000430
lbl_809D0618:
    lui     s0, %hi(var_809D0FB4)      # s0 = 809D0000
    addiu   s0, s0, %lo(var_809D0FB4)  # s0 = 809D0FB4
    beql    v0, $zero, lbl_809D0658
    lwc1    $f4, 0x0024(s4)            # 00000024
    lwc1    $f16, 0x0024(v0)           # 00000028
    lwc1    $f12, 0x0000(s0)           # 809D0FB4
    lwc1    $f14, 0x0004(s0)           # 809D0FB8
    swc1    $f16, 0x0010($sp)
    lwc1    $f18, 0x002C(v0)           # 00000030
    lw      a2, 0x0008(s0)             # 809D0FBC
    lw      a3, 0x000C(s0)             # 809D0FC0
    jal     func_800A506C
    swc1    $f18, 0x0014($sp)
    bne     v0, $zero, lbl_809D0688
    nop
    lwc1    $f4, 0x0024(s4)            # 00000024
lbl_809D0658:
    lui     s0, %hi(var_809D0FB4)      # s0 = 809D0000
    addiu   s0, s0, %lo(var_809D0FB4)  # s0 = 809D0FB4
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(s4)            # 0000002C
    lwc1    $f12, 0x0000(s0)           # 809D0FB4
    lwc1    $f14, 0x0004(s0)           # 809D0FB8
    lw      a2, 0x0008(s0)             # 809D0FBC
    lw      a3, 0x000C(s0)             # 809D0FC0
    jal     func_800A506C
    swc1    $f6, 0x0014($sp)
    beq     v0, $zero, lbl_809D06A0
    nop
lbl_809D0688:
    jal     func_800CAA70
    addiu   a0, $zero, 0x0041          # a0 = 00000041
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    sw      t3, 0x0164(s2)             # 00000164
    sw      t4, 0x0168(s2)             # 00000168
lbl_809D06A0:
    lui     t5, 0x8012                 # t5 = 80120000
    lh      t5, -0x4660(t5)            # 8011B9A0
    slti    $at, t5, 0x00B4
    bnel    $at, $zero, lbl_809D0700
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      t6, 0x0140(s2)             # 00000140
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_809D0700
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jal     func_800CAA70
    addiu   a0, $zero, 0x0041          # a0 = 00000041
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sw      s1, 0x0164(s2)             # 00000164
    b       lbl_809D06FC
    sw      t8, 0x0168(s2)             # 00000168
    lw      v0, 0x0168(s2)             # 00000168
lbl_809D06E0:
    or      a0, s2, $zero              # a0 = 00000000
    blez    v0, lbl_809D06F4
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    b       lbl_809D06FC
    sw      t9, 0x0168(s2)             # 00000168
lbl_809D06F4:
    jal     func_809D0160
    lw      a1, 0x0044($sp)
lbl_809D06FC:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809D0700:
    lw      $ra, 0x003C($sp)
    ldc1    $f20, 0x0020($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    lw      s3, 0x0034($sp)
    lw      s4, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_809D0724:
    sw      a1, 0x0004($sp)
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x013C(a0)             # 0000013C
    sw      $zero, 0x0140(a0)          # 00000140
    sw      $zero, 0x0144(a0)          # 00000144
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_809D0744:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_809D0758:
    lw      v0, 0x1C44(a1)             # 00001C44
    lw      v1, 0x0430(v0)             # 00000430
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    bnel    v1, $zero, lbl_809D0778
    lw      a2, 0x0144(a0)             # 00000144
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809D0774:
    lw      a2, 0x0144(a0)             # 00000144
lbl_809D0778:
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sltiu   $at, a2, 0x005B
    bnel    $at, $zero, lbl_809D0794
    addiu   t7, a2, 0x0001             # t7 = 00000001
    sw      t6, 0x0390(v1)             # 00000390
    lw      a2, 0x0144(a0)             # 00000144
    addiu   t7, a2, 0x0001             # t7 = 00000001
lbl_809D0794:
    sw      t7, 0x0144(a0)             # 00000144
    jr      $ra
    nop


func_809D07A0:
    sw      a1, 0x0004($sp)
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sw      t6, 0x013C(a0)             # 0000013C
    sw      $zero, 0x0140(a0)          # 00000140
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_809D07BC:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_809D07D0:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_809D07E4:
    sw      a1, 0x0004($sp)
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t6, 0x013C(a0)             # 0000013C
    sw      $zero, 0x0144(a0)          # 00000144
    sw      $zero, 0x0188(a0)          # 00000188
    sw      $zero, 0x018C(a0)          # 0000018C
    or      v0, $zero, $zero           # v0 = 00000000
    or      v1, a0, $zero              # v1 = 00000000
    addiu   a1, $zero, 0x0010          # a1 = 00000010
lbl_809D0808:
    addiu   v0, v0, 0x0004             # v0 = 00000004
    sw      $zero, 0x014C(v1)          # 0000014C
    sw      $zero, 0x0150(v1)          # 00000150
    sw      $zero, 0x0154(v1)          # 00000154
    addiu   v1, v1, 0x0010             # v1 = 00000010
    bne     v0, a1, lbl_809D0808
    sw      $zero, 0x0138(v1)          # 00000148
    sw      $zero, 0x0190(a0)          # 00000190
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_809D0834:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_809D0848:
    lw      v0, 0x018C(a0)             # 0000018C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t6, $zero, 0x04CE          # t6 = 000004CE
    beq     v0, $at, lbl_809D0868
    addiu   t7, $zero, 0x002E          # t7 = 0000002E
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    v0, $at, lbl_809D08A4
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_809D0868:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lui     $at, 0x0001                # $at = 00010000
    sw      $zero, 0x0008(v0)          # 8011A5D8
    addu    $at, $at, a1
    sh      t6, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    sb      t7, 0x1E5E($at)            # 00011E5E
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    jr      $ra
    sb      t8, 0x1E15($at)            # 00011E15
lbl_809D08A0:
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_809D08A4:
    bne     v0, $at, lbl_809D08F8
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    addiu   t9, $zero, 0x00F0          # t9 = 000000F0
    addiu   t0, $zero, 0x000F          # t0 = 0000000F
    lui     $at, 0x0001                # $at = 00010000
    sh      t9, 0x13D0(v0)             # 8011B9A0
    sh      t0, 0x13CE(v0)             # 8011B99E
    sw      $zero, 0x0008(v0)          # 8011A5D8
    addu    $at, $at, a1
    addiu   t1, $zero, 0x04CE          # t1 = 000004CE
    sh      t1, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    addiu   t2, $zero, 0x002E          # t2 = 0000002E
    sb      t2, 0x1E5E($at)            # 00011E5E
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    jr      $ra
    sb      t3, 0x1E15($at)            # 00011E15
lbl_809D08F8:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lui     $at, 0x0001                # $at = 00010000
    sw      $zero, 0x0008(v0)          # 8011A5D8
    addu    $at, $at, a1
    addiu   t4, $zero, 0x0157          # t4 = 00000157
    sh      t4, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    addiu   t5, $zero, 0x002E          # t5 = 0000002E
    sb      t5, 0x1E5E($at)            # 00011E5E
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sb      t6, 0x1E15($at)            # 00011E15
    jr      $ra
    nop


func_809D093C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s2, 0x0028($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      a1, 0x003C($sp)
    lw      t7, 0x0144(s2)             # 00000144
    lw      t6, 0x003C($sp)
    lui     v0, %hi(var_809D0FA4)      # v0 = 809D0000
    andi    t8, t7, 0x0040             # t8 = 00000000
    bne     t8, $zero, lbl_809D09BC
    lw      s3, 0x1C44(t6)             # 00001C44
    lw      s1, 0x0430(s3)             # 00000430
    addiu   v0, v0, %lo(var_809D0FA4)  # v0 = 809D0FA4
    lwc1    $f12, 0x0000(v0)           # 809D0FA4
    lwc1    $f4, 0x0024(s1)            # 00000024
    lwc1    $f14, 0x0004(v0)           # 809D0FA8
    lw      a2, 0x0008(v0)             # 809D0FAC
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(s1)            # 0000002C
    lw      a3, 0x000C(v0)             # 809D0FB0
    jal     func_800A506C
    swc1    $f6, 0x0014($sp)
    beql    v0, $zero, lbl_809D09C0
    lw      v0, 0x0144(s2)             # 00000144
    lw      t9, 0x0144(s2)             # 00000144
    ori     t0, t9, 0x0040             # t0 = 00000040
    b       lbl_809D0A14
    sw      t0, 0x0144(s2)             # 00000144
lbl_809D09BC:
    lw      v0, 0x0144(s2)             # 00000144
lbl_809D09C0:
    andi    t1, v0, 0x0040             # t1 = 00000000
    beq     t1, $zero, lbl_809D0A14
    andi    t2, v0, 0x0020             # t2 = 00000000
    bne     t2, $zero, lbl_809D0A14
    lui     v0, %hi(var_809D0FA4)      # v0 = 809D0000
    lw      s1, 0x0430(s3)             # 00000430
    addiu   v0, v0, %lo(var_809D0FA4)  # v0 = 809D0FA4
    lwc1    $f12, 0x0000(v0)           # 809D0FA4
    lwc1    $f8, 0x0024(s1)            # 00000024
    lwc1    $f14, 0x0004(v0)           # 809D0FA8
    lw      a2, 0x0008(v0)             # 809D0FAC
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x002C(s1)           # 0000002C
    lw      a3, 0x000C(v0)             # 809D0FB0
    jal     func_800A506C
    swc1    $f10, 0x0014($sp)
    bnel    v0, $zero, lbl_809D0A18
    lw      a0, 0x0140(s2)             # 00000140
    lw      t3, 0x0144(s2)             # 00000144
    ori     t4, t3, 0x0020             # t4 = 00000020
    sw      t4, 0x0144(s2)             # 00000144
lbl_809D0A14:
    lw      a0, 0x0140(s2)             # 00000140
lbl_809D0A18:
    slti    $at, a0, 0x0033
    bnel    $at, $zero, lbl_809D0A4C
    slti    $at, a0, 0x0051
    lw      v0, 0x0144(s2)             # 00000144
    andi    t5, v0, 0x0002             # t5 = 00000000
    bne     t5, $zero, lbl_809D0A48
    ori     t6, v0, 0x0002             # t6 = 00000002
    sw      t6, 0x0144(s2)             # 00000144
    jal     func_8007397C
    or      a0, $zero, $zero           # a0 = 00000000
    b       lbl_809D0AD8
    lw      a0, 0x0140(s2)             # 00000140
lbl_809D0A48:
    slti    $at, a0, 0x0051
lbl_809D0A4C:
    bnel    $at, $zero, lbl_809D0A8C
    slti    $at, a0, 0x0052
    lw      t7, 0x0430(s3)             # 00000430
    beql    t7, $zero, lbl_809D0A8C
    slti    $at, a0, 0x0052
    lw      v0, 0x0144(s2)             # 00000144
    addiu   s4, $zero, 0x0001          # s4 = 00000001
    andi    t8, v0, 0x0001             # t8 = 00000000
    bne     t8, $zero, lbl_809D0A88
    ori     t9, v0, 0x0001             # t9 = 00000001
    sw      t9, 0x0144(s2)             # 00000144
    lw      v1, 0x0430(s3)             # 00000430
    sw      s4, 0x0378(v1)             # 00000378
    b       lbl_809D0AD8
    lw      a0, 0x0140(s2)             # 00000140
lbl_809D0A88:
    slti    $at, a0, 0x0052
lbl_809D0A8C:
    bnel    $at, $zero, lbl_809D0ADC
    lw      t5, 0x018C(s2)             # 0000018C
    lw      v0, 0x0144(s2)             # 00000144
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    andi    t0, v0, 0x0010             # t0 = 00000000
    bne     t0, $zero, lbl_809D0AD8
    ori     t1, v0, 0x0010             # t1 = 00000010
    lui     t2, 0x8010                 # t2 = 80100000
    lui     t3, 0x8010                 # t3 = 80100000
    sw      t1, 0x0144(s2)             # 00000144
    addiu   t3, t3, 0x43A8             # t3 = 801043A8
    addiu   a3, t2, 0x43A0             # a3 = 801043A0
    sw      a3, 0x0010($sp)
    sw      t3, 0x0014($sp)
    addiu   a0, $zero, 0x4835          # a0 = 00004835
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      a0, 0x0140(s2)             # 00000140
lbl_809D0AD8:
    lw      t5, 0x018C(s2)             # 0000018C
lbl_809D0ADC:
    addiu   t4, a0, 0x0001             # t4 = 00000001
    addiu   s4, $zero, 0x0001          # s4 = 00000001
    bne     t5, $zero, lbl_809D0E10
    sw      t4, 0x0140(s2)             # 00000140
    or      s0, $zero, $zero           # s0 = 00000000
    lw      s1, 0x0430(s3)             # 00000430
lbl_809D0AF4:
    lw      t6, 0x0190(s2)             # 00000190
    lui     t9, %hi(var_809D0FD0)      # t9 = 809D0000
    slti    $at, s0, 0x0008
    bne     t6, $zero, lbl_809D0B10
    addiu   t9, t9, %lo(var_809D0FD0)  # t9 = 809D0FD0
    beq     $at, $zero, lbl_809D0BF0
    nop
lbl_809D0B10:
    bgez    s0, lbl_809D0B24
    andi    t7, s0, 0x0007             # t7 = 00000000
    beq     t7, $zero, lbl_809D0B24
    nop
    addiu   t7, t7, 0xFFF8             # t7 = FFFFFFF8
lbl_809D0B24:
    sll     t8, t7,  2
    subu    t8, t8, t7
    sll     t8, t8,  2
    addu    a0, t8, t9
    jal     func_80063EB8
    addiu   a1, s1, 0x0024             # a1 = 00000024
    lw      s1, 0x0430(s3)             # 00000430
    lui     $at, 0x437A                # $at = 437A0000
    beql    s1, $zero, lbl_809D0BE4
    addiu   s0, s0, 0x0001             # s0 = 00000001
    mtc1    $at, $f16                  # $f16 = 250.00
    nop
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_809D0BE4
    addiu   s0, s0, 0x0001             # s0 = 00000002
    lw      t0, 0x01E0(s1)             # 000001E0
    sll     t2, s0,  2
    andi    t1, t0, 0x0004             # t1 = 00000000
    beql    t1, $zero, lbl_809D0BE4
    addiu   s0, s0, 0x0001             # s0 = 00000003
    blez    s0, lbl_809D0B94
    addu    v0, s2, t2
    lw      t3, 0x0144(v0)             # 00000144
    bne     s4, t3, lbl_809D0B94
    nop
    b       lbl_809D0BA0
    sw      s4, 0x0148(v0)             # 00000148
lbl_809D0B94:
    bnel    s0, $zero, lbl_809D0BA4
    lw      t4, 0x0144(v0)             # 00000144
    sw      s4, 0x0148(v0)             # 00000148
lbl_809D0BA0:
    lw      t4, 0x0144(v0)             # 00000144
lbl_809D0BA4:
    bnel    t4, $zero, lbl_809D0BE4
    addiu   s0, s0, 0x0001             # s0 = 00000004
    lw      v0, 0x0144(s2)             # 00000144
    addiu   a1, $zero, 0x208C          # a1 = 0000208C
    or      a2, $zero, $zero           # a2 = 00000000
    andi    t5, v0, 0x0008             # t5 = 00000000
    bne     t5, $zero, lbl_809D0BE0
    ori     t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x0144(s2)             # 00000144
    jal     func_800DCE14
    lw      a0, 0x003C($sp)
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    sw      t7, 0x018C(s2)             # 0000018C
    sw      t8, 0x0188(s2)             # 00000188
lbl_809D0BE0:
    addiu   s0, s0, 0x0001             # s0 = 00000005
lbl_809D0BE4:
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     s0, $at, lbl_809D0AF4
    lw      s1, 0x0430(s3)             # 00000430
lbl_809D0BF0:
    beq     s1, $zero, lbl_809D0DCC
    nop
    lw      t9, 0x0144(s2)             # 00000144
    lui     v0, %hi(var_809D0FA4)      # v0 = 809D0000
    addiu   v0, v0, %lo(var_809D0FA4)  # v0 = 809D0FA4
    andi    t0, t9, 0x0020             # t0 = 00000000
    beq     t0, $zero, lbl_809D0DCC
    nop
    lwc1    $f18, 0x0024(s1)           # 00000024
    lwc1    $f12, 0x0000(v0)           # 809D0FA4
    lwc1    $f14, 0x0004(v0)           # 809D0FA8
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x002C(s1)            # 0000002C
    lw      a2, 0x0008(v0)             # 809D0FAC
    lw      a3, 0x000C(v0)             # 809D0FB0
    jal     func_800A506C
    swc1    $f4, 0x0014($sp)
    beq     v0, $zero, lbl_809D0DCC
    nop
    lw      t1, 0x0190(s2)             # 00000190
    bnel    s4, t1, lbl_809D0CA8
    lw      t8, 0x0184(s2)             # 00000184
    lw      t2, 0x0184(s2)             # 00000184
    bnel    t2, $zero, lbl_809D0CA8
    lw      t8, 0x0184(s2)             # 00000184
    lw      t3, 0x0430(s3)             # 00000430
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f8                   # $f8 = -200.00
    lwc1    $f6, 0x0100(t3)            # 00000100
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_809D0CA8
    lw      t8, 0x0184(s2)             # 00000184
    lw      t4, 0x0144(s2)             # 00000144
    addiu   a1, $zero, 0x208C          # a1 = 0000208C
    or      a2, $zero, $zero           # a2 = 00000000
    ori     t5, t4, 0x0008             # t5 = 00000008
    sw      t5, 0x0144(s2)             # 00000144
    jal     func_800DCE14
    lw      a0, 0x003C($sp)
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    sw      t6, 0x018C(s2)             # 0000018C
    b       lbl_809D0DCC
    sw      t7, 0x0188(s2)             # 00000188
    lw      t8, 0x0184(s2)             # 00000184
lbl_809D0CA8:
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   a0, $zero, 0x0041          # a0 = 00000041
    bnel    s4, t8, lbl_809D0D10
    lw      v1, 0x0164(s2)             # 00000164
    jal     func_800CAA70
    sw      t9, 0x0190(s2)             # 00000190
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t0, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4835          # a0 = 00004835
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   t1, $zero, 0x0046          # t1 = 00000046
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      s4, 0x018C(s2)             # 0000018C
    sw      t1, 0x0188(s2)             # 00000188
    addiu   t2, $zero, 0x000F          # t2 = 0000000F
    b       lbl_809D0DCC
    sh      t2, 0x13CE(v0)             # 8011B99E
    lw      v1, 0x0164(s2)             # 00000164
lbl_809D0D10:
    bne     s4, v1, lbl_809D0D48
    nop
    lw      v0, 0x0144(s2)             # 00000144
    addiu   a1, $zero, 0x208D          # a1 = 0000208D
    or      a2, $zero, $zero           # a2 = 00000000
    andi    t3, v0, 0x0004             # t3 = 00000000
    bne     t3, $zero, lbl_809D0D48
    ori     t4, v0, 0x0004             # t4 = 8011A5D4
    sw      s4, 0x0190(s2)             # 00000190
    sw      t4, 0x0144(s2)             # 00000144
    jal     func_800DCE14
    lw      a0, 0x003C($sp)
    b       lbl_809D0DCC
    nop
lbl_809D0D48:
    bnel    v1, $zero, lbl_809D0D84
    lw      t9, 0x0430(s3)             # 00000430
    lw      t5, 0x0144(s2)             # 00000144
    addiu   a1, $zero, 0x208C          # a1 = 0000208C
    or      a2, $zero, $zero           # a2 = 00000000
    ori     t6, t5, 0x0008             # t6 = 00000008
    sw      t6, 0x0144(s2)             # 00000144
    jal     func_800DCE14
    lw      a0, 0x003C($sp)
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    sw      t7, 0x018C(s2)             # 0000018C
    b       lbl_809D0DCC
    sw      t8, 0x0188(s2)             # 00000188
    lw      t9, 0x0430(s3)             # 00000430
lbl_809D0D84:
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f10                  # $f10 = 80.00
    lwc1    $f16, 0x0100(t9)           # 00000100
    c.lt.s  $f10, $f16
    nop
    bc1f    lbl_809D0DCC
    nop
    lw      t0, 0x0144(s2)             # 00000144
    addiu   a1, $zero, 0x208C          # a1 = 0000208C
    or      a2, $zero, $zero           # a2 = 00000000
    ori     t1, t0, 0x0008             # t1 = 00000008
    sw      t1, 0x0144(s2)             # 00000144
    jal     func_800DCE14
    lw      a0, 0x003C($sp)
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    addiu   t3, $zero, 0x001E          # t3 = 0000001E
    sw      t2, 0x018C(s2)             # 0000018C
    sw      t3, 0x0188(s2)             # 00000188
lbl_809D0DCC:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lh      t4, 0x13D0(v0)             # 8011B9A0
    slti    $at, t4, 0x00B4
    bnel    $at, $zero, lbl_809D0E34
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      t5, 0x0144(s2)             # 00000144
    addiu   t7, $zero, 0x00F0          # t7 = 000000F0
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    andi    t6, t5, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_809D0E30
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    sh      t7, 0x13D0(v0)             # 000013D1
    sw      t8, 0x018C(s2)             # 0000018C
    sw      t9, 0x0188(s2)             # 00000188
    b       lbl_809D0E30
    sh      $zero, 0x13CE(v0)          # 000013CF
lbl_809D0E10:
    lw      v0, 0x0188(s2)             # 00000188
    or      a0, s2, $zero              # a0 = 00000000
    blez    v0, lbl_809D0E28
    addiu   t0, v0, 0xFFFF             # t0 = 00000000
    b       lbl_809D0E30
    sw      t0, 0x0188(s2)             # 00000188
lbl_809D0E28:
    jal     func_809D0848
    lw      a1, 0x003C($sp)
lbl_809D0E30:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809D0E34:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_809D0E54:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x00A4(a1)             # 000000A4
    addiu   $at, $zero, 0x0063         # $at = 00000063
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    bnel    t6, $at, lbl_809D0EA8
    lh      t0, 0x001C(a2)             # 0000001C
    sw      a1, 0x001C($sp)
    jal     func_800288B4
    sw      a2, 0x0018($sp)
    lw      a1, 0x001C($sp)
    bne     v0, $zero, lbl_809D0E9C
    lw      a2, 0x0018($sp)
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    lh      t8, 0x0556(t7)             # 80120556
    beq     t8, $zero, lbl_809D0EA4
lbl_809D0E9C:
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    sh      t9, 0x001C(a2)             # 0000001C
lbl_809D0EA4:
    lh      t0, 0x001C(a2)             # 0000001C
lbl_809D0EA8:
    lui     v0, %hi(var_809D1030)      # v0 = 809D0000
    sll     t1, t0,  2
    addu    v0, v0, t1
    lw      v0, %lo(var_809D1030)(v0)
    beql    v0, $zero, lbl_809D0ECC
    lw      $ra, 0x0014($sp)
    jalr    $ra, v0
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
lbl_809D0ECC:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809D0ED8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      t6, 0x001C(a0)             # 0000001C
    lui     v0, %hi(var_809D1044)      # v0 = 809D0000
    sll     t7, t6,  2
    addu    v0, v0, t7
    lw      v0, %lo(var_809D1044)(v0)
    beql    v0, $zero, lbl_809D0F08
    lw      $ra, 0x0014($sp)
    jalr    $ra, v0
    nop
    lw      $ra, 0x0014($sp)
lbl_809D0F08:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809D0F14:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t6, 0x013C(a0)             # 0000013C
    lui     v0, %hi(var_809D1058)      # v0 = 809D0000
    sll     t7, t6,  2
    addu    v0, v0, t7
    lw      v0, %lo(var_809D1058)(v0)
    beql    v0, $zero, lbl_809D0F44
    lw      $ra, 0x0014($sp)
    jalr    $ra, v0
    nop
    lw      $ra, 0x0014($sp)
lbl_809D0F44:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809D0F50:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop

.section .data

var_809D0F60: .word 0x00DB0100, 0x00000010, 0x00010000, 0x00000194
.word func_809D0E54
.word func_809D0ED8
.word func_809D0F14
.word func_809D0F50
var_809D0F80: .word \
0x44D48000, 0x3F800000, 0xC4070000, 0x42EA0000, \
0x3F800000, 0x43F40000, 0xC4D48000, 0x3F800000, \
0xC4070000
var_809D0FA4: .word 0xC3480000, 0x42A00000, 0xC50FC000, 0xC4B7C000
var_809D0FB4: .word \
0x44480000, 0x447A0000, 0xC5354000, 0xC528C000, \
0x00000000, 0x00000000, 0x00000000
var_809D0FD0: .word \
0x444D0000, 0xC2300000, 0xC4CEE000, 0x44BB2000, \
0xC1A80000, 0xC495C000, 0x44CEE000, 0xC2300000, \
0xC3C60000, 0x44A16000, 0xC2300000, 0x434D0000, \
0x43BD8000, 0xC1A80000, 0x43E38000, 0xC2BE0000, \
0xC1A80000, 0x43E38000, 0xC46AC000, 0x3F800000, \
0x43E38000, 0xC4CD8000, 0xC1A80000, 0xC4816000
var_809D1030: .word 0x00000000
.word func_809D0090
.word func_809D0724
.word func_809D07A0
.word func_809D07E4
var_809D1044: .word 0x00000000
.word func_809D014C
.word func_809D0744
.word func_809D07BC
.word func_809D0834
var_809D1058: .word 0x00000000
.word func_809D02AC
.word func_809D0758
.word func_809D07D0
.word func_809D093C
.word 0x00000000

.section .rodata

var_809D1070: .word \
0x2E2E2F7A, 0x5F656E5F, 0x686F7273, 0x655F6761, \
0x6D655F63, 0x6865636B, 0x2E630000
var_809D108C: .word 0xC4CE4000

