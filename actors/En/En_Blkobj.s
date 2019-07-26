.section .text
func_80A8EA40:
    sw      a1, 0x0158(a0)             # 00000158
    sh      $zero, 0x0156(a0)          # 00000156
    jr      $ra
    nop


func_80A8EA50:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lui     a1, %hi(var_80A8EEE0)      # a1 = 80A90000
    sw      $zero, 0x0024($sp)
    addiu   a1, a1, %lo(var_80A8EEE0)  # a1 = 80A8EEE0
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lw      a0, 0x0034($sp)
    jal     func_80020640
    lb      a1, 0x0003(s0)             # 00000003
    beq     v0, $zero, lbl_80A8EAB8
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    lui     a1, %hi(func_80A8ECDC)     # a1 = 80A90000
    sh      t6, 0x0154(s0)             # 00000154
    addiu   a1, a1, %lo(func_80A8ECDC) # a1 = 80A8ECDC
    jal     func_80A8EA40
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80A8EAF0
    lw      $ra, 0x001C($sp)
lbl_80A8EAB8:
    addiu   a0, a0, 0x7564             # a0 = 00007564
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lui     a1, %hi(func_80A8EB34)     # a1 = 80A90000
    sw      v0, 0x013C(s0)             # 0000013C
    addiu   a1, a1, %lo(func_80A8EB34) # a1 = 80A8EB34
    jal     func_80A8EA40
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_80A8EAF0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80A8EB00:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A8EB34:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    lwc1    $f4, 0x0090(a0)            # 00000090
    lw      v0, 0x1C44(a1)             # 00001C44
    lui     a1, %hi(func_80A8EB88)     # a1 = 80A90000
    c.lt.s  $f4, $f6
    addiu   a1, a1, %lo(func_80A8EB88) # a1 = 80A8EB88
    bc1fl   lbl_80A8EB70
    lw      t6, 0x0670(v0)             # 00000670
    jal     func_80A8EA40
    sw      v0, 0x001C($sp)
    lw      v0, 0x001C($sp)
    lw      t6, 0x0670(v0)             # 00000670
lbl_80A8EB70:
    lui     $at, 0x0400                # $at = 04000000
    or      t7, t6, $at                # t7 = 04000000
    sw      t7, 0x0670(v0)             # 00000670
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80A8EB88:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    lw      t6, 0x0004(s0)             # 00000004
    andi    t7, t6, 0x0040             # t7 = 00000000
    bnel    t7, $zero, lbl_80A8EBF0
    lw      $ra, 0x0034($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      $zero, 0x0018($sp)
    addiu   a2, $zero, 0x0033          # a2 = 00000033
    swc1    $f6, 0x0014($sp)
    lh      t8, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    jal     func_80025110              # ActorSpawn
    sw      t8, 0x001C($sp)
    lui     a1, %hi(func_80A8EC00)     # a1 = 80A90000
    addiu   a1, a1, %lo(func_80A8EC00) # a1 = 80A8EC00
    jal     func_80A8EA40
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0034($sp)
lbl_80A8EBF0:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80A8EC00:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lh      v0, 0x0156(s0)             # 00000156
    addiu   a0, a3, 0x1C24             # a0 = 00001C24
    addiu   a1, $zero, 0x0033          # a1 = 00000033
    bne     v0, $zero, lbl_80A8EC58
    slti    v1, v0, 0x0065
    addiu   a2, $zero, 0x0009          # a2 = 00000009
    jal     func_80025B0C
    sw      a3, 0x0024($sp)
    bne     v0, $zero, lbl_80A8ECC8
    lw      a3, 0x0024($sp)
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80020658
    lb      a1, 0x0003(s0)             # 00000003
    lh      t6, 0x0156(s0)             # 00000156
    addiu   t7, t6, 0x0001             # t7 = 00000001
    b       lbl_80A8ECC8
    sh      t7, 0x0156(s0)             # 00000156
lbl_80A8EC58:
    xori    v1, v1, 0x0001             # v1 = 00000001
    addiu   t8, v0, 0x0001             # t8 = 00000001
    beq     v1, $zero, lbl_80A8ECC8
    sh      t8, 0x0156(s0)             # 00000156
    lh      v0, 0x0156(s0)             # 00000156
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    or      a0, s0, $zero              # a0 = 00000000
    addiu   v0, v0, 0xFF9C             # v0 = FFFFFF9C
    sra     v0, v0,  2
    slti    $at, v0, 0x0006
    bne     $at, $zero, lbl_80A8EC8C
    lui     a1, %hi(func_80A8ECDC)     # a1 = 80A90000
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_80A8EC8C:
    lh      t9, 0x0154(s0)             # 00000154
    addiu   a1, a1, %lo(func_80A8ECDC) # a1 = 80A8ECDC
    addu    t0, t9, v0
    sh      t0, 0x0154(s0)             # 00000154
    lh      t1, 0x0154(s0)             # 00000154
    slti    $at, t1, 0x0100
    bnel    $at, $zero, lbl_80A8ECCC
    lw      $ra, 0x001C($sp)
    sh      t2, 0x0154(s0)             # 00000154
    jal     func_80A8EA40
    sw      a3, 0x0024($sp)
    lw      a0, 0x0024($sp)
    lw      a2, 0x013C(s0)             # 0000013C
    jal     func_80031638              # DynaPolyInfo_delReserve
    addiu   a1, a0, 0x0810             # a1 = 00000810
lbl_80A8ECC8:
    lw      $ra, 0x001C($sp)
lbl_80A8ECCC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A8ECDC:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80A8ECEC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0158(a0)             # 00000158
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A8ED10:
    sw      a1, 0x0004($sp)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bne     a2, $at, lbl_80A8ED2C
    lw      v0, 0x0000(a0)             # 00000000
    lui     v1, %hi(var_80A8EEF0)      # v1 = 80A90000
    b       lbl_80A8ED34
    addiu   v1, v1, %lo(var_80A8EEF0)  # v1 = 80A8EEF0
lbl_80A8ED2C:
    lui     v1, %hi(var_80A8EF00)      # v1 = 80A90000
    addiu   v1, v1, %lo(var_80A8EF00)  # v1 = 80A8EF00
lbl_80A8ED34:
    lw      a1, 0x02D0(v0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, a1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v0)             # 000002D0
    sw      v1, 0x0004(a1)             # 00000004
    sw      t7, 0x0000(a1)             # 00000000
    lw      a1, 0x02D0(v0)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    andi    t1, a2, 0x00FF             # t1 = 00000000
    addiu   t8, a1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v0)             # 000002D0
    sw      t1, 0x0004(a1)             # 00000004
    sw      t9, 0x0000(a1)             # 00000000
    lw      a1, 0x02D0(v0)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    addiu   t2, a1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(v0)             # 000002D0
    sw      t3, 0x0000(a1)             # 00000000
    lw      t4, 0x0004($sp)
    sw      t4, 0x0004(a1)             # 00000004
    jr      $ra
    nop


func_80A8ED90:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s0, 0x0038($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a0, 0x0060($sp)
    lw      a0, 0x0000(s0)             # 00000000
    jal     func_8007E2C0
    sw      a0, 0x004C($sp)
    lui     a2, 0x0001                 # a2 = 00010000
    addu    a2, a2, s0
    lw      a2, 0x1DE4(a2)             # 00011DE4
    lw      t0, 0x004C($sp)
    lui     t7, 0xDB06                 # t7 = DB060000
    andi    a2, a2, 0x007F             # a2 = 00000000
    lw      v1, 0x02D0(t0)             # 000002D0
    ori     t7, t7, 0x0034             # t7 = DB060034
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(t0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s0)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    sw      t4, 0x0028($sp)
    sw      t3, 0x0024($sp)
    sw      t2, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      $zero, 0x0020($sp)
    sw      a2, 0x001C($sp)
    sw      t8, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0044($sp)
    lw      t1, 0x0044($sp)
    lw      t0, 0x004C($sp)
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(t0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s0)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0040($sp)
    lw      a1, 0x0040($sp)
    lw      v1, 0x0060($sp)
    or      a0, s0, $zero              # a0 = 00000000
    sw      v0, 0x0004(a1)             # 00000004
    lh      a2, 0x0154(v1)             # 00000154
    lui     a1, 0x0600                 # a1 = 06000000
    beql    a2, $zero, lbl_80A8EE84
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    jal     func_80A8ED10
    addiu   a1, a1, 0x14E0             # a1 = 060014E0
    lw      t7, 0x0060($sp)
    lh      a2, 0x0154(t7)             # 00000154
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
lbl_80A8EE84:
    subu    a3, t8, a2
    beq     a3, $zero, lbl_80A8EEA0
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x53D0             # a1 = 060053D0
    jal     func_80A8ED10
    or      a2, a3, $zero              # a2 = 00000000
lbl_80A8EEA0:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80A8EEC0: .word 0x01360600, 0x00000030, 0x01250000, 0x0000015C
.word func_80A8EA50
.word func_80A8EB00
.word func_80A8ECEC
.word func_80A8ED90
var_80A8EEE0: .word 0xC0500001, 0xB0F40320, 0xB0F800C8, 0x30FC012C
var_80A8EEF0: .word 0xE200001C, 0xC8112078, 0xDF000000, 0x00000000
var_80A8EF00: .word 0xE200001C, 0xC81049D8, 0xDF000000, 0x00000000

.section .rodata


