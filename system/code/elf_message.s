# "Elf_Message" part of the code file
#
# Handles Navi's Elf_Messages to the player.
#
# General Documentation about Navi and Elf_Messages:
# - https://wiki.cloudmodding.com/oot/Actor_List_(Variables)#En_Elf
# - https://wiki.cloudmodding.com/oot/En_Elf
# - https://wiki.cloudmodding.com/oot/Elf_message
#
# Starts at VRAM: 800590E0 / VROM: ACF040
#

.section .text
func_800590E0:
# parses elf_message code 0 of & E000 0000
# 801077E8 is jump table, ending at 801078EC
# A0 = ptr to current working record
# V0 = 1 if should be used, 0 otherwise
    lbu     v1, 0x0000(a0)             # 00000000
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    andi    v0, v1, 0x001E             # v0 = 00000000
    beq     v0, $zero, lbl_80059124
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80059168
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_800591AC
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beql    v0, $at, lbl_800591F0
    lbu     a2, 0x0001(a0)             # 00000001
    beq     $zero, $zero, lbl_80059354
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80059124:
    lbu     a2, 0x0001(a0)             # 00000001
    andi    t8, v1, 0x0001             # t8 = 00000000
    xori    t9, t8, 0x0001             # t9 = 00000001
    andi    t0, a2, 0x00F0             # t0 = 00000000
    sra     t1, t0,  4
    sll     t2, t1,  1
    addu    t3, a3, t2
    lhu     t4, 0x0ED4(t3)             # 00000ED4
    andi    t6, a2, 0x000F             # t6 = 00000000
    sllv    a1, t7, t6
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    and     t5, t4, a1
    sltu    t7, $zero, t5
    sltiu   t9, t9, 0x0001
    xor     v0, t9, t7
    jr      $ra
    sltiu   v0, v0, 0x0001
lbl_80059168:
    lbu     t6, 0x0001(a0)             # 00000001
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    lhu     t1, 0x1402(a3)             # 8011B9D2
    lui     t0, 0x8010                 # t0 = 80100000
    sll     t8, t6,  2
    addu    t0, t0, t8
    addu    t2, a3, t1
    lbu     t3, 0x00A8(t2)             # 000000A8
    lw      t0, -0x75E0(t0)            # 800F8A20
    andi    t9, v1, 0x0001             # t9 = 00000000
    xori    t7, t9, 0x0001             # t7 = 00000001
    and     t4, t0, t3
    sltu    t5, $zero, t4
    sltiu   t7, t7, 0x0001
    xor     v0, t7, t5
    jr      $ra
    sltiu   v0, v0, 0x0001
lbl_800591AC:
    lbu     t8, 0x0001(a0)             # 00000001
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   a3, a3, 0xA5D0             # a3 = 80114BA0
    addu    t1, t1, t8
    lbu     t1, -0x70CC(t1)            # 800F8F34
    lbu     t6, 0x0003(a0)             # 00000003
    andi    t4, v1, 0x0001             # t4 = 00000000
    addu    t2, a3, t1
    lbu     t0, 0x0074(t2)             # 00000074
    xori    t9, t4, 0x0001             # t9 = 00000001
    sltiu   t9, t9, 0x0001
    xor     t3, t6, t0
    sltiu   t3, t3, 0x0001
    xor     v0, t9, t3
    jr      $ra
    sltiu   v0, v0, 0x0001
lbl_800591EC:
    lbu     a2, 0x0001(a0)             # 00000001
lbl_800591F0:
    andi    t7, a2, 0x00F0             # t7 = 00000000
    sltiu   $at, t7, 0x0041
    beq     $at, $zero, lbl_80059350
    sll     t7, t7,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t7
    lw      t7, 0x77E8($at)            # 801077E8
    jr      t7
    nop
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    lui     t8, 0x8010                 # t8 = 80100000
    lw      t8, -0x7378(t8)            # 800F8C88
    lw      t5, 0x00A0(a3)             # 8011A670
    lui     t2, 0x8010                 # t2 = 80100000
    lbu     t2, -0x733A(t2)            # 800F8CC6
    and     t1, t5, t8
    andi    t0, a2, 0x000F             # t0 = 00000000
    andi    t9, v1, 0x0001             # t9 = 00000000
    srav    t6, t1, t2
    xor     t4, t0, t6
    xori    t3, t9, 0x0001             # t3 = 00000001
    sltiu   t3, t3, 0x0001
    sltiu   t4, t4, 0x0001
    xor     v0, t3, t4
    jr      $ra
    sltiu   v0, v0, 0x0001


func_8005925C:
    lbu     t7, 0x0003(a0)             # 00000003
    lui     t8, 0x8010                 # t8 = 80100000
    lui     a3, 0x8012                 # a3 = 80120000
    sll     t5, t7,  2
    addu    t8, t8, t5
    lui     t1, 0x8010                 # t1 = 80100000
    lbu     t1, -0x733D(t1)            # 800F8CC3
    lw      t8, -0x7520(t8)            # 800F8AE0
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    lhu     t0, 0x009C(a3)             # 8011A66C
    andi    t3, v1, 0x0001             # t3 = 00000000
    sllv    t2, t8, t1
    xori    t4, t3, 0x0001             # t4 = 00000001
    and     t6, t2, t0
    sltu    t9, $zero, t6
    sltiu   t4, t4, 0x0001
    xor     v0, t4, t9
    jr      $ra
    sltiu   v0, v0, 0x0001


func_800592A8:
    lbu     t7, 0x0003(a0)             # 00000003
    lui     a3, 0x8012                 # a3 = 80120000
    lui     t8, 0x8010                 # t8 = 80100000
    sll     t5, t7,  2
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    addu    t8, t8, t5
    lw      t8, -0x7560(t8)            # 800F8AA0
    lw      t1, 0x00A4(a3)             # 8011A674
    andi    t6, v1, 0x0001             # t6 = 00000000
    xori    t3, t6, 0x0001             # t3 = 00000001
    and     t2, t8, t1
    sltu    t0, $zero, t2
    sltiu   t3, t3, 0x0001
    xor     v0, t3, t0
    jr      $ra
    sltiu   v0, v0, 0x0001


func_800592E8:
    lbu     t4, 0x0003(a0)             # 00000003
    lui     a3, 0x8012                 # a3 = 80120000
    lui     t7, 0x8010                 # t7 = 80100000
    sll     t9, t4,  2
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    addu    t7, t7, t9
    lw      t7, -0x75A8(t7)            # 800F8A58
    lw      t5, 0x00A4(a3)             # 8011A674
    andi    t2, v1, 0x0001             # t2 = 00000000
    xori    t6, t2, 0x0001             # t6 = 00000001
    and     t8, t7, t5
    sltu    t1, $zero, t8
    sltiu   t6, t6, 0x0001
    xor     v0, t6, t1
    jr      $ra
    sltiu   v0, v0, 0x0001


func_80059328:
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    lbu     t4, 0x003A(a3)             # 8011A60A
    andi    t3, v1, 0x0001             # t3 = 00000000
    xori    t0, t3, 0x0001             # t0 = 00000001
    sltiu   t0, t0, 0x0001
    sltu    t9, $zero, t4
    xor     v0, t0, t9
    jr      $ra
    sltiu   v0, v0, 0x0001
lbl_80059350:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80059354:
    jr      $ra
    nop


func_8005935C:
# parses elf_message code 1 of & E000 0000
# A0 = pointer to pointer of current working elf_message record's ram address
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s2, 0x0020($sp)
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    addiu   s2, $zero, 0x0020          # s2 = 00000020
    sw      $ra, 0x0024($sp)
    sw      s1, 0x001C($sp)
    lw      a1, 0x0000(s0)             # 00000000
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    lbu     t6, 0x0000(a1)             # 00000000
    andi    t7, t6, 0x00E0             # t7 = 00000000
    bne     s2, t7, lbl_800593C0
    nop
lbl_80059390:
    jal     func_800590E0
    or      a0, a1, $zero              # a0 = 00000000
    bnel    v0, $zero, lbl_800593A8
    lw      t8, 0x0000(s0)             # 00000000
    or      s1, $zero, $zero           # s1 = 00000000
    lw      t8, 0x0000(s0)             # 00000000
lbl_800593A8:
    addiu   a1, t8, 0x0004             # a1 = 00000004
    sw      a1, 0x0000(s0)             # 00000000
    lbu     t0, 0x0000(a1)             # 00000004
    andi    t1, t0, 0x00E0             # t1 = 00000000
    beq     s2, t1, lbl_80059390
    nop
lbl_800593C0:
    beq     s1, $zero, lbl_800593D8
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_800590E0
    or      a0, a1, $zero              # a0 = 00000004
    beq     $zero, $zero, lbl_800593DC
    lw      $ra, 0x0024($sp)
lbl_800593D8:
    lw      $ra, 0x0024($sp)
lbl_800593DC:
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_800593F0:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s0, 0x0014($sp)
    lw      s0, 0x0000(s1)             # 00000000
    or      s2, $zero, $zero           # s2 = 00000000
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   v1, $sp, 0x0044            # v1 = FFFFFFD4
lbl_8005941C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800590E0
    sw      v1, 0x0030($sp)
    lw      v1, 0x0030($sp)
    addiu   $at, $zero, 0x0040         # $at = 00000040
    addu    s2, s2, v0
    sw      v0, 0x0000(v1)             # 00000000
    lbu     t6, 0x0004(s0)             # 00000004
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   s0, s0, 0x0004             # s0 = 00000004
    andi    t7, t6, 0x00E0             # t7 = 00000000
    beq     t7, $at, lbl_8005941C
    addiu   v1, v1, 0x0004             # v1 = 00000004
    bnel    s2, $zero, lbl_80059464
    mtc1    s2, $f4                    # $f4 = 0.00
    beq     $zero, $zero, lbl_800595B4
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    s2, $f4                    # $f4 = 0.00
lbl_80059464:
    jal     func_80026D64
    cvt.s.w $f12, $f4
    trunc.w.s $f6, $f0
    or      s2, $zero, $zero           # s2 = 00000000
    andi    a1, s3, 0x0003             # a1 = 00000001
    mfc1    v0, $f6
    blezl   s3, lbl_800595B4
    or      v0, $zero, $zero           # v0 = 00000000
    beq     a1, $zero, lbl_800594D8
    or      a0, a1, $zero              # a0 = 00000001
    sll     t9, $zero,  2
    addiu   t0, $sp, 0x0044            # t0 = FFFFFFD4
    addu    v1, t9, t0
lbl_80059498:
    lw      t1, 0x0000(v1)             # 00000000
    beql    t1, $zero, lbl_800594C0
    lw      t2, 0x0000(s1)             # 00000000
    blez    v0, lbl_800594B4
    nop
    beq     $zero, $zero, lbl_800594BC
    addiu   v0, v0, 0xFFFF             # v0 = FFFFFFFF
lbl_800594B4:
    beq     $zero, $zero, lbl_800595B4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800594BC:
    lw      t2, 0x0000(s1)             # 00000000
lbl_800594C0:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    addiu   v1, v1, 0x0004             # v1 = 00000004
    addiu   t3, t2, 0x0004             # t3 = 00000004
    bne     a0, s2, lbl_80059498
    sw      t3, 0x0000(s1)             # 00000000
    beq     s2, s3, lbl_800595B0
lbl_800594D8:
    sll     t4, s2,  2
    addiu   t5, $sp, 0x0044            # t5 = FFFFFFD4
    addu    v1, t4, t5
lbl_800594E4:
    lw      t6, 0x0000(v1)             # 00000004
    beql    t6, $zero, lbl_8005950C
    lw      t7, 0x0000(s1)             # 00000000
    blez    v0, lbl_80059500
    nop
    beq     $zero, $zero, lbl_80059508
    addiu   v0, v0, 0xFFFF             # v0 = 00000000
lbl_80059500:
    beq     $zero, $zero, lbl_800595B4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80059508:
    lw      t7, 0x0000(s1)             # 00000000
lbl_8005950C:
    addiu   t8, t7, 0x0004             # t8 = 00000004
    sw      t8, 0x0000(s1)             # 00000000
    lw      t9, 0x0004(v1)             # 00000008
    beql    t9, $zero, lbl_8005953C
    lw      t0, 0x0000(s1)             # 00000000
    blez    v0, lbl_80059530
    nop
    beq     $zero, $zero, lbl_80059538
    addiu   v0, v0, 0xFFFF             # v0 = 00000000
lbl_80059530:
    beq     $zero, $zero, lbl_800595B4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80059538:
    lw      t0, 0x0000(s1)             # 00000000
lbl_8005953C:
    addiu   t1, t0, 0x0004             # t1 = FFFFFFD8
    sw      t1, 0x0000(s1)             # 00000000
    lw      t2, 0x0008(v1)             # 0000000C
    beql    t2, $zero, lbl_8005956C
    lw      t3, 0x0000(s1)             # 00000000
    blez    v0, lbl_80059560
    nop
    beq     $zero, $zero, lbl_80059568
    addiu   v0, v0, 0xFFFF             # v0 = 00000000
lbl_80059560:
    beq     $zero, $zero, lbl_800595B4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80059568:
    lw      t3, 0x0000(s1)             # 00000000
lbl_8005956C:
    addiu   t4, t3, 0x0004             # t4 = 00000008
    sw      t4, 0x0000(s1)             # 00000000
    lw      t5, 0x000C(v1)             # 00000010
    beql    t5, $zero, lbl_8005959C
    lw      t6, 0x0000(s1)             # 00000000
    blez    v0, lbl_80059590
    nop
    beq     $zero, $zero, lbl_80059598
    addiu   v0, v0, 0xFFFF             # v0 = 00000000
lbl_80059590:
    beq     $zero, $zero, lbl_800595B4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80059598:
    lw      t6, 0x0000(s1)             # 00000000
lbl_8005959C:
    addiu   s2, s2, 0x0004             # s2 = 00000005
    addiu   v1, v1, 0x0010             # v1 = 00000014
    addiu   t7, t6, 0x0004             # t7 = 00000004
    bne     s2, s3, lbl_800594E4
    sw      t7, 0x0000(s1)             # 00000000
lbl_800595B0:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800595B4:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp += 0x70


func_800595D0:
# Parses an "elf_message_*" file
# A0 = ptr to "elf_message_*" file
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0030($sp)
    addiu   s4, $zero, 0x00E0          # s4 = 000000E0
    addiu   s3, $zero, 0x0060          # s3 = 00000060
    addiu   s2, $zero, 0x0040          # s2 = 00000040
    addiu   s1, $zero, 0x0020          # s1 = 00000020
    addiu   s0, $sp, 0x0030            # s0 = 00000000
lbl_80059604:
    lw      t6, 0x0030($sp)
    lbu     v0, 0x0000(t6)             # 00000000
    andi    v0, v0, 0x00E0             # v0 = 00000000
    beq     v0, $zero, lbl_80059640
    nop
    beq     v0, s1, lbl_80059664
    nop
    beq     v0, s2, lbl_80059688
    nop
    beq     v0, s3, lbl_800596AC
    nop
    beql    v0, s4, lbl_800596E8
    lw      t8, 0x0030($sp)
    beq     $zero, $zero, lbl_800596D8
    lw      t6, 0x0030($sp)
lbl_80059640:
    jal     func_800590E0
    lw      a0, 0x0030($sp)
    beql    v0, $zero, lbl_800596D8
    lw      t6, 0x0030($sp)
    lw      t7, 0x0030($sp)
    lbu     v0, 0x0002(t7)             # 00000002
    ori     v0, v0, 0x0100             # v0 = 00000100
    beq     $zero, $zero, lbl_800596F4
    andi    v0, v0, 0xFFFF             # v0 = 00000100
lbl_80059664:
    jal     func_8005935C
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_800596D8
    lw      t6, 0x0030($sp)
    lw      t8, 0x0030($sp)
    lbu     v0, 0x0002(t8)             # 00000002
    ori     v0, v0, 0x0100             # v0 = 00000100
    beq     $zero, $zero, lbl_800596F4
    andi    v0, v0, 0xFFFF             # v0 = 00000100
lbl_80059688:
    jal     func_800593F0
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_800596D8
    lw      t6, 0x0030($sp)
    lw      t9, 0x0030($sp)
    lbu     v0, 0x0002(t9)             # 00000002
    ori     v0, v0, 0x0100             # v0 = 00000100
    beq     $zero, $zero, lbl_800596F4
    andi    v0, v0, 0xFFFF             # v0 = 00000100
lbl_800596AC:
    jal     func_800590E0
    lw      a0, 0x0030($sp)
    beq     v0, $zero, lbl_800596D4
    lw      t0, 0x0030($sp)
    lbu     t2, 0x0002(t0)             # 00000002
    sll     t3, t2,  2
    addu    t4, t0, t3
    sw      t4, 0x0030($sp)
    addiu   t5, t4, 0xFFFC             # t5 = FFFFFFFC
    sw      t5, 0x0030($sp)
lbl_800596D4:
    lw      t6, 0x0030($sp)
lbl_800596D8:
    addiu   t7, t6, 0x0004             # t7 = 00000004
    beq     $zero, $zero, lbl_80059604
    sw      t7, 0x0030($sp)
    lw      t8, 0x0030($sp)
lbl_800596E8:
    lbu     v0, 0x0002(t8)             # 00000002
    ori     v0, v0, 0x0100             # v0 = 00000100
    andi    v0, v0, 0xFFFF             # v0 = 00000100
lbl_800596F4:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80059714:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A2C(t6)            # 8011A5D4
    lw      a1, 0x1C44(a0)             # 00001C44
    addiu   a2, $zero, 0x0146          # a2 = 00000146
    beq     t6, $zero, lbl_8005975C
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f4                   # $f4 = 800.00
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    jal     func_80028158
    swc1    $f4, 0x0010($sp)
    bne     v0, $zero, lbl_80059754
    lui     a0, 0x800F                 # a0 = 800F0000
    beq     $zero, $zero, lbl_80059764
    addiu   a0, a0, 0x0EB0             # a0 = 800F0EB0
lbl_80059754:
    beq     $zero, $zero, lbl_8005976C
    addiu   v0, $zero, 0x0160          # v0 = 00000160
lbl_8005975C:
    lui     a0, 0x800F                 # a0 = 800F0000
    addiu   a0, a0, 0x0EE4             # a0 = 800F0EE4
lbl_80059764:
    jal     func_800595D0
    nop
lbl_8005976C:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8005977C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a1, 0x0001                 # a1 = 00010000
    addu    a1, a1, a0
    lw      a1, 0x1E0C(a1)             # 00011E0C
    bne     a1, $zero, lbl_800597A0
    nop
    beq     $zero, $zero, lbl_800597A8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800597A0:
    jal     func_800595D0
    or      a0, a1, $zero              # a0 = 00010000
lbl_800597A8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
