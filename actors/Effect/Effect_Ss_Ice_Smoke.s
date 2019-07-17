.section .text
func_80B7E700:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    sw      a3, 0x0044($sp)
    lw      a0, 0x0038($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a0, $at
    sw      a0, 0x0024($sp)
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x0114          # a1 = 00000114
    lw      a0, 0x0024($sp)
    bltz    v0, lbl_80B7E808
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_80081688
    sw      v0, 0x002C($sp)
    beq     v0, $zero, lbl_80B7E808
    lui     t1, 0x0001                 # t1 = 00010000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0x0C38             # v0 = 80120C38
    lw      t8, 0x002C($sp)
    lw      t7, 0x0038($sp)
    lw      t6, 0x0018(v0)             # 80120C50
    sll     t9, t8,  4
    addu    t9, t9, t8
    sll     t9, t9,  2
    addu    t0, t7, t9
    addu    t1, t1, t0
    sw      t6, 0x0028($sp)
    lw      t1, 0x17B4(t1)             # 000117B4
    lui     $at, 0x8000                # $at = 80000000
    or      a0, s0, $zero              # a0 = 00000000
    addu    t2, t1, $at
    sw      t2, 0x0018(v0)             # 80120C50
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0044($sp)
    lw      a1, 0x0044($sp)
    addiu   a0, s0, 0x000C             # a0 = 0000000C
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, a1, 0x000C             # a1 = 0000000C
    lw      a1, 0x0044($sp)
    addiu   a0, s0, 0x0018             # a0 = 00000018
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, a1, 0x0018             # a1 = 00000018
    lw      t3, 0x002C($sp)
    sh      $zero, 0x0042(s0)          # 00000042
    lui     t8, %hi(func_80B7E820)     # t8 = 80B80000
    sh      t3, 0x0040(s0)             # 00000040
    lw      t4, 0x0044($sp)
    lui     t7, %hi(func_80B7EAE0)     # t7 = 80B80000
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    lh      t5, 0x0024(t4)             # 00000024
    addiu   t8, t8, %lo(func_80B7E820) # t8 = 80B7E820
    addiu   t7, t7, %lo(func_80B7EAE0) # t7 = 80B7EAE0
    sh      t6, 0x005C(s0)             # 0000005C
    sw      t8, 0x0028(s0)             # 00000028
    sw      t7, 0x0024(s0)             # 00000024
    sh      t5, 0x0044(s0)             # 00000044
    lw      t9, 0x0028($sp)
    lui     $at, 0x8012                # $at = 80120000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_80B7E80C
    sw      t9, 0x0C50($at)            # 80120C50
lbl_80B7E808:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B7E80C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B7E820:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a2, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s0, 0x0038($sp)
    sw      a1, 0x008C($sp)
    lh      t6, 0x0040(s2)             # 00000040
    lui     t9, 0x0001                 # t9 = 00010000
    lui     $at, 0x0001                # $at = 00010000
    sll     t7, t6,  4
    addu    t7, t7, t6
    sll     t7, t7,  2
    addu    t8, s1, t7
    addu    t9, t9, t8
    lw      t9, 0x17B4(t9)             # 000117B4
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, s1, $at
    sw      t9, 0x0080($sp)
    lw      s0, 0x0000(s1)             # 00000000
    sw      a0, 0x0048($sp)
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x0114          # a1 = 00000114
    lw      a0, 0x0048($sp)
    bltz    v0, lbl_80B7EAC0
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_80081688
    nop
    beql    v0, $zero, lbl_80B7EAC4
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xE700                 # t4 = E7000000
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    jal     func_8007E2C0
    lw      a0, 0x0000(s1)             # 00000000
    lw      a3, 0x0080($sp)
    lui     t2, 0x8012                 # t2 = 80120000
    lui     $at, 0x8000                # $at = 80000000
    addiu   t2, t2, 0x0C38             # t2 = 80120C38
    addu    t5, a3, $at
    sw      t5, 0x0018(t2)             # 80120C50
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0018             # t7 = DB060018
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      a3, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x30A0             # a1 = 060030A0
    sll     t3, a1,  4
    srl     t4, t3, 28
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sll     t5, t4,  2
    lui     t9, 0xDE00                 # t9 = DE000000
    addu    t6, t2, t5
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t9, 0x0000(v1)             # 00000000
    lw      t7, 0x0000(t6)             # 00000008
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t8, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t7, t8
    addu    t3, t9, $at
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xE700                 # t5 = E7000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    lui     $at, 0xC3EB                # $at = C3EB0000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lh      t8, 0x0042(s2)             # 00000042
    ori     $at, $at, 0xEB00           # $at = C3EBEB00
    lui     t5, 0xDB06                 # t5 = DB060000
    andi    t9, t8, 0x00FF             # t9 = 00000008
    or      t3, t9, $at                # t3 = C3EBEB08
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    ori     t5, t5, 0x0020             # t5 = DB060020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lh      v0, 0x005C(s2)             # 0000005C
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    sll     a2, v0,  2
    sll     a3, v0,  4
    sw      t3, 0x0028($sp)
    sw      t9, 0x0024($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      t6, 0x0010($sp)
    sw      v1, 0x0054($sp)
    subu    a3, a3, v0
    jal     func_8007EB84
    subu    a2, a2, v0
    lw      t1, 0x0054($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v0, 0x0004(t1)             # 00000004
    lwc1    $f12, 0x0000(s2)           # 00000000
    lwc1    $f14, 0x0004(s2)           # 00000004
    jal     func_800AA7F4
    lw      a2, 0x0008(s2)             # 00000008
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54
    addu    a0, s1, $at
    lh      t4, 0x0044(s2)             # 00000044
    lui     $at, %hi(var_80B7EB70)     # $at = 80B80000
    lwc1    $f8, %lo(var_80B7EB70)($at)
    mtc1    t4, $f4                    # $f4 = 0.00
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AA8FC
    mov.s   $f14, $f12
    jal     func_800AB900
    lw      a0, 0x0000(s1)             # 00000000
    beq     v0, $zero, lbl_80B7EAC8
    lui     t8, 0xDE00                 # t8 = DE000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      v0, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x3158             # a2 = 06003158
    sll     t9, a2,  4
    srl     t3, t9, 28
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sll     t4, t3,  2
    lui     t5, 0x8012                 # t5 = 80120000
    addu    t5, t5, t4
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t8, 0x0000(v1)             # 00000000
    lw      t5, 0x0C38(t5)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t6, a2, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t5, t6
    addu    t8, t7, $at
    sw      t8, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_80B7EACC
    lw      $ra, 0x0044($sp)
lbl_80B7EAC0:
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
lbl_80B7EAC4:
    sh      t9, 0x005C(s2)             # 0000005C
lbl_80B7EAC8:
    lw      $ra, 0x0044($sp)
lbl_80B7EACC:
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_80B7EAE0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a3, $at
    sw      a0, 0x0018($sp)
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x0114          # a1 = 00000114
    lw      v1, 0x0028($sp)
    lw      a0, 0x0018($sp)
    bltz    v0, lbl_80B7EB44
    or      a1, v0, $zero              # a1 = 00000000
    jal     func_80081688
    nop
    beq     v0, $zero, lbl_80B7EB44
    lw      v1, 0x0028($sp)
    lh      v0, 0x0042(v1)             # 00000042
    slti    $at, v0, 0x0064
    beq     $at, $zero, lbl_80B7EB4C
    addiu   t6, v0, 0x000A             # t6 = 0000000A
    beq     $zero, $zero, lbl_80B7EB4C
    sh      t6, 0x0042(v1)             # 00000042
lbl_80B7EB44:
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    sh      t7, 0x005C(v1)             # 0000005C
lbl_80B7EB4C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop

.section .data

.word 0x00000024
.word func_80B7E700
.word 0x00000000, 0x00000000

.section .rodata

var_80B7EB70: .word 0x38D1B717, 0x00000000, 0x00000000, 0x00000000

