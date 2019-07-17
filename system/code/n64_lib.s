# "N64 Library" part of the code file
#
# Contains most compiled functions that are included in the game header files such as OS or Math functions.
# Many functions that should be here are already included and compiled inside "boot.s" so they are found there instead.
#
# Starts at VRAM: 800CC5C0 / VROM: B42520
#

.section .text
func_800CC5C0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    jal     func_800D5A80
    nop
    jal     func_800D2AF0
    sw      v0, 0x001C($sp)
    lui     a0, 0x8011                 # a0 = 80110000
    sw      v0, 0x0018($sp)
    addiu   a0, a0, 0xA200             # a0 = 8010A200
    jal     func_800015BC
    lw      a1, 0x001C($sp)
    lw      t6, 0x001C($sp)
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_800CC604
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA218             # a0 = 8010A218
lbl_800CC604:
    lw      t8, 0x001C($sp)
    andi    t9, t8, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_800CC61C
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA220             # a0 = 8010A220
lbl_800CC61C:
    lw      t0, 0x001C($sp)
    andi    t1, t0, 0x0004             # t1 = 00000000
    beq     t1, $zero, lbl_800CC634
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA228             # a0 = 8010A228
lbl_800CC634:
    lw      t2, 0x001C($sp)
    andi    t3, t2, 0x0008             # t3 = 00000000
    beq     t3, $zero, lbl_800CC64C
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA234             # a0 = 8010A234
lbl_800CC64C:
    lw      t4, 0x001C($sp)
    andi    t5, t4, 0x0010             # t5 = 00000000
    beq     t5, $zero, lbl_800CC664
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA240             # a0 = 8010A240
lbl_800CC664:
    lw      t6, 0x001C($sp)
    andi    t7, t6, 0x0020             # t7 = 00000000
    beq     t7, $zero, lbl_800CC67C
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA24C             # a0 = 8010A24C
lbl_800CC67C:
    lw      t8, 0x001C($sp)
    andi    t9, t8, 0x0040             # t9 = 00000000
    beq     t9, $zero, lbl_800CC694
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA254             # a0 = 8010A254
lbl_800CC694:
    lw      t0, 0x001C($sp)
    andi    t1, t0, 0x0080             # t1 = 00000000
    beq     t1, $zero, lbl_800CC6AC
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA260             # a0 = 8010A260
lbl_800CC6AC:
    lw      t2, 0x001C($sp)
    andi    t3, t2, 0x0100             # t3 = 00000000
    beq     t3, $zero, lbl_800CC6C4
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA268             # a0 = 8010A268
lbl_800CC6C4:
    lw      t4, 0x001C($sp)
    andi    t5, t4, 0x0200             # t5 = 00000000
    beq     t5, $zero, lbl_800CC6DC
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA274             # a0 = 8010A274
lbl_800CC6DC:
    lw      t6, 0x001C($sp)
    andi    t7, t6, 0x0400             # t7 = 00000000
    beq     t7, $zero, lbl_800CC6F4
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA280             # a0 = 8010A280
lbl_800CC6F4:
    lw      t8, 0x001C($sp)
    andi    t9, t8, 0x0800             # t9 = 00000000
    beq     t9, $zero, lbl_800CC70C
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA288             # a0 = 8010A288
lbl_800CC70C:
    lw      t0, 0x001C($sp)
    andi    t1, t0, 0x1000             # t1 = 00000000
    beq     t1, $zero, lbl_800CC724
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA290             # a0 = 8010A290
lbl_800CC724:
    lw      t2, 0x001C($sp)
    andi    t3, t2, 0x2000             # t3 = 00000000
    beq     t3, $zero, lbl_800CC73C
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA298             # a0 = 8010A298
lbl_800CC73C:
    lw      t4, 0x001C($sp)
    andi    t5, t4, 0x4000             # t5 = 00000000
    beq     t5, $zero, lbl_800CC754
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA2A0             # a0 = 8010A2A0
lbl_800CC754:
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA2A8             # a0 = 8010A2A8
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0xA2AC             # a0 = 8010A2AC
    jal     func_800015BC
    lw      a1, 0x0018($sp)
    lw      t6, 0x0018($sp)
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_800CC788
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA2C0             # a0 = 8010A2C0
lbl_800CC788:
    lw      t8, 0x0018($sp)
    andi    t9, t8, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_800CC7A0
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA2D0             # a0 = 8010A2D0
lbl_800CC7A0:
    lw      t0, 0x0018($sp)
    lui     a0, 0x8011                 # a0 = 80110000
    andi    t1, t0, 0x0004             # t1 = 00000000
    beql    t1, $zero, lbl_800CC7C0
    lw      t2, 0x0018($sp)
    jal     func_800015BC
    addiu   a0, a0, 0xA2D8             # a0 = 8010A2D8
    lw      t2, 0x0018($sp)
lbl_800CC7C0:
    lui     a0, 0x8011                 # a0 = 80110000
    andi    t3, t2, 0x0008             # t3 = 00000000
    beql    t3, $zero, lbl_800CC7DC
    lw      t4, 0x0018($sp)
    jal     func_800015BC
    addiu   a0, a0, 0xA2E0             # a0 = 8010A2E0
    lw      t4, 0x0018($sp)
lbl_800CC7DC:
    lui     a0, 0x8011                 # a0 = 80110000
    andi    t5, t4, 0x0010             # t5 = 00000000
    beql    t5, $zero, lbl_800CC7F8
    lw      t6, 0x0018($sp)
    jal     func_800015BC
    addiu   a0, a0, 0xA2EC             # a0 = 8010A2EC
    lw      t6, 0x0018($sp)
lbl_800CC7F8:
    lui     a0, 0x8011                 # a0 = 80110000
    andi    t7, t6, 0x0020             # t7 = 00000000
    beql    t7, $zero, lbl_800CC814
    lw      t8, 0x0018($sp)
    jal     func_800015BC
    addiu   a0, a0, 0xA2F8             # a0 = 8010A2F8
    lw      t8, 0x0018($sp)
lbl_800CC814:
    lui     a0, 0x8011                 # a0 = 80110000
    andi    t9, t8, 0x0040             # t9 = 00000000
    beql    t9, $zero, lbl_800CC830
    lw      t0, 0x0018($sp)
    jal     func_800015BC
    addiu   a0, a0, 0xA304             # a0 = 8010A304
    lw      t0, 0x0018($sp)
lbl_800CC830:
    lui     a0, 0x8011                 # a0 = 80110000
    andi    t1, t0, 0x0080             # t1 = 00000000
    beql    t1, $zero, lbl_800CC84C
    lw      t2, 0x0018($sp)
    jal     func_800015BC
    addiu   a0, a0, 0xA310             # a0 = 8010A310
    lw      t2, 0x0018($sp)
lbl_800CC84C:
    lui     a0, 0x8011                 # a0 = 80110000
    andi    t3, t2, 0x0100             # t3 = 00000000
    beql    t3, $zero, lbl_800CC868
    lw      t4, 0x0018($sp)
    jal     func_800015BC
    addiu   a0, a0, 0xA31C             # a0 = 8010A31C
    lw      t4, 0x0018($sp)
lbl_800CC868:
    lui     a0, 0x8011                 # a0 = 80110000
    andi    t5, t4, 0x0200             # t5 = 00000000
    beql    t5, $zero, lbl_800CC884
    lw      t6, 0x0018($sp)
    jal     func_800015BC
    addiu   a0, a0, 0xA328             # a0 = 8010A328
    lw      t6, 0x0018($sp)
lbl_800CC884:
    lui     a0, 0x8011                 # a0 = 80110000
    andi    t7, t6, 0x0400             # t7 = 00000000
    beq     t7, $zero, lbl_800CC89C
    nop
    jal     func_800015BC
    addiu   a0, a0, 0xA334             # a0 = 8010A334
lbl_800CC89C:
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA344             # a0 = 8010A344
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800CC8B8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800CC5C0
    nop
    jal     func_800D2B00
    addiu   a0, $zero, 0x0028          # a0 = 00000028
    jal     func_800D5A90
    addiu   a0, $zero, 0x4082          # a0 = 00004082
    jal     func_800CC5C0
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CC8F0:
# Perform Overlay Relocation
    addiu   $sp, $sp, 0xFE70           # $sp -= 0x190
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t6, 0x5420(t6)             # 80105420
    sw      s4, 0x0028($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    slti    $at, t6, 0x0003
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a2, $zero              # s1 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s8, 0x0038($sp)
    sw      s7, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s3, 0x0024($sp)
    bne     $at, $zero, lbl_800CC950
    sw      s2, 0x0020($sp)
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0xA350             # a0 = 8010A350
    or      a1, s4, $zero              # a1 = 00000000
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800015BC
    or      a3, s1, $zero              # a3 = 00000000
lbl_800CC950:
    sw      $zero, 0x0180($sp)
    sw      s4, 0x0184($sp)
    lw      t7, 0x0000(s0)             # 00000000
    or      s2, $zero, $zero           # s2 = 00000000
    or      s3, s0, $zero              # s3 = 00000000
    addu    t8, t7, s4
    sw      t8, 0x0188($sp)
    lw      t3, 0x0004(s0)             # 00000004
    lui     s8, 0xFFFF                 # s8 = FFFF0000
    lui     s7, 0x0F00                 # s7 = 0F000000
    addu    t4, t8, t3
    sw      t4, 0x018C($sp)
    lw      t1, 0x0010(s0)             # 00000010
    addiu   s6, $sp, 0x0064            # s6 = FFFFFED4
    addiu   s5, $sp, 0x00E4            # s5 = FFFFFF54
    beql    t1, $zero, lbl_800CCB8C
    lw      $ra, 0x003C($sp)
lbl_800CC994:
    lw      v0, 0x0014(s3)             # 00000014
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    srl     t5, v0, 30
    sll     t6, t5,  2
    and     t8, v0, $at
    addu    t7, $sp, t6
    lui     $at, 0x3F00                # $at = 3F000000
    lw      t7, 0x0180(t7)             # 00000180
    and     v1, v0, $at
    lui     $at, 0x0200                # $at = 02000000
    beq     v1, $at, lbl_800CC9EC
    addu    a0, t7, t8
    lui     $at, 0x0400                # $at = 04000000
    beq     v1, $at, lbl_800CCA38
    lui     $at, 0x0500                # $at = 05000000
    beq     v1, $at, lbl_800CCA84
    lui     $at, 0x0600                # $at = 06000000
    beql    v1, $at, lbl_800CCAC0
    lw      a3, 0x0000(a0)             # 00000000
    beq     $zero, $zero, lbl_800CCB7C
    addiu   s2, s2, 0x0001             # s2 = 00000001
lbl_800CC9EC:
    lw      a3, 0x0000(a0)             # 00000000
    lui     t5, 0x8010                 # t5 = 80100000
    and     t9, a3, s7
    bne     t9, $zero, lbl_800CCA10
    subu    t3, a3, s1
    addu    t4, t3, s4
    sw      t4, 0x0000(a0)             # 00000000
    beq     $zero, $zero, lbl_800CCB78
    lw      t1, 0x0010(s0)             # 00000010
lbl_800CCA10:
    lw      t5, 0x5420(t5)             # 80105420
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0xA370             # a0 = 8010A370
    slti    $at, t5, 0x0003
    bnel    $at, $zero, lbl_800CCB7C
    addiu   s2, s2, 0x0001             # s2 = 00000002
    jal     func_800015BC
    subu    a1, a3, s1
    beq     $zero, $zero, lbl_800CCB78
    lw      t1, 0x0010(s0)             # 00000010
lbl_800CCA38:
    lw      a3, 0x0000(a0)             # 00000000
    lui     $at, 0x03FF                # $at = 03FF0000
    ori     $at, $at, 0xFFFF           # $at = 03FFFFFF
    and     t6, a3, $at
    sll     t7, t6,  2
    lui     $at, 0x8000                # $at = 80000000
    or      t8, t7, $at                # t8 = 80000000
    subu    t9, t8, s1
    lui     $at, 0x0FFF                # $at = 0FFF0000
    ori     $at, $at, 0xFFFF           # $at = 0FFFFFFF
    addu    t3, t9, s4
    and     t4, t3, $at
    lui     $at, 0xFC00                # $at = FC000000
    srl     t5, t4,  2
    and     t6, a3, $at
    or      t7, t5, t6                 # t7 = 00000000
    sw      t7, 0x0000(a0)             # 00000000
    beq     $zero, $zero, lbl_800CCB78
    lw      t1, 0x0010(s0)             # 00000010
lbl_800CCA84:
    lw      t8, 0x0000(a0)             # 00000000
    srl     t9, t8, 16
    andi    t3, t9, 0x001F             # t3 = 00000000
    sll     t4, t3,  2
    addu    t5, s5, t4
    sw      a0, 0x0000(t5)             # 00000000
    lw      a3, 0x0000(a0)             # 00000000
    srl     t6, a3, 16
    andi    t7, t6, 0x001F             # t7 = 00000000
    sll     t8, t7,  2
    addu    t9, s6, t8
    sw      a3, 0x0000(t9)             # 00000000
    beq     $zero, $zero, lbl_800CCB78
    lw      t1, 0x0010(s0)             # 00000010
    lw      a3, 0x0000(a0)             # 00000000
lbl_800CCAC0:
    srl     v0, a3, 21
    andi    v0, v0, 0x001F             # v0 = 00000000
    sll     v0, v0,  2
    addu    t3, s5, v0
    lw      v1, 0x0000(t3)             # 00000000
    sll     a1, a3, 16
    sra     a1, a1, 16
    lw      a2, 0x0000(v1)             # 00000000
    addu    t2, s6, v0
    sll     t4, a2, 16
    addu    t0, a1, t4
    and     t5, t0, s7
    bne     t5, $zero, lbl_800CCB54
    lui     t4, 0x8010                 # t4 = 80100000
    lw      t6, 0x0000(t2)             # 00000000
    and     t4, a2, s8
    sll     t7, t6, 16
    addu    t8, a1, t7
    subu    t9, t8, s1
    addu    v0, t9, s4
    andi    t3, v0, 0x8000             # t3 = 00000000
    beq     t3, $zero, lbl_800CCB24
    srl     t5, v0, 16
    beq     $zero, $zero, lbl_800CCB28
    addiu   a1, $zero, 0x0001          # a1 = 00000001
lbl_800CCB24:
    or      a1, $zero, $zero           # a1 = 00000000
lbl_800CCB28:
    andi    t6, t5, 0xFFFF             # t6 = 00000000
    addu    t7, t6, a1
    or      t8, t4, t7                 # t8 = 80100000
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0000(a0)             # 00000000
    andi    t5, v0, 0xFFFF             # t5 = 00000000
    and     t3, t9, s8
    or      t6, t3, t5                 # t6 = 00000000
    sw      t6, 0x0000(a0)             # 00000000
    beq     $zero, $zero, lbl_800CCB78
    lw      t1, 0x0010(s0)             # 00000010
lbl_800CCB54:
    lw      t4, 0x5420(t4)             # 80105420
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0xA3B0             # a0 = 8010A3B0
    slti    $at, t4, 0x0003
    bnel    $at, $zero, lbl_800CCB7C
    addiu   s2, s2, 0x0001             # s2 = 00000003
    jal     func_800015BC
    subu    a1, t0, s1
    lw      t1, 0x0010(s0)             # 00000010
lbl_800CCB78:
    addiu   s2, s2, 0x0001             # s2 = 00000004
lbl_800CCB7C:
    sltu    $at, s2, t1
    bne     $at, $zero, lbl_800CC994
    addiu   s3, s3, 0x0004             # s3 = 00000004
    lw      $ra, 0x003C($sp)
lbl_800CCB8C:
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
    addiu   $sp, $sp, 0x0190           # $sp += 0x190


func_800CCBB8:
# Dynamic Linking Function (dlf), loads and links overlays
# A0 = File VROM Start
# A1 = File VROM End
# A2 = VRAM Start
# A3 = VRAM End
# SP+0x10 = Ram Start
    lui     v0, 0x8010                 # v0 = 80100000
    lw      v0, 0x5420(v0)             # 80105420
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0020($sp)
    slti    $at, v0, 0x0003
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x004C($sp)
    sw      a2, 0x0050($sp)
    bne     $at, $zero, lbl_800CCBF8
    sw      a3, 0x0054($sp)
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA3DC             # a0 = 8010A3DC
    lui     v0, 0x8010                 # v0 = 80100000
    lw      v0, 0x5420(v0)             # 80105420
lbl_800CCBF8:
    slti    $at, v0, 0x0003
    bne     $at, $zero, lbl_800CCC1C
    lw      a1, 0x0058($sp)
    lw      t6, 0x004C($sp)
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0xA414             # a0 = 8010A414
    subu    t7, t6, s0
    jal     func_800015BC
    addu    a2, a1, t7
lbl_800CCC1C:
    lw      t8, 0x004C($sp)
    lw      a0, 0x0058($sp)
    or      a1, s0, $zero              # a1 = 00000000
    subu    a2, t8, s0
    addu    t9, a0, a2
    jal     func_80000DF0
    sw      t9, 0x002C($sp)
    lw      t0, 0x002C($sp)
    lui     v0, 0x8010                 # v0 = 80100000
    lw      v0, 0x5420(v0)             # 80105420
    lw      t1, -0x0004(t0)            # FFFFFFFC
    lui     a0, 0x8011                 # a0 = 80110000
    slti    $at, v0, 0x0003
    bne     $at, $zero, lbl_800CCC7C
    subu    s0, t0, t1
    lw      t2, 0x000C(s0)             # 0000000C
    lw      a1, 0x0000(s0)             # 00000000
    lw      a2, 0x0004(s0)             # 00000004
    lw      a3, 0x0008(s0)             # 00000008
    addiu   a0, a0, 0xA448             # a0 = 8010A448
    jal     func_800015BC
    sw      t2, 0x0010($sp)
    lui     v0, 0x8010                 # v0 = 80100000
    lw      v0, 0x5420(v0)             # 80105420
lbl_800CCC7C:
    slti    $at, v0, 0x0003
    bne     $at, $zero, lbl_800CCC90
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800015BC
    addiu   a0, a0, 0xA47C             # a0 = 8010A47C
lbl_800CCC90:
    lw      a0, 0x0058($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800CC8F0
    lw      a2, 0x0050($sp)
    lw      a3, 0x000C(s0)             # 0000000C
    lui     t3, 0x8010                 # t3 = 80100000
    beql    a3, $zero, lbl_800CCCE4
    lw      t5, 0x0054($sp)
    lw      t3, 0x5420(t3)             # 80105420
    lw      a1, 0x002C($sp)
    lui     a0, 0x8011                 # a0 = 80110000
    slti    $at, t3, 0x0003
    bne     $at, $zero, lbl_800CCCD4
    addu    a2, a3, a1
    jal     func_800015BC
    addiu   a0, a0, 0xA494             # a0 = 8010A494
    lw      a3, 0x000C(s0)             # 0000000C
lbl_800CCCD4:
    lw      a0, 0x002C($sp)
    jal     func_80002E80              # bzero
    or      a1, a3, $zero              # a1 = 00000000
    lw      t5, 0x0054($sp)
lbl_800CCCE4:
    lw      t6, 0x0050($sp)
    lw      a0, 0x0058($sp)
    subu    s0, t5, t6
    jal     func_80003440              # osWritebackDCache
    or      a1, s0, $zero              # a1 = 00000000
    lw      a0, 0x0058($sp)
    jal     func_800041A0              # osInvalICache
    or      a1, s0, $zero              # a1 = 00000000
    lui     t7, 0x8010                 # t7 = 80100000
    lw      t7, 0x5420(t7)             # 80105420
    lui     a0, 0x8011                 # a0 = 80110000
    slti    $at, t7, 0x0003
    bnel    $at, $zero, lbl_800CCD28
    lw      $ra, 0x0024($sp)
    jal     func_800015BC
    addiu   a0, a0, 0xA4B8             # a0 = 8010A4B8
    lw      $ra, 0x0024($sp)
lbl_800CCD28:
    or      v0, s0, $zero              # v0 = 00000000
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_800CCD38:
# Possibly related to mapping an overlay to ram?
# Appears to allocate "Game Context" overlays
# A0 = ROM Start
# A1 = Rom End
# A2 = VRam start
# A3 = VRam end
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    jal     func_800CDA68
    subu    a0, a3, a2
    beq     v0, $zero, lbl_800CCD80
    or      v1, v0, $zero              # v1 = 00000000
    lw      a0, 0x0028($sp)
    lw      a1, 0x002C($sp)
    lw      a2, 0x0030($sp)
    lw      a3, 0x0034($sp)
    sw      v0, 0x0010($sp)
    jal     func_800CCBB8
    sw      v0, 0x0024($sp)
    lw      v1, 0x0024($sp)
lbl_800CCD80:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    or      v0, v1, $zero              # v0 = 00000000
    jr      $ra
    nop
    nop
    nop
    nop


func_800CCDA0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0018          # a1 = 00000018
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CCDC0:
    jr      $ra
    nop


func_800CCDC8:
    sh      $zero, 0x000C(a0)          # 0000000C
    sb      $zero, 0x000E(a0)          # 0000000E
    sb      $zero, 0x000F(a0)          # 0000000F
    jr      $ra
    sh      $zero, 0x0012(a0)          # 00000012


func_800CCDDC:
    sw      a1, 0x0004($sp)
    lhu     t6, 0x0000(a0)             # 00000000
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    xor     v0, t6, a1
    jr      $ra
    sltiu   v0, v0, 0x0001


func_800CCDF4:
    sw      a1, 0x0004($sp)
    lhu     t6, 0x0000(a0)             # 00000000
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    and     t7, t6, a1
    xor     v0, t7, a1
    jr      $ra
    sltiu   v0, v0, 0x0001


func_800CCE10:
    sw      a1, 0x0004($sp)
    lhu     t6, 0x000C(a0)             # 0000000C
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    and     t7, t6, a1
    xor     v0, t7, a1
    jr      $ra
    sltiu   v0, v0, 0x0001


func_800CCE2C:
    sw      a1, 0x0004($sp)
    lhu     t6, 0x0012(a0)             # 00000012
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    and     t7, t6, a1
    xor     v0, t7, a1
    jr      $ra
    sltiu   v0, v0, 0x0001


func_800CCE48:
    jr      $ra
    lhu     v0, 0x0000(a0)             # 00000000


func_800CCE50:
    jr      $ra
    lhu     v0, 0x000C(a0)             # 0000000C


func_800CCE58:
    jr      $ra
    lb      v0, 0x0002(a0)             # 00000002


func_800CCE60:
    jr      $ra
    lb      v0, 0x0003(a0)             # 00000003


func_800CCE68:
# SB A1, 0x0014(A0) / SB A2, 0x0015 (A0)
# A0 = ?
# A1 = ?
# A2 = ?
    sb      a1, 0x0014(a0)             # 00000014
    jr      $ra
    sb      a2, 0x0015(a0)             # 00000015


func_800CCE74:
    jr      $ra
    lb      v0, 0x0014(a0)             # 00000014


func_800CCE7C:
    jr      $ra
    lb      v0, 0x0015(a0)             # 00000015


func_800CCE84:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800CCE74
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CCEA4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800CCE7C
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CCEC4:
    jr      $ra
    lb      v0, 0x000E(a0)             # 0000000E


func_800CCECC:
    jr      $ra
    lb      v0, 0x000F(a0)             # 0000000F


func_800CCED4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    jal     func_800CCE58
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    jal     func_800CCE60
    sw      v0, 0x001C($sp)
    lw      v1, 0x001C($sp)
    slti    $at, v1, 0x0008
    bne     $at, $zero, lbl_800CCF18
    slti    $at, v1, 0x0043
    beq     $at, $zero, lbl_800CCF10
    nop
    beq     $zero, $zero, lbl_800CCF40
    addiu   a1, v1, 0xFFF9             # a1 = FFFFFFF9
lbl_800CCF10:
    beq     $zero, $zero, lbl_800CCF40
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
lbl_800CCF18:
    slti    $at, v1, 0xFFF9
    beq     $at, $zero, lbl_800CCF40
    or      a1, $zero, $zero           # a1 = 00000000
    slti    $at, v1, 0xFFBE
    bne     $at, $zero, lbl_800CCF38
    nop
    beq     $zero, $zero, lbl_800CCF40
    addiu   a1, v1, 0x0007             # a1 = 00000007
lbl_800CCF38:
    beq     $zero, $zero, lbl_800CCF40
    addiu   a1, $zero, 0xFFC4          # a1 = FFFFFFC4
lbl_800CCF40:
    slti    $at, v0, 0x0008
    bne     $at, $zero, lbl_800CCF64
    slti    $at, v0, 0x0043
    beq     $at, $zero, lbl_800CCF5C
    nop
    beq     $zero, $zero, lbl_800CCF8C
    addiu   a2, v0, 0xFFF9             # a2 = FFFFFFF9
lbl_800CCF5C:
    beq     $zero, $zero, lbl_800CCF8C
    addiu   a2, $zero, 0x003C          # a2 = 0000003C
lbl_800CCF64:
    slti    $at, v0, 0xFFF9
    beq     $at, $zero, lbl_800CCF8C
    or      a2, $zero, $zero           # a2 = 00000000
    slti    $at, v0, 0xFFBE
    bne     $at, $zero, lbl_800CCF84
    nop
    beq     $zero, $zero, lbl_800CCF8C
    addiu   a2, v0, 0x0007             # a2 = 00000007
lbl_800CCF84:
    beq     $zero, $zero, lbl_800CCF8C
    addiu   a2, $zero, 0xFFC4          # a2 = FFFFFFC4
lbl_800CCF8C:
    jal     func_800CCE68
    lw      a0, 0x0020($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop
    nop
    nop


func_800CCFB0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      a1, 0x0020($sp)
    jal     func_80003CC0              # osSetIntMask
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      a1, 0x0020($sp)
    lui     a0, 0x8013                 # a0 = 80130000
    or      a2, v0, $zero              # a2 = 00000000
    bne     a1, $zero, lbl_800CCFE0
    addiu   a0, a0, 0xBAA0             # a0 = 8012BAA0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
lbl_800CCFE0:
    jal     func_800CE060              # osMalloc?
    sw      a2, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_80003CC0              # osSetIntMask
    sw      v0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    lw      v0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800CD008:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    jal     func_80003CC0              # osSetIntMask
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      a1, 0x0020($sp)
    lui     a0, 0x8013                 # a0 = 80130000
    or      a2, v0, $zero              # a2 = 00000000
    beq     a1, $zero, lbl_800CD03C
    addiu   a0, a0, 0xBAA0             # a0 = 8012BAA0
    jal     func_800CE2B4              # osFree?
    sw      v0, 0x001C($sp)
    lw      a2, 0x001C($sp)
lbl_800CD03C:
    jal     func_80003CC0              # osSetIntMask
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800CD054:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s2, 0x001C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    or      s3, a3, $zero              # s3 = 00000000
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    jal     func_80003CC0              # osSetIntMask
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      a0, 0x0038($sp)
    lw      t6, 0x0034($sp)
    or      s0, s2, $zero              # s0 = 00000000
    sw      v0, 0x002C($sp)
    multu   t6, a0
    mflo    t7
    addu    s1, s2, t7
    sltu    $at, s2, s1
    beq     $at, $zero, lbl_800CD0C4
    or      s2, a0, $zero              # s2 = 00000000
lbl_800CD0AC:
    jalr    $ra, s3
    or      a0, s0, $zero              # a0 = 00000000
    addu    s0, s0, s2
    sltu    $at, s0, s1
    bne     $at, $zero, lbl_800CD0AC
    nop
lbl_800CD0C4:
    jal     func_80003CC0              # osSetIntMask
    lw      a0, 0x002C($sp)
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_800CD0E8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s2, 0x001C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    or      s3, a3, $zero              # s3 = 00000000
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    jal     func_80003CC0              # osSetIntMask
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      a0, 0x0038($sp)
    lw      t6, 0x0034($sp)
    or      s0, s2, $zero              # s0 = 00000000
    sw      v0, 0x002C($sp)
    multu   t6, a0
    mflo    t7
    addu    s1, s2, t7
    sltu    $at, s2, s1
    beq     $at, $zero, lbl_800CD15C
    or      s2, a0, $zero              # s2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
lbl_800CD144:
    jalr    $ra, s3
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    addu    s0, s0, s2
    sltu    $at, s0, s1
    bnel    $at, $zero, lbl_800CD144
    or      a0, s0, $zero              # a0 = 00000000
lbl_800CD15C:
    jal     func_80003CC0              # osSetIntMask
    lw      a0, 0x002C($sp)
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_800CD180:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s4, 0x0040($sp)
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s3, 0x003C($sp)
    sw      s2, 0x0038($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a3, $zero              # s3 = 00000000
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    sw      a2, 0x0058($sp)
    jal     func_80003CC0              # osSetIntMask
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    bne     s4, $zero, lbl_800CD1D4
    sw      v0, 0x004C($sp)
    lw      t6, 0x0058($sp)
    multu   s2, t6
    mflo    a0
    jal     func_800CCFB0
    nop
    or      s4, v0, $zero              # s4 = 00000000
lbl_800CD1D4:
    beq     s4, $zero, lbl_800CD238
    nop
    beq     s3, $zero, lbl_800CD238
    lw      t7, 0x0058($sp)
    multu   s2, t7
    or      s0, s4, $zero              # s0 = 00000000
    or      s2, t7, $zero              # s2 = 00000000
    mflo    t8
    addu    s1, s4, t8
    sltu    $at, s4, s1
    beq     $at, $zero, lbl_800CD238
    or      a0, s0, $zero              # a0 = 00000000
lbl_800CD204:
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    jalr    $ra, s3
    sw      $zero, 0x0020($sp)
    addu    s0, s0, s2
    sltu    $at, s0, s1
    bnel    $at, $zero, lbl_800CD204
    or      a0, s0, $zero              # a0 = 00000000
lbl_800CD238:
    jal     func_80003CC0              # osSetIntMask
    lw      a0, 0x004C($sp)
    lw      $ra, 0x0044($sp)
    or      v0, s4, $zero              # v0 = 00000000
    lw      s4, 0x0040($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    lw      s3, 0x003C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_800CD264:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s4, 0x0028($sp)
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a3, $zero              # s3 = 00000000
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a2, 0x0040($sp)
    jal     func_80003CC0              # osSetIntMask
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      v1, 0x0040($sp)
    beq     s4, $zero, lbl_800CD2F8
    sw      v0, 0x0034($sp)
    beql    s3, $zero, lbl_800CD2E8
    lw      t7, 0x0048($sp)
    multu   s2, v1
    or      s1, s4, $zero              # s1 = 00000000
    or      s2, v1, $zero              # s2 = 00000000
    mflo    t6
    addu    s0, s4, t6
    sltu    $at, s4, s0
    beq     $at, $zero, lbl_800CD2E4
    subu    s0, s0, s2
lbl_800CD2CC:
    or      a0, s0, $zero              # a0 = 00000000
    jalr    $ra, s3
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    sltu    $at, s1, s0
    bnel    $at, $zero, lbl_800CD2CC
    subu    s0, s0, s2
lbl_800CD2E4:
    lw      t7, 0x0048($sp)
lbl_800CD2E8:
    beq     t7, $zero, lbl_800CD2F8
    nop
    jal     func_800CD008
    or      a0, s4, $zero              # a0 = 00000000
lbl_800CD2F8:
    jal     func_80003CC0              # osSetIntMask
    lw      a0, 0x0034($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_800CD320:
# Checks state of 80105430
    lui     v0, 0x8010                 # v0 = 80100000
    lw      v0, 0x5430(v0)             # 80105430
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0014($sp)
    sw      s1, 0x0018($sp)
    lui     s0, 0x8010                 # s0 = 80100000
    sw      $ra, 0x001C($sp)
    addiu   s0, s0, 0x5430             # s0 = 80105430
    beq     v0, $zero, lbl_800CD374
    or      s1, $zero, $zero           # s1 = 00000000
    addu    s0, s0, v0
lbl_800CD34C:
    lw      v1, 0x0004(s0)             # 80105434
    beql    v1, $zero, lbl_800CD364
    lw      v0, 0x0000(s0)             # 80105430
    jalr    $ra, v1
    nop
    lw      v0, 0x0000(s0)             # 80105430
lbl_800CD364:
    sw      s1, 0x0000(s0)             # 80105430
    or      s1, s0, $zero              # s1 = 80105430
    bnel    v0, $zero, lbl_800CD34C
    addu    s0, s0, v0
lbl_800CD374:
    lw      $ra, 0x001C($sp)
    lui     $at, 0x8010                # $at = 80100000
    sw      s1, 0x5430($at)            # 80105430
    lw      s1, 0x0018($sp)
    lw      s0, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_800CD390:
# Allocates main heap
# Wrapper for 800CDD90 (A0 = 12BAA0)
# A0 = Block Start
# A1 = Block Size
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    or      a2, a1, $zero              # a2 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
    sw      a0, 0x0018($sp)
    sw      $ra, 0x0014($sp)
    lui     a0, 0x8013                 # a0 = 80130000
    jal     func_800CDD90
    addiu   a0, a0, 0xBAA0             # a0 = 8012BAA0
    jal     func_800CD320
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop


func_800CD3D0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0020($sp)
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sb      t6, 0x0000(a1)             # 00000000
    or      s0, a2, $zero              # s0 = 00000000
    sw      a1, 0x0024($sp)
    jal     func_800CFE20
    lw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_800CD408
    lw      a3, 0x0024($sp)
    beq     $zero, $zero, lbl_800CD4FC
    lw      $ra, 0x001C($sp)
lbl_800CD408:
    lbu     t7, 0x0000(a3)             # 00000000
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lw      a0, 0x0020($sp)
    bnel    t7, $at, lbl_800CD4F8
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_800D0DF0
    sw      a3, 0x0024($sp)
    beq     v0, $zero, lbl_800CD434
    lw      a3, 0x0024($sp)
    beq     $zero, $zero, lbl_800CD4F8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800CD434:
    lw      a0, 0x0020($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80002030              # osRecvMesg
    sw      a3, 0x0024($sp)
    jal     func_800D0E74
    or      a0, s0, $zero              # a0 = 00000000
    lw      a3, 0x0024($sp)
    or      v0, s0, $zero              # v0 = 00000000
    addiu   v1, $zero, 0x0005          # v1 = 00000005
    sb      $zero, 0x0000(a3)          # 00000000
    lbu     t8, 0x0003(s0)             # 00000003
    bne     t8, $zero, lbl_800CD488
    nop
    lhu     t9, 0x0000(s0)             # 00000000
    addiu   v1, $zero, 0x0005          # v1 = 00000005
    ori     t1, $zero, 0x0001          # t1 = 00000001
    bnel    v1, t9, lbl_800CD48C
    lbu     t2, 0x0007(v0)             # 00000007
    beq     $zero, $zero, lbl_800CD488
    sb      t1, 0x0000(a3)             # 00000000
lbl_800CD488:
    lbu     t2, 0x0007(v0)             # 00000007
lbl_800CD48C:
    bnel    t2, $zero, lbl_800CD4B0
    lbu     t6, 0x000B(v0)             # 0000000B
    lhu     t3, 0x0004(v0)             # 00000004
    bnel    v1, t3, lbl_800CD4B0
    lbu     t6, 0x000B(v0)             # 0000000B
    lbu     t4, 0x0000(a3)             # 00000000
    ori     t5, t4, 0x0002             # t5 = 00000002
    sb      t5, 0x0000(a3)             # 00000000
    lbu     t6, 0x000B(v0)             # 0000000B
lbl_800CD4B0:
    bnel    t6, $zero, lbl_800CD4D4
    lbu     t0, 0x000F(v0)             # 0000000F
    lhu     t7, 0x0008(v0)             # 00000008
    bnel    v1, t7, lbl_800CD4D4
    lbu     t0, 0x000F(v0)             # 0000000F
    lbu     t8, 0x0000(a3)             # 00000000
    ori     t9, t8, 0x0004             # t9 = 00000004
    sb      t9, 0x0000(a3)             # 00000000
    lbu     t0, 0x000F(v0)             # 0000000F
lbl_800CD4D4:
    bnel    t0, $zero, lbl_800CD4F8
    or      v0, $zero, $zero           # v0 = 00000000
    lhu     t1, 0x000C(v0)             # 0000000C
    bnel    v1, t1, lbl_800CD4F8
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     t2, 0x0000(a3)             # 00000000
    ori     t3, t2, 0x0008             # t3 = 00000008
    sb      t3, 0x0000(a3)             # 00000000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800CD4F8:
    lw      $ra, 0x001C($sp)
lbl_800CD4FC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop


func_800CD510:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    swc1    $f12, 0x0020($sp)
    jal     func_800CF470
    lwc1    $f12, 0x0020($sp)
    swc1    $f0, 0x001C($sp)
    jal     func_800D2CD0
    lwc1    $f12, 0x0020($sp)
    lw      $ra, 0x0014($sp)
    lwc1    $f4, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    div.s   $f0, $f4, $f0


func_800CD544:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800CD8C0
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CD564:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800CD8F8
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CD584:
    mtc1    $zero, $f5                 # $f5 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    c.lt.d  $f12, $f4
    nop
    bc1fl   lbl_800CD5B0
    mov.d   $f2, $f12
    neg.d   $f2, $f12
    jr      $ra
    mov.d   $f0, $f2
lbl_800CD5AC:
    mov.d   $f2, $f12
lbl_800CD5B0:
    jr      $ra
    mov.d   $f0, $f2


func_800CD5B8:
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    c.lt.s  $f12, $f4
    nop
    bc1fl   lbl_800CD5E0
    mov.s   $f2, $f12
    neg.s   $f2, $f12
    jr      $ra
    mov.s   $f0, $f2
lbl_800CD5DC:
    mov.s   $f2, $f12
lbl_800CD5E0:
    jr      $ra
    mov.s   $f0, $f2


func_800CD5E8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800CD9A0
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CD608:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800CD930
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CD628:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800CD968
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CD648:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    c.lt.s  $f16, $f12
    lui     $at, 0xBF80                # $at = BF800000
    bc1fl   lbl_800CD674
    mtc1    $at, $f4                   # $f4 = -1.00
    beq     $zero, $zero, lbl_800CD694
    div.s   $f12, $f16, $f12
    mtc1    $at, $f4                   # $f4 = -1.00
lbl_800CD674:
    or      v0, $zero, $zero           # v0 = 00000000
    c.lt.s  $f12, $f4
    nop
    bc1f    lbl_800CD694
    nop
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    beq     $zero, $zero, lbl_800CD694
    div.s   $f12, $f16, $f12
lbl_800CD694:
    lui     $at, 0x41C0                # $at = 41C00000
    mul.s   $f0, $f12, $f12
    mtc1    $at, $f14                  # $f14 = 24.00
    addiu   v1, $zero, 0x0018          # v1 = 00000018
lbl_800CD6A4:
    mul.s   $f18, $f14, $f14
    add.s   $f10, $f14, $f14
    addiu   v1, v1, 0xFFFC             # v1 = 00000014
    add.s   $f10, $f10, $f16
    mul.s   $f18, $f18, $f0
    sub.s   $f14, $f14, $f16
    mul.s   $f8, $f14, $f14
    add.s   $f10, $f10, $f2
    add.s   $f6, $f14, $f14
    mul.s   $f8, $f8, $f0
    div.s   $f2, $f18, $f10
    add.s   $f6, $f6, $f16
    sub.s   $f14, $f14, $f16
    mul.s   $f10, $f14, $f14
    add.s   $f6, $f6, $f2
    add.s   $f18, $f14, $f14
    mul.s   $f10, $f10, $f0
    div.s   $f2, $f8, $f6
    add.s   $f18, $f18, $f16
    sub.s   $f14, $f14, $f16
    mul.s   $f6, $f14, $f14
    add.s   $f18, $f18, $f2
    add.s   $f8, $f14, $f14
    mul.s   $f6, $f6, $f0
    div.s   $f2, $f10, $f18
    add.s   $f8, $f8, $f16
    sub.s   $f14, $f14, $f16
    add.s   $f8, $f8, $f2
    bne     v1, $zero, lbl_800CD6A4
    div.s   $f2, $f6, $f8
    blez    v0, lbl_800CD73C
    nop
    add.s   $f10, $f16, $f2
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f6, -0x5B10($at)          # 8010A4F0
    div.s   $f18, $f12, $f10
    jr      $ra
    sub.s   $f0, $f6, $f18
lbl_800CD73C:
    bgezl   v0, lbl_800CD760
    add.s   $f6, $f16, $f2
    add.s   $f4, $f16, $f2
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f8, -0x5B0C($at)          # 8010A4F4
    div.s   $f10, $f12, $f4
    jr      $ra
    sub.s   $f0, $f8, $f10
lbl_800CD75C:
    add.s   $f6, $f16, $f2
lbl_800CD760:
    div.s   $f0, $f12, $f6
    jr      $ra
    nop


func_800CD76C:
    mtc1    $zero, $f2                 # $f2 = 0.00
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sdc1    $f20, 0x0010($sp)
    c.eq.s  $f12, $f2
    mov.s   $f20, $f12
    sw      $ra, 0x001C($sp)
    bc1fl   lbl_800CD7A8
    c.eq.s  $f14, $f2
    c.eq.s  $f14, $f2
    nop
    bc1fl   lbl_800CD7A8
    c.eq.s  $f14, $f2
    beq     $zero, $zero, lbl_800CD84C
    mov.s   $f0, $f2
    c.eq.s  $f14, $f2
lbl_800CD7A8:
    nop
    bc1fl   lbl_800CD7DC
    c.lt.s  $f14, $f2
    c.lt.s  $f20, $f2
    lui     $at, 0x8011                # $at = 80110000
    bc1f    lbl_800CD7D0
    nop
    lui     $at, 0x8011                # $at = 80110000
    beq     $zero, $zero, lbl_800CD84C
    lwc1    $f0, -0x5B08($at)          # 8010A4F8
lbl_800CD7D0:
    beq     $zero, $zero, lbl_800CD84C
    lwc1    $f0, -0x5B04($at)          # 8010A4FC
    c.lt.s  $f14, $f2
lbl_800CD7DC:
    nop
    bc1f    lbl_800CD844
    nop
    c.lt.s  $f20, $f2
    nop
    bc1fl   lbl_800CD824
    div.s   $f8, $f20, $f14
    div.s   $f4, $f20, $f14
    cvt.d.s $f0, $f4
    abs.d   $f0, $f0
    jal     func_800CD648
    cvt.s.d $f12, $f0
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f6, -0x5B00($at)          # 8010A500
    sub.s   $f0, $f6, $f0
    beq     $zero, $zero, lbl_800CD84C
    neg.s   $f0, $f0
    div.s   $f8, $f20, $f14
lbl_800CD824:
    cvt.d.s $f0, $f8
    abs.d   $f0, $f0
    jal     func_800CD648
    cvt.s.d $f12, $f0
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f10, -0x5AFC($at)         # 8010A504
    beq     $zero, $zero, lbl_800CD84C
    sub.s   $f0, $f10, $f0
lbl_800CD844:
    jal     func_800CD648
    div.s   $f12, $f20, $f14
lbl_800CD84C:
    lw      $ra, 0x001C($sp)
    ldc1    $f20, 0x0010($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800CD860:
    mul.s   $f6, $f12, $f12
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sub.s   $f0, $f4, $f6
    jal     func_800CD76C
    sqrt.s  $f14, $f0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CD890:
# Wrapper for 800CD860 (subtracts result by 90 degrees)
# F12 = ?
# F0 = radians
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800CD860
    nop
    lw      $ra, 0x0014($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x5AF8($at)          # 8010A508
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    sub.s   $f0, $f4, $f0
    nop
    nop


func_800CD8C0:
# Floor f32
# F12 = Input
# F0 = Output
    floor.w.s $f12, $f12
    jr      $ra
    cvt.s.w $f0, $f12


func_800CD8CC:
# Floor f64
# F12 = Input
# F0 = Output
    floor.w.d $f12, $f12
    jr      $ra
    cvt.d.w $f0, $f12


func_800CD8D8:
# Floor f32
# F12 = Input
# V0 = Output
    floor.w.s $f4, $f12
    mfc1    v0, $f4
    jr      $ra
    nop


func_800CD8E8:
# Floor f64
# F12 = Input
# V0 = Output
    floor.w.d $f4, $f12
    mfc1    v0, $f4
    jr      $ra
    nop


func_800CD8F8:
# Ceiling f32
# F12 = Input
# F0 = Output
    ceil.w.s $f12, $f12
    jr      $ra
    cvt.s.w $f0, $f12


func_800CD904:
# Ceiling f64
# F12 = Input
# F0 = Output
    ceil.w.d $f12, $f12
    jr      $ra
    cvt.d.w $f0, $f12


func_800CD910:
# Ceiling f32
# F12 = Input
# V0 = Output
    ceil.w.s $f4, $f12
    mfc1    v0, $f4
    jr      $ra
    nop


func_800CD920:
# Ceiling f64
# F12 = Input
# V0 = Output
    ceil.w.d $f4, $f12
    mfc1    v0, $f4
    jr      $ra
    nop


func_800CD930:
# Round To Zero f32
# F12 = Input
# F0 = Output
    trunc.w.s $f12, $f12
    jr      $ra
    cvt.s.w $f0, $f12


func_800CD93C:
# Round To Zero f64
# F12 = Input
# F0 = Output
    trunc.w.d $f12, $f12
    jr      $ra
    cvt.d.w $f0, $f12


func_800CD948:
# Round To Zero f32
# F12 = Input
# V0 = Output
    trunc.w.s $f4, $f12
    mfc1    v0, $f4
    jr      $ra
    nop


func_800CD958:
# Round To Zero f64
# F12 = Input
# V0 = Output
    trunc.w.d $f4, $f12
    mfc1    v0, $f4
    jr      $ra
    nop


func_800CD968:
# Round f32
# F12 = Input
# F0 = Output
    round.w.s $f12, $f12
    jr      $ra
    cvt.s.w $f0, $f12


func_800CD974:
# Round f64
# F12 = Input
# F0 = Output
    round.w.d $f12, $f12
    jr      $ra
    cvt.d.w $f0, $f12


func_800CD980:
# Round f32
# F12 = Input
# V0 = Output
    round.w.s $f4, $f12
    mfc1    v0, $f4
    jr      $ra
    nop


func_800CD990:
# Round f64
# F12 = Input
# V0 = Output
    round.w.d $f4, $f12
    mfc1    v0, $f4
    jr      $ra
    nop


func_800CD9A0:
# Round f32 (+0.5 then floor)
# F12 = Input
# F0 = Output
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    nop
    add.s   $f0, $f12, $f4
    floor.w.s $f0, $f0
    jr      $ra
    cvt.s.w $f0, $f0


func_800CD9BC:
# Round f64 (+0.5 then floor)
# F12 = Input
# F0 = Output
    lui     $at, 0x3FE0                # $at = 3FE00000
    mtc1    $at, $f5                   # $f5 = 1.75
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    add.d   $f0, $f12, $f4
    floor.w.d $f0, $f0
    jr      $ra
    cvt.d.w $f0, $f0


func_800CD9DC:
# Round f32 (+0.5 then floor)
# F12 = Input
# V0 = Output
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    nop
    add.s   $f0, $f12, $f4
    floor.w.s $f0, $f0
    mfc1    v0, $f0
    jr      $ra
    nop


func_800CD9FC:
# Round f64 (+0.5 then floor)
# F12 = Input
# V0 = Output
    lui     $at, 0x3FE0                # $at = 3FE00000
    mtc1    $at, $f5                   # $f5 = 1.75
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    add.d   $f0, $f12, $f4
    floor.w.d $f0, $f0
    mfc1    v0, $f0
    jr      $ra
    nop


func_800CDA20:
# Allocates block to head of the main heap
# A0 = Allocate Size
# V0 = Allocate Start
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    jal     func_80003CC0              # osSetIntMask
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lui     a0, 0x8013                 # a0 = 80130000
    sw      v0, 0x001C($sp)
    addiu   a0, a0, 0xBAA0             # a0 = 8012BAA0
    jal     func_800CE060              # osMalloc?
    lw      a1, 0x0020($sp)
    sw      v0, 0x0018($sp)
    jal     func_80003CC0              # osSetIntMask
    lw      a0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    lw      v0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800CDA68:
# Allocates block to tail end of main heap
# A0 = Allocate Size
# V0 = Allocate Start
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    jal     func_80003CC0              # osSetIntMask
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lui     a0, 0x8013                 # a0 = 80130000
    sw      v0, 0x001C($sp)
    addiu   a0, a0, 0xBAA0             # a0 = 8012BAA0
    jal     func_800CE17C
    lw      a1, 0x0020($sp)
    sw      v0, 0x0018($sp)
    jal     func_80003CC0              # osSetIntMask
    lw      a0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    lw      v0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800CDAB0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    jal     func_80003CC0              # osSetIntMask
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lui     a0, 0x8013                 # a0 = 80130000
    sw      v0, 0x001C($sp)
    addiu   a0, a0, 0xBAA0             # a0 = 8012BAA0
    lw      a1, 0x0020($sp)
    jal     func_800CE514
    lw      a2, 0x0024($sp)
    sw      v0, 0x0020($sp)
    jal     func_80003CC0              # osSetIntMask
    lw      a0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    lw      v0, 0x0020($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800CDB00:
# Deallocates memory on main heap
# A0 = ptr to block to free (not the node)
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    jal     func_80003CC0              # osSetIntMask
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lui     a0, 0x8013                 # a0 = 80130000
    sw      v0, 0x001C($sp)
    addiu   a0, a0, 0xBAA0             # a0 = 8012BAA0
    jal     func_800CE2B4              # osFree?
    lw      a1, 0x0020($sp)
    jal     func_80003CC0              # osSetIntMask
    lw      a0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800CDB40:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    jal     func_80003CC0              # osSetIntMask
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      t6, 0x0028($sp)
    lw      t7, 0x002C($sp)
    lui     a0, 0x8013                 # a0 = 80130000
    sw      v0, 0x0024($sp)
    multu   t6, t7
    addiu   a0, a0, 0xBAA0             # a0 = 8012BAA0
    mflo    a1
    sw      a1, 0x0018($sp)
    jal     func_800CE060              # osMalloc?
    nop
    sw      v0, 0x0020($sp)
    jal     func_80003CC0              # osSetIntMask
    lw      a0, 0x0024($sp)
    lw      a0, 0x0020($sp)
    beql    a0, $zero, lbl_800CDBA8
    lw      $ra, 0x0014($sp)
    jal     func_80002E80              # bzero
    lw      a1, 0x0018($sp)
    lw      a0, 0x0020($sp)
    lw      $ra, 0x0014($sp)
lbl_800CDBA8:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    or      v0, a0, $zero              # v0 = 00000000
    jr      $ra
    nop


func_800CDBB8:
# Get Free Space Info (Wrapper for 800CE688)
# A0 = ptr to store total free space on heap?
# A0 = ptr to store total free space on heap?
# A1 = ptr to store total space allocated on heap
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      a0, 0x0018($sp)
    sw      $ra, 0x0014($sp)
    or      a3, a2, $zero              # a3 = 00000000
    lui     a0, 0x8013                 # a0 = 80130000
    lw      a2, 0x001C($sp)
    jal     func_800CE688
    addiu   a0, a0, 0xBAA0             # a0 = 8012BAA0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CDBF0:
# Wrapper for 800CE6FC (Test Memory?)
# A0 = 8012BAA0
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x8013                 # a0 = 80130000
    jal     func_800CE6FC
    addiu   a0, a0, 0xBAA0             # a0 = 8012BAA0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CDC14:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    or      a2, a1, $zero              # a2 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
    sw      a0, 0x0018($sp)
    sw      $ra, 0x0014($sp)
    lui     a0, 0x8013                 # a0 = 80130000
    jal     func_800CDD90
    addiu   a0, a0, 0xBAA0             # a0 = 8012BAA0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CDC44:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x8013                 # a0 = 80130000
    jal     func_800CDDD8
    addiu   a0, a0, 0xBAA0             # a0 = 8012BAA0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CDC68:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x8013                 # a0 = 80130000
    jal     func_800CDDF8
    addiu   a0, a0, 0xBAA0             # a0 = 8012BAA0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop


func_800CDC90:
# prng
# Pseudo-random number generator. Uses Numerical Recipes in C code with constants 0x19660D and 0x3C6EF35F.
# V0 = Seed Next
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0x5440             # a0 = 80105440
    lw      v1, 0x0000(a0)             # 80105440
    lui     $at, 0x0019                # $at = 00190000
    ori     $at, $at, 0x660D           # $at = 0019660D
    multu   v1, $at
    lui     $at, 0x3C6E                # $at = 3C6E0000
    ori     $at, $at, 0xF35F           # $at = 3C6EF35F
    mflo    v1
    addu    v0, v1, $at
    jr      $ra
    sw      v0, 0x0000(a0)             # 80105440


func_800CDCC0:
# Write RNG Seed (stored at 80105440)
# A0 = Seed Value
    lui     $at, 0x8010                # $at = 80100000
    jr      $ra
    sw      a0, 0x5440($at)            # 80105440


func_800CDCCC:
# Rand.Next() float
# Generates a random number between 0 inclusive and 1 exclusive
# F0 = returned value
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    jal     func_800CDC90              # prng
    nop
    lui     $at, 0x007F                # $at = 007F0000
    ori     $at, $at, 0xFFFF           # $at = 007FFFFF
    and     t6, v0, $at
    lui     $at, 0x3F80                # $at = 3F800000
    or      t7, t6, $at                # t7 = 3F800000
    sw      t7, 0x001C($sp)
    lwc1    $f4, 0x001C($sp)
    mtc1    $at, $f6                   # $f6 = 1.00
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    sub.s   $f2, $f4, $f6
    jr      $ra
    mov.s   $f0, $f2


func_800CDD10:
    jr      $ra
    sw      a1, 0x0000(a0)             # 00000000


func_800CDD18:
    lw      v1, 0x0000(a0)             # 00000000
    lui     $at, 0x0019                # $at = 00190000
    ori     $at, $at, 0x660D           # $at = 0019660D
    multu   v1, $at
    lui     $at, 0x3C6E                # $at = 3C6E0000
    ori     $at, $at, 0xF35F           # $at = 3C6EF35F
    mflo    v1
    addu    v0, v1, $at
    jr      $ra
    sw      v0, 0x0000(a0)             # 00000000


func_800CDD40:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    jal     func_800CDD18
    nop
    lui     $at, 0x007F                # $at = 007F0000
    ori     $at, $at, 0xFFFF           # $at = 007FFFFF
    and     t6, v0, $at
    lui     $at, 0x3F80                # $at = 3F800000
    or      t7, t6, $at                # t7 = 3F800000
    sw      t7, 0x001C($sp)
    lwc1    $f4, 0x001C($sp)
    mtc1    $at, $f6                   # $f6 = 1.00
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    sub.s   $f2, $f4, $f6
    jr      $ra
    mov.s   $f0, $f2
    nop
    nop
    nop


func_800CDD90:
# Creates Memory Free List with one node, and attaches it
# A0 = Free List Manager
# A1 = Start Address
# A2 = Size
    addiu   v0, a1, 0x000F             # v0 = 0000000F
    addiu   $at, $zero, 0xFFF0         # $at = FFFFFFF0
    and     v0, v0, $at
    subu    t6, v0, a1
    subu    a2, a2, t6
    and     a2, a2, $at
    addiu   t7, a2, 0xFFD0             # t7 = FFFFFFD0
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x7373          # t9 = 00007373
    sw      $zero, 0x0008(v0)          # 00000017
    sw      $zero, 0x000C(v0)          # 0000001B
    sw      t7, 0x0004(v0)             # 00000013
    sh      t8, 0x0002(v0)             # 00000011
    sh      t9, 0x0000(v0)             # 0000000F
    sw      v0, 0x0000(a0)             # 00000000
    sw      a1, 0x0004(a0)             # 00000004
    jr      $ra
    sw      a2, 0x0008(a0)             # 00000008


func_800CDDD8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CDDF8:
    lw      v0, 0x0004(a0)             # 00000004
    jr      $ra
    sltu    v0, $zero, v0


func_800CDE04:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    lw      t0, 0x0000(a0)             # 00000000
    addiu   t2, $zero, 0xFFF0          # t2 = FFFFFFF0
    addiu   t6, a1, 0x000F             # t6 = 0000000F
    or      t1, $zero, $zero           # t1 = 00000000
    beq     t0, $zero, lbl_800CDEE4
    and     a1, t6, t2
    lh      t8, 0x0002(t0)             # 00000002
lbl_800CDE2C:
    beql    t8, $zero, lbl_800CDEDC
    lw      t0, 0x0008(t0)             # 00000008
    lw      v0, 0x0004(t0)             # 00000004
    sltu    $at, v0, a1
    bne     $at, $zero, lbl_800CDED8
    addiu   t9, a1, 0x000F             # t9 = 0000000F
    and     v1, t9, t2
    addiu   v1, v1, 0x0030             # v1 = 00000030
    sltu    $at, v1, v0
    beq     $at, $zero, lbl_800CDE98
    addu    v0, t0, v1
    lw      t3, 0x0008(t0)             # 00000008
    sw      t0, 0x000C(v0)             # 0000000C
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t3, 0x0008(v0)             # 00000008
    lw      t4, 0x0004(t0)             # 00000004
    addiu   t7, $zero, 0x7373          # t7 = 00007373
    sh      t6, 0x0002(v0)             # 00000002
    subu    t5, t4, v1
    sw      t5, 0x0004(v0)             # 00000004
    sh      t7, 0x0000(v0)             # 00000000
    sw      v0, 0x0008(t0)             # 00000008
    sw      a1, 0x0004(t0)             # 00000004
    lw      a0, 0x0008(v0)             # 00000008
    beql    a0, $zero, lbl_800CDE9C
    sh      $zero, 0x0002(t0)          # 00000002
    sw      v0, 0x000C(a0)             # 0000000C
lbl_800CDE98:
    sh      $zero, 0x0002(t0)          # 00000002
lbl_800CDE9C:
    sw      a2, 0x0010(t0)             # 00000010
    sw      a3, 0x0014(t0)             # 00000014
    sw      t0, 0x001C($sp)
    jal     func_80003CA0              # osGetThreadId
    or      a0, $zero, $zero           # a0 = 00000000
    lw      t0, 0x001C($sp)
    sw      v0, 0x0018(t0)             # 00000018
    lw      t8, 0x0020($sp)
    jal     func_800048C0              # osGetTime
    sw      t8, 0x001C(t0)             # 0000001C
    lw      t0, 0x001C($sp)
    sw      v0, 0x0020(t0)             # 00000020
    sw      v1, 0x0024(t0)             # 00000024
    beq     $zero, $zero, lbl_800CDEE4
    addiu   t1, t0, 0x0030             # t1 = 00000030
lbl_800CDED8:
    lw      t0, 0x0008(t0)             # 00000008
lbl_800CDEDC:
    bnel    t0, $zero, lbl_800CDE2C
    lh      t8, 0x0002(t0)             # 00000002
lbl_800CDEE4:
    bne     t1, $zero, lbl_800CDF0C
    lui     v0, 0x8010                 # v0 = 80100000
    addiu   v0, v0, 0x5450             # v0 = 80105450
    lw      t9, 0x0000(v0)             # 80105450
    lw      t4, 0x0020($sp)
    addiu   t3, t9, 0x0001             # t3 = 00000001
    sw      t3, 0x0000(v0)             # 80105450
    lbu     t5, 0x000C(t4)             # 0000000C
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sb      t6, 0x000C(t4)             # 0000000C
lbl_800CDF0C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    or      v0, t1, $zero              # v0 = 00000030
    jr      $ra
    nop


func_800CDF20:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a2, 0x0028($sp)
    lw      t0, 0x0000(a0)             # 00000000
    addiu   t2, $zero, 0xFFF0          # t2 = FFFFFFF0
    addiu   t6, a1, 0x000F             # t6 = 0000000F
    lw      v0, 0x0008(t0)             # 00000008
    and     a1, t6, t2
    or      t1, $zero, $zero           # t1 = 00000000
    beq     v0, $zero, lbl_800CDF60
    addiu   t9, a1, 0x000F             # t9 = 0000000F
    or      t0, v0, $zero              # t0 = 00000000
lbl_800CDF54:
    lw      v0, 0x0008(v0)             # 00000008
    bnel    v0, $zero, lbl_800CDF54
    or      t0, v0, $zero              # t0 = 00000000
lbl_800CDF60:
    beq     t0, $zero, lbl_800CE024
    and     a0, t9, t2
    lh      t8, 0x0002(t0)             # 00000002
lbl_800CDF6C:
    beql    t8, $zero, lbl_800CE01C
    lw      t0, 0x000C(t0)             # 0000000C
    lw      v0, 0x0004(t0)             # 00000004
    sltu    $at, v0, a1
    bnel    $at, $zero, lbl_800CE01C
    lw      t0, 0x000C(t0)             # 0000000C
    addiu   a0, a0, 0x0030             # a0 = 00000030
    sltu    $at, a0, v0
    beq     $at, $zero, lbl_800CDFD4
    addu    t3, t0, v0
    lw      t4, 0x0008(t0)             # 00000008
    subu    v1, t3, a1
    addiu   t5, $zero, 0x7373          # t5 = 00007373
    sw      t0, 0x000C(v1)             # 0000000C
    sw      a1, 0x0004(v1)             # 00000004
    sh      t5, 0x0000(v1)             # 00000000
    sw      t4, 0x0008(v1)             # 00000008
    lw      t6, 0x0004(t0)             # 00000004
    sw      v1, 0x0008(t0)             # 00000008
    subu    t7, t6, a0
    sw      t7, 0x0004(t0)             # 00000004
    lw      a2, 0x0008(v1)             # 00000008
    or      t0, v1, $zero              # t0 = 00000000
    beq     a2, $zero, lbl_800CDFD4
    nop
    sw      v1, 0x000C(a2)             # 0000000C
lbl_800CDFD4:
    sh      $zero, 0x0002(t0)          # 00000002
    lw      t8, 0x0028($sp)
    sw      a3, 0x0014(t0)             # 00000014
    or      a0, $zero, $zero           # a0 = 00000000
    sw      t8, 0x0010(t0)             # 00000010
    jal     func_80003CA0              # osGetThreadId
    sw      t0, 0x001C($sp)
    lw      t0, 0x001C($sp)
    sw      v0, 0x0018(t0)             # 00000018
    lw      t9, 0x0020($sp)
    jal     func_800048C0              # osGetTime
    sw      t9, 0x001C(t0)             # 0000001C
    lw      t0, 0x001C($sp)
    sw      v0, 0x0020(t0)             # 00000020
    sw      v1, 0x0024(t0)             # 00000024
    beq     $zero, $zero, lbl_800CE024
    addiu   t1, t0, 0x0030             # t1 = 00000030
    lw      t0, 0x000C(t0)             # 0000000C
lbl_800CE01C:
    bnel    t0, $zero, lbl_800CDF6C
    lh      t8, 0x0002(t0)             # 00000002
lbl_800CE024:
    bne     t1, $zero, lbl_800CE04C
    lui     v0, 0x8010                 # v0 = 80100000
    addiu   v0, v0, 0x5450             # v0 = 80105450
    lw      t3, 0x0000(v0)             # 80105450
    lw      t5, 0x0020($sp)
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sw      t4, 0x0000(v0)             # 80105450
    lbu     t6, 0x000C(t5)             # 0000000C
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x000C(t5)             # 0000000C
lbl_800CE04C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    or      v0, t1, $zero              # v0 = 00000030
    jr      $ra
    nop


func_800CE060:
# osMalloc?
# Allocate memory on free list (head end)
# A0 = Free list reference pointer
# A1 = size to allocate
# V0 = ptr to allocated block
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    lw      a2, 0x0000(a0)             # 00000000
    addiu   t0, $zero, 0xFFF0          # t0 = FFFFFFF0
    addiu   t6, a1, 0x000F             # t6 = 0000000F
    or      a3, $zero, $zero           # a3 = 00000000
    beq     a2, $zero, lbl_800CE140
    and     a1, t6, t0
    lh      t8, 0x0002(a2)             # 00000002
lbl_800CE088:
    beql    t8, $zero, lbl_800CE138
    lw      a2, 0x0008(a2)             # 00000008
    lw      v0, 0x0004(a2)             # 00000004
    sltu    $at, v0, a1
    bne     $at, $zero, lbl_800CE134
    addiu   t9, a1, 0x000F             # t9 = 0000000F
    and     v1, t9, t0
    addiu   v1, v1, 0x0030             # v1 = 00000030
    sltu    $at, v1, v0
    beq     $at, $zero, lbl_800CE0F4
    addu    v0, a2, v1
    lw      t1, 0x0008(a2)             # 00000008
    sw      a2, 0x000C(v0)             # 0000000C
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t1, 0x0008(v0)             # 00000008
    lw      t2, 0x0004(a2)             # 00000004
    addiu   t5, $zero, 0x7373          # t5 = 00007373
    sh      t4, 0x0002(v0)             # 00000002
    subu    t3, t2, v1
    sw      t3, 0x0004(v0)             # 00000004
    sh      t5, 0x0000(v0)             # 00000000
    sw      v0, 0x0008(a2)             # 00000008
    sw      a1, 0x0004(a2)             # 00000004
    lw      a0, 0x0008(v0)             # 00000008
    beql    a0, $zero, lbl_800CE0F8
    sh      $zero, 0x0002(a2)          # 00000002
    sw      v0, 0x000C(a0)             # 0000000C
lbl_800CE0F4:
    sh      $zero, 0x0002(a2)          # 00000002
lbl_800CE0F8:
    sw      $zero, 0x0010(a2)          # 00000010
    sw      $zero, 0x0014(a2)          # 00000014
    sw      a2, 0x001C($sp)
    jal     func_80003CA0              # osGetThreadId
    or      a0, $zero, $zero           # a0 = 00000000
    lw      a2, 0x001C($sp)
    sw      v0, 0x0018(a2)             # 00000018
    lw      t6, 0x0020($sp)
    jal     func_800048C0              # osGetTime
    sw      t6, 0x001C(a2)             # 0000001C
    lw      a2, 0x001C($sp)
    sw      v0, 0x0020(a2)             # 00000020
    sw      v1, 0x0024(a2)             # 00000024
    beq     $zero, $zero, lbl_800CE140
    addiu   a3, a2, 0x0030             # a3 = 00000030
lbl_800CE134:
    lw      a2, 0x0008(a2)             # 00000008
lbl_800CE138:
    bnel    a2, $zero, lbl_800CE088
    lh      t8, 0x0002(a2)             # 00000002
lbl_800CE140:
    bne     a3, $zero, lbl_800CE168
    lui     v0, 0x8010                 # v0 = 80100000
    addiu   v0, v0, 0x5450             # v0 = 80105450
    lw      t7, 0x0000(v0)             # 80105450
    lw      t9, 0x0020($sp)
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sw      t8, 0x0000(v0)             # 80105450
    lbu     t1, 0x000C(t9)             # 0000000C
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sb      t2, 0x000C(t9)             # 0000000C
lbl_800CE168:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    or      v0, a3, $zero              # v0 = 00000030
    jr      $ra
    nop


func_800CE17C:
# Allocate memory on free list (tail end)
# A0 = Heap Reference Ptr
# A1 = Allocate Size
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    lw      a2, 0x0000(a0)             # 00000000
    addiu   t0, $zero, 0xFFF0          # t0 = FFFFFFF0
    addiu   t6, a1, 0x000F             # t6 = 0000000F
    lw      v0, 0x0008(a2)             # 00000008
    and     a1, t6, t0
    or      a3, $zero, $zero           # a3 = 00000000
    beq     v0, $zero, lbl_800CE1B8
    addiu   t9, a1, 0x000F             # t9 = 0000000F
    or      a2, v0, $zero              # a2 = 00000000
lbl_800CE1AC:
    lw      v0, 0x0008(v0)             # 00000008
    bnel    v0, $zero, lbl_800CE1AC
    or      a2, v0, $zero              # a2 = 00000000
lbl_800CE1B8:
    beq     a2, $zero, lbl_800CE278
    and     a0, t9, t0
    lh      t8, 0x0002(a2)             # 00000002
lbl_800CE1C4:
    beql    t8, $zero, lbl_800CE270
    lw      a2, 0x000C(a2)             # 0000000C
    lw      v0, 0x0004(a2)             # 00000004
    sltu    $at, v0, a1
    bnel    $at, $zero, lbl_800CE270
    lw      a2, 0x000C(a2)             # 0000000C
    addiu   a0, a0, 0x0030             # a0 = 00000030
    sltu    $at, a0, v0
    beq     $at, $zero, lbl_800CE22C
    addu    t1, a2, v0
    lw      t2, 0x0008(a2)             # 00000008
    subu    v1, t1, a1
    addiu   t3, $zero, 0x7373          # t3 = 00007373
    sw      a2, 0x000C(v1)             # 0000000C
    sw      a1, 0x0004(v1)             # 00000004
    sh      t3, 0x0000(v1)             # 00000000
    sw      t2, 0x0008(v1)             # 00000008
    lw      t4, 0x0004(a2)             # 00000004
    sw      v1, 0x0008(a2)             # 00000008
    subu    t5, t4, a0
    sw      t5, 0x0004(a2)             # 00000004
    lw      a3, 0x0008(v1)             # 00000008
    or      a2, v1, $zero              # a2 = 00000000
    beq     a3, $zero, lbl_800CE22C
    nop
    sw      v1, 0x000C(a3)             # 0000000C
lbl_800CE22C:
    sh      $zero, 0x0002(a2)          # 00000002
    sw      $zero, 0x0010(a2)          # 00000010
    sw      $zero, 0x0014(a2)          # 00000014
    sw      a2, 0x001C($sp)
    jal     func_80003CA0              # osGetThreadId
    or      a0, $zero, $zero           # a0 = 00000000
    lw      a2, 0x001C($sp)
    sw      v0, 0x0018(a2)             # 00000018
    lw      t6, 0x0020($sp)
    jal     func_800048C0              # osGetTime
    sw      t6, 0x001C(a2)             # 0000001C
    lw      a2, 0x001C($sp)
    sw      v0, 0x0020(a2)             # 00000020
    sw      v1, 0x0024(a2)             # 00000024
    beq     $zero, $zero, lbl_800CE278
    addiu   a3, a2, 0x0030             # a3 = 00000030
    lw      a2, 0x000C(a2)             # 0000000C
lbl_800CE270:
    bnel    a2, $zero, lbl_800CE1C4
    lh      t8, 0x0002(a2)             # 00000002
lbl_800CE278:
    bne     a3, $zero, lbl_800CE2A0
    lui     v0, 0x8010                 # v0 = 80100000
    addiu   v0, v0, 0x5450             # v0 = 80105450
    lw      t7, 0x0000(v0)             # 80105450
    lw      t9, 0x0020($sp)
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sw      t8, 0x0000(v0)             # 80105450
    lbu     t1, 0x000C(t9)             # 0000000C
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sb      t2, 0x000C(t9)             # 0000000C
lbl_800CE2A0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    or      v0, a3, $zero              # v0 = 00000030
    jr      $ra
    nop


func_800CE2B4:
# osFree?
# Marks a memory node as being free for re-use, and combines if next to free nodes
# A0 = Free list reference pointer
# A1 = pointer to block to free (not the node)
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    beq     a1, $zero, lbl_800CE3D4
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, -0x0030(a1)            # FFFFFFD0
    addiu   $at, $zero, 0x7373         # $at = 00007373
    addiu   a1, a1, 0xFFD0             # a1 = FFFFFFD0
    beq     t6, $at, lbl_800CE2E8
    lui     a0, 0x003F                 # a0 = 003F0000
    jal     func_80003CC0              # osSetIntMask
    ori     a0, a0, 0xFF01             # a0 = 003FFF01
    beq     $zero, $zero, lbl_800CE3D8
    lw      $ra, 0x0014($sp)
lbl_800CE2E8:
    lh      t7, 0x0002(a1)             # 00000002
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    or      a0, $zero, $zero           # a0 = 00000000
    beql    t7, $zero, lbl_800CE314
    sh      t8, 0x0002(a1)             # 00000002
    lui     a0, 0x003F                 # a0 = 003F0000
    jal     func_80003CC0              # osSetIntMask
    ori     a0, a0, 0xFF01             # a0 = 003FFF01
    beq     $zero, $zero, lbl_800CE3D8
    lw      $ra, 0x0014($sp)
    sh      t8, 0x0002(a1)             # 00000002
lbl_800CE314:
    sw      $zero, 0x0010(a1)          # 00000010
    sw      $zero, 0x0014(a1)          # 00000014
    sw      a3, 0x0028($sp)
    jal     func_80003CA0              # osGetThreadId
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lw      a3, 0x0028($sp)
    sw      v0, 0x0018(a1)             # 00000018
    jal     func_800048C0              # osGetTime
    sw      a3, 0x001C(a1)             # 0000001C
    lw      a1, 0x0018($sp)
    lw      a0, 0x0008(a1)             # 00000008
    sw      v0, 0x0020(a1)             # 00000020
    sw      v1, 0x0024(a1)             # 00000024
    beql    a0, $zero, lbl_800CE394
    lw      v1, 0x000C(a1)             # 0000000C
    lh      t9, 0x0002(a0)             # 00000002
    or      v0, a0, $zero              # v0 = 00000000
    beql    t9, $zero, lbl_800CE394
    lw      v1, 0x000C(a1)             # 0000000C
    lw      v1, 0x0008(a0)             # 00000008
    beql    v1, $zero, lbl_800CE378
    lw      t0, 0x0004(a1)             # 00000004
    sw      a1, 0x000C(v1)             # 0000000C
    lw      t0, 0x0004(a1)             # 00000004
lbl_800CE378:
    lw      t1, 0x0004(v0)             # 00000004
    addu    t2, t0, t1
    addiu   t3, t2, 0x0030             # t3 = 00000030
    sw      t3, 0x0004(a1)             # 00000004
    lw      t4, 0x0008(v0)             # 00000008
    sw      t4, 0x0008(a1)             # 00000008
    lw      v1, 0x000C(a1)             # 0000000C
lbl_800CE394:
    beql    v1, $zero, lbl_800CE3D8
    lw      $ra, 0x0014($sp)
    lh      t5, 0x0002(v1)             # 00000002
    beql    t5, $zero, lbl_800CE3D8
    lw      $ra, 0x0014($sp)
    lw      t6, 0x0004(v1)             # 00000004
    lw      t7, 0x0004(a1)             # 00000004
    addu    t8, t6, t7
    addiu   t9, t8, 0x0030             # t9 = 00000030
    sw      t9, 0x0004(v1)             # 00000004
    lw      t0, 0x0008(a1)             # 00000008
    sw      t0, 0x0008(v1)             # 00000008
    lw      a0, 0x0008(a1)             # 00000008
    beql    a0, $zero, lbl_800CE3D8
    lw      $ra, 0x0014($sp)
    sw      v1, 0x000C(a0)             # 0000000C
lbl_800CE3D4:
    lw      $ra, 0x0014($sp)
lbl_800CE3D8:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_800CE3E4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    beq     a1, $zero, lbl_800CE504
    sw      a1, 0x002C($sp)
    lh      t7, -0x0030(a1)            # FFFFFFD0
    addiu   $at, $zero, 0x7373         # $at = 00007373
    addiu   a1, a1, 0xFFD0             # a1 = FFFFFFD0
    beq     t7, $at, lbl_800CE41C
    lui     a0, 0x003F                 # a0 = 003F0000
    jal     func_80003CC0              # osSetIntMask
    ori     a0, a0, 0xFF01             # a0 = 003FFF01
    beq     $zero, $zero, lbl_800CE508
    lw      $ra, 0x0014($sp)
lbl_800CE41C:
    lh      t8, 0x0002(a1)             # 00000002
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    or      a0, $zero, $zero           # a0 = 00000000
    beql    t8, $zero, lbl_800CE448
    sh      t9, 0x0002(a1)             # 00000002
    lui     a0, 0x003F                 # a0 = 003F0000
    jal     func_80003CC0              # osSetIntMask
    ori     a0, a0, 0xFF01             # a0 = 003FFF01
    beq     $zero, $zero, lbl_800CE508
    lw      $ra, 0x0014($sp)
    sh      t9, 0x0002(a1)             # 00000002
lbl_800CE448:
    sw      a2, 0x0010(a1)             # 00000010
    sw      a3, 0x0014(a1)             # 00000014
    jal     func_80003CA0              # osGetThreadId
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    sw      v0, 0x0018(a1)             # 00000018
    lw      t0, 0x0028($sp)
    jal     func_800048C0              # osGetTime
    sw      t0, 0x001C(a1)             # 0000001C
    lw      a1, 0x0018($sp)
    lw      a0, 0x0008(a1)             # 00000008
    sw      v0, 0x0020(a1)             # 00000020
    sw      v1, 0x0024(a1)             # 00000024
    beql    a0, $zero, lbl_800CE4C4
    lw      v1, 0x000C(a1)             # 0000000C
    lh      t1, 0x0002(a0)             # 00000002
    or      v0, a0, $zero              # v0 = 00000000
    beql    t1, $zero, lbl_800CE4C4
    lw      v1, 0x000C(a1)             # 0000000C
    lw      v1, 0x0008(a0)             # 00000008
    beql    v1, $zero, lbl_800CE4A8
    lw      t2, 0x0004(a1)             # 00000004
    sw      a1, 0x000C(v1)             # 0000000C
    lw      t2, 0x0004(a1)             # 00000004
lbl_800CE4A8:
    lw      t3, 0x0004(v0)             # 00000004
    addu    t4, t2, t3
    addiu   t5, t4, 0x0030             # t5 = 00000030
    sw      t5, 0x0004(a1)             # 00000004
    lw      t6, 0x0008(v0)             # 00000008
    sw      t6, 0x0008(a1)             # 00000008
    lw      v1, 0x000C(a1)             # 0000000C
lbl_800CE4C4:
    beql    v1, $zero, lbl_800CE508
    lw      $ra, 0x0014($sp)
    lh      t7, 0x0002(v1)             # 00000002
    beql    t7, $zero, lbl_800CE508
    lw      $ra, 0x0014($sp)
    lw      t8, 0x0004(v1)             # 00000004
    lw      t9, 0x0004(a1)             # 00000004
    addu    t0, t8, t9
    addiu   t1, t0, 0x0030             # t1 = 00000030
    sw      t1, 0x0004(v1)             # 00000004
    lw      t2, 0x0008(a1)             # 00000008
    sw      t2, 0x0008(v1)             # 00000008
    lw      a0, 0x0008(a1)             # 00000008
    beql    a0, $zero, lbl_800CE508
    lw      $ra, 0x0014($sp)
    sw      v1, 0x000C(a0)             # 0000000C
lbl_800CE504:
    lw      $ra, 0x0014($sp)
lbl_800CE508:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_800CE514:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      a0, 0x0038($sp)
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lui     a0, 0x003F                 # a0 = 003F0000
    or      s0, a1, $zero              # s0 = 00000000
    ori     a0, a0, 0xFF01             # a0 = 003FFF01
    jal     func_80003CC0              # osSetIntMask
    sw      a2, 0x0040($sp)
    bne     s0, $zero, lbl_800CE554
    lw      a3, 0x0040($sp)
    lw      a0, 0x0038($sp)
    jal     func_800CE060              # osMalloc?
    or      a1, a3, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_800CE62C
    or      s0, v0, $zero              # s0 = 00000000
lbl_800CE554:
    bne     a3, $zero, lbl_800CE570
    addiu   $at, $zero, 0xFFF0         # $at = FFFFFFF0
    lw      a0, 0x0038($sp)
    jal     func_800CE2B4              # osFree?
    or      a1, s0, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_800CE62C
    or      s0, $zero, $zero           # s0 = 00000000
lbl_800CE570:
    addiu   t0, s0, 0xFFD0             # t0 = FFFFFFD0
    lw      v0, 0x0004(t0)             # FFFFFFD4
    addiu   a3, a3, 0x000F             # a3 = 0000000F
    and     a3, a3, $at
    beq     a3, v0, lbl_800CE62C
    sltu    $at, v0, a3
    beq     $at, $zero, lbl_800CE62C
    nop
    lw      a1, 0x0008(t0)             # FFFFFFD8
    subu    v1, a3, v0
    lw      a0, 0x0038($sp)
    beql    a1, $zero, lbl_800CE5F8
    or      a1, a3, $zero              # a1 = 0000000F
    lh      t6, 0x0002(a1)             # 00000011
    beql    t6, $zero, lbl_800CE5F8
    or      a1, a3, $zero              # a1 = 0000000F
    lw      v0, 0x0004(a1)             # 00000013
    addiu   a2, $zero, 0x0030          # a2 = 00000030
    sltu    $at, v0, v1
    bnel    $at, $zero, lbl_800CE5F8
    or      a1, a3, $zero              # a1 = 0000000F
    lw      a0, 0x0008(a1)             # 00000017
    subu    t7, v0, v1
    sw      t7, 0x0004(a1)             # 00000013
    beq     a0, $zero, lbl_800CE5DC
    addu    t8, a1, v1
    sw      t8, 0x000C(a0)             # 0000000C
lbl_800CE5DC:
    addu    a0, a1, v1
    sw      a0, 0x0008(t0)             # FFFFFFD8
    jal     func_800D5E60
    sw      a3, 0x0004(t0)             # FFFFFFD4
    beq     $zero, $zero, lbl_800CE62C
    nop
    or      a1, a3, $zero              # a1 = 00000000
lbl_800CE5F8:
    jal     func_800CE060              # osMalloc?
    sw      t0, 0x0020($sp)
    lw      t0, 0x0020($sp)
    beq     v0, $zero, lbl_800CE628
    sw      v0, 0x0030($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_800D2350
    lw      a2, 0x0004(t0)             # 00000004
    lw      a0, 0x0038($sp)
    jal     func_800CE2B4              # osFree?
    or      a1, s0, $zero              # a1 = 00000000
lbl_800CE628:
    lw      s0, 0x0030($sp)
lbl_800CE62C:
    bne     s0, $zero, lbl_800CE654
    lui     v0, 0x8010                 # v0 = 80100000
    addiu   v0, v0, 0x5450             # v0 = 80105450
    lw      t9, 0x0000(v0)             # 80105450
    lw      v1, 0x0038($sp)
    addiu   t1, t9, 0x0001             # t1 = 00000001
    sw      t1, 0x0000(v0)             # 80105450
    lbu     t2, 0x000C(v1)             # 0000000C
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sb      t3, 0x000C(v1)             # 0000000C
lbl_800CE654:
    lw      $ra, 0x001C($sp)
    or      v0, s0, $zero              # v0 = 00000000
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_800CE668:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800CE514
    sw      a3, 0x0024($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CE688:
# Get Free Space Info
# Locates all allocated and free memory within free list
# A0 = Free List Handle ptr
# A1 = int*, total free space on heap?
# A2 = int*, total free space on heap
# A3 = int*, total allocated space on heap, not factoring free list nodes
    sw      $zero, 0x0000(a1)          # 00000000
    sw      $zero, 0x0000(a2)          # 00000000
    sw      $zero, 0x0000(a3)          # 00000000
    lw      v0, 0x0000(a0)             # 00000000
    beq     v0, $zero, lbl_800CE6F4
    nop
    lh      t6, 0x0002(v0)             # 00000002
lbl_800CE6A4:
    beql    t6, $zero, lbl_800CE6DC
    lw      t1, 0x0000(a3)             # 00000000
    lw      t7, 0x0000(a2)             # 00000000
    lw      t8, 0x0004(v0)             # 00000004
    addu    t9, t7, t8
    sw      t9, 0x0000(a2)             # 00000000
    lw      t0, 0x0000(a1)             # 00000000
    lw      v1, 0x0004(v0)             # 00000004
    sltu    $at, t0, v1
    beql    $at, $zero, lbl_800CE6EC
    lw      v0, 0x0008(v0)             # 00000008
    beq     $zero, $zero, lbl_800CE6E8
    sw      v1, 0x0000(a1)             # 00000000
    lw      t1, 0x0000(a3)             # 00000000
lbl_800CE6DC:
    lw      t2, 0x0004(v0)             # 00000004
    addu    t3, t1, t2
    sw      t3, 0x0000(a3)             # 00000000
lbl_800CE6E8:
    lw      v0, 0x0008(v0)             # 00000008
lbl_800CE6EC:
    bnel    v0, $zero, lbl_800CE6A4
    lh      t6, 0x0002(v0)             # 00000002
lbl_800CE6F4:
    jr      $ra
    nop


func_800CE6FC:
# Verify Free List Integrity
# A0 = Free List Handle ptr
# V0 = 1 if valid, else 0
    lw      v0, 0x0000(a0)             # 00000000
    addiu   v1, $zero, 0x7373          # v1 = 00007373
    beql    v0, $zero, lbl_800CE730
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t6, 0x0000(v0)             # 00000000
lbl_800CE710:
    beql    v1, t6, lbl_800CE724
    lw      v0, 0x0008(v0)             # 00000008
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800CE720:
    lw      v0, 0x0008(v0)             # 00000009
lbl_800CE724:
    bnel    v0, $zero, lbl_800CE710
    lh      t6, 0x0000(v0)             # 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800CE730:
    jr      $ra
    nop


func_800CE738:
    jr      $ra
    lbu     v0, 0x000C(a0)             # 0000000C


func_800CE740:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800D2350
    sw      a2, 0x0020($sp)
    lw      $ra, 0x0014($sp)
    lw      t6, 0x0020($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    addu    v0, v0, t6


func_800CE764:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a0, 0x0018($sp)
    or      a3, a2, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     a0, 0x800D                 # a0 = 800D0000
    addiu   a0, a0, 0xE740             # a0 = 800CE740
    jal     func_800D1D00
    lw      a1, 0x0018($sp)
    bltz    v0, lbl_800CE7A0
    or      v1, v0, $zero              # v1 = 00000000
    lw      t6, 0x0018($sp)
    addu    t7, t6, v0
    sb      $zero, 0x0000(t7)          # 00000000
lbl_800CE7A0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    or      v0, v1, $zero              # v0 = 00000000
    jr      $ra
    nop


func_800CE7B4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a0, 0x0020($sp)
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    lui     a0, 0x800D                 # a0 = 800D0000
    addiu   a0, a0, 0xE740             # a0 = 800CE740
    addiu   a3, $sp, 0x0028            # a3 = 00000008
    lw      a2, 0x0024($sp)
    jal     func_800D1D00
    lw      a1, 0x0020($sp)
    bltz    v0, lbl_800CE7F8
    or      v1, v0, $zero              # v1 = 00000000
    lw      t6, 0x0020($sp)
    addu    t7, t6, v0
    sb      $zero, 0x0000(t7)          # 00000000
lbl_800CE7F8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    or      v0, v1, $zero              # v0 = 00000000
    jr      $ra
    nop
    nop


func_800CE810:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a2, $zero              # a3 = 00000000
    lw      a2, 0x001C($sp)
    jal     func_800D1D00
    lw      a0, 0x0000(a0)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CE844:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0028($sp)
    sw      a1, 0x0024($sp)
    sw      a3, 0x002C($sp)
    jal     func_800CE810
    addiu   a2, $sp, 0x0028            # a2 = 00000008
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800CE870:
    andi    v1, a2, 0x00FF             # v1 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    sw      a2, 0x0008($sp)
    blez    v1, lbl_800CE8D0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800CE884:
    sll     t7, v0,  7
    addiu   a0, a0, 0x0001             # a0 = 00000001
    addu    a2, a3, t7
    or      a1, $zero, $zero           # a1 = 00000000
lbl_800CE894:
    sll     t9, a1,  1
    addiu   a1, a1, 0x0001             # a1 = 00000001
    lbu     t8, 0x0000(a0)             # 00000001
    andi    t1, a1, 0x00FF             # t1 = 00000001
    slti    $at, t1, 0x0040
    addu    t0, a2, t9
    or      a1, t1, $zero              # a1 = 00000001
    addiu   a0, a0, 0x0001             # a0 = 00000002
    bne     $at, $zero, lbl_800CE894
    sh      t8, 0x0000(t0)             # 00000000
    addiu   v0, v0, 0x0001             # v0 = 00000001
    andi    t2, v0, 0x00FF             # t2 = 00000001
    slt     $at, t2, v1
    bne     $at, $zero, lbl_800CE884
    or      v0, t2, $zero              # v0 = 00000001
lbl_800CE8D0:
    jr      $ra
    nop


func_800CE8D8:
    addiu   $sp, $sp, 0xFFF8           # $sp -= 0x8
    sw      s0, 0x0004($sp)
    or      s0, a1, $zero              # s0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_800CE8F4:
    addu    a1, a3, a0
    lbu     t6, -0x0001(a1)            # FFFFFFFF
    blez    t6, lbl_800CE930
lbl_800CE900:
    addu    t7, s0, v1
    sb      v0, 0x0000(t7)             # 00000000
    lbu     t2, -0x0001(a1)            # FFFFFFFF
    addiu   a2, a2, 0x0001             # a2 = 00000002
    sll     t0, a2, 16
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sra     a2, t0, 16
    sll     t8, v1, 16
    slt     $at, t2, a2
    beq     $at, $zero, lbl_800CE900
    sra     v1, t8, 16
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_800CE930:
    addiu   v0, v0, 0x0001             # v0 = 00000002
    andi    a3, v0, 0x00FF             # a3 = 00000002
    slti    $at, a3, 0x0011
    bne     $at, $zero, lbl_800CE8F4
    or      v0, a3, $zero              # v0 = 00000002
    addu    t4, s0, v1
    sb      $zero, 0x0000(t4)          # 00000000
    lw      s0, 0x0004($sp)
    addiu   $sp, $sp, 0x0008           # $sp += 0x8
    jr      $ra
    or      v0, v1, $zero              # v0 = 00000001


func_800CE95C:
    lbu     a2, 0x0000(a0)             # 00000000
    or      v1, $zero, $zero           # v1 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    or      a3, a2, $zero              # a3 = 00000000
lbl_800CE96C:
    sll     t6, v1,  1
lbl_800CE970:
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     t8, v1, 16
    sra     v1, t8, 16
    addu    t7, a1, t6
    sh      v0, 0x0000(t7)             # 00000000
    addu    t2, v1, a0
    lbu     t0, 0x0000(t2)             # 00000000
    addiu   v0, v0, 0x0001             # v0 = 00000001
    andi    t1, v0, 0xFFFF             # t1 = 00000001
    beq     a3, t0, lbl_800CE96C
    or      v0, t1, $zero              # v0 = 00000001
    beq     t0, $zero, lbl_800CE9C0
lbl_800CE9A0:
    addiu   a2, a2, 0x0001             # a2 = 00000001
    andi    a3, a2, 0x00FF             # a3 = 00000001
    sll     t3, v0,  1
    andi    v0, t3, 0xFFFF             # v0 = 00000000
    bne     t0, a3, lbl_800CE9A0
    or      a2, a3, $zero              # a2 = 00000001
    beq     $zero, $zero, lbl_800CE970
    sll     t6, v1,  1
lbl_800CE9C0:
    jr      $ra
    or      v0, v1, $zero              # v0 = 00000001


func_800CE9C8:
    addiu   $sp, $sp, 0xFFF8           # $sp -= 0x8
    sw      s0, 0x0004($sp)
    or      s0, a2, $zero              # s0 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      v1, $zero, $zero           # v1 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    ori     t0, $zero, 0xFFFF          # t0 = 0000FFFF
lbl_800CE9E4:
    addu    a1, v0, a0
    lbu     t6, 0x0000(a1)             # 00000000
    sll     t9, v0,  1
    addu    t7, a3, v0
    beq     t6, $zero, lbl_800CEA48
    addu    t1, a3, t9
    sll     t9, v1,  1
    sb      v1, 0x0000(t7)             # 00000000
    addu    t1, s0, t9
    lhu     t2, 0x0000(t1)             # 00000000
    sll     t8, v0,  1
    addu    a2, a3, t8
    sh      t2, 0x0010(a2)             # 00000010
    lbu     t3, 0x0000(a1)             # 00000000
    addu    v1, v1, t3
    addiu   v1, v1, 0xFFFF             # v1 = FFFFFFFF
    andi    t4, v1, 0xFFFF             # t4 = 0000FFFF
    sll     t5, t4,  1
    addu    t6, s0, t5
    lhu     t7, 0x0000(t6)             # 00000000
    addiu   v1, t4, 0x0001             # v1 = 00010000
    andi    t8, v1, 0xFFFF             # t8 = 00000000
    or      v1, t8, $zero              # v1 = 00000000
    beq     $zero, $zero, lbl_800CEA4C
    sh      t7, 0x0030(a2)             # 00000030
lbl_800CEA48:
    sh      t0, 0x0030(t1)             # 00000030
lbl_800CEA4C:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    andi    t2, v0, 0x00FF             # t2 = 00000001
    slti    $at, t2, 0x0010
    bne     $at, $zero, lbl_800CE9E4
    or      v0, t2, $zero              # v0 = 00000001
    lw      s0, 0x0004($sp)
    addiu   $sp, $sp, 0x0008           # $sp += 0x8
    jr      $ra
    or      v0, v1, $zero              # v0 = 00000000


func_800CEA70:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    sw      a0, 0x0020($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    jal     func_800CE8D8
    or      a1, a2, $zero              # a1 = 00000000
    sll     v1, v0, 16
    sra     t6, v1, 16
    beq     v0, $zero, lbl_800CEAC8
    or      v1, t6, $zero              # v1 = 00000000
    lbu     a0, 0x0033($sp)
    slti    $at, v0, 0x0101
    beq     a0, $zero, lbl_800CEAB8
    nop
    beq     $at, $zero, lbl_800CEAC8
    nop
lbl_800CEAB8:
    bne     a0, $zero, lbl_800CEAD0
    slti    $at, v0, 0x0011
    bnel    $at, $zero, lbl_800CEAD4
    lw      a0, 0x0028($sp)
lbl_800CEAC8:
    beq     $zero, $zero, lbl_800CEB1C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800CEAD0:
    lw      a0, 0x0028($sp)
lbl_800CEAD4:
    lw      a1, 0x002C($sp)
    jal     func_800CE95C
    sh      v1, 0x001E($sp)
    lh      v1, 0x001E($sp)
    lw      a0, 0x0020($sp)
    lw      a1, 0x0024($sp)
    beq     v0, v1, lbl_800CEAFC
    lw      a2, 0x002C($sp)
    beq     $zero, $zero, lbl_800CEB1C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800CEAFC:
    jal     func_800CE9C8
    sh      v1, 0x001E($sp)
    lh      v1, 0x001E($sp)
    beql    v1, v0, lbl_800CEB1C
    or      v0, v1, $zero              # v0 = 00000000
    beq     $zero, $zero, lbl_800CEB1C
    or      v0, $zero, $zero           # v0 = 00000000
    or      v0, v1, $zero              # v0 = 00000000
lbl_800CEB1C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800CEB2C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s4, 0x002C($sp)
    lbu     s4, 0x0053($sp)
    sw      s6, 0x0034($sp)
    sw      s5, 0x0030($sp)
    sw      s3, 0x0028($sp)
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    or      s5, a2, $zero              # s5 = 00000000
    or      s6, a3, $zero              # s6 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s7, 0x0038($sp)
    sw      s2, 0x0024($sp)
    blez    s4, lbl_800CEBD4
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s7, $zero, 0x0054          # s7 = 00000054
lbl_800CEB74:
    multu   s1, s7
    lbu     v0, 0x0000(s0)             # 00000000
    addiu   s0, s0, 0x0001             # s0 = 00000001
    or      a0, s0, $zero              # a0 = 00000001
    sra     t6, v0,  4
    sw      t6, 0x0010($sp)
    or      a2, s5, $zero              # a2 = 00000000
    or      a3, s6, $zero              # a3 = 00000000
    mflo    s2
    addu    a1, s2, s3
    jal     func_800CEA70
    nop
    bne     v0, $zero, lbl_800CEBB4
    addiu   s0, s0, 0x0010             # s0 = 00000011
    beq     $zero, $zero, lbl_800CEBD8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800CEBB4:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    andi    t8, s1, 0x00FF             # t8 = 00000001
    addu    t7, s3, s2
    slt     $at, t8, s4
    sw      s0, 0x0050(t7)             # 00000050
    or      s1, t8, $zero              # s1 = 00000001
    bne     $at, $zero, lbl_800CEB74
    addu    s0, s0, v0
lbl_800CEBD4:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800CEBD8:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    lw      s2, 0x0024($sp)
    lw      s3, 0x0028($sp)
    lw      s4, 0x002C($sp)
    lw      s5, 0x0030($sp)
    lw      s6, 0x0034($sp)
    lw      s7, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_800CEC04:
    addiu   $sp, $sp, 0xFFF0           # $sp -= 0x10
    sw      s0, 0x0008($sp)
    lh      s0, 0x0022($sp)
    sw      s1, 0x000C($sp)
    or      s1, a1, $zero              # s1 = 00000000
    blez    s0, lbl_800CEC9C
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     a1, 0x0027($sp)
    addu    t6, v0, a0
lbl_800CEC28:
    beq     a1, $zero, lbl_800CEC5C
    lbu     v1, 0x0000(t6)             # 00000000
    sll     t7, v0,  1
    addu    t8, a3, t7
    lhu     t9, 0x0000(t8)             # 00000000
    sll     t0, v1,  1
    addu    t1, s1, t0
    addu    t2, v0, a2
    sh      t9, 0x0100(t1)             # 00000100
    lbu     t3, 0x0000(t2)             # 00000000
    addu    t4, s1, v1
    beq     $zero, $zero, lbl_800CEC84
    sb      t3, 0x0000(t4)             # 00000000
lbl_800CEC5C:
    sll     t5, v0,  1
    addu    t6, a3, t5
    lhu     t7, 0x0000(t6)             # 00000000
    sll     t8, v1,  1
    addu    t0, s1, t8
    addu    t9, v0, a2
    sh      t7, 0x0010(t0)             # 00000010
    lbu     t1, 0x0000(t9)             # 00000000
    addu    t2, s1, v1
    sb      t1, 0x0000(t2)             # 00000000
lbl_800CEC84:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     t3, v0, 16
    sra     v0, t3, 16
    slt     $at, v0, s0
    bnel    $at, $zero, lbl_800CEC28
    addu    t6, v0, a0
lbl_800CEC9C:
    lw      s0, 0x0008($sp)
    lw      s1, 0x000C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0010           # $sp += 0x10


func_800CECAC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    lbu     v1, 0x0000(a0)             # 00000000
    addiu   s0, a0, 0x0001             # s0 = 00000001
    or      a0, s0, $zero              # a0 = 00000001
    sra     t7, v1,  4
    sb      t7, 0x002F($sp)
    jal     func_800CE8D8
    or      a1, a2, $zero              # a1 = 00000000
    sll     t0, v0, 16
    sra     t8, t0, 16
    or      t0, t8, $zero              # t0 = 00000000
    beq     v0, $zero, lbl_800CED14
    lbu     v1, 0x002F($sp)
    beq     v1, $zero, lbl_800CED04
    slti    $at, v0, 0x0101
    beq     $at, $zero, lbl_800CED14
    nop
lbl_800CED04:
    bne     v1, $zero, lbl_800CED1C
    slti    $at, v0, 0x0011
    bnel    $at, $zero, lbl_800CED20
    lw      a0, 0x0038($sp)
lbl_800CED14:
    beq     $zero, $zero, lbl_800CED64
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800CED1C:
    lw      a0, 0x0038($sp)
lbl_800CED20:
    lw      a1, 0x003C($sp)
    sb      v1, 0x002F($sp)
    jal     func_800CE95C
    sh      t0, 0x002C($sp)
    lh      t0, 0x002C($sp)
    lbu     v1, 0x002F($sp)
    addiu   a0, s0, 0x0010             # a0 = 00000011
    beq     v0, t0, lbl_800CED4C
    lw      a1, 0x0034($sp)
    beq     $zero, $zero, lbl_800CED64
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800CED4C:
    lw      a2, 0x0038($sp)
    lw      a3, 0x003C($sp)
    sw      t0, 0x0010($sp)
    jal     func_800CEC04
    sw      v1, 0x0014($sp)
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800CED64:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop
    nop
    nop


func_800CED80:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x003C($sp)
    sw      s8, 0x0038($sp)
    sw      s7, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a3, 0x0074($sp)
    sw      $zero, 0x0058($sp)
    lw      t7, 0x0000(a0)             # 00000000
    lui     $at, 0x8013                # $at = 80130000
    andi    t6, a3, 0x00FF             # t6 = 00000000
    sw      t7, -0x4550($at)           # 8012BAB0
    lbu     t8, 0x0004(a0)             # 00000004
    or      a3, t6, $zero              # a3 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    bne     t8, $zero, lbl_800CEDE0
    or      s6, a2, $zero              # s6 = 00000000
    beq     $zero, $zero, lbl_800CEDF8
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_800CEDE0:
    lbu     t9, 0x0005(a0)             # 00000005
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    bne     t9, $at, lbl_800CEDF8
    addiu   t0, $zero, 0x0080          # t0 = 00000080
    sw      t0, 0x0058($sp)
lbl_800CEDF8:
    lw      s4, 0x0008(a0)             # 00000008
    lw      s5, 0x000C(a0)             # 0000000C
    lw      s7, 0x0010(a0)             # 00000010
    bne     a3, $zero, lbl_800CEE40
    lw      s8, 0x0014(a0)             # 00000014
    lui     $at, 0x8013                # $at = 80130000
    sw      $zero, -0x454C($at)        # 8012BAB4
    lui     $at, 0x8013                # $at = 80130000
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    sb      t1, -0x4548($at)           # 8012BAB8
    lui     $at, 0x8013                # $at = 80130000
    sw      $zero, -0x4544($at)        # 8012BABC
    lui     $at, 0x8013                # $at = 80130000
    sb      $zero, -0x4547($at)        # 8012BAB9
    sh      $zero, 0x0064($sp)
    sh      $zero, 0x0062($sp)
    beq     $zero, $zero, lbl_800CEE8C
    sh      $zero, 0x0060($sp)
lbl_800CEE40:
    lw      t2, 0x0078($sp)
    lui     $at, 0x8013                # $at = 80130000
    lw      t3, 0x0000(t2)             # 00000000
    sw      t3, -0x454C($at)           # 8012BAB4
    lbu     t4, 0x0004(t2)             # 00000004
    lui     $at, 0x8013                # $at = 80130000
    sb      t4, -0x4548($at)           # 8012BAB8
    lw      t5, 0x0008(t2)             # 00000008
    lui     $at, 0x8013                # $at = 80130000
    sw      t5, -0x4544($at)           # 8012BABC
    lbu     t6, 0x0005(t2)             # 00000005
    lui     $at, 0x8013                # $at = 80130000
    sb      t6, -0x4547($at)           # 8012BAB9
    lh      t7, 0x000C(t2)             # 0000000C
    sh      t7, 0x0064($sp)
    lh      t8, 0x000E(t2)             # 0000000E
    sh      t8, 0x0062($sp)
    lh      t9, 0x0010(t2)             # 00000010
    sh      t9, 0x0060($sp)
lbl_800CEE8C:
    beq     s6, $zero, lbl_800CEF28
    or      s2, v0, $zero              # s2 = 00000004
    addiu   s3, $sp, 0x0064            # s3 = FFFFFFFC
lbl_800CEE98:
    beq     s2, $zero, lbl_800CEECC
    or      s0, $zero, $zero           # s0 = 00000000
lbl_800CEEA0:
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    jal     func_800CEFA8
    or      a3, s3, $zero              # a3 = FFFFFFFC
    beq     v0, $zero, lbl_800CEEC4
    addiu   s0, s0, 0x0001             # s0 = 00000001
    beq     $zero, $zero, lbl_800CEF78
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_800CEEC4:
    bne     s0, s2, lbl_800CEEA0
    addiu   s1, s1, 0x0080             # s1 = 00000080
lbl_800CEECC:
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s8, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000080
    jal     func_800CEFA8
    addiu   a3, $sp, 0x0062            # a3 = FFFFFFFA
    beq     v0, $zero, lbl_800CEEF0
    addiu   s1, s1, 0x0080             # s1 = 00000100
    beq     $zero, $zero, lbl_800CEF78
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_800CEEF0:
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s8, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000100
    jal     func_800CEFA8
    addiu   a3, $sp, 0x0060            # a3 = FFFFFFF8
    beq     v0, $zero, lbl_800CEF14
    lw      t0, 0x0058($sp)
    beq     $zero, $zero, lbl_800CEF78
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_800CEF14:
    addiu   s6, s6, 0xFFFF             # s6 = FFFFFFFF
    addiu   s1, s1, 0x0080             # s1 = 00000180
    sll     t1, t0,  1
    bne     s6, $zero, lbl_800CEE98
    addu    s1, s1, t1
lbl_800CEF28:
    lui     t3, 0x8013                 # t3 = 80130000
    lw      v1, 0x0078($sp)
    lw      t3, -0x454C(t3)            # 8012BAB4
    lui     t4, 0x8013                 # t4 = 80130000
    lui     t5, 0x8013                 # t5 = 80130000
    sw      t3, 0x0000(v1)             # 00000000
    lbu     t4, -0x4548(t4)            # 8012BAB8
    lui     t6, 0x8013                 # t6 = 80130000
    or      v0, $zero, $zero           # v0 = 00000000
    sb      t4, 0x0004(v1)             # 00000004
    lw      t5, -0x4544(t5)            # 8012BABC
    sw      t5, 0x0008(v1)             # 00000008
    lbu     t6, -0x4547(t6)            # 8012BAB9
    sb      t6, 0x0005(v1)             # 00000005
    lh      t7, 0x0064($sp)
    sh      t7, 0x000C(v1)             # 0000000C
    lh      t8, 0x0062($sp)
    sh      t8, 0x000E(v1)             # 0000000E
    lh      t2, 0x0060($sp)
    sh      t2, 0x0010(v1)             # 00000010
lbl_800CEF78:
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
    addiu   $sp, $sp, 0x0068           # $sp += 0x68


func_800CEFA8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s5, 0x0028($sp)
    sw      s4, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s1, 0x0018($sp)
    or      s1, a2, $zero              # s1 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    addiu   s4, $sp, 0x0034            # s4 = FFFFFFFC
    addiu   s5, $sp, 0x0036            # s5 = FFFFFFFE
    sw      $ra, 0x002C($sp)
    sw      s2, 0x001C($sp)
    or      s2, a3, $zero              # s2 = 00000000
    sw      s0, 0x0014($sp)
    or      a2, s5, $zero              # a2 = FFFFFFFE
    jal     func_800CF144
    or      a1, s4, $zero              # a1 = FFFFFFFC
    beq     v0, $zero, lbl_800CEFF8
    lh      t7, 0x0034($sp)
    beq     $zero, $zero, lbl_800CF120
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800CEFF8:
    lh      t6, 0x0000(s2)             # 00000000
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    slti    $at, s0, 0x0040
    addu    t8, t6, t7
    sh      t8, 0x0000(s2)             # 00000000
    lh      t9, 0x0000(s2)             # 00000000
    addiu   s2, $zero, 0x000F          # s2 = 0000000F
    beq     $at, $zero, lbl_800CF11C
    sh      t9, 0x0000(s1)             # 00000000
    or      a0, s3, $zero              # a0 = 00000000
lbl_800CF020:
    or      a1, s4, $zero              # a1 = FFFFFFFC
    jal     func_800CF144
    or      a2, s5, $zero              # a2 = FFFFFFFE
    beq     v0, $zero, lbl_800CF03C
    lh      t0, 0x0034($sp)
    beq     $zero, $zero, lbl_800CF120
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800CF03C:
    bne     t0, $zero, lbl_800CF0B8
    lb      v1, 0x0036($sp)
    lb      v1, 0x0036($sp)
    bne     v1, s2, lbl_800CF088
    addiu   t2, v1, 0xFFFF             # t2 = FFFFFFFF
    bltz    v1, lbl_800CF110
    sb      t2, 0x0036($sp)
lbl_800CF058:
    sll     t3, s0,  1
    addu    t4, s1, t3
    sh      $zero, 0x0000(t4)          # 00000000
    lb      t7, 0x0036($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000002
    sll     t5, s0, 24
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sb      t8, 0x0036($sp)
    bgez    t7, lbl_800CF058
    sra     s0, t5, 24
    beq     $zero, $zero, lbl_800CF114
    slti    $at, s0, 0x0040
lbl_800CF088:
    slti    $at, s0, 0x0040
    beq     $at, $zero, lbl_800CF11C
lbl_800CF090:
    sll     t9, s0,  1
    addiu   s0, s0, 0x0001             # s0 = 00000003
    sll     t1, s0, 24
    sra     s0, t1, 24
    slti    $at, s0, 0x0040
    addu    t0, s1, t9
    bne     $at, $zero, lbl_800CF090
    sh      $zero, 0x0000(t0)          # 00000000
    beq     $zero, $zero, lbl_800CF120
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800CF0B8:
    slt     v0, $zero, v1
    addiu   t4, v1, 0xFFFF             # t4 = FFFFFFFF
    beq     v0, $zero, lbl_800CF0F4
    sb      t4, 0x0036($sp)
lbl_800CF0C8:
    sll     t5, s0,  1
    addu    t6, s1, t5
    sh      $zero, 0x0000(t6)          # 00000000
    lb      t9, 0x0036($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000004
    sll     t7, s0, 24
    slt     v0, $zero, t9
    addiu   t0, t9, 0xFFFF             # t0 = FFFFFFFF
    sb      t0, 0x0036($sp)
    bne     v0, $zero, lbl_800CF0C8
    sra     s0, t7, 24
lbl_800CF0F4:
    lh      t1, 0x0034($sp)
    sll     t2, s0,  1
    addiu   s0, s0, 0x0001             # s0 = 00000005
    sll     t4, s0, 24
    addu    t3, s1, t2
    sra     s0, t4, 24
    sh      t1, 0x0000(t3)             # 00000000
lbl_800CF110:
    slti    $at, s0, 0x0040
lbl_800CF114:
    bnel    $at, $zero, lbl_800CF020
    or      a0, s3, $zero              # a0 = 00000000
lbl_800CF11C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800CF120:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_800CF144:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    addiu   a0, $zero, 0x0010          # a0 = 00000010
    jal     func_800CF280
    sh      $zero, 0x0024($sp)
    lhu     t1, 0x0024($sp)
    lw      t2, 0x002C($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t0, $zero, 0x000F          # t0 = 0000000F
    ori     a3, $zero, 0xFFFF          # a3 = 0000FFFF
lbl_800CF17C:
    sll     t6, a2,  1
    addu    t7, s0, t6
    lhu     a0, 0x0030(t7)             # 00000030
    subu    t8, t0, a2
    srav    v1, v0, t8
    beq     a3, a0, lbl_800CF1A8
    or      a1, a2, $zero              # a1 = 00000000
    andi    t9, v1, 0xFFFF             # t9 = 00000000
    slt     $at, a0, t9
    beq     $at, $zero, lbl_800CF1BC
    andi    t1, v1, 0xFFFF             # t1 = 00000000
lbl_800CF1A8:
    addiu   a2, a2, 0x0001             # a2 = 00000001
    andi    a1, a2, 0x00FF             # a1 = 00000001
    slti    $at, a1, 0x0010
    bne     $at, $zero, lbl_800CF17C
    or      a2, a1, $zero              # a2 = 00000001
lbl_800CF1BC:
    slti    $at, a1, 0x0010
    bne     $at, $zero, lbl_800CF1D0
    lui     v0, 0x8013                 # v0 = 80130000
    beq     $zero, $zero, lbl_800CF26C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800CF1D0:
    addu    t4, s0, a2
    sll     t7, a2,  1
    lbu     t5, 0x0000(t4)             # 00000000
    addu    t8, s0, t7
    lhu     t9, 0x0010(t8)             # 00000010
    lw      t4, 0x0050(s0)             # 00000050
    addu    t6, t5, t1
    subu    t3, t6, t9
    addu    t5, t3, t4
    lbu     a0, 0x0000(t5)             # 00000000
    lw      t8, 0x0030($sp)
    addiu   v0, v0, 0xBAB8             # v0 = FFFFBAB9
    sra     t7, a0,  4
    sb      t7, 0x0000(t8)             # 00000000
    lbu     t9, 0x0000(v0)             # FFFFBAB9
    andi    t6, a0, 0x000F             # t6 = 00000000
    or      a0, t6, $zero              # a0 = 00000000
    addu    t3, t9, a1
    addiu   t4, t3, 0xFFF1             # t4 = FFFFFFF1
    sb      t4, 0x0000(v0)             # FFFFBAB9
    beq     t6, $zero, lbl_800CF268
    sh      $zero, 0x0000(t2)          # 00000000
    jal     func_800CF280
    sb      t6, 0x0026($sp)
    lw      t2, 0x002C($sp)
    lbu     a0, 0x0026($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      v0, 0x0000(t2)             # 00000000
    lh      a1, 0x0000(t2)             # 00000000
    addiu   t5, a0, 0x001F             # t5 = 0000001F
    sllv    t8, t7, t5
    slt     $at, a1, t8
    beq     $at, $zero, lbl_800CF268
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    sllv    t9, t6, a0
    addu    t3, a1, t9
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sh      t4, 0x0000(t2)             # 00000000
lbl_800CF268:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800CF26C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_800CF280:
    lui     t0, 0x8013                 # t0 = 80130000
    addiu   t0, t0, 0xBAB8             # t0 = 8012BAB8
    lbu     a1, 0x0000(t0)             # 8012BAB8
    sw      a0, 0x0000($sp)
    andi    a3, a0, 0x00FF             # a3 = 00000000
    sra     v0, a1,  3
    andi    t6, v0, 0x00FF             # t6 = 00000000
    blez    t6, lbl_800CF344
    or      v0, t6, $zero              # v0 = 00000000
    lui     a2, 0x8013                 # a2 = 80130000
    lui     t5, 0x8013                 # t5 = 80130000
    lui     t2, 0x8013                 # t2 = 80130000
    lui     t1, 0x8013                 # t1 = 80130000
    addiu   t1, t1, 0xBAB4             # t1 = 8012BAB4
    addiu   t2, t2, 0xBAB9             # t2 = 8012BAB9
    addiu   t5, t5, 0xBABC             # t5 = 8012BABC
    lw      a2, -0x4550(a2)            # 8012BAB0
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
lbl_800CF2CC:
    lw      a0, 0x0000(t1)             # 8012BAB4
    lbu     t9, 0x0000(t2)             # 8012BAB9
    lbu     a1, 0x0000(t0)             # 8012BAB8
    addu    t7, a0, a2
    lbu     v1, 0x0000(t7)             # 00000000
    addiu   t8, a0, 0x0001             # t8 = 00000001
    beq     t9, $zero, lbl_800CF300
    sw      t8, 0x0000(t1)             # 8012BAB4
    bne     v1, $zero, lbl_800CF300
    addu    t6, t8, a2
    lbu     v1, 0x0000(t6)             # 00000000
    addiu   t7, t8, 0x0001             # t7 = 00000002
    sw      t7, 0x0000(t1)             # 8012BAB4
lbl_800CF300:
    bne     t3, v1, lbl_800CF310
    or      a0, v1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800CF314
    sb      t4, 0x0000(t2)             # 8012BAB9
lbl_800CF310:
    sb      $zero, 0x0000(t2)          # 8012BAB9
lbl_800CF314:
    lw      t8, 0x0000(t5)             # 8012BABC
    addiu   v0, v0, 0xFFFF             # v0 = FFFFFFFF
    sll     t9, t8,  8
    sw      t9, 0x0000(t5)             # 8012BABC
    or      t7, t9, a0                 # t7 = 00000000
    andi    t9, v0, 0x00FF             # t9 = 000000FF
    addiu   t8, a1, 0xFFF8             # t8 = FFFFFFF8
    or      v0, t9, $zero              # v0 = 000000FF
    sw      t7, 0x0000(t5)             # 8012BABC
    bgtz    t9, lbl_800CF2CC
    sb      t8, 0x0000(t0)             # 8012BAB8
    andi    a1, t8, 0x00FF             # a1 = 000000F8
lbl_800CF344:
    lui     t5, 0x8013                 # t5 = 80130000
    addiu   t5, t5, 0xBABC             # t5 = 8012BABC
    lw      t6, 0x0000(t5)             # 8012BABC
    subu    t7, $zero, a3
    addu    t8, a1, a3
    sllv    v1, t6, a1
    srlv    v1, v1, t7
    sb      t8, 0x0000(t0)             # 8012BAB8
    jr      $ra
    andi    v0, v1, 0xFFFF             # v0 = 00000000
    nop


func_800CF370:
# OSIntMask osGetIntMask(void)
# Get the mask of currently enabled hardware interrupts
# V0 = OSIntMask interrupt mask
    mfc0    v0, Status
    andi    v0, v0, 0xFF01             # v0 = 00000000
    lui     t0, 0x8000                 # t0 = 80000000
    addiu   t0, t0, 0x6360             # t0 = 80006360
    lw      t1, 0x0000(t0)             # 80006360
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    xor     t0, t1, $at
    andi    t0, t0, 0xFF00             # t0 = 00006300
    or      v0, v0, t0                 # v0 = 00006300
    lui     t1, 0xA430                 # t1 = A4300000
    lw      t1, 0x000C(t1)             # A430000C
    beq     t1, $zero, lbl_800CF3C0
    lui     t0, 0x8000                 # t0 = 80000000
    addiu   t0, t0, 0x6360             # t0 = 80006360
    lw      t0, 0x0000(t0)             # 80006360
    srl     t0, t0, 16
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    xor     t0, t0, $at
    andi    t0, t0, 0x003F             # t0 = 00000020
    or      t1, t1, t0                 # t1 = A4300020
lbl_800CF3C0:
    sll     t2, t1, 16
    or      v0, v0, t2                 # v0 = 00006300
    jr      $ra
    nop


func_800CF3D0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    jal     func_800D0830
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lwc1    $f4, 0x001C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    swc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f6, 0x0020($sp)
    swc1    $f6, 0x0014(a0)            # 00000014
    lwc1    $f8, 0x0024($sp)
    swc1    $f10, 0x003C(a0)           # 0000003C
    swc1    $f8, 0x0028(a0)            # 00000028
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CF424:
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    mtc1    a3, $f16                   # $f16 = 0.00
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0058($sp)
    mfc1    a1, $f12
    mfc1    a2, $f14
    mfc1    a3, $f16
    jal     func_800CF3D0
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFC0
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFC0
    jal     func_800D0730
    lw      a1, 0x0058($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop
    nop


func_800CF470:
# Performs some calculation on angle of view/2 (rad)
# F12 = Angle of View/2 in radians
# F0 = return value
    swc1    $f12, 0x0000($sp)
    lw      v0, 0x0000($sp)
    lwc1    $f4, 0x0000($sp)
    sra     v1, v0, 22
    andi    t6, v1, 0x01FF             # t6 = 00000000
    slti    $at, t6, 0x00FF
    beq     $at, $zero, lbl_800CF4F0
    or      v1, t6, $zero              # v1 = 00000000
    slti    $at, t6, 0x00E6
    bne     $at, $zero, lbl_800CF4E8
    cvt.d.s $f2, $f4
    mul.d   $f12, $f2, $f2
    lui     v1, 0x8011                 # v1 = 80110000
    addiu   v1, v1, 0xA6C0             # v1 = 8010A6C0
    ldc1    $f6, 0x0020(v1)            # 8010A6E0
    ldc1    $f10, 0x0018(v1)           # 8010A6D8
    ldc1    $f4, 0x0010(v1)            # 8010A6D0
    mul.d   $f8, $f6, $f12
    add.d   $f16, $f8, $f10
    ldc1    $f10, 0x0008(v1)           # 8010A6C8
    mul.d   $f18, $f16, $f12
    add.d   $f6, $f18, $f4
    mul.d   $f8, $f6, $f12
    add.d   $f14, $f10, $f8
    mul.d   $f16, $f2, $f12
    nop
    mul.d   $f18, $f16, $f14
    add.d   $f4, $f18, $f2
    jr      $ra
    cvt.s.d $f0, $f4
lbl_800CF4E8:
    jr      $ra
    lwc1    $f0, 0x0000($sp)
lbl_800CF4F0:
    slti    $at, v1, 0x0136
    beq     $at, $zero, lbl_800CF608
    lwc1    $f4, 0x0000($sp)
    lwc1    $f6, 0x0000($sp)
    lui     $at, 0x8011                # $at = 80110000
    ldc1    $f10, -0x5918($at)         # 8010A6E8
    cvt.d.s $f2, $f6
    mtc1    $zero, $f9                 # $f9 = 0.00
    mul.d   $f0, $f2, $f10
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0x3FE0                # $at = 3FE00000
    c.le.d  $f8, $f0
    nop
    bc1fl   lbl_800CF554
    mtc1    $at, $f7                   # $f7 = 1.75
    lui     $at, 0x3FE0                # $at = 3FE00000
    mtc1    $at, $f17                  # $f17 = 1.75
    mtc1    $zero, $f16                # $f16 = 0.00
    nop
    add.d   $f18, $f0, $f16
    trunc.w.d $f4, $f18
    mfc1    v0, $f4
    beq     $zero, $zero, lbl_800CF570
    mtc1    v0, $f16                   # $f16 = 0.00
    mtc1    $at, $f7                   # $f7 = 1.75
lbl_800CF554:
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    sub.d   $f10, $f0, $f6
    trunc.w.d $f8, $f10
    mfc1    v0, $f8
    nop
    mtc1    v0, $f16                   # $f16 = 0.00
lbl_800CF570:
    lui     $at, 0x8011                # $at = 80110000
    ldc1    $f18, -0x5910($at)         # 8010A6F0
    cvt.d.w $f0, $f16
    lui     $at, 0x8011                # $at = 80110000
    ldc1    $f6, -0x5908($at)          # 8010A6F8
    lui     v1, 0x8011                 # v1 = 80110000
    addiu   v1, v1, 0xA6C0             # v1 = 8010A6C0
    mul.d   $f4, $f0, $f18
    ldc1    $f8, 0x0020(v1)            # 8010A6E0
    ldc1    $f18, 0x0018(v1)           # 8010A6D8
    andi    t9, v0, 0x0001             # t9 = 00000000
    mul.d   $f10, $f0, $f6
    sub.d   $f2, $f2, $f4
    sub.d   $f2, $f2, $f10
    ldc1    $f10, 0x0010(v1)           # 8010A6D0
    mul.d   $f12, $f2, $f2
    nop
    mul.d   $f16, $f8, $f12
    add.d   $f4, $f16, $f18
    ldc1    $f18, 0x0008(v1)           # 8010A6C8
    mul.d   $f6, $f4, $f12
    add.d   $f8, $f6, $f10
    mul.d   $f16, $f8, $f12
    bne     t9, $zero, lbl_800CF5EC
    add.d   $f14, $f18, $f16
    mul.d   $f4, $f2, $f12
    nop
    mul.d   $f6, $f4, $f14
    add.d   $f10, $f6, $f2
    jr      $ra
    cvt.s.d $f0, $f10
lbl_800CF5EC:
    mul.d   $f8, $f2, $f12
    nop
    mul.d   $f18, $f8, $f14
    add.d   $f16, $f18, $f2
    cvt.s.d $f0, $f16
    jr      $ra
    neg.s   $f0, $f0
lbl_800CF608:
    c.eq.s  $f4, $f4
    lui     $at, 0x8011                # $at = 80110000
    bc1t    lbl_800CF624
    nop
    lui     $at, 0x8011                # $at = 80110000
    jr      $ra
    lwc1    $f0, -0x5760($at)          # 8010A8A0
lbl_800CF624:
    lwc1    $f0, -0x5900($at)          # 8010A700
    jr      $ra
    nop


func_800CF630:
# Calculate s16 Sine * 0x7FFF
# A0 = s16 rotation
# V0 = Sine * 0x7FFF
    andi    t6, a0, 0xFFFF             # t6 = 00000000
    srl     t7, t6,  4
    andi    t8, t7, 0xFFFF             # t8 = 00000000
    andi    t9, t8, 0x0400             # t9 = 00000000
    sw      a0, 0x0000($sp)
    beq     t9, $zero, lbl_800CF668
    or      v0, t8, $zero              # v0 = 00000000
    andi    t0, t8, 0x03FF             # t0 = 00000000
    sll     t1, t0,  1
    subu    t2, $zero, t1
    lui     v1, 0x8010                 # v1 = 80100000
    addu    v1, v1, t2
    beq     $zero, $zero, lbl_800CF67C
    lh      v1, 0x5C9E(v1)             # 80105C9E
lbl_800CF668:
    andi    t3, v0, 0x03FF             # t3 = 00000000
    sll     t4, t3,  1
    lui     v1, 0x8010                 # v1 = 80100000
    addu    v1, v1, t4
    lh      v1, 0x54A0(v1)             # 801054A0
lbl_800CF67C:
    andi    t5, v0, 0x0800             # t5 = 00000000
    beq     t5, $zero, lbl_800CF698
    or      v0, v1, $zero              # v0 = 80100000
    subu    v0, $zero, v1
    sll     t6, v0, 16
    jr      $ra
    sra     v0, t6, 16
lbl_800CF698:
    jr      $ra
    nop


func_800CF6A0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    lui     t6, 0x8013                 # t6 = 80130000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    addiu   t6, t6, 0xBAC0             # t6 = 8012BAC0
    sw      t6, 0x001C($sp)
    or      a1, t6, $zero              # a1 = 8012BAC0
    lw      a0, 0x0020($sp)
    jal     func_80004DC0              # bcopy
    addiu   a2, $zero, 0x0040          # a2 = 00000040
    lw      t7, 0x001C($sp)
    lw      t8, 0x0010(t7)             # 00000010
    beq     t8, $zero, lbl_800CF6E8
    nop
    jal     func_80003B60              # osVirtualToPhysical
    or      a0, t8, $zero              # a0 = 00000000
    lw      t9, 0x001C($sp)
    sw      v0, 0x0010(t9)             # 00000010
lbl_800CF6E8:
    lw      t0, 0x001C($sp)
    lw      t1, 0x0018(t0)             # 00000018
    beq     t1, $zero, lbl_800CF708
    nop
    jal     func_80003B60              # osVirtualToPhysical
    or      a0, t1, $zero              # a0 = 00000000
    lw      t2, 0x001C($sp)
    sw      v0, 0x0018(t2)             # 00000018
lbl_800CF708:
    lw      t3, 0x001C($sp)
    lw      t4, 0x0020(t3)             # 00000020
    beq     t4, $zero, lbl_800CF728
    nop
    jal     func_80003B60              # osVirtualToPhysical
    or      a0, t4, $zero              # a0 = 00000000
    lw      t5, 0x001C($sp)
    sw      v0, 0x0020(t5)             # 00000020
lbl_800CF728:
    lw      t6, 0x001C($sp)
    lw      t7, 0x0028(t6)             # 00000028
    beq     t7, $zero, lbl_800CF748
    nop
    jal     func_80003B60              # osVirtualToPhysical
    or      a0, t7, $zero              # a0 = 00000000
    lw      t8, 0x001C($sp)
    sw      v0, 0x0028(t8)             # 00000028
lbl_800CF748:
    lw      t9, 0x001C($sp)
    lw      t0, 0x002C(t9)             # 0000002C
    beq     t0, $zero, lbl_800CF768
    nop
    jal     func_80003B60              # osVirtualToPhysical
    or      a0, t0, $zero              # a0 = 00000000
    lw      t1, 0x001C($sp)
    sw      v0, 0x002C(t1)             # 0000002C
lbl_800CF768:
    lw      t2, 0x001C($sp)
    lw      t3, 0x0030(t2)             # 00000030
    beq     t3, $zero, lbl_800CF788
    nop
    jal     func_80003B60              # osVirtualToPhysical
    or      a0, t3, $zero              # a0 = 00000000
    lw      t4, 0x001C($sp)
    sw      v0, 0x0030(t4)             # 00000030
lbl_800CF788:
    lw      t5, 0x001C($sp)
    lw      t6, 0x0038(t5)             # 00000038
    beq     t6, $zero, lbl_800CF7A8
    nop
    jal     func_80003B60              # osVirtualToPhysical
    or      a0, t6, $zero              # a0 = 00000000
    lw      t7, 0x001C($sp)
    sw      v0, 0x0038(t7)             # 00000038
lbl_800CF7A8:
    lw      $ra, 0x0014($sp)
    lw      v0, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800CF7BC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    jal     func_800CF6A0
    lw      a0, 0x0020($sp)
    sw      v0, 0x001C($sp)
    lw      t6, 0x001C($sp)
    lw      t7, 0x0004(t6)             # 00000004
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_800CF840
    nop
    lw      t9, 0x0038(t6)             # 00000038
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sw      t9, 0x0018(t6)             # 00000018
    lw      t0, 0x001C($sp)
    lw      t1, 0x003C(t0)             # 0000003C
    sw      t1, 0x001C(t0)             # 0000001C
    lw      t2, 0x0020($sp)
    lw      t3, 0x0004(t2)             # 00000004
    and     t4, t3, $at
    sw      t4, 0x0004(t2)             # 00000004
    lw      t5, 0x001C($sp)
    lw      t7, 0x0004(t5)             # 00000004
    andi    t8, t7, 0x0004             # t8 = 00000000
    beq     t8, $zero, lbl_800CF840
    nop
    lw      t9, 0x0020($sp)
    lui     $at, 0xA000                # $at = A0000000
    lw      t6, 0x0038(t9)             # 00000038
    addiu   t1, t6, 0x0BFC             # t1 = 00000BFC
    or      t0, t1, $at                # t0 = A0000BFC
    lw      t3, 0x0000(t0)             # A0000BFC
    sw      t3, 0x0010(t5)             # 00000010
lbl_800CF840:
    lw      a0, 0x001C($sp)
    jal     func_80003440              # osWritebackDCache
    addiu   a1, $zero, 0x0040          # a1 = 00000040
    jal     func_800D5A90
    addiu   a0, $zero, 0x2B00          # a0 = 00002B00
    lui     a0, 0x0400                 # a0 = 04000000
    jal     func_800D5D90
    ori     a0, a0, 0x1000             # a0 = 04001000
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_800CF884
    nop
lbl_800CF86C:
    lui     a0, 0x0400                 # a0 = 04000000
    jal     func_800D5D90
    ori     a0, a0, 0x1000             # a0 = 04001000
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beq     v0, $at, lbl_800CF86C
    nop
lbl_800CF884:
    lui     a1, 0x0400                 # a1 = 04000000
    ori     a1, a1, 0x0FC0             # a1 = 04000FC0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      a2, 0x001C($sp)
    jal     func_800D05D0
    addiu   a3, $zero, 0x0040          # a3 = 00000040
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_800CF8CC
    nop
lbl_800CF8A8:
    lui     a1, 0x0400                 # a1 = 04000000
    ori     a1, a1, 0x0FC0             # a1 = 04000FC0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      a2, 0x001C($sp)
    jal     func_800D05D0
    addiu   a3, $zero, 0x0040          # a3 = 00000040
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beq     v0, $at, lbl_800CF8A8
    nop
lbl_800CF8CC:
    jal     func_800D23F0
    nop
    beq     v0, $zero, lbl_800CF8EC
    nop
lbl_800CF8DC:
    jal     func_800D23F0
    nop
    bne     v0, $zero, lbl_800CF8DC
    nop
lbl_800CF8EC:
    lw      t4, 0x001C($sp)
    lui     a1, 0x0400                 # a1 = 04000000
    ori     a1, a1, 0x1000             # a1 = 04001000
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      a2, 0x0008(t4)             # 00000008
    jal     func_800D05D0
    lw      a3, 0x000C(t4)             # 0000000C
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_800CF93C
    nop
lbl_800CF914:
    lw      t2, 0x001C($sp)
    lui     a1, 0x0400                 # a1 = 04000000
    ori     a1, a1, 0x1000             # a1 = 04001000
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      a2, 0x0008(t2)             # 00000008
    jal     func_800D05D0
    lw      a3, 0x000C(t2)             # 0000000C
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beq     v0, $at, lbl_800CF914
    nop
lbl_800CF93C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800CF94C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800D23F0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_800CF974
    nop
lbl_800CF964:
    jal     func_800D23F0
    nop
    bne     v0, $zero, lbl_800CF964
    nop
lbl_800CF974:
    jal     func_800D5A90
    addiu   a0, $zero, 0x0125          # a0 = 00000125
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop


func_800CF990:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lw      t6, 0x0008(a0)             # 00000008
    lw      t9, 0x0000(a0)             # 00000000
    lui     t8, 0x8013                 # t8 = 80130000
    addiu   t8, t8, 0xBB00             # t8 = 8012BB00
    sll     t7, t6,  6
    andi    t1, t9, 0x0008             # t1 = 00000000
    or      s0, a0, $zero              # s0 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    bne     t1, $zero, lbl_800CF9CC
    addu    t0, t7, t8
    beq     $zero, $zero, lbl_800CFAE4
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_800CF9CC:
    sw      a3, 0x0034($sp)
    jal     func_800CFDB0
    sw      t0, 0x0024($sp)
    lw      t3, 0x0008(s0)             # 00000008
    lui     a2, 0x8013                 # a2 = 80130000
    addiu   a2, a2, 0xBB00             # a2 = 8012BB00
    sll     t4, t3,  6
    addu    t5, a2, t4
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x003C(t5)             # 0000003C
    lw      t0, 0x0024($sp)
    lw      t6, 0x0008(s0)             # 00000008
    lw      a3, 0x0034($sp)
    or      v1, $zero, $zero           # v1 = 00000000
    addu    t0, t0, t6
    or      v0, t0, $zero              # v0 = 00000000
    addiu   a0, $zero, 0x0020          # a0 = 00000020
lbl_800CFA10:
    addiu   v1, v1, 0x0004             # v1 = 00000004
    sb      a3, 0x0007(v0)             # 00000007
    sb      a3, 0x0008(v0)             # 00000008
    sb      a3, 0x0009(v0)             # 00000009
    addiu   v0, v0, 0x0004             # v0 = 00000004
    bne     v1, a0, lbl_800CFA10
    sb      a3, 0x0002(v0)             # 00000006
    addiu   t7, $zero, 0x00FE          # t7 = 000000FE
    lui     $at, 0x8013                # $at = 80130000
    sb      t7, -0x43A0($at)           # 8012BC60
    lw      t8, 0x0008(s0)             # 00000008
    sw      t0, 0x0024($sp)
    sw      a3, 0x0034($sp)
    sll     t9, t8,  6
    addu    a1, a2, t9
    jal     func_800D0660
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      a0, 0x0004(s0)             # 00000004
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t1, 0x0008(s0)             # 00000008
    lui     t4, 0x8013                 # t4 = 80130000
    addiu   t4, t4, 0xBB00             # t4 = 8012BB00
    sll     t3, t1,  6
    addu    a1, t3, t4
    jal     func_800D0660
    or      a0, $zero, $zero           # a0 = 00000000
    lw      a0, 0x0004(s0)             # 00000004
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t0, 0x0024($sp)
    lw      a3, 0x0034($sp)
    lbu     s0, 0x0002(t0)             # 00000002
    andi    t2, s0, 0x00C0             # t2 = 00000000
    bne     t2, $zero, lbl_800CFAD8
    or      s0, t2, $zero              # s0 = 00000000
    bnel    a3, $zero, lbl_800CFAC8
    lbu     t6, 0x0026(t0)             # 00000026
    lbu     t5, 0x0026(t0)             # 00000026
    beq     t5, $zero, lbl_800CFAD8
    nop
    beq     $zero, $zero, lbl_800CFAD8
    addiu   s0, $zero, 0x0004          # s0 = 00000004
    lbu     t6, 0x0026(t0)             # 00000026
lbl_800CFAC8:
    addiu   $at, $zero, 0x00EB         # $at = 000000EB
    beq     t6, $at, lbl_800CFAD8
    nop
    addiu   s0, $zero, 0x0004          # s0 = 00000004
lbl_800CFAD8:
    jal     func_800CFDF4
    nop
    or      v0, s0, $zero              # v0 = 00000004
lbl_800CFAE4:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_800CFAF8:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x0023          # t7 = 00000023
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    addiu   t0, $zero, 0x00C0          # t0 = 000000C0
    sb      t6, 0x0024($sp)
    sb      t7, 0x0025($sp)
    sb      t8, 0x0026($sp)
    sb      t9, 0x0027($sp)
    sb      t0, 0x0028($sp)
    sw      a2, 0x0050($sp)
    addiu   a0, $zero, 0x0600          # a0 = 00000600
    jal     func_800D46E0
    sw      a1, 0x004C($sp)
    lw      a2, 0x0050($sp)
    ori     t1, v0, 0xC000             # t1 = 0000C000
    sb      t1, 0x0029($sp)
    beq     a2, $zero, lbl_800CFB94
    lw      v1, 0x004C($sp)
    blez    a2, lbl_800CFB94
    or      v0, $zero, $zero           # v0 = 00000000
    andi    a1, a2, 0x0003             # a1 = 00000000
    beq     a1, $zero, lbl_800CFB78
    or      a0, a1, $zero              # a0 = 00000000
lbl_800CFB64:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sb      $zero, 0x0000(v1)          # 00000000
    bne     a0, v0, lbl_800CFB64
    addiu   v1, v1, 0x0001             # v1 = 00000001
    beq     v0, a2, lbl_800CFB94
lbl_800CFB78:
    addiu   v0, v0, 0x0004             # v0 = 00000005
    sb      $zero, 0x0001(v1)          # 00000002
    sb      $zero, 0x0002(v1)          # 00000003
    sb      $zero, 0x0003(v1)          # 00000004
    addiu   v1, v1, 0x0004             # v1 = 00000005
    bne     v0, a2, lbl_800CFB78
    sb      $zero, -0x0004(v1)         # 00000001
lbl_800CFB94:
    addiu   t2, $sp, 0x0024            # t2 = FFFFFFD4
    addiu   t4, t2, 0x0024             # t4 = FFFFFFF8
    or      t5, v1, $zero              # t5 = 00000005
lbl_800CFBA0:
    lw      $at, 0x0000(t2)            # FFFFFFD4
    addiu   t2, t2, 0x000C             # t2 = FFFFFFE0
    addiu   t5, t5, 0x000C             # t5 = 00000011
    swl     $at, -0x000C(t5)           # 00000005
    swr     $at, -0x0009(t5)           # 00000008
    lw      $at, -0x0008(t2)           # FFFFFFD8
    swl     $at, -0x0008(t5)           # 00000009
    swr     $at, -0x0005(t5)           # 0000000C
    lw      $at, -0x0004(t2)           # FFFFFFDC
    swl     $at, -0x0004(t5)           # 0000000D
    bne     t2, t4, lbl_800CFBA0
    swr     $at, -0x0001(t5)           # 00000010
    lbu     $at, 0x0000(t2)            # FFFFFFE0
    addiu   t6, $zero, 0x00FE          # t6 = 000000FE
    addiu   v1, v1, 0x0027             # v1 = 0000002C
    sb      $at, 0x0000(t5)            # 00000011
    lbu     t4, 0x0001(t2)             # FFFFFFE1
    sb      t4, 0x0001(t5)             # 00000012
    lbu     $at, 0x0002(t2)            # FFFFFFE2
    sb      $at, 0x0002(t5)            # 00000013
    sb      t6, 0x0000(v1)             # 0000002C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_800CFC04:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0048($sp)
    sw      a2, 0x0050($sp)
    sw      a0, 0x0004(a1)             # 00000004
    lw      t7, 0x0050($sp)
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    or      s0, a1, $zero              # s0 = 00000000
    sb      t8, 0x0065(a1)             # 00000065
    sw      $zero, 0x0000(a1)          # 00000000
    or      a0, a1, $zero              # a0 = 00000000
    sw      t7, 0x0008(a1)             # 00000008
    jal     func_800D31F0
    addiu   a1, $zero, 0x00FE          # a1 = 000000FE
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_800CFC5C
    or      v1, v0, $zero              # v1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800D31F0
    addiu   a1, $zero, 0x0080          # a1 = 00000080
    or      v1, v0, $zero              # v1 = 00000000
lbl_800CFC5C:
    beq     v0, $zero, lbl_800CFC6C
    lw      a0, 0x0048($sp)
    beq     $zero, $zero, lbl_800CFD4C
    or      v0, v1, $zero              # v0 = 00000000
lbl_800CFC6C:
    lw      a1, 0x0050($sp)
    addiu   a2, $zero, 0x0400          # a2 = 00000400
    jal     func_800D44B0
    addiu   a3, $sp, 0x0024            # a3 = FFFFFFDC
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_800CFC8C
    or      v1, v0, $zero              # v1 = 00000000
    addiu   v1, $zero, 0x0004          # v1 = 00000004
lbl_800CFC8C:
    beq     v1, $zero, lbl_800CFC9C
    lbu     t9, 0x0043($sp)
    beq     $zero, $zero, lbl_800CFD4C
    or      v0, v1, $zero              # v0 = 00000004
lbl_800CFC9C:
    addiu   $at, $zero, 0x00FE         # $at = 000000FE
    bne     t9, $at, lbl_800CFCB0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800CFD4C
    addiu   v0, $zero, 0x000B          # v0 = 0000000B
lbl_800CFCB0:
    jal     func_800D31F0
    addiu   a1, $zero, 0x0080          # a1 = 00000080
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_800CFCC8
    or      v1, v0, $zero              # v1 = 00000000
    addiu   v1, $zero, 0x0004          # v1 = 00000004
lbl_800CFCC8:
    beq     v1, $zero, lbl_800CFCD8
    lw      a0, 0x0048($sp)
    beq     $zero, $zero, lbl_800CFD4C
    or      v0, v1, $zero              # v0 = 00000004
lbl_800CFCD8:
    lw      a1, 0x0050($sp)
    addiu   a2, $zero, 0x0400          # a2 = 00000400
    jal     func_800D44B0
    addiu   a3, $sp, 0x0024            # a3 = FFFFFFDC
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_800CFCF8
    or      v1, v0, $zero              # v1 = 00000000
    addiu   v1, $zero, 0x0004          # v1 = 00000004
lbl_800CFCF8:
    beq     v1, $zero, lbl_800CFD08
    lbu     t0, 0x0043($sp)
    beq     $zero, $zero, lbl_800CFD4C
    or      v0, v1, $zero              # v0 = 00000004
lbl_800CFD08:
    addiu   $at, $zero, 0x0080         # $at = 00000080
    beql    t0, $at, lbl_800CFD20
    lw      t1, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_800CFD4C
    addiu   v0, $zero, 0x000B          # v0 = 0000000B
    lw      t1, 0x0000(s0)             # 00000000
lbl_800CFD20:
    lw      a0, 0x0050($sp)
    lui     t5, 0x8013                 # t5 = 80130000
    andi    t2, t1, 0x0008             # t2 = 00000000
    bne     t2, $zero, lbl_800CFD40
    sll     t4, a0,  6
    addiu   t5, t5, 0xBB00             # t5 = 8012BB00
    jal     func_800CFAF8
    addu    a1, t4, t5
lbl_800CFD40:
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    sw      t6, 0x0000(s0)             # 00000000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800CFD4C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_800CFD60:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x8010                # $at = 80100000
    lui     a0, 0x8013                 # a0 = 80130000
    lui     a1, 0x8013                 # a1 = 80130000
    sw      t6, 0x5CA0($at)            # 80105CA0
    addiu   a1, a1, 0xBC00             # a1 = 8012BC00
    addiu   a0, a0, 0xBC08             # a0 = 8012BC08
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a0, 0x8013                 # a0 = 80130000
    addiu   a0, a0, 0xBC08             # a0 = 8012BC08
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80001E20              # osSendMesg
    or      a2, $zero, $zero           # a2 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CFDB0:
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t6, 0x5CA0(t6)             # 80105CA0
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    bne     t6, $zero, lbl_800CFDD0
    nop
    jal     func_800CFD60
    nop
lbl_800CFDD0:
    lui     a0, 0x8013                 # a0 = 80130000
    addiu   a0, a0, 0xBC08             # a0 = 8012BC08
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFFC
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800CFDF4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x8013                 # a0 = 80130000
    addiu   a0, a0, 0xBC08             # a0 = 8012BC08
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80001E20              # osSendMesg
    or      a2, $zero, $zero           # a2 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800CFE20:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t6, 0x5CB0(t6)             # 80105CB0
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0070($sp)
    sw      a1, 0x0074($sp)
    sw      a2, 0x0078($sp)
    beq     t6, $zero, lbl_800CFE4C
    sw      $zero, 0x0068($sp)
    beq     $zero, $zero, lbl_800CFF80
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800CFE4C:
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x8010                # $at = 80100000
    jal     func_800048C0              # osGetTime
    sw      t7, 0x5CB0($at)            # 80105CB0
    sw      v0, 0x0060($sp)
    lw      t8, 0x0060($sp)
    sw      v1, 0x0064($sp)
    lw      t9, 0x0064($sp)
    bne     t8, $zero, lbl_800CFEF0
    lui     $at, 0x0165                # $at = 01650000
    ori     $at, $at, 0xA0BC           # $at = 0165A0BC
    sltu    $at, t9, $at
    beq     $at, $zero, lbl_800CFEF0
    nop
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFB8
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFFC
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t0, 0x0060($sp)
    lw      t1, 0x0064($sp)
    lui     t3, 0x0165                 # t3 = 01650000
    ori     t3, t3, 0xA0BC             # t3 = 0165A0BC
    addiu   t2, $zero, 0x0000          # t2 = 00000000
    addiu   t4, $zero, 0x0000          # t4 = 00000000
    addiu   t5, $zero, 0x0000          # t5 = 00000000
    addiu   t6, $sp, 0x0028            # t6 = FFFFFFB8
    addiu   t7, $sp, 0x006C            # t7 = FFFFFFFC
    subu    a2, t2, t0
    sltu    $at, t3, t1
    subu    a2, a2, $at
    sw      t7, 0x001C($sp)
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFD0
    jal     func_80005A70
    subu    a3, t3, t1
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFB8
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFFC
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_800CFEF0:
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    lui     $at, 0x8013                # $at = 80130000
    sb      t8, -0x439F($at)           # 8012BC61
    jal     func_800D0060
    or      a0, $zero, $zero           # a0 = 00000000
    lui     a1, 0x8013                 # a1 = 80130000
    addiu   a1, a1, 0xBC20             # a1 = 8012BC20
    jal     func_800D0660
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    sw      v0, 0x0068($sp)
    lw      a0, 0x0070($sp)
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFFC
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a1, 0x8013                 # a1 = 80130000
    addiu   a1, a1, 0xBC20             # a1 = 8012BC20
    jal     func_800D0660
    or      a0, $zero, $zero           # a0 = 00000000
    sw      v0, 0x0068($sp)
    lw      a0, 0x0070($sp)
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFFC
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x0074($sp)
    jal     func_800CFF90
    lw      a1, 0x0078($sp)
    lui     $at, 0x8013                # $at = 80130000
    jal     func_800CFD60
    sb      $zero, -0x43A0($at)        # 8012BC60
    lui     a0, 0x8013                 # a0 = 80130000
    lui     a1, 0x8013                 # a1 = 80130000
    addiu   a1, a1, 0xBCA0             # a1 = 8012BCA0
    addiu   a0, a0, 0xBC88             # a0 = 8012BC88
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      v0, 0x0068($sp)
lbl_800CFF80:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    jr      $ra
    nop


func_800CFF90:
# padmgr related
# A0 = ? (struct on stack)
# A1 = Input Context (8011D500)
    lui     t7, 0x8013                 # t7 = 80130000
    lbu     t7, -0x439F(t7)            # 8012BC61
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     t6, 0x8013                 # t6 = 80130000
    addiu   t6, t6, 0xBC20             # t6 = 8012BC20
    sb      $zero, 0x0007($sp)
    sw      t6, 0x0014($sp)
    blez    t7, lbl_800D0050
    sw      $zero, 0x0008($sp)
lbl_800CFFB4:
    lw      t9, 0x0014($sp)
    addiu   t8, $sp, 0x000C            # t8 = FFFFFFF4
    lwl     $at, 0x0000(t9)            # 00000000
    lwr     $at, 0x0003(t9)            # 00000003
    sw      $at, 0x0000(t8)            # FFFFFFF4
    lwl     t1, 0x0004(t9)             # 00000004
    lwr     t1, 0x0007(t9)             # 00000007
    sw      t1, 0x0004(t8)             # FFFFFFF8
    lbu     t2, 0x000E($sp)
    andi    t3, t2, 0x00C0             # t3 = 00000000
    sra     t4, t3,  4
    sb      t4, 0x0003(a1)             # 00000003
    lbu     t5, 0x0003(a1)             # 00000003
    bne     t5, $zero, lbl_800D0024
    nop
    lbu     t6, 0x0011($sp)
    lbu     t0, 0x0010($sp)
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sll     t7, t6,  8
    or      t8, t7, t0                 # t8 = 80130000
    sh      t8, 0x0000(a1)             # 00000000
    lbu     t9, 0x0012($sp)
    sb      t9, 0x0002(a1)             # 00000002
    lw      t2, 0x0008($sp)
    lbu     t1, 0x0007($sp)
    sllv    t4, t3, t2
    or      t5, t1, t4                 # t5 = 00000000
    sb      t5, 0x0007($sp)
lbl_800D0024:
    lw      t6, 0x0008($sp)
    lui     t9, 0x8013                 # t9 = 80130000
    lbu     t9, -0x439F(t9)            # 8012BC61
    lw      t0, 0x0014($sp)
    addiu   t7, t6, 0x0001             # t7 = 8012BC21
    slt     $at, t7, t9
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x0014($sp)
    sw      t7, 0x0008($sp)
    bne     $at, $zero, lbl_800CFFB4
    addiu   a1, a1, 0x0004             # a1 = 00000004
lbl_800D0050:
    lbu     t3, 0x0007($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    sb      t3, 0x0000(a0)             # 00000000


func_800D0060:
    addiu   $sp, $sp, 0xFFF0           # $sp -= 0x10
    andi    a0, a0, 0x00FF             # a0 = 00000000
    sw      $zero, 0x0000($sp)
lbl_800D006C:
    lw      t6, 0x0000($sp)
    lw      t8, 0x0000($sp)
    lui     $at, 0x8013                # $at = 80130000
    sll     t7, t6,  2
    addu    $at, $at, t7
    sw      $zero, -0x43E0($at)        # 8012BC20
    addiu   t9, t8, 0x0001             # t9 = 00000001
    slti    $at, t9, 0x000F
    bne     $at, $zero, lbl_800D006C
    sw      t9, 0x0000($sp)
    lui     t9, 0x8013                 # t9 = 80130000
    lbu     t9, -0x439F(t9)            # 8012BC61
    lui     t1, 0x8013                 # t1 = 80130000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     $at, 0x8013                # $at = 80130000
    addiu   t1, t1, 0xBC20             # t1 = 8012BC20
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t0, -0x43A4($at)           # 8012BC5C
    sw      t1, 0x000C($sp)
    sb      t2, 0x0004($sp)
    sb      t3, 0x0005($sp)
    sb      t4, 0x0006($sp)
    sb      a0, 0x0007($sp)
    sb      t5, 0x0008($sp)
    sb      t6, 0x0009($sp)
    sb      t7, 0x000A($sp)
    sb      t8, 0x000B($sp)
    blez    t9, lbl_800D0140
    sw      $zero, 0x0000($sp)
lbl_800D00F8:
    addiu   t1, $sp, 0x0004            # t1 = FFFFFFF4
    lw      $at, 0x0000(t1)            # FFFFFFF4
    lw      t0, 0x000C($sp)
    lui     t8, 0x8013                 # t8 = 80130000
    swl     $at, 0x0000(t0)            # 00000001
    swr     $at, 0x0003(t0)            # 00000004
    lw      t3, 0x0004(t1)             # FFFFFFF8
    swl     t3, 0x0004(t0)             # 00000005
    swr     t3, 0x0007(t0)             # 00000008
    lw      t6, 0x0000($sp)
    lbu     t8, -0x439F(t8)            # 8012BC61
    lw      t4, 0x000C($sp)
    addiu   t7, t6, 0x0001             # t7 = 00000100
    slt     $at, t7, t8
    addiu   t5, t4, 0x0008             # t5 = 0000000B
    sw      t7, 0x0000($sp)
    bne     $at, $zero, lbl_800D00F8
    sw      t5, 0x000C($sp)
lbl_800D0140:
    lw      t2, 0x000C($sp)
    addiu   t9, $zero, 0x00FE          # t9 = 000000FE
    addiu   $sp, $sp, 0x0010           # $sp += 0x10
    jr      $ra
    sb      t9, 0x0000(t2)             # 000000FF
    nop
    nop
    nop


func_800D0160:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    jal     func_800CFDB0
    sw      a0, 0x0020($sp)
    lui     t6, 0x8013                 # t6 = 80130000
    lbu     t6, -0x43A0(t6)            # 8012BC60
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     t6, $at, lbl_800D01AC
    nop
    jal     func_800D0270
    nop
    lui     a1, 0x8013                 # a1 = 80130000
    addiu   a1, a1, 0xBC20             # a1 = 8012BC20
    jal     func_800D0660
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      a0, 0x0020($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_800D01AC:
    lui     a1, 0x8013                 # a1 = 80130000
    addiu   a1, a1, 0xBC20             # a1 = 8012BC20
    jal     func_800D0660
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x8013                # $at = 80130000
    sw      v0, 0x001C($sp)
    jal     func_800CFDF4
    sb      t7, -0x43A0($at)           # 8012BC60
    lw      $ra, 0x0014($sp)
    lw      v0, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800D01E4:
    lui     a1, 0x8013                 # a1 = 80130000
    addiu   a1, a1, 0xBC61             # a1 = 8012BC61
    lbu     t6, 0x0000(a1)             # 8012BC61
    lui     v0, 0x8013                 # v0 = 80130000
    addiu   $sp, $sp, 0xFFF0           # $sp -= 0x10
    addiu   v0, v0, 0xBC20             # v0 = 8012BC20
    blez    t6, lbl_800D0268
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   a2, $sp, 0x0004            # a2 = FFFFFFF4
lbl_800D0208:
    lwl     $at, 0x0000(v0)            # 8012BC20
    lwr     $at, 0x0003(v0)            # 8012BC23
    sw      $at, 0x0000(a2)            # FFFFFFF4
    lwl     t8, 0x0004(v0)             # 8012BC24
    lwr     t8, 0x0007(v0)             # 8012BC27
    sw      t8, 0x0004(a2)             # FFFFFFF8
    lbu     t9, 0x0006($sp)
    andi    t0, t9, 0x00C0             # t0 = 00000000
    sra     t1, t0,  4
    andi    t2, t1, 0x00FF             # t2 = 00000000
    bne     t2, $zero, lbl_800D0250
    sb      t1, 0x0004(a0)             # 00000004
    lhu     t3, 0x0008($sp)
    sh      t3, 0x0000(a0)             # 00000000
    lb      t4, 0x000A($sp)
    sb      t4, 0x0002(a0)             # 00000002
    lb      t5, 0x000B($sp)
    sb      t5, 0x0003(a0)             # 00000003
lbl_800D0250:
    lbu     t6, 0x0000(a1)             # 8012BC61
    addiu   v1, v1, 0x0001             # v1 = 00000001
    addiu   v0, v0, 0x0008             # v0 = 8012BC28
    slt     $at, v1, t6
    bne     $at, $zero, lbl_800D0208
    addiu   a0, a0, 0x0006             # a0 = 00000006
lbl_800D0268:
    jr      $ra
    addiu   $sp, $sp, 0x0010           # $sp += 0x10


func_800D0270:
    lui     a1, 0x8013                 # a1 = 80130000
    addiu   a1, a1, 0xBC20             # a1 = 8012BC20
    lui     a0, 0x8013                 # a0 = 80130000
    lui     v1, 0x8013                 # v1 = 80130000
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    or      v0, a1, $zero              # v0 = 8012BC20
    addiu   v1, v1, 0xBC5C             # v1 = 8012BC5C
    addiu   a0, a0, 0xBC20             # a0 = 8012BC20
lbl_800D0290:
    addiu   a0, a0, 0x0004             # a0 = 8012BC24
    sltu    $at, a0, v1
    bne     $at, $zero, lbl_800D0290
    sw      $zero, -0x0004(a0)         # 8012BC20
    lui     a0, 0x8013                 # a0 = 80130000
    addiu   a0, a0, 0xBC61             # a0 = 8012BC61
    lbu     t4, 0x0000(a0)             # 8012BC61
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    ori     t1, $zero, 0xFFFF          # t1 = 0000FFFF
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    sw      t6, 0x003C(a1)             # 8012BC5C
    sb      t7, 0x000C($sp)
    sb      t8, 0x000D($sp)
    sb      t9, 0x000E($sp)
    sb      t0, 0x000F($sp)
    sh      t1, 0x0010($sp)
    sb      t2, 0x0012($sp)
    sb      t3, 0x0013($sp)
    blez    t4, lbl_800D0328
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   a1, $sp, 0x000C            # a1 = FFFFFFF4
    lw      $at, 0x0000(a1)            # FFFFFFF4
lbl_800D02FC:
    addiu   v1, v1, 0x0001             # v1 = 00000001
    addiu   v0, v0, 0x0008             # v0 = 8012BC28
    swl     $at, -0x0008(v0)           # 8012BC20
    swr     $at, -0x0005(v0)           # 8012BC23
    lw      t6, 0x0004(a1)             # FFFFFFF8
    swl     t6, -0x0004(v0)            # 8012BC24
    swr     t6, -0x0001(v0)            # 8012BC27
    lbu     t7, 0x0000(a0)             # 8012BC61
    slt     $at, v1, t7
    bnel    $at, $zero, lbl_800D02FC
    lw      $at, 0x0000(a1)            # FFFFFFF4
lbl_800D0328:
    addiu   t8, $zero, 0x00FE          # t8 = 000000FE
    sb      t8, 0x0000(v0)             # 8012BC28
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    nop
    nop


func_800D0340:
# Related to creating the camera matrix
# A0 = Address to store 4x4 Identity Matrix
# A2 = Angle of View (float)
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    mtc1    a2, $f14                   # $f14 = 0.00
    sw      $ra, 0x0014($sp)
    sw      a3, 0x003C($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    jal     func_800D0830
    swc1    $f14, 0x0038($sp)
    lwc1    $f14, 0x0038($sp)
    lui     $at, 0x8011                # $at = 80110000
    ldc1    $f6, -0x58F0($at)          # 8010A710
    cvt.d.s $f4, $f14
    lui     $at, 0x4000                # $at = 40000000
    mul.d   $f8, $f4, $f6
    mtc1    $at, $f10                  # $f10 = 2.00
    cvt.s.d $f14, $f8
    div.s   $f12, $f14, $f10
    jal     func_800D2CD0
    swc1    $f12, 0x001C($sp)
    lwc1    $f12, 0x001C($sp)
    jal     func_800CF470
    swc1    $f0, 0x0020($sp)
    lwc1    $f4, 0x0020($sp)
    lwc1    $f6, 0x003C($sp)
    lwc1    $f14, 0x0040($sp)
    div.s   $f2, $f4, $f0
    lwc1    $f16, 0x0044($sp)
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    add.s   $f18, $f14, $f16
    lw      v0, 0x0030($sp)
    lui     $at, 0x4000                # $at = 40000000
    sub.s   $f12, $f14, $f16
    lw      a1, 0x0034($sp)
    swc1    $f4, 0x002C(v0)            # 0000002C
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    div.s   $f10, $f18, $f12
    swc1    $f2, 0x0014(v0)            # 00000014
    div.s   $f8, $f2, $f6
    mtc1    $at, $f6                   # $f6 = 2.00
    swc1    $f10, 0x0028(v0)           # 00000028
    swc1    $f8, 0x0000(v0)            # 00000000
    mul.s   $f8, $f6, $f14
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    swc1    $f6, 0x003C(v0)            # 0000003C
    mul.s   $f10, $f8, $f16
    div.s   $f4, $f10, $f12
    swc1    $f4, 0x0038(v0)            # 00000038
    lwc1    $f0, 0x0048($sp)
    lwc1    $f6, 0x0000(v0)            # 00000000
    addiu   v1, v1, 0x0001             # v1 = 00000001
    lwc1    $f16, 0x0004(v0)           # 00000004
    mul.s   $f10, $f6, $f0
    lwc1    $f12, 0x0008(v0)           # 00000008
    beq     v1, a0, lbl_800D0464
    lwc1    $f14, 0x000C(v0)           # 0000000C
lbl_800D0428:
    mul.s   $f8, $f16, $f0
    lwc1    $f6, 0x0010(v0)            # 00000010
    lwc1    $f16, 0x0014(v0)           # 00000014
    mul.s   $f4, $f12, $f0
    lwc1    $f12, 0x0018(v0)           # 00000018
    addiu   v1, v1, 0x0001             # v1 = 00000002
    mul.s   $f2, $f14, $f0
    lwc1    $f14, 0x001C(v0)           # 0000001C
    swc1    $f10, 0x0000(v0)           # 00000000
    mul.s   $f10, $f6, $f0
    swc1    $f8, 0x0004(v0)            # 00000004
    swc1    $f4, 0x0008(v0)            # 00000008
    addiu   v0, v0, 0x0010             # v0 = 00000010
    bne     v1, a0, lbl_800D0428
    swc1    $f2, -0x0004(v0)           # 0000000C
lbl_800D0464:
    mul.s   $f8, $f16, $f0
    addiu   v0, v0, 0x0010             # v0 = 00000020
    swc1    $f10, -0x0010(v0)          # 00000010
    mul.s   $f4, $f12, $f0
    nop
    mul.s   $f2, $f14, $f0
    swc1    $f8, -0x000C(v0)           # 00000014
    swc1    $f4, -0x0008(v0)           # 00000018
    swc1    $f2, -0x0004(v0)           # 0000001C
    beq     a1, $zero, lbl_800D0560
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f9                   # $f9 = 2.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    cvt.d.s $f0, $f18
    ori     t6, $zero, 0xFFFF          # t6 = 0000FFFF
    c.le.d  $f0, $f8
    lui     $at, 0x4100                # $at = 41000000
    bc1fl   lbl_800D04BC
    mtc1    $at, $f11                  # $f11 = 8.00
    beq     $zero, $zero, lbl_800D0560
    sh      t6, 0x0000(a1)             # 00000000
    mtc1    $at, $f11                  # $f11 = 8.00
lbl_800D04BC:
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x41E0                # $at = 41E00000
    div.d   $f4, $f10, $f0
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    cfc1    t7, $f31
    ctc1    t8, $f31
    nop
    cvt.w.d $f6, $f4
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_800D0540
    mfc1    t8, $f6
    mtc1    $at, $f7                   # $f7 = 28.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.d   $f6, $f4, $f6
    ctc1    t8, $f31
    nop
    cvt.w.d $f6, $f6
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_800D0534
    nop
    mfc1    t8, $f6
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_800D054C
    or      t8, t8, $at                # t8 = 80000000
lbl_800D0534:
    beq     $zero, $zero, lbl_800D054C
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f6
lbl_800D0540:
    nop
    bltz    t8, lbl_800D0534
    nop
lbl_800D054C:
    ctc1    t7, $f31
    andi    t9, t8, 0xFFFF             # t9 = 0000FFFF
    bgtz    t9, lbl_800D0560
    sh      t8, 0x0000(a1)             # 00000000
    sh      t0, 0x0000(a1)             # 00000000
lbl_800D0560:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_800D0570:
# Rendering, Creates a projection matrix
# A0 = Address to write gbi compatible projection matrix
# A1 = ? (Global Context)
# A2 = Angle of View (float)
# A3 = ?
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    lwc1    $f4, 0x0078($sp)
    lwc1    $f6, 0x007C($sp)
    lwc1    $f8, 0x0080($sp)
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0068($sp)
    mfc1    a2, $f12
    mfc1    a3, $f14
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFC0
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    jal     func_800D0340
    swc1    $f8, 0x0018($sp)
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFC0
    jal     func_800D0730
    lw      a1, 0x0068($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop
    nop
    nop


func_800D05D0:
# s32 __osSpRawStartDma(s32 direction, u32 devAddr, void* dramAddr, u32 size)
# Transfer To/From RCP IMEM or DMEM
# Aborts with return -1 if the interface is busy (dma busy, dma full, or io full)
# A0 = s32 direction (0 to write to RDRAM, 1 to read into I/DMEM)
# A1 = u32 value to set SP_MEM_ADDR_REG to
# A2 = void* RDRAM Address to read/write from
# A3 = u32 transfer size
# V0 = 0 if the operation could be done, else -1
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    jal     func_800D23F0
    sw      a3, 0x0024($sp)
    beq     v0, $zero, lbl_800D05FC
    lw      t6, 0x001C($sp)
    beq     $zero, $zero, lbl_800D0644
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_800D05FC:
    lui     t7, 0xA404                 # t7 = A4040000
    sw      t6, 0x0000(t7)             # A4040000
    jal     func_80003B60              # osVirtualToPhysical
    lw      a0, 0x0020($sp)
    lui     t8, 0xA404                 # t8 = A4040000
    sw      v0, 0x0004(t8)             # A4040004
    lw      t9, 0x0018($sp)
    lw      t3, 0x0024($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t9, $zero, lbl_800D063C
    addiu   t4, t3, 0xFFFF             # t4 = FFFFFFFF
    lw      t0, 0x0024($sp)
    lui     t2, 0xA404                 # t2 = A4040000
    addiu   t1, t0, 0xFFFF             # t1 = FFFFFFFF
    beq     $zero, $zero, lbl_800D0644
    sw      t1, 0x000C(t2)             # A404000C
lbl_800D063C:
    lui     t5, 0xA404                 # t5 = A4040000
    sw      t4, 0x0008(t5)             # A4040008
lbl_800D0644:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
    nop


func_800D0660:
# Related to fetching input
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     t6, 0xA480                 # t6 = A4800000
    lw      t7, 0x0018(t6)             # A4800018
    or      a2, a0, $zero              # a2 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    t8, t7, 0x0003             # t8 = 00000000
    beq     t8, $zero, lbl_800D0690
    nop
    beq     $zero, $zero, lbl_800D06FC
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_800D0690:
    bne     a2, $at, lbl_800D06A8
    lw      a0, 0x001C($sp)
    addiu   a1, $zero, 0x0040          # a1 = 00000040
    jal     func_80003440              # osWritebackDCache
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
lbl_800D06A8:
    lw      a0, 0x001C($sp)
    jal     func_80003B60              # osVirtualToPhysical
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lui     t9, 0xA480                 # t9 = A4800000
    sw      v0, 0x0000(t9)             # A4800000
    bne     a2, $zero, lbl_800D06DC
    lui     t2, 0x1FC0                 # t2 = 1FC00000
    lui     t0, 0x1FC0                 # t0 = 1FC00000
    ori     t0, t0, 0x07C0             # t0 = 1FC007C0
    lui     t1, 0xA480                 # t1 = A4800000
    beq     $zero, $zero, lbl_800D06E8
    sw      t0, 0x0004(t1)             # A4800004
lbl_800D06DC:
    ori     t2, t2, 0x07C0             # t2 = 1FC007C0
    lui     t3, 0xA480                 # t3 = A4800000
    sw      t2, 0x0010(t3)             # A4800010
lbl_800D06E8:
    bne     a2, $zero, lbl_800D06F8
    lw      a0, 0x001C($sp)
    jal     func_80004250              # osInvalDCache
    addiu   a1, $zero, 0x0040          # a1 = 00000040
lbl_800D06F8:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800D06FC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop


func_800D0710:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800D5A90
    addiu   a0, $zero, 0x0400          # a0 = 00000400
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800D0730:
# Converts floating point matrix into gbi compatable matrix
# A0 = 4x4 Matrix Ptr
# A1 = FDL1 pointer
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f0                   # $f0 = 65536.00
    or      v0, a1, $zero              # v0 = 00000000
    addiu   v1, a1, 0x0020             # v1 = 00000020
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, a0, $zero              # a3 = 00000000
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    lui     t2, 0xFFFF                 # t2 = FFFF0000
lbl_800D0754:
    or      a0, $zero, $zero           # a0 = 00000000
    or      t0, a3, $zero              # t0 = 00000000
    lwc1    $f14, 0x0004(t0)           # 00000004
    addiu   a0, a0, 0x0001             # a0 = 00000001
    lwc1    $f18, 0x0000(t0)           # 00000000
    mul.s   $f16, $f14, $f0
    beq     a0, t3, lbl_800D07D4
    nop
lbl_800D0774:
    mul.s   $f14, $f18, $f0
    addiu   a0, a0, 0x0001             # a0 = 00000002
    addiu   v0, v0, 0x0004             # v0 = 00000004
    addiu   v1, v1, 0x0004             # v1 = 00000024
    addiu   t0, t0, 0x0008             # t0 = 00000008
    trunc.w.s $f12, $f16
    trunc.w.s $f14, $f14
    mfc1    t1, $f12
    mfc1    a1, $f14
    sra     t9, t1, 16
    andi    t5, t9, 0xFFFF             # t5 = 00000000
    and     t8, a1, t2
    or      t6, t8, t5                 # t6 = 00000000
    sll     t7, a1, 16
    and     t9, t7, t2
    sw      t6, -0x0004(v0)            # 00000000
    andi    t8, t1, 0xFFFF             # t8 = 00000000
    or      t5, t9, t8                 # t5 = 00000000
    sw      t5, -0x0004(v1)            # 00000020
    lwc1    $f14, 0x0004(t0)           # 0000000C
    lwc1    $f18, 0x0000(t0)           # 00000008
    mul.s   $f16, $f14, $f0
    bne     a0, t3, lbl_800D0774
    nop
lbl_800D07D4:
    mul.s   $f14, $f18, $f0
    addiu   t0, t0, 0x0008             # t0 = 00000010
    addiu   v0, v0, 0x0004             # v0 = 00000008
    addiu   v1, v1, 0x0004             # v1 = 00000028
    trunc.w.s $f12, $f16
    trunc.w.s $f14, $f14
    mfc1    t1, $f12
    mfc1    a1, $f14
    sra     t9, t1, 16
    andi    t5, t9, 0xFFFF             # t5 = 00000000
    and     t8, a1, t2
    or      t6, t8, t5                 # t6 = 00000000
    sll     t7, a1, 16
    and     t9, t7, t2
    andi    t8, t1, 0xFFFF             # t8 = 00000000
    sw      t6, -0x0004(v0)            # 00000004
    or      t5, t9, t8                 # t5 = 00000000
    sw      t5, -0x0004(v1)            # 00000024
    addiu   a2, a2, 0x0001             # a2 = 00000001
    bne     a2, t4, lbl_800D0754
    addiu   a3, a3, 0x0010             # a3 = 00000010
    jr      $ra
    nop


func_800D0830:
# guMtxIdentF
# Writes 4x4 identity matrix (floats) to a given address
# A0 = address to write matrix
    lui     $at, 0x3F80                # $at = 3F800000
    or      v1, a0, $zero              # v1 = 00000000
    mtc1    $at, $f0                   # $f0 = 1.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addiu   a1, $zero, 0x0002          # a1 = 00000002
lbl_800D0854:
    bnel    v0, $zero, lbl_800D0868
    swc1    $f2, 0x0000(v1)            # 00000000
    beq     $zero, $zero, lbl_800D0868
    swc1    $f0, 0x0000(v1)            # 00000000
    swc1    $f2, 0x0000(v1)            # 00000000
lbl_800D0868:
    bnel    v0, a0, lbl_800D087C
    swc1    $f2, 0x0004(v1)            # 00000004
    beq     $zero, $zero, lbl_800D087C
    swc1    $f0, 0x0004(v1)            # 00000004
    swc1    $f2, 0x0004(v1)            # 00000004
lbl_800D087C:
    bnel    v0, a1, lbl_800D0890
    swc1    $f2, 0x0008(v1)            # 00000008
    beq     $zero, $zero, lbl_800D0890
    swc1    $f0, 0x0008(v1)            # 00000008
    swc1    $f2, 0x0008(v1)            # 00000008
lbl_800D0890:
    bnel    v0, a2, lbl_800D08A4
    swc1    $f2, 0x000C(v1)            # 0000000C
    beq     $zero, $zero, lbl_800D08A4
    swc1    $f0, 0x000C(v1)            # 0000000C
    swc1    $f2, 0x000C(v1)            # 0000000C
lbl_800D08A4:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    bne     v0, a3, lbl_800D0854
    addiu   v1, v1, 0x0010             # v1 = 00000010
    jr      $ra
    nop


func_800D08B8:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0058($sp)
    jal     func_800D0830
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFC0
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFC0
    jal     func_800D0730
    lw      a1, 0x0058($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_800D08E8:
    lui     $at, 0x3780                # $at = 37800000
    mtc1    $at, $f0                   # $f0 = 0.00
    addiu   $sp, $sp, 0xFFF0           # $sp -= 0x10
    or      v0, a1, $zero              # v0 = 00000000
    addiu   v1, a1, 0x0020             # v1 = 00000020
    or      a2, $zero, $zero           # a2 = 00000000
    or      t0, a0, $zero              # t0 = 00000000
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    lui     t2, 0xFFFF                 # t2 = FFFF0000
lbl_800D0910:
    or      a0, $zero, $zero           # a0 = 00000000
    or      t1, t0, $zero              # t1 = 00000000
lbl_800D0918:
    lw      t6, 0x0000(v1)             # 00000020
    lw      t9, 0x0000(v0)             # 00000000
    addiu   a0, a0, 0x0001             # a0 = 00000001
    srl     t7, t6, 16
    andi    t8, t7, 0xFFFF             # t8 = 00000000
    and     t5, t9, t2
    or      t6, t8, t5                 # t6 = 00000000
    sw      t6, 0x0004($sp)
    lw      t8, 0x0000(v0)             # 00000000
    lw      a1, 0x0004($sp)
    lw      t7, 0x0000(v1)             # 00000020
    sll     t5, t8, 16
    mtc1    a1, $f4                    # $f4 = 0.00
    and     t6, t5, t2
    andi    t9, t7, 0xFFFF             # t9 = 00000000
    or      a3, t9, t6                 # a3 = 00000000
    cvt.s.w $f6, $f4
    mtc1    a3, $f10                   # $f10 = 0.00
    sw      a3, 0x0000($sp)
    addiu   t1, t1, 0x0008             # t1 = 00000008
    addiu   v0, v0, 0x0004             # v0 = 00000004
    cvt.s.w $f16, $f10
    mul.s   $f8, $f6, $f0
    addiu   v1, v1, 0x0004             # v1 = 00000024
    mul.s   $f18, $f16, $f0
    swc1    $f8, -0x0008(t1)           # 00000000
    bne     a0, t3, lbl_800D0918
    swc1    $f18, -0x0004(t1)          # 00000004
    addiu   a2, a2, 0x0001             # a2 = 00000001
    bne     a2, t4, lbl_800D0910
    addiu   t0, t0, 0x0010             # t0 = 00000010
    jr      $ra
    addiu   $sp, $sp, 0x0010           # $sp += 0x10
    nop


func_800D09A0:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      $ra, 0x004C($sp)
    sw      s0, 0x0048($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sdc1    $f30, 0x0040($sp)
    sdc1    $f28, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a1, 0x0054($sp)
    sw      a2, 0x0058($sp)
    jal     func_800D0830
    sw      a3, 0x005C($sp)
    lwc1    $f4, 0x0060($sp)
    lwc1    $f6, 0x0054($sp)
    lwc1    $f8, 0x0064($sp)
    lwc1    $f10, 0x0058($sp)
    sub.s   $f0, $f4, $f6
    lwc1    $f6, 0x005C($sp)
    lwc1    $f4, 0x0068($sp)
    sub.s   $f22, $f8, $f10
    mul.s   $f8, $f0, $f0
    mov.s   $f20, $f0
    sub.s   $f24, $f4, $f6
    mul.s   $f10, $f22, $f22
    add.s   $f4, $f8, $f10
    mul.s   $f6, $f24, $f24
    jal     func_800D0DC0
    add.s   $f12, $f4, $f6
    lui     $at, 0xBFF0                # $at = BFF00000
    mtc1    $at, $f9                   # $f9 = -1.88
    mtc1    $zero, $f8                 # $f8 = 0.00
    cvt.d.s $f10, $f0
    lwc1    $f6, 0x0070($sp)
    div.d   $f4, $f8, $f10
    lwc1    $f10, 0x0074($sp)
    cvt.s.d $f2, $f4
    mul.s   $f20, $f20, $f2
    nop
    mul.s   $f22, $f22, $f2
    nop
    mul.s   $f24, $f24, $f2
    nop
    mul.s   $f8, $f6, $f24
    nop
    mul.s   $f4, $f10, $f22
    sub.s   $f26, $f8, $f4
    mul.s   $f8, $f10, $f20
    lwc1    $f4, 0x006C($sp)
    mul.s   $f10, $f4, $f24
    sub.s   $f28, $f8, $f10
    mul.s   $f8, $f4, $f22
    nop
    mul.s   $f10, $f6, $f20
    sub.s   $f30, $f8, $f10
    mul.s   $f4, $f26, $f26
    nop
    mul.s   $f6, $f28, $f28
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f30, $f30
    jal     func_800D0DC0
    add.s   $f12, $f8, $f10
    lui     $at, 0x3FF0                # $at = 3FF00000
    mtc1    $at, $f5                   # $f5 = 1.88
    mtc1    $zero, $f4                 # $f4 = 0.00
    cvt.d.s $f6, $f0
    div.d   $f8, $f4, $f6
    cvt.s.d $f2, $f8
    mul.s   $f26, $f26, $f2
    nop
    mul.s   $f28, $f28, $f2
    nop
    mul.s   $f30, $f30, $f2
    nop
    mul.s   $f10, $f22, $f30
    nop
    mul.s   $f4, $f24, $f28
    nop
    mul.s   $f6, $f24, $f26
    nop
    mul.s   $f8, $f20, $f30
    sub.s   $f14, $f10, $f4
    mul.s   $f10, $f20, $f28
    nop
    mul.s   $f4, $f22, $f26
    swc1    $f14, 0x006C($sp)
    sub.s   $f16, $f6, $f8
    mul.s   $f6, $f14, $f14
    nop
    mul.s   $f8, $f16, $f16
    swc1    $f16, 0x0070($sp)
    sub.s   $f18, $f10, $f4
    mul.s   $f4, $f18, $f18
    add.s   $f10, $f6, $f8
    swc1    $f18, 0x0074($sp)
    jal     func_800D0DC0
    add.s   $f12, $f10, $f4
    lui     $at, 0x3FF0                # $at = 3FF00000
    mtc1    $at, $f7                   # $f7 = 1.88
    mtc1    $zero, $f6                 # $f6 = 0.00
    cvt.d.s $f8, $f0
    lwc1    $f14, 0x006C($sp)
    div.d   $f10, $f6, $f8
    lwc1    $f12, 0x0070($sp)
    lwc1    $f4, 0x0074($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    cvt.s.d $f2, $f10
    mul.s   $f14, $f14, $f2
    nop
    mul.s   $f12, $f12, $f2
    nop
    mul.s   $f6, $f4, $f2
    swc1    $f6, 0x0074($sp)
    swc1    $f26, 0x0000(s0)           # 00000000
    swc1    $f28, 0x0010(s0)           # 00000010
    swc1    $f30, 0x0020(s0)           # 00000020
    lwc1    $f8, 0x0054($sp)
    lwc1    $f4, 0x0058($sp)
    mul.s   $f10, $f8, $f26
    nop
    mul.s   $f6, $f4, $f28
    lwc1    $f4, 0x005C($sp)
    swc1    $f14, 0x0004(s0)           # 00000004
    swc1    $f12, 0x0014(s0)           # 00000014
    add.s   $f8, $f10, $f6
    mul.s   $f10, $f4, $f30
    add.s   $f6, $f8, $f10
    neg.s   $f4, $f6
    swc1    $f4, 0x0030(s0)            # 00000030
    lwc1    $f0, 0x0074($sp)
    swc1    $f12, 0x0070($sp)
    swc1    $f14, 0x006C($sp)
    lwc1    $f14, 0x0054($sp)
    lwc1    $f12, 0x0058($sp)
    lwc1    $f2, 0x005C($sp)
    swc1    $f0, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x006C($sp)
    lwc1    $f6, 0x0070($sp)
    swc1    $f20, 0x0008(s0)           # 00000008
    mul.s   $f10, $f14, $f8
    swc1    $f22, 0x0018(s0)           # 00000018
    swc1    $f24, 0x0028(s0)           # 00000028
    mul.s   $f4, $f12, $f6
    add.s   $f8, $f10, $f4
    mul.s   $f6, $f2, $f0
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    swc1    $f0, 0x000C(s0)            # 0000000C
    swc1    $f0, 0x001C(s0)            # 0000001C
    swc1    $f0, 0x002C(s0)            # 0000002C
    add.s   $f10, $f8, $f6
    mul.s   $f8, $f14, $f20
    nop
    mul.s   $f6, $f12, $f22
    neg.s   $f4, $f10
    swc1    $f4, 0x0034(s0)            # 00000034
    mul.s   $f4, $f2, $f24
    add.s   $f10, $f8, $f6
    add.s   $f8, $f10, $f4
    mtc1    $at, $f10                  # $f10 = 1.00
    neg.s   $f6, $f8
    swc1    $f10, 0x003C(s0)           # 0000003C
    swc1    $f6, 0x0038(s0)            # 00000038
    lw      $ra, 0x004C($sp)
    lw      s0, 0x0048($sp)
    ldc1    $f30, 0x0040($sp)
    ldc1    $f28, 0x0038($sp)
    ldc1    $f26, 0x0030($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f20, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_800D0C58:
# Rendering, Creates camera matrix
# A0 = FDL pointer
# A1 = Camera X
# A2 = Camera Y
# A3 = Camera Z
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    lwc1    $f4, 0x0080($sp)
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    mtc1    a3, $f16                   # $f16 = 0.00
    swc1    $f4, 0x0010($sp)
    lwc1    $f4, 0x0094($sp)
    lwc1    $f6, 0x0084($sp)
    lwc1    $f8, 0x0088($sp)
    lwc1    $f10, 0x008C($sp)
    lwc1    $f18, 0x0090($sp)
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0070($sp)
    mfc1    a1, $f12
    mfc1    a2, $f14
    mfc1    a3, $f16
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFC0
    swc1    $f4, 0x0024($sp)
    swc1    $f6, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    swc1    $f10, 0x001C($sp)
    jal     func_800D09A0
    swc1    $f18, 0x0020($sp)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFC0
    jal     func_800D0730
    lw      a1, 0x0070($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    jr      $ra
    nop


func_800D0CD0:
# s32 osStopTimer(OSTimer* timer)
# Stop a given interval timer
# A0 = OSTimer* timer to stop
# V0 = 0 for success, else -1
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a0, 0x0030($sp)
    lw      t6, 0x0030($sp)
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lw      t7, 0x0000(t6)             # 00000000
    bne     t7, $zero, lbl_800D0CF8
    nop
    beq     $zero, $zero, lbl_800D0DA4
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_800D0CF8:
    jal     func_80005130              # __osDisableInt
    nop
    lw      t8, 0x0030($sp)
    lui     t0, 0x8000                 # t0 = 80000000
    lw      t0, 0x63B0(t0)             # 800063B0
    lw      t9, 0x0000(t8)             # 00000000
    or      s0, v0, $zero              # s0 = 00000000
    beq     t9, t0, lbl_800D0D4C
    sw      t9, 0x0028($sp)
    addiu   t1, t9, 0x0010             # t1 = 00000010
    sw      t1, 0x0024($sp)
    lw      t3, 0x0004(t1)             # 00000014
    lw      t5, 0x0014(t8)             # 00000014
    lw      t2, 0x0000(t1)             # 00000010
    lw      t4, 0x0010(t8)             # 00000010
    addu    t7, t3, t5
    sltu    $at, t7, t5
    addu    t6, $at, t2
    addu    t6, t6, t4
    sw      t6, 0x0000(t1)             # 00000010
    sw      t7, 0x0004(t1)             # 00000014
lbl_800D0D4C:
    lw      t0, 0x0030($sp)
    lui     t7, 0x8000                 # t7 = 80000000
    lw      t9, 0x0000(t0)             # 80000000
    lw      t8, 0x0004(t0)             # 80000004
    sw      t9, 0x0000(t8)             # 00000000
    lw      t2, 0x0030($sp)
    lw      t3, 0x0004(t2)             # 00000004
    lw      t4, 0x0000(t2)             # 00000000
    sw      t3, 0x0004(t4)             # 00000004
    lw      t5, 0x0030($sp)
    sw      $zero, 0x0000(t5)          # 00000000
    lw      t6, 0x0030($sp)
    sw      $zero, 0x0004(t6)          # 00000004
    lw      t7, 0x63B0(t7)             # 800063B0
    lw      t1, 0x0000(t7)             # 80000000
    bne     t1, t7, lbl_800D0D98
    nop
    jal     func_80004DB0              # __osSetCompare
    or      a0, $zero, $zero           # a0 = 00000000
lbl_800D0D98:
    jal     func_800051A0              # __osRestoreInt
    or      a0, s0, $zero              # a0 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800D0DA4:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop
    nop
    nop


func_800D0DC0:
    jr      $ra
    sqrt.s  $f0, $f12
    nop
    nop


func_800D0DD0:
# Zero the RSP Program Counter
# V0 = 0 if the operation could be done, else -1
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800D5D90
    or      a0, $zero, $zero           # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800D0DF0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    jal     func_800CFDB0
    sw      $zero, 0x001C($sp)
    lui     t6, 0x8013                 # t6 = 80130000
    lbu     t6, -0x43A0(t6)            # 8012BC60
    beq     t6, $zero, lbl_800D0E40
    nop
    jal     func_800D0060
    or      a0, $zero, $zero           # a0 = 00000000
    lui     a1, 0x8013                 # a1 = 80130000
    addiu   a1, a1, 0xBC20             # a1 = 8012BC20
    jal     func_800D0660
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    sw      v0, 0x001C($sp)
    lw      a0, 0x0020($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_800D0E40:
    lui     a1, 0x8013                 # a1 = 80130000
    addiu   a1, a1, 0xBC20             # a1 = 8012BC20
    jal     func_800D0660
    or      a0, $zero, $zero           # a0 = 00000000
    lui     $at, 0x8013                # $at = 80130000
    sw      v0, 0x001C($sp)
    jal     func_800CFDF4
    sb      $zero, -0x43A0($at)        # 8012BC60
    lw      $ra, 0x0014($sp)
    lw      v0, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800D0E74:
# Wrapper for 800CFF90
# A0 = Input Context (8011D500)
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    lw      a1, 0x0020($sp)
    jal     func_800CFF90
    addiu   a0, $sp, 0x001F            # a0 = FFFFFFFF
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop


func_800D0EA0:
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      $ra, 0x004C($sp)
    sw      s1, 0x0048($sp)
    sw      s0, 0x0044($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sdc1    $f30, 0x0038($sp)
    sdc1    $f28, 0x0030($sp)
    sdc1    $f26, 0x0028($sp)
    sdc1    $f24, 0x0020($sp)
    sdc1    $f22, 0x0018($sp)
    sdc1    $f20, 0x0010($sp)
    sw      a2, 0x00A0($sp)
    jal     func_800D0830
    sw      a3, 0x00A4($sp)
    lwc1    $f4, 0x00B0($sp)
    lwc1    $f6, 0x00A4($sp)
    lwc1    $f8, 0x00B4($sp)
    lwc1    $f10, 0x00A8($sp)
    sub.s   $f0, $f4, $f6
    lwc1    $f6, 0x00AC($sp)
    lwc1    $f4, 0x00B8($sp)
    sub.s   $f30, $f8, $f10
    mul.s   $f8, $f0, $f0
    mov.s   $f28, $f0
    sub.s   $f14, $f4, $f6
    mul.s   $f10, $f30, $f30
    swc1    $f14, 0x0088($sp)
    mul.s   $f6, $f14, $f14
    add.s   $f4, $f8, $f10
    jal     func_800D0DC0
    add.s   $f12, $f4, $f6
    lui     $at, 0xBFF0                # $at = BFF00000
    mtc1    $at, $f9                   # $f9 = -1.88
    mtc1    $zero, $f8                 # $f8 = 0.00
    cvt.d.s $f10, $f0
    lwc1    $f20, 0x0088($sp)
    div.d   $f4, $f8, $f10
    lwc1    $f6, 0x00C0($sp)
    lwc1    $f10, 0x00C4($sp)
    cvt.s.d $f2, $f4
    mul.s   $f28, $f28, $f2
    nop
    mul.s   $f30, $f30, $f2
    nop
    mul.s   $f20, $f20, $f2
    nop
    mul.s   $f8, $f6, $f20
    swc1    $f20, 0x0088($sp)
    mul.s   $f4, $f10, $f30
    sub.s   $f22, $f8, $f4
    mul.s   $f8, $f10, $f28
    lwc1    $f4, 0x00BC($sp)
    mul.s   $f10, $f4, $f20
    sub.s   $f24, $f8, $f10
    mul.s   $f8, $f4, $f30
    nop
    mul.s   $f10, $f6, $f28
    sub.s   $f26, $f8, $f10
    mul.s   $f4, $f22, $f22
    nop
    mul.s   $f6, $f24, $f24
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f26, $f26
    jal     func_800D0DC0
    add.s   $f12, $f8, $f10
    lui     $at, 0x3FF0                # $at = 3FF00000
    mtc1    $at, $f21                  # $f21 = 1.88
    mtc1    $zero, $f20                # $f20 = 0.00
    cvt.d.s $f4, $f0
    lwc1    $f10, 0x0088($sp)
    div.d   $f6, $f20, $f4
    cvt.s.d $f2, $f6
    mul.s   $f22, $f22, $f2
    nop
    mul.s   $f24, $f24, $f2
    nop
    mul.s   $f26, $f26, $f2
    nop
    mul.s   $f8, $f30, $f26
    nop
    mul.s   $f4, $f10, $f24
    sub.s   $f14, $f8, $f4
    mul.s   $f6, $f10, $f22
    nop
    mul.s   $f8, $f28, $f26
    swc1    $f14, 0x00BC($sp)
    mul.s   $f4, $f28, $f24
    nop
    mul.s   $f10, $f30, $f22
    sub.s   $f16, $f6, $f8
    mul.s   $f6, $f14, $f14
    nop
    mul.s   $f8, $f16, $f16
    swc1    $f16, 0x00C0($sp)
    sub.s   $f18, $f4, $f10
    mul.s   $f10, $f18, $f18
    add.s   $f4, $f6, $f8
    swc1    $f18, 0x00C4($sp)
    jal     func_800D0DC0
    add.s   $f12, $f4, $f10
    cvt.d.s $f6, $f0
    lwc1    $f4, 0x00BC($sp)
    div.d   $f8, $f20, $f6
    lwc1    $f6, 0x00C0($sp)
    lwc1    $f14, 0x00C8($sp)
    lwc1    $f16, 0x00CC($sp)
    lwc1    $f18, 0x00D0($sp)
    cvt.s.d $f2, $f8
    mul.s   $f10, $f4, $f2
    lwc1    $f4, 0x00C4($sp)
    mul.s   $f8, $f6, $f2
    swc1    $f10, 0x00BC($sp)
    mul.s   $f10, $f4, $f2
    swc1    $f8, 0x00C0($sp)
    mul.s   $f6, $f14, $f14
    nop
    mul.s   $f8, $f16, $f16
    swc1    $f10, 0x00C4($sp)
    mul.s   $f10, $f18, $f18
    add.s   $f4, $f6, $f8
    jal     func_800D0DC0
    add.s   $f12, $f4, $f10
    cvt.d.s $f6, $f0
    lwc1    $f4, 0x00C8($sp)
    div.d   $f8, $f20, $f6
    lwc1    $f6, 0x00CC($sp)
    cvt.s.d $f2, $f8
    mul.s   $f10, $f4, $f2
    lwc1    $f4, 0x00D0($sp)
    mul.s   $f8, $f6, $f2
    swc1    $f10, 0x00C8($sp)
    mul.s   $f6, $f4, $f2
    add.s   $f4, $f10, $f28
    swc1    $f8, 0x00CC($sp)
    add.s   $f10, $f8, $f30
    lwc1    $f8, 0x0088($sp)
    swc1    $f6, 0x00D0($sp)
    swc1    $f4, 0x005C($sp)
    add.s   $f6, $f6, $f8
    mul.s   $f8, $f4, $f4
    swc1    $f10, 0x0058($sp)
    mul.s   $f4, $f10, $f10
    swc1    $f6, 0x0054($sp)
    add.s   $f10, $f8, $f4
    mul.s   $f8, $f6, $f6
    jal     func_800D0DC0
    add.s   $f12, $f10, $f8
    lui     $at, 0x8011                # $at = 80110000
    ldc1    $f4, -0x58E0($at)          # 8010A720
    cvt.d.s $f2, $f0
    lw      v1, 0x00E4($sp)
    c.lt.d  $f4, $f2
    lw      v0, 0x00E0($sp)
    lw      t4, 0x00A0($sp)
    sll     t5, v1,  1
    bc1fl   lbl_800D11FC
    sll     t3, v0,  1
    div.d   $f6, $f20, $f2
    lwc1    $f10, 0x005C($sp)
    lwc1    $f8, 0x0058($sp)
    lwc1    $f4, 0x0054($sp)
    lw      v0, 0x00E0($sp)
    lui     $at, 0x4000                # $at = 40000000
    lw      t9, 0x00A0($sp)
    sll     t6, v0,  2
    lw      v1, 0x00E4($sp)
    sll     t0, v1,  2
    cvt.s.d $f12, $f6
    mul.s   $f14, $f10, $f12
    nop
    mul.s   $f16, $f8, $f12
    nop
    mul.s   $f18, $f4, $f12
    nop
    mul.s   $f6, $f14, $f22
    nop
    mul.s   $f10, $f16, $f24
    add.s   $f8, $f6, $f10
    mul.s   $f4, $f18, $f26
    mtc1    v0, $f10                   # $f10 = 0.00
    add.s   $f6, $f8, $f4
    cvt.s.w $f8, $f10
    mtc1    $at, $f10                  # $f10 = 2.00
    mul.s   $f4, $f6, $f8
    mtc1    t6, $f8                    # $f8 = 0.00
    mul.s   $f6, $f4, $f10
    cvt.s.w $f4, $f8
    add.s   $f10, $f4, $f6
    trunc.w.s $f8, $f10
    mfc1    t8, $f8
    nop
    sw      t8, 0x0000(t9)             # 00000000
    lwc1    $f4, 0x00BC($sp)
    lwc1    $f10, 0x00C0($sp)
    mul.s   $f6, $f14, $f4
    nop
    mul.s   $f8, $f16, $f10
    lwc1    $f10, 0x00C4($sp)
    add.s   $f4, $f6, $f8
    mul.s   $f6, $f18, $f10
    mtc1    v1, $f10                   # $f10 = 0.00
    add.s   $f8, $f4, $f6
    cvt.s.w $f4, $f10
    mtc1    $at, $f10                  # $f10 = 2.00
    mul.s   $f6, $f8, $f4
    mtc1    t0, $f4                    # $f4 = 0.00
    mul.s   $f8, $f6, $f10
    cvt.s.w $f6, $f4
    add.s   $f10, $f6, $f8
    trunc.w.s $f4, $f10
    mfc1    t2, $f4
    beq     $zero, $zero, lbl_800D1204
    sw      t2, 0x0004(t9)             # 00000004
    sll     t3, v0,  1
lbl_800D11FC:
    sw      t3, 0x0000(t4)             # 00000000
    sw      t5, 0x0004(t4)             # 00000004
lbl_800D1204:
    lwc1    $f0, 0x00D4($sp)
    lwc1    $f2, 0x00D8($sp)
    lwc1    $f14, 0x00DC($sp)
    mul.s   $f6, $f0, $f0
    nop
    mul.s   $f8, $f2, $f2
    add.s   $f10, $f6, $f8
    mul.s   $f4, $f14, $f14
    jal     func_800D0DC0
    add.s   $f12, $f10, $f4
    cvt.d.s $f6, $f0
    lwc1    $f10, 0x00D4($sp)
    div.d   $f8, $f20, $f6
    lwc1    $f6, 0x00D8($sp)
    cvt.s.d $f2, $f8
    mul.s   $f4, $f10, $f2
    lwc1    $f10, 0x00DC($sp)
    mul.s   $f8, $f6, $f2
    swc1    $f4, 0x00D4($sp)
    mul.s   $f6, $f10, $f2
    add.s   $f10, $f4, $f28
    swc1    $f8, 0x00D8($sp)
    add.s   $f4, $f8, $f30
    lwc1    $f8, 0x0088($sp)
    swc1    $f6, 0x00DC($sp)
    swc1    $f10, 0x005C($sp)
    add.s   $f6, $f6, $f8
    mul.s   $f8, $f10, $f10
    swc1    $f4, 0x0058($sp)
    mul.s   $f10, $f4, $f4
    swc1    $f6, 0x0054($sp)
    add.s   $f4, $f8, $f10
    mul.s   $f8, $f6, $f6
    jal     func_800D0DC0
    add.s   $f12, $f4, $f8
    lui     $at, 0x8011                # $at = 80110000
    ldc1    $f10, -0x58D8($at)         # 8010A728
    cvt.d.s $f2, $f0
    lw      v0, 0x00E0($sp)
    c.lt.d  $f10, $f2
    lw      v1, 0x00E4($sp)
    lw      a0, 0x00A0($sp)
    sll     t9, v0,  1
    bc1f    lbl_800D1390
    sll     t3, v1,  1
    div.d   $f6, $f20, $f2
    lwc1    $f4, 0x005C($sp)
    lwc1    $f8, 0x0058($sp)
    lwc1    $f10, 0x0054($sp)
    lui     $at, 0x4000                # $at = 40000000
    sll     t6, v0,  2
    lw      a0, 0x00A0($sp)
    sll     t0, v1,  2
    cvt.s.d $f12, $f6
    mul.s   $f14, $f4, $f12
    nop
    mul.s   $f16, $f8, $f12
    nop
    mul.s   $f18, $f10, $f12
    nop
    mul.s   $f6, $f14, $f22
    nop
    mul.s   $f4, $f16, $f24
    add.s   $f8, $f6, $f4
    mul.s   $f10, $f18, $f26
    mtc1    v0, $f4                    # $f4 = 0.00
    add.s   $f6, $f8, $f10
    cvt.s.w $f8, $f4
    mtc1    $at, $f4                   # $f4 = 2.00
    mul.s   $f10, $f6, $f8
    mtc1    t6, $f8                    # $f8 = 0.00
    mul.s   $f6, $f10, $f4
    cvt.s.w $f10, $f8
    add.s   $f4, $f10, $f6
    trunc.w.s $f8, $f4
    mfc1    t8, $f8
    nop
    sw      t8, 0x0008(a0)             # 00000008
    lwc1    $f10, 0x00BC($sp)
    lwc1    $f4, 0x00C0($sp)
    mul.s   $f6, $f14, $f10
    nop
    mul.s   $f8, $f16, $f4
    lwc1    $f4, 0x00C4($sp)
    add.s   $f10, $f6, $f8
    mul.s   $f6, $f18, $f4
    mtc1    v1, $f4                    # $f4 = 0.00
    add.s   $f8, $f10, $f6
    cvt.s.w $f10, $f4
    mtc1    $at, $f4                   # $f4 = 2.00
    mul.s   $f6, $f8, $f10
    mtc1    t0, $f10                   # $f10 = 0.00
    mul.s   $f8, $f6, $f4
    cvt.s.w $f6, $f10
    add.s   $f4, $f6, $f8
    trunc.w.s $f10, $f4
    mfc1    t2, $f10
    beq     $zero, $zero, lbl_800D1398
    sw      t2, 0x000C(a0)             # 0000000C
lbl_800D1390:
    sw      t9, 0x0008(a0)             # 00000008
    sw      t3, 0x000C(a0)             # 0000000C
lbl_800D1398:
    lui     $at, 0x42FE                # $at = 42FE0000
    mtc1    $at, $f2                   # $f2 = 127.00
    lui     $at, 0x4300                # $at = 43000000
    mtc1    $at, $f14                  # $f14 = 128.00
    addiu   v0, $zero, 0x0080          # v0 = 00000080
    mul.s   $f12, $f22, $f14
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_800D13CC
    mov.s   $f0, $f2
    beq     $zero, $zero, lbl_800D13CC
    mov.s   $f0, $f12
    mov.s   $f0, $f2
lbl_800D13CC:
    mul.s   $f12, $f24, $f14
    trunc.w.s $f6, $f0
    c.lt.s  $f12, $f2
    mfc1    t6, $f6
    bc1f    lbl_800D13EC
    sb      t6, 0x0008(s0)             # 00000008
    beq     $zero, $zero, lbl_800D13F0
    mov.s   $f0, $f12
lbl_800D13EC:
    mov.s   $f0, $f2
lbl_800D13F0:
    mul.s   $f12, $f26, $f14
    trunc.w.s $f8, $f0
    c.lt.s  $f12, $f2
    mfc1    t0, $f8
    bc1f    lbl_800D1410
    sb      t0, 0x0009(s0)             # 00000009
    beq     $zero, $zero, lbl_800D1414
    mov.s   $f0, $f12
lbl_800D1410:
    mov.s   $f0, $f2
lbl_800D1414:
    trunc.w.s $f4, $f0
    mfc1    t9, $f4
    nop
    sb      t9, 0x000A(s0)             # 0000000A
    lwc1    $f10, 0x00BC($sp)
    mul.s   $f12, $f10, $f14
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_800D1448
    mov.s   $f0, $f2
    beq     $zero, $zero, lbl_800D1448
    mov.s   $f0, $f12
    mov.s   $f0, $f2
lbl_800D1448:
    trunc.w.s $f6, $f0
    mfc1    t4, $f6
    nop
    sb      t4, 0x0018(s0)             # 00000018
    lwc1    $f8, 0x00C0($sp)
    mul.s   $f12, $f8, $f14
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_800D147C
    mov.s   $f0, $f2
    beq     $zero, $zero, lbl_800D147C
    mov.s   $f0, $f12
    mov.s   $f0, $f2
lbl_800D147C:
    trunc.w.s $f4, $f0
    mfc1    t8, $f4
    nop
    sb      t8, 0x0019(s0)             # 00000019
    lwc1    $f10, 0x00C4($sp)
    mul.s   $f12, $f10, $f14
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_800D14B0
    mov.s   $f0, $f2
    beq     $zero, $zero, lbl_800D14B0
    mov.s   $f0, $f12
    mov.s   $f0, $f2
lbl_800D14B0:
    trunc.w.s $f6, $f0
    sb      $zero, 0x0000(s0)          # 00000000
    sb      $zero, 0x0001(s0)          # 00000001
    sb      $zero, 0x0002(s0)          # 00000002
    mfc1    t2, $f6
    sb      $zero, 0x0003(s0)          # 00000003
    sb      $zero, 0x0004(s0)          # 00000004
    sb      $zero, 0x0005(s0)          # 00000005
    sb      $zero, 0x0006(s0)          # 00000006
    sb      $zero, 0x0007(s0)          # 00000007
    sb      $zero, 0x0010(s0)          # 00000010
    sb      v0, 0x0011(s0)             # 00000011
    sb      $zero, 0x0012(s0)          # 00000012
    sb      $zero, 0x0013(s0)          # 00000013
    sb      $zero, 0x0014(s0)          # 00000014
    sb      v0, 0x0015(s0)             # 00000015
    sb      $zero, 0x0016(s0)          # 00000016
    sb      $zero, 0x0017(s0)          # 00000017
    sb      t2, 0x001A(s0)             # 0000001A
    swc1    $f22, 0x0000(s1)           # 00000000
    lwc1    $f18, 0x00A4($sp)
    lwc1    $f16, 0x00A8($sp)
    lwc1    $f14, 0x00AC($sp)
    mul.s   $f8, $f18, $f22
    lwc1    $f0, 0x00BC($sp)
    lwc1    $f12, 0x00C0($sp)
    mul.s   $f4, $f16, $f24
    lwc1    $f2, 0x00C4($sp)
    swc1    $f24, 0x0010(s1)           # 00000010
    mul.s   $f6, $f14, $f26
    swc1    $f26, 0x0020(s1)           # 00000020
    swc1    $f0, 0x0004(s1)            # 00000004
    swc1    $f12, 0x0014(s1)           # 00000014
    swc1    $f2, 0x0024(s1)            # 00000024
    add.s   $f10, $f8, $f4
    lui     $at, 0x3F80                # $at = 3F800000
    add.s   $f8, $f10, $f6
    mul.s   $f10, $f18, $f0
    mtc1    $zero, $f0                 # $f0 = 0.00
    mul.s   $f6, $f16, $f12
    neg.s   $f4, $f8
    swc1    $f4, 0x0030(s1)            # 00000030
    mul.s   $f4, $f14, $f2
    add.s   $f8, $f10, $f6
    add.s   $f10, $f8, $f4
    mul.s   $f8, $f18, $f28
    neg.s   $f6, $f10
    mul.s   $f4, $f16, $f30
    swc1    $f6, 0x0034(s1)            # 00000034
    lwc1    $f2, 0x0088($sp)
    swc1    $f28, 0x0008(s1)           # 00000008
    swc1    $f30, 0x0018(s1)           # 00000018
    mul.s   $f6, $f14, $f2
    swc1    $f0, 0x000C(s1)            # 0000000C
    add.s   $f10, $f8, $f4
    swc1    $f0, 0x001C(s1)            # 0000001C
    swc1    $f0, 0x002C(s1)            # 0000002C
    swc1    $f2, 0x0028(s1)            # 00000028
    add.s   $f8, $f10, $f6
    mtc1    $at, $f10                  # $f10 = 1.00
    neg.s   $f4, $f8
    swc1    $f10, 0x003C(s1)           # 0000003C
    swc1    $f4, 0x0038(s1)            # 00000038
    lw      $ra, 0x004C($sp)
    lw      s1, 0x0048($sp)
    lw      s0, 0x0044($sp)
    ldc1    $f30, 0x0038($sp)
    ldc1    $f28, 0x0030($sp)
    ldc1    $f26, 0x0028($sp)
    ldc1    $f24, 0x0020($sp)
    ldc1    $f22, 0x0018($sp)
    ldc1    $f20, 0x0010($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp += 0x98


func_800D15D8:
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    lwc1    $f4, 0x00A8($sp)
    lwc1    $f6, 0x00AC($sp)
    lwc1    $f8, 0x00B0($sp)
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    lwc1    $f6, 0x00C4($sp)
    lwc1    $f4, 0x00C0($sp)
    lwc1    $f10, 0x00B4($sp)
    lwc1    $f16, 0x00B8($sp)
    lwc1    $f18, 0x00BC($sp)
    mtc1    a3, $f12                   # $f12 = 0.00
    swc1    $f8, 0x0018($sp)
    swc1    $f6, 0x002C($sp)
    swc1    $f4, 0x0028($sp)
    swc1    $f10, 0x001C($sp)
    swc1    $f16, 0x0020($sp)
    swc1    $f18, 0x0024($sp)
    lwc1    $f18, 0x00D4($sp)
    lwc1    $f16, 0x00D0($sp)
    lwc1    $f10, 0x00CC($sp)
    lwc1    $f4, 0x00D8($sp)
    lwc1    $f6, 0x00DC($sp)
    lwc1    $f8, 0x00C8($sp)
    lw      t6, 0x00E0($sp)
    lw      t7, 0x00E4($sp)
    sw      $ra, 0x0054($sp)
    sw      a0, 0x0098($sp)
    mfc1    a3, $f12
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFC0
    swc1    $f18, 0x003C($sp)
    swc1    $f16, 0x0038($sp)
    swc1    $f10, 0x0034($sp)
    swc1    $f4, 0x0040($sp)
    swc1    $f6, 0x0044($sp)
    swc1    $f8, 0x0030($sp)
    sw      t6, 0x0048($sp)
    jal     func_800D0EA0
    sw      t7, 0x004C($sp)
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFC0
    jal     func_800D0730
    lw      a1, 0x0098($sp)
    lw      $ra, 0x0054($sp)
    addiu   $sp, $sp, 0x0098           # $sp += 0x98
    jr      $ra
    nop


func_800D1690:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x0020($sp)
    sw      $ra, 0x0014($sp)
    andi    t6, a1, 0x00FF             # t6 = 00000000
    slti    $at, t6, 0x0026
    or      a1, t6, $zero              # a1 = 00000000
    sw      $zero, 0x000C(s0)          # 0000000C
    sw      $zero, 0x0010(s0)          # 00000010
    sw      $zero, 0x0014(s0)          # 00000014
    sw      $zero, 0x0018(s0)          # 00000018
    sw      $zero, 0x001C(s0)          # 0000001C
    sw      $zero, 0x0020(s0)          # 00000020
    bne     $at, $zero, lbl_800D16EC
    or      v1, t6, $zero              # v1 = 00000000
    addiu   t7, t6, 0xFFBB             # t7 = FFFFFFBB
    sltiu   $at, t7, 0x0034
    beq     $at, $zero, lbl_800D1CD8
    sll     t7, t7,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t7
    lw      t7, -0x58AC($at)           # 8010A754
    jr      t7
    nop
lbl_800D16EC:
    addiu   $at, $zero, 0x0025         # $at = 00000025
    beql    v1, $at, lbl_800D1CBC
    lw      t8, 0x000C(s0)             # 0000000C
    beq     $zero, $zero, lbl_800D1CDC
    lw      t6, 0x000C(s0)             # 0000000C
    lw      t8, 0x0000(a2)             # 00000000
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    addiu   t9, t8, 0x0003             # t9 = 00000003
    and     t6, t9, $at
    addiu   t7, t6, 0x0004             # t7 = 00000004
    sw      t7, 0x0000(a2)             # 00000000
    lw      t6, 0x000C(s0)             # 0000000C
    lw      t9, -0x0004(t7)            # 00000000
    addu    t7, a3, t6
    sb      t9, 0x0000(t7)             # 00000004
    lw      t8, 0x000C(s0)             # 0000000C
    addiu   t6, t8, 0x0001             # t6 = 00000001
    beq     $zero, $zero, lbl_800D1CF0
    sw      t6, 0x000C(s0)             # 0000000C
    lbu     v0, 0x0034(s0)             # 00000034
    addiu   $at, $zero, 0x006C         # $at = 0000006C
    bnel    v0, $at, lbl_800D1778
    addiu   $at, $zero, 0x004C         # $at = 0000004C
    lw      t9, 0x0000(a2)             # 00000000
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    addiu   t7, t9, 0x0003             # t7 = 00000006
    and     t8, t7, $at
    addiu   t6, t8, 0x0004             # t6 = 00000004
    sw      t6, 0x0000(a2)             # 00000000
    lw      t7, -0x0004(t6)            # 00000000
    sra     t8, t7, 31
    sw      t8, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_800D17D4
    sw      t7, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0x004C         # $at = 0000004C
lbl_800D1778:
    bnel    v0, $at, lbl_800D17B0
    lw      t7, 0x0000(a2)             # 00000000
    lw      t6, 0x0000(a2)             # 00000000
    addiu   $at, $zero, 0xFFF8         # $at = FFFFFFF8
    addiu   t7, t6, 0x0007             # t7 = 0000000B
    and     t8, t7, $at
    addiu   t9, t8, 0x0008             # t9 = 00000008
    sw      t9, 0x0000(a2)             # 00000000
    lw      t8, -0x0008(t9)            # 00000000
    lw      t9, -0x0004(t9)            # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_800D17D4
    sw      t9, 0x0004(s0)             # 00000004
    lw      t7, 0x0000(a2)             # 00000000
lbl_800D17B0:
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    addiu   t6, t7, 0x0003             # t6 = 0000000E
    and     t8, t6, $at
    addiu   t9, t8, 0x0004             # t9 = 00000004
    sw      t9, 0x0000(a2)             # 00000000
    lw      t6, -0x0004(t9)            # 00000000
    sra     t8, t6, 31
    sw      t8, 0x0000(s0)             # 00000000
    sw      t6, 0x0004(s0)             # 00000004
lbl_800D17D4:
    lbu     t7, 0x0034(s0)             # 00000034
    addiu   $at, $zero, 0x0068         # $at = 00000068
    bnel    t7, $at, lbl_800D1800
    lw      t6, 0x0000(s0)             # 00000000
    lw      t7, 0x0004(s0)             # 00000004
    sll     t9, t7, 16
    sra     t6, t9, 16
    sra     t8, t6, 31
    sw      t8, 0x0000(s0)             # 00000000
    sw      t6, 0x0004(s0)             # 00000004
    lw      t6, 0x0000(s0)             # 00000000
lbl_800D1800:
    bgtzl   t6, lbl_800D183C
    lw      v0, 0x0030(s0)             # 00000030
    bltzl   t6, lbl_800D181C
    lw      t9, 0x000C(s0)             # 0000000C
    beq     $zero, $zero, lbl_800D183C
    lw      v0, 0x0030(s0)             # 00000030
    lw      t9, 0x000C(s0)             # 0000000C
lbl_800D181C:
    addiu   t8, $zero, 0x002D          # t8 = 0000002D
    addu    t6, a3, t9
    sb      t8, 0x0000(t6)             # 0000000E
    lw      t7, 0x000C(s0)             # 0000000C
    addiu   t9, t7, 0x0001             # t9 = 0000000C
    beq     $zero, $zero, lbl_800D188C
    sw      t9, 0x000C(s0)             # 0000000C
    lw      v0, 0x0030(s0)             # 00000030
lbl_800D183C:
    andi    t8, v0, 0x0002             # t8 = 00000000
    beq     t8, $zero, lbl_800D1868
    andi    t6, v0, 0x0001             # t6 = 00000000
    lw      t7, 0x000C(s0)             # 0000000C
    addiu   t6, $zero, 0x002B          # t6 = 0000002B
    addu    t9, a3, t7
    sb      t6, 0x0000(t9)             # 0000000C
    lw      t8, 0x000C(s0)             # 0000000C
    addiu   t7, t8, 0x0001             # t7 = 00000001
    beq     $zero, $zero, lbl_800D188C
    sw      t7, 0x000C(s0)             # 0000000C
lbl_800D1868:
    beql    t6, $zero, lbl_800D1890
    lw      t9, 0x000C(s0)             # 0000000C
    lw      t8, 0x000C(s0)             # 0000000C
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addu    t7, a3, t8
    sb      t9, 0x0000(t7)             # 00000001
    lw      t6, 0x000C(s0)             # 0000000C
    addiu   t8, t6, 0x0001             # t8 = 0000002C
    sw      t8, 0x000C(s0)             # 0000000C
lbl_800D188C:
    lw      t9, 0x000C(s0)             # 0000000C
lbl_800D1890:
    or      a0, s0, $zero              # a0 = 00000000
    addu    t7, t9, a3
    jal     func_800D4B90
    sw      t7, 0x0008(s0)             # 00000008
    beq     $zero, $zero, lbl_800D1CF4
    lw      $ra, 0x0014($sp)
    lbu     v0, 0x0034(s0)             # 00000034
    addiu   $at, $zero, 0x006C         # $at = 0000006C
    bnel    v0, $at, lbl_800D18E8
    addiu   $at, $zero, 0x004C         # $at = 0000004C
    lw      t6, 0x0000(a2)             # 00000000
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    addiu   t8, t6, 0x0003             # t8 = 00000003
    and     t9, t8, $at
    addiu   t7, t9, 0x0004             # t7 = 00000004
    sw      t7, 0x0000(a2)             # 00000000
    lw      t8, -0x0004(t7)            # 00000000
    sra     t6, t8, 31
    sw      t6, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_800D1944
    sw      t8, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0x004C         # $at = 0000004C
lbl_800D18E8:
    bnel    v0, $at, lbl_800D1920
    lw      t6, 0x0000(a2)             # 00000000
    lw      t9, 0x0000(a2)             # 00000000
    addiu   $at, $zero, 0xFFF8         # $at = FFFFFFF8
    addiu   t8, t9, 0x0007             # t8 = 00000007
    and     t6, t8, $at
    addiu   t7, t6, 0x0008             # t7 = 00000008
    sw      t7, 0x0000(a2)             # 00000000
    lw      t9, -0x0004(t7)            # 00000004
    lw      t8, -0x0008(t7)            # 00000000
    sw      t9, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_800D1944
    sw      t8, 0x0000(s0)             # 00000000
    lw      t6, 0x0000(a2)             # 00000000
lbl_800D1920:
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    addiu   t7, t6, 0x0003             # t7 = 00000003
    and     t8, t7, $at
    addiu   t9, t8, 0x0004             # t9 = 0000000B
    sw      t9, 0x0000(a2)             # 00000000
    lw      t7, -0x0004(t9)            # 00000007
    sra     t8, t7, 31
    sw      t8, 0x0000(s0)             # 00000000
    sw      t7, 0x0004(s0)             # 00000004
lbl_800D1944:
    lbu     v0, 0x0034(s0)             # 00000034
    addiu   $at, $zero, 0x0068         # $at = 00000068
    bne     v0, $at, lbl_800D196C
    nop
    lw      t7, 0x0004(s0)             # 00000004
    addiu   t6, $zero, 0x0000          # t6 = 00000000
    sw      t6, 0x0000(s0)             # 00000000
    andi    t9, t7, 0xFFFF             # t9 = 00000003
    beq     $zero, $zero, lbl_800D1984
    sw      t9, 0x0004(s0)             # 00000004
lbl_800D196C:
    bnel    v0, $zero, lbl_800D1988
    lw      t7, 0x0030(s0)             # 00000030
    lw      t9, 0x0004(s0)             # 00000004
    addiu   t8, $zero, 0x0000          # t8 = 00000000
    sw      t8, 0x0000(s0)             # 00000000
    sw      t9, 0x0004(s0)             # 00000004
lbl_800D1984:
    lw      t7, 0x0030(s0)             # 00000030
lbl_800D1988:
    andi    t6, t7, 0x0008             # t6 = 00000000
    beql    t6, $zero, lbl_800D19E0
    lw      t8, 0x000C(s0)             # 0000000C
    lw      t9, 0x000C(s0)             # 0000000C
    addiu   t8, $zero, 0x0030          # t8 = 00000030
    addiu   $at, $zero, 0x0078         # $at = 00000078
    addu    t7, a3, t9
    sb      t8, 0x0000(t7)             # 00000003
    lw      t6, 0x000C(s0)             # 0000000C
    addiu   t9, t6, 0x0001             # t9 = 00000001
    beq     v1, $at, lbl_800D19C4
    sw      t9, 0x000C(s0)             # 0000000C
    addiu   $at, $zero, 0x0058         # $at = 00000058
    bnel    v1, $at, lbl_800D19E0
    lw      t8, 0x000C(s0)             # 0000000C
lbl_800D19C4:
    lw      t8, 0x000C(s0)             # 0000000C
    addu    t7, a3, t8
    sb      a1, 0x0000(t7)             # 00000003
    lw      t6, 0x000C(s0)             # 0000000C
    addiu   t9, t6, 0x0001             # t9 = 00000001
    sw      t9, 0x000C(s0)             # 0000000C
    lw      t8, 0x000C(s0)             # 0000000C
lbl_800D19E0:
    or      a0, s0, $zero              # a0 = 00000000
    addu    t7, t8, a3
    jal     func_800D4B90
    sw      t7, 0x0008(s0)             # 00000008
    beq     $zero, $zero, lbl_800D1CF4
    lw      $ra, 0x0014($sp)
    lbu     t6, 0x0034(s0)             # 00000034
    addiu   $at, $zero, 0x004C         # $at = 0000004C
    bnel    t6, $at, lbl_800D1A68
    lw      v0, 0x0000(a2)             # 00000000
    lw      v0, 0x0000(a2)             # 00000000
    andi    t9, v0, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_800D1A28
    or      v1, v0, $zero              # v1 = 00000000
    addiu   t8, v1, 0x0007             # t8 = 00000007
    sw      t8, 0x0000(a2)             # 00000000
    beq     $zero, $zero, lbl_800D1A58
    addiu   v0, t8, 0xFFEA             # v0 = FFFFFFF1
lbl_800D1A28:
    andi    t7, v1, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_800D1A44
    addiu   t9, v0, 0x0007             # t9 = FFFFFFF8
    addiu   t6, v1, 0x000A             # t6 = 0000000A
    sw      t6, 0x0000(a2)             # 00000000
    beq     $zero, $zero, lbl_800D1A54
    addiu   a0, t6, 0xFFD8             # a0 = FFFFFFE2
lbl_800D1A44:
    addiu   $at, $zero, 0xFFF8         # $at = FFFFFFF8
    and     t8, t9, $at
    addiu   a0, t8, 0x0008             # a0 = 0000000F
    sw      a0, 0x0000(a2)             # 00000000
lbl_800D1A54:
    or      v0, a0, $zero              # v0 = 0000000F
lbl_800D1A58:
    ldc1    $f4, -0x0008(v0)           # 00000007
    beq     $zero, $zero, lbl_800D1ABC
    sdc1    $f4, 0x0000(s0)            # 00000000
    lw      v0, 0x0000(a2)             # 00000000
lbl_800D1A68:
    andi    t6, v0, 0x0001             # t6 = 00000001
    beq     t6, $zero, lbl_800D1A84
    or      v1, v0, $zero              # v1 = 0000000F
    addiu   t9, v1, 0x0007             # t9 = 00000016
    sw      t9, 0x0000(a2)             # 00000000
    beq     $zero, $zero, lbl_800D1AB4
    addiu   v0, t9, 0xFFEA             # v0 = 00000000
lbl_800D1A84:
    andi    t8, v1, 0x0002             # t8 = 00000002
    beq     t8, $zero, lbl_800D1AA0
    addiu   t6, v0, 0x0007             # t6 = 00000007
    addiu   t7, v1, 0x000A             # t7 = 00000019
    sw      t7, 0x0000(a2)             # 00000000
    beq     $zero, $zero, lbl_800D1AB0
    addiu   a0, t7, 0xFFD8             # a0 = FFFFFFF1
lbl_800D1AA0:
    addiu   $at, $zero, 0xFFF8         # $at = FFFFFFF8
    and     t9, t6, $at
    addiu   a0, t9, 0x0008             # a0 = 0000001E
    sw      a0, 0x0000(a2)             # 00000000
lbl_800D1AB0:
    or      v0, a0, $zero              # v0 = 0000001E
lbl_800D1AB4:
    ldc1    $f6, -0x0008(v0)           # 00000016
    sdc1    $f6, 0x0000(s0)            # 00000000
lbl_800D1ABC:
    lhu     t7, 0x0000(s0)             # 00000000
    andi    t6, t7, 0x8000             # t6 = 00000000
    beql    t6, $zero, lbl_800D1AF0
    lw      v0, 0x0030(s0)             # 00000030
    lw      t8, 0x000C(s0)             # 0000000C
    addiu   t9, $zero, 0x002D          # t9 = 0000002D
    addu    t7, a3, t8
    sb      t9, 0x0000(t7)             # 00000019
    lw      t6, 0x000C(s0)             # 0000000C
    addiu   t8, t6, 0x0001             # t8 = 00000001
    beq     $zero, $zero, lbl_800D1B40
    sw      t8, 0x000C(s0)             # 0000000C
    lw      v0, 0x0030(s0)             # 00000030
lbl_800D1AF0:
    andi    t9, v0, 0x0002             # t9 = 00000002
    beq     t9, $zero, lbl_800D1B1C
    andi    t7, v0, 0x0001             # t7 = 00000000
    lw      t6, 0x000C(s0)             # 0000000C
    addiu   t7, $zero, 0x002B          # t7 = 0000002B
    addu    t8, a3, t6
    sb      t7, 0x0000(t8)             # 00000001
    lw      t9, 0x000C(s0)             # 0000000C
    addiu   t6, t9, 0x0001             # t6 = 00000003
    beq     $zero, $zero, lbl_800D1B40
    sw      t6, 0x000C(s0)             # 0000000C
lbl_800D1B1C:
    beql    t7, $zero, lbl_800D1B44
    lw      t8, 0x000C(s0)             # 0000000C
    lw      t9, 0x000C(s0)             # 0000000C
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addu    t6, a3, t9
    sb      t8, 0x0000(t6)             # 00000003
    lw      t7, 0x000C(s0)             # 0000000C
    addiu   t9, t7, 0x0001             # t9 = 0000002C
    sw      t9, 0x000C(s0)             # 0000000C
lbl_800D1B40:
    lw      t8, 0x000C(s0)             # 0000000C
lbl_800D1B44:
    or      a0, s0, $zero              # a0 = 00000000
    addu    t6, t8, a3
    jal     func_800D5530
    sw      t6, 0x0008(s0)             # 00000008
    beq     $zero, $zero, lbl_800D1CF4
    lw      $ra, 0x0014($sp)
    lbu     v0, 0x0034(s0)             # 00000034
    addiu   $at, $zero, 0x0068         # $at = 00000068
    bnel    v0, $at, lbl_800D1B98
    addiu   $at, $zero, 0x006C         # $at = 0000006C
    lw      t7, 0x0000(a2)             # 00000000
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    addiu   t9, t7, 0x0003             # t9 = 00000003
    and     t8, t9, $at
    addiu   t6, t8, 0x0004             # t6 = 00000004
    sw      t6, 0x0000(a2)             # 00000000
    lw      t9, -0x0004(t6)            # 00000000
    lw      t7, 0x002C(s0)             # 0000002C
    beq     $zero, $zero, lbl_800D1CF0
    sh      t7, 0x0000(t9)             # 00000003
    addiu   $at, $zero, 0x006C         # $at = 0000006C
lbl_800D1B98:
    bnel    v0, $at, lbl_800D1BCC
    addiu   $at, $zero, 0x004C         # $at = 0000004C
    lw      t8, 0x0000(a2)             # 00000000
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    addiu   t6, t8, 0x0003             # t6 = 00000003
    and     t7, t6, $at
    addiu   t9, t7, 0x0004             # t9 = 00000004
    sw      t9, 0x0000(a2)             # 00000000
    lw      t6, -0x0004(t9)            # 00000000
    lw      t8, 0x002C(s0)             # 0000002C
    beq     $zero, $zero, lbl_800D1CF0
    sw      t8, 0x0000(t6)             # 00000003
    addiu   $at, $zero, 0x004C         # $at = 0000004C
lbl_800D1BCC:
    bnel    v0, $at, lbl_800D1C08
    lw      t7, 0x0000(a2)             # 00000000
    lw      t7, 0x0000(a2)             # 00000000
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    addiu   t9, t7, 0x0003             # t9 = 00000003
    and     t8, t9, $at
    addiu   t6, t8, 0x0004             # t6 = 00000004
    sw      t6, 0x0000(a2)             # 00000000
    lw      t6, -0x0004(t6)            # 00000000
    lw      t7, 0x002C(s0)             # 0000002C
    addiu   t8, $zero, 0x0000          # t8 = 00000000
    sw      t8, 0x0000(t6)             # 00000004
    beq     $zero, $zero, lbl_800D1CF0
    sw      t7, 0x0004(t6)             # 00000008
    lw      t7, 0x0000(a2)             # 00000000
lbl_800D1C08:
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    addiu   t8, t7, 0x0003             # t8 = 00000003
    and     t9, t8, $at
    addiu   t6, t9, 0x0004             # t6 = 00000007
    sw      t6, 0x0000(a2)             # 00000000
    lw      t8, -0x0004(t6)            # 00000003
    lw      t7, 0x002C(s0)             # 0000002C
    beq     $zero, $zero, lbl_800D1CF0
    sw      t7, 0x0000(t8)             # 00000003
    lw      t9, 0x0000(a2)             # 00000000
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t6, t9, 0x0003             # t6 = 00000006
    and     t7, t6, $at
    addiu   t8, t7, 0x0004             # t8 = 00000004
    sw      t8, 0x0000(a2)             # 00000000
    lw      t6, -0x0004(t8)            # 00000000
    lw      t7, 0x000C(s0)             # 0000000C
    addiu   a1, $zero, 0x0078          # a1 = 00000078
    sra     t8, t6, 31
    sw      t6, 0x0004(s0)             # 00000004
    addu    t6, t7, a3
    sw      t8, 0x0000(s0)             # 00000000
    jal     func_800D4B90
    sw      t6, 0x0008(s0)             # 00000008
    beq     $zero, $zero, lbl_800D1CF4
    lw      $ra, 0x0014($sp)
    lw      t8, 0x0000(a2)             # 00000000
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    addiu   t9, t8, 0x0003             # t9 = 00000003
    and     t7, t9, $at
    addiu   t6, t7, 0x0004             # t6 = 00000004
    sw      t6, 0x0000(a2)             # 00000000
    lw      a0, -0x0004(t6)            # 00000000
    jal     func_800D237C
    sw      a0, 0x0008(s0)             # 00000008
    lw      v1, 0x0024(s0)             # 00000024
    sw      v0, 0x0014(s0)             # 00000014
    bltz    v1, lbl_800D1CF0
    slt     $at, v1, v0
    beql    $at, $zero, lbl_800D1CF4
    lw      $ra, 0x0014($sp)
    beq     $zero, $zero, lbl_800D1CF0
    sw      v1, 0x0014(s0)             # 00000014
    lw      t8, 0x000C(s0)             # 0000000C
lbl_800D1CBC:
    addiu   t6, $zero, 0x0025          # t6 = 00000025
    addu    t9, a3, t8
    sb      t6, 0x0000(t9)             # 00000000
    lw      t7, 0x000C(s0)             # 0000000C
    addiu   t8, t7, 0x0001             # t8 = 00000001
    beq     $zero, $zero, lbl_800D1CF0
    sw      t8, 0x000C(s0)             # 0000000C
lbl_800D1CD8:
    lw      t6, 0x000C(s0)             # 0000000C
lbl_800D1CDC:
    addu    t9, a3, t6
    sb      a1, 0x0000(t9)             # 00000000
    lw      t7, 0x000C(s0)             # 0000000C
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sw      t8, 0x000C(s0)             # 0000000C
lbl_800D1CF0:
    lw      $ra, 0x0014($sp)
lbl_800D1CF4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800D1D00:
    addiu   $sp, $sp, 0xFF28           # $sp -= 0xD8
    sw      s7, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s8, 0x0038($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      a3, 0x00E4($sp)
    lui     s5, 0x8010                 # s5 = 80100000
    lui     s6, 0x8011                 # s6 = 80110000
    lui     s7, 0x8010                 # s7 = 80100000
    or      a3, a2, $zero              # a3 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a2, 0x00E0($sp)
    sw      $zero, 0x00CC($sp)
    addiu   s7, s7, 0x5CC0             # s7 = 80105CC0
    addiu   s6, s6, 0xA734             # s6 = 8010A734
    addiu   s5, s5, 0x5CE4             # s5 = 80105CE4
    addiu   s8, $zero, 0x000A          # s8 = 0000000A
lbl_800D1D60:
    lbu     v0, 0x0000(a3)             # 00000000
    or      s2, a3, $zero              # s2 = 00000000
    addiu   v1, $zero, 0x0025          # v1 = 00000025
    beq     v0, $zero, lbl_800D1D94
    or      s0, v0, $zero              # s0 = 00000000
    beql    v1, v0, lbl_800D1D98
    subu    v0, s2, a3
    lbu     v0, 0x0001(s2)             # 00000001
lbl_800D1D80:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    beq     v0, $zero, lbl_800D1D94
    or      s0, v0, $zero              # s0 = 00000000
    bnel    v1, v0, lbl_800D1D80
    lbu     v0, 0x0001(s2)             # 00000002
lbl_800D1D94:
    subu    v0, s2, a3
lbl_800D1D98:
    blez    v0, lbl_800D1DD0
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, a3, $zero              # a1 = 00000000
    or      s1, v0, $zero              # s1 = 00000000
    jalr    $ra, s4
    or      a2, v0, $zero              # a2 = 00000000
    beq     v0, $zero, lbl_800D1DC8
    or      s3, v0, $zero              # s3 = 00000000
    lw      t6, 0x00CC($sp)
    addu    t7, t6, s1
    beq     $zero, $zero, lbl_800D1DD0
    sw      t7, 0x00CC($sp)
lbl_800D1DC8:
    beq     $zero, $zero, lbl_800D2318
    lw      v0, 0x00CC($sp)
lbl_800D1DD0:
    bne     s0, $zero, lbl_800D1DE0
    addiu   s2, s2, 0x0001             # s2 = 00000002
    beq     $zero, $zero, lbl_800D2318
    lw      v0, 0x00CC($sp)
lbl_800D1DE0:
    sw      $zero, 0x00D0($sp)
    lbu     a1, 0x0000(s2)             # 00000002
    jal     func_800D23A4
    or      a0, s6, $zero              # a0 = 8010A734
    beq     v0, $zero, lbl_800D1E30
    or      s0, v0, $zero              # s0 = 00000000
lbl_800D1DF8:
    subu    t9, s0, s6
    sll     t6, t9,  2
    lui     t7, 0x8011                 # t7 = 80110000
    addu    t7, t7, t6
    lw      t7, -0x58C4(t7)            # 8010A73C
    lw      t8, 0x00D0($sp)
    addiu   s2, s2, 0x0001             # s2 = 00000003
    or      a0, s6, $zero              # a0 = 8010A734
    or      t9, t8, t7                 # t9 = 80110000
    sw      t9, 0x00D0($sp)
    jal     func_800D23A4
    lbu     a1, 0x0000(s2)             # 00000003
    bne     v0, $zero, lbl_800D1DF8
    or      s0, v0, $zero              # s0 = 00000000
lbl_800D1E30:
    lbu     t6, 0x0000(s2)             # 00000003
    addiu   v0, $zero, 0x002A          # v0 = 0000002A
    lw      t8, 0x00E4($sp)
    bne     v0, t6, lbl_800D1E84
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   t7, t8, 0x0003             # t7 = 00000003
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    and     t9, t7, $at
    addiu   t6, t9, 0x0004             # t6 = 00000004
    sw      t6, 0x00E4($sp)
    lw      t8, 0x0000(t9)             # 00000000
    addiu   s2, s2, 0x0001             # s2 = 00000004
    bgez    t8, lbl_800D1E7C
    sw      t8, 0x00C8($sp)
    lw      t6, 0x00D0($sp)
    subu    t7, $zero, t8
    sw      t7, 0x00C8($sp)
    ori     t9, t6, 0x0004             # t9 = 00000004
    sw      t9, 0x00D0($sp)
lbl_800D1E7C:
    beq     $zero, $zero, lbl_800D1EE0
    lbu     a1, 0x0000(s2)             # 00000004
lbl_800D1E84:
    sw      $zero, 0x00C8($sp)
    lbu     a1, 0x0000(s2)             # 00000004
    slti    $at, a1, 0x0030
    bne     $at, $zero, lbl_800D1EE0
    slti    $at, a1, 0x003A
    beql    $at, $zero, lbl_800D1EE4
    addiu   $at, $zero, 0x002E         # $at = 0000002E
    lw      t8, 0x00C8($sp)
lbl_800D1EA4:
    slti    $at, t8, 0x03E7
    beql    $at, $zero, lbl_800D1EC8
    lbu     a1, 0x0001(s2)             # 00000005
    multu   t8, s8
    mflo    t7
    addu    t6, a1, t7
    addiu   t9, t6, 0xFFD0             # t9 = FFFFFFD4
    sw      t9, 0x00C8($sp)
    lbu     a1, 0x0001(s2)             # 00000005
lbl_800D1EC8:
    addiu   s2, s2, 0x0001             # s2 = 00000005
    slti    $at, a1, 0x0030
    bne     $at, $zero, lbl_800D1EE0
    slti    $at, a1, 0x003A
    bnel    $at, $zero, lbl_800D1EA4
    lw      t8, 0x00C8($sp)
lbl_800D1EE0:
    addiu   $at, $zero, 0x002E         # $at = 0000002E
lbl_800D1EE4:
    beq     a1, $at, lbl_800D1EF8
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    sw      t8, 0x00C4($sp)
    beq     $zero, $zero, lbl_800D1F8C
    lbu     a1, 0x0000(s2)             # 00000005
lbl_800D1EF8:
    lbu     t7, 0x0001(s2)             # 00000006
    lw      t6, 0x00E4($sp)
    addiu   s2, s2, 0x0001             # s2 = 00000006
    bne     v0, t7, lbl_800D1F30
    addiu   t9, t6, 0x0003             # t9 = 00000007
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    and     t8, t9, $at
    addiu   t7, t8, 0x0004             # t7 = 00000003
    sw      t7, 0x00E4($sp)
    lw      t6, 0x0000(t8)             # FFFFFFFF
    addiu   s2, s2, 0x0001             # s2 = 00000007
    sw      t6, 0x00C4($sp)
    beq     $zero, $zero, lbl_800D1F8C
    lbu     a1, 0x0000(s2)             # 00000007
lbl_800D1F30:
    sw      $zero, 0x00C4($sp)
    lbu     a1, 0x0000(s2)             # 00000007
    slti    $at, a1, 0x0030
    bne     $at, $zero, lbl_800D1F8C
    slti    $at, a1, 0x003A
    beq     $at, $zero, lbl_800D1F8C
    nop
    lw      t9, 0x00C4($sp)
lbl_800D1F50:
    slti    $at, t9, 0x03E7
    beql    $at, $zero, lbl_800D1F74
    lbu     a1, 0x0001(s2)             # 00000008
    multu   t9, s8
    mflo    t7
    addu    t8, a1, t7
    addiu   t6, t8, 0xFFD0             # t6 = FFFFFFCF
    sw      t6, 0x00C4($sp)
    lbu     a1, 0x0001(s2)             # 00000008
lbl_800D1F74:
    addiu   s2, s2, 0x0001             # s2 = 00000008
    slti    $at, a1, 0x0030
    bne     $at, $zero, lbl_800D1F8C
    slti    $at, a1, 0x003A
    bnel    $at, $zero, lbl_800D1F50
    lw      t9, 0x00C4($sp)
lbl_800D1F8C:
    jal     func_800D23A4
    addiu   a0, a0, 0xA730             # a0 = 8010A730
    beq     v0, $zero, lbl_800D1FAC
    addiu   s0, $sp, 0x00A0            # s0 = FFFFFFC8
    lbu     t9, 0x0000(s2)             # 00000008
    addiu   s2, s2, 0x0001             # s2 = 00000009
    beq     $zero, $zero, lbl_800D1FB0
    sb      t9, 0x00D4($sp)
lbl_800D1FAC:
    sb      $zero, 0x00D4($sp)
lbl_800D1FB0:
    lbu     t7, 0x00D4($sp)
    addiu   v0, $zero, 0x006C          # v0 = 0000006C
    addiu   a2, $sp, 0x00E4            # a2 = 0000000C
    bne     v0, t7, lbl_800D1FDC
    addiu   a3, $sp, 0x0074            # a3 = FFFFFF9C
    lbu     t8, 0x0000(s2)             # 00000009
    addiu   t6, $zero, 0x004C          # t6 = 0000004C
    bne     v0, t8, lbl_800D1FDC
    nop
    sb      t6, 0x00D4($sp)
    addiu   s2, s2, 0x0001             # s2 = 0000000A
lbl_800D1FDC:
    jal     func_800D1690
    lbu     a1, 0x0000(s2)             # 0000000A
    lw      t9, 0x00C8($sp)
    lw      t7, 0x00AC($sp)
    lw      t6, 0x00B0($sp)
    subu    t8, t9, t7
    lw      t7, 0x00B4($sp)
    subu    t9, t8, t6
    lw      t6, 0x00B8($sp)
    subu    t8, t9, t7
    lw      t7, 0x00BC($sp)
    subu    t9, t8, t6
    lw      t6, 0x00C0($sp)
    subu    t8, t9, t7
    lw      t7, 0x00D0($sp)
    subu    t9, t8, t6
    sw      t9, 0x00C8($sp)
    andi    t8, t7, 0x0004             # t8 = 00000000
    bne     t8, $zero, lbl_800D2090
    slt     t6, $zero, t9
    beql    t6, $zero, lbl_800D2094
    lw      t9, 0x00AC($sp)
    beq     t6, $zero, lbl_800D2090
    or      s1, t9, $zero              # s1 = 00000000
    sltiu   $at, s1, 0x0021
lbl_800D2040:
    bne     $at, $zero, lbl_800D2050
    or      s0, s1, $zero              # s0 = 00000000
    beq     $zero, $zero, lbl_800D2050
    addiu   s0, $zero, 0x0020          # s0 = 00000020
lbl_800D2050:
    blez    s0, lbl_800D2084
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s7, $zero              # a1 = 80105CC0
    jalr    $ra, s4
    or      a2, s0, $zero              # a2 = 00000020
    beq     v0, $zero, lbl_800D207C
    or      s3, v0, $zero              # s3 = 00000000
    lw      t7, 0x00CC($sp)
    addu    t8, t7, s0
    beq     $zero, $zero, lbl_800D2084
    sw      t8, 0x00CC($sp)
lbl_800D207C:
    beq     $zero, $zero, lbl_800D2318
    lw      v0, 0x00CC($sp)
lbl_800D2084:
    subu    s1, s1, s0
    bgtzl   s1, lbl_800D2040
    sltiu   $at, s1, 0x0021
lbl_800D2090:
    lw      t9, 0x00AC($sp)
lbl_800D2094:
    or      a0, s3, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0074            # a1 = FFFFFF9C
    blezl   t9, lbl_800D20D4
    lw      t9, 0x00B0($sp)
    jalr    $ra, s4
    or      a2, t9, $zero              # a2 = 00000000
    beq     v0, $zero, lbl_800D20C8
    or      s3, v0, $zero              # s3 = 00000000
    lw      t6, 0x00CC($sp)
    lw      t7, 0x00AC($sp)
    addu    t8, t6, t7
    beq     $zero, $zero, lbl_800D20D0
    sw      t8, 0x00CC($sp)
lbl_800D20C8:
    beq     $zero, $zero, lbl_800D2318
    lw      v0, 0x00CC($sp)
lbl_800D20D0:
    lw      t9, 0x00B0($sp)
lbl_800D20D4:
    slt     t6, $zero, t9
    beql    t6, $zero, lbl_800D2140
    lw      t9, 0x00B4($sp)
    beq     t6, $zero, lbl_800D213C
    or      s1, t9, $zero              # s1 = 00000000
    sltiu   $at, s1, 0x0021
lbl_800D20EC:
    bne     $at, $zero, lbl_800D20FC
    or      s0, s1, $zero              # s0 = 00000000
    beq     $zero, $zero, lbl_800D20FC
    addiu   s0, $zero, 0x0020          # s0 = 00000020
lbl_800D20FC:
    blez    s0, lbl_800D2130
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = 80105CE4
    jalr    $ra, s4
    or      a2, s0, $zero              # a2 = 00000020
    beq     v0, $zero, lbl_800D2128
    or      s3, v0, $zero              # s3 = 00000000
    lw      t7, 0x00CC($sp)
    addu    t8, t7, s0
    beq     $zero, $zero, lbl_800D2130
    sw      t8, 0x00CC($sp)
lbl_800D2128:
    beq     $zero, $zero, lbl_800D2318
    lw      v0, 0x00CC($sp)
lbl_800D2130:
    subu    s1, s1, s0
    bgtzl   s1, lbl_800D20EC
    sltiu   $at, s1, 0x0021
lbl_800D213C:
    lw      t9, 0x00B4($sp)
lbl_800D2140:
    or      a0, s3, $zero              # a0 = 00000000
    lw      a1, 0x00A8($sp)
    blezl   t9, lbl_800D2180
    lw      t9, 0x00B8($sp)
    jalr    $ra, s4
    or      a2, t9, $zero              # a2 = 00000000
    beq     v0, $zero, lbl_800D2174
    or      s3, v0, $zero              # s3 = 00000000
    lw      t6, 0x00CC($sp)
    lw      t7, 0x00B4($sp)
    addu    t8, t6, t7
    beq     $zero, $zero, lbl_800D217C
    sw      t8, 0x00CC($sp)
lbl_800D2174:
    beq     $zero, $zero, lbl_800D2318
    lw      v0, 0x00CC($sp)
lbl_800D217C:
    lw      t9, 0x00B8($sp)
lbl_800D2180:
    slt     t6, $zero, t9
    beql    t6, $zero, lbl_800D21EC
    lw      t9, 0x00BC($sp)
    beq     t6, $zero, lbl_800D21E8
    or      s1, t9, $zero              # s1 = 00000000
    sltiu   $at, s1, 0x0021
lbl_800D2198:
    bne     $at, $zero, lbl_800D21A8
    or      s0, s1, $zero              # s0 = 00000000
    beq     $zero, $zero, lbl_800D21A8
    addiu   s0, $zero, 0x0020          # s0 = 00000020
lbl_800D21A8:
    blez    s0, lbl_800D21DC
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = 80105CE4
    jalr    $ra, s4
    or      a2, s0, $zero              # a2 = 00000020
    beq     v0, $zero, lbl_800D21D4
    or      s3, v0, $zero              # s3 = 00000000
    lw      t7, 0x00CC($sp)
    addu    t8, t7, s0
    beq     $zero, $zero, lbl_800D21DC
    sw      t8, 0x00CC($sp)
lbl_800D21D4:
    beq     $zero, $zero, lbl_800D2318
    lw      v0, 0x00CC($sp)
lbl_800D21DC:
    subu    s1, s1, s0
    bgtzl   s1, lbl_800D2198
    sltiu   $at, s1, 0x0021
lbl_800D21E8:
    lw      t9, 0x00BC($sp)
lbl_800D21EC:
    or      a0, s3, $zero              # a0 = 00000000
    lw      t6, 0x00A8($sp)
    blez    t9, lbl_800D222C
    lw      t7, 0x00B4($sp)
    addu    a1, t6, t7
    jalr    $ra, s4
    or      a2, t9, $zero              # a2 = 00000000
    beq     v0, $zero, lbl_800D2224
    or      s3, v0, $zero              # s3 = 00000000
    lw      t8, 0x00CC($sp)
    lw      t6, 0x00BC($sp)
    addu    t7, t8, t6
    beq     $zero, $zero, lbl_800D222C
    sw      t7, 0x00CC($sp)
lbl_800D2224:
    beq     $zero, $zero, lbl_800D2318
    lw      v0, 0x00CC($sp)
lbl_800D222C:
    lw      t9, 0x00C0($sp)
    slt     t8, $zero, t9
    beql    t8, $zero, lbl_800D229C
    lw      t9, 0x00D0($sp)
    beq     t8, $zero, lbl_800D2298
    or      s1, t9, $zero              # s1 = 00000000
    sltiu   $at, s1, 0x0021
lbl_800D2248:
    bne     $at, $zero, lbl_800D2258
    or      s0, s1, $zero              # s0 = 00000000
    beq     $zero, $zero, lbl_800D2258
    addiu   s0, $zero, 0x0020          # s0 = 00000020
lbl_800D2258:
    blez    s0, lbl_800D228C
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = 80105CE4
    jalr    $ra, s4
    or      a2, s0, $zero              # a2 = 00000020
    beq     v0, $zero, lbl_800D2284
    or      s3, v0, $zero              # s3 = 00000000
    lw      t6, 0x00CC($sp)
    addu    t7, t6, s0
    beq     $zero, $zero, lbl_800D228C
    sw      t7, 0x00CC($sp)
lbl_800D2284:
    beq     $zero, $zero, lbl_800D2318
    lw      v0, 0x00CC($sp)
lbl_800D228C:
    subu    s1, s1, s0
    bgtzl   s1, lbl_800D2248
    sltiu   $at, s1, 0x0021
lbl_800D2298:
    lw      t9, 0x00D0($sp)
lbl_800D229C:
    lw      t6, 0x00C8($sp)
    andi    t8, t9, 0x0004             # t8 = 00000000
    beq     t8, $zero, lbl_800D2310
    slt     t7, $zero, t6
    beq     t7, $zero, lbl_800D2310
    nop
    beq     t7, $zero, lbl_800D2310
    or      s1, t6, $zero              # s1 = 00000000
    sltiu   $at, s1, 0x0021
lbl_800D22C0:
    bne     $at, $zero, lbl_800D22D0
    or      s0, s1, $zero              # s0 = 00000000
    beq     $zero, $zero, lbl_800D22D0
    addiu   s0, $zero, 0x0020          # s0 = 00000020
lbl_800D22D0:
    blez    s0, lbl_800D2304
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s7, $zero              # a1 = 80105CC0
    jalr    $ra, s4
    or      a2, s0, $zero              # a2 = 00000020
    beq     v0, $zero, lbl_800D22FC
    or      s3, v0, $zero              # s3 = 00000000
    lw      t9, 0x00CC($sp)
    addu    t8, t9, s0
    beq     $zero, $zero, lbl_800D2304
    sw      t8, 0x00CC($sp)
lbl_800D22FC:
    beq     $zero, $zero, lbl_800D2318
    lw      v0, 0x00CC($sp)
lbl_800D2304:
    subu    s1, s1, s0
    bgtzl   s1, lbl_800D22C0
    sltiu   $at, s1, 0x0021
lbl_800D2310:
    beq     $zero, $zero, lbl_800D1D60
    addiu   a3, s2, 0x0001             # a3 = 0000000B
lbl_800D2318:
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
    addiu   $sp, $sp, 0x00D8           # $sp += 0xD8
    nop
    nop


func_800D2350:
    or      v0, a0, $zero              # v0 = 00000000
    beq     a2, $zero, lbl_800D2374
    or      v1, a1, $zero              # v1 = 00000000
lbl_800D235C:
    lbu     t6, 0x0000(v1)             # 00000000
    addiu   a2, a2, 0xFFFF             # a2 = FFFFFFFF
    addiu   v0, v0, 0x0001             # v0 = 00000001
    addiu   v1, v1, 0x0001             # v1 = 00000001
    bne     a2, $zero, lbl_800D235C
    sb      t6, -0x0001(v0)            # 00000000
lbl_800D2374:
    jr      $ra
    or      v0, a0, $zero              # v0 = 00000000


func_800D237C:
    lbu     t6, 0x0000(a0)             # 00000000
    or      v1, a0, $zero              # v1 = 00000000
    beq     t6, $zero, lbl_800D239C
    nop
    lbu     t7, 0x0001(v1)             # 00000001
lbl_800D2390:
    addiu   v1, v1, 0x0001             # v1 = 00000001
    bnel    t7, $zero, lbl_800D2390
    lbu     t7, 0x0001(v1)             # 00000002
lbl_800D239C:
    jr      $ra
    subu    v0, v1, a0


func_800D23A4:
    lbu     v1, 0x0000(a0)             # 00000000
    andi    t6, a1, 0x00FF             # t6 = 00000000
    andi    v0, a1, 0x00FF             # v0 = 00000000
    beql    t6, v1, lbl_800D23DC
    or      v0, a0, $zero              # v0 = 00000000
lbl_800D23B8:
    bnel    v1, $zero, lbl_800D23CC
    lbu     v1, 0x0001(a0)             # 00000001
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800D23C8:
    lbu     v1, 0x0001(a0)             # 00000001
lbl_800D23CC:
    addiu   a0, a0, 0x0001             # a0 = 00000001
    bne     v0, v1, lbl_800D23B8
    nop
    or      v0, a0, $zero              # v0 = 00000001
lbl_800D23DC:
    jr      $ra
    nop
    nop
    nop
    nop


func_800D23F0:
# s32 __osSpDeviceBusy(void)
# Check if the RSP is busy performing IO operations
# RSP is busy if SP_STATUS_REG is set for dma busy (0x0004), dma full (0x0008) or IO full (0x0010)
# V0 = 1 if true, else 0
    lui     t6, 0xA404                 # t6 = A4040000
    lw      a0, 0x0010(t6)             # A4040010
    addiu   $sp, $sp, 0xFFF8           # $sp -= 0x8
    andi    t7, a0, 0x001C             # t7 = 00000000
    beq     t7, $zero, lbl_800D2410
    nop
    beq     $zero, $zero, lbl_800D2414
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800D2410:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800D2414:
    jr      $ra
    addiu   $sp, $sp, 0x0008           # $sp += 0x8
    nop


func_800D2420:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    jal     func_80005130              # __osDisableInt
    sw      a0, 0x0020($sp)
    lui     t7, 0x8000                 # t7 = 80000000
    lw      t7, 0x64C4(t7)             # 800064C4
    lw      t6, 0x0020($sp)
    sw      v0, 0x001C($sp)
    lui     t8, 0x8000                 # t8 = 80000000
    sw      t6, 0x0004(t7)             # 80000004
    lw      t8, 0x64C4(t8)             # 800064C4
    lhu     t9, 0x0000(t8)             # 80000000
    ori     t0, t9, 0x0010             # t0 = 00000010
    sh      t0, 0x0000(t8)             # 80000000
    jal     func_800051A0              # __osRestoreInt
    lw      a0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800D2470:
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f0, -0x57D0($at)          # 8010A830
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    mtc1    a3, $f16                   # $f16 = 0.00
    mul.s   $f12, $f12, $f0
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x002C($sp)
    mul.s   $f14, $f14, $f0
    sw      s0, 0x0028($sp)
    lui     $at, 0x8013                # $at = 80130000
    mul.s   $f16, $f16, $f0
    or      s0, a0, $zero              # s0 = 00000000
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    swc1    $f14, 0x0050($sp)
    swc1    $f12, 0x004C($sp)
    swc1    $f0, -0x4350($at)          # 8012BCB0
    jal     func_800CF470
    swc1    $f16, 0x0054($sp)
    lwc1    $f12, 0x004C($sp)
    jal     func_800D2CD0
    mov.s   $f20, $f0
    mov.s   $f22, $f0
    jal     func_800CF470
    lwc1    $f12, 0x0050($sp)
    swc1    $f0, 0x0040($sp)
    jal     func_800D2CD0
    lwc1    $f12, 0x0050($sp)
    lwc1    $f12, 0x0054($sp)
    jal     func_800CF470
    swc1    $f0, 0x0034($sp)
    lwc1    $f12, 0x0054($sp)
    jal     func_800D2CD0
    swc1    $f0, 0x003C($sp)
    lwc1    $f16, 0x0034($sp)
    lwc1    $f2, 0x0058($sp)
    lwc1    $f14, 0x003C($sp)
    mul.s   $f4, $f16, $f0
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f6, $f4, $f2
    nop
    mul.s   $f8, $f16, $f14
    swc1    $f6, 0x0000(s0)            # 00000000
    mul.s   $f10, $f8, $f2
    swc1    $f10, 0x0004(s0)           # 00000004
    lwc1    $f4, 0x0040($sp)
    swc1    $f18, 0x000C(s0)           # 0000000C
    neg.s   $f6, $f4
    mul.s   $f8, $f6, $f2
    swc1    $f8, 0x0008(s0)            # 00000008
    lwc1    $f10, 0x0040($sp)
    swc1    $f18, 0x001C(s0)           # 0000001C
    mul.s   $f12, $f20, $f10
    nop
    mul.s   $f4, $f12, $f0
    nop
    mul.s   $f6, $f22, $f14
    sub.s   $f8, $f4, $f6
    mul.s   $f10, $f8, $f2
    nop
    mul.s   $f4, $f12, $f14
    nop
    mul.s   $f6, $f22, $f0
    swc1    $f10, 0x0010(s0)           # 00000010
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f8, $f2
    nop
    mul.s   $f4, $f20, $f16
    swc1    $f10, 0x0014(s0)           # 00000014
    mul.s   $f6, $f4, $f2
    swc1    $f6, 0x0018(s0)            # 00000018
    lwc1    $f8, 0x0040($sp)
    swc1    $f18, 0x002C(s0)           # 0000002C
    mul.s   $f12, $f22, $f8
    nop
    mul.s   $f10, $f12, $f0
    nop
    mul.s   $f4, $f20, $f14
    add.s   $f6, $f10, $f4
    mul.s   $f8, $f6, $f2
    nop
    mul.s   $f10, $f12, $f14
    nop
    mul.s   $f4, $f20, $f0
    swc1    $f8, 0x0020(s0)            # 00000020
    sub.s   $f6, $f10, $f4
    mul.s   $f8, $f6, $f2
    nop
    mul.s   $f10, $f22, $f16
    swc1    $f8, 0x0024(s0)            # 00000024
    mul.s   $f4, $f10, $f2
    swc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f6, 0x005C($sp)
    mtc1    $at, $f4                   # $f4 = 1.00
    swc1    $f6, 0x0030(s0)            # 00000030
    lwc1    $f8, 0x0060($sp)
    swc1    $f8, 0x0034(s0)            # 00000034
    lwc1    $f10, 0x0064($sp)
    swc1    $f4, 0x003C(s0)            # 0000003C
    swc1    $f10, 0x0038(s0)           # 00000038
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f20, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_800D2620:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    mtc1    a3, $f16                   # $f16 = 0.00
    lwc1    $f4, 0x0078($sp)
    lwc1    $f6, 0x007C($sp)
    lwc1    $f8, 0x0080($sp)
    lwc1    $f10, 0x0084($sp)
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0068($sp)
    mfc1    a1, $f12
    mfc1    a2, $f14
    mfc1    a3, $f16
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFC0
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_800D2470
    swc1    $f10, 0x001C($sp)
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFC0
    jal     func_800D0730
    lw      a1, 0x0068($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop
    nop
    nop


func_800D2690:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    jal     func_800D5A80
    sw      a0, 0x0020($sp)
    sw      v0, 0x001C($sp)
    lw      t6, 0x001C($sp)
    andi    t7, t6, 0x0100             # t7 = 00000000
    beq     t7, $zero, lbl_800D26C0
    nop
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    beq     $zero, $zero, lbl_800D26C4
    sw      t8, 0x0018($sp)
lbl_800D26C0:
    sw      $zero, 0x0018($sp)
lbl_800D26C4:
    lw      t9, 0x001C($sp)
    andi    t0, t9, 0x0080             # t0 = 00000000
    beq     t0, $zero, lbl_800D26FC
    nop
    lw      t1, 0x0020($sp)
    lw      t3, 0x0018($sp)
    addiu   $at, $zero, 0xFFFD         # $at = FFFFFFFD
    lw      t2, 0x0004(t1)             # 00000004
    or      t4, t2, t3                 # t4 = 00000000
    sw      t4, 0x0004(t1)             # 00000004
    lw      t5, 0x0020($sp)
    lw      t6, 0x0004(t5)             # 00000004
    and     t7, t6, $at
    sw      t7, 0x0004(t5)             # 00000004
lbl_800D26FC:
    lw      $ra, 0x0014($sp)
    lw      v0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800D2710:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x57C0($at)          # 8010A840
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    lui     $at, 0x8013                # $at = 80130000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    addiu   a2, $sp, 0x0048            # a2 = 00000010
    addiu   a1, $sp, 0x0044            # a1 = 0000000C
    addiu   a0, $sp, 0x0040            # a0 = 00000008
    jal     func_800D2A60
    swc1    $f4, -0x4340($at)          # 8012BCC0
    lui     $at, 0x8013                # $at = 80130000
    lwc1    $f12, 0x003C($sp)
    lwc1    $f6, -0x4340($at)          # 8012BCC0
    mul.s   $f12, $f12, $f6
    jal     func_800CF470
    swc1    $f12, 0x003C($sp)
    lwc1    $f12, 0x003C($sp)
    jal     func_800D2CD0
    swc1    $f0, 0x0034($sp)
    lwc1    $f10, 0x0040($sp)
    lwc1    $f4, 0x0044($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    mul.s   $f6, $f10, $f4
    or      a0, s0, $zero              # a0 = 00000000
    sub.s   $f2, $f8, $f0
    lwc1    $f8, 0x0048($sp)
    swc1    $f0, 0x0030($sp)
    mul.s   $f16, $f6, $f2
    nop
    mul.s   $f6, $f4, $f8
    swc1    $f16, 0x002C($sp)
    mul.s   $f18, $f6, $f2
    nop
    mul.s   $f4, $f8, $f10
    swc1    $f18, 0x0028($sp)
    mul.s   $f6, $f4, $f2
    jal     func_800D0830
    swc1    $f6, 0x0024($sp)
    lwc1    $f8, 0x0040($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    mul.s   $f0, $f8, $f8
    lwc1    $f12, 0x0030($sp)
    lwc1    $f14, 0x0034($sp)
    lwc1    $f16, 0x002C($sp)
    lwc1    $f18, 0x0028($sp)
    sub.s   $f4, $f10, $f0
    mul.s   $f6, $f4, $f12
    add.s   $f8, $f6, $f0
    swc1    $f8, 0x0000(s0)            # 00000000
    lwc1    $f10, 0x0040($sp)
    mul.s   $f4, $f10, $f14
    sub.s   $f6, $f18, $f4
    swc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0040($sp)
    mul.s   $f10, $f8, $f14
    mtc1    $at, $f8                   # $f8 = 1.00
    add.s   $f4, $f10, $f18
    swc1    $f4, 0x0018(s0)            # 00000018
    lwc1    $f6, 0x0044($sp)
    mul.s   $f2, $f6, $f6
    sub.s   $f10, $f8, $f2
    mul.s   $f4, $f10, $f12
    add.s   $f6, $f4, $f2
    swc1    $f6, 0x0014(s0)            # 00000014
    lwc1    $f8, 0x0044($sp)
    lwc1    $f4, 0x0024($sp)
    mul.s   $f10, $f8, $f14
    add.s   $f6, $f10, $f4
    swc1    $f6, 0x0020(s0)            # 00000020
    lwc1    $f10, 0x0044($sp)
    lwc1    $f8, 0x0024($sp)
    mul.s   $f4, $f10, $f14
    sub.s   $f6, $f8, $f4
    mtc1    $at, $f8                   # $f8 = 1.00
    swc1    $f6, 0x0008(s0)            # 00000008
    lwc1    $f10, 0x0048($sp)
    mul.s   $f0, $f10, $f10
    sub.s   $f4, $f8, $f0
    mul.s   $f6, $f4, $f12
    add.s   $f10, $f6, $f0
    swc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f8, 0x0048($sp)
    mul.s   $f4, $f8, $f14
    sub.s   $f6, $f16, $f4
    swc1    $f6, 0x0010(s0)            # 00000010
    lwc1    $f10, 0x0048($sp)
    mul.s   $f8, $f10, $f14
    add.s   $f4, $f8, $f16
    swc1    $f4, 0x0004(s0)            # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_800D28A4:
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    mtc1    a3, $f16                   # $f16 = 0.00
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    lwc1    $f4, 0x0070($sp)
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0060($sp)
    mfc1    a1, $f12
    mfc1    a2, $f14
    mfc1    a3, $f16
    addiu   a0, $sp, 0x0020            # a0 = FFFFFFC0
    jal     func_800D2710
    swc1    $f4, 0x0010($sp)
    addiu   a0, $sp, 0x0020            # a0 = FFFFFFC0
    jal     func_800D0730
    lw      a1, 0x0060($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop
    nop
    nop
    nop


func_800D2900:
    lui     a1, 0x8000                 # a1 = 80000000
    addiu   a1, a1, 0x6358             # a1 = 80006358
    lw      t6, 0x0000(a1)             # 80006358
    mtc1    a0, $f8                    # $f8 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t6, $f4                    # $f4 = 0.00
    cvt.s.w $f10, $f8
    bgez    a0, lbl_800D2930
    cvt.s.w $f6, $f4
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f10, $f10, $f16
lbl_800D2930:
    div.s   $f18, $f6, $f10
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    lui     t0, 0xA450                 # t0 = A4500000
    lui     t2, 0xA450                 # t2 = A4500000
    add.s   $f0, $f18, $f4
    cfc1    t7, $f31
    ctc1    v1, $f31
    nop
    cvt.w.s $f8, $f0
    cfc1    v1, $f31
    nop
    andi    v1, v1, 0x0078             # v1 = 00000000
    beql    v1, $zero, lbl_800D29BC
    mfc1    v1, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sub.s   $f8, $f0, $f8
    ctc1    v1, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    v1, $f31
    nop
    andi    v1, v1, 0x0078             # v1 = 00000000
    bne     v1, $zero, lbl_800D29B0
    nop
    mfc1    v1, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_800D29C8
    or      v1, v1, $at                # v1 = 80000000
lbl_800D29B0:
    beq     $zero, $zero, lbl_800D29C8
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
    mfc1    v1, $f8
lbl_800D29BC:
    nop
    bltz    v1, lbl_800D29B0
    nop
lbl_800D29C8:
    ctc1    t7, $f31
    sltiu   $at, v1, 0x0084
    beq     $at, $zero, lbl_800D29E0
    addiu   t9, v1, 0xFFFF             # t9 = FFFFFFFE
    jr      $ra
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_800D29E0:
    addiu   $at, $zero, 0x0042         # $at = 00000042
    divu    $zero, v1, $at
    mflo    v0
    andi    t8, v0, 0x00FF             # t8 = 000000FF
    slti    $at, t8, 0x0011
    bne     $at, $zero, lbl_800D2A00
    andi    a0, v0, 0x00FF             # a0 = 000000FF
    addiu   a0, $zero, 0x0010          # a0 = 00000010
lbl_800D2A00:
    sw      t9, 0x0010(t0)             # A4500010
    addiu   t1, a0, 0xFFFF             # t1 = 0000000F
    sw      t1, 0x0014(t2)             # A4500014
    lw      t3, 0x0000(a1)             # 80006358
    div     $zero, t3, v1
    mflo    v0
    bne     v1, $zero, lbl_800D2A24
    nop
    break   # 0x01C00
lbl_800D2A24:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_800D2A3C
    lui     $at, 0x8000                # $at = 80000000
    bne     t3, $at, lbl_800D2A3C
    nop
    break   # 0x01800
lbl_800D2A3C:
    jr      $ra
    nop
    nop
    nop
    nop


func_800D2A50:
    lui     v0, 0x8000                 # v0 = 80000000
    jr      $ra
    lw      v0, 0x633C(v0)             # 8000633C
    nop


func_800D2A60:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lwc1    $f2, 0x0000(a0)            # 00000000
    lwc1    $f14, 0x0000(a1)           # 00000000
    lwc1    $f0, 0x0000(a2)            # 00000000
    mul.s   $f4, $f2, $f2
    sw      a2, 0x0020($sp)
    sw      a1, 0x001C($sp)
    mul.s   $f6, $f14, $f14
    sw      a0, 0x0018($sp)
    mul.s   $f10, $f0, $f0
    add.s   $f8, $f4, $f6
    jal     func_800D0DC0
    add.s   $f12, $f10, $f8
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    div.s   $f2, $f16, $f0
    lwc1    $f18, 0x0000(a0)           # 00000000
    lw      a2, 0x0020($sp)
    mul.s   $f4, $f18, $f2
    swc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f6, 0x0000(a1)            # 00000000
    mul.s   $f10, $f6, $f2
    swc1    $f10, 0x0000(a1)           # 00000000
    lwc1    $f8, 0x0000(a2)            # 00000000
    mul.s   $f16, $f8, $f2
    swc1    $f16, 0x0000(a2)           # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
    nop


func_800D2AF0:
# u32 __osDpGetStatus(void)
# Get the value of the RDP status register (DPC_STATUS_REG)
# V0 = u32 current value
    lui     t6, 0xA410                 # t6 = A4100000
    jr      $ra
    lw      v0, 0x000C(t6)             # A410000C
    nop


func_800D2B00:
# void __osDpSetStatus(u32 value)
# Set the value of the RDP status register (DPC_STATUS_REG)
# A0 = u32 new value
    lui     t6, 0xA410                 # t6 = A4100000
    jr      $ra
    sw      a0, 0x000C(t6)             # A410000C
    nop


func_800D2B10:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    jal     func_800D0830
    sw      a0, 0x0018($sp)
    lwc1    $f4, 0x0020($sp)
    lwc1    $f6, 0x001C($sp)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f8                   # $f8 = 2.00
    sub.s   $f0, $f4, $f6
    lw      v0, 0x0018($sp)
    lwc1    $f14, 0x0028($sp)
    lwc1    $f16, 0x0030($sp)
    div.s   $f10, $f8, $f0
    lwc1    $f18, 0x002C($sp)
    mtc1    $at, $f6                   # $f6 = 2.00
    lui     $at, 0xC000                # $at = C0000000
    sub.s   $f12, $f16, $f18
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    swc1    $f10, 0x0000(v0)           # 00000000
    lwc1    $f4, 0x0024($sp)
    mtc1    $at, $f10                  # $f10 = -2.00
    lui     $at, 0x3F80                # $at = 3F800000
    sub.s   $f2, $f14, $f4
    div.s   $f4, $f10, $f12
    div.s   $f8, $f6, $f2
    swc1    $f4, 0x0028(v0)            # 00000028
    swc1    $f8, 0x0014(v0)            # 00000014
    lwc1    $f8, 0x001C($sp)
    lwc1    $f6, 0x0020($sp)
    add.s   $f10, $f6, $f8
    neg.s   $f4, $f10
    div.s   $f6, $f4, $f0
    swc1    $f6, 0x0030(v0)            # 00000030
    lwc1    $f8, 0x0024($sp)
    add.s   $f10, $f14, $f8
    add.s   $f8, $f16, $f18
    neg.s   $f4, $f10
    neg.s   $f10, $f8
    div.s   $f6, $f4, $f2
    div.s   $f4, $f10, $f12
    swc1    $f6, 0x0034(v0)            # 00000034
    mtc1    $at, $f6                   # $f6 = 1.00
    nop
    swc1    $f6, 0x003C(v0)            # 0000003C
    swc1    $f4, 0x0038(v0)            # 00000038
    lwc1    $f0, 0x0034($sp)
    lwc1    $f8, 0x0000(v0)            # 00000000
    addiu   v1, v1, 0x0001             # v1 = 00000001
    lwc1    $f18, 0x0004(v0)           # 00000004
    mul.s   $f12, $f8, $f0
    lwc1    $f14, 0x0008(v0)           # 00000008
    beq     v1, a0, lbl_800D2C30
    lwc1    $f16, 0x000C(v0)           # 0000000C
lbl_800D2BF4:
    mul.s   $f10, $f18, $f0
    lwc1    $f8, 0x0010(v0)            # 00000010
    lwc1    $f18, 0x0014(v0)           # 00000014
    mul.s   $f6, $f14, $f0
    lwc1    $f14, 0x0018(v0)           # 00000018
    addiu   v1, v1, 0x0001             # v1 = 00000002
    mul.s   $f4, $f16, $f0
    lwc1    $f16, 0x001C(v0)           # 0000001C
    swc1    $f12, 0x0000(v0)           # 00000000
    mul.s   $f12, $f8, $f0
    swc1    $f10, 0x0004(v0)           # 00000004
    swc1    $f6, 0x0008(v0)            # 00000008
    addiu   v0, v0, 0x0010             # v0 = 00000010
    bne     v1, a0, lbl_800D2BF4
    swc1    $f4, -0x0004(v0)           # 0000000C
lbl_800D2C30:
    mul.s   $f10, $f18, $f0
    addiu   v0, v0, 0x0010             # v0 = 00000020
    swc1    $f12, -0x0010(v0)          # 00000010
    mul.s   $f6, $f14, $f0
    nop
    mul.s   $f4, $f16, $f0
    swc1    $f10, -0x000C(v0)          # 00000014
    swc1    $f6, -0x0008(v0)           # 00000018
    swc1    $f4, -0x0004(v0)           # 0000001C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800D2C64:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    mtc1    a3, $f16                   # $f16 = 0.00
    lwc1    $f4, 0x0078($sp)
    lwc1    $f6, 0x007C($sp)
    lwc1    $f8, 0x0080($sp)
    lwc1    $f10, 0x0084($sp)
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0068($sp)
    mfc1    a1, $f12
    mfc1    a2, $f14
    mfc1    a3, $f16
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFC0
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_800D2B10
    swc1    $f10, 0x001C($sp)
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFC0
    jal     func_800D0730
    lw      a1, 0x0068($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop
    nop


func_800D2CD0:
# Performs some calculation on angle of view/2 (rad)
# F12 = Angle of View/2 in radians
# F0 = Result
    swc1    $f12, 0x0000($sp)
    lw      v0, 0x0000($sp)
    lwc1    $f6, 0x0000($sp)
    lwc1    $f10, 0x0000($sp)
    sra     t6, v0, 22
    andi    t7, t6, 0x01FF             # t7 = 00000000
    slti    $at, t7, 0x0136
    beql    $at, $zero, lbl_800D2E14
    c.eq.s  $f10, $f10
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x3FE0                # $at = 3FE00000
    mtc1    $at, $f19                  # $f19 = 1.75
    c.lt.s  $f4, $f6
    lwc1    $f0, 0x0000($sp)
    lui     $at, 0x8011                # $at = 80110000
    bc1fl   lbl_800D2D20
    neg.s   $f0, $f0
    beq     $zero, $zero, lbl_800D2D20
    mov.s   $f0, $f6
    neg.s   $f0, $f0
lbl_800D2D20:
    ldc1    $f8, -0x5788($at)          # 8010A878
    cvt.d.s $f12, $f0
    mtc1    $zero, $f18                # $f18 = 0.00
    mul.d   $f10, $f12, $f8
    mtc1    $zero, $f5                 # $f5 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    add.d   $f14, $f10, $f18
    c.le.d  $f4, $f14
    nop
    bc1fl   lbl_800D2D64
    sub.d   $f10, $f14, $f18
    add.d   $f6, $f14, $f18
    trunc.w.d $f8, $f6
    mfc1    v0, $f8
    beq     $zero, $zero, lbl_800D2D74
    mtc1    v0, $f6                    # $f6 = 0.00
    sub.d   $f10, $f14, $f18
lbl_800D2D64:
    trunc.w.d $f4, $f10
    mfc1    v0, $f4
    nop
    mtc1    v0, $f6                    # $f6 = 0.00
lbl_800D2D74:
    lui     $at, 0x8011                # $at = 80110000
    ldc1    $f10, -0x5780($at)         # 8010A880
    cvt.d.w $f8, $f6
    lui     $at, 0x8011                # $at = 80110000
    ldc1    $f6, -0x5778($at)          # 8010A888
    lui     v1, 0x8011                 # v1 = 80110000
    addiu   v1, v1, 0xA850             # v1 = 8010A850
    sub.d   $f0, $f8, $f18
    andi    t0, v0, 0x0001             # t0 = 00000000
    mul.d   $f4, $f0, $f10
    ldc1    $f10, 0x0020(v1)           # 8010A870
    mul.d   $f8, $f0, $f6
    ldc1    $f6, 0x0018(v1)            # 8010A868
    sub.d   $f2, $f12, $f4
    sub.d   $f2, $f2, $f8
    mul.d   $f14, $f2, $f2
    nop
    mul.d   $f4, $f10, $f14
    add.d   $f8, $f4, $f6
    ldc1    $f4, 0x0010(v1)            # 8010A860
    mul.d   $f10, $f8, $f14
    add.d   $f6, $f10, $f4
    ldc1    $f10, 0x0008(v1)           # 8010A858
    mul.d   $f8, $f6, $f14
    bne     t0, $zero, lbl_800D2DF4
    add.d   $f16, $f10, $f8
    mul.d   $f4, $f2, $f14
    nop
    mul.d   $f6, $f4, $f16
    add.d   $f10, $f6, $f2
    jr      $ra
    cvt.s.d $f0, $f10
lbl_800D2DF4:
    mul.d   $f8, $f2, $f14
    nop
    mul.d   $f4, $f8, $f16
    add.d   $f6, $f4, $f2
    cvt.s.d $f0, $f6
    jr      $ra
    neg.s   $f0, $f0
lbl_800D2E10:
    c.eq.s  $f10, $f10
lbl_800D2E14:
    lui     $at, 0x8011                # $at = 80110000
    bc1t    lbl_800D2E2C
    nop
    lui     $at, 0x8011                # $at = 80110000
    jr      $ra
    lwc1    $f0, -0x5760($at)          # 8010A8A0
lbl_800D2E2C:
    lwc1    $f0, -0x5770($at)          # 8010A890
    jr      $ra
    nop
    nop
    nop


func_800D2E40:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80005130              # __osDisableInt
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    or      a1, v0, $zero              # a1 = 00000000
    lui     v1, 0x8000                 # v1 = 80000000
    andi    t6, a0, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_800D2E7C
    andi    t9, a0, 0x0002             # t9 = 00000000
    addiu   v1, v1, 0x64C4             # v1 = 800064C4
    lw      v0, 0x0000(v1)             # 800064C4
    lw      t7, 0x000C(v0)             # 0000000C
    ori     t8, t7, 0x0008             # t8 = 00000008
    sw      t8, 0x000C(v0)             # 0000000C
lbl_800D2E7C:
    lui     v1, 0x8000                 # v1 = 80000000
    beq     t9, $zero, lbl_800D2E9C
    addiu   v1, v1, 0x64C4             # v1 = 800064C4
    lw      v0, 0x0000(v1)             # 800064C4
    addiu   $at, $zero, 0xFFF7         # $at = FFFFFFF7
    lw      t0, 0x000C(v0)             # 0000000C
    and     t1, t0, $at
    sw      t1, 0x000C(v0)             # 0000000C
lbl_800D2E9C:
    andi    t2, a0, 0x0004             # t2 = 00000000
    beq     t2, $zero, lbl_800D2EB8
    andi    t5, a0, 0x0008             # t5 = 00000000
    lw      v0, 0x0000(v1)             # 800064C4
    lw      t3, 0x000C(v0)             # 0000000C
    ori     t4, t3, 0x0004             # t4 = 00000004
    sw      t4, 0x000C(v0)             # 0000000C
lbl_800D2EB8:
    beq     t5, $zero, lbl_800D2ED4
    andi    t8, a0, 0x0010             # t8 = 00000000
    lw      v0, 0x0000(v1)             # 800064C4
    addiu   $at, $zero, 0xFFFB         # $at = FFFFFFFB
    lw      t6, 0x000C(v0)             # 0000000C
    and     t7, t6, $at
    sw      t7, 0x000C(v0)             # 0000000C
lbl_800D2ED4:
    beq     t8, $zero, lbl_800D2EEC
    andi    t1, a0, 0x0020             # t1 = 00000000
    lw      v0, 0x0000(v1)             # 800064C4
    lw      t9, 0x000C(v0)             # 0000000C
    ori     t0, t9, 0x0010             # t0 = 00000010
    sw      t0, 0x000C(v0)             # 0000000C
lbl_800D2EEC:
    beq     t1, $zero, lbl_800D2F08
    andi    t4, a0, 0x0040             # t4 = 00000000
    lw      v0, 0x0000(v1)             # 800064C4
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    lw      t2, 0x000C(v0)             # 0000000C
    and     t3, t2, $at
    sw      t3, 0x000C(v0)             # 0000000C
lbl_800D2F08:
    beq     t4, $zero, lbl_800D2F38
    andi    t9, a0, 0x0080             # t9 = 00000000
    lw      v0, 0x0000(v1)             # 800064C4
    lui     $at, 0x0001                # $at = 00010000
    lw      t5, 0x000C(v0)             # 0000000C
    or      t6, t5, $at                # t6 = 00010000
    sw      t6, 0x000C(v0)             # 0000000C
    lw      v0, 0x0000(v1)             # 800064C4
    addiu   $at, $zero, 0xFCFF         # $at = FFFFFCFF
    lw      t7, 0x000C(v0)             # 0000000C
    and     t8, t7, $at
    sw      t8, 0x000C(v0)             # 0000000C
lbl_800D2F38:
    beql    t9, $zero, lbl_800D2F78
    lw      v0, 0x0000(v1)             # 800064C4
    lw      v0, 0x0000(v1)             # 800064C4
    lui     $at, 0xFFFE                # $at = FFFE0000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    lw      t0, 0x000C(v0)             # 0000000C
    and     t1, t0, $at
    sw      t1, 0x000C(v0)             # 0000000C
    lw      v0, 0x0000(v1)             # 800064C4
    lw      t3, 0x0008(v0)             # 00000008
    lw      t2, 0x000C(v0)             # 0000000C
    lw      t4, 0x0004(t3)             # 00000004
    andi    t5, t4, 0x0300             # t5 = 00000000
    or      t6, t2, t5                 # t6 = 00000000
    sw      t6, 0x000C(v0)             # 0000000C
    lw      v0, 0x0000(v1)             # 800064C4
lbl_800D2F78:
    or      a0, a1, $zero              # a0 = 00000000
    lhu     t7, 0x0000(v0)             # 00000000
    ori     t8, t7, 0x0008             # t8 = 00000008
    jal     func_800051A0              # __osRestoreInt
    sh      t8, 0x0000(v0)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop


func_800D2FA0:
# Calculate s16 Cosine * 0x7FFF
# A0 = short rotation
# V0 = Cosine * 0x7FFF
# calls 800CF630
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a0, 0x0018($sp)
    or      a1, a0, $zero              # a1 = 00000000
    addiu   a0, a1, 0x4000             # a0 = 00004000
    sw      $ra, 0x0014($sp)
    andi    t6, a0, 0xFFFF             # t6 = 00004000
    jal     func_800CF630
    or      a0, t6, $zero              # a0 = 00004000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800D2FD0:
# void osSetTime(OSTime time)
# Set the real time counter value (expressed in units of CPU count register cycles)
# A0/A1 = OSTime new time value
    sw      a0, 0x0000($sp)
    lw      t6, 0x0000($sp)
    sw      a1, 0x0004($sp)
    lui     $at, 0x8001                # $at = 80010000
    lw      t7, 0x0004($sp)
    sw      t6, -0x6180($at)           # 80009E80
    lui     $at, 0x8001                # $at = 80010000
    jr      $ra
    sw      t7, -0x617C($at)           # 80009E84
    nop
    nop
    nop


func_800D3000:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    jal     func_80005130              # __osDisableInt
    sw      s0, 0x0018($sp)
    lui     t7, 0x8000                 # t7 = 80000000
    lw      t7, 0x64C4(t7)             # 800064C4
    lw      t6, 0x0028($sp)
    lui     t9, 0x8000                 # t9 = 80000000
    lui     t1, 0x8000                 # t1 = 80000000
    sw      t6, 0x0010(t7)             # 80000010
    lw      t9, 0x64C4(t9)             # 800064C4
    lw      t8, 0x002C($sp)
    or      s0, v0, $zero              # s0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    sw      t8, 0x0014(t9)             # 80000014
    lw      t1, 0x64C4(t1)             # 800064C4
    lw      t0, 0x0030($sp)
    jal     func_800051A0              # __osRestoreInt
    sh      t0, 0x0002(t1)             # 80000002
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop


func_800D3070:
    lbu     t6, 0x0016(a0)             # 00000016
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   v0, $zero, 0x0200          # v0 = 00000200
    bne     t6, $at, lbl_800D308C
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    beq     $zero, $zero, lbl_800D308C
    addiu   v0, $zero, 0x0100          # v0 = 00000100
lbl_800D308C:
    lbu     t7, 0x0017(a0)             # 00000017
    lhu     t0, 0x0014(a0)             # 00000014
    addiu   $at, $zero, 0x0033         # $at = 00000033
    subu    v1, t8, t7
    andi    t9, v1, 0xFFFF             # t9 = 00000000
    bne     t0, $at, lbl_800D3158
    or      v1, t9, $zero              # v1 = 00000000
    lhu     t1, 0x0002(a0)             # 00000002
    srav    t2, t1, v1
    andi    a1, t2, 0xFFFF             # a1 = 00000000
    div     $zero, v0, a1
    mflo    t3
    sll     t4, t3,  2
    sll     t5, a1,  1
    andi    t8, t5, 0xFFFF             # t8 = 00000000
    andi    t6, t4, 0xFFFF             # t6 = 00000000
    multu   t6, t8
    sh      t2, 0x001C(a0)             # 0000001C
    addiu   t2, $zero, 0x07FF          # t2 = 000007FF
    bne     a1, $zero, lbl_800D30E4
    nop
    break   # 0x01C00
lbl_800D30E4:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a1, $at, lbl_800D30FC
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_800D30FC
    nop
    break   # 0x01800
lbl_800D30FC:
    mflo    t7
    andi    t9, t7, 0xFFFF             # t9 = 00000000
    sh      t4, 0x001E(a0)             # 0000001E
    div     $zero, t2, a1
    sra     t0, t9,  1
    mflo    t3
    addiu   t1, t0, 0xFFFF             # t1 = FFFFFFFF
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sh      t5, 0x0024(a0)             # 00000024
    sh      t7, 0x0026(a0)             # 00000026
    sh      t1, 0x0020(a0)             # 00000020
    bne     a1, $zero, lbl_800D3134
    nop
    break   # 0x01C00
lbl_800D3134:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a1, $at, lbl_800D314C
    lui     $at, 0x8000                # $at = 80000000
    bne     t2, $at, lbl_800D314C
    nop
    break   # 0x01800
lbl_800D314C:
    sh      t4, 0x0022(a0)             # 00000022
    jr      $ra
    nop
lbl_800D3158:
    lhu     t5, 0x0006(a0)             # 00000006
    lhu     t1, 0x0002(a0)             # 00000002
    or      a1, v1, $zero              # a1 = 00000000
    srav    t6, t5, v1
    addiu   t8, t6, 0x0003             # t8 = 00000003
    andi    t7, t8, 0xFFFF             # t7 = 00000003
    div     $zero, v0, t7
    mflo    t9
    srav    t2, t1, a1
    sll     t0, t9,  2
    sll     t3, t2,  1
    andi    t4, t3, 0xFFFF             # t4 = 00000000
    andi    a2, t0, 0xFFFF             # a2 = 00000000
    multu   a2, t4
    sh      t8, 0x001C(a0)             # 0000001C
    addiu   t8, a2, 0xFFFF             # t8 = FFFFFFFF
    bne     t7, $zero, lbl_800D31A4
    nop
    break   # 0x01C00
lbl_800D31A4:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t7, $at, lbl_800D31BC
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_800D31BC
    nop
    break   # 0x01800
lbl_800D31BC:
    mflo    a3
    srl     t5, a3, 16
    andi    t6, a3, 0xFFFF             # t6 = 00000000
    sh      t0, 0x001E(a0)             # 0000001E
    sh      t3, 0x0024(a0)             # 00000024
    sh      t5, 0x0026(a0)             # 00000026
    sh      t6, 0x0020(a0)             # 00000020
    sh      t8, 0x0022(a0)             # 00000022
    jr      $ra
    nop
    nop
    nop
    nop


func_800D31F0:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s0, 0x0020($sp)
    andi    s0, a1, 0x00FF             # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    addiu   v0, $sp, 0x0038            # v0 = FFFFFFE0
    addiu   v1, $sp, 0x0058            # v1 = 00000000
lbl_800D3210:
    addiu   v0, v0, 0x0004             # v0 = FFFFFFE4
    sb      s0, -0x0003(v0)            # FFFFFFE1
    sb      s0, -0x0002(v0)            # FFFFFFE2
    sb      s0, -0x0001(v0)            # FFFFFFE3
    bne     v0, v1, lbl_800D3210
    sb      s0, -0x0004(v0)            # FFFFFFE0
    lw      t6, 0x0058($sp)
    addiu   a2, $zero, 0x0400          # a2 = 00000400
    addiu   a3, $sp, 0x0038            # a3 = FFFFFFE0
    lw      a0, 0x0004(t6)             # 00000004
    lw      a1, 0x0008(t6)             # 00000008
    jal     func_800D3390
    sw      $zero, 0x0010($sp)
    bne     v0, $zero, lbl_800D3254
    or      v1, v0, $zero              # v1 = 00000000
    lw      t7, 0x0058($sp)
    sb      s0, 0x0065(t7)             # 00000065
lbl_800D3254:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    or      v0, v1, $zero              # v0 = 00000000
    nop
    nop


func_800D3270:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    jal     func_800CFDB0
    sw      $zero, 0x001C($sp)
    lbu     t6, 0x0023($sp)
    slti    $at, t6, 0x0005
    bne     $at, $zero, lbl_800D32A4
    nop
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    lui     $at, 0x8013                # $at = 80130000
    beq     $zero, $zero, lbl_800D32B0
    sb      t7, -0x439F($at)           # 8012BC61
lbl_800D32A4:
    lbu     t8, 0x0023($sp)
    lui     $at, 0x8013                # $at = 80130000
    sb      t8, -0x439F($at)           # 8012BC61
lbl_800D32B0:
    addiu   t9, $zero, 0x00FE          # t9 = 000000FE
    lui     $at, 0x8013                # $at = 80130000
    jal     func_800CFDF4
    sb      t9, -0x43A0($at)           # 8012BC60
    lw      $ra, 0x0014($sp)
    lw      v0, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop
    nop
    nop


func_800D32E0:
# u32 osAiGetLength(void)
# Get the number of bytes remaining in the current DMA buffer (AI_LEN_REG)
# V0 = u32 length
    lui     t6, 0xA450                 # t6 = A4500000
    jr      $ra
    lw      v0, 0x0004(t6)             # A4500004
    nop


func_800D32F0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    jal     func_800D0830
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lwc1    $f4, 0x001C($sp)
    swc1    $f4, 0x0030(a0)            # 00000030
    lwc1    $f6, 0x0020($sp)
    swc1    $f6, 0x0034(a0)            # 00000034
    lwc1    $f8, 0x0024($sp)
    swc1    $f8, 0x0038(a0)            # 00000038
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800D3338:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    sw      a2, 0x0070($sp)
    sw      a3, 0x0074($sp)
    jal     func_800D0830
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFC0
    lwc1    $f4, 0x006C($sp)
    lwc1    $f6, 0x0070($sp)
    lwc1    $f8, 0x0074($sp)
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFC0
    lw      a1, 0x0068($sp)
    swc1    $f4, 0x0058($sp)
    swc1    $f6, 0x005C($sp)
    jal     func_800D0730
    swc1    $f8, 0x0060($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop
    nop


func_800D3390:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    lw      t7, 0x0078($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s1, 0x001C($sp)
    sw      a2, 0x0070($sp)
    andi    t6, a2, 0xFFFF             # t6 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a2, t6, $zero              # a2 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    or      s5, a0, $zero              # s5 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s8, 0x0038($sp)
    sw      s7, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s0, 0x0018($sp)
    sw      a3, 0x0074($sp)
    beq     t7, $at, lbl_800D3400
    addiu   s4, $zero, 0x0002          # s4 = 00000002
    slti    $at, t6, 0x0007
    beql    $at, $zero, lbl_800D3404
    or      s0, a2, $zero              # s0 = 00000000
    beql    t6, $zero, lbl_800D3404
    or      s0, a2, $zero              # s0 = 00000000
    beq     $zero, $zero, lbl_800D35AC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800D3400:
    or      s0, a2, $zero              # s0 = 00000000
lbl_800D3404:
    jal     func_800CFDB0
    sh      a2, 0x0072($sp)
    sra     t8, s0,  3
    sll     t9, s0,  5
    lui     s7, 0x8010                 # s7 = 80100000
    lui     s6, 0x8013                 # s6 = 80130000
    lui     s3, 0x8013                 # s3 = 80130000
    addiu   s3, s3, 0xBDD0             # s3 = 8012BDD0
    addiu   s6, s6, 0xBC60             # s6 = 8012BC60
    addiu   s7, s7, 0x5D20             # s7 = 80105D20
    sw      t9, 0x0040($sp)
    sw      t8, 0x0044($sp)
    addiu   s8, $zero, 0x0003          # s8 = 00000003
lbl_800D3438:
    lbu     t0, 0x0000(s6)             # 8012BC60
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      s0, s3, $zero              # s0 = 8012BDD0
    bne     t0, $at, lbl_800D3458
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t1, 0x0000(s7)             # 80105D20
    beql    s1, t1, lbl_800D34DC
    addu    s0, s3, s1
lbl_800D3458:
    sb      s8, 0x0000(s6)             # 8012BC60
    blez    s1, lbl_800D34A0
    sw      s1, 0x0000(s7)             # 80105D20
    andi    a0, s1, 0x0003             # a0 = 00000000
    beq     a0, $zero, lbl_800D3484
    or      v1, a0, $zero              # v1 = 00000000
lbl_800D3470:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sb      $zero, 0x0000(s0)          # 8012BDD0
    bne     v1, v0, lbl_800D3470
    addiu   s0, s0, 0x0001             # s0 = 8012BDD1
    beq     v0, s1, lbl_800D34A0
lbl_800D3484:
    addiu   v0, v0, 0x0004             # v0 = 00000005
    sb      $zero, 0x0000(s0)          # 8012BDD1
    sb      $zero, 0x0001(s0)          # 8012BDD2
    sb      $zero, 0x0002(s0)          # 8012BDD3
    sb      $zero, 0x0003(s0)          # 8012BDD4
    bne     v0, s1, lbl_800D3484
    addiu   s0, s0, 0x0004             # s0 = 8012BDD5
lbl_800D34A0:
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x003C(s3)             # 8012BE0C
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    addiu   t4, $zero, 0x0023          # t4 = 00000023
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00FE          # t7 = 000000FE
    sb      t3, 0x0000(s0)             # 8012BDD5
    sb      t4, 0x0001(s0)             # 8012BDD6
    sb      t5, 0x0002(s0)             # 8012BDD7
    sb      s8, 0x0003(s0)             # 8012BDD8
    sb      t6, 0x0026(s0)             # 8012BDFB
    beq     $zero, $zero, lbl_800D34DC
    sb      t7, 0x0027(s0)             # 8012BDFC
    addu    s0, s3, s1
lbl_800D34DC:
    lw      t8, 0x0044($sp)
    sb      t8, 0x0004(s0)             # 8012BDD9
    jal     func_800D46E0
    lhu     a0, 0x0072($sp)
    lw      t9, 0x0040($sp)
    addiu   a1, s0, 0x0006             # a1 = 8012BDDB
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    or      t0, v0, t9                 # t0 = 00000000
    sb      t0, 0x0005(s0)             # 8012BDDA
    jal     func_80004DC0              # bcopy
    lw      a0, 0x0074($sp)
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_800D0660
    or      a1, s3, $zero              # a1 = 8012BDD0
    jal     func_800D47B0
    lw      a0, 0x0074($sp)
    andi    s2, v0, 0x00FF             # s2 = 00000000
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_800D0660
    or      a1, s3, $zero              # a1 = 8012BDD0
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lbu     v1, 0x0002(s0)             # 8012BDD7
    andi    t1, v1, 0x00C0             # t1 = 00000000
    sra     v1, t1,  4
    bnel    v1, $zero, lbl_800D358C
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lbu     t3, 0x0026(s0)             # 8012BDFB
    or      a0, s5, $zero              # a0 = 00000000
    beql    t3, s2, lbl_800D3590
    addiu   $at, $zero, 0x0004         # $at = 00000004
    jal     func_800D35E0
    or      a1, s1, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_800D35A0
    or      v1, v0, $zero              # v1 = 00000000
    beq     $zero, $zero, lbl_800D358C
    addiu   v1, $zero, 0x0004          # v1 = 00000004
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_800D358C:
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_800D3590:
    bne     v1, $at, lbl_800D35A0
    slti    v0, s4, 0x0000
    beq     v0, $zero, lbl_800D3438
    addiu   s4, s4, 0xFFFF             # s4 = 00000001
lbl_800D35A0:
    jal     func_800CFDF4
    sw      v1, 0x0064($sp)
    lw      v0, 0x0064($sp)
lbl_800D35AC:
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
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    nop


func_800D35E0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a0, 0x0030($sp)
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0034($sp)
    addiu   t6, $zero, 0x00FA          # t6 = 000000FA
    lui     $at, 0x8010                # $at = 80100000
    or      a0, a1, $zero              # a0 = 00000000
    sb      t6, 0x5D14($at)            # 80105D14
    jal     func_800D36B0
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a1, 0x8013                 # a1 = 80130000
    addiu   a1, a1, 0xBDD0             # a1 = 8012BDD0
    jal     func_800D0660
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      a0, 0x0030($sp)
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF8
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a1, 0x8013                 # a1 = 80130000
    addiu   a1, a1, 0xBDD0             # a1 = 8012BDD0
    jal     func_800D0660
    or      a0, $zero, $zero           # a0 = 00000000
    sw      v0, 0x002C($sp)
    lw      a0, 0x0030($sp)
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF8
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x0034($sp)
    jal     func_800D3774
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lbu     v0, 0x0026($sp)
    lbu     t8, 0x0027($sp)
    lw      $ra, 0x0014($sp)
    andi    v1, v0, 0x0001             # v1 = 00000000
    beq     v1, $zero, lbl_800D3680
    andi    t7, v0, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_800D3680
    nop
    beq     $zero, $zero, lbl_800D36A8
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_800D3680:
    bne     t8, $zero, lbl_800D3690
    nop
    bne     v1, $zero, lbl_800D3698
    andi    t9, v0, 0x0004             # t9 = 00000000
lbl_800D3690:
    beq     $zero, $zero, lbl_800D36A8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800D3698:
    beq     t9, $zero, lbl_800D36A8
    lw      v0, 0x002C($sp)
    beq     $zero, $zero, lbl_800D36A8
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_800D36A8:
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_800D36B0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     a2, 0x8013                 # a2 = 80130000
    addiu   a3, $zero, 0x00FE          # a3 = 000000FE
    lui     $at, 0x8013                # $at = 80130000
    addiu   v0, a2, 0xBDD0             # v0 = 8012BDD0
    sw      a1, 0x001C($sp)
    sb      a3, -0x43A0($at)           # 8012BC60
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x003C(v0)             # 8012BE0C
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    sb      t8, 0x000C($sp)
    sb      t9, 0x000D($sp)
    sb      a1, 0x000E($sp)
    sb      t0, 0x000F($sp)
    sb      t1, 0x0010($sp)
    sb      t2, 0x0011($sp)
    blez    a0, lbl_800D3744
    or      v1, $zero, $zero           # v1 = 00000000
    andi    a2, a0, 0x0003             # a2 = 00000000
    beq     a2, $zero, lbl_800D3728
    or      a1, a2, $zero              # a1 = 00000000
lbl_800D3714:
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sb      $zero, 0x0000(v0)          # 8012BDD0
    bne     a1, v1, lbl_800D3714
    addiu   v0, v0, 0x0001             # v0 = 8012BDD1
    beq     v1, a0, lbl_800D3744
lbl_800D3728:
    addiu   v1, v1, 0x0004             # v1 = 00000005
    sb      $zero, 0x0001(v0)          # 8012BDD2
    sb      $zero, 0x0002(v0)          # 8012BDD3
    sb      $zero, 0x0003(v0)          # 8012BDD4
    addiu   v0, v0, 0x0004             # v0 = 8012BDD5
    bne     v1, a0, lbl_800D3728
    sb      $zero, -0x0004(v0)         # 8012BDD1
lbl_800D3744:
    addiu   t3, $sp, 0x000C            # t3 = FFFFFFF4
    lw      $at, 0x0000(t3)            # FFFFFFF4
    addiu   v0, v0, 0x0006             # v0 = 8012BDDB
    swl     $at, -0x0006(v0)           # 8012BDD5
    swr     $at, -0x0003(v0)           # 8012BDD8
    lbu     $at, 0x0004(t3)            # FFFFFFF8
    sb      $at, -0x0002(v0)           # 8012BDD9
    lbu     t5, 0x0005(t3)             # FFFFFFF9
    sb      a3, 0x0000(v0)             # 8012BDDB
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    sb      t5, -0x0001(v0)            # 8012BDDA


func_800D3774:
    lui     v0, 0x8013                 # v0 = 80130000
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    addiu   v0, v0, 0xBDD0             # v0 = 8012BDD0
    blez    a0, lbl_800D37B0
    or      v1, $zero, $zero           # v1 = 00000000
    andi    a3, a0, 0x0003             # a3 = 00000000
    beq     a3, $zero, lbl_800D37A4
    or      a2, a3, $zero              # a2 = 00000000
lbl_800D3794:
    addiu   v1, v1, 0x0001             # v1 = 00000001
    bne     a2, v1, lbl_800D3794
    addiu   v0, v0, 0x0001             # v0 = 8012BDD1
    beq     v1, a0, lbl_800D37B0
lbl_800D37A4:
    addiu   v1, v1, 0x0004             # v1 = 00000005
    bne     v1, a0, lbl_800D37A4
    addiu   v0, v0, 0x0004             # v0 = 8012BDD5
lbl_800D37B0:
    lwl     $at, 0x0000(v0)            # 8012BDD5
    lwr     $at, 0x0003(v0)            # 8012BDD8
    addiu   t6, $sp, 0x000C            # t6 = FFFFFFF4
    sw      $at, 0x0000(t6)            # FFFFFFF4
    lbu     $at, 0x0004(v0)            # 8012BDD9
    sb      $at, 0x0004(t6)            # FFFFFFF8
    lbu     t8, 0x0005(v0)             # 8012BDDA
    sb      t8, 0x0005(t6)             # FFFFFFF9
    lbu     t9, 0x000D($sp)
    andi    t0, t9, 0x00C0             # t0 = 00000000
    sra     t1, t0,  4
    andi    t2, t1, 0x00FF             # t2 = 00000000
    bne     t2, $zero, lbl_800D3804
    sb      t1, 0x0003(a1)             # 00000003
    lbu     t3, 0x0010($sp)
    lbu     t5, 0x000F($sp)
    sll     t4, t3,  8
    or      t7, t4, t5                 # t7 = 00000000
    sh      t7, 0x0000(a1)             # 00000000
    lbu     t6, 0x0011($sp)
    sb      t6, 0x0002(a1)             # 00000002
lbl_800D3804:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    nop


func_800D3810:
    or      v1, $zero, $zero           # v1 = 00000000
    or      v0, a0, $zero              # v0 = 00000000
    blez    a1, lbl_800D3874
    or      a2, $zero, $zero           # a2 = 00000000
    andi    a3, a1, 0x0003             # a3 = 00000000
    beq     a3, $zero, lbl_800D3848
    or      a0, a3, $zero              # a0 = 00000000
lbl_800D382C:
    lbu     t6, 0x0000(v0)             # 00000000
    addiu   a2, a2, 0x0001             # a2 = 00000001
    addiu   v0, v0, 0x0001             # v0 = 00000001
    bne     a0, a2, lbl_800D382C
    addu    v1, v1, t6
    beql    a2, a1, lbl_800D3878
    or      v0, v1, $zero              # v0 = 00000000
lbl_800D3848:
    lbu     t7, 0x0000(v0)             # 00000000
    lbu     t8, 0x0001(v0)             # 00000001
    lbu     t9, 0x0002(v0)             # 00000002
    addu    v1, v1, t7
    lbu     t0, 0x0003(v0)             # 00000003
    addu    v1, v1, t8
    addiu   a2, a2, 0x0004             # a2 = 00000005
    addu    v1, v1, t9
    addiu   v0, v0, 0x0004             # v0 = 00000004
    bne     a2, a1, lbl_800D3848
    addu    v1, v1, t0
lbl_800D3874:
    or      v0, v1, $zero              # v0 = 00000000
lbl_800D3878:
    andi    t1, v0, 0xFFFF             # t1 = 00000000
    jr      $ra
    or      v0, t1, $zero              # v0 = 00000000


func_800D3884:
    sh      $zero, 0x0000(a2)          # 00000000
    sh      $zero, 0x0000(a1)          # 00000000
    lhu     v0, 0x0000(a0)             # 00000000
    addiu   a3, a0, 0x0004             # a3 = 00000004
    addiu   t1, a3, 0x0002             # t1 = 00000006
    addu    t8, $zero, v0
    sh      t8, 0x0000(a1)             # 00000000
    lhu     t9, 0x0000(a2)             # 00000000
    nor     t5, v0, $zero
    addiu   t2, a3, 0x0004             # t2 = 00000008
    addu    t6, t9, t5
    sh      t6, 0x0000(a2)             # 00000000
    lhu     t7, 0x0000(a1)             # 00000000
    lhu     v0, 0x0002(a0)             # 00000002
    addiu   a0, $zero, 0x001C          # a0 = 0000001C
    addiu   t3, a3, 0x0006             # t3 = 0000000A
    addu    t8, t7, v0
    sh      t8, 0x0000(a1)             # 00000000
    lhu     t9, 0x0000(a2)             # 00000000
    nor     t5, v0, $zero
    addiu   v1, $zero, 0x0004          # v1 = 00000004
    addu    t6, t9, t5
    sh      t6, 0x0000(a2)             # 00000000
lbl_800D38E0:
    lhu     v0, 0x0000(a3)             # 00000004
    lhu     t7, 0x0000(a1)             # 00000000
    addiu   v1, v1, 0x0008             # v1 = 0000000C
    nor     t5, v0, $zero
    addu    t8, t7, v0
    sh      t8, 0x0000(a1)             # 00000000
    lhu     t9, 0x0000(a2)             # 00000000
    addiu   a3, a3, 0x0008             # a3 = 0000000C
    addiu   t1, t1, 0x0008             # t1 = 0000000E
    addu    t6, t9, t5
    sh      t6, 0x0000(a2)             # 00000000
    lhu     t7, 0x0000(a1)             # 00000000
    lhu     v0, -0x0008(t1)            # 00000006
    addiu   t2, t2, 0x0008             # t2 = 00000010
    addiu   t3, t3, 0x0008             # t3 = 00000012
    addu    t8, t7, v0
    sh      t8, 0x0000(a1)             # 00000000
    lhu     t9, 0x0000(a2)             # 00000000
    nor     t5, v0, $zero
    addu    t6, t9, t5
    sh      t6, 0x0000(a2)             # 00000000
    lhu     t7, 0x0000(a1)             # 00000000
    lhu     v0, -0x0008(t2)            # 00000008
    addu    t8, t7, v0
    sh      t8, 0x0000(a1)             # 00000000
    lhu     t9, 0x0000(a2)             # 00000000
    nor     t5, v0, $zero
    addu    t6, t9, t5
    sh      t6, 0x0000(a2)             # 00000000
    lhu     t7, 0x0000(a1)             # 00000000
    lhu     v0, -0x0008(t3)            # 0000000A
    addu    t8, t7, v0
    sh      t8, 0x0000(a1)             # 00000000
    lhu     t9, 0x0000(a2)             # 00000000
    nor     t5, v0, $zero
    addu    t6, t9, t5
    bne     v1, a0, lbl_800D38E0
    sh      t6, 0x0000(a2)             # 00000000
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000


func_800D3980:
    addiu   $sp, $sp, 0xFF60           # $sp -= 0xA0
    sw      $ra, 0x003C($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    or      s2, a0, $zero              # s2 = 00000000
    or      s4, a2, $zero              # s4 = 00000000
    or      s6, a1, $zero              # s6 = 00000000
    or      s3, $zero, $zero           # s3 = 00000000
    jal     func_80004D50              # osGetCount
    sw      t6, 0x0000(a2)             # 00000000
    sw      v0, 0x0004(s4)             # 00000004
    lw      t9, 0x000C(s6)             # 0000000C
    lw      t8, 0x0008(s6)             # 00000008
    or      a0, s2, $zero              # a0 = 00000000
    sw      t9, 0x000C(s4)             # 0000000C
    sw      t8, 0x0008(s4)             # 00000008
    lw      t1, 0x0014(s6)             # 00000014
    lw      t0, 0x0010(s6)             # 00000010
    sw      t1, 0x0014(s4)             # 00000014
    sw      t0, 0x0010(s4)             # 00000010
    lbu     t7, 0x0065(s2)             # 00000065
    beql    t7, $zero, lbl_800D3A10
    addiu   s1, $sp, 0x007C            # s1 = FFFFFFDC
    jal     func_800D31F0
    or      a1, $zero, $zero           # a1 = 00000000
    beql    v0, $zero, lbl_800D3A10
    addiu   s1, $sp, 0x007C            # s1 = FFFFFFDC
    beq     $zero, $zero, lbl_800D3CAC
    lw      $ra, 0x003C($sp)
    addiu   s1, $sp, 0x007C            # s1 = FFFFFFDC
lbl_800D3A10:
    or      s5, s1, $zero              # s5 = FFFFFFDC
    addiu   s0, $sp, 0x009C            # s0 = FFFFFFFC
    or      a0, s2, $zero              # a0 = 00000000
lbl_800D3A1C:
    jal     func_800D31F0
    andi    a1, s3, 0x00FF             # a1 = 00000000
    beq     v0, $zero, lbl_800D3A34
    or      a2, $zero, $zero           # a2 = 00000000
    beq     $zero, $zero, lbl_800D3CAC
    lw      $ra, 0x003C($sp)
lbl_800D3A34:
    lw      a0, 0x0004(s2)             # 00000004
    lw      a1, 0x0008(s2)             # 00000008
    jal     func_800D44B0
    or      a3, s5, $zero              # a3 = FFFFFFDC
    beq     v0, $zero, lbl_800D3A54
    ori     t3, s3, 0x0080             # t3 = 00000080
    beq     $zero, $zero, lbl_800D3CAC
    lw      $ra, 0x003C($sp)
lbl_800D3A54:
    sb      t3, 0x007C($sp)
    addiu   v0, $sp, 0x007D            # v0 = FFFFFFDD
lbl_800D3A5C:
    lbu     t4, 0x0000(v0)             # FFFFFFDD
    addiu   v0, v0, 0x0001             # v0 = FFFFFFDE
    sltu    $at, v0, s0
    nor     t5, t4, $zero
    bne     $at, $zero, lbl_800D3A5C
    sb      t5, -0x0001(v0)            # FFFFFFDD
    lw      a0, 0x0004(s2)             # 00000004
    lw      a1, 0x0008(s2)             # 00000008
    sw      $zero, 0x0010($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800D3390
    or      a3, s5, $zero              # a3 = FFFFFFDC
    beq     v0, $zero, lbl_800D3A9C
    or      a2, $zero, $zero           # a2 = 00000000
    beq     $zero, $zero, lbl_800D3CAC
    lw      $ra, 0x003C($sp)
lbl_800D3A9C:
    lw      a0, 0x0004(s2)             # 00000004
    lw      a1, 0x0008(s2)             # 00000008
    jal     func_800D44B0
    addiu   a3, $sp, 0x005C            # a3 = FFFFFFBC
    beq     v0, $zero, lbl_800D3ABC
    addiu   v1, $sp, 0x005C            # v1 = FFFFFFBC
    beq     $zero, $zero, lbl_800D3CAC
    lw      $ra, 0x003C($sp)
lbl_800D3ABC:
    addiu   v0, $sp, 0x007C            # v0 = FFFFFFDC
lbl_800D3AC0:
    lbu     t6, 0x0000(v1)             # FFFFFFBC
    lbu     t8, 0x0000(v0)             # FFFFFFDC
    bnel    t6, t8, lbl_800D3AE4
    addiu   t9, $sp, 0x007C            # t9 = FFFFFFDC
    addiu   v1, v1, 0x0001             # v1 = FFFFFFBD
    sltu    $at, v1, s1
    bne     $at, $zero, lbl_800D3AC0
    addiu   v0, v0, 0x0001             # v0 = FFFFFFDD
    addiu   t9, $sp, 0x007C            # t9 = FFFFFFDC
lbl_800D3AE4:
    bne     v1, t9, lbl_800D3B48
    or      a0, s2, $zero              # a0 = 00000000
    blezl   s3, lbl_800D3B3C
    addiu   s3, s3, 0x0001             # s3 = 00000001
    jal     func_800D31F0
    or      a1, $zero, $zero           # a1 = 00000000
    beq     v0, $zero, lbl_800D3B0C
    or      a2, $zero, $zero           # a2 = 00000000
    beq     $zero, $zero, lbl_800D3CAC
    lw      $ra, 0x003C($sp)
lbl_800D3B0C:
    lw      a0, 0x0004(s2)             # 00000004
    lw      a1, 0x0008(s2)             # 00000008
    jal     func_800D44B0
    or      a3, s5, $zero              # a3 = FFFFFFDC
    beq     v0, $zero, lbl_800D3B2C
    lbu     t0, 0x007C($sp)
    beq     $zero, $zero, lbl_800D3CAC
    lw      $ra, 0x003C($sp)
lbl_800D3B2C:
    addiu   $at, $zero, 0x0080         # $at = 00000080
    bnel    t0, $at, lbl_800D3B4C
    lbu     t1, 0x0065(s2)             # 00000065
    addiu   s3, s3, 0x0001             # s3 = 00000002
lbl_800D3B3C:
    slti    $at, s3, 0x003E
    bnel    $at, $zero, lbl_800D3A1C
    or      a0, s2, $zero              # a0 = 00000000
lbl_800D3B48:
    lbu     t1, 0x0065(s2)             # 00000065
lbl_800D3B4C:
    or      a0, s2, $zero              # a0 = 00000000
    beq     t1, $zero, lbl_800D3B70
    nop
    jal     func_800D31F0
    or      a1, $zero, $zero           # a1 = 00000000
    beq     v0, $zero, lbl_800D3B70
    nop
    beq     $zero, $zero, lbl_800D3CAC
    lw      $ra, 0x003C($sp)
lbl_800D3B70:
    blez    s3, lbl_800D3B80
    or      a0, s4, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800D3B84
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800D3B80:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800D3B84:
    lhu     t7, 0x0018(s6)             # 00000018
    sb      s3, 0x001A(s4)             # 0000001A
    addiu   a1, s4, 0x001C             # a1 = 0000001C
    andi    t2, t7, 0xFFFE             # t2 = 00000000
    or      t3, t2, v0                 # t3 = 00000000
    sh      t3, 0x0018(s4)             # 00000018
    lbu     t4, 0x001B(s6)             # 0000001B
    addiu   a2, s4, 0x001E             # a2 = 0000001E
    jal     func_800D3884
    sb      t4, 0x001B(s4)             # 0000001B
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    addiu   t9, $zero, 0x0006          # t9 = 00000006
    sh      t5, 0x0048($sp)
    sh      t6, 0x004A($sp)
    sh      t8, 0x004C($sp)
    sh      t9, 0x004E($sp)
    addiu   s0, $sp, 0x0048            # s0 = FFFFFFA8
    addiu   s1, $sp, 0x0050            # s1 = FFFFFFB0
    lw      a0, 0x0004(s2)             # 00000004
lbl_800D3BD8:
    lw      a1, 0x0008(s2)             # 00000008
    lhu     a2, 0x0000(s0)             # FFFFFFA8
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0010($sp)
    jal     func_800D3390
    or      a3, s4, $zero              # a3 = 00000000
    beq     v0, $zero, lbl_800D3C00
    addiu   s0, s0, 0x0002             # s0 = FFFFFFAA
    beq     $zero, $zero, lbl_800D3CAC
    lw      $ra, 0x003C($sp)
lbl_800D3C00:
    sltu    $at, s0, s1
    bnel    $at, $zero, lbl_800D3BD8
    lw      a0, 0x0004(s2)             # 00000004
    lw      a0, 0x0004(s2)             # 00000004
    lw      a1, 0x0008(s2)             # 00000008
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_800D44B0
    or      a3, s5, $zero              # a3 = FFFFFFDC
    beq     v0, $zero, lbl_800D3C30
    or      v1, s4, $zero              # v1 = 00000000
    beq     $zero, $zero, lbl_800D3CAC
    lw      $ra, 0x003C($sp)
lbl_800D3C30:
    addiu   v0, $sp, 0x007C            # v0 = FFFFFFDC
    addiu   a0, $sp, 0x009C            # a0 = FFFFFFFC
lbl_800D3C38:
    lbu     t1, 0x0000(v0)             # FFFFFFDC
    lbu     t7, 0x0000(v1)             # 00000000
    beql    t1, t7, lbl_800D3C54
    lbu     t2, 0x0001(v0)             # FFFFFFDD
    beq     $zero, $zero, lbl_800D3CA8
    addiu   v0, $zero, 0x000B          # v0 = 0000000B
    lbu     t2, 0x0001(v0)             # 0000000C
lbl_800D3C54:
    lbu     t3, 0x0001(v1)             # 00000001
    beql    t2, t3, lbl_800D3C6C
    lbu     t4, 0x0002(v0)             # 0000000D
    beq     $zero, $zero, lbl_800D3CA8
    addiu   v0, $zero, 0x000B          # v0 = 0000000B
    lbu     t4, 0x0002(v0)             # 0000000D
lbl_800D3C6C:
    lbu     t5, 0x0002(v1)             # 00000002
    beql    t4, t5, lbl_800D3C84
    lbu     t6, 0x0003(v0)             # 0000000E
    beq     $zero, $zero, lbl_800D3CA8
    addiu   v0, $zero, 0x000B          # v0 = 0000000B
    lbu     t6, 0x0003(v0)             # 0000000E
lbl_800D3C84:
    lbu     t8, 0x0003(v1)             # 00000003
    addiu   v0, v0, 0x0004             # v0 = 0000000F
    beq     t6, t8, lbl_800D3C9C
    nop
    beq     $zero, $zero, lbl_800D3CA8
    addiu   v0, $zero, 0x000B          # v0 = 0000000B
lbl_800D3C9C:
    bne     v0, a0, lbl_800D3C38
    addiu   v1, v1, 0x0004             # v1 = 00000004
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800D3CA8:
    lw      $ra, 0x003C($sp)
lbl_800D3CAC:
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    lw      s5, 0x0034($sp)
    lw      s6, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A0           # $sp += 0xA0


func_800D3CD0:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      $ra, 0x003C($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    lbu     t6, 0x0065(a0)             # 00000065
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    beql    t6, $zero, lbl_800D3D24
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    jal     func_800D31F0
    or      a1, $zero, $zero           # a1 = 00000000
    beql    v0, $zero, lbl_800D3D24
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    beq     $zero, $zero, lbl_800D3E10
    lw      $ra, 0x003C($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
lbl_800D3D24:
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    sh      t7, 0x0058($sp)
    sh      t8, 0x005A($sp)
    sh      t9, 0x005C($sp)
    sh      t0, 0x005E($sp)
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    addiu   s0, $sp, 0x005A            # s0 = FFFFFFFA
    addiu   s6, $sp, 0x0050            # s6 = FFFFFFF0
    addiu   s5, $zero, 0x0004          # s5 = 00000004
    addiu   s4, $sp, 0x0052            # s4 = FFFFFFF2
lbl_800D3D54:
    lw      a0, 0x0004(s3)             # 00000004
    lw      a1, 0x0008(s3)             # 00000008
    lhu     a2, 0x0000(s0)             # FFFFFFFA
    jal     func_800D44B0
    or      a3, s2, $zero              # a3 = 00000000
    beq     v0, $zero, lbl_800D3D78
    or      a0, s2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800D3E10
    lw      $ra, 0x003C($sp)
lbl_800D3D78:
    or      a1, s4, $zero              # a1 = FFFFFFF2
    jal     func_800D3884
    or      a2, s6, $zero              # a2 = FFFFFFF0
    lhu     t1, 0x0052($sp)
    lhu     t2, 0x001C(s2)             # 0000001C
    lhu     t3, 0x0050($sp)
    bnel    t1, t2, lbl_800D3DA8
    addiu   s1, s1, 0x0001             # s1 = 00000002
    lhu     t4, 0x001E(s2)             # 0000001E
    beq     t3, t4, lbl_800D3DB0
    nop
    addiu   s1, s1, 0x0001             # s1 = 00000003
lbl_800D3DA8:
    bne     s1, s5, lbl_800D3D54
    addiu   s0, s0, 0x0002             # s0 = FFFFFFFC
lbl_800D3DB0:
    bne     s1, s5, lbl_800D3DC0
    or      s0, $zero, $zero           # s0 = 00000000
    beq     $zero, $zero, lbl_800D3E0C
    addiu   v0, $zero, 0x000A          # v0 = 0000000A
lbl_800D3DC0:
    addiu   s4, $sp, 0x0058            # s4 = FFFFFFF8
lbl_800D3DC4:
    beq     s0, s1, lbl_800D3DFC
    sll     t5, s0,  1
    addu    t6, s4, t5
    lhu     a2, 0x0000(t6)             # 00000000
    lw      a0, 0x0004(s3)             # 00000004
    lw      a1, 0x0008(s3)             # 00000008
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0010($sp)
    jal     func_800D3390
    or      a3, s2, $zero              # a3 = 00000000
    beql    v0, $zero, lbl_800D3E00
    addiu   s0, s0, 0x0001             # s0 = 00000001
    beq     $zero, $zero, lbl_800D3E10
    lw      $ra, 0x003C($sp)
lbl_800D3DFC:
    addiu   s0, s0, 0x0001             # s0 = 00000002
lbl_800D3E00:
    bne     s0, s5, lbl_800D3DC4
    nop
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800D3E0C:
    lw      $ra, 0x003C($sp)
lbl_800D3E10:
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    lw      s5, 0x0034($sp)
    lw      s6, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_800D3E34:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    lbu     t6, 0x0065(a0)             # 00000065
    or      s0, a0, $zero              # s0 = 00000000
    beql    t6, $zero, lbl_800D3E70
    lw      a0, 0x0004(s0)             # 00000004
    jal     func_800D31F0
    or      a1, $zero, $zero           # a1 = 00000000
    beql    v0, $zero, lbl_800D3E70
    lw      a0, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_800D3FD0
    lw      $ra, 0x001C($sp)
    lw      a0, 0x0004(s0)             # 00000004
lbl_800D3E70:
    lw      a1, 0x0008(s0)             # 00000008
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_800D44B0
    addiu   a3, $sp, 0x004C            # a3 = FFFFFFDC
    beq     v0, $zero, lbl_800D3E90
    addiu   a0, $sp, 0x004C            # a0 = FFFFFFDC
    beq     $zero, $zero, lbl_800D3FD0
    lw      $ra, 0x001C($sp)
lbl_800D3E90:
    addiu   a1, $sp, 0x006E            # a1 = FFFFFFFE
    jal     func_800D3884
    addiu   a2, $sp, 0x006C            # a2 = FFFFFFFC
    lhu     t7, 0x006E($sp)
    lhu     t8, 0x0068($sp)
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFDC
    or      s1, a1, $zero              # s1 = FFFFFFDC
    bne     t7, t8, lbl_800D3EC0
    lhu     t9, 0x006C($sp)
    lhu     t1, 0x006A($sp)
    beql    t9, t1, lbl_800D3F10
    lhu     t2, 0x0018(s1)             # FFFFFFF4
lbl_800D3EC0:
    jal     func_800D3CD0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     v0, $at, lbl_800D3EFC
    or      v1, v0, $zero              # v1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFDC
    jal     func_800D3980
    addiu   a2, $sp, 0x0028            # a2 = FFFFFFB8
    beq     v0, $zero, lbl_800D3EF4
    nop
    beq     $zero, $zero, lbl_800D3FD0
    lw      $ra, 0x001C($sp)
lbl_800D3EF4:
    beq     $zero, $zero, lbl_800D3F0C
    addiu   s1, $sp, 0x0028            # s1 = FFFFFFB8
lbl_800D3EFC:
    beql    v0, $zero, lbl_800D3F10
    lhu     t2, 0x0018(s1)             # FFFFFFD0
    beq     $zero, $zero, lbl_800D3FCC
    or      v0, v1, $zero              # v0 = 00000000
lbl_800D3F0C:
    lhu     t2, 0x0018(s1)             # FFFFFFD0
lbl_800D3F10:
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = FFFFFFB8
    andi    t3, t2, 0x0001             # t3 = 00000000
    bnel    t3, $zero, lbl_800D3F54
    or      a0, s1, $zero              # a0 = FFFFFFB8
    jal     func_800D3980
    addiu   a2, $sp, 0x0028            # a2 = FFFFFFB8
    beq     v0, $zero, lbl_800D3F3C
    lhu     t4, 0x0040($sp)
    beq     $zero, $zero, lbl_800D3FD0
    lw      $ra, 0x001C($sp)
lbl_800D3F3C:
    andi    t5, t4, 0x0001             # t5 = 00000000
    bne     t5, $zero, lbl_800D3F50
    addiu   s1, $sp, 0x0028            # s1 = FFFFFFB8
    beq     $zero, $zero, lbl_800D3FCC
    addiu   v0, $zero, 0x000B          # v0 = 0000000B
lbl_800D3F50:
    or      a0, s1, $zero              # a0 = FFFFFFB8
lbl_800D3F54:
    addiu   a1, s0, 0x000C             # a1 = 0000000C
    jal     func_80004DC0              # bcopy
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    lbu     t6, 0x001B(s1)             # FFFFFFD3
    addiu   t1, $zero, 0x0010          # t1 = 00000010
    addiu   t2, $zero, 0x0008          # t2 = 00000008
    sw      t6, 0x004C(s0)             # 0000004C
    lbu     t7, 0x001A(s1)             # FFFFFFD2
    sw      t1, 0x0050(s0)             # 00000050
    sw      t2, 0x0054(s0)             # 00000054
    andi    v0, t7, 0x00FF             # v0 = 00000000
    sll     v1, v0,  3
    sll     t8, v0,  1
    addiu   t0, v1, 0x0008             # t0 = 00000008
    addiu   t9, t8, 0x0003             # t9 = 00000003
    addu    t3, t0, v1
    sw      t9, 0x0060(s0)             # 00000060
    sw      t0, 0x0058(s0)             # 00000058
    sw      t3, 0x005C(s0)             # 0000005C
    lw      a0, 0x0004(s0)             # 00000004
    lw      a1, 0x0008(s0)             # 00000008
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    addiu   a3, s0, 0x002C             # a3 = 0000002C
    jal     func_800D44B0
    sb      t7, 0x0064(s0)             # 00000064
    beql    v0, $zero, lbl_800D3FCC
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_800D3FD0
    lw      $ra, 0x001C($sp)
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800D3FCC:
    lw      $ra, 0x001C($sp)
lbl_800D3FD0:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp += 0x70


func_800D3FE0:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lbu     t6, 0x0065(a0)             # 00000065
    or      s0, a0, $zero              # s0 = 00000000
    beql    t6, $zero, lbl_800D4034
    lw      a0, 0x0004(s0)             # 00000004
    jal     func_800D31F0
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_800D4020
    or      v1, v0, $zero              # v1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800D31F0
    or      a1, $zero, $zero           # a1 = 00000000
    or      v1, v0, $zero              # v1 = 00000000
lbl_800D4020:
    beql    v0, $zero, lbl_800D4034
    lw      a0, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_800D40A0
    or      v0, v1, $zero              # v0 = 00000000
    lw      a0, 0x0004(s0)             # 00000004
lbl_800D4034:
    lw      a1, 0x0008(s0)             # 00000008
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_800D44B0
    addiu   a3, $sp, 0x0028            # a3 = FFFFFFE0
    beq     v0, $zero, lbl_800D407C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_800D405C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beq     $zero, $zero, lbl_800D40A4
    lw      $ra, 0x001C($sp)
lbl_800D405C:
    lw      a0, 0x0004(s0)             # 00000004
    lw      a1, 0x0008(s0)             # 00000008
    jal     func_800D44B0
    addiu   a3, $sp, 0x0028            # a3 = FFFFFFE0
    beql    v0, $zero, lbl_800D4080
    addiu   a0, s0, 0x000C             # a0 = 0000000C
    beq     $zero, $zero, lbl_800D40A4
    lw      $ra, 0x001C($sp)
lbl_800D407C:
    addiu   a0, s0, 0x000C             # a0 = 0000000C
lbl_800D4080:
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFE0
    jal     func_800D4390
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    beql    v0, $zero, lbl_800D40A0
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_800D40A0
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800D40A0:
    lw      $ra, 0x001C($sp)
lbl_800D40A4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_800D40B4:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s4, 0x0030($sp)
    andi    s4, a2, 0x00FF             # s4 = 00000000
    sw      s2, 0x0028($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s3, 0x002C($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      a1, 0x005C($sp)
    sw      a2, 0x0060($sp)
    bne     s4, $zero, lbl_800D4128
    sw      a3, 0x0064($sp)
    lui     t7, 0x8010                 # t7 = 80100000
    lbu     t7, 0x5D14(t7)             # 80105D14
    lbu     t8, 0x0067($sp)
    lui     t9, 0x8010                 # t9 = 80100000
    bnel    t7, t8, lbl_800D412C
    lbu     t1, 0x0065(s2)             # 00000065
    lw      t9, 0x5D10(t9)             # 80105D10
    lw      t0, 0x0008(a0)             # 00000008
    lui     a0, 0x8013                 # a0 = 80130000
    addiu   a0, a0, 0xBCD0             # a0 = 8012BCD0
    bnel    t9, t0, lbl_800D412C
    lbu     t1, 0x0065(s2)             # 00000065
    jal     func_80004DC0              # bcopy
    addiu   a2, $zero, 0x0100          # a2 = 00000100
    beq     $zero, $zero, lbl_800D4368
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800D4128:
    lbu     t1, 0x0065(s2)             # 00000065
lbl_800D412C:
    or      a0, s2, $zero              # a0 = 00000000
    beql    t1, $zero, lbl_800D4154
    lbu     v1, 0x0067($sp)
    jal     func_800D31F0
    or      a1, $zero, $zero           # a1 = 00000000
    beql    v0, $zero, lbl_800D4154
    lbu     v1, 0x0067($sp)
    beq     $zero, $zero, lbl_800D436C
    lw      $ra, 0x0034($sp)
    lbu     v1, 0x0067($sp)
lbl_800D4154:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    blezl   v1, lbl_800D4170
    lw      t3, 0x0060(s2)             # 00000060
    beq     $zero, $zero, lbl_800D4174
    sw      t2, 0x0048($sp)
    lw      t3, 0x0060(s2)             # 00000060
lbl_800D4170:
    sw      t3, 0x0048($sp)
lbl_800D4174:
    bne     v0, s4, lbl_800D41A8
    lw      t5, 0x0048($sp)
    lw      t4, 0x005C($sp)
    subu    a1, $zero, t5
    sll     t7, a1,  1
    sll     t6, t5,  1
    addiu   a1, t7, 0x0100             # a1 = 00000100
    sw      v1, 0x003C($sp)
    jal     func_800D3810
    addu    a0, t4, t6
    lw      t8, 0x005C($sp)
    lw      v1, 0x003C($sp)
    sb      v0, 0x0001(t8)             # 00000001
lbl_800D41A8:
    or      s0, $zero, $zero           # s0 = 00000000
    lw      s1, 0x005C($sp)
    sll     s3, v1,  3
lbl_800D41B4:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    bne     v0, s4, lbl_800D4214
    lw      a1, 0x0008(s2)             # 00000008
    lw      t9, 0x0054(s2)             # 00000054
    lw      a0, 0x0004(s2)             # 00000004
    sw      $zero, 0x0010($sp)
    addu    t0, t9, s3
    addu    a2, t0, s0
    andi    t1, a2, 0xFFFF             # t1 = 00000000
    or      a2, t1, $zero              # a2 = 00000000
    jal     func_800D3390
    or      a3, s1, $zero              # a3 = 00000000
    lw      t2, 0x0058(s2)             # 00000058
    lw      a0, 0x0004(s2)             # 00000004
    lw      a1, 0x0008(s2)             # 00000008
    addu    t3, t2, s3
    addu    a2, t3, s0
    andi    t4, a2, 0xFFFF             # t4 = 00000000
    or      a2, t4, $zero              # a2 = 00000000
    sw      $zero, 0x0010($sp)
    jal     func_800D3390
    or      a3, s1, $zero              # a3 = 00000000
    beq     $zero, $zero, lbl_800D4238
    or      v1, v0, $zero              # v1 = 00000000
lbl_800D4214:
    lw      t6, 0x0054(s2)             # 00000054
    lw      a0, 0x0004(s2)             # 00000004
    or      a3, s1, $zero              # a3 = 00000000
    addu    t5, t6, s3
    addu    a2, t5, s0
    andi    t7, a2, 0xFFFF             # t7 = 00000000
    jal     func_800D44B0
    or      a2, t7, $zero              # a2 = 00000000
    or      v1, v0, $zero              # v1 = 00000000
lbl_800D4238:
    beq     v0, $zero, lbl_800D4248
    addiu   s0, s0, 0x0001             # s0 = 00000001
    beq     $zero, $zero, lbl_800D4368
    or      v0, v1, $zero              # v0 = 00000000
lbl_800D4248:
    slti    $at, s0, 0x0008
    bne     $at, $zero, lbl_800D41B4
    addiu   s1, s1, 0x0020             # s1 = 00000020
    bne     s4, $zero, lbl_800D4338
    lw      t9, 0x0048($sp)
    lw      t8, 0x005C($sp)
    subu    a1, $zero, t9
    sll     t1, a1,  1
    sll     t0, t9,  1
    addiu   a1, t1, 0x0100             # a1 = 00000100
    addu    s4, t8, t0
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_800D3810
    sw      a1, 0x003C($sp)
    lw      t3, 0x005C($sp)
    andi    t2, v0, 0x00FF             # t2 = 00000000
    or      s0, $zero, $zero           # s0 = 00000000
    lbu     t4, 0x0001(t3)             # 00000001
    or      s1, t3, $zero              # s1 = 00000000
    beql    t2, t4, lbl_800D433C
    lbu     t3, 0x0067($sp)
lbl_800D429C:
    lw      t6, 0x0058(s2)             # 00000058
    lw      a0, 0x0004(s2)             # 00000004
    lw      a1, 0x0008(s2)             # 00000008
    addu    t5, t6, s3
    addu    a2, t5, s0
    andi    t7, a2, 0xFFFF             # t7 = 00000000
    or      a2, t7, $zero              # a2 = 00000000
    jal     func_800D44B0
    or      a3, s1, $zero              # a3 = 00000000
    addiu   s0, s0, 0x0001             # s0 = 00000001
    slti    $at, s0, 0x0008
    bne     $at, $zero, lbl_800D429C
    addiu   s1, s1, 0x0020             # s1 = 00000020
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_800D3810
    lw      a1, 0x003C($sp)
    lw      t0, 0x005C($sp)
    andi    t8, v0, 0x00FF             # t8 = 00000000
    or      s0, $zero, $zero           # s0 = 00000000
    lbu     t9, 0x0001(t0)             # 00000001
    lw      s1, 0x005C($sp)
    beq     t8, t9, lbl_800D4300
    nop
    beq     $zero, $zero, lbl_800D4368
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_800D4300:
    lw      t1, 0x0054(s2)             # 00000054
    lw      a0, 0x0004(s2)             # 00000004
    lw      a1, 0x0008(s2)             # 00000008
    addu    t2, t1, s3
    addu    a2, t2, s0
    andi    t4, a2, 0xFFFF             # t4 = 00000000
    or      a2, t4, $zero              # a2 = 00000000
    sw      $zero, 0x0010($sp)
    jal     func_800D3390
    or      a3, s1, $zero              # a3 = 00000020
    addiu   s0, s0, 0x0001             # s0 = 00000001
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     s0, $at, lbl_800D4300
    addiu   s1, s1, 0x0020             # s1 = 00000040
lbl_800D4338:
    lbu     t3, 0x0067($sp)
lbl_800D433C:
    lui     $at, 0x8010                # $at = 80100000
    lui     a1, 0x8013                 # a1 = 80130000
    addiu   a1, a1, 0xBCD0             # a1 = 8012BCD0
    lw      a0, 0x005C($sp)
    addiu   a2, $zero, 0x0100          # a2 = 00000100
    jal     func_80004DC0              # bcopy
    sb      t3, 0x5D14($at)            # 80105D14
    lw      t6, 0x0008(s2)             # 00000008
    lui     $at, 0x8010                # $at = 80100000
    or      v0, $zero, $zero           # v0 = 00000000
    sw      t6, 0x5D10($at)            # 80105D10
lbl_800D4368:
    lw      $ra, 0x0034($sp)
lbl_800D436C:
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    nop
    nop


func_800D4390:
# s32 bcmp(const void* s1, const void* s2, u32 size)
# Compare memory blocks
# A0 = Pointer to the first memory block
# A1 = Pointer to the second memory block
# A2 = u32 size of area to compare
# V0 = 0 if memory blocks are identical, else 1
    slti    $at, a2, 0x0010
    bne     $at, $zero, lbl_800D4474
    xor     v0, a0, a1
    andi    v0, v0, 0x0003             # v0 = 00000000
    bne     v0, $zero, lbl_800D4408
    subu    t8, $zero, a0
    andi    t8, t8, 0x0003             # t8 = 00000000
    beq     t8, $zero, lbl_800D43CC
    subu    a2, a2, t8
    or      v0, v1, $zero              # v0 = 00000000
    lwl     v0, 0x0000(a0)             # 00000000
    lwl     v1, 0x0000(a1)             # 00000000
    addu    a0, a0, t8
    addu    a1, a1, t8
    bne     v0, v1, lbl_800D44A4
lbl_800D43CC:
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    and     a3, a2, $at
    beq     a3, $zero, lbl_800D4474
    subu    a2, a2, a3
    addu    a3, a3, a0
    lw      v0, 0x0000(a0)             # 00000000
lbl_800D43E4:
    lw      v1, 0x0000(a1)             # 00000000
    addiu   a0, a0, 0x0004             # a0 = 00000004
    addiu   a1, a1, 0x0004             # a1 = 00000004
    bne     v0, v1, lbl_800D44A4
    nop
    bnel    a0, a3, lbl_800D43E4
    lw      v0, 0x0000(a0)             # 00000004
    beq     $zero, $zero, lbl_800D4474
    nop
lbl_800D4408:
    subu    a3, $zero, a1
    andi    a3, a3, 0x0003             # a3 = 00000000
    beq     a3, $zero, lbl_800D443C
    subu    a2, a2, a3
    addu    a3, a3, a0
    lbu     v0, 0x0000(a0)             # 00000004
lbl_800D4420:
    lbu     v1, 0x0000(a1)             # 00000004
    addiu   a0, a0, 0x0001             # a0 = 00000005
    addiu   a1, a1, 0x0001             # a1 = 00000005
    bne     v0, v1, lbl_800D44A4
    nop
    bnel    a0, a3, lbl_800D4420
    lbu     v0, 0x0000(a0)             # 00000005
lbl_800D443C:
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    and     a3, a2, $at
    beq     a3, $zero, lbl_800D4474
    subu    a2, a2, a3
    addu    a3, a3, a0
    lwl     v0, 0x0000(a0)             # 00000005
lbl_800D4454:
    lw      v1, 0x0000(a1)             # 00000005
    lwr     v0, 0x0003(a0)             # 00000008
    addiu   a0, a0, 0x0004             # a0 = 00000009
    addiu   a1, a1, 0x0004             # a1 = 00000009
    bne     v0, v1, lbl_800D44A4
    nop
    bnel    a0, a3, lbl_800D4454
    lwl     v0, 0x0000(a0)             # 00000009
lbl_800D4474:
    blez    a2, lbl_800D449C
    addu    a3, a2, a0
    lbu     v0, 0x0000(a0)             # 00000009
lbl_800D4480:
    lbu     v1, 0x0000(a1)             # 00000009
    addiu   a0, a0, 0x0001             # a0 = 0000000A
    addiu   a1, a1, 0x0001             # a1 = 0000000A
    bne     v0, v1, lbl_800D44A4
    nop
    bnel    a0, a3, lbl_800D4480
    lbu     v0, 0x0000(a0)             # 0000000A
lbl_800D449C:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800D44A4:
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    nop


func_800D44B0:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      $ra, 0x003C($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s1, 0x001C($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s6, a0, $zero              # s6 = 00000000
    sw      s8, 0x0038($sp)
    sw      s7, 0x0034($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s0, 0x0018($sp)
    sw      a2, 0x0068($sp)
    sw      a3, 0x006C($sp)
    jal     func_800CFDB0
    addiu   s5, $zero, 0x0002          # s5 = 00000002
    lhu     a1, 0x006A($sp)
    lui     s8, 0x8010                 # s8 = 80100000
    lui     s7, 0x8013                 # s7 = 80130000
    lui     s4, 0x8013                 # s4 = 80130000
    sra     t6, a1,  3
    sll     t7, a1,  5
    sw      t7, 0x0040($sp)
    sw      t6, 0x0044($sp)
    addiu   s4, s4, 0xBDD0             # s4 = 8012BDD0
    addiu   s7, s7, 0xBC60             # s7 = 8012BC60
    addiu   s8, s8, 0x5D20             # s8 = 80105D20
lbl_800D4520:
    lbu     t8, 0x0000(s7)             # 8012BC60
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lhu     a1, 0x006A($sp)
    bne     t8, $at, lbl_800D453C
    or      s0, s4, $zero              # s0 = 8012BDD0
    lw      t9, 0x0000(s8)             # 80105D20
    beq     s1, t9, lbl_800D45C8
lbl_800D453C:
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    sb      t0, 0x0000(s7)             # 8012BC60
    sw      s1, 0x0000(s8)             # 80105D20
    blez    s1, lbl_800D458C
    or      v0, $zero, $zero           # v0 = 00000000
    andi    a0, s1, 0x0003             # a0 = 00000000
    beq     a0, $zero, lbl_800D4570
    or      v1, a0, $zero              # v1 = 00000000
lbl_800D455C:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sb      $zero, 0x0000(s0)          # 8012BDD0
    bne     v1, v0, lbl_800D455C
    addiu   s0, s0, 0x0001             # s0 = 8012BDD1
    beq     v0, s1, lbl_800D458C
lbl_800D4570:
    addiu   v0, v0, 0x0004             # v0 = 00000005
    sb      $zero, 0x0000(s0)          # 8012BDD1
    sb      $zero, 0x0001(s0)          # 8012BDD2
    sb      $zero, 0x0002(s0)          # 8012BDD3
    sb      $zero, 0x0003(s0)          # 8012BDD4
    bne     v0, s1, lbl_800D4570
    addiu   s0, s0, 0x0004             # s0 = 8012BDD5
lbl_800D458C:
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x003C(s4)             # 8012BE0C
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    addiu   t4, $zero, 0x0021          # t4 = 00000021
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00FE          # t7 = 000000FE
    sb      t2, 0x0000(s0)             # 8012BDD5
    sb      t3, 0x0001(s0)             # 8012BDD6
    sb      t4, 0x0002(s0)             # 8012BDD7
    sb      t5, 0x0003(s0)             # 8012BDD8
    sb      t6, 0x0026(s0)             # 8012BDFB
    beq     $zero, $zero, lbl_800D45CC
    sb      t7, 0x0027(s0)             # 8012BDFC
lbl_800D45C8:
    addu    s0, s4, s1
lbl_800D45CC:
    lw      t8, 0x0044($sp)
    andi    a0, a1, 0xFFFF             # a0 = 00000000
    jal     func_800D46E0
    sb      t8, 0x0004(s0)             # 8012BDD9
    lw      t9, 0x0040($sp)
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    or      a1, s4, $zero              # a1 = 8012BDD0
    or      t0, v0, t9                 # t0 = 00000000
    jal     func_800D0660
    sb      t0, 0x0005(s0)             # 8012BDDA
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_800D0660
    or      a1, s4, $zero              # a1 = 8012BDD0
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lbu     s3, 0x0002(s0)             # 8012BDD7
    addiu   s2, s0, 0x0006             # s2 = 8012BDDB
    andi    t1, s3, 0x00C0             # t1 = 00000000
    sra     s3, t1,  4
    bnel    s3, $zero, lbl_800D4684
    addiu   s3, $zero, 0x0001          # s3 = 00000001
    jal     func_800D47B0
    or      a0, s2, $zero              # a0 = 8012BDDB
    lbu     t3, 0x0026(s0)             # 8012BDFB
    or      a0, s2, $zero              # a0 = 8012BDDB
    lw      a1, 0x006C($sp)
    beq     t3, v0, lbl_800D4670
    nop
    or      a0, s6, $zero              # a0 = 00000000
    jal     func_800D35E0
    or      a1, s1, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_800D4698
    or      s3, v0, $zero              # s3 = 00000000
    beq     $zero, $zero, lbl_800D4684
    addiu   s3, $zero, 0x0004          # s3 = 00000004
lbl_800D4670:
    jal     func_80004DC0              # bcopy
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    beq     $zero, $zero, lbl_800D4688
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   s3, $zero, 0x0001          # s3 = 00000001
lbl_800D4684:
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_800D4688:
    bne     s3, $at, lbl_800D4698
    slti    v0, s5, 0x0000
    beq     v0, $zero, lbl_800D4520
    addiu   s5, s5, 0xFFFF             # s5 = 00000001
lbl_800D4698:
    jal     func_800CFDF4
    nop
    lw      $ra, 0x003C($sp)
    or      v0, s3, $zero              # v0 = 00000001
    lw      s3, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s4, 0x0028($sp)
    lw      s5, 0x002C($sp)
    lw      s6, 0x0030($sp)
    lw      s7, 0x0034($sp)
    lw      s8, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    nop
    nop
    nop


func_800D46E0:
    sw      a0, 0x0000($sp)
    andi    t6, a0, 0xFFFF             # t6 = 00000000
    or      a0, t6, $zero              # a0 = 00000000
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   v0, $zero, 0x0400          # v0 = 00000400
lbl_800D46F4:
    sll     t7, v1,  1
    and     t8, a0, v0
    beq     t8, $zero, lbl_800D4720
    or      v1, t7, $zero              # v1 = 00000000
    andi    t9, t7, 0x0020             # t9 = 00000000
    beq     t9, $zero, lbl_800D4718
    nop
    beq     $zero, $zero, lbl_800D4730
    xori    v1, t7, 0x0014             # v1 = 00000014
lbl_800D4718:
    beq     $zero, $zero, lbl_800D4730
    addiu   v1, v1, 0x0001             # v1 = 00000015
lbl_800D4720:
    andi    t1, v1, 0x0020             # t1 = 00000000
    beq     t1, $zero, lbl_800D4730
    xori    t2, v1, 0x0015             # t2 = 00000000
    or      v1, t2, $zero              # v1 = 00000000
lbl_800D4730:
    srl     t3, v0,  1
    bne     t3, $zero, lbl_800D46F4
    or      v0, t3, $zero              # v0 = 00000000
    sll     t4, v1,  1
    andi    t5, t4, 0x0020             # t5 = 00000000
    beq     t5, $zero, lbl_800D4750
    or      v1, t4, $zero              # v1 = 00000000
    xori    v1, t4, 0x0015             # v1 = 00000015
lbl_800D4750:
    sll     t7, v1,  1
    andi    t8, t7, 0x0020             # t8 = 00000000
    beq     t8, $zero, lbl_800D4764
    or      v1, t7, $zero              # v1 = 00000000
    xori    v1, t7, 0x0015             # v1 = 00000015
lbl_800D4764:
    sll     t0, v1,  1
    andi    t1, t0, 0x0020             # t1 = 00000000
    beq     t1, $zero, lbl_800D4778
    or      v1, t0, $zero              # v1 = 00000000
    xori    v1, t0, 0x0015             # v1 = 00000015
lbl_800D4778:
    sll     t3, v1,  1
    andi    t4, t3, 0x0020             # t4 = 00000000
    beq     t4, $zero, lbl_800D478C
    or      v1, t3, $zero              # v1 = 00000000
    xori    v1, t3, 0x0015             # v1 = 00000015
lbl_800D478C:
    sll     t6, v1,  1
    andi    t7, t6, 0x0020             # t7 = 00000000
    beq     t7, $zero, lbl_800D47A0
    or      v1, t6, $zero              # v1 = 00000000
    xori    v1, t6, 0x0015             # v1 = 00000015
lbl_800D47A0:
    or      v0, v1, $zero              # v0 = 00000015
    andi    t9, v0, 0x001F             # t9 = 00000015
    jr      $ra
    or      v0, t9, $zero              # v0 = 00000015


func_800D47B0:
    or      a1, a0, $zero              # a1 = 00000000
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   v0, $zero, 0x0020          # v0 = 00000020
lbl_800D47BC:
    addiu   a0, $zero, 0x0080          # a0 = 00000080
    lbu     a2, 0x0000(a1)             # 00000000
lbl_800D47C4:
    sll     t6, v1,  1
    and     t7, a2, a0
    beq     t7, $zero, lbl_800D47F0
    or      v1, t6, $zero              # v1 = 00000000
    andi    t8, t6, 0x0100             # t8 = 00000000
    beq     t8, $zero, lbl_800D47E8
    nop
    beq     $zero, $zero, lbl_800D4800
    xori    v1, t6, 0x0084             # v1 = 00000084
lbl_800D47E8:
    beq     $zero, $zero, lbl_800D4800
    addiu   v1, v1, 0x0001             # v1 = 00000085
lbl_800D47F0:
    andi    t0, v1, 0x0100             # t0 = 00000000
    beq     t0, $zero, lbl_800D4800
    xori    t1, v1, 0x0085             # t1 = 00000000
    or      v1, t1, $zero              # v1 = 00000000
lbl_800D4800:
    srl     t2, a0,  1
    bne     t2, $zero, lbl_800D47C4
    or      a0, t2, $zero              # a0 = 00000000
    addiu   v0, v0, 0xFFFF             # v0 = 0000001F
    bne     v0, $zero, lbl_800D47BC
    addiu   a1, a1, 0x0001             # a1 = 00000001
    sll     t3, v1,  1
lbl_800D481C:
    andi    t4, t3, 0x0100             # t4 = 00000000
    beq     t4, $zero, lbl_800D482C
    or      v1, t3, $zero              # v1 = 00000000
    xori    v1, t3, 0x0085             # v1 = 00000085
lbl_800D482C:
    addiu   v0, v0, 0x0001             # v0 = 00000020
    sltiu   $at, v0, 0x0008
    bnel    $at, $zero, lbl_800D481C
    sll     t3, v1,  1
    jr      $ra
    andi    v0, v1, 0x00FF             # v0 = 00000085
    nop
    nop
    nop


func_800D4850:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x0014($sp)
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    sw      $zero, 0x003C($sp)
    sb      $zero, 0x001F($sp)
    jal     func_800CFDB0
    sw      t6, 0x0018($sp)
lbl_800D4874:
    jal     func_800D49F0
    or      a0, $zero, $zero           # a0 = 00000000
    lui     a1, 0x8013                 # a1 = 80130000
    addiu   a1, a1, 0xBDD0             # a1 = 8012BDD0
    jal     func_800D0660
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    sw      v0, 0x003C($sp)
    lw      a0, 0x0040($sp)
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFF8
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a1, 0x8013                 # a1 = 80130000
    addiu   a1, a1, 0xBDD0             # a1 = 8012BDD0
    jal     func_800D0660
    or      a0, $zero, $zero           # a0 = 00000000
    sw      v0, 0x003C($sp)
    lw      a0, 0x0040($sp)
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFF8
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a0, $sp, 0x0037            # a0 = FFFFFFF7
    jal     func_800D4AC0
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFE4
    lui     t7, 0x8013                 # t7 = 80130000
    lbu     t7, -0x439F(t7)            # 8012BC61
    sw      $zero, 0x0020($sp)
    blez    t7, lbl_800D4930
    nop
lbl_800D48E4:
    lw      t8, 0x0020($sp)
    sll     t9, t8,  2
    addu    t0, $sp, t9
    lbu     t0, 0x0026(t0)             # 00000026
    andi    t1, t0, 0x0004             # t1 = 00000000
    bne     t1, $zero, lbl_800D4910
    nop
    lw      t2, 0x0018($sp)
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    beq     $zero, $zero, lbl_800D4930
    sw      t3, 0x0018($sp)
lbl_800D4910:
    lw      t4, 0x0020($sp)
    lui     t6, 0x8013                 # t6 = 80130000
    lbu     t6, -0x439F(t6)            # 8012BC61
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sw      t5, 0x0020($sp)
    slt     $at, t5, t6
    bne     $at, $zero, lbl_800D48E4
    nop
lbl_800D4930:
    lui     t7, 0x8013                 # t7 = 80130000
    lbu     t7, -0x439F(t7)            # 8012BC61
    lw      t8, 0x0020($sp)
    bne     t7, t8, lbl_800D4948
    nop
    sw      $zero, 0x0018($sp)
lbl_800D4948:
    lw      t9, 0x0018($sp)
    bgtz    t9, lbl_800D4874
    nop
    lui     t0, 0x8013                 # t0 = 80130000
    lbu     t0, -0x439F(t0)            # 8012BC61
    sw      $zero, 0x0020($sp)
    blez    t0, lbl_800D49C8
    nop
lbl_800D4968:
    lw      t1, 0x0020($sp)
    addiu   t3, $sp, 0x0024            # t3 = FFFFFFE4
    sll     t2, t1,  2
    addu    t4, t2, t3
    lbu     t5, 0x0003(t4)             # 00000003
    bne     t5, $zero, lbl_800D49A8
    nop
    lbu     t6, 0x0002(t4)             # 00000002
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_800D49A8
    nop
    lbu     t8, 0x001F($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sllv    t0, t9, t1
    or      t2, t8, t0                 # t2 = 80130000
    sb      t2, 0x001F($sp)
lbl_800D49A8:
    lw      t3, 0x0020($sp)
    lui     t4, 0x8013                 # t4 = 80130000
    lbu     t4, -0x439F(t4)            # 8012BC61
    addiu   t5, t3, 0x0001             # t5 = FFFFFFE5
    sw      t5, 0x0020($sp)
    slt     $at, t5, t4
    bne     $at, $zero, lbl_800D4968
    nop
lbl_800D49C8:
    jal     func_800CFDF4
    nop
    lbu     t6, 0x001F($sp)
    lw      t7, 0x0044($sp)
    sb      t6, 0x0000(t7)             # 00000000
    lw      $ra, 0x0014($sp)
    lw      v0, 0x003C($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_800D49F0:
    addiu   $sp, $sp, 0xFFF0           # $sp -= 0x10
    lui     t5, 0x8013                 # t5 = 80130000
    lbu     t5, -0x439F(t5)            # 8012BC61
    andi    a0, a0, 0x00FF             # a0 = 00000000
    lui     $at, 0x8013                # $at = 80130000
    lui     t6, 0x8013                 # t6 = 80130000
    sb      a0, -0x43A0($at)           # 8012BC60
    addiu   t6, t6, 0xBDD0             # t6 = 8012BDD0
    lui     $at, 0x8013                # $at = 80130000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sw      t6, 0x000C($sp)
    sw      t7, -0x41F4($at)           # 8012BE0C
    sb      t8, 0x0004($sp)
    sb      t9, 0x0005($sp)
    sb      t0, 0x0006($sp)
    sb      a0, 0x0007($sp)
    sb      t1, 0x0008($sp)
    sb      t2, 0x0009($sp)
    sb      t3, 0x000A($sp)
    sb      t4, 0x000B($sp)
    blez    t5, lbl_800D4AAC
    sw      $zero, 0x0000($sp)
lbl_800D4A64:
    addiu   t7, $sp, 0x0004            # t7 = FFFFFFF4
    lw      $at, 0x0000(t7)            # FFFFFFF4
    lw      t6, 0x000C($sp)
    lui     t4, 0x8013                 # t4 = 80130000
    swl     $at, 0x0000(t6)            # 8012BDD0
    swr     $at, 0x0003(t6)            # 8012BDD3
    lw      t9, 0x0004(t7)             # FFFFFFF8
    swl     t9, 0x0004(t6)             # 8012BDD4
    swr     t9, 0x0007(t6)             # 8012BDD7
    lw      t2, 0x0000($sp)
    lbu     t4, -0x439F(t4)            # 8012BC61
    lw      t0, 0x000C($sp)
    addiu   t3, t2, 0x0001             # t3 = 00000100
    slt     $at, t3, t4
    addiu   t1, t0, 0x0008             # t1 = 0000000B
    sw      t3, 0x0000($sp)
    bne     $at, $zero, lbl_800D4A64
    sw      t1, 0x000C($sp)
lbl_800D4AAC:
    lw      t8, 0x000C($sp)
    addiu   t5, $zero, 0x00FE          # t5 = 000000FE
    addiu   $sp, $sp, 0x0010           # $sp += 0x10
    jr      $ra
    sb      t5, 0x0000(t8)             # 000000FF


func_800D4AC0:
    lui     t7, 0x8013                 # t7 = 80130000
    lbu     t7, -0x439F(t7)            # 8012BC61
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     t6, 0x8013                 # t6 = 80130000
    addiu   t6, t6, 0xBDD0             # t6 = 8012BDD0
    sb      $zero, 0x0007($sp)
    sw      t6, 0x0014($sp)
    blez    t7, lbl_800D4B80
    sw      $zero, 0x0008($sp)
lbl_800D4AE4:
    lw      t9, 0x0014($sp)
    addiu   t8, $sp, 0x000C            # t8 = FFFFFFF4
    lwl     $at, 0x0000(t9)            # 00000000
    lwr     $at, 0x0003(t9)            # 00000003
    sw      $at, 0x0000(t8)            # FFFFFFF4
    lwl     t1, 0x0004(t9)             # 00000004
    lwr     t1, 0x0007(t9)             # 00000007
    sw      t1, 0x0004(t8)             # FFFFFFF8
    lbu     t2, 0x000E($sp)
    andi    t3, t2, 0x00C0             # t3 = 00000000
    sra     t4, t3,  4
    sb      t4, 0x0003(a1)             # 00000003
    lbu     t5, 0x0003(a1)             # 00000003
    bne     t5, $zero, lbl_800D4B54
    nop
    lbu     t6, 0x0011($sp)
    lbu     t0, 0x0010($sp)
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sll     t7, t6,  8
    or      t8, t7, t0                 # t8 = 80130000
    sh      t8, 0x0000(a1)             # 00000000
    lbu     t9, 0x0012($sp)
    sb      t9, 0x0002(a1)             # 00000002
    lw      t2, 0x0008($sp)
    lbu     t1, 0x0007($sp)
    sllv    t4, t3, t2
    or      t5, t1, t4                 # t5 = 00000000
    sb      t5, 0x0007($sp)
lbl_800D4B54:
    lw      t6, 0x0008($sp)
    lui     t9, 0x8013                 # t9 = 80130000
    lbu     t9, -0x439F(t9)            # 8012BC61
    lw      t0, 0x0014($sp)
    addiu   t7, t6, 0x0001             # t7 = 8012BDD1
    slt     $at, t7, t9
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x0014($sp)
    sw      t7, 0x0008($sp)
    bne     $at, $zero, lbl_800D4AE4
    addiu   a1, a1, 0x0004             # a1 = 00000004
lbl_800D4B80:
    lbu     t3, 0x0007($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    sb      t3, 0x0000(a0)             # 00000000


func_800D4B90:
    addiu   $sp, $sp, 0xFF70           # $sp -= 0x90
    sw      s1, 0x0020($sp)
    andi    v0, a1, 0x00FF             # v0 = 00000000
    addiu   v1, $zero, 0x0058          # v1 = 00000058
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s3, 0x0028($sp)
    sw      s2, 0x0024($sp)
    sw      s0, 0x001C($sp)
    bne     v1, v0, lbl_800D4BC8
    sw      a1, 0x0094($sp)
    lui     s3, 0x8010                 # s3 = 80100000
    beq     $zero, $zero, lbl_800D4BD0
    addiu   s3, s3, 0x5D44             # s3 = 80105D44
lbl_800D4BC8:
    lui     s3, 0x8010                 # s3 = 80100000
    addiu   s3, s3, 0x5D30             # s3 = 80105D30
lbl_800D4BD0:
    addiu   $at, $zero, 0x006F         # $at = 0000006F
    bne     v0, $at, lbl_800D4BE4
    addiu   s0, $zero, 0x0018          # s0 = 00000018
    beq     $zero, $zero, lbl_800D4C04
    addiu   t1, $zero, 0x0008          # t1 = 00000008
lbl_800D4BE4:
    addiu   $at, $zero, 0x0078         # $at = 00000078
    beq     v0, $at, lbl_800D4C00
    addiu   t0, $zero, 0x0010          # t0 = 00000010
    beq     v1, v0, lbl_800D4C00
    nop
    beq     $zero, $zero, lbl_800D4C00
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
lbl_800D4C00:
    or      t1, t0, $zero              # t1 = 0000000A
lbl_800D4C04:
    lw      t8, 0x0000(s1)             # 00000000
    lw      t9, 0x0004(s1)             # 00000004
    addiu   $at, $zero, 0x0064         # $at = 00000064
    sw      t8, 0x0060($sp)
    sw      t8, 0x0040($sp)
    sw      t9, 0x0044($sp)
    beq     v0, $at, lbl_800D4C30
    sw      t9, 0x0064($sp)
    addiu   $at, $zero, 0x0069         # $at = 00000069
    bnel    v0, $at, lbl_800D4C6C
    lw      t2, 0x0060($sp)
lbl_800D4C30:
    lw      t4, 0x0040($sp)
    bgtzl   t4, lbl_800D4C6C
    lw      t2, 0x0060($sp)
    bltz    t4, lbl_800D4C4C
    lw      t6, 0x0060($sp)
    beq     $zero, $zero, lbl_800D4C6C
    lw      t2, 0x0060($sp)
lbl_800D4C4C:
    lw      t7, 0x0064($sp)
    nor     t8, t6, $zero
    sltiu   $at, t7, 0x0001
    addu    t8, t8, $at
    subu    t9, $zero, t7
    sw      t9, 0x0064($sp)
    sw      t8, 0x0060($sp)
    lw      t2, 0x0060($sp)
lbl_800D4C6C:
    lw      t3, 0x0064($sp)
    addiu   t0, $zero, 0x0017          # t0 = 00000017
    bne     t2, $zero, lbl_800D4C90
    lw      a0, 0x0060($sp)
    bnel    t3, $zero, lbl_800D4C94
    addiu   s0, $zero, 0x0017          # s0 = 00000017
    lw      t4, 0x0024(s1)             # 00000024
    beql    t4, $zero, lbl_800D4CCC
    addiu   s2, $sp, 0x0078            # s2 = FFFFFFE8
lbl_800D4C90:
    addiu   s0, $zero, 0x0017          # s0 = 00000017
lbl_800D4C94:
    lw      a1, 0x0064($sp)
    or      a3, t1, $zero              # a3 = 0000000A
    sra     a2, t1, 31
    sw      t0, 0x004C($sp)
    jal     func_8000219C
    sw      t1, 0x0070($sp)
    lw      t0, 0x004C($sp)
    addu    t6, v1, s3
    lbu     t7, 0x0000(t6)             # 00000000
    addiu   s2, $sp, 0x0078            # s2 = FFFFFFE8
    lw      t1, 0x0070($sp)
    addu    t8, s2, t0
    sb      t7, 0x0000(t8)             # 00000000
    addiu   s2, $sp, 0x0078            # s2 = FFFFFFE8
lbl_800D4CCC:
    lw      a0, 0x0060($sp)
    lw      a1, 0x0064($sp)
    or      a3, t1, $zero              # a3 = 00000000
    sra     a2, t1, 31
    jal     func_800021D8
    sw      t1, 0x0070($sp)
    lw      t1, 0x0070($sp)
    sw      v1, 0x0004(s1)             # 00000004
    bltz    v0, lbl_800D4D9C
    sw      v0, 0x0000(s1)             # 00000000
    bgtz    v0, lbl_800D4D04
    nop
    beql    v1, $zero, lbl_800D4DA0
    addiu   t4, $zero, 0x0018          # t4 = 00000018
lbl_800D4D04:
    blez    s0, lbl_800D4D9C
    sra     t4, t1, 31
    lw      t2, 0x0000(s1)             # 00000000
    lw      t3, 0x0004(s1)             # 00000004
    sw      t1, 0x003C($sp)
    sw      t4, 0x0038($sp)
    sw      t2, 0x0040($sp)
    sw      t3, 0x0044($sp)
    lw      t6, 0x0038($sp)
lbl_800D4D28:
    lw      t7, 0x003C($sp)
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFC0
    lw      a2, 0x0040($sp)
    lw      a3, 0x0044($sp)
    sw      t6, 0x0010($sp)
    jal     func_800D4E30
    sw      t7, 0x0014($sp)
    lw      t8, 0x0050($sp)
    lw      t9, 0x0054($sp)
    addiu   a0, s0, 0xFFFF             # a0 = 00000016
    sw      t8, 0x0000(s1)             # 00000000
    sw      t9, 0x0004(s1)             # 00000004
    lw      t3, 0x005C($sp)
    addu    t7, s2, a0
    or      s0, a0, $zero              # s0 = 00000016
    addu    t5, t3, s3
    lbu     t6, 0x0000(t5)             # 00000000
    sb      t6, 0x0000(t7)             # 00000000
    lw      t8, 0x0000(s1)             # 00000000
    lw      t9, 0x0004(s1)             # 00000004
    sw      t8, 0x0040($sp)
    bltz    t8, lbl_800D4D9C
    sw      t9, 0x0044($sp)
    bgtz    t8, lbl_800D4D94
    nop
    beql    t9, $zero, lbl_800D4DA0
    addiu   t4, $zero, 0x0018          # t4 = 00000018
lbl_800D4D94:
    bgtzl   s0, lbl_800D4D28
    lw      t6, 0x0038($sp)
lbl_800D4D9C:
    addiu   t4, $zero, 0x0018          # t4 = 00000018
lbl_800D4DA0:
    subu    a2, t4, s0
    sw      a2, 0x0014(s1)             # 00000014
    lw      a0, 0x0008(s1)             # 00000008
    jal     func_800D2350
    addu    a1, s2, s0
    lw      a1, 0x0014(s1)             # 00000014
    lw      a0, 0x0024(s1)             # 00000024
    slt     $at, a1, a0
    beq     $at, $zero, lbl_800D4DCC
    subu    t5, a0, a1
    sw      t5, 0x0010(s1)             # 00000010
lbl_800D4DCC:
    bgezl   a0, lbl_800D4E10
    lw      $ra, 0x002C($sp)
    lw      t6, 0x0030(s1)             # 00000030
    addiu   $at, $zero, 0x0010         # $at = 00000010
    andi    t7, t6, 0x0014             # t7 = 00000000
    bnel    t7, $at, lbl_800D4E10
    lw      $ra, 0x002C($sp)
    lw      t8, 0x0028(s1)             # 00000028
    lw      t9, 0x000C(s1)             # 0000000C
    lw      v0, 0x0010(s1)             # 00000010
    subu    t2, t8, t9
    subu    t3, t2, v0
    subu    s0, t3, a1
    blez    s0, lbl_800D4E0C
    addu    t4, v0, s0
    sw      t4, 0x0010(s1)             # 00000010
lbl_800D4E0C:
    lw      $ra, 0x002C($sp)
lbl_800D4E10:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    lw      s2, 0x0024($sp)
    lw      s3, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp += 0x90
    nop
    nop


func_800D4E30:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a0, 0x0030($sp)
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    or      a0, a2, $zero              # a0 = 00000000
    or      a1, a3, $zero              # a1 = 00000000
    lw      a3, 0x0044($sp)
    jal     func_8000227C
    lw      a2, 0x0040($sp)
    sw      v0, 0x0020($sp)
    sw      v1, 0x0024($sp)
    lw      a0, 0x0040($sp)
    lw      a1, 0x0044($sp)
    or      a2, v0, $zero              # a2 = 00000000
    jal     func_800022D8
    or      a3, v1, $zero              # a3 = 00000000
    lw      t6, 0x0038($sp)
    lw      t7, 0x003C($sp)
    lw      t0, 0x0020($sp)
    subu    t8, t6, v0
    sltu    $at, t7, v1
    subu    t8, t8, $at
    subu    t9, t7, v1
    sw      t9, 0x002C($sp)
    sw      t8, 0x0028($sp)
    bgtz    t0, lbl_800D4EF8
    lw      t1, 0x0024($sp)
    bltz    t0, lbl_800D4EB0
    nop
    beq     $zero, $zero, lbl_800D4EFC
    addiu   t0, $sp, 0x0020            # t0 = FFFFFFF0
lbl_800D4EB0:
    bltzl   t8, lbl_800D4EFC
    addiu   t0, $sp, 0x0020            # t0 = FFFFFFF0
    bgtz    t8, lbl_800D4EC8
    addiu   t3, t1, 0x0001             # t3 = 00000001
    beql    t9, $zero, lbl_800D4EFC
    addiu   t0, $sp, 0x0020            # t0 = FFFFFFF0
lbl_800D4EC8:
    lw      t4, 0x0040($sp)
    lw      t5, 0x0044($sp)
    sltiu   $at, t3, 0x0001
    addu    t2, t0, $at
    subu    t6, t8, t4
    sltu    $at, t9, t5
    subu    t6, t6, $at
    subu    t7, t9, t5
    sw      t2, 0x0020($sp)
    sw      t3, 0x0024($sp)
    sw      t7, 0x002C($sp)
    sw      t6, 0x0028($sp)
lbl_800D4EF8:
    addiu   t0, $sp, 0x0020            # t0 = FFFFFFF0
lbl_800D4EFC:
    lw      v0, 0x0030($sp)
    lw      $at, 0x0000(t0)            # FFFFFFF0
    sw      $at, 0x0000(v0)            # 00000000
    lw      t3, 0x0004(t0)             # FFFFFFF4
    sw      t3, 0x0004(v0)             # 00000004
    lw      $at, 0x0008(t0)            # FFFFFFF8
    sw      $at, 0x0008(v0)            # 00000008
    lw      t3, 0x000C(t0)             # FFFFFFFC
    sw      t3, 0x000C(v0)             # 0000000C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_800D4F30:
    div     $zero, a1, a2
    mflo    v0
    addiu   $sp, $sp, 0xFFF8           # $sp -= 0x8
    bne     a2, $zero, lbl_800D4F48
    nop
    break   # 0x01C00
lbl_800D4F48:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a2, $at, lbl_800D4F60
    lui     $at, 0x8000                # $at = 80000000
    bne     a1, $at, lbl_800D4F60
    nop
    break   # 0x01800
lbl_800D4F60:
    multu   a2, v0
    sw      v0, 0x0000($sp)
    addiu   t7, $sp, 0x0000            # t7 = FFFFFFF8
    mflo    t6
    subu    v1, a1, t6
    bgez    v0, lbl_800D4F98
    sw      v1, 0x0004($sp)
    sw      v0, 0x0000($sp)
    blez    v1, lbl_800D4F98
    sw      v1, 0x0004($sp)
    addiu   v0, v0, 0x0001             # v0 = 00000001
    subu    v1, v1, a2
    sw      v1, 0x0004($sp)
    sw      v0, 0x0000($sp)
lbl_800D4F98:
    lw      $at, 0x0000(t7)            # FFFFFFF8
    or      v0, a0, $zero              # v0 = 00000000
    sw      $at, 0x0000(a0)            # 00000000
    lw      t0, 0x0004(t7)             # FFFFFFFC
    addiu   $sp, $sp, 0x0008           # $sp += 0x8
    jr      $ra
    sw      t0, 0x0004(a0)             # 00000004
    nop
    nop
    nop


func_800D4FC0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      s2, 0x0028($sp)
    sll     t6, s2, 16
    sra     s2, t6, 16
    sw      s3, 0x0024($sp)
    sll     t8, s3, 16
    sra     s3, t8, 16
    andi    t6, s4, 0x00FF             # t6 = 00000000
    sw      s4, 0x001C($sp)
    or      s4, t6, $zero              # s4 = 00000000
    bgtz    s3, lbl_800D4FFC
    sw      $ra, 0x0014($sp)
    lui     s1, 0x8011                 # s1 = 80110000
    addiu   s1, s1, 0xA900             # s1 = 8010A900
    addiu   s3, $zero, 0x0001          # s3 = 00000001
lbl_800D4FFC:
    addiu   v0, $zero, 0x0066          # v0 = 00000066
    beq     v0, s4, lbl_800D5034
    or      v1, s4, $zero              # v1 = 00000000
    addiu   a0, $zero, 0x0067          # a0 = 00000067
    beq     a0, v1, lbl_800D5018
    addiu   $at, $zero, 0x0047         # $at = 00000047
    bne     v1, $at, lbl_800D5270
lbl_800D5018:
    slti    $at, s2, 0xFFFC
    bne     $at, $zero, lbl_800D5270
    nop
    lw      t7, 0x0024(s0)             # 00000024
    slt     $at, s2, t7
    beq     $at, $zero, lbl_800D5270
    nop
lbl_800D5034:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     t8, s2, 16
    beq     v0, v1, lbl_800D5078
    sra     s2, t8, 16
    lw      t6, 0x0030(s0)             # 00000030
    lw      v0, 0x0024(s0)             # 00000024
    andi    t7, t6, 0x0008             # t7 = 00000000
    bne     t7, $zero, lbl_800D5068
    slt     $at, s3, v0
    beql    $at, $zero, lbl_800D506C
    subu    t8, v0, s2
    sw      s3, 0x0024(s0)             # 00000024
    or      v0, s3, $zero              # v0 = 00000001
lbl_800D5068:
    subu    t8, v0, s2
lbl_800D506C:
    bgez    t8, lbl_800D5078
    sw      t8, 0x0024(s0)             # 00000024
    sw      $zero, 0x0024(s0)          # 00000024
lbl_800D5078:
    bgtz    s2, lbl_800D5148
    slt     $at, s3, s2
    lw      t7, 0x0008(s0)             # 00000008
    lw      t8, 0x0014(s0)             # 00000014
    addiu   t6, $zero, 0x0030          # t6 = 00000030
    subu    v1, $zero, s2
    addu    t9, t7, t8
    sb      t6, 0x0000(t9)             # 00000000
    lw      t7, 0x0014(s0)             # 00000014
    lw      v0, 0x0024(s0)             # 00000024
    or      a1, s1, $zero              # a1 = 8010A900
    addiu   t8, t7, 0x0001             # t8 = 00000001
    bgtz    v0, lbl_800D50C0
    sw      t8, 0x0014(s0)             # 00000014
    lw      t6, 0x0030(s0)             # 00000030
    andi    t9, t6, 0x0008             # t9 = 00000000
    beql    t9, $zero, lbl_800D50E8
    slt     $at, v0, v1
lbl_800D50C0:
    lw      t8, 0x0008(s0)             # 00000008
    lw      t6, 0x0014(s0)             # 00000014
    addiu   t7, $zero, 0x002E          # t7 = 0000002E
    addu    t9, t8, t6
    sb      t7, 0x0000(t9)             # 00000000
    lw      t8, 0x0014(s0)             # 00000014
    lw      v0, 0x0024(s0)             # 00000024
    addiu   t6, t8, 0x0001             # t6 = 00000002
    sw      t6, 0x0014(s0)             # 00000014
    slt     $at, v0, v1
lbl_800D50E8:
    beql    $at, $zero, lbl_800D5104
    addu    t8, v0, s2
    subu    s2, $zero, v0
    sll     t7, s2, 16
    sra     s2, t7, 16
    subu    v1, $zero, s2
    addu    t8, v0, s2
lbl_800D5104:
    slt     $at, t8, s3
    sw      v1, 0x0018(s0)             # 00000018
    beq     $at, $zero, lbl_800D5120
    sw      t8, 0x0024(s0)             # 00000024
    sll     s3, t8, 16
    sra     t6, s3, 16
    or      s3, t6, $zero              # s3 = 00000002
lbl_800D5120:
    lw      t7, 0x0008(s0)             # 00000008
    lw      t9, 0x0014(s0)             # 00000014
    sw      s3, 0x001C(s0)             # 0000001C
    or      a2, s3, $zero              # a2 = 00000002
    jal     func_800D2350
    addu    a0, t7, t9
    lw      t8, 0x0024(s0)             # 00000024
    subu    t6, t8, s3
    beq     $zero, $zero, lbl_800D54CC
    sw      t6, 0x0020(s0)             # 00000020
lbl_800D5148:
    beq     $at, $zero, lbl_800D51C0
    or      a1, s1, $zero              # a1 = 8010A900
    lw      t7, 0x0008(s0)             # 00000008
    lw      t9, 0x0014(s0)             # 00000014
    or      a1, s1, $zero              # a1 = 8010A900
    or      a2, s3, $zero              # a2 = 00000002
    jal     func_800D2350
    addu    a0, t7, t9
    lw      t8, 0x0014(s0)             # 00000014
    lw      v0, 0x0024(s0)             # 00000024
    subu    t7, s2, s3
    addu    t6, t8, s3
    sw      t6, 0x0014(s0)             # 00000014
    bgtz    v0, lbl_800D5194
    sw      t7, 0x0018(s0)             # 00000018
    lw      t9, 0x0030(s0)             # 00000030
    andi    t8, t9, 0x0008             # t8 = 00000000
    beq     t8, $zero, lbl_800D51B8
    nop
lbl_800D5194:
    lw      t7, 0x0008(s0)             # 00000008
    lw      t9, 0x0014(s0)             # 00000014
    addiu   t6, $zero, 0x002E          # t6 = 0000002E
    addu    t8, t7, t9
    sb      t6, 0x0000(t8)             # 00000000
    lw      t7, 0x001C(s0)             # 0000001C
    lw      v0, 0x0024(s0)             # 00000024
    addiu   t9, t7, 0x0001             # t9 = 00000001
    sw      t9, 0x001C(s0)             # 0000001C
lbl_800D51B8:
    beq     $zero, $zero, lbl_800D54CC
    sw      v0, 0x0020(s0)             # 00000020
lbl_800D51C0:
    lw      t6, 0x0008(s0)             # 00000008
    lw      t8, 0x0014(s0)             # 00000014
    or      a2, s2, $zero              # a2 = 00000001
    jal     func_800D2350
    addu    a0, t6, t8
    lw      t7, 0x0014(s0)             # 00000014
    lw      v0, 0x0024(s0)             # 00000024
    subu    s3, s3, s2
    sll     t6, s3, 16
    addu    t9, t7, s2
    sw      t9, 0x0014(s0)             # 00000014
    bgtz    v0, lbl_800D5204
    sra     s3, t6, 16
    lw      t7, 0x0030(s0)             # 00000030
    andi    t9, t7, 0x0008             # t9 = 00000000
    beql    t9, $zero, lbl_800D522C
    slt     $at, v0, s3
lbl_800D5204:
    lw      t8, 0x0008(s0)             # 00000008
    lw      t7, 0x0014(s0)             # 00000014
    addiu   t6, $zero, 0x002E          # t6 = 0000002E
    addu    t9, t8, t7
    sb      t6, 0x0000(t9)             # 00000000
    lw      t8, 0x0014(s0)             # 00000014
    lw      v0, 0x0024(s0)             # 00000024
    addiu   t7, t8, 0x0001             # t7 = 00000001
    sw      t7, 0x0014(s0)             # 00000014
    slt     $at, v0, s3
lbl_800D522C:
    beq     $at, $zero, lbl_800D5240
    addu    a1, s2, s1
    sll     s3, v0, 16
    sra     t6, s3, 16
    or      s3, t6, $zero              # s3 = 0000002E
lbl_800D5240:
    lw      t9, 0x0008(s0)             # 00000008
    lw      t8, 0x0014(s0)             # 00000014
    or      a2, s3, $zero              # a2 = 0000002E
    jal     func_800D2350
    addu    a0, t9, t8
    lw      t7, 0x0014(s0)             # 00000014
    lw      t9, 0x0024(s0)             # 00000024
    addu    t6, t7, s3
    subu    t8, t9, s3
    sw      t6, 0x0014(s0)             # 00000014
    beq     $zero, $zero, lbl_800D54CC
    sw      t8, 0x0018(s0)             # 00000018
lbl_800D5270:
    beq     a0, v1, lbl_800D5280
    addiu   $at, $zero, 0x0047         # $at = 00000047
    bnel    v1, $at, lbl_800D52C0
    lw      t8, 0x0008(s0)             # 00000008
lbl_800D5280:
    lw      v0, 0x0024(s0)             # 00000024
    addiu   s4, $zero, 0x0045          # s4 = 00000045
    slt     $at, s3, v0
    beql    $at, $zero, lbl_800D52A0
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sw      s3, 0x0024(s0)             # 00000024
    or      v0, s3, $zero              # v0 = 0000002E
    addiu   t7, v0, 0xFFFF             # t7 = 0000002D
lbl_800D52A0:
    bgez    t7, lbl_800D52AC
    sw      t7, 0x0024(s0)             # 00000024
    sw      $zero, 0x0024(s0)          # 00000024
lbl_800D52AC:
    bne     a0, v1, lbl_800D52BC
    nop
    beq     $zero, $zero, lbl_800D52BC
    addiu   s4, $zero, 0x0065          # s4 = 00000065
lbl_800D52BC:
    lw      t8, 0x0008(s0)             # 00000008
lbl_800D52C0:
    lw      t7, 0x0014(s0)             # 00000014
    lbu     t9, 0x0000(s1)             # 8010A900
    addiu   s1, s1, 0x0001             # s1 = 8010A901
    addu    t6, t8, t7
    sb      t9, 0x0000(t6)             # 00000000
    lw      t8, 0x0014(s0)             # 00000014
    lw      v0, 0x0024(s0)             # 00000024
    addiu   t7, t8, 0x0001             # t7 = 00000001
    bgtz    v0, lbl_800D52F8
    sw      t7, 0x0014(s0)             # 00000014
    lw      t9, 0x0030(s0)             # 00000030
    andi    t6, t9, 0x0008             # t6 = 00000000
    beq     t6, $zero, lbl_800D531C
    nop
lbl_800D52F8:
    lw      t7, 0x0008(s0)             # 00000008
    lw      t9, 0x0014(s0)             # 00000014
    addiu   t8, $zero, 0x002E          # t8 = 0000002E
    addu    t6, t7, t9
    sb      t8, 0x0000(t6)             # 00000000
    lw      t7, 0x0014(s0)             # 00000014
    lw      v0, 0x0024(s0)             # 00000024
    addiu   t9, t7, 0x0001             # t9 = 00000002
    sw      t9, 0x0014(s0)             # 00000014
lbl_800D531C:
    blezl   v0, lbl_800D5378
    lw      t6, 0x0008(s0)             # 00000008
    addiu   s3, s3, 0xFFFF             # s3 = 0000002D
    sll     t8, s3, 16
    sra     s3, t8, 16
    slt     $at, v0, s3
    beq     $at, $zero, lbl_800D5348
    or      a1, s1, $zero              # a1 = 8010A901
    sll     s3, v0, 16
    sra     t7, s3, 16
    or      s3, t7, $zero              # s3 = 00000001
lbl_800D5348:
    lw      t9, 0x0008(s0)             # 00000008
    lw      t8, 0x0014(s0)             # 00000014
    or      a2, s3, $zero              # a2 = 00000001
    jal     func_800D2350
    addu    a0, t9, t8
    lw      t6, 0x0014(s0)             # 00000014
    lw      t9, 0x0024(s0)             # 00000024
    addu    t7, t6, s3
    subu    t8, t9, s3
    sw      t7, 0x0014(s0)             # 00000014
    sw      t8, 0x0018(s0)             # 00000018
    lw      t6, 0x0008(s0)             # 00000008
lbl_800D5378:
    lw      t7, 0x0014(s0)             # 00000014
    addu    s1, t6, t7
    addiu   s1, s1, 0x0001             # s1 = 8010A902
    bltz    s2, lbl_800D539C
    sb      s4, -0x0001(s1)            # 8010A901
    addiu   t9, $zero, 0x002B          # t9 = 0000002B
    sb      t9, 0x0000(s1)             # 8010A902
    beq     $zero, $zero, lbl_800D53B8
    addiu   s1, s1, 0x0001             # s1 = 8010A903
lbl_800D539C:
    subu    s2, $zero, s2
    sll     t6, s2, 16
    addiu   t8, $zero, 0x002D          # t8 = 0000002D
    sra     t7, t6, 16
    sb      t8, 0x0000(s1)             # 8010A903
    addiu   s1, s1, 0x0001             # s1 = 8010A904
    or      s2, t7, $zero              # s2 = 00000000
lbl_800D53B8:
    slti    $at, s2, 0x0064
    bnel    $at, $zero, lbl_800D5468
    addiu   v0, $zero, 0x000A          # v0 = 0000000A
    slti    $at, s2, 0x03E8
    bne     $at, $zero, lbl_800D5418
    addiu   v0, $zero, 0x03E8          # v0 = 000003E8
    div     $zero, s2, v0
    bne     v0, $zero, lbl_800D53E0
    nop
    break   # 0x01C00
lbl_800D53E0:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_800D53F8
    lui     $at, 0x8000                # $at = 80000000
    bne     s2, $at, lbl_800D53F8
    nop
    break   # 0x01800
lbl_800D53F8:
    mfhi    s2
    sll     t6, s2, 16
    mflo    t9
    addiu   t8, t9, 0x0030             # t8 = 0000005B
    sra     t7, t6, 16
    or      s2, t7, $zero              # s2 = 00000000
    sb      t8, 0x0000(s1)             # 8010A904
    addiu   s1, s1, 0x0001             # s1 = 8010A905
lbl_800D5418:
    addiu   v0, $zero, 0x0064          # v0 = 00000064
    div     $zero, s2, v0
    bne     v0, $zero, lbl_800D542C
    nop
    break   # 0x01C00
lbl_800D542C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_800D5444
    lui     $at, 0x8000                # $at = 80000000
    bne     s2, $at, lbl_800D5444
    nop
    break   # 0x01800
lbl_800D5444:
    mfhi    s2
    sll     t6, s2, 16
    mflo    t9
    addiu   t8, t9, 0x0030             # t8 = 0000005B
    sra     t7, t6, 16
    or      s2, t7, $zero              # s2 = 00000000
    sb      t8, 0x0000(s1)             # 8010A905
    addiu   s1, s1, 0x0001             # s1 = 8010A906
    addiu   v0, $zero, 0x000A          # v0 = 0000000A
lbl_800D5468:
    div     $zero, s2, v0
    bne     v0, $zero, lbl_800D5478
    nop
    break   # 0x01C00
lbl_800D5478:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_800D5490
    lui     $at, 0x8000                # $at = 80000000
    bne     s2, $at, lbl_800D5490
    nop
    break   # 0x01800
lbl_800D5490:
    mfhi    s2
    sll     t6, s2, 16
    mflo    t9
    addiu   t8, t9, 0x0030             # t8 = 0000005B
    sra     t7, t6, 16
    addiu   t9, t7, 0x0030             # t9 = 00000030
    sb      t8, 0x0000(s1)             # 8010A906
    sb      t9, 0x0001(s1)             # 8010A907
    lw      t8, 0x0008(s0)             # 00000008
    or      s2, t7, $zero              # s2 = 00000000
    lw      t7, 0x0014(s0)             # 00000014
    addiu   s1, s1, 0x0002             # s1 = 8010A908
    subu    t6, s1, t8
    subu    t9, t6, t7
    sw      t9, 0x001C(s0)             # 0000001C
lbl_800D54CC:
    lw      t8, 0x0030(s0)             # 00000030
    addiu   $at, $zero, 0x0010         # $at = 00000010
    andi    t6, t8, 0x0014             # t6 = 00000010
    bnel    t6, $at, lbl_800D551C
    lw      $ra, 0x0014($sp)
    lw      t7, 0x000C(s0)             # 0000000C
    lw      t9, 0x0014(s0)             # 00000014
    lw      t6, 0x0018(s0)             # 00000018
    lw      v1, 0x0028(s0)             # 00000028
    addu    t8, t7, t9
    lw      t9, 0x001C(s0)             # 0000001C
    addu    t7, t8, t6
    lw      t6, 0x0020(s0)             # 00000020
    addu    t8, t7, t9
    addu    v0, t8, t6
    slt     $at, v0, v1
    beq     $at, $zero, lbl_800D5518
    subu    t7, v1, v0
    sw      t7, 0x0010(s0)             # 00000010
lbl_800D5518:
    lw      $ra, 0x0014($sp)
lbl_800D551C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800D5528:
    jr      $ra
    nop


func_800D5530:
    addiu   $sp, $sp, 0xFF30           # $sp -= 0xD0
    sw      $ra, 0x003C($sp)
    sw      s5, 0x0038($sp)
    sw      s4, 0x0034($sp)
    sw      s3, 0x0030($sp)
    sw      s2, 0x002C($sp)
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a0, 0x00D0($sp)
    sw      a1, 0x00D4($sp)
    lw      v0, 0x0024(a0)             # 00000024
    addiu   s5, $sp, 0x00B0            # s5 = FFFFFFE0
    ldc1    $f20, 0x0000(a0)           # 00000000
    bgez    v0, lbl_800D5578
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    beq     $zero, $zero, lbl_800D55A4
    sw      t7, 0x0024(a0)             # 00000024
lbl_800D5578:
    bne     v0, $zero, lbl_800D55A4
    lbu     t8, 0x00D7($sp)
    addiu   $at, $zero, 0x0067         # $at = 00000067
    beq     t8, $at, lbl_800D5598
    sw      t8, 0x0048($sp)
    addiu   $at, $zero, 0x0047         # $at = 00000047
    bnel    t8, $at, lbl_800D55A8
    lw      t6, 0x00D0($sp)
lbl_800D5598:
    lw      t7, 0x00D0($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0024(t7)             # 0000002A
lbl_800D55A4:
    lw      t6, 0x00D0($sp)
lbl_800D55A8:
    addiu   $at, $zero, 0x07FF         # $at = 000007FF
    lhu     a0, 0x0000(t6)             # 00000000
    andi    v1, a0, 0x7FF0             # v1 = 00000000
    sra     t8, v1,  4
    sll     t9, t8, 16
    sra     v1, t9, 16
    bne     v1, $at, lbl_800D5624
    nop
    sh      $zero, 0x009A($sp)
    lhu     t8, 0x0000(t6)             # 00000000
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    sll     v0, v1, 16
    andi    t9, t8, 0x000F             # t9 = 00000000
    bnel    t9, $zero, lbl_800D5608
    sra     t7, v0, 16
    lhu     t7, 0x0002(t6)             # 00000002
    bnel    t7, $zero, lbl_800D5608
    sra     t7, v0, 16
    lhu     t8, 0x0004(t6)             # 00000004
    bnel    t8, $zero, lbl_800D5608
    sra     t7, v0, 16
    lhu     t9, 0x0006(t6)             # 00000006
    beq     t9, $zero, lbl_800D5610
    sra     t7, v0, 16
lbl_800D5608:
    beq     $zero, $zero, lbl_800D565C
    or      v0, t7, $zero              # v0 = 00000006
lbl_800D5610:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sll     v0, v1, 16
    sra     t7, v0, 16
    beq     $zero, $zero, lbl_800D565C
    or      v0, t7, $zero              # v0 = 00000006
lbl_800D5624:
    blez    v1, lbl_800D5648
    andi    t8, a0, 0x800F             # t8 = 00000000
    lw      t9, 0x00D0($sp)
    ori     t6, t8, 0x3FF0             # t6 = 00003FF0
    addiu   t7, v1, 0xFC02             # t7 = FFFFFC03
    sh      t6, 0x0000(t9)             # 00000000
    sh      t7, 0x009A($sp)
    beq     $zero, $zero, lbl_800D565C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_800D5648:
    bgez    v1, lbl_800D5658
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_800D565C
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_800D5658:
    sh      $zero, 0x009A($sp)
lbl_800D565C:
    blez    v0, lbl_800D56A8
    sll     t8, v0, 16
    sll     t8, v0, 16
    sra     t6, t8, 16
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t6, $at, lbl_800D5684
    lw      t9, 0x00D0($sp)
    lui     a1, 0x8011                 # a1 = 80110000
    beq     $zero, $zero, lbl_800D568C
    addiu   a1, a1, 0xA8F8             # a1 = 8010A8F8
lbl_800D5684:
    lui     a1, 0x8011                 # a1 = 80110000
    addiu   a1, a1, 0xA8FC             # a1 = 8010A8FC
lbl_800D568C:
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sw      t7, 0x0014(t9)             # 00000014
    lw      a0, 0x0008(t9)             # 00000008
    jal     func_800D2350
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    beq     $zero, $zero, lbl_800D5A58
    lw      $ra, 0x003C($sp)
lbl_800D56A8:
    sra     t6, t8, 16
    bne     t6, $zero, lbl_800D56BC
    or      s3, $zero, $zero           # s3 = 00000000
    beq     $zero, $zero, lbl_800D5A40
    sh      $zero, 0x009A($sp)
lbl_800D56BC:
    mtc1    $zero, $f3                 # $f3 = 0.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    lbu     t7, 0x00D7($sp)
    lh      t9, 0x009A($sp)
    c.lt.d  $f20, $f2
    addiu   $at, $zero, 0x7597         # $at = 00007597
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   s5, $sp, 0x00B1            # s5 = FFFFFFE1
    bc1f    lbl_800D56E8
    sw      t7, 0x0048($sp)
    neg.d   $f20, $f20
lbl_800D56E8:
    multu   t9, $at
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x86A0           # $at = 000186A0
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    mflo    t8
    nop
    nop
    div     $zero, t8, $at
    mflo    t6
    addiu   t7, t6, 0xFFFC             # t7 = FFFFFFFC
    sll     t9, t7, 16
    sra     t8, t9, 16
    bgez    t8, lbl_800D5780
    sh      t7, 0x009A($sp)
    sll     t9, t7, 16
    sra     t8, t9, 16
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    subu    a0, t6, t8
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    and     v0, a0, $at
    subu    t9, $zero, v0
    blez    v0, lbl_800D57F0
    sh      t9, 0x009A($sp)
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0xA8B0             # a0 = 8010A8B0
lbl_800D574C:
    andi    t6, v0, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_800D576C
    sra     t9, v0,  1
    sll     t8, v1,  3
    addu    t7, a0, t8
    ldc1    $f4, 0x0000(t7)            # FFFFFFFC
    mul.d   $f20, $f20, $f4
    nop
lbl_800D576C:
    or      v0, t9, $zero              # v0 = 00000000
    bgtz    t9, lbl_800D574C
    addiu   v1, v1, 0x0001             # v1 = 00000001
    beq     $zero, $zero, lbl_800D57F4
    lw      t7, 0x0048($sp)
lbl_800D5780:
    lh      t6, 0x009A($sp)
    lui     $at, 0x3FF0                # $at = 3FF00000
    or      v1, $zero, $zero           # v1 = 00000000
    blez    t6, lbl_800D57F0
    andi    t8, t6, 0xFFFC             # t8 = 00000000
    sll     v0, t8, 16
    sll     t9, t8, 16
    mtc1    $at, $f1                   # $f1 = 1.88
    mtc1    $zero, $f0                 # $f0 = 0.00
    sra     t6, t9, 16
    sra     t7, v0, 16
    sh      t8, 0x009A($sp)
    blez    t6, lbl_800D57EC
    or      v0, t7, $zero              # v0 = FFFFFFFC
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0xA8B0             # a0 = 8010A8B0
lbl_800D57C0:
    andi    t7, v0, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_800D57E0
    sra     t6, v0,  1
    sll     t8, v1,  3
    addu    t9, a0, t8
    ldc1    $f6, 0x0000(t9)            # 00000000
    mul.d   $f0, $f0, $f6
    nop
lbl_800D57E0:
    or      v0, t6, $zero              # v0 = 00000000
    bgtz    t6, lbl_800D57C0
    addiu   v1, v1, 0x0001             # v1 = 00000001
lbl_800D57EC:
    div.d   $f20, $f20, $f0
lbl_800D57F0:
    lw      t7, 0x0048($sp)
lbl_800D57F4:
    addiu   $at, $zero, 0x0066         # $at = 00000066
    lw      t8, 0x00D0($sp)
    bne     t7, $at, lbl_800D5810
    addiu   t6, $zero, 0x0030          # t6 = 00000030
    lh      a1, 0x009A($sp)
    beq     $zero, $zero, lbl_800D5810
    addiu   a1, a1, 0x000A             # a1 = 00000010
lbl_800D5810:
    lw      t9, 0x0024(t8)             # 00000024
    addu    s4, a1, t9
    slti    $at, s4, 0x0014
    bne     $at, $zero, lbl_800D5828
    nop
    addiu   s4, $zero, 0x0013          # s4 = 00000013
lbl_800D5828:
    blez    s4, lbl_800D58F8
    sb      t6, 0x00B0($sp)
    c.lt.d  $f2, $f20
    addiu   s3, $zero, 0x0030          # s3 = 00000030
    addiu   s2, $sp, 0x0074            # s2 = FFFFFFA4
    bc1fl   lbl_800D58FC
    lh      t8, 0x009A($sp)
    trunc.w.d $f8, $f20
lbl_800D5848:
    addiu   s4, s4, 0xFFF8             # s4 = 0000000B
    addiu   s5, s5, 0x0008             # s5 = FFFFFFE9
    mfc1    s1, $f8
    blez    s4, lbl_800D5878
    nop
    mtc1    s1, $f10                   # $f10 = 0.00
    lui     $at, 0x8011                # $at = 80110000
    ldc1    $f8, -0x56F8($at)          # 8010A908
    cvt.d.w $f4, $f10
    sub.d   $f6, $f20, $f4
    mul.d   $f20, $f6, $f8
    nop
lbl_800D5878:
    blez    s1, lbl_800D58C0
    addiu   s0, $zero, 0x0008          # s0 = 00000008
    addiu   s0, $zero, 0x0007          # s0 = 00000007
    bltz    s0, lbl_800D58C0
    or      a0, s2, $zero              # a0 = FFFFFFA4
lbl_800D588C:
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800D4F30
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    lw      t8, 0x0078($sp)
    addiu   s5, s5, 0xFFFF             # s5 = FFFFFFE8
    addiu   t9, t8, 0x0030             # t9 = 00000030
    sb      t9, 0x0000(s5)             # FFFFFFE8
    lw      s1, 0x0074($sp)
    blezl   s1, lbl_800D58C4
    mtc1    $zero, $f3                 # $f3 = 0.00
    addiu   s0, s0, 0xFFFF             # s0 = 00000006
    bgezl   s0, lbl_800D588C
    or      a0, s2, $zero              # a0 = FFFFFFA4
lbl_800D58C0:
    mtc1    $zero, $f3                 # $f3 = 0.00
lbl_800D58C4:
    mtc1    $zero, $f2                 # $f2 = 0.00
    addiu   s0, s0, 0xFFFF             # s0 = 00000005
    bltz    s0, lbl_800D58E0
lbl_800D58D0:
    addiu   s0, s0, 0xFFFF             # s0 = 00000004
    addiu   s5, s5, 0xFFFF             # s5 = FFFFFFE7
    bgez    s0, lbl_800D58D0
    sb      s3, 0x0000(s5)             # FFFFFFE7
lbl_800D58E0:
    blez    s4, lbl_800D58F8
    addiu   s5, s5, 0x0008             # s5 = FFFFFFEF
    c.lt.d  $f2, $f20
    nop
    bc1tl   lbl_800D5848
    trunc.w.d $f8, $f20
lbl_800D58F8:
    lh      t8, 0x009A($sp)
lbl_800D58FC:
    lbu     t6, 0x00B1($sp)
    addiu   t7, $sp, 0x00B0            # t7 = FFFFFFE0
    addiu   v0, $zero, 0x0030          # v0 = 00000030
    subu    s4, s5, t7
    addiu   t9, t8, 0x0007             # t9 = 00000007
    addiu   s4, s4, 0xFFFF             # s4 = 0000000A
    sh      t9, 0x009A($sp)
    bne     v0, t6, lbl_800D5940
    addiu   s5, $sp, 0x00B1            # s5 = FFFFFFE1
    lh      t7, 0x009A($sp)
lbl_800D5924:
    addiu   s5, s5, 0x0001             # s5 = FFFFFFE2
    addiu   s4, s4, 0xFFFF             # s4 = 00000009
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFDF
    sh      t8, 0x009A($sp)
    lbu     t9, 0x0000(s5)             # FFFFFFE2
    beql    v0, t9, lbl_800D5924
    lh      t7, 0x009A($sp)
lbl_800D5940:
    lw      t6, 0x0048($sp)
    addiu   $at, $zero, 0x0066         # $at = 00000066
    lw      t8, 0x00D0($sp)
    bne     t6, $at, lbl_800D5960
    lw      t7, 0x0048($sp)
    lh      a1, 0x009A($sp)
    beq     $zero, $zero, lbl_800D5980
    addiu   a1, a1, 0x0001             # a1 = 00000001
lbl_800D5960:
    addiu   $at, $zero, 0x0065         # $at = 00000065
    beq     t7, $at, lbl_800D5974
    addiu   $at, $zero, 0x0045         # $at = 00000045
    bne     t7, $at, lbl_800D597C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800D5974:
    beq     $zero, $zero, lbl_800D597C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800D597C:
    or      a1, v0, $zero              # a1 = 00000001
lbl_800D5980:
    lw      t9, 0x0024(t8)             # 00000003
    addu    s3, a1, t9
    sll     t6, s3, 16
    sra     s3, t6, 16
    slt     $at, s4, s3
    beq     $at, $zero, lbl_800D59A8
    nop
    sll     s3, s4, 16
    sra     t8, s3, 16
    or      s3, t8, $zero              # s3 = FFFFFFDF
lbl_800D59A8:
    blez    s3, lbl_800D5A40
    slt     $at, s3, s4
    beq     $at, $zero, lbl_800D59D0
    addu    v0, s3, s5
    lbu     t9, 0x0000(v0)             # 00000001
    slti    $at, t9, 0x0035
    bnel    $at, $zero, lbl_800D59D4
    addiu   a1, $zero, 0x0030          # a1 = 00000030
    beq     $zero, $zero, lbl_800D59D8
    addiu   a1, $zero, 0x0039          # a1 = 00000039
lbl_800D59D0:
    addiu   a1, $zero, 0x0030          # a1 = 00000030
lbl_800D59D4:
    addu    v0, s3, s5
lbl_800D59D8:
    lbu     t6, -0x0001(v0)            # 00000000
    addiu   v1, s3, 0xFFFF             # v1 = FFFFFFDE
    or      a0, a1, $zero              # a0 = 00000030
    bne     a1, t6, lbl_800D5A0C
    addiu   $at, $zero, 0x0039         # $at = 00000039
    addu    v0, v1, s5
lbl_800D59F0:
    lbu     t9, -0x0001(v0)            # 00000000
    addiu   s3, s3, 0xFFFF             # s3 = FFFFFFDE
    sll     t7, s3, 16
    addiu   v1, v1, 0xFFFF             # v1 = FFFFFFDD
    addiu   v0, v0, 0xFFFF             # v0 = 00000000
    beq     a0, t9, lbl_800D59F0
    sra     s3, t7, 16
lbl_800D5A0C:
    bne     a0, $at, lbl_800D5A20
    addu    v0, s5, v1
    lbu     t6, 0x0000(v0)             # 00000000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x0000(v0)             # 00000000
lbl_800D5A20:
    bgez    v1, lbl_800D5A40
    lh      t6, 0x009A($sp)
    addiu   s3, s3, 0x0001             # s3 = FFFFFFDF
    sll     t8, s3, 16
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x009A($sp)
    sra     s3, t8, 16
    addiu   s5, s5, 0xFFFF             # s5 = FFFFFFE1
lbl_800D5A40:
    lw      s0, 0x00D0($sp)
    lbu     s4, 0x00D7($sp)
    or      s1, s5, $zero              # s1 = FFFFFFE1
    jal     func_800D4FC0
    lh      s2, 0x009A($sp)
    lw      $ra, 0x003C($sp)
lbl_800D5A58:
    ldc1    $f20, 0x0018($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    lw      s2, 0x002C($sp)
    lw      s3, 0x0030($sp)
    lw      s4, 0x0034($sp)
    lw      s5, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00D0           # $sp += 0xD0
    nop


func_800D5A80:
# u32 __osSpGetStatus(void)
# Get the RSP status (SP_STATUS_REG)
# V0 = u32 current status
    lui     t6, 0xA404                 # t6 = A4040000
    jr      $ra
    lw      v0, 0x0010(t6)             # A4040010
    nop


func_800D5A90:
# void __osSpSetStatus(u32 status)
# Set the RSP status (SP_STATUS_REG)
# A0 = u32 new status
    lui     t6, 0xA404                 # t6 = A4040000
    jr      $ra
    sw      a0, 0x0010(t6)             # A4040010
    nop


func_800D5AA0:
# void osWritebackDCacheAll(void)
# Writes back all CPU data cache lines that are not invalid and invalidates them
# Seems to be the same as calling osWritebackDCache with a number of bytes >= 0x2000
    lui     t0, 0x8000                 # t0 = 80000000
    addiu   t2, $zero, 0x2000          # t2 = 00002000
    addu    t1, t0, t2
    addiu   t1, t1, 0xFFF0             # t1 = FFFFFFF0
lbl_800D5AB0:
    cache   0x01, 0x0000(t0)
    sltu    $at, t0, t1
    bne     $at, $zero, lbl_800D5AB0
    addiu   t0, t0, 0x0010             # t0 = 80000010
    jr      $ra
    nop
    nop
    nop


func_800D5AD0:
    lui     v0, 0x8000                 # v0 = 80000000
    jr      $ra
    lw      v0, 0x6344(v0)             # 80006344
    nop


func_800D5AE0:
# __d_to_ll?
    trunc.l.d $f4, $f12
    dmfc1   v0, $f4
    nop
    dsll32  v1, v0,  0
    dsra32  v1, v1,  0
    jr      $ra
    dsra32  v0, v0,  0


func_800D5AFC:
# __f_to_ll?
    trunc.l.s $f4, $f12
    dmfc1   v0, $f4
    nop
    dsll32  v1, v0,  0
    dsra32  v1, v1,  0
    jr      $ra
    dsra32  v0, v0,  0


func_800D5B18:
# __d_to_ull?
    cfc1    t6, $f31
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    ctc1    v0, $f31
    nop
    cvt.l.d $f4, $f12
    cfc1    v0, $f31
    nop
    andi    $at, v0, 0x0004            # $at = 00000000
    andi    v0, v0, 0x0078             # v0 = 00000000
    beq     v0, $zero, lbl_800D5B94
    lui     $at, 0x43E0                # $at = 43E00000
    mtc1    $at, $f5                   # $f5 = 448.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.d   $f4, $f12, $f4
    ctc1    v0, $f31
    nop
    cvt.l.d $f4, $f4
    cfc1    v0, $f31
    nop
    andi    $at, v0, 0x0004            # $at = 00000000
    andi    v0, v0, 0x0078             # v0 = 00000000
    bne     v0, $zero, lbl_800D5B8C
    nop
    lui     t7, 0x8011                 # t7 = 80110000
    ld      t7, -0x56F0(t7)            # 8010A910
    dmfc1   v0, $f4
    beq     $zero, $zero, lbl_800D5BA4
    or      v0, v0, t7                 # v0 = 80110000
lbl_800D5B8C:
    beq     $zero, $zero, lbl_800D5BA4
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_800D5B94:
    dmfc1   v0, $f4
    nop
    bltz    v0, lbl_800D5B8C
    nop
lbl_800D5BA4:
    ctc1    t6, $f31
    dsll32  v1, v0,  0
    dsra32  v1, v1,  0
    jr      $ra
    dsra32  v0, v0,  0


func_800D5BB8:
# __f_to_ull?
    cfc1    t6, $f31
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    ctc1    v0, $f31
    nop
    cvt.l.s $f4, $f12
    cfc1    v0, $f31
    nop
    andi    $at, v0, 0x0004            # $at = 00000000
    andi    v0, v0, 0x0078             # v0 = 00000000
    beq     v0, $zero, lbl_800D5C30
    lui     $at, 0x5F00                # $at = 5F000000
    mtc1    $at, $f4                   # $f4 = 9223372000000000000.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f4, $f12, $f4
    ctc1    v0, $f31
    nop
    cvt.l.s $f4, $f4
    cfc1    v0, $f31
    nop
    andi    $at, v0, 0x0004            # $at = 00000000
    andi    v0, v0, 0x0078             # v0 = 00000000
    bne     v0, $zero, lbl_800D5C28
    nop
    lui     t7, 0x8011                 # t7 = 80110000
    ld      t7, -0x56E8(t7)            # 8010A918
    dmfc1   v0, $f4
    beq     $zero, $zero, lbl_800D5C40
    or      v0, v0, t7                 # v0 = 80110000
lbl_800D5C28:
    beq     $zero, $zero, lbl_800D5C40
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_800D5C30:
    dmfc1   v0, $f4
    nop
    bltz    v0, lbl_800D5C28
    nop
lbl_800D5C40:
    ctc1    t6, $f31
    dsll32  v1, v0,  0
    dsra32  v1, v1,  0
    jr      $ra
    dsra32  v0, v0,  0


func_800D5C54:
# __ll_to_d?
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    ld      t6, 0x0000($sp)
    dmtc1   t6, $f4
    jr      $ra
    cvt.d.l $f0, $f4


func_800D5C6C:
# __ll_to_f?
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    ld      t6, 0x0000($sp)
    dmtc1   t6, $f4
    jr      $ra
    cvt.s.l $f0, $f4


func_800D5C84:
# __ull_to_d?
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    ld      t6, 0x0000($sp)
    dmtc1   t6, $f4
    bgez    t6, lbl_800D5CB0
    cvt.d.l $f0, $f4
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f7                   # $f7 = 30.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    add.d   $f0, $f0, $f6
lbl_800D5CB0:
    jr      $ra
    nop


func_800D5CB8:
# __ull_to_f?
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    ld      t6, 0x0000($sp)
    dmtc1   t6, $f4
    bgez    t6, lbl_800D5CE0
    cvt.s.l $f0, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f0, $f0, $f6
lbl_800D5CE0:
    jr      $ra
    nop
    nop
    nop


func_800D5CF0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    swc1    $f12, 0x0028($sp)
    jal     func_80005130              # __osDisableInt
    sw      s0, 0x0018($sp)
    lui     t6, 0x8000                 # t6 = 80000000
    lw      t6, 0x64C4(t6)             # 800064C4
    lwc1    $f4, 0x0028($sp)
    lui     t7, 0x8000                 # t7 = 80000000
    or      s0, v0, $zero              # s0 = 00000000
    swc1    $f4, 0x0024(t6)            # 80000024
    lw      t7, 0x64C4(t7)             # 800064C4
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t8, 0x0000(t7)             # 80000000
    ori     t9, t8, 0x0004             # t9 = 00000004
    jal     func_800051A0              # __osRestoreInt
    sh      t9, 0x0000(t7)             # 80000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop
    nop


func_800D5D50:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    jal     func_80005130              # __osDisableInt
    sw      s0, 0x0018($sp)
    lui     t6, 0x8000                 # t6 = 80000000
    lw      t6, 0x64C0(t6)             # 800064C0
    or      s0, v0, $zero              # s0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x0004(t6)             # 80000004
    jal     func_800051A0              # __osRestoreInt
    sw      t7, 0x0020($sp)
    lw      $ra, 0x001C($sp)
    lw      v0, 0x0020($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_800D5D90:
# s32 __osSpSetPc(u32 value)
# Set the RSP Program Counter (SP_PC_REG)
# Aborts with return -1 if the RSP is not halted (SP_STATUS_REG & 0x0001 == 0)
# A0 = u32 value to set
# V0 = 0 if the operation could be done, else -1
    lui     t6, 0xA404                 # t6 = A4040000
    lw      a1, 0x0010(t6)             # A4040010
    addiu   $sp, $sp, 0xFFF8           # $sp -= 0x8
    andi    t7, a1, 0x0001             # t7 = 00000000
    bne     t7, $zero, lbl_800D5DB0
    nop
    beq     $zero, $zero, lbl_800D5DBC
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_800D5DB0:
    lui     t8, 0xA408                 # t8 = A4080000
    sw      a0, 0x0000(t8)             # A4080000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800D5DBC:
    jr      $ra
    addiu   $sp, $sp, 0x0008           # $sp += 0x8
    nop
    nop
    nop


func_800D5DD0:
    jr      $ra
    sqrt.d  $f0, $f12
    nop
    nop


func_800D5DE0:
    mtc1    $zero, $f2                 # $f2 = 0.00
    nop
    c.eq.s  $f14, $f2
    nop
    bc1fl   lbl_800D5E04
    div.s   $f4, $f12, $f14
    jr      $ra
    mov.s   $f0, $f2
lbl_800D5E00:
    div.s   $f4, $f12, $f14
lbl_800D5E04:
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    mul.s   $f16, $f10, $f14
    sub.s   $f0, $f12, $f16
    jr      $ra
    nop
    nop


func_800D5E30:
# Initialize Memory (Custom Initial Value)
# A0 = Start ptr
# A1 = Initial Value (for each byte)
# A2 = Length
# V0 = A0
    or      v1, a2, $zero              # v1 = 00000000
    or      v0, a0, $zero              # v0 = 00000000
    beq     a2, $zero, lbl_800D5E54
    addiu   a2, a2, 0xFFFF             # a2 = FFFFFFFF
lbl_800D5E40:
    or      v1, a2, $zero              # v1 = FFFFFFFF
    sb      a1, 0x0000(v0)             # 00000000
    addiu   v0, v0, 0x0001             # v0 = 00000001
    bne     a2, $zero, lbl_800D5E40
    addiu   a2, a2, 0xFFFF             # a2 = FFFFFFFE
lbl_800D5E54:
    jr      $ra
    or      v0, a0, $zero              # v0 = 00000000
    nop


func_800D5E60:
    or      a3, a2, $zero              # a3 = 00000000
    or      v0, a0, $zero              # v0 = 00000000
    bne     a0, a1, lbl_800D5E78
    or      v1, a1, $zero              # v1 = 00000000
    jr      $ra
    or      v0, a0, $zero              # v0 = 00000000
lbl_800D5E78:
    sltu    $at, a0, a1
    beq     $at, $zero, lbl_800D5EB4
    addiu   t0, a3, 0xFFFF             # t0 = FFFFFFFF
    or      a2, a3, $zero              # a2 = 00000000
    beq     a3, $zero, lbl_800D5EE4
    addiu   a3, a3, 0xFFFF             # a3 = FFFFFFFF
lbl_800D5E90:
    lbu     t6, 0x0000(v1)             # 00000000
    or      a2, a3, $zero              # a2 = FFFFFFFF
    addiu   v0, v0, 0x0001             # v0 = 00000001
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sb      t6, -0x0001(v0)            # 00000000
    bne     a3, $zero, lbl_800D5E90
    addiu   a3, a3, 0xFFFF             # a3 = FFFFFFFE
    beq     $zero, $zero, lbl_800D5EE8
    or      v0, a0, $zero              # v0 = 00000000
lbl_800D5EB4:
    or      a2, a3, $zero              # a2 = FFFFFFFE
    addu    v0, a0, t0
    addu    v1, a1, t0
    beq     a3, $zero, lbl_800D5EE4
    addiu   a3, a3, 0xFFFF             # a3 = FFFFFFFD
lbl_800D5EC8:
    lbu     t7, 0x0000(v1)             # 00000001
    or      a2, a3, $zero              # a2 = FFFFFFFD
    addiu   v0, v0, 0xFFFF             # v0 = FFFFFFFF
    addiu   v1, v1, 0xFFFF             # v1 = 00000000
    sb      t7, 0x0001(v0)             # 00000000
    bne     a3, $zero, lbl_800D5EC8
    addiu   a3, a3, 0xFFFF             # a3 = FFFFFFFC
lbl_800D5EE4:
    or      v0, a0, $zero              # v0 = 00000000
lbl_800D5EE8:
    jr      $ra
    nop
