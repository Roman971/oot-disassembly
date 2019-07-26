.section .text
func_80800000:
    lh      v0, 0x01D6(a0)             # 000001D6
    bnel    v0, $zero, lbl_80800048
    lh      t1, 0x01D8(a0)             # 000001D8
    lh      v1, 0x01DA(a0)             # 000001DA
    beql    v1, $zero, lbl_80800048
    lh      t1, 0x01D8(a0)             # 000001D8
    lh      t6, 0x01D4(a0)             # 000001D4
    addiu   t8, v1, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x01DA(a0)             # 000001DA
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x01D4(a0)             # 000001D4
    lh      t9, 0x01D4(a0)             # 000001D4
    addiu   t0, $zero, 0x0190          # t0 = 00000190
    bnel    t9, $zero, lbl_80800084
    lh      v0, 0x01DC(a0)             # 000001DC
    b       lbl_80800080
    sh      t0, 0x01D4(a0)             # 000001D4
    lh      t1, 0x01D8(a0)             # 000001D8
lbl_80800048:
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    addu    t2, v0, t1
    sh      t2, 0x01D6(a0)             # 000001D6
    lh      v0, 0x01D6(a0)             # 000001D6
    bgtz    v0, lbl_8080006C
    slti    $at, v0, 0x00FF
    sh      $zero, 0x01D6(a0)          # 000001D6
    b       lbl_80800080
    sh      t3, 0x01D8(a0)             # 000001D8
lbl_8080006C:
    bne     $at, $zero, lbl_80800080
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sh      t4, 0x01D6(a0)             # 000001D6
    sb      t5, 0x01E1(a0)             # 000001E1
lbl_80800080:
    lh      v0, 0x01DC(a0)             # 000001DC
lbl_80800084:
    andi    t6, v0, 0x007F             # t6 = 00000000
    addiu   t7, v0, 0x0001             # t7 = 00000001
    sh      t6, 0x01DE(a0)             # 000001DE
    sh      t7, 0x01DC(a0)             # 000001DC
    jr      $ra
    nop


func_8080009C:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0048($sp)
    sw      a3, 0x0054($sp)
    lw      a0, 0x0048($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    lwc1    $f4, 0x0054($sp)
    mtc1    $at, $f6                   # $f6 = 1.00
    addiu   a0, a0, 0x00A8             # a0 = 000000A8
    swc1    $f12, 0x0038($sp)
    swc1    $f14, 0x003C($sp)
    swc1    $f0, 0x0028($sp)
    swc1    $f0, 0x0020($sp)
    swc1    $f0, 0x0034($sp)
    swc1    $f0, 0x0030($sp)
    swc1    $f0, 0x002C($sp)
    sw      a0, 0x001C($sp)
    lui     a1, 0x41F0                 # a1 = 41F00000
    lui     a2, 0x4120                 # a2 = 41200000
    lui     a3, 0x4648                 # a3 = 46480000
    swc1    $f4, 0x0040($sp)
    jal     func_80091A34
    swc1    $f6, 0x0024($sp)
    lw      a0, 0x001C($sp)
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFF0
    addiu   a2, $sp, 0x002C            # a2 = FFFFFFE4
    jal     func_80091918
    addiu   a3, $sp, 0x0020            # a3 = FFFFFFD8
    lw      a0, 0x001C($sp)
    jal     func_80091F94
    addiu   a1, $zero, 0x000F          # a1 = 0000000F
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80800134:
    addiu   $sp, $sp, 0xFF00           # $sp -= 0x100
    lui     $at, 0x428A                # $at = 428A0000
    sw      s2, 0x0028($sp)
    mtc1    $at, $f0                   # $f0 = 69.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s8, 0x0040($sp)
    sw      s7, 0x003C($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    lw      s0, 0x0000(s2)             # 00000000
    lui     $at, %hi(var_80800930)     # $at = 80800000
    lwc1    $f4, %lo(var_80800930)($at)
    lui     $at, %hi(var_80800934)     # $at = 80800000
    lwc1    $f6, %lo(var_80800934)($at)
    lui     $at, %hi(var_80800938)     # $at = 80800000
    lwc1    $f8, %lo(var_80800938)($at)
    swc1    $f0, 0x00EC($sp)
    swc1    $f0, 0x00F0($sp)
    swc1    $f0, 0x00F4($sp)
    swc1    $f2, 0x00E0($sp)
    swc1    $f2, 0x00E4($sp)
    swc1    $f2, 0x00E8($sp)
    swc1    $f4, 0x00D4($sp)
    swc1    $f6, 0x00D8($sp)
    swc1    $f8, 0x00DC($sp)
    lw      a3, 0x0000(s2)             # 00000000
    addiu   a0, $sp, 0x00E0            # a0 = FFFFFFE0
    addiu   a1, $sp, 0x00D4            # a1 = FFFFFFD4
    jal     func_800223C8
    addiu   a2, $sp, 0x00EC            # a2 = FFFFFFEC
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDB02                 # t7 = DB020000
    addiu   t8, $zero, 0x0018          # t8 = 00000018
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0xDC08                 # t6 = DC080000
    lui     t7, %hi(var_80800920)      # t7 = 80800000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    addiu   t7, t7, %lo(var_80800920)  # t7 = 80800920
    ori     t6, t6, 0x060A             # t6 = DC08060A
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDC08                 # t9 = DC080000
    lui     t6, %hi(var_80800918)      # t6 = 80800000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    addiu   t6, t6, %lo(var_80800918)  # t6 = 80800918
    ori     t9, t9, 0x090A             # t9 = DC08090A
    sw      t9, 0x0000(v1)             # 00000000
    sw      t6, 0x0004(v1)             # 00000004
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x4316                 # a2 = 43160000
    jal     func_8080009C
    lui     a3, 0x4396                 # a3 = 43960000
    jal     func_8007E298
    lw      a0, 0x0000(s2)             # 00000000
    lui     $at, 0xC254                # $at = C2540000
    mtc1    $at, $f12                  # $f12 = -53.00
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f14                  # $f14 = -5.00
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lui     a1, %hi(var_80800910)      # a1 = 80800000
    lh      a1, %lo(var_80800910)(a1)
    or      a0, $zero, $zero           # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(s1)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s2)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0x0100                 # t7 = 01000000
    addiu   t7, t7, 0x27A0             # t7 = 010027A0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    jal     func_8007E5E4
    lw      a0, 0x0000(s2)             # 00000000
    lui     a3, 0xE700                 # a3 = E7000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0xE300                 # t6 = E3000000
    lui     t3, 0xF200                 # t3 = F2000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      a3, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    ori     t6, t6, 0x0A01             # t6 = E3000A01
    lui     t7, 0x0010                 # t7 = 00100000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xE200                 # t9 = E2000000
    lui     t6, 0x0C18                 # t6 = 0C180000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    ori     t6, t6, 0x4340             # t6 = 0C184340
    ori     t9, t9, 0x001C             # t9 = E200001C
    sw      t9, 0x0000(v1)             # 00000000
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xFC26                 # t8 = FC260000
    lui     t9, 0x350C                 # t9 = 350C0000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    ori     t9, t9, 0xF37F             # t9 = 350CF37F
    ori     t8, t8, 0x7E60             # t8 = FC267E60
    sw      t8, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xAAFF                 # t8 = AAFF0000
    ori     t8, t8, 0xFFFF             # t8 = AAFFFFFF
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    lui     t7, 0xFA00                 # t7 = FA000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0xFB00                 # t6 = FB000000
    ori     t7, $zero, 0xFF80          # t7 = 0000FF80
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0x0100                 # t6 = 01000000
    addiu   t6, t6, 0x1800             # t6 = 01001800
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    lui     t9, 0xFD90                 # t9 = FD900000
    sw      t9, 0x0000(v1)             # 00000000
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xF590                 # t8 = F5900000
    lui     t9, 0x0701                 # t9 = 07010000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    ori     t9, t9, 0x6C52             # t9 = 07016C52
    ori     t8, t8, 0x0100             # t8 = F5900100
    sw      t8, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xE600                 # t7 = E6000000
    lui     t9, 0xF300                 # t9 = F3000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0x071F                 # t6 = 071F0000
    ori     t6, t6, 0xF200             # t6 = 071FF200
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xF588                 # t9 = F5880000
    ori     t9, t9, 0x0900             # t9 = F5880900
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      a3, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0x0101                 # t6 = 01010000
    ori     t6, t6, 0x6C52             # t6 = 01016C52
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    sw      s2, 0x0100($sp)
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0x0107                 # t8 = 01070000
    ori     t8, t8, 0xC07C             # t8 = 0107C07C
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lui     s7, 0x0018                 # s7 = 00180000
    lui     s6, 0xE448                 # s6 = E4480000
    lui     s4, 0x002F                 # s4 = 002F0000
    lui     s3, 0xF588                 # s3 = F5880000
    lui     s2, 0x070B                 # s2 = 070B0000
    lui     t4, 0x0100                 # t4 = 01000000
    addiu   t4, t4, 0x0000             # t4 = 01000000
    ori     s2, s2, 0xF056             # s2 = 070BF056
    ori     s3, s3, 0x3000             # s3 = F5883000
    ori     s4, s4, 0xC004             # s4 = 002FC004
    ori     s6, s6, 0x4000             # s6 = E4484000
    ori     s7, s7, 0x4000             # s7 = 00184000
    or      t0, $zero, $zero           # t0 = 00000000
    addiu   t2, $zero, 0x005E          # t2 = 0000005E
    or      a2, $zero, $zero           # a2 = 00000000
    lui     s8, 0xE100                 # s8 = E1000000
    lui     s5, 0x0100                 # s5 = 01000000
    lui     s1, 0x0700                 # s1 = 07000000
    lui     $ra, 0xF590                # $ra = F5900000
    addiu   t5, $zero, 0x0180          # t5 = 00000180
lbl_808004C0:
    multu   a2, t5
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t0, t0, 0x0001             # t0 = 00000001
    andi    t0, t0, 0xFFFF             # t0 = 00000001
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    lui     t6, 0xFD90                 # t6 = FD900000
    slti    $at, t0, 0x0010
    addiu   a1, t2, 0x0002             # a1 = 00000060
    sw      t6, 0x0000(v1)             # 00000000
    mflo    t7
    addu    t8, t4, t7
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      s1, 0x0004(v1)             # 00000004
    sw      $ra, 0x0000(v1)            # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xE600                 # t7 = E6000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xF300                 # t9 = F3000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      s2, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      s3, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      s4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    lw      t7, 0x0100($sp)
    sll     t6, a2,  2
    or      a2, t0, $zero              # a2 = 00000001
    lh      t8, 0x01DC(t7)             # E70001DC
    andi    t9, t8, 0x007F             # t9 = 00000008
    subu    t8, t9, t6
    lh      t6, 0x01DE(t7)             # E70001DE
    andi    t9, t8, 0x0FFF             # t9 = 00000008
    sw      s5, 0x0004(v1)             # 00000004
    andi    t8, t6, 0x0FFF             # t8 = 00000008
    sll     t7, t8, 12
    or      t6, t7, t3                 # t6 = F7000000
    or      t8, t6, t9                 # t8 = F7000008
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    sll     t6, a1,  2
    andi    t9, t6, 0x0FFF             # t9 = 00000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sll     t7, t2,  2
    andi    t6, t7, 0x0FFF             # t6 = 00000008
    or      t8, t9, s6                 # t8 = E4484000
    or      t9, t6, s7                 # t9 = 00184008
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0xF100                 # t6 = F1000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      s8, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0x0400                 # t9 = 04000000
    ori     t9, t9, 0x0400             # t9 = 04000400
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    bne     $at, $zero, lbl_808004C0
    andi    t2, a1, 0xFFFF             # t2 = 00000060
    lw      v0, 0x0100($sp)
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    or      a1, $zero, $zero           # a1 = 00000000
    lh      t8, 0x01D6(v0)             # 000001D6
    lw      a0, 0x0000(v0)             # 00000000
    sw      t7, 0x0014($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800625B0
    sw      t8, 0x0010($sp)
    lui     t6, %hi(var_80800910)      # t6 = 80800000
    lh      t6, %lo(var_80800910)(t6)
    lui     $at, %hi(var_80800910)     # $at = 80800000
    lw      s0, 0x0020($sp)
    addiu   t9, t6, 0x012C             # t9 = 8080012C
    sh      t9, %lo(var_80800910)($at)
    lw      $ra, 0x0044($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    lw      s5, 0x0034($sp)
    lw      s6, 0x0038($sp)
    lw      s7, 0x003C($sp)
    lw      s8, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0100           # $sp += 0x100


func_80800690:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lw      v1, 0x0000(s0)             # 00000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0004             # t9 = DB060004
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      t9, 0x0000(v0)             # 00000000
    lw      t2, 0x00A4(s0)             # 000000A4
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      t2, 0x0004(v0)             # 00000004
    jal     func_8007EE5C
    lw      a0, 0x0000(s0)             # 00000000
    jal     func_80800000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80800134
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t3, 0x01E1(s0)             # 000001E1
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    beq     t3, $zero, lbl_8080073C
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sb      v1, 0x13E0(v0)             # 8011B9B0
    sb      v1, 0x13E1(v0)             # 8011B9B1
    sw      t4, 0x135C(v0)             # 8011B92C
    sw      $zero, 0x0098(s0)          # 00000098
    lui     t5, 0x8080                 # t5 = 80800000
    addiu   t5, t5, 0x37E8             # t5 = 808037E8
    addiu   t6, $zero, 0x01D0          # t6 = 000001D0
    sw      t6, 0x0010(s0)             # 00000010
    sw      t5, 0x000C(s0)             # 0000000C
lbl_8080073C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80800750:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t6, 0x0018($sp)
    lbu     t7, 0x01E0(t6)             # 000001E0
    beql    t7, $zero, lbl_80800790
    lw      a0, 0x0018($sp)
    jal     func_801C7818
    nop
    beq     v0, $zero, lbl_80800784
    nop
    jal     func_800ACE60
    nop
lbl_80800784:
    jal     func_801C7268
    nop
    lw      a0, 0x0018($sp)
lbl_80800790:
    jal     func_800911F4
    addiu   a1, a0, 0x01D0             # a1 = 000001D0
    jal     func_80001338
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808007B0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lbu     t6, 0x1210(t6)             # 80121210
    lui     t7, 0x8012                 # t7 = 80120000
    beql    t6, $zero, lbl_80800818
    sb      $zero, 0x01E0(s0)          # 000001E0
    lbu     t7, 0x1211(t7)             # 80121211
    lui     t8, 0x8012                 # t8 = 80120000
    beql    t7, $zero, lbl_80800818
    sb      $zero, 0x01E0(s0)          # 000001E0
    lbu     t8, 0x1212(t8)             # 80121212
    bnel    t8, $zero, lbl_80800818
    sb      $zero, 0x01E0(s0)          # 000001E0
    jal     func_801C7658
    nop
    beql    v0, $zero, lbl_8080080C
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    jal     func_800ACE60
    nop
    addiu   t9, $zero, 0x0001          # t9 = 00000001
lbl_8080080C:
    b       lbl_80800818
    sb      t9, 0x01E0(s0)             # 000001E0
    sb      $zero, 0x01E0(s0)          # 000001E0
lbl_80800818:
    lui     a3, 0x01A0                 # a3 = 01A00000
    lui     t0, 0x01A0                 # t0 = 01A00000
    addiu   t0, t0, 0x1E50             # t0 = 01A01E50
    addiu   a3, a3, 0xF000             # a3 = 019FF000
    subu    a2, t0, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    jal     func_800A01B8
    addiu   a0, s0, 0x0074             # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0024($sp)
    sw      v0, 0x00A4(s0)             # 000000A4
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     t2, 0x8012                 # t2 = 80120000
    lw      t2, -0x4600(t2)            # 8011BA00
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800AA6B0
    sh      t1, 0x0110(t2)             # 80120110
    addiu   a0, s0, 0x00A8             # a0 = 000000A8
    jal     func_80091858
    lw      a1, 0x0000(s0)             # 00000000
    lui     t3, %hi(func_80800690)     # t3 = 80800000
    lui     t4, %hi(func_80800750)     # t4 = 80800000
    addiu   t3, t3, %lo(func_80800690) # t3 = 80800690
    addiu   t4, t4, %lo(func_80800750) # t4 = 80800750
    lui     t5, 0x8012                 # t5 = 80120000
    sw      t3, 0x0004(s0)             # 00000004
    sw      t4, 0x0008(s0)             # 00000008
    sb      $zero, 0x01E1(s0)          # 000001E1
    addiu   t5, t5, 0xD500             # t5 = 8011D500
    lbu     t6, 0x02A8(t5)             # 8011D7A8
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    lui     $at, 0x8012                # $at = 80120000
    andi    t7, t6, 0x0001             # t7 = 00000000
    bne     t7, $zero, lbl_808008C4
    or      a0, s0, $zero              # a0 = 00000000
    ori     t8, $zero, 0xFEDC          # t8 = 0000FEDC
    lui     $at, 0x8012                # $at = 80120000
    b       lbl_808008C8
    sw      t8, -0x46DC($at)           # 8011B924
lbl_808008C4:
    sw      t9, -0x46DC($at)           # 8011B924
lbl_808008C8:
    jal     func_800912C4
    addiu   a1, s0, 0x01D0             # a1 = 000001D0
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, $zero, 0xFFFD          # t2 = FFFFFFFD
    addiu   t3, $zero, 0x003C          # t3 = 0000003C
    sh      $zero, 0x01DC(s0)          # 000001DC
    sh      t0, 0x01D4(s0)             # 000001D4
    sh      t1, 0x01D6(s0)             # 000001D6
    sh      t2, 0x01D8(s0)             # 000001D8
    sh      t3, 0x01DA(s0)             # 000001DA
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop
    nop
    nop

.section .data

var_80800910: .word 0x00000000, 0x00000000
var_80800918: .word 0x64646400, 0x64646400
var_80800920: .word 0xFFFFFF00, 0xFFFFFF00, 0x45454500, 0x00000000

.section .rodata

var_80800930: .word 0xC59AA92F
var_80800934: .word 0x457A28AB
var_80800938: .word 0x448BE2AE, 0x00000000

