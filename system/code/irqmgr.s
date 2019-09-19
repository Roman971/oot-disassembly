# "Interrupt Request Manager Thread" part of the code file
#
# Handles the "irqmgr" thread.
#
# Starts at VRAM: 800ACE60 / VROM: B22DC0
#

.section .text
func_800ACE60:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
lbl_800ACE68:
    jal     func_80001CCC
    addiu   a0, $zero, 0x03E8          # a0 = 000003E8
    b       lbl_800ACE68
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop


func_800ACE90:
# A0 = Irqmgr Context (8011D968)
# A1 = ?
# A2 = ?
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0028($sp)
    jal     func_80003CC0              # osSetIntMask
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      t6, 0x0028($sp)
    or      a0, v0, $zero              # a0 = 00000000
    sw      t6, 0x0004(s1)             # 00000004
    lw      t7, 0x0248(s0)             # 00000248
    sw      t7, 0x0000(s1)             # 00000000
    jal     func_80003CC0              # osSetIntMask
    sw      s1, 0x0248(s0)             # 00000248
    lbu     v1, 0x024C(s0)             # 0000024C
    addiu   a1, s0, 0x0020             # a1 = 00000020
    or      a2, $zero, $zero           # a2 = 00000000
    blezl   v1, lbl_800ACEF4
    slti    $at, v1, 0x0002
    jal     func_80001E20              # osSendMesg
    lw      a0, 0x0004(s1)             # 00000004
    lbu     v1, 0x024C(s0)             # 0000024C
    slti    $at, v1, 0x0002
lbl_800ACEF4:
    bne     $at, $zero, lbl_800ACF08
    addiu   a1, s0, 0x0040             # a1 = 00000040
    lw      a0, 0x0004(s1)             # 00000004
    jal     func_80001E20              # osSendMesg
    or      a2, $zero, $zero           # a2 = 00000000
lbl_800ACF08:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_800ACF1C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    lw      t6, 0x0020($sp)
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      v1, 0x0248(t6)             # 00000248
    sw      $zero, 0x0018($sp)
    sw      a1, 0x0024($sp)
    jal     func_80003CC0              # osSetIntMask
    sw      v1, 0x001C($sp)
    lw      v1, 0x001C($sp)
    lw      a1, 0x0024($sp)
    lw      a2, 0x0018($sp)
    beq     v1, $zero, lbl_800ACF90
    or      a0, v0, $zero              # a0 = 00000000
lbl_800ACF58:
    bnel    v1, a1, lbl_800ACF84
    or      a2, v1, $zero              # a2 = 00000000
    beq     a2, $zero, lbl_800ACF74
    lw      t9, 0x0020($sp)
    lw      t7, 0x0000(a1)             # 00000000
    b       lbl_800ACF90
    sw      t7, 0x0000(a2)             # 00000000
lbl_800ACF74:
    lw      t8, 0x0000(a1)             # 00000000
    b       lbl_800ACF90
    sw      t8, 0x0248(t9)             # 00000248
    or      a2, v1, $zero              # a2 = 00000000
lbl_800ACF84:
    lw      v1, 0x0000(v1)             # 00000000
    bne     v1, $zero, lbl_800ACF58
    nop
lbl_800ACF90:
    jal     func_80003CC0              # osSetIntMask
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800ACFA8:
# A0 = Irqmgr Context (8011D968)
# A1 = ?
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    lw      s0, 0x0248(a0)             # 00000248
    beql    s0, $zero, lbl_800ACFFC
    lw      $ra, 0x001C($sp)
    lw      a0, 0x0004(s0)             # 00000004
lbl_800ACFCC:
    or      a1, s1, $zero              # a1 = 00000000
    lw      t6, 0x0008(a0)             # 00000008
    lw      t7, 0x0010(a0)             # 00000010
    slt     $at, t6, t7
    beql    $at, $zero, lbl_800ACFF0
    lw      s0, 0x0000(s0)             # 00000000
    jal     func_80001E20              # osSendMesg
    or      a2, $zero, $zero           # a2 = 00000000
    lw      s0, 0x0000(s0)             # 00000000
lbl_800ACFF0:
    bnel    s0, $zero, lbl_800ACFCC
    lw      a0, 0x0004(s0)             # 00000004
    lw      $ra, 0x001C($sp)
lbl_800ACFFC:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_800AD00C:
# A0 = Irqmgr Context (8011D968)
# A1 = Irqmgr Context (8011D968) + 0x20
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    lw      s0, 0x0248(a0)             # 00000248
    beql    s0, $zero, lbl_800AD060
    lw      $ra, 0x001C($sp)
    lw      a0, 0x0004(s0)             # 00000004
lbl_800AD030:
    or      a1, s1, $zero              # a1 = 00000000
    lw      t6, 0x0008(a0)             # 00000008
    lw      t7, 0x0010(a0)             # 00000010
    slt     $at, t6, t7
    beql    $at, $zero, lbl_800AD054
    lw      s0, 0x0000(s0)             # 00000000
    jal     func_80001E20              # osSendMesg
    or      a2, $zero, $zero           # a2 = 00000000
    lw      s0, 0x0000(s0)             # 00000000
lbl_800AD054:
    bnel    s0, $zero, lbl_800AD030
    lw      a0, 0x0004(s0)             # 00000004
    lw      $ra, 0x001C($sp)
lbl_800AD060:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_800AD070:
# A0 = Irqmgr Context (8011D968)
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0xEE50             # t7 = 800FEE50
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0000(t7)             # 800FEE50
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    jal     func_800048C0              # osGetTime
    sb      t8, 0x024C(s0)             # 0000024C
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0xEE58             # t9 = 800FEE58
    sw      v0, 0x0250(s0)             # 00000250
    sw      v1, 0x0254(s0)             # 00000254
    sw      v0, 0x0000(t9)             # 800FEE58
    sw      v1, 0x0004(t9)             # 800FEE5C
    lui     a3, 0x0165                 # a3 = 01650000
    addiu   t0, $zero, 0x0000          # t0 = 00000000
    addiu   t1, $zero, 0x0000          # t1 = 00000000
    addiu   t2, s0, 0x0060             # t2 = 00000060
    addiu   t3, $zero, 0x029E          # t3 = 0000029E
    sw      t3, 0x001C($sp)
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    ori     a3, a3, 0xA0BC             # a3 = 0165A0BC
    addiu   a0, s0, 0x0258             # a0 = 00000258
    jal     func_80005A70              # osSetTimer
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800AD00C
    addiu   a1, s0, 0x0020             # a1 = 00000020
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_800AD108:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_8000198C
    or      a0, $zero, $zero           # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AD128:
# A0 = Irqmgr Context (8011D968)
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0xEE50             # t7 = 800FEE50
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0000(t7)             # 800FEE50
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sb      t8, 0x024C(s0)             # 0000024C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800ACFA8
    addiu   a1, s0, 0x0040             # a1 = 00000040
    jal     func_800D0DD0              # osAfterPreNMI
    nop
    beq     v0, $zero, lbl_800AD198
    addiu   a0, s0, 0x0258             # a0 = 00000258
    addiu   t0, $zero, 0x0000          # t0 = 00000000
    addiu   t1, $zero, 0x0000          # t1 = 00000000
    addiu   t9, s0, 0x0060             # t9 = 00000060
    addiu   t2, $zero, 0x029E          # t2 = 0000029E
    sw      t2, 0x001C($sp)
    sw      t9, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_80005A70              # osSetTimer
    ori     a3, $zero, 0xB71B          # a3 = 0000B71B
lbl_800AD198:
    jal     func_800AD108
    nop
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_800AD1B4:
# A0 = Irqmgr Context (8011D968)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0xEE60             # t6 = 800FEE60
    lw      t8, 0x0000(t6)             # 800FEE60
    lw      t9, 0x0004(t6)             # 800FEE64
    bne     t8, $zero, lbl_800AD240
    nop
    bne     t9, $zero, lbl_800AD240
    nop
    lw      t0, 0x0278(a0)             # 00000278
    lw      t1, 0x027C(a0)             # 0000027C
    bne     t0, $zero, lbl_800AD20C
    nop
    bne     t1, $zero, lbl_800AD20C
    nop
    jal     func_800048C0              # osGetTime
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    sw      v0, 0x0278(a0)             # 00000278
    b       lbl_800AD240
    sw      v1, 0x027C(a0)             # 0000027C
lbl_800AD20C:
    jal     func_800048C0              # osGetTime
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0xEE60             # t7 = 800FEE60
    lw      t2, 0x0278(a0)             # 00000278
    lw      t3, 0x027C(a0)             # 0000027C
    subu    t4, v0, t2
    sltu    $at, v1, t3
    subu    t4, t4, $at
    sw      t4, 0x0000(t7)             # 800FEE60
    subu    t5, v1, t3
    sw      t5, 0x0004(t7)             # 800FEE64
lbl_800AD240:
    lui     v0, 0x8010                 # v0 = 80100000
    addiu   v0, v0, 0xEE68             # v0 = 800FEE68
    lw      t6, 0x0000(v0)             # 800FEE68
    or      a1, a0, $zero              # a1 = 00000000
    addiu   t8, t6, 0x0001             # t8 = 00000001
    jal     func_800ACFA8
    sw      t8, 0x0000(v0)             # 800FEE68
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AD26C:
# irqmgr thread entrypoint
# A0 = Irqmgr Context (8011D968)
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      $zero, 0x004C($sp)
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s6, s0, 0x0060             # s6 = 00000060
    addiu   s5, $zero, 0x029E          # s5 = 0000029E
    addiu   s4, $zero, 0x029D          # s4 = 0000029D
    addiu   s3, $zero, 0x029A          # s3 = 0000029A
    addiu   s2, $sp, 0x004C            # s2 = FFFFFFFC
    or      a0, s6, $zero              # a0 = 00000060
lbl_800AD2B4:
    or      a1, s2, $zero              # a1 = FFFFFFFC
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t6, 0x004C($sp)
    beq     t6, s3, lbl_800AD2E4
    nop
    beq     t6, s4, lbl_800AD2F4
    nop
    beq     t6, s5, lbl_800AD304
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_800AD30C
    nop
lbl_800AD2E4:
    jal     func_800AD1B4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_800AD30C
    nop
lbl_800AD2F4:
    jal     func_800AD070
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_800AD30C
    nop
lbl_800AD304:
    jal     func_800AD128
    addiu   s1, $zero, 0x0001          # s1 = 00000001
lbl_800AD30C:
    beql    s1, $zero, lbl_800AD2B4
    or      a0, s6, $zero              # a0 = 00000060
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


func_800AD33C:
# Initializes irqmgr thread and context
# A0 = Irqmgr Context (8011D968)
# A1 = void* stack start address
# A2 = OSPri thread priority
# A3 = u8 ?
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    addiu   t0, $zero, 0x0000          # t0 = 00000000
    addiu   t1, $zero, 0x0000          # t1 = 00000000
    sw      $zero, 0x0248(s0)          # 00000248
    sh      t6, 0x0000(s0)             # 00000000
    sh      t7, 0x0020(s0)             # 00000020
    sh      t8, 0x0040(s0)             # 00000040
    sb      $zero, 0x024C(s0)          # 0000024C
    sw      t1, 0x0254(s0)             # 00000254
    sw      t0, 0x0250(s0)             # 00000250
    addiu   a0, s0, 0x0060             # a0 = 00000060
    sw      a0, 0x002C($sp)
    addiu   a1, s0, 0x0078             # a1 = 00000078
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addiu   a0, $zero, 0x000E          # a0 = 0000000E
    lw      a1, 0x002C($sp)
    jal     func_80003FB0              # osSetEventMesg
    addiu   a2, $zero, 0x029D          # a2 = 0000029D
    lw      a0, 0x002C($sp)
    addiu   a1, $zero, 0x029A          # a1 = 0000029A
    jal     func_800D3000              # osViSetEvent
    lbu     a2, 0x003F($sp)
    lw      t9, 0x0034($sp)
    lw      t2, 0x0038($sp)
    addiu   a0, s0, 0x0098             # a0 = 00000098
    lui     a2, 0x800B                 # a2 = 800B0000
    addiu   a2, a2, 0xD26C             # a2 = 800AD26C
    sw      a0, 0x002C($sp)
    addiu   a1, $zero, 0x0013          # a1 = 00000013
    or      a3, s0, $zero              # a3 = 00000000
    sw      t9, 0x0010($sp)
    jal     func_80002F20              # osCreateThread
    sw      t2, 0x0014($sp)
    jal     func_80005EC0              # osStartThread
    lw      a0, 0x002C($sp)
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop
    nop
    nop
    nop
