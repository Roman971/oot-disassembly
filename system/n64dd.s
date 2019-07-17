.section .text
func_801C6E80:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_801CE120
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C6EA0:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_801C6EAC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   t6, t6, 0x1214             # t6 = 80121214
    lbu     t7, 0x0000(t6)             # 80121214
    bnel    t7, $zero, lbl_801C6EE4
    lw      $ra, 0x0014($sp)
    jal     func_800C78FC
    nop
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   t9, t9, 0x1214             # t9 = 80121214
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sb      t8, 0x0000(t9)             # 80121214
    lw      $ra, 0x0014($sp)
lbl_801C6EE4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C6EF0:
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   t6, t6, 0x1214             # t6 = 80121214
    lbu     v0, 0x0000(t6)             # 80121214
    sltu    v0, $zero, v0
    jr      $ra
    nop


func_801C6F08:
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   t6, t6, 0x1214             # t6 = 80121214
    lbu     t7, 0x0000(t6)             # 80121214
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     t7, $zero, lbl_801C6F28
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_801C6F28:
    jr      $ra
    nop


func_801C6F30:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_801C6EAC
    nop
    jal     func_801C6F08
    nop
    bnel    v0, $zero, lbl_801C6F6C
    lw      $ra, 0x0014($sp)
lbl_801C6F50:
    jal     func_80001C7C
    addiu   a0, $zero, 0x411A          # a0 = 0000411A
    jal     func_801C6F08
    nop
    beq     v0, $zero, lbl_801C6F50
    nop
    lw      $ra, 0x0014($sp)
lbl_801C6F6C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C6F78:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0x1214             # v0 = 80121214
    sw      $ra, 0x0014($sp)
    lbu     t6, 0x0000(v0)             # 80121214
    beql    t6, $zero, lbl_801C6FA0
    lw      $ra, 0x0014($sp)
    jal     func_800C785C
    sb      $zero, 0x0000(v0)          # 80121214
    lw      $ra, 0x0014($sp)
lbl_801C6FA0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C6FAC:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0x1213             # v1 = 80121213
    lbu     t6, 0x0000(v1)             # 80121213
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    bnel    t6, $zero, lbl_801C6FD0
    sb      $zero, 0x0000(v1)          # 80121213
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801C6FCC:
    sb      $zero, 0x0000(v1)          # 80121213
lbl_801C6FD0:
    jr      $ra
    nop


func_801C6FD8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_801C6FAC
    nop
    bnel    v0, $zero, lbl_801C700C
    lw      $ra, 0x0014($sp)
lbl_801C6FF0:
    jal     func_80001C7C
    addiu   a0, $zero, 0x411A          # a0 = 0000411A
    jal     func_801C6FAC
    nop
    beq     v0, $zero, lbl_801C6FF0
    nop
    lw      $ra, 0x0014($sp)
lbl_801C700C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C7018:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   t6, t6, 0x1213             # t6 = 80121213
    lbu     t7, 0x0000(t6)             # 80121213
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x8E00             # a0 = 801D8E00
    beq     t7, $zero, lbl_801C7044
    nop
    jal     func_800AF734
    addiu   a1, $zero, 0x01F7          # a1 = 000001F7
lbl_801C7044:
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   t9, t9, 0x1213             # t9 = 80121213
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sb      t8, 0x0000(t9)             # 80121213
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C7064:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x9D50             # a0 = 801D9D50
    sw      $ra, 0x0014($sp)
    lui     t9, 0x801D                 # t9 = 801D0000
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    addiu   t9, t9, 0x8000             # t9 = 801C8000
    jalr    $ra, t9
    sb      t6, 0x0000(a0)             # 801D9D50
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C7098:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     t9, 0x801D                 # t9 = 801D0000
    addiu   a0, a0, 0x9D50             # a0 = 801D9D50
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    addiu   t9, t9, 0x8000             # t9 = 801C8000
    jalr    $ra, t9
    sb      t6, 0x0000(a0)             # 801D9D50
    bgez    v0, lbl_801C70D0
    or      v1, v0, $zero              # v1 = 00000000
    jal     func_800ACE60
    sw      v0, 0x001C($sp)
    lw      v1, 0x001C($sp)
lbl_801C70D0:
    or      v0, v1, $zero              # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_801C70E4:
    lui     v0, 0x801E                 # v0 = 801E0000
    lw      v0, -0x6238(v0)            # 801D9DC8
    xori    v0, v0, 0x0001             # v0 = 801E0001
    sltiu   v0, v0, 0x0001
    jr      $ra
    nop


func_801C70FC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_801C70E4
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C711C:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s1, 0x001C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s8, 0x0038($sp)
    sw      s7, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s0, 0x0018($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    sw      $zero, 0x0058($sp)
    addiu   t6, t6, 0xD968             # t6 = 8011D968
    addiu   s2, s1, 0x0078             # s2 = 00000078
    sw      t6, 0x0098(s1)             # 00000098
    or      a0, s2, $zero              # a0 = 00000078
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x001E          # a2 = 0000001E
    lw      a0, 0x0098(s1)             # 00000098
    addiu   a1, s1, 0x0090             # a1 = 00000090
    sw      a1, 0x0044($sp)
    jal     func_800ACE90
    or      a2, s2, $zero              # a2 = 00000078
    lui     s7, 0x801E                 # s7 = 801E0000
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s7, s7, 0x9DB8             # s7 = 801D9DB8
    addiu   s8, $zero, 0x0001          # s8 = 00000001
    addiu   s6, $zero, 0x0004          # s6 = 00000004
    addiu   s5, $zero, 0x0003          # s5 = 00000003
    addiu   s4, $zero, 0x0001          # s4 = 00000001
    addiu   s3, $sp, 0x0058            # s3 = FFFFFFF8
    or      a0, s2, $zero              # a0 = 00000078
lbl_801C71A8:
    or      a1, s3, $zero              # a1 = FFFFFFF8
    jal     func_80002030              # osRecvMesg
    or      a2, s4, $zero              # a2 = 00000001
    lw      t7, 0x0058($sp)
    lh      v1, 0x0000(t7)             # 00000000
    beq     v1, s4, lbl_801C71DC
    nop
    beql    v1, s5, lbl_801C7224
    or      s0, s4, $zero              # s0 = 00000001
    beq     v1, s6, lbl_801C7210
    nop
    beq     $zero, $zero, lbl_801C7224
    nop
lbl_801C71DC:
    jal     func_800034C0
    nop
    lui     t8, 0x801E                 # t8 = 801E0000
    lw      t8, -0x4038(t8)            # 801DBFC8
    lui     $at, 0x801E                # $at = 801E0000
    beq     t8, v0, lbl_801C7200
    nop
    sw      v0, -0x4038($at)           # 801DBFC8
    sb      s8, 0x0000(s7)             # 801D9DB8
lbl_801C7200:
    jal     func_801C8AA8
    nop
    beq     $zero, $zero, lbl_801C7224
    nop
lbl_801C7210:
    jal     func_801CAB04
    nop
    beq     $zero, $zero, lbl_801C7224
    nop
    or      s0, s4, $zero              # s0 = 00000001
lbl_801C7224:
    beql    s0, $zero, lbl_801C71A8
    or      a0, s2, $zero              # a0 = 00000078
    lw      a0, 0x0098(s1)             # 00000098
    jal     func_800ACF1C
    lw      a1, 0x0044($sp)
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
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_801C7268:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    jal     func_801C6EF0
    nop
    bne     v0, $zero, lbl_801C7288
    sw      v0, 0x0020($sp)
    jal     func_801C6F30
    nop
lbl_801C7288:
    lui     t7, 0x801E                 # t7 = 801E0000
    addiu   t7, t7, 0x9DB8             # t7 = 801D9DB8
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     t0, 0x801E                 # t0 = 801E0000
    sb      t6, 0x0000(t7)             # 801D9DB8
    addiu   t0, t0, 0x9DC0             # t0 = 801D9DC0
    addiu   t8, $zero, 0x0000          # t8 = 00000000
    sw      t8, 0x0000(t0)             # 801D9DC0
    addiu   t9, $zero, 0x0000          # t9 = 00000000
    jal     func_801C7064
    sw      t9, 0x0004(t0)             # 801D9DC4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_801C72D0
    nop
    jal     func_801C7098
    nop
    beq     $zero, $zero, lbl_801C72E8
    nop
lbl_801C72D0:
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x9DC8             # v0 = 801D9DC8
    lw      t1, 0x0000(v0)             # 801D9DC8
    beq     t1, $zero, lbl_801C72E8
    nop
    sw      $zero, 0x0000(v0)          # 801D9DC8
lbl_801C72E8:
    lui     t2, 0x801E                 # t2 = 801E0000
    addiu   t2, t2, 0x9DC0             # t2 = 801D9DC0
    lw      t4, 0x0000(t2)             # 801D9DC0
    lw      t5, 0x0004(t2)             # 801D9DC4
    bne     t4, $zero, lbl_801C7308
    nop
    beql    t5, $zero, lbl_801C7418
    lw      t8, 0x0020($sp)
lbl_801C7308:
    jal     func_800048C0              # osGetTime
    nop
    lui     t3, 0x801E                 # t3 = 801E0000
    addiu   t3, t3, 0x9DC0             # t3 = 801D9DC0
    lw      t6, 0x0000(t3)             # 801D9DC0
    lw      t7, 0x0004(t3)             # 801D9DC4
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    subu    a0, v0, t6
    sltu    $at, v1, t7
    subu    a0, a0, $at
    addiu   a3, $zero, 0x0040          # a3 = 00000040
    jal     func_800022D8
    subu    a1, v1, t7
    or      a0, v0, $zero              # a0 = 00000000
    or      a1, v1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800021D8
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    jal     func_800048C0              # osGetTime
    sw      v1, 0x001C($sp)
    lui     t9, 0x801E                 # t9 = 801E0000
    addiu   t9, t9, 0x9DC0             # t9 = 801D9DC0
    lw      $zero, 0x0000(t9)          # 801D9DC0
    jal     func_800048C0              # osGetTime
    lw      $at, 0x0004(t9)            # 801D9DC4
    lui     t0, 0x801E                 # t0 = 801E0000
    addiu   t0, t0, 0x9DC0             # t0 = 801D9DC0
    lw      t2, 0x0000(t0)             # 801D9DC0
    lw      t3, 0x0004(t0)             # 801D9DC4
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    subu    a0, v0, t2
    sltu    $at, v1, t3
    subu    a0, a0, $at
    addiu   a3, $zero, 0x0040          # a3 = 00000040
    jal     func_800022D8
    subu    a1, v1, t3
    or      a0, v0, $zero              # a0 = 00000000
    or      a1, v1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800021D8
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    jal     func_800048C0              # osGetTime
    nop
    lui     t1, 0x801E                 # t1 = 801E0000
    addiu   t1, t1, 0x9DC0             # t1 = 801D9DC0
    lw      t4, 0x0000(t1)             # 801D9DC0
    lw      t5, 0x0004(t1)             # 801D9DC4
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    subu    a0, v0, t4
    sltu    $at, v1, t5
    subu    a0, a0, $at
    addiu   a3, $zero, 0x0040          # a3 = 00000040
    jal     func_800022D8
    subu    a1, v1, t5
    or      a0, v0, $zero              # a0 = 00000000
    or      a1, v1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800021D8
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lw      t6, 0x001C($sp)
    lui     t7, 0x000F                 # t7 = 000F0000
    ori     t7, t7, 0x4240             # t7 = 000F4240
    subu    a1, t7, t6
    blezl   a1, lbl_801C7418
    lw      t8, 0x0020($sp)
    jal     func_80001C7C
    or      a0, a1, $zero              # a0 = 00000000
    lw      t8, 0x0020($sp)
lbl_801C7418:
    bnel    t8, $zero, lbl_801C742C
    lw      $ra, 0x0014($sp)
    jal     func_801C6F78
    nop
    lw      $ra, 0x0014($sp)
lbl_801C742C:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_801C7438:
    lui     $at, 0x0002                # $at = 00020000
    ori     $at, $at, 0x5800           # $at = 00025800
    addu    v1, a0, $at
    sltu    $at, a0, v1
    beq     $at, $zero, lbl_801C7464
    or      v0, a0, $zero              # v0 = 00000000
    addiu   a0, $zero, 0x0001          # a0 = 00000001
lbl_801C7454:
    addiu   v0, v0, 0x0002             # v0 = 00000002
    sltu    $at, v0, v1
    bne     $at, $zero, lbl_801C7454
    sh      a0, -0x0002(v0)            # 00000000
lbl_801C7464:
    jr      $ra
    nop


func_801C746C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    lw      t6, 0x0030($sp)
    lw      t7, 0x0034($sp)
    bne     t6, $zero, lbl_801C74A0
    nop
    bne     t7, $zero, lbl_801C74A0
    lw      t8, 0x0038($sp)
    beql    t8, $zero, lbl_801C75B0
    lw      $ra, 0x0024($sp)
lbl_801C74A0:
    jal     func_800034C0
    nop
    lui     $at, 0x2000                # $at = 20000000
    addu    a0, v0, $at
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t9, a0, $at
    beq     t9, $zero, lbl_801C75AC
    sw      a0, 0x002C($sp)
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x9DB8             # v0 = 801D9DB8
    lbu     t0, 0x0000(v0)             # 801D9DB8
    beql    t0, $zero, lbl_801C7500
    lw      a0, 0x0030($sp)
    sb      $zero, 0x0000(v0)          # 801D9DB8
    jal     func_801C7438
    lw      a0, 0x002C($sp)
    jal     func_800048C0              # osGetTime
    nop
    lui     t1, 0x801E                 # t1 = 801E0000
    addiu   t1, t1, 0x9DC0             # t1 = 801D9DC0
    sw      v0, 0x0000(t1)             # 801D9DC0
    sw      v1, 0x0004(t1)             # 801D9DC4
    lw      a0, 0x0030($sp)
lbl_801C7500:
    addiu   a1, $zero, 0x0060          # a1 = 00000060
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    beq     a0, $zero, lbl_801C7534
    addiu   a3, $zero, 0x00C0          # a3 = 000000C0
    lw      t4, 0x002C($sp)
    addiu   t2, $zero, 0x0010          # t2 = 00000010
    addiu   t3, $zero, 0x000B          # t3 = 0000000B
    addiu   t5, $zero, 0x0140          # t5 = 00000140
    sw      t5, 0x001C($sp)
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    jal     func_801CA1F0
    sw      t4, 0x0018($sp)
lbl_801C7534:
    lw      a0, 0x0034($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    beq     a0, $zero, lbl_801C756C
    addiu   a3, $zero, 0x0140          # a3 = 00000140
    lw      t8, 0x002C($sp)
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    addiu   t7, $zero, 0x000B          # t7 = 0000000B
    addiu   t9, $zero, 0x0140          # t9 = 00000140
    sw      t9, 0x001C($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    jal     func_801CA1F0
    sw      t8, 0x0018($sp)
lbl_801C756C:
    lw      a0, 0x0038($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00B0          # a2 = 000000B0
    beq     a0, $zero, lbl_801C75A4
    addiu   a3, $zero, 0x0140          # a3 = 00000140
    lw      t2, 0x002C($sp)
    addiu   t0, $zero, 0x0020          # t0 = 00000020
    addiu   t1, $zero, 0x000B          # t1 = 0000000B
    addiu   t3, $zero, 0x0140          # t3 = 00000140
    sw      t3, 0x001C($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    jal     func_801CA1F0
    sw      t2, 0x0018($sp)
lbl_801C75A4:
    jal     func_80003BE0
    or      a0, $zero, $zero           # a0 = 00000000
lbl_801C75AC:
    lw      $ra, 0x0024($sp)
lbl_801C75B0:
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_801C75BC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    bne     a0, $zero, lbl_801C75D8
    lui     t6, 0x801E                 # t6 = 801E0000
    bne     a1, $zero, lbl_801C75D8
    nop
    beq     a2, $zero, lbl_801C760C
lbl_801C75D8:
    addiu   t6, t6, 0x9DB8             # t6 = 801D9DB8
    lbu     t7, 0x0000(t6)             # 801D9DB8
    beq     a0, $zero, lbl_801C75EC
    lui     $at, 0x801E                # $at = 801E0000
    sw      a0, -0x6234($at)           # 801D9DCC
lbl_801C75EC:
    beq     a1, $zero, lbl_801C75F8
    lui     $at, 0x801E                # $at = 801E0000
    sw      a1, -0x6230($at)           # 801D9DD0
lbl_801C75F8:
    beq     a2, $zero, lbl_801C7604
    lui     $at, 0x801E                # $at = 801E0000
    sw      a2, -0x622C($at)           # 801D9DD4
lbl_801C7604:
    jal     func_801C746C
    nop
lbl_801C760C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C761C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80001CCC
    addiu   a0, $zero, 0x0064          # a0 = 00000064
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x801E                 # a1 = 801E0000
    lui     a2, 0x801E                 # a2 = 801E0000
    lw      a2, -0x622C(a2)            # 801D9DD4
    lw      a1, -0x6230(a1)            # 801D9DD0
    jal     func_801C746C
    lw      a0, -0x6234(a0)            # 801D9DCC
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C7658:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0024($sp)
    sw      s0, 0x0020($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lbu     t6, 0x1212(t6)             # 80121212
    lui     s0, 0x801E                 # s0 = 801E0000
    addiu   s0, s0, 0xAF88             # s0 = 801DAF88
    beq     t6, $zero, lbl_801C7684
    lui     a0, 0x801E                 # a0 = 801E0000
    beq     $zero, $zero, lbl_801C7804
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801C7684:
    lui     t8, 0x801E                 # t8 = 801E0000
    addiu   t8, t8, 0x8E10             # t8 = 801D8E10
    lui     a1, 0x801E                 # a1 = 801E0000
    addiu   t7, $zero, 0x0100          # t7 = 00000100
    sw      t7, 0x0010($sp)
    addiu   a1, a1, 0x9F88             # a1 = 801D9F88
    sw      t8, 0x0014($sp)
    addiu   a0, a0, 0xAF88             # a0 = 801DAF88
    or      a2, s0, $zero              # a2 = 801DAF88
    jal     func_80001890              # __osInitStack
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a2, 0x801C                 # a2 = 801C0000
    lui     a3, 0x801E                 # a3 = 801E0000
    addiu   t9, $zero, 0x000D          # t9 = 0000000D
    sw      t9, 0x0014($sp)
    addiu   a3, a3, 0x9B90             # a3 = 801D9B90
    addiu   a2, a2, 0x711C             # a2 = 801C711C
    addiu   a0, a0, 0x9DD8             # a0 = 801D9DD8
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    jal     func_80002F20              # osCreateThread
    sw      s0, 0x0010($sp)
    lui     a0, 0x801E                 # a0 = 801E0000
    jal     func_80005EC0              # osStartThread
    addiu   a0, a0, 0x9DD8             # a0 = 801D9DD8
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x801E                 # a1 = 801E0000
    addiu   a1, a1, 0x9DB0             # a1 = 801D9DB0
    addiu   a0, a0, 0x9D80             # a0 = 801D9D80
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x801E                 # a1 = 801E0000
    addiu   a1, a1, 0x9DB4             # a1 = 801D9DB4
    addiu   a0, a0, 0x9D98             # a0 = 801D9D98
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     t1, 0x801E                 # t1 = 801E0000
    addiu   t1, t1, 0x8E18             # t1 = 801D8E18
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x801E                 # a1 = 801E0000
    lui     a2, 0x801E                 # a2 = 801E0000
    addiu   t0, $zero, 0x0100          # t0 = 00000100
    sw      t0, 0x0010($sp)
    addiu   a2, a2, 0xBFA8             # a2 = 801DBFA8
    addiu   a1, a1, 0xAFA8             # a1 = 801DAFA8
    addiu   a0, a0, 0xBFA8             # a0 = 801DBFA8
    sw      t1, 0x0014($sp)
    jal     func_80001890              # __osInitStack
    or      a3, $zero, $zero           # a3 = 00000000
    lui     s0, 0x801E                 # s0 = 801E0000
    addiu   s0, s0, 0x9D50             # s0 = 801D9D50
    lui     t2, 0x801E                 # t2 = 801E0000
    lui     t3, 0x801E                 # t3 = 801E0000
    lui     t5, 0x801E                 # t5 = 801E0000
    lui     v0, 0x801D                 # v0 = 801D0000
    addiu   t2, t2, 0x9D80             # t2 = 801D9D80
    addiu   t3, t3, 0x9D98             # t3 = 801D9D98
    addiu   t4, $zero, 0x0008          # t4 = 00000008
    addiu   t5, t5, 0xBFA8             # t5 = 801DBFA8
    addiu   t6, $zero, 0x000D          # t6 = 0000000D
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   v0, v0, 0x8000             # v0 = 801C8000
    sw      t2, 0x001C(s0)             # 801D9D6C
    sw      t3, 0x0020(s0)             # 801D9D70
    sw      t4, 0x0024(s0)             # 801D9D74
    sw      t5, 0x0028(s0)             # 801D9D78
    sw      t6, 0x002C(s0)             # 801D9D7C
    sb      t7, 0x0000(s0)             # 801D9D50
    sw      v0, 0x002C($sp)
    jalr    $ra, v0
    or      a0, s0, $zero              # a0 = 801D9D50
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   t9, t9, 0x1213             # t9 = 80121213
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    jal     func_801C6FD8
    sb      t8, 0x0000(t9)             # 80121213
    lw      t9, 0x002C($sp)
    lui     t2, 0x8000                 # t2 = 80000000
    lui     t3, 0x801C                 # t3 = 801C0000
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    addiu   t2, t2, 0x0A54             # t2 = 80000A54
    addiu   t3, t3, 0x75BC             # t3 = 801C75BC
    sb      t0, 0x0000(s0)             # 801D9D50
    sw      t1, 0x0010(s0)             # 801D9D60
    sw      t2, 0x0014(s0)             # 801D9D64
    sw      t3, 0x000C(s0)             # 801D9D5C
    jalr    $ra, t9
    or      a0, s0, $zero              # a0 = 801D9D50
    lw      t9, 0x002C($sp)
    addiu   t4, $zero, 0x000D          # t4 = 0000000D
    sb      t4, 0x0000(s0)             # 801D9D50
    jalr    $ra, t9
    or      a0, s0, $zero              # a0 = 801D9D50
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801C7804:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_801C7818:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x9D50             # a0 = 801D9D50
    sw      $ra, 0x0014($sp)
    lui     t9, 0x801D                 # t9 = 801D0000
    addiu   t6, $zero, 0x000C          # t6 = 0000000C
    addiu   t9, t9, 0x8000             # t9 = 801C8000
    jalr    $ra, t9
    sb      t6, 0x0000(a0)             # 801D9D50
    jal     func_801C81C4
    nop
    bne     v0, $zero, lbl_801C7864
    nop
lbl_801C784C:
    jal     func_80001C7C
    addiu   a0, $zero, 0x411A          # a0 = 0000411A
    jal     func_801C81C4
    nop
    beq     v0, $zero, lbl_801C784C
    nop
lbl_801C7864:
    jal     func_801C81C4
    nop
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_801C7890
    nop
    jal     func_801C761C
    nop
    jal     func_800ACE60
    nop
    beq     $zero, $zero, lbl_801C78A8
    addiu   v0, $zero, 0xFFFD          # v0 = FFFFFFFD
lbl_801C7890:
    jal     func_801C7018
    nop
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x8012                # $at = 80120000
    sb      t7, 0x1212($at)            # 80121212
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801C78A8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C78B8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_801C7658
    nop
    bne     v0, $zero, lbl_801C78DC
    or      v1, v0, $zero              # v1 = 00000000
    jal     func_801C7818
    nop
    or      v1, v0, $zero              # v1 = 00000000
lbl_801C78DC:
    or      v0, v1, $zero              # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C78F0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x9D50             # a0 = 801D9D50
    sw      $ra, 0x0014($sp)
    lui     t9, 0x801D                 # t9 = 801D0000
    addiu   t9, t9, 0x8000             # t9 = 801C8000
    jalr    $ra, t9
    sb      $zero, 0x0000(a0)          # 801D9D50
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C7920:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0014($sp)
    lui     s0, 0x801E                 # s0 = 801E0000
    addiu   s0, s0, 0x9D50             # s0 = 801D9D50
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     s1, 0x801D                 # s1 = 801D0000
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    addiu   s1, s1, 0x8000             # s1 = 801C8000
    sw      a1, 0x0018(s0)             # 801D9D68
    sw      a3, 0x001C(s0)             # 801D9D6C
    sw      a2, 0x0020(s0)             # 801D9D70
    sb      t6, 0x0000(s0)             # 801D9D50
    jalr    $ra, s1
    or      a0, s0, $zero              # a0 = 801D9D50
    jal     func_800048C0              # osGetTime
    nop
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    sb      t7, 0x0000(s0)             # 801D9D50
    jalr    $ra, s1
    or      a0, s0, $zero              # a0 = 801D9D50
    beql    v0, $zero, lbl_801C799C
    addiu   t8, $zero, 0x0007          # t8 = 00000007
lbl_801C7980:
    jal     func_80001C7C
    addiu   a0, $zero, 0x411A          # a0 = 0000411A
    jalr    $ra, s1
    or      a0, s0, $zero              # a0 = 801D9D50
    bne     v0, $zero, lbl_801C7980
    nop
    addiu   t8, $zero, 0x0007          # t8 = 00000007
lbl_801C799C:
    sb      t8, 0x0000(s0)             # 801D9D50
    jalr    $ra, s1
    or      a0, s0, $zero              # a0 = 801D9D50
    beql    v0, $zero, lbl_801C79BC
    lw      $ra, 0x001C($sp)
    jal     func_800ACE60
    nop
    lw      $ra, 0x001C($sp)
lbl_801C79BC:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_801C79CC:
    or      a3, a0, $zero              # a3 = 00000000
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    addiu   a0, a0, 0x9D50             # a0 = 801D9D50
    lui     t9, 0x801D                 # t9 = 801D0000
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    addiu   t9, t9, 0x8000             # t9 = 801C8000
    sw      a3, 0x0018(a0)             # 801D9D68
    sw      a1, 0x001C(a0)             # 801D9D6C
    sw      a2, 0x0020(a0)             # 801D9D70
    jalr    $ra, t9
    sb      t6, 0x0000(a0)             # 801D9D50
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C7A10:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_801C7A1C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      a1, a0, $zero              # a1 = 00000000
    addiu   s0, a1, 0x0038             # s0 = 00000038
    jal     func_801C7A10
    or      a0, s0, $zero              # a0 = 00000038
    lui     t6, 0x801E                 # t6 = 801E0000
    lw      t6, -0x4010(t6)            # 801DBFF0
    lui     a1, 0x801E                 # a1 = 801E0000
    addiu   a1, a1, 0x8E20             # a1 = 801D8E20
    bne     t6, $zero, lbl_801C7AF0
    or      a0, s0, $zero              # a0 = 00000038
    jal     func_800D4390
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     v0, $zero, lbl_801C7A78
    or      a0, s0, $zero              # a0 = 00000038
    lui     a1, 0x801E                 # a1 = 801E0000
    addiu   a1, a1, 0x8E28             # a1 = 801D8E28
    jal     func_800D4390
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    bne     v0, $zero, lbl_801C7AE0
    lui     v1, 0x801E                 # v1 = 801E0000
lbl_801C7A78:
    lw      t9, 0x0000(s0)             # 00000038
    lui     t7, 0x801E                 # t7 = 801E0000
    addiu   t7, t7, 0xBFD0             # t7 = 801DBFD0
    sw      t9, 0x0000(t7)             # 801DBFD0
    lw      t8, 0x0004(s0)             # 0000003C
    lui     v1, 0x801E                 # v1 = 801E0000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t8, 0x0004(t7)             # 801DBFD4
    lw      t9, 0x0008(s0)             # 00000040
    lui     $at, 0x801E                # $at = 801E0000
    addiu   v1, v1, 0x9DC8             # v1 = 801D9DC8
    sw      t9, 0x0008(t7)             # 801DBFD8
    lw      t8, 0x000C(s0)             # 00000044
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t8, 0x000C(t7)             # 801DBFDC
    lw      t9, 0x0010(s0)             # 00000048
    sw      t9, 0x0010(t7)             # 801DBFE0
    lw      t8, 0x0014(s0)             # 0000004C
    sw      t8, 0x0014(t7)             # 801DBFE4
    lw      t9, 0x0018(s0)             # 00000050
    sw      t9, 0x0018(t7)             # 801DBFE8
    lw      t8, 0x001C(s0)             # 00000054
    sw      t8, 0x001C(t7)             # 801DBFEC
    sw      t0, -0x4010($at)           # 801DBFF0
    beq     $zero, $zero, lbl_801C7B2C
    sw      t1, 0x0000(v1)             # 801D9DC8
lbl_801C7AE0:
    addiu   v1, v1, 0x9DC8             # v1 = 801D3B90
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    beq     $zero, $zero, lbl_801C7B2C
    sw      t2, 0x0000(v1)             # 801D3B90
lbl_801C7AF0:
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0xBFD0             # a0 = 801DBFD0
    or      a1, s0, $zero              # a1 = 00000038
    jal     func_800D4390
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    bne     v0, $zero, lbl_801C7B1C
    lui     v1, 0x801E                 # v1 = 801E0000
    addiu   v1, v1, 0x9DC8             # v1 = 801D9DC8
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    beq     $zero, $zero, lbl_801C7B2C
    sw      t3, 0x0000(v1)             # 801D9DC8
lbl_801C7B1C:
    lui     v1, 0x801E                 # v1 = 801E0000
    addiu   v1, v1, 0x9DC8             # v1 = 801D9DC8
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    sw      t4, 0x0000(v1)             # 801D9DC8
lbl_801C7B2C:
    lw      v0, 0x0000(v1)             # 801D9DC8
    lw      $ra, 0x001C($sp)
    xori    v0, v0, 0x0001             # v0 = 00000001
    sltiu   v0, v0, 0x0001
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_801C7B48:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    lw      a1, 0x0030($sp)
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    addiu   a2, $sp, 0x002C            # a2 = FFFFFFFC
    jal     func_801CE680
    addiu   a1, a1, 0x0001             # a1 = 00000001
    beql    v0, $zero, lbl_801C7B84
    lw      v0, 0x002C($sp)
    beq     $zero, $zero, lbl_801C7BE0
    lw      $ra, 0x0014($sp)
    lw      v0, 0x002C($sp)
lbl_801C7B84:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    bne     v0, $at, lbl_801C7B9C
    addiu   a1, v0, 0xFFFF             # a1 = FFFFFFFF
    beq     $zero, $zero, lbl_801C7BB8
    sw      $zero, 0x0020($sp)
lbl_801C7B9C:
    addiu   a2, $sp, 0x0020            # a2 = FFFFFFF0
    jal     func_801CBEF0
    sw      a1, 0x0024($sp)
    beq     v0, $zero, lbl_801C7BB8
    lw      a1, 0x0024($sp)
    beq     $zero, $zero, lbl_801C7BE0
    lw      $ra, 0x0014($sp)
lbl_801C7BB8:
    lw      t7, 0x0034($sp)
    addiu   t6, a1, 0x0001             # t6 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
    sw      t6, 0x0000(t7)             # 00000000
    lw      t9, 0x0020($sp)
    lw      t8, 0x0030($sp)
    lw      t1, 0x0038($sp)
    subu    t0, t8, t9
    sw      t0, 0x0000(t1)             # 00000000
    lw      $ra, 0x0014($sp)
lbl_801C7BE0:
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_801C7BEC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_801CBEF0
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFFC
    bne     v0, $zero, lbl_801C7C10
    lw      $ra, 0x0014($sp)
    beq     $zero, $zero, lbl_801C7C14
    lw      v0, 0x001C($sp)
lbl_801C7C10:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801C7C14:
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_801C7C1C:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a2, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0060($sp)
    jal     func_801C6FD8
    nop
    jal     func_801C6F30
    nop
    lui     t7, 0x801E                 # t7 = 801E0000
    addiu   t7, t7, 0x9DB8             # t7 = 801D9DB8
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     t0, 0x801E                 # t0 = 801E0000
    sb      t6, 0x0000(t7)             # 801D9DB8
    addiu   t0, t0, 0x9DC0             # t0 = 801D9DC0
    addiu   t8, $zero, 0x0000          # t8 = 00000000
    sw      t8, 0x0000(t0)             # 801D9DC0
    addiu   t9, $zero, 0x0000          # t9 = 00000000
    sw      t9, 0x0004(t0)             # 801D9DC4
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x005C            # a1 = FFFFFFFC
    jal     func_801C7B48
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFF4
    addu    a0, s0, s1
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFF8
    jal     func_801C7B48
    addiu   a2, $sp, 0x0050            # a2 = FFFFFFF0
    lw      a0, 0x005C($sp)
    lw      t2, 0x0058($sp)
    lui     t1, 0x801D                 # t1 = 801D0000
    lw      t1, 0x2E50(t1)             # 801D2E50
    bne     a0, t2, lbl_801C7CE0
    sw      t1, 0x004C($sp)
    jal     func_801C7BEC
    nop
    lw      a0, 0x005C($sp)
    lw      a1, 0x004C($sp)
    jal     func_801C7920
    or      a2, v0, $zero              # a2 = 00000000
    lw      a3, 0x0054($sp)
    lw      t3, 0x004C($sp)
    lw      a1, 0x0060($sp)
    or      a2, s1, $zero              # a2 = 00000000
    jal     func_80004DC0              # bcopy
    addu    a0, t3, a3
    beq     $zero, $zero, lbl_801C7DD0
    nop
lbl_801C7CE0:
    jal     func_801C7BEC
    or      s1, $zero, $zero           # s1 = 00000000
    lw      a0, 0x005C($sp)
    lw      a1, 0x004C($sp)
    jal     func_801C7920
    or      a2, v0, $zero              # a2 = 00000000
    jal     func_801C7BEC
    lw      a0, 0x005C($sp)
    lw      a3, 0x0054($sp)
    lw      t4, 0x004C($sp)
    lw      a1, 0x0060($sp)
    subu    a2, v0, a3
    jal     func_80004DC0              # bcopy
    addu    a0, t4, a3
    lw      v0, 0x005C($sp)
    lw      a0, 0x0058($sp)
    addiu   v0, v0, 0x0001             # v0 = 00000001
    slt     $at, v0, a0
    beq     $at, $zero, lbl_801C7D84
    slt     $at, v0, a0
    beq     $at, $zero, lbl_801C7D58
    or      s0, v0, $zero              # s0 = 00000001
lbl_801C7D38:
    jal     func_801C7BEC
    or      a0, s0, $zero              # a0 = 00000001
    lw      t5, 0x0058($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000002
    addu    s1, s1, v0
    slt     $at, s0, t5
    bne     $at, $zero, lbl_801C7D38
    nop
lbl_801C7D58:
    jal     func_801C7BEC
    lw      a0, 0x005C($sp)
    lw      t6, 0x0060($sp)
    lw      a3, 0x0054($sp)
    lw      a0, 0x005C($sp)
    addu    t7, v0, t6
    or      a2, s1, $zero              # a2 = 00000000
    subu    a1, t7, a3
    jal     func_801C7920
    addiu   a0, a0, 0x0001             # a0 = 00000001
    lw      a0, 0x0058($sp)
lbl_801C7D84:
    lw      t8, 0x0050($sp)
    blez    t8, lbl_801C7DD0
    nop
    jal     func_801C7BEC
    nop
    lw      a0, 0x0058($sp)
    lw      a1, 0x004C($sp)
    jal     func_801C7920
    or      a2, v0, $zero              # a2 = 00000000
    jal     func_801C7BEC
    lw      a0, 0x005C($sp)
    lw      t9, 0x0060($sp)
    lw      a3, 0x0054($sp)
    lw      a0, 0x004C($sp)
    addu    t0, v0, t9
    subu    t1, t0, a3
    addu    a1, t1, s1
    jal     func_80004DC0              # bcopy
    lw      a2, 0x0050($sp)
lbl_801C7DD0:
    lui     t2, 0x801E                 # t2 = 801E0000
    addiu   t2, t2, 0x9DC0             # t2 = 801D9DC0
    lw      t4, 0x0000(t2)             # 801D9DC0
    lw      t5, 0x0004(t2)             # 801D9DC4
    bne     t4, $zero, lbl_801C7DF0
    nop
    beq     t5, $zero, lbl_801C7E54
    nop
lbl_801C7DF0:
    jal     func_800048C0              # osGetTime
    nop
    lui     t3, 0x801E                 # t3 = 801E0000
    addiu   t3, t3, 0x9DC0             # t3 = 801D9DC0
    lw      t6, 0x0000(t3)             # 801D9DC0
    lw      t7, 0x0004(t3)             # 801D9DC4
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    subu    a0, v0, t6
    sltu    $at, v1, t7
    subu    a0, a0, $at
    addiu   a3, $zero, 0x0040          # a3 = 00000040
    jal     func_800022D8
    subu    a1, v1, t7
    or      a0, v0, $zero              # a0 = 00000000
    or      a1, v1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800021D8
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lui     a2, 0x000F                 # a2 = 000F0000
    ori     a2, a2, 0x4240             # a2 = 000F4240
    subu    t8, a2, v1
    blez    t8, lbl_801C7E54
    nop
    jal     func_80001C7C
    subu    a0, a2, v1
lbl_801C7E54:
    jal     func_801C7018
    nop
    jal     func_801C6F78
    nop
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_801C7E78:
    jr      $ra
    nop


func_801C7E80:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x9D48             # v0 = 801D9D48
    sw      $ra, 0x0014($sp)
    lw      t6, 0x0000(v0)             # 801D9D48
    lui     t7, 0x801E                 # t7 = 801E0000
    addiu   a0, t7, 0x9C30             # a0 = 801D9C30
    beq     t6, $zero, lbl_801C7EAC
    addiu   a1, $zero, 0x1060          # a1 = 00001060
    beq     $zero, $zero, lbl_801C7F14
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_801C7EAC:
    sw      a0, 0x0000(v0)             # FFFFFFFF
    jal     func_801C7C1C
    addiu   a2, $zero, 0x0118          # a2 = 00000118
    lui     v0, 0x801E                 # v0 = 801E0000
    lw      v0, -0x62B8(v0)            # 801D9D48
    lw      a1, 0x0000(v0)             # 801E0000
    lw      t8, 0x0004(v0)             # 801E0004
    lw      a0, 0x0008(v0)             # 801E0008
    lw      t9, 0x000C(v0)             # 801E000C
    subu    a2, t8, a1
    addu    t1, a0, a2
    subu    t0, t9, a0
    sw      t0, 0x0020($sp)
    sw      t1, 0x0018($sp)
    jal     func_801C7C1C
    sw      a2, 0x0024($sp)
    lw      a2, 0x0024($sp)
    lw      t2, 0x0020($sp)
    lw      a0, 0x0018($sp)
    jal     func_80002E80              # bzero
    subu    a1, t2, a2
    lui     t3, 0x801E                 # t3 = 801E0000
    lw      t3, -0x62B8(t3)            # 801D9D48
    jal     func_800AD4C0
    lw      a0, 0x0010(t3)             # 801E0010
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801C7F14:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_801C7F24:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x801E                 # t6 = 801E0000
    lw      t6, -0x62B8(t6)            # 801D9D48
    bne     t6, $zero, lbl_801C7F44
    nop
    beq     $zero, $zero, lbl_801C7F80
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_801C7F44:
    jal     func_800AD51C
    nop
    lui     v0, 0x801E                 # v0 = 801E0000
    lw      v0, -0x62B8(v0)            # 801D9D48
    lw      a0, 0x0008(v0)             # 801E0008
    lw      t7, 0x000C(v0)             # 801E000C
    jal     func_80002E80              # bzero
    subu    a1, t7, a0
    lui     a0, 0x801E                 # a0 = 801E0000
    lw      a0, -0x62B8(a0)            # 801D9D48
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0118          # a1 = 00000118
    lui     $at, 0x801E                # $at = 801E0000
    sw      $zero, -0x62B8($at)        # 801D9D48
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801C7F80:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C7F90:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    beq     a0, $zero, lbl_801C7FC0
    lui     t7, 0x801E                 # t7 = 801E0000
    lui     t6, 0x801E                 # t6 = 801E0000
    lw      t6, -0x62B8(t6)            # 801D9D48
    bnel    t6, $zero, lbl_801C7FD8
    lw      $ra, 0x0014($sp)
    jal     func_801C7E80
    nop
    beq     $zero, $zero, lbl_801C7FD8
    lw      $ra, 0x0014($sp)
lbl_801C7FC0:
    lw      t7, -0x62B8(t7)            # FFFF9D48
    beql    t7, $zero, lbl_801C7FD8
    lw      $ra, 0x0014($sp)
    jal     func_801C7F24
    nop
    lw      $ra, 0x0014($sp)
lbl_801C7FD8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop


func_801C8000:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lbu     t6, 0x0000(s0)             # 00000000
    sltiu   $at, t6, 0x000E
    beq     $at, $zero, lbl_801C8184
    sll     t6, t6,  2
    lui     $at, 0x801E                # $at = 801E0000
    addu    $at, $at, t6
    lw      t6, -0x71D0($at)           # 801D8E30
    jr      t6
    nop
    jal     func_801C8844
    nop
    beq     v0, $zero, lbl_801C804C
    nop
    beq     $zero, $zero, lbl_801C8188
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_801C804C:
    jal     func_801C8554
    nop
    beq     $zero, $zero, lbl_801C8188
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t7, 0x002C(s0)             # 0000002C
    lw      a0, 0x001C(s0)             # 0000001C
    lw      a1, 0x0020(s0)             # 00000020
    lw      a2, 0x0024(s0)             # 00000024
    lw      a3, 0x0028(s0)             # 00000028
    jal     func_801C8578
    sw      t7, 0x0010($sp)
    beq     $zero, $zero, lbl_801C8188
    or      v0, $zero, $zero           # v0 = 00000000
    lw      a0, 0x000C(s0)             # 0000000C
    lw      a1, 0x0010(s0)             # 00000010
    jal     func_801C8638
    lw      a2, 0x0014(s0)             # 00000014
    beq     $zero, $zero, lbl_801C8188
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_801C8844
    nop
    beq     v0, $zero, lbl_801C80B0
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    beq     $zero, $zero, lbl_801C8188
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_801C80B0:
    lw      a0, 0x0018(s0)             # 00000018
    lw      a1, 0x001C(s0)             # 0000001C
    jal     func_801C868C
    lw      a2, 0x0020(s0)             # 00000020
    beq     $zero, $zero, lbl_801C8188
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_801C8844
    nop
    beq     v0, $zero, lbl_801C80E0
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    beq     $zero, $zero, lbl_801C8188
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_801C80E0:
    lw      a0, 0x0018(s0)             # 00000018
    lw      a1, 0x001C(s0)             # 0000001C
    jal     func_801C868C
    lw      a2, 0x0020(s0)             # 00000020
    beq     $zero, $zero, lbl_801C8188
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_801C8770
    nop
    sb      v0, 0x0008(s0)             # 00000008
    beq     $zero, $zero, lbl_801C8188
    andi    v0, v0, 0x00FF             # v0 = 00000000
    jal     func_801C87FC
    nop
    beq     $zero, $zero, lbl_801C818C
    lw      $ra, 0x0024($sp)
    jal     func_801C8844
    nop
    beq     $zero, $zero, lbl_801C818C
    lw      $ra, 0x0024($sp)
    jal     func_801C87C0
    nop
    beq     $zero, $zero, lbl_801C8188
    sw      v0, 0x0004(s0)             # 00000004
    jal     func_801C885C
    nop
    beq     $zero, $zero, lbl_801C818C
    lw      $ra, 0x0024($sp)
    jal     func_801C88AC
    nop
    beq     $zero, $zero, lbl_801C818C
    lw      $ra, 0x0024($sp)
    jal     func_801C88FC
    nop
    beq     $zero, $zero, lbl_801C818C
    lw      $ra, 0x0024($sp)
    lui     $at, 0x801D                # $at = 801D0000
    beq     $zero, $zero, lbl_801C8184
    sw      $zero, 0x2EA0($at)         # 801D2EA0
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x801D                # $at = 801D0000
    sw      t8, 0x2EA0($at)            # 801D2EA0
lbl_801C8184:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801C8188:
    lw      $ra, 0x0024($sp)
lbl_801C818C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_801C819C:
    beq     a0, $zero, lbl_801C81B4
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x801D                # $at = 801D0000
    jr      $ra
    sw      t6, 0x2E60($at)            # 801D2E60
lbl_801C81B4:
    lui     $at, 0x801D                # $at = 801D0000
    sw      t7, 0x2E60($at)            # 801D2E60
    jr      $ra
    nop


func_801C81C4:
    lui     v0, 0x801D                 # v0 = 801D0000
    lw      v0, 0x2E60(v0)             # 801D2E60
    jr      $ra
    nop


func_801C81D4:
    lui     v0, 0x801D                 # v0 = 801D0000
    lw      v0, 0x2E64(v0)             # 801D2E64
    xori    v0, v0, 0x0001             # v0 = 801D0001
    sltiu   v0, v0, 0x0001
    jr      $ra
    nop


func_801C81EC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     a1, 0x801E                 # a1 = 801E0000
    addiu   a1, a1, 0x0D88             # a1 = 801E0D88
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80004220              # osCreateMesgQueue
    addiu   a0, a0, 0x001C             # a0 = 0000001C
    lui     t6, 0x8000                 # t6 = 80000000
    lw      t6, 0x6280(t6)             # 80006280
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a0, $zero, 0x0095          # a0 = 00000095
    bne     t6, $at, lbl_801C824C
    addiu   a1, $zero, 0x0096          # a1 = 00000096
    lui     a2, 0x801E                 # a2 = 801E0000
    addiu   a2, a2, 0x0D90             # a2 = 801E0D90
    addiu   a0, $zero, 0x0095          # a0 = 00000095
    addiu   a1, $zero, 0x0096          # a1 = 00000096
    jal     func_801D2170
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    lw      t7, 0x0018($sp)
    beq     $zero, $zero, lbl_801C8264
    sw      v0, 0x0068(t7)             # 00000068
lbl_801C824C:
    lui     a2, 0x801E                 # a2 = 801E0000
    addiu   a2, a2, 0x0D90             # a2 = 801E0D90
    jal     func_801D2A80
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    lw      t8, 0x0018($sp)
    sw      v0, 0x0068(t8)             # 00000068
lbl_801C8264:
    lw      t9, 0x0018($sp)
    addiu   $at, $zero, 0x0029         # $at = 00000029
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lw      v0, 0x0068(t9)             # 00000068
    beq     v0, $at, lbl_801C8280
    nop
    bne     v0, $zero, lbl_801C8288
lbl_801C8280:
    lui     $at, 0x801D                # $at = 801D0000
    sw      t0, 0x2E64($at)            # 801D2E64
lbl_801C8288:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C8298:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a2, a3, 0x001C             # a2 = 0000001C
    sw      a2, 0x0018($sp)
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFE4
    addiu   a1, a3, 0x0038             # a1 = 00000038
    jal     func_801CC190
    sw      a3, 0x0038($sp)
    lw      a3, 0x0038($sp)
    lw      a0, 0x0018($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80002030              # osRecvMesg
    addiu   a1, a3, 0x0068             # a1 = 00000068
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_801C82E0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    lw      a3, 0x0038($sp)
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFE4
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    addiu   a3, a3, 0x001C             # a3 = 0000001C
    or      a2, a3, $zero              # a2 = 0000001C
    jal     func_801CCCD0
    sw      a3, 0x0018($sp)
    lw      a1, 0x0038($sp)
    lw      a0, 0x0018($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80002030              # osRecvMesg
    addiu   a1, a1, 0x0068             # a1 = 00000068
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_801C832C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lw      a0, 0x005C(s0)             # 0000005C
    lw      a1, 0x0060(s0)             # 00000060
    addiu   a2, $sp, 0x0034            # a2 = FFFFFFFC
    jal     func_801CE680
    sw      a0, 0x0030($sp)
    bne     v0, $zero, lbl_801C838C
    or      a0, s0, $zero              # a0 = 00000000
    lw      t6, 0x0034($sp)
    lw      a3, 0x0058(s0)             # 00000058
    addiu   v0, s0, 0x001C             # v0 = 0000001C
    sw      v0, 0x0014($sp)
    sw      v0, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    lw      a2, 0x0030($sp)
    jal     func_801CA740
    sw      t6, 0x0010($sp)
    lw      a0, 0x0028($sp)
    addiu   a1, s0, 0x0068             # a1 = 00000068
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_801C838C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_801C83A0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lw      a0, 0x0058(s0)             # 00000058
    lw      a1, 0x0060(s0)             # 00000060
    addiu   a2, $sp, 0x0034            # a2 = FFFFFFFC
    jal     func_801CE680
    sw      a0, 0x0030($sp)
    bne     v0, $zero, lbl_801C8400
    or      a0, s0, $zero              # a0 = 00000000
    lw      t6, 0x0034($sp)
    lw      a3, 0x005C(s0)             # 0000005C
    addiu   v0, s0, 0x001C             # v0 = 0000001C
    sw      v0, 0x0014($sp)
    sw      v0, 0x0028($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      a2, 0x0030($sp)
    jal     func_801CA740
    sw      t6, 0x0010($sp)
    lw      a0, 0x0028($sp)
    addiu   a1, s0, 0x0068             # a1 = 00000068
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_801C8400:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_801C8414:
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    sw      t6, 0x0068(a0)             # 00000068
    jr      $ra
    nop


func_801C8424:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    jal     func_801C81D4
    sw      t6, 0x0068(s0)             # 00000068
    bne     v0, $zero, lbl_801C8460
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lbu     t7, 0x0064(s0)             # 00000064
    bnel    t7, $zero, lbl_801C84BC
    lw      $ra, 0x0024($sp)
lbl_801C8460:
    lbu     t9, 0x0064(s0)             # 00000064
    lui     t1, 0x801D                 # t1 = 801D0000
    addiu   t1, t1, 0x2E68             # t1 = 801D2E68
    sll     t0, t9,  3
    sb      t8, 0x0066(s0)             # 00000066
    addu    v0, t0, t1
    lw      s1, 0x0000(v0)             # 00000000
    lw      s2, 0x0004(v0)             # 00000004
    addiu   s3, $zero, 0x0002          # s3 = 00000002
lbl_801C8484:
    jalr    $ra, s1
    or      a0, s0, $zero              # a0 = 00000000
    jalr    $ra, s2
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, s3, lbl_801C8484
    or      a0, v0, $zero              # a0 = 00000000
    lbu     t2, 0x0064(s0)             # 00000064
    sw      v0, 0x006C(s0)             # 0000006C
    bnel    t2, $zero, lbl_801C84B8
    sb      $zero, 0x0066(s0)          # 00000066
    jal     func_801C819C
    nop
    sb      $zero, 0x0066(s0)          # 00000066
lbl_801C84B8:
    lw      $ra, 0x0024($sp)
lbl_801C84BC:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_801C84D4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    sw      a0, 0x0028($sp)
    lui     s0, 0x801E                 # s0 = 801E0000
    addiu   s0, s0, 0x0D10             # s0 = 801E0D10
    addiu   s1, $sp, 0x0024            # s1 = FFFFFFFC
    lw      a0, 0x0000(s0)             # 801E0D10
lbl_801C84F8:
    or      a1, s1, $zero              # a1 = FFFFFFFC
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_801C8424
    lw      a0, 0x0024($sp)
    lw      a0, 0x0004(s0)             # 801E0D14
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80001E20              # osSendMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beq     $zero, $zero, lbl_801C84F8
    lw      a0, 0x0000(s0)             # 801E0D10
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_801C8554:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x801E                 # a0 = 801E0000
    jal     func_80002D70              # osDestroyThread
    addiu   a0, a0, 0x0DB0             # a0 = 801E0DB0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C8578:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x0D10             # v0 = 801E0D10
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    lw      t6, 0x0020($sp)
    lw      t7, 0x0024($sp)
    lw      t8, 0x002C($sp)
    lw      t9, 0x0030($sp)
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a2, 0x801D                 # a2 = 801D0000
    addiu   a2, a2, 0x84D4             # a2 = 801C84D4
    addiu   a0, a0, 0x0DB0             # a0 = 801E0DB0
    lw      a1, 0x0028($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    sw      t6, 0x0000(v0)             # 801E0D10
    sw      t7, 0x0004(v0)             # 801E0D14
    sw      t8, 0x0010($sp)
    jal     func_80002F20              # osCreateThread
    sw      t9, 0x0014($sp)
    lui     a0, 0x801E                 # a0 = 801E0000
    jal     func_80005EC0              # osStartThread
    addiu   a0, a0, 0x0DB0             # a0 = 801E0DB0
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_801C85F0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a1, $at, lbl_801C8618
    lui     a0, 0x801E                 # a0 = 801E0000
    jal     func_801C8424
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_801C862C
    lw      $ra, 0x0014($sp)
lbl_801C8618:
    lw      a0, 0x0D10(a0)             # 00000D10
    or      a1, a3, $zero              # a1 = 00000000
    jal     func_80001E20              # osSendMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0014($sp)
lbl_801C862C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C8638:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_801C9B50
    or      a1, a2, $zero              # a1 = 00000000
    lw      t6, 0x0018($sp)
    lui     $at, 0x801D                # $at = 801D0000
    lui     a0, 0x801E                 # a0 = 801E0000
    sw      t6, 0x2EB4($at)            # 801D2EB4
    lui     $at, 0x801E                # $at = 801E0000
    sb      $zero, 0x0D7C($at)         # 801E0D7C
    sb      $zero, 0x0D7D($at)         # 801E0D7D
    addiu   a0, a0, 0x0D18             # a0 = 801E0D18
    jal     func_801C85F0
    or      a1, $zero, $zero           # a1 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C868C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v0, 0x801D                 # v0 = 801D0000
    addiu   v0, v0, 0x2E90             # v0 = 801D2E90
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    lw      t6, 0x0000(v0)             # 801D2E90
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    bne     t6, $at, lbl_801C86F4
    lui     a0, 0x801E                 # a0 = 801E0000
    sw      $zero, 0x0000(v0)          # 801D2E90
    lui     $at, 0x801E                # $at = 801E0000
    sb      t7, 0x0D7C($at)            # 801E0D7C
    addiu   a0, a0, 0x0D18             # a0 = 801E0D18
    jal     func_801C85F0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     v0, 0x801E                 # v0 = 801E0000
    lw      v0, 0x0D84(v0)             # 801E0D84
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_801C872C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beql    v0, $at, lbl_801C8730
    lw      $ra, 0x0014($sp)
lbl_801C86F4:
    lw      t8, 0x0018($sp)
    lw      t9, 0x001C($sp)
    lui     $at, 0x801E                # $at = 801E0000
    lw      t0, 0x0020($sp)
    lbu     t1, 0x0027($sp)
    sw      t8, 0x0D70($at)            # 801E0D70
    sw      t9, 0x0D74($at)            # 801E0D74
    lui     $at, 0x801E                # $at = 801E0000
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x0D18             # a0 = 801E0D18
    or      a1, $zero, $zero           # a1 = 00000000
    sw      t0, 0x0D78($at)            # 801E0D78
    jal     func_801C85F0
    sb      t1, 0x0D7C($at)            # 801E0D7C
lbl_801C872C:
    lw      $ra, 0x0014($sp)
lbl_801C8730:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C873C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    jal     func_801D2CB0
    addiu   a0, $sp, 0x001F            # a0 = FFFFFFFF
    lw      t6, 0x0020($sp)
    sw      v0, 0x0068(t6)             # 00000068
    lbu     v0, 0x001F($sp)
    lw      $ra, 0x0014($sp)
    andi    v0, v0, 0x0001             # v0 = 00000000
    sltiu   v0, v0, 0x0001
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_801C8770:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x801E                 # a0 = 801E0000
    jal     func_801C873C
    addiu   a0, a0, 0x0D18             # a0 = 801E0D18
    lui     t6, 0x801E                 # t6 = 801E0000
    lw      t6, 0x0D80(t6)             # 801E0D80
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lw      $ra, 0x0014($sp)
    bne     t6, $at, lbl_801C87A4
    nop
    beq     $zero, $zero, lbl_801C87B8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801C87A4:
    bnel    v0, $zero, lbl_801C87B8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_801C87B8
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_801C87B8:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_801C87C0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_801C8844
    nop
    bne     v0, $zero, lbl_801C87F0
    lw      $ra, 0x0014($sp)
    lui     v1, 0x801E                 # v1 = 801E0000
    lw      v1, 0x0D80(v1)             # 801E0D80
    beql    v1, $zero, lbl_801C87F4
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    beq     $zero, $zero, lbl_801C87F4
    or      v0, v1, $zero              # v0 = 801E0000
lbl_801C87F0:
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_801C87F4:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_801C87FC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_801C8844
    nop
    bne     v0, $zero, lbl_801C8838
    lw      $ra, 0x0014($sp)
    lui     v0, 0x801E                 # v0 = 801E0000
    lw      v0, 0x0D84(v0)             # 801E0D84
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_801C882C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_801C8838
lbl_801C882C:
    lui     v0, 0x801E                 # v0 = 801E0000
    beq     $zero, $zero, lbl_801C883C
    lw      v0, 0x0D80(v0)             # 801E0D80
lbl_801C8838:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801C883C:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_801C8844:
    lui     v0, 0x801E                 # v0 = 801E0000
    lbu     v0, 0x0D7E(v0)             # 801E0D7E
    xori    v0, v0, 0x0001             # v0 = 801E0001
    sltiu   v0, v0, 0x0001
    jr      $ra
    nop


func_801C885C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x0D18             # a0 = 801E0D18
    sw      $ra, 0x0014($sp)
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sb      t6, 0x0064(a0)             # 801E0D7C
    jal     func_801C85F0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     v1, 0x801E                 # v1 = 801E0000
    lw      v1, 0x0D84(v1)             # 801E0D84
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      $ra, 0x0014($sp)
    beq     v1, $at, lbl_801C889C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v1, $at, lbl_801C88A4
    sltiu   v0, v1, 0x0001
lbl_801C889C:
    beq     $zero, $zero, lbl_801C88A4
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_801C88A4:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_801C88AC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x0D18             # a0 = 801E0D18
    sw      $ra, 0x0014($sp)
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sb      t6, 0x0064(a0)             # 801E0D7C
    jal     func_801C85F0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     v1, 0x801E                 # v1 = 801E0000
    lw      v1, 0x0D84(v1)             # 801E0D84
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      $ra, 0x0014($sp)
    beq     v1, $at, lbl_801C88EC
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v1, $at, lbl_801C88F4
    sltiu   v0, v1, 0x0001
lbl_801C88EC:
    beq     $zero, $zero, lbl_801C88F4
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_801C88F4:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_801C88FC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_801CE120
    nop
    beq     v0, $zero, lbl_801C891C
    lui     $at, 0x801E                # $at = 801E0000
    beq     $zero, $zero, lbl_801C8920
    addiu   v1, $zero, 0x0008          # v1 = 00000008
lbl_801C891C:
    or      v1, $zero, $zero           # v1 = 00000000
lbl_801C8920:
    sltiu   v0, v1, 0x0001
    sw      v1, 0x0D80($at)            # 801E0D80
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop


func_801C8940:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_801C9E28
    nop
    lui     $at, 0x801D                # $at = 801D0000
    sw      v0, 0x2EA4($at)            # 801D2EA4
    lui     $at, 0x801D                # $at = 801D0000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x2EA8($at)            # 801D2EA8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C8974:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x801D                 # t6 = 801D0000
    lw      t6, 0x2EA8(t6)             # 801D2EA8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t6, $at, lbl_801C89AC
    lw      $ra, 0x0014($sp)
    jal     func_801C9EC0
    nop
    lui     $at, 0x801D                # $at = 801D0000
    sw      v0, 0x2EA4($at)            # 801D2EA4
    lui     $at, 0x801D                # $at = 801D0000
    sw      $zero, 0x2EA8($at)         # 801D2EA8
    lw      $ra, 0x0014($sp)
lbl_801C89AC:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C89B8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_801C9F90
    nop
    lui     $at, 0x801D                # $at = 801D0000
    sw      v0, 0x2EAC($at)            # 801D2EAC
    lui     $at, 0x801E                # $at = 801E0000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0F60($at)            # 801E0F60
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C89EC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x801E                 # t6 = 801E0000
    lw      t6, 0x0F60(t6)             # 801E0F60
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t6, $at, lbl_801C8A24
    lw      $ra, 0x0014($sp)
    jal     func_801C9FFC
    nop
    lui     $at, 0x801D                # $at = 801D0000
    sw      v0, 0x2EAC($at)            # 801D2EAC
    lui     $at, 0x801E                # $at = 801E0000
    sw      $zero, 0x0F60($at)         # 801E0F60
    lw      $ra, 0x0014($sp)
lbl_801C8A24:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C8A30:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_801CA030
    nop
    lui     $at, 0x801D                # $at = 801D0000
    sw      v0, 0x2EB0($at)            # 801D2EB0
    lui     $at, 0x801E                # $at = 801E0000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0F64($at)            # 801E0F64
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C8A64:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x801E                 # t6 = 801E0000
    lw      t6, 0x0F64(t6)             # 801E0F64
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t6, $at, lbl_801C8A9C
    lw      $ra, 0x0014($sp)
    jal     func_801CA070
    nop
    lui     $at, 0x801D                # $at = 801D0000
    sw      v0, 0x2EB0($at)            # 801D2EB0
    lui     $at, 0x801E                # $at = 801E0000
    sw      $zero, 0x0F64($at)         # 801E0F64
    lw      $ra, 0x0014($sp)
lbl_801C8A9C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C8AA8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    lui     a0, 0x801E                 # a0 = 801E0000
    lw      a0, 0x0D14(a0)             # 801E0D14
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    or      a2, $zero, $zero           # a2 = 00000000
    lui     t6, 0x801D                 # t6 = 801D0000
    lw      t6, 0x2EB4(t6)             # 801D2EB4
    lui     t7, 0x801D                 # t7 = 801D0000
    beql    t6, $zero, lbl_801C8B4C
    lw      $ra, 0x0014($sp)
    lw      t7, 0x2EA0(t7)             # 801D2EA0
    bnel    t7, $zero, lbl_801C8B4C
    lw      $ra, 0x0014($sp)
    jal     func_80003CC0              # osSetIntMask
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lui     v1, 0x801D                 # v1 = 801D0000
    lui     a1, 0x801D                 # a1 = 801D0000
    lui     a2, 0x801D                 # a2 = 801D0000
    addiu   a2, a2, 0x2EB0             # a2 = 801D2EB0
    addiu   a1, a1, 0x2EAC             # a1 = 801D2EAC
    addiu   v1, v1, 0x2EA4             # v1 = 801D2EA4
    lw      t8, 0x0000(v1)             # 801D2EA4
    lw      t9, 0x0000(a1)             # 801D2EAC
    lw      t0, 0x0000(a2)             # 801D2EB0
    sw      $zero, 0x0000(v1)          # 801D2EA4
    sw      $zero, 0x0000(a1)          # 801D2EAC
    sw      $zero, 0x0000(a2)          # 801D2EB0
    or      a0, v0, $zero              # a0 = 00000000
    sw      t8, 0x0020($sp)
    sw      t9, 0x001C($sp)
    jal     func_80003CC0              # osSetIntMask
    sw      t0, 0x0018($sp)
    lui     t9, 0x801D                 # t9 = 801D0000
    lw      t9, 0x2EB4(t9)             # 801D2EB4
    lw      a0, 0x0020($sp)
    lw      a1, 0x001C($sp)
    jalr    $ra, t9
    lw      a2, 0x0018($sp)
    lw      $ra, 0x0014($sp)
lbl_801C8B4C:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_801C8B58:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    jal     func_801C8940
    nop
    jal     func_801C89B8
    lw      a0, 0x001C($sp)
    jal     func_801C8A30
    lw      a0, 0x0020($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C8B90:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_801C8974
    nop
    jal     func_801C89EC
    nop
    jal     func_801C8A64
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C8BC0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      a1, 0x0068(a0)             # 00000068
    slti    $at, a1, 0x0025
    bne     $at, $zero, lbl_801C8BDC
    slti    $at, a1, 0x0029
    bne     $at, $zero, lbl_801C8C00
lbl_801C8BDC:
    addiu   $at, $zero, 0x001F         # $at = 0000001F
    beq     a1, $at, lbl_801C8C00
    addiu   $at, $zero, 0x0020         # $at = 00000020
    beq     a1, $at, lbl_801C8C00
    nop
    jal     func_801C8940
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_801C89B8
    addiu   a0, $zero, 0x0003          # a0 = 00000003
lbl_801C8C00:
    jal     func_801CE630
    nop
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C8C1C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s1, 0x001C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s0, 0x0018($sp)
    addiu   s4, $zero, 0x002A          # s4 = 0000002A
    addiu   s3, $zero, 0x0023          # s3 = 00000023
    addiu   s2, $zero, 0x0022          # s2 = 00000022
    or      s0, $zero, $zero           # s0 = 00000000
lbl_801C8C4C:
    jal     func_80001CCC
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    jal     func_801C82E0
    or      a0, s1, $zero              # a0 = 00000000
    lw      v0, 0x0068(s1)             # 00000068
    beq     v0, $zero, lbl_801C8CA8
    nop
    beq     v0, s2, lbl_801C8C90
    nop
    beql    v0, s3, lbl_801C8CB4
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    bne     v0, s4, lbl_801C8CB4
    nop
    jal     func_801C8A64
    nop
    beq     $zero, $zero, lbl_801C8CCC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801C8C90:
    jal     func_801C8A64
    nop
    jal     func_801CE630
    nop
    beq     $zero, $zero, lbl_801C8CCC
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_801C8CA8:
    jal     func_801C8A30
    addiu   a0, $zero, 0x0006          # a0 = 00000006
    addiu   s0, $zero, 0x0001          # s0 = 00000001
lbl_801C8CB4:
    bnel    s0, $zero, lbl_801C8C4C
    or      s0, $zero, $zero           # s0 = 00000000
    jal     func_801C8A64
    nop
    jal     func_801C8BC0
    or      a0, s1, $zero              # a0 = 00000000
lbl_801C8CCC:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_801C8CEC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      a1, 0x0068(a0)             # 00000068
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     a1, $zero, lbl_801C8D5C
    or      v0, a1, $zero              # v0 = 00000000
    beq     a1, $at, lbl_801C8D44
    addiu   $at, $zero, 0x0022         # $at = 00000022
    beq     v0, $at, lbl_801C8D2C
    addiu   $at, $zero, 0x0023         # $at = 00000023
    beq     v0, $at, lbl_801C8DAC
    addiu   $at, $zero, 0x002B         # $at = 0000002B
    beql    v0, $at, lbl_801C8D70
    lbu     t6, 0x0065(a0)             # 00000065
    beq     $zero, $zero, lbl_801C8D94
    nop
lbl_801C8D2C:
    jal     func_801C8B90
    nop
    jal     func_801CE630
    nop
    beq     $zero, $zero, lbl_801C8DB0
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_801C8D44:
    jal     func_801C8940
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_801C8A30
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    beq     $zero, $zero, lbl_801C8DB0
    addiu   v0, $zero, 0x0009          # v0 = 00000009
lbl_801C8D5C:
    jal     func_801C8B90
    nop
    beq     $zero, $zero, lbl_801C8DB0
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     t6, 0x0065(a0)             # 00000065
lbl_801C8D70:
    bne     t6, $zero, lbl_801C8D94
    nop
    jal     func_801C8B90
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_801C8DB0
    sb      t7, 0x0065(a0)             # 00000065
lbl_801C8D94:
    jal     func_801C8B90
    sw      a0, 0x0018($sp)
    jal     func_801C8BC0
    lw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_801C8DB4
    lw      $ra, 0x0014($sp)
lbl_801C8DAC:
    addiu   v0, $zero, 0x0009          # v0 = 00000009
lbl_801C8DB0:
    lw      $ra, 0x0014($sp)
lbl_801C8DB4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C8DC0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    addiu   s3, $zero, 0x0009          # s3 = 00000009
    addiu   s2, $zero, 0x0031          # s2 = 00000031
    addiu   s1, $zero, 0x002A          # s1 = 0000002A
lbl_801C8DE8:
    jal     func_801C8298
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0068(s0)             # 00000068
    beq     a0, s1, lbl_801C8E1C
    nop
    bne     a0, s2, lbl_801C8E2C
    nop
    jal     func_801C8940
    nop
    jal     func_801C89B8
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    beq     $zero, $zero, lbl_801C8E54
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_801C8E1C:
    jal     func_801C8B90
    nop
    beq     $zero, $zero, lbl_801C8E54
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_801C8E2C:
    jal     func_801C8CEC
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, s3, lbl_801C8E44
    nop
    beq     $zero, $zero, lbl_801C8E58
    lw      $ra, 0x0024($sp)
lbl_801C8E44:
    jal     func_80001CCC
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    beq     $zero, $zero, lbl_801C8DE8
    nop
lbl_801C8E54:
    lw      $ra, 0x0024($sp)
lbl_801C8E58:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_801C8E70:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    addiu   s4, $zero, 0x0009          # s4 = 00000009
    addiu   s3, $zero, 0x0031          # s3 = 00000031
    addiu   s2, $zero, 0x002A          # s2 = 0000002A
    addiu   s1, $zero, 0x0023          # s1 = 00000023
lbl_801C8EA0:
    jal     func_80001CCC
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    jal     func_801C8298
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0068(s0)             # 00000068
    beq     a0, s1, lbl_801C8EA0
    nop
    beq     a0, s2, lbl_801C8EDC
    nop
    bne     a0, s3, lbl_801C8EEC
    nop
    jal     func_801C8940
    nop
    jal     func_801C89B8
    addiu   a0, $zero, 0x0002          # a0 = 00000002
lbl_801C8EDC:
    jal     func_801C8A30
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    beq     $zero, $zero, lbl_801C8EA0
    nop
lbl_801C8EEC:
    jal     func_801C8CEC
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, s4, lbl_801C8EA0
    nop
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_801C8F1C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     v0, 0x801D                 # v0 = 801D0000
    lw      v0, 0x2E54(v0)             # 801D2E54
    beql    v0, $zero, lbl_801C8F48
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jalr    $ra, v0
    nop
    beq     $zero, $zero, lbl_801C8F4C
    lw      $ra, 0x0014($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_801C8F48:
    lw      $ra, 0x0014($sp)
lbl_801C8F4C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C8F58:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    addiu   s2, $zero, 0x0004          # s2 = 00000004
    addiu   s1, $zero, 0x0003          # s1 = 00000003
lbl_801C8F78:
    jal     func_801C8E70
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, s1, lbl_801C8F90
    or      v1, v0, $zero              # v1 = 00000000
    bne     v0, s2, lbl_801C8F98
    nop
lbl_801C8F90:
    beq     $zero, $zero, lbl_801C8FE8
    or      v0, v1, $zero              # v0 = 00000000
lbl_801C8F98:
    bne     v1, $zero, lbl_801C8F78
    nop
    jal     func_801C8F1C
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_801C8FB8
    nop
    beq     $zero, $zero, lbl_801C8FE8
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_801C8FB8:
    jal     func_801C89B8
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_801C8C1C
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_801C8FD8
    nop
    beq     $zero, $zero, lbl_801C8FEC
    lw      $ra, 0x0024($sp)
lbl_801C8FD8:
    jal     func_801C89EC
    nop
    beq     $zero, $zero, lbl_801C8F78
    nop
lbl_801C8FE8:
    lw      $ra, 0x0024($sp)
lbl_801C8FEC:
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_801C9000:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s3, 0x0024($sp)
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    addiu   s2, $zero, 0x0004          # s2 = 00000004
    addiu   s1, $zero, 0x0003          # s1 = 00000003
lbl_801C9028:
    jal     func_801C8E70
    or      a0, s3, $zero              # a0 = 00000000
    beq     v0, s1, lbl_801C9040
    or      s0, v0, $zero              # s0 = 00000000
    bne     v0, s2, lbl_801C9048
    nop
lbl_801C9040:
    beq     $zero, $zero, lbl_801C90A4
    or      v0, s0, $zero              # v0 = 00000000
lbl_801C9048:
    bne     s0, $zero, lbl_801C9028
    nop
    jal     func_801C8B90
    nop
    jal     func_801C8F1C
    or      a0, s3, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_801C9070
    or      s4, v0, $zero              # s4 = 00000000
    beq     $zero, $zero, lbl_801C90A4
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_801C9070:
    jal     func_801C89B8
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_801C8C1C
    or      a0, s3, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_801C9090
    or      s0, v0, $zero              # s0 = 00000000
    beq     $zero, $zero, lbl_801C90A8
    lw      $ra, 0x002C($sp)
lbl_801C9090:
    jal     func_801C89EC
    nop
    beq     s4, $zero, lbl_801C9028
    nop
    or      v0, s0, $zero              # v0 = 00000000
lbl_801C90A4:
    lw      $ra, 0x002C($sp)
lbl_801C90A8:
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_801C90C4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t6, 0x0018($sp)
    jal     func_801C8940
    lw      a0, 0x0068(t6)             # 00000068
    jal     func_801C89B8
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    jal     func_801C9000
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C90FC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t6, 0x0018($sp)
    jal     func_801C8940
    lw      a0, 0x0068(t6)             # 00000068
    jal     func_801C9000
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C912C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s1, 0x001C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s0, 0x0018($sp)
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s4, $zero, 0x0001          # s4 = 00000001
    addiu   s3, $zero, 0x0004          # s3 = 00000004
    addiu   s2, $zero, 0x0003          # s2 = 00000003
lbl_801C915C:
    jal     func_801CABB8
    nop
    jal     func_801C8DC0
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, s2, lbl_801C917C
    or      v1, v0, $zero              # v1 = 00000000
    bne     v0, s3, lbl_801C9184
    nop
lbl_801C917C:
    beq     $zero, $zero, lbl_801C91C0
    or      v0, v1, $zero              # v0 = 00000000
lbl_801C9184:
    beq     v0, s4, lbl_801C91A4
    nop
    bne     v0, $zero, lbl_801C919C
    nop
    beq     $zero, $zero, lbl_801C91C0
    or      v0, v1, $zero              # v0 = 00000000
lbl_801C919C:
    beq     $zero, $zero, lbl_801C91C0
    or      v0, v1, $zero              # v0 = 00000000
lbl_801C91A4:
    jal     func_80001CCC
    addiu   a0, $zero, 0x00FA          # a0 = 000000FA
    slti    v0, s0, 0x001E
    bne     v0, $zero, lbl_801C915C
    addiu   s0, s0, 0x0001             # s0 = 00000001
    jal     func_801C8BC0
    or      a0, s1, $zero              # a0 = 00000000
lbl_801C91C0:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_801C91E0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t6, 0x0068(a0)             # 00000068
    addiu   $at, $zero, 0x0029         # $at = 00000029
    lui     t7, 0x8000                 # t7 = 80000000
    bne     t6, $at, lbl_801C920C
    nop
    jal     func_801C8BC0
    nop
    beq     $zero, $zero, lbl_801C9254
    lw      $ra, 0x0014($sp)
lbl_801C920C:
    lw      t7, 0x0318(t7)             # 00000318
    lui     $at, 0x0080                # $at = 00800000
    or      a1, $zero, $zero           # a1 = 00000000
    sltu    $at, t7, $at
    beq     $at, $zero, lbl_801C9234
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_801C8B58
    addiu   a0, $zero, 0x002C          # a0 = 0000002C
    beq     $zero, $zero, lbl_801C9250
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_801C9234:
    jal     func_801C912C
    nop
    bne     v0, $zero, lbl_801C924C
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x801D                # $at = 801D0000
    sw      t8, 0x2E90($at)            # 801D2E90
lbl_801C924C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801C9250:
    lw      $ra, 0x0014($sp)
lbl_801C9254:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C9260:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t6, 0x0068(a0)             # 00000068
    sltiu   $at, t6, 0x0032
    beq     $at, $zero, lbl_801C931C
    sll     t6, t6,  2
    lui     $at, 0x801E                # $at = 801E0000
    addu    $at, $at, t6
    lw      t6, -0x7190($at)           # 801D8E70
    jr      t6
    nop
    jal     func_801C873C
    sw      a0, 0x0018($sp)
    jal     func_801C8C1C
    lw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_801C92AC
    nop
    beq     $zero, $zero, lbl_801C9328
    lw      $ra, 0x0014($sp)
lbl_801C92AC:
    jal     func_801C8B90
    nop
    beq     $zero, $zero, lbl_801C9324
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    jal     func_801C8F58
    nop
    beq     $zero, $zero, lbl_801C9328
    lw      $ra, 0x0014($sp)
    jal     func_801CE630
    nop
    beq     $zero, $zero, lbl_801C9324
    addiu   v0, $zero, 0x0003          # v0 = 00000003
    jal     func_801C90C4
    nop
    beq     $zero, $zero, lbl_801C9328
    lw      $ra, 0x0014($sp)
    jal     func_801C9000
    nop
    beq     $zero, $zero, lbl_801C9328
    lw      $ra, 0x0014($sp)
    jal     func_801C90FC
    nop
    beq     $zero, $zero, lbl_801C9328
    lw      $ra, 0x0014($sp)
    beq     $zero, $zero, lbl_801C9324
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_801C9324
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_801C931C:
    jal     func_801C8BC0
    nop
lbl_801C9324:
    lw      $ra, 0x0014($sp)
lbl_801C9328:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C9334:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s3, 0x0020($sp)
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    addiu   s2, $zero, 0x0005          # s2 = 00000005
    addiu   s1, $zero, 0x0004          # s1 = 00000004
    addiu   s0, $zero, 0x0003          # s0 = 00000003
lbl_801C935C:
    jal     func_801C8DC0
    or      a0, s3, $zero              # a0 = 00000000
    beq     v0, s0, lbl_801C937C
    or      v1, v0, $zero              # v1 = 00000000
    beq     v0, s1, lbl_801C937C
    nop
    bne     v0, s2, lbl_801C9384
    nop
lbl_801C937C:
    beq     $zero, $zero, lbl_801C93A8
    or      v0, v1, $zero              # v0 = 00000000
lbl_801C9384:
    bne     v1, $zero, lbl_801C935C
    nop
    jal     func_801C8F1C
    or      a0, s3, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_801C93A8
    addiu   v0, $zero, 0x0007          # v0 = 00000007
    beq     $zero, $zero, lbl_801C93A8
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0007          # v0 = 00000007
lbl_801C93A8:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_801C93C4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    addiu   s1, $zero, 0x0007          # s1 = 00000007
lbl_801C93DC:
    jal     func_801C9334
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, s1, lbl_801C93F4
    nop
    beq     $zero, $zero, lbl_801C9428
    lw      $ra, 0x001C($sp)
lbl_801C93F4:
    jal     func_801C89B8
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_801C8C1C
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_801C9414
    nop
    beq     $zero, $zero, lbl_801C9428
    lw      $ra, 0x001C($sp)
lbl_801C9414:
    jal     func_801C89EC
    nop
    beq     $zero, $zero, lbl_801C93DC
    nop
    lw      $ra, 0x001C($sp)
lbl_801C9428:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    nop
    nop


func_801C9440:
    lbu     v1, 0x0000(a0)             # 00000000
    slti    $at, v1, 0x008E
    bne     $at, $zero, lbl_801C9454
    slti    $at, v1, 0x00FF
    bne     $at, $zero, lbl_801C946C
lbl_801C9454:
    addiu   $at, $zero, 0x008F         # $at = 0000008F
    beq     v1, $at, lbl_801C948C
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   $at, $zero, 0x00A0         # $at = 000000A0
    beq     v1, $at, lbl_801C948C
    nop
lbl_801C946C:
    lbu     v1, 0x0001(a0)             # 00000001
    addiu   a0, a0, 0x0001             # a0 = 00000001
    slti    v0, v1, 0x00A0
    xori    v0, v0, 0x0001             # v0 = 00000001
    beq     v0, $zero, lbl_801C948C
    nop
    jr      $ra
    slti    v0, v1, 0x00FF
lbl_801C948C:
    jr      $ra
    nop


func_801C9494:
    lbu     v1, 0x0000(a0)             # 00000000
    slti    $at, v1, 0x0081
    bne     $at, $zero, lbl_801C94A8
    slti    $at, v1, 0x00A0
    bne     $at, $zero, lbl_801C94C0
lbl_801C94A8:
    slti    $at, v1, 0x00E0
    bne     $at, $zero, lbl_801C94F0
    or      v0, $zero, $zero           # v0 = 00000000
    slti    $at, v1, 0x00FD
    beq     $at, $zero, lbl_801C94F0
    nop
lbl_801C94C0:
    lbu     v1, 0x0001(a0)             # 00000001
    addiu   a0, a0, 0x0001             # a0 = 00000001
    slti    v0, v1, 0x0040
    xori    v0, v0, 0x0001             # v0 = 00000001
    beq     v0, $zero, lbl_801C94F0
    nop
    slti    v0, v1, 0x00FD
    beq     v0, $zero, lbl_801C94F0
    nop
    xori    v0, v1, 0x007F             # v0 = 0000007F
    jr      $ra
    sltu    v0, $zero, v0
lbl_801C94F0:
    jr      $ra
    nop


func_801C94F8:
    sw      a1, 0x0004($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    sra     t6, a1,  8
    sb      t6, 0x0000(a0)             # 00000000
    sb      a1, 0x0001(a0)             # 00000001
    jr      $ra
    nop


func_801C9514:
    sw      a0, 0x0000($sp)
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x7F80           # $at = FFFF7F80
    addu    v0, a0, $at
    andi    v0, v0, 0xFFFF             # v0 = 00000000
    jr      $ra
    nop


func_801C9534:
    sw      a0, 0x0000($sp)
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    sra     a1, a0,  8
    andi    t0, a1, 0x00FF             # t0 = 00000000
    andi    t6, t0, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_801C9574
    andi    a3, a0, 0x00FF             # a3 = 00000000
    or      a2, a3, $zero              # a2 = 00000000
    addiu   a2, a2, 0x001F             # a2 = 0000001F
    andi    a2, a2, 0x00FF             # a2 = 0000001F
    slti    $at, a2, 0x007F
    bne     $at, $zero, lbl_801C957C
    or      v1, a2, $zero              # v1 = 0000001F
    addiu   a2, a2, 0x0001             # a2 = 00000020
    beq     $zero, $zero, lbl_801C957C
    andi    v1, a2, 0x00FF             # v1 = 00000020
lbl_801C9574:
    addiu   a2, a3, 0x007E             # a2 = 0000007E
    andi    v1, a2, 0x00FF             # v1 = 0000007E
lbl_801C957C:
    addiu   v0, t0, 0xFFDF             # v0 = FFFFFFDF
    bgez    v0, lbl_801C958C
    addu    $at, v0, $zero
    addiu   $at, v0, 0x0001            # $at = FFFFFFE0
lbl_801C958C:
    sra     v0, $at,  1
    addiu   v0, v0, 0x0081             # v0 = 00000060
    andi    v0, v0, 0x00FF             # v0 = 00000060
    slti    $at, v0, 0x00A0
    bne     $at, $zero, lbl_801C95AC
    or      a0, v0, $zero              # a0 = 00000060
    addiu   v0, v0, 0x0040             # v0 = 000000A0
    andi    a0, v0, 0x00FF             # a0 = 000000A0
lbl_801C95AC:
    sll     t7, a0,  8
    addu    v0, t7, v1
    andi    v0, v0, 0xFFFF             # v0 = 000000A0
    jr      $ra
    nop


func_801C95C0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     v0, 0x801D                 # v0 = 801D0000
    lw      v0, 0x2EC0(v0)             # 801D2EC0
    beql    v0, $zero, lbl_801C95E4
    lw      $ra, 0x0014($sp)
    jalr    $ra, v0
    nop
    lw      $ra, 0x0014($sp)
lbl_801C95E4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C95F0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lbu     t7, 0x0000(a1)             # 00000000
    lbu     t6, 0x0001(a1)             # 00000001
    sll     t8, t7,  8
    or      a0, t6, t8                 # a0 = 00000000
    jal     func_801C9514
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    jal     func_801C9534
    andi    a0, v0, 0xFFFF             # a0 = 00000000
    jal     func_801CF0B0
    or      a0, v0, $zero              # a0 = 00000000
    lui     $at, 0x000A                # $at = 000A0000
    addu    v0, v0, $at
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C963C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lui     t9, 0x801E                 # t9 = 801E0000
    lw      t9, 0x0F70(t9)             # 801E0F70
    lbu     t6, 0x002B($sp)
    sll     t0, t9,  2
    subu    t0, t0, t9
    sll     t0, t0,  6
    addiu   t8, t6, 0xFFE0             # t8 = FFFFFFE0
    addu    v0, t8, t0
    jal     func_801CFBB0
    andi    a0, v0, 0xFFFF             # a0 = 00000000
    lw      t3, 0x0018($sp)
    andi    v1, v0, 0x000F             # v1 = 00000000
    subu    t1, v0, v1
    lui     $at, 0x000A                # $at = 000A0000
    addu    t2, t1, $at
    or      v0, v1, $zero              # v0 = 00000000
    sw      t2, 0x0000(t3)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C969C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    jal     func_801C9440
    lw      a0, 0x0038($sp)
    beq     v0, $zero, lbl_801C96F8
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFFC
    jal     func_801C95F0
    lw      a0, 0x0038($sp)
    lw      t6, 0x002C($sp)
    addiu   a0, $zero, 0x0010          # a0 = 00000010
    sw      v0, 0x0024($sp)
    sw      a0, 0x0000(t6)             # 00000000
    lw      t7, 0x0030($sp)
    addiu   t8, $zero, 0x000B          # t8 = 0000000B
    or      v1, $zero, $zero           # v1 = 00000000
    sw      a0, 0x0000(t7)             # 00000000
    lw      t9, 0x0034($sp)
    beq     $zero, $zero, lbl_801C9718
    sw      t8, 0x0000(t9)             # 00000000
lbl_801C96F8:
    lw      t0, 0x0038($sp)
    lw      a1, 0x002C($sp)
    lw      a2, 0x0030($sp)
    lbu     t1, 0x0000(t0)             # 00000000
    lw      a3, 0x0034($sp)
    jal     func_801C963C
    sw      t1, 0x0010($sp)
    or      v1, v0, $zero              # v1 = 00000000
lbl_801C9718:
    lw      a0, 0x0028($sp)
    lw      a1, 0x0024($sp)
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    jal     func_801C95C0
    sw      v1, 0x0020($sp)
    lw      v0, 0x0020($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_801C9740:
    sw      a2, 0x0008($sp)
    andi    a2, a2, 0x00FF             # a2 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a1, $at, lbl_801C9760
    sll     t6, a2,  4
    sb      t6, 0x0000(a0)             # 00000000
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801C9760:
    lbu     t7, 0x0000(a0)             # 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      t8, t7, a2                 # t8 = 00000000
    sb      t8, 0x0000(a0)             # 00000000
    jr      $ra
    nop


func_801C9778:
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v0, 0x0000(a1)             # 00000000
    sra     t6, a2,  1
    addu    a0, a0, t6
    bne     a3, v0, lbl_801C9798
    andi    v1, a2, 0x0001             # v1 = 00000000
    beql    v1, $zero, lbl_801C97AC
    addu    a0, a0, v1
lbl_801C9798:
    bne     v0, $zero, lbl_801C97B4
    andi    v1, a2, 0x0001             # v1 = 00000000
    beql    v1, $zero, lbl_801C97B8
    sw      $zero, 0x0000(a1)          # 00000000
    addu    a0, a0, v1
lbl_801C97AC:
    beq     $zero, $zero, lbl_801C97B8
    sw      a3, 0x0000(a1)             # 00000000
lbl_801C97B4:
    sw      $zero, 0x0000(a1)          # 00000000
lbl_801C97B8:
    or      v0, a0, $zero              # v0 = 00000000
    jr      $ra
    nop


func_801C97C4:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s6, 0x0030($sp)
    lw      s6, 0x0078($sp)
    sw      $ra, 0x003C($sp)
    sw      s8, 0x0038($sp)
    sw      s7, 0x0034($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0060($sp)
    sw      a1, 0x0064($sp)
    sw      a2, 0x0068($sp)
    lw      t8, 0x0070($sp)
    lw      t6, 0x0068($sp)
    addu    t7, s6, a3
    lw      t0, 0x0060($sp)
    addu    t9, t7, t8
    sw      t9, 0x0044($sp)
    sw      t6, 0x004C($sp)
    addiu   s4, $zero, 0x0001          # s4 = 00000001
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFEC
    or      a2, a3, $zero              # a2 = 00000000
    jal     func_801C9778
    lw      a0, 0x0000(t0)             # 00000000
    lw      t1, 0x0064($sp)
    lw      t3, 0x0080($sp)
    addiu   t4, $zero, 0x000B          # t4 = 0000000B
    sra     t2, t1,  1
    subu    t5, t4, t3
    multu   t5, t2
    lw      s7, 0x007C($sp)
    andi    t7, s6, 0x0001             # t7 = 00000000
    sw      t2, 0x0064($sp)
    addiu   s5, $zero, 0x0001          # s5 = 00000001
    lw      s2, 0x0074($sp)
    mflo    t6
    addu    s8, v0, t6
    beq     t7, $zero, lbl_801C9870
    or      v0, s7, $zero              # v0 = 00000000
    addiu   s6, s6, 0x0001             # s6 = 00000001
lbl_801C9870:
    beq     s7, $zero, lbl_801C9904
    addiu   s7, s7, 0xFFFF             # s7 = FFFFFFFF
lbl_801C9878:
    or      s0, s8, $zero              # s0 = 00000000
    lw      s1, 0x004C($sp)
    blez    s6, lbl_801C98EC
    or      s3, $zero, $zero           # s3 = 00000000
lbl_801C9888:
    bnel    s4, s5, lbl_801C98BC
    lbu     a2, 0x0000(s2)             # 00000000
    lbu     a2, 0x0000(s2)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    sra     a2, a2,  4
    jal     func_801C9740
    andi    a2, a2, 0x00FF             # a2 = 00000000
    beql    v0, $zero, lbl_801C98E0
    addiu   s3, s3, 0x0001             # s3 = 00000001
    beq     $zero, $zero, lbl_801C98DC
    addiu   s0, s0, 0x0001             # s0 = 00000001
    lbu     a2, 0x0000(s2)             # 00000000
lbl_801C98BC:
    or      a0, s0, $zero              # a0 = 00000001
    or      a1, s1, $zero              # a1 = 00000000
    andi    a2, a2, 0x000F             # a2 = 00000000
    jal     func_801C9740
    andi    a2, a2, 0x00FF             # a2 = 00000000
    beq     v0, $zero, lbl_801C98DC
    addiu   s2, s2, 0x0001             # s2 = 00000001
    addiu   s0, s0, 0x0001             # s0 = 00000002
lbl_801C98DC:
    addiu   s3, s3, 0x0001             # s3 = 00000002
lbl_801C98E0:
    xori    s4, s4, 0x0001             # s4 = 00000000
    bne     s3, s6, lbl_801C9888
    xori    s1, s1, 0x0001             # s1 = 00000001
lbl_801C98EC:
    lw      t8, 0x0064($sp)
    or      v0, s7, $zero              # v0 = FFFFFFFF
    addu    s8, s8, t8
    bne     s7, $zero, lbl_801C9878
    addiu   s7, s7, 0xFFFF             # s7 = FFFFFFFE
    sw      s2, 0x0074($sp)
lbl_801C9904:
    lw      t9, 0x0060($sp)
    addiu   a1, $sp, 0x0068            # a1 = 00000008
    lw      a2, 0x0044($sp)
    jal     func_801C9778
    lw      a0, 0x0000(t9)             # 00000000
    lw      t0, 0x0060($sp)
    sw      v0, 0x0000(t0)             # 00000000
    lw      v0, 0x0068($sp)
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
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_801C9954:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_801C9440
    sw      a2, 0x0020($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_801C9988
    lw      a2, 0x0020($sp)
    sw      $zero, 0x0000(a2)          # 00000000
    beq     $zero, $zero, lbl_801C9A00
    sw      $zero, 0x0000(a1)          # 00000000
lbl_801C9988:
    sw      $zero, 0x0000(a2)          # 00000000
    sw      $zero, 0x0000(a1)          # 00000000
    lbu     v0, 0x0000(a0)             # 00000000
    addiu   t0, $zero, 0x0020          # t0 = 00000020
    lbu     v1, -0x0001(a0)            # FFFFFFFF
    beq     v0, t0, lbl_801C99C0
    lbu     a3, 0x0001(a0)             # 00000001
    addiu   $at, $zero, 0x0049         # $at = 00000049
    beq     v0, $at, lbl_801C99CC
    addiu   $at, $zero, 0x0069         # $at = 00000069
    beql    v0, $at, lbl_801C99D0
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    beq     $zero, $zero, lbl_801C99F4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_801C99C0:
    sw      $zero, 0x0000(a2)          # 00000000
    beq     $zero, $zero, lbl_801C9A00
    sw      $zero, 0x0000(a1)          # 00000000
lbl_801C99CC:
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_801C99D0:
    sw      v0, 0x0000(a2)             # 00000000
    sw      v0, 0x0000(a1)             # 00000000
    bne     t0, v1, lbl_801C99E4
    sw      v0, 0x0000(a2)             # 00000000
    sw      $zero, 0x0000(a1)          # 00000000
lbl_801C99E4:
    bnel    t0, a3, lbl_801C9A04
    lw      $ra, 0x0014($sp)
    beq     $zero, $zero, lbl_801C9A00
    sw      $zero, 0x0000(a2)          # 00000000
lbl_801C99F4:
    sw      v0, 0x0000(a2)             # 00000000
    sw      v0, 0x0000(a1)             # 00000000
    sw      v0, 0x0000(a2)             # 00000000
lbl_801C9A00:
    lw      $ra, 0x0014($sp)
lbl_801C9A04:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C9A10:
    addiu   $sp, $sp, 0xFEE0           # $sp -= 0x120
    sw      s0, 0x0030($sp)
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s8, 0x0050($sp)
    sw      s7, 0x004C($sp)
    sw      s6, 0x0048($sp)
    sw      s5, 0x0044($sp)
    sw      s4, 0x0040($sp)
    sw      s3, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sw      a0, 0x0120($sp)
    sw      a1, 0x0124($sp)
    beq     s0, $zero, lbl_801C9B20
    addiu   s2, $zero, 0x0001          # s2 = 00000001
    lbu     t6, 0x0000(s0)             # 00000000
    or      s1, $sp, $zero             # s1 = FFFFFEE0
    addiu   s1, s1, 0x008F             # s1 = FFFFFF6F
    beq     t6, $zero, lbl_801C9B20
    srl     s1, s1,  4
    sll     s1, s1,  4
    addiu   s8, $sp, 0x0120            # s8 = 00000000
    addiu   s7, $sp, 0x0070            # s7 = FFFFFF50
    addiu   s6, $sp, 0x0074            # s6 = FFFFFF54
    addiu   s5, $sp, 0x0078            # s5 = FFFFFF58
    addiu   s4, $sp, 0x0064            # s4 = FFFFFF44
    addiu   s3, $sp, 0x0068            # s3 = FFFFFF48
    or      a0, s0, $zero              # a0 = 00000000
lbl_801C9A84:
    or      a1, s3, $zero              # a1 = FFFFFF48
    jal     func_801C9954
    or      a2, s4, $zero              # a2 = FFFFFF44
    or      a0, s1, $zero              # a0 = FFFFFF6F
    or      a1, s5, $zero              # a1 = FFFFFF58
    or      a2, s6, $zero              # a2 = FFFFFF54
    or      a3, s7, $zero              # a3 = FFFFFF50
    jal     func_801C969C
    sw      s0, 0x0010($sp)
    lw      t0, 0x0078($sp)
    or      v1, v0, $zero              # v1 = 00000000
    or      a0, s8, $zero              # a0 = 00000000
    andi    t7, t0, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_801C9AC4
    lw      a1, 0x0124($sp)
    addiu   t0, t0, 0x0001             # t0 = 00000001
lbl_801C9AC4:
    lw      t8, 0x0064($sp)
    lw      t1, 0x0074($sp)
    lw      t2, 0x0070($sp)
    addu    t9, s1, v1
    sw      t9, 0x0014($sp)
    or      a2, s2, $zero              # a2 = 00000001
    lw      a3, 0x0068($sp)
    sw      t0, 0x0018($sp)
    sw      t0, 0x0078($sp)
    sw      t8, 0x0010($sp)
    sw      t1, 0x001C($sp)
    jal     func_801C97C4
    sw      t2, 0x0020($sp)
    or      s2, v0, $zero              # s2 = 00000000
    jal     func_801C9440
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_801C9B14
    lbu     t3, 0x0001(s0)             # 00000001
    addiu   s0, s0, 0x0001             # s0 = 00000001
    lbu     t3, 0x0001(s0)             # 00000002
lbl_801C9B14:
    addiu   s0, s0, 0x0001             # s0 = 00000002
    bnel    t3, $zero, lbl_801C9A84
    or      a0, s0, $zero              # a0 = 00000002
lbl_801C9B20:
    lw      $ra, 0x0054($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    lw      s3, 0x003C($sp)
    lw      s4, 0x0040($sp)
    lw      s5, 0x0044($sp)
    lw      s6, 0x0048($sp)
    lw      s7, 0x004C($sp)
    lw      s8, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0120           # $sp += 0x120


func_801C9B50:
    lui     $at, 0x801E                # $at = 801E0000
    sw      a0, 0x0F70($at)            # 801E0F70
    lui     $at, 0x801D                # $at = 801D0000
    sw      a1, 0x2EC0($at)            # 801D2EC0
    jr      $ra
    nop
    nop
    nop


func_801C9B70:
    slti    $at, a0, 0x000A
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $at, $zero, lbl_801C9B88
    or      v1, $zero, $zero           # v1 = 00000000
    jr      $ra
    or      v0, a0, $zero              # v0 = 00000000
lbl_801C9B88:
    slti    $at, a0, 0x000A
    bne     $at, $zero, lbl_801C9BB8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
lbl_801C9B9C:
    multu   a2, t0
    or      a1, a2, $zero              # a1 = 0000000A
    addiu   v0, v0, 0x0001             # v0 = 00000001
    mflo    a2
    slt     $at, a0, a2
    beq     $at, $zero, lbl_801C9B9C
    nop
lbl_801C9BB8:
    or      a3, v0, $zero              # a3 = 00000001
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    or      a2, a0, $zero              # a2 = 00000000
    beq     v0, $zero, lbl_801C9C3C
    addiu   v0, v0, 0xFFFF             # v0 = 00000000
lbl_801C9BCC:
    div     $zero, a2, a1
    bne     a1, $zero, lbl_801C9BDC
    nop
    break   # 0x01C00
lbl_801C9BDC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a1, $at, lbl_801C9BF4
    lui     $at, 0x8000                # $at = 80000000
    bne     a2, $at, lbl_801C9BF4
    nop
    break   # 0x01800
lbl_801C9BF4:
    mflo    t6
    mfhi    a2
    or      a3, v0, $zero              # a3 = 00000000
    or      v1, v1, t6                 # v1 = 00000000
    div     $zero, a1, t0
    sll     v1, v1,  4
    bne     t0, $zero, lbl_801C9C18
    nop
    break   # 0x01C00
lbl_801C9C18:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t0, $at, lbl_801C9C30
    lui     $at, 0x8000                # $at = 80000000
    bne     a1, $at, lbl_801C9C30
    nop
    break   # 0x01800
lbl_801C9C30:
    mflo    a1
    bne     v0, $zero, lbl_801C9BCC
    addiu   v0, v0, 0xFFFF             # v0 = FFFFFFFF
lbl_801C9C3C:
    addu    v0, v1, a2
    jr      $ra
    nop


func_801C9C48:
    lui     t6, 0x8000                 # t6 = 80000000
    lw      t6, 0x6280(t6)             # 80006280
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    bne     t6, $at, lbl_801C9C68
    nop
    beq     $zero, $zero, lbl_801C9C68
    or      v1, $zero, $zero           # v1 = 00000000
lbl_801C9C68:
    or      v0, v1, $zero              # v0 = 00000000
    jr      $ra
    nop


func_801C9C74:
    sw      a1, 0x0004($sp)
    andi    a1, a1, 0x00FF             # a1 = 00000000
    or      v0, a2, $zero              # v0 = 00000000
    beq     a2, $zero, lbl_801C9C9C
    addiu   a2, a2, 0xFFFF             # a2 = FFFFFFFF
lbl_801C9C88:
    or      v0, a2, $zero              # v0 = FFFFFFFF
    sb      a1, 0x0000(a0)             # 00000000
    addiu   a0, a0, 0x0001             # a0 = 00000001
    bne     a2, $zero, lbl_801C9C88
    addiu   a2, a2, 0xFFFF             # a2 = FFFFFFFE
lbl_801C9C9C:
    jr      $ra
    nop


func_801C9CA4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_801C9C48
    nop
    sll     t6, v0,  2
    lui     v0, 0x801D                 # v0 = 801D0000
    addu    v0, v0, t6
    lw      v0, 0x2ED0(v0)             # 801D2ED0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C9CD4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    jal     func_801C9B70
    lw      a0, 0x0024($sp)
    lw      t6, 0x0024($sp)
    lw      a0, 0x0020($sp)
    or      v1, v0, $zero              # v1 = 00000000
    slti    $at, t6, 0x000A
    bne     $at, $zero, lbl_801C9D18
    ori     a1, $zero, 0xA1A1          # a1 = 0000A1A1
    sra     a1, v0,  4
    ori     $at, $zero, 0xA3B0         # $at = 0000A3B0
    addu    a1, a1, $at
    beq     $zero, $zero, lbl_801C9D18
    andi    a1, a1, 0xFFFF             # a1 = 0000A1A1
lbl_801C9D18:
    sw      v1, 0x001C($sp)
    jal     func_801C94F8
    sw      a0, 0x0020($sp)
    lw      v1, 0x001C($sp)
    lw      a0, 0x0020($sp)
    ori     $at, $zero, 0xA3B0         # $at = 0000A3B0
    andi    a1, v1, 0x000F             # a1 = 00000000
    addu    a1, a1, $at
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    jal     func_801C94F8
    addiu   a0, a0, 0x0002             # a0 = 00000002
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_801C9D54:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      a0, 0x001C($sp)
    jal     func_801C9B70
    sw      a2, 0x0018($sp)
    lw      t6, 0x001C($sp)
    andi    t0, v0, 0x000F             # t0 = 00000000
    lw      a2, 0x0018($sp)
    slti    $at, t6, 0x000A
    bne     $at, $zero, lbl_801C9D98
    addiu   t1, t0, 0x0030             # t1 = 00000030
    sra     t7, v0,  4
    addiu   t8, t7, 0x0030             # t8 = 00000030
    beq     $zero, $zero, lbl_801C9DA0
    sb      t8, 0x0000(a2)             # 00000000
lbl_801C9D98:
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    sb      t9, 0x0000(a2)             # 00000000
lbl_801C9DA0:
    addiu   a2, a2, 0x0001             # a2 = 00000001
    sb      t1, 0x0000(a2)             # 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C9DB8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    jal     func_801C9CA4
    nop
    lui     t6, 0x8000                 # t6 = 80000000
    lw      t6, 0x6280(t6)             # 80006280
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a1, 0x0024($sp)
    bne     t6, $at, lbl_801C9DFC
    or      v1, v0, $zero              # v1 = 00000000
    addiu   a0, v0, 0x000C             # a0 = 0000000C
    jal     func_801C9CD4
    sw      v0, 0x001C($sp)
    beq     $zero, $zero, lbl_801C9E0C
    lw      a0, 0x0020($sp)
lbl_801C9DFC:
    addiu   a0, v1, 0x000D             # a0 = 0000000D
    jal     func_801C9D54
    sw      v1, 0x001C($sp)
    lw      a0, 0x0020($sp)
lbl_801C9E0C:
    addiu   a1, $zero, 0x00C0          # a1 = 000000C0
    jal     func_801C9A10
    lw      a2, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_801C9E28:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    jal     func_801C9EC0
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    addiu   $at, $zero, 0x0029         # $at = 00000029
    bnel    a1, $at, lbl_801C9E74
    slti    $at, a1, 0x0025
    jal     func_801C9C48
    nop
    sll     t6, v0,  2
    subu    t6, t6, v0
    lui     t7, 0x801D                 # t7 = 801D0000
    addiu   t7, t7, 0x2FE0             # t7 = 801D2FE0
    sll     t6, t6,  9
    beq     $zero, $zero, lbl_801C9EB0
    addu    v0, t6, t7
    slti    $at, a1, 0x0025
lbl_801C9E74:
    bne     $at, $zero, lbl_801C9E80
    slti    $at, a1, 0x0029
    bne     $at, $zero, lbl_801C9E94
lbl_801C9E80:
    addiu   $at, $zero, 0x001F         # $at = 0000001F
    beq     a1, $at, lbl_801C9E94
    addiu   $at, $zero, 0x0020         # $at = 00000020
    bne     a1, $at, lbl_801C9EA0
    lui     a0, 0x801E                 # a0 = 801E0000
lbl_801C9E94:
    lui     v0, 0x801E                 # v0 = 801E0000
    beq     $zero, $zero, lbl_801C9EB0
    addiu   v0, v0, 0x0F80             # v0 = 801E0F80
lbl_801C9EA0:
    jal     func_801C9DB8
    addiu   a0, a0, 0x0F80             # a0 = 801E0F80
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x0F80             # v0 = 801E0F80
lbl_801C9EB0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C9EC0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x0F80             # a0 = 801E0F80
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_801C9C74
    addiu   a2, $zero, 0x0600          # a2 = 00000600
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x0F80             # v0 = 801E0F80
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C9EF4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s5, 0x0028($sp)
    sw      s3, 0x0020($sp)
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s3, a2, $zero              # s3 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s4, 0x0024($sp)
    sw      s2, 0x001C($sp)
    sw      s0, 0x0014($sp)
    blez    s3, lbl_801C9F6C
    or      s0, $zero, $zero           # s0 = 00000000
    lui     s2, 0x801D                 # s2 = 801D0000
    addiu   s2, s2, 0x2EE0             # s2 = 801D2EE0
    sll     s4, s3,  2
lbl_801C9F34:
    jal     func_801C9C48
    nop
    sll     t6, v0,  7
    addu    t7, s2, t6
    sll     t8, s5,  4
    addu    t9, t7, t8
    addu    t0, t9, s0
    lw      a2, 0x0000(t0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_801C9A10
    addiu   a1, $zero, 0x0140          # a1 = 00000140
    addiu   s0, s0, 0x0004             # s0 = 00000004
    bne     s0, s4, lbl_801C9F34
    addiu   s1, s1, 0x0A00             # s1 = 00000A00
lbl_801C9F6C:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_801C9F90:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_801C9FFC
    nop
    lw      a1, 0x0018($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     a0, 0x801E                 # a0 = 801E0000
    bne     a1, $at, lbl_801C9FDC
    addiu   a0, a0, 0x1580             # a0 = 801E1580
    jal     func_801C9C48
    nop
    sll     t6, v0,  2
    addu    t6, t6, v0
    lui     t7, 0x801D                 # t7 = 801D0000
    addiu   t7, t7, 0x3BE0             # t7 = 801D3BE0
    sll     t6, t6, 11
    beq     $zero, $zero, lbl_801C9FEC
    addu    v0, t6, t7
lbl_801C9FDC:
    jal     func_801C9EF4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x1580             # v0 = 801E1580
lbl_801C9FEC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801C9FFC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x1580             # a0 = 801E1580
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_801C9C74
    addiu   a2, $zero, 0x2800          # a2 = 00002800
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x1580             # v0 = 801E1580
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CA030:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_801CA070
    nop
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x3D80             # a0 = 801E3D80
    lw      a1, 0x0018($sp)
    jal     func_801C9EF4
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x3D80             # v0 = 801E3D80
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CA070:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x3D80             # a0 = 801E3D80
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_801C9C74
    addiu   a2, $zero, 0x1400          # a2 = 00001400
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x3D80             # v0 = 801E3D80
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
    nop


func_801CA0B0:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0064($sp)
    sw      a2, 0x0068($sp)
    sw      a3, 0x006C($sp)
    jal     func_80001600              # osCartRomInit
    nop
    slti    $at, s0, 0x0020
    bne     $at, $zero, lbl_801CA110
    sw      v0, 0x0058($sp)
    slti    $at, s0, 0x007F
    beq     $at, $zero, lbl_801CA110
    sll     t6, s0,  2
    lui     a0, 0x801E                 # a0 = 801E0000
    addu    a0, a0, t6
    lw      a0, -0x74A0(a0)            # 801D8B60
    lw      a1, 0x0068($sp)
    lw      a2, 0x006C($sp)
    jal     func_801CBCD0
    lw      a3, 0x0070($sp)
    beq     $zero, $zero, lbl_801CA158
    or      s0, v0, $zero              # s0 = 00000000
lbl_801CA110:
    ori     $at, $zero, 0x8140         # $at = 00008140
    slt     $at, s0, $at
    bne     $at, $zero, lbl_801CA150
    nop
    jal     func_801CF0B0
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x0068($sp)
    addiu   v1, $zero, 0x0010          # v1 = 00000010
    addiu   t9, $zero, 0x000B          # t9 = 0000000B
    sw      v1, 0x0000(t7)             # 00000000
    lw      t8, 0x006C($sp)
    or      s0, v0, $zero              # s0 = 00000000
    sw      v1, 0x0000(t8)             # 00000000
    lw      t0, 0x0070($sp)
    beq     $zero, $zero, lbl_801CA158
    sw      t9, 0x0000(t0)             # 00000000
lbl_801CA150:
    beq     $zero, $zero, lbl_801CA1C0
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_801CA158:
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFE0
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFDC
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t3, 0x0064($sp)
    lw      t6, 0x0058($sp)
    lui     $at, 0x000A                # $at = 000A0000
    addu    t2, s0, $at
    addiu   t1, $sp, 0x0040            # t1 = FFFFFFE0
    addiu   t4, $zero, 0x0080          # t4 = 00000080
    sw      t4, 0x0034($sp)
    sw      t1, 0x0028($sp)
    sw      t2, 0x0030($sp)
    sb      $zero, 0x0026($sp)
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sw      t3, 0x002C($sp)
    sw      t5, 0x0014(t6)             # 00000014
    lw      a0, 0x0058($sp)
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFC4
    jal     func_800040C0              # osEPiStartDma
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFE0
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CA1C0:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_801CA1D4:
    andi    t6, a0, 0x000F             # t6 = 00000000
    sll     t7, t6,  1
    lui     v0, 0x801E                 # v0 = 801E0000
    addu    v0, v0, t7
    lhu     v0, -0x6C70(v0)            # 801D9390
    jr      $ra
    nop


func_801CA1F0:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s8, 0x0038($sp)
    sw      s7, 0x0034($sp)
    sw      s3, 0x0024($sp)
    or      s3, a3, $zero              # s3 = 00000000
    lw      s7, 0x0050($sp)
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a2, 0x0048($sp)
    or      s1, a0, $zero              # s1 = 00000000
    blez    s7, lbl_801CA2C8
    or      s5, $zero, $zero           # s5 = 00000000
    andi    s6, s3, 0x0001             # s6 = 00000000
    lw      s4, 0x0058($sp)
lbl_801CA240:
    blez    s3, lbl_801CA2B4
    or      s0, $zero, $zero           # s0 = 00000000
    lw      t6, 0x0048($sp)
    lw      t7, 0x0054($sp)
    lw      t1, 0x005C($sp)
    sll     t4, s8,  1
    subu    t8, t6, t7
    addu    t9, t8, s5
    addiu   t0, t9, 0x000B             # t0 = 0000000B
    multu   t0, t1
    addu    t5, s4, t4
    mflo    t2
    sll     t3, t2,  1
    addu    s2, t5, t3
lbl_801CA278:
    andi    t6, s0, 0x0001             # t6 = 00000000
    bnel    t6, $zero, lbl_801CA294
    lbu     a0, 0x0000(s1)             # 00000000
    lbu     a0, 0x0000(s1)             # 00000000
    beq     $zero, $zero, lbl_801CA29C
    sra     a0, a0,  4
    lbu     a0, 0x0000(s1)             # 00000000
lbl_801CA294:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    andi    a0, a0, 0x000F             # a0 = 00000000
lbl_801CA29C:
    jal     func_801CA1D4
    nop
    addiu   s0, s0, 0x0001             # s0 = 00000001
    addiu   s2, s2, 0x0002             # s2 = 00000002
    bne     s0, s3, lbl_801CA278
    sh      v0, -0x0002(s2)            # 00000000
lbl_801CA2B4:
    beq     s6, $zero, lbl_801CA2C0
    addiu   s5, s5, 0x0001             # s5 = 00000001
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_801CA2C0:
    bne     s5, s7, lbl_801CA240
    nop
lbl_801CA2C8:
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


func_801CA2F8:
    sb      a1, 0x0010(a0)             # 00000010
    sb      a2, 0x0011(a0)             # 00000011
    sb      a3, 0x0012(a0)             # 00000012
    lw      t6, 0x0010($sp)
    sb      t6, 0x0013(a0)             # 00000013
    jr      $ra
    nop


func_801CA314:
    lhu     t6, 0x0014(a0)             # 00000014
    lhu     t8, 0x0016(a0)             # 00000016
    addu    t7, t6, a1
    addu    t9, t8, a2
    sh      t7, 0x000A(a0)             # 0000000A
    sh      t9, 0x000C(a0)             # 0000000C
    jr      $ra
    nop


func_801CA334:
    sh      a1, 0x0014(a0)             # 00000014
    sh      a2, 0x0016(a0)             # 00000016
    sh      a3, 0x0018(a0)             # 00000018
    lw      t6, 0x0010($sp)
    sh      t6, 0x001A(a0)             # 0000001A
    jr      $ra
    nop


func_801CA350:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    lw      t6, 0x0024($sp)
    lui     $at, 0x2000                # $at = 20000000
    or      a1, $zero, $zero           # a1 = 00000000
    addu    t7, t6, $at
    sw      t7, 0x0020(a0)             # 00000020
    lw      t8, 0x0028($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    sh      t8, 0x0024(a0)             # 00000024
    lw      t9, 0x002C($sp)
    sh      t9, 0x0026(a0)             # 00000026
    lw      t0, 0x002C($sp)
    lw      a3, 0x0028($sp)
    addiu   t1, t0, 0xFFFF             # t1 = FFFFFFFF
    sw      t1, 0x0010($sp)
    jal     func_801CA334
    addiu   a3, a3, 0xFFFF             # a3 = FFFFFFFF
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_801CA3B4:
    lui     $at, 0x2000                # $at = 20000000
    addu    t6, a1, $at
    sw      t6, 0x0004(a0)             # 00000004
    sh      a2, 0x0008(a0)             # 00000008
    jr      $ra
    nop


func_801CA3CC:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0028($sp)
    sw      a1, 0x0054($sp)
    andi    a1, a1, 0x00FF             # a1 = 00000000
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lbu     v0, 0x001C(s0)             # 0000001C
    addiu   a2, $sp, 0x0048            # a2 = FFFFFFF8
    addiu   a3, $sp, 0x0044            # a3 = FFFFFFF4
    beq     v0, $zero, lbl_801CA404
    addiu   t7, $sp, 0x0040            # t7 = FFFFFFF0
    sll     t6, v0,  8
    beq     $zero, $zero, lbl_801CA428
    or      a0, t6, a1                 # a0 = 00000000
lbl_801CA404:
    slti    $at, a1, 0x0080
    bne     $at, $zero, lbl_801CA424
    or      v0, a1, $zero              # v0 = 00000000
    slti    $at, a1, 0x0099
    beql    $at, $zero, lbl_801CA428
    or      a0, v0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_801CA4E0
    sb      a1, 0x001C(s0)             # 0000001C
lbl_801CA424:
    or      a0, v0, $zero              # a0 = 00000000
lbl_801CA428:
    sb      $zero, 0x001C(s0)          # 0000001C
    lw      a1, 0x0004(s0)             # 00000004
    jal     func_801CA0B0
    sw      t7, 0x0010($sp)
    bne     v0, $zero, lbl_801CA4E0
    lw      t9, 0x0048($sp)
    lhu     a1, 0x000A(s0)             # 0000000A
    lhu     t8, 0x0018(s0)             # 00000018
    addu    t0, a1, t9
    slt     $at, t8, t0
    beql    $at, $zero, lbl_801CA490
    lw      t4, 0x0044($sp)
    lhu     v0, 0x000C(s0)             # 0000000C
    lhu     t2, 0x001A(s0)             # 0000001A
    lhu     t1, 0x0014(s0)             # 00000014
    addiu   v0, v0, 0x0010             # v0 = 00000010
    slt     $at, t2, v0
    beq     $at, $zero, lbl_801CA484
    sh      t1, 0x000A(s0)             # 0000000A
    lhu     t3, 0x0016(s0)             # 00000016
    andi    a1, t1, 0xFFFF             # a1 = 00000000
    beq     $zero, $zero, lbl_801CA48C
    sh      t3, 0x000C(s0)             # 0000000C
lbl_801CA484:
    sh      v0, 0x000C(s0)             # 0000000C
    lhu     a1, 0x000A(s0)             # 0000000A
lbl_801CA48C:
    lw      t4, 0x0044($sp)
lbl_801CA490:
    lw      t5, 0x0040($sp)
    lw      a0, 0x0004(s0)             # 00000004
    lhu     a2, 0x000C(s0)             # 0000000C
    sw      t4, 0x0010($sp)
    sw      t5, 0x0014($sp)
    lw      t6, 0x0020(s0)             # 00000020
    lw      a3, 0x0048($sp)
    sw      t6, 0x0018($sp)
    lhu     t7, 0x0024(s0)             # 00000024
    jal     func_801CA1F0
    sw      t7, 0x001C($sp)
    lw      v1, 0x0048($sp)
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     v1, $at, lbl_801CA4D4
    addiu   v0, v1, 0x0002             # v0 = 00000002
    beq     $zero, $zero, lbl_801CA4D4
    or      v0, v1, $zero              # v0 = 00000000
lbl_801CA4D4:
    lhu     t9, 0x000A(s0)             # 0000000A
    addu    t8, t9, v0
    sh      t8, 0x000A(s0)             # 0000000A
lbl_801CA4E0:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_801CA4F4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    sw      a1, 0x0024($sp)
    andi    a1, a1, 0x00FF             # a1 = 00000000
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    slti    $at, a1, 0x0020
    bne     $at, $zero, lbl_801CA534
    or      v0, a1, $zero              # v0 = 00000000
    slti    $at, a1, 0x0100
    beq     $at, $zero, lbl_801CA534
    nop
    jal     func_801CA3CC
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_801CA5AC
    lw      $ra, 0x001C($sp)
lbl_801CA534:
    beq     v0, $zero, lbl_801CA5A8
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_801CA574
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_801CA55C
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beql    v0, $at, lbl_801CA56C
    lhu     t8, 0x0014(s0)             # 00000014
    beq     $zero, $zero, lbl_801CA5AC
    lw      $ra, 0x001C($sp)
lbl_801CA55C:
    lhu     t6, 0x000C(s0)             # 0000000C
    addiu   t7, t6, 0x0020             # t7 = 00000020
    sh      t7, 0x000C(s0)             # 0000000C
    lhu     t8, 0x0014(s0)             # 00000014
lbl_801CA56C:
    beq     $zero, $zero, lbl_801CA5A8
    sh      t8, 0x000A(s0)             # 0000000A
lbl_801CA574:
    or      a0, s0, $zero              # a0 = 00000000
lbl_801CA578:
    jal     func_801CA3CC
    addiu   a1, $zero, 0x0020          # a1 = 00000020
    lhu     t9, 0x000A(s0)             # 0000000A
    lhu     t0, 0x0014(s0)             # 00000014
    subu    t1, t9, t0
    bgez    t1, lbl_801CA5A0
    andi    t2, t1, 0x00FF             # t2 = 00000000
    beq     t2, $zero, lbl_801CA5A0
    nop
    addiu   t2, t2, 0xFF00             # t2 = FFFFFF00
lbl_801CA5A0:
    bnel    t2, $zero, lbl_801CA578
    or      a0, s0, $zero              # a0 = 00000000
lbl_801CA5A8:
    lw      $ra, 0x001C($sp)
lbl_801CA5AC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_801CA5BC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s2, 0x0020($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    multu   a2, a3
    or      s0, a1, $zero              # s0 = 00000000
    mflo    s1
    beq     s1, $zero, lbl_801CA600
    or      a0, s2, $zero              # a0 = 00000000
lbl_801CA5E8:
    lbu     a1, 0x0000(s0)             # 00000000
    jal     func_801CA4F4
    addiu   s0, s0, 0x0001             # s0 = 00000001
    addiu   s1, s1, 0xFFFF             # s1 = FFFFFFFF
    bnel    s1, $zero, lbl_801CA5E8
    or      a0, s2, $zero              # a0 = 00000000
lbl_801CA600:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_801CA618:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x0018($sp)
    lbu     s0, 0x0000(s1)             # 00000000
    beq     s0, $zero, lbl_801CA658
    or      a0, s2, $zero              # a0 = 00000000
lbl_801CA640:
    andi    a1, s0, 0x00FF             # a1 = 00000000
    jal     func_801CA4F4
    addiu   s1, s1, 0x0001             # s1 = 00000001
    lbu     s0, 0x0000(s1)             # 00000001
    bnel    s0, $zero, lbl_801CA640
    or      a0, s2, $zero              # a0 = 00000000
lbl_801CA658:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_801CA670:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a2, $zero              # a3 = 00000000
    lw      a0, 0x0018($sp)
    jal     func_801CA5BC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      v0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CA6A0:
    lui     t6, 0x801D                 # t6 = 801D0000
    addiu   t6, t6, 0xA670             # t6 = 801CA670
    sw      t6, 0x0000(a0)             # 00000000
    sh      $zero, 0x000A(a0)          # 0000000A
    sh      $zero, 0x000C(a0)          # 0000000C
    sh      $zero, 0x0014(a0)          # 00000014
    sh      $zero, 0x0016(a0)          # 00000016
    sh      $zero, 0x0018(a0)          # 00000018
    sh      $zero, 0x001A(a0)          # 0000001A
    sw      $zero, 0x0010(a0)          # 00000010
    sb      $zero, 0x001C(a0)          # 0000001C
    sw      $zero, 0x0004(a0)          # 00000004
    jr      $ra
    nop


func_801CA6D8:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_801CA6E4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800CE810
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CA704:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    lw      a1, 0x0024($sp)
    jal     func_801CA6E4
    addiu   a2, $sp, 0x0028            # a2 = 00000008
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop
    nop
    nop


func_801CA740:
    lui     t6, 0x801E                 # t6 = 801E0000
    lw      t6, -0x7210(t6)            # 801D8DF0
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    bne     t6, $zero, lbl_801CA760
    nop
    beq     $zero, $zero, lbl_801CA7B8
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_801CA760:
    bne     a1, $zero, lbl_801CA774
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    beq     $zero, $zero, lbl_801CA778
    sb      t7, 0x0000(a0)             # 00000000
lbl_801CA774:
    sb      t8, 0x0000(a0)             # 00000000
lbl_801CA778:
    lw      v0, 0x002C($sp)
    sb      $zero, 0x0001(a0)          # 00000001
    addiu   t9, $zero, 0x0080          # t9 = 00000080
    beql    v0, $zero, lbl_801CA798
    sb      $zero, 0x0002(a0)          # 00000002
    beq     $zero, $zero, lbl_801CA798
    sb      t9, 0x0002(a0)             # 00000002
    sb      $zero, 0x0002(a0)          # 00000002
lbl_801CA798:
    sb      $zero, 0x0003(a0)          # 00000003
    sw      v0, 0x0008(a0)             # 00000008
    sw      a2, 0x000C(a0)             # 0000000C
    lw      t0, 0x0028($sp)
    sw      a3, 0x0014(a0)             # 00000014
    jal     func_801CA9A4
    sw      t0, 0x0010(a0)             # 00000010
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CA7B8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop


func_801CA7D0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    slt     $at, a1, a0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    beq     $at, $zero, lbl_801CA7F8
    sw      a3, 0x003C($sp)
    beq     $zero, $zero, lbl_801CA7FC
    or      a1, a0, $zero              # a1 = 00000000
lbl_801CA7F8:
    lw      a1, 0x0034($sp)
lbl_801CA7FC:
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    sw      t8, 0x0028($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80004560              # osGetThreadPri
    sw      a1, 0x0020($sp)
    lw      a1, 0x0020($sp)
    slt     $at, v0, a1
    beq     $at, $zero, lbl_801CA82C
    nop
    sw      v0, 0x0028($sp)
    jal     func_80004480              # osSetThreadPri
    or      a0, $zero, $zero           # a0 = 00000000
lbl_801CA82C:
    jal     func_80005130              # __osDisableInt
    nop
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, 0x801E                # $at = 801E0000
    lui     a0, 0x801E                 # a0 = 801E0000
    sw      v0, 0x002C($sp)
    sw      t9, -0x729C($at)           # 801D8D64
    addiu   a0, a0, 0x5DE8             # a0 = 801E5DE8
    lw      a1, 0x0038($sp)
    jal     func_80004220              # osCreateMesgQueue
    lw      a2, 0x003C($sp)
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x801E                 # a1 = 801E0000
    addiu   a1, a1, 0x5E64             # a1 = 801E5E64
    addiu   a0, a0, 0x5E18             # a0 = 801E5E18
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x801E                 # a1 = 801E0000
    addiu   a1, a1, 0x5E60             # a1 = 801E5E60
    addiu   a0, a0, 0x5E00             # a0 = 801E5E00
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x801E                 # a1 = 801E0000
    addiu   a1, a1, 0x5E68             # a1 = 801E5E68
    addiu   a0, a0, 0x5E30             # a0 = 801E5E30
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x801E                 # a1 = 801E0000
    addiu   a1, a1, 0x5E70             # a1 = 801E5E70
    addiu   a0, a0, 0x5E48             # a0 = 801E5E48
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x801E                 # a1 = 801E0000
    addiu   a1, a1, 0x5198             # a1 = 801E5198
    addiu   a0, a0, 0x5180             # a0 = 801E5180
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t1, 0x0030($sp)
    lui     t0, 0x801E                 # t0 = 801E0000
    addiu   t0, t0, 0x59E8             # t0 = 801E59E8
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a2, 0x801D                 # a2 = 801D0000
    addiu   a2, a2, 0xB640             # a2 = 801CB640
    addiu   a0, a0, 0x5288             # a0 = 801E5288
    sw      t0, 0x0010($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80002F20              # osCreateThread
    sw      t1, 0x0014($sp)
    lui     a0, 0x801E                 # a0 = 801E0000
    jal     func_80005EC0              # osStartThread
    addiu   a0, a0, 0x5288             # a0 = 801E5288
    lw      t3, 0x0034($sp)
    lui     t2, 0x801E                 # t2 = 801E0000
    addiu   t2, t2, 0x5DE8             # t2 = 801E5DE8
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a2, 0x801D                 # a2 = 801D0000
    addiu   a2, a2, 0xAC40             # a2 = 801CAC40
    addiu   a0, a0, 0x5438             # a0 = 801E5438
    sw      t2, 0x0010($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80002F20              # osCreateThread
    sw      t3, 0x0014($sp)
    lui     a0, 0x801E                 # a0 = 801E0000
    jal     func_80005EC0              # osStartThread
    addiu   a0, a0, 0x5438             # a0 = 801E5438
    lui     a1, 0x801E                 # a1 = 801E0000
    addiu   a1, a1, 0x5E00             # a1 = 801E5E00
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    jal     func_80003FB0              # osSetEventMesg
    lui     a2, 0x0003                 # a2 = 00030000
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x5E48             # a0 = 801E5E48
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80001E20              # osSendMesg
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800051A0
    lw      a0, 0x002C($sp)
    lw      t4, 0x0028($sp)
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    or      a0, $zero, $zero           # a0 = 00000000
    beql    t4, $at, lbl_801CA998
    lw      $ra, 0x001C($sp)
    jal     func_80004480              # osSetThreadPri
    or      a1, t4, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)
lbl_801CA998:
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_801CA9A4:
    lui     t6, 0x801E                 # t6 = 801E0000
    lw      t6, -0x72A0(t6)            # 801D8D60
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    beq     t6, $zero, lbl_801CA9F0
    or      a3, a0, $zero              # a3 = 00000000
    lbu     t9, 0x0002(a0)             # 00000002
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   t8, $zero, 0x0025          # t8 = 00000025
    andi    t0, t9, 0x0080             # t0 = 00000000
    sb      t7, 0x0004(a0)             # 00000004
    beq     t0, $zero, lbl_801CAAF4
    sb      t8, 0x0005(a0)             # 00000005
    lw      a0, 0x0008(a0)             # 00000008
    addiu   a1, $zero, 0x0025          # a1 = 00000025
    jal     func_80001E20              # osSendMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beq     $zero, $zero, lbl_801CAAF8
    lw      $ra, 0x0014($sp)
lbl_801CA9F0:
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x5E48             # a0 = 801E5E48
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80002030              # osRecvMesg
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    addiu   t1, $zero, 0x0008          # t1 = 00000008
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lbu     a0, 0x0000(a3)             # 00000000
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    sb      t1, 0x0004(a3)             # 00000004
    beq     a0, $at, lbl_801CAA48
    sb      $zero, 0x0005(a3)          # 00000005
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     a0, $at, lbl_801CAA94
    or      a1, a3, $zero              # a1 = 00000000
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     a0, $at, lbl_801CAA94
    addiu   t7, a0, 0xFFFF             # t7 = FFFFFFFF
    beq     $zero, $zero, lbl_801CAA9C
    sltiu   $at, t7, 0x000E
lbl_801CAA48:
    lui     t3, 0x801E                 # t3 = 801E0000
    addiu   t3, t3, 0x5E85             # t3 = 801E5E85
    sb      t2, 0x0000(t3)             # 801E5E85
    jal     func_801CE7E0
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     t4, 0x801E                 # t4 = 801E0000
    addiu   t4, t4, 0x5E85             # t4 = 801E5E85
    sb      $zero, 0x0000(t4)          # 801E5E85
    lbu     t5, 0x0002(a3)             # 00000002
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    andi    t6, t5, 0x0080             # t6 = 00000000
    beq     t6, $zero, lbl_801CAAE0
    sb      $zero, 0x0004(a3)          # 00000004
    jal     func_80001E20              # osSendMesg
    lw      a0, 0x0008(a3)             # 00000008
    beq     $zero, $zero, lbl_801CAAE0
    nop
lbl_801CAA94:
    beq     $zero, $zero, lbl_801CAAB4
    sw      $zero, 0x0018(a3)          # 00000018
lbl_801CAA9C:
    bne     $at, $zero, lbl_801CAAB4
    addiu   t8, $zero, 0x001F          # t8 = 0000001F
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sb      t8, 0x0005(a3)             # 00000005
    beq     $zero, $zero, lbl_801CAAE0
    sb      t9, 0x0004(a3)             # 00000004
lbl_801CAAB4:
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x5DE8             # a0 = 801E5DE8
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_80001E20              # osSendMesg
    sw      a3, 0x0018($sp)
    beq     v0, $zero, lbl_801CAAE0
    lw      a3, 0x0018($sp)
    addiu   t0, $zero, 0x0023          # t0 = 00000023
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sb      t0, 0x0005(a3)             # 00000005
    sb      t1, 0x0004(a3)             # 00000004
lbl_801CAAE0:
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x5E48             # a0 = 801E5E48
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80001E20              # osSendMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_801CAAF4:
    lw      $ra, 0x0014($sp)
lbl_801CAAF8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CAB04:
    lui     t7, 0x801E                 # t7 = 801E0000
    lw      t7, -0x729C(t7)            # 801D8D64
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x801E                # $at = 801E0000
    sw      $ra, 0x0014($sp)
    beq     t7, $zero, lbl_801CAB84
    sw      t6, -0x72A0($at)           # 801D8D60
    lui     t9, 0x801E                 # t9 = 801E0000
    addiu   t9, t9, 0x5E85             # t9 = 801E5E85
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    jal     func_801CE7E0
    sb      t8, 0x0000(t9)             # 801E5E85
    lui     t0, 0x801E                 # t0 = 801E0000
    addiu   t0, t0, 0x5E85             # t0 = 801E5E85
    lui     a0, 0x801E                 # a0 = 801E0000
    sb      $zero, 0x0000(t0)          # 801E5E85
    addiu   a0, a0, 0x5E00             # a0 = 801E5E00
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x5E00             # a0 = 801E5E00
    lui     a1, 0x000A                 # a1 = 000A0000
    jal     func_80001E20              # osSendMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x801E                 # a1 = 801E0000
    addiu   a1, a1, 0x93B0             # a1 = 801D93B0
    addiu   a0, a0, 0x5DE8             # a0 = 801E5DE8
    jal     func_80001E20              # osSendMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
lbl_801CAB84:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CAB94:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_801CCC00
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_801CABB8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    lui     t8, 0x801E                 # t8 = 801E0000
    sw      $ra, 0x0014($sp)
    addiu   t6, $zero, 0x000F          # t6 = 0000000F
    addiu   t7, $zero, 0x0080          # t7 = 00000080
    addiu   t8, t8, 0x5180             # t8 = 801E5180
    lui     a0, 0x801E                 # a0 = 801E0000
    sb      t6, 0x001C($sp)
    sb      t7, 0x001E($sp)
    sb      $zero, 0x0020($sp)
    sw      t8, 0x0024($sp)
    addiu   a0, a0, 0x5DE8             # a0 = 801E5DE8
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFF4
    jal     func_80001E20              # osSendMesg
    or      a2, $zero, $zero           # a2 = 00000000
    beq     v0, $zero, lbl_801CAC04
    lui     a0, 0x801E                 # a0 = 801E0000
    beq     $zero, $zero, lbl_801CAC2C
    addiu   v0, $zero, 0x0023          # v0 = 00000023
lbl_801CAC04:
    addiu   a0, a0, 0x5180             # a0 = 801E5180
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lbu     t9, 0x0020($sp)
    lbu     v0, 0x0021($sp)
    bne     t9, $zero, lbl_801CAC2C
    nop
    beq     $zero, $zero, lbl_801CAC2C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CAC2C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop


func_801CAC40:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      a0, 0x0040($sp)
    sw      $ra, 0x003C($sp)
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x801E                 # a1 = 801E0000
    sw      s8, 0x0038($sp)
    sw      s7, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    addiu   a1, a1, 0x5EA0             # a1 = 801E5EA0
    addiu   a0, a0, 0x5EA8             # a0 = 801E5EA8
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     s7, 0x801E                 # s7 = 801E0000
    lui     s6, 0x801E                 # s6 = 801E0000
    lui     s4, 0x801E                 # s4 = 801E0000
    lui     s3, 0x801E                 # s3 = 801E0000
    lui     s2, 0x801E                 # s2 = 801E0000
    lui     s1, 0x801E                 # s1 = 801E0000
    addiu   s1, s1, 0x5E90             # s1 = 801E5E90
    addiu   s2, s2, 0x5E86             # s2 = 801E5E86
    addiu   s3, s3, 0x5E78             # s3 = 801E5E78
    addiu   s4, s4, 0x5E74             # s4 = 801E5E74
    addiu   s6, s6, 0x5438             # s6 = 801E5438
    addiu   s7, s7, 0x5E18             # s7 = 801E5E18
    lui     s8, 0x0009                 # s8 = 00090000
    addiu   s5, $zero, 0x0001          # s5 = 00000001
lbl_801CACC0:
    jal     func_80001F70              # osStopThread
    or      a0, s6, $zero              # a0 = 801E5438
    lw      v0, 0x0000(s3)             # 801E5E78
    lw      t6, 0x0014(v0)             # 00000014
    lw      s0, 0x0010(v0)             # 00000010
    sw      t6, 0x0000(s4)             # 801E5E74
lbl_801CACD8:
    jal     func_801CE340
    lhu     a0, 0x0000(s1)             # 801E5E90
    lhu     t7, 0x0000(s2)             # 801E5E86
    andi    t8, t7, 0x8000             # t8 = 00000000
    beq     t8, $zero, lbl_801CAD00
    nop
    jal     func_801CC9BC
    andi    a0, s5, 0xFFFF             # a0 = 00000001
    beq     $zero, $zero, lbl_801CAD0C
    or      a1, v0, $zero              # a1 = 00000000
lbl_801CAD00:
    jal     func_801CC9BC
    or      a0, $zero, $zero           # a0 = 00000000
    or      a1, v0, $zero              # a1 = 00000000
lbl_801CAD0C:
    bnel    v0, $zero, lbl_801CAD8C
    or      a0, s7, $zero              # a0 = 801E5E18
    lhu     t9, 0x0000(s2)             # 801E5E86
    andi    v0, s5, 0x00FF             # v0 = 00000001
    or      v1, v0, $zero              # v1 = 00000001
    andi    t0, t9, 0x2000             # t0 = 00000000
    beql    t0, $zero, lbl_801CAD38
    lbu     v0, 0x0009(s1)             # 801E5E99
    beq     $zero, $zero, lbl_801CAD50
    sb      s5, 0x0009(s1)             # 801E5E99
    lbu     v0, 0x0009(s1)             # 801E5E99
lbl_801CAD38:
    sltu    $at, s0, v0
    beq     $at, $zero, lbl_801CAD50
    or      v1, v0, $zero              # v1 = 00000001
    andi    v0, s0, 0x00FF             # v0 = 00000000
    or      v1, v0, $zero              # v1 = 00000000
    sb      s0, 0x0009(s1)             # 801E5E99
lbl_801CAD50:
    lhu     t1, 0x0000(s1)             # 801E5E90
    subu    s0, s0, v1
    addu    t2, t1, v0
    jal     func_801CADD0
    sh      t2, 0x0000(s1)             # 801E5E90
    bne     v0, $zero, lbl_801CAD88
    or      a1, v0, $zero              # a1 = 00000000
    lw      v0, 0x0000(s3)             # 801E5E78
    lw      t3, 0x0000(s4)             # 801E5E74
    lw      t4, 0x0014(v0)             # 00000014
    subu    t5, t3, t4
    bne     s0, $zero, lbl_801CACD8
    sw      t5, 0x0018(v0)             # 00000018
    or      a1, s8, $zero              # a1 = 00090000
lbl_801CAD88:
    or      a0, s7, $zero              # a0 = 801E5E18
lbl_801CAD8C:
    jal     func_80001E20              # osSendMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beq     $zero, $zero, lbl_801CACC0
    nop
    nop
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


func_801CADD0:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s3, 0x0024($sp)
    lui     s3, 0x801E                 # s3 = 801E0000
    addiu   s3, s3, 0x5E86             # s3 = 801E5E86
    sw      s2, 0x0020($sp)
    lhu     t7, 0x0000(s3)             # 801E5E86
    lui     s2, 0x801E                 # s2 = 801E0000
    addiu   s2, s2, 0x5E90             # s2 = 801E5E90
    lbu     t6, 0x0006(s2)             # 801E5E96
    andi    t8, t7, 0x2000             # t8 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s8, 0x0038($sp)
    sw      s7, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lhu     a0, 0x0004(s2)             # 801E5E94
    beq     t8, $zero, lbl_801CAE28
    sb      t6, 0x0069($sp)
    lbu     a0, 0x0069($sp)
lbl_801CAE28:
    lui     v1, 0x801E                 # v1 = 801E0000
    addiu   v1, v1, 0x5E74             # v1 = 801E5E74
    lw      v0, 0x0000(v1)             # 801E5E74
    lbu     t0, 0x0009(s2)             # 801E5E99
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    addu    t9, v0, a0
    sw      t9, 0x0000(v1)             # 801E5E74
    sh      a0, 0x006A($sp)
    bne     a1, t0, lbl_801CAE5C
    sw      v0, 0x005C($sp)
    addu    t2, t9, a0
    sw      t2, 0x0000(v1)             # 801E5E74
    sh      a0, 0x006A($sp)
lbl_801CAE5C:
    lui     s8, 0x801E                 # s8 = 801E0000
    lui     s6, 0x801E                 # s6 = 801E0000
    lui     s5, 0x801E                 # s5 = 801E0000
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   s5, s5, 0x5EC0             # s5 = 801E5EC0
    addiu   s6, s6, 0x6070             # s6 = 801E6070
    addiu   s8, s8, 0x5E7C             # s8 = 801E5E7C
    addiu   s7, $zero, 0x0001          # s7 = 00000001
lbl_801CAE7C:
    lw      t3, 0x0000(s5)             # 801E5EC0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      v0, 0x0018(t3)             # 00000018
    lw      t4, 0x0000(s5)             # 801E5EC0
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    sh      $zero, 0x001A(t4)          # 0000001A
    lw      t5, 0x0000(s5)             # 801E5EC0
    sw      $zero, 0x003C(t5)          # 0000003C
    lw      t7, 0x0000(s5)             # 801E5EC0
    lbu     t6, 0x0069($sp)
    sw      t6, 0x0038(t7)             # 00000038
    lw      t9, 0x0000(s5)             # 801E5EC0
    lw      t8, 0x005C($sp)
    sw      t8, 0x0030(t9)             # 00000030
    lw      t0, 0x0000(s5)             # 801E5EC0
    sw      s6, 0x0034(t0)             # 00000034
    lhu     t1, 0x0000(s3)             # 801E5E86
    andi    t2, t1, 0x2000             # t2 = 00000000
    beql    t2, $zero, lbl_801CAEE0
    lbu     t5, 0x0009(s2)             # 801E5E99
    lw      t4, 0x0000(s5)             # 801E5EC0
    sb      v0, 0x0009(s2)             # 801E5E99
    beq     $zero, $zero, lbl_801CAF48
    sh      t3, 0x0018(t4)             # 00000018
    lbu     t5, 0x0009(s2)             # 801E5E99
lbl_801CAEE0:
    bne     a1, t5, lbl_801CAF48
    nop
    lw      t7, 0x0000(s5)             # 801E5EC0
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sh      t6, 0x0018(t7)             # 00000018
    lw      t1, 0x0000(s5)             # 801E5EC0
    or      t0, t1, $zero              # t0 = 00000000
    addiu   t9, t1, 0x0024             # t9 = 00000024
lbl_801CAF00:
    lw      $at, 0x002C(t0)            # 0000002C
    addiu   t0, t0, 0x000C             # t0 = 0000000C
    addiu   t1, t1, 0x000C             # t1 = 0000000C
    sw      $at, 0x0044(t1)            # 00000050
    lw      $at, 0x0024(t0)            # 00000030
    sw      $at, 0x0048(t1)            # 00000054
    lw      $at, 0x0028(t0)            # 00000034
    bne     t0, t9, lbl_801CAF00
    sw      $at, 0x004C(t1)            # 00000058
    lw      t3, 0x0000(s5)             # 801E5EC0
    lui     t2, 0x801E                 # t2 = 801E0000
    addiu   t2, t2, 0x6410             # t2 = 801E6410
    sw      t2, 0x0058(t3)             # 0000005B
    lw      a0, 0x0000(s5)             # 801E5EC0
    lhu     t5, 0x006A($sp)
    lw      t4, 0x0054(a0)             # 00000054
    addu    t6, t4, t5
    sw      t6, 0x0054(a0)             # 00000054
lbl_801CAF48:
    jal     func_801CB3CC
    nop
    bne     v0, $zero, lbl_801CB2B0
    or      a0, v0, $zero              # a0 = 00000000
    lhu     t7, 0x0000(s3)             # 801E5E86
    sw      v0, 0x0074($sp)
    andi    t8, t7, 0x8000             # t8 = 00000000
    beq     t8, $zero, lbl_801CAF7C
    nop
    jal     func_801CDE80
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    beq     $zero, $zero, lbl_801CAF84
    nop
lbl_801CAF7C:
    jal     func_801CDE80
    or      a0, $zero, $zero           # a0 = 00000000
lbl_801CAF84:
    jal     func_801CB434
    nop
    lw      t9, 0x0000(s8)             # 801E5E7C
    lw      t0, 0x0000(s5)             # 801E5EC0
    lui     t1, 0x801E                 # t1 = 801E0000
    sw      t9, 0x0024(t0)             # 00000024
    lw      t2, 0x0000(s5)             # 801E5EC0
    lw      t1, 0x5E80(t1)             # 801E5E80
    sw      t1, 0x0028(t2)             # 00000028
    lhu     t3, 0x0000(s3)             # 801E5E86
    andi    t4, t3, 0x8000             # t4 = 00000000
    beql    t4, $zero, lbl_801CB04C
    lhu     t5, 0x0000(s3)             # 801E5E86
    lw      t6, 0x0000(s5)             # 801E5EC0
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0014(t6)             # 00000014
    lbu     t8, 0x0009(s2)             # 801E5E99
    lhu     t7, 0x006A($sp)
    lw      a0, 0x005C($sp)
    multu   t7, t8
    mflo    a1
    jal     func_80003440              # osWritebackDCache
    nop
    lui     a1, 0x801E                 # a1 = 801E0000
    addiu   a1, a1, 0x5EC8             # a1 = 801E5EC8
    lw      a0, 0x0000(s5)             # 801E5EC0
    jal     func_800040C0              # osEPiStartDma
    or      a2, s7, $zero              # a2 = 00000001
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x5E30             # a0 = 801E5E30
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    or      a2, s7, $zero              # a2 = 00000001
    lw      a0, 0x0000(s5)             # 801E5EC0
    lui     $at, 0x801E                # $at = 801E0000
    lw      t9, 0x0024(a0)             # 00000024
    sw      t9, 0x0000(s8)             # 801E5E7C
    lw      t0, 0x0028(a0)             # 00000028
    sw      t0, 0x5E80($at)            # 801E5E80
    lhu     v1, 0x001A(a0)             # 0000001A
    sll     t1, v1,  3
    addu    t1, t1, v1
    sll     t1, t1,  2
    addu    t2, a0, t1
    lw      t3, 0x002C(t2)             # 0000002C
    bne     t3, $zero, lbl_801CB2B4
    sw      t3, 0x0074($sp)
    beq     $zero, $zero, lbl_801CB39C
    or      v0, t3, $zero              # v0 = 00000000
    lhu     t5, 0x0000(s3)             # 801E5E86
lbl_801CB04C:
    lui     a0, 0x801E                 # a0 = 801E0000
    or      s1, $zero, $zero           # s1 = 00000000
    andi    t6, t5, 0x4000             # t6 = 00000000
    beq     t6, $zero, lbl_801CB080
    addiu   a0, a0, 0x5EA8             # a0 = 801E5EA8
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    or      a2, s7, $zero              # a2 = 00000001
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x5EA8             # a0 = 801E5EA8
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80001E20              # osSendMesg
    or      a2, $zero, $zero           # a2 = 00000000
lbl_801CB080:
    lw      t7, 0x0000(s5)             # 801E5EC0
    sw      $zero, 0x0014(t7)          # 00000014
    lbu     t9, 0x0009(s2)             # 801E5E99
    lhu     t8, 0x006A($sp)
    lw      a0, 0x005C($sp)
    multu   t8, t9
    mflo    a1
    jal     func_80004250              # osInvalDCache
    nop
    lui     a1, 0x801E                 # a1 = 801E0000
    addiu   a1, a1, 0x5EC8             # a1 = 801E5EC8
    lw      a0, 0x0000(s5)             # 801E5EC0
    jal     func_800040C0              # osEPiStartDma
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t0, 0x0009(s2)             # 801E5E99
    or      s0, $zero, $zero           # s0 = 00000000
    beq     t0, $zero, lbl_801CB2A8
lbl_801CB0C4:
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x5E30             # a0 = 801E5E30
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    or      a2, s7, $zero              # a2 = 00000001
    lw      a0, 0x0000(s5)             # 801E5EC0
    lui     $at, 0x801E                # $at = 801E0000
    lw      t1, 0x0024(a0)             # 00000024
    addu    v1, a0, s0
    sw      t1, 0x0000(s8)             # 801E5E7C
    lw      t2, 0x0028(a0)             # 00000028
    sw      t2, 0x5E80($at)            # 801E5E80
    lw      t3, 0x002C(v1)             # 0000002C
    bne     t3, $zero, lbl_801CB2B4
    sw      t3, 0x0074($sp)
    lhu     t5, 0x0000(s3)             # 801E5E86
    andi    t6, t5, 0x2000             # t6 = 00000000
    beql    t6, $zero, lbl_801CB11C
    lw      t7, 0x003C(v1)             # 0000003C
    beq     $zero, $zero, lbl_801CB39C
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t7, 0x003C(v1)             # 0000003C
lbl_801CB11C:
    beql    t7, $zero, lbl_801CB22C
    lbu     v1, 0x0009(s2)             # 801E5E99
    lw      t8, 0x0040(v1)             # 00000040
    sltiu   $at, t8, 0x0055
    beq     $at, $zero, lbl_801CB220
    nop
    lbu     t9, 0x0009(s2)             # 801E5E99
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0514             # a1 = 05000514
    bne     s7, t9, lbl_801CB168
    nop
    jal     func_80005630
    addiu   a2, $sp, 0x0074            # a2 = FFFFFFFC
    lw      a0, 0x0074($sp)
    sll     t0, a0,  3
    bgez    t0, lbl_801CB168
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    beq     $zero, $zero, lbl_801CB2B4
    sw      a0, 0x0074($sp)
lbl_801CB168:
    bne     s1, $zero, lbl_801CB178
    lbu     v0, 0x0069($sp)
    beq     $zero, $zero, lbl_801CB180
    or      a0, s6, $zero              # a0 = 801E6070
lbl_801CB178:
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x6410             # a0 = 801E6410
lbl_801CB180:
    sll     a1, v0,  2
    addu    t2, a0, a1
    jal     func_80004250              # osInvalDCache
    sw      t2, 0x0060($sp)
    lw      t3, 0x0000(s5)             # 801E5EC0
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x5EA8             # a0 = 801E5EA8
    addu    v1, t3, s0
    lw      t4, 0x003C(v1)             # 0000003C
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, s7, $zero              # a2 = 00000001
    sb      t4, 0x0068($sp)
    lw      t5, 0x0040(v1)             # 00000040
    sb      t5, 0x0064($sp)
    lw      t6, 0x0044(v1)             # 00000044
    sb      t6, 0x0065($sp)
    lw      t7, 0x0048(v1)             # 00000048
    sb      t7, 0x0066($sp)
    lw      t8, 0x004C(v1)             # 0000004C
    jal     func_80002030              # osRecvMesg
    sb      t8, 0x0067($sp)
    lhu     t9, 0x0000(s3)             # 801E5E86
    addiu   t2, $sp, 0x005C            # t2 = FFFFFFE4
    lui     t1, 0x801E                 # t1 = 801E0000
    ori     t0, t9, 0x4000             # t0 = 00004000
    sh      t0, 0x0000(s3)             # 801E5E86
    lw      t4, 0x0004(t2)             # FFFFFFE8
    lw      $at, 0x0000(t2)            # FFFFFFE4
    addiu   t1, t1, 0x67B0             # t1 = 801E67B0
    sw      t4, 0x0004(t1)             # 801E67B4
    sw      $at, 0x0000(t1)            # 801E67B0
    lw      $at, 0x0008(t2)            # FFFFFFEC
    lw      t4, 0x000C(t2)             # FFFFFFF0
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x5E18             # a0 = 801E5E18
    lui     a1, 0x0008                 # a1 = 00080000
    or      a2, s7, $zero              # a2 = 00000001
    sw      $at, 0x0008(t1)            # 801E67B8
    jal     func_80001E20              # osSendMesg
    sw      t4, 0x000C(t1)             # 801E67BC
lbl_801CB220:
    beq     $zero, $zero, lbl_801CB274
    lbu     v1, 0x0009(s2)             # 801E5E99
    lbu     v1, 0x0009(s2)             # 801E5E99
lbl_801CB22C:
    sll     t5, s1,  3
    subu    t5, t5, s1
    bne     s7, v1, lbl_801CB274
    sll     t5, t5,  2
    addu    t5, t5, s1
    sll     t5, t5,  5
    addu    v0, s6, t5
    lw      t6, 0x000C(v0)             # 0000000C
    lw      t7, 0x0000(v0)             # 00000000
    lw      t9, 0x0004(v0)             # 00000004
    lw      t3, 0x0008(v0)             # 00000008
    or      t8, t6, t7                 # t8 = 00000000
    or      t0, t8, t9                 # t0 = 00000000
    or      t1, t0, t3                 # t1 = 00000000
    beq     t1, $zero, lbl_801CB274
    addiu   a0, $zero, 0x0017          # a0 = 00000017
    beq     $zero, $zero, lbl_801CB2B4
    sw      a0, 0x0074($sp)
lbl_801CB274:
    lhu     a0, 0x006A($sp)
    lw      t2, 0x005C($sp)
    lbu     t5, 0x000A(s2)             # 801E5E9A
    addiu   t7, v1, 0xFFFF             # t7 = FFFFFFFF
    andi    t8, t7, 0x00FF             # t8 = 000000FF
    addu    t4, t2, a0
    xori    t6, t5, 0x0001             # t6 = 00000001
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   s0, s0, 0x0024             # s0 = 00000024
    sw      t4, 0x005C($sp)
    sb      t6, 0x000A(s2)             # 801E5E9A
    bne     t8, $zero, lbl_801CB0C4
    sb      t7, 0x0009(s2)             # 801E5E99
lbl_801CB2A8:
    beq     $zero, $zero, lbl_801CB39C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CB2B0:
    sw      a0, 0x0074($sp)
lbl_801CB2B4:
    lw      a0, 0x0074($sp)
    addiu   $at, $zero, 0x0016         # $at = 00000016
    bne     a0, $at, lbl_801CB2D0
    nop
    jal     func_801CB51C
    nop
    or      a0, v0, $zero              # a0 = 00000000
lbl_801CB2D0:
    jal     func_801CCAB0
    sw      a0, 0x0074($sp)
    bne     v0, $zero, lbl_801CB398
    lui     a0, 0x0003                 # a0 = 00030000
    lhu     t9, 0x0000(s3)             # 801E5E86
    xori    v0, s4, 0x0040             # v0 = 00000040
    ori     a0, a0, 0x0001             # a0 = 00030001
    andi    t0, t9, 0x1000             # t0 = 00000000
    bnel    t0, $zero, lbl_801CB39C
    lw      v0, 0x0074($sp)
    beq     v0, $zero, lbl_801CB398
    addiu   s4, s4, 0x0001             # s4 = 00000001
    andi    t3, s4, 0x0007             # t3 = 00000001
    bnel    t3, $zero, lbl_801CB324
    lw      a0, 0x0074($sp)
    jal     func_801CC820
    or      a1, $zero, $zero           # a1 = 00000000
    or      a0, v0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_801CB2D0
    sw      v0, 0x0074($sp)
    lw      a0, 0x0074($sp)
lbl_801CB324:
    addiu   $at, $zero, 0x0018         # $at = 00000018
    beq     a0, $at, lbl_801CB344
    addiu   $at, $zero, 0x0017         # $at = 00000017
    bne     a0, $at, lbl_801CB358
    sw      a0, 0x0074($sp)
    addiu   $at, $zero, 0x0020         # $at = 00000020
    bnel    s4, $at, lbl_801CB35C
    lhu     t1, 0x0000(s3)             # 801E5E86
lbl_801CB344:
    jal     func_801CC944
    nop
    or      a0, v0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_801CB2D0
    sw      v0, 0x0074($sp)
lbl_801CB358:
    lhu     t1, 0x0000(s3)             # 801E5E86
lbl_801CB35C:
    andi    t2, t1, 0x8000             # t2 = 00000000
    beq     t2, $zero, lbl_801CB378
    nop
    jal     func_801CC9BC
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    beq     $zero, $zero, lbl_801CB384
    or      a0, v0, $zero              # a0 = 00000000
lbl_801CB378:
    jal     func_801CC9BC
    or      a0, $zero, $zero           # a0 = 00000000
    or      a0, v0, $zero              # a0 = 00000000
lbl_801CB384:
    bne     v0, $zero, lbl_801CB2D0
    nop
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    beq     $zero, $zero, lbl_801CAE7C
    sw      a0, 0x0074($sp)
lbl_801CB398:
    lw      v0, 0x0074($sp)
lbl_801CB39C:
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
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_801CB3CC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    lui     a0, 0x0001                 # a0 = 00010000
    jal     func_801CC7D0
    ori     a0, a0, 0x0001             # a0 = 00010001
    bne     v0, $zero, lbl_801CB420
    or      v1, v0, $zero              # v1 = 00000000
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x050C             # a1 = 0500050C
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    addiu   a2, $sp, 0x0018            # a2 = FFFFFFF8
    jal     func_80005630
    sw      v0, 0x001C($sp)
    lw      t6, 0x0018($sp)
    lui     a0, 0x6000                 # a0 = 60000000
    lw      v1, 0x001C($sp)
    and     t7, t6, a0
    beql    a0, t7, lbl_801CB424
    lw      $ra, 0x0014($sp)
    addiu   v1, $zero, 0x0018          # v1 = 00000018
lbl_801CB420:
    lw      $ra, 0x0014($sp)
lbl_801CB424:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    or      v0, v1, $zero              # v0 = 00000018
    jr      $ra
    nop


func_801CB434:
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x5E7C             # v0 = 801E5E7C
    lw      a2, 0x0000(v0)             # 801E5E7C
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     $at, 0x1000                # $at = 10000000
    sw      $ra, 0x0014($sp)
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x0500                 # a1 = 05000000
    or      t6, a2, $at                # t6 = 10000000
    or      a2, t6, $zero              # a2 = 10000000
    ori     a1, a1, 0x0510             # a1 = 05000510
    jal     func_80005800
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x5E7C             # v0 = 801E5E7C
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0510             # a1 = 05000510
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    jal     func_80005800
    lw      a2, 0x0000(v0)             # 801E5E7C
    lui     v1, 0x801E                 # v1 = 801E0000
    addiu   v1, v1, 0x5E90             # v1 = 801E5E90
    lbu     t7, 0x000A(v1)             # 801E5E9A
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x5E7C             # v0 = 801E5E7C
    beq     t7, $zero, lbl_801CB4B0
    lui     t9, 0x801E                 # t9 = 801E0000
    lui     t8, 0x005A                 # t8 = 005A0000
    beq     $zero, $zero, lbl_801CB4B4
    sw      t8, 0x0000(v0)             # 801E5E7C
lbl_801CB4B0:
    sw      $zero, 0x0000(v0)          # 801E5E7C
lbl_801CB4B4:
    addiu   t9, t9, 0x5E86             # t9 = 801E5E86
    lhu     t0, 0x0000(t9)             # 801E5E86
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0510             # a1 = 05000510
    andi    t1, t0, 0x8000             # t1 = 00000000
    bne     t1, $zero, lbl_801CB4E0
    lui     a0, 0x801E                 # a0 = 801E0000
    lw      t2, 0x0000(v0)             # 801E5E7C
    lui     $at, 0x4000                # $at = 40000000
    or      t3, t2, $at                # t3 = 40000000
    sw      t3, 0x0000(v0)             # 801E5E7C
lbl_801CB4E0:
    lbu     t4, 0x0009(v1)             # 801E5E99
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t4, $at, lbl_801CB500
    nop
    lw      t5, 0x0000(v0)             # 801E5E7C
    lui     $at, 0x0200                # $at = 02000000
    or      t6, t5, $at                # t6 = 02000000
    sw      t6, 0x0000(v0)             # 801E5E7C
lbl_801CB500:
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    jal     func_80005800
    lw      a2, 0x0000(v0)             # 801E5E7C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CB51C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0514             # a1 = 05000514
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    jal     func_80005630
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFFC
    lui     a2, 0x801E                 # a2 = 801E0000
    lw      a2, 0x5E7C(a2)             # 801E5E7C
    lui     $at, 0x1000                # $at = 10000000
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x0500                 # a1 = 05000000
    or      t6, a2, $at                # t6 = 901E0000
    or      a2, t6, $zero              # a2 = 901E0000
    ori     a1, a1, 0x0510             # a1 = 05000510
    jal     func_80005800
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x0500                 # a1 = 05000000
    lui     a2, 0x801E                 # a2 = 801E0000
    lw      a2, 0x5E7C(a2)             # 801E5E7C
    ori     a1, a1, 0x0510             # a1 = 05000510
    jal     func_80005800
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    lw      v0, 0x001C($sp)
    sll     t7, v0,  5
    bgez    t7, lbl_801CB598
    sll     t8, v0,  3
    beq     $zero, $zero, lbl_801CB620
    addiu   v0, $zero, 0x0031          # v0 = 00000031
lbl_801CB598:
    bgez    t8, lbl_801CB5A8
    lui     $at, 0x4200                # $at = 42000000
    beq     $zero, $zero, lbl_801CB620
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_801CB5A8:
    and     t9, v0, $at
    beq     t9, $zero, lbl_801CB5DC
    sll     t3, v0,  0
    lui     t0, 0x801E                 # t0 = 801E0000
    addiu   t0, t0, 0x5E86             # t0 = 801E5E86
    lhu     t1, 0x0000(t0)             # 801E5E86
    andi    t2, t1, 0x8000             # t2 = 00000000
    beq     t2, $zero, lbl_801CB5D4
    nop
    beq     $zero, $zero, lbl_801CB620
    addiu   v0, $zero, 0x0016          # v0 = 00000016
lbl_801CB5D4:
    beq     $zero, $zero, lbl_801CB620
    addiu   v0, $zero, 0x0017          # v0 = 00000017
lbl_801CB5DC:
    bgez    t3, lbl_801CB5EC
    lui     a0, 0x801E                 # a0 = 801E0000
    beq     $zero, $zero, lbl_801CB620
    addiu   v0, $zero, 0x0018          # v0 = 00000018
lbl_801CB5EC:
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x050C             # a1 = 0500050C
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    jal     func_80005630
    addiu   a2, $sp, 0x0018            # a2 = FFFFFFF8
    lw      t4, 0x0018($sp)
    lui     v0, 0x6000                 # v0 = 60000000
    and     t5, t4, v0
    bnel    v0, t5, lbl_801CB620
    addiu   v0, $zero, 0x0018          # v0 = 00000018
    beq     $zero, $zero, lbl_801CB620
    addiu   v0, $zero, 0x0019          # v0 = 00000019
    addiu   v0, $zero, 0x0018          # v0 = 00000018
lbl_801CB620:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop
    nop
    nop
    nop


func_801CB640:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    sw      a0, 0x0048($sp)
    lui     t6, 0xA000                 # t6 = A0000000
    lbu     t7, 0x0010(t6)             # A0000010
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x5E9C             # v0 = 801E5E9C
    lui     t8, 0xA000                 # t8 = A0000000
    sb      t7, 0x0000(v0)             # 801E5E9C
    lbu     t9, 0x0090(t8)             # A0000090
    lui     t0, 0xA000                 # t0 = A0000000
    lui     t2, 0xA000                 # t2 = A0000000
    sb      t9, 0x0001(v0)             # 801E5E9D
    lbu     t1, 0x0110(t0)             # A0000110
    lui     $at, 0x801E                # $at = 801E0000
    lui     t4, 0x801E                 # t4 = 801E0000
    sb      t1, 0x0002(v0)             # 801E5E9E
    lbu     t3, 0x0190(t2)             # A0000190
    addiu   t4, t4, 0x5E85             # t4 = 801E5E85
    sb      t3, 0x0003(v0)             # 801E5E9F
    sw      $zero, 0x5E80($at)         # 801E5E80
    lui     $at, 0x801E                # $at = 801E0000
    sw      $zero, 0x5E7C($at)         # 801E5E7C
    lui     $at, 0x801E                # $at = 801E0000
    sb      $zero, 0x5E84($at)         # 801E5E84
    jal     func_801CCCC0
    sb      $zero, 0x0000(t4)          # 801E5E85
    jal     func_801CC0F0
    nop
    lui     v1, 0x801E                 # v1 = 801E0000
    lui     a3, 0x801E                 # a3 = 801E0000
    lui     t6, 0x801E                 # t6 = 801E0000
    addiu   a3, a3, 0x5EC0             # a3 = 801E5EC0
    addiu   v1, v1, 0x5EC8             # v1 = 801E5EC8
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, t6, 0x5E30             # t6 = 801E5E30
    lui     a1, 0x0500                 # a1 = 05000000
    sw      v0, 0x0000(a3)             # 801E5EC0
    sb      t5, 0x0002(v1)             # 801E5ECA
    sw      t6, 0x0004(v1)             # 801E5ECC
    ori     a1, a1, 0x0508             # a1 = 05000508
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80005630
    addiu   a2, $sp, 0x0044            # a2 = FFFFFFFC
    lw      v1, 0x0044($sp)
    lui     $at, 0x0680                # $at = 06800000
    sll     t7, v1,  9
    bltz    t7, lbl_801CB724
    and     t8, v1, $at
    beq     t8, $zero, lbl_801CB724
    nop
    jal     func_801CCC00
    nop
lbl_801CB724:
    lui     s1, 0x801E                 # s1 = 801E0000
    addiu   s1, s1, 0x5E78             # s1 = 801E5E78
    addiu   s3, $zero, 0x002B          # s3 = 0000002B
    addiu   s2, $zero, 0x0002          # s2 = 00000002
lbl_801CB734:
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x5DE8             # a0 = 801E5DE8
    or      a1, s1, $zero              # a1 = 801E5E78
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      v1, 0x0000(s1)             # 801E5E78
    lui     $at, 0x801E                # $at = 801E0000
    lui     a0, 0x0001                 # a0 = 00010000
    lbu     t9, 0x0000(v1)             # 00000000
    sw      t9, 0x5EE0($at)            # 801E5EE0
    lbu     t0, 0x0000(v1)             # 00000000
    bne     t0, $zero, lbl_801CB78C
    nop
    jal     func_801CCC00
    nop
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x5E00             # a0 = 801E5E00
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    or      a2, $zero, $zero           # a2 = 00000000
    beq     $zero, $zero, lbl_801CB734
    nop
lbl_801CB78C:
    jal     func_801CC48C
    ori     a0, a0, 0x0001             # a0 = 00000001
    jal     func_801CCC30
    or      s0, v0, $zero              # s0 = 00000000
    or      v1, v0, $zero              # v1 = 00000000
    bne     v0, $zero, lbl_801CB7B8
    sw      v0, 0x0044($sp)
    bne     s0, $zero, lbl_801CB808
    nop
    beq     $zero, $zero, lbl_801CB8C0
    nop
lbl_801CB7B8:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     s0, $at, lbl_801CB808
    addiu   $at, $zero, 0x0025         # $at = 00000025
    beq     s0, $at, lbl_801CB808
    addiu   $at, $zero, 0x0029         # $at = 00000029
    beq     s0, $at, lbl_801CB808
    nop
    beq     s0, s3, lbl_801CB808
    addiu   $at, $zero, 0x0031         # $at = 00000031
    bne     s0, $at, lbl_801CB7FC
    nop
    jal     func_801CCC3C
    nop
    bne     v0, s3, lbl_801CB808
    nop
    beq     $zero, $zero, lbl_801CB808
    or      s0, s3, $zero              # s0 = 0000002B
lbl_801CB7FC:
    jal     func_801CCC3C
    nop
    or      s0, v0, $zero              # s0 = 00000000
lbl_801CB808:
    beq     s0, s3, lbl_801CB888
    addiu   $at, $zero, 0x002F         # $at = 0000002F
    beq     s0, $at, lbl_801CB828
    addiu   $at, $zero, 0x0031         # $at = 00000031
    beql    s0, $at, lbl_801CB858
    lw      v1, 0x0000(s1)             # 801E5E78
    beq     $zero, $zero, lbl_801CB900
    lw      v1, 0x0000(s1)             # 801E5E78
lbl_801CB828:
    lw      v1, 0x0000(s1)             # 801E5E78
    lbu     a0, 0x0000(v1)             # 00000000
    addiu   t1, a0, 0xFFFE             # t1 = FFFFFFFE
    sltiu   $at, t1, 0x000E
    beq     $at, $zero, lbl_801CB904
    sll     t1, t1,  2
    lui     $at, 0x801E                # $at = 801E0000
    addu    $at, $at, t1
    lw      t1, -0x6C38($at)           # 801D93C8
    jr      t1
    nop
    lw      v1, 0x0000(s1)             # 801E5E78
lbl_801CB858:
    lbu     a0, 0x0000(v1)             # 00000000
    addiu   t2, a0, 0xFFFE             # t2 = FFFFFFFE
    sltiu   $at, t2, 0x000E
    beq     $at, $zero, lbl_801CB880
    sll     t2, t2,  2
    lui     $at, 0x801E                # $at = 801E0000
    addu    $at, $at, t2
    lw      t2, -0x6C00($at)           # 801D9400
    jr      t2
    nop
lbl_801CB880:
    beq     $zero, $zero, lbl_801CB904
    addiu   s0, $zero, 0x002A          # s0 = 0000002A
lbl_801CB888:
    lw      v1, 0x0000(s1)             # 801E5E78
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lbu     a0, 0x0000(v1)             # 00000000
    beq     a0, $at, lbl_801CB8C0
    or      v0, a0, $zero              # v0 = 00000000
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     v0, $at, lbl_801CB8C0
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     v0, $at, lbl_801CB8C0
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bnel    v0, $at, lbl_801CB908
    addiu   $at, $zero, 0x0003         # $at = 00000003
    jal     func_801CCC70
    nop
lbl_801CB8C0:
    lui     t3, 0x801E                 # t3 = 801E0000
    lbu     t3, 0x5E84(t3)             # 801E5E84
    bnel    t3, $zero, lbl_801CBA20
    lw      t2, 0x0000(s1)             # 801E5E78
    lw      t4, 0x0000(s1)             # 801E5E78
    lbu     t5, 0x0000(t4)             # 00000000
    addiu   t6, t5, 0xFFFE             # t6 = FFFFFFFE
    sltiu   $at, t6, 0x000E
    beq     $at, $zero, lbl_801CB934
    sll     t6, t6,  2
    lui     $at, 0x801E                # $at = 801E0000
    addu    $at, $at, t6
    lw      t6, -0x6BC8($at)           # 801D9438
    jr      t6
    nop
    lw      v1, 0x0000(s1)             # 801E5E78
lbl_801CB900:
    lbu     a0, 0x0000(v1)             # 00000000
lbl_801CB904:
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_801CB908:
    bnel    a0, $at, lbl_801CB928
    sb      s0, 0x0005(v1)             # 00000005
    jal     func_801CCBC0
    nop
    lw      t7, 0x0000(s1)             # 801E5E78
    sb      v0, 0x000C(t7)             # 0000000C
    lw      v1, 0x0000(s1)             # 801E5E78
    sb      s0, 0x0005(v1)             # 00000005
lbl_801CB928:
    lw      t8, 0x0000(s1)             # 801E5E78
    beq     $zero, $zero, lbl_801CBA3C
    sb      s2, 0x0004(t8)             # 00000004
lbl_801CB934:
    lui     t9, 0x801E                 # t9 = 801E0000
    lw      t9, 0x5E9C(t9)             # 801E5E9C
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0540             # a1 = 05000540
    bne     t9, $zero, lbl_801CB978
    lui     a0, 0x801E                 # a0 = 801E0000
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    jal     func_80005630
    addiu   a2, $sp, 0x0044            # a2 = FFFFFFFC
    lw      v1, 0x0044($sp)
    lui     $at, 0x0007                # $at = 00070000
    and     t0, v1, $at
    lui     $at, 0x0004                # $at = 00040000
    beq     t0, $at, lbl_801CB978
    nop
lbl_801CB970:
    beq     $zero, $zero, lbl_801CB970
    nop
lbl_801CB978:
    jal     func_801CBABC
    nop
    beq     v0, $zero, lbl_801CB994
    lui     a1, 0x801E                 # a1 = 801E0000
    lw      t1, 0x0000(s1)             # 801E5E78
    beq     $zero, $zero, lbl_801CBA3C
    sb      s2, 0x0004(t1)             # 00000004
lbl_801CB994:
    lbu     a1, 0x51A5(a1)             # 801E51A5
    lui     a0, 0x000B                 # a0 = 000B0000
    ori     a0, a0, 0x0001             # a0 = 000B0001
    sll     t2, a1, 16
    jal     func_801CC820
    or      a1, t2, $zero              # a1 = 00000000
    lw      t3, 0x0000(s1)             # 801E5E78
    beq     v0, $zero, lbl_801CB9C4
    sb      v0, 0x0005(t3)             # 00000005
    lw      t4, 0x0000(s1)             # 801E5E78
    beq     $zero, $zero, lbl_801CBA3C
    sb      s2, 0x0004(t4)             # 00000004
lbl_801CB9C4:
    lui     v0, 0x801E                 # v0 = 801E0000
    lbu     v0, 0x51A5(v0)             # 801E51A5
    addiu   $at, $zero, 0x0010         # $at = 00000010
    lui     t7, 0x801E                 # t7 = 801E0000
    andi    t5, v0, 0x00F0             # t5 = 00000000
    bne     t5, $at, lbl_801CB9FC
    andi    t6, v0, 0x000F             # t6 = 00000000
    lui     $at, 0x801E                # $at = 801E0000
    sb      t6, 0x5E88($at)            # 801E5E88
    lbu     t7, 0x5E88(t7)             # 801E5E88
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    slti    $at, t7, 0x0007
    bne     $at, $zero, lbl_801CBA14
    nop
lbl_801CB9FC:
    lw      t9, 0x0000(s1)             # 801E5E78
    addiu   t8, $zero, 0x000B          # t8 = 0000000B
    sb      t8, 0x0005(t9)             # 00000005
    lw      t0, 0x0000(s1)             # 801E5E78
    beq     $zero, $zero, lbl_801CBA3C
    sb      s2, 0x0004(t0)             # 00000004
lbl_801CBA14:
    lui     $at, 0x801E                # $at = 801E0000
    sb      t1, 0x5E84($at)            # 801E5E84
    lw      t2, 0x0000(s1)             # 801E5E78
lbl_801CBA20:
    lui     t9, 0x801E                 # t9 = 801E0000
    lbu     t3, 0x0000(t2)             # 00000000
    sll     t4, t3,  2
    addu    t9, t9, t4
    lw      t9, -0x7290(t9)            # 801D8D70
    jalr    $ra, t9
    nop
lbl_801CBA3C:
    lw      v1, 0x0000(s1)             # 801E5E78
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lbu     t5, 0x0002(v1)             # 00000002
    andi    t6, t5, 0x0080             # t6 = 00000000
    beq     t6, $zero, lbl_801CBA60
    nop
    lw      a0, 0x0008(v1)             # 00000008
    jal     func_80001E20              # osSendMesg
    lbu     a1, 0x0005(v1)             # 00000005
lbl_801CBA60:
    lui     t7, 0x801E                 # t7 = 801E0000
    addiu   t7, t7, 0x5E85             # t7 = 801E5E85
    lbu     t8, 0x0000(t7)             # 801E5E85
    beq     t8, $zero, lbl_801CB734
    nop
    jal     func_801CE7E0
    nop
    beq     $zero, $zero, lbl_801CB734
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_801CBABC:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    lui     a1, 0x801E                 # a1 = 801E0000
    addiu   a1, a1, 0x5E78             # a1 = 801E5E78
    lw      t6, 0x0000(a1)             # 801E5E78
    sw      s7, 0x0034($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s1, 0x001C($sp)
    sw      s8, 0x0038($sp)
    sw      s6, 0x0030($sp)
    sw      s2, 0x0020($sp)
    sw      s0, 0x0018($sp)
    addiu   v1, $sp, 0x005C            # v1 = FFFFFFE4
    lui     s1, 0x0003                 # s1 = 00030000
    lui     s3, 0x801E                 # s3 = 801E0000
    lui     s4, 0x801E                 # s4 = 801E0000
    lui     s5, 0x801E                 # s5 = 801E0000
    lui     s7, 0x801E                 # s7 = 801E0000
    sw      $ra, 0x003C($sp)
    sw      v1, 0x0000(a1)             # 801E5E78
    or      s2, $zero, $zero           # s2 = 00000000
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s7, s7, 0x8DB0             # s7 = 801D8DB0
    addiu   s5, s5, 0x5E86             # s5 = 801E5E86
    addiu   s4, s4, 0x5E88             # s4 = 801E5E88
    addiu   s3, s3, 0x51A0             # s3 = 801E51A0
    ori     s1, s1, 0x0001             # s1 = 00030001
    addiu   s6, $zero, 0x3000          # s6 = 00003000
    addiu   s8, $zero, 0x0017          # s8 = 00000017
    sw      t6, 0x0058($sp)
lbl_801CBB38:
    lw      $at, 0x0000(s7)            # 801D8DB0
    lw      t8, 0x0004(s7)             # 801D8DB4
    sb      $zero, 0x0000(s4)          # 801E5E88
    sw      $at, 0x0000(v1)            # FFFFFFE4
    lw      $at, 0x0008(s7)            # 801D8DB8
    sw      t8, 0x0004(v1)             # FFFFFFE8
    lw      t8, 0x000C(s7)             # 801D8DBC
    sw      $at, 0x0008(v1)            # FFFFFFEC
    lw      $at, 0x0010(s7)            # 801D8DC0
    sw      t8, 0x000C(v1)             # FFFFFFF0
    lw      t8, 0x0014(s7)             # 801D8DC4
    sw      $at, 0x0010(v1)            # FFFFFFF4
    lw      $at, 0x0018(s7)            # 801D8DC8
    sw      t8, 0x0014(v1)             # FFFFFFF8
    sb      $zero, 0x0008(s3)          # 801E51A8
    sw      $at, 0x0018(v1)            # FFFFFFFC
    sh      s6, 0x0000(s5)             # 801E5E86
    bne     s2, $zero, lbl_801CBBE4
    sw      s3, 0x0070($sp)
    jal     func_801CBD5C
    or      a0, $zero, $zero           # a0 = 00000000
    lbu     v0, 0x0061($sp)
    addiu   v1, $sp, 0x005C            # v1 = FFFFFFE4
    beq     v0, $zero, lbl_801CBBAC
    nop
    beq     v0, s8, lbl_801CBBC8
    addiu   v1, $sp, 0x005C            # v1 = FFFFFFE4
    beq     $zero, $zero, lbl_801CBC3C
    nop
lbl_801CBBAC:
    lui     v0, 0x801E                 # v0 = 801E0000
    lw      v0, 0x5E9C(v0)             # 801E5E9C
    or      s0, $zero, $zero           # s0 = 00000000
lbl_801CBBB8:
    bne     v0, $zero, lbl_801CBBB8
    nop
    beq     $zero, $zero, lbl_801CBB38
    addiu   s2, s2, 0xFFFF             # s2 = FFFFFFFF
lbl_801CBBC8:
    lui     v0, 0x801E                 # v0 = 801E0000
    lw      v0, 0x5E9C(v0)             # 801E5E9C
    or      s0, $zero, $zero           # s0 = 00000000
lbl_801CBBD4:
    beq     v0, $zero, lbl_801CBBD4
    nop
    beq     $zero, $zero, lbl_801CBB38
    addiu   s2, s2, 0xFFFF             # s2 = FFFFFFFE
lbl_801CBBE4:
    andi    t9, s0, 0x0003             # t9 = 00000000
    lui     v0, 0x801E                 # v0 = 801E0000
    lui     t0, 0x801E                 # t0 = 801E0000
    lw      t0, 0x5E9C(t0)             # 801E5E9C
    addu    v0, v0, t9
    lbu     v0, -0x6C40(v0)            # 801D93C0
    bne     t0, $zero, lbl_801CBC0C
    sw      v0, 0x0068($sp)
    addiu   v0, v0, 0x0002             # v0 = 801E0002
    sw      v0, 0x0068($sp)
lbl_801CBC0C:
    jal     func_801CBD5C
    or      a0, $zero, $zero           # a0 = 00000000
    lbu     t1, 0x0060($sp)
    bne     t1, $zero, lbl_801CBC3C
    lui     v0, 0x801E                 # v0 = 801E0000
    lui     v1, 0x801E                 # v1 = 801E0000
    lw      v1, 0x51A0(v1)             # 801E51A0
    lw      v0, 0x5E9C(v0)             # 801E5E9C
lbl_801CBC2C:
    bne     v0, v1, lbl_801CBC2C
    nop
    beq     $zero, $zero, lbl_801CBC84
    lw      t3, 0x0058($sp)
lbl_801CBC3C:
    jal     func_801CCAB0
    lbu     a0, 0x0061($sp)
    bne     v0, $zero, lbl_801CBC80
    or      a0, s1, $zero              # a0 = 00030001
    sltiu   v0, s0, 0x0040
    xori    v0, v0, 0x0001             # v0 = 00000001
    bne     v0, $zero, lbl_801CBC80
    addiu   s0, s0, 0x0001             # s0 = 00000001
    andi    t2, s0, 0x0007             # t2 = 00000001
    bne     t2, $zero, lbl_801CBC78
    nop
    jal     func_801CC820
    or      a1, $zero, $zero           # a1 = 00000000
    bne     v0, $zero, lbl_801CBC3C
    sb      v0, 0x0061($sp)
lbl_801CBC78:
    beq     $zero, $zero, lbl_801CBB38
    addiu   v1, $sp, 0x005C            # v1 = FFFFFFE4
lbl_801CBC80:
    lw      t3, 0x0058($sp)
lbl_801CBC84:
    lbu     v0, 0x0061($sp)
    lui     $at, 0x801E                # $at = 801E0000
    sw      t3, 0x5E78($at)            # 801E5E78
    sb      v0, 0x0005(t3)             # 00000005
    lw      $ra, 0x003C($sp)
    lw      s8, 0x0038($sp)
    lw      s7, 0x0034($sp)
    lw      s6, 0x0030($sp)
    lw      s5, 0x002C($sp)
    lw      s4, 0x0028($sp)
    lw      s3, 0x0024($sp)
    lw      s2, 0x0020($sp)
    lw      s1, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78
    nop
    nop
    nop


func_801CBCD0:
    lui     $at, 0x0001                # $at = 00010000
    srl     t8, a0, 15
    ori     $at, $at, 0xFFFE           # $at = 0001FFFE
    and     v1, t8, $at
    lui     $at, 0x0007                # $at = 00070000
    ori     $at, $at, 0xEE80           # $at = 0007EE80
    srl     t2, a0,  8
    add     v0, v1, $at
    andi    t3, t2, 0x000F             # t3 = 00000000
    andi    t5, a0, 0x00FE             # t5 = 00000000
    addi    t4, t3, 0x0001             # t4 = 00000001
    sll     t6, t5, 24
    andi    t9, a0, 0x0001             # t9 = 00000000
    srl     v1, a0, 12
    sw      t4, 0x0000(a2)             # 00000000
    sra     t7, t6, 25
    sll     t8, t9,  4
    andi    t1, v1, 0x000F             # t1 = 00000000
    sw      t7, 0x0000(a3)             # 00000000
    or      t2, t1, t8                 # t2 = 00000000
    jr      $ra
    sw      t2, 0x0000(a1)             # 00000000
    nop
    nop


func_801CBD30:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     t6, 0x801E                 # t6 = 801E0000
    sw      $ra, 0x0014($sp)
    addiu   t6, t6, 0x5E86             # t6 = 801E5E86
    sh      $zero, 0x0000(t6)          # 801E5E86
    jal     func_801CBD5C
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CBD5C:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s6, 0x0030($sp)
    lui     s6, 0x801E                 # s6 = 801E0000
    addiu   s6, s6, 0x5E78             # s6 = 801E5E78
    lw      a1, 0x0000(s6)             # 801E5E78
    sw      $ra, 0x0034($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lw      v0, 0x000C(a1)             # 0000000C
    lw      v1, 0x0010(a1)             # 00000010
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    or      t6, v0, v1                 # t6 = 00000000
    srl     t7, t6, 16
    bne     t7, $zero, lbl_801CBDB8
    addu    v0, v0, a0
    addu    t8, v0, v1
    sltiu   $at, t8, 0x10DD
    bne     $at, $zero, lbl_801CBDCC
    nop
lbl_801CBDB8:
    sb      t9, 0x0005(a1)             # 00000005
lbl_801CBDBC:
    lw      t1, 0x0000(s6)             # 801E5E78
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    beq     $zero, $zero, lbl_801CBEC4
    sb      t0, 0x0004(t1)             # 00000004
lbl_801CBDCC:
    bne     v1, $zero, lbl_801CBDF0
    lui     s0, 0x801E                 # s0 = 801E0000
    sltiu   $at, v0, 0x10DC
    beql    $at, $zero, lbl_801CBDBC
    sb      t9, 0x0005(a1)             # 00000005
    sb      $zero, 0x0005(a1)          # 00000005
    lw      t2, 0x0000(s6)             # 801E5E78
    beq     $zero, $zero, lbl_801CBEC4
    sb      $zero, 0x0004(t2)          # 00000004
lbl_801CBDF0:
    lui     $at, 0x801E                # $at = 801E0000
    addiu   s0, s0, 0x5E86             # s0 = 801E5E86
    sh      v0, 0x5E90($at)            # 801E5E90
    lhu     t3, 0x0000(s0)             # 801E5E86
    lui     s5, 0x801E                 # s5 = 801E0000
    addiu   s5, s5, 0x5EA8             # s5 = 801E5EA8
    andi    t4, t3, 0x3FFF             # t4 = 00000000
    sh      t4, 0x0000(s0)             # 801E5E86
    or      a0, s5, $zero              # a0 = 801E5EA8
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80001E20              # osSendMesg
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a0, 0x801E                 # a0 = 801E0000
    jal     func_80005EC0              # osStartThread
    addiu   a0, a0, 0x5438             # a0 = 801E5438
    lui     s1, 0x801E                 # s1 = 801E0000
    addiu   s1, s1, 0x5E18             # s1 = 801E5E18
    addiu   s4, $zero, 0xBFFF          # s4 = FFFFBFFF
    lui     s3, 0x0008                 # s3 = 00080000
    addiu   s2, $sp, 0x0044            # s2 = FFFFFFF4
    or      a0, s1, $zero              # a0 = 801E5E18
lbl_801CBE44:
    or      a1, s2, $zero              # a1 = FFFFFFF4
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      v0, 0x0044($sp)
    beq     v0, s3, lbl_801CBE6C
    lui     $at, 0x0009                # $at = 00090000
    beql    v0, $at, lbl_801CBEB8
    lw      t1, 0x0000(s6)             # 801E5E78
    beq     $zero, $zero, lbl_801CBE9C
    lw      t7, 0x0044($sp)
lbl_801CBE6C:
    jal     func_801CCD90
    nop
    lhu     t5, 0x0000(s0)             # 801E5E86
    or      a0, s5, $zero              # a0 = 801E5EA8
    or      a1, $zero, $zero           # a1 = 00000000
    and     t6, t5, s4
    sh      t6, 0x0000(s0)             # 801E5E86
    jal     func_80001E20              # osSendMesg
    or      a2, $zero, $zero           # a2 = 00000000
    beq     $zero, $zero, lbl_801CBE44
    or      a0, s1, $zero              # a0 = 801E5E18
    lw      t7, 0x0044($sp)
lbl_801CBE9C:
    lw      t8, 0x0000(s6)             # 801E5E78
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sb      t7, 0x0005(t8)             # 00000005
    lw      t0, 0x0000(s6)             # 801E5E78
    beq     $zero, $zero, lbl_801CBEC4
    sb      t9, 0x0004(t0)             # 00000004
    lw      t1, 0x0000(s6)             # 801E5E78
lbl_801CBEB8:
    sb      $zero, 0x0005(t1)          # 00000005
    lw      t2, 0x0000(s6)             # 801E5E78
    sb      $zero, 0x0004(t2)          # 00000004
lbl_801CBEC4:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    lw      s5, 0x002C($sp)
    lw      s6, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    nop


func_801CBEF0:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    lui     t6, 0x801E                 # t6 = 801E0000
    lw      t6, -0x7210(t6)            # 801D8DF0
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    bne     t6, $zero, lbl_801CBF34
    sw      a2, 0x0048($sp)
    beq     $zero, $zero, lbl_801CC014
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_801CBF34:
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     s1, $zero, lbl_801CC008
    addiu   s0, s0, 0x0018             # s0 = 00000018
    lui     s6, 0x801E                 # s6 = 801E0000
    lui     s5, 0x801E                 # s5 = 801E0000
    lui     s4, 0x801E                 # s4 = 801E0000
    lui     s2, 0x801E                 # s2 = 801E0000
    addiu   s2, s2, 0x5E88             # s2 = 801E5E88
    addiu   s4, s4, 0x9518             # s4 = 801D9518
    addiu   s5, s5, 0x9618             # s5 = 801D9618
    addiu   s6, s6, 0x9504             # s6 = 801D9504
    lw      a0, 0x0038($sp)
lbl_801CBF6C:
    bne     v0, $zero, lbl_801CBF94
    nop
    lbu     t7, 0x0000(s2)             # 801E5E88
    sll     t0, a1,  1
    sll     t8, t7,  5
    addu    t9, s4, t8
    addu    t1, t9, t0
    lhu     t2, 0x0000(t1)             # 00000000
    bnel    s0, t2, lbl_801CBFDC
    addiu   s1, s1, 0xFFFF             # s1 = FFFFFFFF
lbl_801CBF94:
    jal     func_801CE534
    or      a0, s0, $zero              # a0 = 00000018
    lbu     t3, 0x0000(s2)             # 801E5E88
    andi    a1, v0, 0xFFFF             # a1 = 00000000
    sll     t4, t3,  4
    addu    t5, s5, t4
    addu    t6, t5, v0
    lbu     v1, 0x0000(t6)             # 00000000
    slti    $at, v1, 0x0008
    bne     $at, $zero, lbl_801CBFCC
    or      a0, v1, $zero              # a0 = 00000000
    addiu   v1, a0, 0xFFF9             # v1 = FFFFFFF9
    andi    t7, v1, 0xFFFF             # t7 = 0000FFF9
    or      v1, t7, $zero              # v1 = 0000FFF9
lbl_801CBFCC:
    sll     t8, v1,  1
    addu    t9, s6, t8
    lhu     a0, 0x0000(t9)             # 00000000
    addiu   s1, s1, 0xFFFF             # s1 = FFFFFFFE
lbl_801CBFDC:
    addu    s3, s3, a0
    beq     s1, $zero, lbl_801CBFFC
    addiu   s0, s0, 0x0001             # s0 = 00000019
    sltiu   $at, s0, 0x10DC
    bne     $at, $zero, lbl_801CBFFC
    nop
    beq     $zero, $zero, lbl_801CC014
    addiu   v0, $zero, 0x0020          # v0 = 00000020
lbl_801CBFFC:
    bne     s1, $zero, lbl_801CBF6C
    or      v0, $zero, $zero           # v0 = 00000000
    sw      a0, 0x0038($sp)
lbl_801CC008:
    lw      t0, 0x0048($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    sw      s3, 0x0000(t0)             # 00000000
lbl_801CC014:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    lw      s5, 0x002C($sp)
    lw      s6, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    nop


func_801CC040:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0540             # a1 = 05000540
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    jal     func_80005630
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFFC
    lui     a0, 0x001B                 # a0 = 001B0000
    jal     func_801CC820
    or      a1, $zero, $zero           # a1 = 00000000
    bne     v0, $zero, lbl_801CC0A4
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0500             # a1 = 05000500
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    jal     func_80005630
    addiu   a2, $sp, 0x0018            # a2 = FFFFFFF8
    lw      t6, 0x0018($sp)
    lw      t8, 0x001C($sp)
    lui     $at, 0x0010                # $at = 00100000
    sll     t7, t6, 15
    bgez    t7, lbl_801CC0A4
    or      t9, t8, $at                # t9 = 00100000
    sw      t9, 0x001C($sp)
lbl_801CC0A4:
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x5E78             # v0 = 801E5E78
    lw      t0, 0x0000(v0)             # 801E5E78
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sb      $zero, 0x000C(t0)          # 0000000C
    lw      t1, 0x001C($sp)
    lw      t3, 0x0000(v0)             # 801E5E78
    srl     t2, t1, 16
    sb      t2, 0x000D(t3)             # 0000000D
    lw      t5, 0x0000(v0)             # 801E5E78
    sb      t4, 0x000E(t5)             # 0000000E
    lw      t6, 0x0000(v0)             # 801E5E78
    sb      $zero, 0x000F(t6)          # 0000000F
    lw      t7, 0x0000(v0)             # 801E5E78
    sb      $zero, 0x0004(t7)          # 00000004
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_801CC0F0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    lui     s0, 0x801E                 # s0 = 801E0000
    addiu   s0, s0, 0x5EF0             # s0 = 801E5EF0
    sw      $ra, 0x001C($sp)
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addiu   v1, $zero, 0x0006          # v1 = 00000006
    lui     t6, 0xA500                 # t6 = A5000000
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     a0, 0x801E                 # a0 = 801E0000
    sb      v0, 0x0004(s0)             # 801E5EF4
    sw      t6, 0x000C(s0)             # 801E5EFC
    sb      t7, 0x0005(s0)             # 801E5EF5
    sb      v1, 0x0008(s0)             # 801E5EF8
    sb      v1, 0x0006(s0)             # 801E5EF6
    sb      v0, 0x0007(s0)             # 801E5EF7
    sb      t8, 0x0009(s0)             # 801E5EF9
    sw      $zero, 0x0010(s0)          # 801E5F00
    addiu   a0, a0, 0x5F04             # a0 = 801E5F04
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0060          # a1 = 00000060
    jal     func_80005130              # __osDisableInt
    nop
    lui     v1, 0x8000                 # v1 = 80000000
    addiu   v1, v1, 0x638C             # v1 = 8000638C
    lw      t9, 0x0000(v1)             # 8000638C
    sw      s0, 0x0000(v1)             # 8000638C
    lui     $at, 0x801E                # $at = 801E0000
    sw      t9, 0x0000(s0)             # 801E5EF0
    sw      s0, 0x5F64($at)            # 801E5F64
    jal     func_800051A0
    or      a0, v0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    or      v0, s0, $zero              # v0 = 801E5EF0
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    nop
    nop


func_801CC190:
    lui     t6, 0x801E                 # t6 = 801E0000
    lw      t6, -0x7210(t6)            # 801D8DF0
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    bne     t6, $zero, lbl_801CC1B0
    addiu   t7, $zero, 0x000C          # t7 = 0000000C
    beq     $zero, $zero, lbl_801CC1E0
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_801CC1B0:
    sb      t7, 0x0000(a0)             # 00000000
    sb      $zero, 0x0001(a0)          # 00000001
    sb      $zero, 0x0002(a0)          # 00000002
    sb      $zero, 0x0003(a0)          # 00000003
    beq     a2, $zero, lbl_801CC1D4
    sw      a1, 0x000C(a0)             # 0000000C
    ori     t9, $zero, 0x0080          # t9 = 00000080
    sb      t9, 0x0002(a0)             # 00000002
    sw      a2, 0x0008(a0)             # 00000008
lbl_801CC1D4:
    jal     func_801CA9A4
    nop
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CC1E0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CC1F0:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s8, 0x0038($sp)
    lui     s8, 0x801E                 # s8 = 801E0000
    addiu   s8, s8, 0x5E78             # s8 = 801E5E78
    sw      s7, 0x0034($sp)
    sw      s5, 0x002C($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    addiu   s2, $sp, 0x004C            # s2 = FFFFFFE4
    sw      s6, 0x0030($sp)
    sw      s4, 0x0028($sp)
    lw      s0, 0x0000(s8)             # 801E5E78
    lui     s1, 0x801E                 # s1 = 801E0000
    lui     s3, 0x801E                 # s3 = 801E0000
    lui     s5, 0x801E                 # s5 = 801E0000
    lui     s7, 0x801E                 # s7 = 801E0000
    sw      $ra, 0x003C($sp)
    sw      s2, 0x0000(s8)             # 801E5E78
    addiu   s7, s7, 0x9472             # s7 = 801D9472
    addiu   s5, s5, 0x8DD0             # s5 = 801D8DD0
    addiu   s3, s3, 0x5E86             # s3 = 801E5E86
    addiu   s1, s1, 0x9470             # s1 = 801D9470
    addiu   s4, $zero, 0x2000          # s4 = 00002000
    addiu   s6, $zero, 0x0017          # s6 = 00000017
    lw      $at, 0x0000(s5)            # 801D8DD0
lbl_801CC25C:
    lw      t7, 0x0004(s5)             # 801D8DD4
    lbu     t8, 0x0000(s1)             # 801D9470
    sw      $at, 0x0000(s2)            # FFFFFFE4
    lw      $at, 0x0008(s5)            # 801D8DD8
    sw      t7, 0x0004(s2)             # FFFFFFE8
    lw      t7, 0x000C(s5)             # 801D8DDC
    sw      $at, 0x0008(s2)            # FFFFFFEC
    lw      $at, 0x0010(s5)            # 801D8DE0
    sw      t7, 0x000C(s2)             # FFFFFFF0
    lw      t7, 0x0014(s5)             # 801D8DE4
    sw      $at, 0x0010(s2)            # FFFFFFF4
    lw      $at, 0x0018(s5)            # 801D8DE8
    sw      t7, 0x0014(s2)             # FFFFFFF8
    sh      s4, 0x0000(s3)             # 801E5E86
    sw      $at, 0x0018(s2)            # FFFFFFFC
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_801CBD5C
    sw      t8, 0x0058($sp)
    lbu     t9, 0x0051($sp)
    addiu   s1, s1, 0x0001             # s1 = 801D9471
    sltu    $at, s1, s7
    beq     s6, t9, lbl_801CC2C0
    nop
    beq     $zero, $zero, lbl_801CC2CC
    sw      s0, 0x0000(s8)             # 801E5E78
lbl_801CC2C0:
    bnel    $at, $zero, lbl_801CC25C
    lw      $at, 0x0000(s5)            # 801D8DD0
    sw      s0, 0x0000(s8)             # 801E5E78
lbl_801CC2CC:
    lui     v0, 0x801E                 # v0 = 801E0000
    lui     v1, 0x801E                 # v1 = 801E0000
    lw      s0, 0x000C(s0)             # 0000000C
    addiu   v1, v1, 0x5FA0             # v1 = 801E5FA0
    addiu   v0, v0, 0x5F80             # v0 = 801E5F80
lbl_801CC2E0:
    lw      t1, 0x0000(v0)             # 801E5F80
    addiu   v0, v0, 0x0010             # v0 = 801E5F90
    addiu   s0, s0, 0x0010             # s0 = 00000010
    sw      t1, -0x0010(s0)            # 00000000
    lw      t2, -0x000C(v0)            # 801E5F84
    sw      t2, -0x000C(s0)            # 00000004
    lw      t3, -0x0008(v0)            # 801E5F88
    sw      t3, -0x0008(s0)            # 00000008
    lw      t4, -0x0004(v0)            # 801E5F8C
    bne     v0, v1, lbl_801CC2E0
    sw      t4, -0x0004(s0)            # 0000000C
    lbu     t5, 0x0051($sp)
    lw      t6, 0x0000(s8)             # 801E5E78
    sb      t5, 0x0005(t6)             # 00000005
    lw      t8, 0x0000(s8)             # 801E5E78
    lbu     t7, 0x0050($sp)
    sb      t7, 0x0004(t8)             # 00000004
    lw      t9, 0x0000(s8)             # 801E5E78
    lbu     t0, 0x0004(t9)             # 00000004
    bne     t0, $zero, lbl_801CC344
    nop
    jal     func_801CCC8C
    nop
    beq     $zero, $zero, lbl_801CC350
    lw      $ra, 0x003C($sp)
lbl_801CC344:
    jal     func_801CCCA8
    nop
    lw      $ra, 0x003C($sp)
lbl_801CC350:
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


func_801CC380:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x0500                 # a1 = 05000000
    lui     a2, 0x801E                 # a2 = 801E0000
    addiu   a2, a2, 0x5F70             # a2 = 801E5F70
    ori     a1, a1, 0x0508             # a1 = 05000508
    jal     func_80005630
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    lui     t6, 0x801E                 # t6 = 801E0000
    lw      t6, 0x5F70(t6)             # 801E5F70
    lui     v1, 0x0100                 # v1 = 01000000
    lui     $at, 0x01C3                # $at = 01C30000
    ori     $at, $at, 0xFFFF           # $at = 01C3FFFF
    xor     v0, t6, v1
    and     t7, v0, $at
    beq     t7, $zero, lbl_801CC478
    lui     $at, 0x01C1                # $at = 01C10000
    ori     $at, $at, 0xFFFF           # $at = 01C1FFFF
    and     t8, v0, $at
    beq     t8, $zero, lbl_801CC3E0
    andi    t9, v0, 0xFFFF             # t9 = 00000000
    lui     $at, 0x801E                # $at = 801E0000
    sb      $zero, 0x5E84($at)         # 801E5E84
lbl_801CC3E0:
    beq     t9, $zero, lbl_801CC3F0
    lui     $at, 0x00C0                # $at = 00C00000
    beq     $zero, $zero, lbl_801CC47C
    addiu   v0, $zero, 0x0029          # v0 = 00000029
lbl_801CC3F0:
    and     t0, v0, $at
    lui     $at, 0x0080                # $at = 00800000
    bne     t0, $at, lbl_801CC408
    sll     t1, v0,  9
    beq     $zero, $zero, lbl_801CC47C
    addiu   v0, $zero, 0x0003          # v0 = 00000003
lbl_801CC408:
    bgezl   t1, lbl_801CC430
    and     t4, v0, v1
    lui     v1, 0x801E                 # v1 = 801E0000
    addiu   v1, v1, 0x5F74             # v1 = 801E5F74
    lw      t2, 0x0000(v1)             # 801E5F74
    addiu   v0, $zero, 0x002B          # v0 = 0000002B
    ori     t3, t2, 0x0002             # t3 = 00000002
    beq     $zero, $zero, lbl_801CC47C
    sw      t3, 0x0000(v1)             # 801E5F74
    and     t4, v0, v1
lbl_801CC430:
    beql    t4, $zero, lbl_801CC444
    sll     t5, v0, 15
    beq     $zero, $zero, lbl_801CC47C
    addiu   v0, $zero, 0x0031          # v0 = 00000031
    sll     t5, v0, 15
lbl_801CC444:
    bgez    t5, lbl_801CC464
    lui     v1, 0x801E                 # v1 = 801E0000
    addiu   v1, v1, 0x5F74             # v1 = 801E5F74
    lw      t6, 0x0000(v1)             # 801E5F74
    addiu   v0, $zero, 0x002F          # v0 = 0000002F
    ori     t7, t6, 0x0001             # t7 = 801E0001
    beq     $zero, $zero, lbl_801CC47C
    sw      t7, 0x0000(v1)             # 801E5F74
lbl_801CC464:
    sll     t8, v0, 14
    bgezl   t8, lbl_801CC47C
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_801CC47C
    addiu   v0, $zero, 0x0015          # v0 = 00000015
lbl_801CC478:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CC47C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CC48C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    jal     func_801CC380
    sw      a0, 0x0020($sp)
    addiu   $at, $zero, 0x0015         # $at = 00000015
    lw      a0, 0x0020($sp)
    beq     v0, $at, lbl_801CC558
    sw      v0, 0x001C($sp)
    addiu   $at, $zero, 0x002B         # $at = 0000002B
    beq     v0, $at, lbl_801CC4E8
    lui     t6, 0x801E                 # t6 = 801E0000
    addiu   $at, $zero, 0x002F         # $at = 0000002F
    beq     v0, $at, lbl_801CC4D4
    addiu   $at, $zero, 0x0031         # $at = 00000031
    beq     v0, $at, lbl_801CC550
    andi    t8, a0, 0x0001             # t8 = 00000000
    beq     $zero, $zero, lbl_801CC564
    lbu     v0, 0x001F($sp)
lbl_801CC4D4:
    lui     $at, 0x0008                # $at = 00080000
    bne     a0, $at, lbl_801CC4E8
    nop
    beq     $zero, $zero, lbl_801CC564
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CC4E8:
    lw      t6, 0x5F70(t6)             # 801E5F70
    lui     $at, 0x0009                # $at = 00090000
    sll     t7, t6,  8
    bltzl   t7, lbl_801CC564
    lbu     v0, 0x001F($sp)
    bne     a0, $at, lbl_801CC50C
    nop
    beq     $zero, $zero, lbl_801CC564
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CC50C:
    jal     func_801CCA5C
    or      a0, $zero, $zero           # a0 = 00000000
    beq     v0, $zero, lbl_801CC524
    lui     a0, 0x801E                 # a0 = 801E0000
    beq     $zero, $zero, lbl_801CC564
    addiu   v0, $zero, 0x0025          # v0 = 00000025
lbl_801CC524:
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0508             # a1 = 05000508
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    jal     func_80005800
    lui     a2, 0x0009                 # a2 = 00090000
    jal     func_801CCA5C
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    beql    v0, $zero, lbl_801CC564
    lbu     v0, 0x001F($sp)
    beq     $zero, $zero, lbl_801CC564
    addiu   v0, $zero, 0x0025          # v0 = 00000025
lbl_801CC550:
    bnel    t8, $zero, lbl_801CC564
    lbu     v0, 0x001F($sp)
lbl_801CC558:
    beq     $zero, $zero, lbl_801CC564
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     v0, 0x001F($sp)
lbl_801CC564:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_801CC574:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    jal     func_801CC380
    sw      a0, 0x0028($sp)
    addiu   $at, $zero, 0x0015         # $at = 00000015
    beq     v0, $at, lbl_801CC62C
    or      v1, v0, $zero              # v1 = 00000000
    addiu   $at, $zero, 0x002B         # $at = 0000002B
    beq     v0, $at, lbl_801CC5B8
    lui     t6, 0x801E                 # t6 = 801E0000
    addiu   $at, $zero, 0x002F         # $at = 0000002F
    beq     v0, $at, lbl_801CC5B8
    addiu   $at, $zero, 0x0031         # $at = 00000031
    beq     v0, $at, lbl_801CC618
    lw      t8, 0x0028($sp)
    beq     $zero, $zero, lbl_801CC718
    andi    v0, v1, 0x00FF             # v0 = 00000000
lbl_801CC5B8:
    lw      t6, 0x5F70(t6)             # 801E5F70
    or      a0, $zero, $zero           # a0 = 00000000
    sll     t7, t6,  8
    bltzl   t7, lbl_801CC718
    andi    v0, v1, 0x00FF             # v0 = 00000000
    jal     func_801CCA5C
    sw      v1, 0x0020($sp)
    beq     v0, $zero, lbl_801CC5E4
    lw      v1, 0x0020($sp)
    beq     $zero, $zero, lbl_801CC718
    addiu   v0, $zero, 0x0025          # v0 = 00000025
lbl_801CC5E4:
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0508             # a1 = 05000508
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    lui     a2, 0x0009                 # a2 = 00090000
    jal     func_80005800
    sw      v1, 0x0020($sp)
    jal     func_801CCA5C
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    beq     v0, $zero, lbl_801CC714
    lw      v1, 0x0020($sp)
    beq     $zero, $zero, lbl_801CC718
    addiu   v0, $zero, 0x0025          # v0 = 00000025
lbl_801CC618:
    andi    t9, t8, 0x0001             # t9 = 00000000
    bnel    t9, $zero, lbl_801CC718
    andi    v0, v1, 0x00FF             # v0 = 00000000
    beq     $zero, $zero, lbl_801CC718
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CC62C:
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0500             # a1 = 05000500
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    jal     func_80005800
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_801CCA5C
    or      a0, $zero, $zero           # a0 = 00000000
    beq     v0, $zero, lbl_801CC65C
    lui     a0, 0x801E                 # a0 = 801E0000
    beq     $zero, $zero, lbl_801CC718
    addiu   v0, $zero, 0x0025          # v0 = 00000025
lbl_801CC65C:
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0508             # a1 = 05000508
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    jal     func_80005800
    lui     a2, 0x000C                 # a2 = 000C0000
    jal     func_801CCA5C
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    beq     v0, $zero, lbl_801CC688
    lui     a0, 0x801E                 # a0 = 801E0000
    beq     $zero, $zero, lbl_801CC718
    addiu   v0, $zero, 0x0025          # v0 = 00000025
lbl_801CC688:
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0500             # a1 = 05000500
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    jal     func_80005630
    addiu   a2, $sp, 0x0024            # a2 = FFFFFFFC
    jal     func_801CC48C
    lui     a0, 0x000C                 # a0 = 000C0000
    beql    v0, $zero, lbl_801CC6B8
    lw      v0, 0x0024($sp)
    beq     $zero, $zero, lbl_801CC718
    andi    v0, v0, 0x00FF             # v0 = 00000000
    lw      v0, 0x0024($sp)
lbl_801CC6B8:
    sll     t0, v0, 15
    bgez    t0, lbl_801CC6CC
    sll     t1, v0, 14
    beq     $zero, $zero, lbl_801CC718
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_801CC6CC:
    bgez    t1, lbl_801CC6DC
    sll     t2, v0, 13
    beq     $zero, $zero, lbl_801CC718
    addiu   v0, $zero, 0x0018          # v0 = 00000018
lbl_801CC6DC:
    bgez    t2, lbl_801CC6EC
    sll     t3, v0, 12
    beq     $zero, $zero, lbl_801CC718
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_801CC6EC:
    bgez    t3, lbl_801CC6FC
    sll     t4, v0, 10
    beq     $zero, $zero, lbl_801CC718
    addiu   v0, $zero, 0x0015          # v0 = 00000015
lbl_801CC6FC:
    bgez    t4, lbl_801CC70C
    nop
    beq     $zero, $zero, lbl_801CC718
    addiu   v0, $zero, 0x000B          # v0 = 0000000B
lbl_801CC70C:
    beq     $zero, $zero, lbl_801CC718
    addiu   v0, $zero, 0x0029          # v0 = 00000029
lbl_801CC714:
    andi    v0, v1, 0x00FF             # v0 = 00000000
lbl_801CC718:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_801CC728:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_801CC48C
    sw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_801CC760
    andi    v1, v0, 0x00FF             # v1 = 00000000
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x5E78             # a0 = 801E5E78
    lw      t6, 0x0000(a0)             # 801E5E78
    sb      v1, 0x0005(t6)             # 00000005
    lw      t7, 0x0000(a0)             # 801E5E78
    beq     $zero, $zero, lbl_801CC7C0
    lbu     v0, 0x0005(t7)             # 00000005
lbl_801CC760:
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0500             # a1 = 05000500
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    jal     func_80005800
    lw      a2, 0x001C($sp)
    jal     func_801CCA5C
    or      a0, $zero, $zero           # a0 = 00000000
    beq     v0, $zero, lbl_801CC7A4
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x5E78             # a0 = 801E5E78
    lw      t9, 0x0000(a0)             # 801E5E78
    addiu   t8, $zero, 0x0025          # t8 = 00000025
    sb      t8, 0x0005(t9)             # 00000005
    lw      t0, 0x0000(a0)             # 801E5E78
    beq     $zero, $zero, lbl_801CC7C0
    lbu     v0, 0x0005(t0)             # 00000005
lbl_801CC7A4:
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0508             # a1 = 05000508
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    jal     func_80005800
    lw      a2, 0x0018($sp)
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CC7C0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CC7D0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_801CCA5C
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    beq     v0, $zero, lbl_801CC7F4
    nop
    beq     $zero, $zero, lbl_801CC810
    addiu   v0, $zero, 0x0025          # v0 = 00000025
lbl_801CC7F4:
    jal     func_801CC574
    lw      a0, 0x0018($sp)
    beql    v0, $zero, lbl_801CC810
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_801CC810
    andi    v0, v0, 0x00FF             # v0 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CC810:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CC820:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_801CC728
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_801CC840
    nop
    beq     $zero, $zero, lbl_801CC848
    andi    v0, v0, 0x00FF             # v0 = 00000000
lbl_801CC840:
    jal     func_801CC7D0
    lw      a0, 0x0018($sp)
lbl_801CC848:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CC858:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_801CC48C
    sw      a1, 0x001C($sp)
    addiu   $at, $zero, 0x002F         # $at = 0000002F
    beq     v0, $at, lbl_801CC898
    andi    a0, v0, 0x00FF             # a0 = 00000000
    beq     v0, $zero, lbl_801CC898
    lui     v1, 0x801E                 # v1 = 801E0000
    addiu   v1, v1, 0x5E78             # v1 = 801E5E78
    lw      t6, 0x0000(v1)             # 801E5E78
    sb      a0, 0x0005(t6)             # 00000005
    lw      t7, 0x0000(v1)             # 801E5E78
    beq     $zero, $zero, lbl_801CC934
    lbu     v0, 0x0005(t7)             # 00000005
lbl_801CC898:
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0500             # a1 = 05000500
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    jal     func_80005800
    lw      a2, 0x001C($sp)
    jal     func_801CCA5C
    or      a0, $zero, $zero           # a0 = 00000000
    beq     v0, $zero, lbl_801CC8DC
    lui     v1, 0x801E                 # v1 = 801E0000
    addiu   v1, v1, 0x5E78             # v1 = 801E5E78
    lw      t9, 0x0000(v1)             # 801E5E78
    addiu   t8, $zero, 0x0025          # t8 = 00000025
    sb      t8, 0x0005(t9)             # 00000005
    lw      t0, 0x0000(v1)             # 801E5E78
    beq     $zero, $zero, lbl_801CC934
    lbu     v0, 0x0005(t0)             # 00000005
lbl_801CC8DC:
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0508             # a1 = 05000508
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    jal     func_80005800
    lw      a2, 0x0018($sp)
    jal     func_801CCA5C
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    beq     v0, $zero, lbl_801CC90C
    nop
    beq     $zero, $zero, lbl_801CC934
    addiu   v0, $zero, 0x0025          # v0 = 00000025
lbl_801CC90C:
    jal     func_801CC574
    lw      a0, 0x0018($sp)
    addiu   $at, $zero, 0x002F         # $at = 0000002F
    beql    v0, $at, lbl_801CC934
    or      v0, $zero, $zero           # v0 = 00000000
    beql    v0, $zero, lbl_801CC934
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_801CC934
    andi    v0, v0, 0x00FF             # v0 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CC934:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CC944:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x000E                 # a0 = 000E0000
    ori     a0, a0, 0x0001             # a0 = 000E0001
    jal     func_801CC820
    or      a1, $zero, $zero           # a1 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CC96C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x0003                 # a0 = 00030000
    ori     a0, a0, 0x0001             # a0 = 00030001
    jal     func_801CC728
    or      a1, $zero, $zero           # a1 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CC994:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x0003                 # a0 = 00030000
    ori     a0, a0, 0x0001             # a0 = 00030001
    jal     func_801CC820
    or      a1, $zero, $zero           # a1 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CC9BC:
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x5E90             # v0 = 801E5E90
    lbu     t7, 0x0007(v0)             # 801E5E97
    lhu     t9, 0x0002(v0)             # 801E5E92
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sll     t8, t7, 12
    addu    a1, t8, t9
    andi    t6, a0, 0xFFFF             # t6 = 00000000
    sll     t0, a1, 16
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    bne     t6, $zero, lbl_801CCA04
    or      a1, t0, $zero              # a1 = 00000000
    lui     a0, 0x0001                 # a0 = 00010000
    jal     func_801CC728
    ori     a0, a0, 0x0001             # a0 = 00010001
    beq     $zero, $zero, lbl_801CCA14
    lw      $ra, 0x0014($sp)
lbl_801CCA04:
    lui     a0, 0x0002                 # a0 = 00020000
    jal     func_801CC728
    ori     a0, a0, 0x0001             # a0 = 00020001
    lw      $ra, 0x0014($sp)
lbl_801CCA14:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CCA20:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_801CC9BC
    or      a0, $zero, $zero           # a0 = 00000000
    beq     v0, $zero, lbl_801CCA40
    andi    v1, v0, 0x00FF             # v1 = 00000000
    beq     $zero, $zero, lbl_801CCA4C
    or      v0, v1, $zero              # v0 = 00000000
lbl_801CCA40:
    lui     a0, 0x0001                 # a0 = 00010000
    jal     func_801CC7D0
    ori     a0, a0, 0x0001             # a0 = 00010001
lbl_801CCA4C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CCA5C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    or      a2, a0, $zero              # a2 = 00000000
    sw      $ra, 0x0014($sp)
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x5E00             # a0 = 801E5E00
    jal     func_80002030              # osRecvMesg
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFFC
    bne     v0, $zero, lbl_801CCA9C
    lw      t6, 0x001C($sp)
    lui     $at, 0x000A                # $at = 000A0000
    bnel    t6, $at, lbl_801CCAA0
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_801CCC00
    nop
    beq     $zero, $zero, lbl_801CCAA0
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_801CCA9C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CCAA0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_801CCAB0:
    lui     v0, 0x801E                 # v0 = 801E0000
    lw      v0, 0x5EE0(v0)             # 801E5EE0
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beq     v0, $at, lbl_801CCAC8
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     v0, $at, lbl_801CCB34
lbl_801CCAC8:
    sltiu   $at, a0, 0x0004
    bne     $at, $zero, lbl_801CCAF4
    addiu   t6, a0, 0xFFDB             # t6 = FFFFFFDB
    sltiu   $at, t6, 0x000D
    beq     $at, $zero, lbl_801CCBB4
    sll     t6, t6,  2
    lui     $at, 0x801E                # $at = 801E0000
    addu    $at, $at, t6
    lw      t6, -0x6B80($at)           # 801D9480
    jr      t6
    nop
lbl_801CCAF4:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     a0, $at, lbl_801CCB24
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     a0, $at, lbl_801CCB24
    nop
    beq     $zero, $zero, lbl_801CCBB8
    or      v0, $zero, $zero           # v0 = 00000000
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x5F74             # v0 = 801E5F74
    lw      t7, 0x0000(v0)             # 801E5F74
    ori     t8, t7, 0x0002             # t8 = 00000002
    sw      t8, 0x0000(v0)             # 801E5F74
lbl_801CCB24:
    lui     $at, 0x801E                # $at = 801E0000
    sb      $zero, 0x5E84($at)         # 801E5E84
    jr      $ra
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_801CCB34:
    sltiu   $at, a0, 0x0004
    bne     $at, $zero, lbl_801CCB60
    addiu   t9, a0, 0xFFDB             # t9 = FFFFFFDB
    sltiu   $at, t9, 0x000D
    beq     $at, $zero, lbl_801CCBB4
    sll     t9, t9,  2
    lui     $at, 0x801E                # $at = 801E0000
    addu    $at, $at, t9
    lw      t9, -0x6B4C($at)           # 801D94B4
    jr      t9
    nop
lbl_801CCB60:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     a0, $at, lbl_801CCBA4
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     a0, $at, lbl_801CCBA4
    nop
    beq     $zero, $zero, lbl_801CCBB8
    or      v0, $zero, $zero           # v0 = 00000000
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x5F74             # v0 = 801E5F74
    lw      t0, 0x0000(v0)             # 801E5F74
    ori     t1, t0, 0x0002             # t1 = 00000002
    sw      t1, 0x0000(v0)             # 801E5F74
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x5F74             # v0 = 801E5F74
    lw      t2, 0x0000(v0)             # 801E5F74
    ori     t3, t2, 0x0001             # t3 = 00000001
    sw      t3, 0x0000(v0)             # 801E5F74
lbl_801CCBA4:
    lui     $at, 0x801E                # $at = 801E0000
    sb      $zero, 0x5E84($at)         # 801E5E84
    jr      $ra
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_801CCBB4:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CCBB8:
    jr      $ra
    nop


func_801CCBC0:
    lui     v0, 0x801E                 # v0 = 801E0000
    lw      v0, 0x5F70(v0)             # 801E5F70
    or      v1, $zero, $zero           # v1 = 00000000
    sll     t6, v0,  7
    bltz    t6, lbl_801CCBDC
    sll     t7, v0, 12
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_801CCBDC:
    bgez    t7, lbl_801CCBEC
    sll     t0, v0, 11
    ori     t8, v1, 0x0002             # t8 = 00000003
    andi    v1, t8, 0x00FF             # v1 = 00000003
lbl_801CCBEC:
    bgez    t0, lbl_801CCBF8
    ori     t1, v1, 0x0004             # t1 = 00000007
    andi    v1, t1, 0x00FF             # v1 = 00000007
lbl_801CCBF8:
    jr      $ra
    or      v0, v1, $zero              # v0 = 00000007


func_801CCC00:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0520             # a1 = 05000520
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    jal     func_80005800
    lui     a2, 0xAAAA                 # a2 = AAAA0000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CCC30:
    lui     v0, 0x801E                 # v0 = 801E0000
    jr      $ra
    lw      v0, 0x5F74(v0)             # 801E5F74


func_801CCC3C:
    lui     v0, 0x801E                 # v0 = 801E0000
    lw      v0, 0x5F74(v0)             # 801E5F74
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_801CCC58
    andi    t7, v0, 0x0001             # t7 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x002B          # v0 = 0000002B
lbl_801CCC58:
    beq     t7, $zero, lbl_801CCC68
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x002F          # v0 = 0000002F
lbl_801CCC68:
    jr      $ra
    nop


func_801CCC70:
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x5F74             # v0 = 801E5F74
    lw      t6, 0x0000(v0)             # 801E5F74
    addiu   $at, $zero, 0xFFFD         # $at = FFFFFFFD
    and     t7, t6, $at
    jr      $ra
    sw      t7, 0x0000(v0)             # 801E5F74


func_801CCC8C:
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x5F74             # v0 = 801E5F74
    lw      t6, 0x0000(v0)             # 801E5F74
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t7, t6, $at
    jr      $ra
    sw      t7, 0x0000(v0)             # 801E5F74


func_801CCCA8:
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x5F74             # v0 = 801E5F74
    lw      t6, 0x0000(v0)             # 801E5F74
    ori     t7, t6, 0x0001             # t7 = 00000001
    jr      $ra
    sw      t7, 0x0000(v0)             # 801E5F74


func_801CCCC0:
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x801E                # $at = 801E0000
    jr      $ra
    sw      t6, 0x5F74($at)            # 801E5F74


func_801CCCD0:
    lui     t7, 0x801E                 # t7 = 801E0000
    lw      t7, -0x7210(t7)            # 801D8DF0
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    andi    t6, a1, 0x00FF             # t6 = 00000000
    or      a1, t6, $zero              # a1 = 00000000
    bne     t7, $zero, lbl_801CCCF8
    sw      $ra, 0x0014($sp)
    beq     $zero, $zero, lbl_801CCD74
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_801CCCF8:
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    sb      t8, 0x0000(a0)             # 00000000
    beq     a1, $zero, lbl_801CCD30
    sb      $zero, 0x0001(a0)          # 00000001
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     a1, $at, lbl_801CCD3C
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     a1, $at, lbl_801CCD44
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     a1, $at, lbl_801CCD4C
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    beq     $zero, $zero, lbl_801CCD50
    nop
lbl_801CCD30:
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    beq     $zero, $zero, lbl_801CCD50
    sb      t9, 0x0002(a0)             # 00000002
lbl_801CCD3C:
    beq     $zero, $zero, lbl_801CCD50
    sb      t0, 0x0002(a0)             # 00000002
lbl_801CCD44:
    beq     $zero, $zero, lbl_801CCD50
    sb      $zero, 0x0002(a0)          # 00000002
lbl_801CCD4C:
    sb      t1, 0x0002(a0)             # 00000002
lbl_801CCD50:
    beq     a2, $zero, lbl_801CCD68
    sb      $zero, 0x0003(a0)          # 00000003
    lbu     t2, 0x0002(a0)             # 00000002
    sw      a2, 0x0008(a0)             # 00000008
    ori     t3, t2, 0x0080             # t3 = 00000080
    sb      t3, 0x0002(a0)             # 00000002
lbl_801CCD68:
    jal     func_801CA9A4
    nop
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CCD74:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
    nop


func_801CCD90:
    lui     t6, 0x801E                 # t6 = 801E0000
    lbu     t6, 0x67BC(t6)             # 801E67BC
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sltiu   $at, t6, 0x0005
    beq     $at, $zero, lbl_801CCE00
    sll     t6, t6,  2
    lui     $at, 0x801E                # $at = 801E0000
    addu    $at, $at, t6
    lw      t6, -0x6530($at)           # 801D9AD0
    jr      t6
    nop
    jal     func_801CCE1C
    nop
    beq     $zero, $zero, lbl_801CCE0C
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_801CCEF0
    nop
    beq     $zero, $zero, lbl_801CCE0C
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_801CD170
    nop
    beq     $zero, $zero, lbl_801CCE0C
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_801CD558
    nop
    beq     $zero, $zero, lbl_801CCE0C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CCE00:
    beq     $zero, $zero, lbl_801CCE0C
    ori     v0, $zero, 0xFFFF          # v0 = 0000FFFF
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CCE0C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801CCE1C:
    lui     a2, 0x801E                 # a2 = 801E0000
    addiu   a2, a2, 0x67B0             # a2 = 801E67B0
    lbu     v0, 0x0008(a2)             # 801E67B8
    slti    $at, v0, 0x0055
    beq     $at, $zero, lbl_801CCEE8
    nop
    lbu     v1, 0x000D(a2)             # 801E67BD
    addiu   t6, v0, 0x0001             # t6 = 00000001
    lw      t8, 0x0000(a2)             # 801E67B0
    multu   t6, v1
    andi    v0, v1, 0x0003             # v0 = 00000000
    subu    v0, $zero, v0
    lw      a1, 0x0004(a2)             # 801E67B4
    addu    t1, v0, v1
    mflo    t7
    addu    a0, t7, t8
    beq     v0, $zero, lbl_801CCE90
lbl_801CCE60:
    addiu   a2, a1, 0xFFFC             # a2 = FFFFFFFC
    addiu   t0, a0, 0xFFFF             # t0 = FFFFFFFF
    lbu     t9, 0x0000(t0)             # FFFFFFFF
    lbu     t2, 0x0000(a2)             # FFFFFFFC
    addiu   v1, v1, 0xFFFF             # v1 = FFFFFFFF
    or      a0, t0, $zero              # a0 = FFFFFFFF
    xor     t3, t9, t2
    sb      t3, 0x0000(t0)             # FFFFFFFF
    bne     t1, v1, lbl_801CCE60
    or      a1, a2, $zero              # a1 = FFFFFFFC
    beq     v1, $zero, lbl_801CCEE8
    nop
lbl_801CCE90:
    lbu     t4, -0x0001(a0)            # FFFFFFFE
    lbu     t5, -0x0004(a1)            # FFFFFFF8
    or      a2, a1, $zero              # a2 = FFFFFFFC
    or      t0, a0, $zero              # t0 = FFFFFFFF
    xor     t6, t4, t5
    sb      t6, -0x0001(a0)            # FFFFFFFE
    lbu     t7, -0x0002(t0)            # FFFFFFFD
    lbu     t8, -0x0008(a2)            # FFFFFFF4
    lbu     t2, -0x0003(t0)            # FFFFFFFC
    addiu   a0, t0, 0xFFFC             # a0 = FFFFFFFB
    xor     t9, t7, t8
    sb      t9, -0x0002(t0)            # FFFFFFFD
    lbu     t3, -0x000C(a2)            # FFFFFFF0
    addiu   a1, a2, 0xFFF0             # a1 = FFFFFFEC
    addiu   v1, v1, 0xFFFC             # v1 = FFFFFFFB
    xor     t4, t2, t3
    sb      t4, -0x0003(t0)            # FFFFFFFC
    lbu     t5, 0x0000(a0)             # FFFFFFFB
    lbu     t6, 0x0000(a1)             # FFFFFFEC
    xor     t7, t5, t6
    bne     v1, $zero, lbl_801CCE90
    sb      t7, 0x0000(a0)             # FFFFFFFB
lbl_801CCEE8:
    jr      $ra
    nop


func_801CCEF0:
    lui     a2, 0x801E                 # a2 = 801E0000
    addiu   a2, a2, 0x67B0             # a2 = 801E67B0
    lbu     t6, 0x0008(a2)             # 801E67B8
    lbu     t7, 0x0009(a2)             # 801E67B9
    addiu   a3, $zero, 0x0058          # a3 = 00000058
    lui     t3, 0x801E                 # t3 = 801E0000
    addiu   t3, t3, 0x96D0             # t3 = 801D96D0
    subu    v0, a3, t6
    subu    v1, a3, t7
    addu    t2, t3, v1
    addu    t9, t3, v0
    lbu     t4, 0x0000(t9)             # 00000000
    lbu     t8, 0x0000(t2)             # 00000000
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      t2, 0x0024($sp)
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_801CDE38
    xor     a1, t8, t4
    lui     a2, 0x801E                 # a2 = 801E0000
    addiu   a2, a2, 0x67B0             # a2 = 801E67B0
    lbu     a1, 0x0009(a2)             # 801E67B9
    lui     t0, 0x801E                 # t0 = 801E0000
    addiu   t0, t0, 0x98D0             # t0 = 801D98D0
    addu    t5, t0, v0
    lui     t3, 0x801E                 # t3 = 801E0000
    slti    $at, a1, 0x0055
    addiu   t3, t3, 0x96D0             # t3 = 801D96D0
    lbu     s0, 0x0000(t5)             # 00000000
    lw      t2, 0x0024($sp)
    bne     $at, $zero, lbl_801CCF94
    lbu     t1, 0x000D(a2)             # 801E67BD
    lbu     v0, 0x0008(a2)             # 801E67B8
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x6068             # a0 = 801E6068
    slti    $at, v0, 0x0055
    beql    $at, $zero, lbl_801CD160
    lw      $ra, 0x001C($sp)
    beq     $zero, $zero, lbl_801CCFB0
    lw      v1, 0x0000(a2)             # 801E67B0
lbl_801CCF94:
    addiu   t6, a1, 0x0001             # t6 = 00000001
    multu   t6, t1
    lw      v1, 0x0000(a2)             # 801E67B0
    lbu     v0, 0x0008(a2)             # 801E67B8
    mflo    t7
    addu    a0, t7, v1
    nop
lbl_801CCFB0:
    addiu   t9, v0, 0x0001             # t9 = 00000001
    multu   t9, t1
    andi    v0, t1, 0x0001             # v0 = 00000000
    lw      a1, 0x0004(a2)             # 801E67B4
    mflo    t8
    addu    a3, t8, v1
    beql    $zero, v0, lbl_801CD05C
    lbu     v0, -0x0004(a1)            # FFFFFFFC
    lbu     v0, -0x0004(a1)            # FFFFFFFC
    addiu   a1, a1, 0xFFFC             # a1 = FFFFFFFC
    addiu   a3, a3, 0xFFFF             # a3 = FFFFFFFF
    beq     v0, $zero, lbl_801CD000
    or      a2, v0, $zero              # a2 = 00000000
    addu    t5, t0, v0
    lbu     t6, 0x0000(t5)             # 00000000
    lbu     t4, 0x0001(a1)             # FFFFFFFD
    addu    t7, t2, t6
    lbu     t9, 0x0000(t7)             # 00000000
    beq     $zero, $zero, lbl_801CD004
    xor     v1, t4, t9
lbl_801CD000:
    lbu     v1, 0x0001(a1)             # FFFFFFFD
lbl_801CD004:
    beq     v1, $zero, lbl_801CD040
    addiu   a0, a0, 0xFFFF             # a0 = 801E6067
    addu    t8, t0, v1
    lbu     t5, 0x0000(t8)             # 00000000
    lbu     t4, 0x0000(a3)             # FFFFFFFF
    addu    t6, t3, t5
    addu    t7, t6, s0
    lbu     v0, 0x0000(t7)             # 00000000
    xor     t9, t4, v0
    sb      t9, 0x0000(a3)             # FFFFFFFF
    lbu     t8, 0x0000(a0)             # 801E6067
    xor     t5, v0, a2
    xor     t6, t8, t5
    beq     $zero, $zero, lbl_801CD04C
    sb      t6, 0x0000(a0)             # 801E6067
lbl_801CD040:
    lbu     t7, 0x0000(a0)             # 801E6067
    xor     t4, t7, a2
    sb      t4, 0x0000(a0)             # 801E6067
lbl_801CD04C:
    addiu   t1, t1, 0xFFFF             # t1 = FFFFFFFF
    beql    t1, $zero, lbl_801CD160
    lw      $ra, 0x001C($sp)
    lbu     v0, -0x0004(a1)            # FFFFFFF8
lbl_801CD05C:
    addiu   a1, a1, 0xFFFC             # a1 = FFFFFFF8
    addiu   a3, a3, 0xFFFF             # a3 = FFFFFFFE
    beq     v0, $zero, lbl_801CD088
    or      a2, v0, $zero              # a2 = 00000000
    addu    t8, t0, v0
    lbu     t5, 0x0000(t8)             # 00000000
    lbu     t9, 0x0001(a1)             # FFFFFFF9
    addu    t6, t2, t5
    lbu     t7, 0x0000(t6)             # 00000001
    beq     $zero, $zero, lbl_801CD08C
    xor     v1, t9, t7
lbl_801CD088:
    lbu     v1, 0x0001(a1)             # FFFFFFF9
lbl_801CD08C:
    beq     v1, $zero, lbl_801CD0C8
    addiu   a0, a0, 0xFFFF             # a0 = 801E6066
    addu    t4, t0, v1
    lbu     t8, 0x0000(t4)             # 00000000
    lbu     t9, 0x0000(a3)             # FFFFFFFE
    addu    t5, t3, t8
    addu    t6, t5, s0
    lbu     v0, 0x0000(t6)             # 00000001
    xor     t7, t9, v0
    sb      t7, 0x0000(a3)             # FFFFFFFE
    lbu     t4, 0x0000(a0)             # 801E6066
    xor     t8, v0, a2
    xor     t5, t4, t8
    beq     $zero, $zero, lbl_801CD0D4
    sb      t5, 0x0000(a0)             # 801E6066
lbl_801CD0C8:
    lbu     t6, 0x0000(a0)             # 801E6066
    xor     t9, t6, a2
    sb      t9, 0x0000(a0)             # 801E6066
lbl_801CD0D4:
    lbu     v0, -0x0004(a1)            # FFFFFFF4
    addiu   a1, a1, 0xFFFC             # a1 = FFFFFFF4
    addiu   a3, a3, 0xFFFF             # a3 = FFFFFFFD
    beq     v0, $zero, lbl_801CD104
    or      a2, v0, $zero              # a2 = 00000000
    addu    t4, t0, v0
    lbu     t8, 0x0000(t4)             # 00000000
    lbu     t7, 0x0001(a1)             # FFFFFFF5
    addu    t5, t2, t8
    lbu     t6, 0x0000(t5)             # 00000000
    beq     $zero, $zero, lbl_801CD108
    xor     v1, t7, t6
lbl_801CD104:
    lbu     v1, 0x0001(a1)             # FFFFFFF5
lbl_801CD108:
    beq     v1, $zero, lbl_801CD144
    addiu   a0, a0, 0xFFFF             # a0 = 801E6065
    addu    t9, t0, v1
    lbu     t4, 0x0000(t9)             # 00000001
    lbu     t7, 0x0000(a3)             # FFFFFFFD
    addu    t8, t3, t4
    addu    t5, t8, s0
    lbu     v0, 0x0000(t5)             # 00000000
    xor     t6, t7, v0
    sb      t6, 0x0000(a3)             # FFFFFFFD
    lbu     t9, 0x0000(a0)             # 801E6065
    xor     t4, v0, a2
    xor     t8, t9, t4
    beq     $zero, $zero, lbl_801CD150
    sb      t8, 0x0000(a0)             # 801E6065
lbl_801CD144:
    lbu     t5, 0x0000(a0)             # 801E6065
    xor     t7, t5, a2
    sb      t7, 0x0000(a0)             # 801E6065
lbl_801CD150:
    addiu   t1, t1, 0xFFFE             # t1 = FFFFFFFD
    bnel    t1, $zero, lbl_801CD05C
    lbu     v0, -0x0004(a1)            # FFFFFFF0
    lw      $ra, 0x001C($sp)
lbl_801CD160:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_801CD170:
    lui     a3, 0x801E                 # a3 = 801E0000
    addiu   a3, a3, 0x67B0             # a3 = 801E67B0
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    lbu     t6, 0x0008(a3)             # 801E67B8
    lbu     t7, 0x0009(a3)             # 801E67B9
    lbu     t8, 0x000A(a3)             # 801E67BA
    sw      s0, 0x0014($sp)
    addiu   a2, $zero, 0x0058          # a2 = 00000058
    lui     s0, 0x801E                 # s0 = 801E0000
    addiu   s0, s0, 0x96D0             # s0 = 801D96D0
    subu    v0, a2, t6
    subu    v1, a2, t7
    subu    a0, a2, t8
    addu    t7, s0, a0
    lbu     a0, 0x0000(t7)             # 00000000
    addu    t9, s0, v0
    addu    t6, s0, v1
    lbu     v0, 0x0000(t9)             # 00000000
    lbu     v1, 0x0000(t6)             # 00000000
    sw      $ra, 0x0034($sp)
    sw      s7, 0x0030($sp)
    sw      s6, 0x002C($sp)
    sw      s5, 0x0028($sp)
    sw      s4, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      a0, 0x006C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      v0, 0x0074($sp)
    jal     func_801CDDF4
    sw      v1, 0x0070($sp)
    lw      a0, 0x0070($sp)
    or      s1, v0, $zero              # s1 = 00000000
    jal     func_801CDDF4
    or      a1, a0, $zero              # a1 = 00000000
    lw      a0, 0x0074($sp)
    or      s2, v0, $zero              # s2 = 00000000
    jal     func_801CDDF4
    or      a1, a0, $zero              # a1 = 00000000
    or      s3, v0, $zero              # s3 = 00000000
    xor     s5, s1, s2
    xor     s6, s1, v0
    xor     s7, s2, v0
    lw      a0, 0x0070($sp)
    jal     func_801CDDF4
    or      a1, s1, $zero              # a1 = 00000000
    sw      v0, 0x003C($sp)
    lw      a0, 0x006C($sp)
    jal     func_801CDDF4
    or      a1, s2, $zero              # a1 = 00000000
    lw      t8, 0x003C($sp)
    lw      a0, 0x006C($sp)
    or      a1, s3, $zero              # a1 = 00000000
    xor     $ra, v0, t8
    sw      $ra, 0x0050($sp)
    jal     func_801CDDF4
    nop
    sw      v0, 0x003C($sp)
    lw      a0, 0x0074($sp)
    jal     func_801CDDF4
    or      a1, s1, $zero              # a1 = 00000000
    lw      t9, 0x003C($sp)
    lw      a0, 0x0070($sp)
    or      a1, s3, $zero              # a1 = 00000000
    jal     func_801CDDF4
    xor     s4, v0, t9
    sw      v0, 0x003C($sp)
    lw      a0, 0x0074($sp)
    jal     func_801CDDF4
    or      a1, s2, $zero              # a1 = 00000000
    lw      $ra, 0x0050($sp)
    lw      t6, 0x003C($sp)
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    xor     t7, $ra, s4
    xor     v1, v0, t6
    xor     a1, t7, v1
    jal     func_801CDE38
    sw      v1, 0x0048($sp)
    lw      $ra, 0x0050($sp)
    lui     a3, 0x801E                 # a3 = 801E0000
    lw      t6, 0x0070($sp)
    lw      t7, 0x006C($sp)
    addiu   a3, a3, 0x98D0             # a3 = 801D98D0
    addu    t8, a3, $ra
    lbu     $ra, 0x0000(t8)            # 00000000
    addu    t9, a3, s5
    lbu     s5, 0x0000(t9)             # 00000000
    xor     t8, t6, t7
    addu    t9, a3, t8
    addu    t8, a3, s6
    lbu     s6, 0x0000(t8)             # 00000000
    lw      t8, 0x0074($sp)
    lbu     s1, 0x0000(t9)             # 00000000
    addu    t9, a3, s4
    lw      t5, 0x0048($sp)
    lbu     s4, 0x0000(t9)             # 00000000
    xor     t9, t7, t8
    lui     a0, 0x801E                 # a0 = 801E0000
    addu    t7, a3, t9
    addiu   a0, a0, 0x67B0             # a0 = 801E67B0
    addu    t9, a3, t5
    lbu     v1, 0x000A(a0)             # 801E67BA
    lbu     s2, 0x0000(t7)             # 00000000
    lbu     t5, 0x0000(t9)             # 00000000
    addu    t7, a3, s7
    xor     t9, t8, t6
    lbu     s7, 0x0000(t7)             # 00000000
    addu    t7, a3, t9
    addu    t8, a3, v0
    slti    $at, v1, 0x0055
    lbu     s3, 0x0000(t7)             # 00000000
    lbu     t4, 0x0000(t8)             # 00000000
    bne     $at, $zero, lbl_801CD388
    lbu     t3, 0x000D(a0)             # 801E67BD
    lui     a0, 0x801E                 # a0 = 801E0000
    lbu     a0, 0x67B9(a0)             # 801E67B9
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x6068             # v0 = 801E6068
    slti    $at, a0, 0x0055
    beq     $at, $zero, lbl_801CD364
    or      t1, v0, $zero              # t1 = 801E6068
    lui     v0, 0x801E                 # v0 = 801E0000
    beq     $zero, $zero, lbl_801CD3AC
    lw      v0, 0x67B0(v0)             # 801E67B0
lbl_801CD364:
    lui     v1, 0x801E                 # v1 = 801E0000
    lbu     v1, 0x67B8(v1)             # 801E67B8
    or      t2, v0, $zero              # t2 = 801E0000
    lui     v0, 0x801E                 # v0 = 801E0000
    slti    $at, v1, 0x0055
    beql    $at, $zero, lbl_801CD530
    lw      $ra, 0x0034($sp)
    beq     $zero, $zero, lbl_801CD3C8
    lw      v0, 0x67B0(v0)             # 801E67B0
lbl_801CD388:
    addiu   t6, v1, 0x0001             # t6 = 801E0001
    multu   t6, t3
    lui     v0, 0x801E                 # v0 = 801E0000
    lw      v0, 0x67B0(v0)             # 801E67B0
    lui     a0, 0x801E                 # a0 = 801E0000
    lbu     a0, 0x67B9(a0)             # 801E67B9
    mflo    t9
    addu    t1, t9, v0
    nop
lbl_801CD3AC:
    addiu   t7, a0, 0x0001             # t7 = 801E0001
    multu   t7, t3
    lui     v1, 0x801E                 # v1 = 801E0000
    lbu     v1, 0x67B8(v1)             # 801E67B8
    mflo    t8
    addu    t2, t8, v0
    nop
lbl_801CD3C8:
    addiu   t6, v1, 0x0001             # t6 = 801E0001
    multu   t6, t3
    lui     a2, 0x801E                 # a2 = 801E0000
    lw      a2, 0x67B4(a2)             # 801E67B4
    mflo    t9
    addu    t0, t9, v0
    nop
    lbu     v0, -0x0004(a2)            # 801DFFFC
lbl_801CD3E8:
    addiu   a2, a2, 0xFFFC             # a2 = 801DFFFC
    addiu   t0, t0, 0xFFFF             # t0 = FFFFFFFF
    beq     v0, $zero, lbl_801CD424
    addiu   t2, t2, 0xFFFF             # t2 = 801DFFFF
    addu    t7, a3, v0
    lbu     v0, 0x0000(t7)             # 801E0001
    addu    t8, s0, v0
    addu    t6, t8, $ra
    lbu     v1, 0x0000(t6)             # 801E0001
    addu    t9, s0, v0
    addu    t7, t9, s4
    addu    t6, t8, t5
    lbu     a0, 0x0000(t7)             # 801E0001
    beq     $zero, $zero, lbl_801CD430
    lbu     a1, 0x0000(t6)             # 801E0001
lbl_801CD424:
    or      a1, $zero, $zero           # a1 = 00000000
    or      a0, $zero, $zero           # a0 = 00000000
    or      v1, $zero, $zero           # v1 = 00000000
lbl_801CD430:
    lbu     v0, 0x0001(a2)             # 801DFFFD
    addiu   t3, t3, 0xFFFF             # t3 = FFFFFFFF
    beq     v0, $zero, lbl_801CD474
    addu    t9, a3, v0
    lbu     v0, 0x0000(t9)             # 00000000
    addu    t7, s0, v0
    addu    t8, t7, s5
    lbu     t6, 0x0000(t8)             # 00000000
    addu    t9, s0, v0
    addu    t7, t9, s6
    xor     v1, v1, t6
    addu    t6, s0, v0
    lbu     t8, 0x0000(t7)             # 801E0001
    addu    t9, t6, s7
    lbu     t7, 0x0000(t9)             # 00000000
    xor     a0, a0, t8
    xor     a1, a1, t7
lbl_801CD474:
    lbu     v0, 0x0002(a2)             # 801DFFFE
    beq     v0, $zero, lbl_801CD4B4
    addu    t8, a3, v0
    lbu     v0, 0x0000(t8)             # 00000000
    addu    t6, s0, v0
    addu    t9, t6, s1
    lbu     t7, 0x0000(t9)             # 00000000
    addu    t8, s0, v0
    addu    t6, t8, s2
    xor     v1, v1, t7
    addu    t7, s0, v0
    lbu     t9, 0x0000(t6)             # 801E0001
    addu    t8, t7, s3
    lbu     t6, 0x0000(t8)             # 00000000
    xor     a0, a0, t9
    xor     a1, a1, t6
lbl_801CD4B4:
    beq     v1, $zero, lbl_801CD4DC
    addiu   t1, t1, 0xFFFF             # t1 = 801E6067
    addu    t7, a3, v1
    lbu     t8, 0x0000(t7)             # 801E0001
    lbu     t9, 0x0000(t0)             # FFFFFFFF
    addu    t6, s0, t8
    addu    t7, t6, t4
    lbu     t8, 0x0000(t7)             # 801E0001
    xor     t6, t9, t8
    sb      t6, 0x0000(t0)             # FFFFFFFF
lbl_801CD4DC:
    beq     a0, $zero, lbl_801CD500
    addu    t9, a3, a0
    lbu     t8, 0x0000(t9)             # 00000000
    lbu     t7, 0x0000(t2)             # 801DFFFF
    addu    t6, s0, t8
    addu    t9, t6, t4
    lbu     t8, 0x0000(t9)             # 00000000
    xor     t6, t7, t8
    sb      t6, 0x0000(t2)             # 801DFFFF
lbl_801CD500:
    beq     a1, $zero, lbl_801CD524
    addu    t7, a3, a1
    lbu     t8, 0x0000(t7)             # 801E0001
    lbu     t9, 0x0000(t1)             # 801E6067
    addu    t6, s0, t8
    addu    t7, t6, t4
    lbu     t8, 0x0000(t7)             # 801E0001
    xor     t6, t9, t8
    sb      t6, 0x0000(t1)             # 801E6067
lbl_801CD524:
    bnel    t3, $zero, lbl_801CD3E8
    lbu     v0, -0x0004(a2)            # 801DFFF8
    lw      $ra, 0x0034($sp)
lbl_801CD530:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    lw      s6, 0x002C($sp)
    lw      s7, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp += 0x98


func_801CD558:
    lui     t0, 0x801E                 # t0 = 801E0000
    addiu   t0, t0, 0x67B0             # t0 = 801E67B0
    addiu   $sp, $sp, 0xFF30           # $sp -= 0xD0
    sw      s0, 0x0018($sp)
    lui     s0, 0x801E                 # s0 = 801E0000
    addiu   v0, $zero, 0x0058          # v0 = 00000058
    lbu     t6, 0x0008(t0)             # 801E67B8
    lbu     t7, 0x0009(t0)             # 801E67B9
    lbu     t8, 0x000A(t0)             # 801E67BA
    lbu     t9, 0x000B(t0)             # 801E67BB
    addiu   s0, s0, 0x96D0             # s0 = 801D96D0
    subu    a1, v0, t6
    subu    v1, v0, t7
    subu    a2, v0, t8
    subu    a3, v0, t9
    addu    t6, s0, a1
    addu    t7, s0, v1
    addu    t8, s0, a2
    addu    t9, s0, a3
    lbu     a1, 0x0000(t6)             # 00000000
    lbu     v1, 0x0000(t7)             # 00000000
    lbu     a2, 0x0000(t8)             # 00000000
    lbu     a3, 0x0000(t9)             # 00000000
    lbu     a0, 0x0000(s0)             # 801D96D0
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0084($sp)
    sw      v1, 0x0080($sp)
    sw      a2, 0x007C($sp)
    sw      a3, 0x0088($sp)
    jal     func_801CDE38
    sw      a0, 0x0074($sp)
    sw      v0, 0x00A8($sp)
    lw      a0, 0x0074($sp)
    jal     func_801CDE38
    lw      a1, 0x0080($sp)
    sw      v0, 0x00A4($sp)
    lw      a0, 0x0074($sp)
    jal     func_801CDE38
    lw      a1, 0x007C($sp)
    sw      v0, 0x009C($sp)
    lw      a0, 0x0074($sp)
    jal     func_801CDE38
    lw      a1, 0x0088($sp)
    sw      v0, 0x00A0($sp)
    lw      a0, 0x00A4($sp)
    jal     func_801CDDF4
    lw      a1, 0x009C($sp)
    sw      v0, 0x0070($sp)
    lw      a0, 0x009C($sp)
    jal     func_801CDDF4
    lw      a1, 0x00A0($sp)
    sw      v0, 0x006C($sp)
    lw      a0, 0x00A0($sp)
    jal     func_801CDDF4
    lw      a1, 0x00A4($sp)
    sw      v0, 0x0068($sp)
    lw      a0, 0x00A0($sp)
    jal     func_801CDDF4
    lw      a1, 0x00A8($sp)
    sw      v0, 0x0064($sp)
    lw      a0, 0x00A8($sp)
    jal     func_801CDDF4
    lw      a1, 0x009C($sp)
    sw      v0, 0x0060($sp)
    lw      a0, 0x00A8($sp)
    jal     func_801CDDF4
    lw      a1, 0x00A4($sp)
    lw      t0, 0x006C($sp)
    lw      t2, 0x0070($sp)
    lw      t3, 0x0064($sp)
    lw      a3, 0x0068($sp)
    lw      t1, 0x0060($sp)
    xor     t6, t2, t0
    xor     t8, t0, t3
    xor     t7, t6, a3
    xor     t9, t8, t1
    lw      v1, 0x00A0($sp)
    lw      a0, 0x00A4($sp)
    lw      a1, 0x009C($sp)
    lw      a2, 0x00A8($sp)
    sw      t7, 0x0044($sp)
    sw      t9, 0x0040($sp)
    xor     t8, v0, t2
    xor     t6, t3, v0
    xor     t7, t6, a3
    xor     t9, t8, t1
    sw      t7, 0x003C($sp)
    sw      t9, 0x0038($sp)
    xor     t6, a0, a1
    xor     t4, t6, v1
    xor     t7, a1, v1
    xor     t8, v1, a2
    xor     t9, a2, a0
    xor     a3, t8, a0
    xor     t6, t9, a1
    xor     t0, t7, a2
    sw      t6, 0x0064($sp)
    sw      t0, 0x006C($sp)
    sw      a3, 0x0068($sp)
    sw      t4, 0x0070($sp)
    jal     func_801CDDF4
    sw      t4, 0x0020($sp)
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_801CDDF4
    lw      a1, 0x00A0($sp)
    sw      v0, 0x0060($sp)
    lw      a0, 0x009C($sp)
    jal     func_801CDDF4
    lw      a1, 0x00A0($sp)
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_801CDDF4
    lw      a1, 0x00A8($sp)
    sw      v0, 0x005C($sp)
    lw      a0, 0x00A0($sp)
    jal     func_801CDDF4
    lw      a1, 0x00A8($sp)
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_801CDDF4
    lw      a1, 0x00A4($sp)
    sw      v0, 0x0058($sp)
    lw      a0, 0x00A8($sp)
    jal     func_801CDDF4
    lw      a1, 0x00A4($sp)
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_801CDDF4
    lw      a1, 0x009C($sp)
    sw      v0, 0x0054($sp)
    lw      a0, 0x0084($sp)
    jal     func_801CDE38
    lw      a1, 0x0080($sp)
    sw      v0, 0x0024($sp)
    lw      a0, 0x0084($sp)
    jal     func_801CDE38
    lw      a1, 0x007C($sp)
    lw      a0, 0x0024($sp)
    xori    a1, v0, 0x0001             # a1 = 00000001
    xori    t7, a0, 0x0001             # t7 = 00000001
    jal     func_801CDDF4
    or      a0, t7, $zero              # a0 = 00000001
    sw      v0, 0x002C($sp)
    lw      a0, 0x0084($sp)
    jal     func_801CDE38
    lw      a1, 0x0088($sp)
    lw      a0, 0x002C($sp)
    jal     func_801CDDF4
    xori    a1, v0, 0x0001             # a1 = 00000001
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_801CDE38
    or      a1, v0, $zero              # a1 = 00000000
    sw      v0, 0x0074($sp)
    lw      a0, 0x0080($sp)
    jal     func_801CDE38
    lw      a1, 0x0084($sp)
    sw      v0, 0x0024($sp)
    lw      a0, 0x0080($sp)
    jal     func_801CDE38
    lw      a1, 0x007C($sp)
    lw      a0, 0x0024($sp)
    xori    a1, v0, 0x0001             # a1 = 00000001
    xori    t8, a0, 0x0001             # t8 = 00000001
    jal     func_801CDDF4
    or      a0, t8, $zero              # a0 = 00000001
    sw      v0, 0x002C($sp)
    lw      a0, 0x0080($sp)
    jal     func_801CDE38
    lw      a1, 0x0088($sp)
    lw      a0, 0x002C($sp)
    jal     func_801CDDF4
    xori    a1, v0, 0x0001             # a1 = 00000001
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_801CDE38
    or      a1, v0, $zero              # a1 = 00000000
    sw      v0, 0x0050($sp)
    lw      a0, 0x007C($sp)
    jal     func_801CDE38
    lw      a1, 0x0084($sp)
    sw      v0, 0x0024($sp)
    lw      a0, 0x007C($sp)
    jal     func_801CDE38
    lw      a1, 0x0080($sp)
    lw      a0, 0x0024($sp)
    xori    a1, v0, 0x0001             # a1 = 00000001
    xori    t9, a0, 0x0001             # t9 = 00000001
    jal     func_801CDDF4
    or      a0, t9, $zero              # a0 = 00000001
    sw      v0, 0x002C($sp)
    lw      a0, 0x007C($sp)
    jal     func_801CDE38
    lw      a1, 0x0088($sp)
    lw      a0, 0x002C($sp)
    jal     func_801CDDF4
    xori    a1, v0, 0x0001             # a1 = 00000001
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_801CDE38
    or      a1, v0, $zero              # a1 = 00000000
    sw      v0, 0x004C($sp)
    lw      a0, 0x0088($sp)
    jal     func_801CDE38
    lw      a1, 0x0084($sp)
    sw      v0, 0x0024($sp)
    lw      a0, 0x0088($sp)
    jal     func_801CDE38
    lw      a1, 0x0080($sp)
    lw      a0, 0x0024($sp)
    xori    a1, v0, 0x0001             # a1 = 00000001
    xori    t6, a0, 0x0001             # t6 = 00000001
    jal     func_801CDDF4
    or      a0, t6, $zero              # a0 = 00000001
    sw      v0, 0x002C($sp)
    lw      a0, 0x0088($sp)
    jal     func_801CDE38
    lw      a1, 0x007C($sp)
    lw      a0, 0x002C($sp)
    jal     func_801CDDF4
    xori    a1, v0, 0x0001             # a1 = 00000001
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_801CDE38
    or      a1, v0, $zero              # a1 = 00000000
    sw      v0, 0x0048($sp)
    lw      a0, 0x0020($sp)
    jal     func_801CDDF4
    lw      a1, 0x0074($sp)
    lui     t2, 0x801E                 # t2 = 801E0000
    addiu   t2, t2, 0x98D0             # t2 = 801D98D0
    addu    t7, t2, v0
    lbu     t8, 0x0000(t7)             # 00000000
    lw      a0, 0x0044($sp)
    lw      a1, 0x0074($sp)
    jal     func_801CDDF4
    sw      t8, 0x00A8($sp)
    lui     t2, 0x801E                 # t2 = 801E0000
    addiu   t2, t2, 0x98D0             # t2 = 801D98D0
    addu    t9, t2, v0
    lbu     t6, 0x0000(t9)             # 00000000
    lw      a0, 0x0060($sp)
    lw      a1, 0x0074($sp)
    jal     func_801CDDF4
    sw      t6, 0x00A4($sp)
    sw      v0, 0x0060($sp)
    lw      a0, 0x006C($sp)
    jal     func_801CDDF4
    lw      a1, 0x0050($sp)
    lui     t2, 0x801E                 # t2 = 801E0000
    addiu   t2, t2, 0x98D0             # t2 = 801D98D0
    addu    t7, t2, v0
    lbu     t8, 0x0000(t7)             # 00000000
    lw      a0, 0x0040($sp)
    lw      a1, 0x0050($sp)
    jal     func_801CDDF4
    sw      t8, 0x009C($sp)
    lui     t2, 0x801E                 # t2 = 801E0000
    addiu   t2, t2, 0x98D0             # t2 = 801D98D0
    addu    t9, t2, v0
    lbu     t6, 0x0000(t9)             # 00000000
    lw      a0, 0x005C($sp)
    lw      a1, 0x0050($sp)
    jal     func_801CDDF4
    sw      t6, 0x00A0($sp)
    sw      v0, 0x005C($sp)
    lw      a0, 0x0068($sp)
    jal     func_801CDDF4
    lw      a1, 0x004C($sp)
    lui     t2, 0x801E                 # t2 = 801E0000
    addiu   t2, t2, 0x98D0             # t2 = 801D98D0
    addu    t7, t2, v0
    lbu     t8, 0x0000(t7)             # 00000000
    lw      a0, 0x003C($sp)
    lw      a1, 0x004C($sp)
    jal     func_801CDDF4
    sw      t8, 0x0098($sp)
    lui     t2, 0x801E                 # t2 = 801E0000
    addiu   t2, t2, 0x98D0             # t2 = 801D98D0
    addu    t9, t2, v0
    lbu     t6, 0x0000(t9)             # 00000000
    lw      a0, 0x0058($sp)
    lw      a1, 0x004C($sp)
    jal     func_801CDDF4
    sw      t6, 0x0094($sp)
    sw      v0, 0x0058($sp)
    lw      a0, 0x0064($sp)
    jal     func_801CDDF4
    lw      a1, 0x0048($sp)
    lui     t2, 0x801E                 # t2 = 801E0000
    addiu   t2, t2, 0x98D0             # t2 = 801D98D0
    addu    t7, t2, v0
    lbu     t8, 0x0000(t7)             # 00000000
    lw      a0, 0x0038($sp)
    lw      a1, 0x0048($sp)
    jal     func_801CDDF4
    sw      t8, 0x0090($sp)
    lui     t2, 0x801E                 # t2 = 801E0000
    addiu   t2, t2, 0x98D0             # t2 = 801D98D0
    addu    t9, t2, v0
    lbu     t6, 0x0000(t9)             # 00000000
    lw      a0, 0x0054($sp)
    lw      a1, 0x0048($sp)
    jal     func_801CDDF4
    sw      t6, 0x008C($sp)
    lw      t7, 0x0074($sp)
    lui     t2, 0x801E                 # t2 = 801E0000
    addiu   t2, t2, 0x98D0             # t2 = 801D98D0
    addu    t8, t2, t7
    lbu     t9, 0x0000(t8)             # 00000000
    lw      t6, 0x0060($sp)
    lui     a1, 0x801E                 # a1 = 801E0000
    sw      t9, 0x0074($sp)
    addu    t7, t2, t6
    lbu     t8, 0x0000(t7)             # 00000000
    lw      t9, 0x0050($sp)
    addiu   a1, a1, 0x67B0             # a1 = 801E67B0
    sw      t8, 0x0060($sp)
    addu    t6, t2, t9
    lbu     t7, 0x0000(t6)             # 00000000
    lw      t8, 0x005C($sp)
    lbu     a0, 0x000B(a1)             # 801E67BB
    sw      t7, 0x0050($sp)
    addu    t9, t2, t8
    lbu     t6, 0x0000(t9)             # 00000000
    lw      t7, 0x004C($sp)
    slti    $at, a0, 0x0055
    sw      t6, 0x005C($sp)
    addu    t8, t2, t7
    lbu     t9, 0x0000(t8)             # 00000000
    lw      t6, 0x0058($sp)
    lbu     $ra, 0x000D(a1)            # 801E67BD
    sw      t9, 0x004C($sp)
    addu    t7, t2, t6
    lbu     t8, 0x0000(t7)             # 00000000
    lw      t9, 0x0048($sp)
    sw      t8, 0x0058($sp)
    addu    t6, t2, t9
    addu    t8, t2, v0
    lbu     t7, 0x0000(t6)             # 00000000
    lbu     t9, 0x0000(t8)             # 00000000
    sw      t7, 0x0048($sp)
    bne     $at, $zero, lbl_801CDAF8
    sw      t9, 0x0054($sp)
    lbu     v1, 0x000A(a1)             # 801E67BA
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x6068             # v0 = 801E6068
    slti    $at, v1, 0x0055
    beq     $at, $zero, lbl_801CDABC
    or      t5, v0, $zero              # t5 = 801E6068
    beq     $zero, $zero, lbl_801CDB14
    lw      v0, 0x0000(a1)             # 801E67B0
lbl_801CDABC:
    lbu     a0, 0x0009(a1)             # 801E67B9
    or      t3, v0, $zero              # t3 = 801E6068
    slti    $at, a0, 0x0055
    beq     $at, $zero, lbl_801CDAD8
    nop
    beq     $zero, $zero, lbl_801CDB2C
    lw      v0, 0x0000(a1)             # 801E67B0
lbl_801CDAD8:
    lui     v1, 0x801E                 # v1 = 801E0000
    lbu     v1, 0x67B8(v1)             # 801E67B8
    or      t4, v0, $zero              # t4 = 801E6068
    slti    $at, v1, 0x0055
    beq     $at, $zero, lbl_801CDDE0
    lui     v0, 0x801E                 # v0 = 801E0000
    beq     $zero, $zero, lbl_801CDB48
    lw      v0, 0x67B0(v0)             # 801E67B0
lbl_801CDAF8:
    addiu   t6, a0, 0x0001             # t6 = 00000001
    multu   t6, $ra
    lw      v0, 0x0000(a1)             # 801E67B0
    lbu     v1, 0x000A(a1)             # 801E67BA
    mflo    t7
    addu    t5, t7, v0
    nop
lbl_801CDB14:
    addiu   t8, v1, 0x0001             # t8 = 801E0001
    multu   t8, $ra
    lbu     a0, 0x0009(a1)             # 801E67B9
    mflo    t9
    addu    t3, t9, v0
    nop
lbl_801CDB2C:
    addiu   t6, a0, 0x0001             # t6 = 00000001
    multu   t6, $ra
    lui     v1, 0x801E                 # v1 = 801E0000
    lbu     v1, 0x67B8(v1)             # 801E67B8
    mflo    t7
    addu    t4, t7, v0
    nop
lbl_801CDB48:
    addiu   t8, v1, 0x0001             # t8 = 801E0001
    multu   t8, $ra
    lui     t0, 0x801E                 # t0 = 801E0000
    lw      t0, 0x67B4(t0)             # 801E67B4
    mflo    t9
    addu    t1, t9, v0
    nop
    lbu     v0, -0x0004(t0)            # 801DFFFC
lbl_801CDB68:
    addiu   t0, t0, 0xFFFC             # t0 = 801DFFFC
    addiu   t1, t1, 0xFFFF             # t1 = FFFFFFFF
    bne     v0, $zero, lbl_801CDB8C
    addiu   t4, t4, 0xFFFF             # t4 = 801E6067
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    or      a0, $zero, $zero           # a0 = 00000000
    beq     $zero, $zero, lbl_801CDBD4
    or      a1, $zero, $zero           # a1 = 00000000
lbl_801CDB8C:
    addu    t6, t2, v0
    lbu     v0, 0x0000(t6)             # 00000001
    lw      t8, 0x0074($sp)
    addu    t7, s0, v0
    addu    t9, t7, t8
    lw      t7, 0x0050($sp)
    addu    t6, s0, v0
    lbu     a1, 0x0000(t9)             # 00000000
    addu    t8, t6, t7
    lw      t6, 0x004C($sp)
    addu    t9, s0, v0
    lbu     a0, 0x0000(t8)             # 801E0001
    addu    t7, t9, t6
    lw      t9, 0x0048($sp)
    addu    t8, s0, v0
    lbu     a3, 0x0000(t7)             # 00000000
    addu    t6, t8, t9
    lbu     a2, 0x0000(t6)             # 00000001
lbl_801CDBD4:
    lbu     v0, 0x0001(t0)             # 801DFFFD
    lw      t8, 0x0070($sp)
    addiu   t3, t3, 0xFFFF             # t3 = 801E6067
    beq     v0, $zero, lbl_801CDC88
    addiu   $ra, $ra, 0xFFFF           # $ra = FFFFFFFF
    addu    t7, t2, v0
    bne     t8, $zero, lbl_801CDBFC
    lbu     v0, 0x0000(t7)             # 00000000
    beq     $zero, $zero, lbl_801CDC0C
    or      v1, $zero, $zero           # v1 = 00000000
lbl_801CDBFC:
    lw      t6, 0x00A8($sp)
    addu    t9, s0, v0
    addu    t7, t9, t6
    lbu     v1, 0x0000(t7)             # 00000000
lbl_801CDC0C:
    lw      t8, 0x006C($sp)
    xor     a1, a1, v1
    lw      t6, 0x009C($sp)
    bnel    t8, $zero, lbl_801CDC2C
    addu    t9, s0, v0
    beq     $zero, $zero, lbl_801CDC34
    or      v1, $zero, $zero           # v1 = 00000000
    addu    t9, s0, v0
lbl_801CDC2C:
    addu    t7, t9, t6
    lbu     v1, 0x0000(t7)             # 00000000
lbl_801CDC34:
    lw      t8, 0x0068($sp)
    xor     a0, a0, v1
    lw      t6, 0x0098($sp)
    bnel    t8, $zero, lbl_801CDC54
    addu    t9, s0, v0
    beq     $zero, $zero, lbl_801CDC5C
    or      v1, $zero, $zero           # v1 = 00000000
    addu    t9, s0, v0
lbl_801CDC54:
    addu    t7, t9, t6
    lbu     v1, 0x0000(t7)             # 00000000
lbl_801CDC5C:
    lw      t8, 0x0064($sp)
    xor     a3, a3, v1
    lw      t6, 0x0090($sp)
    bnel    t8, $zero, lbl_801CDC7C
    addu    t9, s0, v0
    beq     $zero, $zero, lbl_801CDC84
    or      v1, $zero, $zero           # v1 = 00000000
    addu    t9, s0, v0
lbl_801CDC7C:
    addu    t7, t9, t6
    lbu     v1, 0x0000(t7)             # 00000000
lbl_801CDC84:
    xor     a2, a2, v1
lbl_801CDC88:
    lbu     v0, 0x0002(t0)             # 801DFFFE
    lw      t9, 0x0044($sp)
    beq     v0, $zero, lbl_801CDD34
    addu    t8, t2, v0
    bne     t9, $zero, lbl_801CDCA8
    lbu     v0, 0x0000(t8)             # 801E0001
    beq     $zero, $zero, lbl_801CDCB8
    or      v1, $zero, $zero           # v1 = 00000000
lbl_801CDCA8:
    lw      t7, 0x00A4($sp)
    addu    t6, s0, v0
    addu    t8, t6, t7
    lbu     v1, 0x0000(t8)             # 801E0001
lbl_801CDCB8:
    lw      t9, 0x0040($sp)
    xor     a1, a1, v1
    lw      t7, 0x00A0($sp)
    bnel    t9, $zero, lbl_801CDCD8
    addu    t6, s0, v0
    beq     $zero, $zero, lbl_801CDCE0
    or      v1, $zero, $zero           # v1 = 00000000
    addu    t6, s0, v0
lbl_801CDCD8:
    addu    t8, t6, t7
    lbu     v1, 0x0000(t8)             # 801E0001
lbl_801CDCE0:
    lw      t9, 0x003C($sp)
    xor     a0, a0, v1
    lw      t7, 0x0094($sp)
    bnel    t9, $zero, lbl_801CDD00
    addu    t6, s0, v0
    beq     $zero, $zero, lbl_801CDD08
    or      v1, $zero, $zero           # v1 = 00000000
    addu    t6, s0, v0
lbl_801CDD00:
    addu    t8, t6, t7
    lbu     v1, 0x0000(t8)             # 801E0001
lbl_801CDD08:
    lw      t9, 0x0038($sp)
    xor     a3, a3, v1
    lw      t7, 0x008C($sp)
    bnel    t9, $zero, lbl_801CDD28
    addu    t6, s0, v0
    beq     $zero, $zero, lbl_801CDD30
    or      v1, $zero, $zero           # v1 = 00000000
    addu    t6, s0, v0
lbl_801CDD28:
    addu    t8, t6, t7
    lbu     v1, 0x0000(t8)             # 801E0001
lbl_801CDD30:
    xor     a2, a2, v1
lbl_801CDD34:
    lbu     v0, 0x0003(t0)             # 801DFFFF
    beq     v0, $zero, lbl_801CDD88
    addu    t9, t2, v0
    lbu     v0, 0x0000(t9)             # 00000000
    lw      t7, 0x0060($sp)
    addu    t6, s0, v0
    addu    t8, t6, t7
    lw      t7, 0x005C($sp)
    lbu     t9, 0x0000(t8)             # 801E0001
    addu    t8, t6, t7
    lw      t7, 0x0058($sp)
    xor     a1, a1, t9
    lbu     t9, 0x0000(t8)             # 801E0001
    addu    t8, t6, t7
    lw      t7, 0x0054($sp)
    xor     a0, a0, t9
    lbu     t9, 0x0000(t8)             # 801E0001
    addu    t8, t6, t7
    xor     a3, a3, t9
    lbu     t9, 0x0000(t8)             # 801E0001
    xor     a2, a2, t9
lbl_801CDD88:
    beq     a1, $zero, lbl_801CDD9C
    addiu   t5, t5, 0xFFFF             # t5 = 801E6067
    lbu     t6, 0x0000(t1)             # FFFFFFFF
    xor     t7, t6, a1
    sb      t7, 0x0000(t1)             # FFFFFFFF
lbl_801CDD9C:
    beq     a0, $zero, lbl_801CDDB0
    nop
    lbu     t8, 0x0000(t4)             # 801E6067
    xor     t9, t8, a0
    sb      t9, 0x0000(t4)             # 801E6067
lbl_801CDDB0:
    beq     a3, $zero, lbl_801CDDC4
    nop
    lbu     t6, 0x0000(t3)             # 801E6067
    xor     t7, t6, a3
    sb      t7, 0x0000(t3)             # 801E6067
lbl_801CDDC4:
    beq     a2, $zero, lbl_801CDDD8
    nop
    lbu     t8, 0x0000(t5)             # 801E6067
    xor     t9, t8, a2
    sb      t9, 0x0000(t5)             # 801E6067
lbl_801CDDD8:
    bnel    $ra, $zero, lbl_801CDB68
    lbu     v0, -0x0004(t0)            # 801DFFF8
lbl_801CDDE0:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x00D0           # $sp += 0xD0
    jr      $ra
    nop


func_801CDDF4:
    beq     a0, $zero, lbl_801CDE04
    nop
    bne     a1, $zero, lbl_801CDE0C
    lui     v1, 0x801E                 # v1 = 801E0000
lbl_801CDE04:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CDE0C:
    addiu   v1, v1, 0x98D0             # v1 = 801D98D0
    addu    t6, v1, a1
    addu    t8, v1, a0
    lbu     t9, 0x0000(t8)             # 00000000
    lbu     t7, 0x0000(t6)             # 00000000
    lui     v0, 0x801E                 # v0 = 801E0000
    addu    t0, t7, t9
    addu    v0, v0, t0
    lbu     v0, -0x6930(v0)            # 801D96D0
    jr      $ra
    nop


func_801CDE38:
    beq     a0, $zero, lbl_801CDE48
    nop
    bne     a1, $zero, lbl_801CDE50
    lui     v1, 0x801E                 # v1 = 801E0000
lbl_801CDE48:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CDE50:
    addiu   v1, v1, 0x98D0             # v1 = 801D98D0
    addu    t8, v1, a1
    lbu     t9, 0x0000(t8)             # 00000000
    addu    t6, v1, a0
    lbu     t7, 0x0000(t6)             # 00000000
    subu    t0, $zero, t9
    lui     v0, 0x801E                 # v0 = 801E0000
    addu    t1, t7, t0
    addu    v0, v0, t1
    lbu     v0, -0x6831(v0)            # 801D97CF
    jr      $ra
    nop


func_801CDE80:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x001C($sp)
    lui     s1, 0x801E                 # s1 = 801E0000
    addiu   s1, s1, 0x5E80             # s1 = 801E5E80
    lw      t6, 0x0000(s1)             # 801E5E80
    sw      s2, 0x0020($sp)
    lui     $at, 0xBFFF                # $at = BFFF0000
    lui     s2, 0x801E                 # s2 = 801E0000
    sw      s0, 0x0018($sp)
    ori     $at, $at, 0xFFFF           # $at = BFFFFFFF
    andi    s0, a0, 0xFFFF             # s0 = 00000000
    addiu   s2, s2, 0x5EC0             # s2 = 801E5EC0
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0038($sp)
    lui     a1, 0x0500                 # a1 = 05000000
    and     a2, t6, $at
    sw      a2, 0x0000(s1)             # 801E5E80
    ori     a1, a1, 0x0518             # a1 = 05000518
    jal     func_80005800
    lw      a0, 0x0000(s2)             # 801E5EC0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     s0, $at, lbl_801CDEE8
    or      v0, $zero, $zero           # v0 = 00000000
    lui     v1, 0x801E                 # v1 = 801E0000
    beq     $zero, $zero, lbl_801CDEF0
    addiu   v1, v1, 0x9B30             # v1 = 801D9B30
lbl_801CDEE8:
    lui     v1, 0x801E                 # v1 = 801E0000
    addiu   v1, v1, 0x9AF0             # v1 = 801D9AF0
lbl_801CDEF0:
    lui     a3, 0x801E                 # a3 = 801E0000
    addiu   a3, a3, 0x67C0             # a3 = 801E67C0
lbl_801CDEF8:
    sll     t9, v0,  2
    addiu   v0, v0, 0x0001             # v0 = 00000001
    lw      t8, 0x0000(v1)             # 801D9AF0
    andi    t1, v0, 0x00FF             # t1 = 00000001
    slti    $at, t1, 0x0010
    addu    t0, a3, t9
    or      v0, t1, $zero              # v0 = 00000001
    addiu   v1, v1, 0x0004             # v1 = 801D9AF4
    bne     $at, $zero, lbl_801CDEF8
    sw      t8, 0x0000(t0)             # 00000000
    lui     v0, 0x801E                 # v0 = 801E0000
    lbu     v0, 0x5E96(v0)             # 801E5E96
    lw      t3, 0x0010(a3)             # 801E67D0
    or      a0, a3, $zero              # a0 = 801E67C0
    addiu   s0, v0, 0xFFFF             # s0 = 801DFFFF
    sll     t2, s0,  8
    addiu   v0, s0, 0x0007             # v0 = 801E0006
    or      t4, t3, t2                 # t4 = 00000000
    or      s0, t2, $zero              # s0 = 00000000
    sw      t4, 0x0010(a3)             # 801E67D0
    sw      v0, 0x002C($sp)
    jal     func_80003440              # osWritebackDCache
    addiu   a1, $zero, 0x0040          # a1 = 00000040
    lui     a1, 0x801E                 # a1 = 801E0000
    addiu   a1, a1, 0x5EC8             # a1 = 801E5EC8
    lw      t9, 0x0000(s2)             # 801E5EC0
    lui     a3, 0x801E                 # a3 = 801E0000
    lui     t5, 0x0500                 # t5 = 05000000
    addiu   a3, a3, 0x67C0             # a3 = 801E67C0
    ori     t5, t5, 0x0580             # t5 = 05000580
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    sw      a3, 0x0008(a1)             # 801E5ED0
    sw      t5, 0x000C(a1)             # 801E5ED4
    sw      t6, 0x0010(a1)             # 801E5ED8
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t7, 0x0014(t9)             # 00000014
    lw      a0, 0x0000(s2)             # 801E5EC0
    jal     func_800040C0              # osEPiStartDma
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x5E30             # a0 = 801E5E30
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      v0, 0x002C($sp)
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0530             # a1 = 05000530
    ori     a2, v0, 0x5900             # a2 = 00005900
    sll     t8, a2, 16
    or      a2, t8, $zero              # a2 = 00000000
    jal     func_80005800
    lw      a0, 0x0000(s2)             # 801E5EC0
    lui     t0, 0x801E                 # t0 = 801E0000
    addiu   t0, t0, 0x5E86             # t0 = 801E5E86
    lhu     t1, 0x0000(t0)             # 801E5E86
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0528             # a1 = 05000528
    andi    t2, t1, 0x0800             # t2 = 00000000
    beql    t2, $zero, lbl_801CDFF0
    lw      a0, 0x0000(s2)             # 801E5EC0
    addiu   s0, s0, 0x0100             # s0 = 00000100
    lw      a0, 0x0000(s2)             # 801E5EC0
lbl_801CDFF0:
    jal     func_80005800
    sll     a2, s0,  8
    lw      t3, 0x0000(s1)             # 801E5E80
    lui     $at, 0x4000                # $at = 40000000
    lui     a1, 0x0500                 # a1 = 05000000
    or      a2, t3, $at                # a2 = 40000000
    sw      a2, 0x0000(s1)             # 801E5E80
    ori     a1, a1, 0x0518             # a1 = 05000518
    jal     func_80005800
    lw      a0, 0x0000(s2)             # 801E5EC0
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_801CE030:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s5, 0x0028($sp)
    sw      s4, 0x0024($sp)
    sw      s0, 0x0014($sp)
    lui     s2, 0x801E                 # s2 = 801E0000
    lui     s3, 0x0005                 # s3 = 00050000
    sw      $ra, 0x002C($sp)
    sw      s1, 0x0018($sp)
    addiu   s0, $zero, 0x0008          # s0 = 00000008
    ori     s3, s3, 0x0001             # s3 = 00050001
    addiu   s2, s2, 0x5E78             # s2 = 801E5E78
    lui     s4, 0x000D                 # s4 = 000D0000
    lui     s5, 0x0001                 # s5 = 00010000
lbl_801CE06C:
    lw      t6, 0x0000(s2)             # 801E5E78
    or      a1, $zero, $zero           # a1 = 00000000
    lbu     v0, 0x0002(t6)             # 00000002
    andi    t7, v0, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_801CE08C
    andi    t8, v0, 0x0002             # t8 = 00000000
    beq     $zero, $zero, lbl_801CE0A8
    or      a0, s3, $zero              # a0 = 00050001
lbl_801CE08C:
    beq     t8, $zero, lbl_801CE09C
    andi    t9, v0, 0x0004             # t9 = 00000000
    beq     $zero, $zero, lbl_801CE0A8
    or      a0, s4, $zero              # a0 = 000D0000
lbl_801CE09C:
    beq     t9, $zero, lbl_801CE0A8
    lui     a0, 0x0004                 # a0 = 00040000
    or      a1, s5, $zero              # a1 = 00010000
lbl_801CE0A8:
    jal     func_801CC858
    nop
    bne     v0, $zero, lbl_801CE0C4
    andi    s1, v0, 0x00FF             # s1 = 00000000
    lw      t0, 0x0000(s2)             # 801E5E78
    beq     $zero, $zero, lbl_801CE0F8
    sb      $zero, 0x0004(t0)          # 00000004
lbl_801CE0C4:
    jal     func_801CCAB0
    or      a0, s1, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_801CE0E4
    or      v0, s0, $zero              # v0 = 00000008
    addiu   s0, s0, 0xFFFF             # s0 = 00000007
    andi    t1, s0, 0x00FF             # t1 = 00000007
    bne     v0, $zero, lbl_801CE06C
    or      s0, t1, $zero              # s0 = 00000007
lbl_801CE0E4:
    lw      t2, 0x0000(s2)             # 801E5E78
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    sb      s1, 0x0005(t2)             # 00000005
    lw      t4, 0x0000(s2)             # 801E5E78
    sb      t3, 0x0004(t4)             # 00000004
lbl_801CE0F8:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    nop


func_801CE120:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    jal     func_80001DB0
    nop
    lui     v1, 0xA460                 # v1 = A4600000
    ori     v1, v1, 0x0010             # v1 = A4600010
    lw      v0, 0x0000(v1)             # A4600010
    lui     a2, 0xA460                 # a2 = A4600000
    ori     a2, a2, 0x0014             # a2 = A4600014
    andi    t6, v0, 0x0003             # t6 = 00000000
    beq     t6, $zero, lbl_801CE160
    lui     a3, 0xA460                 # a3 = A4600000
    lw      v0, 0x0000(v1)             # A4600010
lbl_801CE154:
    andi    t7, v0, 0x0003             # t7 = 00000000
    bnel    t7, $zero, lbl_801CE154
    lw      v0, 0x0000(v1)             # A4600010
lbl_801CE160:
    lw      v0, 0x0000(a2)             # A4600014
    ori     a3, a3, 0x001C             # a3 = A460001C
    lui     t0, 0xA460                 # t0 = A4600000
    lw      v1, 0x0000(a3)             # A460001C
    ori     t0, t0, 0x0020             # t0 = A4600020
    lui     t1, 0xA460                 # t1 = A4600000
    lw      a0, 0x0000(t0)             # A4600020
    ori     t1, t1, 0x0018             # t1 = A4600018
    lw      a1, 0x0000(t1)             # A4600018
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    sw      t2, 0x0000(a2)             # A4600014
    sw      $zero, 0x0000(a3)          # A460001C
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sw      t8, 0x0000(t0)             # A4600020
    sw      t2, 0x0000(t1)             # A4600018
    lui     t9, 0xA600                 # t9 = A6000000
    lw      t3, 0x1010(t9)             # A6001010
    sw      t3, 0x001C($sp)
    sw      v0, 0x0000(a2)             # A4600014
    sw      v1, 0x0000(a3)             # A460001C
    sw      a0, 0x0000(t0)             # A4600020
    jal     func_80001DF4
    sw      a1, 0x0000(t1)             # A4600018
    lw      t4, 0x001C($sp)
    lui     $at, 0x2129                # $at = 21290000
    ori     $at, $at, 0xFFF8           # $at = 2129FFF8
    bne     t4, $at, lbl_801CE1D8
    lw      $ra, 0x0014($sp)
    beq     $zero, $zero, lbl_801CE1DC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_801CE1D8:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CE1DC:
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    nop
    nop
    nop


func_801CE1F0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    lui     s0, 0x801E                 # s0 = 801E0000
    addiu   s0, s0, 0x5E78             # s0 = 801E5E78
    lw      t6, 0x0000(s0)             # 801E5E78
    sw      $ra, 0x001C($sp)
    lui     a0, 0x0006                 # a0 = 00060000
    lbu     a1, 0x000E(t6)             # 0000000E
    sll     t7, a1, 16
    jal     func_801CC858
    or      a1, t7, $zero              # a1 = 00000000
    bnel    v0, $zero, lbl_801CE260
    lw      t1, 0x0000(s0)             # 801E5E78
    lw      t8, 0x0000(s0)             # 801E5E78
    lui     a0, 0x0007                 # a0 = 00070000
    lbu     a1, 0x000F(t8)             # 0000000F
    sll     t9, a1, 16
    jal     func_801CC858
    or      a1, t9, $zero              # a1 = 00000000
    bnel    v0, $zero, lbl_801CE260
    lw      t1, 0x0000(s0)             # 801E5E78
    lw      t0, 0x0000(s0)             # 801E5E78
    lui     a0, 0x0015                 # a0 = 00150000
    jal     func_801CC858
    lw      a1, 0x0010(t0)             # 00000010
    beql    v0, $zero, lbl_801CE278
    lw      t4, 0x0000(s0)             # 801E5E78
    lw      t1, 0x0000(s0)             # 801E5E78
lbl_801CE260:
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sb      v0, 0x0005(t1)             # 00000005
    lw      t3, 0x0000(s0)             # 801E5E78
    beq     $zero, $zero, lbl_801CE284
    sb      t2, 0x0004(t3)             # 00000004
    lw      t4, 0x0000(s0)             # 801E5E78
lbl_801CE278:
    sb      v0, 0x0005(t4)             # 00000005
    lw      t5, 0x0000(s0)             # 801E5E78
    sb      $zero, 0x0004(t5)          # 00000004
lbl_801CE284:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop
    nop


func_801CE2A0:
    lui     v1, 0x801E                 # v1 = 801E0000
    addiu   v1, v1, 0x5E78             # v1 = 801E5E78
    lw      v0, 0x0000(v1)             # 801E5E78
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x5E88             # a0 = 801E5E88
    lbu     t6, 0x0002(v0)             # 00000002
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_801CE310
    sw      $zero, 0x000C(v0)          # 0000000C
    lbu     t8, 0x0000(a0)             # 801E5E88
    lui     t0, 0x801E                 # t0 = 801E0000
    addiu   t2, $zero, 0x10C3          # t2 = 000010C3
    sll     t9, t8,  1
    addu    t0, t0, t9
    lhu     t0, -0x6968(t0)            # 801D9698
    lui     t6, 0x801E                 # t6 = 801E0000
    addiu   t1, t0, 0xFFE8             # t1 = 801DFFE8
    sw      t1, 0x000C(v0)             # 0000000C
    lw      t3, 0x0000(v1)             # 801E5E78
    sw      t2, 0x0010(t3)             # 00000010
    lbu     t4, 0x0000(a0)             # 801E5E88
    lw      t7, 0x0000(v1)             # 801E5E78
    sll     t5, t4,  2
    addu    t6, t6, t5
    lw      t6, -0x6958(t6)            # 801D96A8
    beq     $zero, $zero, lbl_801CE32C
    sw      t6, 0x0014(t7)             # 00000014
    sw      $zero, 0x000C(v0)          # 0000000C
lbl_801CE310:
    lw      t9, 0x0000(v1)             # 801E5E78
    addiu   t8, $zero, 0x10C3          # t8 = 000010C3
    lui     t0, 0x03D7                 # t0 = 03D70000
    sw      t8, 0x0010(t9)             # 00000010
    lw      t1, 0x0000(v1)             # 801E5E78
    ori     t0, t0, 0x8F40             # t0 = 03D78F40
    sw      t0, 0x0014(t1)             # 801DFFFC
lbl_801CE32C:
    lw      t2, 0x0000(v1)             # 801E5E78
    jr      $ra
    sb      $zero, 0x0004(t2)          # 000010C7
    nop
    nop


func_801CE340:
    lui     t0, 0x801E                 # t0 = 801E0000
    andi    t6, a0, 0x0001             # t6 = 00000000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   t0, t0, 0x5E90             # t0 = 801E5E90
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    subu    t8, t7, t6
    andi    v0, a0, 0x0003             # v0 = 00000000
    sw      $ra, 0x0014($sp)
    beq     v0, $zero, lbl_801CE37C
    sb      t8, 0x0009(t0)             # 801E5E99
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_801CE37C
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    beq     $zero, $zero, lbl_801CE380
    sb      t9, 0x000A(t0)             # 801E5E9A
lbl_801CE37C:
    sb      $zero, 0x000A(t0)          # 801E5E9A
lbl_801CE380:
    jal     func_801CE534
    sw      a0, 0x0018($sp)
    lui     a1, 0x801E                 # a1 = 801E0000
    lbu     a1, 0x5E88(a1)             # 801E5E88
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     t0, 0x801E                 # t0 = 801E0000
    sll     t4, a1,  4
    addu    t5, t4, v0
    addu    a0, a0, t5
    lbu     a0, -0x69E8(a0)            # 801D9618
    addiu   t0, t0, 0x5E90             # t0 = 801E5E90
    lw      t3, 0x0018($sp)
    andi    t2, a0, 0x00FF             # t2 = 00000000
    slti    $at, t2, 0x0008
    sb      $zero, 0x0007(t0)          # 801E5E97
    or      v1, t2, $zero              # v1 = 00000000
    bne     $at, $zero, lbl_801CE3DC
    sb      a0, 0x0008(t0)             # 801E5E98
    addiu   t7, v1, 0xFFF9             # t7 = FFFFFFF9
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t7, 0x0008(t0)             # 801E5E98
    sb      t6, 0x0007(t0)             # 801E5E97
    andi    t2, t7, 0x00FF             # t2 = 000000F9
lbl_801CE3DC:
    sll     t8, a0,  1
    lui     t1, 0x801E                 # t1 = 801E0000
    addu    t1, t1, t8
    beq     v0, $zero, lbl_801CE40C
    lhu     t1, -0x6A08(t1)            # 801D95F8
    sll     t9, a1,  5
    sll     t4, v0,  1
    addu    t5, t9, t4
    lui     v1, 0x801E                 # v1 = 801E0000
    addu    v1, v1, t5
    beq     $zero, $zero, lbl_801CE410
    lhu     v1, -0x6AEA(v1)            # 801D9516
lbl_801CE40C:
    or      v1, $zero, $zero           # v1 = 00000000
lbl_801CE410:
    lbu     t7, 0x0007(t0)             # 801E5E97
    subu    t6, t3, v1
    srl     t9, t6,  1
    beq     t7, $zero, lbl_801CE444
    lui     $at, 0x801E                # $at = 801E0000
    subu    t4, t1, t9
    lui     t1, 0x801E                 # t1 = 801E0000
    sll     t5, t2,  1
    lui     $at, 0x801E                # $at = 801E0000
    addu    t1, t1, t5
    sh      t4, 0x5E92($at)            # 801E5E92
    beq     $zero, $zero, lbl_801CE454
    lhu     t1, -0x697A(t1)            # 801D9686
lbl_801CE444:
    subu    t7, t3, v1
    srl     t8, t7,  1
    addu    t9, t1, t8
    sh      t9, 0x5E92($at)            # 801E5E92
lbl_801CE454:
    beq     a0, $zero, lbl_801CE46C
    lui     a3, 0x801E                 # a3 = 801E0000
    addiu   a3, a3, 0x51A0             # a3 = 801E51A0
    addu    t4, a3, a0
    beq     $zero, $zero, lbl_801CE478
    lbu     a1, 0x0007(t4)             # 00000007
lbl_801CE46C:
    lui     a3, 0x801E                 # a3 = 801E0000
    addiu   a3, a3, 0x51A0             # a3 = 801E51A0
    or      a1, $zero, $zero           # a1 = 00000000
lbl_801CE478:
    addu    t5, a3, a0
    lbu     t7, 0x0008(t5)             # 00000008
    or      a2, t1, $zero              # a2 = 801E0000
    subu    v1, t7, a1
    andi    t6, v1, 0xFFFF             # t6 = 00000000
    beq     t6, $zero, lbl_801CE4D4
    or      v1, t6, $zero              # v1 = 00000000
lbl_801CE494:
    addu    t8, a3, a1
    lbu     t9, 0x0020(t8)             # 00000020
    lhu     a0, 0x0002(t0)             # 801E5E92
    addiu   a1, a1, 0x0001             # a1 = 00000001
    addu    v0, t9, a2
    andi    t4, v0, 0xFFFF             # t4 = 00000000
    slt     $at, a0, t4
    bne     $at, $zero, lbl_801CE4D4
    addiu   t5, a0, 0x0001             # t5 = 801E0001
    addiu   v1, v1, 0xFFFF             # v1 = FFFFFFFF
    andi    t7, a1, 0xFFFF             # t7 = 00000001
    andi    t6, v1, 0xFFFF             # t6 = 0000FFFF
    sh      t5, 0x0002(t0)             # 801E5E92
    or      a1, t7, $zero              # a1 = 00000001
    bne     t6, $zero, lbl_801CE494
    or      v1, t6, $zero              # v1 = 0000FFFF
lbl_801CE4D4:
    lui     t8, 0x801E                 # t8 = 801E0000
    addu    t8, t8, t2
    lbu     t8, -0x6B08(t8)            # 801D94F8
    sll     t9, t2,  1
    lui     t4, 0x801E                 # t4 = 801E0000
    addu    t4, t4, t9
    sb      t8, 0x0006(t0)             # 801E5E96
    lhu     t4, -0x6AFC(t4)            # 801D9504
    lui     t5, 0x801E                 # t5 = 801E0000
    sltiu   $at, t3, 0x000C
    sh      t4, 0x0004(t0)             # 801E5E94
    lw      t5, 0x5E9C(t5)             # 801E5E9C
    bnel    t5, $zero, lbl_801CE524
    lw      $ra, 0x0014($sp)
    beq     $at, $zero, lbl_801CE520
    addiu   t7, $zero, 0x00C0          # t7 = 000000C0
    addiu   t6, $zero, 0x3FC0          # t6 = 00003FC0
    sb      t7, 0x0006(t0)             # 801E5E96
    sh      t6, 0x0004(t0)             # 801E5E94
lbl_801CE520:
    lw      $ra, 0x0014($sp)
lbl_801CE524:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_801CE534:
    lui     t6, 0x801E                 # t6 = 801E0000
    lbu     t6, 0x5E88(t6)             # 801E5E88
    lui     t8, 0x801E                 # t8 = 801E0000
    addiu   t8, t8, 0x9518             # t8 = 801D9518
    sll     t7, t6,  5
    addu    v0, t7, t8
    or      v1, $zero, $zero           # v1 = 00000000
lbl_801CE550:
    lhu     t9, 0x0000(v0)             # 00000000
    addiu   v0, v0, 0x0002             # v0 = 00000002
    sltu    $at, a0, t9
    beql    $at, $zero, lbl_801CE570
    addiu   v1, v1, 0x0001             # v1 = 00000001
    jr      $ra
    or      v0, v1, $zero              # v0 = 00000001
lbl_801CE56C:
    addiu   v1, v1, 0x0001             # v1 = 00000002
lbl_801CE570:
    andi    t0, v1, 0xFFFF             # t0 = 00000002
    slti    $at, t0, 0x0010
    bne     $at, $zero, lbl_801CE550
    or      v1, t0, $zero              # v1 = 00000002
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    jr      $ra
    nop
    nop


func_801CE590:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0014($sp)
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    addiu   s0, $zero, 0x0008          # s0 = 00000008
lbl_801CE5A4:
    jal     func_801CC994
    nop
    bne     v0, $zero, lbl_801CE5DC
    andi    s1, v0, 0x00FF             # s1 = 00000000
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x5E90             # v0 = 801E5E90
    lui     v1, 0x801E                 # v1 = 801E0000
    addiu   v1, v1, 0x5E78             # v1 = 801E5E78
    lw      t6, 0x0000(v1)             # 801E5E78
    sh      $zero, 0x0002(v0)          # 801E5E92
    sb      $zero, 0x0007(v0)          # 801E5E97
    sb      $zero, 0x0008(v0)          # 801E5E98
    beq     $zero, $zero, lbl_801CE618
    sb      $zero, 0x0004(t6)          # 00000004
lbl_801CE5DC:
    jal     func_801CCAB0
    or      a0, s1, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_801CE5FC
    or      v0, s0, $zero              # v0 = 00000008
    addiu   s0, s0, 0xFFFF             # s0 = 00000007
    andi    t7, s0, 0x00FF             # t7 = 00000007
    bne     v0, $zero, lbl_801CE5A4
    or      s0, t7, $zero              # s0 = 00000007
lbl_801CE5FC:
    lui     v1, 0x801E                 # v1 = 801E0000
    addiu   v1, v1, 0x5E78             # v1 = 801E5E78
    lw      t8, 0x0000(v1)             # 801E5E78
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sb      s1, 0x0005(t8)             # 00000005
    lw      t0, 0x0000(v1)             # 801E5E78
    sb      t9, 0x0004(t0)             # 00000004
lbl_801CE618:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    nop


func_801CE630:
    lui     t6, 0x801E                 # t6 = 801E0000
    lw      t6, -0x7210(t6)            # 801D8DF0
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    bne     t6, $zero, lbl_801CE650
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    beq     $zero, $zero, lbl_801CE66C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_801CE650:
    sb      t7, 0x001C($sp)
    sb      $zero, 0x001D($sp)
    sb      $zero, 0x001E($sp)
    sb      $zero, 0x001F($sp)
    jal     func_801CA9A4
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFF4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CE66C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop


func_801CE680:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    lui     t6, 0x801E                 # t6 = 801E0000
    lw      t6, -0x7210(t6)            # 801D8DF0
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    bne     t6, $zero, lbl_801CE6C4
    sw      a2, 0x0048($sp)
    beq     $zero, $zero, lbl_801CE7B4
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_801CE6C4:
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     s0, $zero, lbl_801CE7A8
    addiu   s1, s1, 0x0018             # s1 = 00000018
    lui     s6, 0x801E                 # s6 = 801E0000
    lui     s5, 0x801E                 # s5 = 801E0000
    lui     s4, 0x801E                 # s4 = 801E0000
    lui     s2, 0x801E                 # s2 = 801E0000
    addiu   s2, s2, 0x5E88             # s2 = 801E5E88
    addiu   s4, s4, 0x9518             # s4 = 801D9518
    addiu   s5, s5, 0x9618             # s5 = 801D9618
    addiu   s6, s6, 0x9504             # s6 = 801D9504
    lw      a0, 0x0038($sp)
lbl_801CE6FC:
    bne     v0, $zero, lbl_801CE724
    nop
    lbu     t7, 0x0000(s2)             # 801E5E88
    sll     t0, a1,  1
    sll     t8, t7,  5
    addu    t9, s4, t8
    addu    t1, t9, t0
    lhu     t2, 0x0000(t1)             # 00000000
    bnel    s1, t2, lbl_801CE76C
    sltu    $at, s0, a0
lbl_801CE724:
    jal     func_801CE534
    or      a0, s1, $zero              # a0 = 00000018
    lbu     t3, 0x0000(s2)             # 801E5E88
    andi    a1, v0, 0xFFFF             # a1 = 00000000
    sll     t4, t3,  4
    addu    t5, s5, t4
    addu    t6, t5, v0
    lbu     v1, 0x0000(t6)             # 00000000
    slti    $at, v1, 0x0008
    bne     $at, $zero, lbl_801CE75C
    or      a0, v1, $zero              # a0 = 00000000
    addiu   v1, a0, 0xFFF9             # v1 = FFFFFFF9
    andi    t7, v1, 0xFFFF             # t7 = 0000FFF9
    or      v1, t7, $zero              # v1 = 0000FFF9
lbl_801CE75C:
    sll     t8, v1,  1
    addu    t9, s6, t8
    lhu     a0, 0x0000(t9)             # 00000000
    sltu    $at, s0, a0
lbl_801CE76C:
    beq     $at, $zero, lbl_801CE77C
    addiu   s3, s3, 0x0001             # s3 = 00000001
    beq     $zero, $zero, lbl_801CE780
    or      s0, $zero, $zero           # s0 = 00000000
lbl_801CE77C:
    subu    s0, s0, a0
lbl_801CE780:
    beq     s0, $zero, lbl_801CE79C
    addiu   s1, s1, 0x0001             # s1 = 00000019
    sltiu   $at, s1, 0x10DC
    bne     $at, $zero, lbl_801CE79C
    nop
    beq     $zero, $zero, lbl_801CE7B4
    addiu   v0, $zero, 0x0020          # v0 = 00000020
lbl_801CE79C:
    bne     s0, $zero, lbl_801CE6FC
    or      v0, $zero, $zero           # v0 = 00000000
    sw      a0, 0x0038($sp)
lbl_801CE7A8:
    lw      t0, 0x0048($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    sw      s3, 0x0000(t0)             # 00000000
lbl_801CE7B4:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    lw      s5, 0x002C($sp)
    lw      s6, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    nop


func_801CE7E0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s2, 0x001C($sp)
    lui     s2, 0x801E                 # s2 = 801E0000
    sw      s3, 0x0020($sp)
    addiu   s3, $sp, 0x002C            # s3 = FFFFFFFC
    addiu   s2, s2, 0x5DE8             # s2 = 801E5DE8
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      a0, s2, $zero              # a0 = 801E5DE8
    or      a1, s3, $zero              # a1 = FFFFFFFC
    jal     func_80002030              # osRecvMesg
    or      a2, $zero, $zero           # a2 = 00000000
    bne     v0, $zero, lbl_801CE86C
    addiu   s1, $zero, 0x0002          # s1 = 00000002
    addiu   s0, $zero, 0x0022          # s0 = 00000022
    lw      t6, 0x002C($sp)
lbl_801CE824:
    addiu   a1, $zero, 0x0022          # a1 = 00000022
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sb      s0, 0x0005(t6)             # 00000005
    lw      t7, 0x002C($sp)
    sb      s1, 0x0004(t7)             # 00000004
    lw      t8, 0x002C($sp)
    lbu     t9, 0x0002(t8)             # 00000002
    andi    t0, t9, 0x0080             # t0 = 00000000
    beql    t0, $zero, lbl_801CE858
    or      a0, s2, $zero              # a0 = 801E5DE8
    jal     func_80001E20              # osSendMesg
    lw      a0, 0x0008(t8)             # 00000008
    or      a0, s2, $zero              # a0 = 801E5DE8
lbl_801CE858:
    or      a1, s3, $zero              # a1 = FFFFFFFC
    jal     func_80002030              # osRecvMesg
    or      a2, $zero, $zero           # a2 = 00000000
    beql    v0, $zero, lbl_801CE824
    lw      t6, 0x002C($sp)
lbl_801CE86C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_801CE888:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_801CC380
    nop
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_801CE8B4
    lui     v1, 0x801E                 # v1 = 801E0000
    addiu   $at, $zero, 0x0029         # $at = 00000029
    beq     v0, $at, lbl_801CE8B4
    addiu   $at, $zero, 0x002B         # $at = 0000002B
    bne     v0, $at, lbl_801CE8D0
lbl_801CE8B4:
    addiu   v1, v1, 0x5E78             # v1 = 801E5E78
    lw      t6, 0x0000(v1)             # 801E5E78
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sb      v0, 0x0005(t6)             # 00000005
    lw      t8, 0x0000(v1)             # 801E5E78
    beq     $zero, $zero, lbl_801CE8E8
    sb      t7, 0x0004(t8)             # 00000004
lbl_801CE8D0:
    lui     v1, 0x801E                 # v1 = 801E0000
    addiu   v1, v1, 0x5E78             # v1 = 801E5E78
    lw      t9, 0x0000(v1)             # 801E5E78
    sb      $zero, 0x0005(t9)          # 00000005
    lw      t0, 0x0000(v1)             # 801E5E78
    sb      $zero, 0x0004(t0)          # 00000004
lbl_801CE8E8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop


func_801CE900:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    lui     v1, 0x801E                 # v1 = 801E0000
    lw      v1, 0x5E78(v1)             # 801E5E78
    sw      $ra, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lw      a0, 0x000C(v1)             # 801E000C
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    or      s2, $zero, $zero           # s2 = 00000000
    sltiu   $at, a0, 0x10C4
    bne     $at, $zero, lbl_801CE95C
    addiu   s0, a0, 0x0018             # s0 = 00000018
    sb      t6, 0x0005(v1)             # 801E0005
    lui     t8, 0x801E                 # t8 = 801E0000
    lw      t8, 0x5E78(t8)             # 801E5E78
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    beq     $zero, $zero, lbl_801CEB6C
    sb      t7, 0x0004(t8)             # 801E0004
lbl_801CE95C:
    lbu     t9, 0x0002(v1)             # 801E0002
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    andi    t0, t9, 0x0001             # t0 = 00000000
    beq     t0, $zero, lbl_801CEA74
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      s1, 0x0010(v1)             # 801E0010
    lui     s6, 0x801E                 # s6 = 801E0000
    addiu   s6, s6, 0x9504             # s6 = 801D9504
    beq     s1, $zero, lbl_801CEA6C
    lui     s5, 0x801E                 # s5 = 801E0000
    lui     s4, 0x801E                 # s4 = 801E0000
    lui     s3, 0x801E                 # s3 = 801E0000
    addiu   s3, s3, 0x5E88             # s3 = 801E5E88
    addiu   s4, s4, 0x9518             # s4 = 801D9518
    addiu   s5, s5, 0x9618             # s5 = 801D9618
    lw      v1, 0x0038($sp)
lbl_801CE9A0:
    bne     v0, $zero, lbl_801CE9C8
    nop
    lbu     t1, 0x0000(s3)             # 801E5E88
    sll     t4, a1,  1
    sll     t2, t1,  5
    addu    t3, s4, t2
    addu    t5, t3, t4
    lhu     t6, 0x0000(t5)             # 00000000
    bnel    s0, t6, lbl_801CEA10
    sltu    $at, s1, v1
lbl_801CE9C8:
    jal     func_801CE534
    or      a0, s0, $zero              # a0 = 00000018
    lbu     t7, 0x0000(s3)             # 801E5E88
    andi    a1, v0, 0xFFFF             # a1 = 00000000
    sll     t8, t7,  4
    addu    t9, s5, t8
    addu    t0, t9, v0
    lbu     a0, 0x0000(t0)             # 00000000
    slti    $at, a0, 0x0008
    bne     $at, $zero, lbl_801CEA00
    or      v1, a0, $zero              # v1 = 00000000
    addiu   a0, v1, 0xFFF9             # a0 = FFFFFFF9
    andi    t1, a0, 0xFFFF             # t1 = 0000FFF9
    or      a0, t1, $zero              # a0 = 0000FFF9
lbl_801CEA00:
    sll     t2, a0,  1
    addu    t3, s6, t2
    lhu     v1, 0x0000(t3)             # 00000000
    sltu    $at, s1, v1
lbl_801CEA10:
    beq     $at, $zero, lbl_801CEA20
    addiu   s2, s2, 0x0001             # s2 = 00000001
    beq     $zero, $zero, lbl_801CEA24
    or      s1, $zero, $zero           # s1 = 00000000
lbl_801CEA20:
    subu    s1, s1, v1
lbl_801CEA24:
    beq     s1, $zero, lbl_801CEA58
    addiu   s0, s0, 0x0001             # s0 = 00000019
    sltiu   $at, s0, 0x10DC
    bne     $at, $zero, lbl_801CEA58
    lui     t5, 0x801E                 # t5 = 801E0000
    lw      t5, 0x5E78(t5)             # 801E5E78
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    lui     t7, 0x801E                 # t7 = 801E0000
    sb      t4, 0x0005(t5)             # 801E0005
    lw      t7, 0x5E78(t7)             # 801E5E78
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    beq     $zero, $zero, lbl_801CEB6C
    sb      t6, 0x0004(t7)             # 801E0004
lbl_801CEA58:
    bne     s1, $zero, lbl_801CE9A0
    or      v0, $zero, $zero           # v0 = 00000000
    sw      v1, 0x0038($sp)
    lui     v1, 0x801E                 # v1 = 801E0000
    lw      v1, 0x5E78(v1)             # 801E5E78
lbl_801CEA6C:
    beq     $zero, $zero, lbl_801CEB60
    sw      s2, 0x0014(v1)             # 801E0014
lbl_801CEA74:
    lw      s2, 0x0010(v1)             # 801E0010
    lui     s6, 0x801E                 # s6 = 801E0000
    addiu   s6, s6, 0x9504             # s6 = 801D9504
    beq     s2, $zero, lbl_801CEB5C
    lui     s5, 0x801E                 # s5 = 801E0000
    lui     s4, 0x801E                 # s4 = 801E0000
    lui     s3, 0x801E                 # s3 = 801E0000
    addiu   s3, s3, 0x5E88             # s3 = 801E5E88
    addiu   s4, s4, 0x9518             # s4 = 801D9518
    addiu   s5, s5, 0x9618             # s5 = 801D9618
    lw      v1, 0x0038($sp)
lbl_801CEAA0:
    bne     v0, $zero, lbl_801CEAC8
    nop
    lbu     t8, 0x0000(s3)             # 801E5E88
    sll     t1, a1,  1
    sll     t9, t8,  5
    addu    t0, s4, t9
    addu    t2, t0, t1
    lhu     t3, 0x0000(t2)             # 00000000
    bnel    s0, t3, lbl_801CEB10
    addiu   s2, s2, 0xFFFF             # s2 = 00000000
lbl_801CEAC8:
    jal     func_801CE534
    or      a0, s0, $zero              # a0 = 00000019
    lbu     t4, 0x0000(s3)             # 801E5E88
    andi    a1, v0, 0xFFFF             # a1 = 00000000
    sll     t5, t4,  4
    addu    t6, s5, t5
    addu    t7, t6, v0
    lbu     a0, 0x0000(t7)             # 00000000
    slti    $at, a0, 0x0008
    bne     $at, $zero, lbl_801CEB00
    or      v1, a0, $zero              # v1 = 00000000
    addiu   a0, v1, 0xFFF9             # a0 = FFFFFFF9
    andi    t8, a0, 0xFFFF             # t8 = 0000FFF9
    or      a0, t8, $zero              # a0 = 0000FFF9
lbl_801CEB00:
    sll     t9, a0,  1
    addu    t0, s6, t9
    lhu     v1, 0x0000(t0)             # 00000000
    addiu   s2, s2, 0xFFFF             # s2 = FFFFFFFF
lbl_801CEB10:
    addu    s1, s1, v1
    beq     s2, $zero, lbl_801CEB48
    addiu   s0, s0, 0x0001             # s0 = 0000001A
    sltiu   $at, s0, 0x10DC
    bne     $at, $zero, lbl_801CEB48
    lui     t2, 0x801E                 # t2 = 801E0000
    lw      t2, 0x5E78(t2)             # 801E5E78
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    lui     t4, 0x801E                 # t4 = 801E0000
    sb      t1, 0x0005(t2)             # 801E0005
    lw      t4, 0x5E78(t4)             # 801E5E78
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    beq     $zero, $zero, lbl_801CEB6C
    sb      t3, 0x0004(t4)             # 801E0004
lbl_801CEB48:
    bne     s2, $zero, lbl_801CEAA0
    or      v0, $zero, $zero           # v0 = 00000000
    sw      v1, 0x0038($sp)
    lui     v1, 0x801E                 # v1 = 801E0000
    lw      v1, 0x5E78(v1)             # 801E5E78
lbl_801CEB5C:
    sw      s1, 0x0014(v1)             # 801E0014
lbl_801CEB60:
    lui     t5, 0x801E                 # t5 = 801E0000
    lw      t5, 0x5E78(t5)             # 801E5E78
    sb      $zero, 0x0004(t5)          # 801E0004
lbl_801CEB6C:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    lw      s5, 0x002C($sp)
    lw      s6, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    nop
    nop
    nop


func_801CEBA0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    jal     func_801CEE94
    addiu   a0, $sp, 0x0020            # a0 = FFFFFFF0
    lui     v1, 0x801E                 # v1 = 801E0000
    addiu   v1, v1, 0x5E78             # v1 = 801E5E78
    lw      t7, 0x0000(v1)             # 801E5E78
    lbu     t6, 0x0020($sp)
    sb      t6, 0x000E(t7)             # 0000000E
    lw      t9, 0x0000(v1)             # 801E5E78
    lbu     t8, 0x0021($sp)
    sb      t8, 0x000F(t9)             # 0000000F
    lw      t1, 0x0000(v1)             # 801E5E78
    lbu     t0, 0x0022($sp)
    sb      t0, 0x0010(t1)             # 00000010
    lw      t3, 0x0000(v1)             # 801E5E78
    lbu     t2, 0x0023($sp)
    sb      t2, 0x0011(t3)             # 00000011
    lw      t5, 0x0000(v1)             # 801E5E78
    lbu     t4, 0x0024($sp)
    sb      t4, 0x0012(t5)             # 00000012
    lw      t7, 0x0000(v1)             # 801E5E78
    lbu     t6, 0x0025($sp)
    beq     v0, $zero, lbl_801CEC1C
    sb      t6, 0x0013(t7)             # 00000013
    lw      t8, 0x0000(v1)             # 801E5E78
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sb      v0, 0x0005(t8)             # 00000005
    lw      t0, 0x0000(v1)             # 801E5E78
    beq     $zero, $zero, lbl_801CEC4C
    sb      t9, 0x0004(t0)             # 00000004
lbl_801CEC1C:
    lw      v0, 0x0000(v1)             # 801E5E78
    addiu   t2, $zero, 0x0019          # t2 = 00000019
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    lbu     t1, 0x000E(v0)             # 0000000E
    sltiu   $at, t1, 0x0096
    bnel    $at, $zero, lbl_801CEC44
    sb      t3, 0x000D(v0)             # 0000000D
    beq     $zero, $zero, lbl_801CEC44
    sb      t2, 0x000D(v0)             # 0000000D
    sb      t3, 0x000D(v0)             # 0000000D
lbl_801CEC44:
    lw      t4, 0x0000(v1)             # 801E5E78
    sb      $zero, 0x0004(t4)          # 00000004
lbl_801CEC4C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_801CEC5C:
    lui     t5, 0x801E                 # t5 = 801E0000
    addiu   t5, t5, 0x5E78             # t5 = 801E5E78
    lw      t0, 0x0000(t5)             # 801E5E78
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    lui     t2, 0x801E                 # t2 = 801E0000
    sw      $ra, 0x0014($sp)
    addiu   t2, t2, 0x9B78             # t2 = 801D9B78
    lw      a2, 0x0038($sp)
    lw      a0, 0x003C($sp)
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    addiu   t3, $zero, 0x001D          # t3 = 0000001D
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   a3, $zero, 0x0006          # a3 = 00000006
    addiu   a1, t0, 0x000E             # a1 = 0000000E
lbl_801CEC98:
    lbu     v0, 0x0000(a1)             # 0000000E
    lui     t7, 0x801E                 # t7 = 801E0000
    addiu   a1, a1, 0x0001             # a1 = 0000000F
    andi    t6, v0, 0x000F             # t6 = 00000000
    sltiu   $at, t6, 0x000A
    bne     $at, $zero, lbl_801CECC8
    srl     t9, v0,  4
    addiu   t7, $zero, 0x0024          # t7 = 00000024
    sb      t7, 0x0005(t0)             # 00000005
    lw      t8, 0x0000(t5)             # 801E5E78
    beq     $zero, $zero, lbl_801CEE84
    sb      t4, 0x0004(t8)             # 00000004
lbl_801CECC8:
    multu   t9, a3
    addiu   t7, t7, 0x9B70             # t7 = FFFF9B94
    mflo    t6
    subu    v0, v0, t6
    beq     v1, t1, lbl_801CED30
    nop
    beq     v1, t4, lbl_801CECF8
    addu    t8, t2, a2
    lui     t7, 0x801E                 # t7 = 801E0000
    addiu   t7, t7, 0x9B70             # t7 = 801D9B70
    beq     $zero, $zero, lbl_801CED4C
    addu    a0, v1, t7
lbl_801CECF8:
    lbu     t9, 0x0000(t8)             # 00000000
    andi    t6, a0, 0x0003             # t6 = 00000000
    sltu    $at, t9, v0
    beq     $at, $zero, lbl_801CED30
    nop
    bnel    v0, t3, lbl_801CED20
    addiu   t7, $zero, 0x0024          # t7 = 00000024
    beq     t6, $zero, lbl_801CED30
    nop
    addiu   t7, $zero, 0x0024          # t7 = 00000024
lbl_801CED20:
    sb      t7, 0x0005(t0)             # 00000005
    lw      t8, 0x0000(t5)             # 801E5E78
    beq     $zero, $zero, lbl_801CEE84
    sb      t4, 0x0004(t8)             # 00000004
lbl_801CED30:
    bne     v0, $zero, lbl_801CED4C
    addu    a0, v1, t7
    addiu   t9, $zero, 0x0024          # t9 = 00000024
    sb      t9, 0x0005(t0)             # 00000005
    lw      t6, 0x0000(t5)             # 801E5E78
    beq     $zero, $zero, lbl_801CEE84
    sb      t4, 0x0004(t6)             # 00000004
lbl_801CED4C:
    lbu     t8, 0x0000(a0)             # 00000000
    addiu   v1, v1, 0x0001             # v1 = 00000001
    or      a0, a2, $zero              # a0 = 00000000
    sltu    $at, t8, v0
    beq     $at, $zero, lbl_801CED74
    addiu   t9, $zero, 0x0024          # t9 = 00000024
    sb      t9, 0x0005(t0)             # 00000005
    lw      t6, 0x0000(t5)             # 801E5E78
    beq     $zero, $zero, lbl_801CEE84
    sb      t4, 0x0004(t6)             # 00000004
lbl_801CED74:
    bne     v1, a3, lbl_801CEC98
    or      a2, v0, $zero              # a2 = 00000000
    sw      v0, 0x0038($sp)
    sw      a0, 0x003C($sp)
    lbu     t7, 0x000E(t0)             # 0000000E
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFD0
    sb      t7, 0x0028($sp)
    lbu     t8, 0x000F(t0)             # 0000000F
    sb      t8, 0x0029($sp)
    lbu     t9, 0x0010(t0)             # 00000010
    sb      t9, 0x002A($sp)
    lbu     t6, 0x0011(t0)             # 00000011
    sb      t6, 0x002B($sp)
    lbu     t7, 0x0012(t0)             # 00000012
    sb      t7, 0x002C($sp)
    lbu     t8, 0x0013(t0)             # 00000013
    jal     func_801CF004
    sb      t8, 0x002D($sp)
    lui     t5, 0x801E                 # t5 = 801E0000
    addiu   t5, t5, 0x5E78             # t5 = 801E5E78
    beq     v0, $zero, lbl_801CEDE0
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    lw      t9, 0x0000(t5)             # 801E5E78
    sb      v0, 0x0005(t9)             # 00000005
    lw      t6, 0x0000(t5)             # 801E5E78
    beq     $zero, $zero, lbl_801CEE84
    sb      t4, 0x0004(t6)             # 00000004
lbl_801CEDE0:
    jal     func_801CEE94
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFD0
    lui     t5, 0x801E                 # t5 = 801E0000
    addiu   t5, t5, 0x5E78             # t5 = 801E5E78
    beq     v0, $zero, lbl_801CEE0C
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    lw      t7, 0x0000(t5)             # 801E5E78
    sb      v0, 0x0005(t7)             # 00000005
    lw      t8, 0x0000(t5)             # 801E5E78
    beq     $zero, $zero, lbl_801CEE84
    sb      t4, 0x0004(t8)             # 00000004
lbl_801CEE0C:
    lw      t0, 0x0000(t5)             # 801E5E78
    lbu     t6, 0x0028($sp)
    lbu     t8, 0x0029($sp)
    lbu     t9, 0x000E(t0)             # 0000000E
    bnel    t9, t6, lbl_801CEE70
    addiu   t9, $zero, 0x0024          # t9 = 00000024
    lbu     t7, 0x000F(t0)             # 0000000F
    lbu     t6, 0x002A($sp)
    bnel    t7, t8, lbl_801CEE70
    addiu   t9, $zero, 0x0024          # t9 = 00000024
    lbu     t9, 0x0010(t0)             # 00000010
    lbu     t8, 0x002B($sp)
    bnel    t9, t6, lbl_801CEE70
    addiu   t9, $zero, 0x0024          # t9 = 00000024
    lbu     t7, 0x0011(t0)             # 00000011
    lbu     t6, 0x002C($sp)
    bnel    t7, t8, lbl_801CEE70
    addiu   t9, $zero, 0x0024          # t9 = 00000024
    lbu     t9, 0x0012(t0)             # 00000012
    lbu     t8, 0x002D($sp)
    bnel    t9, t6, lbl_801CEE70
    addiu   t9, $zero, 0x0024          # t9 = 00000024
    lbu     t7, 0x0013(t0)             # 00000013
    beq     t7, t8, lbl_801CEE80
    addiu   t9, $zero, 0x0024          # t9 = 00000024
lbl_801CEE70:
    sb      t9, 0x0005(t0)             # 00000005
    lw      t6, 0x0000(t5)             # 801E5E78
    beq     $zero, $zero, lbl_801CEE84
    sb      t4, 0x0004(t6)             # 00000004
lbl_801CEE80:
    sb      $zero, 0x0004(t0)          # 00000004
lbl_801CEE84:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_801CEE94:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     a0, 0x0014                 # a0 = 00140000
    jal     func_801CC858
    or      a1, $zero, $zero           # a1 = 00000000
    beq     v0, $zero, lbl_801CEEC0
    andi    v1, v0, 0x00FF             # v1 = 00000000
    beq     $zero, $zero, lbl_801CEFF0
    or      v0, v1, $zero              # v0 = 00000000
lbl_801CEEC0:
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0500             # a1 = 05000500
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    jal     func_80005630
    addiu   a2, $sp, 0x002C            # a2 = FFFFFFFC
    lw      t6, 0x002C($sp)
    lui     $at, 0xFF00                # $at = FF000000
    lui     a0, 0x0013                 # a0 = 00130000
    and     t7, t6, $at
    srl     t8, t7, 24
    sb      t8, 0x0004(s0)             # 00000004
    lw      t9, 0x002C($sp)
    lui     $at, 0x00FF                # $at = 00FF0000
    or      a1, $zero, $zero           # a1 = 00000000
    and     t0, t9, $at
    srl     t1, t0, 16
    jal     func_801CC858
    sb      t1, 0x0005(s0)             # 00000005
    beq     v0, $zero, lbl_801CEF28
    andi    v1, v0, 0x00FF             # v1 = 00000000
    lbu     t2, 0x0004(s0)             # 00000004
    or      v0, v1, $zero              # v0 = 00000000
    andi    t3, t2, 0xFF7F             # t3 = 00000000
    beq     $zero, $zero, lbl_801CEFF0
    sb      t3, 0x0004(s0)             # 00000004
lbl_801CEF28:
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0500             # a1 = 05000500
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    jal     func_80005630
    addiu   a2, $sp, 0x002C            # a2 = FFFFFFFC
    lw      t4, 0x002C($sp)
    lui     $at, 0xFF00                # $at = FF000000
    lui     a0, 0x0012                 # a0 = 00120000
    and     t5, t4, $at
    srl     t6, t5, 24
    sb      t6, 0x0002(s0)             # 00000002
    lw      t7, 0x002C($sp)
    lui     $at, 0x00FF                # $at = 00FF0000
    or      a1, $zero, $zero           # a1 = 00000000
    and     t8, t7, $at
    srl     t9, t8, 16
    jal     func_801CC858
    sb      t9, 0x0003(s0)             # 00000003
    beq     v0, $zero, lbl_801CEF90
    andi    v1, v0, 0x00FF             # v1 = 00000000
    lbu     t0, 0x0004(s0)             # 00000004
    or      v0, v1, $zero              # v0 = 00000000
    andi    t1, t0, 0xFF7F             # t1 = 00000000
    beq     $zero, $zero, lbl_801CEFF0
    sb      t1, 0x0004(s0)             # 00000004
lbl_801CEF90:
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0500             # a1 = 05000500
    lw      a0, 0x5EC0(a0)             # 801E5EC0
    jal     func_80005630
    addiu   a2, $sp, 0x002C            # a2 = FFFFFFFC
    lw      t2, 0x002C($sp)
    lui     $at, 0xFF00                # $at = FF000000
    lbu     v1, 0x0004(s0)             # 00000004
    and     t3, t2, $at
    srl     t4, t3, 24
    sb      t4, 0x0000(s0)             # 00000000
    lw      t5, 0x002C($sp)
    lui     $at, 0x00FF                # $at = 00FF0000
    andi    t8, v1, 0x0080             # t8 = 00000000
    and     t6, t5, $at
    srl     t7, t6, 16
    beq     t8, $zero, lbl_801CEFEC
    sb      t7, 0x0001(s0)             # 00000001
    andi    t9, v1, 0xFF7F             # t9 = 00000000
    sb      t9, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_801CEFF0
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_801CEFEC:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CEFF0:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_801CF004:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    lbu     t2, 0x0003(a0)             # 00000003
    lbu     t0, 0x0002(a0)             # 00000002
    lbu     t8, 0x0001(a0)             # 00000001
    lbu     t6, 0x0000(a0)             # 00000000
    sll     t3, t2, 16
    sll     t1, t0, 24
    addu    t4, t1, t3
    sw      t4, 0x0020($sp)
    sll     t9, t8, 16
    lbu     t8, 0x0005(a0)             # 00000005
    lbu     t5, 0x0004(a0)             # 00000004
    sll     t7, t6, 24
    addu    a1, t7, t9
    sll     t7, t8, 16
    sll     t6, t5, 24
    addu    t9, t6, t7
    sw      t9, 0x001C($sp)
    jal     func_801CC858
    lui     a0, 0x000F                 # a0 = 000F0000
    bne     v0, $zero, lbl_801CF088
    andi    v1, v0, 0x00FF             # v1 = 00000000
    lui     a0, 0x0010                 # a0 = 00100000
    jal     func_801CC858
    lw      a1, 0x0020($sp)
    bne     v0, $zero, lbl_801CF088
    andi    v1, v0, 0x00FF             # v1 = 00000000
    lui     a0, 0x0011                 # a0 = 00110000
    jal     func_801CC858
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_801CF090
    andi    v1, v0, 0x00FF             # v1 = 00000000
lbl_801CF088:
    beq     $zero, $zero, lbl_801CF094
    or      v0, v1, $zero              # v0 = 00000000
lbl_801CF090:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801CF094:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop
    nop
    nop


func_801CF0B0:
    ori     $at, $zero, 0x8140         # $at = 00008140
    slt     $at, a0, $at
    bne     $at, $zero, lbl_801CF160
    ori     $at, $zero, 0x9873         # $at = 00009873
    slt     $at, a0, $at
    beq     $at, $zero, lbl_801CF160
    ori     $at, $zero, 0x8800         # $at = 00008800
    slt     $at, a0, $at
    bne     $at, $zero, lbl_801CF114
    addiu   a2, $zero, 0x00BC          # a2 = 000000BC
    srl     a1, a0,  8
    addi    a1, a1, 0xFF78             # a1 = FFFFFF78
    multu   a2, a1
    andi    a3, a0, 0x00FF             # a3 = 00000000
    addi    a3, a3, 0xFFC0             # a3 = FFFFFFC0
    slti    $at, a3, 0x0040
    mflo    a2
    bnel    $at, $zero, lbl_801CF104
    mflo    a2
    addi    a3, a3, 0xFFFF             # a3 = FFFFFFBF
    mflo    a2
lbl_801CF104:
    addi    a3, a3, 0x030A             # a3 = 000002C9
    add     a3, a3, a2
    jr      $ra
    sll     v0, a3,  7
lbl_801CF114:
    srl     a1, a0,  8
    addi    a1, a1, 0xFF7F             # a1 = FFFFFEF7
    multu   a2, a1
    andi    a3, a0, 0x00FF             # a3 = 00000000
    addi    a3, a3, 0xFFC0             # a3 = FFFFFFC0
    slti    $at, a3, 0x0040
    mflo    a2
    bnel    $at, $zero, lbl_801CF140
    mflo    a2
    addi    a3, a3, 0xFFFF             # a3 = FFFFFFBF
    mflo    a2
lbl_801CF140:
    add     a3, a3, a2
    lui     a2, 0x801D                 # a2 = 801D0000
    sll     a3, a3,  1
    addiu   a2, a2, 0xF168             # a2 = 801CF168
    add     a3, a3, a2
    lh      a2, 0x0000(a3)             # FFFFFFBF
    jr      $ra
    sll     v0, a2,  7
lbl_801CF160:
    jr      $ra
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF

.section .text
.subsection 1

.word \
0x00000001, 0x00020003, 0x00040005, 0x00060007, \
0x00080009, 0x000A000B, 0x000C000D, 0x000E000F, \
0x00100011, 0x00120013, 0x00140015, 0x00160017, \
0x00180019, 0x001A001B, 0x001C001D, 0x001E001F, \
0x00200021, 0x00220023, 0x00240025, 0x00260027, \
0x00280029, 0x002A002B, 0x002C002D, 0x002E002F, \
0x00300031, 0x00320033, 0x00340035, 0x00360037, \
0x00380039, 0x003A003B, 0x003C003D, 0x003E003F, \
0x00400041, 0x00420043, 0x00440045, 0x00460047, \
0x00480049, 0x004A004B, 0x004C004D, 0x004E004F, \
0x00500051, 0x00520053, 0x00540055, 0x00560057, \
0x00580059, 0x005A005B, 0x005C005D, 0x005E005F, \
0x00600061, 0x00620063, 0x00640065, 0x00660067, \
0x00680069, 0x006A006B, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0000006C, \
0x006D006E, 0x006F0070, 0x00710072, 0x00730000, \
0x00000000, 0x00000000, 0x00000000, 0x00000074, \
0x00750076, 0x00770078, 0x0079007A, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x007B007C, 0x007D007E, 0x007F0080, \
0x00810082, 0x00830084, 0x00850086, 0x00870088, \
0x00000000, 0x00000000, 0x00000000, 0x00000089, \
0x008A008B, 0x008C008D, 0x008E008F, 0x00900000, \
0x00000000, 0x00000091, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000092, 0x00930094, 0x00950096, \
0x00970098, 0x0099009A, 0x009B0000, 0x00000000, \
0x00000000, 0x00000000, 0x009C009D, 0x009E009F, \
0x00A000A1, 0x00A200A3, 0x00A400A5, 0x00A600A7, \
0x00A800A9, 0x00AA00AB, 0x00AC00AD, 0x00AE00AF, \
0x00B000B1, 0x00B200B3, 0x00B400B5, 0x00000000, \
0x00000000, 0x00000000, 0x00B600B7, 0x00B800B9, \
0x00BA00BB, 0x00BC00BD, 0x00BE00BF, 0x00C000C1, \
0x00C200C3, 0x00C400C5, 0x00C600C7, 0x00C800C9, \
0x00CA00CB, 0x00CC00CD, 0x00CE00CF, 0x00000000, \
0x00000000, 0x00D000D1, 0x00D200D3, 0x00D400D5, \
0x00D600D7, 0x00D800D9, 0x00DA00DB, 0x00DC00DD, \
0x00DE00DF, 0x00E000E1, 0x00E200E3, 0x00E400E5, \
0x00E600E7, 0x00E800E9, 0x00EA00EB, 0x00EC00ED, \
0x00EE00EF, 0x00F000F1, 0x00F200F3, 0x00F400F5, \
0x00F600F7, 0x00F800F9, 0x00FA00FB, 0x00FC00FD, \
0x00FE00FF, 0x01000101, 0x01020103, 0x01040105, \
0x01060107, 0x01080109, 0x010A010B, 0x010C010D, \
0x010E010F, 0x01100111, 0x01120113, 0x01140115, \
0x01160117, 0x01180119, 0x011A011B, 0x011C011D, \
0x011E011F, 0x01200121, 0x01220123, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x01240125, 0x01260127, 0x01280129, 0x012A012B, \
0x012C012D, 0x012E012F, 0x01300131, 0x01320133, \
0x01340135, 0x01360137, 0x01380139, 0x013A013B, \
0x013C013D, 0x013E013F, 0x01400141, 0x01420143, \
0x01440145, 0x01460147, 0x01480149, 0x014A014B, \
0x014C014D, 0x014E014F, 0x01500151, 0x01520153, \
0x01540155, 0x01560157, 0x01580159, 0x015A015B, \
0x015C015D, 0x015E015F, 0x01600161, 0x01620163, \
0x01640165, 0x01660167, 0x01680169, 0x016A016B, \
0x016C016D, 0x016E016F, 0x01700171, 0x01720173, \
0x01740175, 0x01760177, 0x01780179, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x017A017B, \
0x017C017D, 0x017E017F, 0x01800181, 0x01820183, \
0x01840185, 0x01860187, 0x01880189, 0x018A018B, \
0x018C018D, 0x018E018F, 0x01900191, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x01920193, \
0x01940195, 0x01960197, 0x01980199, 0x019A019B, \
0x019C019D, 0x019E019F, 0x01A001A1, 0x01A201A3, \
0x01A401A5, 0x01A601A7, 0x01A801A9, 0x01AA0000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01AB01AC, 0x01AD01AE, \
0x01AF01B0, 0x01B101B2, 0x01B301B4, 0x01B501B6, \
0x01B701B8, 0x01B901BA, 0x01BB01BC, 0x01BD01BE, \
0x01BF01C0, 0x01C101C2, 0x01C301C4, 0x01C501C6, \
0x01C701C8, 0x01C901CA, 0x01CB0000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01CC01CD, 0x01CE01CF, \
0x01D001D1, 0x01D201D3, 0x01D401D5, 0x01D601D7, \
0x01D801D9, 0x01DA01DB, 0x01DC01DD, 0x01DE01DF, \
0x01E001E1, 0x01E201E3, 0x01E401E5, 0x01E601E7, \
0x01E801E9, 0x01EA01EB, 0x01EC0000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x01ED01EE, 0x01EF01F0, 0x01F101F2, \
0x01F301F4, 0x01F501F6, 0x01F701F8, 0x01F901FA, \
0x01FB01FC, 0x01FD01FE, 0x01FF0200, 0x02010202, \
0x02030204, 0x02050206, 0x02070208, 0x0209020A, \
0x020B020C, 0x020D0000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x020E020F, 0x02100211, 0x02120213, 0x02140215, \
0x02160217, 0x02180219, 0x021A021B, 0x021C021D, \
0x021E021F, 0x02200221, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x02220223, \
0x02240225, 0x02260227, 0x02280229, 0x022A022B, \
0x022C022D, 0x022E022F, 0x02300231, 0x02320233, \
0x02340235, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x02360237, 0x02380239, \
0x023A023B, 0x023C023D, 0x023E0000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x023F0240, 0x02410242, 0x02430244, 0x02450246, \
0x02470248, 0x00000000, 0x00000000, 0x0249024A, \
0x024B024C, 0x024D024E, 0x024F0250, 0x02510252, \
0x02530254, 0x02550256, 0x02570000, 0x00000000, \
0x00000000, 0x02580259, 0x025A025B, 0x025C025D, \
0x025E025F, 0x02600261, 0x02620263, 0x02640265, \
0x02660000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x02670268, 0x0269026A, 0x026B026C, \
0x026D026E, 0x026F0270, 0x02710272, 0x02730274, \
0x02750276, 0x02770278, 0x0279027A, 0x027B027C, \
0x027D027E, 0x027F0280, 0x02810000, 0x00000000, \
0x00000000, 0x00000000, 0x02820283, 0x02840285, \
0x02860287, 0x02880289, 0x028A028B, 0x028C028D, \
0x028E028F, 0x02900291, 0x02920293, 0x02940295, \
0x02960297, 0x02980299, 0x029A029B, 0x029C029D, \
0x029E029F, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x02A002A1, \
0x02A202A3, 0x02A402A5, 0x02A602A7, 0x02A802A9, \
0x02AA02AB, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x02AC02AD, \
0x02AE0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x02AF02B0, 0x02B102B2, 0x02B302B4, \
0x02B502B6, 0x02B702B8, 0x02B902BA, 0x02BB02BC, \
0x02BD02BE, 0x02BF0000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x02C002C1, 0x02C202C3, 0x02C402C5, 0x02C602C7, \
0x02C802C9, 0x02CA02CB, 0x02CC02CD, 0x02CE02CF, \
0x02D002D1, 0x02D202D3, 0x02D402D5, 0x02D602D7, \
0x02D80000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x02D902DA, 0x02DB02DC, 0x02DD02DE, 0x02DF02E0, \
0x02E102E2, 0x02E302E4, 0x02E502E6, 0x02E702E8, \
0x02E902EA, 0x02EB02EC, 0x02ED02EE, 0x02EF02F0, \
0x02F102F2, 0x02F302F4, 0x02F502F6, 0x02F702F8, \
0x02F902FA, 0x02FB02FC, 0x02FD0000, 0x00000000, \
0x00000000, 0x00000000, 0x02FE02FF, 0x03000301, \
0x03020000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x03030304, 0x03050306, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000307, 0x03080309

.section .text
.subsection 2
func_801CFBB0:
    bltz    a0, lbl_801CFC18
    slti    $at, a0, 0x0908
    beq     $at, $zero, lbl_801CFC18
    nop
    lui     v1, 0x801D                 # v1 = 801D0000
    sll     t0, a0,  2
    addiu   v1, v1, 0xFC20             # v1 = 801CFC20
    add     t1, t0, v1
    lbu     t8, 0x0002(t1)             # 00000002
    lhu     t9, 0x0000(t1)             # 00000000
    lui     $at, 0x0007                # $at = 00070000
    andi    t2, t8, 0x000F             # t2 = 00000000
    addi    t3, t2, 0x0001             # t3 = 00000001
    sw      t3, 0x0000(a2)             # 00000000
    lb      t0, 0x0003(t1)             # 00000003
    srl     t4, t8,  4
    ori     $at, $at, 0xEE80           # $at = 0007EE80
    andi    t5, t0, 0x0001             # t5 = 00000000
    sll     t6, t5,  4
    or      t7, t6, t4                 # t7 = 00000000
    sw      t7, 0x0000(a1)             # 00000000
    sll     v0, t9,  1
    sra     v1, t0,  1
    sw      v1, 0x0000(a3)             # 00000000
    jr      $ra
    add     v0, v0, $at
lbl_801CFC18:
    jr      $ra
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF

.section .text
.subsection 3

.word \
0x00009D14, 0x00232A14, 0x00296314, 0x002F8A14, \
0x00457E18, 0x0063CA14, 0x0084AA14, 0x00A03314, \
0x00A45E14, 0x00BB4E14, 0x00CA6514, 0x00D3770E, \
0x00E33302, 0x00E78108, 0x00EB2102, 0x00EC6C14, \
0x01008A14, 0x01163A14, 0x01217A14, 0x01377A14, \
0x014D8A14, 0x01638A14, 0x01798A14, 0x018F7A14, \
0x01A58A14, 0x01BB8A14, 0x01D1170E, 0x01D5490E, \
0x01DF770E, 0x01EF740A, 0x01F9770E, 0x02097A14, \
0x021FDC16, 0x024DBA14, 0x026E7A14, 0x0284BA14, \
0x02A59A14, 0x02C16A14, 0x02D26A14, 0x02E3BA14, \
0x03048A14, 0x031A1A14, 0x03206A14, 0x03318A14, \
0x03476A14, 0x0358CA14, 0x03799A14, 0x0395CA14, \
0x03B67A14, 0x03CCCA14, 0x03ED8A14, 0x04037A14, \
0x04196A14, 0x042A8A14, 0x0440AA14, 0x045CDA14, \
0x04839A14, 0x049F9A14, 0x04BB7A14, 0x04D14D14, \
0x04DF5C14, 0x04F33D14, 0x05015216, 0x050681FA, \
0x050A9D14, 0x052D9810, 0x05449A14, 0x05609810, \
0x05779A14, 0x05939810, 0x05AA5A14, 0x05BB9C10, \
0x05DC7A14, 0x05F22A14, 0x05F83D14, 0x06067A14, \
0x061C2A14, 0x0622D810, 0x06427810, 0x06549810, \
0x066B9B10, 0x06899B10, 0x06A74810, 0x06B06810, \
0x06BE5A14, 0x06CF770E, 0x06DF870E, 0x06EFB70E, \
0x0707670E, 0x07138A0E, 0x0729670E, 0x07356D14, \
0x074A1F16, 0x07526D14, 0x07675216, 0x076C9D14, \
0x078F9D14, 0x07B22A0E, 0x07B88B14, 0x07D08A14, \
0x07E69816, 0x07FD9A14, 0x08193F16, 0x08296C14, \
0x083D5114, 0x0840CA14, 0x08616614, 0x086C650C, \
0x0875830A, 0x087D9D14, 0x08A0CA14, 0x08C14114, \
0x08C35318, 0x08C98810, 0x08DB9D14, 0x08FE9D14, \
0x09213216, 0x09249A0E, 0x09407A14, 0x0956440E, \
0x095B3302, 0x095F9D14, 0x09826614, 0x098D650C, \
0x09960A15, 0x09C2C514, 0x09D4070F, 0x09F47A0E, \
0x0A0ABE1C, 0x0A37BE1C, 0x0A64BE1C, 0x0A91BD1A, \
0x0ABBBD1A, 0x0AE5BE1C, 0x0B12FA14, 0x0B3EBE14, \
0x0B6B7E1C, 0x0B897E1C, 0x0BA77E1C, 0x0BC57D1A, \
0x0BE13E1C, 0x0BF04E1C, 0x0BFF4E1C, 0x0C0E5D1A, \
0x0C239D14, 0x0C469D1A, 0x0C69BE1C, 0x0C96BE1C, \
0x0CC3BE1C, 0x0CF0BD1A, 0x0D1ABD1A, 0x0D44770E, \
0x0D54CC16, 0x0D7B8E1C, 0x0D998E1C, 0x0DB77E1C, \
0x0DD57D1A, 0x0DF19D14, 0x0E149D14, 0x0E379A14, \
0x0E539B16, 0x0E719B16, 0x0E8F9B16, 0x0EAD9B16, \
0x0ECB9A14, 0x0EE79B16, 0x0F050811, 0x0F299B10, \
0x0F479B16, 0x0F659B16, 0x0F839B16, 0x0FA19A14, \
0x0FBD3B16, 0x0FC93A16, 0x0FD44B16, 0x0FE04A14, \
0x0FEB7912, 0x0FFF8B16, 0x10179B16, 0x10359B16, \
0x10539B16, 0x10719B16, 0x108F9A14, 0x10AB760C, \
0x10B99910, 0x10D28B16, 0x10EA8B16, 0x11028B16, \
0x111A8A14, 0x11309D14, 0x11539D14, 0x11769D14, \
0x11996F18, 0x11B13A14, 0x11BC7514, 0x11C88912, \
0x11DC9D16, 0x11FFEA14, 0x1226CA14, 0x12474514, \
0x124D4D14, 0x125B4D14, 0x12696614, 0x1274870E, \
0x12843404, 0x12899108, 0x128E4204, 0x12916C14, \
0x12A5AA14, 0x12C17A14, 0x12D79A14, 0x12F3AA14, \
0x130FAA14, 0x132B9B16, 0x1349AA14, 0x1365AA14, \
0x1381AA14, 0x139DAA14, 0x13B9370E, 0x13C1390E, \
0x13CB770E, 0x13DB750C, 0x13E7770E, 0x13F79A14, \
0x1413CC14, 0x143ACA14, 0x145BBA14, 0x147CBA14, \
0x149DBA14, 0x14BEBA14, 0x14DFBA14, 0x1500BA14, \
0x1521CA14, 0x15426A14, 0x1553AA14, 0x156FCA14, \
0x1590AA14, 0x15ACFA14, 0x15D8CA14, 0x15F9BA14, \
0x161AAA14, 0x1636CE14, 0x1663CA14, 0x16849A14, \
0x16A0CA14, 0x16C1BA14, 0x16E2CA14, 0x1703EA14, \
0x172ACA14, 0x174BCA14, 0x176CAA14, 0x17883D14, \
0x17966C14, 0x17AA3D14, 0x17B85214, 0x17BD92FC, \
0x17C55F1A, 0x17DD870E, 0x17EDAA14, 0x1809870E, \
0x18199A14, 0x1835970E, 0x18497A14, 0x185F9C10, \
0x1880BA14, 0x18A15A14, 0x18B26E14, 0x18C9AA14, \
0x18E55A14, 0x18F6F70E, 0x1916A70E, 0x192A970E, \
0x193EAB0E, 0x195C9B0E, 0x197A770E, 0x198A770E, \
0x199A6912, 0x19A9A70E, 0x19BDA60E, 0x19CFD70E, \
0x19EBA70E, 0x19FFAB0E, 0x1A1D870E, 0x1A2D6D14, \
0x1A423F16, 0x1A526D14, 0x1A675214, 0x1A6C6F18, \
0x1A846F16, 0x1A9C3A0E, 0x1AA78B14, 0x1ABFAA14, \
0x1ADB8614, 0x1AE9BA14, 0x1B0A2F16, 0x1B128A14, \
0x1B285214, 0x1B2DBB14, 0x1B516614, 0x1B5C860C, \
0x1B6A730A, 0x1B726E16, 0x1B89BB14, 0x1BAD5012, \
0x1BAF5316, 0x1BB58910, 0x1BC95F18, 0x1BE15F18, \
0x1BF95316, 0x1BFFA90C, 0x1C188A14, 0x1C2E540E, \
0x1C363404, 0x1C3B6D14, 0x1C506614, 0x1C5B860C, \
0x1C690913, 0x1C91C512, 0x1CA3D70E, 0x1CBF9A0E, \
0x1CDBCD1A, 0x1D05CD1A, 0x1D2FCD1A, 0x1D59CD1A, \
0x1D83CD1A, 0x1DADCE1C, 0x1DDA2A15, 0x1E0CBD14, \
0x1E36BD1A, 0x1E60BD1A, 0x1E8ABD1A, 0x1EB4BC18, \
0x1EDB6D1A, 0x1EF06D1A, 0x1F056D1A, 0x1F1A6D1A, \
0x1F2F5F1A, 0x1F47BD1A, 0x1F71CD1A, 0x1F9BCD1A, \
0x1FC5CD1A, 0x1FEFCD1A, 0x2019CD1A, 0x2043970E, \
0x2057CB14, 0x207BAD1A, 0x209EBD1A, 0x20C8BD1A, \
0x20F2BD1A, 0x211C6F1A, 0x21345F1A, 0x214CAA14, \
0x21689B16, 0x21869B16, 0x21A49A14, 0x21C0AA14, \
0x21DC9A14, 0x21F89B16, 0x2216D70E, 0x22329B0E, \
0x22508B16, 0x22689B16, 0x22869A14, 0x22A29A14, \
0x22BE5B16, 0x22D05B16, 0x22E25A14, 0x22F35A14, \
0x23048912, 0x2318AA14, 0x23349B16, 0x23529B16, \
0x23709A14, 0x238C9A14, 0x23A89A14, 0x23C49910, \
0x23DD9A10, 0x23F9AB16, 0x2417AB16, 0x2435AA14, \
0x2451AA14, 0x246D5F18, 0x24855F18, 0x249DAE14, \
0x24C39D14, 0x24E62A14, 0x24EC5314, 0x24F28912, \
0x25068D16, 0x2522CA14, 0x2543CA14, 0x25642314, \
0x25663C14, 0x25733C14, 0x25806514, 0x2589770E, \
0x25993302, 0x259D9006, 0x25A03102, 0x25A26C14, \
0x25B69A14, 0x25D26A14, 0x25E38A14, 0x25F99A14, \
0x26159A14, 0x26318A14, 0x26478A14, 0x265D9912, \
0x26769A14, 0x26928A14, 0x26A8260C, 0x26AC480C, \
0x26B5870E, 0x26C5740A, 0x26CF770E, 0x26DF8A14, \
0x26F5DC14, 0x2723CA14, 0x2744A912, 0x275DAA14, \
0x2779B912, 0x2797A912, 0x27B0A912, 0x27C9BA14, \
0x27EAC912, 0x28085912, 0x28179912, 0x2830B912, \
0x284E9912, 0x2867D912, 0x288AB912, 0x28A8CA14, \
0x28C99912, 0x28E2CD14, 0x290CB912, 0x292A9A14, \
0x2946A912, 0x295FB912, 0x297DC912, 0x299B0913, \
0x29C3C912, 0x29E1B912, 0x29FF9912, 0x2A183B12, \
0x2A246C14, 0x2A383B12, 0x2A445214, 0x2A4981FA, \
0x2A4D9D14, 0x2A70970E, 0x2A849A14, 0x2AA0770E, \
0x2AB09A14, 0x2ACC870E, 0x2ADC6A14, 0x2AED9C10, \
0x2B0E9A14, 0x2B2A4912, 0x2B346D12, 0x2B499A14, \
0x2B655A14, 0x2B76F70E, 0x2B96A70E, 0x2BAA970E, \
0x2BBE9B0E, 0x2BDCAB0E, 0x2BFA770E, 0x2C0A770E, \
0x2C1A6912, 0x2C29A70E, 0x2C3D970E, 0x2C51C70E, \
0x2C69A70E, 0x2C7D9B0E, 0x2C9B770E, 0x2CAB5C12, \
0x2CBF2F16, 0x2CC76C12, 0x2CDB5214, 0x2CE08D14, \
0x2CFC9D14, 0x2D1F2A0E, 0x2D257B14, 0x2D3D9A14, \
0x2D599714, 0x2D6DB912, 0x2D8B2F16, 0x2D937A14, \
0x2DA95112, 0x2DACCB14, 0x2DD07714, 0x2DE0760C, \
0x2DEE730A, 0x2DF69D14, 0x2E19BB14, 0x2E3D5112, \
0x2E405316, 0x2E468810, 0x2E589D14, 0x2E7B9D14, \
0x2E9E4214, 0x2EA19A0C, 0x2EBD7A14, 0x2ED3440E, \
0x2ED82302, 0x2EDA8D14, 0x2EF66714, 0x2F02760C, \
0x2F100A15, 0x2F3CC614, 0x2F51C70E, 0x2F698A0E, \
0x2F7FCD1A, 0x2FA9CD1A, 0x2FD3BD1A, 0x2FFDCD1A, \
0x3027CC18, 0x304ECE1C, 0x307B0913, 0x30A3BD14, \
0x30CDAD1A, 0x30F0BD1A, 0x311ABD1A, 0x3144AC18, \
0x31654D1A, 0x31734D1A, 0x31814D1A, 0x318F5C18, \
0x31A39D14, 0x31C6BD1A, 0x31F0CD1A, 0x321ACD1A, \
0x3244CD1A, 0x326ECD1A, 0x3298CC18, 0x32BFA70E, \
0x32D3BB14, 0x32F7BD1A, 0x3321CD1A, 0x334BBD1A, \
0x3375BC18, 0x339C8D14, 0x33B88D14, 0x33D49A14, \
0x33F09A14, 0x340C9A14, 0x34289A14, 0x34449A14, \
0x34609912, 0x34799B16, 0x3497C70E, 0x34AF7A0E, \
0x34C58A14, 0x34DB8A14, 0x34F17A14, 0x35077912, \
0x351B5A14, 0x352C5A14, 0x353D5A14, 0x354E6912, \
0x355D7912, 0x35719A14, 0x358D8A14, 0x35A38A14, \
0x35B98A14, 0x35CF8A14, 0x35E58912, 0x35F9870E, \
0x36099910, 0x3622AA14, 0x363EAA14, 0x365AAA14, \
0x36769912, 0x368F8D14, 0x36AB8D14, 0x36C79D12, \
0x36EA6F18, 0x37024912, 0x370C7412, 0x37166B14, \
0x37288C14, 0x37427912, 0x37568810, 0x37684412, \
0x376D5C12, 0x37815C12, 0x37957612, 0x37A39710, \
0x37B74404, 0x37BCA108, 0x37C13306, 0x37C57B14, \
0x37DD8912, 0x37F17912, 0x38057912, 0x38198912, \
0x382D8912, 0x38417912, 0x38557912, 0x38697912, \
0x387D8912, 0x38918912, 0x38A5370E, 0x38AD480C, \
0x38B69710, 0x38CA940E, 0x38D79710, 0x38EB7912, \
0x38FF8B14, 0x3917A912, 0x39309912, 0x39498912, \
0x395D8912, 0x39719912, 0x398A9912, 0x39A39912, \
0x39BC9912, 0x39D57912, 0x39E99912, 0x3A029912, \
0x3A1B9912, 0x3A34A912, 0x3A4D9912, 0x3A669912, \
0x3A7F8912, 0x3A939B12, 0x3AB19912, 0x3ACA8912, \
0x3ADE8912, 0x3AF29912, 0x3B0B9912, 0x3B24A912, \
0x3B3D8912, 0x3B518912, 0x3B657912, 0x3B794C12, \
0x3B867B14, 0x3B9E4C12, 0x3BAB6214, 0x3BB0A2FC, \
0x3BB85F1A, 0x3BD0870E, 0x3BE09912, 0x3BF9870E, \
0x3C098912, 0x3C1D870E, 0x3C2D8912, 0x3C419A0E, \
0x3C5D8912, 0x3C718A14, 0x3C877D14, 0x3CA39912, \
0x3CBC8912, 0x3CD0A70E, 0x3CE4970E, 0x3CF8970E, \
0x3D0C9B0E, 0x3D2AAB0E, 0x3D48970E, 0x3D5C770E, \
0x3D6C8912, 0x3D80970E, 0x3D94970E, 0x3DA8A70E, \
0x3DBC870E, 0x3DCC9A0E, 0x3DE8770E, 0x3DF86D12, \
0x3E0D2F16, 0x3E156D12, 0x3E2A6212, 0x3E2F6F16, \
0x3E476F16, 0x3E5F4912, 0x3E697A14, 0x3E7F7912, \
0x3E938612, 0x3EA19912, 0x3EBA3F16, 0x3ECA8A12, \
0x3EE06112, 0x3EE3A812, 0x3EFA7712, 0x3F0A550C, \
0x3F13950E, 0x3F226E16, 0x3F399812, 0x3F506112, \
0x3F534316, 0x3F578812, 0x3F695F18, 0x3F815F18, \
0x3F995214, 0x3F9E9A0E, 0x3FBA7912, 0x3FCE320C, \
0x3FD14404, 0x3FD66D14, 0x3FEB7712, 0x3FFB650C, \
0x40048710, 0x40148310, 0x401C860E, 0x402A7912, \
0x403EAC18, 0x405FAC18, 0x4080AC18, 0x40A1AB16, \
0x40BFAB16, 0x40DDAD1A, 0x4100B912, 0x411E8C12, \
0x41388C18, 0x41529C18, 0x41739C18, 0x41948B16, \
0x41AC7C18, 0x41C67C18, 0x41E07C18, 0x41FA7B16, \
0x42125F1A, 0x422AAB16, 0x42489C18, 0x42699C18, \
0x428A9C18, 0x42AB9B16, 0x42C99B16, 0x42E7870E, \
0x42F79A12, 0x43139C18, 0x43349C18, 0x4355AC18, \
0x4376AB16, 0x43946F1A, 0x43AC5F1A, 0x43C48912, \
0x43D88A14, 0x43EE8A14, 0x44049A14, 0x44209912, \
0x44398912, 0x444D8B16, 0x4465970E, 0x44798A0E, \
0x448F8A14, 0x44A58A14, 0x44BB9A14, 0x44D79912, \
0x44F08A14, 0x45068A14, 0x451C7A14, 0x45327912, \
0x45468912, 0x455A9912, 0x45738A14, 0x45898A14, \
0x459F9912, 0x45B89912, 0x45D19912, 0x45EAA912, \
0x46039910, 0x461C9A14, 0x46389A14, 0x46548A14, \
0x466A9912, 0x46835F18, 0x469B5F18, 0x46B38C12, \
0x46CD3C16, 0x46DA3C16, 0x46E77516, 0x46F39A14, \
0x470F7E18, 0x472DDC16, 0x475BBC16, 0x47824516, \
0x47884F18, 0x47984F18, 0x47A85516, 0x47B1870E, \
0x47C15504, 0x47CA810A, 0x47CE4304, 0x47D28F18, \
0x47F29C16, 0x48134B16, 0x481F8B16, 0x48378C16, \
0x48519B16, 0x486F8C16, 0x48898C16, 0x48A38B16, \
0x48BB8C16, 0x48D58C16, 0x48EF380E, 0x48F84A0E, \
0x4903970E, 0x4917850C, 0x4923870E, 0x49337C16, \
0x494DCC16, 0x4974BB16, 0x49988B16, 0x49B09C16, \
0x49D1AB16, 0x49EF7B16, 0x4A077B16, 0x4A1FBC16, \
0x4A46AB16, 0x4A643B16, 0x4A706C16, 0x4A849B16, \
0x4AA26B16, 0x4AB4DC16, 0x4AE2AC16, 0x4B03CC16, \
0x4B2A8B16, 0x4B42CC16, 0x4B698B16, 0x4B818C16, \
0x4B9B7B16, 0x4BB39C16, 0x4BD4BC16, 0x4BFBFC16, \
0x4C2FAB16, 0x4C4DAB16, 0x4C6B9B16, 0x4C893E18, \
0x4C988C18, 0x4CB24E18, 0x4CC16316, 0x4CC781FC, \
0x4CCB3C16, 0x4CD8880E, 0x4CEA8D18, 0x4D06680E, \
0x4D149D18, 0x4D37880E, 0x4D495C18, 0x4D5D8B0E, \
0x4D757C18, 0x4D8F3B16, 0x4D9B3F16, 0x4DAB8C18, \
0x4DC53C18, 0x4DD2B70E, 0x4DEA770E, 0x4DFA980E, \
0x4E119B0E, 0x4E2F9B0E, 0x4E4D670E, 0x4E59680E, \
0x4E674912, 0x4E71780E, 0x4E83980E, 0x4E9AD80E, \
0x4EBAA70E, 0x4ECE9B0E, 0x4EEC770E, 0x4EFC5F18, \
0x4F142C18, 0x4F1B4F18, 0x4F2B7114, 0x4F2F3C16, \
0x4F3C3C10, 0x4F493B0E, 0x4F556A14, 0x4F669C16, \
0x4F879810, 0x4F9E9B16, 0x4FBC2C18, 0x4FC38E18, \
0x4FE16216, 0x4FE6DC16, 0x50146616, 0x501F7710, \
0x502F840C, 0x50393C1A, 0x5046DC16, 0x50747116, \
0x50784316, 0x507C8912, 0x50903C14, 0x509D3C14, \
0x50AA4316, 0x50AE7B0E, 0x50C6AE16, 0x50EC6610, \
0x50F75504, 0x51003C18, 0x510D6616, 0x51188710, \
0x5128FC16, 0x515CE616, 0x5175D80E, 0x51958B0E, \
0x51ADCC18, 0x51D4BC18, 0x51FBBC18, 0x5222BC18, \
0x5249CC18, 0x5270BC18, 0x5297FB16, 0x52C79E16, \
0x52ED6C18, 0x53016C18, 0x53157C18, 0x532F7C18, \
0x53494C18, 0x53564C18, 0x53636C18, 0x53777C18, \
0x53913C18, 0x539EAD18, 0x53C1CD18, 0x53EBCD18, \
0x5415CD18, 0x543FCD18, 0x5469CC18, 0x5490970E, \
0x54A4CC16, 0x54CB9D18, 0x54EE9D18, 0x55119D18, \
0x55349D18, 0x55573C18, 0x55643C18, 0x55719D18, \
0x55948C16, 0x55AE9C16, 0x55CF8C16, 0x55E99B14, \
0x56078C16, 0x56219C16, 0x5642C80E, 0x565D6A0E, \
0x566E8C16, 0x56887C16, 0x56A28C16, 0x56BC7C16, \
0x56D64B16, 0x56E24B16, 0x56EE6B16, 0x57007B16, \
0x57187B16, 0x57307A14, 0x57469C16, 0x57678C16, \
0x57818C16, 0x579B9B14, 0x57B99C16, 0x57DA880E, \
0x57EC980E, 0x58038C16, 0x581D8C16, 0x58378C16, \
0x58518C16, 0x586B3C16, 0x58783C16, 0x58859F16, \
0x58AD6F18, 0x58C55C16, 0x58D98516, 0x58E59B14, \
0x59038E18, 0x5921BC16, 0x5948AC16, 0x59695516, \
0x59724F18, 0x59825F18, 0x599A6516, 0x59A3970E, \
0x59B75504, 0x59C0810A, 0x59C43304, 0x59C8AF18, \
0x59F09C16, 0x5A115B16, 0x5A239B16, 0x5A418C16, \
0x5A5B9B16, 0x5A799C16, 0x5A9A9C16, 0x5ABBAC16, \
0x5ADC8C16, 0x5AF69C16, 0x5B17480E, 0x5B206A0E, \
0x5B31970E, 0x5B45950C, 0x5B54970E, 0x5B687C16, \
0x5B82CC16, 0x5BA9BB16, 0x5BCD9B16, 0x5BEB9C16, \
0x5C0CBB16, 0x5C309B16, 0x5C4E9B16, 0x5C6CBC16, \
0x5C93BB16, 0x5CB75B16, 0x5CC98C16, 0x5CE3BB16, \
0x5D077B16, 0x5D1FDC16, 0x5D4DCC16, 0x5D74DC16, \
0x5DA29B16, 0x5DC0CC16, 0x5DE79B16, 0x5E059C16, \
0x5E268B16, 0x5E3EAC16, 0x5E5FBC16, 0x5E860C17, \
0x5EBABB16, 0x5EDEAB16, 0x5EFCBB16, 0x5F205E18, \
0x5F376E18, 0x5F4E6E18, 0x5F655316, 0x5F6B91FC, \
0x5F706F1A, 0x5F88980E, 0x5F9F9D18, 0x5FC2680E, \
0x5FD0AD18, 0x5FF3880E, 0x60056C18, 0x60199B0E, \
0x60378C18, 0x60515B16, 0x60636F16, 0x607B9C18, \
0x609C5C18, 0x60B0C70E, 0x60C8870E, 0x60D8880E, \
0x60EA9B0E, 0x61089B0E, 0x6126770E, 0x6136680E, \
0x61446912, 0x6153780E, 0x6165980E, 0x617CD80E, \
0x619CA70E, 0x61B0AB0E, 0x61CEA70E, 0x61E26F18, \
0x61FA4C18, 0x62076F18, 0x621F7114, 0x62236F18, \
0x623B6F16, 0x62534B0E, 0x625F7A14, 0x6275AC16, \
0x6296A810, 0x62ADAB16, 0x62CB4C18, 0x62D88E18, \
0x62F66216, 0x62FBDC16, 0x63297616, 0x63378710, \
0x6347940C, 0x63546F18, 0x636CDC16, 0x639A6116, \
0x639D4316, 0x63A19912, 0x63BA6F18, 0x63D26F18, \
0x63EA5316, 0x63F09B0E, 0x640E9E16, 0x64346610, \
0x643F5504, 0x64486F18, 0x64607616, 0x646E8710, \
0x647EFA14, 0x64AAD514, 0x64BFC60C, 0x64D47B0E, \
0x64ECCC18, 0x6513BC18, 0x653ABC18, 0x6561CC18, \
0x6588CC18, 0x65AFBC18, 0x65D6FB16, 0x6606AE16, \
0x662C8C18, 0x66468C18, 0x66609C18, 0x66819C18, \
0x66A25C18, 0x66B66C18, 0x66CA7C18, 0x66E47C18, \
0x66FE6F1A, 0x6716CD18, 0x6740DD18, 0x6771CD18, \
0x679BCD18, 0x67C5CD18, 0x67EFDD18, 0x6820A70E, \
0x6834FC16, 0x6868AD18, 0x688BAD18, 0x68AEAD18, \
0x68D1AD18, 0x68F46F1A, 0x690C6F1A, 0x69249D18, \
0x69479C16, 0x69689C16, 0x69899C16, 0x69AA9B14, \
0x69C89C16, 0x69E99C16, 0x6A0AD80E, 0x6A2A7A0E, \
0x6A408C16, 0x6A5A8C16, 0x6A748C16, 0x6A8E8C16, \
0x6AA85B16, 0x6ABA5B16, 0x6ACC6B16, 0x6ADE6B16, \
0x6AF07B16, 0x6B089A14, 0x6B248C16, 0x6B3E9C16, \
0x6B5F9C16, 0x6B808B14, 0x6B988C16, 0x6BB2980E, \
0x6BC9980E, 0x6BE08C16, 0x6BFA8C16, 0x6C148C16, \
0x6C2E8C16, 0x6C486F18, 0x6C606F18, 0x6C78AF16, \
0x6CA06F18, 0x6CB82A14, 0x6CBE4314, 0x6CC29A14, \
0x6CDE8D16, 0x6CFADB14, 0x6D249B14, 0x6D422314, \
0x6D445D14, 0x6D594D14, 0x6D675414, 0x6D6F870E, \
0x6D7F2402, 0x6D829108, 0x6D872102, 0x6D885A14, \
0x6D998B14, 0x6DB15A14, 0x6DC28A14, 0x6DD88B14, \
0x6DF08A14, 0x6E068B14, 0x6E1E8B14, 0x6E368A14, \
0x6E4C8B14, 0x6E648B14, 0x6E7C270E, 0x6E802A0E, \
0x6E86970E, 0x6E9A850C, 0x6EA6970E, 0x6EBA7A14, \
0x6ED0DB14, 0x6EFAAA14, 0x6F169A14, 0x6F32AB14, \
0x6F509A14, 0x6F6C9A14, 0x6F889A14, 0x6FA4AB14, \
0x6FC2AA14, 0x6FDE2A14, 0x6FE47B14, 0x6FFC9A14, \
0x70188A14, 0x702EBA14, 0x704F9A14, 0x706BBB14, \
0x708F9A14, 0x70ABBB14, 0x70CF9A14, 0x70EB9B14, \
0x7109AA14, 0x71259B14, 0x7143AA14, 0x715FEA14, \
0x7186AA14, 0x71A2AA14, 0x71BE9A14, 0x71DA3D14, \
0x71E87A14, 0x71FE4D14, 0x720C5214, 0x721190FC, \
0x72145F1A, 0x722C8910, 0x72408B14, 0x72588910, \
0x726C7C16, 0x72868910, 0x729A6A14, 0x72AB8C10, \
0x72C57A14, 0x72DB2A14, 0x72E14E14, 0x72F07A14, \
0x73062A14, 0x730CB810, 0x73277810, 0x73398910, \
0x734D8C10, 0x73678C10, 0x73815810, 0x738F7910, \
0x73A34A12, 0x73AE780E, 0x73C0870E, 0x73D0B70E, \
0x73E8770E, 0x73F88B0E, 0x7410770E, 0x74205D14, \
0x74352A14, 0x743B6D14, 0x74506114, 0x74536F18, \
0x746B6F16, 0x74832A0E, 0x74898B12, 0x74A18B14, \
0x74B98710, 0x74C99A14, 0x74E52A14, 0x74EB7E14, \
0x75094114, 0x750BBA14, 0x752C5414, 0x7534650C, \
0x753D840A, 0x75476E16, 0x755EBA14, 0x757F6114, \
0x75823316, 0x7586870E, 0x75965F18, 0x75AE5F18, \
0x75C64214, 0x75C99B0E, 0x75E78D14, 0x7603430C, \
0x76072402, 0x760A6D14, 0x761F5414, 0x7627550C, \
0x7630FB14, 0x7660C514, 0x7672E80E, 0x76928A0E, \
0x76A8AD1A, 0x76CBAD1A, 0x76EEAD1A, 0x7711AD1A, \
0x7734AD1A, 0x7757AE1C, 0x777DFA14, 0x77A9AD14, \
0x77CC8D1A, 0x77E88D1A, 0x78048D1A, 0x78208C18, \
0x783A4D1A, 0x78483D1A, 0x78565D1A, 0x786B5D1A, \
0x78805F1A, 0x7898AD1A, 0x78BBCE1A, 0x78E8BE1A, \
0x7915BE1A, 0x7942BE1A, 0x796FCD18, 0x7999870E, \
0x79A9BB14, 0x79CD9E1A, 0x79F39E1A, 0x7A199E1A, \
0x7A3FAE1A, 0x7A656F1A, 0x7A7D5F1A, 0x7A958B14, \
0x7AAD8C16, 0x7AC78C16, 0x7AE18C16, 0x7AFB8B14, \
0x7B138B14, 0x7B2B8C16, 0x7B45D910, 0x7B687C10, \
0x7B828C16, 0x7B9C8C16, 0x7BB68C16, 0x7BD08B14, \
0x7BE84B16, 0x7BF44B16, 0x7C005B16, 0x7C124B16, \
0x7C1E7B14, 0x7C367A14, 0x7C4C8C16, 0x7C668C16, \
0x7C808C16, 0x7C9A8B14, 0x7CB28B14, 0x7CCA870E, \
0x7CDA8910, 0x7CEE7C16, 0x7D088C16, 0x7D227C16, \
0x7D3C7B14, 0x7D545F18, 0x7D6C5F18, 0x7D848E14, \
0x7DA26F16, 0x7DBA3A14, 0x7DC56414, 0x7DCD9A14, \
0x7DE98D16, 0x7E05EB14, 0x7E2FBB14, 0x7E533414, \
0x7E584D14, 0x7E664D14, 0x7E746414, 0x7E7C870E, \
0x7E8C3402, 0x7E91920A, 0x7E993102, 0x7E9B7A14, \
0x7EB18B14, 0x7EC95A14, 0x7EDA8A14, 0x7EF08B14, \
0x7F088A14, 0x7F1E8B14, 0x7F368B14, 0x7F4E8A14, \
0x7F648B14, 0x7F7C9B14, 0x7F9A370E, 0x7FA23A0E, \
0x7FADA80E, 0x7FC4960C, 0x7FD6980E, 0x7FED9A14, \
0x8009DC16, 0x8037BA14, 0x8058AA14, 0x8074BB14, \
0x8098AA14, 0x80B49A14, 0x80D09A14, 0x80ECBB14, \
0x8110AA14, 0x812C3A14, 0x81378B14, 0x814FAA14, \
0x816B9A14, 0x8187BA14, 0x81A8AA14, 0x81C4BB14, \
0x81E89A14, 0x8204BB14, 0x8228AA14, 0x8244AB14, \
0x8262AA14, 0x827E9B14, 0x829CAA14, 0x82B8FA14, \
0x82E4AA14, 0x8300AA14, 0x831C9A14, 0x83384D14, \
0x83466A14, 0x83575D14, 0x836C6216, 0x837190FC, \
0x83745F18, 0x838C8910, 0x83A09B14, 0x83BE8910, \
0x83D29B14, 0x83F09910, 0x84095A14, 0x841A8C10, \
0x84348A14, 0x844A3A14, 0x84554E14, 0x84648A14, \
0x847A2A14, 0x8480C810, 0x849B8810, 0x84AD9910, \
0x84C68C10, 0x84E09C10, 0x85015810, 0x850F8910, \
0x85235A14, 0x8534880E, 0x8546870E, 0x8556C70E, \
0x856E870E, 0x857E8B0E, 0x8596870E, 0x85A65D14, \
0x85BB3A14, 0x85C66D14, 0x85DB7216, 0x85E16F18, \
0x85F96F14, 0x86113A0E, 0x861C8B12, 0x86348B14, \
0x864C8710, 0x865C9A14, 0x86783A14, 0x86838D14, \
0x869F6114, 0x86A2BA14, 0x86C36514, 0x86CC750C, \
0x86D8950C, 0x86E75F16, 0x86FFBA14, 0x87206114, \
0x87234318, 0x8727970E, 0x873B5F16, 0x87535F16, \
0x876B4114, 0x876DAB0E, 0x878B9D14, 0x87AE430C, \
0x87B23402, 0x87B76F16, 0x87CF6514, 0x87D8650C, \
0x87E1EC14, 0x880FC512, 0x8821E90E, 0x88448A0E, \
0x885AAD1A, 0x887DBD1A, 0x88A7BD1A, 0x88D1BD1A, \
0x88FBAD1A, 0x891EBE1C, 0x894BFA14, 0x8977AE14, \
0x899D9D1A, 0x89C09D1A, 0x89E39D1A, 0x8A069D1A, \
0x8A294D1A, 0x8A374D1A, 0x8A456D1A, 0x8A5A6D1A, \
0x8A6F5F18, 0x8A87AD1A, 0x8AAABE1A, 0x8AD7BE1A, \
0x8B04BE1A, 0x8B31BE1A, 0x8B5EBE1A, 0x8B8B870E, \
0x8B9BBB14, 0x8BBF9E1A, 0x8BE59E1A, 0x8C0BAE1A, \
0x8C31AE1A, 0x8C575F18, 0x8C6F5F18, 0x8C878B14, \
0x8C9F8B14, 0x8CB79B14, 0x8CD58C16, 0x8CEF8C16, \
0x8D098B14, 0x8D219D18, 0x8D44D910, 0x8D678C10, \
0x8D818B14, 0x8D999B14, 0x8DB79C16, 0x8DD88B14, \
0x8DF05A14, 0x8E015A14, 0x8E125A14, 0x8E236A14, \
0x8E348B14, 0x8E4C8B16, 0x8E649B14, 0x8E829B14, \
0x8EA09C16, 0x8EC19C16, 0x8EE29B14, 0x8F00870E, \
0x8F10A910, 0x8F298B14, 0x8F418B14, 0x8F598C16, \
0x8F738C16, 0x8F8D5F18, 0x8FA55F18, 0x8FBD8F16, \
0x8FDD6F16, 0x8FF54A12, 0x90004312, 0x90049A12, \
0x90209C14, 0x9041BA12, 0x90628A12, 0x90782312, \
0x907A6C12, 0x908E5C12, 0x90A25412, 0x90AA870C, \
0x90BA3300, 0x90BE8006, 0x90C02100, 0x90C17A12, \
0x90D78A12, 0x90ED5A12, 0x90FE9A12, 0x911A8A12, \
0x91308A12, 0x91469A12, 0x91628A12, 0x91788A12, \
0x918E8A12, 0x91A47A12, 0x91BA370E, 0x91C24A0E, \
0x91CD980E, 0x91E4940A, 0x91F1980E, 0x92087A12, \
0x921ECB14, 0x9242AA12, 0x925E9A12, 0x927ABB14, \
0x929EAA12, 0x92BABA12, 0x92DBAA12, 0x92F7BB14, \
0x931BBA12, 0x933C4A12, 0x93478A12, 0x935DBA12, \
0x937E8A12, 0x9394CA12, 0x93B5AA12, 0x93D1BB14, \
0x93F5AA12, 0x9411BB14, 0x9435AA12, 0x94519B14, \
0x946F9A12, 0x948BAA12, 0x94A7AA12, 0x94C3DA12, \
0x94EABA12, 0x950B9A12, 0x9527BA12, 0x95485C12, \
0x955C3A12, 0x95675C12, 0x957B5112, 0x957E80FC, \
0x95803F18, 0x9590780E, 0x95A29A12, 0x95BE880E, \
0x95D09A12, 0x95EC880E, 0x95FE5A12, 0x960F9B0E, \
0x962D8A12, 0x96434A12, 0x964E6D12, 0x96638A12, \
0x96794A12, 0x9684C80E, 0x969F880E, 0x96B1880E, \
0x96C39B0E, 0x96E18B0E, 0x96F9680E, 0x9707780E, \
0x97195A12, 0x972A880E, 0x973C880E, 0x974EA80E, \
0x9765980E, 0x977C9B0E, 0x979A880E, 0x97AC7C12, \
0x97C63A12, 0x97D16C12, 0x97E56112, 0x97E86F18, \
0x98004F14, 0x98104A0E, 0x981B8A10, 0x98319A12, \
0x984D860E, 0x985B9A12, 0x98774A12, 0x98827D12, \
0x989E5112, 0x98A1BA12, 0x98C25514, 0x98CB740A, \
0x98D5840A, 0x98DF5F14, 0x98F7BA12, 0x99185112, \
0x991B3214, 0x991E870C, 0x992E5F16, 0x99465F16, \
0x995E3112, 0x9960BB0E, 0x99848C12, 0x999E330C, \
0x99A22300, 0x99A46F16, 0x99BC5514, 0x99C5640A, \
0x99CDFB14, 0x99FDB412, 0x9A0CD80E, 0x9A2C7A0E, \
0x9A42AD18, 0x9A65AD18, 0x9A889D18, 0x9AABAD18, \
0x9ACEAD18, 0x9AF1AE1A, 0x9B17FA12, 0x9B43BE14, \
0x9B70BD18, 0x9B9AAD18, 0x9BBDAD18, 0x9BE0AD18, \
0x9C035D18, 0x9C186D18, 0x9C2D6D18, 0x9C426D18, \
0x9C573F18, 0x9C67BD18, 0x9C91BD18, 0x9CBBBD18, \
0x9CE5BD18, 0x9D0FBD18, 0x9D39BD18, 0x9D63980E, \
0x9D7ADB14, 0x9DA4AD18, 0x9DC7AD18, 0x9DEAAD18, \
0x9E0DAD18, 0x9E305F18, 0x9E485F18, 0x9E608A12, \
0x9E768B14, 0x9E8E8B14, 0x9EA68B14, 0x9EBE8B14, \
0x9ED68A12, 0x9EEC8C16, 0x9F06D80E, 0x9F267B0E, \
0x9F3E8B14, 0x9F567B14, 0x9F6E8B14, 0x9F868A12, \
0x9F9C3B14, 0x9FA85B14, 0x9FBA5B14, 0x9FCC5A12, \
0x9FDD8A12, 0x9FF38B14, 0xA00B8B14, 0xA0238B14, \
0xA03B8B14, 0xA0538B14, 0xA06B8A12, 0xA081860C, \
0xA08F980E, 0xA0A67B14, 0xA0BE8B14, 0xA0D68B14, \
0xA0EE8A12, 0xA1045E16, 0xA11B5E16, 0xA1329D12, \
0xA1556F1A, 0xA16D1B16, 0xA1735316, 0xA1797B16, \
0xA1915D18, 0xA1A67B16, 0xA1BE5B16, 0xA1D02316, \
0xA1D22F18, 0xA1DA2F18, 0xA1E23316, 0xA1E6540C, \
0xA1EE2404, 0xA1F15008, 0xA1F31204, 0xA1F53A16, \
0xA2004B16, 0xA20C2B16, 0xA2124B16, 0xA21E5B16, \
0xA2304B16, 0xA23C5B16, 0xA24E4B16, 0xA25A5B16, \
0xA26C4B16, 0xA2785B16, 0xA28A1710, 0xA28E280E, \
0xA2936810, 0xA2A1530C, 0xA2A75810, 0xA2B54B16, \
0xA2C17C18, 0xA2DB5B16, 0xA2ED4B16, 0xA2F96C18, \
0xA30D5B16, 0xA31F5B16, 0xA3315C18, 0xA3456C18, \
0xA3595B16, 0xA36B2A16, 0xA3714B16, 0xA37D6B16, \
0xA38F5B16, 0xA3A17B16, 0xA3B96B16, 0xA3CB6C18, \
0xA3DF5B16, 0xA3F16D18, 0xA4065C18, 0xA41A6C18, \
0xA42E6A16, 0xA43F5B16, 0xA4516B16, 0xA4638C18, \
0xA47D5B16, 0xA48F5B16, 0xA4A15B16, 0xA4B32E16, \
0xA4BB3A16, 0xA4C62E16, 0xA4CE531A, 0xA4D470FC, \
0xA4D65F1C, 0xA4EE4810, 0xA4F75B16, 0xA5095912, \
0xA5185B16, 0xA52A5810, 0xA5383C18, 0xA5454B10, \
0xA5514B16, 0xA55D2B16, 0xA5632E16, 0xA56B4B16, \
0xA5772B16, 0xA57D6810, 0xA58B4810, 0xA5945912, \
0xA5A34B10, 0xA5AF5B10, 0xA5C13810, 0xA5CA5912, \
0xA5D93A14, 0xA5E44810, 0xA5ED5810, 0xA5FB6810, \
0xA6094810, 0xA6125B10, 0xA6245810, 0xA6324E16, \
0xA6412E16, 0xA6494E16, 0xA6586116, 0xA65B6C18, \
0xA66F5E16, 0xA6862B10, 0xA68C5C14, 0xA6A04B16, \
0xA6AC5712, 0xA6B84A16, 0xA6C32B16, 0xA6C94E16, \
0xA6D83116, 0xA6DA7B16, 0xA6F23618, 0xA6F9650E, \
0xA702440C, 0xA7076B16, 0xA7197B16, 0xA7317016, \
0xA7332218, 0xA735570E, 0xA7415F1A, 0xA7595F1A, \
0xA7712116, 0xA7725B10, 0xA7845E16, 0xA79B230E, \
0xA79D2300, 0xA79F6D16, 0xA7B43618, 0xA7BB640C, \
0xA7C38B16, 0xA7DB7516, 0xA7E78810, 0xA7F95B10, \
0xA80B5E1C, 0xA8225E1C, 0xA8395E1C, 0xA8506E1C, \
0xA8675D1A, 0xA87C5F1E, 0xA8948B16, 0xA8AC6F18, \
0xA8C45F1E, 0xA8DC5E1C, 0xA8F35F1E, 0xA90B5D1A, \
0xA9202E1C, 0xA9282E1C, 0xA9305F1E, 0xA9484D1A, \
0xA9565F1C, 0xA96E6E1C, 0xA9857E1C, 0xA9A37E1C, \
0xA9C17F1E, 0xA9E17E1C, 0xA9FF7D1A, 0xAA1B4810, \
0xAA246C18, 0xAA386E1C, 0xAA4F6E1C, 0xAA666F1E, \
0xAA7E6D1A, 0xAA936F1C, 0xAAAB5F1C, 0xAAC34B16, \
0xAACF5B16, 0xAAE15B16, 0xAAF35C18, 0xAB076B16, \
0xAB194A14, 0xAB245C18, 0xAB387810, 0xAB4A4B10, \
0xAB565B16, 0xAB685B16, 0xAB7A5C18, 0xAB8E4A14, \
0xAB992B16, 0xAB9F2B16, 0xABA55B16, 0xABB74A14, \
0xABC24B16, 0xABCE6B16, 0xABE05B16, 0xABF25B16, \
0xAC045C18, 0xAC186B16, 0xAC2A4A14, 0xAC35560E, \
0xAC405810, 0xAC4E5B16, 0xAC604B16, 0xAC6C5C18, \
0xAC804A14, 0xAC8B5F1A, 0xACA36F1A, 0xACBB4D14, \
0xACC96F1A, 0xACE12C18, 0xACE85318, 0xACEE8C18, \
0xAD087E18, 0xAD266B16, 0xAD388C18, 0xAD522318, \
0xAD543F18, 0xAD643F18, 0xAD745318, 0xAD7A8710, \
0xAD8A2302, 0xAD8C710A, 0xAD902102, 0xAD915E1A, \
0xADA85B16, 0xADBA4B16, 0xADC65B16, 0xADD85B16, \
0xADEA7B16, 0xAE025B16, 0xAE145B16, 0xAE267B16, \
0xAE3E5B16, 0xAE505B16, 0xAE622710, 0xAE662910, \
0xAE6B7A12, 0xAE81740C, 0xAE8B7A12, 0xAEA16C18, \
0xAEB58C18, 0xAECF7C18, 0xAEE96C18, 0xAEFD6C18, \
0xAF116C18, 0xAF255C18, 0xAF395C18, 0xAF4D6C18, \
0xAF616C18, 0xAF752C18, 0xAF7C6C18, 0xAF908C18, \
0xAFAA5C18, 0xAFBE8C18, 0xAFD87C18, 0xAFF26C18, \
0xB0066C18, 0xB01A7C18, 0xB0346C18, 0xB0486C18, \
0xB05C6C18, 0xB0706C18, 0xB0847C18, 0xB09EAC18, \
0xB0BF8C18, 0xB0D98C18, 0xB0F36C18, 0xB1073F1C, \
0xB1175E1A, 0xB12E3F1C, 0xB13E5216, 0xB14380FC, \
0xB1455F1C, 0xB15D5912, 0xB16C5C18, 0xB1805810, \
0xB18E5C18, 0xB1A25912, 0xB1B14C18, 0xB1BE5C12, \
0xB1D25C18, 0xB1E62C18, 0xB1ED4F18, 0xB1FD6C18, \
0xB2112C18, 0xB2187912, 0xB22C5912, 0xB23B5912, \
0xB24A5C12, 0xB25E5C12, 0xB2725912, 0xB2815A14, \
0xB2924B16, 0xB29E5810, 0xB2AC7810, 0xB2BE8810, \
0xB2D07810, 0xB2E27A10, 0xB2F85810, 0xB3065E16, \
0xB31D1C18, 0xB3245E16, 0xB33B6116, 0xB33E6C18, \
0xB3525E16, 0xB3692B10, 0xB36F6C14, 0xB3837B16, \
0xB39B7914, 0xB3AF8B16, 0xB3C71C18, 0xB3CE7D16, \
0xB3EA4016, 0xB3EB7B16, 0xB4033618, 0xB40AA912, \
0xB423820C, 0xB4296B16, 0xB43B7B16, 0xB4538016, \
0xB4553218, 0xB4588A14, 0xB46E3418, 0xB4733418, \
0xB4783118, 0xB47A8A10, 0xB4906E16, 0xB4A7430E, \
0xB4AB2302, 0xB4AD3418, 0xB4B23618, 0xB4B9A912, \
0xB4D28B16, 0xB4EA8216, 0xB4F08910, 0xB5046B10, \
0xB5167E1C, 0xB5347E1C, 0xB5527F1E, 0xB5727E1C, \
0xB5907E1C, 0xB5AE7F1E, 0xB5CE8C18, 0xB5E86E18, \
0xB5FF5F1E, 0xB6175F1E, 0xB62F5F1E, 0xB6475E1C, \
0xB65E3F1E, 0xB66E3F1E, 0xB67E5F1E, 0xB6964E1C, \
0xB6A57C18, 0xB6BF7E1C, 0xB6DD6F1E, 0xB6F56F1E, \
0xB70D6F1E, 0xB7256F1E, 0xB73D6E1C, 0xB7547812, \
0xB7668C18, 0xB7806E1C, 0xB7976E1C, 0xB7AE6E1C, \
0xB7C56D1A, 0xB7DA8D1A, 0xB7F68E1C, 0xB8146D1A, \
0xB8295B16, 0xB83B5B16, 0xB84D5C18, 0xB8616B16, \
0xB8735A14, 0xB8845C18, 0xB8988912, 0xB8AC5D12, \
0xB8C15B16, 0xB8D35B16, 0xB8E55B16, 0xB8F75A14, \
0xB9083B16, 0xB9143B16, 0xB9205B16, 0xB9324A14, \
0xB93D5B16, 0xB94F6B16, 0xB9615B16, 0xB9735B16, \
0xB9855C18, 0xB9996B16, 0xB9AB5A14, 0xB9BC8710, \
0xB9CC7B14, 0xB9E45B16, 0xB9F65B16, 0xBA085B16, \
0xBA1A5A14, 0xBA2B7C16, 0xBA455C16, 0xBA597B14, \
0xBA716F18, 0xBA893B16, 0xBA956414, 0xBA9D6912, \
0xBAAC6D16, 0xBAC17B14, 0xBAD97B14, 0xBAF14414, \
0xBAF64D16, 0xBB043D16, 0xBB127912, 0xBB266912, \
0xBB353302, 0xBB39610A, 0xBB3C3202, 0xBB3F8D16, \
0xBB5B6B16, 0xBB6D5B16, 0xBB7F7B16, 0xBB976B16, \
0xBBA97B16, 0xBBC17B16, 0xBBD97B16, 0xBBF16B16, \
0xBC037B16, 0xBC1B7B16, 0xBC333810, 0xBC3C3910, \
0xBC467C18, 0xBC60730E, 0xBC687C18, 0xBC826B16, \
0xBC947B16, 0xBCAC7B16, 0xBCC47B16, 0xBCDC6B16, \
0xBCEE7B16, 0xBD067B16, 0xBD1E7B16, 0xBD367B16, \
0xBD4E8B16, 0xBD665B16, 0xBD786B16, 0xBD8A8B16, \
0xBDA27B16, 0xBDBA7B16, 0xBDD27B16, 0xBDEA6B16, \
0xBDFC8B16, 0xBE147C16, 0xBE2E7B16, 0xBE466B16, \
0xBE587B16, 0xBE707B16, 0xBE887B16, 0xBEA08B16, \
0xBEB87B16, 0xBED07B16, 0xBEE87B16, 0xBF003D18, \
0xBF0E8D16, 0xBF2A3D18, 0xBF387114, 0xBF3CA0FA, \
0xBF3F6F1A, 0xBF577810, 0xBF69AB16, 0xBF878810, \
0xBF997B16, 0xBFB17810, 0xBFC36B16, 0xBFD58910, \
0xBFE97B16, 0xC0015B16, 0xC0134C16, 0xC0208B16, \
0xC0384B16, 0xC0447810, 0xC0567810, 0xC0686810, \
0xC0767910, 0xC08A7910, 0xC09E6810, 0xC0AC6810, \
0xC0BA5A14, 0xC0CB7810, 0xC0DD7810, 0xC0EF8810, \
0xC1018810, 0xC1137910, 0xC1276810, 0xC1354D18, \
0xC1432D18, 0xC14A4D18, 0xC1585116, 0xC15B6F1C, \
0xC2276F16, 0xC23F6F16, 0xC1738A16, 0xC189AB16, \
0xC2576F16, 0xC1A7C914, 0xC1C52D16, 0xC1CC6A16, \
0xC1DD6116, 0xC26F6F16, 0xC2876F16, 0xC1E07D18, \
0xC1FCC40C, 0xC20B7D18, 0xC29F6F16, 0xC2B76F16, \
0xC2CF4318, 0xC2D3A914, 0xC2ECA912, 0xC305AB16, \
0xC4126F18, 0xC323A910, 0xC33C8914, 0xC350430E, \
0xC3543404, 0xC359DB14, 0xC383A016, 0xC386DB16, \
0xC3B0ED18, 0xC3E1ED18, 0xC42A6F18, 0xC4426F18, \
0xC45AA20E, 0xC4624306, 0xC4666D18, 0xC47BA810, \
0xC4925A18, 0xC4A35A12, 0xC4B46A18, 0xC4C57A12, \
0xC4DB5D18, 0xC4F05D18, 0xC5055D18, 0xC51A6D18, \
0xC52FD914, 0xC552D914, 0xC575B914, 0xC593E510, \
0xC5A8F50E, 0xC5C07D16, 0xC5DC6D16, 0xC5F1EB14, \
0xC61BEB14, 0xC645D912, 0xC668D912, 0xC68BAD16, \
0xC6AEAD16, 0xC6D1FA14, 0xC6FD9C16, 0xC71E6F16, \
0xC7366F16, 0xC74E6F16, 0xC7666F16, 0xC77E6F16, \
0xC796E612, 0xC7AFA810, 0xC7C65118, 0xC7C96318, \
0xC7CF3418, 0xC7D44810, 0xC7DDD30E, 0xC7EBA30E, \
0xC7F55D18, 0xC80AC20E, 0xC8138B16, 0xC82BB912, \
0xC8496F1A, 0xC8616F1A, 0xC8796F1A, 0xC8916F1A, \
0xC8A90F17, 0xC8E9960E, 0xC8FB7810, 0xC90D960E, \
0xC91F7810, 0xC9319E14, 0xC957F810, 0xC97B9E16, \
0xC9A1F810, 0xC9C5CC14, 0xC9ECDC16, 0xCA1ADC14, \
0xCA48DC14, 0xCA76EF16, 0xCAAE070F, 0xCACE070F, \
0xCAEE8F16, 0xCB0EED14, 0xCB3FED14, 0xCB70ED14, \
0xCBA1EF16, 0xCBD9CB12, 0xCBFDCB12, 0xCC21CB12

.section .text
.subsection 4
func_801D2040:
    lui     a3, 0x801E                 # a3 = 801E0000
    addiu   a3, a3, 0x5E78             # a3 = 801E5E78
    lw      a0, 0x0000(a3)             # 801E5E78
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    lw      v0, 0x000C(a0)             # 0000000C
    lw      v1, 0x0010(a0)             # 00000010
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    or      t6, v0, v1                 # t6 = 00000000
    srl     t7, t6, 16
    bne     t7, $zero, lbl_801D2088
    addiu   v0, v0, 0x0018             # v0 = 00000018
    sltiu   $at, v0, 0x10DC
    beq     $at, $zero, lbl_801D2088
    addu    t8, v0, v1
    sltiu   $at, t8, 0x10DD
    bne     $at, $zero, lbl_801D209C
    lui     t2, 0x801E                 # t2 = 801E0000
lbl_801D2088:
    sb      t9, 0x0005(a0)             # 00000005
    lw      t1, 0x0000(a3)             # 801E5E78
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    beq     $zero, $zero, lbl_801D2158
    sb      t0, 0x0004(t1)             # 00000004
lbl_801D209C:
    lbu     t2, 0x5E88(t2)             # 801E5E88
    lui     t4, 0x801E                 # t4 = 801E0000
    addiu   t5, $zero, 0x0021          # t5 = 00000021
    sll     t3, t2,  1
    addu    t4, t4, t3
    lhu     t4, -0x6968(t4)            # 801D9698
    sltu    $at, v0, t4
    beq     $at, $zero, lbl_801D20D4
    nop
    sb      t5, 0x0005(a0)             # 00000005
    lw      t7, 0x0000(a3)             # 801E5E78
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    beq     $zero, $zero, lbl_801D2158
    sb      t6, 0x0004(t7)             # 00000004
lbl_801D20D4:
    bne     v1, $zero, lbl_801D20EC
    ori     t9, $zero, 0x8000          # t9 = 00008000
    sb      $zero, 0x0005(a0)          # 00000005
    lw      t8, 0x0000(a3)             # 801E5E78
    beq     $zero, $zero, lbl_801D2158
    sb      $zero, 0x0004(t8)          # 00000004
lbl_801D20EC:
    lui     $at, 0x801E                # $at = 801E0000
    sh      t9, 0x5E86($at)            # 801E5E86
    lui     $at, 0x801E                # $at = 801E0000
    lui     a0, 0x801E                 # a0 = 801E0000
    sh      v0, 0x5E90($at)            # 801E5E90
    jal     func_80005EC0              # osStartThread
    addiu   a0, a0, 0x5438             # a0 = 801E5438
    lui     a0, 0x801E                 # a0 = 801E0000
    addiu   a0, a0, 0x5E18             # a0 = 801E5E18
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFFC
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t0, 0x002C($sp)
    lui     a3, 0x801E                 # a3 = 801E0000
    lui     $at, 0x0009                # $at = 00090000
    beq     t0, $at, lbl_801D2148
    addiu   a3, a3, 0x5E78             # a3 = 801E5E78
    lw      t1, 0x0000(a3)             # 801E5E78
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sb      t0, 0x0005(t1)             # 00000005
    lw      t3, 0x0000(a3)             # 801E5E78
    beq     $zero, $zero, lbl_801D2158
    sb      t2, 0x0004(t3)             # 00000004
lbl_801D2148:
    lw      t4, 0x0000(a3)             # 801E5E78
    sb      $zero, 0x0005(t4)          # 00000005
    lw      t5, 0x0000(a3)             # 801E5E78
    sb      $zero, 0x0004(t5)          # 00000004
lbl_801D2158:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop
    nop
    nop


func_801D2170:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    lui     t6, 0x801E                 # t6 = 801E0000
    lw      t6, -0x7210(t6)            # 801D8DF0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0088($sp)
    sw      a1, 0x008C($sp)
    sw      a2, 0x0090($sp)
    beq     t6, $zero, lbl_801D219C
    sw      a3, 0x0094($sp)
    beq     $zero, $zero, lbl_801D2394
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801D219C:
    jal     func_801CE120
    nop
    bne     v0, $zero, lbl_801D21B4
    nop
    beq     $zero, $zero, lbl_801D2394
    addiu   v0, $zero, 0x0029          # v0 = 00000029
lbl_801D21B4:
    jal     func_801CC0F0
    nop
    jal     func_80001600              # osCartRomInit
    nop
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x801E                # $at = 801E0000
    lui     a1, 0x801D                 # a1 = 801D0000
    lui     a2, 0x801E                 # a2 = 801E0000
    sw      v0, 0x0084($sp)
    sw      t7, -0x7210($at)           # 801D8DF0
    addiu   a2, a2, 0x7800             # a2 = 801E7800
    addiu   a1, a1, 0x23B0             # a1 = 801D23B0
    jal     func_80006010
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      a0, 0x0088($sp)
    lw      a1, 0x008C($sp)
    lw      a2, 0x0090($sp)
    jal     func_801CA7D0
    lw      a3, 0x0094($sp)
    lui     t8, 0x8000                 # t8 = 80000000
    lw      t8, 0x030C(t8)             # 8000030C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t8, $at, lbl_801D2220
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    jal     func_801CAB94
    nop
    addiu   t9, $zero, 0x0002          # t9 = 00000002
lbl_801D2220:
    sb      t9, 0x006C($sp)
    sb      $zero, 0x006D($sp)
    sb      $zero, 0x006E($sp)
    sb      $zero, 0x006F($sp)
    jal     func_801CA9A4
    addiu   a0, $sp, 0x006C            # a0 = FFFFFFE4
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    addiu   a3, $sp, 0x006C            # a3 = FFFFFFE4
    and     t0, a3, $at
    sw      t0, 0x0024($sp)
    lw      t1, 0x0024($sp)
    lui     v0, 0x801D                 # v0 = 801D0000
    addiu   v0, v0, 0xAB94             # v0 = 801CAB94
    blez    t1, lbl_801D228C
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t2, v0, $at
    lui     $at, 0x0040                # $at = 00400000
    ori     $at, $at, 0x3DF4           # $at = 00403DF4
    or      v0, t2, $at                # v0 = 00403DF4
    lw      t4, 0x0024($sp)
lbl_801D2278:
    subu    t5, t4, v0
    sw      t5, 0x0024($sp)
    lw      t6, 0x0024($sp)
    bgtzl   t6, lbl_801D2278
    lw      t4, 0x0024($sp)
lbl_801D228C:
    lbu     t7, 0x0070($sp)
    addiu   v0, $zero, 0x0008          # v0 = 00000008
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    bne     v0, t7, lbl_801D22AC
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lbu     t8, 0x0070($sp)
lbl_801D22A4:
    beql    v0, t8, lbl_801D22A4
    lbu     t8, 0x0070($sp)
lbl_801D22AC:
    lbu     t9, 0x0070($sp)
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x6800             # v0 = 801E6800
    beql    t9, $zero, lbl_801D22CC
    lbu     t0, 0x0079($sp)
    beq     $zero, $zero, lbl_801D2394
    lbu     v0, 0x0071($sp)
    lbu     t0, 0x0079($sp)
lbl_801D22CC:
    lbu     t2, 0x0078($sp)
    lbu     t3, 0x007A($sp)
    sb      t0, 0x0000(v0)             # 801E6800
    lbu     v1, 0x0000(v0)             # 801E6800
    sb      t1, 0x0001(v0)             # 801E6801
    sb      t2, 0x0002(v0)             # 801E6802
    andi    t4, v1, 0x000F             # t4 = 00000000
    or      v1, t4, $zero              # v1 = 00000000
    bne     t4, $at, lbl_801D2300
    sb      t3, 0x0003(v0)             # 801E6803
    lui     $at, 0x801E                # $at = 801E0000
    beq     $zero, $zero, lbl_801D2390
    sw      $zero, 0x5E9C($at)         # 801E5E9C
lbl_801D2300:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v1, $at, lbl_801D2314
    lw      a0, 0x0084($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v1, $at, lbl_801D2388
lbl_801D2314:
    lui     a1, 0x0009                 # a1 = 00090000
    ori     a1, a1, 0xFF00             # a1 = 0009FF00
    addiu   a2, $sp, 0x0028            # a2 = FFFFFFA0
    jal     func_80005630
    sw      a3, 0x001C($sp)
    lw      v1, 0x0028($sp)
    lui     $at, 0xFF00                # $at = FF000000
    lui     t7, 0x3ED9                 # t7 = 3ED90000
    and     t5, v1, $at
    srl     v1, t5, 24
    ori     t7, t7, 0x8F23             # t7 = 3ED98F23
    addiu   $at, $zero, 0x00C3         # $at = 000000C3
    lw      a3, 0x001C($sp)
    beq     v1, $at, lbl_801D2358
    sw      t7, 0x0020($sp)
lbl_801D2350:
    beq     $zero, $zero, lbl_801D2350
    nop
lbl_801D2358:
    lw      t8, 0x0020($sp)
    lui     t2, 0xE848                 # t2 = E8480000
    ori     t2, t2, 0xD316             # t2 = E848D316
    multu   t8, v1
    lui     $at, 0x801E                # $at = 801E0000
    sw      t2, 0x5E9C($at)            # 801E5E9C
    mflo    t9
    sw      t9, 0x0020($sp)
    lw      t0, 0x0020($sp)
    subu    t1, t0, a3
    beq     $zero, $zero, lbl_801D2390
    sw      t1, 0x0020($sp)
lbl_801D2388:
    beq     $zero, $zero, lbl_801D2388
    nop
lbl_801D2390:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801D2394:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0088           # $sp += 0x88
    jr      $ra
    nop
    nop
    nop
    nop


func_801D23B0:
    lui     t2, 0x801E                 # t2 = 801E0000
    addiu   t2, t2, 0x5F64             # t2 = 801E5F64
    lw      t0, 0x0000(t2)             # 801E5F64
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x001C($sp)
    lui     v1, 0xA460                 # v1 = A4600000
    ori     v1, v1, 0x0010             # v1 = A4600010
    lw      t8, 0x0000(v1)             # A4600010
    lhu     t6, 0x001A(t0)             # 0000001A
    addiu   t0, t0, 0x0014             # t0 = 00000014
    sw      t8, 0x0030($sp)
    lw      t9, 0x0030($sp)
    sll     t7, t6,  3
    addu    t7, t7, t6
    sll     t7, t7,  2
    addu    t1, t0, t7
    andi    t5, t9, 0x0001             # t5 = 00000000
    beq     t5, $zero, lbl_801D2428
    addiu   t1, t1, 0x0018             # t1 = 00000018
    lui     a0, 0x8000                 # a0 = 80000000
    addiu   a0, a0, 0x6360             # a0 = 80006360
    lw      t6, 0x0000(a0)             # 80006360
    addiu   $at, $zero, 0xF7FF         # $at = FFFFF7FF
    addiu   t8, $zero, 0x001D          # t8 = 0000001D
    and     t7, t6, $at
    sw      t7, 0x0000(a0)             # 80006360
    jal     func_801D29C4
    sw      t8, 0x0000(t1)             # 00000018
    beq     $zero, $zero, lbl_801D2900
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_801D2428:
    lw      t9, 0x0000(v1)             # 00000000
    lui     a0, 0xA500                 # a0 = A5000000
    ori     a0, a0, 0x0508             # a0 = A5000508
    sw      t9, 0x0030($sp)
    lw      t5, 0x0030($sp)
    lui     $at, 0x0100                # $at = 01000000
    andi    t6, t5, 0x0003             # t6 = 00000000
    beql    t6, $zero, lbl_801D2468
    lw      a1, 0x0000(a0)             # A5000508
    lw      t7, 0x0000(v1)             # 00000000
lbl_801D2450:
    sw      t7, 0x0030($sp)
    lw      t8, 0x0030($sp)
    andi    t9, t8, 0x0003             # t9 = 00000000
    bnel    t9, $zero, lbl_801D2450
    lw      t7, 0x0000(v1)             # 00000000
    lw      a1, 0x0000(a0)             # A5000508
lbl_801D2468:
    lui     t3, 0x0200                 # t3 = 02000000
    sll     t5, a1,  6
    bgezl   t5, lbl_801D24C8
    lw      v0, 0x0000(t0)             # 00000000
    lw      t6, 0x0000(v1)             # 00000000
    sw      t6, 0x0030($sp)
    lw      t7, 0x0030($sp)
    andi    t8, t7, 0x0003             # t8 = 00000000
    beql    t8, $zero, lbl_801D24AC
    lw      t7, 0x0010(t0)             # 00000010
    lw      t9, 0x0000(v1)             # 00000000
lbl_801D2494:
    sw      t9, 0x0030($sp)
    lw      t5, 0x0030($sp)
    andi    t6, t5, 0x0003             # t6 = 00000000
    bnel    t6, $zero, lbl_801D2494
    lw      t9, 0x0000(v1)             # 00000000
    lw      t7, 0x0010(t0)             # 00000010
lbl_801D24AC:
    lui     t9, 0xA500                 # t9 = A5000000
    or      v0, $zero, $zero           # v0 = 00000000
    or      t8, t7, $at                # t8 = 01000000
    sw      t8, 0x0510(t9)             # A5000510
    beq     $zero, $zero, lbl_801D2900
    sw      $zero, 0x0000(t1)          # 00000000
    lw      v0, 0x0000(t0)             # 00000000
lbl_801D24C8:
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    sll     t5, a1,  4
    bne     a2, v0, lbl_801D24E0
    nop
    beq     $zero, $zero, lbl_801D2900
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_801D24E0:
    bgezl   t5, lbl_801D255C
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    lw      t6, 0x0000(v1)             # 00000000
    sw      t6, 0x0030($sp)
    lw      t7, 0x0030($sp)
    andi    t8, t7, 0x0003             # t8 = 00000000
    beq     t8, $zero, lbl_801D2518
    addiu   t7, $zero, 0x0016          # t7 = 00000016
    lw      t9, 0x0000(v1)             # 00000000
lbl_801D2504:
    sw      t9, 0x0030($sp)
    lw      t5, 0x0030($sp)
    andi    t6, t5, 0x0003             # t6 = 00000000
    bnel    t6, $zero, lbl_801D2504
    lw      t9, 0x0000(v1)             # 00000000
lbl_801D2518:
    lw      $zero, 0x0000(a0)          # A5000508
    jal     func_801D29C4
    sw      t7, 0x0000(t1)             # 00000000
    lui     v1, 0xA460                 # v1 = A4600000
    ori     v1, v1, 0x0010             # v1 = A4600010
    lui     a0, 0x8000                 # a0 = 80000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a0, a0, 0x6360             # a0 = 80006360
    sw      a2, 0x0000(v1)             # A4600010
    lw      t8, 0x0000(a0)             # 80006360
    lui     $at, 0x0010                # $at = 00100000
    ori     $at, $at, 0x0401           # $at = 00100401
    or      t9, t8, $at                # t9 = 00100401
    sw      t9, 0x0000(a0)             # 80006360
    beq     $zero, $zero, lbl_801D2900
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t4, $zero, 0x0001          # t4 = 00000001
lbl_801D255C:
    bne     t4, v0, lbl_801D261C
    sll     t5, a1,  1
    bltzl   t5, lbl_801D25DC
    lw      t7, 0x0004(t1)             # 00000004
    lhu     t6, 0x0004(t0)             # 00000004
    lw      t8, 0x0008(t0)             # 00000008
    lui     a0, 0x8000                 # a0 = 80000000
    sll     t7, t6,  2
    addu    t7, t7, t6
    sll     t7, t7,  2
    addu    t7, t7, t6
    sll     t7, t7,  2
    addu    t7, t7, t6
    addiu   t9, t8, 0x0001             # t9 = 00000001
    beq     t7, t9, lbl_801D25B0
    addiu   a0, a0, 0x6360             # a0 = 80006360
    addiu   t5, $zero, 0x0018          # t5 = 00000018
    jal     func_801D2910
    sw      t5, 0x0000(t1)             # 00000000
    beq     $zero, $zero, lbl_801D2900
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_801D25B0:
    sw      a2, 0x0000(v1)             # 00000000
    lw      t6, 0x0000(a0)             # 00000000
    lui     $at, 0x0010                # $at = 00100000
    ori     $at, $at, 0x0401           # $at = 00100401
    or      t8, t6, $at                # t8 = 00100401
    sw      t8, 0x0000(a0)             # 00000000
    jal     func_801D29C4
    sw      $zero, 0x0000(t1)          # 00000000
    beq     $zero, $zero, lbl_801D2900
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      t7, 0x0004(t1)             # 00000004
lbl_801D25DC:
    lw      t9, 0x000C(t1)             # 0000000C
    lui     a2, 0x0500                 # a2 = 05000000
    ori     a2, a2, 0x0400             # a2 = 05000400
    addu    t5, t7, t9
    sw      t5, 0x0004(t1)             # 00000004
    lw      t6, 0x0008(t0)             # 00000008
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   t8, t6, 0x0001             # t8 = 00000001
    sw      t8, 0x0008(t0)             # 00000008
    lw      t7, 0x000C(t1)             # 0000000C
    lw      a3, 0x0004(t1)             # 00000004
    lw      a0, 0x0000(t2)             # 00000000
    jal     func_800046E0
    sw      t7, 0x0010($sp)
    beq     $zero, $zero, lbl_801D2900
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_801D261C:
    bne     v0, $zero, lbl_801D28F4
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    lhu     t9, 0x0004(t0)             # 00000004
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    bnel    a3, t9, lbl_801D267C
    lw      t6, 0x0004(t1)             # 00000004
    lw      t6, 0x0010(t1)             # 00000010
    lw      t5, 0x0008(t0)             # 00000008
    sll     t7, a1,  1
    addiu   t8, t6, 0x0011             # t8 = 00000011
    slt     $at, t8, t5
    beq     $at, $zero, lbl_801D2660
    nop
    jal     func_801D2910
    sw      $zero, 0x0000(t1)          # 00000000
    beq     $zero, $zero, lbl_801D2900
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_801D2660:
    bltz    t7, lbl_801D2688
    addiu   t9, $zero, 0x0017          # t9 = 00000017
    jal     func_801D2910
    sw      t9, 0x0000(t1)             # 00000000
    beq     $zero, $zero, lbl_801D2900
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      t6, 0x0004(t1)             # 00000004
lbl_801D267C:
    lw      t5, 0x000C(t1)             # 0000000C
    addu    t8, t6, t5
    sw      t8, 0x0004(t1)             # 00000004
lbl_801D2688:
    lui     t7, 0xA500                 # t7 = A5000000
    lw      v0, 0x0510(t7)             # A5000510
    sll     t9, v0, 10
    bgez    t9, lbl_801D26A0
    sll     t6, v0,  9
    bltz    t6, lbl_801D26AC
lbl_801D26A0:
    and     t5, v0, t3
    beql    t5, $zero, lbl_801D2710
    sll     t6, a1,  3
lbl_801D26AC:
    lw      a0, 0x0010(t1)             # 00000010
    sltiu   $at, a0, 0x0004
    bnel    $at, $zero, lbl_801D26F0
    lw      t6, 0x0008(t0)             # 00000008
    lhu     t8, 0x0004(t0)             # 00000004
    addiu   t9, $zero, 0x0017          # t9 = 00000017
    bne     a3, t8, lbl_801D26DC
    nop
    lw      t7, 0x0008(t0)             # 00000008
    slti    $at, t7, 0x0053
    bnel    $at, $zero, lbl_801D2708
    addiu   t9, a0, 0x0001             # t9 = 00000001
lbl_801D26DC:
    jal     func_801D2910
    sw      t9, 0x0000(t1)             # 00000000
    beq     $zero, $zero, lbl_801D2900
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      t6, 0x0008(t0)             # 00000008
lbl_801D26F0:
    sll     t8, a0,  2
    addu    t7, t1, t8
    addiu   t5, t6, 0x0001             # t5 = 00000001
    sw      t5, 0x0014(t7)             # 00000014
    lw      a0, 0x0010(t1)             # 00000010
    addiu   t9, a0, 0x0001             # t9 = 00000001
lbl_801D2708:
    sw      t9, 0x0010(t1)             # 00000010
    sll     t6, a1,  3
lbl_801D2710:
    bgez    t6, lbl_801D27C4
    lw      v0, 0x0008(t0)             # 00000008
    addiu   $at, $zero, 0x0057         # $at = 00000057
    beq     v0, $at, lbl_801D2738
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t8, $zero, 0x0018          # t8 = 00000018
    jal     func_801D2910
    sw      t8, 0x0000(t1)             # 00000000
    beq     $zero, $zero, lbl_801D2900
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_801D2738:
    lhu     t5, 0x0004(t0)             # 00000004
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     a0, 0x8000                 # a0 = 80000000
    bne     t5, $at, lbl_801D2780
    addiu   a0, a0, 0x6360             # a0 = 80006360
    lhu     t7, 0x0006(t0)             # 00000006
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    bnel    t7, $zero, lbl_801D2784
    sw      a2, 0x0000(v1)             # 00000000
    lw      t6, 0x0040(t0)             # 00000040
    lw      t8, 0x0048(t0)             # 00000048
    sh      t4, 0x0006(t0)             # 00000006
    sw      t9, 0x0008(t0)             # 00000008
    subu    t5, t6, t8
    sw      t5, 0x0040(t0)             # 00000040
    addiu   t7, $zero, 0x0016          # t7 = 00000016
    beq     $zero, $zero, lbl_801D27A0
    sw      t7, 0x0000(t1)             # 00000000
lbl_801D2780:
    sw      a2, 0x0000(v1)             # 00000000
lbl_801D2784:
    lw      t9, 0x0000(a0)             # 80006360
    lui     $at, 0x0010                # $at = 00100000
    ori     $at, $at, 0x0401           # $at = 00100401
    or      t6, t9, $at                # t6 = FFFFFFFF
    sw      t6, 0x0000(a0)             # 80006360
    sw      a2, 0x0000(t0)             # 00000000
    sw      $zero, 0x0000(t1)          # 00000000
lbl_801D27A0:
    lw      t8, 0x000C(t1)             # 0000000C
    lw      a3, 0x0008(t1)             # 00000008
    lw      a0, 0x0000(t2)             # 00000000
    sll     t5, t8,  2
    sw      t5, 0x0010($sp)
    jal     func_800046E0
    lui     a2, 0x0500                 # a2 = 05000000
    beq     $zero, $zero, lbl_801D2900
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_801D27C4:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bnel    v0, $at, lbl_801D286C
    addiu   t9, v0, 0x0001             # t9 = 00000002
    lhu     t7, 0x0004(t0)             # 00000004
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t7, $at, lbl_801D286C
    addiu   t9, v0, 0x0001             # t9 = 00000002
    lhu     t9, 0x0006(t0)             # 00000006
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t9, $at, lbl_801D286C
    addiu   t9, v0, 0x0001             # t9 = 00000002
    lw      t6, 0x0028(t0)             # 00000028
    addiu   v1, t0, 0x0018             # v1 = 00000018
    bnel    t6, $zero, lbl_801D2840
    sw      $zero, 0x0018(t0)          # 00000018
    lw      v0, 0x0008(v1)             # 00000020
    lw      t8, 0x000C(v0)             # 0000000D
    lw      t5, 0x0000(v0)             # 00000001
    lw      t9, 0x0004(v0)             # 00000005
    or      t7, t8, t5                 # t7 = 00000000
    lw      t8, 0x0008(v0)             # 00000009
    or      t6, t7, t9                 # t6 = 00000002
    addiu   t7, $zero, 0x0017          # t7 = 00000017
    or      t5, t6, t8                 # t5 = 00000002
    beql    t5, $zero, lbl_801D2840
    sw      $zero, 0x0018(t0)          # 00000018
    jal     func_801D2910
    sw      t7, 0x0000(v1)             # 00000018
    beq     $zero, $zero, lbl_801D2900
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      $zero, 0x0018(t0)          # 00000018
lbl_801D2840:
    sw      t1, 0x0024($sp)
    sw      t0, 0x0028($sp)
    jal     func_801D29C4
    sw      a1, 0x0034($sp)
    lw      t0, 0x0028($sp)
    lui     t2, 0x801E                 # t2 = 801E0000
    addiu   t2, t2, 0x5F64             # t2 = 801E5F64
    lw      a1, 0x0034($sp)
    lw      t1, 0x0024($sp)
    lw      v0, 0x0008(t0)             # 00000008
    addiu   t9, v0, 0x0001             # t9 = 00000001
lbl_801D286C:
    sll     t6, a1,  1
    bgez    t6, lbl_801D28C8
    sw      t9, 0x0008(t0)             # 00000008
    slti    $at, t9, 0x0055
    bne     $at, $zero, lbl_801D2898
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t5, $zero, 0x0018          # t5 = 00000018
    jal     func_801D2910
    sw      t5, 0x0000(t1)             # 00000000
    beq     $zero, $zero, lbl_801D2900
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_801D2898:
    lw      t7, 0x000C(t1)             # 0000000C
    lui     a2, 0x0500                 # a2 = 05000000
    lw      a3, 0x0004(t1)             # 00000004
    sw      t1, 0x0024($sp)
    ori     a2, a2, 0x0400             # a2 = 05000400
    lw      a0, 0x0000(t2)             # 00000000
    jal     func_800046E0
    sw      t7, 0x0010($sp)
    lw      t1, 0x0024($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_801D2900
    sw      $zero, 0x0000(t1)          # 00000000
lbl_801D28C8:
    lw      t9, 0x0008(t0)             # 00000008
    addiu   t6, $zero, 0x0018          # t6 = 00000018
    slti    $at, t9, 0x0055
    beq     $at, $zero, lbl_801D28EC
    nop
    jal     func_801D2910
    sw      t6, 0x0000(t1)             # 00000000
    beq     $zero, $zero, lbl_801D2900
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_801D28EC:
    beq     $zero, $zero, lbl_801D2900
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_801D28F4:
    jal     func_801D2910
    sw      t8, 0x0000(t1)             # 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_801D2900:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_801D2910:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v1, 0xA460                 # v1 = A4600000
    ori     v1, v1, 0x0010             # v1 = A4600010
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0000(v1)             # A4600010
    lui     a0, 0x801E                 # a0 = 801E0000
    lw      a0, 0x5F64(a0)             # 801E5F64
    andi    t6, v0, 0x0003             # t6 = 00000000
    beq     t6, $zero, lbl_801D2948
    addiu   a0, a0, 0x0014             # a0 = 801E0014
    lw      v0, 0x0000(v1)             # A4600010
lbl_801D293C:
    andi    t7, v0, 0x0003             # t7 = 00000000
    bnel    t7, $zero, lbl_801D293C
    lw      v0, 0x0000(v1)             # A4600010
lbl_801D2948:
    lw      t8, 0x0010(a0)             # 801E0024
    lui     a1, 0xA500                 # a1 = A5000000
    lui     $at, 0x1000                # $at = 10000000
    ori     a1, a1, 0x0510             # a1 = A5000510
    or      t9, t8, $at                # t9 = 10000000
    sw      t9, 0x0000(a1)             # A5000510
    lw      v0, 0x0000(v1)             # A4600010
    andi    t0, v0, 0x0003             # t0 = 00000000
    beql    t0, $zero, lbl_801D2984
    lw      t2, 0x0010(a0)             # 801E0024
    lw      v0, 0x0000(v1)             # A4600010
lbl_801D2974:
    andi    t1, v0, 0x0003             # t1 = 00000000
    bnel    t1, $zero, lbl_801D2974
    lw      v0, 0x0000(v1)             # A4600010
    lw      t2, 0x0010(a0)             # 801E0024
lbl_801D2984:
    jal     func_801D29C4
    sw      t2, 0x0000(a1)             # A5000510
    lui     v1, 0xA460                 # v1 = A4600000
    ori     v1, v1, 0x0010             # v1 = A4600010
    lui     v0, 0x8000                 # v0 = 80000000
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    addiu   v0, v0, 0x6360             # v0 = 80006360
    sw      t3, 0x0000(v1)             # A4600010
    lw      t4, 0x0000(v0)             # 80006360
    lw      $ra, 0x0014($sp)
    lui     $at, 0x0010                # $at = 00100000
    ori     $at, $at, 0x0401           # $at = 00100401
    or      t5, t4, $at                # t5 = 00100401
    sw      t5, 0x0000(v0)             # 80006360
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_801D29C4:
    lui     a0, 0x8001                 # a0 = 80010000
    lw      a0, -0x61E0(a0)            # 80009E20
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    beql    a0, $zero, lbl_801D2A74
    lw      $ra, 0x0014($sp)
    lw      v1, 0x0008(a0)             # 80010008
    lw      a1, 0x0010(a0)             # 80010010
    lui     t8, 0x8001                 # t8 = 80010000
    slt     $at, v1, a1
    beql    $at, $zero, lbl_801D2A74
    lw      $ra, 0x0014($sp)
    lw      t6, 0x000C(a0)             # 8001000C
    lw      t9, 0x0014(a0)             # 80010014
    lw      t8, -0x61DC(t8)            # 80009E24
    addu    t7, t6, v1
    div     $zero, t7, a1
    mfhi    v0
    sll     t0, v0,  2
    addu    t1, t9, t0
    sw      t8, 0x0000(t1)             # 00000000
    lw      t2, 0x0008(a0)             # 80010008
    lw      t4, 0x0000(a0)             # 80010000
    bne     a1, $zero, lbl_801D2A2C
    nop
    break   # 0x01C00
lbl_801D2A2C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a1, $at, lbl_801D2A44
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_801D2A44
    nop
    break   # 0x01800
lbl_801D2A44:
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sw      t3, 0x0008(a0)             # 80010008
    lw      t5, 0x0000(t4)             # 00000000
    beql    t5, $zero, lbl_801D2A74
    lw      $ra, 0x0014($sp)
    jal     func_80002B94
    nop
    lui     a0, 0x8000                 # a0 = 80000000
    addiu   a0, a0, 0x6338             # a0 = 80006338
    jal     func_80002B4C
    or      a1, v0, $zero              # a1 = 00000000
    lw      $ra, 0x0014($sp)
lbl_801D2A74:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801D2A80:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    lui     t6, 0x801E                 # t6 = 801E0000
    lw      t6, -0x7210(t6)            # 801D8DF0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0088($sp)
    sw      a1, 0x008C($sp)
    sw      a2, 0x0090($sp)
    beq     t6, $zero, lbl_801D2AAC
    sw      a3, 0x0094($sp)
    beq     $zero, $zero, lbl_801D2C98
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801D2AAC:
    jal     func_801CE120
    nop
    bne     v0, $zero, lbl_801D2AC4
    nop
    beq     $zero, $zero, lbl_801D2C98
    addiu   v0, $zero, 0x0029          # v0 = 00000029
lbl_801D2AC4:
    jal     func_801CC0F0
    nop
    jal     func_80001600              # osCartRomInit
    nop
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x801E                # $at = 801E0000
    lui     a1, 0x801D                 # a1 = 801D0000
    lui     a2, 0x801E                 # a2 = 801E0000
    sw      v0, 0x0084($sp)
    sw      t7, -0x7210($at)           # 801D8DF0
    addiu   a2, a2, 0x7800             # a2 = 801E7800
    addiu   a1, a1, 0x23B0             # a1 = 801D23B0
    jal     func_80006010
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      a0, 0x0088($sp)
    lw      a1, 0x008C($sp)
    lw      a2, 0x0090($sp)
    jal     func_801CA7D0
    lw      a3, 0x0094($sp)
    lui     t8, 0x8000                 # t8 = 80000000
    lw      t8, 0x030C(t8)             # 8000030C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t8, $at, lbl_801D2B30
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    jal     func_801CAB94
    nop
    addiu   t9, $zero, 0x0002          # t9 = 00000002
lbl_801D2B30:
    sb      t9, 0x006C($sp)
    sb      $zero, 0x006D($sp)
    sb      $zero, 0x006E($sp)
    sb      $zero, 0x006F($sp)
    jal     func_801CA9A4
    addiu   a0, $sp, 0x006C            # a0 = FFFFFFE4
    lui     t0, 0x8000                 # t0 = 80000000
    lui     $at, 0x00A4                # $at = 00A40000
    ori     $at, $at, 0x8D3C           # $at = 00A48D3C
    addiu   t0, t0, 0x6010             # t0 = 80006010
    and     t1, t0, $at
    sw      t1, 0x0024($sp)
    lw      t2, 0x0024($sp)
    lui     v1, 0x00E0                 # v1 = 00E00000
    lui     v0, 0x801D                 # v0 = 801D0000
    slt     $at, t2, v1
    beq     $at, $zero, lbl_801D2BA0
    addiu   v0, v0, 0xA9A4             # v0 = 801CA9A4
    andi    t3, v0, 0x00FF             # t3 = 000000A4
    ori     t4, t3, 0x008A             # t4 = 000000AE
    sll     v0, t4, 16
    lw      t6, 0x0024($sp)
lbl_801D2B88:
    addu    t7, t6, v0
    sw      t7, 0x0024($sp)
    lw      t8, 0x0024($sp)
    slt     $at, t8, v1
    bnel    $at, $zero, lbl_801D2B88
    lw      t6, 0x0024($sp)
lbl_801D2BA0:
    lbu     t9, 0x0070($sp)
    addiu   v0, $zero, 0x0008          # v0 = 00000008
    addiu   t3, $zero, 0x0006          # t3 = 00000006
    bne     v0, t9, lbl_801D2BC0
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lbu     t0, 0x0070($sp)
lbl_801D2BB8:
    beql    v0, t0, lbl_801D2BB8
    lbu     t0, 0x0070($sp)
lbl_801D2BC0:
    lbu     t1, 0x0070($sp)
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x6800             # v0 = 801E6800
    beql    t1, $zero, lbl_801D2BE0
    lbu     t2, 0x0079($sp)
    beq     $zero, $zero, lbl_801D2C98
    lbu     v0, 0x0071($sp)
    lbu     t2, 0x0079($sp)
lbl_801D2BE0:
    lbu     t4, 0x0078($sp)
    lbu     t5, 0x007A($sp)
    sb      t2, 0x0000(v0)             # 801E6800
    lbu     v1, 0x0000(v0)             # 801E6800
    sb      t3, 0x0001(v0)             # 801E6801
    sb      t4, 0x0002(v0)             # 801E6802
    andi    t6, v1, 0x000F             # t6 = 00000000
    or      v1, t6, $zero              # v1 = 00000000
    bne     t6, $at, lbl_801D2C14
    sb      t5, 0x0003(v0)             # 801E6803
    lui     $at, 0x801E                # $at = 801E0000
    beq     $zero, $zero, lbl_801D2C94
    sw      $zero, 0x5E9C($at)         # 801E5E9C
lbl_801D2C14:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v1, $at, lbl_801D2C28
    lw      a0, 0x0084($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v1, $at, lbl_801D2C8C
lbl_801D2C28:
    lui     a1, 0x0009                 # a1 = 00090000
    ori     a1, a1, 0xFF00             # a1 = 0009FF00
    jal     func_80005630
    addiu   a2, $sp, 0x0028            # a2 = FFFFFFA0
    lw      v1, 0x0028($sp)
    lui     $at, 0xFF00                # $at = FF000000
    lui     t9, 0x32F8                 # t9 = 32F80000
    and     t7, v1, $at
    srl     t8, t7, 24
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     t8, $at, lbl_801D2C60
    ori     t9, t9, 0xEB20             # t9 = 32F8EB20
lbl_801D2C58:
    beq     $zero, $zero, lbl_801D2C58
    nop
lbl_801D2C60:
    sw      t9, 0x0020($sp)
    lw      t1, 0x0020($sp)
    lui     t2, 0x801E                 # t2 = 801E0000
    lui     t0, 0x2263                 # t0 = 22630000
    addiu   t2, t2, 0x8DF0             # t2 = 801D8DF0
    ori     t0, t0, 0xEE56             # t0 = 2263EE56
    lui     $at, 0x801E                # $at = 801E0000
    addu    t3, t1, t2
    sw      t0, 0x5E9C($at)            # 801E5E9C
    beq     $zero, $zero, lbl_801D2C94
    sw      t3, 0x0020($sp)
lbl_801D2C8C:
    beq     $zero, $zero, lbl_801D2C8C
    nop
lbl_801D2C94:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_801D2C98:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0088           # $sp += 0x88
    jr      $ra
    nop
    nop
    nop


func_801D2CB0:
    lui     t6, 0x801E                 # t6 = 801E0000
    lw      t6, -0x7210(t6)            # 801D8DF0
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    bne     t6, $zero, lbl_801D2CD0
    sw      a0, 0x0028($sp)
    beq     $zero, $zero, lbl_801D2D34
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_801D2CD0:
    lui     t7, 0xA460                 # t7 = A4600000
    lw      t8, 0x0010(t7)             # A4600010
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFF0
    andi    t9, t8, 0x0001             # t9 = 00000000
    beql    t9, $zero, lbl_801D2CF8
    sb      t0, 0x0018($sp)
    beq     $zero, $zero, lbl_801D2D34
    addiu   v0, $zero, 0x0008          # v0 = 00000008
    sb      t0, 0x0018($sp)
lbl_801D2CF8:
    sb      $zero, 0x0019($sp)
    sb      $zero, 0x001A($sp)
    jal     func_801CA9A4
    sb      $zero, 0x001B($sp)
    lbu     t1, 0x001C($sp)
    addiu   v0, $zero, 0x0008          # v0 = 00000008
    lw      t4, 0x0028($sp)
    bnel    v0, t1, lbl_801D2D2C
    lbu     t3, 0x0024($sp)
    lbu     t2, 0x001C($sp)
lbl_801D2D20:
    beql    v0, t2, lbl_801D2D20
    lbu     t2, 0x001C($sp)
    lbu     t3, 0x0024($sp)
lbl_801D2D2C:
    sb      t3, 0x0000(t4)             # 00000000
    lbu     v0, 0x001D($sp)
lbl_801D2D34:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop
    nop
    nop


func_801D2D50:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_801CCBC0
    nop
    lui     v1, 0x801E                 # v1 = 801E0000
    addiu   v1, v1, 0x5E78             # v1 = 801E5E78
    lw      t6, 0x0000(v1)             # 801E5E78
    sb      v0, 0x000C(t6)             # 0000000C
    lw      t7, 0x0000(v1)             # 801E5E78
    sb      $zero, 0x0005(t7)          # 00000005
    lw      t8, 0x0000(v1)             # 801E5E78
    sb      $zero, 0x0004(t8)          # 00000004
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_801D2D90:
    lui     a1, 0x801E                 # a1 = 801E0000
    addiu   a1, a1, 0x5E78             # a1 = 801E5E78
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    lw      v0, 0x0000(a1)             # 801E5E78
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    lw      v1, 0x000C(v0)             # 0000000C
    addiu   s0, $zero, 0x0014          # s0 = 00000014
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sltiu   $at, v1, 0x10C4
    bne     $at, $zero, lbl_801D2DD8
    nop
    sb      t6, 0x0005(v0)             # 00000005
    lw      t8, 0x0000(a1)             # 801E5E78
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    beq     $zero, $zero, lbl_801D2E3C
    sb      t7, 0x0004(t8)             # 00000004
lbl_801D2DD8:
    jal     func_801CE340
    addiu   a0, v1, 0x0018             # a0 = 00000018
lbl_801D2DE0:
    jal     func_801CCA20
    nop
    bne     v0, $zero, lbl_801D2E00
    andi    s1, v0, 0x00FF             # s1 = 00000000
    lui     t9, 0x801E                 # t9 = 801E0000
    lw      t9, 0x5E78(t9)             # 801E5E78
    beq     $zero, $zero, lbl_801D2E3C
    sb      $zero, 0x0004(t9)          # 801E0004
lbl_801D2E00:
    jal     func_801CCAB0
    or      a0, s1, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_801D2E20
    or      v0, s0, $zero              # v0 = 00000014
    addiu   s0, s0, 0xFFFF             # s0 = 00000013
    andi    t0, s0, 0x00FF             # t0 = 00000013
    bne     v0, $zero, lbl_801D2DE0
    or      s0, t0, $zero              # s0 = 00000013
lbl_801D2E20:
    lui     v0, 0x801E                 # v0 = 801E0000
    addiu   v0, v0, 0x5E78             # v0 = 801E5E78
    lw      t1, 0x0000(v0)             # 801E5E78
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sb      s1, 0x0005(t1)             # 00000005
    lw      t3, 0x0000(v0)             # 801E5E78
    sb      t2, 0x0004(t3)             # 00000004
lbl_801D2E3C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20

.section .data

.word \
0x801DC000, 0x801C7A1C, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x801C81EC, 0x801C91E0, \
0x801C832C, 0x801C9260, 0x801C83A0, 0x801C9260, \
0x801C8414, 0x801C9334, 0x801C8414, 0x801C93C4, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x801D8F40, 0x801D8F54, 0x00000000, 0x00000000, \
0x801D8F70, 0x801D8F98, 0x00000000, 0x00000000, \
0x801D8FC0, 0x801D8FE8, 0x801D9010, 0x00000000, \
0x801D9038, 0x801D9060, 0x801D9088, 0x00000000, \
0x801D90B0, 0x801D90D8, 0x00000000, 0x00000000, \
0x801D9100, 0x00000000, 0x00000000, 0x00000000, \
0x801D9128, 0x00000000, 0x00000000, 0x00000000, \
0x801D9150, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x801D9178, 0x801D919C, 0x00000000, 0x00000000, \
0x801D91C4, 0x801D91E8, 0x801D9204, 0x801D922C, \
0x801D9244, 0x801D9268, 0x801D9290, 0x801D92B8, \
0x801D92D4, 0x801D92FC, 0x00000000, 0x00000000, \
0x801D9318, 0x00000000, 0x00000000, 0x00000000, \
0x801D933C, 0x00000000, 0x00000000, 0x00000000, \
0x801D9364, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01445888, 0x9BBF7000, \
0x003BBBBB, 0xBBBB3000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0008FFFF, 0xFFF80000, \
0x00000000, 0x00000000, 0x00ABDBCF, 0x88982000, \
0x004F9888, 0x88BF4000, 0x00000000, 0x00000000, \
0x00000000, 0x68000000, 0x0000004B, 0x30000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00BFFFFF, 0xFFFF8000, 0x00024444, 0x44420000, \
0x00000000, 0x00000000, 0x0009D14F, 0x00D90000, \
0x004F4000, 0x008F4000, 0x00000000, 0x00000000, \
0x00000003, 0xEB000000, 0x00003DFF, 0x40000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x006888BF, 0x88884000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0888FA9F, 0x89F88800, \
0x004FCBBB, 0xBBDF4000, 0x00000000, 0x00000000, \
0x0000001C, 0xFB000000, 0x0000265F, 0x40000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0000008F, 0x00000000, 0x00BBBBBB, 0xBBBB8000, \
0x00000000, 0x00000000, 0x0BBBBEFF, 0xFEBBBB00, \
0x00288888, 0x88882000, 0x00000000, 0x00000000, \
0x0000009B, 0xBB000000, 0x0000004F, 0x40000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0000008F, 0x00000000, 0x00888888, 0x888EF100, \
0x02444444, 0x44444200, 0x00007F9F, 0x6F700000, \
0x28888888, 0x88888800, 0x00000000, 0x00000000, \
0x000006E2, 0xBB000000, 0x0000004F, 0x40000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0000008F, 0x00000000, 0x00000000, 0x003F9000, \
0x08FFFFFF, 0xFFFFF800, 0x002AE64F, 0x06FB4000, \
0x3BBDFBBB, 0xBBBBBB00, 0x00000000, 0x00000000, \
0x00003E50, 0xBB000000, 0x0000004F, 0x40000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0000008F, 0x00000000, 0x00000000, 0x00BE2000, \
0x04888888, 0x88888400, 0x19FFA888, 0x88AFFB40, \
0x000BC000, 0x00000000, 0x00000000, 0x00000000, \
0x0001C900, 0xBB000000, 0x0000004F, 0x40000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0000008F, 0x00000000, 0x00000000, 0x08F70000, \
0x00000000, 0x00000000, 0x096BB89F, 0x888F8B10, \
0x000FFFFF, 0xFFFF4000, 0x00000000, 0x00000000, \
0x0004F888, 0xDD820000, 0x0000004F, 0x40000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0000008F, 0x00000000, 0x00000000, 0x8F900000, \
0x00000000, 0x00000000, 0x000B947F, 0x444F4000, \
0x005F7444, 0x447F4000, 0x00000000, 0x00000000, \
0x0003BBBB, 0xEEB30000, 0x0000004F, 0x40000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0FFFFFFF, 0xFFFFFB00, 0x0000004B, 0xF9000000, \
0x00000000, 0x00000000, 0x000BDBCF, 0xBBBF4000, \
0x00270000, 0x006F1000, 0x00000000, 0x00000000, \
0x00000000, 0xBB000000, 0x0000004F, 0x40000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x08888888, 0x88888600, 0x00048DFD, 0x50000000, \
0x00000000, 0x00000000, 0x000B947F, 0x444F4000, \
0x00000000, 0x008F0000, 0x00000000, 0x00000000, \
0x00000000, 0xBB000000, 0x0000004F, 0x40000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0006FB60, 0x00000000, \
0x00000000, 0x00000000, 0x000BDBBB, 0xBBBF4000, \
0x00000000, 0x5BEA0000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00012000, 0x00000000, \
0x00000000, 0x00000000, 0x00064000, 0x00082000, \
0x00000000, 0x28610000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x03BBBBBB, 0xB8000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000B90, 0x00008600, \
0x00000000, 0x00000000, 0x00000000, 0x06800000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x64000000, 0x44000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x04F88888, 0x86000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000FF6, 0x0000B800, \
0x00000000, 0x00000000, 0x00000000, 0x08B00000, \
0x00000000, 0x00000000, 0x00000000, 0x00000005, \
0xF8000000, 0xB8000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x04F00000, 0x00000000, 0x41000000, 0x41000000, \
0x44000000, 0x00410000, 0x00000FAE, 0x1000B800, \
0x00000000, 0x00000141, 0x00430000, 0x08B03400, \
0x00000044, 0x00000000, 0x41000000, 0x0000002E, \
0xF800028D, 0xF8000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x04F00000, 0x000008BB, 0xF40008BB, 0xF400006E, \
0xFFD30008, 0xBBF40000, 0x00000F4B, 0xA000B800, \
0x0B80008B, 0x000F7EFE, 0x6CFF9000, 0x08CBFFE5, \
0x00005EFF, 0xD30008BB, 0xF4000000, 0x000000CA, \
0xB8000288, 0xD8000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x04F44444, 0x410008F8, 0x000008F8, 0x000002F7, \
0x019E1008, 0xF8000000, 0x00000F42, 0xF400B800, \
0x0B80008B, 0x000FD21B, 0xF705F200, 0x08F9119E, \
0x1002E701, 0x9E1008F8, 0x00000000, 0x000008D1, \
0xB8000000, 0xB8000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x04FFFFFF, 0xF40008D0, 0x000008D0, 0x000008C0, \
0x000E6008, 0xD0000000, 0x00000F40, 0x8D10B800, \
0x0B80008B, 0x000F6008, 0xC000F400, 0x08E0001E, \
0x60089000, 0x0D6008D0, 0x00000000, 0x00005F30, \
0xB8000000, 0xB8000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x04F00000, 0x000008B0, 0x000008B0, 0x00000B80, \
0x000B8008, 0xB0000000, 0x00000F40, 0x0C80B800, \
0x0B80008B, 0x000F4008, 0xB000F400, 0x08B0000B, \
0x800BDBBB, 0xBE8008B0, 0x00000000, 0x0002E700, \
0xB8000000, 0xB8000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x04F00000, 0x000008B0, 0x000008B0, 0x00000B80, \
0x000B8008, 0xB0000000, 0x00000F40, 0x04F3B800, \
0x0B80008B, 0x000F4008, 0xB000F400, 0x08B0000B, \
0x800BB888, 0x884008B0, 0x00000000, 0x0008FBBB, \
0xEDB00000, 0xB8000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x04F00000, 0x000008B0, 0x000008B0, 0x000009B0, \
0x001F5008, 0xB0000000, 0x00000F40, 0x008CB800, \
0x0B8000AB, 0x000F4008, 0xB000F400, 0x08E1001F, \
0x5008A000, 0x074008B0, 0x00000000, 0x00048888, \
0xDB800000, 0xB8000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x04F44444, 0x430008B0, 0x000008B0, 0x000004F7, \
0x019D0008, 0xB0000000, 0x00000F40, 0x001EF800, \
0x09D207FB, 0x000F4008, 0xB000F400, 0x08F9119D, \
0x0003F701, 0x9F2008B0, 0x00000000, 0x00000000, \
0xB8000000, 0xB8000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x04FFFFFF, 0xFB0008B0, 0x000008B0, 0x0000006F, \
0xFFD30008, 0xB0000000, 0x00000F40, 0x0005F800, \
0x03EFFC8B, 0x000F4008, 0xB000F400, 0x08BBFFD3, \
0x00006EFF, 0xE60008B0, 0x00000000, 0x00000000, \
0xB8000000, 0xB8000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000001, \
0x43000000, 0x00000000, 0x00000000, 0x00000000, \
0x00043000, 0x00000000, 0x00000000, 0x00003400, \
0x00000044, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000024, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00003000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x04888608, 0xB00C8000, 0x00024100, 0x00000000, \
0x00000000, 0x03300000, 0x00100000, 0x04810000, \
0x00000000, 0x00000000, 0x28888888, 0x00000000, \
0x004F06BB, 0xBBBB2000, 0x04888607, 0x70089000, \
0x00000000, 0x88888400, 0x0014449F, 0x44441000, \
0x0000004A, 0x30000000, 0x00004F40, 0x00000000, \
0x04888400, 0x0B800000, 0x00000046, 0x00000000, \
0x00000000, 0x03300000, 0x00000850, 0x0000C900, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x06BBB802, 0xF34F4000, 0x0008F200, 0x00000000, \
0x00000000, 0x5ED10000, 0x00AC0000, 0x05F00000, \
0x00000000, 0x00000000, 0x3BFCBDEB, 0x00000000, \
0x004F048D, 0xB8BF0000, 0x06BBB808, 0xE10D9000, \
0x08FFFF40, 0xFCBBF800, 0x003BBBDF, 0xBBBF4000, \
0x000000BD, 0x10300000, 0x00004F40, 0x00000000, \
0x06BBB68B, 0xBEDBBB00, 0x003BFFFF, 0x90000000, \
0x00000000, 0x5ED10000, 0x00001F80, 0x004C4810, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x3BBBBB8B, 0xDBDEBB00, 0x0008F000, 0x00000000, \
0x00000008, 0xFC200000, 0x00DA0000, 0x04F01100, \
0x00000000, 0x00000000, 0x00F408B6, 0xBBBBB300, \
0x004F000B, 0x808E0000, 0x3BBBBB61, 0xC22F4000, \
0x08C47F40, 0xF400F800, 0x3BBBBBDF, 0xBBBFCB30, \
0x006BBBFD, 0xCFF00000, 0x00004F46, 0x51E92000, \
0x3BBBBB68, 0x8DB88800, 0x0028745F, 0x40000000, \
0x00000008, 0xFC200000, 0x00005F66, 0x93098000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x28888868, 0x8DD88800, 0x0008F000, 0x00000000, \
0x000003CF, 0x80000000, 0x00F70688, 0x89FCF800, \
0x00000000, 0x00000000, 0x00F98BB4, 0xBD88F700, \
0x4FFFF80B, 0x80AB0000, 0x2888884B, 0xBBCFB600, \
0x08B04F40, 0xF744F800, 0x0014449F, 0x444F4000, \
0x00488FC8, 0x64200000, 0x00FFFFFE, 0x605DF600, \
0x28888804, 0x4C944000, 0x0000009D, 0x00000000, \
0x000003CF, 0x80000000, 0x04FFFFFF, 0xB2000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x06BBB800, 0x0BB00000, 0x0008B000, 0x00000000, \
0x00018FB3, 0x00000000, 0x04F406BB, 0xBCF86200, \
0x00000000, 0x00000000, 0x00FCBDB0, 0x8B03F300, \
0x147F420B, 0x80BD8500, 0x06BBB80F, 0x9888D800, \
0x08D89F42, 0xFFFFF800, 0x003BBBDF, 0xBBBB3000, \
0x00008F64, 0x00000000, 0x00449F20, 0x00008600, \
0x06BBB60F, 0xFFFFF000, 0x000001E7, 0x008F3000, \
0x00018FB3, 0x00000000, 0x0254E913, 0x58888000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x04888608, 0x8DD88200, 0x0008B000, 0x00000000, \
0x003ED600, 0x00000000, 0x04F10000, 0x04F00000, \
0x00000000, 0x00000000, 0x00F408B0, 0x6C06E000, \
0x004F020B, 0xA0EDDF00, 0x0488860F, 0x4000B800, \
0x08EBCF44, 0xF000F800, 0x00BBBBDF, 0xBBBBB000, \
0x0006FEBF, 0x8028D200, 0x00008F00, 0x02200000, \
0x04888544, 0x44444400, 0x000006F1, 0x008F0000, \
0x003ED600, 0x00000000, 0x0003F20E, 0xFCBBC000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x06BBB80B, 0xBEEBB300, 0x0008B000, 0x00000000, \
0x007F6000, 0x00000000, 0x06F00000, 0x04F00000, \
0x00000000, 0x00000000, 0x00FCBDB0, 0x3F1AA000, \
0x006FE80E, 0xE100AA00, 0x06BBB80F, 0x9888D800, \
0x08B04F45, 0xF000F800, 0x0044449F, 0x44444000, \
0x003F9108, 0xDCFD9300, 0x00008F7B, 0xFFFD5000, \
0x06BBB9FB, 0xBBBBCF00, 0x005CFFFB, 0x96AE0000, \
0x007F6000, 0x00000000, 0x0008C000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x04888600, 0x0BB00000, 0x000BB000, 0x0001A300, \
0x0007EA10, 0x00000000, 0x08F00000, 0x04F40000, \
0x00000000, 0x00000000, 0x00F98BB0, 0x0E7F6000, \
0x5DFF502F, 0xE802F600, 0x0488860B, 0xFCEDB600, \
0x08B04F48, 0xD888F800, 0x4FFFFFFF, 0xFFFFFF40, \
0x03E9029F, 0xE7200000, 0x0004CFB6, 0x3029F200, \
0x048888F0, 0x82464F00, 0x08E88F57, 0xAEFD6000, \
0x0007EA10, 0x00000000, 0x000E6000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x08BBBB34, 0x4CC44410, 0x000BB000, 0x0008F300, \
0x00003DE4, 0x00000000, 0x08F00025, 0x77F40000, \
0x00000000, 0x00000000, 0x00F408B0, 0x09FD0000, \
0x396F007D, 0x6F39D000, 0x08BBBB02, 0xF4B80000, \
0x08EBCF4C, 0xDBBBF800, 0x00144444, 0x44441000, \
0x03B06F8C, 0xB0000000, 0x008FBF00, 0x0000D800, \
0x08BBB740, 0xF48B1400, 0x2F60C900, 0x03FEFD10, \
0x00003DE4, 0x00000000, 0x006E1000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0BD8BFBF, 0xFFFFFF40, 0x0009B000, 0x004F8000, \
0x000001CF, 0x60000000, 0x07F003EB, 0xBEFA3000, \
0x02300000, 0x00000000, 0x02F9ADB0, 0x05F80000, \
0x004F00D8, 0x0DDF4000, 0x0BD8BF05, 0xF2B80000, \
0x08D8886F, 0x3000F800, 0x004F9888, 0x889F4000, \
0x0002F40B, 0xB0000000, 0x06E44F00, 0x0000BA00, \
0x0BB8D802, 0xF48B0000, 0x4F19E100, 0x0AE16800, \
0x000001CF, 0x60000000, 0x00B904F1, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0BB08F00, 0x0BB00000, 0x0007F100, 0x07F90000, \
0x0000001C, 0xF6000000, 0x04F10880, 0x04FEF800, \
0x0BE30000, 0x00000000, 0x4FFB8BB0, 0x3ECF7000, \
0x004F07F2, 0x08FE1000, 0x0BB08F09, 0xE0B80400, \
0x068000CB, 0x0000F800, 0x004FCBBB, 0xBBCF4000, \
0x0007F100, 0x00000000, 0x07D14F06, 0x8003F700, \
0x0B80B807, 0xE08B0100, 0x0EFD3000, 0x9F500000, \
0x0000001C, 0xF6000000, 0x04F300F7, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0BEBDF00, 0x0BB00000, 0x0001EEBB, 0xEE800000, \
0x00000001, 0xCF600000, 0x04F404E8, 0x8CE08900, \
0x01DC1000, 0x00000000, 0x030008B5, 0xEC18FA20, \
0x004F3E82, 0x9FBFE400, 0x0BD8BF3F, 0x80B81F70, \
0x000009E2, 0x0024F800, 0x004F7444, 0x447F4000, \
0x0002ED88, 0x888A3000, 0x01CD9F06, 0xFCBEC100, \
0x0BDBE84E, 0x808C1F50, 0x0241006D, 0xF6000000, \
0x00000001, 0xCF600000, 0x09B0008F, 0xDBBBBA00, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0BD8BF00, 0x0BB00000, 0x00001798, 0x61000000, \
0x00000000, 0x1CB00000, 0x01C50049, 0xBA300000, \
0x004D2000, 0x00000000, 0x000008CB, 0x80006C10, \
0x08DD8C6F, 0xE504EE20, 0x0BEBDFDC, 0x109FFF20, \
0x00005F50, 0x002FF500, 0x004FFFFF, 0xFFFF4000, \
0x000028BB, 0xDBBB3000, 0x0008BA00, 0x48A71000, \
0x0BB8D8E9, 0x006FFE10, 0x000000DD, 0x40000000, \
0x00000000, 0x1CB00000, 0x09500003, 0x88BB8600, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x03300000, 0x03300000, 0x00000000, 0x00000000, \
0x00000000, 0x02000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000230, 0x00000000, \
0x04610307, 0x10002500, 0x03300041, 0x00044200, \
0x00000200, 0x00062000, 0x003B3000, 0x00282000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x03200020, 0x00034100, 0x00000020, 0x00000000, \
0x00000000, 0x02000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000088, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0000009D, 0x00021000, 0x00680000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0000004F, 0x77AF5000, 0x00BC0000, 0x04E30000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x009BBBCF, 0xFD961000, 0x00C80000, 0x00DB0000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00688856, 0xF4000000, 0x00F80000, 0x006F4000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x8D100000, 0x00F50000, 0x000EA000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000034, 0x1CB00000, 0x00F40000, 0x0009F000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0004AFFF, 0xFFF90000, 0x00F70000, 0x0005F500, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x003FA300, 0x03870000, 0x00C80610, 0x0001F800, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x008D0000, 0x00000000, 0x009C1E60, 0x0000E800, \
0x01870000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x007E3000, 0x00000000, 0x005FDE00, 0x00000000, \
0x0C688000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x001BFB88, 0x88960000, 0x000CF500, 0x00000000, \
0x0C01B000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x000058BB, 0xBBB50000, 0x00013000, 0x00000000, \
0x099B6000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00430000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x000008BB, 0xBBB81000, 0x03B00000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x003B0000, 0x00000000, 0x00000000, \
0x06800000, 0x00000000, 0x00000000, 0x00000000, \
0x3B000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x003B0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000BB8, 0x888EB000, 0x04F00000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x004F0000, 0x00000000, 0x0000B800, \
0x08B00000, 0x00000000, 0x00000000, 0x00000000, \
0x28000000, 0x00000000, 0x00000000, 0x00B80000, \
0x00000000, 0x00000000, 0x00000000, 0x0000B800, \
0x00280000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000B80, 0x0003F300, 0x04F00000, 0x44000000, \
0x02420000, 0x00034100, 0x00000044, 0x00000000, \
0x00000000, 0x00004100, 0x00004400, 0x00000242, \
0x00000002, 0x414F0000, 0x00000000, 0x0000B800, \
0x08B03410, 0x00000044, 0x00000000, 0x00000000, \
0x00000000, 0x24100000, 0x03410000, 0x00B80000, \
0x00410000, 0x00000000, 0x00003400, 0x0000B800, \
0x00000000, 0x00440000, 0x00002410, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000B80, 0x0000F400, 0x04F0005E, 0xFFD30001, \
0xBFFFB100, 0x01CFFF60, 0x00005EFF, 0xD3000000, \
0x00000000, 0x08BBF400, 0x005EFFD3, 0x0001BFFF, \
0xB100009F, 0xFE9F0000, 0x00000000, 0x000BFFF0, \
0x08B9FFE5, 0x00005EFF, 0xD3000000, 0x00000000, \
0x4F0008B9, 0xFFF60001, 0xCFFF6000, 0x0BFFF008, \
0xBBF4000B, 0x80008B00, 0x003DFFE6, 0x000BFFF0, \
0x004F0000, 0x6EFFD300, 0x08B9FFF6, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000B80, 0x0007F100, 0x04F002E7, 0x019E1006, \
0xE302D700, 0x09A107F2, 0x0002E701, 0x9E100000, \
0x00000000, 0x08F80000, 0x02E7019E, 0x1006E302, \
0xD70006E4, 0x04EF0000, 0x00000000, 0x0003C940, \
0x08F911AD, 0x0002E701, 0x9E100000, 0x00000000, \
0x4F0008F9, 0x11AD0009, 0xA107F200, 0x03C94008, \
0xF800000B, 0x80008B00, 0x00D9119E, 0x0003C940, \
0x004F0002, 0xF7019E10, 0x08F911AD, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000BDB, 0xBBCF8000, 0x04F00890, 0x000D6002, \
0x3000C800, 0x0BA10041, 0x00089000, 0x0D600000, \
0x00000000, 0x08D00000, 0x0890000D, 0x60023000, \
0xC8000C80, 0x007F0000, 0x00000000, 0x0000B800, \
0x08D0004F, 0x00089000, 0x0D600000, 0x00000000, \
0x4F0008D0, 0x004F000B, 0xA1004100, 0x00B80008, \
0xD000000B, 0x80008B00, 0x05F1001B, 0x3000B800, \
0x004F0008, 0xC0000E60, 0x08D0004F, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000BB8, 0x88850000, 0x04F00BDB, 0xBBBE8000, \
0x7BDFE800, 0x03EFB720, 0x000BDBBB, 0xBE800000, \
0x00000000, 0x08B00000, 0x0BDBBBBE, 0x80007BDF, \
0xE8000F40, 0x004F0000, 0x00000000, 0x0000B800, \
0x08B0004F, 0x000BDBBB, 0xBE800000, 0x00000000, \
0x4F0008B0, 0x004F0003, 0xEFB72000, 0x00B80008, \
0xB000000B, 0x80008B00, 0x08B00000, 0x0000B800, \
0x004F000B, 0x80000B80, 0x08B0004F, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000B80, 0x00000000, 0x04F00BB8, 0x88884009, \
0xE852B800, 0x00158DF4, 0x000BB888, 0x88400000, \
0x00000000, 0x08B00000, 0x0BB88888, 0x4009E852, \
0xB8000F40, 0x004F0000, 0x00000000, 0x0000B800, \
0x08B0004F, 0x000BB888, 0x88400000, 0x00000000, \
0x4F0008B0, 0x004F0000, 0x158DF400, 0x00B80008, \
0xB000000B, 0x80008B00, 0x08B00000, 0x0000B800, \
0x004F000B, 0x80000B80, 0x08B0004F, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000B80, 0x00000000, 0x04F008A0, 0x0007400F, \
0x5000D800, 0x082000C8, 0x0008A000, 0x07400000, \
0x00000000, 0x08B00000, 0x08A00007, 0x400F5000, \
0xD8000C80, 0x008F0000, 0x00000000, 0x0000B800, \
0x08B0004F, 0x0008A000, 0x07400000, 0x00000000, \
0x4F0008B0, 0x004F0008, 0x2000C800, 0x00B80008, \
0xB000000B, 0x8000AB00, 0x06E0001B, 0x3000B800, \
0x004F0009, 0xB0001F50, 0x08B0004F, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000B80, 0x00000000, 0x04F003F7, 0x019F200D, \
0x9029F800, 0x0BA104E6, 0x0003F701, 0x9F200000, \
0x00000000, 0x08B00000, 0x03F7019F, 0x200D9029, \
0xF80008E4, 0x04EF0000, 0x00000000, 0x0000BA40, \
0x08B0004F, 0x0003F701, 0x9F200000, 0x00000000, \
0x4F0008B0, 0x004F000B, 0xA104E600, 0x00BA4008, \
0xB0000009, 0xD207FB00, 0x01E9119D, 0x0000BA40, \
0x004F0004, 0xF7019D00, 0x08B0004F, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000B80, 0x00000000, 0x04F0006E, 0xFFE60006, \
0xFFF88F40, 0x03EFFF90, 0x00006EFF, 0xE6000000, \
0x00000000, 0x08B00000, 0x006EFFE6, 0x0006FFF8, \
0x8F40009F, 0xFE7F0000, 0x00000000, 0x00008FF0, \
0x08B0004F, 0x00006EFF, 0xE6000000, 0x00000000, \
0x4F0008B0, 0x004F0003, 0xEFFF9000, 0x008FF008, \
0xB0000003, 0xEFFC8B00, 0x003EFFD3, 0x00008FF0, \
0x004F0000, 0x6FFFD300, 0x08B0004F, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x44000000, \
0x14200410, 0x00044200, 0x00000044, 0x00000000, \
0x00000000, 0x00000000, 0x00004400, 0x00001420, \
0x04100002, 0x40000000, 0x00000000, 0x00000430, \
0x00000000, 0x00000044, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x04420000, 0x00043000, \
0x00000000, 0x04300000, 0x00004400, 0x00000430, \
0x00000000, 0x01430000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0003B000, \
0x00000000, 0x000005B8, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0000003B, 0x00000000, \
0x00000000, 0x00000000, 0x0000003B, 0x0003B000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0004F000, \
0x00000000, 0x00000EA6, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0000004F, 0x00000000, \
0x000000B8, 0x00000000, 0x00000028, 0x0004F000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x41004300, 0x00000242, 0x00000000, \
0x24100000, 0x00000000, 0x00024200, 0x0004F000, \
0x00000000, 0x00000F40, 0x00000044, 0x00000000, \
0x41000000, 0x00000000, 0x0002414F, 0x00000044, \
0x000000B8, 0x00000242, 0x00000000, 0x0004F000, \
0x03410000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000F7E, 0xFE6CFF90, 0x0001BFFF, 0xB10008B9, \
0xFFF6000B, 0x80008B00, 0x01BFFFB1, 0x0004F000, \
0x00000000, 0x0000FFFB, 0x00006EFF, 0xD30008BB, \
0xF4000000, 0x00000000, 0x009FFE9F, 0x00005EFF, \
0xD3000BFF, 0xF001BFFF, 0xB100004F, 0x0004F001, \
0xCFFF6000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000FD2, 0x1BF705F2, 0x0006E302, 0xD70008F9, \
0x11AD000B, 0x80008B00, 0x06E302D7, 0x0004F000, \
0x00000000, 0x00004F73, 0x0002F701, 0x9E1008F8, \
0x00000000, 0x00000000, 0x06E404EF, 0x0002E701, \
0x9E1003C9, 0x4006E302, 0xD700004F, 0x0004F009, \
0xA107F200, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000F60, 0x08C000F4, 0x00023000, 0xC80008D0, \
0x004F000B, 0x80008B00, 0x023000C8, 0x0004F000, \
0x00000000, 0x00000F40, 0x0008C000, 0x0E6008D0, \
0x00000000, 0x00000000, 0x0C80007F, 0x00089000, \
0x0D6000B8, 0x00023000, 0xC800004F, 0x0004F00B, \
0xA1004100, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000F40, 0x08B000F4, 0x00007BDF, 0xE80008B0, \
0x004F000B, 0x80008B00, 0x007BDFE8, 0x0004F000, \
0x00000000, 0x00000F40, 0x000B8000, 0x0B8008B0, \
0x00000000, 0x00000000, 0x0F40004F, 0x000BDBBB, \
0xBE8000B8, 0x00007BDF, 0xE800004F, 0x0004F003, \
0xEFB72000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000F40, 0x08B000F4, 0x0009E852, 0xB80008B0, \
0x004F000B, 0x80008B00, 0x09E852B8, 0x0004F000, \
0x00000000, 0x00000F40, 0x000B8000, 0x0B8008B0, \
0x00000000, 0x00000000, 0x0F40004F, 0x000BB888, \
0x884000B8, 0x0009E852, 0xB800004F, 0x0004F000, \
0x158DF400, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000F40, 0x08B000F4, 0x000F5000, 0xD80008B0, \
0x004F000B, 0x8000AB00, 0x0F5000D8, 0x0004F000, \
0x00000000, 0x00000F40, 0x0009B000, 0x1F5008B0, \
0x00000000, 0x00000000, 0x0C80008F, 0x0008A000, \
0x074000B8, 0x000F5000, 0xD800004F, 0x0004F008, \
0x2000C800, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000F40, 0x08B000F4, 0x000D9029, 0xF80008B0, \
0x004F0009, 0xD207FB00, 0x0D9029F8, 0x0004F000, \
0x00000000, 0x00000F40, 0x0004F701, 0x9D0008B0, \
0x00000000, 0x00000000, 0x08E404EF, 0x0003F701, \
0x9F2000BA, 0x400D9029, 0xF800004F, 0x0004F00B, \
0xA104E600, 0x04100000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000F40, 0x08B000F4, 0x0006FFF8, 0x8F4008B0, \
0x004F0003, 0xEFFC8B00, 0x06FFF88F, 0x4004F000, \
0x00000000, 0x00000F40, 0x00006FFF, 0xD30008B0, \
0x00000000, 0x00000000, 0x009FFE7F, 0x00006EFF, \
0xE600008F, 0xF006FFF8, 0x8F40004F, 0x0004F003, \
0xEFFF9000, 0x0F400000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00001420, 0x04100000, \
0x00000000, 0x04300000, 0x00142004, 0x10000000, \
0x00000000, 0x00000000, 0x00000143, 0x00000000, \
0x00000000, 0x00000000, 0x00024000, 0x00000044, \
0x00000004, 0x30001420, 0x04100000, 0x00000000, \
0x04420000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00009D14, 0x00232A14, 0x00296314, 0x002F8A14, \
0x00457E18, 0x0063CA14, 0x0084AA14, 0x00A03314, \
0x00A45E14, 0x00BB4E14, 0x00CA6514, 0x00D3770E, \
0x00E33302, 0x00E78108, 0x00EB2102, 0x00EC6C14, \
0x01008A14, 0x01163A14, 0x01217A14, 0x01377A14, \
0x014D8A14, 0x01638A14, 0x01798A14, 0x018F7A14, \
0x01A58A14, 0x01BB8A14, 0x01D1170E, 0x01D5490E, \
0x01DF770E, 0x01EF740A, 0x01F9770E, 0x02097A14, \
0x021FDC16, 0x024DBA14, 0x026E7A14, 0x0284BA14, \
0x02A59A14, 0x02C16A14, 0x02D26A14, 0x02E3BA14, \
0x03048A14, 0x031A1A14, 0x03206A14, 0x03318A14, \
0x03476A14, 0x0358CA14, 0x03799A14, 0x0395CA14, \
0x03B67A14, 0x03CCCA14, 0x03ED8A14, 0x04037A14, \
0x04196A14, 0x042A8A14, 0x0440AA14, 0x045CDA14, \
0x04839A14, 0x049F9A14, 0x04BB7A14, 0x04D14D14, \
0x04DF5C14, 0x04F33D14, 0x05015216, 0x050681FA, \
0x050A9D14, 0x052D9810, 0x05449A14, 0x05609810, \
0x05779A14, 0x05939810, 0x05AA5A14, 0x05BB9C10, \
0x05DC7A14, 0x05F22A14, 0x05F83D14, 0x06067A14, \
0x061C2A14, 0x0622D810, 0x06427810, 0x06549810, \
0x066B9B10, 0x06899B10, 0x06A74810, 0x06B06810, \
0x06BE5A14, 0x06CF770E, 0x06DF870E, 0x06EFB70E, \
0x0707670E, 0x07138A0E, 0x0729670E, 0x07356D14, \
0x074A1F16, 0x07526D14, 0x07675216, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x801CE7E0, 0x801CC040, 0x801D2D50, \
0x801CE590, 0x801CBD30, 0x801D2040, 0x801D2D90, \
0x801CE030, 0x801CE2A0, 0x801CE900, 0x801CE1F0, \
0x801CC1F0, 0x801CEBA0, 0x801CEC5C, 0x801CE888, \
0x05000000, 0x00000000, 0x00000000, 0x0000000C, \
0x00000001, 0x00000000, 0x00000000, 0x00000000, \
0x05000000, 0x00000000, 0x00000000, 0x0000000E, \
0x00000001, 0x801E5F80, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x2E2E2F7A, 0x5F6E3634, 0x64642E63, 0x00000000, \
0x64646D73, 0x67000000, 0x6E363464, 0x64000000, \
0x455A4C4A, 0x00000000, 0x455A4C45, 0x00000000, \
0x801C8034, 0x801C805C, 0x801C8080, 0x801C8098, \
0x801C80C8, 0x801C80F8, 0x801C811C, 0x801C810C, \
0x801C812C, 0x801C813C, 0x801C814C, 0x801C815C, \
0x801C816C, 0x801C8178, 0x00000000, 0x00000000, \
0x801C930C, 0x801C931C, 0x801C92BC, 0x801C931C, \
0x801C931C, 0x801C931C, 0x801C931C, 0x801C931C, \
0x801C931C, 0x801C931C, 0x801C931C, 0x801C931C, \
0x801C931C, 0x801C931C, 0x801C931C, 0x801C931C, \
0x801C931C, 0x801C931C, 0x801C931C, 0x801C931C, \
0x801C931C, 0x801C931C, 0x801C931C, 0x801C928C, \
0x801C931C, 0x801C931C, 0x801C931C, 0x801C931C, \
0x801C931C, 0x801C931C, 0x801C931C, 0x801C931C, \
0x801C931C, 0x801C931C, 0x801C92CC, 0x801C9314, \
0x801C931C, 0x801C931C, 0x801C931C, 0x801C931C, \
0x801C931C, 0x801C931C, 0x801C92FC, 0x801C931C, \
0x801C931C, 0x801C931C, 0x801C931C, 0x801C92EC, \
0x801C931C, 0x801C92DC, 0x00000000, 0x00000000, \
0xA5A8A5E9, 0xA1BCC8D6, 0xB9E6A1A1, 0xA1A1A1A1, \
0x00000000, 0x4572726F, 0x72204E75, 0x6D626572, \
0x20202020, 0x00000000, 0x00000000, 0x00000000, \
0xA1A1A1A1, 0xA5E1A5E2, 0xA5EAA1BC, 0xB3C8C4A5, \
0xA5D1A5C3, 0xA5AFA4AC, 0xC0B5A4B7, 0xA4AFBAB9, \
0xA4B7B9FE, 0x00000000, 0xA1A1A1A1, 0xA4F3A4C7, \
0xA4A2A4EA, 0xA4DEA4B9, 0xA4ABA1A9, 0xA1A1A1A1, \
0xA1A1A1A1, 0xA1A1A1A1, 0xA1A1A1A1, 0x00000000, \
0xA1A1A1A1, 0xB4D6B0E3, 0xA4C3A4BF, 0xA5C7A5A3, \
0xA5B9A5AF, 0xA4ACBAB9, 0xA4B7B9FE, 0xA4DEA4EC, \
0xA4C6A4A4, 0x00000000, 0xA1A1A1A1, 0xA4EBB2C4, \
0xC7BDC0AD, 0xA4ACA4A2, 0xA4EAA4DE, 0xA4B9A1A3, \
0xC0B5A4B7, 0xA4A4A5C7, 0xA5A3A5B9, 0x00000000, \
0xA1A1A1A1, 0xA5AFA4CB, 0xB8F2B4B9, 0xA4B7A4C6, \
0xA4AFA4C0, 0xA4B5A4A4, 0xA1A3A1A1, 0xA1A1A1A1, \
0xA1A1A1A1, 0x00000000, 0xA1A1A1A1, 0xC3EDB0D5, \
0xA1A7A5A2, 0xA5AFA5BB, 0xA5B9A5E9, 0xA5F3A5D7, \
0xC5C0CCC7, 0xC3E6A4CB, 0xA5C7A5A3, 0x00000000, \
0xA1A1A1A1, 0xA5B9A5AF, 0xA4F2C8B4, 0xA4ABA4CA, \
0xA4A4A4C7, 0xA4AFA4C0, 0xA4B5A4A4, 0xA1A3BEDC, \
0xA4B7A4AF, 0x00000000, 0xA1A1A1A1, 0xA4CFA1A2, \
0xBCE8B0B7, 0xC0E2CCC0, 0xBDF1A4F2, 0xA4AAC6C9, \
0xA4DFA4AF, 0xA4C0A4B5, 0xA4A4A1A3, 0x00000000, \
0xA1A1A1A1, 0xBEDCA4B7, 0xA4AFA4CF, 0xA1A2BCE8, \
0xB0B7C0E2, 0xCCC0BDF1, 0xA4F2A4AA, 0xC6C9A4DF, \
0xA4AFA4C0, 0x00000000, 0xA1A1A1A1, 0xA4B5A4A4, \
0xA1A3A1A1, 0xA1A1A1A1, 0xA1A1A1A1, 0xA1A1A1A1, \
0xA1A1A1A1, 0xA1A1A1A1, 0xA1A1A1A1, 0x00000000, \
0xA1A1A1A1, 0xA1A1A5C7, 0xA5A3A5B9, 0xA5AFA4F2, \
0xBAB9A4B7, 0xB9FEA4F3, 0xA4C7A4AF, 0xA4C0A4B5, \
0xA4A4A1A3, 0x00000000, 0xA1A1A1A1, 0xA5C7A5A3, \
0xA5B9A5AF, 0xA4F2BAB9, 0xA4B7B9FE, 0xA4DFC4BE, \
0xA4B7A4C6, 0xA4AFA4C0, 0xA4B5A4A4, 0xA1A30000, \
0xA1A1A1A1, 0xA1A1A5C7, 0xA5A3A5B9, 0xA5AFA4F2, \
0xBCE8A4EA, 0xBDD0A4B7, 0xA4C6A4AF, 0xA4C0A4B5, \
0xA4A4A1A3, 0x00000000, 0x20202020, 0x20204172, \
0x6520796F, 0x75207375, 0x72652020, 0x74686520, \
0x45787061, 0x6E73696F, 0x6E000000, 0x20202020, \
0x20205061, 0x6B202069, 0x73202020, 0x696E7365, \
0x72746564, 0x2020636F, 0x72726563, 0x746C793F, \
0x00000000, 0x20202020, 0x20202043, 0x6865636B, \
0x20746F20, 0x73656520, 0x20696620, 0x20746865, \
0x2070726F, 0x70657200, 0x20202020, 0x20202064, \
0x69736B20, 0x20697320, 0x20696E73, 0x65727465, \
0x642E0000, 0x20202020, 0x20202050, 0x6C656173, \
0x65202069, 0x6E736572, 0x74202074, 0x68652064, \
0x69736B20, 0x20746865, 0x00000000, 0x20202020, \
0x20202063, 0x6F727265, 0x63742020, 0x6469736B, \
0x2E000000, 0x20202020, 0x2020446F, 0x206E6F74, \
0x2072656D, 0x6F766520, 0x74686520, 0x6469736B, \
0x20776865, 0x6E000000, 0x20202020, 0x20207468, \
0x65202061, 0x63636573, 0x73206C69, 0x67687420, \
0x20697320, 0x20666C61, 0x7368696E, 0x672E0000, \
0x20202020, 0x2020506C, 0x65617365, 0x20207265, \
0x61642020, 0x74686520, 0x20696E73, 0x74727563, \
0x74696F6E, 0x00000000, 0x20202020, 0x20206D61, \
0x6E75616C, 0x2020666F, 0x72202064, 0x65746169, \
0x6C732E00, 0x20202020, 0x2020506C, 0x65617365, \
0x20207265, 0x61642020, 0x74686520, 0x20696E73, \
0x74727563, 0x74696F6E, 0x00000000, 0x20202020, \
0x20206D61, 0x6E75616C, 0x2020666F, 0x72202064, \
0x65746169, 0x6C732E00, 0x20202020, 0x20202020, \
0x20506C65, 0x61736520, 0x20696E73, 0x65727420, \
0x20612020, 0x6469736B, 0x2E000000, 0x20202020, \
0x20202020, 0x506C6561, 0x73652069, 0x6E736572, \
0x74207468, 0x65206469, 0x736B2061, 0x6761696E, \
0x2E000000, 0x20202020, 0x20202020, 0x506C6561, \
0x73652020, 0x72656D6F, 0x76652020, 0x74686520, \
0x20646973, 0x6B2E0000, 0x00000000, 0x00000000, \
0x00011085, 0x2109318D, 0x42115295, 0x6319739D, \
0x8C639CE7, 0xAD6BBDEF, 0xCE73DEF7, 0xEF7BFFFF, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00010809, 0x00000000, 0x801CB8C0, 0x801CB904, \
0x801CB904, 0x801CB904, 0x801CB904, 0x801CB904, \
0x801CB8C0, 0x801CB904, 0x801CB904, 0x801CB8C0, \
0x801CB8C0, 0x801CB8C0, 0x801CB8C0, 0x801CB8C0, \
0x801CB8C0, 0x801CB880, 0x801CB880, 0x801CB880, \
0x801CB880, 0x801CB880, 0x801CB880, 0x801CB880, \
0x801CB880, 0x801CB8C0, 0x801CB880, 0x801CB8C0, \
0x801CB8C0, 0x801CB8C0, 0x801CBA1C, 0x801CBA1C, \
0x801CB934, 0x801CB934, 0x801CB934, 0x801CB934, \
0x801CBA1C, 0x801CB934, 0x801CB934, 0x801CBA1C, \
0x801CB934, 0x801CBA1C, 0x801CBA1C, 0x801CBA1C, \
0x0E0F0000, 0x00000000, 0x00000000, 0x00000000, \
0x801CCB24, 0x801CCBB4, 0x801CCBB4, 0x801CCBB4, \
0x801CCB24, 0x801CCB24, 0x801CCB10, 0x801CCBB4, \
0x801CCBB4, 0x801CCBB4, 0x801CCBB4, 0x801CCBB4, \
0x801CCB24, 0x801CCBA4, 0x801CCBB4, 0x801CCBB4, \
0x801CCBB4, 0x801CCBA4, 0x801CCBA4, 0x801CCB7C, \
0x801CCBB4, 0x801CCBB4, 0x801CCBB4, 0x801CCB90, \
0x801CCBB4, 0x801CCBA4, 0x00000000, 0x00000000, \
0x42303134, 0x41323600, 0xE8D8D0C0, 0xB0A09080, \
0x70000000, 0x4D0847B8, 0x45103FC0, 0x3A703520, \
0x2FD02A80, 0x25300000, 0x01240248, 0x035A047E, \
0x05A206B4, 0x07C608D8, 0x09EA0AB6, 0x0B820C94, \
0x0DA60EB8, 0x0FCA10DC, 0x01240248, 0x035A046C, \
0x057E06A2, 0x07C608D8, 0x09EA0AFC, 0x0BC80C94, \
0x0DA60EB8, 0x0FCA10DC, 0x01240248, 0x035A046C, \
0x057E0690, 0x07A208C6, 0x09EA0AFC, 0x0C0E0CDA, \
0x0DA60EB8, 0x0FCA10DC, 0x01240248, 0x035A046C, \
0x057E0690, 0x07A208B4, 0x09C60AEA, 0x0C0E0D20, \
0x0DEC0EB8, 0x0FCA10DC, 0x01240248, 0x035A046C, \
0x057E0690, 0x07A208B4, 0x09C60AD8, 0x0BEA0D0E, \
0x0E320EFE, 0x0FCA10DC, 0x01240248, 0x035A046C, \
0x057E0690, 0x07A2086E, 0x09800A92, 0x0BA40CB6, \
0x0DC80EEC, 0x101010DC, 0x01240248, 0x035A046C, \
0x057E0690, 0x07A2086E, 0x093A0A4C, 0x0B5E0C70, \
0x0D820E94, 0x0FB810DC, 0x0000009E, 0x013C01D1, \
0x026602FB, 0x03900425, 0x0091012F, 0x01C40259, \
0x02EE0383, 0x0418048A, 0x00010209, 0x08030405, \
0x06070F0E, 0x0D0C0B0A, 0x00010203, 0x0A090804, \
0x0506070F, 0x0E0D0C0B, 0x00010203, 0x040B0A09, \
0x08050607, 0x0F0E0D0C, 0x00010203, 0x04050C0B, \
0x0A090806, 0x070F0E0D, 0x00010203, 0x0405060D, \
0x0C0B0A09, 0x08070F0E, 0x00010203, 0x04050607, \
0x0E0D0C0B, 0x0A09080F, 0x00010203, 0x04050607, \
0x0F0E0D0C, 0x0B0A0908, 0x0000009E, 0x013C01D1, \
0x026602FB, 0x03900425, 0x05A207C6, 0x09EA0C0E, \
0x0E321010, 0x10DC0000, 0x024A9DC0, 0x01C226C0, \
0x01450F00, 0x00D35680, 0x006CFD40, 0x001DA240, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x01020408, 0x10204080, 0x1D3A74E8, 0xCD871326, \
0x4C982D5A, 0xB475EAC9, 0x8F03060C, 0x183060C0, \
0x9D274E9C, 0x254A9435, 0x6AD4B577, 0xEEC19F23, \
0x468C050A, 0x142850A0, 0x5DBA69D2, 0xB96FDEA1, \
0x5FBE61C2, 0x992F5EBC, 0x65CA890F, 0x1E3C78F0, \
0xFDE7D3BB, 0x6BD6B17F, 0xFEE1DFA3, 0x5BB671E2, \
0xD9AF4386, 0x11224488, 0x0D1A3468, 0xD0BD67CE, \
0x811F3E7C, 0xF8EDC793, 0x3B76ECC5, 0x973366CC, \
0x85172E5C, 0xB86DDAA9, 0x4F9E2142, 0x84152A54, \
0xA84D9A29, 0x52A455AA, 0x49923972, 0xE4D5B773, \
0xE6D1BF63, 0xC6913F7E, 0xFCE5D7B3, 0x7BF6F1FF, \
0xE3DBAB4B, 0x963162C4, 0x95376EDC, 0xA557AE41, \
0x82193264, 0xC88D070E, 0x1C3870E0, 0xDDA753A6, \
0x51A259B2, 0x79F2F9EF, 0xC39B2B56, 0xAC458A09, \
0x12244890, 0x3D7AF4F5, 0xF7F3FBEB, 0xCB8B0B16, \
0x2C58B07D, 0xFAE9CF83, 0x1B366CD8, 0xAD478E01, \
0x02040810, 0x2040801D, 0x3A74E8CD, 0x8713264C, \
0x982D5AB4, 0x75EAC98F, 0x03060C18, 0x3060C09D, \
0x274E9C25, 0x4A94356A, 0xD4B577EE, 0xC19F2346, \
0x8C050A14, 0x2850A05D, 0xBA69D2B9, 0x6FDEA15F, \
0xBE61C299, 0x2F5EBC65, 0xCA890F1E, 0x3C78F0FD, \
0xE7D3BB6B, 0xD6B17FFE, 0xE1DFA35B, 0xB671E2D9, \
0xAF438611, 0x2244880D, 0x1A3468D0, 0xBD67CE81, \
0x1F3E7CF8, 0xEDC7933B, 0x76ECC597, 0x3366CC85, \
0x172E5CB8, 0x6DDAA94F, 0x9E214284, 0x152A54A8, \
0x4D9A2952, 0xA455AA49, 0x923972E4, 0xD5B773E6, \
0xD1BF63C6, 0x913F7EFC, 0xE5D7B37B, 0xF6F1FFE3, \
0xDBAB4B96, 0x3162C495, 0x376EDCA5, 0x57AE4182, \
0x193264C8, 0x8D070E1C, 0x3870E0DD, 0xA753A651, \
0xA259B279, 0xF2F9EFC3, 0x9B2B56AC, 0x458A0912, \
0x2448903D, 0x7AF4F5F7, 0xF3FBEBCB, 0x8B0B162C, \
0x58B07DFA, 0xE9CF831B, 0x366CD8AD, 0x478E0102, \
0x00000119, 0x02321AC6, 0x03DF33EE, 0x1B68C74B, \
0x0464E00E, 0x348DEF81, 0x1CC169F8, 0xC8084C71, \
0x058A652F, 0xE1240F21, 0x35938EDA, 0xF0128245, \
0x1DB5C27D, 0x6A27F9B9, 0xC99A0978, 0x4DE472A6, \
0x06BF8B62, 0x66DD30FD, 0xE29825B3, 0x10912288, \
0x36D094CE, 0x8F96DBBD, 0xF1D2135C, 0x83384640, \
0x1E42B6A3, 0xC3487E6E, 0x6B3A2854, 0xFA85BA3D, \
0xCA5E9B9F, 0x0A15792B, 0x4ED4E5AC, 0x73F3A757, \
0x0770C0F7, 0x8C80630D, 0x674ADEED, 0x31C5FE18, \
0xE3A59977, 0x26B8B47C, 0x114492D9, 0x2320892E, \
0x373FD15B, 0x95BCCFCD, 0x908797B2, 0xDCFCBE61, \
0xF256D3AB, 0x142A5D9E, 0x843C3953, 0x476D41A2, \
0x1F2D43D8, 0xB77BA476, 0xC41749EC, 0x7F0C6FF6, \
0x6CA13B52, 0x299D55AA, 0xFB6086B1, 0xBBCC3E5A, \
0xCB595FB0, 0x9CA9A051, 0x0BF516EB, 0x7A752CD7, \
0x4FAED5E9, 0xE6E7ADE8, 0x74D6F4EA, 0xA85058AF, \
0xFF011902, 0x321AC603, 0xDF33EE1B, 0x68C74B04, \
0x64E00E34, 0x8DEF811C, 0xC169F8C8, 0x084C7105, \
0x8A652FE1, 0x240F2135, 0x938EDAF0, 0x1282451D, \
0xB5C27D6A, 0x27F9B9C9, 0x9A09784D, 0xE472A606, \
0xBF8B6266, 0xDD30FDE2, 0x9825B310, 0x91228836, \
0xD094CE8F, 0x96DBBDF1, 0xD2135C83, 0x3846401E, \
0x42B6A3C3, 0x487E6E6B, 0x3A2854FA, 0x85BA3DCA, \
0x5E9B9F0A, 0x15792B4E, 0xD4E5AC73, 0xF3A75707, \
0x70C0F78C, 0x80630D67, 0x4ADEED31, 0xC5FE18E3, \
0xA5997726, 0xB8B47C11, 0x4492D923, 0x20892E37, \
0x3FD15B95, 0xBCCFCD90, 0x8797B2DC, 0xFCBE61F2, \
0x56D3AB14, 0x2A5D9E84, 0x3C395347, 0x6D41A21F, \
0x2D43D8B7, 0x7BA476C4, 0x1749EC7F, 0x0C6FF66C, \
0xA13B5229, 0x9D55AAFB, 0x6086B1BB, 0xCC3E5ACB, \
0x595FB09C, 0xA9A0510B, 0xF516EB7A, 0x752CD74F, \
0xAED5E9E6, 0xE7ADE874, 0xD6F4EAA8, 0x5058AFFF, \
0x801CCE08, 0x801CCDC0, 0x801CCDD0, 0x801CCDE0, \
0x801CCDF0, 0x00000000, 0x00000000, 0x00000000, \
0x00010000, 0x00020200, 0x80030100, 0x82040000, \
0xA8050000, 0xA0060600, 0x31760000, 0x00020300, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x04060000, \
0x40020000, 0x00020000, 0x40130B00, 0x42140100, \
0x68050000, 0x50060600, 0x401702FF, 0x01870000, \
0x40020000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x040F0000, \
0x630C1F17, 0x3B3B0000, 0x001F1C1F, 0x1E1F1E1F, \
0x1F1E1F1E, 0x1F000000, 0x00000000, 0x00000000
