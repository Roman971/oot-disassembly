.section .text
func_808CED80:
# Set new update routine function for this actor
# A0 = Actor Instance
# A1 = Pointer to function
    sw      a1, 0x0180(a0)             # 00000180
    jr      $ra
    nop


func_808CED8C:
    sw      a0, 0x0000($sp)
    sll     a0, a0, 16
    sra     a0, a0, 16
    or      v0, a0, $zero              # v0 = 00000000
    jr      $ra
    nop


func_808CEDA4:
    sw      a0, 0x0000($sp)
    sll     a0, a0, 16
    sra     a0, a0, 16
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B3A(t6)            # 8011B4C6
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    andi    t7, t6, 0x0200             # t7 = 00000000
    beq     t7, $zero, lbl_808CEDD0
    nop
    jr      $ra
    or      v0, a0, $zero              # v0 = 00000000
lbl_808CEDD0:
    jr      $ra
    nop


func_808CEDD8:
    sw      a0, 0x0000($sp)
    sll     a0, a0, 16
    sra     a0, a0, 16
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B3A(t6)            # 8011B4C6
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    andi    t7, t6, 0x0100             # t7 = 00000000
    beq     t7, $zero, lbl_808CEE04
    nop
    jr      $ra
    or      v0, a0, $zero              # v0 = 00000000
lbl_808CEE04:
    jr      $ra
    nop


func_808CEE0C:
    sw      a0, 0x0000($sp)
    sll     a0, a0, 16
    sra     a0, a0, 16
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B3A(t6)            # 8011B4C6
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    andi    t7, t6, 0x0400             # t7 = 00000000
    beq     t7, $zero, lbl_808CEE38
    nop
    jr      $ra
    or      v0, a0, $zero              # v0 = 00000000
lbl_808CEE38:
    jr      $ra
    nop


func_808CEE40:
    sw      a0, 0x0000($sp)
    sll     a0, a0, 16
    sra     a0, a0, 16
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B3A(t6)            # 8011B4C6
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    andi    t7, t6, 0x8000             # t7 = 00000000
    beq     t7, $zero, lbl_808CEE6C
    nop
    jr      $ra
    or      v0, a0, $zero              # v0 = 00000000
lbl_808CEE6C:
    jr      $ra
    nop


func_808CEE74:
    sw      a0, 0x0000($sp)
    sll     a0, a0, 16
    sra     a0, a0, 16
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B3A(t6)            # 8011B4C6
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    andi    t7, t6, 0x8000             # t7 = 00000000
    beq     t7, $zero, lbl_808CEEA0
    nop
    jr      $ra
    or      v0, a0, $zero              # v0 = 00000000
lbl_808CEEA0:
    jr      $ra
    nop


func_808CEEA8:
    sw      a0, 0x0000($sp)
    sll     a0, a0, 16
    sra     a0, a0, 16
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B3A(t6)            # 8011B4C6
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    andi    t7, t6, 0x8000             # t7 = 00000000
    beq     t7, $zero, lbl_808CEED4
    nop
    jr      $ra
    or      v0, a0, $zero              # v0 = 00000000
lbl_808CEED4:
    jr      $ra
    nop


func_808CEEDC:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s4, 0x003C($sp)
    sw      s3, 0x0038($sp)
    sw      s0, 0x002C($sp)
    or      s0, a2, $zero              # s0 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s7, 0x0048($sp)
    sw      s6, 0x0044($sp)
    sw      s5, 0x0040($sp)
    sw      s2, 0x0034($sp)
    sw      s1, 0x0030($sp)
    lui     s7, %hi(var_808D45B4)      # s7 = 808D0000
    lui     s6, %hi(var_808D4930)      # s6 = 808D0000
    addiu   s6, s6, %lo(var_808D4930)  # s6 = 808D4930
    addiu   s7, s7, %lo(var_808D45B4)  # s7 = 808D45B4
    or      s2, $zero, $zero           # s2 = 00000000
    or      s1, s4, $zero              # s1 = 00000000
    addiu   s5, $zero, 0x0008          # s5 = 00000008
lbl_808CEF2C:
    lh      a0, 0x0000(s0)             # 00000000
    bgez    a0, lbl_808CEF40
    sll     t6, a0,  2
    b       lbl_808CEFF4
    sw      $zero, 0x01F0(s1)          # 000001F0
lbl_808CEF40:
    addu    t7, s6, t6
    lw      t9, 0x0000(t7)             # 00000000
    jalr    $ra, t9
    nop
    sll     v1, v0, 16
    bgez    v0, lbl_808CEF64
    sra     v1, v1, 16
    b       lbl_808CEFF4
    sw      $zero, 0x01F0(s1)          # 000001F0
lbl_808CEF64:
    lh      t8, 0x0002(s0)             # 00000002
    lh      t0, 0x0004(s0)             # 00000004
    lw      v0, 0x0210(s4)             # 00000210
    mtc1    t8, $f6                    # $f6 = 0.00
    mtc1    t0, $f18                   # $f18 = 0.00
    lwc1    $f4, 0x0024(v0)            # 00000024
    cvt.s.w $f8, $f6
    lwc1    $f16, 0x0028(v0)           # 00000028
    sll     t3, s2,  1
    addu    t4, s7, t3
    lh      t5, 0x0000(t4)             # 00000000
    cvt.s.w $f6, $f18
    addiu   a0, s3, 0x1C24             # a0 = 00001C24
    or      a1, s3, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    add.s   $f10, $f4, $f8
    add.s   $f4, $f16, $f6
    mfc1    a3, $f10
    swc1    $f4, 0x0010($sp)
    lh      t1, 0x0006(s0)             # 00000006
    lwc1    $f8, 0x002C(v0)            # 0000002C
    mtc1    t1, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    add.s   $f16, $f8, $f18
    swc1    $f16, 0x0014($sp)
    lh      t2, 0x00B4(v0)             # 000000B4
    sw      t2, 0x0018($sp)
    lh      t6, 0x00B6(v0)             # 000000B6
    addu    t7, t5, t6
    sw      t7, 0x001C($sp)
    lh      t9, 0x00B8(v0)             # 000000B8
    sw      v1, 0x0024($sp)
    jal     func_80025110              # ActorSpawn
    sw      t9, 0x0020($sp)
    sw      v0, 0x01F0(s1)             # 000001F0
lbl_808CEFF4:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    addiu   s1, s1, 0x0004             # s1 = 00000004
    bne     s2, s5, lbl_808CEF2C
    addiu   s0, s0, 0x0008             # s0 = 00000008
    lw      $ra, 0x004C($sp)
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    lw      s2, 0x0034($sp)
    lw      s3, 0x0038($sp)
    lw      s4, 0x003C($sp)
    lw      s5, 0x0040($sp)
    lw      s6, 0x0044($sp)
    lw      s7, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_808CF030:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s4, 0x003C($sp)
    sw      s3, 0x0038($sp)
    or      s3, a0, $zero              # s3 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s7, 0x0048($sp)
    sw      s6, 0x0044($sp)
    sw      s5, 0x0040($sp)
    sw      s2, 0x0034($sp)
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    lh      v0, 0x001C(s3)             # 0000001C
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    lui     t7, %hi(var_808D4670)      # t7 = 808D0000
    bne     v0, $at, lbl_808CF170
    sll     t6, v0,  6
    addiu   t7, t7, %lo(var_808D4670)  # t7 = 808D4670
    lui     s6, %hi(var_808D45B4)      # s6 = 808D0000
    lui     s5, %hi(var_808D4930)      # s5 = 808D0000
    addu    s0, t6, t7
    addiu   s5, s5, %lo(var_808D4930)  # s5 = 808D4930
    addiu   s6, s6, %lo(var_808D45B4)  # s6 = 808D45B4
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s7, $zero, 0x0008          # s7 = 00000008
lbl_808CF094:
    lh      a0, 0x0000(s0)             # 00000000
    sll     t8, s1,  2
    addu    s2, s3, t8
    bltzl   a0, lbl_808CF168
    addiu   s1, s1, 0x0001             # s1 = 00000001
    lw      t9, 0x01F0(s2)             # 000001F0
    sll     t0, a0,  2
    addu    t1, s5, t0
    bnel    t9, $zero, lbl_808CF168
    addiu   s1, s1, 0x0001             # s1 = 00000002
    lw      t9, 0x0000(t1)             # 00000000
    jalr    $ra, t9
    nop
    sll     v1, v0, 16
    bltz    v0, lbl_808CF164
    sra     v1, v1, 16
    lh      t2, 0x0002(s0)             # 00000002
    lh      t3, 0x0004(s0)             # 00000004
    lw      v0, 0x0210(s3)             # 00000210
    mtc1    t2, $f6                    # $f6 = 0.00
    mtc1    t3, $f18                   # $f18 = 0.00
    lwc1    $f4, 0x0024(v0)            # 00000024
    cvt.s.w $f8, $f6
    lwc1    $f16, 0x0028(v0)           # 00000028
    sll     t6, s1,  1
    addu    t7, s6, t6
    lh      t8, 0x0000(t7)             # 00000000
    cvt.s.w $f6, $f18
    addiu   a0, s4, 0x1C24             # a0 = 00001C24
    or      a1, s4, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    add.s   $f10, $f4, $f8
    add.s   $f4, $f16, $f6
    mfc1    a3, $f10
    swc1    $f4, 0x0010($sp)
    lh      t4, 0x0006(s0)             # 00000006
    lwc1    $f8, 0x002C(v0)            # 0000002C
    mtc1    t4, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    add.s   $f16, $f8, $f18
    swc1    $f16, 0x0014($sp)
    lh      t5, 0x00B4(v0)             # 000000B4
    sw      t5, 0x0018($sp)
    lh      t0, 0x00B6(v0)             # 000000B6
    addu    t1, t8, t0
    sw      t1, 0x001C($sp)
    lh      t9, 0x00B8(v0)             # 000000B8
    sw      v1, 0x0024($sp)
    jal     func_80025110              # ActorSpawn
    sw      t9, 0x0020($sp)
    sw      v0, 0x01F0(s2)             # 000001F0
lbl_808CF164:
    addiu   s1, s1, 0x0001             # s1 = 00000003
lbl_808CF168:
    bne     s1, s7, lbl_808CF094
    addiu   s0, s0, 0x0008             # s0 = 00000008
lbl_808CF170:
    lw      $ra, 0x004C($sp)
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    lw      s2, 0x0034($sp)
    lw      s3, 0x0038($sp)
    lw      s4, 0x003C($sp)
    lw      s5, 0x0040($sp)
    lw      s6, 0x0044($sp)
    lw      s7, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_808CF19C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800DCE80
    addiu   a1, $zero, 0x009E          # a1 = 0000009E
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808CF1BC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a0
    lbu     t6, 0x1DEA(t6)             # 00011DEA
    bne     t6, $zero, lbl_808CF1E8
    nop
    jal     func_800DCE80
    addiu   a1, $zero, 0x5046          # a1 = 00005046
    b       lbl_808CF1F4
    lw      $ra, 0x0014($sp)
lbl_808CF1E8:
    jal     func_800DCE80
    addiu   a1, $zero, 0x504E          # a1 = 0000504E
    lw      $ra, 0x0014($sp)
lbl_808CF1F4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808CF200:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800DCE80
    addiu   a1, $zero, 0x504E          # a1 = 0000504E
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808CF220:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800DCE80
    addiu   a1, $zero, 0x10BA          # a1 = 000010BA
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808CF240:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a0
    lbu     t6, 0x1DEA(t6)             # 00011DEA
    bne     t6, $zero, lbl_808CF26C
    nop
    jal     func_800DCE80
    addiu   a1, $zero, 0x009D          # a1 = 0000009D
    b       lbl_808CF278
    lw      $ra, 0x0014($sp)
lbl_808CF26C:
    jal     func_800DCE80
    addiu   a1, $zero, 0x009C          # a1 = 0000009C
    lw      $ra, 0x0014($sp)
lbl_808CF278:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808CF284:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800DCE80
    addiu   a1, $zero, 0x7076          # a1 = 00007076
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808CF2A4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A2C(t6)            # 8011A5D4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t6, $zero, lbl_808CF2CC
    nop
    b       lbl_808CF2CC
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_808CF2CC:
    bne     v0, $at, lbl_808CF2E4
    nop
    jal     func_800DCE80
    addiu   a1, $zero, 0x403A          # a1 = 0000403A
    b       lbl_808CF2F0
    lw      $ra, 0x0014($sp)
lbl_808CF2E4:
    jal     func_800DCE80
    addiu   a1, $zero, 0x403B          # a1 = 0000403B
    lw      $ra, 0x0014($sp)
lbl_808CF2F0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808CF2FC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      $ra, 0x0014($sp)
    lw      t6, 0x0004(v1)             # 8011A5D4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t6, $zero, lbl_808CF328
    lui     t4, 0x8010                 # t4 = 80100000
    b       lbl_808CF328
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_808CF328:
    bne     v0, $at, lbl_808CF394
    nop
    lhu     t7, 0x0ED8(v1)             # 8011B4A8
    lui     t0, 0x8010                 # t0 = 80100000
    lui     t2, 0x8010                 # t2 = 80100000
    andi    t8, t7, 0x0020             # t8 = 00000000
    beql    t8, $zero, lbl_808CF35C
    lw      t9, 0x00A0(v1)             # 8011A670
    jal     func_800DCE80
    addiu   a1, $zero, 0x3028          # a1 = 00003028
    b       lbl_808CF3C4
    lw      $ra, 0x0014($sp)
    lw      t9, 0x00A0(v1)             # 000000A0
lbl_808CF35C:
    lw      t0, -0x7378(t0)            # FFFF8C88
    lbu     t2, -0x733A(t2)            # FFFF8CC6
    and     t1, t9, t0
    srav    t3, t1, t2
    beq     t3, $zero, lbl_808CF384
    nop
    jal     func_800DCE80
    addiu   a1, $zero, 0x302D          # a1 = 0000302D
    b       lbl_808CF3C4
    lw      $ra, 0x0014($sp)
lbl_808CF384:
    jal     func_800DCE80
    addiu   a1, $zero, 0x300F          # a1 = 0000300F
    b       lbl_808CF3C4
    lw      $ra, 0x0014($sp)
lbl_808CF394:
    lw      t4, -0x740C(t4)            # FFFF8BF4
    lw      t5, 0x00A4(v1)             # 000000A4
    and     t6, t4, t5
    bne     t6, $zero, lbl_808CF3B8
    nop
    jal     func_800DCE80
    addiu   a1, $zero, 0x3057          # a1 = 00003057
    b       lbl_808CF3C4
    lw      $ra, 0x0014($sp)
lbl_808CF3B8:
    jal     func_800DCE80
    addiu   a1, $zero, 0x305B          # a1 = 0000305B
    lw      $ra, 0x0014($sp)
lbl_808CF3C4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808CF3D0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, -0x4B3A(v0)            # 8011B4C6
    andi    t6, v0, 0x0100             # t6 = 00000000
    beq     t6, $zero, lbl_808CF414
    andi    t7, v0, 0x0200             # t7 = 00000000
    beq     t7, $zero, lbl_808CF414
    andi    t8, v0, 0x0400             # t8 = 00000000
    beq     t8, $zero, lbl_808CF414
    andi    t9, v0, 0x0800             # t9 = 00000000
    beql    t9, $zero, lbl_808CF418
    lui     v0, 0x0001                 # v0 = 00010000
    jal     func_800DCE80
    addiu   a1, $zero, 0x70AE          # a1 = 000070AE
    b       lbl_808CF450
    lw      $ra, 0x0014($sp)
lbl_808CF414:
    lui     v0, 0x0001                 # v0 = 00010000
lbl_808CF418:
    addu    v0, v0, a0
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_808CF444
    nop
    bnel    v0, $at, lbl_808CF450
    lw      $ra, 0x0014($sp)
    jal     func_800DCE80
    addiu   a1, $zero, 0x70A4          # a1 = 000070A4
    b       lbl_808CF450
    lw      $ra, 0x0014($sp)
lbl_808CF444:
    jal     func_800DCE80
    addiu   a1, $zero, 0x70A3          # a1 = 000070A3
    lw      $ra, 0x0014($sp)
lbl_808CF450:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808CF45C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    mtc1    a2, $f12                   # $f12 = 0.00
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x0028($sp)
    trunc.w.s $f4, $f12
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
    swc1    $f12, 0x02C4(t6)           # 000002C4
    lw      t7, 0x002C($sp)
    mfc1    t2, $f4
    or      a2, $zero, $zero           # a2 = 00000000
    lh      t8, 0x07A0(t7)             # 000007A0
    or      a3, $zero, $zero           # a3 = 00000000
    sll     t9, t8,  2
    addu    t0, t7, t9
    lw      a0, 0x0790(t0)             # 00000790
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    jal     func_80049D58
    sw      t2, 0x0010($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808CF4C0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x0002(a2)             # 00000002
    addiu   $at, $zero, 0x0192         # $at = 00000192
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    beq     t6, $at, lbl_808CF524
    sw      t6, 0x001C($sp)
    lw      a0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lh      a1, 0x001E($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x0020($sp)
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at
    lw      a3, 0x0020($sp)
    lw      a2, 0x0028($sp)
    sb      v0, 0x01D9(a3)             # 000001D9
    lb      t8, 0x01D9(a3)             # 000001D9
    bgezl   t8, lbl_808CF52C
    lh      a1, 0x0004(a2)             # 00000004
    b       lbl_808CF574
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808CF524:
    sb      t9, 0x01D9(a3)             # 000001D9
    lh      a1, 0x0004(a2)             # 00000004
lbl_808CF52C:
    addiu   $at, $zero, 0x0192         # $at = 00000192
    lw      a0, 0x0024($sp)
    beq     a1, $at, lbl_808CF56C
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a0, $at
    jal     func_80081628              # ObjectIndex
    sw      a3, 0x0020($sp)
    lw      a3, 0x0020($sp)
    sb      v0, 0x01DA(a3)             # 000001DA
    lb      t0, 0x01DA(a3)             # 000001DA
    bgezl   t0, lbl_808CF574
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    b       lbl_808CF574
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808CF56C:
    sb      t1, 0x01DA(a3)             # 000001DA
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808CF574:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808CF584:
# Init Function
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    lh      v1, 0x001C(a3)             # 0000001C
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    bne     t0, v1, lbl_808CF5D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lw      t6, 0x0004(a0)             # 8011A5D4
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    addiu   t7, $zero, 0x0009          # t7 = 00000009
    beq     t6, $zero, lbl_808CF5C8
    nop
    b       lbl_808CF5C8
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_808CF5C8:
    beq     v0, $at, lbl_808CF5D8
    nop
    sh      t7, 0x001C(a3)             # 0000001C
    lh      v1, 0x001C(a3)             # 0000001C
lbl_808CF5D8:
    lui     a0, 0x8012                 # a0 = 80120000
    slti    $at, v1, 0x000B
    bne     $at, $zero, lbl_808CF600
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    bgezl   v1, lbl_808CF604
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    jal     func_80020EB4
    or      a0, a3, $zero              # a0 = 00000000
    b       lbl_808CF744
    lw      $ra, 0x0014($sp)
lbl_808CF600:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
lbl_808CF604:
    bnel    v1, $at, lbl_808CF630
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lhu     t8, 0x0F06(a0)             # 00000F06
    andi    t9, t8, 0x0040             # t9 = 00000000
    bnel    t9, $zero, lbl_808CF630
    addiu   $at, $zero, 0x0001         # $at = 00000001
    jal     func_80020EB4
    or      a0, a3, $zero              # a0 = 00000000
    b       lbl_808CF744
    lw      $ra, 0x0014($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_808CF630:
    bnel    v1, $at, lbl_808CF670
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      t1, 0x0004(a0)             # 00000004
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t1, $zero, lbl_808CF654
    nop
    b       lbl_808CF654
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_808CF654:
    bnel    v0, $at, lbl_808CF670
    addiu   $at, $zero, 0x0002         # $at = 00000002
    jal     func_80020EB4
    or      a0, a3, $zero              # a0 = 00000000
    b       lbl_808CF744
    lw      $ra, 0x0014($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_808CF670:
    bne     v1, $at, lbl_808CF698
    nop
    lhu     t2, 0x0ED8(a0)             # 00000ED8
    andi    t3, t2, 0x0020             # t3 = 00000000
    bne     t3, $zero, lbl_808CF698
    nop
    jal     func_80020EB4
    or      a0, a3, $zero              # a0 = 00000000
    b       lbl_808CF744
    lw      $ra, 0x0014($sp)
lbl_808CF698:
    multu   v1, t0
    lui     t5, %hi(var_808D45D4)      # t5 = 808D0000
    addiu   t5, t5, %lo(var_808D45D4)  # t5 = 808D45D4
    lw      a0, 0x002C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a0, $at
    mflo    t4
    addu    a2, t4, t5
    lh      a1, 0x0000(a2)             # 00000000
    sw      a3, 0x0028($sp)
    jal     func_80081628              # ObjectIndex
    sw      a2, 0x001C($sp)
    lw      a3, 0x0028($sp)
    lw      a2, 0x001C($sp)
    sb      v0, 0x01D8(a3)             # 000001D8
    lb      t6, 0x01D8(a3)             # 000001D8
    lw      a1, 0x002C($sp)
    or      a0, a3, $zero              # a0 = 00000000
    bgez    t6, lbl_808CF6FC
    nop
    jal     func_80020EB4
    or      a0, a3, $zero              # a0 = 00000000
    b       lbl_808CF744
    lw      $ra, 0x0014($sp)
lbl_808CF6FC:
    jal     func_808CF4C0
    sw      a3, 0x0028($sp)
    bne     v0, $zero, lbl_808CF71C
    lw      a3, 0x0028($sp)
    jal     func_80020EB4
    or      a0, a3, $zero              # a0 = 00000000
    b       lbl_808CF744
    lw      $ra, 0x0014($sp)
lbl_808CF71C:
    lui     a1, %hi(var_808D49F8)      # a1 = 808D0000
    addiu   a1, a1, %lo(var_808D49F8)  # a1 = 808D49F8
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80063F7C
    sw      a3, 0x0028($sp)
    lui     a1, %hi(func_808D2FF4)     # a1 = 808D0000
    lw      a0, 0x0028($sp)
    jal     func_808CED80
    addiu   a1, a1, %lo(func_808D2FF4) # a1 = 808D2FF4
    lw      $ra, 0x0014($sp)
lbl_808CF744:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808CF750:
# Destruct function
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_8008D6D0
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x0188             # a1 = 00000188
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808CF790:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0024($sp)
    addiu   a2, $sp, 0x001E            # a2 = FFFFFFFE
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFFC
    lbu     t7, 0x0242(t6)             # 00000242
    sll     t8, t7,  2
    addu    t9, t6, t8
    jal     func_80022B14
    lw      a1, 0x01F0(t9)             # 000001F0
    lh      t0, 0x001E($sp)
    lw      v0, 0x0024($sp)
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0220(v0)            # 00000220
    lh      t1, 0x001C($sp)
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0224(v0)           # 00000224
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_808CF7F4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lw      v1, 0x1C44(s0)             # 00001C44
    or      a0, s1, $zero              # a0 = 00000000
    sh      $zero, 0x04D2(t6)          # 801204D2
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80022930
    sw      v1, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    lw      v1, 0x0024($sp)
    addu    $at, $at, s0
    addiu   t7, $zero, 0x0036          # t7 = 00000036
    sb      t7, 0x03DC($at)            # 000103DC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sb      t8, 0x04BF($at)            # 000104BF
    lw      t9, 0x0670(v1)             # 00000670
    lui     $at, 0xDFFF                # $at = DFFF0000
    ori     $at, $at, 0xFFFF           # $at = DFFFFFFF
    and     t0, t9, $at
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_8009A1B0
    sw      t0, 0x0670(v1)             # 00000670
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0032          # a0 = 00000032
    sb      $zero, 0x0241(s1)          # 00000241
    sw      $zero, 0x0278(s1)          # 00000278
    sw      $zero, 0x02B0(s1)          # 000002B0
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808CF45C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_808D2E8C
    or      a0, s1, $zero              # a0 = 00000000
    sh      v0, 0x010E(s1)             # 0000010E
    sh      $zero, 0x01EC(s1)          # 000001EC
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_808CF8B8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lhu     t6, 0x000C(a2)             # 0000000C
    addiu   $at, $zero, 0x4000         # $at = 00004000
    or      a0, a3, $zero              # a0 = 00000000
    andi    t7, t6, 0x4000             # t7 = 00000000
    bne     t7, $at, lbl_808CF8F0
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_808CF7F4
    lw      a1, 0x0018($sp)
    b       lbl_808CF8F0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808CF8F0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808CF900:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lhu     t6, 0x000C(a2)             # 0000000C
    addiu   $at, $zero, 0x4000         # $at = 00004000
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t7, t6, 0x4000             # t7 = 00000000
    bne     t7, $at, lbl_808CF954
    nop
    lbu     t9, 0x0242(a3)             # 00000242
    lh      t8, 0x01EE(a3)             # 000001EE
    sll     t0, t9,  2
    addu    t1, a3, t0
    sh      t8, 0x01EC(a3)             # 000001EC
    lw      t2, 0x01F0(t1)             # 000001F0
    lw      a0, 0x001C($sp)
    jal     func_800DCE80
    lhu     a1, 0x010E(t2)             # 0000010E
    b       lbl_808CF954
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808CF954:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808CF964:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    sh      t6, 0x04D2(t7)             # 801204D2
    sh      $zero, 0x01E0(a3)          # 000001E0
    lh      t8, 0x01E0(a3)             # 000001E0
    sh      t8, 0x01DE(a3)             # 000001DE
    sw      a3, 0x001C($sp)
    jal     func_80071E6C
    lw      a0, 0x0018($sp)
    lw      a0, 0x001C($sp)
    lw      a1, 0x0018($sp)
    jal     func_808CF45C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lbu     t9, 0x0023($sp)
    lw      a3, 0x001C($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    bne     t9, $zero, lbl_808CF9D0
    lw      a0, 0x0018($sp)
    b       lbl_808CF9D8
    sh      t0, 0x01EC(a3)             # 000001EC
lbl_808CF9D0:
    jal     func_808CF9E8
    or      a1, a3, $zero              # a1 = 00000000
lbl_808CF9D8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808CF9E8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lh      t7, 0x001C(a3)             # 0000001C
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     t7, $at, lbl_808CFA6C
    sh      t6, 0x01EC(a3)             # 000001EC
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, -0x4B3A(v0)            # 8011B4C6
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x70A2          # a1 = 000070A2
    andi    t8, v0, 0x0100             # t8 = 00000000
    beq     t8, $zero, lbl_808CFA5C
    andi    t9, v0, 0x0200             # t9 = 00000000
    beq     t9, $zero, lbl_808CFA5C
    andi    t0, v0, 0x0400             # t0 = 00000000
    beq     t0, $zero, lbl_808CFA5C
    andi    t1, v0, 0x0800             # t1 = 00000000
    beq     t1, $zero, lbl_808CFA5C
    nop
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x70AD          # a1 = 000070AD
    jal     func_800DCE80
    sw      a3, 0x0024($sp)
    b       lbl_808CFA80
    lw      a3, 0x0024($sp)
lbl_808CFA5C:
    jal     func_800DCE80
    sw      a3, 0x0024($sp)
    b       lbl_808CFA80
    lw      a3, 0x0024($sp)
lbl_808CFA6C:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0083          # a1 = 00000083
    jal     func_800DCE80
    sw      a3, 0x0024($sp)
    lw      a3, 0x0024($sp)
lbl_808CFA80:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    jal     func_80071E6C
    sw      a3, 0x0024($sp)
    lw      a0, 0x0024($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    sw      v0, 0x02B0(a0)             # 000002B0
    jal     func_808CF45C
    sw      v0, 0x0278(a0)             # 00000278
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808CFAC0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sh      t6, 0x01EC(a2)             # 000001EC
    sw      a2, 0x001C($sp)
    lh      t7, 0x001C(a2)             # 0000001C
    lui     t9, %hi(var_808D4618)      # t9 = 808D0000
    lw      a0, 0x0018($sp)
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, %lo(var_808D4618)(t9)
    jalr    $ra, t9
    nop
    lw      a0, 0x0018($sp)
    jal     func_80071E6C
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    lw      a2, 0x001C($sp)
    sw      $zero, 0x0278(a2)          # 00000278
    sw      $zero, 0x02B0(a2)          # 000002B0
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_808CFB20:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_800646F0
    addiu   a0, $zero, 0x4809          # a0 = 00004809
    lw      v0, 0x001C($sp)
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    sb      $zero, 0x0241(v0)          # 00000241
    sh      t6, 0x01EC(v0)             # 000001EC
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_808CFB54:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x008A(a3)             # 0000008A
    lh      t7, 0x00B6(a3)             # 000000B6
    or      a0, a3, $zero              # a0 = 00000000
    subu    t8, t6, t7
    sh      t8, 0x01E0(a3)             # 000001E0
    sw      a3, 0x0018($sp)
    jal     func_80022930
    lw      a1, 0x001C($sp)
    lw      v1, 0x0020($sp)
    beq     v0, $zero, lbl_808CFBC8
    lw      a3, 0x0018($sp)
    lw      t9, 0x0670(v1)             # 00000670
    lui     $at, 0x2000                # $at = 20000000
    or      t0, t9, $at                # t0 = 20000000
    sw      t0, 0x0670(v1)             # 00000670
    sw      a3, 0x0018($sp)
    jal     func_8009A284
    lw      a0, 0x001C($sp)
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_808CF964
    or      a2, $zero, $zero           # a2 = 00000000
    b       lbl_808CFBF8
    lw      $ra, 0x0014($sp)
lbl_808CFBC8:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x0090(a3)            # 00000090
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x001C($sp)
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_808CFBF8
    lw      $ra, 0x0014($sp)
    jal     func_80022A68
    lui     a2, 0x42C8                 # a2 = 42C80000
    lw      $ra, 0x0014($sp)
lbl_808CFBF8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808CFC04:
    lw      a2, 0x0214(a1)             # 00000214
    lb      v0, 0x0028(a0)             # 00000028
    lb      v1, 0x0029(a0)             # 00000029
    sb      $zero, 0x021C(a1)          # 0000021C
    bne     a2, $zero, lbl_808CFC40
    sb      $zero, 0x021D(a1)          # 0000021D
    slti    $at, v0, 0x001F
    beq     $at, $zero, lbl_808CFC34
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    slti    $at, v0, 0xFFE2
    beql    $at, $zero, lbl_808CFCB0
    lw      v0, 0x0218(a1)             # 00000218
lbl_808CFC34:
    sw      v0, 0x0214(a1)             # 00000214
    b       lbl_808CFCAC
    sb      t7, 0x021C(a1)             # 0000021C
lbl_808CFC40:
    slti    $at, v0, 0x001F
    beq     $at, $zero, lbl_808CFC5C
    slti    $at, v0, 0xFFE2
    bne     $at, $zero, lbl_808CFC5C
    nop
    b       lbl_808CFCAC
    sw      $zero, 0x0214(a1)          # 00000214
lbl_808CFC5C:
    multu   a2, v0
    addu    t0, a2, v0
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    or      a2, t0, $zero              # a2 = 00000000
    slti    $at, t0, 0x07D1
    mflo    t8
    bgez    t8, lbl_808CFC88
    nop
    sw      v0, 0x0214(a1)             # 00000214
    b       lbl_808CFCAC
    sb      t9, 0x021C(a1)             # 0000021C
lbl_808CFC88:
    bne     $at, $zero, lbl_808CFC9C
    sw      t0, 0x0214(a1)             # 00000214
    addiu   t1, $zero, 0x07D0          # t1 = 000007D0
    b       lbl_808CFCAC
    sw      t1, 0x0214(a1)             # 00000214
lbl_808CFC9C:
    slti    $at, a2, 0xF830
    beq     $at, $zero, lbl_808CFCAC
    addiu   t2, $zero, 0xF830          # t2 = FFFFF830
    sw      t2, 0x0214(a1)             # 00000214
lbl_808CFCAC:
    lw      v0, 0x0218(a1)             # 00000218
lbl_808CFCB0:
    slti    $at, v1, 0x001F
    bne     v0, $zero, lbl_808CFCE0
    nop
    slti    $at, v1, 0x001F
    beq     $at, $zero, lbl_808CFCD4
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    slti    $at, v1, 0xFFE2
    beq     $at, $zero, lbl_808CFD48
    nop
lbl_808CFCD4:
    sw      v1, 0x0218(a1)             # 00000218
    jr      $ra
    sb      t3, 0x021D(a1)             # 0000021D
lbl_808CFCE0:
    beq     $at, $zero, lbl_808CFCF8
    slti    $at, v1, 0xFFE2
    bne     $at, $zero, lbl_808CFCF8
    nop
    jr      $ra
    sw      $zero, 0x0218(a1)          # 00000218
lbl_808CFCF8:
    multu   v0, v1
    addu    t6, v0, v1
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    or      v0, t6, $zero              # v0 = 00000000
    slti    $at, t6, 0x07D1
    mflo    t4
    bgez    t4, lbl_808CFD24
    nop
    sw      v1, 0x0218(a1)             # 00000218
    jr      $ra
    sb      t5, 0x021D(a1)             # 0000021D
lbl_808CFD24:
    bne     $at, $zero, lbl_808CFD38
    sw      t6, 0x0218(a1)             # 00000218
    addiu   t7, $zero, 0x07D0          # t7 = 000007D0
    jr      $ra
    sw      t7, 0x0218(a1)             # 00000218
lbl_808CFD38:
    slti    $at, v0, 0xF830
    beq     $at, $zero, lbl_808CFD48
    addiu   t8, $zero, 0xF830          # t8 = FFFFF830
    sw      t8, 0x0218(a1)             # 00000218
lbl_808CFD48:
    jr      $ra
    nop


func_808CFD50:
    sw      a1, 0x0004($sp)
    andi    a1, a1, 0x00FF             # a1 = 00000000
    lbu     t6, 0x0242(a0)             # 00000242
    addiu   a3, a1, 0x0004             # a3 = 00000004
    slt     $at, a1, a3
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_808CFE00
    andi    v1, a1, 0x00FF             # v1 = 00000000
    addiu   a2, a1, 0x0001             # a2 = 00000001
    andi    t8, a2, 0x00FF             # t8 = 00000001
    addiu   a3, a1, 0x0004             # a3 = 00000004
    slt     $at, t8, a3
    andi    v1, a2, 0x00FF             # v1 = 00000001
    beq     $at, $zero, lbl_808CFDBC
    or      v0, a1, $zero              # v0 = 00000000
    sll     t9, v1,  2
lbl_808CFD90:
    addu    t0, a0, t9
    lw      t1, 0x01F0(t0)             # 000001F0
    beql    t1, $zero, lbl_808CFDAC
    addiu   v1, v1, 0x0002             # v1 = 00000003
    jr      $ra
    or      v0, v1, $zero              # v0 = 00000003
lbl_808CFDA8:
    addiu   v1, v1, 0x0002             # v1 = 00000005
lbl_808CFDAC:
    andi    v1, v1, 0x00FF             # v1 = 00000005
    slt     $at, v1, a3
    bnel    $at, $zero, lbl_808CFD90
    sll     t9, v1,  2
lbl_808CFDBC:
    slt     $at, v0, a3
    beq     $at, $zero, lbl_808CFE7C
    andi    v1, a1, 0x00FF             # v1 = 00000000
    sll     t2, v1,  2
lbl_808CFDCC:
    addu    t3, a0, t2
    lw      t4, 0x01F0(t3)             # 000001F0
    beql    t4, $zero, lbl_808CFDE8
    addiu   v1, v1, 0x0002             # v1 = 00000002
    jr      $ra
    or      v0, v1, $zero              # v0 = 00000002
lbl_808CFDE4:
    addiu   v1, v1, 0x0002             # v1 = 00000004
lbl_808CFDE8:
    andi    v1, v1, 0x00FF             # v1 = 00000004
    slt     $at, v1, a3
    bnel    $at, $zero, lbl_808CFDCC
    sll     t2, v1,  2
    b       lbl_808CFE80
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_808CFE00:
    beq     $at, $zero, lbl_808CFE38
    or      v0, a1, $zero              # v0 = 00000000
    sll     t5, v1,  2
lbl_808CFE0C:
    addu    t6, a0, t5
    lw      t7, 0x01F0(t6)             # 000001F0
    beql    t7, $zero, lbl_808CFE28
    addiu   v1, v1, 0x0002             # v1 = 00000006
    jr      $ra
    or      v0, v1, $zero              # v0 = 00000006
lbl_808CFE24:
    addiu   v1, v1, 0x0002             # v1 = 00000008
lbl_808CFE28:
    andi    v1, v1, 0x00FF             # v1 = 00000008
    slt     $at, v1, a3
    bnel    $at, $zero, lbl_808CFE0C
    sll     t5, v1,  2
lbl_808CFE38:
    addiu   a2, v0, 0x0001             # a2 = 00000007
    andi    t8, a2, 0x00FF             # t8 = 00000007
    slt     $at, t8, a3
    beq     $at, $zero, lbl_808CFE7C
    andi    v1, a2, 0x00FF             # v1 = 00000007
    sll     t9, v1,  2
lbl_808CFE50:
    addu    t0, a0, t9
    lw      t1, 0x01F0(t0)             # 000001F0
    beql    t1, $zero, lbl_808CFE6C
    addiu   v1, v1, 0x0002             # v1 = 00000009
    jr      $ra
    or      v0, v1, $zero              # v0 = 00000009
lbl_808CFE68:
    addiu   v1, v1, 0x0002             # v1 = 0000000B
lbl_808CFE6C:
    andi    v1, v1, 0x00FF             # v1 = 0000000B
    slt     $at, v1, a3
    bnel    $at, $zero, lbl_808CFE50
    sll     t9, v1,  2
lbl_808CFE7C:
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_808CFE80:
    jr      $ra
    nop


func_808CFE88:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    andi    a2, a2, 0x00FF             # a2 = 00000000
    andi    a1, a1, 0x00FF             # a1 = 00000000
    addiu   a3, a2, 0x0004             # a3 = 00000004
    slt     $at, a1, a2
    andi    v0, a3, 0x00FF             # v0 = 00000004
    or      v1, a2, $zero              # v1 = 00000000
    bne     $at, $zero, lbl_808CFF08
    or      t0, a1, $zero              # t0 = 00000000
    andi    a2, a3, 0x00FF             # a2 = 00000004
    slt     $at, a1, a2
    beq     $at, $zero, lbl_808CFF08
    addiu   a1, t0, 0xFFFE             # a1 = FFFFFFFE
lbl_808CFEC0:
    andi    a1, a1, 0x00FF             # a1 = 000000FE
    slt     $at, a1, v1
    bne     $at, $zero, lbl_808CFEF4
    or      t0, a1, $zero              # t0 = 000000FE
    slt     $at, a1, a2
    beq     $at, $zero, lbl_808CFEF4
    sll     t6, a1,  2
    addu    t7, a0, t6
    lw      t8, 0x01F0(t7)             # 000001F0
    beql    t8, $zero, lbl_808CFEF8
    slt     $at, t0, v1
    jr      $ra
    or      v0, a1, $zero              # v0 = 000000FE
lbl_808CFEF4:
    slt     $at, t0, v1
lbl_808CFEF8:
    bne     $at, $zero, lbl_808CFF08
    slt     $at, t0, v0
    bnel    $at, $zero, lbl_808CFEC0
    addiu   a1, t0, 0xFFFE             # a1 = 000000FC
lbl_808CFF08:
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    jr      $ra
    nop


func_808CFF14:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    andi    a2, a2, 0x00FF             # a2 = 00000000
    andi    a1, a1, 0x00FF             # a1 = 00000000
    slt     $at, a1, a2
    or      v0, a1, $zero              # v0 = 00000000
    beq     $at, $zero, lbl_808CFF70
    or      v1, a2, $zero              # v1 = 00000000
    addiu   a1, v0, 0x0002             # a1 = 00000002
lbl_808CFF38:
    andi    a1, a1, 0x00FF             # a1 = 00000002
    slt     $at, a1, v1
    beq     $at, $zero, lbl_808CFF64
    or      v0, a1, $zero              # v0 = 00000002
    sll     t6, a1,  2
    addu    t7, a0, t6
    lw      t8, 0x01F0(t7)             # 000001F0
    beql    t8, $zero, lbl_808CFF68
    slt     $at, v0, v1
    jr      $ra
    or      v0, a1, $zero              # v0 = 00000002
lbl_808CFF64:
    slt     $at, v0, v1
lbl_808CFF68:
    bnel    $at, $zero, lbl_808CFF38
    addiu   a1, v0, 0x0002             # a1 = 00000004
lbl_808CFF70:
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    jr      $ra
    nop


func_808CFF7C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lbu     t6, 0x01DB(a2)             # 000001DB
    lui     v0, %hi(var_808D45AC)      # v0 = 808D0000
    lh      t8, 0x0034(v1)             # 8011A604
    sll     t7, t6,  1
    addu    v0, v0, t7
    lh      v0, %lo(var_808D45AC)(v0)
    addiu   a1, $zero, 0x70A8          # a1 = 000070A8
    slt     $at, t8, v0
    beq     $at, $zero, lbl_808CFFE0
    subu    a0, $zero, v0
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_800DCE80
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    sb      t9, 0x01DC(a2)             # 000001DC
    b       lbl_808D00A0
    sb      t0, 0x01DB(a2)             # 000001DB
lbl_808CFFE0:
    sll     a0, a0, 16
    sra     a0, a0, 16
    sw      a2, 0x0018($sp)
    jal     func_800721CC
    sw      a3, 0x001C($sp)
    lw      a2, 0x0018($sp)
    lw      a3, 0x001C($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    lbu     v0, 0x01DB(a2)             # 000001DB
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    bne     v0, $at, lbl_808D0040
    or      a0, a3, $zero              # a0 = 00000000
    lhu     t1, 0x0EE4(v1)             # 8011B4B4
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x70A9          # a1 = 000070A9
    ori     t2, t1, 0x8000             # t2 = 00008000
    sh      t2, 0x0EE4(v1)             # 8011B4B4
    jal     func_800DCE80
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    addiu   t3, $zero, 0x0006          # t3 = 00000006
    b       lbl_808D00A8
    sb      t3, 0x01DB(a2)             # 000001DB
lbl_808D0040:
    bne     v0, $zero, lbl_808D0058
    addiu   a1, $zero, 0x70A7          # a1 = 000070A7
    lhu     t4, 0x0EE4(v1)             # 00000EE4
    ori     t5, t4, 0x1000             # t5 = 00001000
    b       lbl_808D008C
    sh      t5, 0x0EE4(v1)             # 00000EE4
lbl_808D0058:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_808D0078
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lhu     t6, 0x0EE4(v1)             # 00000EE4
    ori     t7, t6, 0x4000             # t7 = 00004000
    b       lbl_808D008C
    sh      t7, 0x0EE4(v1)             # 00000EE4
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_808D0078:
    bne     v0, $at, lbl_808D008C
    nop
    lhu     t8, 0x0EE4(v1)             # 00000EE4
    ori     t9, t8, 0x2000             # t9 = 00002000
    sh      t9, 0x0EE4(v1)             # 00000EE4
lbl_808D008C:
    jal     func_800DCE80
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    addiu   t0, $zero, 0x0008          # t0 = 00000008
    sb      t0, 0x01DB(a2)             # 000001DB
lbl_808D00A0:
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sh      t1, 0x01EC(a2)             # 000001EC
lbl_808D00A8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808D00B8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a2, 0x0028($sp)
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    lw      a3, 0x0020($sp)
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    lh      t6, 0x001C(a3)             # 0000001C
    bne     t6, $at, lbl_808D0164
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_808D0164
    or      a0, a3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808CF8B8
    addiu   a2, s0, 0x0014             # a2 = 00000014
    bnel    v0, $zero, lbl_808D0250
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808D024C
    lw      a3, 0x0020($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s0
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808D0144
    nop
    beq     v0, $at, lbl_808D0154
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_808D0250
    lw      $ra, 0x001C($sp)
lbl_808D0144:
    jal     func_808CF9E8
    or      a1, a3, $zero              # a1 = 00000000
    b       lbl_808D0250
    lw      $ra, 0x001C($sp)
lbl_808D0154:
    jal     func_808CF7F4
    or      a1, a3, $zero              # a1 = 00000000
    b       lbl_808D0250
    lw      $ra, 0x001C($sp)
lbl_808D0164:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_808D0250
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_808D0250
    lw      $ra, 0x001C($sp)
    jal     func_800646F0
    addiu   a0, $zero, 0x4818          # a0 = 00004818
    lw      a3, 0x0020($sp)
    lbu     t7, 0x01DB(a3)             # 000001DB
    sltiu   $at, t7, 0x0007
    beq     $at, $zero, lbl_808D0228
    sll     t7, t7,  2
    lui     $at, %hi(var_808D4B90)     # $at = 808D0000
    addu    $at, $at, t7
    lw      t7, %lo(var_808D4B90)($at)
    jr      t7
    nop
var_808D01B0:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800DCE80
    addiu   a1, $zero, 0x70AA          # a1 = 000070AA
    lw      a3, 0x0020($sp)
    addiu   t8, $zero, 0x0019          # t8 = 00000019
    b       lbl_808D024C
    sh      t8, 0x01EC(a3)             # 000001EC
var_808D01CC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808CF7F4
    or      a1, a3, $zero              # a1 = 00000000
    b       lbl_808D0250
    lw      $ra, 0x001C($sp)
var_808D01E0:
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_808CFF7C
    or      a1, s0, $zero              # a1 = 00000000
    b       lbl_808D0250
    lw      $ra, 0x001C($sp)
var_808D01F4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x01D1          # t9 = 000001D1
    sh      t9, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    sb      t0, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x002E          # t1 = 0000002E
    b       lbl_808D024C
    sb      t1, 0x1E5E($at)            # 00011E5E
lbl_808D0228:
    or      a0, a3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808CF8B8
    addiu   a2, s0, 0x0014             # a2 = 00000014
    bne     v0, $zero, lbl_808D024C
    lw      a3, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808CF9E8
    or      a1, a3, $zero              # a1 = 00000000
lbl_808D024C:
    lw      $ra, 0x001C($sp)
lbl_808D0250:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808D0260:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a2
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, a2, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808D029C
    nop
    beq     v0, $at, lbl_808D02AC
    or      a0, a2, $zero              # a0 = 00000000
    b       lbl_808D02BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808D029C:
    jal     func_808CFAC0
    or      a1, a3, $zero              # a1 = 00000000
    b       lbl_808D02BC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808D02AC:
    jal     func_808CF7F4
    or      a1, a3, $zero              # a1 = 00000000
    b       lbl_808D02BC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808D02BC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808D02CC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0028($sp)
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_808D03D0
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808CF8B8
    addiu   a2, s1, 0x0014             # a2 = 00000014
    bnel    v0, $zero, lbl_808D03D4
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808D0340
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808D0260
    or      a1, s1, $zero              # a1 = 00000000
    beql    v0, $zero, lbl_808D0344
    lw      v0, 0x0214(s0)             # 00000214
    jal     func_800646F0
    addiu   a0, $zero, 0x4808          # a0 = 00004808
    b       lbl_808D03D4
    lw      $ra, 0x001C($sp)
lbl_808D0340:
    lw      v0, 0x0214(s0)             # 00000214
lbl_808D0344:
    or      a0, s0, $zero              # a0 = 00000000
    bgez    v0, lbl_808D0390
    nop
    jal     func_808CFD50
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     v0, $at, lbl_808D03D0
    andi    v1, v0, 0x00FF             # v1 = 00000000
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sb      v1, 0x0242(s0)             # 00000242
    sh      t6, 0x01EC(s0)             # 000001EC
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80071E6C
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    sw      $zero, 0x0278(s0)          # 00000278
    jal     func_800646F0
    addiu   a0, $zero, 0x4809          # a0 = 00004809
    b       lbl_808D03D4
    lw      $ra, 0x001C($sp)
lbl_808D0390:
    blez    v0, lbl_808D03D0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808CFD50
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     v0, $at, lbl_808D03D0
    andi    v1, v0, 0x00FF             # v1 = 00000000
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    sb      v1, 0x0242(s0)             # 00000242
    sh      t7, 0x01EC(s0)             # 000001EC
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80071E6C
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    sw      $zero, 0x02B0(s0)          # 000002B0
    jal     func_800646F0
    addiu   a0, $zero, 0x4809          # a0 = 00004809
lbl_808D03D0:
    lw      $ra, 0x001C($sp)
lbl_808D03D4:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_808D03E4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_808D042C
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_808D0428
    lw      a0, 0x001C($sp)
    jal     func_808CF9E8
    lw      a1, 0x0018($sp)
lbl_808D0428:
    lw      $ra, 0x0014($sp)
lbl_808D042C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808D0438:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0028($sp)
    addiu   a0, s0, 0x02C4             # a0 = 000002C4
    lui     a1, 0x41F0                 # a1 = 41F00000
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
    lui     $at, 0x41EC                # $at = 41EC0000
    mtc1    $at, $f4                   # $f4 = 29.50
    lwc1    $f0, 0x02C4(s0)            # 000002C4
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_808D049C
    mfc1    a2, $f0
    jal     func_808CF45C
    lui     a2, 0x41F0                 # a2 = 41F00000
    lwc1    $f0, 0x02C4(s0)            # 000002C4
    mfc1    a2, $f0
lbl_808D049C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808CF45C
    or      a1, s1, $zero              # a1 = 00000000
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    lwc1    $f6, 0x02C4(s0)            # 000002C4
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    c.le.s  $f8, $f6
    nop
    bc1fl   lbl_808D0510
    sw      $zero, 0x0214(s0)          # 00000214
    jal     func_808CF45C
    lui     a2, 0x41F0                 # a2 = 41F00000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_808CF790
    or      a1, s0, $zero              # a1 = 00000000
    lbu     t7, 0x0242(s0)             # 00000242
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    sh      t6, 0x01EC(s0)             # 000001EC
    sll     t8, t7,  2
    addu    t9, s0, t8
    lw      t0, 0x01F0(t9)             # 000001F0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800DCE80
    lhu     a1, 0x010E(t0)             # 0000010E
    b       lbl_808D0514
    lw      $ra, 0x001C($sp)
    sw      $zero, 0x0214(s0)          # 00000214
lbl_808D0510:
    lw      $ra, 0x001C($sp)
lbl_808D0514:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_808D0524:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0028($sp)
    addiu   a0, s0, 0x02C4             # a0 = 000002C4
    lui     a1, 0xC1F0                 # a1 = C1F00000
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
    lui     $at, 0xC1EC                # $at = C1EC0000
    mtc1    $at, $f4                   # $f4 = -29.50
    lwc1    $f0, 0x02C4(s0)            # 000002C4
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_808D0588
    mfc1    a2, $f0
    jal     func_808CF45C
    lui     a2, 0xC1F0                 # a2 = C1F00000
    lwc1    $f0, 0x02C4(s0)            # 000002C4
    mfc1    a2, $f0
lbl_808D0588:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808CF45C
    or      a1, s1, $zero              # a1 = 00000000
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f6                   # $f6 = -30.00
    lwc1    $f8, 0x02C4(s0)            # 000002C4
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    c.le.s  $f8, $f6
    nop
    bc1fl   lbl_808D05FC
    sw      $zero, 0x0214(s0)          # 00000214
    jal     func_808CF45C
    lui     a2, 0xC1F0                 # a2 = C1F00000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_808CF790
    or      a1, s0, $zero              # a1 = 00000000
    lbu     t7, 0x0242(s0)             # 00000242
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    sh      t6, 0x01EC(s0)             # 000001EC
    sll     t8, t7,  2
    addu    t9, s0, t8
    lw      t0, 0x01F0(t9)             # 000001F0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800DCE80
    lhu     a1, 0x010E(t0)             # 0000010E
    b       lbl_808D0600
    lw      $ra, 0x001C($sp)
    sw      $zero, 0x0214(s0)          # 00000214
lbl_808D05FC:
    lw      $ra, 0x001C($sp)
lbl_808D0600:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_808D0610:
    lw      v1, 0x0218(a0)             # 00000218
    lbu     v0, 0x0242(a0)             # 00000242
    bgez    v1, lbl_808D0720
    nop
    andi    v0, v0, 0x00FE             # v0 = 00000000
    andi    v0, v0, 0x00FF             # v0 = 00000000
    sll     t6, v0,  2
    addu    t7, a0, t6
    lw      t8, 0x01F0(t7)             # 000001F0
    slti    $at, v0, 0x0004
    beq     t8, $zero, lbl_808D0648
    nop
    jr      $ra
    sb      v0, 0x0242(a0)             # 00000242
lbl_808D0648:
    beq     $at, $zero, lbl_808D06B8
    or      v1, v0, $zero              # v1 = 00000000
    addiu   a1, v0, 0x0002             # a1 = 00000002
    andi    t9, a1, 0x00FF             # t9 = 00000002
    slti    $at, t9, 0x0004
    bne     $at, $zero, lbl_808D0668
    andi    v0, a1, 0x00FF             # v0 = 00000002
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808D0668:
    beq     v1, v0, lbl_808D081C
    or      a1, v0, $zero              # a1 = 00000000
    sll     t0, v0,  2
lbl_808D0674:
    addu    t1, a0, t0
    lw      t2, 0x01F0(t1)             # 000001F0
    beql    t2, $zero, lbl_808D0690
    addiu   v0, a1, 0x0002             # v0 = 00000002
    jr      $ra
    sb      v0, 0x0242(a0)             # 00000242
lbl_808D068C:
    addiu   v0, a1, 0x0002             # v0 = 00000002
lbl_808D0690:
    andi    v0, v0, 0x00FF             # v0 = 00000002
    slti    $at, v0, 0x0004
    bne     $at, $zero, lbl_808D06A8
    or      a1, v0, $zero              # a1 = 00000002
    or      v0, $zero, $zero           # v0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
lbl_808D06A8:
    bnel    v1, a1, lbl_808D0674
    sll     t0, v0,  2
    jr      $ra
    nop
lbl_808D06B8:
    addiu   a1, v1, 0x0002             # a1 = 00000002
    andi    t3, a1, 0x00FF             # t3 = 00000002
    slti    $at, t3, 0x0008
    bne     $at, $zero, lbl_808D06D0
    andi    v0, a1, 0x00FF             # v0 = 00000002
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_808D06D0:
    beq     v1, v0, lbl_808D081C
    or      a1, v0, $zero              # a1 = 00000004
    sll     t4, v0,  2
lbl_808D06DC:
    addu    t5, a0, t4
    lw      t6, 0x01F0(t5)             # 000001F0
    beql    t6, $zero, lbl_808D06F8
    addiu   v0, a1, 0x0002             # v0 = 00000006
    jr      $ra
    sb      v0, 0x0242(a0)             # 00000242
lbl_808D06F4:
    addiu   v0, a1, 0x0002             # v0 = 00000006
lbl_808D06F8:
    andi    v0, v0, 0x00FF             # v0 = 00000006
    slti    $at, v0, 0x0008
    bne     $at, $zero, lbl_808D0710
    or      a1, v0, $zero              # a1 = 00000006
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    addiu   a1, $zero, 0x0004          # a1 = 00000004
lbl_808D0710:
    bnel    v1, a1, lbl_808D06DC
    sll     t4, v0,  2
    jr      $ra
    nop
lbl_808D0720:
    blez    v1, lbl_808D081C
    ori     v0, v0, 0x0001             # v0 = 00000005
    andi    v0, v0, 0x00FF             # v0 = 00000005
    sll     t7, v0,  2
    addu    t8, a0, t7
    lw      t9, 0x01F0(t8)             # 000001F0
    slti    $at, v0, 0x0004
    beq     t9, $zero, lbl_808D074C
    nop
    jr      $ra
    sb      v0, 0x0242(a0)             # 00000242
lbl_808D074C:
    beq     $at, $zero, lbl_808D07BC
    or      v1, v0, $zero              # v1 = 00000005
    addiu   a1, v0, 0x0002             # a1 = 00000007
    andi    t0, a1, 0x00FF             # t0 = 00000007
    slti    $at, t0, 0x0004
    bne     $at, $zero, lbl_808D076C
    andi    v0, a1, 0x00FF             # v0 = 00000007
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808D076C:
    beq     v1, v0, lbl_808D081C
    or      a1, v0, $zero              # a1 = 00000001
    sll     t1, v0,  2
lbl_808D0778:
    addu    t2, a0, t1
    lw      t3, 0x01F0(t2)             # 000001F0
    beql    t3, $zero, lbl_808D0794
    addiu   v0, a1, 0x0002             # v0 = 00000003
    jr      $ra
    sb      v0, 0x0242(a0)             # 00000242
lbl_808D0790:
    addiu   v0, a1, 0x0002             # v0 = 00000003
lbl_808D0794:
    andi    v0, v0, 0x00FF             # v0 = 00000003
    slti    $at, v0, 0x0004
    bne     $at, $zero, lbl_808D07AC
    or      a1, v0, $zero              # a1 = 00000003
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   a1, $zero, 0x0001          # a1 = 00000001
lbl_808D07AC:
    bnel    v1, a1, lbl_808D0778
    sll     t1, v0,  2
    jr      $ra
    nop
lbl_808D07BC:
    addiu   a1, v1, 0x0002             # a1 = 00000007
    andi    t4, a1, 0x00FF             # t4 = 00000007
    slti    $at, t4, 0x0008
    bne     $at, $zero, lbl_808D07D4
    andi    v0, a1, 0x00FF             # v0 = 00000007
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_808D07D4:
    beq     v1, v0, lbl_808D081C
    or      a1, v0, $zero              # a1 = 00000005
    sll     t5, v0,  2
lbl_808D07E0:
    addu    t6, a0, t5
    lw      t7, 0x01F0(t6)             # 000001F0
    beql    t7, $zero, lbl_808D07FC
    addiu   v0, a1, 0x0002             # v0 = 00000007
    jr      $ra
    sb      v0, 0x0242(a0)             # 00000242
lbl_808D07F8:
    addiu   v0, a1, 0x0002             # v0 = 00000007
lbl_808D07FC:
    andi    v0, v0, 0x00FF             # v0 = 00000007
    slti    $at, v0, 0x0008
    bne     $at, $zero, lbl_808D0814
    or      a1, v0, $zero              # a1 = 00000007
    addiu   v0, $zero, 0x0005          # v0 = 00000005
    addiu   a1, $zero, 0x0005          # a1 = 00000005
lbl_808D0814:
    bnel    v1, a1, lbl_808D07E0
    sll     t5, v0,  2
lbl_808D081C:
    jr      $ra
    nop


func_808D0824:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    lbu     t6, 0x0242(s0)             # 00000242
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0028($sp)
    sll     t7, t6,  2
    addu    t8, s0, t7
    lw      t9, 0x01F0(t8)             # 000001F0
    jal     func_808CF8B8
    sw      t9, 0x0024($sp)
    beq     v0, $zero, lbl_808D0868
    nop
    b       lbl_808D09AC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808D0868:
    jal     func_800D6110
    lw      a0, 0x0028($sp)
    beql    v0, $zero, lbl_808D09AC
    or      v0, $zero, $zero           # v0 = 00000000
    lw      v0, 0x0024($sp)
    addiu   $at, $zero, 0x0026         # $at = 00000026
    lh      t0, 0x001C(v0)             # 0000001C
    beq     t0, $at, lbl_808D0998
    nop
    lh      t1, 0x0198(v0)             # 00000198
    bne     t1, $zero, lbl_808D0998
    nop
    lbu     t3, 0x0242(s0)             # 00000242
    lh      t2, 0x01EC(s0)             # 000001EC
    sll     t4, t3,  2
    addu    t5, s0, t4
    sh      t2, 0x01EE(s0)             # 000001EE
    lw      t6, 0x01F0(t5)             # 000001F0
    lw      a0, 0x0028($sp)
    jal     func_800DCE80
    lhu     a1, 0x0190(t6)             # 00000190
    sw      $zero, 0x0278(s0)          # 00000278
    sw      $zero, 0x02B0(s0)          # 000002B0
    lw      t7, 0x0024($sp)
    lh      t8, 0x001C(t7)             # 0000001C
    addiu   t9, t8, 0xFFFD             # t9 = FFFFFFFD
    sltiu   $at, t9, 0x002D
    beq     $at, $zero, lbl_808D097C
    sll     t9, t9,  2
    lui     $at, %hi(var_808D4BAC)     # $at = 808D0000
    addu    $at, $at, t9
    lw      t9, %lo(var_808D4BAC)($at)
    jr      t9
    nop
var_808D08F0:
    jal     func_800646F0
    addiu   a0, $zero, 0x4808          # a0 = 00004808
    addiu   t0, $zero, 0x0018          # t0 = 00000018
    sb      $zero, 0x0241(s0)          # 00000241
    sh      t0, 0x01EC(s0)             # 000001EC
    b       lbl_808D09AC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
var_808D090C:
    jal     func_800646F0
    addiu   a0, $zero, 0x4808          # a0 = 00004808
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    sb      $zero, 0x0241(s0)          # 00000241
    sh      t1, 0x01EC(s0)             # 000001EC
    b       lbl_808D09AC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
var_808D0928:
    jal     func_800646F0
    addiu   a0, $zero, 0x4808          # a0 = 00004808
    addiu   t2, $zero, 0x000B          # t2 = 0000000B
    sb      $zero, 0x0241(s0)          # 00000241
    sh      t2, 0x01EC(s0)             # 000001EC
    b       lbl_808D09AC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
var_808D0944:
    jal     func_800646F0
    addiu   a0, $zero, 0x4806          # a0 = 00004806
    addiu   t3, $zero, 0x000C          # t3 = 0000000C
    sb      $zero, 0x0241(s0)          # 00000241
    sh      t3, 0x01EC(s0)             # 000001EC
    b       lbl_808D09AC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
var_808D0960:
    jal     func_800646F0
    addiu   a0, $zero, 0x4808          # a0 = 00004808
    addiu   t4, $zero, 0x000D          # t4 = 0000000D
    sb      $zero, 0x0241(s0)          # 00000241
    sh      t4, 0x01EC(s0)             # 000001EC
    b       lbl_808D09AC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808D097C:
    jal     func_800646F0
    addiu   a0, $zero, 0x4808          # a0 = 00004808
    addiu   t5, $zero, 0x0009          # t5 = 00000009
    sb      $zero, 0x0241(s0)          # 00000241
    sh      t5, 0x01EC(s0)             # 000001EC
    b       lbl_808D09AC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808D0998:
    jal     func_800646F0
    addiu   a0, $zero, 0x4806          # a0 = 00004806
    b       lbl_808D09AC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808D09AC:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808D09C0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    lbu     t6, 0x0242(s0)             # 00000242
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808D2488
    sb      t6, 0x0027($sp)
    bne     v0, $zero, lbl_808D09F8
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    b       lbl_808D0B6C
    sh      t7, 0x01D6(s0)             # 000001D6
lbl_808D09F8:
    lh      v0, 0x01D6(s0)             # 000001D6
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    beq     v0, $zero, lbl_808D0A18
    or      a1, s0, $zero              # a1 = 00000000
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    b       lbl_808D0B6C
    sh      t8, 0x01D6(s0)             # 000001D6
lbl_808D0A18:
    sb      t9, 0x0241(s0)             # 00000241
    sw      t0, 0x02B0(s0)             # 000002B0
    jal     func_808CF790
    lw      a0, 0x0034($sp)
    lw      a0, 0x0034($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_808D0B6C
    lw      a0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808D0824
    addiu   a2, a0, 0x0014             # a2 = 00000014
    bnel    v0, $zero, lbl_808D0B70
    lw      $ra, 0x001C($sp)
    lbu     t1, 0x021C(s0)             # 0000021C
    beql    t1, $zero, lbl_808D0ACC
    lw      v0, 0x0214(s0)             # 00000214
    lw      v0, 0x0214(s0)             # 00000214
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    blez    v0, lbl_808D0AA0
    nop
    jal     func_808CFE88
    lbu     a1, 0x0242(s0)             # 00000242
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     v0, $at, lbl_808D0A90
    lw      a0, 0x0034($sp)
    b       lbl_808D0B38
    sb      v0, 0x0242(s0)             # 00000242
lbl_808D0A90:
    jal     func_808CFB20
    or      a1, s0, $zero              # a1 = 00000000
    b       lbl_808D0B70
    lw      $ra, 0x001C($sp)
lbl_808D0AA0:
    bgez    v0, lbl_808D0B38
    or      a0, s0, $zero              # a0 = 00000000
    lbu     a1, 0x0242(s0)             # 00000242
    jal     func_808CFF14
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     v0, $at, lbl_808D0B38
    nop
    b       lbl_808D0B38
    sb      v0, 0x0242(s0)             # 00000242
    lw      v0, 0x0214(s0)             # 00000214
lbl_808D0ACC:
    blez    v0, lbl_808D0B0C
    slti    $at, v0, 0x01F5
    bne     $at, $zero, lbl_808D0B0C
    or      a0, s0, $zero              # a0 = 00000000
    lbu     a1, 0x0242(s0)             # 00000242
    jal     func_808CFE88
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     v0, $at, lbl_808D0AFC
    lw      a0, 0x0034($sp)
    b       lbl_808D0B38
    sb      v0, 0x0242(s0)             # 00000242
lbl_808D0AFC:
    jal     func_808CFB20
    or      a1, s0, $zero              # a1 = 00000000
    b       lbl_808D0B70
    lw      $ra, 0x001C($sp)
lbl_808D0B0C:
    bgez    v0, lbl_808D0B38
    slti    $at, v0, 0xFE0C
    beq     $at, $zero, lbl_808D0B38
    or      a0, s0, $zero              # a0 = 00000000
    lbu     a1, 0x0242(s0)             # 00000242
    jal     func_808CFF14
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     v0, $at, lbl_808D0B38
    nop
    sb      v0, 0x0242(s0)             # 00000242
lbl_808D0B38:
    jal     func_808D0610
    or      a0, s0, $zero              # a0 = 00000000
    lbu     v0, 0x0242(s0)             # 00000242
    lbu     t2, 0x0027($sp)
    sll     t3, v0,  2
    beq     t2, v0, lbl_808D0B6C
    addu    t4, s0, t3
    lw      t5, 0x01F0(t4)             # 000001F0
    lw      a0, 0x0034($sp)
    jal     func_800DCE80
    lhu     a1, 0x010E(t5)             # 0000010E
    jal     func_800646F0
    addiu   a0, $zero, 0x4809          # a0 = 00004809
lbl_808D0B6C:
    lw      $ra, 0x001C($sp)
lbl_808D0B70:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808D0B80:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    lbu     t6, 0x0242(s0)             # 00000242
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808D2488
    sb      t6, 0x0027($sp)
    bne     v0, $zero, lbl_808D0BB8
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    b       lbl_808D0D2C
    sh      t7, 0x01D6(s0)             # 000001D6
lbl_808D0BB8:
    lh      v0, 0x01D6(s0)             # 000001D6
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    beq     v0, $zero, lbl_808D0BD8
    or      a1, s0, $zero              # a1 = 00000000
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    b       lbl_808D0D2C
    sh      t8, 0x01D6(s0)             # 000001D6
lbl_808D0BD8:
    sb      t9, 0x0241(s0)             # 00000241
    sw      t0, 0x0278(s0)             # 00000278
    jal     func_808CF790
    lw      a0, 0x0034($sp)
    lw      a0, 0x0034($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_808D0D2C
    lw      a0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808D0824
    addiu   a2, a0, 0x0014             # a2 = 00000014
    bnel    v0, $zero, lbl_808D0D30
    lw      $ra, 0x001C($sp)
    lbu     t1, 0x021C(s0)             # 0000021C
    beql    t1, $zero, lbl_808D0C8C
    lw      v0, 0x0214(s0)             # 00000214
    lw      v0, 0x0214(s0)             # 00000214
    or      a0, s0, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    bgez    v0, lbl_808D0C60
    nop
    jal     func_808CFE88
    lbu     a1, 0x0242(s0)             # 00000242
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     v0, $at, lbl_808D0C50
    lw      a0, 0x0034($sp)
    b       lbl_808D0CF8
    sb      v0, 0x0242(s0)             # 00000242
lbl_808D0C50:
    jal     func_808CFB20
    or      a1, s0, $zero              # a1 = 00000000
    b       lbl_808D0D30
    lw      $ra, 0x001C($sp)
lbl_808D0C60:
    blez    v0, lbl_808D0CF8
    or      a0, s0, $zero              # a0 = 00000000
    lbu     a1, 0x0242(s0)             # 00000242
    jal     func_808CFF14
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     v0, $at, lbl_808D0CF8
    nop
    b       lbl_808D0CF8
    sb      v0, 0x0242(s0)             # 00000242
    lw      v0, 0x0214(s0)             # 00000214
lbl_808D0C8C:
    bgez    v0, lbl_808D0CCC
    slti    $at, v0, 0xFE0C
    beq     $at, $zero, lbl_808D0CCC
    or      a0, s0, $zero              # a0 = 00000000
    lbu     a1, 0x0242(s0)             # 00000242
    jal     func_808CFE88
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     v0, $at, lbl_808D0CBC
    lw      a0, 0x0034($sp)
    b       lbl_808D0CF8
    sb      v0, 0x0242(s0)             # 00000242
lbl_808D0CBC:
    jal     func_808CFB20
    or      a1, s0, $zero              # a1 = 00000000
    b       lbl_808D0D30
    lw      $ra, 0x001C($sp)
lbl_808D0CCC:
    blez    v0, lbl_808D0CF8
    slti    $at, v0, 0x01F5
    bne     $at, $zero, lbl_808D0CF8
    or      a0, s0, $zero              # a0 = 00000000
    lbu     a1, 0x0242(s0)             # 00000242
    jal     func_808CFF14
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     v0, $at, lbl_808D0CF8
    nop
    sb      v0, 0x0242(s0)             # 00000242
lbl_808D0CF8:
    jal     func_808D0610
    or      a0, s0, $zero              # a0 = 00000000
    lbu     v0, 0x0242(s0)             # 00000242
    lbu     t2, 0x0027($sp)
    sll     t3, v0,  2
    beq     t2, v0, lbl_808D0D2C
    addu    t4, s0, t3
    lw      t5, 0x01F0(t4)             # 000001F0
    lw      a0, 0x0034($sp)
    jal     func_800DCE80
    lhu     a1, 0x010E(t5)             # 0000010E
    jal     func_800646F0
    addiu   a0, $zero, 0x4809          # a0 = 00004809
lbl_808D0D2C:
    lw      $ra, 0x001C($sp)
lbl_808D0D30:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808D0D40:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    addiu   a0, s0, 0x02C4             # a0 = 000002C4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lwc1    $f0, 0x02C4(s0)            # 000002C4
    lui     $at, 0xBF00                # $at = BF000000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_808D0DB8
    mfc1    a2, $f0
    mtc1    $at, $f6                   # $f6 = -0.50
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    c.lt.s  $f6, $f0
    nop
    bc1fl   lbl_808D0DB8
    mfc1    a2, $f0
    jal     func_808CF45C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lwc1    $f0, 0x02C4(s0)            # 000002C4
    mfc1    a2, $f0
lbl_808D0DB8:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808CF45C
    lw      a1, 0x0024($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f10, 0x02C4(s0)           # 000002C4
    lw      a0, 0x0024($sp)
    c.eq.s  $f8, $f10
    nop
    bc1fl   lbl_808D0DEC
    lw      $ra, 0x001C($sp)
    jal     func_808CF9E8
    or      a1, s0, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)
lbl_808D0DEC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808D0DFC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    jal     func_808D2488
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808D0EB8
    addiu   a0, s0, 0x02C4             # a0 = 000002C4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lwc1    $f0, 0x02C4(s0)            # 000002C4
    lui     $at, 0xBF00                # $at = BF000000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_808D0E80
    mfc1    a2, $f0
    mtc1    $at, $f6                   # $f6 = -0.50
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    c.lt.s  $f6, $f0
    nop
    bc1fl   lbl_808D0E80
    mfc1    a2, $f0
    jal     func_808CF45C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lwc1    $f0, 0x02C4(s0)            # 000002C4
    mfc1    a2, $f0
lbl_808D0E80:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808CF45C
    lw      a1, 0x0024($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f10, 0x02C4(s0)           # 000002C4
    lw      a0, 0x0024($sp)
    c.eq.s  $f8, $f10
    nop
    bc1fl   lbl_808D0EBC
    lw      $ra, 0x001C($sp)
    jal     func_800DCE80
    addiu   a1, $zero, 0x3010          # a1 = 00003010
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sh      t6, 0x01EC(s0)             # 000001EC
lbl_808D0EB8:
    lw      $ra, 0x001C($sp)
lbl_808D0EBC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808D0ECC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    lui     $at, 0x42F0                # $at = 42F00000
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    mtc1    $at, $f0                   # $f0 = 120.00
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lbu     t6, 0x0242(s1)             # 00000242
    lw      v0, 0x1C44(s0)             # 00001C44
    mfc1    a3, $f0
    sll     t7, t6,  2
    addu    t8, s1, t7
    lw      t9, 0x01F0(t8)             # 000001F0
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lw      a2, 0x0194(t9)             # 00000194
    swc1    $f0, 0x0010($sp)
    jal     func_80022BD4
    sw      v0, 0x002C($sp)
    lui     $at, 0x0001                # $at = 00010000
    lw      v0, 0x002C($sp)
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0036          # t0 = 00000036
    sb      t0, 0x03DC($at)            # 000103DC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    sb      t1, 0x04BF($at)            # 000104BF
    lw      t2, 0x0670(v0)             # 00000670
    lui     $at, 0xDFFF                # $at = DFFF0000
    ori     $at, $at, 0xFFFF           # $at = DFFFFFFF
    and     t3, t2, $at
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_8009A1B0
    sw      t3, 0x0670(v0)             # 00000670
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0032          # a0 = 00000032
    sb      $zero, 0x0241(s1)          # 00000241
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808CF45C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    addiu   t4, $zero, 0x000F          # t4 = 0000000F
    sh      t4, 0x01EC(s1)             # 000001EC
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_808D0F98:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a2, 0x0020($sp)
    andi    a2, a2, 0xFFFF             # a2 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_800DCE80
    andi    a1, a2, 0xFFFF             # a1 = 00000000
    lw      t7, 0x001C($sp)
    addiu   t6, $zero, 0x000E          # t6 = 0000000E
    sh      t6, 0x01EC(t7)             # 000001EC
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_808D0FCC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a2, 0x0020($sp)
    andi    a2, a2, 0xFFFF             # a2 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_800DCE80
    andi    a1, a2, 0xFFFF             # a1 = 00000000
    lw      t7, 0x001C($sp)
    addiu   t6, $zero, 0x0017          # t6 = 00000017
    sh      t6, 0x01EC(t7)             # 000001EC
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_808D1000:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     t6, 0x0242(s0)             # 00000242
    or      a0, s1, $zero              # a0 = 00000000
    sll     t7, t6,  2
    addu    t8, s0, t7
    lw      a1, 0x01F0(t8)             # 000001F0
    sw      a1, 0x0024($sp)
    lw      t9, 0x01AC(a1)             # 000001AC
    jalr    $ra, t9
    nop
    sltiu   $at, v0, 0x0006
    beq     $at, $zero, lbl_808D1194
    lw      a3, 0x0024($sp)
    sll     t0, v0,  2
    lui     $at, %hi(var_808D4C60)     # $at = 808D0000
    addu    $at, $at, t0
    lw      t0, %lo(var_808D4C60)($at)
    jr      t0
    nop
var_808D1060:
    lh      t1, 0x001C(a3)             # 0000001C
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    lui     t2, 0x8012                 # t2 = 80120000
    bne     t1, $at, lbl_808D1098
    or      a0, s1, $zero              # a0 = 00000000
    lhu     t2, -0x4B2A(t2)            # 8011B4D6
    or      a1, s0, $zero              # a1 = 00000000
    andi    t3, t2, 0x0040             # t3 = 00000000
    beql    t3, $zero, lbl_808D109C
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808D2220
    or      a0, s1, $zero              # a0 = 00000000
    b       lbl_808D1198
    lw      $ra, 0x001C($sp)
lbl_808D1098:
    or      a1, s0, $zero              # a1 = 00000000
lbl_808D109C:
    jal     func_808D0ECC
    sw      a3, 0x0024($sp)
    lw      a1, 0x0024($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    sb      $zero, 0x0241(s0)          # 00000241
    or      a0, s1, $zero              # a0 = 00000000
    swc1    $f4, 0x02C0(s0)            # 000002C0
    lw      t9, 0x019C(a1)             # 0000019C
    jalr    $ra, t9
    nop
    b       lbl_808D1198
    lw      $ra, 0x001C($sp)
var_808D10CC:
    sw      a3, 0x0024($sp)
    lw      t9, 0x01B0(a3)             # 000001B0
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, a3, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808D0FCC
    addiu   a2, $zero, 0x0084          # a2 = 00000084
    lw      a1, 0x0024($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    sb      $zero, 0x0241(s0)          # 00000241
    or      a0, s1, $zero              # a0 = 00000000
    swc1    $f6, 0x02C0(s0)            # 000002C0
    lw      t9, 0x019C(a1)             # 0000019C
    jalr    $ra, t9
    nop
    b       lbl_808D1198
    lw      $ra, 0x001C($sp)
var_808D111C:
    jal     func_800646F0
    addiu   a0, $zero, 0x4806          # a0 = 00004806
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808D0F98
    addiu   a2, $zero, 0x0086          # a2 = 00000086
    b       lbl_808D1198
    lw      $ra, 0x001C($sp)
var_808D113C:
    jal     func_800646F0
    addiu   a0, $zero, 0x4806          # a0 = 00004806
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808D0F98
    addiu   a2, $zero, 0x0096          # a2 = 00000096
    b       lbl_808D1198
    lw      $ra, 0x001C($sp)
var_808D115C:
    jal     func_800646F0
    addiu   a0, $zero, 0x4806          # a0 = 00004806
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808D0F98
    addiu   a2, $zero, 0x0085          # a2 = 00000085
    b       lbl_808D1198
    lw      $ra, 0x001C($sp)
var_808D117C:
    jal     func_800646F0
    addiu   a0, $zero, 0x4806          # a0 = 00004806
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808D0F98
    addiu   a2, $zero, 0x0086          # a2 = 00000086
lbl_808D1194:
    lw      $ra, 0x001C($sp)
lbl_808D1198:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_808D11A8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x0018($sp)
    lbu     t6, 0x0242(s1)             # 00000242
    or      a0, s2, $zero              # a0 = 00000000
    sll     t7, t6,  2
    addu    t8, s1, t7
    lw      s0, 0x01F0(t8)             # 000001F0
    lw      t9, 0x01AC(s0)             # 000001AC
    or      a1, s0, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    beq     v0, $zero, lbl_808D1218
    or      a0, s2, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_808D1230
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_808D127C
    or      a0, s2, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_808D1290
    or      a0, s2, $zero              # a0 = 00000000
    b       lbl_808D12A0
    lw      $ra, 0x0024($sp)
lbl_808D1218:
    jal     func_800DCE80
    addiu   a1, $zero, 0x009C          # a1 = 0000009C
    addiu   t0, $zero, 0x0012          # t0 = 00000012
    sh      t0, 0x01EC(s1)             # 000001EC
    b       lbl_808D129C
    sb      $zero, 0x0241(s1)          # 00000241
lbl_808D1230:
    lw      t9, 0x01B0(s0)             # 000001B0
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808D0FCC
    addiu   a2, $zero, 0x0098          # a2 = 00000098
    mtc1    $zero, $f4                 # $f4 = 0.00
    sb      $zero, 0x0241(s1)          # 00000241
    or      a0, s2, $zero              # a0 = 00000000
    swc1    $f4, 0x02C0(s1)            # 000002C0
    lw      t9, 0x019C(s0)             # 0000019C
    or      a1, s0, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    b       lbl_808D12A0
    lw      $ra, 0x0024($sp)
lbl_808D127C:
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808D0F98
    addiu   a2, $zero, 0x0096          # a2 = 00000096
    b       lbl_808D12A0
    lw      $ra, 0x0024($sp)
lbl_808D1290:
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808D0F98
    addiu   a2, $zero, 0x0085          # a2 = 00000085
lbl_808D129C:
    lw      $ra, 0x0024($sp)
lbl_808D12A0:
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_808D12B4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x0018($sp)
    lbu     t6, 0x0242(s1)             # 00000242
    or      a0, s2, $zero              # a0 = 00000000
    sll     t7, t6,  2
    addu    t8, s1, t7
    lw      s0, 0x01F0(t8)             # 000001F0
    lw      t9, 0x01AC(s0)             # 000001AC
    or      a1, s0, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    beq     v0, $zero, lbl_808D1320
    or      a0, s2, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_808D1350
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_808D139C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_808D13BC
    nop
    b       lbl_808D13D8
    lw      $ra, 0x0024($sp)
lbl_808D1320:
    jal     func_808D0ECC
    or      a1, s1, $zero              # a1 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    sb      $zero, 0x0241(s1)          # 00000241
    or      a0, s2, $zero              # a0 = 00000000
    swc1    $f4, 0x02C0(s1)            # 000002C0
    lw      t9, 0x019C(s0)             # 0000019C
    or      a1, s0, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    b       lbl_808D13D8
    lw      $ra, 0x0024($sp)
lbl_808D1350:
    lw      t9, 0x01B0(s0)             # 000001B0
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808D0FCC
    addiu   a2, $zero, 0x009A          # a2 = 0000009A
    mtc1    $zero, $f6                 # $f6 = 0.00
    sb      $zero, 0x0241(s1)          # 00000241
    or      a0, s2, $zero              # a0 = 00000000
    swc1    $f6, 0x02C0(s1)            # 000002C0
    lw      t9, 0x019C(s0)             # 0000019C
    or      a1, s0, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    b       lbl_808D13D8
    lw      $ra, 0x0024($sp)
lbl_808D139C:
    jal     func_800646F0
    addiu   a0, $zero, 0x4806          # a0 = 00004806
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808D0F98
    addiu   a2, $zero, 0x009D          # a2 = 0000009D
    b       lbl_808D13D8
    lw      $ra, 0x0024($sp)
lbl_808D13BC:
    jal     func_800646F0
    addiu   a0, $zero, 0x4806          # a0 = 00004806
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808D0F98
    addiu   a2, $zero, 0x0085          # a2 = 00000085
    lw      $ra, 0x0024($sp)
lbl_808D13D8:
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_808D13EC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x0018($sp)
    lbu     t6, 0x0242(s1)             # 00000242
    or      a0, s2, $zero              # a0 = 00000000
    sll     t7, t6,  2
    addu    t8, s1, t7
    lw      s0, 0x01F0(t8)             # 000001F0
    lw      t9, 0x01AC(s0)             # 000001AC
    or      a1, s0, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    beq     v0, $zero, lbl_808D1454
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_808D1454
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_808D14A0
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_808D14C0
    nop
    b       lbl_808D14DC
    lw      $ra, 0x0024($sp)
lbl_808D1454:
    lw      t9, 0x01B0(s0)             # 000001B0
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808D0FCC
    addiu   a2, $zero, 0x0084          # a2 = 00000084
    mtc1    $zero, $f4                 # $f4 = 0.00
    sb      $zero, 0x0241(s1)          # 00000241
    or      a0, s2, $zero              # a0 = 00000000
    swc1    $f4, 0x02C0(s1)            # 000002C0
    lw      t9, 0x019C(s0)             # 0000019C
    or      a1, s0, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    b       lbl_808D14DC
    lw      $ra, 0x0024($sp)
lbl_808D14A0:
    jal     func_800646F0
    addiu   a0, $zero, 0x4806          # a0 = 00004806
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808D0F98
    addiu   a2, $zero, 0x0086          # a2 = 00000086
    b       lbl_808D14DC
    lw      $ra, 0x0024($sp)
lbl_808D14C0:
    jal     func_800646F0
    addiu   a0, $zero, 0x4806          # a0 = 00004806
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808D0F98
    addiu   a2, $zero, 0x0085          # a2 = 00000085
    lw      $ra, 0x0024($sp)
lbl_808D14DC:
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_808D14F0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      $ra, 0x0014($sp)
    lw      t6, 0x0004(v1)             # 8011A5D4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t6, $zero, lbl_808D151C
    nop
    b       lbl_808D151C
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_808D151C:
    bne     v0, $at, lbl_808D157C
    nop
    lhu     t7, 0x0ED8(v1)             # 8011B4A8
    andi    t8, t7, 0x0020             # t8 = 00000000
    bne     t8, $zero, lbl_808D156C
    nop
    lhu     t9, 0x0F16(v1)             # 8011B4E6
    addiu   t1, $zero, 0x0013          # t1 = 00000013
    andi    t0, t9, 0x1000             # t0 = 00000000
    beql    t0, $zero, lbl_808D155C
    sw      $zero, 0x0278(a1)          # 00000278
    jal     func_808D0F98
    addiu   a2, $zero, 0x302E          # a2 = 0000302E
    b       lbl_808D1588
    lw      $ra, 0x0014($sp)
    sw      $zero, 0x0278(a1)          # 00000278
lbl_808D155C:
    sw      $zero, 0x02B0(a1)          # 000002B0
    sb      $zero, 0x0241(a1)          # 00000241
    b       lbl_808D1584
    sh      t1, 0x01EC(a1)             # 000001EC
lbl_808D156C:
    jal     func_808D13EC
    nop
    b       lbl_808D1588
    lw      $ra, 0x0014($sp)
lbl_808D157C:
    jal     func_808D13EC
    nop
lbl_808D1584:
    lw      $ra, 0x0014($sp)
lbl_808D1588:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808D1594:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0028($sp)
    jal     func_808D23EC
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_808D1658
    lw      $ra, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_808D1654
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808CF900
    addiu   a2, s0, 0x0014             # a2 = 00000014
    bnel    v0, $zero, lbl_808D1658
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808D1654
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s0
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808D1620
    nop
    beql    v0, $at, lbl_808D1634
    lbu     t7, 0x0242(s1)             # 00000242
    b       lbl_808D1658
    lw      $ra, 0x001C($sp)
lbl_808D1620:
    jal     func_808D1000
    or      a1, s1, $zero              # a1 = 00000000
    b       lbl_808D1658
    lw      $ra, 0x001C($sp)
    lbu     t7, 0x0242(s1)             # 00000242
lbl_808D1634:
    lh      t6, 0x01EE(s1)             # 000001EE
    or      a0, s0, $zero              # a0 = 00000000
    sll     t8, t7,  2
    addu    t9, s1, t8
    sh      t6, 0x01EC(s1)             # 000001EC
    lw      t0, 0x01F0(t9)             # 000001F0
    jal     func_800DCE80
    lhu     a1, 0x010E(t0)             # 0000010E
lbl_808D1654:
    lw      $ra, 0x001C($sp)
lbl_808D1658:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_808D1668:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0028($sp)
    jal     func_808D23EC
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_808D172C
    lw      $ra, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_808D1728
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808CF900
    addiu   a2, s0, 0x0014             # a2 = 00000014
    bnel    v0, $zero, lbl_808D172C
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808D1728
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s0
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808D16F4
    nop
    beql    v0, $at, lbl_808D1708
    lbu     t7, 0x0242(s1)             # 00000242
    b       lbl_808D172C
    lw      $ra, 0x001C($sp)
lbl_808D16F4:
    jal     func_808D11A8
    or      a1, s1, $zero              # a1 = 00000000
    b       lbl_808D172C
    lw      $ra, 0x001C($sp)
    lbu     t7, 0x0242(s1)             # 00000242
lbl_808D1708:
    lh      t6, 0x01EE(s1)             # 000001EE
    or      a0, s0, $zero              # a0 = 00000000
    sll     t8, t7,  2
    addu    t9, s1, t8
    sh      t6, 0x01EC(s1)             # 000001EC
    lw      t0, 0x01F0(t9)             # 000001F0
    jal     func_800DCE80
    lhu     a1, 0x010E(t0)             # 0000010E
lbl_808D1728:
    lw      $ra, 0x001C($sp)
lbl_808D172C:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_808D173C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0028($sp)
    jal     func_808D23EC
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_808D1800
    lw      $ra, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_808D17FC
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808CF900
    addiu   a2, s0, 0x0014             # a2 = 00000014
    bnel    v0, $zero, lbl_808D1800
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808D17FC
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s0
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808D17C8
    nop
    beql    v0, $at, lbl_808D17DC
    lbu     t7, 0x0242(s1)             # 00000242
    b       lbl_808D1800
    lw      $ra, 0x001C($sp)
lbl_808D17C8:
    jal     func_808D12B4
    or      a1, s1, $zero              # a1 = 00000000
    b       lbl_808D1800
    lw      $ra, 0x001C($sp)
    lbu     t7, 0x0242(s1)             # 00000242
lbl_808D17DC:
    lh      t6, 0x01EE(s1)             # 000001EE
    or      a0, s0, $zero              # a0 = 00000000
    sll     t8, t7,  2
    addu    t9, s1, t8
    sh      t6, 0x01EC(s1)             # 000001EC
    lw      t0, 0x01F0(t9)             # 000001F0
    jal     func_800DCE80
    lhu     a1, 0x010E(t0)             # 0000010E
lbl_808D17FC:
    lw      $ra, 0x001C($sp)
lbl_808D1800:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_808D1810:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a2, 0x0020($sp)
    or      a2, a0, $zero              # a2 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_808D23EC
    sw      a2, 0x0018($sp)
    beq     v0, $zero, lbl_808D1890
    lw      a2, 0x0018($sp)
    lw      a0, 0x001C($sp)
    sw      a2, 0x0018($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_808D1890
    lw      a2, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_800D6110
    sw      a2, 0x0018($sp)
    beq     v0, $zero, lbl_808D1890
    lw      a2, 0x0018($sp)
    lbu     t7, 0x0242(a2)             # 00000242
    lh      t6, 0x01EE(a2)             # 000001EE
    sll     t8, t7,  2
    addu    t9, a2, t8
    sh      t6, 0x01EC(a2)             # 000001EC
    lw      t0, 0x01F0(t9)             # 000001F0
    lw      a0, 0x001C($sp)
    jal     func_800DCE80
    lhu     a1, 0x010E(t0)             # 0000010E
lbl_808D1890:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808D18A0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0028($sp)
    jal     func_808D23EC
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_808D1988
    lw      $ra, 0x001C($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0008         # $at = 00000008
    or      a0, s0, $zero              # a0 = 00000000
    beq     t6, $at, lbl_808D18F0
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808D1594
    lw      a2, 0x0028($sp)
    b       lbl_808D1988
    lw      $ra, 0x001C($sp)
lbl_808D18F0:
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_808D1984
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808CF900
    addiu   a2, s1, 0x0014             # a2 = 00000014
    bnel    v0, $zero, lbl_808D1988
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808D1984
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s1
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808D1950
    nop
    beql    v0, $at, lbl_808D1964
    lbu     t8, 0x0242(s0)             # 00000242
    b       lbl_808D1988
    lw      $ra, 0x001C($sp)
lbl_808D1950:
    jal     func_808D14F0
    or      a1, s0, $zero              # a1 = 00000000
    b       lbl_808D1988
    lw      $ra, 0x001C($sp)
    lbu     t8, 0x0242(s0)             # 00000242
lbl_808D1964:
    lh      t7, 0x01EE(s0)             # 000001EE
    or      a0, s1, $zero              # a0 = 00000000
    sll     t9, t8,  2
    addu    t0, s0, t9
    sh      t7, 0x01EC(s0)             # 000001EC
    lw      t1, 0x01F0(t0)             # 000001F0
    jal     func_800DCE80
    lhu     a1, 0x010E(t1)             # 0000010E
lbl_808D1984:
    lw      $ra, 0x001C($sp)
lbl_808D1988:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_808D1998:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0030($sp)
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    sb      v0, 0x0027($sp)
    lbu     t6, 0x0242(s0)             # 00000242
    or      a0, s0, $zero              # a0 = 00000000
    sll     t7, t6,  2
    addu    t8, s0, t7
    lw      t9, 0x01F0(t8)             # 000001F0
    jal     func_808D23EC
    sw      t9, 0x0020($sp)
    beq     v0, $zero, lbl_808D1B60
    or      a0, s0, $zero              # a0 = 00000000
    lbu     v0, 0x0027($sp)
    addiu   $at, $zero, 0x0005         # $at = 00000005
    or      a1, s1, $zero              # a1 = 00000000
    bnel    v0, $at, lbl_808D1A38
    addiu   $at, $zero, 0x0004         # $at = 00000004
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_808D1B64
    lw      $ra, 0x001C($sp)
    lbu     t1, 0x0242(s0)             # 00000242
    lh      t0, 0x01EE(s0)             # 000001EE
    or      a0, s1, $zero              # a0 = 00000000
    sll     t2, t1,  2
    addu    t3, s0, t2
    sh      t0, 0x01EC(s0)             # 000001EC
    lw      t4, 0x01F0(t3)             # 000001F0
    jal     func_800DCE80
    lhu     a1, 0x010E(t4)             # 0000010E
    b       lbl_808D1B64
    lw      $ra, 0x001C($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_808D1A38:
    bnel    v0, $at, lbl_808D1B64
    lw      $ra, 0x001C($sp)
    jal     func_808CF900
    addiu   a2, s1, 0x0014             # a2 = 00000014
    bnel    v0, $zero, lbl_808D1B64
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808D1B60
    lw      t5, 0x0020($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s1
    lbu     v0, 0x04BD(v0)             # 000104BD
    beq     v0, $zero, lbl_808D1A84
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_808D1B40
    lbu     t8, 0x0242(s0)             # 00000242
    b       lbl_808D1B64
    lw      $ra, 0x001C($sp)
lbl_808D1A84:
    lh      t6, 0x001C(t5)             # 0000001C
    addiu   t7, t6, 0xFFE2             # t7 = FFFFFFE2
    sltiu   $at, t7, 0x0008
    beq     $at, $zero, lbl_808D1B08
    sll     t7, t7,  2
    lui     $at, %hi(var_808D4C78)     # $at = 808D0000
    addu    $at, $at, t7
    lw      t7, %lo(var_808D4C78)($at)
    jr      t7
    nop
var_808D1AAC:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0EF4(v0)             # 8011B4C4
    ori     t9, t8, 0x0008             # t9 = 00000008
    b       lbl_808D1B08
    sh      t9, 0x0EF4(v0)             # 8011B4C4
var_808D1AC4:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t0, 0x0EF4(v0)             # 8011B4C4
    ori     t1, t0, 0x0020             # t1 = 00000020
    b       lbl_808D1B08
    sh      t1, 0x0EF4(v0)             # 8011B4C4
var_808D1ADC:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t2, 0x0EF4(v0)             # 8011B4C4
    ori     t3, t2, 0x0010             # t3 = 00000010
    b       lbl_808D1B08
    sh      t3, 0x0EF4(v0)             # 8011B4C4
var_808D1AF4:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t4, 0x0EF4(v0)             # 8011B4C4
    ori     t5, t4, 0x0040             # t5 = 00000040
    sh      t5, 0x0EF4(v0)             # 8011B4C4
lbl_808D1B08:
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_808D0ECC
    or      a1, s0, $zero              # a1 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    sb      $zero, 0x0241(s0)          # 00000241
    or      a0, s1, $zero              # a0 = 00000000
    swc1    $f4, 0x02C0(s0)            # 000002C0
    lw      a1, 0x0020($sp)
    lw      t9, 0x019C(a1)             # 0000019C
    jalr    $ra, t9
    nop
    b       lbl_808D1B64
    lw      $ra, 0x001C($sp)
    lbu     t8, 0x0242(s0)             # 00000242
lbl_808D1B40:
    lh      t7, 0x01EE(s0)             # 000001EE
    or      a0, s1, $zero              # a0 = 00000000
    sll     t0, t8,  2
    addu    t1, s0, t0
    sh      t7, 0x01EC(s0)             # 000001EC
    lw      t2, 0x01F0(t1)             # 000001F0
    jal     func_800DCE80
    lhu     a1, 0x010E(t2)             # 0000010E
lbl_808D1B60:
    lw      $ra, 0x001C($sp)
lbl_808D1B64:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_808D1B74:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a2, 0x0020($sp)
    or      a2, a0, $zero              # a2 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    sw      a2, 0x0018($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_808D1BE0
    lw      a2, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_800D6110
    sw      a2, 0x0018($sp)
    beq     v0, $zero, lbl_808D1BE0
    lw      a2, 0x0018($sp)
    lbu     t7, 0x0242(a2)             # 00000242
    lh      t6, 0x01EE(a2)             # 000001EE
    sll     t8, t7,  2
    addu    t9, a2, t8
    sh      t6, 0x01EC(a2)             # 000001EC
    lw      t0, 0x01F0(t9)             # 000001F0
    lw      a0, 0x001C($sp)
    jal     func_800DCE80
    lhu     a1, 0x010E(t0)             # 0000010E
lbl_808D1BE0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808D1BF0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    lw      a0, 0x0024($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_808D1C88
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    lw      a0, 0x0024($sp)
    beql    v0, $zero, lbl_808D1C88
    lw      $ra, 0x001C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808D23C8
    swc1    $f4, 0x02C0(s0)            # 000002C0
    lbu     t6, 0x0242(s0)             # 00000242
    lw      a0, 0x0024($sp)
    sll     t7, t6,  2
    addu    t8, s0, t7
    lw      a1, 0x01F0(t8)             # 000001F0
    lw      t9, 0x01A0(a1)             # 000001A0
    jalr    $ra, t9
    nop
    lbu     t1, 0x0242(s0)             # 00000242
    lh      t0, 0x01EE(s0)             # 000001EE
    sll     t2, t1,  2
    addu    t3, s0, t2
    sh      t0, 0x01EC(s0)             # 000001EC
    lw      t4, 0x01F0(t3)             # 000001F0
    lw      a0, 0x0024($sp)
    jal     func_800DCE80
    lhu     a1, 0x010E(t4)             # 0000010E
    lw      $ra, 0x001C($sp)
lbl_808D1C88:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808D1C98:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    lw      a1, 0x0024($sp)
    jal     func_80022BB0
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_808D1CCC
    lw      a0, 0x0020($sp)
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    sw      $zero, 0x0118(a0)          # 00000118
    b       lbl_808D1CF8
    sh      t6, 0x01EC(a0)             # 000001EC
lbl_808D1CCC:
    lbu     t7, 0x0242(a0)             # 00000242
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f0                   # $f0 = 120.00
    sll     t8, t7,  2
    addu    t9, a0, t8
    lw      t0, 0x01F0(t9)             # 000001F0
    mfc1    a3, $f0
    lw      a1, 0x0024($sp)
    lw      a2, 0x0194(t0)             # 00000194
    jal     func_80022BD4
    swc1    $f0, 0x0010($sp)
lbl_808D1CF8:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808D1D08:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0030($sp)
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_808D1E3C
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_808D1E3C
    lw      $ra, 0x001C($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bnel    t6, $at, lbl_808D1E08
    lbu     t1, 0x0242(s0)             # 00000242
    lbu     t7, 0x0242(s0)             # 00000242
    or      a0, s0, $zero              # a0 = 00000000
    sll     t8, t7,  2
    addu    t9, s0, t8
    lw      t0, 0x01F0(t9)             # 000001F0
    jal     func_808D23C8
    sw      t0, 0x0020($sp)
    lbu     t1, 0x0242(s0)             # 00000242
    or      a0, s1, $zero              # a0 = 00000000
    sll     t2, t1,  2
    addu    t3, s0, t2
    lw      a1, 0x01F0(t3)             # 000001F0
    lw      t9, 0x01A0(a1)             # 000001A0
    jalr    $ra, t9
    nop
    lw      t4, 0x0020($sp)
    addiu   $at, $zero, 0x0022         # $at = 00000022
    lui     v1, 0x8012                 # v1 = 80120000
    lh      t5, 0x001C(t4)             # 0000001C
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    or      a0, s1, $zero              # a0 = 00000000
    bne     t5, $at, lbl_808D1DF4
    nop
    lhu     v0, 0x0EF6(v1)             # 8011B4C6
    addiu   a1, $zero, 0x70AB          # a1 = 000070AB
    andi    t6, v0, 0x8000             # t6 = 00000000
    bne     t6, $zero, lbl_808D1DF4
    ori     t7, v0, 0x8000             # t7 = 00008000
    sh      t7, 0x0EF6(v1)             # 8011B4C6
    jal     func_800DCE80
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sb      t8, 0x01DB(s0)             # 000001DB
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808CF030
    or      a1, s1, $zero              # a1 = 00000000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    b       lbl_808D1E38
    sh      t0, 0x01EC(s0)             # 000001EC
lbl_808D1DF4:
    jal     func_808CF7F4
    or      a1, s0, $zero              # a1 = 00000000
    b       lbl_808D1E3C
    lw      $ra, 0x001C($sp)
    lbu     t1, 0x0242(s0)             # 00000242
lbl_808D1E08:
    or      a0, s1, $zero              # a0 = 00000000
    sll     t2, t1,  2
    addu    t3, s0, t2
    lw      a1, 0x01F0(t3)             # 000001F0
    lw      t9, 0x01B4(a1)             # 000001B4
    jalr    $ra, t9
    nop
    addiu   t4, $zero, 0x0011          # t4 = 00000011
    sh      t4, 0x01EC(s0)             # 000001EC
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800DCE80
    addiu   a1, $zero, 0x006B          # a1 = 0000006B
lbl_808D1E38:
    lw      $ra, 0x001C($sp)
lbl_808D1E3C:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_808D1E4C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0028($sp)
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_808D1F70
    or      v1, v0, $zero              # v1 = 00000000
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_808D201C
    lw      $ra, 0x001C($sp)
    jal     func_808D23C8
    or      a0, s1, $zero              # a0 = 00000000
    lbu     t6, 0x0242(s1)             # 00000242
    or      a0, s0, $zero              # a0 = 00000000
    sll     t7, t6,  2
    addu    t8, s1, t7
    lw      a1, 0x01F0(t8)             # 000001F0
    lw      t9, 0x01A0(a1)             # 000001A0
    jalr    $ra, t9
    nop
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808CF8B8
    addiu   a2, s0, 0x0014             # a2 = 00000014
    bne     v0, $zero, lbl_808D2018
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s0
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_808D1EF8
    lw      v0, 0x0028($sp)
    beq     v0, $at, lbl_808D1F60
    nop
    b       lbl_808D1F60
    nop
    lw      v0, 0x0028($sp)
lbl_808D1EF8:
    ori     $at, $zero, 0x8000         # $at = 00008000
    or      a0, s0, $zero              # a0 = 00000000
    lh      t0, 0x00B6(v0)             # 000100B6
    lw      t2, 0x0670(v0)             # 00010670
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    addu    t1, t0, $at
    lui     $at, 0x2000                # $at = 20000000
    or      t3, t2, $at                # t3 = 20000000
    sh      t1, 0x00B6(v0)             # 000100B6
    jal     func_8009A1B0
    sw      t3, 0x0670(v0)             # 00010670
    or      a0, s0, $zero              # a0 = 00000000
    lhu     a1, 0x010E(s1)             # 0000010E
    jal     func_800DCE14
    or      a2, s1, $zero              # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808CF964
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x42C8                 # a2 = 42C80000
    jal     func_80022A34
    addiu   a3, $zero, 0xFFFF          # a3 = FFFFFFFF
    b       lbl_808D201C
    lw      $ra, 0x001C($sp)
lbl_808D1F60:
    jal     func_808CF7F4
    or      a1, s1, $zero              # a1 = 00000000
    b       lbl_808D201C
    lw      $ra, 0x001C($sp)
lbl_808D1F70:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v1, $at, lbl_808D201C
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_808D201C
    lw      $ra, 0x001C($sp)
    jal     func_808D23C8
    or      a0, s1, $zero              # a0 = 00000000
    lbu     t4, 0x0242(s1)             # 00000242
    or      a0, s0, $zero              # a0 = 00000000
    sll     t5, t4,  2
    addu    t6, s1, t5
    lw      a1, 0x01F0(t6)             # 000001F0
    lw      t9, 0x01A0(a1)             # 000001A0
    jalr    $ra, t9
    nop
    lw      v0, 0x0028($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    or      a0, s0, $zero              # a0 = 00000000
    lh      t7, 0x00B6(v0)             # 000000B6
    lw      t0, 0x0670(v0)             # 00000670
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    addu    t8, t7, $at
    lui     $at, 0x2000                # $at = 20000000
    or      t1, t0, $at                # t1 = 20000000
    sh      t8, 0x00B6(v0)             # 000000B6
    jal     func_8009A1B0
    sw      t1, 0x0670(v0)             # 00000670
    or      a0, s0, $zero              # a0 = 00000000
    lhu     a1, 0x010E(s1)             # 0000010E
    jal     func_800DCE14
    or      a2, s1, $zero              # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808CF964
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x42C8                 # a2 = 42C80000
    jal     func_80022A34
    addiu   a3, $zero, 0xFFFF          # a3 = FFFFFFFF
lbl_808D2018:
    lw      $ra, 0x001C($sp)
lbl_808D201C:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_808D202C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_808D2088
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_808D2084
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0F16(v0)             # 8011B4E6
    lw      a0, 0x001C($sp)
    lw      a1, 0x0018($sp)
    ori     t7, t6, 0x1000             # t7 = 00001000
    jal     func_808CF9E8
    sh      t7, 0x0F16(v0)             # 8011B4E6
lbl_808D2084:
    lw      $ra, 0x0014($sp)
lbl_808D2088:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808D2094:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_808D20FC
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_808D20F8
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x0016          # t6 = 00000016
    sh      t6, 0x01EC(t7)             # 000001EC
    lw      a0, 0x001C($sp)
    jal     func_800DCE80
    addiu   a1, $zero, 0x3012          # a1 = 00003012
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0F16(v0)             # 8011B4E6
    ori     t9, t8, 0x1000             # t9 = 00001000
    sh      t9, 0x0F16(v0)             # 8011B4E6
lbl_808D20F8:
    lw      $ra, 0x0014($sp)
lbl_808D20FC:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808D2108:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_808D2150
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_808D214C
    lw      a0, 0x001C($sp)
    jal     func_808CF9E8
    lw      a1, 0x0018($sp)
lbl_808D214C:
    lw      $ra, 0x0014($sp)
lbl_808D2150:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808D215C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_808D21A4
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_808D21A0
    lw      a0, 0x001C($sp)
    jal     func_808D0ECC
    lw      a1, 0x0018($sp)
lbl_808D21A0:
    lw      $ra, 0x0014($sp)
lbl_808D21A4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808D21B0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_808D2214
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_808D2210
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0EF4(v0)             # 8011B4C4
    lw      a1, 0x0018($sp)
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    ori     t7, t6, 0x0400             # t7 = 00000400
    sh      t7, 0x0EF4(v0)             # 8011B4C4
    sb      t8, 0x0242(a1)             # 00000242
    jal     func_808D0ECC
    lw      a0, 0x001C($sp)
lbl_808D2210:
    lw      $ra, 0x0014($sp)
lbl_808D2214:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808D2220:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_800DCE80
    addiu   a1, $zero, 0x71B2          # a1 = 000071B2
    lw      t7, 0x001C($sp)
    addiu   t6, $zero, 0x001A          # t6 = 0000001A
    sh      t6, 0x01EC(t7)             # 000001EC
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_808D224C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    lw      a0, 0x002C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_808D22D0
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    lw      a0, 0x002C($sp)
    beql    v0, $zero, lbl_808D22D0
    lw      $ra, 0x001C($sp)
    lbu     t6, 0x0242(s0)             # 00000242
    lw      a0, 0x002C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    sll     t7, t6,  2
    addu    t8, s0, t7
    lw      a2, 0x01F0(t8)             # 000001F0
    jal     func_808D0ECC
    sw      a2, 0x0024($sp)
    lw      a1, 0x0024($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    sb      $zero, 0x0241(s0)          # 00000241
    swc1    $f4, 0x02C0(s0)            # 000002C0
    lw      t9, 0x019C(a1)             # 0000019C
    lw      a0, 0x002C($sp)
    jalr    $ra, t9
    nop
    lw      $ra, 0x001C($sp)
lbl_808D22D0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808D22E0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    lbu     v0, 0x0242(a0)             # 00000242
    lh      t6, 0x001C(a0)             # 0000001C
    lui     t0, %hi(var_808D4670)      # t0 = 808D0000
    sll     t8, v0,  3
    sll     t7, t6,  6
    addu    t9, t7, t8
    addiu   t0, t0, %lo(var_808D4670)  # t0 = 808D4670
    addu    v1, t9, t0
    lh      t7, 0x0002(v1)             # 00000002
    sra     t3, v0,  2
    andi    t4, t3, 0x00FF             # t4 = 00000000
    mtc1    t7, $f4                    # $f4 = 0.00
    sll     t5, t4,  2
    subu    t5, t5, t4
    cvt.s.w $f2, $f4
    lui     t6, %hi(var_808D4A00)      # t6 = 808D0000
    addiu   t6, t6, %lo(var_808D4A00)  # t6 = 808D4A00
    sll     t5, t5,  2
    lh      t8, 0x0004(v1)             # 00000004
    addu    a2, t5, t6
    lwc1    $f6, 0x0000(a2)            # 00000000
    mtc1    t8, $f4                    # $f4 = 0.00
    lwc1    $f12, 0x02C0(a0)           # 000002C0
    sub.s   $f8, $f6, $f2
    lwc1    $f6, 0x0004(a2)            # 00000004
    lh      t9, 0x0006(v1)             # 00000006
    cvt.s.w $f16, $f4
    mul.s   $f10, $f8, $f12
    mtc1    t9, $f4                    # $f4 = 0.00
    sll     t1, v0,  2
    addu    t2, a0, t1
    lw      a1, 0x01F0(t2)             # 000001F0
    sub.s   $f8, $f6, $f16
    add.s   $f0, $f10, $f2
    mul.s   $f10, $f8, $f12
    lwc1    $f8, 0x0008(a2)            # 00000008
    cvt.s.w $f6, $f4
    add.s   $f14, $f10, $f16
    swc1    $f6, 0x0000($sp)
    lwc1    $f10, 0x0000($sp)
    lw      t0, 0x0210(a0)             # 00000210
    sub.s   $f4, $f8, $f10
    lwc1    $f8, 0x0024(t0)            # 808D4694
    mul.s   $f6, $f4, $f12
    add.s   $f4, $f8, $f0
    swc1    $f4, 0x0024(a1)            # 00000024
    lw      t1, 0x0210(a0)             # 00000210
    add.s   $f18, $f6, $f10
    lwc1    $f6, 0x0028(t1)            # 00000028
    add.s   $f10, $f6, $f14
    swc1    $f10, 0x0028(a1)           # 00000028
    lw      t2, 0x0210(a0)             # 00000210
    lwc1    $f8, 0x002C(t2)            # 0000002C
    add.s   $f4, $f8, $f18
    swc1    $f4, 0x002C(a1)            # 0000002C
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_808D23C8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    jal     func_808D22E0
    swc1    $f4, 0x02C0(a0)            # 000002C0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808D23EC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    lui     $at, 0x3F80                # $at = 3F800000
    sw      s0, 0x0018($sp)
    mtc1    $at, $f0                   # $f0 = 1.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    mfc1    a1, $f0
    mfc1    a2, $f0
    lui     a3, 0x3E19                 # a3 = 3E190000
    ori     a3, a3, 0x999A             # a3 = 3E19999A
    jal     func_80064280
    addiu   a0, s0, 0x02C0             # a0 = 000002C0
    lui     $at, %hi(var_808D4C98)     # $at = 808D0000
    lwc1    $f6, %lo(var_808D4C98)($at)
    lwc1    $f4, 0x02C0(s0)            # 000002C0
    lui     $at, 0x3F80                # $at = 3F800000
    c.le.s  $f6, $f4
    nop
    bc1f    lbl_808D2448
    nop
    mtc1    $at, $f8                   # $f8 = 1.00
    nop
    swc1    $f8, 0x02C0(s0)            # 000002C0
lbl_808D2448:
    jal     func_808D22E0
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    lwc1    $f16, 0x02C0(s0)           # 000002C0
    lw      $ra, 0x001C($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    c.eq.s  $f10, $f16
    nop
    bc1f    lbl_808D247C
    nop
    b       lbl_808D247C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808D247C:
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_808D2488:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     a3, 0x3E19                 # a3 = 3E190000
    ori     a3, a3, 0x999A             # a3 = 3E19999A
    addiu   a0, s0, 0x02C0             # a0 = 000002C0
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     $at, %hi(var_808D4C9C)     # $at = 808D0000
    lwc1    $f4, %lo(var_808D4C9C)($at)
    lwc1    $f6, 0x02C0(s0)            # 000002C0
    c.le.s  $f6, $f4
    nop
    bc1f    lbl_808D24D8
    nop
    mtc1    $zero, $f8                 # $f8 = 0.00
    nop
    swc1    $f8, 0x02C0(s0)            # 000002C0
lbl_808D24D8:
    jal     func_808D22E0
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f16, 0x02C0(s0)           # 000002C0
    lw      $ra, 0x001C($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    c.eq.s  $f10, $f16
    nop
    bc1f    lbl_808D2508
    nop
    b       lbl_808D2508
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808D2508:
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_808D2514:
    addiu   $sp, $sp, 0xFFF8           # $sp -= 0x8
    sw      s0, 0x0004($sp)
    addiu   v0, a0, 0x01F0             # v0 = 000001F0
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    addiu   t5, $zero, 0x000E          # t5 = 0000000E
    addiu   t4, $zero, 0x0018          # t4 = 00000018
    addiu   t3, $zero, 0x000D          # t3 = 0000000D
    addiu   t2, $zero, 0x000C          # t2 = 0000000C
    addiu   t1, $zero, 0x000B          # t1 = 0000000B
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    addiu   a3, $zero, 0x0009          # a3 = 00000009
lbl_808D2544:
    lw      a1, 0x0000(v0)             # 000001F0
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beql    a1, $zero, lbl_808D25C0
    lw      a1, 0x0004(v0)             # 000001F4
    lh      a2, 0x01EC(a0)             # 000001EC
    beql    a3, a2, lbl_808D25A8
    lbu     t7, 0x0242(a0)             # 00000242
    beql    t0, a2, lbl_808D25A8
    lbu     t7, 0x0242(a0)             # 00000242
    beql    t1, a2, lbl_808D25A8
    lbu     t7, 0x0242(a0)             # 00000242
    beql    t2, a2, lbl_808D25A8
    lbu     t7, 0x0242(a0)             # 00000242
    beql    t3, a2, lbl_808D25A8
    lbu     t7, 0x0242(a0)             # 00000242
    beql    t4, a2, lbl_808D25A8
    lbu     t7, 0x0242(a0)             # 00000242
    beql    t5, a2, lbl_808D25A8
    lbu     t7, 0x0242(a0)             # 00000242
    lbu     t6, 0x0241(a0)             # 00000241
    bnel    t6, $zero, lbl_808D25A8
    lbu     t7, 0x0242(a0)             # 00000242
    b       lbl_808D25BC
    sh      $zero, 0x01A4(a1)          # 000001A4
    lbu     t7, 0x0242(a0)             # 00000242
lbl_808D25A8:
    bnel    v1, t7, lbl_808D25BC
    sh      $zero, 0x01A4(a1)          # 000001A4
    b       lbl_808D25BC
    sh      s0, 0x01A4(a1)             # 000001A4
    sh      $zero, 0x01A4(a1)          # 000001A4
lbl_808D25BC:
    lw      a1, 0x0004(v0)             # 000001F4
lbl_808D25C0:
    addiu   v0, v0, 0x0004             # v0 = 000001F4
    beql    a1, $zero, lbl_808D263C
    addiu   v1, v1, 0x0002             # v1 = 00000002
    lh      a2, 0x01EC(a0)             # 000001EC
    beql    a3, a2, lbl_808D2620
    lbu     t6, 0x0242(a0)             # 00000242
    beql    t0, a2, lbl_808D2620
    lbu     t6, 0x0242(a0)             # 00000242
    beql    t1, a2, lbl_808D2620
    lbu     t6, 0x0242(a0)             # 00000242
    beql    t2, a2, lbl_808D2620
    lbu     t6, 0x0242(a0)             # 00000242
    beql    t3, a2, lbl_808D2620
    lbu     t6, 0x0242(a0)             # 00000242
    beql    t4, a2, lbl_808D2620
    lbu     t6, 0x0242(a0)             # 00000242
    beql    t5, a2, lbl_808D2620
    lbu     t6, 0x0242(a0)             # 00000242
    lbu     t8, 0x0241(a0)             # 00000241
    bnel    t8, $zero, lbl_808D2620
    lbu     t6, 0x0242(a0)             # 00000242
    b       lbl_808D2638
    sh      $zero, 0x01A4(a1)          # 000001A4
    lbu     t6, 0x0242(a0)             # 00000242
lbl_808D2620:
    addiu   t9, v1, 0x0001             # t9 = 00000003
    bnel    t9, t6, lbl_808D2638
    sh      $zero, 0x01A4(a1)          # 000001A4
    b       lbl_808D2638
    sh      s0, 0x01A4(a1)             # 000001A4
    sh      $zero, 0x01A4(a1)          # 000001A4
lbl_808D2638:
    addiu   v1, v1, 0x0002             # v1 = 00000004
lbl_808D263C:
    bne     v1, $at, lbl_808D2544
    addiu   v0, v0, 0x0004             # v0 = 000001F8
    lw      s0, 0x0004($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0008           # $sp += 0x8


func_808D2650:
    lbu     t6, 0x0240(a0)             # 00000240
    lwc1    $f0, 0x023C(a0)            # 0000023C
    lui     $at, %hi(var_808D4CA4)     # $at = 808D0000
    bne     t6, $zero, lbl_808D26A0
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, %hi(var_808D4CA0)     # $at = 808D0000
    lwc1    $f4, %lo(var_808D4CA0)($at)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    add.s   $f0, $f0, $f4
    c.le.s  $f2, $f0
    nop
    bc1fl   lbl_808D2698
    mtc1    $zero, $f2                 # $f2 = 0.00
    mov.s   $f0, $f2
    sb      t7, 0x0240(a0)             # 00000240
    mtc1    $zero, $f2                 # $f2 = 0.00
lbl_808D2698:
    b       lbl_808D26C8
    lui     $at, 0x42A0                # $at = 42A00000
lbl_808D26A0:
    lwc1    $f6, %lo(var_808D4CA4)($at)
    mtc1    $zero, $f2                 # $f2 = 0.00
    sub.s   $f0, $f0, $f6
    c.le.s  $f0, $f2
    nop
    bc1fl   lbl_808D26C8
    lui     $at, 0x42A0                # $at = 42A00000
    mov.s   $f0, $f2
    sb      $zero, 0x0240(a0)          # 00000240
    lui     $at, 0x42A0                # $at = 42A00000
lbl_808D26C8:
    mtc1    $at, $f10                  # $f10 = 80.00
    trunc.w.s $f8, $f2
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    mul.s   $f16, $f10, $f0
    addiu   t3, $zero, 0x0050          # t3 = 00000050
    mfc1    v0, $f8
    swc1    $f0, 0x023C(a0)            # 0000023C
    subu    v1, t6, v0
    andi    v1, v1, 0x00FF             # v1 = 00000000
    trunc.w.s $f18, $f16
    subu    t9, $zero, v0
    andi    t0, t9, 0x00FF             # t0 = 00000000
    sw      t0, 0x022C(a0)             # 0000022C
    mfc1    t2, $f18
    sw      v1, 0x0234(a0)             # 00000234
    sw      v1, 0x0238(a0)             # 00000238
    subu    t4, t3, t2
    andi    t5, t4, 0x00FF             # t5 = 00000000
    sw      t5, 0x0230(a0)             # 00000230
    jr      $ra
    nop


func_808D271C:
    lbu     t6, 0x02BC(a0)             # 000002BC
    lwc1    $f2, 0x02B4(a0)            # 000002B4
    lwc1    $f0, 0x02B8(a0)            # 000002B8
    bne     t6, $zero, lbl_808D276C
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    lui     $at, %hi(var_808D4CA8)     # $at = 808D0000
    lwc1    $f4, %lo(var_808D4CA8)($at)
    mtc1    $zero, $f14                # $f14 = 0.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    add.s   $f2, $f2, $f4
    c.lt.s  $f12, $f2
    nop
    bc1f    lbl_808D2764
    nop
    mov.s   $f2, $f12
    sb      t7, 0x02BC(a0)             # 000002BC
lbl_808D2764:
    b       lbl_808D2798
    lbu     t8, 0x02BD(a0)             # 000002BD
lbl_808D276C:
    lui     $at, %hi(var_808D4CAC)     # $at = 808D0000
    lwc1    $f6, %lo(var_808D4CAC)($at)
    mtc1    $zero, $f14                # $f14 = 0.00
    sub.s   $f2, $f2, $f6
    c.lt.s  $f2, $f14
    nop
    bc1fl   lbl_808D2798
    lbu     t8, 0x02BD(a0)             # 000002BD
    mov.s   $f2, $f14
    sb      $zero, 0x02BC(a0)          # 000002BC
    lbu     t8, 0x02BD(a0)             # 000002BD
lbl_808D2798:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    bne     t8, $zero, lbl_808D27D4
    swc1    $f2, 0x02B4(a0)            # 000002B4
    lui     $at, %hi(var_808D4CB0)     # $at = 808D0000
    lwc1    $f8, %lo(var_808D4CB0)($at)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    add.s   $f0, $f0, $f8
    c.lt.s  $f12, $f0
    nop
    bc1fl   lbl_808D27E0
    lui     $at, 0x431B                # $at = 431B0000
    mov.s   $f0, $f12
    b       lbl_808D27DC
    sb      t9, 0x02BD(a0)             # 000002BD
lbl_808D27D4:
    mov.s   $f0, $f14
    sb      $zero, 0x02BD(a0)          # 000002BD
lbl_808D27DC:
    lui     $at, 0x431B                # $at = 431B0000
lbl_808D27E0:
    mtc1    $at, $f10                  # $f10 = 155.00
    lui     $at, 0xC2C8                # $at = C2C80000
    mtc1    $at, $f4                   # $f4 = -100.00
    mul.s   $f16, $f10, $f2
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    mul.s   $f6, $f4, $f2
    lui     $at, 0x4391                # $at = 43910000
    mtc1    $at, $f4                   # $f4 = 290.00
    lui     $at, 0x42B6                # $at = 42B60000
    mtc1    $at, $f12                  # $f12 = 91.00
    lui     $at, 0x42BE                # $at = 42BE0000
    trunc.w.s $f18, $f16
    mul.s   $f16, $f10, $f2
    mtc1    $at, $f14                  # $f14 = 95.00
    lui     $at, 0x4204                # $at = 42040000
    mfc1    v0, $f18
    swc1    $f4, 0x02A4(a0)            # 000002A4
    addiu   t4, $zero, 0x00C8          # t4 = 000000C8
    trunc.w.s $f8, $f6
    mtc1    $at, $f6                   # $f6 = 33.00
    lui     $at, 0x4100                # $at = 41000000
    trunc.w.s $f18, $f16
    mfc1    a1, $f8
    mtc1    $at, $f8                   # $f8 = 8.00
    lui     $at, 0x4389                # $at = 43890000
    mtc1    $at, $f10                  # $f10 = 274.00
    mul.s   $f2, $f8, $f0
    mfc1    t3, $f18
    lui     $at, 0x4244                # $at = 42440000
    mtc1    $at, $f18                  # $f18 = 49.00
    subu    v1, a3, v0
    andi    v1, v1, 0x00FF             # v1 = 00000000
    sw      v1, 0x025C(a0)             # 0000025C
    add.s   $f16, $f10, $f2
    subu    v1, a3, v0
    andi    v1, v1, 0x00FF             # v1 = 00000000
    sub.s   $f4, $f18, $f2
    subu    a1, $zero, a1
    subu    a2, t4, t3
    andi    a1, a1, 0x00FF             # a1 = 00000000
    andi    a2, a2, 0x00FF             # a2 = 00000000
    swc1    $f0, 0x02B8(a0)            # 000002B8
    sw      v1, 0x0260(a0)             # 00000260
    sw      a1, 0x0264(a0)             # 00000264
    sw      a2, 0x0268(a0)             # 00000268
    sw      v1, 0x0294(a0)             # 00000294
    sw      v1, 0x0298(a0)             # 00000298
    sw      a1, 0x029C(a0)             # 0000029C
    sw      a2, 0x02A0(a0)             # 000002A0
    swc1    $f16, 0x028C(a0)           # 0000028C
    swc1    $f4, 0x0254(a0)            # 00000254
    swc1    $f12, 0x02A8(a0)           # 000002A8
    swc1    $f12, 0x0270(a0)           # 00000270
    swc1    $f14, 0x0290(a0)           # 00000290
    swc1    $f14, 0x0258(a0)           # 00000258
    swc1    $f6, 0x026C(a0)            # 0000026C
    jr      $ra
    nop


func_808D28CC:
    lh      v0, 0x01E4(a0)             # 000001E4
    lui     t6, %hi(func_808D2900)     # t6 = 808D0000
    addiu   t6, t6, %lo(func_808D2900) # t6 = 808D2900
    addiu   v0, v0, 0xFFFF             # v0 = FFFFFFFF
    sll     v0, v0, 16
    sra     v0, v0, 16
    beql    v0, $zero, lbl_808D28F8
    sw      t6, 0x01E8(a0)             # 000001E8
    jr      $ra
    sh      v0, 0x01E4(a0)             # 000001E4
lbl_808D28F4:
    sw      t6, 0x01E8(a0)             # 000001E8
lbl_808D28F8:
    jr      $ra
    nop


func_808D2900:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      v0, 0x01E4(a0)             # 000001E4
    addiu   v0, v0, 0xFFFF             # v0 = FFFFFFFF
    sll     v0, v0, 16
    sra     v0, v0, 16
    beql    v0, $zero, lbl_808D292C
    lh      v0, 0x01E2(a0)             # 000001E2
    b       lbl_808D2990
    sh      v0, 0x01E4(a0)             # 000001E4
    lh      v0, 0x01E2(a0)             # 000001E2
lbl_808D292C:
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   v0, v0, 0x0001             # v0 = 00000000
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0003
    bnel    $at, $zero, lbl_808D298C
    sh      v0, 0x01E2(a0)             # 000001E2
    sh      $zero, 0x01E2(a0)          # 000001E2
    jal     func_800CDCCC              # Rand.Next() float
    sw      a0, 0x0018($sp)
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    lw      a0, 0x0018($sp)
    lui     t9, %hi(func_808D28CC)     # t9 = 808D0000
    mul.s   $f6, $f0, $f4
    addiu   t9, t9, %lo(func_808D28CC) # t9 = 808D28CC
    sw      t9, 0x01E8(a0)             # 000001E8
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    nop
    addiu   t8, t7, 0x0014             # t8 = 00000014
    b       lbl_808D2990
    sh      t8, 0x01E4(a0)             # 000001E4
    sh      v0, 0x01E2(a0)             # 000001E2
lbl_808D298C:
    sh      t0, 0x01E4(a0)             # 000001E4
lbl_808D2990:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808D29A0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x0020($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a2, $at
    lb      a1, 0x01D8(t6)             # 000001D8
    jal     func_80081688
    sw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_808D2A28
    lw      t7, 0x0020($sp)
    lb      a1, 0x01D9(t7)             # 000001D9
    bltzl   a1, lbl_808D29FC
    lw      t8, 0x0020($sp)
    jal     func_80081688
    lw      a0, 0x001C($sp)
    bnel    v0, $zero, lbl_808D29FC
    lw      t8, 0x0020($sp)
    b       lbl_808D2A2C
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t8, 0x0020($sp)
lbl_808D29FC:
    lb      a1, 0x01DA(t8)             # 000001DA
    bltz    a1, lbl_808D2A20
    nop
    jal     func_80081688
    lw      a0, 0x001C($sp)
    bne     v0, $zero, lbl_808D2A20
    nop
    b       lbl_808D2A2C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808D2A20:
    b       lbl_808D2A2C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808D2A28:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808D2A2C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808D2A3C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      a1, 0x0028($sp)
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x0338             # a3 = 06000338
    addiu   a2, a2, 0x9B38             # a2 = 06009B38
    lw      a0, 0x002C($sp)
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0018($sp)
    jal     func_8008C788
    addiu   a1, a1, 0x013C             # a1 = 0000013C
    lw      v0, 0x0028($sp)
    lui     t6, %hi(func_808D3C14)     # t6 = 808D0000
    addiu   t6, t6, %lo(func_808D3C14) # t6 = 808D3C14
    sw      t6, 0x0134(v0)             # 00000134
    sw      $zero, 0x0184(v0)          # 00000184
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808D2A9C:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x004C($sp)
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x00F0             # a2 = 060000F0
    sw      a1, 0x0040($sp)
    lw      a0, 0x004C($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008C788
    sw      $zero, 0x0018($sp)
    lb      t7, 0x01DA(s0)             # 000001DA
    lw      t6, 0x004C($sp)
    lui     t0, 0x0001                 # t0 = 00010000
    sll     t8, t7,  4
    addu    t8, t8, t7
    sll     t8, t8,  2
    addu    t9, t6, t8
    addu    t0, t0, t9
    lw      t0, 0x17B4(t0)             # 000117B4
    lui     $at, 0x8000                # $at = 80000000
    lui     a0, 0x0600                 # a0 = 06000000
    addu    t1, t0, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t1, 0x0C50($at)            # 80120C50
    jal     func_8008A194
    addiu   a0, a0, 0x04A8             # a0 = 060004A8
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f6, $f4
    mfc1    a3, $f0
    addiu   a1, a1, 0x04A8             # a1 = 060004A8
    lw      a0, 0x0040($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)
    swc1    $f6, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lw      a2, 0x004C($sp)
    lwc1    $f8, 0x0024(s0)            # 00000024
    lui     t2, %hi(func_808D3E90)     # t2 = 808D0000
    lui     t3, %hi(func_808D32AC)     # t3 = 808D0000
    addiu   t2, t2, %lo(func_808D3E90) # t2 = 808D3E90
    addiu   t3, t3, %lo(func_808D32AC) # t3 = 808D32AC
    sw      t2, 0x0134(s0)             # 00000134
    sw      t3, 0x0184(s0)             # 00000184
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x0028(s0)           # 00000028
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f10, 0x0014($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    sw      t4, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    addiu   a3, $zero, 0x0018          # a3 = 00000018
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    jal     func_800253F0
    swc1    $f16, 0x0018($sp)
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_808D2BB4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      a1, 0x0030($sp)
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   a2, a2, 0xFEF0             # a2 = 0600FEF0
    addiu   a1, a1, 0x013C             # a1 = 0000013C
    sw      a1, 0x0028($sp)
    lw      a0, 0x0034($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008C788
    sw      $zero, 0x0018($sp)
    lw      t7, 0x0030($sp)
    lw      t6, 0x0034($sp)
    lui     t1, 0x0001                 # t1 = 00010000
    lb      t8, 0x01DA(t7)             # 000001DA
    lui     $at, 0x8000                # $at = 80000000
    lui     a0, 0x0600                 # a0 = 06000000
    sll     t9, t8,  4
    addu    t9, t9, t8
    sll     t9, t9,  2
    addu    t0, t6, t9
    addu    t1, t1, t0
    lw      t1, 0x17B4(t1)             # 000117B4
    addiu   a0, a0, 0x00FC             # a0 = 060000FC
    addu    t2, t1, $at
    lui     $at, 0x8012                # $at = 80120000
    jal     func_8008A194
    sw      t2, 0x0C50($at)            # 80120C50
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f6, $f4
    mfc1    a3, $f0
    addiu   a1, a1, 0x00FC             # a1 = 060000FC
    lw      a0, 0x0028($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)
    swc1    $f6, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lw      v0, 0x0030($sp)
    lui     t3, %hi(func_808D3FF0)     # t3 = 808D0000
    lui     t4, %hi(func_808D32AC)     # t4 = 808D0000
    addiu   t3, t3, %lo(func_808D3FF0) # t3 = 808D3FF0
    addiu   t4, t4, %lo(func_808D32AC) # t4 = 808D32AC
    sw      t3, 0x0134(v0)             # 00000134
    sw      t4, 0x0184(v0)             # 00000184
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808D2C90:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      a1, 0x0030($sp)
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   a2, a2, 0xBFA8             # a2 = 0600BFA8
    addiu   a1, a1, 0x013C             # a1 = 0000013C
    sw      a1, 0x0028($sp)
    lw      a0, 0x0034($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008C788
    sw      $zero, 0x0018($sp)
    lw      t7, 0x0030($sp)
    lw      t6, 0x0034($sp)
    lui     t1, 0x0001                 # t1 = 00010000
    lb      t8, 0x01DA(t7)             # 000001DA
    lui     $at, 0x8000                # $at = 80000000
    lui     a0, 0x0600                 # a0 = 06000000
    sll     t9, t8,  4
    addu    t9, t9, t8
    sll     t9, t9,  2
    addu    t0, t6, t9
    addu    t1, t1, t0
    lw      t1, 0x17B4(t1)             # 000117B4
    addiu   a0, a0, 0x078C             # a0 = 0600078C
    addu    t2, t1, $at
    lui     $at, 0x8012                # $at = 80120000
    jal     func_8008A194
    sw      t2, 0x0C50($at)            # 80120C50
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f6, $f4
    mfc1    a3, $f0
    addiu   a1, a1, 0x078C             # a1 = 0600078C
    lw      a0, 0x0028($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)
    swc1    $f6, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lw      v0, 0x0030($sp)
    lui     t3, %hi(func_808D415C)     # t3 = 808D0000
    lui     t4, %hi(func_808D32AC)     # t4 = 808D0000
    addiu   t3, t3, %lo(func_808D415C) # t3 = 808D415C
    addiu   t4, t4, %lo(func_808D32AC) # t4 = 808D32AC
    sw      t3, 0x0134(v0)             # 00000134
    sw      t4, 0x0184(v0)             # 00000184
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808D2D6C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      a1, 0x0028($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x02E4             # a3 = 060002E4
    addiu   a2, a2, 0x4258             # a2 = 06004258
    lw      a0, 0x002C($sp)
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0018($sp)
    jal     func_8008C788
    addiu   a1, a1, 0x013C             # a1 = 0000013C
    lw      v0, 0x0028($sp)
    lui     t6, %hi(func_808D429C)     # t6 = 808D0000
    addiu   t6, t6, %lo(func_808D429C) # t6 = 808D429C
    sw      t6, 0x0134(v0)             # 00000134
    sw      $zero, 0x0184(v0)          # 00000184
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808D2DCC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      a1, 0x0028($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x02E4             # a3 = 060002E4
    addiu   a2, a2, 0x4658             # a2 = 06004658
    lw      a0, 0x002C($sp)
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0018($sp)
    jal     func_8008C788
    addiu   a1, a1, 0x013C             # a1 = 0000013C
    lw      v0, 0x0028($sp)
    lui     t6, %hi(func_808D4388)     # t6 = 808D0000
    addiu   t6, t6, %lo(func_808D4388) # t6 = 808D4388
    sw      t6, 0x0134(v0)             # 00000134
    sw      $zero, 0x0184(v0)          # 00000184
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808D2E2C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      a1, 0x0028($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x065C             # a3 = 0600065C
    addiu   a2, a2, 0x4868             # a2 = 06004868
    lw      a0, 0x002C($sp)
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0018($sp)
    jal     func_8008C788
    addiu   a1, a1, 0x013C             # a1 = 0000013C
    lw      v0, 0x0028($sp)
    lui     t6, %hi(func_808D4474)     # t6 = 808D0000
    addiu   t6, t6, %lo(func_808D4474) # t6 = 808D4474
    sw      t6, 0x0134(v0)             # 00000134
    sw      $zero, 0x0184(v0)          # 00000184
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808D2E8C:
    lh      t7, 0x001C(a0)             # 0000001C
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     t7, $at, lbl_808D2FE8
    sb      t6, 0x01DB(a0)             # 000001DB
    lui     t8, 0x8010                 # t8 = 80100000
    lbu     t8, -0x70AB(t8)            # 800F8F55
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    addu    t9, a1, t8
    lbu     t0, 0x0074(t9)             # 00000074
    addiu   $at, $zero, 0x002C         # $at = 0000002C
    bnel    t0, $at, lbl_808D2F8C
    lhu     v0, 0x0EF6(a1)             # 8011B4C6
    lhu     v0, 0x0EF6(a1)             # 8011B4C6
    andi    t1, v0, 0x0800             # t1 = 00000000
    beq     t1, $zero, lbl_808D2EFC
    andi    t5, v0, 0x0400             # t5 = 00000000
    lhu     t2, 0x0EE4(a1)             # 8011B4B4
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    addiu   v0, $zero, 0x70C6          # v0 = 000070C6
    andi    t3, t2, 0x8000             # t3 = 00000000
    bne     t3, $zero, lbl_808D2EF4
    nop
    jr      $ra
    sb      t4, 0x01DB(a0)             # 000001DB
lbl_808D2EF4:
    jr      $ra
    addiu   v0, $zero, 0x70AC          # v0 = 000070AC
lbl_808D2EFC:
    beq     t5, $zero, lbl_808D2F2C
    andi    t9, v0, 0x0200             # t9 = 00000000
    lhu     t6, 0x0EE4(a1)             # 8011B4B4
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   v0, $zero, 0x70C5          # v0 = 000070C5
    andi    t7, t6, 0x4000             # t7 = 00000000
    bne     t7, $zero, lbl_808D2F24
    nop
    jr      $ra
    sb      t8, 0x01DB(a0)             # 000001DB
lbl_808D2F24:
    jr      $ra
    addiu   v0, $zero, 0x70AC          # v0 = 000070AC
lbl_808D2F2C:
    beq     t9, $zero, lbl_808D2F5C
    andi    t3, v0, 0x0100             # t3 = 00000000
    lhu     t0, 0x0EE4(a1)             # 8011B4B4
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    addiu   v0, $zero, 0x70C4          # v0 = 000070C4
    andi    t1, t0, 0x2000             # t1 = 00000000
    bne     t1, $zero, lbl_808D2F54
    nop
    jr      $ra
    sb      t2, 0x01DB(a0)             # 000001DB
lbl_808D2F54:
    jr      $ra
    addiu   v0, $zero, 0x70AC          # v0 = 000070AC
lbl_808D2F5C:
    beql    t3, $zero, lbl_808D2FEC
    addiu   v0, $zero, 0x009E          # v0 = 0000009E
    lhu     t4, 0x0EE4(a1)             # 8011B4B4
    addiu   v0, $zero, 0x70A5          # v0 = 000070A5
    andi    t5, t4, 0x1000             # t5 = 00000000
    bne     t5, $zero, lbl_808D2F80
    nop
    jr      $ra
    sb      $zero, 0x01DB(a0)          # 000001DB
lbl_808D2F80:
    jr      $ra
    addiu   v0, $zero, 0x70AC          # v0 = 000070AC
lbl_808D2F88:
    lhu     v0, 0x0EF6(a1)             # 8011B4C6
lbl_808D2F8C:
    andi    t6, v0, 0x0800             # t6 = 00000000
    beq     t6, $zero, lbl_808D2FA0
    andi    t7, v0, 0x0400             # t7 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x70AC          # v0 = 000070AC
lbl_808D2FA0:
    bne     t7, $zero, lbl_808D2FE0
    nop
    lhu     v1, 0x0EF4(a1)             # 8011B4C4
    andi    t9, v0, 0x0100             # t9 = 00000000
    andi    t8, v1, 0x0010             # t8 = 00000000
    bne     t8, $zero, lbl_808D2FE0
    nop
    bne     t9, $zero, lbl_808D2FE0
    andi    t0, v1, 0x0008             # t0 = 00000000
    bne     t0, $zero, lbl_808D2FD4
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    jr      $ra
    addiu   v0, $zero, 0x70A1          # v0 = 000070A1
lbl_808D2FD4:
    sb      t1, 0x01DB(a0)             # 000001DB
    jr      $ra
    addiu   v0, $zero, 0x70A6          # v0 = 000070A6
lbl_808D2FE0:
    jr      $ra
    addiu   v0, $zero, 0x70C7          # v0 = 000070C7
lbl_808D2FE8:
    addiu   v0, $zero, 0x009E          # v0 = 0000009E
lbl_808D2FEC:
    jr      $ra
    nop


func_808D2FF4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808D29A0
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_808D3298
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    lw      t6, 0x0004(s0)             # 00000004
    lb      t8, 0x01D8(s0)             # 000001D8
    or      a0, s1, $zero              # a0 = 00000000
    and     t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80020FA4
    sb      t8, 0x001E(s0)             # 0000001E
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    addiu   a1, $zero, 0x00C2          # a1 = 000000C2
    jal     func_80025B0C
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    beq     v0, $zero, lbl_808D3298
    sw      v0, 0x0210(s0)             # 00000210
    lh      v1, 0x001C(s0)             # 0000001C
    lui     t0, %hi(var_808D4A44)      # t0 = 808D0000
    addiu   t0, t0, %lo(var_808D4A44)  # t0 = 808D4A44
    sll     t9, v1,  2
    subu    t9, t9, v1
    sll     t9, t9,  2
    addu    v0, t9, t0
    lwc1    $f6, 0x0000(v0)            # 00000000
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x0028(s0)           # 00000028
    lui     t2, %hi(var_808D4670)      # t2 = 808D0000
    add.s   $f8, $f4, $f6
    lwc1    $f4, 0x002C(s0)            # 0000002C
    addiu   t2, t2, %lo(var_808D4670)  # t2 = 808D4670
    sll     t1, v1,  6
    swc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f16, 0x0004(v0)           # 00000004
    addu    t3, t1, t2
    lui     a2, 0x8002                 # a2 = 80020000
    add.s   $f18, $f10, $f16
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    swc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f6, 0x0008(v0)            # 00000008
    lui     a3, 0x41A0                 # a3 = 41A00000
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x002C(s0)            # 0000002C
    jal     func_8001EC20
    sw      t3, 0x0024($sp)
    lh      t4, 0x001C(s0)             # 0000001C
    lui     t9, %hi(var_808D4A18)      # t9 = 808D0000
    or      a0, s0, $zero              # a0 = 00000000
    sll     t5, t4,  2
    addu    t9, t9, t5
    lw      t9, %lo(var_808D4A18)(t9)
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    jal     func_808D2E8C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f2                   # $f2 = 100.00
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f10                  # $f10 = 1.50
    lui     $at, 0x42BE                # $at = 42BE0000
    swc1    $f2, 0x0220(s0)            # 00000220
    swc1    $f2, 0x0224(s0)            # 00000224
    mtc1    $at, $f2                   # $f2 = 95.00
    lui     $at, 0x42B6                # $at = 42B60000
    mtc1    $at, $f12                  # $f12 = 91.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    lui     $at, 0x4244                # $at = 42440000
    mtc1    $at, $f16                  # $f16 = 49.00
    sh      v0, 0x010E(s0)             # 0000010E
    addiu   v0, $zero, 0x00C8          # v0 = 000000C8
    lui     $at, 0x4204                # $at = 42040000
    mtc1    $at, $f18                  # $f18 = 33.00
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x4389                # $at = 43890000
    mtc1    $at, $f4                   # $f4 = 274.00
    lh      t8, 0x001C(s0)             # 0000001C
    lui     $at, 0x4391                # $at = 43910000
    mtc1    $at, $f6                   # $f6 = 290.00
    addiu   a0, $zero, 0x00B4          # a0 = 000000B4
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    lui     a1, %hi(var_808D4644)      # a1 = 808D0000
    sll     t0, t8,  2
    sb      v1, 0x00AE(s0)             # 000000AE
    sh      t6, 0x00A8(s0)             # 000000A8
    sh      $zero, 0x01EC(s0)          # 000001EC
    sw      $zero, 0x0218(s0)          # 00000218
    sw      $zero, 0x0214(s0)          # 00000214
    sb      $zero, 0x0242(s0)          # 00000242
    sw      $zero, 0x022C(s0)          # 0000022C
    sw      t7, 0x0230(s0)             # 00000230
    sw      v1, 0x0234(s0)             # 00000234
    sw      v1, 0x0238(s0)             # 00000238
    sb      $zero, 0x0240(s0)          # 00000240
    sb      $zero, 0x0241(s0)          # 00000241
    sb      $zero, 0x01DC(s0)          # 000001DC
    sw      v0, 0x0244(s0)             # 00000244
    sw      v0, 0x0248(s0)             # 00000248
    sw      v0, 0x024C(s0)             # 0000024C
    sw      a0, 0x0250(s0)             # 00000250
    sw      v1, 0x025C(s0)             # 0000025C
    sw      v1, 0x0260(s0)             # 00000260
    sw      $zero, 0x0264(s0)          # 00000264
    sw      v0, 0x0268(s0)             # 00000268
    sw      $zero, 0x0278(s0)          # 00000278
    sw      v0, 0x027C(s0)             # 0000027C
    sw      v0, 0x0280(s0)             # 00000280
    sw      v0, 0x0284(s0)             # 00000284
    sw      a0, 0x0288(s0)             # 00000288
    sw      v1, 0x0294(s0)             # 00000294
    sw      v1, 0x0298(s0)             # 00000298
    sw      $zero, 0x029C(s0)          # 0000029C
    sw      v0, 0x02A0(s0)             # 000002A0
    sw      $zero, 0x02B0(s0)          # 000002B0
    sb      $zero, 0x02BC(s0)          # 000002BC
    sb      $zero, 0x02BD(s0)          # 000002BD
    addu    a1, a1, t0
    swc1    $f10, 0x0228(s0)           # 00000228
    swc1    $f2, 0x0258(s0)            # 00000258
    swc1    $f2, 0x0290(s0)            # 00000290
    swc1    $f12, 0x0270(s0)           # 00000270
    swc1    $f12, 0x02A8(s0)           # 000002A8
    swc1    $f14, 0x0274(s0)           # 00000274
    swc1    $f14, 0x02AC(s0)           # 000002AC
    swc1    $f16, 0x0254(s0)           # 00000254
    swc1    $f18, 0x026C(s0)           # 0000026C
    swc1    $f0, 0x023C(s0)            # 0000023C
    swc1    $f0, 0x02B4(s0)            # 000002B4
    swc1    $f0, 0x02B8(s0)            # 000002B8
    swc1    $f0, 0x02C0(s0)            # 000002C0
    swc1    $f4, 0x028C(s0)            # 0000028C
    swc1    $f6, 0x02A4(s0)            # 000002A4
    lw      a1, %lo(var_808D4644)(a1)
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808CEEDC
    lw      a2, 0x0024($sp)
    lw      t4, 0x0004(s0)             # 00000004
    sh      $zero, 0x01E0(s0)          # 000001E0
    lh      t1, 0x01E0(s0)             # 000001E0
    lui     t3, %hi(func_808D28CC)     # t3 = 808D0000
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    addiu   t3, t3, %lo(func_808D28CC) # t3 = 808D28CC
    lui     a1, %hi(func_808D32E4)     # a1 = 808D0000
    and     t5, t4, $at
    sh      t2, 0x01E4(s0)             # 000001E4
    sh      $zero, 0x01E2(s0)          # 000001E2
    sw      t3, 0x01E8(s0)             # 000001E8
    sw      t5, 0x0004(s0)             # 00000004
    addiu   a1, a1, %lo(func_808D32E4) # a1 = 808D32E4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808CED80
    sh      t1, 0x01DE(s0)             # 000001DE
lbl_808D3298:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_808D32AC:
    lb      t6, 0x01DA(a0)             # 000001DA
    lui     t9, 0x0001                 # t9 = 00010000
    lui     $at, 0x8000                # $at = 80000000
    sll     t7, t6,  4
    addu    t7, t7, t6
    sll     t7, t7,  2
    addu    t8, a1, t7
    addu    t9, t9, t8
    lw      t9, 0x17B4(t9)             # 000117B4
    addu    t0, t9, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t0, 0x0C50($at)            # 80120C50
    jr      $ra
    nop


func_808D32E4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x002C($sp)
    lw      t9, 0x01E8(s0)             # 000001E8
    jalr    $ra, t9
    nop
    lw      a0, 0x0034($sp)
    jal     func_808CFC04
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808D2514
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808D271C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808D2650
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a0, s0, 0x01DE             # a0 = 000001DE
    lh      a1, 0x01E0(s0)             # 000001E0
    jal     func_800637D4
    addiu   a2, $zero, 0x0190          # a2 = 00000190
    lw      a2, 0x002C($sp)
    beq     a2, $zero, lbl_808D3378
    nop
    lh      t8, 0x01EC(s0)             # 000001EC
    lui     t9, %hi(var_808D4AC8)      # t9 = 808D0000
    or      a0, s0, $zero              # a0 = 00000000
    sll     t0, t8,  2
    addu    t9, t9, t0
    lw      t9, %lo(var_808D4AC8)(t9)
    lw      a1, 0x0034($sp)
    jalr    $ra, t9
    nop
lbl_808D3378:
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    sw      t1, 0x0014($sp)
    lw      a0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x41D0                 # a2 = 41D00000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80021E6C
    swc1    $f4, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lui     a1, 0x42B4                 # a1 = 42B40000
    lh      t2, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_808D4644)      # a1 = 808D0000
    or      a0, s0, $zero              # a0 = 00000000
    sll     t3, t2,  2
    addu    a1, a1, t3
    jal     func_80020F88
    lw      a1, %lo(var_808D4644)(a1)
    lw      v0, 0x0184(s0)             # 00000184
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808D33E4
    nop
    jalr    $ra, v0
    lw      a1, 0x0034($sp)
lbl_808D33E4:
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808D3400:
# Main Update Function
# Calls the current update routine function previously stored by 808CED80
# Also increments some counter in Actor + 0x01D4 by 1
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      t6, 0x01D4(a0)             # 000001D4
    lw      t9, 0x0180(a0)             # 00000180
    addiu   t7, t6, 0x0001             # t7 = 00000001
    jalr    $ra, t9
    sh      t7, 0x01D4(a0)             # 000001D4
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808D342C:
    sw      a0, 0x0000($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     a1, $at, lbl_808D3458
    lw      v0, 0x0010($sp)
    lw      t7, 0x0014($sp)
    lh      t6, 0x0000(v0)             # 00000000
    lh      t8, 0x01DE(t7)             # 000001DE
    addu    t9, t6, t8
    sh      t9, 0x0000(v0)             # 00000000
lbl_808D3458:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_808D3464:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    mtc1    a3, $f14                   # $f14 = 0.00
    mtc1    a2, $f12                   # $f12 = 0.00
    or      a3, a1, $zero              # a3 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a1, 0x003C($sp)
    lbu     t6, 0x004F($sp)
    lw      a2, 0x0000(a0)             # 00000000
    beq     t6, $zero, lbl_808D36C0
    or      a0, a2, $zero              # a0 = 00000000
    sw      a2, 0x001C($sp)
    sw      a3, 0x003C($sp)
    swc1    $f12, 0x0040($sp)
    jal     func_8007E610
    swc1    $f14, 0x0044($sp)
    lw      v1, 0x001C($sp)
    lw      a3, 0x003C($sp)
    lwc1    $f12, 0x0040($sp)
    lwc1    $f14, 0x0044($sp)
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t8, 0xFA00                 # t8 = FA000000
    lui     $at, 0x4080                # $at = 40800000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(v1)             # 000002B0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t3, 0x0230(a3)             # 00000230
    lw      t7, 0x0234(a3)             # 00000234
    lw      t1, 0x022C(a3)             # 0000022C
    andi    t4, t3, 0x00FF             # t4 = 00000000
    lw      t3, 0x0238(a3)             # 00000238
    sll     t5, t4, 16
    andi    t8, t7, 0x00FF             # t8 = 00000008
    sll     t2, t1, 24
    or      t6, t2, t5                 # t6 = 00000000
    sll     t9, t8,  8
    or      t1, t6, t9                 # t1 = 00000000
    andi    t4, t3, 0x00FF             # t4 = 00000000
    or      t2, t1, t4                 # t2 = 00000000
    sw      t2, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t8, 0x0401                 # t8 = 04010000
    addiu   t8, t8, 0xD260             # t8 = 0400D260
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(v1)             # 000002B0
    lui     t7, 0xFD70                 # t7 = FD700000
    sw      t7, 0x0000(v0)             # 00000000
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t3, 0x0705                 # t3 = 07050000
    ori     t3, t3, 0x0140             # t3 = 07050140
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(v1)             # 000002B0
    lui     t9, 0xF570                 # t9 = F5700000
    sw      t9, 0x0000(v0)             # 00000000
    sw      t3, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t4, 0xE600                 # t4 = E6000000
    lui     t5, 0xF300                 # t5 = F3000000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02B0(v1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t7, 0x0703                 # t7 = 07030000
    ori     t7, t7, 0xF800             # t7 = 0703F800
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02B0(v1)             # 000002B0
    sw      t7, 0x0004(v0)             # 00000004
    sw      t5, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t6, 0xE700                 # t6 = E7000000
    lui     t3, 0xF560                 # t3 = F5600000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(v1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t1, 0x0005                 # t1 = 00050000
    ori     t1, t1, 0x0140             # t1 = 00050140
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(v1)             # 000002B0
    ori     t3, t3, 0x0200             # t3 = F5600200
    sw      t3, 0x0000(v0)             # 00000000
    sw      t1, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(v1)             # 000002B0
    lwc1    $f16, 0x0048($sp)
    lui     t5, 0x0003                 # t5 = 00030000
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(v1)             # 000002B0
    ori     t5, t5, 0xC03C             # t5 = 0003C03C
    lui     t2, 0xF200                 # t2 = F2000000
    mtc1    $at, $f2                   # $f2 = 4.00
    sw      t2, 0x0000(v0)             # 00000000
    sw      t5, 0x0004(v0)             # 00000004
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f4                   # $f4 = 16.00
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     $at, 0xE400                # $at = E4000000
    mul.s   $f0, $f4, $f16
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(v1)             # 000002B0
    add.s   $f6, $f12, $f0
    add.s   $f18, $f14, $f0
    mul.s   $f8, $f6, $f2
    trunc.w.s $f10, $f8
    mul.s   $f4, $f18, $f2
    sub.s   $f8, $f12, $f0
    mfc1    t6, $f10
    mul.s   $f10, $f8, $f2
    trunc.w.s $f6, $f4
    andi    t9, t6, 0x0FFF             # t9 = 00000000
    sll     t3, t9, 12
    or      t1, t3, $at                # t1 = F5600200
    sub.s   $f4, $f14, $f0
    mfc1    t2, $f6
    lui     $at, 0x3F80                # $at = 3F800000
    trunc.w.s $f18, $f10
    mul.s   $f6, $f4, $f2
    andi    t5, t2, 0x0FFF             # t5 = 00000000
    mtc1    $at, $f10                  # $f10 = 1.00
    mfc1    t6, $f18
    or      t7, t1, t5                 # t7 = F5600200
    lui     $at, 0x4480                # $at = 44800000
    andi    t9, t6, 0x0FFF             # t9 = 00000000
    trunc.w.s $f8, $f6
    sll     t3, t9, 12
    mtc1    $at, $f4                   # $f4 = 1024.00
    sw      t7, 0x0000(v0)             # 00000000
    mfc1    t2, $f8
    div.s   $f18, $f10, $f16
    andi    t1, t2, 0x0FFF             # t1 = 00000000
    or      t5, t3, t1                 # t5 = F5600200
    sw      t5, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t8, 0xE100                 # t8 = E1000000
    mul.s   $f6, $f18, $f4
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(v1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    trunc.w.s $f8, $f6
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t9, 0xF100                 # t9 = F1000000
    mfc1    a1, $f8
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(v1)             # 000002B0
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    sll     t2, a1, 16
    or      t3, t2, a1                 # t3 = F2000000
    sw      t3, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
lbl_808D36C0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_808D36D0:
    lw      v0, 0x0000(a0)             # 00000000
    lw      t0, 0x02B0(v0)             # 000002B0
    lui     t7, 0xE700                 # t7 = E7000000
    lui     t9, 0xFA00                 # t9 = FA000000
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(v0)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t7, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(v0)             # 000002B0
    andi    t4, a2, 0x00FF             # t4 = 00000000
    sll     t5, t4, 16
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(v0)             # 000002B0
    sw      t9, 0x0000(t0)             # 00000000
    lw      t2, 0x0010($sp)
    sll     t3, a1, 24
    andi    t7, a3, 0x00FF             # t7 = 00000000
    sll     t8, t7,  8
    or      t6, t3, t5                 # t6 = 00000000
    or      t9, t6, t8                 # t9 = 00000008
    andi    t4, t2, 0x00FF             # t4 = 00000000
    or      t3, t9, t4                 # t3 = 00000008
    sw      t3, 0x0004(t0)             # 00000004
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f18                  # $f18 = 4.00
    lwc1    $f0, 0x001C($sp)
    lwc1    $f12, 0x0014($sp)
    lwc1    $f16, 0x0018($sp)
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f6                   # $f6 = 12.00
    mul.s   $f2, $f4, $f0
    lw      t0, 0x02B0(v0)             # 000002B0
    lui     $at, 0xE400                # $at = E4000000
    mul.s   $f14, $f6, $f0
    addiu   t5, t0, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(v0)             # 000002B0
    add.s   $f8, $f12, $f2
    add.s   $f6, $f16, $f14
    mul.s   $f10, $f8, $f18
    trunc.w.s $f4, $f10
    mul.s   $f8, $f6, $f18
    mfc1    t6, $f4
    sub.s   $f4, $f12, $f2
    andi    t8, t6, 0x0FFF             # t8 = 00000000
    sll     t2, t8, 12
    trunc.w.s $f10, $f8
    mul.s   $f6, $f4, $f18
    or      t9, t2, $at                # t9 = E4000000
    lui     $at, 0x3F80                # $at = 3F800000
    mfc1    t3, $f10
    sub.s   $f10, $f16, $f14
    andi    t5, t3, 0x0FFF             # t5 = 00000008
    or      t7, t9, t5                 # t7 = E4000008
    trunc.w.s $f8, $f6
    mul.s   $f4, $f10, $f18
    sw      t7, 0x0000(t0)             # 00000000
    mfc1    t8, $f8
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     $at, 0x4480                # $at = 44800000
    andi    t2, t8, 0x0FFF             # t2 = 00000000
    trunc.w.s $f6, $f4
    sll     t4, t2, 12
    mtc1    $at, $f4                   # $f4 = 1024.00
    div.s   $f10, $f8, $f0
    mfc1    t9, $f6
    nop
    andi    t5, t9, 0x0FFF             # t5 = 00000000
    or      t7, t4, t5                 # t7 = 00000000
    sw      t7, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(v0)             # 000002B0
    lui     t8, 0xE100                 # t8 = E1000000
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(v0)             # 000002B0
    sw      t8, 0x0000(t0)             # 00000000
    lw      t4, 0x0024($sp)
    lw      t3, 0x0020($sp)
    andi    t5, t4, 0xFFFF             # t5 = 00000000
    sll     t9, t3, 16
    or      t7, t9, t5                 # t7 = E4000000
    sw      t7, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(v0)             # 000002B0
    mul.s   $f2, $f10, $f4
    lui     t8, 0xF100                 # t8 = F1000000
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(v0)             # 000002B0
    sw      t8, 0x0000(t0)             # 00000000
    lwc1    $f6, 0x0028($sp)
    lwc1    $f4, 0x002C($sp)
    mul.s   $f8, $f2, $f6
    nop
    mul.s   $f6, $f4, $f2
    trunc.w.s $f10, $f8
    trunc.w.s $f8, $f6
    mfc1    t4, $f10
    mfc1    t7, $f8
    sll     t9, t4, 16
    andi    t6, t7, 0xFFFF             # t6 = 00000000
    or      t8, t9, t6                 # t8 = E4000000
    sw      t8, 0x0004(t0)             # 00000004
    jr      $ra
    nop


func_808D386C:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0038($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a0, 0x0050($sp)
    lw      t0, 0x0278(s0)             # 00000278
    lw      v0, 0x02B0(s0)             # 000002B0
    lw      t6, 0x0050($sp)
    lw      a2, 0x0000(t6)             # 00000000
    bne     t0, $zero, lbl_808D389C
    or      v1, a2, $zero              # v1 = 00000000
    beq     v0, $zero, lbl_808D3C00
lbl_808D389C:
    or      a0, a2, $zero              # a0 = 00000000
    sw      v0, 0x0048($sp)
    sw      v1, 0x0044($sp)
    jal     func_8007E610
    sw      t0, 0x004C($sp)
    lw      v1, 0x0044($sp)
    lw      t0, 0x004C($sp)
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t8, 0xFC11                 # t8 = FC110000
    lui     t9, 0xFF2F                 # t9 = FF2F0000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(v1)             # 000002B0
    ori     t9, t9, 0xFFFF             # t9 = FF2FFFFF
    ori     t8, t8, 0x9623             # t8 = FC119623
    sw      t8, 0x0000(v0)             # 00000000
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t3, 0x0401                 # t3 = 04010000
    addiu   t3, t3, 0xD3E0             # t3 = 0400D3E0
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02B0(v1)             # 000002B0
    lui     t2, 0xFD70                 # t2 = FD700000
    sw      t2, 0x0000(v0)             # 00000000
    sw      t3, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t6, 0x0700                 # t6 = 07000000
    ori     t6, t6, 0x0040             # t6 = 07000040
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(v1)             # 000002B0
    lui     t5, 0xF570                 # t5 = F5700000
    sw      t5, 0x0000(v0)             # 00000000
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t8, 0xE600                 # t8 = E6000000
    lui     t1, 0xF300                 # t1 = F3000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(v1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t2, 0x070B                 # t2 = 070B0000
    ori     t2, t2, 0xF400             # t2 = 070BF400
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(v1)             # 000002B0
    sw      t2, 0x0004(v0)             # 00000004
    sw      t1, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t4, 0xE700                 # t4 = E7000000
    lui     t6, 0xF568                 # t6 = F5680000
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02B0(v1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(v1)             # 000002B0
    ori     t6, t6, 0x0400             # t6 = F5680400
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(v1)             # 000002B0
    sw      t7, 0x0004(v0)             # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t1, 0x0003                 # t1 = 00030000
    ori     t1, t1, 0xC05C             # t1 = 0003C05C
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(v1)             # 000002B0
    lui     t9, 0xF200                 # t9 = F2000000
    sw      t9, 0x0000(v0)             # 00000000
    sw      t1, 0x0004(v0)             # 00000004
    beq     t0, $zero, lbl_808D3A14
    lw      a0, 0x0050($sp)
    lw      t2, 0x0268(s0)             # 00000268
    lw      a1, 0x025C(s0)             # 0000025C
    lw      a2, 0x0260(s0)             # 00000260
    lw      a3, 0x0264(s0)             # 00000264
    sw      t2, 0x0010($sp)
    lwc1    $f4, 0x026C(s0)            # 0000026C
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f10                  # $f10 = -1.00
    swc1    $f4, 0x0014($sp)
    lwc1    $f6, 0x0270(s0)            # 00000270
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    swc1    $f6, 0x0018($sp)
    lwc1    $f8, 0x0274(s0)            # 00000274
    sw      t0, 0x004C($sp)
    sw      v1, 0x0044($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    swc1    $f10, 0x0028($sp)
    swc1    $f16, 0x002C($sp)
    jal     func_808D36D0
    swc1    $f8, 0x001C($sp)
    lw      v1, 0x0044($sp)
    lw      t0, 0x004C($sp)
lbl_808D3A14:
    lw      t3, 0x0048($sp)
    beql    t3, $zero, lbl_808D3A80
    lw      v0, 0x02B0(v1)             # 000002B0
    lw      t4, 0x02A0(s0)             # 000002A0
    lw      a1, 0x0294(s0)             # 00000294
    lw      a2, 0x0298(s0)             # 00000298
    lw      a3, 0x029C(s0)             # 0000029C
    sw      t4, 0x0010($sp)
    lwc1    $f18, 0x02A4(s0)           # 000002A4
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    swc1    $f18, 0x0014($sp)
    lwc1    $f4, 0x02A8(s0)            # 000002A8
    lw      a0, 0x0050($sp)
    swc1    $f4, 0x0018($sp)
    lwc1    $f6, 0x02AC(s0)            # 000002AC
    sw      t0, 0x004C($sp)
    sw      v1, 0x0044($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    swc1    $f0, 0x002C($sp)
    swc1    $f0, 0x0028($sp)
    jal     func_808D36D0
    swc1    $f6, 0x001C($sp)
    lw      v1, 0x0044($sp)
    lw      t0, 0x004C($sp)
    lw      v0, 0x02B0(v1)             # 000002B0
lbl_808D3A80:
    lui     t7, 0x0401                 # t7 = 04010000
    addiu   t7, t7, 0xD2E0             # t7 = 0400D2E0
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(v1)             # 000002B0
    lui     t6, 0xFD70                 # t6 = FD700000
    sw      t6, 0x0000(v0)             # 00000000
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t1, 0x0700                 # t1 = 07000000
    ori     t1, t1, 0x0040             # t1 = 07000040
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(v1)             # 000002B0
    lui     t9, 0xF570                 # t9 = F5700000
    sw      t9, 0x0000(v0)             # 00000000
    sw      t1, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t3, 0xE600                 # t3 = E6000000
    lui     t5, 0xF300                 # t5 = F3000000
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02B0(v1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t3, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t6, 0x0707                 # t6 = 07070000
    ori     t6, t6, 0xF400             # t6 = 0707F400
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(v1)             # 000002B0
    sw      t6, 0x0004(v0)             # 00000004
    sw      t5, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t8, 0xE700                 # t8 = E7000000
    lui     t1, 0xF568                 # t1 = F5680000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(v1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(v1)             # 000002B0
    ori     t1, t1, 0x0400             # t1 = F5680400
    addiu   t2, $zero, 0x0040          # t2 = 00000040
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(v1)             # 000002B0
    sw      t2, 0x0004(v0)             # 00000004
    sw      t1, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(v1)             # 000002B0
    lui     t5, 0x0003                 # t5 = 00030000
    ori     t5, t5, 0xC03C             # t5 = 0003C03C
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02B0(v1)             # 000002B0
    lui     t4, 0xF200                 # t4 = F2000000
    sw      t4, 0x0000(v0)             # 00000000
    sw      t5, 0x0004(v0)             # 00000004
    beq     t0, $zero, lbl_808D3BA4
    lw      a0, 0x0050($sp)
    lw      t6, 0x0250(s0)             # 00000250
    lw      a1, 0x0244(s0)             # 00000244
    lw      a2, 0x0248(s0)             # 00000248
    lw      a3, 0x024C(s0)             # 0000024C
    sw      t6, 0x0010($sp)
    lwc1    $f8, 0x0254(s0)            # 00000254
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f18                  # $f18 = -1.00
    swc1    $f8, 0x0014($sp)
    lwc1    $f10, 0x0258(s0)           # 00000258
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    swc1    $f10, 0x0018($sp)
    lwc1    $f16, 0x0274(s0)           # 00000274
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    swc1    $f18, 0x0028($sp)
    swc1    $f4, 0x002C($sp)
    jal     func_808D36D0
    swc1    $f16, 0x001C($sp)
lbl_808D3BA4:
    lw      t7, 0x0048($sp)
    beql    t7, $zero, lbl_808D3C04
    lw      $ra, 0x003C($sp)
    lw      t8, 0x0288(s0)             # 00000288
    lw      a1, 0x027C(s0)             # 0000027C
    lw      a2, 0x0280(s0)             # 00000280
    lw      a3, 0x0284(s0)             # 00000284
    sw      t8, 0x0010($sp)
    lwc1    $f6, 0x028C(s0)            # 0000028C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    swc1    $f6, 0x0014($sp)
    lwc1    $f8, 0x0290(s0)            # 00000290
    mtc1    $at, $f18                  # $f18 = 1.00
    lw      a0, 0x0050($sp)
    swc1    $f8, 0x0018($sp)
    lwc1    $f10, 0x02AC(s0)           # 000002AC
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    swc1    $f16, 0x0028($sp)
    swc1    $f18, 0x002C($sp)
    jal     func_808D36D0
    swc1    $f10, 0x001C($sp)
lbl_808D3C00:
    lw      $ra, 0x003C($sp)
lbl_808D3C04:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_808D3C14:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0044($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0034($sp)
    lw      t1, 0x0034($sp)
    lw      v1, 0x02C0(t1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t1)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lh      t9, 0x01E2(s0)             # 000001E2
    lui     t0, %hi(var_808D4B34)      # t0 = 808D0000
    lui     t7, 0x8012                 # t7 = 80120000
    sll     t2, t9,  2
    addu    t0, t0, t2
    lw      t0, %lo(var_808D4B34)(t0)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t4, t0,  4
    srl     t5, t4, 28
    sll     t6, t5,  2
    addu    t7, t7, t6
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t3, t0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t3, t7
    addu    t9, t8, $at
    sw      t9, 0x0004(v1)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t2, %hi(func_808D342C)     # t2 = 808D0000
    addiu   t2, t2, %lo(func_808D342C) # t2 = 808D342C
    sw      t2, 0x0010($sp)
    sw      s0, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    jal     func_80089D8C
    lw      a0, 0x0044($sp)
    lwc1    $f4, 0x0228(s0)            # 00000228
    lw      a2, 0x0220(s0)             # 00000220
    lw      a3, 0x0224(s0)             # 00000224
    swc1    $f4, 0x0010($sp)
    lbu     t4, 0x0241(s0)             # 00000241
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808D3464
    sw      t4, 0x0014($sp)
    lw      a0, 0x0044($sp)
    jal     func_808D386C
    or      a1, s0, $zero              # a1 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_808D3D08:
    sw      a3, 0x000C($sp)
    or      a3, a2, $zero              # a3 = 00000000
    sw      a2, 0x0008($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     a1, $at, lbl_808D3DF4
    lw      v1, 0x0000(a0)             # 00000000
    lw      v0, 0x0014($sp)
    addiu   t2, $zero, 0x0044          # t2 = 00000044
    lui     t3, 0x0001                 # t3 = 00010000
    lw      a2, 0x02C0(v1)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0018             # t7 = DB060018
    addiu   t6, a2, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    sw      t7, 0x0000(a2)             # 00000000
    lb      t8, 0x01D9(v0)             # 000001D9
    multu   t8, t2
    mflo    t9
    addu    t4, a0, t9
    addu    t5, t4, t3
    lw      t6, 0x17B4(t5)             # 000017B4
    sw      t6, 0x0004(a2)             # 00000004
    lb      t7, 0x01D9(v0)             # 000001D9
    lui     $at, 0x8000                # $at = 80000000
    multu   t7, t2
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x2820             # t7 = 06002820
    mflo    t8
    addu    t9, a0, t8
    addu    t4, t9, t3
    lw      t5, 0x17B4(t4)             # 000017B4
    addu    t6, t5, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t6, 0x0C50($at)            # 80120C50
    sw      t7, 0x0000(a3)             # 00000000
    lw      a2, 0x02C0(v1)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0028             # t9 = DB060028
    addiu   t8, a2, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      t9, 0x0000(a2)             # 00000000
    lh      t4, 0x01E2(v0)             # 000001E2
    lui     t1, %hi(var_808D4B40)      # t1 = 808D0000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t5, t4,  2
    addu    t1, t1, t5
    lw      t1, %lo(var_808D4B40)(t1)
    lui     t4, 0x8012                 # t4 = 80120000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t7, t1,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    addu    t4, t4, t9
    lw      t4, 0x0C38(t4)             # 80120C38
    and     t6, t1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t5, t6, t4
    addu    t7, t5, $at
    sw      t7, 0x0004(a2)             # 00000004
lbl_808D3DF4:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_808D3E00:
    lw      v1, 0x02C4(a0)             # 000002C4
    lui     t6, 0xDF00                 # t6 = DF000000
    addiu   v1, v1, 0xFFF0             # v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             # 000002C4
    sw      t6, 0x0000(v1)             # FFFFFFF0
    sw      $zero, 0x0004(v1)          # FFFFFFF4
    or      v0, v1, $zero              # v0 = FFFFFFF0
    jr      $ra
    nop


func_808D3E24:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    andi    a2, a2, 0x00FF             # a2 = 00000000
    andi    a1, a1, 0x00FF             # a1 = 00000000
    lw      v1, 0x02C4(a0)             # 000002C4
    lui     t6, 0xFB00                 # t6 = FB000000
    sll     t8, a1, 24
    addiu   v1, v1, 0xFFF0             # v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             # 000002C4
    sw      t6, 0x0000(v1)             # FFFFFFF0
    andi    t9, a2, 0x00FF             # t9 = 00000000
    lbu     t6, 0x0013($sp)
    sll     t0, t9, 16
    andi    t2, a3, 0x00FF             # t2 = 00000000
    sll     t3, t2,  8
    or      t1, t8, t0                 # t1 = 00000000
    or      t4, t1, t3                 # t4 = 00000000
    or      t7, t4, t6                 # t7 = FB000000
    sw      t7, 0x0004(v1)             # FFFFFFF4
    lui     t9, 0xDF00                 # t9 = DF000000
    sw      t9, 0x0008(v1)             # FFFFFFF8
    sw      $zero, 0x000C(v1)          # FFFFFFFC
    or      v0, v1, $zero              # v0 = FFFFFFF0
    jr      $ra
    nop


func_808D3E90:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s0, 0x0028($sp)
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xFB00                 # t7 = FB000000
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0020             # t2 = DB060020
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    sw      t3, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0082          # a2 = 00000082
    addiu   a3, $zero, 0x0046          # a3 = 00000046
    jal     func_808D3E24
    sw      v1, 0x0040($sp)
    lw      t0, 0x0040($sp)
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0024             # t5 = DB060024
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   a1, $zero, 0x006E          # a1 = 0000006E
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    sw      t6, 0x0010($sp)
    addiu   a2, $zero, 0x00AA          # a2 = 000000AA
    addiu   a3, $zero, 0x0014          # a3 = 00000014
    jal     func_808D3E24
    sw      v1, 0x003C($sp)
    lw      t1, 0x003C($sp)
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0030             # t8 = DB060030
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_808D3E00
    sw      v1, 0x0038($sp)
    lw      t0, 0x0038($sp)
    or      a0, s2, $zero              # a0 = 00000000
    lui     t9, %hi(func_808D3D08)     # t9 = 808D0000
    sw      v0, 0x0004(t0)             # 00000004
    lw      a1, 0x0140(s1)             # 00000140
    lw      a2, 0x015C(s1)             # 0000015C
    lbu     a3, 0x013E(s1)             # 0000013E
    addiu   t9, t9, %lo(func_808D3D08) # t9 = 808D3D08
    sw      t9, 0x0010($sp)
    sw      s1, 0x0018($sp)
    jal     func_80089D8C
    sw      $zero, 0x0014($sp)
    lwc1    $f4, 0x0228(s1)            # 00000228
    lw      a2, 0x0220(s1)             # 00000220
    lw      a3, 0x0224(s1)             # 00000224
    swc1    $f4, 0x0010($sp)
    lbu     t2, 0x0241(s1)             # 00000241
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808D3464
    sw      t2, 0x0014($sp)
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_808D386C
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_808D3FF0:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0044($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0034($sp)
    lui     t4, 0x00FF                 # t4 = 00FF0000
    lui     t5, 0x8012                 # t5 = 80120000
    addiu   t5, t5, 0x0C38             # t5 = 80120C38
    ori     t4, t4, 0xFFFF             # t4 = 00FFFFFF
    lw      t3, 0x0034($sp)
    lui     $ra, 0x8000                # $ra = 80000000
    lw      v0, 0x02C0(t3)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t3)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lh      t9, 0x01E2(s0)             # 000001E2
    lui     t2, %hi(var_808D4B4C)      # t2 = 808D0000
    lui     t1, 0x0601                 # t1 = 06010000
    sll     t6, t9,  2
    addu    t2, t2, t6
    lw      t2, %lo(var_808D4B4C)(t2)
    addiu   t1, t1, 0xDE80             # t1 = 0600DE80
    sll     t8, t2,  4
    srl     t9, t8, 28
    sll     t6, t9,  2
    addu    t8, t5, t6
    lw      t9, 0x0000(t8)             # DB060020
    and     t7, t2, t4
    addu    t6, t7, t9
    addu    t8, t6, $ra
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(t3)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    sll     t6, t1,  4
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t3)             # 000002C0
    srl     t8, t6, 28
    ori     t9, t9, 0x0024             # t9 = DB060024
    sll     t7, t8,  2
    sw      t9, 0x0000(v0)             # 00000000
    addu    t9, t5, t7
    lw      t6, 0x0000(t9)             # DB060024
    and     t8, t1, t4
    addu    t7, t6, t8
    addu    t9, t7, $ra
    sw      t9, 0x0004(v0)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    sw      s0, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    jal     func_80089D8C
    lw      a0, 0x0044($sp)
    lwc1    $f4, 0x0228(s0)            # 00000228
    lw      a2, 0x0220(s0)             # 00000220
    lw      a3, 0x0224(s0)             # 00000224
    swc1    $f4, 0x0010($sp)
    lbu     t6, 0x0241(s0)             # 00000241
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808D3464
    sw      t6, 0x0014($sp)
    lw      a0, 0x0044($sp)
    jal     func_808D386C
    or      a1, s0, $zero              # a1 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_808D4124:
    sw      a0, 0x0000($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     a1, $at, lbl_808D4150
    lw      v0, 0x0010($sp)
    lw      t7, 0x0014($sp)
    lh      t6, 0x0000(v0)             # 00000000
    lh      t8, 0x01DE(t7)             # 000001DE
    addu    t9, t6, t8
    sh      t9, 0x0000(v0)             # 00000000
lbl_808D4150:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_808D415C:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E298
    sw      a0, 0x003C($sp)
    lw      t0, 0x003C($sp)
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t7, 0xFB00                 # t7 = FB000000
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(t0)             # 000002C0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0030             # t4 = DB060030
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t0)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_808D3E00
    sw      v1, 0x0030($sp)
    lw      t3, 0x0030($sp)
    lw      t0, 0x003C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    sw      v0, 0x0004(t3)             # 00000004
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(t0)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lh      t7, 0x01E2(s0)             # 000001E2
    lui     t2, %hi(var_808D4B58)      # t2 = 808D0000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t8, t7,  2
    addu    t2, t2, t8
    lw      t2, %lo(var_808D4B58)(t2)
    lui     t7, 0x8012                 # t7 = 80120000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t4, t2,  4
    srl     t5, t4, 28
    sll     t6, t5,  2
    addu    t7, t7, t6
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t9, t2, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t9, t7
    addu    t4, t8, $at
    sw      t4, 0x0004(v1)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t5, %hi(func_808D4124)     # t5 = 808D0000
    addiu   t5, t5, %lo(func_808D4124) # t5 = 808D4124
    sw      t5, 0x0010($sp)
    sw      s0, 0x0018($sp)
    jal     func_80089D8C
    sw      $zero, 0x0014($sp)
    lwc1    $f4, 0x0228(s0)            # 00000228
    lw      a2, 0x0220(s0)             # 00000220
    lw      a3, 0x0224(s0)             # 00000224
    swc1    $f4, 0x0010($sp)
    lbu     t6, 0x0241(s0)             # 00000241
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808D3464
    sw      t6, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_808D386C
    or      a1, s0, $zero              # a1 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_808D429C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0044($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0034($sp)
    lw      t1, 0x0034($sp)
    lw      v1, 0x02C0(t1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t1)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lh      t9, 0x01E2(s0)             # 000001E2
    lui     t0, %hi(var_808D4B64)      # t0 = 808D0000
    lui     t7, 0x8012                 # t7 = 80120000
    sll     t2, t9,  2
    addu    t0, t0, t2
    lw      t0, %lo(var_808D4B64)(t0)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t4, t0,  4
    srl     t5, t4, 28
    sll     t6, t5,  2
    addu    t7, t7, t6
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t3, t0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t3, t7
    addu    t9, t8, $at
    sw      t9, 0x0004(v1)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    sw      s0, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    jal     func_80089D8C
    lw      a0, 0x0044($sp)
    lwc1    $f4, 0x0228(s0)            # 00000228
    lw      a2, 0x0220(s0)             # 00000220
    lw      a3, 0x0224(s0)             # 00000224
    swc1    $f4, 0x0010($sp)
    lbu     t2, 0x0241(s0)             # 00000241
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808D3464
    sw      t2, 0x0014($sp)
    lw      a0, 0x0044($sp)
    jal     func_808D386C
    or      a1, s0, $zero              # a1 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_808D4388:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0044($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0034($sp)
    lw      t1, 0x0034($sp)
    lw      v1, 0x02C0(t1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t1)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lbu     t9, 0x01DC(s0)             # 000001DC
    lui     t0, %hi(var_808D4B70)      # t0 = 808D0000
    lui     t7, 0x8012                 # t7 = 80120000
    sll     t2, t9,  2
    addu    t0, t0, t2
    lw      t0, %lo(var_808D4B70)(t0)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t4, t0,  4
    srl     t5, t4, 28
    sll     t6, t5,  2
    addu    t7, t7, t6
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t3, t0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t3, t7
    addu    t9, t8, $at
    sw      t9, 0x0004(v1)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    sw      s0, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    jal     func_80089D8C
    lw      a0, 0x0044($sp)
    lwc1    $f4, 0x0228(s0)            # 00000228
    lw      a2, 0x0220(s0)             # 00000220
    lw      a3, 0x0224(s0)             # 00000224
    swc1    $f4, 0x0010($sp)
    lbu     t2, 0x0241(s0)             # 00000241
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808D3464
    sw      t2, 0x0014($sp)
    lw      a0, 0x0044($sp)
    jal     func_808D386C
    or      a1, s0, $zero              # a1 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_808D4474:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0044($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0034($sp)
    lw      t1, 0x0034($sp)
    lw      v1, 0x02C0(t1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t1)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lh      t9, 0x01E2(s0)             # 000001E2
    lui     t0, %hi(var_808D4B78)      # t0 = 808D0000
    lui     t7, 0x8012                 # t7 = 80120000
    sll     t2, t9,  2
    addu    t0, t0, t2
    lw      t0, %lo(var_808D4B78)(t0)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t4, t0,  4
    srl     t5, t4, 28
    sll     t6, t5,  2
    addu    t7, t7, t6
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t3, t0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t3, t7
    addu    t9, t8, $at
    sw      t9, 0x0004(v1)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    sw      s0, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    jal     func_80089D8C
    lw      a0, 0x0044($sp)
    lwc1    $f4, 0x0228(s0)            # 00000228
    lw      a2, 0x0220(s0)             # 00000220
    lw      a3, 0x0224(s0)             # 00000224
    swc1    $f4, 0x0010($sp)
    lbu     t2, 0x0241(s0)             # 00000241
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_808D3464
    sw      t2, 0x0014($sp)
    lw      a0, 0x0044($sp)
    jal     func_808D386C
    or      a1, s0, $zero              # a1 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop

.section .data

var_808D4560: .word 0x003D0400, 0x00000019, 0x00010000, 0x000002C8
.word func_808CF584 # Init
.word func_808CF750 # Dest
.word func_808D3400 # Main
.word 0x00000000
var_808D4580: .word \ # Actor OverlayCollision
0x0A000039, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x001E0050, 0x00000000, 0x00000000
var_808D45AC: .word 0x000A001E, 0x00140032
var_808D45B4: .word \
0xEAACEAAC, 0xEAACEAAC, 0x15541554, 0x15541554, \
0x001E001F, 0x00200021, 0x00220023, 0x00240025
var_808D45D4: .word \
0x00FC0102, 0x01010159, 0x01920192, 0x01650192, \
0x01920159, 0x01920192, 0x005B0192, 0x0192005B, \
0x01920192, 0x005B0192, 0x019200FE, 0x01920104, \
0x00C90192, 0x0103005B, 0x01920192, 0x013E0192, \
0x01920000
var_808D4618: .word func_808CF220
.word func_808CF1BC
.word func_808CF284
.word func_808CF200
.word func_808CF240
.word func_808CF19C
.word func_808CF19C
.word func_808CF2A4
.word func_808CF2FC
.word func_808CF19C
.word func_808CF3D0
var_808D4644: .word \
0x3C23D70A, 0x3C343958, 0x3C2C0831, 0x3C343958, \
0x3C23D70A, 0x3C23D70A, 0x3C23D70A, 0x3C23D70A, \
0x3C23D70A, 0x3C23D70A, 0x3C23D70A
var_808D4670: .word \
0x000D0032, 0x0034FFEC, 0x00000032, 0x004CFFEC, \
0x00040050, 0x0034FFFD, 0x00050050, 0x004CFFFD, \
0x001DFFCE, 0x0034FFEC, 0x002CFFCE, 0x004CFFEC, \
0x0001FFB0, 0x0034FFFD, 0x0010FFB0, 0x004CFFFD, \
0x00090032, 0x0034FFEC, 0x00270032, 0x004CFFEC, \
0x00080050, 0x0034FFFD, 0x002B0050, 0x004CFFFD, \
0x0000FFCE, 0x0034FFEC, 0x0028FFCE, 0x004CFFEC, \
0x002AFFB0, 0x0034FFFD, 0x0007FFB0, 0x004CFFFD, \
0x00180032, 0x0034FFEC, 0x001C0032, 0x004CFFEC, \
0x00190050, 0x0034FFFD, 0x00150050, 0x004CFFFD, \
0x001AFFCE, 0x0034FFEC, 0x0016FFCE, 0x004CFFEC, \
0x001BFFB0, 0x0034FFFD, 0x0017FFB0, 0x004CFFFD, \
0x00090032, 0x0034FFEC, 0x00270032, 0x004CFFEC, \
0x00080050, 0x0034FFFD, 0x002B0050, 0x004CFFFD, \
0x0000FFCE, 0x0034FFEC, 0x0028FFCE, 0x004CFFEC, \
0x002AFFB0, 0x0034FFFD, 0x0007FFB0, 0x004CFFFD, \
0x000C0032, 0x0034FFEC, 0x002F0032, 0x004CFFEC, \
0x00000050, 0x0034FFFD, 0x00100050, 0x004CFFFD, \
0x002CFFCE, 0x0034FFEC, 0x0002FFCE, 0x004CFFEC, \
0x0005FFB0, 0x0034FFFD, 0x0001FFB0, 0x004CFFFD, \
0x000C0032, 0x0034FFEC, 0x00030032, 0x004CFFEC, \
0x00000050, 0x0034FFFD, 0x00100050, 0x004CFFFD, \
0x002CFFCE, 0x0034FFEC, 0x0002FFCE, 0x004CFFEC, \
0x0005FFB0, 0x0034FFFD, 0x0001FFB0, 0x004CFFFD, \
0x00110032, 0x0034FFEC, 0x00000032, 0x004CFFEC, \
0x00040050, 0x0034FFFD, 0x00100050, 0x004CFFFD, \
0x0012FFCE, 0x0034FFEC, 0x0005FFCE, 0x004CFFEC, \
0x0010FFB0, 0x0034FFFD, 0x0010FFB0, 0x004CFFFD, \
0x000F0032, 0x0034FFEC, 0x002C0032, 0x004CFFEC, \
0x00100050, 0x0034FFFD, 0x00010050, 0x004CFFFD, \
0x0000FFCE, 0x0034FFEC, 0x0002FFCE, 0x004CFFEC, \
0x0007FFB0, 0x0034FFFD, 0x0031FFB0, 0x004CFFFD, \
0x00030032, 0x0034FFEC, 0x00060032, 0x004CFFEC, \
0x002D0050, 0x0034FFFD, 0x002E0050, 0x004CFFFD, \
0x000EFFCE, 0x0034FFEC, 0x0010FFCE, 0x004CFFEC, \
0x0030FFB0, 0x0034FFFD, 0x0010FFB0, 0x004CFFFD, \
0x00130032, 0x0034FFEC, 0x00130032, 0x004CFFEC, \
0x00130050, 0x0034FFFD, 0x00130050, 0x004CFFFD, \
0x0014FFCE, 0x0034FFEC, 0x0014FFCE, 0x004CFFEC, \
0x0014FFB0, 0x0034FFFD, 0x0014FFB0, 0x004CFFFD, \
0x00250032, 0x0034FFEC, 0x00230032, 0x004CFFEC, \
0x00220050, 0x0034FFFD, 0x00240050, 0x004CFFFD, \
0x0020FFCE, 0x0034FFEC, 0x001EFFCE, 0x004CFFEC, \
0x0021FFB0, 0x0034FFFD, 0x001FFFB0, 0x004CFFFD
var_808D4930: .word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CEDA4
.word func_808CEDD8
.word func_808CEE0C
.word func_808CED8C
.word func_808CEE40
.word func_808CEE74
.word func_808CEEA8
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
.word func_808CED8C
var_808D49F8: .word 0x801F0002, 0x304C01F4
var_808D4A00: .word \
0x41880000, 0x42680000, 0x41F00000, 0xC1880000, \
0x42680000, 0x41F00000
var_808D4A18: .word func_808D2A9C
.word func_808D2D6C
.word func_808D2E2C
.word func_808D2D6C
.word func_808D2A3C
.word func_808D2A3C
.word func_808D2A3C
.word func_808D2C90
.word func_808D2BB4
.word func_808D2A3C
.word func_808D2DCC
var_808D4A44: .word \
0x00000000, 0x00000000, 0x42040000, 0x00000000, \
0x00000000, 0x41F80000, 0x00000000, 0x00000000, \
0x41F80000, 0x00000000, 0x00000000, 0x41F80000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x42100000, \
0x00000000, 0x00000000, 0x41700000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x41D00000
var_808D4AC8: .word func_808CFB54
.word func_808D00B8
.word func_808D02CC
.word func_808D03E4
.word func_808D0438
.word func_808D0524
.word func_808D09C0
.word func_808D0B80
.word func_808D0D40
.word func_808D1594
.word func_808D1668
.word func_808D173C
.word func_808D1810
.word func_808D18A0
.word func_808D1B74
.word func_808D1C98
.word func_808D1D08
.word func_808D1E4C
.word func_808D215C
.word func_808D0DFC
.word func_808D202C
.word func_808D2094
.word func_808D2108
.word func_808D1BF0
.word func_808D1998
.word func_808D21B0
.word func_808D224C
var_808D4B34: .word 0x06004878, 0x060052B8, 0x060056B8
var_808D4B40: .word 0x06001570, 0x060001F0, 0x06000B30
var_808D4B4C: .word 0x0600CE80, 0x0600D280, 0x0600D680
var_808D4B58: .word 0x06003E40, 0x06004640, 0x06004E40
var_808D4B64: .word 0x060030D8, 0x060034D8, 0x060038D8
var_808D4B70: .word 0x060035D8, 0x060039D8
var_808D4B78: .word \
0x06003968, 0x06003D68, 0x06004168, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_808D4B90: .word var_808D01E0
.word var_808D01E0
.word var_808D01E0
.word var_808D01E0
.word var_808D01CC
.word var_808D01F4
.word var_808D01B0
var_808D4BAC: .word var_808D0960
.word lbl_808D097C
.word lbl_808D097C
.word var_808D0960
.word lbl_808D097C
.word lbl_808D097C
.word lbl_808D097C
.word lbl_808D097C
.word lbl_808D097C
.word lbl_808D097C
.word lbl_808D097C
.word lbl_808D097C
.word lbl_808D097C
.word lbl_808D097C
.word var_808D090C
.word var_808D0928
.word var_808D0944
.word var_808D0944
.word lbl_808D097C
.word lbl_808D097C
.word lbl_808D097C
.word lbl_808D097C
.word lbl_808D097C
.word lbl_808D097C
.word lbl_808D097C
.word lbl_808D097C
.word lbl_808D097C
.word var_808D08F0
.word var_808D08F0
.word var_808D08F0
.word var_808D08F0
.word var_808D08F0
.word var_808D08F0
.word var_808D08F0
.word var_808D08F0
.word lbl_808D097C
.word lbl_808D097C
.word lbl_808D097C
.word lbl_808D097C
.word lbl_808D097C
.word lbl_808D097C
.word lbl_808D097C
.word var_808D0960
.word var_808D0960
.word var_808D0960
var_808D4C60: .word var_808D1060
.word var_808D10CC
.word var_808D111C
.word var_808D113C
.word var_808D115C
.word var_808D117C
var_808D4C78: .word var_808D1AAC
.word var_808D1AC4
.word var_808D1ADC
.word var_808D1AF4
.word lbl_808D1B08
.word lbl_808D1B08
.word lbl_808D1B08
.word lbl_808D1B08
var_808D4C98: .word 0x3F59999A
var_808D4C9C: .word 0x3E19999A
var_808D4CA0: .word 0x3D4CCCCD
var_808D4CA4: .word 0x3D4CCCCD
var_808D4CA8: .word 0x3D4CCCCD
var_808D4CAC: .word 0x3D4CCCCD
var_808D4CB0: .word 0x3DCCCCCD, 0x00000000, 0x00000000, 0x00000000
