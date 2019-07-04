.section .text
func_80B2DC40:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a2, $zero              # s0 = 00000000
    or      s1, a3, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80063CAC              # Vec3f_Copy
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a0, s0, 0x000C             # a0 = 0000000C
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, s1, 0x000C             # a1 = 0000000C
    addiu   a0, s0, 0x0018             # a0 = 00000018
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, s1, 0x0018             # a1 = 00000018
    lui     v1, 0x0401                 # v1 = 04010000
    addiu   v1, v1, 0xBF80             # v1 = 0400BF80
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
    lui     t4, %hi(func_80B2E284)     # t4 = 80B30000
    addu    t1, t9, t0
    addu    t2, t1, $at
    addiu   t3, $zero, 0x0018          # t3 = 00000018
    addiu   t4, t4, %lo(func_80B2E284) # t4 = 80B2E284
    sw      t2, 0x0038(s0)             # 00000038
    sh      t3, 0x005C(s0)             # 0000005C
    sw      t4, 0x0024(s0)             # 00000024
    lbu     t5, 0x0028(s1)             # 00000028
    lui     t7, %hi(var_80B2E498)      # t7 = 80B30000
    addiu   a0, $zero, 0x00FF          # a0 = 000000FF
    sll     t6, t5,  2
    addu    t7, t7, t6
    lw      t7, %lo(var_80B2E498)(t7)
    addiu   t0, $zero, 0x00C8          # t0 = 000000C8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t7, 0x0028(s0)             # 00000028
    lh      t8, 0x0024(s1)             # 00000024
    sh      t8, 0x0040(s0)             # 00000040
    lh      t9, 0x0026(s1)             # 00000026
    sh      a0, 0x0044(s0)             # 00000044
    sh      a0, 0x0046(s0)             # 00000046
    sh      a0, 0x0048(s0)             # 00000048
    sh      a0, 0x004A(s0)             # 0000004A
    sh      $zero, 0x004C(s0)          # 0000004C
    sh      $zero, 0x004E(s0)          # 0000004E
    sh      t0, 0x0050(s0)             # 00000050
    sh      t9, 0x0052(s0)             # 00000052
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80B2DD38:
    addiu   $sp, $sp, 0xFEB0           # $sp = FFFFFEB0
    sw      s1, 0x0018($sp)
    or      s1, a2, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    sw      a0, 0x0150($sp)
    sw      a1, 0x0154($sp)
    lw      t6, 0x0150($sp)
    lw      s0, 0x0000(t6)             # 00000000
    lh      t7, 0x0040(s1)             # 00000040
    lui     $at, %hi(var_80B2E4E0)     # $at = 80B30000
    lwc1    $f8, %lo(var_80B2E4E0)($at)
    mtc1    t7, $f4                    # $f4 = 0.00
    lw      a1, 0x0000(s1)             # 00000000
    lw      a2, 0x0004(s1)             # 00000004
    cvt.s.w $f6, $f4
    lw      a3, 0x0008(s1)             # 00000008
    addiu   a0, $sp, 0x010C            # a0 = FFFFFFBC
    mul.s   $f0, $f6, $f8
    jal     func_8008F82C              # guTranslateF
    swc1    $f0, 0x0040($sp)
    lwc1    $f0, 0x0040($sp)
    addiu   a0, $sp, 0x00CC            # a0 = FFFFFF7C
    lui     a3, 0x3F80                 # a3 = 3F800000
    mfc1    a1, $f0
    mfc1    a2, $f0
    jal     func_8008F4A8              # guScaleF
    nop
    lw      a1, 0x0150($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addiu   a0, $sp, 0x010C            # a0 = FFFFFFBC
    addiu   a2, $sp, 0x004C            # a2 = FFFFFEFC
    jal     func_8008EDB8
    addu    a1, a1, $at
    addiu   a0, $sp, 0x004C            # a0 = FFFFFEFC
    addiu   a1, $sp, 0x00CC            # a1 = FFFFFF7C
    jal     func_8008EDB8
    addiu   a2, $sp, 0x008C            # a2 = FFFFFF3C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8008FC98
    addiu   a1, $sp, 0x008C            # a1 = FFFFFF3C
    beq     v0, $zero, lbl_80B2DF14
    or      a1, v0, $zero              # a1 = 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      a1, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    jal     func_8007E930
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t1, 0xFA00                 # t1 = FA000000
    addiu   t0, v0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(v0)             # 00000000
    lh      t2, 0x004A(s1)             # 0000004A
    lh      t8, 0x0046(s1)             # 00000046
    lh      t5, 0x0044(s1)             # 00000044
    andi    t3, t2, 0x00FF             # t3 = 00000000
    lh      t2, 0x0048(s1)             # 00000048
    andi    t9, t8, 0x00FF             # t9 = 00000000
    sll     t6, t5, 24
    or      t7, t3, t6                 # t7 = 00000000
    sll     t0, t9, 16
    andi    t4, t2, 0x00FF             # t4 = 00000000
    sll     t5, t4,  8
    or      t1, t7, t0                 # t1 = 00000008
    or      t3, t1, t5                 # t3 = 00000008
    sw      t3, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFB00                 # t8 = FB000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v0)             # 00000000
    lh      t9, 0x0050(s1)             # 00000050
    lh      t3, 0x004E(s1)             # 0000004E
    lh      t4, 0x004C(s1)             # 0000004C
    andi    t7, t9, 0x00FF             # t7 = 00000000
    sll     t0, t7,  8
    andi    t6, t3, 0x00FF             # t6 = 00000008
    sll     t1, t4, 24
    or      t5, t0, t1                 # t5 = 00000008
    sll     t8, t6, 16
    or      t9, t5, t8                 # t9 = FB000008
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0020             # t2 = DB060020
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v0)             # 00000000
    lh      t4, 0x0042(s1)             # 00000042
    lui     v1, %hi(var_80B2E4A0)      # v1 = 80B30000
    lui     t8, 0x8012                 # t8 = 80120000
    sll     t0, t4,  2
    addu    v1, v1, t0
    lw      v1, %lo(var_80B2E4A0)(v1)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t3, v1,  4
    srl     t6, t3, 28
    sll     t5, t6,  2
    addu    t8, t8, t5
    lw      t8, 0x0C38(t8)             # 80120C38
    and     t1, v1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t1, t8
    addu    t7, t9, $at
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDE00                 # t4 = DE000000
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v0)             # 00000000
    lw      t0, 0x0038(s1)             # 00000038
    sw      t0, 0x0004(v0)             # 00000004
lbl_80B2DF14:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0150           # $sp = 00000000


func_80B2DF28:
    addiu   $sp, $sp, 0xFDF8           # $sp = FFFFFDF8
    sw      s8, 0x0068($sp)
    sw      s5, 0x005C($sp)
    sw      s0, 0x0048($sp)
    addiu   s0, $sp, 0x01C4            # s0 = FFFFFFBC
    or      s5, a2, $zero              # s5 = 00000000
    or      s8, a0, $zero              # s8 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s7, 0x0064($sp)
    sw      s6, 0x0060($sp)
    sw      s4, 0x0058($sp)
    sw      s3, 0x0054($sp)
    sw      s2, 0x0050($sp)
    sw      s1, 0x004C($sp)
    sdc1    $f30, 0x0040($sp)
    sdc1    $f28, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a1, 0x020C($sp)
    lui     $at, %hi(var_80B2E4E4)     # $at = 80B30000
    lw      s3, 0x0000(s8)             # 00000000
    lwc1    $f22, %lo(var_80B2E4E4)($at)
    lh      t7, 0x0040(s5)             # 00000040
    lh      t6, 0x0054(s5)             # 00000054
    lui     $at, %hi(var_80B2E4E8)     # $at = 80B30000
    mtc1    t7, $f6                    # $f6 = 0.00
    lwc1    $f10, %lo(var_80B2E4E8)($at)
    mtc1    t6, $f4                    # $f4 = 0.00
    cvt.s.w $f8, $f6
    or      a0, s0, $zero              # a0 = FFFFFFBC
    lw      a1, 0x0000(s5)             # 00000000
    lw      a2, 0x0004(s5)             # 00000004
    lw      a3, 0x0008(s5)             # 00000008
    cvt.s.w $f30, $f4
    mul.s   $f20, $f8, $f10
    jal     func_8008F82C              # guTranslateF
    nop
    addiu   s2, $sp, 0x0184            # s2 = FFFFFF7C
    mfc1    a1, $f20
    mfc1    a2, $f20
    or      a0, s2, $zero              # a0 = FFFFFF7C
    jal     func_8008F4A8              # guScaleF
    lui     a3, 0x3F80                 # a3 = 3F800000
    lui     $at, 0x0001                # $at = 00010000
    addiu   s4, $sp, 0x0104            # s4 = FFFFFEFC
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    a1, s8, $at
    or      a2, s4, $zero              # a2 = FFFFFEFC
    jal     func_8008EDB8
    or      a0, s0, $zero              # a0 = FFFFFFBC
    addiu   s1, $sp, 0x0144            # s1 = FFFFFF3C
    or      a2, s1, $zero              # a2 = FFFFFF3C
    or      a0, s4, $zero              # a0 = FFFFFEFC
    jal     func_8008EDB8
    or      a1, s2, $zero              # a1 = FFFFFF7C
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8008FC98
    or      a1, s1, $zero              # a1 = FFFFFF3C
    beq     v0, $zero, lbl_80B2E23C
    or      v1, v0, $zero              # v1 = 00000000
    lui     s7, 0xDA38                 # s7 = DA380000
    ori     s7, s7, 0x0003             # s7 = DA380003
    lw      s0, 0x02D0(s3)             # 000002D0
    or      a0, s3, $zero              # a0 = 00000000
    addiu   t8, s0, 0x0008             # t8 = FFFFFFC4
    sw      t8, 0x02D0(s3)             # 000002D0
    sw      v1, 0x0004(s0)             # FFFFFFC0
    sw      s7, 0x0000(s0)             # FFFFFFBC
    jal     func_8008FC98
    or      a1, s1, $zero              # a1 = FFFFFF3C
    beq     v0, $zero, lbl_80B2E23C
    or      s1, v0, $zero              # s1 = 00000000
    jal     func_8007E930
    or      a0, s3, $zero              # a0 = 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t0, 0xFA00                 # t0 = FA000000
    addiu   s2, $sp, 0x00C4            # s2 = FFFFFEBC
    addiu   t9, s0, 0x0008             # t9 = FFFFFFC4
    sw      t9, 0x02D0(s3)             # 000002D0
    sw      t0, 0x0000(s0)             # FFFFFFBC
    lh      t1, 0x004A(s5)             # 0000004A
    lh      t7, 0x0046(s5)             # 00000046
    lh      t4, 0x0044(s5)             # 00000044
    andi    t2, t1, 0x00FF             # t2 = 00000000
    lh      t1, 0x0048(s5)             # 00000048
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sll     t5, t4, 24
    or      t6, t2, t5                 # t6 = 00000000
    sll     t9, t8, 16
    andi    t3, t1, 0x00FF             # t3 = 00000000
    sll     t4, t3,  8
    or      t0, t6, t9                 # t0 = FFFFFFC4
    or      t2, t0, t4                 # t2 = FFFFFFC4
    sw      t2, 0x0004(s0)             # FFFFFFC0
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t7, 0xFB00                 # t7 = FB000000
    lui     s6, 0xDE00                 # s6 = DE000000
    addiu   t5, s0, 0x0008             # t5 = FFFFFFC4
    sw      t5, 0x02D0(s3)             # 000002D0
    sw      t7, 0x0000(s0)             # FFFFFFBC
    lh      t8, 0x0050(s5)             # 00000050
    lh      t2, 0x004E(s5)             # 0000004E
    lh      t3, 0x004C(s5)             # 0000004C
    andi    t6, t8, 0x00FF             # t6 = 00000000
    sll     t9, t6,  8
    andi    t5, t2, 0x00FF             # t5 = 000000C4
    sll     t0, t3, 24
    or      t4, t9, t0                 # t4 = FFFFFFC4
    sll     t7, t5, 16
    or      t8, t4, t7                 # t8 = FFFFFFC4
    sw      t8, 0x0004(s0)             # FFFFFFC0
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t1, 0xDB06                 # t1 = DB060000
    ori     t1, t1, 0x0020             # t1 = DB060020
    addiu   t6, s0, 0x0008             # t6 = FFFFFFC4
    sw      t6, 0x02D0(s3)             # 000002D0
    sw      t1, 0x0000(s0)             # FFFFFFBC
    lh      t3, 0x0042(s5)             # 00000042
    lui     v0, %hi(var_80B2E4C0)      # v0 = 80B30000
    lui     t7, 0x8012                 # t7 = 80120000
    sll     t9, t3,  2
    addu    v0, v0, t9
    lw      v0, %lo(var_80B2E4C0)(v0)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t2, v0,  4
    srl     t5, t2, 28
    sll     t4, t5,  2
    addu    t7, t7, t4
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t0, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t0, t7
    addu    t6, t8, $at
    sw      t6, 0x0004(s0)             # FFFFFFC0
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t3, 0x0401                 # t3 = 04010000
    addiu   t3, t3, 0xBFE8             # t3 = 0400BFE8
    addiu   t1, s0, 0x0008             # t1 = FFFFFFC4
    sw      t1, 0x02D0(s3)             # 000002D0
    sw      t3, 0x0004(s0)             # FFFFFFC0
    sw      s6, 0x0000(s0)             # FFFFFFBC
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     s4, 0x0401                 # s4 = 04010000
    addiu   s4, s4, 0xC040             # s4 = 0400C040
    addiu   t9, s0, 0x0008             # t9 = FFFFFFC4
    sw      t9, 0x02D0(s3)             # 000002D0
    sw      s4, 0x0004(s0)             # FFFFFFC0
    sw      s6, 0x0000(s0)             # FFFFFFBC
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800ABB18
    or      a1, s2, $zero              # a1 = FFFFFEBC
    jal     func_800AA764
    or      a0, s2, $zero              # a0 = FFFFFEBC
    lui     $at, %hi(var_80B2E4EC)     # $at = 80B30000
    lwc1    $f28, %lo(var_80B2E4EC)($at)
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f26                  # $f26 = 180.00
    lui     $at, %hi(var_80B2E4F0)     # $at = 80B30000
    mtc1    $zero, $f20                # $f20 = 0.00
    lwc1    $f24, %lo(var_80B2E4F0)($at)
    addiu   s2, $zero, 0x0001          # s2 = 00000001
lbl_80B2E1B8:
    mfc1    a2, $f30
    mov.s   $f12, $f20
    mov.s   $f14, $f20
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t2, 0x005C(s5)             # 0000005C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t2, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    mul.s   $f4, $f18, $f24
    jal     func_800AAD4C
    add.s   $f12, $f4, $f26
    mfc1    a2, $f22
    mov.s   $f12, $f22
    mov.s   $f14, $f22
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s1, 0x02D0(s3)             # 000002D0
    addiu   t5, s1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s3)             # 000002D0
    sw      s7, 0x0000(s1)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s8)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    addiu   s2, s2, 0xFFFF             # s2 = 00000000
    addiu   t4, s0, 0x0008             # t4 = FFFFFFC4
    sw      t4, 0x02D0(s3)             # 000002D0
    sw      s4, 0x0004(s0)             # FFFFFFC0
    sw      s6, 0x0000(s0)             # FFFFFFBC
    bgez    s2, lbl_80B2E1B8
    sub.s   $f22, $f22, $f28
lbl_80B2E23C:
    lw      $ra, 0x006C($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    ldc1    $f28, 0x0038($sp)
    ldc1    $f30, 0x0040($sp)
    lw      s0, 0x0048($sp)
    lw      s1, 0x004C($sp)
    lw      s2, 0x0050($sp)
    lw      s3, 0x0054($sp)
    lw      s4, 0x0058($sp)
    lw      s5, 0x005C($sp)
    lw      s6, 0x0060($sp)
    lw      s7, 0x0064($sp)
    lw      s8, 0x0068($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0208           # $sp = 00000000


func_80B2E284:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0014($sp)
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x005C(s0)             # 0000005C
    addiu   t7, $zero, 0x0017          # t7 = 00000017
    addiu   $at, $zero, 0x0003         # $at = 00000003
    subu    t8, t7, t6
    div     $zero, t8, $at
    lh      v0, 0x0052(s0)             # 00000052
    lh      t0, 0x0040(s0)             # 00000040
    mflo    t9
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    addu    t1, t0, v0
    sh      t9, 0x0042(s0)             # 00000042
    bne     v0, $at, lbl_80B2E300
    sh      t1, 0x0040(s0)             # 00000040
    lh      t2, 0x0054(s0)             # 00000054
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f8                   # $f8 = 4.00
    mtc1    t2, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    add.s   $f10, $f6, $f8
    trunc.w.s $f16, $f10
    mfc1    t4, $f16
    beq     $zero, $zero, lbl_80B2E32C
    sh      t4, 0x0054(s0)             # 00000054
lbl_80B2E300:
    lh      t5, 0x0054(s0)             # 00000054
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    mtc1    t5, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    add.s   $f8, $f4, $f6
    trunc.w.s $f10, $f8
    mfc1    t6, $f10
    nop
    sh      t6, 0x0054(s0)             # 00000054
lbl_80B2E32C:
    lh      v0, 0x005C(s0)             # 0000005C
    slti    $at, v0, 0x0017
    beq     $at, $zero, lbl_80B2E3D4
    slti    $at, v0, 0x000E
    bne     $at, $zero, lbl_80B2E3D4
    addiu   s1, v0, 0xFFF3             # s1 = FFFFFFF3
    lh      a0, 0x0044(s0)             # 00000044
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    jal     func_8001B8FC
    or      a2, s1, $zero              # a2 = FFFFFFF3
    sh      v0, 0x0044(s0)             # 00000044
    lh      a0, 0x0046(s0)             # 00000046
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    jal     func_8001B8FC
    or      a2, s1, $zero              # a2 = FFFFFFF3
    sh      v0, 0x0046(s0)             # 00000046
    lh      a0, 0x0048(s0)             # 00000048
    addiu   a1, $zero, 0x0096          # a1 = 00000096
    jal     func_8001B8FC
    or      a2, s1, $zero              # a2 = FFFFFFF3
    sh      v0, 0x0048(s0)             # 00000048
    lh      a0, 0x004A(s0)             # 0000004A
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    jal     func_8001B8FC
    or      a2, s1, $zero              # a2 = FFFFFFF3
    sh      v0, 0x004A(s0)             # 0000004A
    lh      a0, 0x004C(s0)             # 0000004C
    addiu   a1, $zero, 0x0096          # a1 = 00000096
    jal     func_8001B8FC
    or      a2, s1, $zero              # a2 = FFFFFFF3
    sh      v0, 0x004C(s0)             # 0000004C
    lh      a0, 0x004E(s0)             # 0000004E
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8001B8FC
    or      a2, s1, $zero              # a2 = FFFFFFF3
    sh      v0, 0x004E(s0)             # 0000004E
    lh      a0, 0x0050(s0)             # 00000050
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8001B8FC
    or      a2, s1, $zero              # a2 = FFFFFFF3
    beq     $zero, $zero, lbl_80B2E474
    sh      v0, 0x0050(s0)             # 00000050
lbl_80B2E3D4:
    slti    $at, v0, 0x000E
    beql    $at, $zero, lbl_80B2E478
    lw      $ra, 0x001C($sp)
    bltz    v0, lbl_80B2E474
    addiu   s1, v0, 0x0001             # s1 = 00000001
    lh      a0, 0x0044(s0)             # 00000044
    addiu   a1, $zero, 0x0032          # a1 = 00000032
    jal     func_8001B8FC
    or      a2, s1, $zero              # a2 = 00000001
    sh      v0, 0x0044(s0)             # 00000044
    lh      a0, 0x0046(s0)             # 00000046
    addiu   a1, $zero, 0x0032          # a1 = 00000032
    jal     func_8001B8FC
    or      a2, s1, $zero              # a2 = 00000001
    sh      v0, 0x0046(s0)             # 00000046
    lh      a0, 0x0048(s0)             # 00000048
    addiu   a1, $zero, 0x0032          # a1 = 00000032
    jal     func_8001B8FC
    or      a2, s1, $zero              # a2 = 00000001
    sh      v0, 0x0048(s0)             # 00000048
    lh      a0, 0x004A(s0)             # 0000004A
    addiu   a1, $zero, 0x0096          # a1 = 00000096
    jal     func_8001B8FC
    or      a2, s1, $zero              # a2 = 00000001
    sh      v0, 0x004A(s0)             # 0000004A
    lh      a0, 0x004C(s0)             # 0000004C
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    jal     func_8001B8FC
    or      a2, s1, $zero              # a2 = 00000001
    sh      v0, 0x004C(s0)             # 0000004C
    lh      a0, 0x004E(s0)             # 0000004E
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    jal     func_8001B8FC
    or      a2, s1, $zero              # a2 = 00000001
    sh      v0, 0x004E(s0)             # 0000004E
    lh      a0, 0x0050(s0)             # 00000050
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    jal     func_8001B8FC
    or      a2, s1, $zero              # a2 = 00000001
    sh      v0, 0x0050(s0)             # 00000050
lbl_80B2E474:
    lw      $ra, 0x001C($sp)
lbl_80B2E478:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    nop
    nop

.section .data

.word 0x00000003
.word func_80B2DC40
var_80B2E498: .word func_80B2DD38
.word func_80B2DF28
var_80B2E4A0: .word \
0x04007F80, 0x04008780, 0x04008F80, 0x04009780, \
0x04009F80, 0x0400A780, 0x0400AF80, 0x0400B780
var_80B2E4C0: .word \
0x04007F80, 0x04008780, 0x04008F80, 0x04009780, \
0x04009F80, 0x0400A780, 0x0400AF80, 0x0400B780

.section .rodata

var_80B2E4E0: .word 0x3C23D70A
var_80B2E4E4: .word 0x3F6CCCCD
var_80B2E4E8: .word 0x3C23D70A
var_80B2E4EC: .word 0x3E19999A
var_80B2E4F0: .word 0x3CA3D70A, 0x00000000, 0x00000000, 0x00000000

