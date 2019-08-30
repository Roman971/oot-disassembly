# "Audio Thread" part of the code file
#
# Handles the "audio" thread.
#
# Starts at VRAM: 800A02E0 / VROM: B16240
#

.section .text
func_800A02E0:
# A0 = Audio Context (80120C78)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0070(a0)             # 00000070
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t6, 0x0040(v0)             # 00000040
    beql    t6, $zero, lbl_800A030C
    lw      $ra, 0x0014($sp)
    jal     func_80001E20              # osSendMesg
    lw      a0, 0x0040(v0)             # 00000040
    lw      $ra, 0x0014($sp)
lbl_800A030C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A0318:
# A0 = Audio Context (80120C78)
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    or      t2, s0, $zero              # t2 = 00000000
    lh      t7, 0x00FC(t6)             # 801200FC
    addiu   t4, s0, 0x00AC             # t4 = 000000AC
    blezl   t7, lbl_800A0350
    lw      v0, 0x0070(s0)             # 00000070
    sw      $zero, 0x0070(s0)          # 00000070
    lw      v0, 0x0070(s0)             # 00000070
lbl_800A0350:
    beq     v0, $zero, lbl_800A03B8
    or      t1, v0, $zero              # t1 = 00000000
    sw      $zero, 0x0008(s0)          # 00000008
    sw      t8, 0x0010(s0)             # 00000010
    sw      $zero, 0x0014(s0)          # 00000014
    addiu   t3, v0, 0x003C             # t3 = 0000003C
lbl_800A0368:
    lw      t0, 0x0000(t1)             # 00000000
    addiu   t1, t1, 0x000C             # t1 = 0000000C
    addiu   t2, t2, 0x000C             # t2 = 0000000C
    sw      t0, 0x000C(t2)             # 00000018
    lw      t9, -0x0008(t1)            # 00000004
    sw      t9, 0x0010(t2)             # 0000001C
    lw      t0, -0x0004(t1)            # 00000008
    bne     t1, t3, lbl_800A0368
    sw      t0, 0x0014(t2)             # 00000020
    lw      t0, 0x0000(t1)             # 0000000C
    addiu   a1, s0, 0x0008             # a1 = 00000008
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sw      t0, 0x0018(t2)             # 00000024
    lw      a0, 0x0004(s0)             # 00000004
    sw      t4, 0x0058(s0)             # 00000058
    sw      $zero, 0x005C(s0)          # 0000005C
    jal     func_80001E20              # osSendMesg
    addiu   a0, a0, 0x0038             # a0 = 00000038
    jal     func_800A3644
    lw      a0, 0x0004(s0)             # 00000004
lbl_800A03B8:
    jal     func_800048C0              # osGetTime
    nop
    lui     t5, 0x8012                 # t5 = 80120000
    addiu   t5, t5, 0x0F90             # t5 = 80120F90
    sw      v0, 0x0000(t5)             # 80120F90
    sw      v1, 0x0004(t5)             # 80120F94
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lh      t7, 0x00FC(t6)             # 801200FC
    slti    $at, t7, 0x0002
    bne     $at, $zero, lbl_800A03F0
    nop
    b       lbl_800A03FC
    sw      $zero, 0x0024($sp)
lbl_800A03F0:
    jal     func_800BA5A0
    nop
    sw      v0, 0x0024($sp)
lbl_800A03FC:
    jal     func_800048C0              # osGetTime
    nop
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   t8, t8, 0x0F90             # t8 = 80120F90
    lw      t2, 0x0000(t8)             # 80120F90
    lw      t3, 0x0004(t8)             # 80120F94
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   t9, t9, 0x0F98             # t9 = 80120F98
    lw      t4, 0x0000(t9)             # 80120F98
    lw      t5, 0x0004(t9)             # 80120F9C
    subu    t0, v0, t2
    sltu    $at, v1, t3
    subu    t1, v1, t3
    subu    t0, t0, $at
    addu    t7, t1, t5
    sltu    $at, t7, t5
    addu    t6, $at, t0
    lui     $at, 0x8012                # $at = 80120000
    addu    t6, t6, t4
    sw      t6, 0x0F98($at)            # 80120F98
    lui     $at, 0x8012                # $at = 80120000
    sw      t7, 0x0F9C($at)            # 80120F9C
    addiu   t2, $zero, 0x0000          # t2 = 00000000
    sw      t2, 0x0000(t8)             # 80120F90
    addiu   t3, $zero, 0x0000          # t3 = 00000000
    sw      t3, 0x0004(t8)             # 80120F94
    lw      t9, 0x0070(s0)             # 00000070
    addiu   a0, s0, 0x00AC             # a0 = 000000AC
    or      a1, $zero, $zero           # a1 = 00000000
    beql    t9, $zero, lbl_800A048C
    lw      t0, 0x0024($sp)
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_800A02E0
    or      a0, s0, $zero              # a0 = 00000000
    lw      t0, 0x0024($sp)
lbl_800A048C:
    sw      t0, 0x0070(s0)             # 00000070
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_800A04A0:
# A0 = Audio Context (80120C78)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_800C7934
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A04C4:
# audio thread entrypoint
# A0 = Audio Context (80120C78)
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s5, 0x0028($sp)
    sw      s4, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    or      s5, s0, $zero              # s5 = 00000000
    jal     func_800C7DD4
    sw      $zero, 0x0038($sp)
    lui     a0, 0x8000                 # a0 = 80000000
    jal     func_800B85DC
    addiu   a0, a0, 0x09E0             # a0 = 800009E0
    jal     func_800C7DF8
    nop
    addiu   a0, s0, 0x00C8             # a0 = 000000C8
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80001E20              # osSendMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   s4, s0, 0x0074             # s4 = 00000074
    or      a2, s4, $zero              # a2 = 00000074
    lw      a0, 0x0000(s0)             # 00000000
    jal     func_800ACE90
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFF4
    addiu   s3, $zero, 0x0004          # s3 = 00000004
    addiu   s2, $zero, 0x0001          # s2 = 00000001
    addiu   s1, $sp, 0x0038            # s1 = FFFFFFF0
    or      a0, s4, $zero              # a0 = 00000074
lbl_800A053C:
    or      a1, s1, $zero              # a1 = FFFFFFF0
    jal     func_80002030              # osRecvMesg
    or      a2, s2, $zero              # a2 = 00000001
    lw      t6, 0x0038($sp)
    lh      v0, 0x0000(t6)             # 00000000
    beq     v0, s2, lbl_800A0568
    nop
    beq     v0, s3, lbl_800A05C0
    nop
    b       lbl_800A053C
    or      a0, s4, $zero              # a0 = 00000074
lbl_800A0568:
    jal     func_800A0318
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x007C(s0)             # 0000007C
    beql    t7, $zero, lbl_800A053C
    or      a0, s4, $zero              # a0 = 00000074
    or      a0, s4, $zero              # a0 = 00000074
lbl_800A0580:
    or      a1, s1, $zero              # a1 = FFFFFFF0
    jal     func_80002030              # osRecvMesg
    or      a2, s2, $zero              # a2 = 00000001
    lw      t8, 0x0038($sp)
    lh      v0, 0x0000(t8)             # 00000000
    beql    v0, s2, lbl_800A05B0
    lw      t9, 0x007C(s5)             # 0000007C
    bnel    v0, s3, lbl_800A05B0
    lw      t9, 0x007C(s5)             # 0000007C
    jal     func_800A04A0
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x007C(s5)             # 0000007C
lbl_800A05B0:
    bnel    t9, $zero, lbl_800A0580
    or      a0, s4, $zero              # a0 = 00000074
    b       lbl_800A053C
    or      a0, s4, $zero              # a0 = 00000074
lbl_800A05C0:
    jal     func_800A04A0
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_800A053C
    or      a0, s4, $zero              # a0 = 00000074
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_800A05F4:
# Pulls an empty message from AC + 0xC8 message queue
# Seems to be used to wait until the audio thread is started
# The corresponding message is put on the queue at some point during the audio thread entrypoint
# A0 = Audio Context (80120C78)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x00C8             # a0 = 000000C8
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A0620:
# Initializes audio thread and context
# A0 = Audio Context (80120C78)
# A1 = void* stack start address
# A2 = OSPri thread priority
# A3 = OSId thread ID
# SP+0x10 = Sched Context (8011D2A8)
# SP+0x14 = Irqmgr Context (8011D968)
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0298          # a1 = 00000298
    lw      t6, 0x0040($sp)
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t6, 0x0004(s0)             # 00000004
    lw      t7, 0x0044($sp)
    sw      $zero, 0x0070(s0)          # 00000070
    addiu   a0, s0, 0x00AC             # a0 = 000000AC
    sw      t7, 0x0000(s0)             # 00000000
    lw      t9, -0x4600(t9)            # 8011BA00
    addiu   a1, s0, 0x00C4             # a1 = 000000C4
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sh      t8, 0x00FC(t9)             # 801200FC
    jal     func_80004220              # osCreateMesgQueue
    sw      a0, 0x002C($sp)
    addiu   a0, s0, 0x0074             # a0 = 00000074
    addiu   a1, s0, 0x008C             # a1 = 0000008C
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addiu   a0, s0, 0x00C8             # a0 = 000000C8
    addiu   a1, s0, 0x00E0             # a1 = 000000E0
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x002C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80001E20              # osSendMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t0, 0x0034($sp)
    lw      t1, 0x0038($sp)
    addiu   a0, s0, 0x00E8             # a0 = 000000E8
    lui     a2, 0x800A                 # a2 = 800A0000
    addiu   a2, a2, 0x04C4             # a2 = 800A04C4
    sw      a0, 0x002C($sp)
    lw      a1, 0x003C($sp)
    or      a3, s0, $zero              # a3 = 00000000
    sw      t0, 0x0010($sp)
    jal     func_80002F20              # osCreateThread
    sw      t1, 0x0014($sp)
    jal     func_80005EC0              # osStartThread
    lw      a0, 0x002C($sp)
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop
    nop
    nop
