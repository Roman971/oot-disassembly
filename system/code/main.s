# "Main Thread" part of the code file
#
# Handles the "main" thread.
#
# Starts at VRAM: 800A1C50 / VROM: B17BB0
#

.section .text
func_800A1C50:
# void mainproc(s32 arg)
# main thread extended entrypoint
# Initializes various threads/stacks
# A0 = s32 argument passed to graph thread entrypoint (normally 0)
    addiu   $sp, $sp, 0xFEC0           # $sp -= 0x140
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xD2A0             # v0 = 8011D2A0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0140($sp)
    addiu   t6, $zero, 0x0140          # t6 = 00000140
    lui     $at, 0x8010                # $at = 80100000
    sw      t6, -0x1B00($at)           # 800FE500
    lui     $at, 0x8010                # $at = 80100000
    addiu   t7, $zero, 0x00F0          # t7 = 000000F0
    lui     t8, 0x8000                 # t8 = 80000000
    sw      t7, -0x1AFC($at)           # 800FE504
    addiu   a0, t8, 0x031C             # a0 = 8000031C
    jal     func_80067440
    sw      a0, 0x0000(v0)             # 8011D2A0
    jal     func_800AF45C
    nop
    jal     func_800AD410
    nop
    lui     t9, 0x8012                 # t9 = 80120000
    lbu     t9, 0x1211(t9)             # 80121211
    beq     t9, $zero, lbl_800A1CC4
    lui     t0, 0x801E                 # t0 = 801E0000
    addiu   t0, t0, 0x7810             # t0 = 801E7810
    sw      t0, 0x002C($sp)
    jal     func_800A42F0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    b       lbl_800A1CE0
    nop
lbl_800A1CC4:
    jal     func_800AD488
    nop
    lui     t1, 0x801C                 # t1 = 801C0000
    addiu   t1, t1, 0x6E60             # t1 = 801C6E60
    sw      t1, 0x002C($sp)
    jal     func_800A42F0
    or      a0, $zero, $zero           # a0 = 00000000
lbl_800A1CE0:
    jal     func_800A43D8
    or      a0, $zero, $zero           # a0 = 00000000
    lw      t2, 0x002C($sp)
    lui     v1, 0x8010                 # v1 = 80100000
    addiu   v1, v1, 0xE508             # v1 = 800FE508
    subu    a1, v0, t2
    sw      a1, 0x0000(v1)             # 800FE508
    jal     func_800CD390
    lw      a0, 0x002C($sp)
    jal     func_80051B50
    nop
    lui     t4, 0x8012                 # t4 = 80120000
    lw      t4, -0x4600(t4)            # 8011BA00
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0x0F28             # a1 = 80120F28
    addiu   a0, a0, 0x0F10             # a0 = 80120F10
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80004220              # osCreateMesgQueue
    sh      $zero, 0x00D4(t4)          # 801200D4
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0x0F10             # a1 = 80120F10
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    jal     func_80003FB0              # osSetEventMesg
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a0, $sp, 0x0120            # a0 = FFFFFFE0
    addiu   a1, $sp, 0x0030            # a1 = FFFFFEF0
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x003C          # a2 = 0000003C
    lui     t6, 0x8011                 # t6 = 80110000
    addiu   t6, t6, 0x8DF0             # t6 = 80108DF0
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   t5, $zero, 0x0100          # t5 = 00000100
    sw      t5, 0x0010($sp)
    addiu   a2, a2, 0x0B98             # a2 = 80120B98
    addiu   a1, a1, 0x0698             # a1 = 80120698
    addiu   a0, a0, 0x0C18             # a0 = 80120C18
    sw      t6, 0x0014($sp)
    jal     func_80001890              # __osInitStack
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0x0B98             # a1 = 80120B98
    addiu   a0, a0, 0xD968             # a0 = 8011D968
    addiu   a2, $zero, 0x0011          # a2 = 00000011
    jal     func_800AD33C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     t8, 0x8011                 # t8 = 80110000
    addiu   t8, t8, 0x8DF8             # t8 = 80108DF8
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   t7, $zero, 0x0100          # t7 = 00000100
    sw      t7, 0x0010($sp)
    addiu   a2, a2, 0xF998             # a2 = 8011F998
    addiu   a1, a1, 0xF598             # a1 = 8011F598
    addiu   a0, a0, 0x0BB8             # a0 = 80120BB8
    sw      t8, 0x0014($sp)
    jal     func_80001890              # __osInitStack
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xD968             # t0 = 8011D968
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a3, 0x8000                 # a3 = 80000000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0010($sp)
    lbu     a3, 0x6230(a3)             # 80006230
    addiu   a1, a1, 0xF998             # a1 = 8011F998
    addiu   a0, a0, 0xD2A8             # a0 = 8011D2A8
    sw      t0, 0x0014($sp)
    jal     func_800A37D0
    addiu   a2, $zero, 0x000F          # a2 = 0000000F
    jal     func_80001438
    nop
    jal     func_80001490
    nop
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xD968             # a0 = 8011D968
    addiu   a1, $sp, 0x0138            # a1 = FFFFFFF8
    jal     func_800ACE90
    addiu   a2, $sp, 0x0120            # a2 = FFFFFFE0
    lui     t2, 0x8011                 # t2 = 80110000
    addiu   t2, t2, 0x8E00             # t2 = 80108E00
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   t1, $zero, 0x0100          # t1 = 00000100
    sw      t1, 0x0010($sp)
    addiu   a2, a2, 0x0198             # a2 = 80120198
    addiu   a1, a1, 0xF998             # a1 = 8011F998
    addiu   a0, a0, 0x0BD8             # a0 = 80120BD8
    sw      t2, 0x0014($sp)
    jal     func_80001890              # __osInitStack
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t3, 0x8012                 # t3 = 80120000
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t4, t4, 0xD968             # t4 = 8011D968
    addiu   t3, t3, 0xD2A8             # t3 = 8011D2A8
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0x0198             # a1 = 80120198
    addiu   a0, a0, 0x0C78             # a0 = 80120C78
    sw      t3, 0x0010($sp)
    sw      t4, 0x0014($sp)
    addiu   a2, $zero, 0x000C          # a2 = 0000000C
    jal     func_800A0620
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    lui     t6, 0x8011                 # t6 = 80110000
    addiu   t6, t6, 0x8E08             # t6 = 80108E08
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   t5, $zero, 0x0100          # t5 = 00000100
    sw      t5, 0x0010($sp)
    addiu   a2, a2, 0x0698             # a2 = 80120698
    addiu   a1, a1, 0x0198             # a1 = 80120198
    addiu   a0, a0, 0x0BF8             # a0 = 80120BF8
    sw      t6, 0x0014($sp)
    jal     func_80001890              # __osInitStack
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   t8, t8, 0x0698             # t8 = 80120698
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   t7, $zero, 0x000E          # t7 = 0000000E
    sw      t7, 0x0010($sp)
    addiu   a2, a2, 0xD968             # a2 = 8011D968
    addiu   a1, a1, 0x0F10             # a1 = 80120F10
    addiu   a0, a0, 0xD500             # a0 = 8011D500
    sw      t8, 0x0014($sp)
    jal     func_800A2A14
    addiu   a3, $zero, 0x0007          # a3 = 00000007
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_800A05F4
    addiu   a0, a0, 0x0C78             # a0 = 80120C78
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   t0, t0, 0x8E10             # t0 = 80108E10
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   t9, $zero, 0x0100          # t9 = 00000100
    sw      t9, 0x0010($sp)
    addiu   a2, a2, 0xF598             # a2 = 8011F598
    addiu   a1, a1, 0xDD98             # a1 = 8011DD98
    addiu   a0, a0, 0x0B98             # a0 = 80120B98
    sw      t0, 0x0014($sp)
    jal     func_80001890              # __osInitStack
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0xF598             # t1 = 8011F598
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a2, 0x800A                 # a2 = 800A0000
    addiu   t2, $zero, 0x000B          # t2 = 0000000B
    sw      t2, 0x0014($sp)
    addiu   a2, a2, 0x1934             # a2 = 800A1934
    addiu   a0, a0, 0xDBE8             # a0 = 8011DBE8
    sw      t1, 0x0010($sp)
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_80002F20              # osCreateThread
    lw      a3, 0x0140($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_80005EC0              # osStartThread
    addiu   a0, a0, 0xDBE8             # a0 = 8011DBE8
    sw      $zero, 0x0024($sp)
lbl_800A1F80:
    addiu   a0, $sp, 0x0120            # a0 = FFFFFFE0
    addiu   a1, $sp, 0x0024            # a1 = FFFFFEE4
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t3, 0x0024($sp)
    lw      t4, 0x0024($sp)
    beq     t3, $zero, lbl_800A1FCC
    nop
    lh      t5, 0x0000(t4)             # 00000000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    t5, $at, lbl_800A1F80
    sw      $zero, 0x0024($sp)
    jal     func_8000198C
    or      a0, $zero, $zero           # a0 = 00000000
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_800674B8
    lw      a0, -0x2D60(a0)            # 8011D2A0
    b       lbl_800A1F80
    sw      $zero, 0x0024($sp)
lbl_800A1FCC:
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_80002D70              # osDestroyThread
    addiu   a0, a0, 0xDBE8             # a0 = 8011DBE8
    jal     func_800CC8B8
    nop
    jal     func_8000146C
    nop
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0140           # $sp += 0x140
    jr      $ra
    nop
    nop
    nop
