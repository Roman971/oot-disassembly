.section .text
func_80AE2870:
    lwc1    $f2, 0x014C(a0)            # 0000014C
    lui     $at, 0xBF80                # $at = BF800000
    lwc1    $f0, 0x0148(a0)            # 00000148
    mtc1    $at, $f4                   # $f4 = -1.00
    swc1    $f2, 0x0148(a0)            # 00000148
    swc1    $f2, 0x0154(a0)            # 00000154
    swc1    $f0, 0x014C(a0)            # 0000014C
    swc1    $f4, 0x0158(a0)            # 00000158
    jr      $ra
    nop


func_80AE2898:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     v0, 0x01FA(s0)             # 000001FA
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    beq     v0, $zero, lbl_80AE28D0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_80AE28E8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     $zero, $zero, lbl_80AE291C
    lw      $ra, 0x001C($sp)
lbl_80AE28D0:
    jal     func_80027C98
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lbu     t6, 0x01FA(s0)             # 000001FA
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x01FA(s0)             # 000001FA
    addiu   a0, s0, 0x013C             # a0 = 0000013C
lbl_80AE28E8:
    lw      a1, 0x014C(s0)             # 0000014C
    jal     func_8008D6A8
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80AE2918
    lw      a0, 0x0020($sp)
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    jal     func_80027C98
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lbu     t8, 0x01FA(s0)             # 000001FA
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x01FA(s0)             # 000001FA
lbl_80AE2918:
    lw      $ra, 0x001C($sp)
lbl_80AE291C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AE292C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     v0, 0x01FA(s0)             # 000001FA
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    beq     v0, $zero, lbl_80AE2964
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_80AE297C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     $zero, $zero, lbl_80AE29B0
    lw      $ra, 0x001C($sp)
lbl_80AE2964:
    jal     func_80027C98
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lbu     t6, 0x01FA(s0)             # 000001FA
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x01FA(s0)             # 000001FA
    addiu   a0, s0, 0x013C             # a0 = 0000013C
lbl_80AE297C:
    lw      a1, 0x014C(s0)             # 0000014C
    jal     func_8008D6A8
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80AE29AC
    lw      a0, 0x0020($sp)
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    jal     func_80027C98
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lbu     t8, 0x01FA(s0)             # 000001FA
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x01FA(s0)             # 000001FA
lbl_80AE29AC:
    lw      $ra, 0x001C($sp)
lbl_80AE29B0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AE29C0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     v0, 0x01FA(s0)             # 000001FA
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    beq     v0, $zero, lbl_80AE2A00
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80AE2A1C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $at, lbl_80AE2A54
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     $zero, $zero, lbl_80AE2A88
    lw      $ra, 0x001C($sp)
lbl_80AE2A00:
    jal     func_80027C98
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80AE2870
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t6, 0x01FA(s0)             # 000001FA
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x01FA(s0)             # 000001FA
lbl_80AE2A1C:
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      a1, 0x014C(s0)             # 0000014C
    jal     func_8008D6A8
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80AE2A84
    lw      a0, 0x0020($sp)
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    jal     func_80027C98
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lbu     t8, 0x01FA(s0)             # 000001FA
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x01FA(s0)             # 000001FA
    addiu   a0, s0, 0x013C             # a0 = 0000013C
lbl_80AE2A54:
    lw      a1, 0x014C(s0)             # 0000014C
    jal     func_8008D6A8
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80AE2A84
    lw      a0, 0x0020($sp)
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    jal     func_80027C98
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lbu     t0, 0x01FA(s0)             # 000001FA
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sb      t1, 0x01FA(s0)             # 000001FA
lbl_80AE2A84:
    lw      $ra, 0x001C($sp)
lbl_80AE2A88:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AE2A98:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     v0, 0x01FA(s0)             # 000001FA
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    beq     v0, $zero, lbl_80AE2AD0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_80AE2AE8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     $zero, $zero, lbl_80AE2B1C
    lw      $ra, 0x001C($sp)
lbl_80AE2AD0:
    jal     func_80027C98
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lbu     t6, 0x01FA(s0)             # 000001FA
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x01FA(s0)             # 000001FA
    addiu   a0, s0, 0x013C             # a0 = 0000013C
lbl_80AE2AE8:
    lw      a1, 0x014C(s0)             # 0000014C
    jal     func_8008D6A8
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80AE2B18
    lw      a0, 0x0020($sp)
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    jal     func_80027C98
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    lbu     t8, 0x01FA(s0)             # 000001FA
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x01FA(s0)             # 000001FA
lbl_80AE2B18:
    lw      $ra, 0x001C($sp)
lbl_80AE2B1C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AE2B2C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     v0, 0x01FA(s0)             # 000001FA
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    beq     v0, $zero, lbl_80AE2B64
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_80AE2B84
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     $zero, $zero, lbl_80AE2BB8
    lw      $ra, 0x001C($sp)
lbl_80AE2B64:
    jal     func_80027C98
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80AE2870
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t6, 0x01FA(s0)             # 000001FA
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x01FA(s0)             # 000001FA
    addiu   a0, s0, 0x013C             # a0 = 0000013C
lbl_80AE2B84:
    lw      a1, 0x014C(s0)             # 0000014C
    jal     func_8008D6A8
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80AE2BB4
    lw      a0, 0x0020($sp)
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    jal     func_80027C98
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    lbu     t8, 0x01FA(s0)             # 000001FA
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x01FA(s0)             # 000001FA
lbl_80AE2BB4:
    lw      $ra, 0x001C($sp)
lbl_80AE2BB8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AE2BC8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     v0, 0x01FA(s0)             # 000001FA
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    beq     v0, $zero, lbl_80AE2C00
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_80AE2C18
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     $zero, $zero, lbl_80AE2C4C
    lw      $ra, 0x001C($sp)
lbl_80AE2C00:
    jal     func_80027C98
    addiu   a2, $zero, 0x0009          # a2 = 00000009
    lbu     t6, 0x01FA(s0)             # 000001FA
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x01FA(s0)             # 000001FA
    addiu   a0, s0, 0x013C             # a0 = 0000013C
lbl_80AE2C18:
    lw      a1, 0x014C(s0)             # 0000014C
    jal     func_8008D6A8
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80AE2C48
    lw      a0, 0x0020($sp)
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    jal     func_80027C98
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    lbu     t8, 0x01FA(s0)             # 000001FA
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x01FA(s0)             # 000001FA
lbl_80AE2C48:
    lw      $ra, 0x001C($sp)
lbl_80AE2C4C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AE2C5C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     v0, 0x01FA(s0)             # 000001FA
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    beq     v0, $zero, lbl_80AE2C94
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_80AE2CB4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     $zero, $zero, lbl_80AE2CE8
    lw      $ra, 0x001C($sp)
lbl_80AE2C94:
    jal     func_80027C98
    addiu   a2, $zero, 0x0009          # a2 = 00000009
    jal     func_80AE2870
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t6, 0x01FA(s0)             # 000001FA
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x01FA(s0)             # 000001FA
    addiu   a0, s0, 0x013C             # a0 = 0000013C
lbl_80AE2CB4:
    lw      a1, 0x014C(s0)             # 0000014C
    jal     func_8008D6A8
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80AE2CE4
    lw      a0, 0x0020($sp)
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    jal     func_80027C98
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    lbu     t8, 0x01FA(s0)             # 000001FA
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x01FA(s0)             # 000001FA
lbl_80AE2CE4:
    lw      $ra, 0x001C($sp)
lbl_80AE2CE8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AE2CF8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     v0, 0x01FA(s0)             # 000001FA
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    beq     v0, $zero, lbl_80AE2D30
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_80AE2D48
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     $zero, $zero, lbl_80AE2D7C
    lw      $ra, 0x001C($sp)
lbl_80AE2D30:
    jal     func_80027C98
    addiu   a2, $zero, 0x000B          # a2 = 0000000B
    lbu     t6, 0x01FA(s0)             # 000001FA
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x01FA(s0)             # 000001FA
    addiu   a0, s0, 0x013C             # a0 = 0000013C
lbl_80AE2D48:
    lw      a1, 0x014C(s0)             # 0000014C
    jal     func_8008D6A8
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80AE2D78
    lw      a0, 0x0020($sp)
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    jal     func_80027C98
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    lbu     t8, 0x01FA(s0)             # 000001FA
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x01FA(s0)             # 000001FA
lbl_80AE2D78:
    lw      $ra, 0x001C($sp)
lbl_80AE2D7C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AE2D8C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     v0, 0x01FA(s0)             # 000001FA
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    beq     v0, $zero, lbl_80AE2DC4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_80AE2DDC
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     $zero, $zero, lbl_80AE2E10
    lw      $ra, 0x001C($sp)
lbl_80AE2DC4:
    jal     func_80027C98
    addiu   a2, $zero, 0x000C          # a2 = 0000000C
    lbu     t6, 0x01FA(s0)             # 000001FA
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x01FA(s0)             # 000001FA
    addiu   a0, s0, 0x013C             # a0 = 0000013C
lbl_80AE2DDC:
    lw      a1, 0x014C(s0)             # 0000014C
    jal     func_8008D6A8
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80AE2E0C
    lw      a0, 0x0020($sp)
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    jal     func_80027C98
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lbu     t8, 0x01FA(s0)             # 000001FA
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x01FA(s0)             # 000001FA
lbl_80AE2E0C:
    lw      $ra, 0x001C($sp)
lbl_80AE2E10:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AE2E20:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     v0, 0x01FA(s0)             # 000001FA
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    beq     v0, $zero, lbl_80AE2E58
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_80AE2E70
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     $zero, $zero, lbl_80AE2EA4
    lw      $ra, 0x001C($sp)
lbl_80AE2E58:
    jal     func_80027C98
    addiu   a2, $zero, 0x000D          # a2 = 0000000D
    lbu     t6, 0x01FA(s0)             # 000001FA
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x01FA(s0)             # 000001FA
    addiu   a0, s0, 0x013C             # a0 = 0000013C
lbl_80AE2E70:
    lw      a1, 0x014C(s0)             # 0000014C
    jal     func_8008D6A8
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80AE2EA0
    lw      a0, 0x0020($sp)
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    jal     func_80027C98
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    lbu     t8, 0x01FA(s0)             # 000001FA
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x01FA(s0)             # 000001FA
lbl_80AE2EA0:
    lw      $ra, 0x001C($sp)
lbl_80AE2EA4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AE2EB4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     v0, 0x01FA(s0)             # 000001FA
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    beq     v0, $zero, lbl_80AE2EEC
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_80AE2F0C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     $zero, $zero, lbl_80AE2F40
    lw      $ra, 0x001C($sp)
lbl_80AE2EEC:
    jal     func_80027C98
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    jal     func_80AE2870
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t6, 0x01FA(s0)             # 000001FA
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x01FA(s0)             # 000001FA
    addiu   a0, s0, 0x013C             # a0 = 0000013C
lbl_80AE2F0C:
    lw      a1, 0x014C(s0)             # 0000014C
    jal     func_8008D6A8
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80AE2F3C
    lw      a0, 0x0020($sp)
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    jal     func_80027C98
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    lbu     t8, 0x01FA(s0)             # 000001FA
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x01FA(s0)             # 000001FA
lbl_80AE2F3C:
    lw      $ra, 0x001C($sp)
lbl_80AE2F40:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AE2F50:
    sw      a1, 0x0004($sp)
    andi    a1, a1, 0x00FF             # a1 = 00000000
    sb      a1, 0x01FB(a0)             # 000001FB
    sb      $zero, 0x01FA(a0)          # 000001FA
    jr      $ra
    nop


func_80AE2F68:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lbu     t6, 0x01FB(a0)             # 000001FB
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sltiu   $at, t7, 0x000B
    beq     $at, $zero, lbl_80AE3040
    sll     t7, t7,  2
    lui     $at, %hi(var_80AE4AC0)     # $at = 80AE0000
    addu    $at, $at, t7
    lw      t7, %lo(var_80AE4AC0)($at)
    jr      t7
    nop
var_80AE2F98:
    jal     func_80AE2898
    nop
    beq     $zero, $zero, lbl_80AE3044
    lw      $ra, 0x0014($sp)
var_80AE2FA8:
    jal     func_80AE292C
    nop
    beq     $zero, $zero, lbl_80AE3044
    lw      $ra, 0x0014($sp)
var_80AE2FB8:
    jal     func_80AE29C0
    nop
    beq     $zero, $zero, lbl_80AE3044
    lw      $ra, 0x0014($sp)
var_80AE2FC8:
    jal     func_80AE2A98
    nop
    beq     $zero, $zero, lbl_80AE3044
    lw      $ra, 0x0014($sp)
var_80AE2FD8:
    jal     func_80AE2B2C
    nop
    beq     $zero, $zero, lbl_80AE3044
    lw      $ra, 0x0014($sp)
var_80AE2FE8:
    jal     func_80AE2BC8
    nop
    beq     $zero, $zero, lbl_80AE3044
    lw      $ra, 0x0014($sp)
var_80AE2FF8:
    jal     func_80AE2C5C
    nop
    beq     $zero, $zero, lbl_80AE3044
    lw      $ra, 0x0014($sp)
var_80AE3008:
    jal     func_80AE2CF8
    nop
    beq     $zero, $zero, lbl_80AE3044
    lw      $ra, 0x0014($sp)
var_80AE3018:
    jal     func_80AE2D8C
    nop
    beq     $zero, $zero, lbl_80AE3044
    lw      $ra, 0x0014($sp)
var_80AE3028:
    jal     func_80AE2E20
    nop
    beq     $zero, $zero, lbl_80AE3044
    lw      $ra, 0x0014($sp)
var_80AE3038:
    jal     func_80AE2EB4
    nop
lbl_80AE3040:
    lw      $ra, 0x0014($sp)
lbl_80AE3044:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AE3050:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lh      t6, 0x01D0(s0)             # 000001D0
    beql    t6, $zero, lbl_80AE325C
    lw      t2, 0x0144(s0)             # 00000144
    lhu     t7, 0x010E(s0)             # 0000010E
    addiu   t8, t7, 0xEFD1             # t8 = FFFFEFD1
    sltiu   $at, t8, 0x0018
    beq     $at, $zero, lbl_80AE3288
    sll     t8, t8,  2
    lui     $at, %hi(var_80AE4AEC)     # $at = 80AE0000
    addu    $at, $at, t8
    lw      t8, %lo(var_80AE4AEC)($at)
    jr      t8
    nop
var_80AE3094:
    lbu     v0, 0x01F8(s0)             # 000001F8
    bnel    v0, $zero, lbl_80AE30C4
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    lbu     t9, 0x01FB(s0)             # 000001FB
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    beql    t9, $at, lbl_80AE30C4
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    jal     func_80AE2F50
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lbu     v0, 0x01F8(s0)             # 000001F8
    addiu   v1, $zero, 0x0002          # v1 = 00000002
lbl_80AE30C4:
    bnel    v1, v0, lbl_80AE30EC
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lbu     t0, 0x01FB(s0)             # 000001FB
    or      a0, s0, $zero              # a0 = 00000000
    beql    v1, t0, lbl_80AE30EC
    addiu   $at, $zero, 0x0005         # $at = 00000005
    jal     func_80AE2F50
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lbu     v0, 0x01F8(s0)             # 000001F8
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_80AE30EC:
    bnel    v0, $at, lbl_80AE3118
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    lbu     t1, 0x01FB(s0)             # 000001FB
    addiu   $at, $zero, 0x0008         # $at = 00000008
    or      a0, s0, $zero              # a0 = 00000000
    beql    t1, $at, lbl_80AE3118
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    jal     func_80AE2F50
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    lbu     v0, 0x01F8(s0)             # 000001F8
    addiu   $at, $zero, 0x000B         # $at = 0000000B
lbl_80AE3118:
    bne     v0, $at, lbl_80AE3288
    nop
    lbu     t2, 0x01FB(s0)             # 000001FB
    addiu   $at, $zero, 0x0009         # $at = 00000009
    or      a0, s0, $zero              # a0 = 00000000
    beq     t2, $at, lbl_80AE3288
    nop
    jal     func_80AE2F50
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    beq     $zero, $zero, lbl_80AE3288
    nop
var_80AE3144:
    lbu     v0, 0x01F8(s0)             # 000001F8
    bnel    v0, $zero, lbl_80AE3174
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lbu     t3, 0x01FB(s0)             # 000001FB
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    beql    t3, $at, lbl_80AE3174
    addiu   $at, $zero, 0x0001         # $at = 00000001
    jal     func_80AE2F50
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lbu     v0, 0x01F8(s0)             # 000001F8
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80AE3174:
    bnel    v0, $at, lbl_80AE31A0
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lbu     t4, 0x01FB(s0)             # 000001FB
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    beql    v1, t4, lbl_80AE31A0
    addiu   $at, $zero, 0x0005         # $at = 00000005
    jal     func_80AE2F50
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lbu     v0, 0x01F8(s0)             # 000001F8
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_80AE31A0:
    bnel    v0, $at, lbl_80AE31CC
    addiu   $at, $zero, 0x0007         # $at = 00000007
    lbu     t5, 0x01FB(s0)             # 000001FB
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    or      a0, s0, $zero              # a0 = 00000000
    beql    t5, $at, lbl_80AE31CC
    addiu   $at, $zero, 0x0007         # $at = 00000007
    jal     func_80AE2F50
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    lbu     v0, 0x01F8(s0)             # 000001F8
    addiu   $at, $zero, 0x0007         # $at = 00000007
lbl_80AE31CC:
    bne     v0, $at, lbl_80AE3288
    nop
    lbu     t6, 0x01FB(s0)             # 000001FB
    addiu   $at, $zero, 0x0009         # $at = 00000009
    or      a0, s0, $zero              # a0 = 00000000
    beq     t6, $at, lbl_80AE3288
    nop
    jal     func_80AE2F50
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    beq     $zero, $zero, lbl_80AE3288
    nop
var_80AE31F8:
    lbu     t7, 0x01F8(s0)             # 000001F8
    bne     t7, $zero, lbl_80AE3288
    nop
    lbu     t8, 0x01FB(s0)             # 000001FB
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    beq     t8, $at, lbl_80AE3288
    nop
    jal     func_80AE2F50
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     $zero, $zero, lbl_80AE3288
    nop
var_80AE3228:
    lbu     t9, 0x01F8(s0)             # 000001F8
    bne     t9, $zero, lbl_80AE3288
    nop
    lbu     t0, 0x01FB(s0)             # 000001FB
    addiu   $at, $zero, 0x0006         # $at = 00000006
    or      a0, s0, $zero              # a0 = 00000000
    beq     t0, $at, lbl_80AE3288
    nop
    jal     func_80AE2F50
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    beq     $zero, $zero, lbl_80AE3288
    nop
    lw      t2, 0x0144(s0)             # 00000144
lbl_80AE325C:
    lui     t1, 0x0600                 # t1 = 06000000
    addiu   t1, t1, 0x02C8             # t1 = 060002C8
    beq     t1, t2, lbl_80AE3288
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    jal     func_80027C98
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AE2F50
    or      a1, $zero, $zero           # a1 = 00000000
lbl_80AE3288:
    jal     func_80AE2F68
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80AE32A4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a1, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    sll     a0, v0, 16
    sra     a0, a0, 16
    lbu     v1, 0x01F9(a2)             # 000001F9
    or      a1, v0, $zero              # a1 = 00000000
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v1, $at, lbl_80AE32F4
    or      v0, a0, $zero              # v0 = 00000000
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v1, $at, lbl_80AE32F4
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_80AE32F4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v1, $at, lbl_80AE3310
lbl_80AE32F4:
    sll     t6, a1, 16
    sra     t7, t6, 16
    beql    t7, v1, lbl_80AE3314
    sb      a0, 0x01F9(a2)             # 000001F9
    lbu     t8, 0x01F8(a2)             # 000001F8
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x01F8(a2)             # 000001F8
lbl_80AE3310:
    sb      a0, 0x01F9(a2)             # 000001F9
lbl_80AE3314:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AE3324:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_800597C0
    addiu   a1, $zero, 0x0011          # a1 = 00000011
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_80AE334C
    andi    v1, v0, 0xFFFF             # v1 = 00000000
    beq     $zero, $zero, lbl_80AE33FC
    or      v0, v1, $zero              # v0 = 00000000
lbl_80AE334C:
    lui     v1, 0x8012                 # v1 = 80120000
    sb      $zero, 0x01F8(a0)          # 000001F8
    sb      $zero, 0x01F9(a0)          # 000001F9
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t6, -0x73C8(t6)            # 800F8C38
    lw      t7, 0x00A4(v1)             # 8011A674
    and     t8, t6, t7
    beql    t8, $zero, lbl_80AE3380
    lhu     t9, 0x0ED4(v1)             # 8011B4A4
    beq     $zero, $zero, lbl_80AE33FC
    addiu   v0, $zero, 0x1045          # v0 = 00001045
    lhu     t9, 0x0ED4(v1)             # 8011B4A4
lbl_80AE3380:
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x8C70             # a1 = 800F8C70
    andi    t0, t9, 0x0010             # t0 = 00000000
    beq     t0, $zero, lbl_80AE339C
    lui     a2, 0x8010                 # a2 = 80100000
    beq     $zero, $zero, lbl_80AE33FC
    addiu   v0, $zero, 0x1034          # v0 = 00001034
lbl_80AE339C:
    lhu     v0, 0x0070(v1)             # 8011A640
    lhu     t1, 0x0002(a1)             # 800F8C72
    addiu   a2, a2, 0x8CC0             # a2 = 800F8CC0
    lbu     t3, 0x0001(a2)             # 800F8CC1
    and     t2, v0, t1
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    srav    t4, t2, t3
    bnel    a0, t4, lbl_80AE33E4
    lhu     t9, 0x0EF8(v1)             # 8011B4C8
    lhu     t5, 0x0000(a1)             # 800F8C70
    lbu     t7, 0x0000(a2)             # 800F8CC0
    and     t6, v0, t5
    srav    t8, t6, t7
    bnel    a0, t8, lbl_80AE33E4
    lhu     t9, 0x0EF8(v1)             # 8011B4C8
    beq     $zero, $zero, lbl_80AE33FC
    addiu   v0, $zero, 0x1033          # v0 = 00001033
    lhu     t9, 0x0EF8(v1)             # 8011B4C8
lbl_80AE33E4:
    addiu   v0, $zero, 0x102F          # v0 = 0000102F
    andi    t0, t9, 0x1000             # t0 = 00000000
    beq     t0, $zero, lbl_80AE33FC
    nop
    beq     $zero, $zero, lbl_80AE33FC
    addiu   v0, $zero, 0x1030          # v0 = 00001030
lbl_80AE33FC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AE340C:
    sw      a0, 0x0000($sp)
    sb      $zero, 0x01F8(a1)          # 000001F8
    sb      $zero, 0x01F9(a1)          # 000001F9
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B54(t6)            # 8011B4AC
    addiu   v0, $zero, 0x1046          # v0 = 00001046
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80AE3438
    nop
    jr      $ra
    addiu   v0, $zero, 0x1028          # v0 = 00001028
lbl_80AE3438:
    jr      $ra
    nop


func_80AE3440:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      a0, 0x0000($sp)
    sb      $zero, 0x01F8(a1)          # 000001F8
    sb      $zero, 0x01F9(a1)          # 000001F9
    lhu     t6, 0x0EDC(v0)             # 8011B4AC
    andi    t7, t6, 0x0100             # t7 = 00000000
    beql    t7, $zero, lbl_80AE3488
    lhu     t0, 0x0ED4(v0)             # 8011B4A4
    lhu     t8, 0x0EFA(v0)             # 8011B4CA
    andi    t9, t8, 0x0200             # t9 = 00000000
    beq     t9, $zero, lbl_80AE347C
    nop
    jr      $ra
    addiu   v0, $zero, 0x1071          # v0 = 00001071
lbl_80AE347C:
    jr      $ra
    addiu   v0, $zero, 0x1070          # v0 = 00001070
lbl_80AE3484:
    lhu     t0, 0x0ED4(v0)             # 00001F44
lbl_80AE3488:
    andi    t1, t0, 0x0400             # t1 = 00000000
    beql    t1, $zero, lbl_80AE34A0
    lhu     t2, 0x0EFA(v0)             # 00001F6A
    jr      $ra
    addiu   v0, $zero, 0x1068          # v0 = 00001068
lbl_80AE349C:
    lhu     t2, 0x0EFA(v0)             # 00001F62
lbl_80AE34A0:
    addiu   v0, $zero, 0x1060          # v0 = 00001060
    andi    t3, t2, 0x0020             # t3 = 00000000
    beq     t3, $zero, lbl_80AE34B8
    nop
    jr      $ra
    addiu   v0, $zero, 0x1061          # v0 = 00001061
lbl_80AE34B8:
    jr      $ra
    nop


func_80AE34C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lh      v0, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x0028         # $at = 00000028
    beq     v0, $at, lbl_80AE3500
    addiu   $at, $zero, 0x0055         # $at = 00000055
    beq     v0, $at, lbl_80AE34F0
    addiu   $at, $zero, 0x005B         # $at = 0000005B
    beq     v0, $at, lbl_80AE3510
    nop
    beq     $zero, $zero, lbl_80AE3520
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE34F0:
    jal     func_80AE3324
    nop
    beq     $zero, $zero, lbl_80AE3524
    lw      $ra, 0x0014($sp)
lbl_80AE3500:
    jal     func_80AE340C
    nop
    beq     $zero, $zero, lbl_80AE3524
    lw      $ra, 0x0014($sp)
lbl_80AE3510:
    jal     func_80AE3440
    nop
    beq     $zero, $zero, lbl_80AE3524
    lw      $ra, 0x0014($sp)
lbl_80AE3520:
    lw      $ra, 0x0014($sp)
lbl_80AE3524:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AE3530:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_80AE32A4
    lw      a1, 0x0018($sp)
    sltiu   $at, v0, 0x000A
    beq     $at, $zero, lbl_80AE3654
    sll     t6, v0,  2
    lui     $at, %hi(var_80AE4B4C)     # $at = 80AE0000
    addu    $at, $at, t6
    lw      t6, %lo(var_80AE4B4C)($at)
    jr      t6
    nop
var_80AE356C:
    beq     $zero, $zero, lbl_80AE3658
    addiu   v0, $zero, 0x0001          # v0 = 00000001
var_80AE3574:
    lw      t7, 0x001C($sp)
    addiu   $at, $zero, 0x1028         # $at = 00001028
    lhu     v0, 0x010E(t7)             # 0000010E
    beq     v0, $at, lbl_80AE35B8
    addiu   $at, $zero, 0x102F         # $at = 0000102F
    beq     v0, $at, lbl_80AE35D4
    addiu   $at, $zero, 0x1033         # $at = 00001033
    beq     v0, $at, lbl_80AE3634
    addiu   $at, $zero, 0x1060         # $at = 00001060
    beq     v0, $at, lbl_80AE35FC
    addiu   $at, $zero, 0x1067         # $at = 00001067
    beq     v0, $at, lbl_80AE3634
    addiu   $at, $zero, 0x1070         # $at = 00001070
    beq     v0, $at, lbl_80AE3618
    nop
    beq     $zero, $zero, lbl_80AE3658
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE35B8:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0ED4(v0)             # 8011B4A4
    ori     t9, t8, 0x8000             # t9 = 00008000
    sh      t9, 0x0ED4(v0)             # 8011B4A4
    beq     $zero, $zero, lbl_80AE3658
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE35D4:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t0, 0x0ED4(v0)             # 8011B4A4
    lhu     t2, 0x0EF8(v0)             # 8011B4C8
    ori     t1, t0, 0x0004             # t1 = 00000004
    ori     t3, t2, 0x1000             # t3 = 00001000
    sh      t1, 0x0ED4(v0)             # 8011B4A4
    sh      t3, 0x0EF8(v0)             # 8011B4C8
    beq     $zero, $zero, lbl_80AE3658
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE35FC:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t4, 0x0EFA(v0)             # 8011B4CA
    ori     t5, t4, 0x0020             # t5 = 00000020
    sh      t5, 0x0EFA(v0)             # 8011B4CA
    beq     $zero, $zero, lbl_80AE3658
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE3618:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0EFA(v0)             # 8011B4CA
    ori     t7, t6, 0x0200             # t7 = 00000200
    sh      t7, 0x0EFA(v0)             # 8011B4CA
    beq     $zero, $zero, lbl_80AE3658
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE3634:
    beq     $zero, $zero, lbl_80AE3658
    addiu   v0, $zero, 0x0002          # v0 = 00000002
var_80AE363C:
    jal     func_800D6110
    lw      a0, 0x0018($sp)
    beql    v0, $zero, lbl_80AE3658
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_80AE3658
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80AE3654:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AE3658:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AE3668:
    sw      a0, 0x0000($sp)
    lh      v0, 0x00A4(a1)             # 000000A4
    addiu   $at, $zero, 0x0055         # $at = 00000055
    lui     v1, 0x8012                 # v1 = 80120000
    bne     v0, $at, lbl_80AE36A8
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t6, 0x0ED6(v1)             # 8011B4A6
    andi    t7, t6, 0x1000             # t7 = 00000000
    bne     t7, $zero, lbl_80AE36A8
    nop
    lhu     t8, 0x0EDC(v1)             # 8011B4AC
    andi    t9, t8, 0x0001             # t9 = 00000000
    bne     t9, $zero, lbl_80AE36A8
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AE36A8:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   $at, $zero, 0x0028         # $at = 00000028
    bne     v0, $at, lbl_80AE36EC
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t0, 0x0ED6(v1)             # 8011B4A6
    andi    t1, t0, 0x1000             # t1 = 00000000
    bnel    t1, $zero, lbl_80AE36DC
    lw      t4, 0x0004(v1)             # 8011A5D4
    lhu     t2, 0x0EDC(v1)             # 8011B4AC
    andi    t3, t2, 0x0001             # t3 = 00000000
    beql    t3, $zero, lbl_80AE36F0
    addiu   $at, $zero, 0x005B         # $at = 0000005B
    lw      t4, 0x0004(v1)             # 8011A5D4
lbl_80AE36DC:
    beql    t4, $zero, lbl_80AE36F0
    addiu   $at, $zero, 0x005B         # $at = 0000005B
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AE36EC:
    addiu   $at, $zero, 0x005B         # $at = 0000005B
lbl_80AE36F0:
    bnel    v0, $at, lbl_80AE3704
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AE3700:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE3704:
    jr      $ra
    nop


func_80AE370C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      v0, 0x01FC(a2)             # 000001FC
    bne     v0, $zero, lbl_80AE372C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80AE3734
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80AE372C:
    sh      t6, 0x01FC(a2)             # 000001FC
    lh      v1, 0x01FC(a2)             # 000001FC
lbl_80AE3734:
    bnel    v1, $zero, lbl_80AE3778
    lw      $ra, 0x0014($sp)
    lh      t7, 0x01FE(a2)             # 000001FE
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x01FE(a2)             # 000001FE
    lh      t9, 0x01FE(a2)             # 000001FE
    slti    $at, t9, 0x0003
    bnel    $at, $zero, lbl_80AE3778
    lw      $ra, 0x0014($sp)
    jal     func_80063BF0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    sh      v0, 0x01FC(a2)             # 000001FC
    sh      $zero, 0x01FE(a2)          # 000001FE
    lw      $ra, 0x0014($sp)
lbl_80AE3778:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AE3784:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lui     $at, 0x432A                # $at = 432A0000
    mtc1    $at, $f6                   # $f6 = 170.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    lw      t6, 0x003C($sp)
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    c.lt.s  $f4, $f6
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    or      v1, $zero, $zero           # v1 = 00000000
    lw      a2, 0x1C44(t6)             # 00001C44
    bc1f    lbl_80AE3844
    nop
    lh      t7, 0x008A(s0)             # 0000008A
    lh      t8, 0x00B6(s0)             # 000000B6
    mtc1    t7, $f8                    # $f8 = 0.00
    mtc1    t8, $f16                   # $f16 = 0.00
    cvt.s.w $f10, $f8
    cvt.s.w $f18, $f16
    sub.s   $f4, $f10, $f18
    trunc.w.s $f6, $f4
    mfc1    v0, $f6
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80AE3808
    subu    v1, $zero, v0
    sll     v1, v0, 16
    beq     $zero, $zero, lbl_80AE3810
    sra     v1, v1, 16
lbl_80AE3808:
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_80AE3810:
    sh      v1, 0x0032($sp)
    jal     func_80027620
    sw      a2, 0x0034($sp)
    lh      v1, 0x0032($sp)
    lw      a2, 0x0034($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    slt     $at, v0, v1
    bne     $at, $zero, lbl_80AE383C
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    beq     $zero, $zero, lbl_80AE3844
    addiu   a3, $zero, 0x0002          # a3 = 00000002
lbl_80AE383C:
    beq     $zero, $zero, lbl_80AE3844
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80AE3844:
    lh      t0, 0x01D0(s0)             # 000001D0
    lui     t2, %hi(func_80AE3F2C)     # t2 = 80AE0000
    addiu   t2, t2, %lo(func_80AE3F2C) # t2 = 80AE3F2C
    beq     t0, $zero, lbl_80AE385C
    lw      t3, 0x003C($sp)
    addiu   a3, $zero, 0x0004          # a3 = 00000004
lbl_80AE385C:
    lw      v0, 0x0180(s0)             # 00000180
    lui     t1, %hi(func_80AE4348)     # t1 = 80AE0000
    addiu   t1, t1, %lo(func_80AE4348) # t1 = 80AE4348
    bne     t1, v0, lbl_80AE3878
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80AE3878:
    bne     t2, v0, lbl_80AE3888
    addiu   a1, s0, 0x01D0             # a1 = 000001D0
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80AE3888:
    lbu     t4, 0x1D6C(t3)             # 00001D6C
    lui     t5, 0x800F                 # t5 = 800F0000
    lw      t6, 0x003C($sp)
    bnel    t4, $zero, lbl_80AE38AC
    lw      t8, 0x00E0(t6)             # 000000E0
    lw      t5, -0x0E60(t5)            # 800EF1A0
    beql    t5, $zero, lbl_80AE38D8
    lw      t0, 0x0024(a2)             # 00000024
    lw      t8, 0x00E0(t6)             # 000000E0
lbl_80AE38AC:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    sw      t8, 0x01E8(s0)             # 000001E8
    lw      t7, 0x00E4(t6)             # 000000E4
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    sw      t7, 0x01EC(s0)             # 000001EC
    lw      t8, 0x00E8(t6)             # 000000E8
    swc1    $f8, 0x01E4(s0)            # 000001E4
    beq     $zero, $zero, lbl_80AE3918
    sw      t8, 0x01F0(s0)             # 000001F0
    lw      t0, 0x0024(a2)             # 00000024
lbl_80AE38D8:
    lui     t1, 0x8012                 # t1 = 80120000
    lui     $at, 0xC190                # $at = C1900000
    sw      t0, 0x01E8(s0)             # 000001E8
    lw      t9, 0x0028(a2)             # 00000028
    sw      t9, 0x01EC(s0)             # 000001EC
    lw      t0, 0x002C(a2)             # 0000002C
    sw      t0, 0x01F0(s0)             # 000001F0
    lw      t1, -0x5A2C(t1)            # 8011A5D4
    blezl   t1, lbl_80AE3910
    mtc1    $at, $f10                  # $f10 = -18.00
    mtc1    $zero, $f16                # $f16 = 0.00
    beq     $zero, $zero, lbl_80AE3918
    swc1    $f16, 0x01E4(s0)           # 000001E4
    mtc1    $at, $f10                  # $f10 = -18.00
lbl_80AE3910:
    nop
    swc1    $f10, 0x01E4(s0)           # 000001E4
lbl_80AE3918:
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    sh      v1, 0x002E($sp)
    jal     func_80027854
    sw      a1, 0x0028($sp)
    lw      t3, 0x0180(s0)             # 00000180
    lui     t2, %hi(func_80AE424C)     # t2 = 80AE0000
    addiu   t2, t2, %lo(func_80AE424C) # t2 = 80AE424C
    beq     t2, t3, lbl_80AE398C
    lh      v1, 0x002E($sp)
    beql    v1, $zero, lbl_80AE3990
    lw      $ra, 0x0024($sp)
    lh      t4, 0x01C4(s0)             # 000001C4
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    mtc1    t4, $f18                   # $f18 = 0.00
    lui     t5, %hi(func_80AE34C0)     # t5 = 80AE0000
    lui     t6, %hi(func_80AE3530)     # t6 = 80AE0000
    cvt.s.w $f4, $f18
    addiu   t6, t6, %lo(func_80AE3530) # t6 = 80AE3530
    addiu   t5, t5, %lo(func_80AE34C0) # t5 = 80AE34C0
    sw      t5, 0x0010($sp)
    sw      t6, 0x0014($sp)
    lw      a0, 0x003C($sp)
    add.s   $f8, $f4, $f6
    or      a1, s0, $zero              # a1 = 00000000
    lw      a2, 0x0028($sp)
    mfc1    a3, $f8
    jal     func_800271FC
    nop
lbl_80AE398C:
    lw      $ra, 0x0024($sp)
lbl_80AE3990:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80AE39A0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lh      a2, 0x001C(s0)             # 0000001C
    ori     $at, $zero, 0xFF00         # $at = 0000FF00
    lui     t6, 0x0001                 # t6 = 00010000
    andi    a2, a2, 0xFF00             # a2 = 00000000
    bne     a2, $at, lbl_80AE39D0
    addu    t6, t6, a1
    beq     $zero, $zero, lbl_80AE3AF8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE39D0:
    lw      t6, 0x1E08(t6)             # 00011E08
    sra     t7, a2,  8
    sll     t8, t7,  3
    addu    a0, t6, t8
    lw      v1, 0x0004(a0)             # 00000004
    lui     t2, 0x8012                 # t2 = 80120000
    lh      t4, 0x0202(s0)             # 00000202
    sll     t9, v1,  4
    srl     t0, t9, 28
    sll     t1, t0,  2
    addu    t2, t2, t1
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t2, 0x0C38(t2)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t3, v1, $at
    sll     t5, t4,  2
    lui     $at, 0x8000                # $at = 80000000
    subu    t5, t5, t4
    addu    v0, t2, t3
    addu    v0, v0, $at
    sll     t5, t5,  1
    addu    v0, v0, t5
    lh      t7, 0x0000(v0)             # 00000000
    lh      t6, 0x0004(v0)             # 00000004
    lwc1    $f8, 0x0024(s0)            # 00000024
    mtc1    t7, $f4                    # $f4 = 0.00
    mtc1    t6, $f10                   # $f10 = 0.00
    lwc1    $f18, 0x002C(s0)           # 0000002C
    cvt.s.w $f6, $f4
    sw      a0, 0x0034($sp)
    cvt.s.w $f16, $f10
    sub.s   $f12, $f6, $f8
    sub.s   $f14, $f16, $f18
    swc1    $f12, 0x002C($sp)
    jal     func_800CD76C
    swc1    $f14, 0x0028($sp)
    lui     $at, %hi(var_80AE4B74)     # $at = 80AE0000
    lwc1    $f4, %lo(var_80AE4B74)($at)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0010($sp)
    mul.s   $f6, $f0, $f4
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    trunc.w.s $f8, $f6
    mfc1    a1, $f8
    nop
    sll     a1, a1, 16
    jal     func_80064508
    sra     a1, a1, 16
    lwc1    $f12, 0x002C($sp)
    lwc1    $f14, 0x0028($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mul.s   $f10, $f12, $f12
    mtc1    $at, $f4                   # $f4 = 100.00
    or      v0, $zero, $zero           # v0 = 00000000
    mul.s   $f16, $f14, $f14
    add.s   $f18, $f10, $f16
    c.lt.s  $f18, $f4
    nop
    bc1f    lbl_80AE3AF8
    nop
    lh      t0, 0x0202(s0)             # 00000202
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x0202(s0)             # 00000202
    lw      t3, 0x0034($sp)
    lh      t2, 0x0202(s0)             # 00000202
    lbu     t4, 0x0000(t3)             # 00000000
    slt     $at, t2, t4
    bne     $at, $zero, lbl_80AE3AF0
    nop
    sh      $zero, 0x0202(s0)          # 00000202
lbl_80AE3AF0:
    beq     $zero, $zero, lbl_80AE3AF8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AE3AF8:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80AE3B0C:
    or      a2, a1, $zero              # a2 = 00000000
    lh      v1, 0x001C(a0)             # 0000001C
    ori     $at, $zero, 0xFF00         # $at = 0000FF00
    lui     t6, 0x0001                 # t6 = 00010000
    andi    v1, v1, 0xFF00             # v1 = 00000000
    bne     v1, $at, lbl_80AE3B30
    addu    t6, t6, a2
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AE3B30:
    lw      t6, 0x1E08(t6)             # 00011E08
    sra     t7, v1,  8
    sll     t8, t7,  3
    addu    a1, t6, t8
    lw      t0, 0x0004(a1)             # 00000004
    lui     t3, 0x8012                 # t3 = 80120000
    lbu     t5, 0x0000(a1)             # 00000000
    sll     t9, t0,  4
    srl     t1, t9, 28
    sll     t2, t1,  2
    addu    t3, t3, t2
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t3, 0x0C38(t3)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t4, t0, $at
    sll     t7, t5,  2
    lui     $at, 0x8000                # $at = 80000000
    subu    t7, t7, t5
    addu    a3, t3, t4
    addu    a3, a3, $at
    sll     t7, t7,  1
    addu    a3, a3, t7
    lh      t6, -0x0006(a3)            # FFFFFFFA
    addiu   a3, a3, 0xFFFA             # a3 = FFFFFFFA
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0024(a0)            # 00000024
    lh      t8, 0x0002(a3)             # FFFFFFFC
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0028(a0)           # 00000028
    lh      t9, 0x0004(a3)             # FFFFFFFE
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x002C(a0)           # 0000002C
    jr      $ra
    nop


func_80AE3BD4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lh      v0, 0x00A4(a1)             # 000000A4
    addiu   $at, $zero, 0x0028         # $at = 00000028
    lui     v1, 0x8012                 # v1 = 80120000
    beq     v0, $at, lbl_80AE3C64
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t6, -0x73C8(t6)            # 800F8C38
    lw      t7, 0x00A4(v1)             # 8011A674
    and     t8, t6, t7
    beql    t8, $zero, lbl_80AE3C38
    lui     $at, 0x43C8                # $at = 43C80000
    lhu     t9, 0x0ED6(v1)             # 8011B4A6
    addiu   $at, $zero, 0x0055         # $at = 00000055
    andi    t0, t9, 0x1000             # t0 = 00000000
    bnel    t0, $zero, lbl_80AE3C38
    lui     $at, 0x43C8                # $at = 43C80000
    bne     v0, $at, lbl_80AE3C34
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f0                   # $f0 = 100.00
    beq     $zero, $zero, lbl_80AE3C44
    lh      a2, 0x0200(a0)             # 00000200
lbl_80AE3C34:
    lui     $at, 0x43C8                # $at = 43C80000
lbl_80AE3C38:
    mtc1    $at, $f0                   # $f0 = 400.00
    nop
    lh      a2, 0x0200(a0)             # 00000200
lbl_80AE3C44:
    mfc1    a3, $f0
    jal     func_80027BA8
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    sh      v0, 0x0200(a0)             # 00000200
    lh      t1, 0x0200(a0)             # 00000200
    beq     $zero, $zero, lbl_80AE3C70
    sb      t1, 0x00C8(a0)             # 000000C8
lbl_80AE3C64:
    sh      t2, 0x0200(a0)             # 00000200
    lh      t3, 0x0200(a0)             # 00000200
    sb      t3, 0x00C8(a0)             # 000000C8
lbl_80AE3C70:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AE3C80:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x41C0                 # a3 = 41C00000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   t6, s0, 0x0248             # t6 = 00000248
    addiu   t7, s0, 0x02AE             # t7 = 000002AE
    addiu   t8, $zero, 0x0011          # t8 = 00000011
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a2, a2, 0x7FB8             # a2 = 06007FB8
    sw      a1, 0x0044($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C788
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      a1, 0x0040($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80AE4920)      # a3 = 80AE0000
    lw      a1, 0x0040($sp)
    addiu   a3, a3, %lo(var_80AE4920)  # a3 = 80AE4920
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, %hi(var_80AE494C)      # a2 = 80AE0000
    addiu   a2, a2, %lo(var_80AE494C)  # a2 = 80AE494C
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050370
    or      a1, $zero, $zero           # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AE3668
    or      a1, s1, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_80AE3D44
    lw      a0, 0x0044($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AE3E6C
    lw      $ra, 0x003C($sp)
lbl_80AE3D44:
    lui     a1, %hi(var_80AE4958)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80AE4958)  # a1 = 80AE4958
    jal     func_80027C98
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f4, 0x0024(s0)            # 00000024
    addiu   t9, $zero, 0x0006          # t9 = 00000006
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    sb      t9, 0x001F(s0)             # 0000001F
    sh      t0, 0x0200(s0)             # 00000200
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    swc1    $f6, 0x0014($sp)
    lwc1    $f8, 0x002C(s0)            # 0000002C
    sw      t1, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0018          # a3 = 00000018
    jal     func_800253F0
    swc1    $f8, 0x0018($sp)
    lh      v1, 0x00A4(s1)             # 000000A4
    addiu   a0, $zero, 0x0055          # a0 = 00000055
    lui     v0, 0x8012                 # v0 = 80120000
    bne     a0, v1, lbl_80AE3DD4
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t2, 0x0ED4(v0)             # 8011B4A4
    andi    t3, t2, 0x0010             # t3 = 00000000
    beq     t3, $zero, lbl_80AE3E20
lbl_80AE3DD4:
    lui     v0, 0x8012                 # v0 = 80120000
    bne     a0, v1, lbl_80AE3E04
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t4, 0x0ED4(v0)             # 8011B4A4
    lui     t6, 0x8010                 # t6 = 80100000
    andi    t5, t4, 0x0010             # t5 = 00000000
    beql    t5, $zero, lbl_80AE3E08
    addiu   $at, $zero, 0x005B         # $at = 0000005B
    lw      t6, -0x73C8(t6)            # 800F8C38
    lw      t7, 0x00A4(v0)             # 8011A674
    and     t8, t6, t7
    bne     t8, $zero, lbl_80AE3E20
lbl_80AE3E04:
    addiu   $at, $zero, 0x005B         # $at = 0000005B
lbl_80AE3E08:
    bnel    v1, $at, lbl_80AE3E4C
    addiu   $at, $zero, 0x0028         # $at = 00000028
    lhu     t9, 0x0ED4(v0)             # 8011B4A4
    andi    t0, t9, 0x0400             # t0 = 00000000
    bnel    t0, $zero, lbl_80AE3E4C
    addiu   $at, $zero, 0x0028         # $at = 00000028
lbl_80AE3E20:
    lw      t2, 0x0024(s0)             # 00000024
    lw      t1, 0x0028(s0)             # 00000028
    lui     t3, %hi(func_80AE3F7C)     # t3 = 80AE0000
    sw      t2, 0x0008(s0)             # 00000008
    lw      t2, 0x002C(s0)             # 0000002C
    addiu   t3, t3, %lo(func_80AE3F7C) # t3 = 80AE3F7C
    sw      t3, 0x0180(s0)             # 00000180
    sw      t1, 0x000C(s0)             # 0000000C
    beq     $zero, $zero, lbl_80AE3E68
    sw      t2, 0x0010(s0)             # 00000010
    addiu   $at, $zero, 0x0028         # $at = 00000028
lbl_80AE3E4C:
    beq     v1, $at, lbl_80AE3E5C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AE3B0C
    or      a1, s1, $zero              # a1 = 00000000
lbl_80AE3E5C:
    lui     t4, %hi(func_80AE3EA8)     # t4 = 80AE0000
    addiu   t4, t4, %lo(func_80AE3EA8) # t4 = 80AE3EA8
    sw      t4, 0x0180(s0)             # 00000180
lbl_80AE3E68:
    lw      $ra, 0x003C($sp)
lbl_80AE3E6C:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80AE3E7C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x0184             # a1 = 00000184
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AE3EA8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      t7, 0x0144(s0)             # 00000144
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x02C8             # t6 = 060002C8
    bne     t6, t7, lbl_80AE3EE8
    lw      a0, 0x0024($sp)
    addiu   a1, s0, 0x0204             # a1 = 00000204
    addiu   a2, s0, 0x0226             # a2 = 00000226
    jal     func_80027D30
    addiu   a3, $zero, 0x0011          # a3 = 00000011
    beq     $zero, $zero, lbl_80AE3F10
    nop
lbl_80AE3EE8:
    lh      t8, 0x01D0(s0)             # 000001D0
    bne     t8, $zero, lbl_80AE3F10
    nop
    lbu     t9, 0x01FB(s0)             # 000001FB
    addiu   $at, $zero, 0x0007         # $at = 00000007
    or      a0, s0, $zero              # a0 = 00000000
    beq     t9, $at, lbl_80AE3F10
    nop
    jal     func_80AE2F50
    addiu   a1, $zero, 0x0007          # a1 = 00000007
lbl_80AE3F10:
    jal     func_80AE3050
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80AE3F2C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t7, 0x0018($sp)
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x02C8             # t6 = 060002C8
    lw      t8, 0x0144(t7)             # 00000144
    lw      a0, 0x001C($sp)
    addiu   a1, t7, 0x0204             # a1 = 00000204
    bne     t6, t8, lbl_80AE3F64
    addiu   a2, t7, 0x0226             # a2 = 00000226
    jal     func_80027D30
    addiu   a3, $zero, 0x0011          # a3 = 00000011
lbl_80AE3F64:
    jal     func_80AE2F68
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AE3F7C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x1C44(t6)             # 00001C44
    sw      v0, 0x002C($sp)
    jal     func_80AE3050
    sw      v0, 0x0024($sp)
    lh      v0, 0x01D0(s0)             # 000001D0
    bnel    v0, $zero, lbl_80AE40B8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lh      v0, 0x008A(s0)             # 0000008A
    addiu   a0, s0, 0x0008             # a0 = 00000008
    sh      v0, 0x0032(s0)             # 00000032
    sh      v0, 0x00B6(s0)             # 000000B6
    lw      a1, 0x0024($sp)
    jal     func_80063F00
    addiu   a1, a1, 0x0024             # a1 = 00000024
    sh      v0, 0x0022($sp)
    lwc1    $f4, 0x0008(s0)            # 00000008
    sll     a0, v0, 16
    sra     a0, a0, 16
    jal     func_800636C4              # sins?
    swc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f8                   # $f8 = 60.00
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f18, 0x0010(s0)           # 00000010
    mul.s   $f10, $f8, $f0
    swc1    $f18, 0x002C(s0)           # 0000002C
    add.s   $f16, $f6, $f10
    swc1    $f16, 0x0024(s0)           # 00000024
    jal     func_80063684              # coss?
    lh      a0, 0x0022($sp)
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f8                   # $f8 = 60.00
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lh      t7, 0x008A(s0)             # 0000008A
    mul.s   $f6, $f8, $f0
    lui     $at, %hi(var_80AE4B78)     # $at = 80AE0000
    mtc1    t7, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    add.s   $f10, $f4, $f6
    swc1    $f10, 0x002C(s0)           # 0000002C
    lh      t8, 0x0022($sp)
    lwc1    $f6, %lo(var_80AE4B78)($at)
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f4, $f8
    sub.s   $f0, $f18, $f4
    abs.s   $f0, $f0
    mul.s   $f10, $f0, $f6
    nop
    mul.s   $f2, $f10, $f12
    c.lt.s  $f2, $f14
    nop
    bc1f    lbl_80AE4090
    nop
    swc1    $f14, 0x0158(s0)           # 00000158
    beq     $zero, $zero, lbl_80AE40B4
    lh      v0, 0x01D0(s0)             # 000001D0
lbl_80AE4090:
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_80AE40AC
    mov.s   $f0, $f2
    beq     $zero, $zero, lbl_80AE40AC
    mov.s   $f0, $f12
    mov.s   $f0, $f2
lbl_80AE40AC:
    swc1    $f0, 0x0158(s0)            # 00000158
    lh      v0, 0x01D0(s0)             # 000001D0
lbl_80AE40B4:
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80AE40B8:
    bne     v0, $at, lbl_80AE4184
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     t9, 0x8010                 # t9 = 80100000
    lw      t9, -0x73C8(t9)            # 800F8C38
    lw      t0, 0x00A4(v1)             # 8011A674
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    and     t1, t9, t0
    beql    t1, $zero, lbl_80AE4114
    lw      a0, 0x0034($sp)
    lhu     t2, 0x0ED6(v1)             # 8011B4A6
    lw      a0, 0x0034($sp)
    andi    t3, t2, 0x1000             # t3 = 00000000
    bnel    t3, $zero, lbl_80AE4114
    lw      a0, 0x0034($sp)
    lh      t4, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x0055         # $at = 00000055
    addiu   t5, $zero, 0x0037          # t5 = 00000037
    bne     t4, $at, lbl_80AE4110
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      t5, 0x03DC($at)            # 000103DC
lbl_80AE4110:
    lw      a0, 0x0034($sp)
lbl_80AE4114:
    addiu   $at, $zero, 0x0055         # $at = 00000055
    lh      v0, 0x00A4(a0)             # 000000A4
    bnel    v0, $at, lbl_80AE4138
    addiu   $at, $zero, 0x005B         # $at = 0000005B
    lhu     t6, 0x0ED4(v1)             # 8011B4A4
    ori     t7, t6, 0x0010             # t7 = 00000010
    sh      t7, 0x0ED4(v1)             # 8011B4A4
    lh      v0, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x005B         # $at = 0000005B
lbl_80AE4138:
    bne     v0, $at, lbl_80AE414C
    nop
    lhu     t8, 0x0ED4(v1)             # 8011B4A4
    ori     t9, t8, 0x0400             # t9 = 00000400
    sh      t9, 0x0ED4(v1)             # 8011B4A4
lbl_80AE414C:
    jal     func_80AE2F50
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AE2F68
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f16                  # $f16 = 1.50
    lui     t1, %hi(func_80AE4348)     # t1 = 80AE0000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, t1, %lo(func_80AE4348) # t1 = 80AE4348
    sh      t0, 0x0202(s0)             # 00000202
    sh      $zero, 0x01D0(s0)          # 000001D0
    sw      t1, 0x0180(s0)             # 00000180
    beq     $zero, $zero, lbl_80AE4238
    swc1    $f16, 0x0068(s0)           # 00000068
lbl_80AE4184:
    lw      t3, 0x0144(s0)             # 00000144
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   t2, t2, 0x02C8             # t2 = 060002C8
    bne     t2, t3, lbl_80AE41AC
    lw      a0, 0x0034($sp)
    addiu   a1, s0, 0x0204             # a1 = 00000204
    addiu   a2, s0, 0x0226             # a2 = 00000226
    jal     func_80027D30
    addiu   a3, $zero, 0x0011          # a3 = 00000011
    lh      v0, 0x01D0(s0)             # 000001D0
lbl_80AE41AC:
    bne     v0, $zero, lbl_80AE4238
    lw      t4, 0x0034($sp)
    lh      t5, 0x00A4(t4)             # 000000A4
    addiu   $at, $zero, 0x005B         # $at = 0000005B
    lw      v1, 0x002C($sp)
    bnel    t5, $at, lbl_80AE423C
    lw      $ra, 0x001C($sp)
    lw      v0, 0x0670(v1)             # 00000670
    lui     $at, 0x0200                # $at = 02000000
    addiu   a1, $zero, 0x0022          # a1 = 00000022
    sll     t6, v0,  7
    bgez    t6, lbl_80AE4200
    or      t7, v0, $at                # t7 = 02000000
    sw      t7, 0x0670(v1)             # 00000670
    sw      s0, 0x0698(v1)             # 00000698
    jal     func_800DD400
    lw      a0, 0x0034($sp)
    lui     t8, %hi(func_80AE424C)     # t8 = 80AE0000
    addiu   t8, t8, %lo(func_80AE424C) # t8 = 80AE424C
    beq     $zero, $zero, lbl_80AE4238
    sw      t8, 0x0180(s0)             # 00000180
lbl_80AE4200:
    lh      t9, 0x01C4(s0)             # 000001C4
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f18                  # $f18 = 30.00
    mtc1    t9, $f4                    # $f4 = 0.00
    lwc1    $f8, 0x0090(s0)            # 00000090
    lui     $at, 0x0080                # $at = 00800000
    cvt.s.w $f6, $f4
    or      t0, v0, $at                # t0 = 00800000
    add.s   $f10, $f18, $f6
    c.lt.s  $f8, $f10
    nop
    bc1fl   lbl_80AE423C
    lw      $ra, 0x001C($sp)
    sw      t0, 0x0670(v1)             # 00000670
lbl_80AE4238:
    lw      $ra, 0x001C($sp)
lbl_80AE423C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80AE424C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lui     v1, 0x0001                 # v1 = 00010000
    addu    v1, v1, s0
    lhu     v1, 0x04C6(v1)             # 000104C6
    lui     t6, %hi(func_80AE3F7C)     # t6 = 80AE0000
    lw      v0, 0x1C44(s0)             # 00001C44
    slti    $at, v1, 0x0004
    bne     $at, $zero, lbl_80AE429C
    addiu   t6, t6, %lo(func_80AE3F7C) # t6 = 80AE3F7C
    lui     $at, 0x0001                # $at = 00010000
    sw      t6, 0x0180(s1)             # 00000180
    addu    $at, $at, s0
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    beq     $zero, $zero, lbl_80AE4334
    sh      t7, 0x04C6($at)            # 000104C6
lbl_80AE429C:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v1, $at, lbl_80AE4324
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t8, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lh      t0, 0x01C4(s1)             # 000001C4
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    mtc1    t0, $f4                    # $f4 = 0.00
    addiu   t9, $zero, 0x1067          # t9 = 00001067
    sh      t9, 0x010E(s1)             # 0000010E
    cvt.s.w $f6, $f4
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    add.s   $f10, $f6, $f8
    mfc1    a2, $f10
    jal     func_80022A68
    nop
    lui     t1, %hi(func_80AE3F7C)     # t1 = 80AE0000
    addiu   t1, t1, %lo(func_80AE3F7C) # t1 = 80AE3F7C
    lui     $at, 0x0001                # $at = 00010000
    sw      t1, 0x0180(s1)             # 00000180
    addu    $at, $at, s0
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    beq     $zero, $zero, lbl_80AE4334
    sh      t2, 0x04C6($at)            # 000104C6
lbl_80AE4324:
    lw      t3, 0x0670(v0)             # 00000670
    lui     $at, 0x0080                # $at = 00800000
    or      t4, t3, $at                # t4 = 00800000
    sw      t4, 0x0670(v0)             # 00000670
lbl_80AE4334:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80AE4348:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    addiu   a1, s0, 0x0204             # a1 = 00000204
    addiu   a2, s0, 0x0226             # a2 = 00000226
    jal     func_80027D30
    addiu   a3, $zero, 0x0011          # a3 = 00000011
    jal     func_80AE2F68
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AE39A0
    lw      a1, 0x0024($sp)
    beql    v0, $zero, lbl_80AE43A4
    lwl     t8, 0x0030(s0)             # 00000030
    lh      t6, 0x0202(s0)             # 00000202
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    beq     t6, $zero, lbl_80AE43BC
    lui     t9, 0x8010                 # t9 = 80100000
    lwl     t8, 0x0030(s0)             # 00000030
lbl_80AE43A4:
    lwr     t8, 0x0033(s0)             # 00000033
    swl     t8, 0x00B4(s0)             # 000000B4
    swr     t8, 0x00B7(s0)             # 000000B7
    lhu     t8, 0x0034(s0)             # 00000034
    beq     $zero, $zero, lbl_80AE445C
    sh      t8, 0x00B8(s0)             # 000000B8
lbl_80AE43BC:
    lw      t9, -0x73C8(t9)            # 800F8C38
    lw      t0, 0x00A4(v0)             # 8011A674
    or      a0, s0, $zero              # a0 = 00000000
    and     t1, t9, t0
    beq     t1, $zero, lbl_80AE4424
    nop
    lhu     t2, 0x0ED6(v0)             # 8011B4A6
    lw      t4, 0x0024($sp)
    andi    t3, t2, 0x1000             # t3 = 00000000
    bne     t3, $zero, lbl_80AE4424
    nop
    lh      t5, 0x00A4(t4)             # 000000A4
    addiu   $at, $zero, 0x0055         # $at = 00000055
    bne     t5, $at, lbl_80AE4424
    nop
    jal     func_800D6218
    or      a0, t4, $zero              # a0 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0ED6(v0)             # 8011B4A6
    or      a0, s0, $zero              # a0 = 00000000
    ori     t7, t6, 0x1000             # t7 = 00001000
    jal     func_80020EB4
    sh      t7, 0x0ED6(v0)             # 8011B4A6
    beq     $zero, $zero, lbl_80AE4460
    lw      $ra, 0x001C($sp)
lbl_80AE4424:
    jal     func_80AE2F50
    addiu   a1, $zero, 0x000B          # a1 = 0000000B
    lw      t9, 0x0024(s0)             # 00000024
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      t8, 0x0028(s0)             # 00000028
    sw      t9, 0x0008(s0)             # 00000008
    lw      t9, 0x002C(s0)             # 0000002C
    lui     t0, %hi(func_80AE3F2C)     # t0 = 80AE0000
    addiu   t0, t0, %lo(func_80AE3F2C) # t0 = 80AE3F2C
    sw      t0, 0x0180(s0)             # 00000180
    swc1    $f0, 0x0158(s0)            # 00000158
    swc1    $f0, 0x0068(s0)            # 00000068
    sw      t8, 0x000C(s0)             # 0000000C
    sw      t9, 0x0010(s0)             # 00000010
lbl_80AE445C:
    lw      $ra, 0x001C($sp)
lbl_80AE4460:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80AE4470:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    addiu   a2, s0, 0x0184             # a2 = 00000184
    or      a1, a2, $zero              # a1 = 00000184
    sw      a2, 0x002C($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x002C($sp)
    addu    a1, s1, $at
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80AE370C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AE3BD4
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AE3784
    or      a1, s1, $zero              # a1 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t6, 0x0014($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80AE4530:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0038($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bnel    s0, $at, lbl_80AE460C
    addiu   $at, $zero, 0x0009         # $at = 00000009
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0x4496                # $at = 44960000
    mtc1    $at, $f12                  # $f12 = 1200.00
    mfc1    a2, $f14
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      t7, 0x004C($sp)
    addiu   t6, $sp, 0x002C            # t6 = FFFFFFF4
    lui     $at, 0x4700                # $at = 47000000
    lwl     t9, 0x01D8(t7)             # 000001D8
    lwr     t9, 0x01DB(t7)             # 000001DB
    mtc1    $at, $f8                   # $f8 = 32768.00
    lui     $at, %hi(var_80AE4B7C)     # $at = 80AE0000
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lhu     t9, 0x01DC(t7)             # 000001DC
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sh      t9, 0x0004(t6)             # FFFFFFF8
    lh      t0, 0x002E($sp)
    lwc1    $f16, %lo(var_80AE4B7C)($at)
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    div.s   $f10, $f6, $f8
    mul.s   $f12, $f10, $f16
    jal     func_800AA9E0
    nop
    lh      t1, 0x002C($sp)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f6                   # $f6 = 32768.00
    mtc1    t1, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_80AE4B80)     # $at = 80AE0000
    lwc1    $f10, %lo(var_80AE4B80)($at)
    cvt.s.w $f4, $f18
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f8, $f4, $f6
    mul.s   $f12, $f8, $f10
    jal     func_800AAD4C
    nop
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0xC496                # $at = C4960000
    mtc1    $at, $f12                  # $f12 = -1200.00
    mfc1    a2, $f14
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   $at, $zero, 0x0009         # $at = 00000009
lbl_80AE460C:
    bne     s0, $at, lbl_80AE4690
    lw      t3, 0x004C($sp)
    lwl     t5, 0x01DE(t3)             # 000001DE
    lwr     t5, 0x01E1(t3)             # 000001E1
    addiu   t2, $sp, 0x002C            # t2 = FFFFFFF4
    lui     $at, 0x4700                # $at = 47000000
    sw      t5, 0x0000(t2)             # FFFFFFF4
    lhu     t5, 0x01E2(t3)             # 000001E2
    mtc1    $at, $f4                   # $f4 = 32768.00
    lui     $at, %hi(var_80AE4B84)     # $at = 80AE0000
    sh      t5, 0x0004(t2)             # FFFFFFF8
    lh      t6, 0x002C($sp)
    lwc1    $f8, %lo(var_80AE4B84)($at)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t6, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    div.s   $f6, $f18, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AA9E0
    nop
    lh      t7, 0x002E($sp)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f18                  # $f18 = 32768.00
    mtc1    t7, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_80AE4B88)     # $at = 80AE0000
    lwc1    $f6, %lo(var_80AE4B88)($at)
    cvt.s.w $f16, $f10
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f4, $f16, $f18
    mul.s   $f12, $f4, $f6
    jal     func_800AAB94
    nop
lbl_80AE4690:
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     s0, $at, lbl_80AE46AC
    lw      t8, 0x004C($sp)
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     s0, $at, lbl_80AE46AC
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     s0, $at, lbl_80AE4734
lbl_80AE46AC:
    sll     t9, s0,  1
    addu    v1, t8, t9
    lh      a0, 0x0204(v1)             # 00000204
    jal     func_800636C4              # sins?
    sw      v1, 0x0024($sp)
    lw      v0, 0x0048($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    lh      t0, 0x0002(v0)             # 00000002
    lw      v1, 0x0024($sp)
    mul.s   $f18, $f0, $f16
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    add.s   $f4, $f10, $f18
    trunc.w.s $f6, $f4
    mfc1    t2, $f6
    nop
    sh      t2, 0x0002(v0)             # 00000002
    jal     func_80063684              # coss?
    lh      a0, 0x0226(v1)             # 00000226
    lw      v0, 0x0048($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    lh      t3, 0x0004(v0)             # 00000004
    mul.s   $f18, $f0, $f10
    mtc1    t3, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8
    add.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    t5, $f6
    nop
    sh      t5, 0x0004(v0)             # 00000004
lbl_80AE4734:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80AE474C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      a0, 0x0028($sp)
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFF0
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lui     t6, %hi(var_80AE4AA8)      # t6 = 80AE0000
    addiu   t6, t6, %lo(var_80AE4AA8)  # t6 = 80AE4AA8
    lw      t8, 0x0000(t6)             # 80AE4AA8
    addiu   $at, $zero, 0x0010         # $at = 00000010
    sw      t8, 0x0000(a0)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 80AE4AAC
    sw      t7, 0x0004(a0)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 80AE4AB0
    bne     a1, $at, lbl_80AE4798
    sw      t8, 0x0008(a0)             # FFFFFFF8
    lw      a1, 0x0038($sp)
    jal     func_800AB958
    addiu   a1, a1, 0x0038             # a1 = 00000038
lbl_80AE4798:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AE47A8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      v0, 0x0200(s0)             # 00000200
    lw      t6, 0x002C($sp)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bne     v0, $at, lbl_80AE4860
    lw      t1, 0x0000(t6)             # 00000000
    lw      v1, 0x02C0(t1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t1)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lh      t9, 0x01FE(s0)             # 000001FE
    lui     t0, %hi(var_80AE4AB4)      # t0 = 80AE0000
    lui     t7, 0x8012                 # t7 = 80120000
    sll     t2, t9,  2
    addu    t0, t0, t2
    lw      t0, %lo(var_80AE4AB4)(t0)
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
    sw      s0, 0x0010($sp)
    lh      t2, 0x0200(s0)             # 00000200
    lui     a2, %hi(func_80AE4530)     # a2 = 80AE0000
    lui     a3, %hi(func_80AE474C)     # a3 = 80AE0000
    addiu   a3, a3, %lo(func_80AE474C) # a3 = 80AE474C
    addiu   a2, a2, %lo(func_80AE4530) # a2 = 80AE4530
    lw      a0, 0x002C($sp)
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    jal     func_800279CC
    sw      t2, 0x0014($sp)
    beq     $zero, $zero, lbl_80AE48F0
    lw      $ra, 0x0024($sp)
lbl_80AE4860:
    beq     v0, $zero, lbl_80AE48EC
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lw      v1, 0x02D0(t1)             # 000002D0
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0020             # t5 = DB060020
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(t1)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lh      t6, 0x01FE(s0)             # 000001FE
    lui     t0, %hi(var_80AE4AB4)      # t0 = 80AE0000
    lui     t4, 0x8012                 # t4 = 80120000
    sll     t3, t6,  2
    addu    t0, t0, t3
    lw      t0, %lo(var_80AE4AB4)(t0)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t8, t0,  4
    srl     t9, t8, 28
    sll     t2, t9,  2
    addu    t4, t4, t2
    lw      t4, 0x0C38(t4)             # 80120C38
    and     t7, t0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t5, t7, t4
    addu    t6, t5, $at
    sw      t6, 0x0004(v1)             # 00000004
    sw      s0, 0x0010($sp)
    lh      t3, 0x0200(s0)             # 00000200
    lui     a2, %hi(func_80AE4530)     # a2 = 80AE0000
    lui     a3, %hi(func_80AE474C)     # a3 = 80AE0000
    addiu   a3, a3, %lo(func_80AE474C) # a3 = 80AE474C
    addiu   a2, a2, %lo(func_80AE4530) # a2 = 80AE4530
    lw      a0, 0x002C($sp)
    jal     func_80027AC4
    sw      t3, 0x0014($sp)
lbl_80AE48EC:
    lw      $ra, 0x0024($sp)
lbl_80AE48F0:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop

.section .data

var_80AE4900: .word 0x016D0400, 0x02000019, 0x00FB0000, 0x00000314
.word func_80AE3C80
.word func_80AE3E7C
.word func_80AE4470
.word func_80AE47A8
var_80AE4920: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0024002E, 0x00000000, 0x00000000
var_80AE494C: .word 0x00000000, 0x00000000, 0xFF000000
var_80AE4958: .word \
0x060002C8, 0x00000000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x060002C8, 0x00000000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1200000, \
0x0600917C, 0x3F800000, 0x00000000, 0xBF800000, \
0x02000000, 0xBF800000, 0x06009E68, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xBF800000, \
0x06009B1C, 0x3F800000, 0x00000000, 0xBF800000, \
0x02000000, 0xBF800000, 0x06008E84, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xBF800000, \
0x060097F0, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xBF800000, 0x060092B0, 0x3F800000, \
0x00000000, 0xBF800000, 0x02000000, 0xBF800000, \
0x0600A138, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xBF800000, 0x06008FC0, 0x3F800000, \
0x00000000, 0xBF800000, 0x02000000, 0xBF800000, \
0x060002C8, 0x00000000, 0x00000000, 0xBF800000, \
0x00000000, 0xC1000000, 0x06008510, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xBF800000, \
0x060095BC, 0x3F800000, 0x00000000, 0xBF800000, \
0x02000000, 0xBF800000, 0x06008738, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xBF800000
var_80AE4AA8: .word 0x43C80000, 0x00000000, 0x00000000
var_80AE4AB4: .word 0x06004FF0, 0x06005930, 0x06005D30

.section .rodata

var_80AE4AC0: .word var_80AE2F98
.word var_80AE2FA8
.word var_80AE2FB8
.word var_80AE2FC8
.word var_80AE2FD8
.word var_80AE2FE8
.word var_80AE2FF8
.word var_80AE3008
.word var_80AE3018
.word var_80AE3028
.word var_80AE3038
var_80AE4AEC: .word var_80AE3094
.word var_80AE31F8
.word lbl_80AE3288
.word lbl_80AE3288
.word var_80AE3144
.word var_80AE31F8
.word lbl_80AE3288
.word lbl_80AE3288
.word lbl_80AE3288
.word lbl_80AE3288
.word lbl_80AE3288
.word lbl_80AE3288
.word lbl_80AE3288
.word lbl_80AE3288
.word lbl_80AE3288
.word lbl_80AE3288
.word lbl_80AE3288
.word lbl_80AE3288
.word lbl_80AE3288
.word lbl_80AE3288
.word lbl_80AE3288
.word lbl_80AE3288
.word var_80AE31F8
.word var_80AE3228
var_80AE4B4C: .word var_80AE356C
.word var_80AE356C
.word var_80AE3574
.word var_80AE356C
.word var_80AE356C
.word var_80AE363C
.word var_80AE356C
.word var_80AE356C
.word var_80AE356C
.word var_80AE356C
var_80AE4B74: .word 0x4622F983
var_80AE4B78: .word 0x3A83126F
var_80AE4B7C: .word 0x40490FDB
var_80AE4B80: .word 0x40490FDB
var_80AE4B84: .word 0x40490FDB
var_80AE4B88: .word 0x40490FDB, 0x00000000

