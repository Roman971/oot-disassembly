.section .text
func_80909410:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800206E8
    addiu   a1, $zero, 0x001F          # a1 = 0000001F
    beq     v0, $zero, lbl_80909444
    lw      a0, 0x0018($sp)
    jal     func_80020EB4
    lw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_80909470
    lw      $ra, 0x0014($sp)
lbl_80909444:
    lui     a1, %hi(var_809097B0)      # a1 = 80910000
    jal     func_80063F7C
    addiu   a1, a1, %lo(var_809097B0)  # a1 = 809097B0
    lw      a0, 0x0018($sp)
    lui     a3, 0x3F4C                 # a3 = 3F4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3F4CCCCD
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8001EC20
    addiu   a0, a0, 0x00B4             # a0 = 000000B4
    lw      $ra, 0x0014($sp)
lbl_80909470:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8090947C:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_8090948C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80909534
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
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022BB0
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80909504
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002071C
    addiu   a1, $zero, 0x001F          # a1 = 0000001F
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80909524
    lw      $ra, 0x0024($sp)
lbl_80909504:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f4                   # $f4 = 40.00
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x004F          # a2 = 0000004F
    lui     a3, 0x41F0                 # a3 = 41F00000
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
    lw      $ra, 0x0024($sp)
lbl_80909524:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80909534:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x0154(s0)             # 00000154
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0154(s0)             # 00000154
    lh      a0, 0x0154(s0)             # 00000154
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  5
    addu    a0, a0, $at
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  2
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    mul.s   $f6, $f0, $f4
    lwc1    $f16, 0x000C(s0)           # 0000000C
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a3, 0x0148(s0)             # 00000148
    add.s   $f10, $f6, $f8
    add.s   $f18, $f16, $f10
    mfc1    a1, $f18
    jal     func_80064280
    nop
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    addiu   a0, s0, 0x0148             # a0 = 00000148
    lui     a1, 0x4000                 # a1 = 40000000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      t8, 0x00B6(s0)             # 000000B6
    lui     a1, 0x3ECC                 # a1 = 3ECC0000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3C23                 # a3 = 3C230000
    addiu   t9, t8, 0x0400             # t9 = 00000400
    sh      t9, 0x00B6(s0)             # 000000B6
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    ori     a1, a1, 0xCCCD             # a1 = 3ECCCCCD
    jal     func_80064280
    addiu   a0, s0, 0x0050             # a0 = 00000050
    lwc1    $f0, 0x0050(s0)            # 00000050
    swc1    $f0, 0x0058(s0)            # 00000058
    swc1    $f0, 0x0054(s0)            # 00000054
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80909620:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    lw      v0, 0x1C6C(a1)             # 00001C6C
    lw      a3, 0x0000(a1)             # 00000000
    addiu   v1, $zero, 0x005D          # v1 = 0000005D
    beq     v0, $zero, lbl_8090967C
    or      s0, a3, $zero              # s0 = 00000000
    lh      t6, 0x0000(v0)             # 00000000
lbl_80909648:
    bnel    v1, t6, lbl_80909674
    lw      v0, 0x0124(v0)             # 00000124
    lwc1    $f4, 0x00EC(a0)            # 000000EC
    lwc1    $f6, 0x00EC(v0)            # 000000EC
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80909674
    lw      v0, 0x0124(v0)             # 00000124
    beq     $zero, $zero, lbl_8090967C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      v0, 0x0124(v0)             # 00000124
lbl_80909674:
    bnel    v0, $zero, lbl_80909648
    lh      t6, 0x0000(v0)             # 00000000
lbl_8090967C:
    beq     a2, $zero, lbl_80909704
    or      a0, a3, $zero              # a0 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8007E2C0
    sw      a1, 0x004C($sp)
    lw      a1, 0x004C($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(a1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0030($sp)
    lw      a2, 0x0030($sp)
    lui     a3, 0xDE00                 # a3 = DE000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t0, 0x0600                 # t0 = 06000000
    addiu   t0, t0, 0x1290             # t0 = 06001290
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0004(v1)             # 00000004
    sw      a3, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   t2, t2, 0x1470             # t2 = 06001470
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0004(v1)             # 00000004
    sw      a3, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_8090977C
    lw      $ra, 0x001C($sp)
lbl_80909704:
    jal     func_8007E298
    sw      a1, 0x004C($sp)
    lw      a1, 0x004C($sp)
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(a1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0024($sp)
    lw      a2, 0x0024($sp)
    lui     a3, 0xDE00                 # a3 = DE000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x1290             # t6 = 06001290
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0004(v1)             # 00000004
    sw      a3, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x1470             # t8 = 06001470
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0004(v1)             # 00000004
    sw      a3, 0x0000(v1)             # 00000000
    lw      $ra, 0x001C($sp)
lbl_8090977C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop
    nop

.section .data

var_80909790: .word 0x005F0800, 0x00000000, 0x00BD0000, 0x0000015C
.word func_80909410
.word func_8090947C
.word func_8090948C
.word func_80909620
var_809097B0: .word 0xC8500000, 0xB0F40FA0, 0xB0F80320, 0x30FC0320

.section .rodata


