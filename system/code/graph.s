# "Graph Thread" part of the code file
#
# Handles the "graph" thread.
#
# Starts at VRAM: 800A0FF0 / VROM: B16F50
#

.section .text
func_800A0FF0:
    lw      v0, 0x0000(a0)             # 00000000
    beq     a0, v0, lbl_800A1008
    nop
    lw      v0, 0x0000(v0)             # 00000000
lbl_800A1000:
    bnel    a0, v0, lbl_800A1000
    lw      v0, 0x0000(v0)             # 00000000
lbl_800A1008:
    jr      $ra
    nop


func_800A1010:
# Allocates main heap memory for the graph thread
# Reserves memory for the current game state
# Allocates "actor space" heap on main heap, and links to global context
# A0 = Region struct
# A1 = Allocate Size
# V0 = Allocate Start
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      a0, 0x001C($sp)
    sw      a2, 0x0018($sp)
    jal     func_800CDA20
    addiu   a0, a0, 0x0010             # a0 = 00000010
    beq     v0, $zero, lbl_800A1068
    lw      a2, 0x0018($sp)
    lw      t6, 0x001C($sp)
    sw      t6, 0x0008(v0)             # 00000008
    lw      t7, 0x0010(a2)             # 00000010
    sw      t7, 0x0004(v0)             # 00000004
    lw      t8, 0x0010(a2)             # 00000010
    sw      v0, 0x0000(t8)             # 00000000
    sw      v0, 0x0010(a2)             # 00000010
    sw      a2, 0x0000(v0)             # 00000000
    lw      t9, 0x0010(a2)             # 00000010
    addiu   v0, v0, 0x0010             # v0 = 00000010
    beq     $zero, $zero, lbl_800A106C
    sw      t9, 0x0004(a2)             # 00000004
lbl_800A1068:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A106C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A107C:
# Deallocates main heap memory for the graph thread
# unreserves memory for last game state
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    beql    a1, $zero, lbl_800A10BC
    lw      $ra, 0x0014($sp)
    lw      t6, -0x0010(a1)            # FFFFFFF0
    lw      t7, -0x000C(a1)            # FFFFFFF4
    addiu   a0, a1, 0xFFF0             # a0 = FFFFFFF0
    sw      t6, 0x0000(t7)             # 00000000
    lw      t9, -0x0010(a1)            # FFFFFFF0
    lw      t8, -0x000C(a1)            # FFFFFFF4
    sw      t8, 0x0004(t9)             # 00000004
    lw      t0, 0x0004(a2)             # 00000004
    jal     func_800CDB00
    sw      t0, 0x0010(a2)             # 00000010
    lw      $ra, 0x0014($sp)
lbl_800A10BC:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A10C8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    lw      s0, 0x0000(s1)             # 00000000
    beq     s1, s0, lbl_800A10F8
    or      a0, s0, $zero              # a0 = 00000000
lbl_800A10E8:
    jal     func_800CDB00
    lw      s0, 0x0000(s0)             # 00000000
    bnel    s1, s0, lbl_800A10E8
    or      a0, s0, $zero              # a0 = 00000000
lbl_800A10F8:
    sw      s1, 0x0010(s1)             # 00000010
    sw      s1, 0x0000(s1)             # 00000000
    sw      s1, 0x0004(s1)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_800A1118:
    sw      a0, 0x0010(a0)             # 00000010
    sw      a0, 0x0000(a0)             # 00000000
    sw      a0, 0x0004(a0)             # 00000004
    jr      $ra
    nop
    nop


func_800A1130:
# Initialize Frame Display List Buffers for rendering the next frame
# Switches Frame Display List Buffers
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    lw      t6, 0x02D8(s0)             # 000002D8
    lui     t9, 0x8017                 # t9 = 80170000
    addiu   t9, t9, 0xA640             # t9 = 8016A640
    andi    t7, t6, 0x0001             # t7 = 00000000
    sll     t8, t7,  3
    addu    t8, t8, t7
    sll     t8, t8,  3
    addu    t8, t8, t7
    sll     t8, t8,  6
    addu    t8, t8, t7
    sll     t8, t8,  4
    addu    s1, t8, t9
    addiu   t0, $zero, 0x1234          # t0 = 00001234
    lui     $at, 0x0001                # $at = 00010000
    sh      t0, 0x0000(s1)             # 00000000
    addu    $at, $at, s1
    addiu   t1, $zero, 0x5678          # t1 = 00005678
    sh      t1, 0x2408($at)            # 00012408
    addiu   a1, s1, 0x0008             # a1 = 00000008
    sw      a1, 0x0030($sp)
    addiu   a0, s0, 0x02B8             # a0 = 000002B8
    jal     func_8009FEC0
    ori     a2, $zero, 0xBF00          # a2 = 0000BF00
    ori     $at, $zero, 0xBF08         # $at = 0000BF08
    addu    a1, s1, $at
    sw      a1, 0x002C($sp)
    addiu   a0, s0, 0x02C8             # a0 = 000002C8
    jal     func_8009FEC0
    addiu   a2, $zero, 0x4000          # a2 = 00004000
    ori     $at, $zero, 0xFF08         # $at = 0000FF08
    addu    a1, s1, $at
    sw      a1, 0x0028($sp)
    addiu   a0, s0, 0x02A8             # a0 = 000002A8
    jal     func_8009FEC0
    addiu   a2, $zero, 0x2000          # a2 = 00002000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1F08           # $at = 00011F08
    addu    a1, s1, $at
    sw      a1, 0x0024($sp)
    addiu   a0, s0, 0x01B4             # a0 = 000001B4
    jal     func_8009FEC0
    addiu   a2, $zero, 0x0400          # a2 = 00000400
    lw      t2, 0x0030($sp)
    lw      a1, 0x0024($sp)
    lw      a0, 0x02E8(s0)             # 000002E8
    sw      t2, 0x0000(s0)             # 00000000
    lw      t3, 0x002C($sp)
    sw      t3, 0x0004(s0)             # 00000004
    lw      t4, 0x0028($sp)
    sw      a1, 0x01B0(s0)             # 000001B0
    sw      t4, 0x0010(s0)             # 00000010
    bgez    a0, lbl_800A1224
    andi    a0, a0, 0x0001             # a0 = 00000000
    beq     a0, $zero, lbl_800A1224
    nop
    addiu   a0, a0, 0xFFFE             # a0 = FFFFFFFE
lbl_800A1224:
    jal     func_800A43D8
    nop
    sw      v0, 0x02DC(s0)             # 000002DC
    sw      $zero, 0x0014(s0)          # 00000014
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_800A1248:
# Jump Table for determining what "Game Context" to load into memory next
# A0 = Glboal Context
# V0 = Address to Game Context Overlay record to load
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800A0FA0
    nop
    lui     t6, 0x800A                 # t6 = 800A0000
    addiu   t6, t6, 0x0748             # t6 = 800A0748
    bne     v0, t6, lbl_800A1274
    lw      $ra, 0x0014($sp)
    lui     v0, 0x800F                 # v0 = 800F0000
    beq     $zero, $zero, lbl_800A12F0
    addiu   v0, v0, 0x1340             # v0 = 800F1340
lbl_800A1274:
    lui     t7, 0x8080                 # t7 = 80800000
    addiu   t7, t7, 0x1C14             # t7 = 80801C14
    bne     v0, t7, lbl_800A1290
    lui     t8, 0x8080                 # t8 = 80800000
    lui     v0, 0x800F                 # v0 = 800F0000
    beq     $zero, $zero, lbl_800A12F0
    addiu   v0, v0, 0x1370             # v0 = 800F1370
lbl_800A1290:
    addiu   t8, t8, 0x07B0             # t8 = 808007B0
    bne     v0, t8, lbl_800A12A8
    lui     t9, 0x800A                 # t9 = 800A0000
    lui     v0, 0x800F                 # v0 = 800F0000
    beq     $zero, $zero, lbl_800A12F0
    addiu   v0, v0, 0x13A0             # v0 = 800F13A0
lbl_800A12A8:
    addiu   t9, t9, 0xA750             # t9 = 8009A750
    bne     v0, t9, lbl_800A12C0
    lui     t0, 0x8080                 # t0 = 80800000
    lui     v0, 0x800F                 # v0 = 800F0000
    beq     $zero, $zero, lbl_800A12F0
    addiu   v0, v0, 0x13D0             # v0 = 800F13D0
lbl_800A12C0:
    addiu   t0, t0, 0x37E8             # t0 = 808037E8
    bne     v0, t0, lbl_800A12D8
    lui     t1, 0x8081                 # t1 = 80810000
    lui     v0, 0x800F                 # v0 = 800F0000
    beq     $zero, $zero, lbl_800A12F0
    addiu   v0, v0, 0x1400             # v0 = 800F1400
lbl_800A12D8:
    addiu   t1, t1, 0x2394             # t1 = 80812394
    bne     v0, t1, lbl_800A12EC
    lui     v0, 0x800F                 # v0 = 800F0000
    beq     $zero, $zero, lbl_800A12F0
    addiu   v0, v0, 0x1430             # v0 = 800F1430
lbl_800A12EC:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A12F0:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_800A12F8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x02F8          # a1 = 000002F8
    jal     func_80002E80              # bzero
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    sw      $zero, 0x02D8(a3)          # 000002D8
    sw      $zero, 0x02E8(a3)          # 000002E8
    sw      $zero, 0x0284(a3)          # 00000284
    sw      $zero, 0x02E4(a3)          # 000002E4
    addiu   a0, a3, 0x005C             # a0 = 0000005C
    jal     func_80004220              # osCreateMesgQueue
    addiu   a1, a3, 0x0038             # a1 = 00000038
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A1348:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_800A1354:
# Start New Frame Task
# A0 = Graphics Context
    addiu   $sp, $sp, 0xFF70           # $sp -= 0x90
    sw      s1, 0x0028($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0024($sp)
    jal     func_800048C0              # osGetTime
    nop
    lui     t6, 0x8012                 # t6 = 80120000
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x2D64(t7)            # 8011D29C
    lw      t6, -0x2D68(t6)            # 8011D298
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0x0F98             # s0 = 80120F98
    lw      t0, 0x0000(s0)             # 80120F98
    lw      t1, 0x0004(s0)             # 80120F9C
    sltu    $at, v1, t7
    subu    t8, v0, t6
    subu    t8, t8, $at
    subu    t9, v1, t7
    lui     t4, 0x8012                 # t4 = 80120000
    subu    t2, t8, t0
    sltu    $at, t9, t1
    subu    t2, t2, $at
    addiu   t4, t4, 0x0F68             # t4 = 80120F68
    sw      t2, 0x0000(t4)             # 80120F68
    subu    t3, t9, t1
    sw      t3, 0x0004(t4)             # 80120F6C
    lui     a3, 0x0861                 # a3 = 08610000
    addiu   t6, $zero, 0x0000          # t6 = 00000000
    addiu   t7, $zero, 0x0000          # t7 = 00000000
    addiu   a1, s1, 0x005C             # a1 = 0000005C
    addiu   t5, $zero, 0x029A          # t5 = 0000029A
    sw      t5, 0x001C($sp)
    sw      a1, 0x0018($sp)
    sw      a1, 0x003C($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    ori     a3, a3, 0xC468             # a3 = 0861C468
    addiu   a0, $sp, 0x0068            # a0 = FFFFFFD8
    jal     func_80005A70              # osSetTimer
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lw      a0, 0x003C($sp)
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFD4
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_800D0CD0              # osStopTimer
    addiu   a0, $sp, 0x0068            # a0 = FFFFFFD8
    lw      t8, 0x0064($sp)
    addiu   $at, $zero, 0x029A         # $at = 0000029A
    bne     t8, $at, lbl_800A1430
    lui     a0, 0x8011                 # a0 = 80110000
    lui     a1, 0x8011                 # a1 = 80110000
    addiu   a1, a1, 0x8DB4             # a1 = 80108DB4
    jal     func_800AF564
    addiu   a0, a0, 0x8DA0             # a0 = 80108DA0
lbl_800A1430:
    lw      a0, 0x003C($sp)
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFD4
    jal     func_80002030              # osRecvMesg
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a2, 0x02EC(s1)             # 000002EC
    beq     a2, $zero, lbl_800A1454
    or      a0, s1, $zero              # a0 = 00000000
    jalr    $ra, a2
    lw      a1, 0x02F0(s1)             # 000002F0
lbl_800A1454:
    jal     func_800048C0              # osGetTime
    nop
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0x0F90             # a0 = 80120F90
    lw      t0, 0x0000(a0)             # 80120F90
    lw      t1, 0x0004(a0)             # 80120F94
    bnel    t0, $zero, lbl_800A1480
    lw      t2, 0x0000(s0)             # 80120F98
    beql    t1, $zero, lbl_800A14C0
    lw      t0, 0x0000(s0)             # 80120F98
    lw      t2, 0x0000(s0)             # 80120F98
lbl_800A1480:
    lw      t3, 0x0004(s0)             # 80120F9C
    lw      t6, 0x0000(a0)             # 80120F90
    lw      t7, 0x0004(a0)             # 80120F94
    addu    t5, t3, v1
    sltu    $at, t5, v1
    addu    t4, $at, t2
    addu    t4, t4, v0
    subu    t8, t4, t6
    sltu    $at, t5, t7
    subu    t8, t8, $at
    sw      t8, 0x0000(s0)             # 80120F98
    subu    t9, t5, t7
    sw      t9, 0x0004(s0)             # 80120F9C
    sw      v0, 0x0000(a0)             # 80120F90
    sw      v1, 0x0004(a0)             # 80120F94
    lw      t0, 0x0000(s0)             # 80120F98
lbl_800A14C0:
    lw      t1, 0x0004(s0)             # 80120F9C
    lui     t2, 0x8012                 # t2 = 80120000
    addiu   t2, t2, 0x0F60             # t2 = 80120F60
    sw      t0, 0x0000(t2)             # 80120F60
    addiu   t4, $zero, 0x0000          # t4 = 00000000
    sw      t1, 0x0004(t2)             # 80120F64
    sw      t4, 0x0000(s0)             # 80120F98
    addiu   t5, $zero, 0x0000          # t5 = 00000000
    jal     func_800048C0              # osGetTime
    sw      t5, 0x0004(s0)             # 80120F9C
    lui     $at, 0x8012                # $at = 80120000
    sw      v0, -0x2D68($at)           # 8011D298
    sw      v1, -0x2D64($at)           # 8011D29C
    addiu   s0, s1, 0x0088             # s0 = 00000088
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t3, 0x0000(s0)             # 00000088
    jal     func_800ACAB0
    sw      t6, 0x0004(s0)             # 0000008C
    jal     func_800ACAC0
    sw      v0, 0x0008(s0)             # 00000090
    jal     func_800ACADC
    sw      v0, 0x000C(s0)             # 00000094
    jal     func_800ACAEC
    sw      v0, 0x0010(s0)             # 00000098
    lui     t9, 0x8017                 # t9 = 80170000
    lui     t1, 0x8015                 # t1 = 80150000
    lui     t2, 0x8017                 # t2 = 80170000
    addiu   t7, $zero, 0x1000          # t7 = 00001000
    addiu   t8, $zero, 0x0800          # t8 = 00000800
    addiu   t9, t9, 0xA240             # t9 = 8016A240
    addiu   t0, $zero, 0x0400          # t0 = 00000400
    addiu   t1, t1, 0x1640             # t1 = 80151640
    addiu   t2, t2, 0x9640             # t2 = 80169640
    sw      v0, 0x0018(s0)             # 000000A0
    sw      t7, 0x0014(s0)             # 0000009C
    sw      t8, 0x001C(s0)             # 000000A4
    sw      t9, 0x0020(s0)             # 000000A8
    sw      t0, 0x0024(s0)             # 000000AC
    sw      t1, 0x0028(s0)             # 000000B0
    sw      t2, 0x002C(s0)             # 000000B4
    lw      t4, 0x01B0(s1)             # 000001B0
    lui     t7, 0x8017                 # t7 = 80170000
    addiu   t7, t7, 0x9640             # t7 = 80169640
    sw      t4, 0x0030(s0)             # 000000B8
    lw      t5, 0x01BC(s1)             # 000001BC
    lw      t3, 0x01B0(s1)             # 000001B0
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xBA00             # a3 = 8011BA00
    subu    t6, t5, t3
    sw      t6, 0x0034(s0)             # 000000BC
    addiu   t8, $zero, 0x0C00          # t8 = 00000C00
    sw      t7, 0x0038(s0)             # 000000C0
    sw      t8, 0x003C(s0)             # 000000C4
    addiu   a1, s1, 0x0078             # a1 = 00000078
    addiu   t9, $zero, 0x0063          # t9 = 00000063
    sw      $zero, 0x0000(a1)          # 00000078
    sw      t9, 0x0008(a1)             # 00000080
    lw      v0, 0x0000(a3)             # 8011BA00
    lui     a0, 0x8012                 # a0 = 80120000
    lui     t8, 0x8012                 # t8 = 80120000
    lh      v1, 0x0116(v0)             # 00000116
    addiu   a0, a0, 0xD2E0             # a0 = 8011D2E0
    addiu   t8, t8, 0xD250             # t8 = 8011D250
    andi    t0, v1, 0x0001             # t0 = 00000000
    beq     t0, $zero, lbl_800A15F0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    andi    t1, v1, 0xFFFE             # t1 = 00000000
    sh      t1, 0x0116(v0)             # 00000116
    lw      t2, 0x0008(a1)             # 00000080
    addiu   $at, $zero, 0xFFBF         # $at = FFFFFFBF
    and     t4, t2, $at
    sw      t4, 0x0008(a1)             # 00000080
    lw      t5, 0x02E8(s1)             # 000002E8
    addiu   t3, t5, 0xFFFF             # t3 = FFFFFFFF
    sw      t3, 0x02E8(s1)             # 000002E8
lbl_800A15F0:
    lw      t6, 0x003C($sp)
    lui     v1, 0x8010                 # v1 = 80100000
    lw      v1, -0x1B10(v1)            # 800FE4F0
    sw      $zero, 0x0054(a1)          # 000000CC
    sw      t6, 0x0050(a1)             # 000000C8
    sll     t7, v1,  2
    addu    t7, t7, v1
    addiu   v1, v1, 0x0001             # v1 = 80100001
    addiu   $at, $zero, 0x0003         # $at = 00000003
    div     $zero, v1, $at
    lw      t9, 0x02DC(s1)             # 000002DC
    sll     t7, t7,  2
    addu    v0, t7, t8
    sw      t9, 0x0000(v0)             # 00000000
    lw      t0, 0x02DC(s1)             # 000002DC
    mfhi    v1
    lui     $at, 0x8010                # $at = 80100000
    sw      t0, 0x0004(v0)             # 00000004
    lw      t1, 0x0284(s1)             # 00000284
    sw      t1, 0x0008(v0)             # 00000008
    lw      t2, 0x02E4(s1)             # 000002E4
    sb      $zero, 0x0010(v0)          # 00000010
    sw      t2, 0x000C(v0)             # 0000000C
    lw      t4, 0x0000(a3)             # 8011BA00
    lh      t5, 0x0110(t4)             # 00000110
    sb      t5, 0x0011(v0)             # 00000011
    sw      v0, 0x000C(a1)             # 00000084
    sw      a0, 0x0058(s1)             # 00000058
    jal     func_80001E20              # osSendMesg
    sw      v1, -0x1B10($at)           # 800FE4F0
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_800A3644
    addiu   a0, a0, 0xD2A8             # a0 = 8011D2A8
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp += 0x90


func_800A1688:
# Main graph update/draw function?
# A0 = ?
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0064($sp)
    lw      t6, 0x0064($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800A1130
    sw      $zero, 0x00A0(t6)          # 000000A0
    jal     func_800A0BA0
    lw      a0, 0x0064($sp)
    jal     func_800A0BD0
    lw      a0, 0x0064($sp)
    lui     t4, 0xDE01                 # t4 = DE010000
    lw      a0, 0x01BC(s0)             # 000001BC
    addiu   t7, a0, 0x0008             # t7 = 00000008
    sw      t7, 0x01BC(s0)             # 000001BC
    sw      t4, 0x0000(a0)             # 00000000
    lw      t8, 0x0000(s0)             # 00000000
    sw      t8, 0x0004(a0)             # 00000004
    lw      a2, 0x02C0(s0)             # 000002C0
    addiu   t9, a2, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0000(a2)             # 00000000
    lw      t5, 0x0004(s0)             # 00000004
    sw      t5, 0x0004(a2)             # 00000004
    lw      t0, 0x02D0(s0)             # 000002D0
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(t0)             # 00000000
    lw      t7, 0x0010(s0)             # 00000010
    sw      t7, 0x0004(t0)             # 00000004
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t6, 0xE900                 # t6 = E9000000
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t8, 0xDF00                 # t8 = DF000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    sw      $zero, 0x005C($sp)
    lw      t9, 0x02D8(s0)             # 000002D8
    lui     t7, 0x8017                 # t7 = 80170000
    addiu   t7, t7, 0xA640             # t7 = 8016A640
    andi    t5, t9, 0x0001             # t5 = 00000000
    sll     t6, t5,  3
    addu    t6, t6, t5
    sll     t6, t6,  3
    addu    t6, t6, t5
    sll     t6, t6,  6
    addu    t6, t6, t5
    sll     t6, t6,  4
    addu    v0, t6, t7
    lhu     t8, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x1234         # $at = 00001234
    beq     t8, $at, lbl_800A17A8
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x8DC4             # a0 = 80108DC4
    addiu   a1, $zero, 0x03A9          # a1 = 000003A9
    jal     func_800AF734
    sw      v0, 0x0038($sp)
    lw      v0, 0x0038($sp)
lbl_800A17A8:
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, v0
    lhu     t9, 0x2408(t9)             # 00012408
    addiu   $at, $zero, 0x5678         # $at = 00005678
    beq     t9, $at, lbl_800A17D4
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lui     a0, 0x8011                 # a0 = 80110000
    sw      t5, 0x005C($sp)
    addiu   a0, a0, 0x8DD0             # a0 = 80108DD0
    jal     func_800AF734
    addiu   a1, $zero, 0x03AF          # a1 = 000003AF
lbl_800A17D4:
    jal     func_8009FF00
    addiu   a0, s0, 0x02B8             # a0 = 000002B8
    beq     v0, $zero, lbl_800A17E8
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x005C($sp)
lbl_800A17E8:
    jal     func_8009FF00
    addiu   a0, s0, 0x02C8             # a0 = 000002C8
    beq     v0, $zero, lbl_800A17FC
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x005C($sp)
lbl_800A17FC:
    jal     func_8009FF00
    addiu   a0, s0, 0x02A8             # a0 = 000002A8
    beq     v0, $zero, lbl_800A1810
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x005C($sp)
lbl_800A1810:
    lw      t9, 0x005C($sp)
    bne     t9, $zero, lbl_800A183C
    nop
    jal     func_800A1354
    or      a0, s0, $zero              # a0 = 00000000
    lw      t5, 0x02D8(s0)             # 000002D8
    lw      t7, 0x02E8(s0)             # 000002E8
    addiu   t6, t5, 0x0001             # t6 = 00000001
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sw      t6, 0x02D8(s0)             # 000002D8
    sw      t8, 0x02E8(s0)             # 000002E8
lbl_800A183C:
    jal     func_800C3DC8
    nop
    jal     func_800048C0              # osGetTime
    nop
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0x0FA8             # a0 = 80120FA8
    lw      t6, 0x0000(a0)             # 80120FA8
    lw      t7, 0x0004(a0)             # 80120FAC
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   t9, t9, 0x0F78             # t9 = 80120F78
    lui     a1, 0x8012                 # a1 = 80120000
    sw      t6, 0x0000(t9)             # 80120F78
    addiu   a1, a1, 0x0FA0             # a1 = 80120FA0
    sw      t7, 0x0004(t9)             # 80120F7C
    lw      t8, 0x0000(a1)             # 80120FA0
    lw      t9, 0x0004(a1)             # 80120FA4
    lui     t5, 0x8012                 # t5 = 80120000
    addiu   t5, t5, 0x0F70             # t5 = 80120F70
    lui     a2, 0x8012                 # a2 = 80120000
    sw      t8, 0x0000(t5)             # 80120F70
    addiu   a2, a2, 0x0FC0             # a2 = 80120FC0
    sw      t9, 0x0004(t5)             # 80120F74
    lw      t6, 0x0000(a2)             # 80120FC0
    lw      t7, 0x0004(a2)             # 80120FC4
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   t8, t8, 0x0F80             # t8 = 80120F80
    sw      t6, 0x0000(t8)             # 80120F80
    sw      t7, 0x0004(t8)             # 80120F84
    addiu   t6, $zero, 0x0000          # t6 = 00000000
    sw      t6, 0x0000(a0)             # 80120FA8
    addiu   t7, $zero, 0x0000          # t7 = 00000000
    sw      t7, 0x0004(a0)             # 80120FAC
    addiu   t8, $zero, 0x0000          # t8 = 00000000
    sw      t8, 0x0000(a1)             # 80120FA0
    addiu   t9, $zero, 0x0000          # t9 = 00000000
    sw      t9, 0x0004(a1)             # 80120FA4
    sw      t6, 0x0000(a2)             # 80120FC0
    sw      t7, 0x0004(a2)             # 80120FC4
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x2D70(t8)            # 8011D290
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x2D6C(t9)            # 8011D294
    sw      t8, 0x0020($sp)
    bne     t8, $zero, lbl_800A18F4
    sw      t9, 0x0024($sp)
    beq     t9, $zero, lbl_800A1914
lbl_800A18F4:
    sltu    $at, v1, t9
    subu    t6, v0, t8
    lui     t5, 0x8012                 # t5 = 80120000
    addiu   t5, t5, 0x0F88             # t5 = 80120F88
    subu    t6, t6, $at
    sw      t6, 0x0000(t5)             # 80120F88
    subu    t7, v1, t9
    sw      t7, 0x0004(t5)             # 80120F8C
lbl_800A1914:
    lui     $at, 0x8012                # $at = 80120000
    sw      v0, -0x2D70($at)           # 8011D290
    sw      v1, -0x2D6C($at)           # 8011D294
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_800A1934:
# graph thread entrypoint
# Main game loop (never returns under normal circumstances)
# A0 = 0
    addiu   $sp, $sp, 0xFCC8           # $sp -= 0x338
    sw      s0, 0x0018($sp)
    lui     s0, 0x800F                 # s0 = 800F0000
    sw      s1, 0x001C($sp)
    addiu   s1, $sp, 0x0040            # s1 = FFFFFD08
    addiu   s0, s0, 0x1340             # s0 = 800F1340
    sw      $ra, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      a0, 0x0338($sp)
    or      s2, s0, $zero              # s2 = 800F1340
    jal     func_800A12F8
    or      a0, s1, $zero              # a0 = FFFFFD08
    beq     s0, $zero, lbl_800A1A04
    lui     s4, 0x8011                 # s4 = 80110000
    addiu   s4, s4, 0x8DDC             # s4 = 80108DDC
    or      s3, s2, $zero              # s3 = 800F1340
lbl_800A197C:
    jal     func_8001E9D0
    or      a0, s2, $zero              # a0 = 800F1340
    jal     func_800CDA20
    lw      a0, 0x002C(s2)             # 800F136C
    bne     v0, $zero, lbl_800A19A0
    or      s0, v0, $zero              # s0 = 00000000
    or      a0, s4, $zero              # a0 = 80108DDC
    jal     func_800AF734
    addiu   a1, $zero, 0x042B          # a1 = 0000042B
lbl_800A19A0:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0018(s2)             # 800F1358
    jal     func_800A0DF8
    or      a2, s1, $zero              # a2 = FFFFFD08
    jal     func_800A0FB8
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_800A19D8
    or      a0, s1, $zero              # a0 = FFFFFD08
lbl_800A19C0:
    jal     func_800A1688
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800A0FB8
    or      a0, s0, $zero              # a0 = 00000000
    bnel    v0, $zero, lbl_800A19C0
    or      a0, s1, $zero              # a0 = FFFFFD08
lbl_800A19D8:
    jal     func_800A1248
    or      a0, s0, $zero              # a0 = 00000000
    or      s2, v0, $zero              # s2 = 00000000
    jal     func_800A0EF0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800CDB00
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8001EAF8
    or      a0, s3, $zero              # a0 = 800F1340
    bnel    s2, $zero, lbl_800A197C
    or      s3, s2, $zero              # s3 = 00000000
lbl_800A1A04:
    jal     func_800A1348
    or      a0, s1, $zero              # a0 = FFFFFD08
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0338           # $sp += 0x338


func_800A1A2C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    addiu   a1, a3, 0x000F             # a1 = 0000000F
    addiu   $at, $zero, 0xFFF0         # $at = FFFFFFF0
    and     a1, a1, $at
    jal     func_800A0024
    addiu   a0, a2, 0x02B8             # a0 = 000002B8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A1A60:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    addiu   a1, a3, 0x000F             # a1 = 0000000F
    addiu   $at, $zero, 0xFFF0         # $at = FFFFFFF0
    and     a1, a1, $at
    jal     func_800A0024
    addiu   a0, a2, 0x02B8             # a0 = 000002B8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
    nop


func_800A1AA0:
    addiu   v0, a0, 0x0008             # v0 = 00000008
    jr      $ra
    nop


func_800A1AAC:
    lui     t6, 0xDE01                 # t6 = DE010000
    sw      t6, 0x0000(a0)             # 00000000
    sw      a1, 0x0004(a0)             # 00000004
    or      v0, a1, $zero              # v0 = 00000000
    jr      $ra
    nop


func_800A1AC4:
    lw      a2, 0x0000(a0)             # 00000000
    addiu   a1, a1, 0x0007             # a1 = 00000007
    addiu   $at, $zero, 0xFFF8         # $at = FFFFFFF8
    and     a1, a1, $at
    addiu   v1, a2, 0x0008             # v1 = 00000008
    lui     t6, 0xDE01                 # t6 = DE010000
    addu    a3, v1, a1
    sw      a3, 0x0004(a2)             # 00000004
    sw      t6, 0x0000(a2)             # 00000000
    sw      a3, 0x0000(a0)             # 00000000
    or      v0, v1, $zero              # v0 = 00000008
    jr      $ra
    nop
    nop
    nop


func_800A1B00:
    sw      $zero, 0x0000(a0)          # 00000000
    sw      $zero, 0x0004(a0)          # 00000004
    or      v0, a0, $zero              # v0 = 00000000
    jr      $ra
    nop


func_800A1B14:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a1, 0x0008             # a0 = 00000008
    jal     func_800CDA20
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    bne     v0, $zero, lbl_800A1B40
    or      a0, v0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_800A1B70
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800A1B40:
    lw      v1, 0x0004(a2)             # 00000004
    beql    v1, $zero, lbl_800A1B54
    sw      v1, 0x0000(v0)             # 00000000
    sw      v0, 0x0004(v1)             # 00000004
    sw      v1, 0x0000(v0)             # 00000000
lbl_800A1B54:
    sw      $zero, 0x0004(v0)          # 00000004
    lw      t6, 0x0000(a2)             # 00000000
    sw      v0, 0x0004(a2)             # 00000004
    bnel    t6, $zero, lbl_800A1B70
    addiu   v0, a0, 0x0008             # v0 = 00000008
    sw      v0, 0x0000(a2)             # 00000000
    addiu   v0, a0, 0x0008             # v0 = 00000008
lbl_800A1B70:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A1B80:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, -0x0008(a1)            # FFFFFFF8
    addiu   a0, a1, 0xFFF8             # a0 = FFFFFFF8
    beql    t6, $zero, lbl_800A1BAC
    addiu   a0, a1, 0xFFF8             # a0 = FFFFFFF8
    lw      t7, 0x0004(a0)             # FFFFFFFC
    lw      t8, 0x0000(a0)             # FFFFFFF8
    sw      t7, 0x0004(t8)             # 00000004
    addiu   a0, a1, 0xFFF8             # a0 = FFFFFFF8
lbl_800A1BAC:
    lw      v0, 0x0004(a0)             # FFFFFFFC
    beql    v0, $zero, lbl_800A1BC4
    lw      t0, 0x0000(a2)             # 00000000
    lw      t9, 0x0000(a0)             # FFFFFFF8
    sw      t9, 0x0000(v0)             # 00000000
    lw      t0, 0x0000(a2)             # 00000000
lbl_800A1BC4:
    bnel    a0, t0, lbl_800A1BD8
    lw      t2, 0x0004(a2)             # 00000004
    lw      t1, 0x0004(a0)             # FFFFFFFC
    sw      t1, 0x0000(a2)             # 00000000
    lw      t2, 0x0004(a2)             # 00000004
lbl_800A1BD8:
    bne     a0, t2, lbl_800A1BE8
    nop
    lw      t3, 0x0000(a0)             # FFFFFFF8
    sw      t3, 0x0004(a2)             # 00000004
lbl_800A1BE8:
    jal     func_800CDB00
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A1C00:
# Crash debugger related.
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    lw      s0, 0x0000(s1)             # 00000000
    beq     s0, $zero, lbl_800A1C34
    or      a0, s1, $zero              # a0 = 00000000
lbl_800A1C20:
    jal     func_800A1B80
    addiu   a1, s0, 0x0008             # a1 = 00000008
    lw      s0, 0x0000(s1)             # 00000000
    bnel    s0, $zero, lbl_800A1C20
    or      a0, s1, $zero              # a0 = 00000000
lbl_800A1C34:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    nop
    nop
