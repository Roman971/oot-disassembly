.section .text
func_80000460:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8000                 # t6 = 80000000
    lw      t6, 0x0318(t6)             # 80000318
    lui     t7, 0x0001                 # t7 = 00010000
    addiu   t7, t7, 0xB140             # t7 = 0000B140
    lui     a0, 0x8001                 # a0 = 80010000
    addiu   a0, a0, 0xB140             # a0 = 8000B140
    jal     func_80002E80              # bzero
    subu    a1, t6, t7
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80000498:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lui     t7, 0x8000                 # t7 = 80000000
    addiu   t7, t7, 0x6550             # t7 = 80006550
    lui     a0, 0x8000                 # a0 = 80000000
    lui     a1, 0x8000                 # a1 = 80000000
    lui     a2, 0x8000                 # a2 = 80000000
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    sw      t6, 0x0010($sp)
    addiu   a2, a2, 0x7220             # a2 = 80007220
    addiu   a1, a1, 0x6E20             # a1 = 80006E20
    addiu   a0, a0, 0x6830             # a0 = 80006830
    sw      t7, 0x0014($sp)
    jal     func_80001890              # __osInitStack
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80003E90
    nop
    lui     $at, 0x8000                # $at = 80000000
    jal     func_80001570
    sw      v0, 0x0318($at)            # 80000318
    jal     func_80000460
    nop
    jal     func_80003070
    nop
    jal     func_80005680
    nop
    lui     $at, 0x8000                # $at = 80000000
    jal     func_80001600              # osCartRomInit
    sw      v0, 0x6260($at)            # 80006260
    jal     func_800012A0
    nop
    lui     t9, 0x8000                 # t9 = 80000000
    addiu   t9, t9, 0x6558             # t9 = 80006558
    lui     a0, 0x8000                 # a0 = 80000000
    lui     a1, 0x8000                 # a1 = 80000000
    lui     a2, 0x8000                 # a2 = 80000000
    addiu   t8, $zero, 0x0100          # t8 = 00000100
    sw      t8, 0x0010($sp)
    addiu   a2, a2, 0x6E00             # a2 = 80006E00
    addiu   a1, a1, 0x6A00             # a1 = 80006A00
    addiu   a0, a0, 0x6E00             # a0 = 80006E00
    sw      t9, 0x0014($sp)
    jal     func_80001890              # __osInitStack
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t0, 0x8000                 # t0 = 80000000
    addiu   t0, t0, 0x6E00             # t0 = 80006E00
    lui     a0, 0x8000                 # a0 = 80000000
    lui     a2, 0x8000                 # a2 = 80000000
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    sw      t1, 0x0014($sp)
    addiu   a2, a2, 0x063C             # a2 = 8000063C
    addiu   a0, a0, 0x6850             # a0 = 80006850
    sw      t0, 0x0010($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_80002F20              # osCreateThread
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a0, 0x8000                 # a0 = 80000000
    jal     func_80005EC0              # osStartThread
    addiu   a0, a0, 0x6850             # a0 = 80006850
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop
    nop
    nop


func_800005A0:
# Main Thread Entrypoint
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    jal     func_80000E6C
    nop
    jal     func_800048C0              # osGetTime
    nop
    lui     a3, 0x00A8                 # a3 = 00A80000
    lui     t6, 0x00B9                 # t6 = 00B90000
    addiu   a1, a3, 0x7000             # a1 = 00A87000
    addiu   t6, t6, 0xAD30             # t6 = 00B8AD30
    lui     a0, 0x8001                 # a0 = 80010000
    sw      v0, 0x0018($sp)
    sw      v1, 0x001C($sp)
    addiu   a0, a0, 0x10A0             # a0 = 800110A0
    jal     func_80000DF0
    subu    a2, t6, a1
    jal     func_800048C0              # osGetTime
    nop
    lw      t8, 0x0018($sp)
    lw      t9, 0x001C($sp)
    lui     a0, 0x8011                 # a0 = 80110000
    lui     t7, 0x8013                 # t7 = 80130000
    subu    t0, t8, v0
    sltu    $at, t9, v1
    subu    t0, t0, $at
    addiu   a0, a0, 0x4DD0             # a0 = 80114DD0
    addiu   t7, t7, 0xBE30             # t7 = 8012BE30
    subu    t1, t9, v1
    sw      t1, 0x001C($sp)
    sw      t0, 0x0018($sp)
    jal     func_80002E80              # bzero
    subu    a1, t7, a0
    jal     func_800A1C50
    lw      a0, 0x0020($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8000063C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    jal     func_80005BA0              # osCreateViManager
    addiu   a0, $zero, 0x00FE          # a0 = 000000FE
    lui     v0, 0x8000                 # v0 = 80000000
    lw      v0, 0x0300(v0)             # 80000300
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    beq     v0, $zero, lbl_80000680
    lui     a0, 0x8000                 # a0 = 80000000
    beq     v0, $at, lbl_80000680
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_800006D4
    addiu   t2, $zero, 0x001E          # t2 = 0000001E
    beq     $zero, $zero, lbl_80000724
    nop
lbl_80000680:
    lui     t8, 0x8000                 # t8 = 80000000
    lui     $at, 0x8000                # $at = 80000000
    addiu   t8, t8, 0x63C0             # t8 = 800063C0
    lui     t7, 0x8000                 # t7 = 80000000
    sb      t6, 0x6230($at)            # 80006230
    addiu   t7, t7, 0x7CD0             # t7 = 80007CD0
    addiu   t1, t8, 0x0048             # t1 = 80006408
lbl_8000069C:
    lw      t0, 0x0000(t8)             # 800063C0
    addiu   t8, t8, 0x000C             # t8 = 800063CC
    addiu   t7, t7, 0x000C             # t7 = 80007CDC
    sw      t0, -0x000C(t7)            # 80007CD0
    lw      t9, -0x0008(t8)            # 800063C4
    sw      t9, -0x0008(t7)            # 80007CD4
    lw      t0, -0x0004(t8)            # 800063C8
    bne     t8, t1, lbl_8000069C
    sw      t0, -0x0004(t7)            # 80007CD8
    lw      t0, 0x0000(t8)             # 800063CC
    lw      t9, 0x0004(t8)             # 800063D0
    sw      t0, 0x0000(t7)             # 80007CDC
    beq     $zero, $zero, lbl_80000724
    sw      t9, 0x0004(t7)             # 80007CE0
lbl_800006D4:
    lui     t4, 0x8000                 # t4 = 80000000
    lui     $at, 0x8000                # $at = 80000000
    addiu   t4, t4, 0x6410             # t4 = 80006410
    lui     t3, 0x8000                 # t3 = 80000000
    sb      t2, 0x6230($at)            # 80006230
    addiu   t3, t3, 0x7CD0             # t3 = 80007CD0
    addiu   t1, t4, 0x0048             # t1 = 80006458
lbl_800006F0:
    lw      t6, 0x0000(t4)             # 80006410
    addiu   t4, t4, 0x000C             # t4 = 8000641C
    addiu   t3, t3, 0x000C             # t3 = 80007CDC
    sw      t6, -0x000C(t3)            # 80007CD0
    lw      t5, -0x0008(t4)            # 80006414
    sw      t5, -0x0008(t3)            # 80007CD4
    lw      t6, -0x0004(t4)            # 80006418
    bne     t4, t1, lbl_800006F0
    sw      t6, -0x0004(t3)            # 80007CD8
    lw      t6, 0x0000(t4)             # 8000641C
    lw      t5, 0x0004(t4)             # 80006420
    sw      t6, 0x0000(t3)             # 80007CDC
    sw      t5, 0x0004(t3)             # 80007CE0
lbl_80000724:
    jal     func_80003D60
    addiu   a0, a0, 0x7CD0             # a0 = 80007CD0
    jal     func_80003BE0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lui     a1, 0x8000                 # a1 = 80000000
    lui     a2, 0x8000                 # a2 = 80000000
    addiu   a2, a2, 0x7BF0             # a2 = 80007BF0
    addiu   a1, a1, 0x7CB8             # a1 = 80007CB8
    addiu   a0, $zero, 0x0096          # a0 = 00000096
    jal     func_80003500              # osCreatePiManager
    addiu   a3, $zero, 0x0032          # a3 = 00000032
    lui     t7, 0x8000                 # t7 = 80000000
    addiu   t7, t7, 0x6560             # t7 = 80006560
    lui     a0, 0x8000                 # a0 = 80000000
    lui     a1, 0x8000                 # a1 = 80000000
    lui     a2, 0x8000                 # a2 = 80000000
    addiu   t8, $zero, 0x0400          # t8 = 00000400
    sw      t8, 0x0010($sp)
    addiu   a2, a2, 0x7BD0             # a2 = 80007BD0
    addiu   a1, a1, 0x73D0             # a1 = 800073D0
    addiu   a0, a0, 0x7BD0             # a0 = 80007BD0
    sw      t7, 0x0014($sp)
    jal     func_80001890              # __osInitStack
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t9, 0x8000                 # t9 = 80000000
    addiu   t9, t9, 0x7BD0             # t9 = 80007BD0
    lui     a0, 0x8000                 # a0 = 80000000
    lui     a2, 0x8000                 # a2 = 80000000
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    sw      t0, 0x0014($sp)
    addiu   a2, a2, 0x05A0             # a2 = 800005A0
    addiu   a0, a0, 0x7220             # a0 = 80007220
    sw      t9, 0x0010($sp)
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    jal     func_80002F20              # osCreateThread
    lw      a3, 0x0020($sp)
    lui     a0, 0x8000                 # a0 = 80000000
    jal     func_80005EC0              # osStartThread
    addiu   a0, a0, 0x7220             # a0 = 80007220
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80004480              # osSetThreadPri
    or      a1, $zero, $zero           # a1 = 00000000
lbl_800007CC:
    beq     $zero, $zero, lbl_800007CC
    nop
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop
    nop
    nop


func_800007F0:
    lbu     v0, 0x0000(a0)             # 00000000
    beql    v0, $zero, lbl_80000840
    lbu     t6, 0x0000(a1)             # 00000000
    lbu     v1, 0x0000(a1)             # 00000000
lbl_80000800:
    slt     $at, v1, v0
    beql    $at, $zero, lbl_80000818
    slt     $at, v0, v1
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80000814:
    slt     $at, v0, v1
lbl_80000818:
    beql    $at, $zero, lbl_8000082C
    lbu     v0, 0x0001(a0)             # 00000001
    jr      $ra
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80000828:
    lbu     v0, 0x0001(a0)             # 00000001
lbl_8000082C:
    addiu   a0, a0, 0x0001             # a0 = 00000001
    addiu   a1, a1, 0x0001             # a1 = 00000001
    bnel    v0, $zero, lbl_80000800
    lbu     v1, 0x0000(a1)             # 00000001
    lbu     t6, 0x0000(a1)             # 00000001
lbl_80000840:
    or      v0, $zero, $zero           # v0 = 00000000
    blez    t6, lbl_80000854
    nop
    jr      $ra
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80000854:
    jr      $ra
    nop


func_8000085C:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a2, $zero              # s3 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s8, 0x0038($sp)
    sw      s7, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lui     s0, 0x8000                 # s0 = 80000000
    lw      s0, 0x6274(s0)             # 80006274
    or      a0, s4, $zero              # a0 = 00000000
    bne     s0, $zero, lbl_800008AC
    nop
    addiu   s0, $zero, 0x2000          # s0 = 00002000
lbl_800008AC:
    jal     func_800041A0              # osInvalICache
    or      a1, s3, $zero              # a1 = 00000000
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_80004250              # osInvalDCache
    or      a1, s3, $zero              # a1 = 00000000
    addiu   s6, $sp, 0x0058            # s6 = FFFFFFD0
    or      a0, s6, $zero              # a0 = FFFFFFD0
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFCC
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sltu    $at, s0, s3
    beq     $at, $zero, lbl_80000940
    addiu   s8, $sp, 0x0070            # s8 = FFFFFFE8
    lui     s7, 0x8000                 # s7 = 80000000
    lui     s5, 0x8000                 # s5 = 80000000
    addiu   s5, s5, 0x6270             # s5 = 80006270
    addiu   s7, s7, 0x6260             # s7 = 80006260
lbl_800008F0:
    sb      $zero, 0x0072($sp)
    sw      s6, 0x0074($sp)
    sw      s2, 0x007C($sp)
    sw      s4, 0x0078($sp)
    sw      s0, 0x0080($sp)
    lw      a0, 0x0000(s7)             # 80006260
    or      a1, s8, $zero              # a1 = FFFFFFE8
    jal     func_800040C0              # osEPiStartDma
    or      a2, $zero, $zero           # a2 = 00000000
    bne     v0, $zero, lbl_80000990
    or      v1, v0, $zero              # v1 = 00000000
    or      a0, s6, $zero              # a0 = FFFFFFD0
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    subu    s3, s3, s0
    sltu    $at, s0, s3
    addu    s2, s2, s0
    bne     $at, $zero, lbl_800008F0
    addu    s4, s4, s0
lbl_80000940:
    lui     s7, 0x8000                 # s7 = 80000000
    addiu   s7, s7, 0x6260             # s7 = 80006260
    addiu   s8, $sp, 0x0070            # s8 = FFFFFFE8
    sb      $zero, 0x0072($sp)
    sw      s6, 0x0074($sp)
    sw      s2, 0x007C($sp)
    sw      s4, 0x0078($sp)
    sw      s3, 0x0080($sp)
    lw      a0, 0x0000(s7)             # 80006260
    or      a1, s8, $zero              # a1 = FFFFFFE8
    jal     func_800040C0              # osEPiStartDma
    or      a2, $zero, $zero           # a2 = 00000000
    bne     v0, $zero, lbl_80000990
    or      v1, v0, $zero              # v1 = 00000000
    or      a0, s6, $zero              # a0 = FFFFFFD0
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80002030              # osRecvMesg
    sw      v0, 0x0050($sp)
    lw      v1, 0x0050($sp)
lbl_80000990:
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    jal     func_800041A0              # osInvalICache
    sw      v1, 0x0050($sp)
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_80004250              # osInvalDCache
    or      a1, s3, $zero              # a1 = 00000000
    lw      v0, 0x0050($sp)
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
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_800009E0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lbu     t6, 0x1212(t6)             # 80121212
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0x1214             # s0 = 80121214
    beql    t6, $zero, lbl_80000A34
    lw      a0, 0x0020($sp)
    lbu     t7, 0x0000(s0)             # 80121214
    beql    t7, $zero, lbl_80000A34
    lw      a0, 0x0020($sp)
lbl_80000A1C:
    jal     func_80001CCC
    addiu   a0, $zero, 0x03E8          # a0 = 000003E8
    lbu     t8, 0x0000(s0)             # 80121214
    bne     t8, $zero, lbl_80000A1C
    nop
    lw      a0, 0x0020($sp)
lbl_80000A34:
    lw      a1, 0x0024($sp)
    jal     func_800040C0              # osEPiStartDma
    lw      a2, 0x0028($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80000A54:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    sw      a2, 0x0060($sp)
    jal     func_80001600              # osCartRomInit
    nop
    sw      v0, 0x0050($sp)
    lw      a0, 0x0058($sp)
    jal     func_800041A0              # osInvalICache
    lw      a1, 0x0060($sp)
    lw      a0, 0x0058($sp)
    jal     func_80004250              # osInvalDCache
    lw      a1, 0x0060($sp)
    addiu   a0, $sp, 0x0038            # a0 = FFFFFFE0
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFDC
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t7, 0x005C($sp)
    lw      t8, 0x0058($sp)
    lw      t9, 0x0060($sp)
    lw      a0, 0x0050($sp)
    addiu   t6, $sp, 0x0038            # t6 = FFFFFFE0
    sw      t6, 0x0020($sp)
    sb      $zero, 0x001E($sp)
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    sw      t7, 0x0028($sp)
    sw      t8, 0x0024($sp)
    sw      t9, 0x002C($sp)
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFC4
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800040C0              # osEPiStartDma
    sw      t0, 0x0014(a0)             # 00000014
    addiu   a0, $sp, 0x0038            # a0 = FFFFFFE0
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_80000AF8:
    sw      a0, 0x0000($sp)
    lui     v0, 0x8000                 # v0 = 80000000
    addiu   v0, v0, 0x6570             # v0 = 80006570
    jr      $ra
    nop


func_80000B0C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    lui     a2, 0x8001                 # a2 = 80010000
    addiu   a2, a2, 0xB140             # a2 = 8000B140
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lw      t6, 0x0004(a0)             # 00000004
    lw      s0, 0x0000(a0)             # 00000000
    lw      t8, 0x0004(a2)             # 8000B144
    sw      t6, 0x0038($sp)
    lw      t7, 0x0008(a0)             # 00000008
    or      a1, $zero, $zero           # a1 = 00000000
    or      v1, $zero, $zero           # v1 = 00000000
    or      v0, a2, $zero              # v0 = 8000B140
    beq     t8, $zero, lbl_80000C58
    sw      t7, 0x0034($sp)
    lw      a3, 0x0000(v0)             # 8000B140
lbl_80000B4C:
    sltu    $at, s0, a3
    bne     $at, $zero, lbl_80000C3C
    nop
    lw      a0, 0x0004(v0)             # 8000B144
    sltu    $at, s0, a0
    beq     $at, $zero, lbl_80000C3C
    nop
    lw      a1, 0x000C(v0)             # 8000B14C
    lw      t9, 0x0034($sp)
    bne     a1, $zero, lbl_80000BBC
    addu    t0, s0, t9
    sltu    $at, a0, t0
    beq     $at, $zero, lbl_80000B9C
    lui     a0, 0x8000                 # a0 = 80000000
    addiu   a0, a0, 0x6594             # a0 = 80006594
    addiu   a1, $zero, 0x023F          # a1 = 0000023F
    jal     func_800AF734
    sw      v0, 0x0024($sp)
    lw      v0, 0x0024($sp)
    lw      a3, 0x0000(v0)             # 00000000
lbl_80000B9C:
    lw      t1, 0x0008(v0)             # 00000008
    lw      a1, 0x0038($sp)
    lw      a2, 0x0034($sp)
    addu    t2, t1, s0
    jal     func_8000085C
    subu    a0, t2, a3
    beq     $zero, $zero, lbl_80000C58
    addiu   a1, $zero, 0x0001          # a1 = 00000001
lbl_80000BBC:
    lw      v1, 0x0008(v0)             # 00000008
    subu    t3, a1, v1
    sw      t3, 0x002C($sp)
    beq     s0, a3, lbl_80000BF0
    sw      v1, 0x0030($sp)
    lui     a0, 0x8000                 # a0 = 80000000
    addiu   a0, a0, 0x65A4             # a0 = 800065A4
    addiu   a1, $zero, 0x0253          # a1 = 00000253
    jal     func_800AF734
    sw      v0, 0x0024($sp)
    lw      v0, 0x0024($sp)
    lw      a3, 0x0000(v0)             # 00000000
    lw      a0, 0x0004(v0)             # 00000004
lbl_80000BF0:
    lw      t4, 0x0034($sp)
    subu    t5, a0, a3
    lui     a0, 0x8000                 # a0 = 80000000
    beq     t4, t5, lbl_80000C0C
    addiu   a0, a0, 0x65B4             # a0 = 800065B4
    jal     func_800AF734
    addiu   a1, $zero, 0x0259          # a1 = 00000259
lbl_80000C0C:
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80004480              # osSetThreadPri
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    lw      a0, 0x0030($sp)
    lw      a1, 0x0038($sp)
    jal     func_80001254
    lw      a2, 0x002C($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80004480              # osSetThreadPri
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    beq     $zero, $zero, lbl_80000C58
    addiu   a1, $zero, 0x0001          # a1 = 00000001
lbl_80000C3C:
    beql    v1, $zero, lbl_80000C4C
    lw      t6, 0x0014(v0)             # 00000014
    addiu   v1, v1, 0x0004             # v1 = 00000004
    lw      t6, 0x0014(v0)             # 00000014
lbl_80000C4C:
    addiu   v0, v0, 0x0010             # v0 = 00000010
    bnel    t6, $zero, lbl_80000B4C
    lw      a3, 0x0000(v0)             # 00000010
lbl_80000C58:
    bne     a1, $zero, lbl_80000C94
    lui     t7, 0x8000                 # t7 = 80000000
    lw      t7, 0x6278(t7)             # 80006278
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0038($sp)
    beq     t7, $zero, lbl_80000C8C
    nop
    lui     a0, 0x8000                 # a0 = 80000000
    addiu   a0, a0, 0x65C4             # a0 = 800065C4
    jal     func_800AF734
    addiu   a1, $zero, 0x026D          # a1 = 0000026D
    beq     $zero, $zero, lbl_80000C98
    lw      $ra, 0x001C($sp)
lbl_80000C8C:
    jal     func_8000085C
    lw      a2, 0x0034($sp)
lbl_80000C94:
    lw      $ra, 0x001C($sp)
lbl_80000C98:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80000CA8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0038($sp)
    lui     s1, 0x8000                 # s1 = 80000000
    addiu   s1, s1, 0x7D40             # s1 = 80007D40
    addiu   s2, $sp, 0x0034            # s2 = FFFFFFFC
    or      a0, s1, $zero              # a0 = 80007D40
lbl_80000CD0:
    or      a1, s2, $zero              # a1 = FFFFFFFC
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      v0, 0x0034($sp)
    beq     v0, $zero, lbl_80000D10
    or      s0, v0, $zero              # s0 = 00000000
    jal     func_80000B0C
    or      a0, v0, $zero              # a0 = 00000000
    lw      a0, 0x0018(s0)             # 00000018
    beql    a0, $zero, lbl_80000CD0
    or      a0, s1, $zero              # a0 = 80007D40
    lw      a1, 0x001C(s0)             # 0000001C
    jal     func_80001E20              # osSendMesg
    or      a2, $zero, $zero           # a2 = 00000000
    beq     $zero, $zero, lbl_80000CD0
    or      a0, s1, $zero              # a0 = 80007D40
lbl_80000D10:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80000D28:
# s32 RequestRomToRam(z_getfile_t* getfile_buf, void* dram_addr, u32 vrom_addr, u32 size, s32 ?, OSMesgQueue* notify_mq, OSMesg notify_msg)
# Request data transfer from ROM to RAM
# A0 = Pointer to the transfer request struct
# A1 = void* RDRAM start address to write to
# A2 = u32 VROM start address to read from
# A3 = u32 size of the data to load
# SP + 0x10 = s32 ? (always 0)
# SP + 0x14 = OSMesgQueue* queue to use for the completion notification
# SP + 0x18 = OSMesg message to use for the completion notification
# V0 = 0 for success
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1220(v0)             # 80121220
    beql    v0, $zero, lbl_80000D9C
    lw      t9, 0x0038($sp)
    lw      v1, 0x0070(v0)             # 80120070
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    beq     v1, $zero, lbl_80000D98
    lw      a2, 0x0038($sp)
    lw      t6, 0x0040($sp)
    lw      t7, 0x0044($sp)
    lw      t8, 0x0048($sp)
    lw      a3, 0x003C($sp)
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    jalr    $ra, v1
    sw      t8, 0x0018($sp)
    beql    v0, $zero, lbl_80000D9C
    lw      t9, 0x0038($sp)
    beq     $zero, $zero, lbl_80000DDC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80000D98:
    lw      t9, 0x0038($sp)
lbl_80000D9C:
    lui     a0, 0x8000                 # a0 = 80000000
    addiu   a0, a0, 0x7D40             # a0 = 80007D40
    sw      t9, 0x0000(s0)             # 00000000
    lw      t0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sw      t0, 0x0004(s0)             # 00000004
    lw      t1, 0x003C($sp)
    sw      $zero, 0x0014(s0)          # 00000014
    sw      t1, 0x0008(s0)             # 00000008
    lw      t2, 0x0044($sp)
    sw      t2, 0x0018(s0)             # 00000018
    lw      t3, 0x0048($sp)
    jal     func_80001E20              # osSendMesg
    sw      t3, 0x001C(s0)             # 0000001C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80000DDC:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80000DF0:
# s32 LoadRomToRam(void* dram_addr, u32 vrom_addr, u32 size)
# Transfers data from ROM to RAM
# A0 = void* RDRAM start address to write to
# A1 = u32 VROM start address to read from
# A2 = u32 size of data to load
# V0 = 0 for success
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    sw      a2, 0x0070($sp)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFC8
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFC4
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   t6, $sp, 0x0030            # t6 = FFFFFFC8
    sw      t6, 0x0014($sp)
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFE0
    lw      a1, 0x0068($sp)
    lw      a2, 0x006C($sp)
    lw      a3, 0x0070($sp)
    sw      $zero, 0x0010($sp)
    jal     func_80000D28
    sw      $zero, 0x0018($sp)
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v0, $at, lbl_80000E4C
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFC8
    beq     $zero, $zero, lbl_80000E60
    lw      $ra, 0x0024($sp)
lbl_80000E4C:
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80000E60:
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_80000E6C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    lui     v0, 0x0000                 # v0 = 00000000
    addiu   v0, v0, 0x7430             # v0 = 00007430
    sw      $ra, 0x001C($sp)
    lui     t6, 0x0001                 # t6 = 00010000
    addiu   t6, t6, 0xD390             # t6 = 0000D390
    lui     a1, 0x8001                 # a1 = 80010000
    addiu   a1, a1, 0xB140             # a1 = 8000B140
    subu    a2, t6, v0
    jal     func_8000085C
    or      a0, v0, $zero              # a0 = 00007430
    lui     t8, 0x8001                 # t8 = 80010000
    lw      t8, -0x4EBC(t8)            # 8000B144
    lui     t7, 0x0000                 # t7 = 00000000
    addiu   t7, t7, 0x1060             # t7 = 00001060
    beq     t7, t8, lbl_80000EBC
    lui     a0, 0x8000                 # a0 = 80000000
    addiu   a0, a0, 0x65D4             # a0 = 800065D4
    jal     func_800AF734
    addiu   a1, $zero, 0x0345          # a1 = 00000345
lbl_80000EBC:
    lui     a0, 0x8000                 # a0 = 80000000
    lui     a1, 0x8000                 # a1 = 80000000
    addiu   a1, a1, 0x7D58             # a1 = 80007D58
    addiu   a0, a0, 0x7D40             # a0 = 80007D40
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    lui     t0, 0x8000                 # t0 = 80000000
    addiu   t0, t0, 0x65E4             # t0 = 800065E4
    lui     a0, 0x8000                 # a0 = 80000000
    lui     a1, 0x8000                 # a1 = 80000000
    lui     a2, 0x8001                 # a2 = 80010000
    addiu   t9, $zero, 0x0100          # t9 = 00000100
    sw      t9, 0x0010($sp)
    addiu   a2, a2, 0x8488             # a2 = 80008488
    addiu   a1, a1, 0x7F88             # a1 = 80007F88
    addiu   a0, a0, 0x7D20             # a0 = 80007D20
    sw      t0, 0x0014($sp)
    jal     func_80001890              # __osInitStack
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t1, 0x8001                 # t1 = 80010000
    addiu   t1, t1, 0x8488             # t1 = 80008488
    lui     a0, 0x8000                 # a0 = 80000000
    lui     a2, 0x8000                 # a2 = 80000000
    addiu   t2, $zero, 0x0010          # t2 = 00000010
    sw      t2, 0x0014($sp)
    addiu   a2, a2, 0x0CA8             # a2 = 80000CA8
    addiu   a0, a0, 0x7DD8             # a0 = 80007DD8
    sw      t1, 0x0010($sp)
    addiu   a1, $zero, 0x0012          # a1 = 00000012
    jal     func_80002F20              # osCreateThread
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a0, 0x8000                 # a0 = 80000000
    jal     func_80005EC0              # osStartThread
    addiu   a0, a0, 0x7DD8             # a0 = 80007DD8
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop
    nop
    nop


func_80000F60:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    lui     a1, 0x8001                 # a1 = 80010000
    lui     a3, 0x8001                 # a3 = 80010000
    addiu   a3, a3, 0x8898             # a3 = 80008898
    addiu   a1, a1, 0x8490             # a1 = 80008490
    sw      $ra, 0x0014($sp)
    lui     v0, 0x8001                 # v0 = 80010000
    lw      v0, -0x7770(v0)            # 80008890
    lui     $at, 0x8001                # $at = 80010000
    addiu   t6, v0, 0xFFE7             # t6 = 8000FFE7
    sw      t6, -0x7764($at)           # 8000889C
    lw      a0, 0x0000(a3)             # 80008898
    subu    v1, v0, a1
    or      a2, v1, $zero              # a2 = 00000000
    sltu    $at, a0, v1
    beq     $at, $zero, lbl_80000FAC
    nop
    beq     $zero, $zero, lbl_80000FAC
    or      a2, a0, $zero              # a2 = 00000000
lbl_80000FAC:
    lui     a0, 0x8001                 # a0 = 80010000
    lw      a0, -0x776C(a0)            # 80008894
    jal     func_8000085C
    sw      a2, 0x001C($sp)
    lui     v1, 0x8001                 # v1 = 80010000
    lui     a3, 0x8001                 # a3 = 80010000
    lw      a2, 0x001C($sp)
    addiu   a3, a3, 0x8898             # a3 = 80008898
    addiu   v1, v1, 0x8894             # v1 = 80008894
    lw      t7, 0x0000(v1)             # 80008894
    lw      t9, 0x0000(a3)             # 80008898
    lui     v0, 0x8001                 # v0 = 80010000
    addu    t8, t7, a2
    subu    t0, t9, a2
    sw      t8, 0x0000(v1)             # 80008894
    sw      t0, 0x0000(a3)             # 80008898
    addiu   v0, v0, 0x8490             # v0 = 80008490
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80001000:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lui     t6, 0x8001                 # t6 = 80010000
    lw      t6, -0x7770(t6)            # 80008890
    lui     s0, 0x8001                 # s0 = 80010000
    addiu   s0, s0, 0x8490             # s0 = 80008490
    subu    a3, t6, a0
    andi    v0, a3, 0x0007             # v0 = 00000000
    beq     v0, $zero, lbl_80001040
    or      a2, a3, $zero              # a2 = 00000000
    lui     t7, 0x8001                 # t7 = 80010000
    addiu   t7, t7, 0x8490             # t7 = 80008490
    subu    s0, t7, v0
    beq     $zero, $zero, lbl_80001040
    addiu   s0, s0, 0x0008             # s0 = 80008498
lbl_80001040:
    or      a1, s0, $zero              # a1 = 80008498
    jal     func_80004DC0              # bcopy
    sw      a3, 0x0028($sp)
    lui     t8, 0x8001                 # t8 = 80010000
    lw      t8, -0x7770(t8)            # 80008890
    lui     v1, 0x8001                 # v1 = 80010000
    lw      a3, 0x0028($sp)
    addiu   v1, v1, 0x8898             # v1 = 80008898
    lw      v0, 0x0000(v1)             # 80008898
    subu    t9, t8, s0
    subu    a2, t9, a3
    sltu    $at, v0, a2
    beq     $at, $zero, lbl_8000107C
    lui     a0, 0x8001                 # a0 = 80010000
    or      a2, v0, $zero              # a2 = 00000000
lbl_8000107C:
    beq     a2, $zero, lbl_800010D4
    addu    a1, s0, a3
    lw      a0, -0x776C(a0)            # 80008894
    sw      a1, 0x0020($sp)
    jal     func_8000085C
    sw      a2, 0x0024($sp)
    lui     v0, 0x8001                 # v0 = 80010000
    lui     v1, 0x8001                 # v1 = 80010000
    lw      a2, 0x0024($sp)
    addiu   v1, v1, 0x8898             # v1 = 80008898
    addiu   v0, v0, 0x8894             # v0 = 80008894
    lw      t0, 0x0000(v0)             # 80008894
    lw      t2, 0x0000(v1)             # 80008898
    lw      a1, 0x0020($sp)
    addu    t1, t0, a2
    subu    t3, t2, a2
    sw      t1, 0x0000(v0)             # 80008894
    bne     t3, $zero, lbl_800010D4
    sw      t3, 0x0000(v1)             # 80008898
    addu    t5, a1, a2
    lui     $at, 0x8001                # $at = 80010000
    sw      t5, -0x7764($at)           # 8000889C
lbl_800010D4:
    or      v0, s0, $zero              # v0 = 80008498
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_800010EC:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    lw      t6, 0x0004(s1)             # 00000004
    lui     s3, 0x8001                 # s3 = 80010000
    lui     s2, 0x8001                 # s2 = 80010000
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   s1, s1, 0x0010             # s1 = 00000010
    addiu   s2, s2, 0x889C             # s2 = 8000889C
    addiu   s3, s3, 0x8898             # s3 = 80008898
    lw      a3, 0x0030($sp)
    addu    s4, t6, s0
lbl_80001134:
    bnel    a2, $zero, lbl_80001174
    andi    t9, a3, 0x0080             # t9 = 00000000
    lw      t7, 0x0000(s2)             # 8000889C
    sltu    $at, t7, s1
    beql    $at, $zero, lbl_80001168
    lbu     a3, 0x0000(s1)             # 00000010
    lw      t8, 0x0000(s3)             # 80008898
    beql    t8, $zero, lbl_80001168
    lbu     a3, 0x0000(s1)             # 00000010
    jal     func_80001000
    or      a0, s1, $zero              # a0 = 00000010
    or      s1, v0, $zero              # s1 = 00000000
    lbu     a3, 0x0000(s1)             # 00000000
lbl_80001168:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    andi    t9, a3, 0x0080             # t9 = 00000000
lbl_80001174:
    beq     t9, $zero, lbl_80001190
    sll     a3, a3,  1
    lbu     t0, 0x0000(s1)             # 00000001
    addiu   s0, s0, 0x0001             # s0 = 00000001
    addiu   s1, s1, 0x0001             # s1 = 00000002
    beq     $zero, $zero, lbl_80001228
    sb      t0, -0x0001(s0)            # 00000000
lbl_80001190:
    lbu     v1, 0x0000(s1)             # 00000002
    lbu     t1, 0x0001(s1)             # 00000003
    addiu   s1, s1, 0x0002             # s1 = 00000004
    andi    t2, v1, 0x000F             # t2 = 00000000
    sll     t3, t2,  8
    sra     a1, v1,  4
    or      a0, t1, t3                 # a0 = 00000000
    bne     a1, $zero, lbl_800011C4
    subu    v0, s0, a0
    lbu     v1, 0x0000(s1)             # 00000004
    addiu   s1, s1, 0x0001             # s1 = 00000005
    beq     $zero, $zero, lbl_800011C8
    addiu   v1, v1, 0x0012             # v1 = 00000012
lbl_800011C4:
    addiu   v1, a1, 0x0002             # v1 = 00000002
lbl_800011C8:
    andi    a1, v1, 0x0003             # a1 = 00000002
    subu    a1, $zero, a1
    beq     a1, $zero, lbl_800011F8
    addu    a0, a1, v1
lbl_800011D8:
    lbu     t4, -0x0001(v0)            # FFFFFFFF
    addiu   v1, v1, 0xFFFF             # v1 = 00000001
    addiu   s0, s0, 0x0001             # s0 = 00000002
    addiu   v0, v0, 0x0001             # v0 = 00000001
    bne     a0, v1, lbl_800011D8
    sb      t4, -0x0001(s0)            # 00000001
    beq     v1, $zero, lbl_80001228
    nop
lbl_800011F8:
    lbu     t5, -0x0001(v0)            # 00000000
    addiu   v1, v1, 0xFFFC             # v1 = FFFFFFFD
    addiu   s0, s0, 0x0004             # s0 = 00000006
    sb      t5, -0x0004(s0)            # 00000002
    lbu     t6, 0x0000(v0)             # 00000001
    addiu   v0, v0, 0x0004             # v0 = 00000005
    sb      t6, -0x0003(s0)            # 00000003
    lbu     t7, -0x0003(v0)            # 00000002
    sb      t7, -0x0002(s0)            # 00000004
    lbu     t8, -0x0002(v0)            # 00000003
    bne     v1, $zero, lbl_800011F8
    sb      t8, -0x0001(s0)            # 00000005
lbl_80001228:
    bne     s0, s4, lbl_80001134
    addiu   a2, a2, 0xFFFF             # a2 = 00000007
    sw      a3, 0x0030($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_80001254:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     $at, 0x8001                # $at = 80010000
    sw      a0, -0x776C($at)           # 80008894
    lui     $at, 0x8001                # $at = 80010000
    sw      a2, -0x7768($at)           # 80008898
    lui     t6, 0x8001                 # t6 = 80010000
    addiu   t6, t6, 0x8890             # t6 = 80008890
    lui     $at, 0x8001                # $at = 80010000
    jal     func_80000F60
    sw      t6, -0x7770($at)           # 80008890
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_800010EC
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800012A0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    lui     a0, 0x8000                 # a0 = 80000000
    lw      a0, 0x6260(a0)             # 80006260
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    jal     func_80005630
    addiu   a2, $sp, 0x0024            # a2 = FFFFFFFC
    lbu     v1, 0x0026($sp)
    addiu   $at, $zero, 0x0045         # $at = 00000045
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    beq     v1, $at, lbl_800012E8
    addiu   $at, $zero, 0x004A         # $at = 0000004A
    bne     v1, $at, lbl_800012F4
    lui     a0, 0x8000                 # a0 = 80000000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80001300
    sw      t6, 0x6280($at)            # 80006280
lbl_800012E8:
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80001300
    sw      t7, 0x6280($at)            # 80006280
lbl_800012F4:
    addiu   a0, a0, 0x65F0             # a0 = 800065F0
    jal     func_80001B38
    addiu   a1, $zero, 0x0056          # a1 = 00000056
lbl_80001300:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80001310:
    lui     $at, 0x8000                # $at = 80000000
    sw      $zero, 0x6280($at)         # 80006280
    jr      $ra
    nop


func_80001320:
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      t6, 0x00FC(t7)             # 801200FC
    jr      $ra
    nop


func_80001338:
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    sh      $zero, 0x00FC(t6)          # 801200FC
    jr      $ra
    nop


func_8000134C:
# Crash Debugger II
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    lui     t6, 0xA404                 # t6 = A4040000
    lw      t7, 0x0010(t6)             # A4040010
    addiu   a0, $zero, 0x0030          # a0 = 00000030
    addiu   a1, $zero, 0x00C8          # a1 = 000000C8
    jal     func_800ADB80
    sw      t7, 0x001C($sp)
    lw      t8, 0x001C($sp)
    lui     a0, 0x8000                 # a0 = 80000000
    addiu   a0, a0, 0x6614             # a0 = 80006614
    andi    t9, t8, 0x4000             # t9 = 00000000
    beq     t9, $zero, lbl_800013A8
    lui     a1, 0x8001                 # a1 = 80010000
    lui     a0, 0x8000                 # a0 = 80000000
    lui     a1, 0x8001                 # a1 = 80010000
    lui     a2, 0x8001                 # a2 = 80010000
    lw      a2, -0x7744(a2)            # 800088BC
    lw      a1, -0x7748(a1)            # 800088B8
    jal     func_800ADBF8
    addiu   a0, a0, 0x6600             # a0 = 80006600
    beq     $zero, $zero, lbl_800013BC
    addiu   a0, $zero, 0x0028          # a0 = 00000028
lbl_800013A8:
    lui     a2, 0x8001                 # a2 = 80010000
    lw      a2, -0x7744(a2)            # 800088BC
    jal     func_800ADBF8
    lw      a1, -0x7748(a1)            # FFFF88B8
    addiu   a0, $zero, 0x0028          # a0 = 00000028
lbl_800013BC:
    jal     func_800ADB80
    addiu   a1, $zero, 0x00B8          # a1 = 000000B8
    lui     a0, 0x8000                 # a0 = 80000000
    jal     func_800ADBF8
    addiu   a0, a0, 0x6628             # a0 = 80006628
    lui     a0, 0x8000                 # a0 = 80000000
    lui     a1, 0x8000                 # a1 = 80000000
    addiu   a1, a1, 0x6800             # a1 = 80006800
    jal     func_800ADBF8
    addiu   a0, a0, 0x6630             # a0 = 80006630
    addiu   a0, $zero, 0x0038          # a0 = 00000038
    jal     func_800ADB80
    addiu   a1, $zero, 0x00C0          # a1 = 000000C0
    lui     a0, 0x8000                 # a0 = 80000000
    lui     a1, 0x8000                 # a1 = 80000000
    addiu   a1, a1, 0x680C             # a1 = 8000680C
    jal     func_800ADBF8
    addiu   a0, a0, 0x6640             # a0 = 80006640
    addiu   a0, $zero, 0x0080          # a0 = 00000080
    jal     func_800ADB80
    addiu   a1, $zero, 0x0018          # a1 = 00000018
    jal     func_80001564
    nop
    lui     a0, 0x8000                 # a0 = 80000000
    addiu   a0, a0, 0x664C             # a0 = 8000664C
    jal     func_800ADBF8
    or      a1, v0, $zero              # a1 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80001438:
# Crash Debugger I
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x8001                 # a0 = 80010000
    lui     a1, 0x8000                 # a1 = 80000000
    addiu   a1, a1, 0x134C             # a1 = 8000134C
    addiu   a0, a0, 0x88A8             # a0 = 800088A8
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AEF8C
    or      a3, $zero, $zero           # a3 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8000146C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x8001                 # a0 = 80010000
    jal     func_800AF014
    addiu   a0, a0, 0x88A8             # a0 = 800088A8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80001490:
    addiu   $sp, $sp, 0xFF60           # $sp -= 0xA0
    sw      $ra, 0x0014($sp)
    addiu   a0, $sp, 0x0020            # a0 = FFFFFF80
    addiu   a1, $sp, 0x001C            # a1 = FFFFFF7C
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     t9, 0x8000                 # t9 = 80000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, $sp, 0x0020            # t7 = FFFFFF80
    addiu   t9, t9, 0x6290             # t9 = 80006290
    sw      $zero, 0x0038($sp)
    sw      t6, 0x0040($sp)
    sw      t7, 0x0088($sp)
    sw      $zero, 0x008C($sp)
    sw      $zero, 0x0044($sp)
    addiu   t2, t9, 0x003C             # t2 = 800062CC
    addiu   t8, $sp, 0x0048            # t8 = FFFFFFA8
lbl_800014D4:
    lw      t1, 0x0000(t9)             # 80006290
    addiu   t9, t9, 0x000C             # t9 = 8000629C
    addiu   t8, t8, 0x000C             # t8 = FFFFFFB4
    sw      t1, -0x000C(t8)            # FFFFFFA8
    lw      t0, -0x0008(t9)            # 80006294
    sw      t0, -0x0008(t8)            # FFFFFFAC
    lw      t1, -0x0004(t9)            # 80006298
    bne     t9, t2, lbl_800014D4
    sw      t1, -0x0004(t8)            # FFFFFFB0
    lw      t1, 0x0000(t9)             # 8000629C
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xD2E0             # a0 = 8011D2E0
    addiu   a1, $sp, 0x0038            # a1 = FFFFFF98
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80001E20              # osSendMesg
    sw      t1, 0x0000(t8)             # FFFFFFB4
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_800A3644
    addiu   a0, a0, 0xD2A8             # a0 = 8011D2A8
    addiu   a0, $sp, 0x0020            # a0 = FFFFFF80
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     t3, 0xA400                 # t3 = A4000000
    lw      t4, 0x0FF4(t3)             # A4000FF4
    lui     $at, 0x8001                # $at = 80010000
    lui     t5, 0xA400                 # t5 = A4000000
    sw      t4, -0x7748($at)           # 800088B8
    lw      t6, 0x0FFC(t5)             # A4000FFC
    lui     $at, 0x8001                # $at = 80010000
    jal     func_80001564
    sw      t6, -0x7744($at)           # 800088BC
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x00A0           # $sp += 0xA0
    jr      $ra
    nop


func_80001564:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_80001570:
    lui     t6, 0xA030                 # t6 = A0300000
    lw      t7, -0x4E0C(t6)            # A02FB1F4
    lui     $at, 0x8001                # $at = 80010000
    lui     t8, 0xA030                 # t8 = A0300000
    sw      t7, -0x7760($at)           # 800088A0
    lw      t9, -0x1E40(t8)            # A02FE1C0
    lui     $at, 0x8001                # $at = 80010000
    sw      t9, -0x775C($at)           # 800088A4
    jr      $ra
    nop
    nop
    nop


func_800015A0:
    addiu   $sp, $sp, 0xFFF8           # $sp -= 0x8
    sw      a0, 0x0008($sp)
    sw      a1, 0x000C($sp)
    sw      a2, 0x0010($sp)
    sw      a3, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0008           # $sp += 0x8


func_800015BC:
    addiu   $sp, $sp, 0xFFF8           # $sp -= 0x8
    sw      a0, 0x0008($sp)
    sw      a1, 0x000C($sp)
    sw      a2, 0x0010($sp)
    sw      a3, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0008           # $sp += 0x8


func_800015D8:
    addiu   $sp, $sp, 0xFFF8           # $sp -= 0x8
    sw      a0, 0x0008($sp)
    sw      a1, 0x000C($sp)
    sw      a2, 0x0010($sp)
    sw      a3, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0008           # $sp += 0x8


func_800015F4:
    jr      $ra
    nop
    nop


func_80001600:
# OSPiHandle* osCartRomInit(void)
# Initialize PI bus and return the PI device handle to use in the EPI routine
# V0 = OSPiHandle* handle specifying the hardware settings necessary when using a cartridge
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    jal     func_80001DB0
    sw      s0, 0x0018($sp)
    lui     t6, 0x8000                 # t6 = 80000000
    lw      t6, 0x62D0(t6)             # 800062D0
    lui     s0, 0x8001                 # s0 = 80010000
    addiu   s0, s0, 0x88C0             # s0 = 800088C0
    bne     t6, $zero, lbl_8000163C
    lui     $at, 0x8000                # $at = 80000000
    jal     func_80001DF4
    nop
    lui     s0, 0x8001                 # s0 = 80010000
    beq     $zero, $zero, lbl_800017C4
    addiu   v0, s0, 0x88C0             # v0 = 800088C0
lbl_8000163C:
    sw      $zero, 0x62D0($at)         # 000062D0
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     t8, 0xA600                 # t8 = A6000000
    lui     a0, 0x8001                 # a0 = 80010000
    sb      t7, 0x0004(s0)             # 80010004
    sw      t8, 0x000C(s0)             # 8001000C
    sb      $zero, 0x0009(s0)          # 80010009
    sw      $zero, 0x0010(s0)          # 80010010
    addiu   a0, a0, 0x88D4             # a0 = 800088D4
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0060          # a1 = 00000060
    lui     v1, 0xA460                 # v1 = A4600000
    ori     v1, v1, 0x0010             # v1 = A4600010
    lw      v0, 0x0000(v1)             # A4600010
    lui     a0, 0xA460                 # a0 = A4600000
    ori     a0, a0, 0x0014             # a0 = A4600014
    andi    t9, v0, 0x0003             # t9 = 00000000
    beq     t9, $zero, lbl_80001698
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    lw      v0, 0x0000(v1)             # A4600010
lbl_8000168C:
    andi    t1, v0, 0x0003             # t1 = 00000000
    bnel    t1, $zero, lbl_8000168C
    lw      v0, 0x0000(v1)             # A4600010
lbl_80001698:
    lui     a2, 0xA460                 # a2 = A4600000
    ori     a2, a2, 0x001C             # a2 = A460001C
    lui     a3, 0xA460                 # a3 = A4600000
    sw      a1, 0x0000(a0)             # A4600014
    ori     a3, a3, 0x0020             # a3 = A4600020
    lui     t0, 0xA460                 # t0 = A4600000
    sw      $zero, 0x0000(a2)          # A460001C
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    ori     t0, t0, 0x0018             # t0 = A4600018
    sw      t2, 0x0000(a3)             # A4600020
    sw      a1, 0x0000(t0)             # A4600018
    lw      t3, 0x000C(s0)             # 8001000C
    lui     $at, 0xA000                # $at = A0000000
    lui     v1, 0x8000                 # v1 = 80000000
    or      t4, t3, $at                # t4 = A0000000
    lw      v0, 0x0000(t4)             # A0000000
    addiu   v1, v1, 0x6390             # v1 = 80006390
    srl     t8, v0, 16
    srl     t1, v0, 20
    andi    t9, t8, 0x000F             # t9 = 00000000
    andi    t2, t1, 0x000F             # t2 = 00000000
    srl     t7, v0,  8
    sb      t7, 0x0008(s0)             # 80010008
    sb      t9, 0x0006(s0)             # 80010006
    sb      t2, 0x0007(s0)             # 80010007
    sb      v0, 0x0005(s0)             # 80010005
    andi    t3, v0, 0x00FF             # t3 = 00000000
    sw      t3, 0x0000(a0)             # A4600014
    lbu     t4, 0x0006(s0)             # 80010006
    sw      t4, 0x0000(a2)             # A460001C
    lbu     t5, 0x0007(s0)             # 80010007
    sw      t5, 0x0000(a3)             # A4600020
    lbu     t6, 0x0008(s0)             # 80010008
    sw      t6, 0x0000(t0)             # A4600018
    lbu     t8, 0x0009(s0)             # 80010009
    lbu     t7, 0x0004(s0)             # 80010004
    sll     t9, t8,  2
    addu    t1, v1, t9
    lw      t2, 0x0000(t1)             # 00000000
    sb      t7, 0x0004(t2)             # 00000004
    lbu     t4, 0x0009(s0)             # 80010009
    lbu     t3, 0x0005(s0)             # 80010005
    sll     t5, t4,  2
    addu    t6, v1, t5
    lw      t8, 0x0000(t6)             # 00000000
    sb      t3, 0x0005(t8)             # 00000005
    lbu     t1, 0x0009(s0)             # 80010009
    lbu     t9, 0x0006(s0)             # 80010006
    sll     t7, t1,  2
    addu    t2, v1, t7
    lw      t4, 0x0000(t2)             # 00000000
    sb      t9, 0x0006(t4)             # A0000006
    lbu     t6, 0x0009(s0)             # 80010009
    lbu     t5, 0x0007(s0)             # 80010007
    sll     t3, t6,  2
    addu    t8, v1, t3
    lw      t1, 0x0000(t8)             # 00000000
    sb      t5, 0x0007(t1)             # 00000007
    lbu     t2, 0x0009(s0)             # 80010009
    lbu     t7, 0x0008(s0)             # 80010008
    sll     t9, t2,  2
    addu    t4, v1, t9
    lw      t6, 0x0000(t4)             # A0000000
    jal     func_80005130              # __osDisableInt
    sb      t7, 0x0008(t6)             # 00000008
    lui     v1, 0x8000                 # v1 = 80000000
    addiu   v1, v1, 0x638C             # v1 = 8000638C
    lw      t3, 0x0000(v1)             # 8000638C
    sw      s0, 0x0000(v1)             # 8000638C
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_800051A0              # __osRestoreInt
    sw      t3, 0x0000(s0)             # 80010000
    jal     func_80001DF4
    nop
    or      v0, s0, $zero              # v0 = 80010000
lbl_800017C4:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop
    nop


func_800017E0:
    lw      a3, 0x0008(a0)             # 00000008
    lw      t9, 0x000C(a0)             # 0000000C
    lw      t8, 0x0004(a0)             # 00000004
    add     a3, a3, a0
    add     t9, t9, a0
    or      a2, $zero, $zero           # a2 = 00000000
    addi    a0, a0, 0x0010             # a0 = 00000010
    add     t8, t8, a1
lbl_80001800:
    bne     a2, $zero, lbl_80001814
    nop
    lw      t0, 0x0000(a0)             # 00000010
    addiu   a2, $zero, 0x0020          # a2 = 00000020
    addi    a0, a0, 0x0004             # a0 = 00000014
lbl_80001814:
    slt     t1, t0, $zero
    beq     t1, $zero, lbl_80001834
    nop
    lb      t2, 0x0000(t9)             # 00000000
    addi    t9, t9, 0x0001             # t9 = 00000001
    addi    a1, a1, 0x0001             # a1 = 00000001
    beq     $zero, $zero, lbl_80001868
    sb      t2, -0x0001(a1)            # 00000000
lbl_80001834:
    lhu     t2, 0x0000(a3)             # 00000000
    addi    a3, a3, 0x0002             # a3 = 00000002
    srl     t3, t2, 12
    andi    t2, t2, 0x0FFF             # t2 = 00000000
    beq     t3, $zero, lbl_8000187C
    sub     t1, a1, t2
    addi    t3, t3, 0x0002             # t3 = 00000002
lbl_80001850:
    lb      t2, -0x0001(t1)            # FFFFFFFF
    addi    t3, t3, 0xFFFF             # t3 = 00000001
    addi    t1, t1, 0x0001             # t1 = 00000001
    addi    a1, a1, 0x0001             # a1 = 00000002
    bne     t3, $zero, lbl_80001850
    sb      t2, -0x0001(a1)            # 00000001
lbl_80001868:
    sll     t0, t0,  1
    bne     a1, t8, lbl_80001800
    addi    a2, a2, 0xFFFF             # a2 = 0000001F
    jr      $ra
    nop
lbl_8000187C:
    lbu     t3, 0x0000(t9)             # 00000001
    addi    t9, t9, 0x0001             # t9 = 00000002
    beq     $zero, $zero, lbl_80001850
    addi    t3, t3, 0x0012             # t3 = 00000013
    nop


func_80001890:
# void* __osInitStack(__OSStackContext* stack, void* low, void* high, u32 init, u32 ?, char* thrname)
# Initialize stack space and context struct
# A0 = __OSStackContext* where to store the stack context struct
# A1 = void* stack start address
# A2 = void* stack end address
# A3 = u32 stack space initial value (typically null)
# SP + 0x10 = u32 ?
# SP + 0x14 = Pointer to thread name
# V0 = Some pointer that never seems used by callers
    bne     a0, $zero, lbl_800018A4
    lui     v0, 0x8000                 # v0 = 80000000
    addiu   v0, v0, 0x62E0             # v0 = 800062E0
    jr      $ra
    sw      $zero, 0x0000(v0)          # 800062E0
lbl_800018A4:
    sw      a1, 0x0008(a0)             # 00000008
    sw      a2, 0x000C(a0)             # 0000000C
    sw      a3, 0x0010(a0)             # 00000010
    lw      t6, 0x0010($sp)
    lui     v1, 0x8000                 # v1 = 80000000
    addiu   v1, v1, 0x62E4             # v1 = 800062E4
    sw      t6, 0x0014(a0)             # 00000014
    lw      t7, 0x0014($sp)
    sw      t7, 0x0018(a0)             # 00000018
    lw      t8, 0x0000(v1)             # 800062E4
    sw      $zero, 0x0000(a0)          # 00000000
    sw      t8, 0x0004(a0)             # 00000004
    lw      v0, 0x0000(v1)             # 800062E4
    beq     v0, $zero, lbl_800018E4
    nop
    sw      a0, 0x0000(v0)             # 800062E0
lbl_800018E4:
    lui     v0, 0x8000                 # v0 = 80000000
    addiu   v0, v0, 0x62E0             # v0 = 800062E0
    lw      t9, 0x0000(v0)             # 800062E0
    sw      a0, 0x0000(v1)             # 800062E4
    bnel    t9, $zero, lbl_80001904
    lw      t0, 0x0014(a0)             # 00000014
    sw      a0, 0x0000(v0)             # 800062E0
    lw      t0, 0x0014(a0)             # 00000014
lbl_80001904:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beq     t0, $at, lbl_80001940
    nop
    lw      v0, 0x0008(a0)             # 00000008
    lw      t1, 0x000C(a0)             # 0000000C
    sltu    $at, v0, t1
    beq     $at, $zero, lbl_80001940
    nop
    lw      t2, 0x0010(a0)             # 00000010
lbl_80001928:
    addiu   v0, v0, 0x0004             # v0 = 800062E4
    sw      t2, -0x0004(v0)            # 800062E0
    lw      t3, 0x000C(a0)             # 0000000C
    sltu    $at, v0, t3
    bnel    $at, $zero, lbl_80001928
    lw      t2, 0x0010(a0)             # 00000010
lbl_80001940:
    jr      $ra
    nop


func_80001948:
    lw      v0, 0x0004(a0)             # 00000004
    bnel    v0, $zero, lbl_80001968
    lw      t7, 0x0000(a0)             # 00000000
    lw      t6, 0x0000(a0)             # 00000000
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8000196C
    sw      t6, 0x62E0($at)            # 800062E0
    lw      t7, 0x0000(a0)             # 00000000
lbl_80001968:
    sw      t7, 0x0000(v0)             # 00000000
lbl_8000196C:
    lw      t8, 0x0000(a0)             # 00000000
    bne     t8, $zero, lbl_80001984
    nop
    lw      t9, 0x0004(a0)             # 00000004
    lui     $at, 0x8000                # $at = 80000000
    sw      t9, 0x62E4($at)            # 800062E4
lbl_80001984:
    jr      $ra
    nop


func_8000198C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x002C($sp)
    sw      s1, 0x0028($sp)
    bne     a0, $zero, lbl_800019DC
    sw      s0, 0x0024($sp)
    lui     s0, 0x8000                 # s0 = 80000000
    lw      s0, 0x62E0(s0)             # 800062E0
    or      s1, $zero, $zero           # s1 = 00000000
    beq     s0, $zero, lbl_800019D4
    nop
lbl_800019B4:
    jal     func_8000198C
    or      a0, s0, $zero              # a0 = 80000000
    beql    v0, $zero, lbl_800019CC
    lw      s0, 0x0000(s0)             # 80000000
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    lw      s0, 0x0000(s0)             # 80000000
lbl_800019CC:
    bne     s0, $zero, lbl_800019B4
    nop
lbl_800019D4:
    beq     $zero, $zero, lbl_80001A80
    or      v0, s1, $zero              # v0 = 00000001
lbl_800019DC:
    lw      a1, 0x0008(a0)             # 00000008
    lw      a2, 0x000C(a0)             # 0000000C
    lui     v1, 0x8000                 # v1 = 80000000
    addiu   v1, v1, 0x6698             # v1 = 80006698
    sltu    $at, a1, a2
    beq     $at, $zero, lbl_80001A18
    or      a3, a1, $zero              # a3 = 00000000
    lw      v0, 0x0010(a0)             # 00000010
    lw      t6, 0x0000(a3)             # 00000000
lbl_80001A00:
    bnel    v0, t6, lbl_80001A1C
    subu    t0, a3, a1
    addiu   a3, a3, 0x0004             # a3 = 00000004
    sltu    $at, a3, a2
    bnel    $at, $zero, lbl_80001A00
    lw      t6, 0x0000(a3)             # 00000004
lbl_80001A18:
    subu    t0, a3, a1
lbl_80001A1C:
    bne     t0, $zero, lbl_80001A2C
    subu    t1, a2, a3
    beq     $zero, $zero, lbl_80001A50
    addiu   s0, $zero, 0x0002          # s0 = 00000002
lbl_80001A2C:
    lw      v0, 0x0014(a0)             # 00000014
    or      s0, $zero, $zero           # s0 = 00000000
    sltu    $at, t0, v0
    beq     $at, $zero, lbl_80001A50
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beq     v0, $at, lbl_80001A50
    nop
    beq     $zero, $zero, lbl_80001A50
    addiu   s0, $zero, 0x0001          # s0 = 00000001
lbl_80001A50:
    lw      v0, 0x0018(a0)             # 00000018
    lui     a0, 0x8000                 # a0 = 80000000
    addiu   a0, a0, 0x6660             # a0 = 80006660
    beq     v0, $zero, lbl_80001A6C
    nop
    beq     $zero, $zero, lbl_80001A6C
    or      v1, v0, $zero              # v1 = 00000001
lbl_80001A6C:
    sw      t1, 0x0010($sp)
    sw      t0, 0x0014($sp)
    jal     func_800015BC
    sw      v1, 0x0018($sp)
    or      v0, s0, $zero              # v0 = 00000001
lbl_80001A80:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    nop
    nop
    nop


func_80001AA0:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    lwc1    $f14, 0x0054($sp)
    mtc1    a3, $f12                   # $f12 = 0.00
    sw      a0, 0x0040($sp)
    sw      $ra, 0x003C($sp)
    c.lt.s  $f12, $f14
    sw      a1, 0x0044($sp)
    sw      a2, 0x0048($sp)
    lwc1    $f4, 0x005C($sp)
    bc1t    lbl_80001ADC
    lui     a0, 0x8000                 # a0 = 80000000
    c.lt.s  $f4, $f12
    nop
    bc1fl   lbl_80001B28
    lw      $ra, 0x003C($sp)
lbl_80001ADC:
    lwc1    $f10, 0x005C($sp)
    lw      t6, 0x0048($sp)
    lw      t7, 0x0058($sp)
    cvt.d.s $f6, $f14
    cvt.d.s $f8, $f12
    cvt.d.s $f16, $f10
    sdc1    $f8, 0x0020($sp)
    sdc1    $f16, 0x0030($sp)
    sdc1    $f6, 0x0010($sp)
    addiu   a0, a0, 0x66A0             # a0 = 800066A0
    lw      a1, 0x0040($sp)
    lw      a2, 0x0044($sp)
    lw      a3, 0x0050($sp)
    swc1    $f12, 0x004C($sp)
    sw      t6, 0x0018($sp)
    jal     func_800015BC
    sw      t7, 0x0028($sp)
    lwc1    $f12, 0x004C($sp)
    lw      $ra, 0x003C($sp)
lbl_80001B28:
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    mov.s   $f0, $f12
    jr      $ra
    nop


func_80001B38:
# Display debug message with current thread id
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_80003CA0              # osGetThreadId
    or      a0, $zero, $zero           # a0 = 00000000
    lui     a0, 0x8000                 # a0 = 80000000
    addiu   a0, a0, 0x66D0             # a0 = 800066D0
    or      a1, v0, $zero              # a1 = 00000000
    lw      a2, 0x0018($sp)
    jal     func_800015BC
    lw      a3, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_800AF734
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80001B84:
# Display some debug message
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x8000                 # a0 = 80000000
    jal     func_800015BC
    addiu   a0, a0, 0x66F8             # a0 = 800066F8
    lui     a0, 0x8000                 # a0 = 80000000
    addiu   a0, a0, 0x6708             # a0 = 80006708
    jal     func_800AF734
    or      a1, $zero, $zero           # a1 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop


func_80001BC0:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFE4
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFE8
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   t6, $zero, 0x0000          # t6 = 00000000
    addiu   t7, $zero, 0x0000          # t7 = 00000000
    addiu   t8, $sp, 0x0050            # t8 = FFFFFFE8
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFC0
    lw      a2, 0x0068($sp)
    lw      a3, 0x006C($sp)
    jal     func_80005A70              # osSetTimer
    sw      $zero, 0x001C($sp)
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFE8
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_80001C2C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a1, a0, $zero              # a1 = 00000000
    addiu   a0, $zero, 0x0000          # a0 = 00000000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800022D8
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    or      a0, v0, $zero              # a0 = 00000000
    or      a1, v1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800021D8
    addiu   a3, $zero, 0x0040          # a3 = 00000040
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80001BC0
    or      a1, v1, $zero              # a1 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80001C7C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a1, a0, $zero              # a1 = 00000000
    addiu   a0, $zero, 0x0000          # a0 = 00000000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800022D8
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    or      a0, v0, $zero              # a0 = 00000000
    or      a1, v1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800021D8
    addiu   a3, $zero, 0x0040          # a3 = 00000040
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80001BC0
    or      a1, v1, $zero              # a1 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80001CCC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lui     a3, 0x02CB                 # a3 = 02CB0000
    ori     a3, a3, 0x4178             # a3 = 02CB4178
    addiu   a0, $zero, 0x0000          # a0 = 00000000
    jal     func_800022D8
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    or      a0, v0, $zero              # a0 = 00000000
    or      a1, v1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800021D8
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80001BC0
    or      a1, v1, $zero              # a1 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80001D20:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lui     a3, 0x02CB                 # a3 = 02CB0000
    ori     a3, a3, 0x4178             # a3 = 02CB4178
    addiu   a0, $zero, 0x0000          # a0 = 00000000
    jal     func_800022D8
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80001BC0
    or      a1, v1, $zero              # a1 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80001D60:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x8000                # $at = 80000000
    lui     a0, 0x8001                 # a0 = 80010000
    lui     a1, 0x8001                 # a1 = 80010000
    sw      t6, 0x62F0($at)            # 800062F0
    addiu   a1, a1, 0x8940             # a1 = 80008940
    addiu   a0, a0, 0x8948             # a0 = 80008948
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a0, 0x8001                 # a0 = 80010000
    addiu   a0, a0, 0x8948             # a0 = 80008948
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80001E20              # osSendMesg
    or      a2, $zero, $zero           # a2 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80001DB0:
    lui     t6, 0x8000                 # t6 = 80000000
    lw      t6, 0x62F0(t6)             # 800062F0
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    bne     t6, $zero, lbl_80001DD0
    nop
    jal     func_80001D60
    nop
lbl_80001DD0:
    lui     a0, 0x8001                 # a0 = 80010000
    addiu   a0, a0, 0x8948             # a0 = 80008948
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFFC
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80001DF4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x8001                 # a0 = 80010000
    addiu   a0, a0, 0x8948             # a0 = 80008948
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80001E20              # osSendMesg
    or      a2, $zero, $zero           # a2 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80001E20:
# s32 osSendMesg(OSMesgQueue* mq, OSMesg msg, s32 flag)
# Copies a message to the end of a given message queue
# In case the message queue is full, the operation blocks the thread and waits for an empty spot,
# unless the flag is set to OS_MESG_NOBLOCK (0), in which case it aborts immediately and returns -1
# A0 = OSMesgQueue* queue to put the message in
# A1 = OSMesg message to copy
# A2 = s32 flag which indicates the blocking mode, either OS_MESG_BLOCK (1) or OS_MESG_NOBLOCK (0)
# V0 = 0 if a message could be copied, else -1
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    jal     func_80005130              # __osDisableInt
    sw      s0, 0x0018($sp)
    lw      t6, 0x0038($sp)
    or      s0, v0, $zero              # s0 = 00000000
    lw      t7, 0x0008(t6)             # 00000008
    lw      t8, 0x0010(t6)             # 00000010
    slt     $at, t7, t8
    bne     $at, $zero, lbl_80001EBC
    nop
lbl_80001E60:
    lw      t9, 0x0040($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t9, $at, lbl_80001E94
    nop
    lui     t1, 0x8000                 # t1 = 80000000
    lw      t1, 0x6340(t1)             # 80006340
    addiu   t0, $zero, 0x0008          # t0 = 00000008
    sh      t0, 0x0010(t1)             # 80000010
    lw      a0, 0x0038($sp)
    jal     func_80002A4C
    addiu   a0, a0, 0x0004             # a0 = 00000004
    beq     $zero, $zero, lbl_80001EA4
    nop
lbl_80001E94:
    jal     func_800051A0              # __osRestoreInt
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80001F54
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80001EA4:
    lw      t2, 0x0038($sp)
    lw      t3, 0x0008(t2)             # 00000008
    lw      t4, 0x0010(t2)             # 00000010
    slt     $at, t3, t4
    beq     $at, $zero, lbl_80001E60
    nop
lbl_80001EBC:
    lw      t5, 0x0038($sp)
    lw      t0, 0x003C($sp)
    lw      t6, 0x000C(t5)             # 0000000C
    lw      t7, 0x0008(t5)             # 00000008
    lw      t9, 0x0010(t5)             # 00000010
    lw      t1, 0x0014(t5)             # 00000014
    addu    t8, t6, t7
    div     $zero, t8, t9
    mfhi    s1
    sll     t2, s1,  2
    addu    t3, t1, t2
    sw      t0, 0x0000(t3)             # 00000000
    lw      t4, 0x0038($sp)
    bne     t9, $zero, lbl_80001EFC
    nop
    break   # 0x01C00
lbl_80001EFC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t9, $at, lbl_80001F14
    lui     $at, 0x8000                # $at = 80000000
    bne     t8, $at, lbl_80001F14
    nop
    break   # 0x01800
lbl_80001F14:
    lw      t6, 0x0008(t4)             # 00000008
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sw      t7, 0x0008(t4)             # 00000008
    lw      t8, 0x0038($sp)
    lw      t9, 0x0000(t8)             # 00000000
    lw      t5, 0x0000(t9)             # 00000000
    beq     t5, $zero, lbl_80001F48
    nop
    jal     func_80002B94
    or      a0, t8, $zero              # a0 = 00000000
    or      s2, v0, $zero              # s2 = 00000000
    jal     func_80005EC0              # osStartThread
    or      a0, s2, $zero              # a0 = 00000000
lbl_80001F48:
    jal     func_800051A0              # __osRestoreInt
    or      a0, s0, $zero              # a0 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80001F54:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    nop


func_80001F70:
# void osStopThread(OSThread* thread)
# Suspends a given thread, preventing it from becoming runnable until the next osStartThread call on that thread
# If targeting the thread currently running, the dispatcher is invoked to run the new highest priority runnable thread
# A0 = OSThread* thread, or NULL to default to the thread currently running
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0038($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    jal     func_80005130              # __osDisableInt
    sw      s0, 0x0018($sp)
    lw      t6, 0x0038($sp)
    or      s0, v0, $zero              # s0 = 00000000
    bne     t6, $zero, lbl_80001FA4
    nop
    beq     $zero, $zero, lbl_80001FAC
    addiu   s1, $zero, 0x0004          # s1 = 00000004
lbl_80001FA4:
    lw      t7, 0x0038($sp)
    lhu     s1, 0x0010(t7)             # 00000010
lbl_80001FAC:
    or      s2, s1, $zero              # s2 = 00000004
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     s2, $at, lbl_80001FF4
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     s2, $at, lbl_80001FD4
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     s2, $at, lbl_80001FF4
    nop
    beq     $zero, $zero, lbl_80002010
    nop
lbl_80001FD4:
    lui     t9, 0x8000                 # t9 = 80000000
    lw      t9, 0x6340(t9)             # 80006340
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80002A4C
    sh      t8, 0x0010(t9)             # 80000010
    beq     $zero, $zero, lbl_80002010
    nop
lbl_80001FF4:
    lw      t1, 0x0038($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sh      t0, 0x0010(t1)             # 00000010
    lw      t2, 0x0038($sp)
    lw      a0, 0x0008(t2)             # 00000008
    jal     func_80002D30              # __osDequeueThread
    or      a1, t2, $zero              # a1 = 00000000
lbl_80002010:
    jal     func_800051A0              # __osRestoreInt
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80002030:
# s32 osRecvMesg(OSMesgQueue* mq, OSMesg* msg, s32 flag)
# Copies the first message in the given message queue into the address specified by the msg argument
# In case the queue is empty, the operation blocks the thread and waits for a message,
# unless the flag is set to OS_MESG_NOBLOCK (0), in which case it aborts immediately and returns -1
# A0 = OSMesgQueue* queue to get the message from
# A1 = OSMesg* pointer where the message received should be stored (if NULL the message is discarded instead)
# A2 = s32 flag which indicates the blocking mode, either OS_MESG_BLOCK (1) or OS_MESG_NOBLOCK (0)
# V0 = 0 if a message could be received, else -1
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      s1, 0x0018($sp)
    jal     func_80005130              # __osDisableInt
    sw      s0, 0x0014($sp)
    lw      t6, 0x0028($sp)
    or      s0, v0, $zero              # s0 = 00000000
    lw      t7, 0x0008(t6)             # 00000008
    bne     t7, $zero, lbl_800020A8
    nop
lbl_80002064:
    lw      t8, 0x0030($sp)
    bne     t8, $zero, lbl_80002080
    nop
    jal     func_800051A0              # __osRestoreInt
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80002154
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80002080:
    lui     t0, 0x8000                 # t0 = 80000000
    lw      t0, 0x6340(t0)             # 80006340
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    sh      t9, 0x0010(t0)             # 80000010
    jal     func_80002A4C
    lw      a0, 0x0028($sp)
    lw      t1, 0x0028($sp)
    lw      t2, 0x0008(t1)             # 00000008
    beq     t2, $zero, lbl_80002064
    nop
lbl_800020A8:
    lw      t3, 0x002C($sp)
    beq     t3, $zero, lbl_800020D0
    nop
    lw      t4, 0x0028($sp)
    lw      t6, 0x000C(t4)             # 0000000C
    lw      t5, 0x0014(t4)             # 00000014
    sll     t7, t6,  2
    addu    t8, t5, t7
    lw      t9, 0x0000(t8)             # 00000000
    sw      t9, 0x0000(t3)             # 00000000
lbl_800020D0:
    lw      t0, 0x0028($sp)
    lw      t1, 0x000C(t0)             # 0000000C
    lw      t4, 0x0010(t0)             # 00000010
    addiu   t2, t1, 0x0001             # t2 = 00000001
    div     $zero, t2, t4
    mfhi    t6
    sw      t6, 0x000C(t0)             # 0000000C
    lw      t5, 0x0028($sp)
    bne     t4, $zero, lbl_800020FC
    nop
    break   # 0x01C00
lbl_800020FC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t4, $at, lbl_80002114
    lui     $at, 0x8000                # $at = 80000000
    bne     t2, $at, lbl_80002114
    nop
    break   # 0x01800
lbl_80002114:
    lw      t7, 0x0008(t5)             # 00000008
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sw      t8, 0x0008(t5)             # 00000008
    lw      t9, 0x0028($sp)
    lw      t3, 0x0004(t9)             # 00000004
    lw      t1, 0x0000(t3)             # 00000000
    beq     t1, $zero, lbl_80002148
    nop
    jal     func_80002B94
    addiu   a0, t9, 0x0004             # a0 = 00000004
    or      s1, v0, $zero              # s1 = 00000000
    jal     func_80005EC0              # osStartThread
    or      a0, s1, $zero              # a0 = 00000000
lbl_80002148:
    jal     func_800051A0              # __osRestoreInt
    or      a0, s0, $zero              # a0 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80002154:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    nop
    nop


func_80002170:
# __ull_rshift?
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    ld      t7, 0x0008($sp)
    ld      t6, 0x0000($sp)
    dsrlv   v0, t6, t7
    dsll32  v1, v0,  0
    dsra32  v1, v1,  0
    jr      $ra
    dsra32  v0, v0,  0


func_8000219C:
# __ull_rem?
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    ld      t7, 0x0008($sp)
    ld      t6, 0x0000($sp)
    ddivu   $zero, t6, t7
    bne     t7, $zero, lbl_800021C4
    nop
    break   # 0x01C00
lbl_800021C4:
    mfhi    v0
    dsll32  v1, v0,  0
    dsra32  v1, v1,  0
    jr      $ra
    dsra32  v0, v0,  0


func_800021D8:
# __ull_div?
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    ld      t7, 0x0008($sp)
    ld      t6, 0x0000($sp)
    ddivu   $zero, t6, t7
    bne     t7, $zero, lbl_80002200
    nop
    break   # 0x01C00
lbl_80002200:
    mflo    v0
    dsll32  v1, v0,  0
    dsra32  v1, v1,  0
    jr      $ra
    dsra32  v0, v0,  0


func_80002214:
# __ll_lshift?
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    ld      t7, 0x0008($sp)
    ld      t6, 0x0000($sp)
    dsllv   v0, t6, t7
    dsll32  v1, v0,  0
    dsra32  v1, v1,  0
    jr      $ra
    dsra32  v0, v0,  0


func_80002240:
# __ll_rem?
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    ld      t7, 0x0008($sp)
    ld      t6, 0x0000($sp)
    ddivu   $zero, t6, t7
    bne     t7, $zero, lbl_80002268
    nop
    break   # 0x01C00
lbl_80002268:
    mfhi    v0
    dsll32  v1, v0,  0
    dsra32  v1, v1,  0
    jr      $ra
    dsra32  v0, v0,  0


func_8000227C:
# __ll_div?
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    ld      t7, 0x0008($sp)
    ld      t6, 0x0000($sp)
    ddiv    $zero, t6, t7
    nop
    bne     t7, $zero, lbl_800022A8
    nop
    break   # 0x01C00
lbl_800022A8:
    daddiu  $at, $zero, 0xFFFF
    bne     t7, $at, lbl_800022C4
    daddiu  $at, $zero, 0x0001
    dsll32  $at, $at, 31
    bne     t6, $at, lbl_800022C4
    nop
    break   # 0x01800
lbl_800022C4:
    mflo    v0
    dsll32  v1, v0,  0
    dsra32  v1, v1,  0
    jr      $ra
    dsra32  v0, v0,  0


func_800022D8:
# __ll_mul?
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    ld      t7, 0x0008($sp)
    ld      t6, 0x0000($sp)
    dmultu  t6, t7
    mflo    v0
    dsll32  v1, v0,  0
    dsra32  v1, v1,  0
    jr      $ra
    dsra32  v0, v0,  0


func_80002308:
# __ull_divremi?
    lh      t7, 0x0012($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    ld      t6, 0x0008($sp)
    or      t8, t7, $zero              # t8 = 00000000
    or      t9, t8, $zero              # t9 = 00000000
    ddivu   $zero, t6, t9
    bne     t9, $zero, lbl_80002330
    nop
    break   # 0x01C00
lbl_80002330:
    mflo    t0
    sd      t0, 0x0000(a0)             # 00000000
    lh      t2, 0x0012($sp)
    ld      t1, 0x0008($sp)
    or      t3, t2, $zero              # t3 = 00000000
    or      t4, t3, $zero              # t4 = 00000000
    ddivu   $zero, t1, t4
    bne     t4, $zero, lbl_80002358
    nop
    break   # 0x01C00
lbl_80002358:
    mfhi    t5
    sd      t5, 0x0000(a1)             # 00000000
    jr      $ra
    nop


func_80002368:
# __ll_mod?
    addiu   $sp, $sp, 0xFFF8           # $sp -= 0x8
    sw      a0, 0x0008($sp)
    sw      a1, 0x000C($sp)
    sw      a2, 0x0010($sp)
    sw      a3, 0x0014($sp)
    ld      t7, 0x0010($sp)
    ld      t6, 0x0008($sp)
    ddiv    $zero, t6, t7
    nop
    bne     t7, $zero, lbl_80002398
    nop
    break   # 0x01C00
lbl_80002398:
    daddiu  $at, $zero, 0xFFFF
    bne     t7, $at, lbl_800023B4
    daddiu  $at, $zero, 0x0001
    dsll32  $at, $at, 31
    bne     t6, $at, lbl_800023B4
    nop
    break   # 0x01800
lbl_800023B4:
    mfhi    t8
    sd      t8, 0x0000($sp)
    bgez    t8, lbl_800023CC
    nop
    bgtz    t7, lbl_800023E4
    nop
lbl_800023CC:
    ld      t9, 0x0000($sp)
    blez    t9, lbl_800023F4
    nop
    ld      t0, 0x0010($sp)
    bgez    t0, lbl_800023F4
    nop
lbl_800023E4:
    ld      t1, 0x0000($sp)
    ld      t2, 0x0010($sp)
    daddu   t3, t1, t2
    sd      t3, 0x0000($sp)
lbl_800023F4:
    lw      v0, 0x0000($sp)
    lw      v1, 0x0004($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0008           # $sp += 0x8


func_80002404:
# __ll_rshift?
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    ld      t7, 0x0008($sp)
    ld      t6, 0x0000($sp)
    dsrav   v0, t6, t7
    dsll32  v1, v0,  0
    dsra32  v1, v1,  0
    jr      $ra
    dsra32  v0, v0,  0


func_80002430:
# __osExceptionPreamble?
    lui     k0, 0x8000                 # k0 = 80000000
    addiu   k0, k0, 0x2440             # k0 = 80002440
    jr      k0
    nop


func_80002440:
# __osExceptionHandler?
    lui     k0, 0x8001                 # k0 = 80010000
    addiu   k0, k0, 0x9C30             # k0 = 80009C30
    sd      $at, 0x0020(k0)            # 80009C50
    mfc0    k1, Status
    sw      k1, 0x0118(k0)             # 80009D48
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    and     k1, k1, $at
    mtc0    k1, Status
    sd      t0, 0x0058(k0)             # 80009C88
    sd      t1, 0x0060(k0)             # 80009C90
    sd      t2, 0x0068(k0)             # 80009C98
    sw      $zero, 0x0018(k0)          # 80009C48
    mfc0    t0, Cause
    or      t0, k0, $zero              # t0 = 80009C30
    lui     k0, 0x8000                 # k0 = 80000000
    lw      k0, 0x6340(k0)             # 80006340
    ld      t1, 0x0020(t0)             # 80009C50
    sd      t1, 0x0020(k0)             # 80000020
    ld      t1, 0x0118(t0)             # 80009D48
    sd      t1, 0x0118(k0)             # 80000118
    ld      t1, 0x0058(t0)             # 80009C88
    sd      t1, 0x0058(k0)             # 80000058
    ld      t1, 0x0060(t0)             # 80009C90
    sd      t1, 0x0060(k0)             # 80000060
    ld      t1, 0x0068(t0)             # 80009C98
    sd      t1, 0x0068(k0)             # 80000068
    lw      k1, 0x0118(k0)             # 80000118
    mflo    t0
    sd      t0, 0x0108(k0)             # 80000108
    mfhi    t0
    andi    t1, k1, 0xFF00             # t1 = 00000000
    sd      v0, 0x0028(k0)             # 80000028
    sd      v1, 0x0030(k0)             # 80000030
    sd      a0, 0x0038(k0)             # 80000038
    sd      a1, 0x0040(k0)             # 80000040
    sd      a2, 0x0048(k0)             # 80000048
    sd      a3, 0x0050(k0)             # 80000050
    sd      t3, 0x0070(k0)             # 80000070
    sd      t4, 0x0078(k0)             # 80000078
    sd      t5, 0x0080(k0)             # 80000080
    sd      t6, 0x0088(k0)             # 80000088
    sd      t7, 0x0090(k0)             # 80000090
    sd      s0, 0x0098(k0)             # 80000098
    sd      s1, 0x00A0(k0)             # 800000A0
    sd      s2, 0x00A8(k0)             # 800000A8
    sd      s3, 0x00B0(k0)             # 800000B0
    sd      s4, 0x00B8(k0)             # 800000B8
    sd      s5, 0x00C0(k0)             # 800000C0
    sd      s6, 0x00C8(k0)             # 800000C8
    sd      s7, 0x00D0(k0)             # 800000D0
    sd      t8, 0x00D8(k0)             # 800000D8
    sd      t9, 0x00E0(k0)             # 800000E0
    sd      gp, 0x00E8(k0)             # 800000E8
    sd      $sp, 0x00F0(k0)            # 800000F0
    sd      s8, 0x00F8(k0)             # 800000F8
    sd      $ra, 0x0100(k0)            # 80000100
    beq     t1, $zero, lbl_80002568
    sd      t0, 0x0110(k0)             # 80000110
    lui     t0, 0x8000                 # t0 = 80000000
    addiu   t0, t0, 0x6360             # t0 = 80006360
    lw      t0, 0x0000(t0)             # 80006360
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    xor     t2, t0, $at
    lui     $at, 0xFFFF                # $at = FFFF0000
    andi    t2, t2, 0xFF00             # t2 = 00000000
    ori     $at, $at, 0x00FF           # $at = FFFF00FF
    or      t4, t1, t2                 # t4 = 00000000
    and     t3, k1, $at
    andi    t0, t0, 0xFF00             # t0 = 00006300
    or      t3, t3, t4                 # t3 = 00000000
    and     t1, t1, t0
    and     k1, k1, $at
    sw      t3, 0x0118(k0)             # 80000118
    or      k1, k1, t1                 # k1 = 00000000
lbl_80002568:
    lui     t1, 0xA430                 # t1 = A4300000
    lw      t1, 0x000C(t1)             # A430000C
    beq     t1, $zero, lbl_800025A0
    nop
    lui     t0, 0x8000                 # t0 = 80000000
    addiu   t0, t0, 0x6360             # t0 = 80006360
    lw      t0, 0x0000(t0)             # 80006360
    lw      t4, 0x0128(k0)             # 80000128
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    srl     t0, t0, 16
    xor     t0, t0, $at
    andi    t0, t0, 0x003F             # t0 = 00000020
    and     t0, t0, t4
    or      t1, t1, t0                 # t1 = A4300020
lbl_800025A0:
    sw      t1, 0x0128(k0)             # 80000128
    mfc0    t0, Epc
    sw      t0, 0x011C(k0)             # 8000011C
    lw      t0, 0x0018(k0)             # 80000018
    beq     t0, $zero, lbl_80002604
    nop
    cfc1    t0, $f31
    nop
    sw      t0, 0x012C(k0)             # 8000012C
    sdc1    $f0, 0x0130(k0)            # 80000130
    sdc1    $f2, 0x0138(k0)            # 80000138
    sdc1    $f4, 0x0140(k0)            # 80000140
    sdc1    $f6, 0x0148(k0)            # 80000148
    sdc1    $f8, 0x0150(k0)            # 80000150
    sdc1    $f10, 0x0158(k0)           # 80000158
    sdc1    $f12, 0x0160(k0)           # 80000160
    sdc1    $f14, 0x0168(k0)           # 80000168
    sdc1    $f16, 0x0170(k0)           # 80000170
    sdc1    $f18, 0x0178(k0)           # 80000178
    sdc1    $f20, 0x0180(k0)           # 80000180
    sdc1    $f22, 0x0188(k0)           # 80000188
    sdc1    $f24, 0x0190(k0)           # 80000190
    sdc1    $f26, 0x0198(k0)           # 80000198
    sdc1    $f28, 0x01A0(k0)           # 800001A0
    sdc1    $f30, 0x01A8(k0)           # 800001A8
lbl_80002604:
    mfc0    t0, Cause
    sw      t0, 0x0120(k0)             # 80000120
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sh      t1, 0x0010(k0)             # 80000010
    andi    t1, t0, 0x007C             # t1 = 00000020
    addiu   t2, $zero, 0x0024          # t2 = 00000024
    beq     t1, t2, lbl_800028D0
    nop
    addiu   t2, $zero, 0x002C          # t2 = 0000002C
    beq     t1, t2, lbl_80002A18
    nop
    addiu   t2, $zero, 0x0000          # t2 = 00000000
    bne     t1, t2, lbl_80002934
    nop
    and     s0, k1, t0
lbl_80002640:
    andi    t1, s0, 0xFF00             # t1 = 00000000
    srl     t2, t1, 12
    bne     t2, $zero, lbl_80002658
    nop
    srl     t2, t1,  8
    addi    t2, t2, 0x0010             # t2 = 00000010
lbl_80002658:
    lui     $at, 0x8000                # $at = 80000000
    addu    $at, $at, t2
    lbu     t2, 0x6710($at)            # 80006710
    lui     $at, 0x8000                # $at = 80000000
    addu    $at, $at, t2
    lw      t2, 0x6730($at)            # 80006730
    jr      t2
    nop
    addiu   $at, $zero, 0xDFFF         # $at = FFFFDFFF
    beq     $zero, $zero, lbl_80002640
    and     s0, s0, $at
    addiu   $at, $zero, 0xBFFF         # $at = FFFFBFFF
    beq     $zero, $zero, lbl_80002640
    and     s0, s0, $at
    mfc0    t1, Compare
    mtc0    t1, Compare
    jal     func_80002964
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x7FFF           # $at = FFFF7FFF
    beq     $zero, $zero, lbl_80002640
    and     s0, s0, $at
    lui     t1, 0x8000                 # t1 = 80000000
    addiu   t1, t1, 0x6300             # t1 = 80006300
    lw      t2, 0x0008(t1)             # 80006308
    addiu   $at, $zero, 0xF7FF         # $at = FFFFF7FF
    and     s0, s0, $at
    beq     t2, $zero, lbl_800026E4
    addi    t1, t1, 0x0008             # t1 = 80006308
    jalr    $ra, t2
    lw      $sp, 0x0004(t1)            # 8000630C
    beq     v0, $zero, lbl_800026E4
    nop
    beq     $zero, $zero, lbl_800028E8
    nop
lbl_800026E4:
    jal     func_80002964
    addiu   a0, $zero, 0x0010          # a0 = 00000010
    beq     $zero, $zero, lbl_80002640
    nop
    lui     t0, 0x8000                 # t0 = 80000000
    addiu   t0, t0, 0x6360             # t0 = 80006360
    lw      t0, 0x0000(t0)             # 80006360
    lui     s1, 0xA430                 # s1 = A4300000
    lw      s1, 0x0008(s1)             # A4300008
    srl     t0, t0, 16
    and     s1, s1, t0
    andi    t1, s1, 0x0001             # t1 = 00000000
    beq     t1, $zero, lbl_80002764
    nop
    lui     t4, 0xA404                 # t4 = A4040000
    lw      t4, 0x0010(t4)             # A4040010
    ori     t1, $zero, 0x8008          # t1 = 00008008
    lui     $at, 0xA404                # $at = A4040000
    andi    t4, t4, 0x0300             # t4 = 00000000
    andi    s1, s1, 0x003E             # s1 = 00000000
    beq     t4, $zero, lbl_80002754
    sw      t1, 0x0010($at)            # A4040010
    jal     func_80002964
    addiu   a0, $zero, 0x0020          # a0 = 00000020
    beq     s1, $zero, lbl_80002828
    nop
    beq     $zero, $zero, lbl_80002764
    nop
lbl_80002754:
    jal     func_80002964
    addiu   a0, $zero, 0x0058          # a0 = 00000058
    beq     s1, $zero, lbl_80002828
    nop
lbl_80002764:
    andi    t1, s1, 0x0008             # t1 = 00000000
    beq     t1, $zero, lbl_80002788
    lui     $at, 0xA440                # $at = A4400000
    andi    s1, s1, 0x0037             # s1 = 00000000
    sw      $zero, 0x0010($at)         # A4400010
    jal     func_80002964
    addiu   a0, $zero, 0x0038          # a0 = 00000038
    beq     s1, $zero, lbl_80002828
    nop
lbl_80002788:
    andi    t1, s1, 0x0004             # t1 = 00000000
    beq     t1, $zero, lbl_800027B4
    nop
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lui     $at, 0xA450                # $at = A4500000
    andi    s1, s1, 0x003B             # s1 = 00000000
    sw      t1, 0x000C($at)            # A450000C
    jal     func_80002964
    addiu   a0, $zero, 0x0030          # a0 = 00000030
    beq     s1, $zero, lbl_80002828
    nop
lbl_800027B4:
    andi    t1, s1, 0x0002             # t1 = 00000000
    beq     t1, $zero, lbl_800027D8
    lui     $at, 0xA480                # $at = A4800000
    andi    s1, s1, 0x003D             # s1 = 00000000
    sw      $zero, 0x0018($at)         # A4800018
    jal     func_80002964
    addiu   a0, $zero, 0x0028          # a0 = 00000028
    beq     s1, $zero, lbl_80002828
    nop
lbl_800027D8:
    andi    t1, s1, 0x0010             # t1 = 00000000
    beq     t1, $zero, lbl_80002804
    nop
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    lui     $at, 0xA460                # $at = A4600000
    andi    s1, s1, 0x002F             # s1 = 00000000
    sw      t1, 0x0010($at)            # A4600010
    jal     func_80002964
    addiu   a0, $zero, 0x0040          # a0 = 00000040
    beq     s1, $zero, lbl_80002828
    nop
lbl_80002804:
    andi    t1, s1, 0x0020             # t1 = 00000000
    beq     t1, $zero, lbl_80002828
    nop
    addiu   t1, $zero, 0x0800          # t1 = 00000800
    lui     $at, 0xA430                # $at = A4300000
    andi    s1, s1, 0x001F             # s1 = 00000000
    sw      t1, 0x0000($at)            # A4300000
    jal     func_80002964
    addiu   a0, $zero, 0x0048          # a0 = 00000048
lbl_80002828:
    addiu   $at, $zero, 0xFBFF         # $at = FFFFFBFF
    beq     $zero, $zero, lbl_80002640
    and     s0, s0, $at
    lw      k1, 0x0118(k0)             # 80000118
    addiu   $at, $zero, 0xEFFF         # $at = FFFFEFFF
    lui     t1, 0x8000                 # t1 = 80000000
    and     k1, k1, $at
    sw      k1, 0x0118(k0)             # 80000118
    addiu   t1, t1, 0x635C             # t1 = 8000635C
    lw      t2, 0x0000(t1)             # 8000635C
    beq     t2, $zero, lbl_80002860
    addiu   $at, $zero, 0xEFFF         # $at = FFFFEFFF
    beq     $zero, $zero, lbl_800028E8
    and     s0, s0, $at
lbl_80002860:
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0000(t1)             # 8000635C
    jal     func_80002964
    addiu   a0, $zero, 0x0070          # a0 = 00000070
    lui     t2, 0x8000                 # t2 = 80000000
    lw      t2, 0x6338(t2)             # 80006338
    addiu   $at, $zero, 0xEFFF         # $at = FFFFEFFF
    and     s0, s0, $at
    lw      k1, 0x0118(t2)             # 80000118
    and     k1, k1, $at
    beq     $zero, $zero, lbl_800028E8
    sw      k1, 0x0118(t2)             # 80000118
    addiu   $at, $zero, 0xFDFF         # $at = FFFFFDFF
    and     t0, t0, $at
    mtc0    t0, Cause
    jal     func_80002964
    addiu   a0, $zero, 0x0008          # a0 = 00000008
    addiu   $at, $zero, 0xFDFF         # $at = FFFFFDFF
    beq     $zero, $zero, lbl_80002640
    and     s0, s0, $at
    addiu   $at, $zero, 0xFEFF         # $at = FFFFFEFF
    and     t0, t0, $at
    mtc0    t0, Cause
    jal     func_80002964
    addiu   a0, $zero, 0x0000          # a0 = 00000000
    addiu   $at, $zero, 0xFEFF         # $at = FFFFFEFF
    beq     $zero, $zero, lbl_80002640
    and     s0, s0, $at
lbl_800028D0:
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sh      t1, 0x0012(k0)             # 80000012
    jal     func_80002964
    addiu   a0, $zero, 0x0050          # a0 = 00000050
    beq     $zero, $zero, lbl_800028E8
    nop
lbl_800028E8:
    lui     t2, 0x8000                 # t2 = 80000000
    lw      t2, 0x6338(t2)             # 80006338
    lw      t1, 0x0004(k0)             # 80000004
    lw      t3, 0x0004(t2)             # 80000004
    slt     $at, t1, t3
    beq     $at, $zero, lbl_8000291C
    nop
    lui     a0, 0x8000                 # a0 = 80000000
    or      a1, k0, $zero              # a1 = 80000000
    jal     func_80002B4C
    addiu   a0, a0, 0x6338             # a0 = 80006338
    j       func_80002BA4
    nop
lbl_8000291C:
    lui     t1, 0x8000                 # t1 = 80000000
    addiu   t1, t1, 0x6338             # t1 = 80006338
    lw      t2, 0x0000(t1)             # 80006338
    sw      t2, 0x0000(k0)             # 80000000
    j       func_80002BA4
    sw      k0, 0x0000(t1)             # 80006338
lbl_80002934:
    lui     $at, 0x8000                # $at = 80000000
    sw      k0, 0x6344($at)            # 80006344
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sh      t1, 0x0010(k0)             # 80000010
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sh      t1, 0x0012(k0)             # 80000012
    mfc0    t2, BadVAddr
    sw      t2, 0x0124(k0)             # 80000124
    jal     func_80002964
    addiu   a0, $zero, 0x0060          # a0 = 00000060
    j       func_80002BA4
    nop


func_80002964:
    lui     t2, 0x8001                 # t2 = 80010000
    addiu   t2, t2, 0x9DE0             # t2 = 80009DE0
    addu    t2, t2, a0
    lw      t1, 0x0000(t2)             # 80009DE0
    or      s2, $ra, $zero             # s2 = 00000000
    beq     t1, $zero, lbl_80002A10
    nop
    lw      t3, 0x0008(t1)             # 00000008
    lw      t4, 0x0010(t1)             # 00000010
    slt     $at, t3, t4
    beq     $at, $zero, lbl_80002A10
    nop
    lw      t5, 0x000C(t1)             # 0000000C
    addu    t5, t5, t3
    div     $zero, t5, t4
    bne     t4, $zero, lbl_800029AC
    nop
    break   # 0x01C00
lbl_800029AC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t4, $at, lbl_800029C4
    lui     $at, 0x8000                # $at = 80000000
    bne     t5, $at, lbl_800029C4
    nop
    break   # 0x01800
lbl_800029C4:
    lw      t4, 0x0014(t1)             # 00000014
    mfhi    t5
    sll     t5, t5,  2
    addu    t4, t4, t5
    lw      t5, 0x0004(t2)             # 80009DE4
    addiu   t2, t3, 0x0001             # t2 = 00000001
    sw      t5, 0x0000(t4)             # 00000000
    sw      t2, 0x0008(t1)             # 00000008
    lw      t2, 0x0000(t1)             # 00000000
    lw      t3, 0x0000(t2)             # 00000001
    beq     t3, $zero, lbl_80002A10
    nop
    jal     func_80002B94
    or      a0, t1, $zero              # a0 = 00000000
    or      t2, v0, $zero              # t2 = 00000000
    lui     a0, 0x8000                 # a0 = 80000000
    or      a1, t2, $zero              # a1 = 00000000
    jal     func_80002B4C
    addiu   a0, a0, 0x6338             # a0 = 80006338
lbl_80002A10:
    jr      s2
    nop
lbl_80002A18:
    lui     $at, 0x3000                # $at = 30000000
    and     t1, t0, $at
    srl     t1, t1, 28
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    bne     t1, t2, lbl_80002934
    nop
    lw      k1, 0x0118(k0)             # 00000118
    lui     $at, 0x2000                # $at = 20000000
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    or      k1, k1, $at                # k1 = 20000000
    sw      t1, 0x0018(k0)             # 00000018
    beq     $zero, $zero, lbl_8000291C
    sw      k1, 0x0118(k0)             # 00000118


func_80002A4C:
# __osEnqueueAndYield?
    lui     a1, 0x8000                 # a1 = 80000000
    lw      a1, 0x6340(a1)             # 80006340
    mfc0    t0, Status
    lw      k1, 0x0018(a1)             # 80000018
    ori     t0, t0, 0x0002             # t0 = 00000002
    sw      t0, 0x0118(a1)             # 80000118
    sd      s0, 0x0098(a1)             # 80000098
    sd      s1, 0x00A0(a1)             # 800000A0
    sd      s2, 0x00A8(a1)             # 800000A8
    sd      s3, 0x00B0(a1)             # 800000B0
    sd      s4, 0x00B8(a1)             # 800000B8
    sd      s5, 0x00C0(a1)             # 800000C0
    sd      s6, 0x00C8(a1)             # 800000C8
    sd      s7, 0x00D0(a1)             # 800000D0
    sd      gp, 0x00E8(a1)             # 800000E8
    sd      $sp, 0x00F0(a1)            # 800000F0
    sd      s8, 0x00F8(a1)             # 800000F8
    sd      $ra, 0x0100(a1)            # 80000100
    beq     k1, $zero, lbl_80002ABC
    sw      $ra, 0x011C(a1)            # 8000011C
    cfc1    k1, $f31
    sdc1    $f20, 0x0180(a1)           # 80000180
    sdc1    $f22, 0x0188(a1)           # 80000188
    sdc1    $f24, 0x0190(a1)           # 80000190
    sdc1    $f26, 0x0198(a1)           # 80000198
    sdc1    $f28, 0x01A0(a1)           # 800001A0
    sdc1    $f30, 0x01A8(a1)           # 800001A8
    sw      k1, 0x012C(a1)             # 8000012C
lbl_80002ABC:
    lw      k1, 0x0118(a1)             # 80000118
    andi    t1, k1, 0xFF00             # t1 = 00000000
    beq     t1, $zero, lbl_80002AFC
    nop
    lui     t0, 0x8000                 # t0 = 80000000
    addiu   t0, t0, 0x6360             # t0 = 80006360
    lw      t0, 0x0000(t0)             # 80006360
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    xor     t0, t0, $at
    lui     $at, 0xFFFF                # $at = FFFF0000
    andi    t0, t0, 0xFF00             # t0 = 00006300
    ori     $at, $at, 0x00FF           # $at = FFFF00FF
    or      t1, t1, t0                 # t1 = 00006300
    and     k1, k1, $at
    or      k1, k1, t1                 # k1 = 00006300
    sw      k1, 0x0118(a1)             # 80000118
lbl_80002AFC:
    lui     k1, 0xA430                 # k1 = A4300000
    lw      k1, 0x000C(k1)             # A430000C
    beq     k1, $zero, lbl_80002B34
    nop
    lui     k0, 0x8000                 # k0 = 80000000
    addiu   k0, k0, 0x6360             # k0 = 80006360
    lw      k0, 0x0000(k0)             # 80006360
    lw      t0, 0x0128(a1)             # 80000128
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    srl     k0, k0, 16
    xor     k0, k0, $at
    andi    k0, k0, 0x003F             # k0 = 00000020
    and     k0, k0, t0
    or      k1, k1, k0                 # k1 = A4300020
lbl_80002B34:
    beq     a0, $zero, lbl_80002B44
    sw      k1, 0x0128(a1)             # 80000128
    jal     func_80002B4C
    nop
lbl_80002B44:
    j       func_80002BA4
    nop


func_80002B4C:
# __osEnqueueThread?
    lw      t8, 0x0000(a0)             # 00000000
    lw      t7, 0x0004(a1)             # 00000004
    or      t9, a0, $zero              # t9 = 00000000
    lw      t6, 0x0004(t8)             # 00000004
    slt     $at, t6, t7
    bne     $at, $zero, lbl_80002B80
    nop
lbl_80002B68:
    or      t9, t8, $zero              # t9 = 00000000
    lw      t8, 0x0000(t8)             # 00000000
    lw      t6, 0x0004(t8)             # 00000004
    slt     $at, t6, t7
    beq     $at, $zero, lbl_80002B68
    nop
lbl_80002B80:
    lw      t8, 0x0000(t9)             # 00000000
    sw      t8, 0x0000(a1)             # 00000000
    sw      a1, 0x0000(t9)             # 00000000
    jr      $ra
    sw      a0, 0x0008(a1)             # 00000008


func_80002B94:
# __osPopThread?
    lw      v0, 0x0000(a0)             # 00000000
    lw      t9, 0x0000(v0)             # 00000000
    jr      $ra
    sw      t9, 0x0000(a0)             # 00000000


func_80002BA4:
# __osDispatchThread?
    lui     a0, 0x8000                 # a0 = 80000000
    jal     func_80002B94
    addiu   a0, a0, 0x6338             # a0 = 80006338
    lui     $at, 0x8000                # $at = 80000000
    sw      v0, 0x6340($at)            # 80006340
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    sh      t0, 0x0010(v0)             # 00000010
    or      k0, v0, $zero              # k0 = 00000000
    lui     t0, 0x8000                 # t0 = 80000000
    lw      k1, 0x0118(k0)             # 00000118
    addiu   t0, t0, 0x6360             # t0 = 80006360
    lw      t0, 0x0000(t0)             # 80006360
    lui     $at, 0xFFFF                # $at = FFFF0000
    andi    t1, k1, 0xFF00             # t1 = 00000000
    ori     $at, $at, 0x00FF           # $at = FFFF00FF
    andi    t0, t0, 0xFF00             # t0 = 00006300
    and     t1, t1, t0
    and     k1, k1, $at
    or      k1, k1, t1                 # k1 = 00000000
    mtc0    k1, Status
    ld      k1, 0x0108(k0)             # 00000108
    ld      $at, 0x0020(k0)            # 00000020
    ld      v0, 0x0028(k0)             # 00000028
    mtlo    $zero
    ld      k1, 0x0110(k0)             # 00000110
    ld      v1, 0x0030(k0)             # 00000030
    ld      a0, 0x0038(k0)             # 00000038
    ld      a1, 0x0040(k0)             # 00000040
    ld      a2, 0x0048(k0)             # 00000048
    ld      a3, 0x0050(k0)             # 00000050
    ld      t0, 0x0058(k0)             # 00000058
    ld      t1, 0x0060(k0)             # 00000060
    ld      t2, 0x0068(k0)             # 00000068
    ld      t3, 0x0070(k0)             # 00000070
    ld      t4, 0x0078(k0)             # 00000078
    ld      t5, 0x0080(k0)             # 00000080
    ld      t6, 0x0088(k0)             # 00000088
    ld      t7, 0x0090(k0)             # 00000090
    ld      s0, 0x0098(k0)             # 00000098
    ld      s1, 0x00A0(k0)             # 000000A0
    ld      s2, 0x00A8(k0)             # 000000A8
    ld      s3, 0x00B0(k0)             # 000000B0
    ld      s4, 0x00B8(k0)             # 000000B8
    ld      s5, 0x00C0(k0)             # 000000C0
    ld      s6, 0x00C8(k0)             # 000000C8
    ld      s7, 0x00D0(k0)             # 000000D0
    ld      t8, 0x00D8(k0)             # 000000D8
    ld      t9, 0x00E0(k0)             # 000000E0
    ld      gp, 0x00E8(k0)             # 000000E8
    mthi    $zero
    ld      $sp, 0x00F0(k0)            # 000000F0
    ld      s8, 0x00F8(k0)             # 000000F8
    ld      $ra, 0x0100(k0)            # 00000100
    lw      k1, 0x011C(k0)             # 0000011C
    mtc0    k1, Epc
    lw      k1, 0x0018(k0)             # 00000018
    beq     k1, $zero, lbl_80002CD4
    nop
    lw      k1, 0x012C(k0)             # 0000012C
    ctc1    k1, $f31
    ldc1    $f0, 0x0130(k0)            # 00000130
    ldc1    $f2, 0x0138(k0)            # 00000138
    ldc1    $f4, 0x0140(k0)            # 00000140
    ldc1    $f6, 0x0148(k0)            # 00000148
    ldc1    $f8, 0x0150(k0)            # 00000150
    ldc1    $f10, 0x0158(k0)           # 00000158
    ldc1    $f12, 0x0160(k0)           # 00000160
    ldc1    $f14, 0x0168(k0)           # 00000168
    ldc1    $f16, 0x0170(k0)           # 00000170
    ldc1    $f18, 0x0178(k0)           # 00000178
    ldc1    $f20, 0x0180(k0)           # 00000180
    ldc1    $f22, 0x0188(k0)           # 00000188
    ldc1    $f24, 0x0190(k0)           # 00000190
    ldc1    $f26, 0x0198(k0)           # 00000198
    ldc1    $f28, 0x01A0(k0)           # 000001A0
    ldc1    $f30, 0x01A8(k0)           # 000001A8
lbl_80002CD4:
    lw      k1, 0x0128(k0)             # 00000128
    lui     k0, 0x8000                 # k0 = 80000000
    addiu   k0, k0, 0x6360             # k0 = 80006360
    lw      k0, 0x0000(k0)             # 80006360
    srl     k0, k0, 16
    and     k1, k1, k0
    sll     k1, k1,  1
    lui     k0, 0x8000                 # k0 = 80000000
    addiu   k0, k0, 0x6780             # k0 = 80006780
    addu    k1, k1, k0
    lhu     k1, 0x0000(k1)             # 00000000
    lui     k0, 0xA430                 # k0 = A4300000
    addiu   k0, k0, 0x000C             # k0 = A430000C
    sw      k1, 0x0000(k0)             # A430000C
    nop
    nop
    nop
    nop
    eret


func_80002D20:
# __osCleanupThread?
# Destroy the thread currently running
# Simply calls osDestroyThread with argument NULL
    jal     func_80002D70              # osDestroyThread
    or      a0, $zero, $zero           # a0 = 00000000
    nop
    nop


func_80002D30:
# void __osDequeueThread(OSThread** queue, OSThread* thread)
# Remove a given thread from the given queue
# A0 = OSThread** thread queue
# A1 = OSThread* thread
    or      a2, a0, $zero              # a2 = 00000000
    lw      a3, 0x0000(a2)             # 00000000
    addiu   $sp, $sp, 0xFFF8           # $sp -= 0x8
    beq     a3, $zero, lbl_80002D68
    nop
lbl_80002D44:
    bne     a3, a1, lbl_80002D58
    nop
    lw      t6, 0x0000(a1)             # 00000000
    beq     $zero, $zero, lbl_80002D68
    sw      t6, 0x0000(a2)             # 00000000
lbl_80002D58:
    or      a2, a3, $zero              # a2 = 00000000
    lw      a3, 0x0000(a2)             # 00000000
    bne     a3, $zero, lbl_80002D44
    nop
lbl_80002D68:
    jr      $ra
    addiu   $sp, $sp, 0x0008           # $sp += 0x8


func_80002D70:
# void osDestroyThread(OSThread* thread)
# Removes a given thread from any queues it may be on
# If targeting the thread currently running, the dispatcher is invoked to run the new highest priority runnable thread
# A0 = OSThread* thread, or NULL to default to the thread currently running
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0038($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    jal     func_80005130              # __osDisableInt
    sw      s0, 0x0018($sp)
    lw      t6, 0x0038($sp)
    or      s0, v0, $zero              # s0 = 00000000
    bne     t6, $zero, lbl_80002DAC
    nop
    lui     t7, 0x8000                 # t7 = 80000000
    lw      t7, 0x6340(t7)             # 80006340
    beq     $zero, $zero, lbl_80002DCC
    sw      t7, 0x0038($sp)
lbl_80002DAC:
    lw      t8, 0x0038($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lhu     t9, 0x0010(t8)             # 00000010
    beq     t9, $at, lbl_80002DCC
    nop
    lw      a0, 0x0008(t8)             # 00000008
    jal     func_80002D30              # __osDequeueThread
    or      a1, t8, $zero              # a1 = 00000000
lbl_80002DCC:
    lui     t0, 0x8000                 # t0 = 80000000
    lw      t0, 0x633C(t0)             # 8000633C
    lw      t1, 0x0038($sp)
    bne     t0, t1, lbl_80002DF0
    nop
    lw      t2, 0x000C(t0)             # 8000000C
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80002E38
    sw      t2, 0x633C($at)            # 8000633C
lbl_80002DF0:
    lui     s1, 0x8000                 # s1 = 80000000
    lw      s1, 0x633C(s1)             # 8000633C
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    lw      t3, 0x0004(s1)             # 80000004
    beq     t3, $at, lbl_80002E38
    nop
lbl_80002E08:
    lw      s2, 0x000C(s1)             # 8000000C
    lw      t4, 0x0038($sp)
    bne     s2, t4, lbl_80002E24
    nop
    lw      t5, 0x000C(t4)             # 0000000C
    beq     $zero, $zero, lbl_80002E38
    sw      t5, 0x000C(s1)             # 8000000C
lbl_80002E24:
    or      s1, s2, $zero              # s1 = 00000000
    lw      t6, 0x0004(s1)             # 00000004
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t6, $at, lbl_80002E08
    nop
lbl_80002E38:
    lui     t9, 0x8000                 # t9 = 80000000
    lw      t9, 0x6340(t9)             # 80006340
    lw      t7, 0x0038($sp)
    bne     t7, t9, lbl_80002E54
    nop
    jal     func_80002BA4
    nop
lbl_80002E54:
    jal     func_800051A0              # __osRestoreInt
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    nop
    nop
    nop


func_80002E80:
# void bzero(void* dest, u32 size)
# Erase a block of memory
# A0 = Pointer to the start of the block
# A1 = u32 block size
    slti    $at, a1, 0x000C
    bne     $at, $zero, lbl_80002EFC
    subu    v1, $zero, a0
    andi    v1, v1, 0x0003             # v1 = 00000000
    beq     v1, $zero, lbl_80002EA0
    subu    a1, a1, v1
    swl     $zero, 0x0000(a0)          # 00000000
    addu    a0, a0, v1
lbl_80002EA0:
    addiu   $at, $zero, 0xFFE0         # $at = FFFFFFE0
    and     a3, a1, $at
    beq     a3, $zero, lbl_80002EDC
    subu    a1, a1, a3
    addu    a3, a3, a0
lbl_80002EB4:
    addiu   a0, a0, 0x0020             # a0 = 00000020
    sw      $zero, -0x0020(a0)         # 00000000
    sw      $zero, -0x001C(a0)         # 00000004
    sw      $zero, -0x0018(a0)         # 00000008
    sw      $zero, -0x0014(a0)         # 0000000C
    sw      $zero, -0x0010(a0)         # 00000010
    sw      $zero, -0x000C(a0)         # 00000014
    sw      $zero, -0x0008(a0)         # 00000018
    bne     a0, a3, lbl_80002EB4
    sw      $zero, -0x0004(a0)         # 0000001C
lbl_80002EDC:
    addiu   $at, $zero, 0xFFFC         # $at = FFFFFFFC
    and     a3, a1, $at
    beq     a3, $zero, lbl_80002EFC
    subu    a1, a1, a3
    addu    a3, a3, a0
lbl_80002EF0:
    addiu   a0, a0, 0x0004             # a0 = 00000024
    bne     a0, a3, lbl_80002EF0
    sw      $zero, -0x0004(a0)         # 00000020
lbl_80002EFC:
    blez    a1, lbl_80002F14
    nop
    addu    a1, a1, a0
lbl_80002F08:
    addiu   a0, a0, 0x0001             # a0 = 00000025
    bne     a0, a1, lbl_80002F08
    sb      $zero, -0x0001(a0)         # 00000024
lbl_80002F14:
    jr      $ra
    nop
    nop


func_80002F20:
# void osCreateThread(OSThread* thread, OSId id, void (*entry)(void*), void* arg, void* sp, OSPri pri)
# Initialize a given thread in the stopped state and puts it on the active gvd queue (for the N64 debugger)
# A0 = OSThread* pointer to the thread to create
# A1 = OSId thread id (for debugging purposes)
# A2 = Entrypoint procedure to use for this thread (jumped to when the thread is started)
# A3 = Argument passed to the entrypoint procedure
# SP + 0x10 = Pointer to the stack for this thread
# SP + 0x14 = OSPri priority value, ranges from OS_PRIORITY_IDLE (0) to OS_PRIORITY_APPMAX (127)
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lw      t7, 0x0028($sp)
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    sw      s0, 0x0018($sp)
    sw      t6, 0x0014(t7)             # 00000014
    lw      t9, 0x0028($sp)
    lw      t8, 0x003C($sp)
    sw      t8, 0x0004(t9)             # 00000004
    lw      t0, 0x0028($sp)
    sw      $zero, 0x0000(t0)          # 00000000
    lw      t1, 0x0028($sp)
    sw      $zero, 0x0008(t1)          # 00000008
    lw      t3, 0x0028($sp)
    lw      t2, 0x0030($sp)
    sw      t2, 0x011C(t3)             # 0000011C
    lw      t4, 0x0034($sp)
    lw      t5, 0x0028($sp)
    or      t7, t4, $zero              # t7 = 00000000
    sra     t6, t4, 31
    sw      t6, 0x0038(t5)             # 00000038
    sw      t7, 0x003C(t5)             # 0000003C
    lw      t8, 0x0038($sp)
    lw      t9, 0x0028($sp)
    lui     t4, 0x8000                 # t4 = 80000000
    or      t1, t8, $zero              # t1 = 00000000
    sltiu   $at, t1, 0x0010
    sra     t0, t8, 31
    subu    t2, t0, $at
    addiu   t3, t1, 0xFFF0             # t3 = FFFFFFF0
    sw      t3, 0x00F4(t9)             # 000000F4
    sw      t2, 0x00F0(t9)             # 000000F0
    lw      t5, 0x0028($sp)
    addiu   t4, t4, 0x2D20             # t4 = 80002D20
    or      t7, t4, $zero              # t7 = 80002D20
    sra     t6, t4, 31
    sw      t6, 0x0100(t5)             # 00000100
    sw      t7, 0x0104(t5)             # 00000104
    lw      t1, 0x0028($sp)
    lui     t8, 0x003F                 # t8 = 003F0000
    ori     t8, t8, 0xFF01             # t8 = 003FFF01
    sw      t8, 0x0020($sp)
    ori     t0, $zero, 0xFF03          # t0 = 0000FF03
    sw      t0, 0x0118(t1)             # 00000118
    lw      t2, 0x0020($sp)
    lw      t4, 0x0028($sp)
    lui     $at, 0x003F                # $at = 003F0000
    and     t3, t2, $at
    srl     t9, t3, 16
    sw      t9, 0x0128(t4)             # 80002E48
    lw      t7, 0x0028($sp)
    lui     t6, 0x0100                 # t6 = 01000000
    ori     t6, t6, 0x0800             # t6 = 01000800
    sw      t6, 0x012C(t7)             # 80002E4C
    lw      t5, 0x0028($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      $zero, 0x0018(t5)          # 00000018
    lw      t0, 0x0028($sp)
    sh      t8, 0x0010(t0)             # 0000FF13
    lw      t1, 0x0028($sp)
    jal     func_80005130              # __osDisableInt
    sh      $zero, 0x0012(t1)          # 00000012
    lui     t2, 0x8000                 # t2 = 80000000
    lw      t2, 0x633C(t2)             # 8000633C
    lw      t3, 0x0028($sp)
    or      s0, v0, $zero              # s0 = 00000000
    lui     $at, 0x8000                # $at = 80000000
    sw      t2, 0x000C(t3)             # 0000000C
    lw      t9, 0x0028($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800051A0              # __osRestoreInt
    sw      t9, 0x633C($at)            # 8000633C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop
    nop
    nop


func_80003070:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x001C($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x8001                # $at = 80010000
    sw      s0, 0x0018($sp)
    sw      $zero, 0x0030($sp)
    jal     func_80003430              # __osGetSR
    sw      t6, -0x76A0($at)           # 80008960
    or      s0, v0, $zero              # s0 = 00000000
    lui     $at, 0x2000                # $at = 20000000
    jal     func_80003420              # __osSetSR
    or      a0, s0, $at                # a0 = 20000000
    lui     a0, 0x0100                 # a0 = 01000000
    jal     func_800057E0              # __osSetFpcCsr
    ori     a0, a0, 0x0800             # a0 = 01000800
    lui     a0, 0x1FC0                 # a0 = 1FC00000
    ori     a0, a0, 0x07FC             # a0 = 1FC007FC
    jal     func_80003C50
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFFC
    beq     v0, $zero, lbl_800030DC
    nop
lbl_800030C4:
    lui     a0, 0x1FC0                 # a0 = 1FC00000
    ori     a0, a0, 0x07FC             # a0 = 1FC007FC
    jal     func_80003C50
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFFC
    bne     v0, $zero, lbl_800030C4
    nop
lbl_800030DC:
    lw      a1, 0x0034($sp)
    lui     a0, 0x1FC0                 # a0 = 1FC00000
    ori     a0, a0, 0x07FC             # a0 = 1FC007FC
    ori     t7, a1, 0x0008             # t7 = 00000008
    jal     func_80005B50
    or      a1, t7, $zero              # a1 = 00000008
    beq     v0, $zero, lbl_8000311C
    nop
lbl_800030FC:
    lw      a1, 0x0034($sp)
    lui     a0, 0x1FC0                 # a0 = 1FC00000
    ori     a0, a0, 0x07FC             # a0 = 1FC007FC
    ori     t8, a1, 0x0008             # t8 = 00000008
    jal     func_80005B50
    or      a1, t8, $zero              # a1 = 00000008
    bne     v0, $zero, lbl_800030FC
    nop
lbl_8000311C:
    lui     t0, 0x8000                 # t0 = 80000000
    addiu   t0, t0, 0x2430             # t0 = 80002430
    lw      $at, 0x0000(t0)            # 80002430
    lui     t9, 0x8000                 # t9 = 80000000
    lui     t5, 0x8000                 # t5 = 80000000
    sw      $at, 0x0000(t9)            # 80000000
    lw      t3, 0x0004(t0)             # 80002434
    addiu   t5, t5, 0x2430             # t5 = 80002430
    lui     t4, 0x8000                 # t4 = 80000000
    sw      t3, 0x0004(t9)             # 80000004
    lw      $at, 0x0008(t0)            # 80002438
    ori     t4, t4, 0x0080             # t4 = 80000080
    lui     t1, 0x8000                 # t1 = 80000000
    sw      $at, 0x0008(t9)            # 80000008
    lw      t3, 0x000C(t0)             # 8000243C
    addiu   t1, t1, 0x2430             # t1 = 80002430
    lui     t2, 0x8000                 # t2 = 80000000
    sw      t3, 0x000C(t9)             # 8000000C
    lw      $at, 0x0000(t5)            # 80002430
    ori     t2, t2, 0x0100             # t2 = 80000100
    lui     t6, 0x8000                 # t6 = 80000000
    sw      $at, 0x0000(t4)            # 80000080
    lw      t8, 0x0004(t5)             # 80002434
    addiu   t6, t6, 0x2430             # t6 = 80002430
    lui     t7, 0x8000                 # t7 = 80000000
    sw      t8, 0x0004(t4)             # 80000084
    lw      $at, 0x0008(t5)            # 80002438
    ori     t7, t7, 0x0180             # t7 = 80000180
    lui     a0, 0x8000                 # a0 = 80000000
    sw      $at, 0x0008(t4)            # 80000088
    lw      t8, 0x000C(t5)             # 8000243C
    addiu   a1, $zero, 0x0190          # a1 = 00000190
    sw      t8, 0x000C(t4)             # 8000008C
    lw      $at, 0x0000(t1)            # 80002430
    sw      $at, 0x0000(t2)            # 80000100
    lw      t3, 0x0004(t1)             # 80002434
    sw      t3, 0x0004(t2)             # 80000104
    lw      $at, 0x0008(t1)            # 80002438
    sw      $at, 0x0008(t2)            # 80000108
    lw      t3, 0x000C(t1)             # 8000243C
    sw      t3, 0x000C(t2)             # 8000010C
    lw      $at, 0x0000(t6)            # 80002430
    sw      $at, 0x0000(t7)            # 80000180
    lw      t8, 0x0004(t6)             # 80002434
    sw      t8, 0x0004(t7)             # 80000184
    lw      $at, 0x0008(t6)            # 80002438
    sw      $at, 0x0008(t7)            # 80000188
    lw      t8, 0x000C(t6)             # 8000243C
    jal     func_80003440              # osWritebackDCache
    sw      t8, 0x000C(t7)             # 8000018C
    lui     a0, 0x8000                 # a0 = 80000000
    jal     func_800041A0              # osInvalICache
    addiu   a1, $zero, 0x0190          # a1 = 00000190
    jal     func_80003318
    nop
    jal     func_80004070
    nop
    jal     func_80005850              # osMapTLBRdb
    nop
    lui     a0, 0x8000                 # a0 = 80000000
    lui     a1, 0x8000                 # a1 = 80000000
    lw      a1, 0x6354(a1)             # 80006354
    lw      a0, 0x6350(a0)             # 80006350
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800022D8
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    sw      v0, 0x0020($sp)
    sw      v1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    lw      a0, 0x0020($sp)
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800021D8
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    lui     t0, 0x8000                 # t0 = 80000000
    lw      t0, 0x030C(t0)             # 8000030C
    lui     $at, 0x8000                # $at = 80000000
    sw      v0, 0x6350($at)            # 80006350
    bne     t0, $zero, lbl_80003268
    sw      v1, 0x6354($at)            # 80006354
    lui     a0, 0x8000                 # a0 = 80000000
    addiu   a0, a0, 0x031C             # a0 = 8000031C
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0040          # a1 = 00000040
lbl_80003268:
    lui     t9, 0x8000                 # t9 = 80000000
    lw      t9, 0x0300(t9)             # 80000300
    bne     t9, $zero, lbl_8000328C
    nop
    lui     t2, 0x02F5                 # t2 = 02F50000
    ori     t2, t2, 0xB2D2             # t2 = 02F5B2D2
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_800032C4
    sw      t2, 0x6358($at)            # 80006358
lbl_8000328C:
    lui     t1, 0x8000                 # t1 = 80000000
    lw      t1, 0x0300(t1)             # 80000300
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t1, $at, lbl_800032B4
    nop
    lui     t3, 0x02E6                 # t3 = 02E60000
    ori     t3, t3, 0x025C             # t3 = 02E6025C
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_800032C4
    sw      t3, 0x6358($at)            # 80006358
lbl_800032B4:
    lui     t5, 0x02E6                 # t5 = 02E60000
    ori     t5, t5, 0xD354             # t5 = 02E6D354
    lui     $at, 0x8000                # $at = 80000000
    sw      t5, 0x6358($at)            # 80006358
lbl_800032C4:
    jal     func_80005900              # __osGetCause
    nop
    andi    t4, v0, 0x1000             # t4 = 00000000
    beq     t4, $zero, lbl_800032E0
    nop
lbl_800032D8:
    beq     $zero, $zero, lbl_800032D8
    nop
lbl_800032E0:
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     t6, 0xA450                 # t6 = A4500000
    sw      t7, 0x0008(t6)             # A4500008
    addiu   t8, $zero, 0x3FFF          # t8 = 00003FFF
    lui     t0, 0xA450                 # t0 = A4500000
    sw      t8, 0x0010(t0)             # A4500010
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    lui     t2, 0xA450                 # t2 = A4500000
    sw      t9, 0x0014(t2)             # A4500014
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80003318:
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    lui     $at, 0x8001                # $at = 80010000
    sb      t6, -0x768C($at)           # 80008974
    lui     t7, 0xA460                 # t7 = A4600000
    lw      t8, 0x0014(t7)             # A4600014
    lui     $at, 0x8001                # $at = 80010000
    lui     t9, 0xA460                 # t9 = A4600000
    sb      t8, -0x768B($at)           # 80008975
    lw      t0, 0x0018(t9)             # A4600018
    lui     $at, 0x8001                # $at = 80010000
    lui     t1, 0xA460                 # t1 = A4600000
    sb      t0, -0x7688($at)           # 80008978
    lw      t2, 0x001C(t1)             # A460001C
    lui     $at, 0x8001                # $at = 80010000
    lui     t3, 0xA460                 # t3 = A4600000
    sb      t2, -0x768A($at)           # 80008976
    lw      t4, 0x0020(t3)             # A4600020
    lui     $at, 0x8001                # $at = 80010000
    addiu   t5, $zero, 0x0007          # t5 = 00000007
    sb      t4, -0x7689($at)           # 80008977
    lui     $at, 0x8001                # $at = 80010000
    sb      t5, -0x7614($at)           # 800089EC
    lui     t6, 0xA460                 # t6 = A4600000
    lw      t7, 0x0024(t6)             # A4600024
    lui     $at, 0x8001                # $at = 80010000
    lui     t8, 0xA460                 # t8 = A4600000
    sb      t7, -0x7613($at)           # 800089ED
    lw      t9, 0x0028(t8)             # A4600028
    lui     $at, 0x8001                # $at = 80010000
    lui     t0, 0xA460                 # t0 = A4600000
    sb      t9, -0x7610($at)           # 800089F0
    lw      t1, 0x002C(t0)             # A460002C
    lui     $at, 0x8001                # $at = 80010000
    lui     t2, 0xA460                 # t2 = A4600000
    sb      t1, -0x7612($at)           # 800089EE
    lw      t3, 0x0030(t2)             # A4600030
    lui     $at, 0x8001                # $at = 80010000
    jr      $ra
    sb      t3, -0x7611($at)           # 800089EF
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop


func_80003420:
# void __osSetSR(u32 value)
# Set the value of the R4300 Status register
# A0 = new value
    mtc0    a0, Status
    nop
    jr      $ra
    nop


func_80003430:
# u32 __osGetSR(void)
# Get the value of the R4300 Status register
# V0 = current value
    mfc0    v0, Status
    jr      $ra
    nop
    nop


func_80003440:
# void osWritebackDCache(void* vaddr, s32 nbytes)
# Writes back CPU data cache lines containing the region [vaddr, vaddr + nbytes- 1]
# If the number of bytes is >= 0x2000, writes back all data cache lines that are not invalid and invalidates them
# A0 = CPU virtual address to start writing back from
# A1 = s32 number of bytes for the region to write back
    blez    a1, lbl_80003488
    nop
    addiu   t3, $zero, 0x2000          # t3 = 00002000
    sltu    $at, a1, t3
    beq     $at, $zero, lbl_80003490
    nop
    or      t0, a0, $zero              # t0 = 00000000
    addu    t1, a0, a1
    sltu    $at, t0, t1
    beq     $at, $zero, lbl_80003488
    nop
    andi    t2, t0, 0x000F             # t2 = 00000000
    addiu   t1, t1, 0xFFF0             # t1 = FFFFFFF0
    subu    t0, t0, t2
lbl_80003478:
    cache   0x19, 0x0000(t0)
    sltu    $at, t0, t1
    bne     $at, $zero, lbl_80003478
    addiu   t0, t0, 0x0010             # t0 = 00000010
lbl_80003488:
    jr      $ra
    nop
lbl_80003490:
    lui     t0, 0x8000                 # t0 = 80000000
    addu    t1, t0, t3
    addiu   t1, t1, 0xFFF0             # t1 = FFFFFFE0
lbl_8000349C:
    cache   0x01, 0x0000(t0)
    sltu    $at, t0, t1
    bne     $at, $zero, lbl_8000349C
    addiu   t0, t0, 0x0010             # t0 = 80000010
    jr      $ra
    nop
    nop
    nop
    nop


func_800034C0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    jal     func_80005130              # __osDisableInt
    sw      s0, 0x0018($sp)
    lui     t6, 0x8000                 # t6 = 80000000
    lw      t6, 0x64C4(t6)             # 800064C4
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


func_80003500:
# void osCreatePiManager(OSPri pri, OSMesgQueue* cmdQ, OSMesg* cmdBuf, s32 cmdMsgCnt)
# Create and start the PImgr thread
# A0 = OSPri thread priority
# A1 = OSMesgQueue* queue where the thread will receive its command messages
# A2 = OSMesg* message buffer to use for the queue
# A3 = s32 max number of command messages to hold
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    lui     s0, 0x8000                 # s0 = 80000000
    addiu   s0, s0, 0x6370             # s0 = 80006370
    lw      t6, 0x0000(s0)             # 80006370
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    bne     t6, $zero, lbl_8000365C
    sw      a2, 0x0038($sp)
    or      a0, a1, $zero              # a0 = 00000000
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80004220              # osCreateMesgQueue
    or      a2, a3, $zero              # a2 = 00000000
    lui     a0, 0x8001                 # a0 = 80010000
    lui     a1, 0x8001                 # a1 = 80010000
    addiu   a1, a1, 0x9C28             # a1 = 80009C28
    addiu   a0, a0, 0x9C10             # a0 = 80009C10
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     t7, 0x8000                 # t7 = 80000000
    lw      t7, 0x62F0(t7)             # 800062F0
    bne     t7, $zero, lbl_80003568
    nop
    jal     func_80001D60
    nop
lbl_80003568:
    lui     a1, 0x8001                 # a1 = 80010000
    lui     a2, 0x2222                 # a2 = 22220000
    ori     a2, a2, 0x2222             # a2 = 22222222
    addiu   a1, a1, 0x9C10             # a1 = 80009C10
    jal     func_80003FB0              # osSetEventMesg
    addiu   a0, $zero, 0x0008          # a0 = 00000008
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    sw      t8, 0x0028($sp)
    jal     func_80004560              # osGetThreadPri
    or      a0, $zero, $zero           # a0 = 00000000
    lw      t9, 0x0030($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    slt     $at, v0, t9
    beq     $at, $zero, lbl_800035AC
    or      a1, t9, $zero              # a1 = 00000000
    jal     func_80004480              # osSetThreadPri
    sw      v0, 0x0028($sp)
lbl_800035AC:
    jal     func_80005130              # __osDisableInt
    nop
    lw      t1, 0x0034($sp)
    lw      t7, 0x0030($sp)
    lui     a0, 0x8001                 # a0 = 80010000
    lui     t2, 0x8001                 # t2 = 80010000
    lui     t3, 0x8001                 # t3 = 80010000
    lui     t4, 0x8000                 # t4 = 80000000
    lui     t5, 0x8000                 # t5 = 80000000
    lui     t6, 0x8001                 # t6 = 80010000
    addiu   a0, a0, 0x8A60             # a0 = 80008A60
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t2, t2, 0x9C10             # t2 = 80009C10
    addiu   t3, t3, 0x8948             # t3 = 80008948
    addiu   t4, t4, 0x3A90             # t4 = 80003A90
    addiu   t5, t5, 0x46E0             # t5 = 800046E0
    addiu   t6, t6, 0x9C10             # t6 = 80009C10
    lui     a2, 0x8000                 # a2 = 80000000
    sw      v0, 0x002C($sp)
    sw      t0, 0x0000(s0)             # 80006370
    sw      a0, 0x0004(s0)             # 80006374
    sw      t2, 0x000C(s0)             # 8000637C
    sw      t3, 0x0010(s0)             # 80006380
    sw      t4, 0x0014(s0)             # 80006384
    sw      t5, 0x0018(s0)             # 80006388
    addiu   a2, a2, 0x3680             # a2 = 80003680
    sw      t6, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, s0, $zero              # a3 = 80006370
    sw      t1, 0x0008(s0)             # 80006378
    jal     func_80002F20              # osCreateThread
    sw      t7, 0x0014($sp)
    lui     a0, 0x8001                 # a0 = 80010000
    jal     func_80005EC0              # osStartThread
    addiu   a0, a0, 0x8A60             # a0 = 80008A60
    jal     func_800051A0              # __osRestoreInt
    lw      a0, 0x002C($sp)
    lw      t8, 0x0028($sp)
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    or      a0, $zero, $zero           # a0 = 00000000
    beql    t8, $at, lbl_80003660
    lw      $ra, 0x0024($sp)
    jal     func_80004480              # osSetThreadPri
    or      a1, t8, $zero              # a1 = 00000000
lbl_8000365C:
    lw      $ra, 0x0024($sp)
lbl_80003660:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop
    nop
    nop
    nop
    nop


func_80003680:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s3, 0x002C($sp)
    sw      s8, 0x0040($sp)
    sw      s7, 0x003C($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    lui     s3, 0x0500                 # s3 = 05000000
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      $zero, 0x0074($sp)
    ori     s3, s3, 0x0510             # s3 = 05000510
    addiu   s5, $zero, 0x0024          # s5 = 00000024
    addiu   s6, $sp, 0x0070            # s6 = FFFFFFF8
    addiu   s7, $zero, 0x0001          # s7 = 00000001
    addiu   s8, $zero, 0x001D          # s8 = 0000001D
lbl_800036CC:
    lw      a0, 0x0008(s4)             # 00000008
lbl_800036D0:
    addiu   a1, $sp, 0x0074            # a1 = FFFFFFFC
    jal     func_80002030              # osRecvMesg
    or      a2, s7, $zero              # a2 = 00000001
    lw      t6, 0x0074($sp)
    lw      t0, 0x0074($sp)
    lw      a0, 0x0014(t6)             # 00000014
    beql    a0, $zero, lbl_800038F0
    lhu     t1, 0x0000(t0)             # 00000000
    lbu     t7, 0x0004(a0)             # 00000004
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t7, $at, lbl_800038F0
    lhu     t1, 0x0000(t0)             # 00000000
    lw      v0, 0x0014(a0)             # 00000014
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   s0, a0, 0x0014             # s0 = 00000014
    beq     v0, $zero, lbl_8000371C
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFF4
    bnel    v0, $at, lbl_800038F0
    lhu     t1, 0x0000(t0)             # 00000000
lbl_8000371C:
    lhu     t8, 0x0006(s0)             # 0000001A
    lhu     v0, 0x0004(s0)             # 00000018
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    multu   t8, s5
    addiu   $at, $zero, 0x0003         # $at = 00000003
    sw      t0, 0x0008(s0)             # 0000001C
    or      s2, $zero, $zero           # s2 = 00000000
    or      a2, s7, $zero              # a2 = 00000001
    mflo    t9
    addu    s1, s0, t9
    beq     v0, $at, lbl_80003760
    addiu   s1, s1, 0x0018             # s1 = 00000018
    lw      t1, 0x0004(s1)             # 0000001C
    lw      t2, 0x000C(s1)             # 00000024
    subu    t3, t1, t2
    sw      t3, 0x0004(s1)             # 0000001C
    lhu     v0, 0x0004(s0)             # 00000018
lbl_80003760:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80003784
    lw      t4, 0x0074($sp)
    lw      t5, 0x0014(t4)             # 00000014
    lw      t6, 0x0014(t5)             # 00000014
    bne     t6, $zero, lbl_80003784
    nop
    beq     $zero, $zero, lbl_80003784
    or      s2, s7, $zero              # s2 = 00000001
lbl_80003784:
    jal     func_80002030              # osRecvMesg
    lw      a0, 0x0010(s4)             # 00000010
    lui     a0, 0x0010                 # a0 = 00100000
    jal     func_800050D0              # __osResetGlobalIntMask
    ori     a0, a0, 0x0401             # a0 = 00100401
    lw      a2, 0x0010(s0)             # 00000024
    lw      t7, 0x0074($sp)
    lui     $at, 0x8000                # $at = 80000000
    or      t8, a2, $at                # t8 = 80000000
    or      a2, t8, $zero              # a2 = 80000000
    or      a1, s3, $zero              # a1 = 05000510
    jal     func_80005910
    lw      a0, 0x0014(t7)             # 00000014
lbl_800037B8:
    lw      a0, 0x000C(s4)             # 0000000C
    or      a1, s6, $zero              # a1 = FFFFFFF8
    jal     func_80002030              # osRecvMesg
    or      a2, s7, $zero              # a2 = 00000001
    lw      t9, 0x0074($sp)
    lw      a0, 0x0014(t9)             # 00000014
    addiu   s0, a0, 0x0014             # s0 = 00000014
    lhu     t0, 0x0006(s0)             # 0000001A
    multu   t0, s5
    mflo    t1
    addu    s1, s0, t1
    lw      t2, 0x0018(s1)             # 00000030
    addiu   s1, s1, 0x0018             # s1 = 00000030
    bnel    s8, t2, lbl_8000388C
    lw      a1, 0x0074($sp)
    lw      a2, 0x0010(s0)             # 00000024
    lui     $at, 0x1000                # $at = 10000000
    or      a1, s3, $zero              # a1 = 05000510
    or      t3, a2, $at                # t3 = 10000000
    jal     func_80005910
    or      a2, t3, $zero              # a2 = 10000000
    lw      t4, 0x0074($sp)
    or      a1, s3, $zero              # a1 = 05000510
    lw      a2, 0x0010(s0)             # 00000024
    jal     func_80005910
    lw      a0, 0x0014(t4)             # 00000014
    lw      t5, 0x0074($sp)
    lui     a1, 0x0500                 # a1 = 05000000
    ori     a1, a1, 0x0508             # a1 = 05000508
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFDC
    jal     func_80004580
    lw      a0, 0x0014(t5)             # 00000014
    lw      t6, 0x0054($sp)
    lw      t8, 0x0074($sp)
    or      a1, s3, $zero              # a1 = 05000510
    sll     t7, t6,  6
    bgezl   t7, lbl_8000386C
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    lw      a2, 0x0010(s0)             # 00000024
    lui     $at, 0x0100                # $at = 01000000
    lw      a0, 0x0014(t8)             # 00000014
    or      t9, a2, $at                # t9 = 01000000
    jal     func_80005910
    or      a2, t9, $zero              # a2 = 01000000
    addiu   t0, $zero, 0x0004          # t0 = 00000004
lbl_8000386C:
    sw      t0, 0x0000(s1)             # 00000030
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    lui     t2, 0xA460                 # t2 = A4600000
    lui     a0, 0x0010                 # a0 = 00100000
    sw      t1, 0x0010(t2)             # A4600010
    jal     func_80004D60              # __osSetGlobalIntMask
    ori     a0, a0, 0x0C01             # a0 = 00100C01
    lw      a1, 0x0074($sp)
lbl_8000388C:
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_80001E20              # osSendMesg
    lw      a0, 0x0004(a1)             # 00000004
    bne     s2, s7, lbl_800038B8
    lw      t4, 0x0074($sp)
    lw      t5, 0x0014(t4)             # 00000014
    lw      t6, 0x002C(t5)             # 0000002C
    bnel    t6, $zero, lbl_800038BC
    lw      a0, 0x0010(s4)             # 00000010
    beq     $zero, $zero, lbl_800037B8
    or      s2, $zero, $zero           # s2 = 00000000
lbl_800038B8:
    lw      a0, 0x0010(s4)             # 00000010
lbl_800038BC:
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80001E20              # osSendMesg
    or      a2, $zero, $zero           # a2 = 00000000
    lw      t7, 0x0074($sp)
    lw      t8, 0x0014(t7)             # 00000014
    lhu     t9, 0x001A(t8)             # 0000001A
    bnel    s7, t9, lbl_800036D0
    lw      a0, 0x0008(s4)             # 00000008
    jal     func_800058B0              # osYieldThread
    nop
    beq     $zero, $zero, lbl_800036D0
    lw      a0, 0x0008(s4)             # 00000008
    lhu     t1, 0x0000(t0)             # 00000000
lbl_800038F0:
    addiu   t2, t1, 0xFFF6             # t2 = FFFFFFF6
    sltiu   $at, t2, 0x0007
    beq     $at, $zero, lbl_80003A18
    sll     t2, t2,  2
    lui     $at, 0x8000                # $at = 80000000
    addu    $at, $at, t2
    lw      t2, 0x6760($at)            # 80006760
    jr      t2
    nop
    lw      a0, 0x0010(s4)             # 00000010
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFF4
    jal     func_80002030              # osRecvMesg
    or      a2, s7, $zero              # a2 = 00000001
    lw      t3, 0x0074($sp)
    lw      t9, 0x0014(s4)             # 00000014
    or      a0, $zero, $zero           # a0 = 00000000
    lw      a1, 0x000C(t3)             # 0000000C
    lw      a2, 0x0008(t3)             # 00000008
    jalr    $ra, t9
    lw      a3, 0x0010(t3)             # 00000010
    beq     $zero, $zero, lbl_80003A1C
    or      s0, v0, $zero              # s0 = 00000000
    lw      a0, 0x0010(s4)             # 00000010
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFF4
    jal     func_80002030              # osRecvMesg
    or      a2, s7, $zero              # a2 = 00000001
    lw      t4, 0x0074($sp)
    lw      t9, 0x0014(s4)             # 00000014
    or      a0, s7, $zero              # a0 = 00000001
    lw      a1, 0x000C(t4)             # 0000000C
    lw      a2, 0x0008(t4)             # 00000008
    jalr    $ra, t9
    lw      a3, 0x0010(t4)             # 00000010
    beq     $zero, $zero, lbl_80003A1C
    or      s0, v0, $zero              # s0 = 00000000
    lw      a0, 0x0010(s4)             # 00000010
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFF4
    jal     func_80002030              # osRecvMesg
    or      a2, s7, $zero              # a2 = 00000001
    lw      t5, 0x0074($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    lw      t6, 0x0010(t5)             # 00000010
    lw      a0, 0x0014(t5)             # 00000014
    lw      a2, 0x000C(t5)             # 0000000C
    lw      a3, 0x0008(t5)             # 00000008
    sw      t6, 0x0010($sp)
    lw      t9, 0x0018(s4)             # 00000018
    jalr    $ra, t9
    nop
    beq     $zero, $zero, lbl_80003A1C
    or      s0, v0, $zero              # s0 = 00000000
    lw      a0, 0x0010(s4)             # 00000010
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFF4
    jal     func_80002030              # osRecvMesg
    or      a2, s7, $zero              # a2 = 00000001
    lw      t7, 0x0074($sp)
    or      a1, s7, $zero              # a1 = 00000001
    lw      t8, 0x0010(t7)             # 00000010
    lw      a0, 0x0014(t7)             # 00000014
    lw      a2, 0x000C(t7)             # 0000000C
    lw      a3, 0x0008(t7)             # 00000008
    sw      t8, 0x0010($sp)
    lw      t9, 0x0018(s4)             # 00000018
    jalr    $ra, t9
    nop
    beq     $zero, $zero, lbl_80003A1C
    or      s0, v0, $zero              # s0 = 00000000
    lw      a1, 0x0074($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   s0, $zero, 0xFFFF          # s0 = FFFFFFFF
    jal     func_80001E20              # osSendMesg
    lw      a0, 0x0004(a1)             # 00000004
    beq     $zero, $zero, lbl_80003A1C
    nop
lbl_80003A18:
    addiu   s0, $zero, 0xFFFF          # s0 = FFFFFFFF
lbl_80003A1C:
    bne     s0, $zero, lbl_800036CC
    or      a1, s6, $zero              # a1 = FFFFFFF8
    lw      a0, 0x000C(s4)             # 0000000C
    jal     func_80002030              # osRecvMesg
    or      a2, s7, $zero              # a2 = 00000001
    lw      a1, 0x0074($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_80001E20              # osSendMesg
    lw      a0, 0x0004(a1)             # 00000004
    lw      a0, 0x0010(s4)             # 00000010
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80001E20              # osSendMesg
    or      a2, $zero, $zero           # a2 = 00000000
    beq     $zero, $zero, lbl_800036D0
    lw      a0, 0x0008(s4)             # 00000008
    nop
    nop
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    lw      s5, 0x0034($sp)
    lw      s6, 0x0038($sp)
    lw      s7, 0x003C($sp)
    lw      s8, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_80003A90:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v1, 0xA460                 # v1 = A4600000
    ori     v1, v1, 0x0010             # v1 = A4600010
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      v0, 0x0000(v1)             # A4600010
    or      a0, a2, $zero              # a0 = 00000000
    andi    t6, v0, 0x0003             # t6 = 00000000
    beq     t6, $zero, lbl_80003ACC
    nop
    lw      v0, 0x0000(v1)             # A4600010
lbl_80003AC0:
    andi    t7, v0, 0x0003             # t7 = 00000000
    bnel    t7, $zero, lbl_80003AC0
    lw      v0, 0x0000(v1)             # A4600010
lbl_80003ACC:
    jal     func_80003B60              # osVirtualToPhysical
    sw      a3, 0x0024($sp)
    lw      v1, 0x0018($sp)
    lw      a3, 0x0024($sp)
    lui     t8, 0xA460                 # t8 = A4600000
    sw      v0, 0x0000(t8)             # A4600000
    lui     t9, 0x8000                 # t9 = 80000000
    lw      t9, 0x0308(t9)             # 80000308
    lw      t0, 0x001C($sp)
    lui     $at, 0x1FFF                # $at = 1FFF0000
    ori     $at, $at, 0xFFFF           # $at = 1FFFFFFF
    or      t1, t9, t0                 # t1 = 80000000
    and     t2, t1, $at
    lui     t3, 0xA460                 # t3 = A4600000
    beq     v1, $zero, lbl_80003B20
    sw      t2, 0x0004(t3)             # A4600004
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_80003B30
    addiu   t6, a3, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80003B48
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80003B20:
    addiu   t4, a3, 0xFFFF             # t4 = FFFFFFFF
    lui     t5, 0xA460                 # t5 = A4600000
    beq     $zero, $zero, lbl_80003B44
    sw      t4, 0x000C(t5)             # A460000C
lbl_80003B30:
    lui     t7, 0xA460                 # t7 = A4600000
    beq     $zero, $zero, lbl_80003B44
    sw      t6, 0x0008(t7)             # A4600008
    beq     $zero, $zero, lbl_80003B48
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80003B44:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80003B48:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop


func_80003B60:
# u32 osVirtualToPhysical(void* vaddr)
# Translate a CPU virtual address to its physical memory address
# A0 = CPU virtual address to translate
# V0 = u32 corresponding physical address, or -1 if the address couldn't be translated
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a0, 0x0018($sp)
    lw      t6, 0x0018($sp)
    lui     $at, 0x8000                # $at = 80000000
    sw      $ra, 0x0014($sp)
    sltu    $at, t6, $at
    bne     $at, $zero, lbl_80003B98
    lui     $at, 0xA000                # $at = A0000000
    sltu    $at, t6, $at
    beq     $at, $zero, lbl_80003B98
    lui     $at, 0x1FFF                # $at = 1FFF0000
    ori     $at, $at, 0xFFFF           # $at = 1FFFFFFF
    beq     $zero, $zero, lbl_80003BCC
    and     v0, t6, $at
lbl_80003B98:
    lw      t7, 0x0018($sp)
    lui     $at, 0xA000                # $at = A0000000
    sltu    $at, t7, $at
    bne     $at, $zero, lbl_80003BC4
    lui     $at, 0xC000                # $at = C0000000
    sltu    $at, t7, $at
    beq     $at, $zero, lbl_80003BC4
    lui     $at, 0x1FFF                # $at = 1FFF0000
    ori     $at, $at, 0xFFFF           # $at = 1FFFFFFF
    beq     $zero, $zero, lbl_80003BCC
    and     v0, t7, $at
lbl_80003BC4:
    jal     func_80003DD0              # __osProbeTLB
    lw      a0, 0x0018($sp)
lbl_80003BCC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop


func_80003BE0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    jal     func_80005130              # __osDisableInt
    sw      s0, 0x0018($sp)
    lbu     t6, 0x002B($sp)
    or      s0, v0, $zero              # s0 = 00000000
    beq     t6, $zero, lbl_80003C1C
    nop
    lui     t7, 0x8000                 # t7 = 80000000
    lw      t7, 0x64C4(t7)             # 800064C4
    lhu     t8, 0x0000(t7)             # 80000000
    ori     t9, t8, 0x0020             # t9 = 00000020
    beq     $zero, $zero, lbl_80003C34
    sh      t9, 0x0000(t7)             # 80000000
lbl_80003C1C:
    lui     t0, 0x8000                 # t0 = 80000000
    lw      t0, 0x64C4(t0)             # 800064C4
    addiu   $at, $zero, 0xFFDF         # $at = FFFFFFDF
    lhu     t1, 0x0000(t0)             # 80000000
    and     t2, t1, $at
    sh      t2, 0x0000(t0)             # 80000000
lbl_80003C34:
    jal     func_800051A0              # __osRestoreInt
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80003C50:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80004300
    sw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80003C74
    lw      t6, 0x0018($sp)
    beq     $zero, $zero, lbl_80003C8C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80003C74:
    lui     $at, 0xA000                # $at = A0000000
    or      t7, t6, $at                # t7 = A0000000
    lw      t8, 0x0000(t7)             # A0000000
    lw      t9, 0x001C($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    sw      t8, 0x0000(t9)             # 00000000
lbl_80003C8C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop


func_80003CA0:
# OSId osGetThreadId(OSThread* thread)
# Get the debugger id of a given thread
# A0 = OSThread* thread, or NULL to default to the invoking thread (currently running)
# V0 = OSId id
    bne     a0, $zero, lbl_80003CB0
    nop
    lui     a0, 0x8000                 # a0 = 80000000
    lw      a0, 0x6340(a0)             # 80006340
lbl_80003CB0:
    jr      $ra
    lw      v0, 0x0014(a0)             # 80000014
    nop
    nop


func_80003CC0:
# void osSetIntMask(OSIntMask im)
# Enable or disable hardware interrupts based on the provided mask
# A0 = OSIntMask interrupt mask
    mfc0    t4, Status
    andi    v0, t4, 0xFF01             # v0 = 00000000
    lui     t0, 0x8000                 # t0 = 80000000
    addiu   t0, t0, 0x6360             # t0 = 80006360
    lw      t3, 0x0000(t0)             # 80006360
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    xor     t0, t3, $at
    andi    t0, t0, 0xFF00             # t0 = 00006300
    or      v0, v0, t0                 # v0 = 00006300
    lui     t2, 0xA430                 # t2 = A4300000
    lw      t2, 0x000C(t2)             # A430000C
    beq     t2, $zero, lbl_80003D04
    srl     t1, t3, 16
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    xor     t1, t1, $at
    andi    t1, t1, 0x003F             # t1 = 00000000
    or      t2, t2, t1                 # t2 = A4300000
lbl_80003D04:
    sll     t2, t2, 16
    or      v0, v0, t2                 # v0 = A4306300
    lui     $at, 0x003F                # $at = 003F0000
    and     t0, a0, $at
    and     t0, t0, t3
    srl     t0, t0, 15
    lui     t2, 0x8000                 # t2 = 80000000
    addu    t2, t2, t0
    lhu     t2, 0x6780(t2)             # 80006780
    lui     $at, 0xA430                # $at = A4300000
    sw      t2, 0x000C($at)            # A430000C
    andi    t0, a0, 0xFF01             # t0 = 00000000
    andi    t1, t3, 0xFF00             # t1 = 00000000
    and     t0, t0, t1
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x00FF           # $at = FFFF00FF
    and     t4, t4, $at
    or      t4, t4, t0                 # t4 = 00000000
    mtc0    t4, Status
    nop
    nop
    jr      $ra
    nop


func_80003D60:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    jal     func_80005130              # __osDisableInt
    sw      s0, 0x0018($sp)
    lui     t7, 0x8000                 # t7 = 80000000
    lw      t7, 0x64C4(t7)             # 800064C4
    lw      t6, 0x0028($sp)
    lui     t9, 0x8000                 # t9 = 80000000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t6, 0x0008(t7)             # 80000008
    lw      t9, 0x64C4(t9)             # 800064C4
    lui     t0, 0x8000                 # t0 = 80000000
    or      s0, v0, $zero              # s0 = 00000000
    sh      t8, 0x0000(t9)             # 80000000
    lw      t0, 0x64C4(t0)             # 800064C4
    or      a0, s0, $zero              # a0 = 00000000
    lw      t1, 0x0008(t0)             # 80000008
    lw      t2, 0x0004(t1)             # 00000004
    jal     func_800051A0              # __osRestoreInt
    sw      t2, 0x000C(t0)             # 8000000C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop
    nop


func_80003DD0:
# __osProbeTLB
    mfc0    t0, EntryHi
    andi    t1, t0, 0x00FF             # t1 = 00000000
    addiu   $at, $zero, 0xE000         # $at = FFFFE000
    and     t2, a0, $at
    or      t1, t1, t2                 # t1 = 00000000
    mtc0    t1, EntryHi
    nop
    nop
    nop
    tlbp
    nop
    nop
    mfc0    t3, Index
    lui     $at, 0x8000                # $at = 80000000
    and     t3, t3, $at
    bne     t3, $zero, lbl_80003E78
    nop
    tlbr
    nop
    nop
    nop
    mfc0    t3, PageMask
    addi    t3, t3, 0x2000             # t3 = 00002000
    srl     t3, t3,  1
    and     t4, t3, a0
    bne     t4, $zero, lbl_80003E48
    addi    t3, t3, 0xFFFF             # t3 = 00001FFF
    mfc0    v0, EntryLo0
    beq     $zero, $zero, lbl_80003E4C
    nop
lbl_80003E48:
    mfc0    v0, EntryLo1
lbl_80003E4C:
    andi    t5, v0, 0x0002             # t5 = 00000000
    beq     t5, $zero, lbl_80003E78
    nop
    lui     $at, 0x3FFF                # $at = 3FFF0000
    ori     $at, $at, 0xFFC0           # $at = 3FFFFFC0
    and     v0, v0, $at
    sll     v0, v0,  6
    and     t5, a0, t3
    add     v0, v0, t5
    beq     $zero, $zero, lbl_80003E7C
    nop
lbl_80003E78:
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80003E7C:
    mtc0    t0, EntryHi
    jr      $ra
    nop
    nop
    nop


func_80003E90:
    addiu   $sp, $sp, 0xFFF0           # $sp -= 0x10
    lui     t6, 0x0040                 # t6 = 00400000
    sw      t6, 0x0008($sp)
lbl_80003E9C:
    lw      t7, 0x0008($sp)
    lui     $at, 0xA000                # $at = A0000000
    lui     t9, 0xA000                 # t9 = A0000000
    addu    t8, t7, $at
    sw      t8, 0x000C($sp)
    addu    t9, t9, t7
    lw      t9, 0x0000(t9)             # A0000000
    lui     t0, 0xA010                 # t0 = A0100000
    addu    t0, t0, t7
    sw      t9, 0x0004($sp)
    lw      t0, -0x0004(t0)            # A00FFFFC
    lui     t1, 0xA000                 # t1 = A0000000
    addu    t1, t1, t7
    sw      t0, 0x0000($sp)
    lw      t1, 0x0000(t1)             # A0000000
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    lui     t4, 0x0010                 # t4 = 00100000
    xor     t2, t1, $at
    lui     $at, 0xA000                # $at = A0000000
    addu    $at, $at, t7
    sw      t2, 0x0000($at)            # A0000000
    lw      t3, 0x000C($sp)
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    addu    t4, t4, t3
    lw      t4, -0x0004(t4)            # 000FFFFC
    xor     t5, t4, $at
    lui     $at, 0x0010                # $at = 00100000
    addu    $at, $at, t3
    sw      t5, -0x0004($at)           # 000FFFFC
    lw      t6, 0x000C($sp)
    lw      t9, 0x0004($sp)
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    lw      t8, 0x0000(t6)             # 00400000
    xor     t0, t9, $at
    bne     t8, t0, lbl_80003F4C
    nop
    lui     t1, 0x0010                 # t1 = 00100000
    lw      t2, 0x0000($sp)
    addu    t1, t1, t6
    lw      t1, -0x0004(t1)            # 000FFFFC
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    xor     t7, t2, $at
    beq     t1, t7, lbl_80003F54
    nop
lbl_80003F4C:
    beq     $zero, $zero, lbl_80003F9C
    lw      v0, 0x0008($sp)
lbl_80003F54:
    lw      t4, 0x0004($sp)
    lw      t5, 0x000C($sp)
    lui     $at, 0x0010                # $at = 00100000
    sw      t4, 0x0000(t5)             # 00000000
    lw      t9, 0x000C($sp)
    lw      t3, 0x0000($sp)
    addu    $at, $at, t9
    sw      t3, -0x0004($at)           # 000FFFFC
    lw      t8, 0x0008($sp)
    lui     $at, 0x0010                # $at = 00100000
    addu    t0, t8, $at
    sw      t0, 0x0008($sp)
    lw      t6, 0x0008($sp)
    lui     $at, 0x0080                # $at = 00800000
    sltu    $at, t6, $at
    bne     $at, $zero, lbl_80003E9C
    nop
    lw      v0, 0x0008($sp)
lbl_80003F9C:
    jr      $ra
    addiu   $sp, $sp, 0x0010           # $sp += 0x10
    nop
    nop
    nop


func_80003FB0:
# void osSetEventMesg(OSEvent e, OSMesgQueue* mq, OSMesg msg)
# Associates a message queue and message with an event
# The event takes values of OS_EVENT_* and generally corresponds to an interrupt or an exception
# A0 = OSEvent event associated
# A1 = OSMesgQueue* queue to associate
# A2 = OSMesg message to associate
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    jal     func_80005130              # __osDisableInt
    sw      s0, 0x0018($sp)
    lw      t6, 0x0028($sp)
    lui     t8, 0x8001                 # t8 = 80010000
    lw      t0, 0x002C($sp)
    addiu   t8, t8, 0x9DE0             # t8 = 80009DE0
    sll     t7, t6,  3
    addu    t9, t7, t8
    sw      t9, 0x0020($sp)
    sw      t0, 0x0000(t9)             # 00000000
    lw      t2, 0x0020($sp)
    lw      t1, 0x0030($sp)
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    or      s0, v0, $zero              # s0 = 00000000
    sw      t1, 0x0004(t2)             # 00000004
    lw      t3, 0x0028($sp)
    bne     t3, $at, lbl_80004048
    nop
    lui     t4, 0x8000                 # t4 = 80000000
    lw      t4, 0x635C(t4)             # 8000635C
    beq     t4, $zero, lbl_8000403C
    nop
    lui     t5, 0x8000                 # t5 = 80000000
    lw      t5, 0x63A0(t5)             # 800063A0
    bne     t5, $zero, lbl_8000403C
    nop
    lw      a0, 0x002C($sp)
    lw      a1, 0x0030($sp)
    jal     func_80001E20              # osSendMesg
    or      a2, $zero, $zero           # a2 = 00000000
lbl_8000403C:
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x8000                # $at = 80000000
    sw      t6, 0x63A0($at)            # 800063A0
lbl_80004048:
    jal     func_800051A0              # __osRestoreInt
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop
    nop
    nop


func_80004070:
    mfc0    t0, EntryHi
    addiu   t1, $zero, 0x001E          # t1 = 0000001E
    lui     t2, 0x8000                 # t2 = 80000000
    mtc0    t2, EntryHi
    mtc0    $zero, EntryLo0
    mtc0    $zero, EntryLo1
lbl_80004088:
    mtc0    t1, Index
    nop
    tlbwi
    nop
    nop
    addi    t1, t1, 0xFFFF             # t1 = 0000001D
    bgez    t1, lbl_80004088
    nop
    mtc0    t0, EntryHi
    jr      $ra
    nop
    nop
    nop
    nop


func_800040C0:
# s32 osEPiStartDma(OSPiHandle* pihandle, OSIoMesg* mb, s32 direction)
# Set up a DMA transfer between RDRAM and the PI device address space
# A0 = OSPiHandle* handle for this PI device
# A1 = OSIoMesg* IO message block request which contains parameters for this transfer
# A2 = s32 direction of the transfer (OS_READ = 0 or OS_WRITE = 1)
# V0 = s32 status (osSendMesg/osJamMesg result) or -1 if the PImgr thread is not started
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    lui     t6, 0x8000                 # t6 = 80000000
    lw      t6, 0x6370(t6)             # 80006370
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      s1, 0x0018($sp)
    bne     t6, $zero, lbl_800040F0
    sw      s0, 0x0014($sp)
    beq     $zero, $zero, lbl_80004180
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_800040F0:
    lw      t7, 0x0028($sp)
    lw      t8, 0x002C($sp)
    sw      t7, 0x0014(t8)             # 00000014
    lw      t9, 0x0030($sp)
    bne     t9, $zero, lbl_80004118
    nop
    lw      t1, 0x002C($sp)
    addiu   t0, $zero, 0x000F          # t0 = 0000000F
    beq     $zero, $zero, lbl_80004124
    sh      t0, 0x0000(t1)             # 00000000
lbl_80004118:
    lw      t3, 0x002C($sp)
    addiu   t2, $zero, 0x0010          # t2 = 00000010
    sh      t2, 0x0000(t3)             # 00000000
lbl_80004124:
    lw      t4, 0x002C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lbu     t5, 0x0002(t4)             # 00000002
    bne     t5, $at, lbl_8000415C
    nop
    jal     func_80005600              # osPiGetCmdQueue
    nop
    or      s1, v0, $zero              # s1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jal     func_80004330              # osJamMesg
    or      a2, $zero, $zero           # a2 = 00000000
    beq     $zero, $zero, lbl_8000417C
    or      s0, v0, $zero              # s0 = 00000000
lbl_8000415C:
    jal     func_80005600              # osPiGetCmdQueue
    nop
    or      s1, v0, $zero              # s1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jal     func_80001E20              # osSendMesg
    or      a2, $zero, $zero           # a2 = 00000000
    or      s0, v0, $zero              # s0 = 00000000
lbl_8000417C:
    or      v0, s0, $zero              # v0 = 00000000
lbl_80004180:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    nop
    nop
    nop


func_800041A0:
# void osInvalICache(void* vaddr, s32 nbytes)
# Invalidates CPU instruction cache lines containing the region [vaddr, vaddr+nbytes-1]
# A0 = CPU virtual address to start invalidating from
# A1 = s32 number of bytes for the region to invalidate (>= 0x4000 will invalidate all instruction cache lines)
    blez    a1, lbl_800041E8
    nop
    addiu   t3, $zero, 0x4000          # t3 = 00004000
    sltu    $at, a1, t3
    beq     $at, $zero, lbl_800041F0
    nop
    or      t0, a0, $zero              # t0 = 00000000
    addu    t1, a0, a1
    sltu    $at, t0, t1
    beq     $at, $zero, lbl_800041E8
    nop
    andi    t2, t0, 0x001F             # t2 = 00000000
    addiu   t1, t1, 0xFFE0             # t1 = FFFFFFE0
    subu    t0, t0, t2
lbl_800041D8:
    cache   0x10, 0x0000(t0)
    sltu    $at, t0, t1
    bne     $at, $zero, lbl_800041D8
    addiu   t0, t0, 0x0020             # t0 = 00000020
lbl_800041E8:
    jr      $ra
    nop
lbl_800041F0:
    lui     t0, 0x8000                 # t0 = 80000000
    addu    t1, t0, t3
    addiu   t1, t1, 0xFFE0             # t1 = FFFFFFC0
lbl_800041FC:
    cache   0x00, 0x0000(t0)
    sltu    $at, t0, t1
    bne     $at, $zero, lbl_800041FC
    addiu   t0, t0, 0x0020             # t0 = 80000020
    jr      $ra
    nop
    nop
    nop
    nop


func_80004220:
# void osCreateMesgQueue(OSMesgQueue* mq, OSMesg* msg, s32 count)
# Initializes a given message queue to an empty state
# A0 = OSMesgQueue* queue to initialize
# A1 = OSMesg* message array to use when storing messages
# A2 = s32 number of messages the queue should be able to hold
    lui     t6, 0x8000                 # t6 = 80000000
    lui     t7, 0x8000                 # t7 = 80000000
    addiu   t6, t6, 0x6330             # t6 = 80006330
    addiu   t7, t7, 0x6330             # t7 = 80006330
    sw      t6, 0x0000(a0)             # 00000000
    sw      t7, 0x0004(a0)             # 00000004
    sw      $zero, 0x0008(a0)          # 00000008
    sw      $zero, 0x000C(a0)          # 0000000C
    sw      a2, 0x0010(a0)             # 00000010
    jr      $ra
    sw      a1, 0x0014(a0)             # 00000014
    nop


func_80004250:
# void osInvalDCache(void* vaddr, s32 nbytes)
# Invalidates CPU data cache lines containing the region [vaddr, vaddr+nbytes-1]
# A0 = CPU virtual address to start invalidating from
# A1 = s32 number of bytes for the region to invalidate (>= 0x2000 will invalidate all data cache lines)
    blez    a1, lbl_800042D0
    nop
    addiu   t3, $zero, 0x2000          # t3 = 00002000
    sltu    $at, a1, t3
    beq     $at, $zero, lbl_800042D8
    nop
    or      t0, a0, $zero              # t0 = 00000000
    addu    t1, a0, a1
    sltu    $at, t0, t1
    beq     $at, $zero, lbl_800042D0
    nop
    andi    t2, t0, 0x000F             # t2 = 00000000
    beq     t2, $zero, lbl_800042A0
    addiu   t1, t1, 0xFFF0             # t1 = FFFFFFF0
    subu    t0, t0, t2
    cache   0x15, 0x0000(t0)
    sltu    $at, t0, t1
    beq     $at, $zero, lbl_800042D0
    nop
    addiu   t0, t0, 0x0010             # t0 = 00000010
lbl_800042A0:
    andi    t2, t1, 0x000F             # t2 = 00000000
    beq     t2, $zero, lbl_800042C0
    nop
    subu    t1, t1, t2
    cache   0x15, 0x0010(t1)
    sltu    $at, t1, t0
    bne     $at, $zero, lbl_800042D0
    nop
lbl_800042C0:
    cache   0x11, 0x0000(t0)
    sltu    $at, t0, t1
    bne     $at, $zero, lbl_800042C0
    addiu   t0, t0, 0x0010             # t0 = 00000020
lbl_800042D0:
    jr      $ra
    nop
lbl_800042D8:
    lui     t0, 0x8000                 # t0 = 80000000
    addu    t1, t0, t3
    addiu   t1, t1, 0xFFF0             # t1 = FFFFFFE0
lbl_800042E4:
    cache   0x01, 0x0000(t0)
    sltu    $at, t0, t1
    bne     $at, $zero, lbl_800042E4
    addiu   t0, t0, 0x0010             # t0 = 80000010
    jr      $ra
    nop
    nop


func_80004300:
    lui     t6, 0xA480                 # t6 = A4800000
    lw      a0, 0x0018(t6)             # A4800018
    addiu   $sp, $sp, 0xFFF8           # $sp -= 0x8
    andi    t7, a0, 0x0003             # t7 = 00000000
    beq     t7, $zero, lbl_80004320
    nop
    beq     $zero, $zero, lbl_80004324
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80004320:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80004324:
    jr      $ra
    addiu   $sp, $sp, 0x0008           # $sp += 0x8
    nop


func_80004330:
# s32 osJamMesg(OSMesgQueue* mq, OSMesg msg, s32 flag)
# Works like osSendMesg (80001E20) except it copies the message to the front of the queue
# Used to deliver high priority messages
# A0 = OSMesgQueue* queue to put the message in
# A1 = OSMesg message to copy
# A2 = s32 flag which indicates the blocking mode, either OS_MESG_BLOCK (1) or OS_MESG_NOBLOCK (0)
# V0 = 0 if a message could be copied, else -1
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      s1, 0x0018($sp)
    jal     func_80005130              # __osDisableInt
    sw      s0, 0x0014($sp)
    lw      t6, 0x0028($sp)
    or      s0, v0, $zero              # s0 = 00000000
    lw      t7, 0x0008(t6)             # 00000008
    lw      t8, 0x0010(t6)             # 00000010
    slt     $at, t7, t8
    bne     $at, $zero, lbl_800043C8
    nop
lbl_8000436C:
    lw      t9, 0x0030($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t9, $at, lbl_800043A0
    nop
    lui     t1, 0x8000                 # t1 = 80000000
    lw      t1, 0x6340(t1)             # 80006340
    addiu   t0, $zero, 0x0008          # t0 = 00000008
    sh      t0, 0x0010(t1)             # 80000010
    lw      a0, 0x0028($sp)
    jal     func_80002A4C
    addiu   a0, a0, 0x0004             # a0 = 00000004
    beq     $zero, $zero, lbl_800043B0
    nop
lbl_800043A0:
    jal     func_800051A0              # __osRestoreInt
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8000446C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_800043B0:
    lw      t2, 0x0028($sp)
    lw      t3, 0x0008(t2)             # 00000008
    lw      t4, 0x0010(t2)             # 00000010
    slt     $at, t3, t4
    beq     $at, $zero, lbl_8000436C
    nop
lbl_800043C8:
    lw      t5, 0x0028($sp)
    lw      t6, 0x000C(t5)             # 0000000C
    lw      t7, 0x0010(t5)             # 00000010
    addu    t8, t6, t7
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    div     $zero, t9, t7
    mfhi    t0
    sw      t0, 0x000C(t5)             # 0000000C
    lw      t2, 0x0028($sp)
    lw      t1, 0x002C($sp)
    bne     t7, $zero, lbl_800043FC
    nop
    break   # 0x01C00
lbl_800043FC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t7, $at, lbl_80004414
    lui     $at, 0x8000                # $at = 80000000
    bne     t9, $at, lbl_80004414
    nop
    break   # 0x01800
lbl_80004414:
    lw      t4, 0x000C(t2)             # 0000000C
    lw      t3, 0x0014(t2)             # 00000014
    sll     t6, t4,  2
    addu    t8, t3, t6
    sw      t1, 0x0000(t8)             # 00000000
    lw      t9, 0x0028($sp)
    lw      t7, 0x0008(t9)             # 00000007
    addiu   t0, t7, 0x0001             # t0 = 00000001
    sw      t0, 0x0008(t9)             # 00000007
    lw      t5, 0x0028($sp)
    lw      t2, 0x0000(t5)             # 00000000
    lw      t4, 0x0000(t2)             # 00000000
    beq     t4, $zero, lbl_80004460
    nop
    jal     func_80002B94
    or      a0, t5, $zero              # a0 = 00000000
    or      s1, v0, $zero              # s1 = 00000000
    jal     func_80005EC0              # osStartThread
    or      a0, s1, $zero              # a0 = 00000000
lbl_80004460:
    jal     func_800051A0              # __osRestoreInt
    or      a0, s0, $zero              # a0 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8000446C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80004480:
# void osSetThreadPri(OSThread* thread, OSPri pri)
# Set the priority of a given thread
# A0 = OSThread* thread, or NULL to default to the invoking thread (currently running)
# A1 = OSPri priority value
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    jal     func_80005130              # __osDisableInt
    sw      s0, 0x0018($sp)
    lw      t6, 0x0028($sp)
    or      s0, v0, $zero              # s0 = 00000000
    bne     t6, $zero, lbl_800044B4
    nop
    lui     t7, 0x8000                 # t7 = 80000000
    lw      t7, 0x6340(t7)             # 80006340
    sw      t7, 0x0028($sp)
lbl_800044B4:
    lw      t8, 0x0028($sp)
    lw      t0, 0x002C($sp)
    lw      t9, 0x0004(t8)             # 00000004
    beq     t9, t0, lbl_80004544
    nop
    sw      t0, 0x0004(t8)             # 00000004
    lui     t2, 0x8000                 # t2 = 80000000
    lw      t2, 0x6340(t2)             # 80006340
    lw      t1, 0x0028($sp)
    beq     t1, t2, lbl_8000450C
    nop
    lhu     t3, 0x0010(t1)             # 00000010
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     t3, $at, lbl_8000450C
    nop
    lw      a0, 0x0008(t1)             # 00000008
    jal     func_80002D30              # __osDequeueThread
    or      a1, t1, $zero              # a1 = 00000000
    lw      t4, 0x0028($sp)
    lw      a0, 0x0008(t4)             # 00000008
    jal     func_80002B4C
    or      a1, t4, $zero              # a1 = 00000000
lbl_8000450C:
    lui     t5, 0x8000                 # t5 = 80000000
    lui     t7, 0x8000                 # t7 = 80000000
    lw      t7, 0x6338(t7)             # 80006338
    lw      t5, 0x6340(t5)             # 80006340
    lw      t9, 0x0004(t7)             # 80000004
    lw      t6, 0x0004(t5)             # 80000004
    slt     $at, t6, t9
    beq     $at, $zero, lbl_80004544
    nop
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    lui     a0, 0x8000                 # a0 = 80000000
    sh      t0, 0x0010(t5)             # 80000010
    jal     func_80002A4C
    addiu   a0, a0, 0x6338             # a0 = 80006338
lbl_80004544:
    jal     func_800051A0              # __osRestoreInt
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80004560:
# OSPri osGetThreadPri(OSThread* thread)
# Get the priority of a given thread
# A0 = OSThread* thread, or NULL to default to the invoking thread (currently running)
# V0 = OSPri priority value
    bne     a0, $zero, lbl_80004570
    nop
    lui     a0, 0x8000                 # a0 = 80000000
    lw      a0, 0x6340(a0)             # 80006340
lbl_80004570:
    jr      $ra
    lw      v0, 0x0004(a0)             # 80000004
    nop
    nop


func_80004580:
    lui     v1, 0xA460                 # v1 = A4600000
    ori     v1, v1, 0x0010             # v1 = A4600010
    lw      v0, 0x0000(v1)             # A4600010
    or      a3, a1, $zero              # a3 = 00000000
    andi    t6, v0, 0x0003             # t6 = 00000000
    beql    t6, $zero, lbl_800045B0
    lbu     v0, 0x0009(a0)             # 00000009
    lw      v0, 0x0000(v1)             # A4600010
lbl_800045A0:
    andi    t7, v0, 0x0003             # t7 = 00000000
    bnel    t7, $zero, lbl_800045A0
    lw      v0, 0x0000(v1)             # A4600010
    lbu     v0, 0x0009(a0)             # 00000009
lbl_800045B0:
    lui     v1, 0x8000                 # v1 = 80000000
    lbu     t9, 0x0004(a0)             # 00000004
    sll     t8, v0,  2
    addu    v1, v1, t8
    lw      v1, 0x6390(v1)             # 80006390
    lbu     t0, 0x0004(v1)             # 80000004
    beql    t9, t0, lbl_800046C0
    lw      t2, 0x000C(a0)             # 0000000C
    bne     v0, $zero, lbl_80004638
    or      a1, v1, $zero              # a1 = 80000000
    lbu     v0, 0x0005(a0)             # 00000005
    lbu     t1, 0x0005(v1)             # 80000005
    lui     t2, 0xA460                 # t2 = A4600000
    lui     t4, 0xA460                 # t4 = A4600000
    beq     v0, t1, lbl_800045F4
    lui     t6, 0xA460                 # t6 = A4600000
    sw      v0, 0x0014(t2)             # A4600014
lbl_800045F4:
    lbu     v0, 0x0006(a0)             # 00000006
    lbu     t3, 0x0006(a1)             # 80000006
    lui     t8, 0xA460                 # t8 = A4600000
    beql    v0, t3, lbl_80004610
    lbu     v0, 0x0007(a0)             # 00000007
    sw      v0, 0x001C(t4)             # A460001C
    lbu     v0, 0x0007(a0)             # 00000007
lbl_80004610:
    lbu     t5, 0x0007(a1)             # 80000007
    beql    v0, t5, lbl_80004624
    lbu     v0, 0x0008(a0)             # 00000008
    sw      v0, 0x0020(t6)             # A4600020
    lbu     v0, 0x0008(a0)             # 00000008
lbl_80004624:
    lbu     t7, 0x0008(a1)             # 80000008
    beql    v0, t7, lbl_80004698
    lbu     t7, 0x0004(a0)             # 00000004
    beq     $zero, $zero, lbl_80004694
    sw      v0, 0x0018(t8)             # A4600018
lbl_80004638:
    lbu     v0, 0x0005(a0)             # 00000005
    lbu     t9, 0x0005(a1)             # 80000005
    lui     t0, 0xA460                 # t0 = A4600000
    lui     t2, 0xA460                 # t2 = A4600000
    beq     v0, t9, lbl_80004654
    lui     t4, 0xA460                 # t4 = A4600000
    sw      v0, 0x0024(t0)             # A4600024
lbl_80004654:
    lbu     v0, 0x0006(a0)             # 00000006
    lbu     t1, 0x0006(a1)             # 80000006
    lui     t6, 0xA460                 # t6 = A4600000
    beql    v0, t1, lbl_80004670
    lbu     v0, 0x0007(a0)             # 00000007
    sw      v0, 0x002C(t2)             # A460002C
    lbu     v0, 0x0007(a0)             # 00000007
lbl_80004670:
    lbu     t3, 0x0007(a1)             # 80000007
    beql    v0, t3, lbl_80004684
    lbu     v0, 0x0008(a0)             # 00000008
    sw      v0, 0x0030(t4)             # A4600030
    lbu     v0, 0x0008(a0)             # 00000008
lbl_80004684:
    lbu     t5, 0x0008(a1)             # 80000008
    beql    v0, t5, lbl_80004698
    lbu     t7, 0x0004(a0)             # 00000004
    sw      v0, 0x0028(t6)             # A4600028
lbl_80004694:
    lbu     t7, 0x0004(a0)             # 00000004
lbl_80004698:
    sb      t7, 0x0004(a1)             # 80000004
    lbu     t8, 0x0005(a0)             # 00000005
    sb      t8, 0x0005(a1)             # 80000005
    lbu     t9, 0x0006(a0)             # 00000006
    sb      t9, 0x0006(a1)             # 80000006
    lbu     t0, 0x0007(a0)             # 00000007
    sb      t0, 0x0007(a1)             # 80000007
    lbu     t1, 0x0008(a0)             # 00000008
    sb      t1, 0x0008(a1)             # 80000008
    lw      t2, 0x000C(a0)             # 0000000C
lbl_800046C0:
    lui     $at, 0xA000                # $at = A0000000
    or      v0, $zero, $zero           # v0 = 00000000
    or      t3, t2, a3                 # t3 = A4600000
    or      t4, t3, $at                # t4 = A4600000
    lw      t5, 0x0000(t4)             # A4600000
    jr      $ra
    sw      t5, 0x0000(a2)             # 00000000
    nop


func_800046E0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    lui     v1, 0xA460                 # v1 = A4600000
    ori     v1, v1, 0x0010             # v1 = A4600010
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a2, 0x0028($sp)
    lw      v0, 0x0000(v1)             # A4600010
    or      s0, a0, $zero              # s0 = 00000000
    andi    t6, v0, 0x0003             # t6 = 00000000
    beql    t6, $zero, lbl_80004720
    lbu     v0, 0x0009(s0)             # 00000009
    lw      v0, 0x0000(v1)             # A4600010
lbl_80004710:
    andi    t7, v0, 0x0003             # t7 = 00000000
    bnel    t7, $zero, lbl_80004710
    lw      v0, 0x0000(v1)             # A4600010
    lbu     v0, 0x0009(s0)             # 00000009
lbl_80004720:
    lui     a0, 0x8000                 # a0 = 80000000
    lbu     t9, 0x0004(s0)             # 00000004
    sll     t8, v0,  2
    addu    a0, a0, t8
    lw      a0, 0x6390(a0)             # 80006390
    lbu     t0, 0x0004(a0)             # 80000004
    beql    t9, t0, lbl_80004830
    or      a0, a3, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_800047A8
    or      v1, a0, $zero              # v1 = 00000000
    lbu     v0, 0x0005(s0)             # 00000005
    lbu     t1, 0x0005(a0)             # 00000005
    lui     t2, 0xA460                 # t2 = A4600000
    lui     t4, 0xA460                 # t4 = A4600000
    beq     v0, t1, lbl_80004764
    lui     t6, 0xA460                 # t6 = A4600000
    sw      v0, 0x0014(t2)             # A4600014
lbl_80004764:
    lbu     v0, 0x0006(s0)             # 00000006
    lbu     t3, 0x0006(v1)             # 00000006
    lui     t8, 0xA460                 # t8 = A4600000
    beql    v0, t3, lbl_80004780
    lbu     v0, 0x0007(s0)             # 00000007
    sw      v0, 0x001C(t4)             # A460001C
    lbu     v0, 0x0007(s0)             # 00000007
lbl_80004780:
    lbu     t5, 0x0007(v1)             # 00000007
    beql    v0, t5, lbl_80004794
    lbu     v0, 0x0008(s0)             # 00000008
    sw      v0, 0x0020(t6)             # A4600020
    lbu     v0, 0x0008(s0)             # 00000008
lbl_80004794:
    lbu     t7, 0x0008(v1)             # 00000008
    beql    v0, t7, lbl_80004808
    lbu     t7, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_80004804
    sw      v0, 0x0018(t8)             # A4600018
lbl_800047A8:
    lbu     v0, 0x0005(s0)             # 00000005
    lbu     t9, 0x0005(v1)             # 00000005
    lui     t0, 0xA460                 # t0 = A4600000
    lui     t2, 0xA460                 # t2 = A4600000
    beq     v0, t9, lbl_800047C4
    lui     t4, 0xA460                 # t4 = A4600000
    sw      v0, 0x0024(t0)             # A4600024
lbl_800047C4:
    lbu     v0, 0x0006(s0)             # 00000006
    lbu     t1, 0x0006(v1)             # 00000006
    lui     t6, 0xA460                 # t6 = A4600000
    beql    v0, t1, lbl_800047E0
    lbu     v0, 0x0007(s0)             # 00000007
    sw      v0, 0x002C(t2)             # A460002C
    lbu     v0, 0x0007(s0)             # 00000007
lbl_800047E0:
    lbu     t3, 0x0007(v1)             # 00000007
    beql    v0, t3, lbl_800047F4
    lbu     v0, 0x0008(s0)             # 00000008
    sw      v0, 0x0030(t4)             # A4600030
    lbu     v0, 0x0008(s0)             # 00000008
lbl_800047F4:
    lbu     t5, 0x0008(v1)             # 00000008
    beql    v0, t5, lbl_80004808
    lbu     t7, 0x0004(s0)             # 00000004
    sw      v0, 0x0028(t6)             # A4600028
lbl_80004804:
    lbu     t7, 0x0004(s0)             # 00000004
lbl_80004808:
    sb      t7, 0x0004(v1)             # 00000004
    lbu     t8, 0x0005(s0)             # 00000005
    sb      t8, 0x0005(v1)             # 00000005
    lbu     t9, 0x0006(s0)             # 00000006
    sb      t9, 0x0006(v1)             # 00000006
    lbu     t0, 0x0007(s0)             # 00000007
    sb      t0, 0x0007(v1)             # 00000007
    lbu     t1, 0x0008(s0)             # 00000008
    sb      t1, 0x0008(v1)             # 00000008
    or      a0, a3, $zero              # a0 = 00000000
lbl_80004830:
    jal     func_80003B60              # osVirtualToPhysical
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    lui     t2, 0xA460                 # t2 = A4600000
    sw      v0, 0x0000(t2)             # A4600000
    lw      t4, 0x0028($sp)
    lw      t3, 0x000C(s0)             # 0000000C
    lui     $at, 0x1FFF                # $at = 1FFF0000
    ori     $at, $at, 0xFFFF           # $at = 1FFFFFFF
    or      t5, t3, t4                 # t5 = 00000000
    and     t6, t5, $at
    lui     t7, 0xA460                 # t7 = A4600000
    beq     a1, $zero, lbl_8000487C
    sw      t6, 0x0004(t7)             # A4600004
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     a1, $at, lbl_80004890
    lw      t1, 0x0030($sp)
    beq     $zero, $zero, lbl_800048AC
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8000487C:
    lw      t8, 0x0030($sp)
    lui     t0, 0xA460                 # t0 = A4600000
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    beq     $zero, $zero, lbl_800048A8
    sw      t9, 0x000C(t0)             # A460000C
lbl_80004890:
    addiu   t2, t1, 0xFFFF             # t2 = FFFFFFFF
    lui     t3, 0xA460                 # t3 = A4600000
    beq     $zero, $zero, lbl_800048A8
    sw      t2, 0x0008(t3)             # A4600008
    beq     $zero, $zero, lbl_800048AC
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_800048A8:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800048AC:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800048C0:
# OSTime osGetTime(void)
# Get the real time counter value (expressed in units of CPU count register cycles)
# V0/V1 = OSTime current time value
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x001C($sp)
    jal     func_80005130              # __osDisableInt
    sw      s0, 0x0018($sp)
    jal     func_80004D50              # osGetCount
    or      s0, v0, $zero              # s0 = 00000000
    sw      v0, 0x0034($sp)
    lui     t7, 0x8001                 # t7 = 80010000
    lw      t7, -0x6178(t7)            # 80009E88
    lw      t6, 0x0034($sp)
    lui     t0, 0x8001                 # t0 = 80010000
    lui     t1, 0x8001                 # t1 = 80010000
    lw      t1, -0x617C(t1)            # 80009E84
    lw      t0, -0x6180(t0)            # 80009E80
    subu    t8, t6, t7
    sw      t8, 0x0030($sp)
    or      a0, s0, $zero              # a0 = 00000000
    sw      t1, 0x002C($sp)
    jal     func_800051A0              # __osRestoreInt
    sw      t0, 0x0028($sp)
    lw      t9, 0x0030($sp)
    lw      t5, 0x002C($sp)
    lw      $ra, 0x001C($sp)
    or      t3, t9, $zero              # t3 = 00000000
    addu    v1, t3, t5
    lw      t4, 0x0028($sp)
    addiu   t2, $zero, 0x0000          # t2 = 00000000
    sltu    $at, v1, t5
    addu    v0, $at, t2
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    addu    v0, v0, t4
    nop
    nop
    nop


func_80004950:
    lui     $at, 0x8001                # $at = 80010000
    addiu   t6, $zero, 0x0000          # t6 = 00000000
    addiu   t7, $zero, 0x0000          # t7 = 00000000
    sw      t7, -0x617C($at)           # 80009E84
    sw      t6, -0x6180($at)           # 80009E80
    lui     $at, 0x8001                # $at = 80010000
    lui     t8, 0x8000                 # t8 = 80000000
    lw      t8, 0x63B0(t8)             # 800063B0
    sw      $zero, -0x6178($at)        # 80009E88
    lui     $at, 0x8001                # $at = 80010000
    sw      $zero, -0x6174($at)        # 80009E8C
    lui     t9, 0x8000                 # t9 = 80000000
    sw      t8, 0x0004(t8)             # 80000004
    lw      t9, 0x63B0(t9)             # 800063B0
    lui     t1, 0x8000                 # t1 = 80000000
    addiu   t2, $zero, 0x0000          # t2 = 00000000
    lw      t0, 0x0004(t9)             # 80000004
    addiu   t3, $zero, 0x0000          # t3 = 00000000
    lui     t4, 0x8000                 # t4 = 80000000
    sw      t0, 0x0000(t9)             # 80000000
    lw      t1, 0x63B0(t1)             # 800063B0
    lui     t5, 0x8000                 # t5 = 80000000
    lui     t8, 0x8000                 # t8 = 80000000
    sw      t2, 0x0010(t1)             # 80000010
    sw      t3, 0x0014(t1)             # 80000014
    lw      t4, 0x63B0(t4)             # 800063B0
    lw      t6, 0x0010(t4)             # 80000010
    lw      t7, 0x0014(t4)             # 80000014
    sw      t6, 0x0008(t4)             # 80000008
    sw      t7, 0x000C(t4)             # 8000000C
    lw      t5, 0x63B0(t5)             # 800063B0
    sw      $zero, 0x0018(t5)          # 80000018
    lw      t8, 0x63B0(t8)             # 800063B0
    jr      $ra
    sw      $zero, 0x001C(t8)          # 8000001C


func_800049DC:
    lui     t6, 0x8000                 # t6 = 80000000
    lw      t6, 0x63B0(t6)             # 800063B0
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    lw      t7, 0x0000(t6)             # 80000000
    beq     t7, t6, lbl_80004B44
    nop
lbl_800049F8:
    lui     t8, 0x8000                 # t8 = 80000000
    lw      t8, 0x63B0(t8)             # 800063B0
    lw      t9, 0x0000(t8)             # 80000000
    bne     t9, t8, lbl_80004A20
    sw      t9, 0x0024($sp)
    jal     func_80004DB0              # __osSetCompare
    or      a0, $zero, $zero           # a0 = 00000000
    lui     $at, 0x8001                # $at = 80010000
    beq     $zero, $zero, lbl_80004B44
    sw      $zero, -0x6170($at)        # 80009E90
lbl_80004A20:
    jal     func_80004D50              # osGetCount
    nop
    sw      v0, 0x0020($sp)
    lui     t1, 0x8001                 # t1 = 80010000
    lw      t1, -0x6170(t1)            # 80009E90
    lw      t0, 0x0020($sp)
    lw      t7, 0x0024($sp)
    lui     $at, 0x8001                # $at = 80010000
    subu    t2, t0, t1
    sw      t2, 0x001C($sp)
    sw      t0, -0x6170($at)           # 80009E90
    lw      t6, 0x0010(t7)             # 00000010
    lw      t3, 0x001C($sp)
    addiu   t4, $zero, 0x0000          # t4 = 00000000
    or      t9, t7, $zero              # t9 = 00000000
    sltu    $at, t6, t4
    lw      t7, 0x0014(t7)             # 00000014
    bne     $at, $zero, lbl_80004AC0
    or      t5, t3, $zero              # t5 = 00000000
    sltu    $at, t4, t6
    bne     $at, $zero, lbl_80004A80
    sltu    $at, t5, t7
    beq     $at, $zero, lbl_80004AC0
    nop
lbl_80004A80:
    addiu   t8, t9, 0x0010             # t8 = 00000010
    sw      t8, 0x0018($sp)
    lw      t3, 0x0014(t9)             # 00000014
    lw      t2, 0x0010(t9)             # 00000010
    sltu    $at, t3, t5
    subu    t0, t2, t4
    subu    t0, t0, $at
    subu    t1, t3, t5
    sw      t1, 0x0014(t9)             # 00000014
    sw      t0, 0x0010(t9)             # 00000010
    lw      t6, 0x0024($sp)
    lw      a0, 0x0010(t6)             # 00000010
    jal     func_80004B54
    lw      a1, 0x0014(t6)             # 00000014
    beq     $zero, $zero, lbl_80004B44
    nop
lbl_80004AC0:
    lw      t7, 0x0024($sp)
    lw      t8, 0x0000(t7)             # 00000000
    lw      t2, 0x0004(t7)             # 00000004
    sw      t8, 0x0000(t2)             # 00000000
    lw      t3, 0x0024($sp)
    lw      t4, 0x0004(t3)             # 00000004
    lw      t5, 0x0000(t3)             # 00000000
    sw      t4, 0x0004(t5)             # 00000004
    lw      t0, 0x0024($sp)
    sw      $zero, 0x0000(t0)          # 00000000
    lw      t1, 0x0024($sp)
    sw      $zero, 0x0004(t1)          # 00000004
    lw      t9, 0x0024($sp)
    lw      t6, 0x0018(t9)             # 00000018
    beq     t6, $zero, lbl_80004B10
    nop
    or      a0, t6, $zero              # a0 = 00000000
    lw      a1, 0x001C(t9)             # 0000001C
    jal     func_80001E20              # osSendMesg
    or      a2, $zero, $zero           # a2 = 00000000
lbl_80004B10:
    lw      t7, 0x0024($sp)
    lw      t8, 0x0008(t7)             # 00000008
    lw      t9, 0x000C(t7)             # 0000000C
    bne     t8, $zero, lbl_80004B2C
    nop
    beq     t9, $zero, lbl_800049F8
    nop
lbl_80004B2C:
    sw      t8, 0x0010(t7)             # 00000010
    sw      t9, 0x0014(t7)             # 00000014
    jal     func_80004BC8
    lw      a0, 0x0024($sp)
    beq     $zero, $zero, lbl_800049F8
    nop
lbl_80004B44:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80004B54:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    jal     func_80005130              # __osDisableInt
    sw      a1, 0x002C($sp)
    jal     func_80004D50              # osGetCount
    sw      v0, 0x001C($sp)
    lui     $at, 0x8001                # $at = 80010000
    sw      v0, -0x6170($at)           # 80009E90
    lui     t6, 0x8001                 # t6 = 80010000
    lw      t6, -0x6170(t6)            # 80009E90
    lw      t1, 0x002C($sp)
    lw      t0, 0x0028($sp)
    or      t9, t6, $zero              # t9 = 80010000
    addu    t3, t9, t1
    addiu   t8, $zero, 0x0000          # t8 = 00000000
    sltu    $at, t3, t1
    addu    t2, $at, t8
    addu    t2, t2, t0
    sw      t2, 0x0020($sp)
    sw      t3, 0x0024($sp)
    jal     func_80004DB0              # __osSetCompare
    or      a0, t3, $zero              # a0 = 00000000
    jal     func_800051A0              # __osRestoreInt
    lw      a0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80004BC8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    jal     func_80005130              # __osDisableInt
    sw      a0, 0x0038($sp)
    lui     t6, 0x8000                 # t6 = 80000000
    lw      t6, 0x63B0(t6)             # 800063B0
    sw      v0, 0x0024($sp)
    lw      t8, 0x0038($sp)
    lw      t7, 0x0000(t6)             # 80000000
    sw      t7, 0x0034($sp)
    lw      t1, 0x0014(t8)             # 00000014
    lw      t0, 0x0010(t8)             # 00000010
    sw      t1, 0x002C($sp)
    beq     t7, t6, lbl_80004CA4
    sw      t0, 0x0028($sp)
    lw      t2, 0x0010(t7)             # 00000010
    lw      t3, 0x0014(t7)             # 00000014
    sltu    $at, t0, t2
    bne     $at, $zero, lbl_80004CA4
    sltu    $at, t2, t0
    bne     $at, $zero, lbl_80004C28
    sltu    $at, t3, t1
    beq     $at, $zero, lbl_80004CA4
    nop
lbl_80004C28:
    addiu   t9, $sp, 0x0028            # t9 = FFFFFFF0
    lw      t8, 0x0034($sp)
    sw      t9, 0x0020($sp)
    lw      t5, 0x0004(t9)             # FFFFFFF4
    lw      t4, 0x0000(t9)             # FFFFFFF0
    lw      t7, 0x0014(t8)             # 00000014
    lw      t6, 0x0010(t8)             # 00000010
    lui     t8, 0x8000                 # t8 = 80000000
    sltu    $at, t5, t7
    subu    t0, t4, t6
    subu    t0, t0, $at
    subu    t1, t5, t7
    sw      t1, 0x0004(t9)             # FFFFFFF4
    sw      t0, 0x0000(t9)             # FFFFFFF0
    lw      t2, 0x0034($sp)
    lw      t8, 0x63B0(t8)             # 800063B0
    lw      t3, 0x0000(t2)             # 00000000
    beq     t3, t8, lbl_80004CA4
    sw      t3, 0x0034($sp)
    lw      t4, 0x0028($sp)
    lw      t6, 0x0010(t3)             # 00000010
    lw      t5, 0x002C($sp)
    lw      t7, 0x0014(t3)             # 00000014
    sltu    $at, t6, t4
    bne     $at, $zero, lbl_80004C28
    nop
    sltu    $at, t4, t6
    bne     $at, $zero, lbl_80004CA4
    sltu    $at, t7, t5
    bne     $at, $zero, lbl_80004C28
    nop
lbl_80004CA4:
    lw      t9, 0x0038($sp)
    lw      t0, 0x0028($sp)
    lw      t1, 0x002C($sp)
    lui     t8, 0x8000                 # t8 = 80000000
    sw      t0, 0x0010(t9)             # 00000000
    sw      t1, 0x0014(t9)             # 00000004
    lw      t8, 0x63B0(t8)             # 800063B0
    lw      t2, 0x0034($sp)
    beq     t2, t8, lbl_80004CFC
    nop
    addiu   t3, t2, 0x0010             # t3 = 00000010
    sw      t3, 0x001C($sp)
    lw      t5, 0x0014(t2)             # 00000014
    lw      t4, 0x0010(t2)             # 00000010
    lw      t6, 0x0028($sp)
    lw      t7, 0x002C($sp)
    subu    t0, t4, t6
    sltu    $at, t5, t7
    subu    t0, t0, $at
    subu    t1, t5, t7
    sw      t1, 0x0014(t2)             # 00000014
    sw      t0, 0x0010(t2)             # 00000010
lbl_80004CFC:
    lw      t9, 0x0034($sp)
    lw      t8, 0x0038($sp)
    sw      t9, 0x0000(t8)             # 80000000
    lw      t3, 0x0034($sp)
    lw      t5, 0x0038($sp)
    lw      t4, 0x0004(t3)             # 00000014
    sw      t4, 0x0004(t5)             # 00000004
    lw      t7, 0x0034($sp)
    lw      t6, 0x0038($sp)
    lw      t0, 0x0004(t7)             # 00000004
    sw      t6, 0x0000(t0)             # 00000000
    lw      t2, 0x0034($sp)
    lw      t1, 0x0038($sp)
    sw      t1, 0x0004(t2)             # 00000004
    jal     func_800051A0              # __osRestoreInt
    lw      a0, 0x0024($sp)
    lw      $ra, 0x0014($sp)
    lw      v0, 0x0028($sp)
    lw      v1, 0x002C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80004D50:
# u32 osGetCount(void)
# Get the value of the R4300 Count register
# V0 = u32 current value
    mfc0    v0, Count
    jr      $ra
    nop
    nop


func_80004D60:
# __osSetGlobalIntMask
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    jal     func_80005130              # __osDisableInt
    sw      s0, 0x0018($sp)
    lui     t6, 0x8000                 # t6 = 80000000
    lw      t6, 0x6360(t6)             # 80006360
    lw      t7, 0x0028($sp)
    or      s0, v0, $zero              # s0 = 00000000
    lui     $at, 0x8000                # $at = 80000000
    or      t8, t6, t7                 # t8 = 80000000
    sw      t8, 0x6360($at)            # 80006360
    jal     func_800051A0              # __osRestoreInt
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop


func_80004DB0:
# void __osSetCompare(u32 value)
# Set the value of the R4300 Compare register
# A0 = u32 new value
    mtc0    a0, Compare
    jr      $ra
    nop
    nop


func_80004DC0:
# void bcopy(const void* src, void* dest, u32 size)
# Copy a block of memory
# A0 = Pointer to the start of the block to copy
# A1 = Pointer to where the block should be written
# A2 = u32 block size
    beq     a2, $zero, lbl_80004E2C
    or      a3, a1, $zero              # a3 = 00000000
    beq     a0, a1, lbl_80004E2C
    slt     $at, a1, a0
    bnel    $at, $zero, lbl_80004DF4
    slti    $at, a2, 0x0010
    add     v0, a0, a2
    slt     $at, a1, v0
    beql    $at, $zero, lbl_80004DF4
    slti    $at, a2, 0x0010
    beq     $zero, $zero, lbl_80004F58
    slti    $at, a2, 0x0010
    slti    $at, a2, 0x0010
lbl_80004DF4:
    bne     $at, $zero, lbl_80004E0C
    nop
    andi    v0, a0, 0x0003             # v0 = 00000000
    andi    v1, a1, 0x0003             # v1 = 00000000
    beq     v0, v1, lbl_80004E34
    nop
lbl_80004E0C:
    beq     a2, $zero, lbl_80004E2C
    nop
    addu    v1, a0, a2
lbl_80004E18:
    lb      v0, 0x0000(a0)             # 00000000
    addiu   a0, a0, 0x0001             # a0 = 00000001
    addiu   a1, a1, 0x0001             # a1 = 00000001
    bne     a0, v1, lbl_80004E18
    sb      v0, -0x0001(a1)            # 00000000
lbl_80004E2C:
    jr      $ra
    or      v0, a3, $zero              # v0 = 00000000
lbl_80004E34:
    beq     v0, $zero, lbl_80004E98
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80004E7C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $at, lbl_80004E68
    lh      v0, 0x0000(a0)             # 00000001
    lb      v0, 0x0000(a0)             # 00000001
    addiu   a0, a0, 0x0001             # a0 = 00000002
    addiu   a1, a1, 0x0001             # a1 = 00000002
    addiu   a2, a2, 0xFFFF             # a2 = FFFFFFFF
    beq     $zero, $zero, lbl_80004E98
    sb      v0, -0x0001(a1)            # 00000001
    lh      v0, 0x0000(a0)             # 00000002
lbl_80004E68:
    addiu   a0, a0, 0x0002             # a0 = 00000004
    addiu   a1, a1, 0x0002             # a1 = 00000004
    addiu   a2, a2, 0xFFFE             # a2 = FFFFFFFD
    beq     $zero, $zero, lbl_80004E98
    sh      v0, -0x0002(a1)            # 00000002
lbl_80004E7C:
    lb      v0, 0x0000(a0)             # 00000004
    lh      v1, 0x0001(a0)             # 00000005
    addiu   a0, a0, 0x0003             # a0 = 00000007
    addiu   a1, a1, 0x0003             # a1 = 00000007
    addiu   a2, a2, 0xFFFD             # a2 = FFFFFFFA
    sb      v0, -0x0003(a1)            # 00000004
    sh      v1, -0x0002(a1)            # 00000005
lbl_80004E98:
    slti    $at, a2, 0x0020
    bnel    $at, $zero, lbl_80004EF8
    slti    $at, a2, 0x0010
    lw      v0, 0x0000(a0)             # 00000007
    lw      v1, 0x0004(a0)             # 0000000B
    lw      t0, 0x0008(a0)             # 0000000F
    lw      t1, 0x000C(a0)             # 00000013
    lw      t2, 0x0010(a0)             # 00000017
    lw      t3, 0x0014(a0)             # 0000001B
    lw      t4, 0x0018(a0)             # 0000001F
    lw      t5, 0x001C(a0)             # 00000023
    addiu   a0, a0, 0x0020             # a0 = 00000027
    addiu   a1, a1, 0x0020             # a1 = 00000027
    addiu   a2, a2, 0xFFE0             # a2 = FFFFFFDA
    sw      v0, -0x0020(a1)            # 00000007
    sw      v1, -0x001C(a1)            # 0000000B
    sw      t0, -0x0018(a1)            # 0000000F
    sw      t1, -0x0014(a1)            # 00000013
    sw      t2, -0x0010(a1)            # 00000017
    sw      t3, -0x000C(a1)            # 0000001B
    sw      t4, -0x0008(a1)            # 0000001F
    beq     $zero, $zero, lbl_80004E98
    sw      t5, -0x0004(a1)            # 00000023
lbl_80004EF4:
    slti    $at, a2, 0x0010
lbl_80004EF8:
    bnel    $at, $zero, lbl_80004F34
    slti    $at, a2, 0x0004
    lw      v0, 0x0000(a0)             # 00000027
    lw      v1, 0x0004(a0)             # 0000002B
    lw      t0, 0x0008(a0)             # 0000002F
    lw      t1, 0x000C(a0)             # 00000033
    addiu   a0, a0, 0x0010             # a0 = 00000037
    addiu   a1, a1, 0x0010             # a1 = 00000037
    addiu   a2, a2, 0xFFF0             # a2 = FFFFFFCA
    sw      v0, -0x0010(a1)            # 00000027
    sw      v1, -0x000C(a1)            # 0000002B
    sw      t0, -0x0008(a1)            # 0000002F
    beq     $zero, $zero, lbl_80004EF4
    sw      t1, -0x0004(a1)            # 00000033
lbl_80004F30:
    slti    $at, a2, 0x0004
lbl_80004F34:
    bne     $at, $zero, lbl_80004E0C
    nop
    lw      v0, 0x0000(a0)             # 00000037
    addiu   a0, a0, 0x0004             # a0 = 0000003B
    addiu   a1, a1, 0x0004             # a1 = 0000003B
    addiu   a2, a2, 0xFFFC             # a2 = FFFFFFC6
    beq     $zero, $zero, lbl_80004F30
    sw      v0, -0x0004(a1)            # 00000037
    slti    $at, a2, 0x0010
lbl_80004F58:
    add     a0, a0, a2
    bne     $at, $zero, lbl_80004F74
    add     a1, a1, a2
    andi    v0, a0, 0x0003             # v0 = 00000003
    andi    v1, a1, 0x0003             # v1 = 00000003
    beq     v0, v1, lbl_80004FA4
    nop
lbl_80004F74:
    beq     a2, $zero, lbl_80004E2C
    nop
    addiu   a0, a0, 0xFFFF             # a0 = 0000003A
    addiu   a1, a1, 0xFFFF             # a1 = 0000003A
    subu    v1, a0, a2
lbl_80004F88:
    lb      v0, 0x0000(a0)             # 0000003A
    addiu   a0, a0, 0xFFFF             # a0 = 00000039
    addiu   a1, a1, 0xFFFF             # a1 = 00000039
    bne     a0, v1, lbl_80004F88
    sb      v0, 0x0001(a1)             # 0000003A
    jr      $ra
    or      v0, a3, $zero              # v0 = 00000000
lbl_80004FA4:
    beq     v0, $zero, lbl_80005008
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80004FEC
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $at, lbl_80004FD8
    lh      v0, -0x0002(a0)            # 00000037
    lb      v0, -0x0001(a0)            # 00000038
    addiu   a0, a0, 0xFFFF             # a0 = 00000038
    addiu   a1, a1, 0xFFFF             # a1 = 00000038
    addiu   a2, a2, 0xFFFF             # a2 = FFFFFFC5
    beq     $zero, $zero, lbl_80005008
    sb      v0, 0x0000(a1)             # 00000038
    lh      v0, -0x0002(a0)            # 00000036
lbl_80004FD8:
    addiu   a0, a0, 0xFFFE             # a0 = 00000036
    addiu   a1, a1, 0xFFFE             # a1 = 00000036
    addiu   a2, a2, 0xFFFE             # a2 = FFFFFFC3
    beq     $zero, $zero, lbl_80005008
    sh      v0, 0x0000(a1)             # 00000036
lbl_80004FEC:
    lb      v0, -0x0001(a0)            # 00000035
    lh      v1, -0x0003(a0)            # 00000033
    addiu   a0, a0, 0xFFFD             # a0 = 00000033
    addiu   a1, a1, 0xFFFD             # a1 = 00000033
    addiu   a2, a2, 0xFFFD             # a2 = FFFFFFC0
    sb      v0, 0x0002(a1)             # 00000035
    sh      v1, 0x0000(a1)             # 00000033
lbl_80005008:
    slti    $at, a2, 0x0020
    bnel    $at, $zero, lbl_80005068
    slti    $at, a2, 0x0010
    lw      v0, -0x0004(a0)            # 0000002F
    lw      v1, -0x0008(a0)            # 0000002B
    lw      t0, -0x000C(a0)            # 00000027
    lw      t1, -0x0010(a0)            # 00000023
    lw      t2, -0x0014(a0)            # 0000001F
    lw      t3, -0x0018(a0)            # 0000001B
    lw      t4, -0x001C(a0)            # 00000017
    lw      t5, -0x0020(a0)            # 00000013
    addiu   a0, a0, 0xFFE0             # a0 = 00000013
    addiu   a1, a1, 0xFFE0             # a1 = 00000013
    addiu   a2, a2, 0xFFE0             # a2 = FFFFFFA0
    sw      v0, 0x001C(a1)             # 0000002F
    sw      v1, 0x0018(a1)             # 0000002B
    sw      t0, 0x0014(a1)             # 00000027
    sw      t1, 0x0010(a1)             # 00000023
    sw      t2, 0x000C(a1)             # 0000001F
    sw      t3, 0x0008(a1)             # 0000001B
    sw      t4, 0x0004(a1)             # 00000017
    beq     $zero, $zero, lbl_80005008
    sw      t5, 0x0000(a1)             # 00000013
lbl_80005064:
    slti    $at, a2, 0x0010
lbl_80005068:
    bnel    $at, $zero, lbl_800050A4
    slti    $at, a2, 0x0004
    lw      v0, -0x0004(a0)            # 0000000F
    lw      v1, -0x0008(a0)            # 0000000B
    lw      t0, -0x000C(a0)            # 00000007
    lw      t1, -0x0010(a0)            # 00000003
    addiu   a0, a0, 0xFFF0             # a0 = 00000003
    addiu   a1, a1, 0xFFF0             # a1 = 00000003
    addiu   a2, a2, 0xFFF0             # a2 = FFFFFF90
    sw      v0, 0x000C(a1)             # 0000000F
    sw      v1, 0x0008(a1)             # 0000000B
    sw      t0, 0x0004(a1)             # 00000007
    beq     $zero, $zero, lbl_80005064
    sw      t1, 0x0000(a1)             # 00000003
lbl_800050A0:
    slti    $at, a2, 0x0004
lbl_800050A4:
    bne     $at, $zero, lbl_80004F74
    nop
    lw      v0, -0x0004(a0)            # FFFFFFFF
    addiu   a0, a0, 0xFFFC             # a0 = FFFFFFFF
    addiu   a1, a1, 0xFFFC             # a1 = FFFFFFFF
    addiu   a2, a2, 0xFFFC             # a2 = FFFFFF8C
    beq     $zero, $zero, lbl_800050A0
    sw      v0, 0x0000(a1)             # FFFFFFFF
    nop
    nop
    nop


func_800050D0:
# __osResetGlobalIntMask
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    jal     func_80005130              # __osDisableInt
    sw      s0, 0x0018($sp)
    lw      t7, 0x0028($sp)
    lui     t6, 0x8000                 # t6 = 80000000
    lw      t6, 0x6360(t6)             # 80006360
    addiu   $at, $zero, 0xFBFE         # $at = FFFFFBFE
    and     t8, t7, $at
    nor     t9, t8, $zero
    or      s0, v0, $zero              # s0 = 00000000
    lui     $at, 0x8000                # $at = 80000000
    and     t0, t6, t9
    sw      t0, 0x6360($at)            # 80006360
    jal     func_800051A0              # __osRestoreInt
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop
    nop


func_80005130:
# __osDisableInt
# enter kernel mode? or disable all interrupts?
    lui     t2, 0x8000                 # t2 = 80000000
    addiu   t2, t2, 0x6360             # t2 = 80006360
    lw      t3, 0x0000(t2)             # 80006360
    andi    t3, t3, 0xFF00             # t3 = 00000000
    mfc0    t0, Status
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t1, t0, $at
    mtc0    t1, Status
    andi    v0, t0, 0x0001             # v0 = 00000000
    lw      t0, 0x0000(t2)             # 80006360
    andi    t0, t0, 0xFF00             # t0 = 00000000
    beq     t0, t3, lbl_80005198
    lui     t2, 0x8000                 # t2 = 80000000
    addiu   t2, t2, 0x6340             # t2 = 80006340
    lw      t1, 0x0118(t2)             # 80006458
    andi    t2, t1, 0xFF00             # t2 = 00000000
    and     t2, t2, t0
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x00FF           # $at = FFFF00FF
    and     t1, t1, $at
    or      t1, t1, t2                 # t1 = 00000000
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t1, t1, $at
    mtc0    t1, Status
    nop
    nop
lbl_80005198:
    jr      $ra
    nop


func_800051A0:
# __osRestoreInt
# exit kernel mode? or re-enable interrupts?
    mfc0    t0, Status
    or      t0, t0, a0                 # t0 = 00000000
    mtc0    t0, Status
    nop
    nop
    jr      $ra
    nop
    nop


func_800051C0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x8000                 # a0 = 80000000
    addiu   a0, a0, 0x6460             # a0 = 80006460
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0060          # a1 = 00000060
    lui     t6, 0x8000                 # t6 = 80000000
    addiu   t6, t6, 0x6460             # t6 = 80006460
    lui     $at, 0x8000                # $at = 80000000
    sw      t6, 0x64C0($at)            # 800064C0
    lui     $at, 0x8000                # $at = 80000000
    addiu   t7, t6, 0x0030             # t7 = 80006490
    sw      t7, 0x64C4($at)            # 800064C4
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sh      t8, 0x0032(t6)             # 80006492
    lui     t0, 0x8000                 # t0 = 80000000
    lw      t0, 0x64C0(t0)             # 800064C0
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     t2, 0x8000                 # t2 = 80000000
    sh      t9, 0x0002(t0)             # 80000002
    lw      t2, 0x64C4(t2)             # 800064C4
    lui     t1, 0x8000                 # t1 = 80000000
    lui     t4, 0x8000                 # t4 = 80000000
    sw      t1, 0x0004(t2)             # 80000004
    lw      t4, 0x64C0(t4)             # 800064C0
    lui     t3, 0x8000                 # t3 = 80000000
    lui     t5, 0x8000                 # t5 = 80000000
    sw      t3, 0x0004(t4)             # 80000004
    lw      t5, 0x0300(t5)             # 80000300
    bne     t5, $zero, lbl_80005254
    nop
    lui     t8, 0x8000                 # t8 = 80000000
    lw      t8, 0x64C4(t8)             # 800064C4
    lui     t7, 0x8000                 # t7 = 80000000
    addiu   t7, t7, 0x64D0             # t7 = 800064D0
    beq     $zero, $zero, lbl_80005294
    sw      t7, 0x0008(t8)             # 80000008
lbl_80005254:
    lui     t6, 0x8000                 # t6 = 80000000
    lw      t6, 0x0300(t6)             # 80000300
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t6, $at, lbl_80005280
    nop
    lui     t0, 0x8000                 # t0 = 80000000
    lw      t0, 0x64C4(t0)             # 800064C4
    lui     t9, 0x8000                 # t9 = 80000000
    addiu   t9, t9, 0x6410             # t9 = 80006410
    beq     $zero, $zero, lbl_80005294
    sw      t9, 0x0008(t0)             # 80000008
lbl_80005280:
    lui     t2, 0x8000                 # t2 = 80000000
    lw      t2, 0x64C4(t2)             # 800064C4
    lui     t1, 0x8000                 # t1 = 80000000
    addiu   t1, t1, 0x63C0             # t1 = 800063C0
    sw      t1, 0x0008(t2)             # 80000008
lbl_80005294:
    lui     t4, 0x8000                 # t4 = 80000000
    lw      t4, 0x64C4(t4)             # 800064C4
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    lui     t5, 0x8000                 # t5 = 80000000
    sh      t3, 0x0000(t4)             # 80000000
    lw      t5, 0x64C4(t5)             # 800064C4
    lui     t6, 0xA440                 # t6 = A4400000
    lw      t7, 0x0008(t5)             # 80000008
    lw      t8, 0x0004(t7)             # 800064D4
    sw      t8, 0x000C(t5)             # 8000000C
    lw      t9, 0x0010(t6)             # A4400010
    sltiu   $at, t9, 0x000B
    bne     $at, $zero, lbl_800052E0
    nop
lbl_800052CC:
    lui     t0, 0xA440                 # t0 = A4400000
    lw      t1, 0x0010(t0)             # A4400010
    sltiu   $at, t1, 0x000B
    beq     $at, $zero, lbl_800052CC
    nop
lbl_800052E0:
    lui     t2, 0xA440                 # t2 = A4400000
    jal     func_80005300
    sw      $zero, 0x0000(t2)          # A4400000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop


func_80005300:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0018($sp)
    sw      $ra, 0x001C($sp)
    lui     s0, 0x8000                 # s0 = 80000000
    lui     t6, 0xA440                 # t6 = A4400000
    lw      s0, 0x64C4(s0)             # 800064C4
    lw      t7, 0x0010(t6)             # A4400010
    lw      a1, 0x0008(s0)             # 80000008
    andi    t8, t7, 0x0001             # t8 = 00000000
    sw      t8, 0x002C($sp)
    lw      a0, 0x0004(s0)             # 80000004
    jal     func_80003B60              # osVirtualToPhysical
    sw      a1, 0x0044($sp)
    lw      t9, 0x002C($sp)
    lw      a1, 0x0044($sp)
    lhu     t2, 0x0000(s0)             # 80000000
    sll     t0, t9,  2
    addu    t0, t0, t9
    sll     t0, t0,  2
    addu    a2, a1, t0
    lw      t1, 0x0028(a2)             # 00000028
    andi    t3, t2, 0x0002             # t3 = 00000000
    beq     t3, $zero, lbl_8000537C
    addu    a0, t1, v0
    lw      t5, 0x0020(a1)             # 00000020
    lw      t4, 0x0020(s0)             # 80000020
    addiu   $at, $zero, 0xF000         # $at = FFFFF000
    and     t6, t5, $at
    or      t7, t4, t6                 # t7 = 00000000
    beq     $zero, $zero, lbl_80005384
    sw      t7, 0x0020(s0)             # 80000020
lbl_8000537C:
    lw      t8, 0x0020(a1)             # 00000020
    sw      t8, 0x0020(s0)             # 80000020
lbl_80005384:
    lhu     t9, 0x0000(s0)             # 80000000
    andi    t0, t9, 0x0004             # t0 = 00000000
    beql    t0, $zero, lbl_80005464
    lw      t6, 0x002C(a2)             # 0000002C
    lw      v1, 0x002C(a2)             # 0000002C
    lwc1    $f4, 0x0024(s0)            # 80000024
    lui     $at, 0x4F80                # $at = 4F800000
    andi    t1, v1, 0x0FFF             # t1 = 00000000
    mtc1    t1, $f6                    # $f6 = 0.00
    bgez    t1, lbl_800053BC
    cvt.s.w $f8, $f6
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10
lbl_800053BC:
    mul.s   $f16, $f4, $f8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t2, $f31
    ctc1    v0, $f31
    nop
    cvt.w.s $f18, $f16
    cfc1    v0, $f31
    nop
    andi    v0, v0, 0x0078             # v0 = 00000000
    beql    v0, $zero, lbl_80005434
    mfc1    v0, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    v0, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    v0, $f31
    nop
    andi    v0, v0, 0x0078             # v0 = 00000000
    bne     v0, $zero, lbl_80005428
    nop
    mfc1    v0, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80005440
    or      v0, v0, $at                # v0 = 80000000
lbl_80005428:
    beq     $zero, $zero, lbl_80005440
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    mfc1    v0, $f18
lbl_80005434:
    nop
    bltz    v0, lbl_80005428
    nop
lbl_80005440:
    sw      v0, 0x002C(s0)             # 8000002C
    lw      t3, 0x002C(a2)             # 0000002C
    addiu   $at, $zero, 0xF000         # $at = FFFFF000
    ctc1    t2, $f31
    and     t5, t3, $at
    or      t4, v0, t5                 # t4 = FFFFFFFF
    beq     $zero, $zero, lbl_80005468
    sw      t4, 0x002C(s0)             # 8000002C
    lw      t6, 0x002C(a2)             # 0000002C
lbl_80005464:
    sw      t6, 0x002C(s0)             # 8000002C
lbl_80005468:
    lui     v0, 0x8000                 # v0 = 80000000
    lw      v0, 0x654C(v0)             # 8000654C
    lw      t7, 0x0030(a2)             # 00000030
    sll     t8, v0, 16
    subu    t9, t7, t8
    addu    t0, t9, v0
    sw      t0, 0x0034($sp)
    lhu     v1, 0x0000(s0)             # 80000000
    lw      a3, 0x001C(a1)             # 0000001C
    andi    t1, v1, 0x0020             # t1 = 00000000
    beq     t1, $zero, lbl_8000549C
    andi    t2, v1, 0x0040             # t2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
lbl_8000549C:
    beql    t2, $zero, lbl_800054D4
    andi    t3, v1, 0x0080             # t3 = 00000000
    sw      $zero, 0x002C(s0)          # 8000002C
    lw      a0, 0x0004(s0)             # 80000004
    sw      a3, 0x0038($sp)
    sw      a2, 0x0024($sp)
    jal     func_80003B60              # osVirtualToPhysical
    sw      a1, 0x0044($sp)
    lw      a1, 0x0044($sp)
    lw      a2, 0x0024($sp)
    lw      a3, 0x0038($sp)
    or      a0, v0, $zero              # a0 = 00000000
    lhu     v1, 0x0000(s0)             # 80000000
    andi    t3, v1, 0x0080             # t3 = 00000000
lbl_800054D4:
    beql    t3, $zero, lbl_80005518
    lui     t7, 0xA440                 # t7 = A4400000
    lhu     t5, 0x0028(s0)             # 80000028
    lui     $at, 0x03FF                # $at = 03FF0000
    lw      a0, 0x0004(s0)             # 80000004
    sll     t4, t5, 16
    and     t6, t4, $at
    sw      t6, 0x002C(s0)             # 8000002C
    sw      a3, 0x0038($sp)
    sw      a2, 0x0024($sp)
    jal     func_80003B60              # osVirtualToPhysical
    sw      a1, 0x0044($sp)
    lw      a1, 0x0044($sp)
    lw      a2, 0x0024($sp)
    lw      a3, 0x0038($sp)
    or      a0, v0, $zero              # a0 = 00000000
    lui     t7, 0xA440                 # t7 = A4400000
lbl_80005518:
    sw      a0, 0x0004(t7)             # A4400004
    lw      t8, 0x0008(a1)             # 00000008
    lui     t9, 0xA440                 # t9 = A4400000
    lui     t1, 0xA440                 # t1 = A4400000
    sw      t8, 0x0008(t9)             # A4400008
    lw      t0, 0x000C(a1)             # 0000000C
    lui     t3, 0xA440                 # t3 = A4400000
    lui     t4, 0xA440                 # t4 = A4400000
    sw      t0, 0x0014(t1)             # A4400014
    lw      t2, 0x0010(a1)             # 00000010
    lui     t8, 0xA440                 # t8 = A4400000
    lui     t0, 0xA440                 # t0 = A4400000
    sw      t2, 0x0018(t3)             # A4400018
    lw      t5, 0x0014(a1)             # 00000014
    lui     t2, 0xA440                 # t2 = A4400000
    lui     v0, 0x8000                 # v0 = 80000000
    sw      t5, 0x001C(t4)             # A440001C
    lw      t6, 0x0018(a1)             # 00000018
    lui     t5, 0xA440                 # t5 = A4400000
    addiu   v0, v0, 0x64C0             # v0 = 800064C0
    sw      t6, 0x0020(t7)             # A4400020
    sw      a3, 0x0024(t8)             # A4400024
    lw      t9, 0x0034($sp)
    lui     t6, 0xA440                 # t6 = A4400000
    lui     v1, 0x8000                 # v1 = 80000000
    sw      t9, 0x0028(t0)             # A4400028
    lw      t1, 0x0034(a2)             # 00000034
    addiu   v1, v1, 0x64C4             # v1 = 800064C4
    sw      t1, 0x002C(t2)             # A440002C
    lw      t3, 0x0038(a2)             # 00000038
    sw      t3, 0x000C(t5)             # A440000C
    lw      t4, 0x0020(s0)             # 80000020
    or      t3, s0, $zero              # t3 = 80000000
    sw      t4, 0x0030(t6)             # A4400030
    lw      t7, 0x002C(s0)             # 8000002C
    addiu   t4, s0, 0x0030             # t4 = 80000030
    sw      t7, 0x0034(t8)             # A4400034
    lw      t9, 0x000C(s0)             # 8000000C
    sw      t9, 0x0000(t0)             # A4400000
    lw      t2, 0x0000(v0)             # 800064C0
    sw      s0, 0x0000(v0)             # 800064C0
    sw      t2, 0x0000(v1)             # 800064C4
lbl_800055C0:
    lw      $at, 0x0000(t3)            # 80000000
    addiu   t3, t3, 0x000C             # t3 = 8000000C
    addiu   t2, t2, 0x000C             # t2 = A440000C
    sw      $at, -0x000C(t2)           # A4400000
    lw      $at, -0x0008(t3)           # 80000004
    sw      $at, -0x0008(t2)           # A4400004
    lw      $at, -0x0004(t3)           # 80000008
    bne     t3, t4, lbl_800055C0
    sw      $at, -0x0004(t2)           # A4400008
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop
    nop
    nop


func_80005600:
# OSMesgQueue* osPiGetCmdQueue(void)
# V0 = OSMesgQueue* PImgr command queue, or 0 if the PImgr thread is not currently active (or not initialized?)
    lui     t6, 0x8000                 # t6 = 80000000
    lw      t6, 0x6370(t6)             # 80006370
    bne     t6, $zero, lbl_80005618
    nop
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80005618:
    lui     v0, 0x8000                 # v0 = 80000000
    lw      v0, 0x6378(v0)             # 80006378
    jr      $ra
    nop
    nop
    nop


func_80005630:
# s32 osEPiReadIo(OSPiHandle* pihandle, u32 devAddr, u32* data)
# Perform a 32-bit IO Read operation from a given device address
# A0 = OSPiHandle* handle for the PI device
# A1 = u32 device address from which to perform the read operation
# A2 = u32* where to store the read data
# V0 = 0 for success, else -1
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    jal     func_80001DB0
    sw      a2, 0x0028($sp)
    lw      a0, 0x0020($sp)
    lw      a1, 0x0024($sp)
    jal     func_80004580
    lw      a2, 0x0028($sp)
    jal     func_80001DF4
    sw      v0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    lw      v0, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop
    nop
    nop


func_80005680:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    jal     func_80001DB0
    sw      s0, 0x0018($sp)
    lui     t6, 0x8000                 # t6 = 80000000
    lw      t6, 0x6520(t6)             # 80006520
    lui     s0, 0x8001                 # s0 = 80010000
    addiu   s0, s0, 0x9EA0             # s0 = 80009EA0
    bne     t6, $zero, lbl_800056BC
    lui     $at, 0x8000                # $at = 80000000
    jal     func_80001DF4
    nop
    lui     s0, 0x8001                 # s0 = 80010000
    beq     $zero, $zero, lbl_800057C0
    addiu   v0, s0, 0x9EA0             # v0 = 80009EA0
lbl_800056BC:
    sw      $zero, 0x6520($at)         # 00006520
    lui     t7, 0xB000                 # t7 = B0000000
    lui     a0, 0x8001                 # a0 = 80010000
    sb      $zero, 0x0004(s0)          # 80010004
    sw      t7, 0x000C(s0)             # 8001000C
    sb      $zero, 0x0009(s0)          # 80010009
    sw      $zero, 0x0010(s0)          # 80010010
    addiu   a0, a0, 0x9EB4             # a0 = 80009EB4
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0060          # a1 = 00000060
    lui     v1, 0xA460                 # v1 = A4600000
    ori     v1, v1, 0x0010             # v1 = A4600010
    lw      v0, 0x0000(v1)             # A4600010
    lui     a3, 0xA460                 # a3 = A4600000
    ori     a3, a3, 0x0014             # a3 = A4600014
    andi    t8, v0, 0x0003             # t8 = 00000000
    beq     t8, $zero, lbl_80005714
    lui     t0, 0xA460                 # t0 = A4600000
    lw      v0, 0x0000(v1)             # A4600010
lbl_80005708:
    andi    t9, v0, 0x0003             # t9 = 00000000
    bnel    t9, $zero, lbl_80005708
    lw      v0, 0x0000(v1)             # A4600010
lbl_80005714:
    lw      v1, 0x0000(a3)             # A4600014
    ori     t0, t0, 0x001C             # t0 = A460001C
    lui     t1, 0xA460                 # t1 = A4600000
    lw      a0, 0x0000(t0)             # A460001C
    ori     t1, t1, 0x0020             # t1 = A4600020
    lui     t2, 0xA460                 # t2 = A4600000
    lw      a1, 0x0000(t1)             # A4600020
    ori     t2, t2, 0x0018             # t2 = A4600018
    lw      a2, 0x0000(t2)             # A4600018
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    sw      t3, 0x0000(a3)             # A4600014
    sw      $zero, 0x0000(t0)          # A460001C
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    sw      t4, 0x0000(t1)             # A4600020
    sw      t3, 0x0000(t2)             # A4600018
    lw      t5, 0x000C(s0)             # 8001000C
    lui     $at, 0xA000                # $at = A0000000
    or      t6, t5, $at                # t6 = A0000000
    lw      v0, 0x0000(t6)             # A0000000
    srl     t8, v0, 16
    srl     t4, v0, 20
    andi    t9, t8, 0x000F             # t9 = 00000000
    andi    t5, t4, 0x000F             # t5 = 00000003
    srl     t7, v0,  8
    sb      t9, 0x0006(s0)             # 80010006
    sb      t5, 0x0007(s0)             # 80010007
    sb      t7, 0x0008(s0)             # 80010008
    sb      v0, 0x0005(s0)             # 80010005
    sw      v1, 0x0000(a3)             # A4600014
    sw      a0, 0x0000(t0)             # A460001C
    sw      a1, 0x0000(t1)             # A4600020
    jal     func_80005130              # __osDisableInt
    sw      a2, 0x0000(t2)             # A4600018
    lui     v1, 0x8000                 # v1 = 80000000
    addiu   v1, v1, 0x638C             # v1 = 8000638C
    lw      t8, 0x0000(v1)             # 8000638C
    sw      s0, 0x0000(v1)             # 8000638C
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_800051A0              # __osRestoreInt
    sw      t8, 0x0000(s0)             # 80010000
    jal     func_80001DF4
    nop
    or      v0, s0, $zero              # v0 = 80010000
lbl_800057C0:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop
    nop
    nop


func_800057E0:
# u32 __osSetFpcCsr(u32 value)
# Set the value of the R4300 floating-point control/status register and returns the original value
# A0 = u32 new value
# V0 = u32 old value
    cfc1    v0, $f31
    ctc1    a0, $f31
    jr      $ra
    nop


func_800057F0:
# u32 __osGetFpcCsr(void)
# Get the value of the R4300 floating-point control/status register
# V0 = u32 current value
    cfc1    v0, $f31
    jr      $ra
    nop
    nop


func_80005800:
# s32 osEPiWriteIo(OSPiHandle* pihandle, u32 devAddr, u32 data)
# Perform a 32-bit IO Write operation to a given device address
# A0 = OSPiHandle* handle for the PI device
# A1 = u32 device address to which the write operation should be performed
# A2 = u32 data to write
# V0 = 0 for success, else -1
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    jal     func_80001DB0
    sw      a2, 0x0028($sp)
    lw      a0, 0x0020($sp)
    lw      a1, 0x0024($sp)
    jal     func_80005910
    lw      a2, 0x0028($sp)
    jal     func_80001DF4
    sw      v0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    lw      v0, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop
    nop
    nop


func_80005850:
# osMapTLBRdb
    mfc0    t0, EntryHi
    addiu   t1, $zero, 0x001F          # t1 = 0000001F
    mtc0    t1, Index
    mtc0    $zero, PageMask
    addiu   t2, $zero, 0x0017          # t2 = 00000017
    lui     t1, 0xC000                 # t1 = C0000000
    mtc0    t1, EntryHi
    lui     t1, 0x8000                 # t1 = 80000000
    srl     t3, t1,  6
    or      t3, t3, t2                 # t3 = 00000017
    mtc0    t3, EntryLo0
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    mtc0    t1, EntryLo1
    nop
    tlbwi
    nop
    nop
    nop
    nop
    mtc0    t0, EntryHi
    jr      $ra
    nop
    nop
    nop


func_800058B0:
# void osYieldThread(void)
# Yields the CPU and invokes the thread dispatcher
# Inserts the calling thread back into the run queue following all other threads of the same priority,
# Then the dispatcher is invoked to run the (possibly different) thread at the front of the run queue.
# If the calling thread is the only thread at its priority level, then this call effectively does nothing.
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    jal     func_80005130              # __osDisableInt
    sw      s0, 0x0018($sp)
    lui     t7, 0x8000                 # t7 = 80000000
    lw      t7, 0x6340(t7)             # 80006340
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    lui     a0, 0x8000                 # a0 = 80000000
    or      s0, v0, $zero              # s0 = 00000000
    addiu   a0, a0, 0x6338             # a0 = 80006338
    jal     func_80002A4C
    sh      t6, 0x0010(t7)             # 80000010
    jal     func_800051A0              # __osRestoreInt
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop


func_80005900:
# u32 __osGetCause(void)
# Get the value of the R4300 Cause register
# V0 = u32 current value
    mfc0    v0, Cause
    jr      $ra
    nop
    nop


func_80005910:
    lui     v1, 0xA460                 # v1 = A4600000
    ori     v1, v1, 0x0010             # v1 = A4600010
    lw      v0, 0x0000(v1)             # A4600010
    or      a3, a1, $zero              # a3 = 00000000
    andi    t6, v0, 0x0003             # t6 = 00000000
    beql    t6, $zero, lbl_80005940
    lbu     v0, 0x0009(a0)             # 00000009
    lw      v0, 0x0000(v1)             # A4600010
lbl_80005930:
    andi    t7, v0, 0x0003             # t7 = 00000000
    bnel    t7, $zero, lbl_80005930
    lw      v0, 0x0000(v1)             # A4600010
    lbu     v0, 0x0009(a0)             # 00000009
lbl_80005940:
    lui     v1, 0x8000                 # v1 = 80000000
    lbu     t9, 0x0004(a0)             # 00000004
    sll     t8, v0,  2
    addu    v1, v1, t8
    lw      v1, 0x6390(v1)             # 80006390
    lbu     t0, 0x0004(v1)             # 80000004
    beql    t9, t0, lbl_80005A50
    lw      t2, 0x000C(a0)             # 0000000C
    bne     v0, $zero, lbl_800059C8
    or      a1, v1, $zero              # a1 = 80000000
    lbu     v0, 0x0005(a0)             # 00000005
    lbu     t1, 0x0005(v1)             # 80000005
    lui     t2, 0xA460                 # t2 = A4600000
    lui     t4, 0xA460                 # t4 = A4600000
    beq     v0, t1, lbl_80005984
    lui     t6, 0xA460                 # t6 = A4600000
    sw      v0, 0x0014(t2)             # A4600014
lbl_80005984:
    lbu     v0, 0x0006(a0)             # 00000006
    lbu     t3, 0x0006(a1)             # 80000006
    lui     t8, 0xA460                 # t8 = A4600000
    beql    v0, t3, lbl_800059A0
    lbu     v0, 0x0007(a0)             # 00000007
    sw      v0, 0x001C(t4)             # A460001C
    lbu     v0, 0x0007(a0)             # 00000007
lbl_800059A0:
    lbu     t5, 0x0007(a1)             # 80000007
    beql    v0, t5, lbl_800059B4
    lbu     v0, 0x0008(a0)             # 00000008
    sw      v0, 0x0020(t6)             # A4600020
    lbu     v0, 0x0008(a0)             # 00000008
lbl_800059B4:
    lbu     t7, 0x0008(a1)             # 80000008
    beql    v0, t7, lbl_80005A28
    lbu     t7, 0x0004(a0)             # 00000004
    beq     $zero, $zero, lbl_80005A24
    sw      v0, 0x0018(t8)             # A4600018
lbl_800059C8:
    lbu     v0, 0x0005(a0)             # 00000005
    lbu     t9, 0x0005(a1)             # 80000005
    lui     t0, 0xA460                 # t0 = A4600000
    lui     t2, 0xA460                 # t2 = A4600000
    beq     v0, t9, lbl_800059E4
    lui     t4, 0xA460                 # t4 = A4600000
    sw      v0, 0x0024(t0)             # A4600024
lbl_800059E4:
    lbu     v0, 0x0006(a0)             # 00000006
    lbu     t1, 0x0006(a1)             # 80000006
    lui     t6, 0xA460                 # t6 = A4600000
    beql    v0, t1, lbl_80005A00
    lbu     v0, 0x0007(a0)             # 00000007
    sw      v0, 0x002C(t2)             # A460002C
    lbu     v0, 0x0007(a0)             # 00000007
lbl_80005A00:
    lbu     t3, 0x0007(a1)             # 80000007
    beql    v0, t3, lbl_80005A14
    lbu     v0, 0x0008(a0)             # 00000008
    sw      v0, 0x0030(t4)             # A4600030
    lbu     v0, 0x0008(a0)             # 00000008
lbl_80005A14:
    lbu     t5, 0x0008(a1)             # 80000008
    beql    v0, t5, lbl_80005A28
    lbu     t7, 0x0004(a0)             # 00000004
    sw      v0, 0x0028(t6)             # A4600028
lbl_80005A24:
    lbu     t7, 0x0004(a0)             # 00000004
lbl_80005A28:
    sb      t7, 0x0004(a1)             # 80000004
    lbu     t8, 0x0005(a0)             # 00000005
    sb      t8, 0x0005(a1)             # 80000005
    lbu     t9, 0x0006(a0)             # 00000006
    sb      t9, 0x0006(a1)             # 80000006
    lbu     t0, 0x0007(a0)             # 00000007
    sb      t0, 0x0007(a1)             # 80000007
    lbu     t1, 0x0008(a0)             # 00000008
    sb      t1, 0x0008(a1)             # 80000008
    lw      t2, 0x000C(a0)             # 0000000C
lbl_80005A50:
    lui     $at, 0xA000                # $at = A0000000
    or      v0, $zero, $zero           # v0 = 00000000
    or      t3, t2, a3                 # t3 = A4600000
    or      t4, t3, $at                # t4 = A4600000
    jr      $ra
    sw      a2, 0x0000(t4)             # A4600000
    nop
    nop


func_80005A70:
# s32 osSetTimer(OSTimer* timer, ?, OSTime countdown, OSTime interval, OSMesgQueue* mq, OSMesg msg)
# Start a countdown or interval timer
# Times are expressed in CPU count register cycles
# A0 = OSTimer* where to store the timer
# A1 = unused argument
# A2/A3 = OSTime countdown (duration to the next end of the timer, defaults to interval if zero)
# SP + 0x10/0x14 = OSTime interval time (value used when resetting the timer after it ends)
# SP + 0x18 = OSMesgQueue* message queue to put the ending message
# SP + 0x1C = OSMesg message to send when the timer ends
# V0 = 0 for success
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a0, 0x0020($sp)
    lw      t6, 0x0020($sp)
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    sw      $zero, 0x0000(t6)          # 00000000
    lw      t7, 0x0020($sp)
    sw      $zero, 0x0004(t7)          # 00000004
    lw      t0, 0x0020($sp)
    lw      t9, 0x0034($sp)
    lw      t8, 0x0030($sp)
    sw      t9, 0x000C(t0)             # 0000000C
    sw      t8, 0x0008(t0)             # 00000008
    lw      t2, 0x0028($sp)
    lw      t3, 0x002C($sp)
    bne     t2, $zero, lbl_80005AC0
    nop
    beq     t3, $zero, lbl_80005AD0
    nop
lbl_80005AC0:
    lw      t1, 0x0020($sp)
    sw      t2, 0x0010(t1)             # 00000010
    beq     $zero, $zero, lbl_80005AE4
    sw      t3, 0x0014(t1)             # 00000014
lbl_80005AD0:
    lw      t6, 0x0020($sp)
    lw      t4, 0x0030($sp)
    lw      t5, 0x0034($sp)
    sw      t4, 0x0010(t6)             # 00000010
    sw      t5, 0x0014(t6)             # 00000014
lbl_80005AE4:
    lw      t7, 0x0038($sp)
    lw      t8, 0x0020($sp)
    sw      t7, 0x0018(t8)             # 00000018
    lw      t0, 0x0020($sp)
    lw      t9, 0x003C($sp)
    sw      t9, 0x001C(t0)             # 0000001C
    jal     func_80004BC8
    lw      a0, 0x0020($sp)
    lui     t2, 0x8000                 # t2 = 80000000
    lw      t2, 0x63B0(t2)             # 800063B0
    sw      v0, 0x0018($sp)
    sw      v1, 0x001C($sp)
    lw      t1, 0x0020($sp)
    lw      t3, 0x0000(t2)             # 80000000
    bne     t3, t1, lbl_80005B30
    nop
    lw      a0, 0x0018($sp)
    jal     func_80004B54
    lw      a1, 0x001C($sp)
lbl_80005B30:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop
    nop
    nop
    nop


func_80005B50:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80004300
    sw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80005B74
    lw      t6, 0x001C($sp)
    beq     $zero, $zero, lbl_80005B88
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80005B74:
    lw      t7, 0x0018($sp)
    lui     $at, 0xA000                # $at = A0000000
    or      v0, $zero, $zero           # v0 = 00000000
    or      t8, t7, $at                # t8 = A0000000
    sw      t6, 0x0000(t8)             # A0000000
lbl_80005B88:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop


func_80005BA0:
# void osCreateViManager(OSPri pri)
# Create and start the VImgr thread
# A0 = OSPri thread priority
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    lui     s0, 0x8000                 # s0 = 80000000
    addiu   s0, s0, 0x6530             # s0 = 80006530
    lw      t6, 0x0000(s0)             # 80006530
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0030($sp)
    bnel    t6, $zero, lbl_80005D10
    lw      $ra, 0x0024($sp)
    jal     func_80004950
    nop
    lui     $at, 0x8000                # $at = 80000000
    lui     a0, 0x8001                 # a0 = 80010000
    lui     a1, 0x8001                 # a1 = 80010000
    sw      $zero, 0x654C($at)         # 8000654C
    addiu   a1, a1, 0xB0E8             # a1 = 8000B0E8
    addiu   a0, a0, 0xB0D0             # a0 = 8000B0D0
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lui     a2, 0x8001                 # a2 = 80010000
    lui     a3, 0x8001                 # a3 = 80010000
    addiu   a3, a3, 0xB118             # a3 = 8000B118
    addiu   a2, a2, 0xB100             # a2 = 8000B100
    addiu   t7, $zero, 0x000D          # t7 = 0000000D
    addiu   t8, $zero, 0x000E          # t8 = 0000000E
    lui     a1, 0x8001                 # a1 = 80010000
    sh      t7, 0x0000(a2)             # 8000B100
    sb      $zero, 0x0002(a2)          # 8000B102
    sw      $zero, 0x0004(a2)          # 8000B104
    sh      t8, 0x0000(a3)             # 8000B118
    sb      $zero, 0x0002(a3)          # 8000B11A
    sw      $zero, 0x0004(a3)          # 8000B11C
    addiu   a1, a1, 0xB0D0             # a1 = 8000B0D0
    jal     func_80003FB0              # osSetEventMesg
    addiu   a0, $zero, 0x0007          # a0 = 00000007
    lui     a3, 0x8001                 # a3 = 80010000
    lui     a1, 0x8001                 # a1 = 80010000
    addiu   a2, a3, 0xB118             # a2 = 8000B118
    addiu   a1, a1, 0xB0D0             # a1 = 8000B0D0
    jal     func_80003FB0              # osSetEventMesg
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    sw      t9, 0x0028($sp)
    jal     func_80004560              # osGetThreadPri
    or      a0, $zero, $zero           # a0 = 00000000
    lw      t0, 0x0030($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    slt     $at, v0, t0
    beq     $at, $zero, lbl_80005C70
    or      a1, t0, $zero              # a1 = 00000000
    jal     func_80004480              # osSetThreadPri
    sw      v0, 0x0028($sp)
lbl_80005C70:
    jal     func_80005130              # __osDisableInt
    nop
    lw      t3, 0x0030($sp)
    lui     v1, 0x8001                 # v1 = 80010000
    lui     a0, 0x8001                 # a0 = 80010000
    lui     t2, 0x8001                 # t2 = 80010000
    addiu   a0, a0, 0x9F20             # a0 = 80009F20
    addiu   v1, v1, 0xB0D0             # v1 = 8000B0D0
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, t2, 0xB0D0             # t2 = 8000B0D0
    lui     a2, 0x8000                 # a2 = 80000000
    sw      v0, 0x002C($sp)
    sw      t1, 0x0000(s0)             # 80006530
    sw      a0, 0x0004(s0)             # 80006534
    sw      v1, 0x0008(s0)             # 80006538
    sw      v1, 0x000C(s0)             # 8000653C
    sw      $zero, 0x0010(s0)          # 80006540
    sw      $zero, 0x0014(s0)          # 80006544
    sw      $zero, 0x0018(s0)          # 80006548
    addiu   a2, a2, 0x5D20             # a2 = 80005D20
    sw      t2, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, s0, $zero              # a3 = 80006530
    jal     func_80002F20              # osCreateThread
    sw      t3, 0x0014($sp)
    jal     func_800051C0
    nop
    lui     a0, 0x8001                 # a0 = 80010000
    jal     func_80005EC0              # osStartThread
    addiu   a0, a0, 0x9F20             # a0 = 80009F20
    jal     func_800051A0              # __osRestoreInt
    lw      a0, 0x002C($sp)
    lw      t4, 0x0028($sp)
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    or      a0, $zero, $zero           # a0 = 00000000
    beql    t4, $at, lbl_80005D10
    lw      $ra, 0x0024($sp)
    jal     func_80004480              # osSetThreadPri
    or      a1, t4, $zero              # a1 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80005D10:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80005D20:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      $ra, 0x0034($sp)
    sw      s7, 0x0030($sp)
    or      s7, a0, $zero              # s7 = 00000000
    sw      s6, 0x002C($sp)
    sw      s5, 0x0028($sp)
    sw      s4, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    jal     func_80005EB0
    sw      $zero, 0x0044($sp)
    lhu     v1, 0x0002(v0)             # 00000002
    lui     $at, 0x8001                # $at = 80010000
    addiu   s6, $zero, 0x000E          # s6 = 0000000E
    bne     v1, $zero, lbl_80005D74
    sh      v1, -0x4ED0($at)           # 8000B130
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lui     $at, 0x8001                # $at = 80010000
    sh      v1, -0x4ED0($at)           # 8000B130
lbl_80005D74:
    lui     s3, 0x8001                 # s3 = 80010000
    lui     s2, 0x8001                 # s2 = 80010000
    lui     s1, 0x8001                 # s1 = 80010000
    addiu   s1, s1, 0x9E80             # s1 = 80009E80
    addiu   s2, s2, 0x9E88             # s2 = 80009E88
    addiu   s3, s3, 0x9E8C             # s3 = 80009E8C
    addiu   s5, $zero, 0x000D          # s5 = 0000000D
    addiu   s4, $sp, 0x0044            # s4 = FFFFFFF4
lbl_80005D94:
    lw      a0, 0x000C(s7)             # 0000000C
lbl_80005D98:
    or      a1, s4, $zero              # a1 = FFFFFFF4
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t6, 0x0044($sp)
    lhu     v1, 0x0000(t6)             # 00000000
    beq     v1, s5, lbl_80005DC4
    nop
    beq     v1, s6, lbl_80005E60
    nop
    beq     $zero, $zero, lbl_80005D98
    lw      a0, 0x000C(s7)             # 0000000C
lbl_80005DC4:
    jal     func_80005300
    nop
    lui     v1, 0x8001                 # v1 = 80010000
    lhu     v1, -0x4ED0(v1)            # 8000B130
    lui     $at, 0x8001                # $at = 80010000
    addiu   v1, v1, 0xFFFF             # v1 = 8000FFFF
    andi    t7, v1, 0xFFFF             # t7 = 0000FFFF
    bne     t7, $zero, lbl_80005E1C
    sh      t7, -0x4ED0($at)           # 8000B130
    jal     func_80005EB0
    nop
    lw      t8, 0x0010(v0)             # 00000010
    or      s0, v0, $zero              # s0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    beql    t8, $zero, lbl_80005E14
    lhu     v1, 0x0002(s0)             # 00000002
    lw      a0, 0x0010(v0)             # 00000010
    jal     func_80001E20              # osSendMesg
    lw      a1, 0x0014(v0)             # 00000014
    lhu     v1, 0x0002(s0)             # 00000002
lbl_80005E14:
    lui     $at, 0x8001                # $at = 80010000
    sh      v1, -0x4ED0($at)           # 8000B130
lbl_80005E1C:
    lw      t9, 0x0000(s3)             # 80009E8C
    lw      s0, 0x0000(s2)             # 80009E88
    addiu   t0, t9, 0x0001             # t0 = 00000001
    jal     func_80004D50              # osGetCount
    sw      t0, 0x0000(s3)             # 80009E8C
    lw      t5, 0x0004(s1)             # 80009E84
    subu    s0, v0, s0
    lw      t4, 0x0000(s1)             # 80009E80
    addu    t7, s0, t5
    addiu   t2, $zero, 0x0000          # t2 = 00000000
    sltu    $at, t7, t5
    addu    t6, $at, t2
    addu    t6, t6, t4
    sw      v0, 0x0000(s2)             # 80009E88
    sw      t6, 0x0000(s1)             # 80009E80
    beq     $zero, $zero, lbl_80005D94
    sw      t7, 0x0004(s1)             # 80009E84
lbl_80005E60:
    jal     func_800049DC
    nop
    beq     $zero, $zero, lbl_80005D98
    lw      a0, 0x000C(s7)             # 0000000C
    nop
    nop
    nop
    nop
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    lw      s6, 0x002C($sp)
    lw      s7, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    nop


func_80005EB0:
    lui     v0, 0x8000                 # v0 = 80000000
    jr      $ra
    lw      v0, 0x64C0(v0)             # 800064C0
    nop


func_80005EC0:
# void osStartThread(OSThread* thread)
# Starts or resumes a given thread
# Makes a thread created by osCreateThread runnable or resumes a thread previously suspended by osStopThread
# A0 = OSThread* thread to start/resume
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    sw      s1, 0x0018($sp)
    jal     func_80005130              # __osDisableInt
    sw      s0, 0x0014($sp)
    lw      t6, 0x0028($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      s0, v0, $zero              # s0 = 00000000
    lhu     s1, 0x0010(t6)             # 00000010
    beq     s1, $at, lbl_80005F1C
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     s1, $at, lbl_80005F9C
    nop
    lw      t8, 0x0028($sp)
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    lui     a0, 0x8000                 # a0 = 80000000
    sh      t7, 0x0010(t8)             # 00000010
    lw      a1, 0x0028($sp)
    jal     func_80002B4C
    addiu   a0, a0, 0x6338             # a0 = 80006338
    beq     $zero, $zero, lbl_80005F9C
    nop
lbl_80005F1C:
    lw      t9, 0x0028($sp)
    lw      t0, 0x0008(t9)             # 00000008
    beq     t0, $zero, lbl_80005F3C
    nop
    lui     t1, 0x8000                 # t1 = 80000000
    addiu   t1, t1, 0x6338             # t1 = 80006338
    bne     t0, t1, lbl_80005F60
    nop
lbl_80005F3C:
    lw      t3, 0x0028($sp)
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    lui     a0, 0x8000                 # a0 = 80000000
    sh      t2, 0x0010(t3)             # 00000010
    lw      a1, 0x0028($sp)
    jal     func_80002B4C
    addiu   a0, a0, 0x6338             # a0 = 80006338
    beq     $zero, $zero, lbl_80005F9C
    nop
lbl_80005F60:
    lw      t5, 0x0028($sp)
    addiu   t4, $zero, 0x0008          # t4 = 00000008
    sh      t4, 0x0010(t5)             # 00000010
    lw      t6, 0x0028($sp)
    lw      a0, 0x0008(t6)             # 00000008
    jal     func_80002B4C
    or      a1, t6, $zero              # a1 = 00000000
    lw      t7, 0x0028($sp)
    jal     func_80002B94
    lw      a0, 0x0008(t7)             # 00000008
    or      s1, v0, $zero              # s1 = 00000000
    lui     a0, 0x8000                 # a0 = 80000000
    addiu   a0, a0, 0x6338             # a0 = 80006338
    jal     func_80002B4C
    or      a1, s1, $zero              # a1 = 00000000
lbl_80005F9C:
    lui     t8, 0x8000                 # t8 = 80000000
    lw      t8, 0x6340(t8)             # 80006340
    bne     t8, $zero, lbl_80005FBC
    nop
    jal     func_80002BA4
    nop
    beq     $zero, $zero, lbl_80005FF4
    nop
lbl_80005FBC:
    lui     t9, 0x8000                 # t9 = 80000000
    lui     t1, 0x8000                 # t1 = 80000000
    lw      t1, 0x6338(t1)             # 80006338
    lw      t9, 0x6340(t9)             # 80006340
    lw      t2, 0x0004(t1)             # 80000004
    lw      t0, 0x0004(t9)             # 80000004
    slt     $at, t0, t2
    beq     $at, $zero, lbl_80005FF4
    nop
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    lui     a0, 0x8000                 # a0 = 80000000
    sh      t3, 0x0010(t9)             # 80000010
    jal     func_80002A4C
    addiu   a0, a0, 0x6338             # a0 = 80006338
lbl_80005FF4:
    jal     func_800051A0              # __osRestoreInt
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80006010:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    jal     func_80005130              # __osDisableInt
    sw      s0, 0x0018($sp)
    lw      t7, 0x0028($sp)
    lw      t6, 0x002C($sp)
    lw      t0, 0x0028($sp)
    lui     $at, 0x8000                # $at = 80000000
    sll     t8, t7,  3
    addu    $at, $at, t8
    sw      t6, 0x6300($at)            # 80006300
    lw      t9, 0x0030($sp)
    lui     $at, 0x8000                # $at = 80000000
    sll     t1, t0,  3
    or      s0, v0, $zero              # s0 = 00000000
    addu    $at, $at, t1
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800051A0              # __osRestoreInt
    sw      t9, 0x6304($at)            # 80006304
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop


func_80006080:
    sll     t6, a0,  3
    lui     t7, 0x8000                 # t7 = 80000000
    addu    t7, t7, t6
    lw      t7, 0x6300(t7)             # 80006300
    sll     t8, a0,  3
    lui     t9, 0x8000                 # t9 = 80000000
    addu    t9, t9, t8
    sw      t7, 0x0000(a1)             # 00000000
    lw      t9, 0x6304(t9)             # 80006304
    jr      $ra
    sw      t9, 0x0000(a2)             # 00000000
    nop

.section .data

var_800060B0: .word \
0x08000411, 0x8C11FFC4, 0x341F1080, 0x34010F7F, \
0x40900800, 0x409F0000, 0x40811000, 0x40013000, \
0x1420FFFE, 0x40012000, 0x30210080, 0x14200002, \
0x34010FC0, 0x03E00008, 0x34115200, 0x40912000, \
0x0000000D, 0x3C010080, 0x340303D8, 0x15630014, \
0x201010D0, 0x3C0303A0, 0x34634820, 0x14830010, \
0x3C032529, 0x34630004, 0x14C3000D, 0x00051B02, \
0x2062FFB4, 0x0440000A, 0x2062FFB1, 0x1C400008, \
0x4A6D6B6C, 0x4ACD6B54, 0x4B8D6B6D, 0x48036800, \
0x38631234, 0x00000000, 0x3C010100, 0x201010C8, \
0x40812000, 0x8C01FFC8, 0x40032800, 0x1463FFFE, \
0x00000000, 0x40900000, 0x40810800, 0x08000440, \
0x40801800, 0x00000000, 0x08000436, 0x8C11FFC4, \
0x08000439, 0x8C11FFC4, 0x40102000, 0x32104000, \
0x16000007, 0x40106000, 0x32011FFF, 0x14200002, \
0x3201007F, 0x40904800, 0x1020FFEB, 0x00100882, \
0x00118F80, 0x06310004, 0x8C10FFDC, 0x40015800, \
0x30210100, 0x1420FFC3, 0x40012800, 0x1420FFFE, \
0x8C01FFD8, 0x2210FFFF, 0x40800000, 0x40810800, \
0x40901000, 0x40013000, 0x1420FFFE, 0x341F1008, \
0x40803800, 0x4A10842C, 0xAC04FFC8, 0x08000409, \
0x8C10FFD0, 0x00000000, 0x00000000, 0x00000000, \
0xE80C2001, 0x34014000, 0x40812000, 0x0000000D, \
0x00000000, 0x09000425, 0x00000000, 0x00000000, \
0x00000000, 0x80001F70, 0x80006010, 0x80005800, \
0x80005630, 0x800057E0, 0x800057F0, 0x80006080, \
0x80006010, 0x800034C0, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00002000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000004, 0x00000000, 0x800060B0, 0x000003E8, \
0x80006210, 0x00000020, 0x80006800, 0x00000008, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0xFFFFFFFF, 0x80006330, 0x80006330, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x03B9ACA0, 0x02E6D354, 0x00000000, \
0x003FFF01, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x80008970, 0x800089E8, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x80009E60, 0x00000000, 0x00000000, 0x00000000, \
0x02000000, 0x0000311E, 0x00000140, 0x03E52239, \
0x0000020D, 0x00000C15, 0x0C150C15, 0x006C02EC, \
0x00000200, 0x00000000, 0x00000280, 0x00000400, \
0x002501FF, 0x000E0204, 0x00000002, 0x00000280, \
0x00000400, 0x002501FF, 0x000E0204, 0x00000002, \
0x1E000000, 0x0000311E, 0x00000140, 0x04651E39, \
0x0000020D, 0x00040C11, 0x0C190C1A, 0x006C02EC, \
0x00000200, 0x00000000, 0x00000280, 0x00000400, \
0x002501FF, 0x000E0204, 0x00000002, 0x00000280, \
0x00000400, 0x002501FF, 0x000E0204, 0x00000002, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x80006460, 0x80006490, 0x00000000, 0x00000000, \
0x10000000, 0x0000311E, 0x00000140, 0x04541E3A, \
0x00000271, 0x00170C69, 0x0C6F0C6D, 0x00800300, \
0x00000200, 0x00000000, 0x00000280, 0x00000400, \
0x005F0239, 0x0009026B, 0x00000002, 0x00000280, \
0x00000400, 0x005F0239, 0x0009026B, 0x00000002, \
0x00000001, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x626F6F74, 0x00000000, 0x69646C65, 0x00000000, \
0x6D61696E, 0x00000000, 0x00000000, 0x00000000, \
0x3F3F0000, 0x00000000, 0x6B616E6A, 0x69000000, \
0x00000000, 0x6C696E6B, 0x5F616E69, 0x6D657469, \
0x6F6E0000, 0x2E2E2F7A, 0x5F737464, 0x5F646D61, \
0x2E630000, 0x2E2E2F7A, 0x5F737464, 0x5F646D61, \
0x2E630000, 0x2E2E2F7A, 0x5F737464, 0x5F646D61, \
0x2E630000, 0x2E2E2F7A, 0x5F737464, 0x5F646D61, \
0x2E630000, 0x2E2E2F7A, 0x5F737464, 0x5F646D61, \
0x2E630000, 0x646D616D, 0x67720000, 0x00000000, \
0x2E2E2F7A, 0x5F6C6F63, 0x616C652E, 0x63000000, \
0x4F434152, 0x494E4120, 0x25303878, 0x20253038, \
0x78000000, 0x4C454745, 0x4E442025, 0x30387820, \
0x25303878, 0x00000000, 0x524F4D5F, 0x46000000, \
0x205B4372, 0x6561746F, 0x723A2573, 0x5D000000, \
0x5B446174, 0x653A2573, 0x5D000000, 0x49204C4F, \
0x56452059, 0x4F552025, 0x30387800, 0x00000000, \
0x68656164, 0x3D253038, 0x78207461, 0x696C3D25, \
0x30387820, 0x6C617374, 0x3D253038, 0x78207573, \
0x65643D25, 0x30387820, 0x66726565, 0x3D253038, \
0x78205B25, 0x735D0A00, 0x286E756C, 0x6C290000, \
0x25732025, 0x643A2072, 0x616E6765, 0x20657272, \
0x6F722025, 0x73282566, 0x29203C20, 0x25732825, \
0x6629203C, 0x20257328, 0x2566290A, 0x00000000, \
0x2A2A2A20, 0x48756E67, 0x55702069, 0x6E207468, \
0x72656164, 0x2025642C, 0x205B2573, 0x3A25645D, \
0x202A2A2A, 0x0A000000, 0x2A2A2A20, 0x52657365, \
0x74202A2A, 0x2A0A0000, 0x52657365, 0x74000000, \
0x00141818, 0x1C1C1C1C, 0x20202020, 0x20202020, \
0x00040808, 0x0C0C0C0C, 0x10101010, 0x10101010, \
0x800028E8, 0x800028B0, 0x80002890, 0x800026F4, \
0x800026B0, 0x80002834, 0x80002678, 0x80002684, \
0x80002690, 0x00000000, 0x00000000, 0x00000000, \
0x800039FC, 0x80003914, 0x80003948, 0x80003A18, \
0x80003A18, 0x8000397C, 0x800039BC, 0x00000000, \
0x05550556, 0x0559055A, 0x05650566, 0x0569056A, \
0x05950596, 0x0599059A, 0x05A505A6, 0x05A905AA, \
0x06550656, 0x0659065A, 0x06650666, 0x0669066A, \
0x06950696, 0x0699069A, 0x06A506A6, 0x06A906AA, \
0x09550956, 0x0959095A, 0x09650966, 0x0969096A, \
0x09950996, 0x0999099A, 0x09A509A6, 0x09A909AA, \
0x0A550A56, 0x0A590A5A, 0x0A650A66, 0x0A690A6A, \
0x0A950A96, 0x0A990A9A, 0x0AA50AA6, 0x0AA90AAA, \
0x7A656C64, 0x61407372, 0x64343400, 0x39382D31, \
0x302D3231, 0x2030343A, 0x35363A33, 0x31000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
