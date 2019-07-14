# "L Map (Minimap) Markers" part of the code file
#
# Handles the minimap markers/icons.
#
# General Documentation about maps:
# https://wiki.cloudmodding.com/oot/Maps
#
# Starts at VRAM: 800E1BF0 / VROM: B57B50
#

.section .text
func_800E1BF0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_8006C2CC
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800E1C10:
# Initializes data related to the HUD, called on every scene load
# ROM: icon_item_static, do_action_static, parameter_static
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    sh      $zero, 0x1422(t0)          # 8011B9F2
    sh      $zero, 0x13EA(t0)          # 8011B9BA
    sh      $zero, 0x13E8(t0)          # 8011B9B8
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    s0, a2, $at
    lw      a1, 0x0000(a2)             # 00000000
    sw      a2, 0x0050($sp)
    jal     func_80091858
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x01FC(s0)          # 000001FC
    lbu     v1, 0x01FD(s0)             # 000001FD
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    sh      v0, 0x01EE(s0)             # 000001EE
    sh      v0, 0x01EC(s0)             # 000001EC
    sh      $zero, 0x01F0(s0)          # 000001F0
    sh      $zero, 0x022E(s0)          # 0000022E
    sh      t7, 0x0230(s0)             # 00000230
    lui     t8, 0x8012                 # t8 = 80120000
    sb      v1, 0x0261(s0)             # 00000261
    sh      v1, 0x01FA(s0)             # 000001FA
    swc1    $f4, 0x01F4(s0)            # 000001F4
    lw      t8, -0x4600(t8)            # 8011BA00
    lui     a3, 0x01A4                 # a3 = 01A40000
    lui     t1, 0x01A4                 # t1 = 01A40000
    lh      t9, 0x0B52(t8)             # 80120B52
    sh      $zero, 0x0252(s0)          # 00000252
    lh      a2, 0x0252(s0)             # 00000252
    sh      $zero, 0x0254(s0)          # 00000254
    sb      $zero, 0x0260(s0)          # 00000260
    sh      t9, 0x0228(s0)             # 00000228
    sh      a2, 0x0256(s0)             # 00000256
    sh      a2, 0x0250(s0)             # 00000250
    sh      a2, 0x024E(s0)             # 0000024E
    sh      a2, 0x024C(s0)             # 0000024C
    sh      a2, 0x024A(s0)             # 0000024A
    sh      a2, 0x0248(s0)             # 00000248
    sh      a2, 0x0246(s0)             # 00000246
    sh      a2, 0x0244(s0)             # 00000244
    lw      a0, 0x0050($sp)
    addiu   t1, t1, 0xFB00             # t1 = 01A3FB00
    addiu   a3, a3, 0xC000             # a3 = 01A3C000
    subu    a1, t1, a3
    addiu   a0, a0, 0x0074             # a0 = 00000074
    sw      a0, 0x0024($sp)
    sw      a1, 0x0028($sp)
    jal     func_800A01B8
    sw      a3, 0x002C($sp)
    lw      a1, 0x002C($sp)
    sw      v0, 0x0130(s0)             # 00000130
    lw      a2, 0x0028($sp)
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lw      a0, 0x0024($sp)
    jal     func_800A01B8
    addiu   a1, $zero, 0x0480          # a1 = 00000480
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    sw      v0, 0x0134(s0)             # 00000134
    lbu     t2, 0x1409(t0)             # 8011B9D9
    lui     v1, 0x008E                 # v1 = 008E0000
    addiu   v1, v1, 0x0000             # v1 = 008E0000
    bne     t2, $zero, lbl_800E1D38
    addiu   a2, $zero, 0x0300          # a2 = 00000300
    beq     $zero, $zero, lbl_800E1D3C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800E1D38:
    addiu   v0, $zero, 0x2B80          # v0 = 00002B80
lbl_800E1D3C:
    lw      a0, 0x0134(s0)             # 00000134
    sw      v1, 0x002C($sp)
    jal     func_80000DF0
    addu    a1, v1, v0
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lbu     t3, 0x1409(t0)             # 8011B9D9
    lw      v1, 0x002C($sp)
    addiu   a2, $zero, 0x0180          # a2 = 00000180
    bnel    t3, $zero, lbl_800E1D74
    addiu   v0, $zero, 0x3000          # v0 = 00003000
    beq     $zero, $zero, lbl_800E1D74
    addiu   v0, $zero, 0x0480          # v0 = 00000480
    addiu   v0, $zero, 0x3000          # v0 = 00003000
lbl_800E1D74:
    lw      a0, 0x0134(s0)             # 00000134
    addu    a1, v1, v0
    jal     func_80000DF0
    addiu   a0, a0, 0x0300             # a0 = 00000300
    lw      a0, 0x0024($sp)
    jal     func_800A01B8
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    sw      v0, 0x0138(s0)             # 00000138
    lbu     v1, 0x0068(t0)             # 8011A638
    or      a0, v0, $zero              # a0 = 00000000
    lui     t5, 0x007C                 # t5 = 007C0000
    slti    $at, v1, 0x00F0
    beq     $at, $zero, lbl_800E1DD0
    sll     t4, v1, 12
    addiu   t5, t5, 0xD000             # t5 = 007BD000
    addu    a1, t4, t5
    jal     func_80000DF0
    addiu   a2, $zero, 0x1000          # a2 = 00001000
    lui     t0, 0x8012                 # t0 = 80120000
    beq     $zero, $zero, lbl_800E1DFC
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
lbl_800E1DD0:
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     v1, $at, lbl_800E1DFC
    sll     t6, v1, 12
    lui     t7, 0x007C                 # t7 = 007C0000
    addiu   t7, t7, 0xD000             # t7 = 007BD000
    addu    a1, t6, t7
    lw      a0, 0x0138(s0)             # 00000138
    jal     func_80000DF0
    addiu   a2, $zero, 0x1000          # a2 = 00001000
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
lbl_800E1DFC:
    lbu     v0, 0x0069(t0)             # 8011A639
    lui     t9, 0x007C                 # t9 = 007C0000
    addiu   t9, t9, 0xD000             # t9 = 007BD000
    slti    $at, v0, 0x00F0
    beq     $at, $zero, lbl_800E1E30
    sll     t8, v0, 12
    lw      a0, 0x0138(s0)             # 00000138
    addu    a1, t8, t9
    addiu   a2, $zero, 0x1000          # a2 = 00001000
    jal     func_80000DF0
    addiu   a0, a0, 0x1000             # a0 = 00001000
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
lbl_800E1E30:
    lbu     v0, 0x006A(t0)             # 8011A63A
    lui     t2, 0x007C                 # t2 = 007C0000
    addiu   t2, t2, 0xD000             # t2 = 007BD000
    slti    $at, v0, 0x00F0
    beq     $at, $zero, lbl_800E1E64
    sll     t1, v0, 12
    lw      a0, 0x0138(s0)             # 00000138
    addu    a1, t1, t2
    addiu   a2, $zero, 0x1000          # a2 = 00001000
    jal     func_80000DF0
    addiu   a0, a0, 0x2000             # a0 = 00002000
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
lbl_800E1E64:
    lbu     v0, 0x006B(t0)             # 8011A63B
    lui     t4, 0x007C                 # t4 = 007C0000
    addiu   t4, t4, 0xD000             # t4 = 007BD000
    slti    $at, v0, 0x00F0
    beq     $at, $zero, lbl_800E1E98
    sll     t3, v0, 12
    lw      a0, 0x0138(s0)             # 00000138
    addu    a1, t3, t4
    addiu   a2, $zero, 0x1000          # a2 = 00001000
    jal     func_80000DF0
    addiu   a0, a0, 0x3000             # a0 = 00003000
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
lbl_800E1E98:
    lh      v0, 0x13CE(t0)             # 8011B99E
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     a0, v0, lbl_800E1ECC
    addiu   t9, $zero, 0x001A          # t9 = 0000001A
    beql    v0, $at, lbl_800E1ED0
    lw      v1, 0x1364(t0)             # 8011B934
    lh      v1, 0x13D2(t0)             # 8011B9A2
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beql    a0, v1, lbl_800E1ED0
    lw      v1, 0x1364(t0)             # 8011B934
    bnel    v1, $at, lbl_800E1F54
    slti    $at, v0, 0x000B
lbl_800E1ECC:
    lw      v1, 0x1364(t0)             # 8011B934
lbl_800E1ED0:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    addiu   t2, $zero, 0x0036          # t2 = 00000036
    beq     v1, $at, lbl_800E1EEC
    addiu   t3, $zero, 0x002E          # t3 = 0000002E
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v1, $at, lbl_800E1F0C
    nop
lbl_800E1EEC:
    bne     a0, v0, lbl_800E1F0C
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sh      t5, 0x13CE(t0)             # 8011B99E
    addiu   t6, $zero, 0x008C          # t6 = 0000008C
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    sh      t6, 0x13D6(t0)             # 8011B9A6
    sh      t7, 0x13DA(t0)             # 8011B9AA
    lh      v0, 0x13CE(t0)             # 8011B99E
lbl_800E1F0C:
    beq     a0, v0, lbl_800E1F1C
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     v0, $at, lbl_800E1F24
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_800E1F1C:
    beq     $zero, $zero, lbl_800E1F24
    or      v1, $zero, $zero           # v1 = 00000000
lbl_800E1F24:
    sll     t8, v1,  1
    addu    v0, t0, t8
    sh      t9, 0x13D6(v0)             # 000013D6
    lh      t1, 0x002E(t0)             # 8011A5FE
    slti    $at, t1, 0x00A1
    bne     $at, $zero, lbl_800E1F48
    nop
    beq     $zero, $zero, lbl_800E1F68
    sh      t2, 0x13DA(v0)             # 000013DA
lbl_800E1F48:
    beq     $zero, $zero, lbl_800E1F68
    sh      t3, 0x13DA(v0)             # 000013DA
    slti    $at, v0, 0x000B
lbl_800E1F54:
    bne     $at, $zero, lbl_800E1F68
    slti    $at, v0, 0x0010
    beq     $at, $zero, lbl_800E1F68
    nop
    sh      $zero, 0x13CE(t0)          # 8011B99E
lbl_800E1F68:
    jal     func_800647D0
    lw      a0, 0x0050($sp)
    jal     func_8006C340
    lw      a0, 0x0050($sp)
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xBA00             # a1 = 8011BA00
    sh      $zero, 0x0242(s0)          # 00000242
    sh      $zero, 0x023C(s0)          # 0000023C
    lw      t5, 0x0000(a1)             # 8011BA00
    addiu   v0, $zero, 0x00A0          # v0 = 000000A0
    addiu   t7, $zero, 0x0096          # t7 = 00000096
    sh      v0, 0x0820(t5)             # 00000820
    lw      t6, 0x0000(a1)             # 8011BA00
    addiu   t2, $zero, 0x00A2          # t2 = 000000A2
    addiu   v1, $zero, 0x00BA          # v1 = 000000BA
    sh      $zero, 0x07EA(t6)          # 000007EA
    lw      t8, 0x0000(a1)             # 8011BA00
    addiu   a0, $zero, 0x005A          # a0 = 0000005A
    sh      t7, 0x07EC(t8)             # 000007EC
    lw      t9, 0x0000(a1)             # 8011BA00
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sh      $zero, 0x07EE(t9)          # 000007EE
    lw      t1, 0x0000(a1)             # 8011BA00
    sh      v0, 0x0838(t1)             # 00000838
    lw      t3, 0x0000(a1)             # 8011BA00
    sh      t2, 0x0F94(t3)             # 00000F94
    lw      t4, 0x0000(a1)             # 8011BA00
    sh      v1, 0x0AB6(t4)             # 00000AB6
    lw      t5, 0x0000(a1)             # 8011BA00
    sh      v1, 0x0ABC(t5)             # 00000ABC
    lw      t6, 0x0000(a1)             # 8011BA00
    sh      a0, 0x0AC0(t6)             # 00000AC0
    lw      t7, 0x0000(a1)             # 8011BA00
    sh      a0, 0x0AC2(t7)             # 00000B58
    lw      t9, 0x0000(a1)             # 8011BA00
    sh      t8, 0x0AC4(t9)             # 00000AC4
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_800E2008:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_800E162C
    nop
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sh      $zero, 0x04C6($at)         # 000104C6
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, a0, 0x7FFF            # $at = 0000A0D7
    sb      $zero, 0x6305($at)         # 000103DC
    sw      $zero, 0x6301($at)         # 000103D8
    sh      $zero, 0x63D7($at)         # 000104AE
    addiu   v0, a0, 0x7FFF             # v0 = 0000A0D7
    lhu     v0, 0x63D7(v0)             # 000104AE
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    sh      t7, 0x63E3($at)            # 000104BA
    andi    t6, v0, 0x00FF             # t6 = 000000D7
    sh      t6, 0x62F9($at)            # 000103D0
    sh      v0, 0x63F1($at)            # 000104C8
    sb      v0, 0x63E6($at)            # 000104BD
    sb      v0, 0x63E5($at)            # 000104BC
    lw      a1, 0x0000(s0)             # 00000000
    jal     func_80091858
    sw      a0, 0x0020($sp)
    addiu   a0, s0, 0x0074             # a0 = 00000074
    jal     func_800A01B8
    addiu   a1, $zero, 0x2200          # a1 = 00002200
    lw      a2, 0x0020($sp)
    addiu   a0, s0, 0x2200             # a0 = 00002200
    addiu   $at, a2, 0x7FFF            # $at = 00007FFF
    jal     func_8005BD78
    sw      v0, 0x62B1($at)            # 0000E2B0
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x4600(t8)            # 8011BA00
    sh      $zero, 0x04D2(t8)          # 801204D2
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_800E20AC:
    addiu   $sp, $sp, 0xFFF0           # $sp = FFFFFFF0
    sw      s1, 0x000C($sp)
    sw      s0, 0x0008($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    addiu   s0, $zero, 0x0032          # s0 = 00000032
    addiu   s1, $zero, 0x0012          # s1 = 00000012
    addiu   v1, $zero, 0x0014          # v1 = 00000014
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    addiu   t0, $zero, 0x0064          # t0 = 00000064
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    addiu   t2, $zero, 0x0010          # t2 = 00000010
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    addiu   t4, $zero, 0x0030          # t4 = 00000030
    addiu   t5, $zero, 0x00C8          # t5 = 000000C8
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      a3, 0x04A4(t6)             # 000004A4
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x04B0(t7)          # 000004B0
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x04B2(t8)          # 000004B2
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x04B4(t9)          # 000004B4
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0xFFC4          # t9 = FFFFFFC4
    sh      $zero, 0x04B6(t6)          # 000004B6
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      s0, 0x04C0(t7)             # 000004C0
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x000D          # t7 = 0000000D
    sh      $zero, 0x04C2(t8)          # 000004C2
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x04C4(t6)             # 000004C4
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    sh      t7, 0x04C6(t8)             # 000004C6
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0029          # t7 = 00000029
    sh      t9, 0x04C8(t6)             # 000004C8
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t7, 0x04CA(t8)             # 000004CA
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0109          # t7 = 00000109
    sh      t9, 0x04CC(t6)             # 000004CC
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0037          # t9 = 00000037
    sh      t7, 0x04D4(t8)             # 000004D4
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x04D6(t6)             # 000004D6
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x04D8(t7)          # 000005E1
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      v1, 0x04DA(t8)             # 000004DA
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x04DC(t9)          # 00000513
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x04DE(t6)          # 000004DE
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x04E0(t7)          # 000005E9
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t1, 0x04E4(t8)             # 000004E4
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      a0, 0x04E6(t9)             # 0000051D
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x00EC          # t9 = 000000EC
    sh      t1, 0x04E8(t6)             # 000004E8
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      a0, 0x04EA(t7)             # 000005F3
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0024          # t7 = 00000024
    sh      $zero, 0x04EC(t8)          # 000004EC
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x04EE(t6)             # 000004EE
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0xFFD3          # t6 = FFFFFFD3
    sh      t7, 0x04F0(t8)             # 000004F0
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0xFFD0          # t8 = FFFFFFD0
    sh      $zero, 0x04F2(t9)          # 000005DE
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x04F4(t7)             # 00000518
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0016          # t7 = 00000016
    sh      t8, 0x04F6(t9)             # 000005E2
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0xFFC9          # t9 = FFFFFFC9
    sh      t2, 0x04F8(t6)             # 000004CB
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t7, 0x04FA(t8)             # 000004CA
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0xFFCB          # t7 = FFFFFFCB
    sh      t9, 0x04FC(t6)             # 000004CF
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x002B          # t9 = 0000002B
    sh      t7, 0x04FE(t8)             # 000004CE
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x002F          # t7 = 0000002F
    sh      t9, 0x0500(t6)             # 000004D3
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0xFFDF          # t9 = FFFFFFDF
    sh      t7, 0x0502(t8)             # 000004D2
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0xFFD6          # t7 = FFFFFFD6
    sh      t9, 0x0504(t6)             # 000004D7
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t7, 0x0506(t8)             # 000004D6
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0xFFDB          # t7 = FFFFFFDB
    sh      t9, 0x0508(t6)             # 000004DB
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x000E          # t9 = 0000000E
    sh      t7, 0x050A(t8)             # 000004DA
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0xFFFE          # t7 = FFFFFFFE
    sh      t9, 0x050C(t6)             # 000004DF
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0xFFFE          # t9 = FFFFFFFE
    sh      t7, 0x050E(t8)             # 000004DE
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0xFFEE          # t7 = FFFFFFEE
    sh      t9, 0x0510(t6)             # 000004E3
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0xFFEE          # t9 = FFFFFFEE
    sh      t7, 0x0512(t8)             # 000004E2
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0514(t6)             # 000004E7
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x051A(t7)          # 00000508
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0xFFFA          # t7 = FFFFFFFA
    sh      $zero, 0x051C(t8)          # 000004EC
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x051E(t9)          # 0000050C
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0520(t6)          # 000004F3
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0xFFF8          # t6 = FFFFFFF8
    sh      t7, 0x0522(t8)             # 000004F2
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      a3, 0x0524(t9)             # 00000512
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0018          # t9 = 00000018
    sh      t6, 0x0526(t7)             # 00000520
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sh      a1, 0x0528(t8)             # 000004F8
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x052A(t6)             # 00000522
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t7, 0x052C(t8)             # 000004FC
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x01C2          # t8 = 000001C2
    sh      $zero, 0x052E(t9)          # 00000546
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0530(t6)          # 00000528
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t4, 0x0532(t7)             # 00000552
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0xFFF1          # t7 = FFFFFFF1
    sh      t8, 0x0534(t9)             # 0000054C
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x01F4          # t9 = 000001F4
    sh      $zero, 0x0536(t6)          # 0000052E
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t7, 0x0538(t8)             # 000006FA
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0258          # t7 = 00000258
    sh      t9, 0x053A(t6)             # 00000532
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0xFFEB          # t6 = FFFFFFEB
    sh      t7, 0x053C(t8)             # 000006FE
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x01FE          # t8 = 000001FE
    sh      $zero, 0x053E(t9)          # 00000732
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x0540(t7)             # 00000798
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x00F7          # t6 = 000000F7
    sh      t8, 0x0542(t9)             # 00000736
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x0544(t7)             # 0000079C
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    sh      v1, 0x0546(t8)             # 00000744
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      a1, 0x054C(t9)             # 00000740
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x054E(t7)             # 000007A6
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      a2, 0x0550(t8)             # 0000074E
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      a0, 0x0552(t9)             # 00000746
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x008C          # t9 = 0000008C
    sh      $zero, 0x0794(t6)          # 0000079A
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t5, 0x0796(t7)             # 000009EE
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0798(t8)          # 00000996
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x07A6(t6)             # 000007AC
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t5, 0x07A8(t7)             # 00000A00
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x006E          # t7 = 0000006E
    sh      $zero, 0x07AA(t8)          # 000009A8
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t5, 0x07AC(t9)             # 00000838
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0038          # t9 = 00000038
    sh      $zero, 0x07AE(t6)          # 000007B4
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t7, 0x07B0(t8)             # 000009AE
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0xFFCE          # t8 = FFFFFFCE
    sh      t9, 0x07B2(t6)             # 000007B8
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0xFF38          # t6 = FFFFFF38
    sh      a0, 0x07B4(t7)             # 00000822
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t8, 0x07B6(t9)             # 000007EE
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x07B8(t7)             # 00000826
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0xFFCE          # t7 = FFFFFFCE
    sh      $zero, 0x07BA(t8)          # 00000788
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x07BC(t9)          # 000007F4
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      s0, 0x07BE(t6)             # 000006F6
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t7, 0x07C0(t8)             # 0000078E
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sh      v1, 0x07C2(t9)             # 000007FA
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      v1, 0x07C4(t6)             # 000006FC
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t7, 0x07C6(t8)             # 00000794
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sh      v1, 0x07C8(t9)             # 00000800
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      a3, 0x07CA(t6)             # 00000702
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      v1, 0x07CC(t7)             # 000007D0
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t8, 0x07CE(t9)             # 00000806
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      v1, 0x07D0(t6)             # 00000708
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      a3, 0x07D2(t7)             # 000007D6
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x07D4(t8)          # 000007D8
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x07D6(t9)          # 0000080E
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x07D8(t6)          # 00000710
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x07DC(t7)          # 000007E0
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x00A0          # t7 = 000000A0
    sh      $zero, 0x07DE(t8)          # 000007E2
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x07E0(t9)          # 00000818
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t3, 0x07E2(t6)             # 0000071A
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t7, 0x07E4(t8)             # 000007E8
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x0056          # t8 = 00000056
    sh      $zero, 0x07E6(t9)          # 0000081E
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      a0, 0x07F0(t6)             # 00000728
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      a0, 0x07F2(t7)             # 00000892
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t8, 0x07F6(t9)             # 0000082E
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0015          # t9 = 00000015
    sh      t0, 0x07F8(t6)             # 00000730
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x07FA(t7)          # 0000089A
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x07FC(t8)          # 00000852
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x007A          # t8 = 0000007A
    sh      t9, 0x07FE(t6)             # 00000736
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x0078          # t6 = 00000078
    sh      v1, 0x0800(t7)             # 000008A0
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t8, 0x0802(t9)             # 00000817
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x0804(t7)             # 000008A4
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      a0, 0x080E(t8)             # 00000888
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x00FE          # t9 = 000000FE
    sh      t9, 0x0810(t6)             # 00000888
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0015          # t9 = 00000015
    sh      t2, 0x0812(t7)             # 000008B2
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x007A          # t7 = 0000007A
    sh      v1, 0x0814(t8)             # 0000088E
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0816(t6)             # 0000088E
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0084          # t9 = 00000084
    sh      t7, 0x0818(t8)             # 00000892
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0011          # t7 = 00000011
    sh      t9, 0x081C(t6)             # 00000894
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x00E3          # t9 = 000000E3
    sh      t7, 0x081E(t8)             # 00000898
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x00F9          # t7 = 000000F9
    sh      t9, 0x0822(t6)             # 0000089A
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x010F          # t9 = 0000010F
    sh      t7, 0x0824(t8)             # 0000089E
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0011          # t7 = 00000011
    sh      t9, 0x0826(t6)             # 0000089E
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x0022          # t6 = 00000022
    sh      t7, 0x0828(t8)             # 000008A2
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      s1, 0x082A(t9)             # 00000939
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x023F          # t9 = 0000023F
    sh      t6, 0x082C(t7)             # 0000083D
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x026C          # t7 = 0000026C
    sh      s1, 0x082E(t8)             # 000008A8
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0830(t6)             # 00000852
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x026C          # t9 = 0000026C
    sh      t7, 0x0832(t8)             # 000008AC
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0834(t6)             # 00000856
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x00E3          # t9 = 000000E3
    sh      t7, 0x0836(t8)             # 000008B0
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x00F9          # t7 = 000000F9
    sh      t9, 0x083A(t6)             # 0000085C
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x010F          # t9 = 0000010F
    sh      t7, 0x083C(t8)             # 000008B6
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0011          # t7 = 00000011
    sh      t9, 0x083E(t6)             # 00000860
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x0022          # t6 = 00000022
    sh      t7, 0x0840(t8)             # 000008BA
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      s1, 0x0842(t9)             # 00000951
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0226          # t9 = 00000226
    sh      t6, 0x0844(t7)             # 00000855
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x02A8          # t7 = 000002A8
    sh      s1, 0x0846(t8)             # 000008C0
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0848(t6)             # 0000086A
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x02A8          # t9 = 000002A8
    sh      t7, 0x084A(t8)             # 000008C4
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x084C(t6)             # 0000086E
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t7, 0x084E(t8)             # 000008C8
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x001A          # t7 = 0000001A
    sh      a0, 0x0850(t9)             # 00000AF8
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0016          # t9 = 00000016
    sh      $zero, 0x0852(t6)          # 00000874
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t7, 0x0A94(t8)             # 00000B0E
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0xFFF5          # t7 = FFFFFFF5
    sh      t9, 0x0A96(t6)             # 00000AB8
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0xFFFC          # t9 = FFFFFFFC
    sh      t7, 0x0A98(t8)             # 00000B12
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0A9A(t6)             # 00000ABC
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    sh      a2, 0x0A9C(t7)             # 00000A91
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0A9E(t8)          # 00000B18
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t1, 0x0AA0(t9)             # 00000A9C
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x0AA2(t7)             # 00000A97
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0xDAB2          # t6 = FFFFDAB2
    sh      a3, 0x0AA4(t8)             # 00000B1E
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x26DE          # t8 = 000026DE
    sh      $zero, 0x0AA6(t9)          # 00000AA2
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x0AA8(t7)             # 00000A9D
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x0044          # t6 = 00000044
    sh      t8, 0x0AAA(t9)             # 00000AA6
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x0024          # t8 = 00000024
    sh      t6, 0x0AAC(t7)             # 00000AA1
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sh      t8, 0x0AAE(t9)             # 00000AAA
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0009          # t9 = 00000009
    sh      t6, 0x0AB0(t7)             # 00000AA5
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0xFE84          # t7 = FFFFFE84
    sh      a0, 0x0AB2(t8)             # 00000AD6
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0AB4(t6)             # 00000AB8
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t7, 0x0AB8(t8)             # 00000ADC
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0ABA(t6)             # 00000ABE
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t4, 0x0ABE(t7)             # 00000942
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0AC6(t8)          # 00000AEA
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0AC8(t9)          # 00000AD1
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    sh      $zero, 0x0ACA(t6)          # 00000ACE
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t2, 0x0ACC(t7)             # 00000950
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      s0, 0x0ACE(t8)             # 00000AF2
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sh      t9, 0x0AD0(t6)             # 00000AD4
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      a1, 0x0AD2(t7)             # 00000956
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t8, 0x0AD4(t9)             # 00000AE3
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    sh      t1, 0x0AD6(t6)             # 00000ADA
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t0, 0x0AD8(t7)             # 0000095C
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t8, 0x0ADA(t9)             # 00000AE9
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x008C          # t9 = 0000008C
    sh      v1, 0x0ADC(t6)             # 00000AE0
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      a3, 0x0ADE(t7)             # 00000962
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t1, 0x0AE0(t8)             # 00000AE7
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x012C          # t8 = 0000012C
    sh      t9, 0x0AE2(t6)             # 00000AE6
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      v1, 0x0AE4(t7)             # 00000968
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0046          # t7 = 00000046
    sh      t8, 0x0AE6(t9)             # 00000B72
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t0, 0x0AE8(t6)             # 00000AEC
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x0024          # t6 = 00000024
    sh      t7, 0x0AEA(t8)             # 00000C16
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      s0, 0x0AEC(t9)             # 00000B78
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x0AEE(t7)             # 00000B34
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x0022          # t6 = 00000022
    sh      t2, 0x0AF0(t8)             # 00000C1C
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      a1, 0x0AF2(t9)             # 00000B7E
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x002A          # t9 = 0000002A
    sh      t6, 0x0AF4(t7)             # 00000B3A
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x001A          # t7 = 0000001A
    sh      s1, 0x0AF6(t8)             # 00000C22
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0AF8(t6)             # 00000B1A
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t7, 0x0AFA(t8)             # 00000C26
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0041          # t7 = 00000041
    sh      $zero, 0x0AFC(t9)          # 00000B26
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x003C          # t9 = 0000003C
    sh      a0, 0x0AFE(t6)             # 00000B20
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t7, 0x0B00(t8)             # 00000C2C
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x0050          # t8 = 00000050
    sh      t9, 0x0B02(t6)             # 00000B24
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    sh      t2, 0x0B04(t7)             # 00000B45
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t8, 0x0B06(t9)             # 00000B42
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x000C          # t8 = 0000000C
    sh      t6, 0x0B08(t7)             # 00000B49
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t8, 0x0B0A(t9)             # 00000B46
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      a0, 0x0B0C(t6)             # 00000B5C
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x009E          # t6 = 0000009E
    sh      a2, 0x0B0E(t7)             # 00000B4F
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0B10(t8)          # 00000B1C
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x0066          # t8 = 00000066
    sh      t0, 0x0B12(t9)             # 00000B4E
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x0B14(t7)             # 00000B55
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0036          # t7 = 00000036
    sh      t8, 0x0B16(t9)             # 00000B52
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0046          # t9 = 00000046
    sh      t4, 0x0B18(t6)             # 00000BB6
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t7, 0x0B1A(t8)             # 00000B80
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0056          # t7 = 00000056
    sh      t9, 0x0B1C(t6)             # 00000BBA
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0xFED4          # t9 = FFFFFED4
    sh      t7, 0x0B1E(t8)             # 00000B84
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x0036          # t8 = 00000036
    sh      t9, 0x0B20(t6)             # 00000BBE
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0B22(t7)          # 00000B78
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0080          # t7 = 00000080
    sh      t8, 0x0B24(t9)             # 000009F8
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    sh      t4, 0x0B26(t6)             # 00000BC4
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t7, 0x0B28(t8)             # 00000B5E
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0800          # t7 = 00000800
    sh      t9, 0x0B2A(t6)             # 00000BC8
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0200          # t9 = 00000200
    sh      t7, 0x0B2C(t8)             # 00000B62
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0060          # t7 = 00000060
    sh      t9, 0x0B2E(t6)             # 00000BCC
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0062          # t9 = 00000062
    sh      t7, 0x0B30(t8)             # 00000B66
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0B32(t6)             # 00000BD0
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0019          # t9 = 00000019
    sh      $zero, 0x0B34(t7)          # 00000B94
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      s0, 0x0B36(t8)             # 00000B6C
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0B38(t6)             # 00000BD6
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t0, 0x0B3A(t7)             # 00000B9A
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t0, 0x0B3C(t8)             # 00000B72
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0xFFCE          # t8 = FFFFFFCE
    sh      $zero, 0x0B3E(t9)          # 00000B57
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0B40(t6)          # 00000BDE
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0xFF9C          # t6 = FFFFFF9C
    sh      $zero, 0x0B42(t7)          # 00000BA2
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t8, 0x0B44(t9)             # 00000B5D
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0xFE0C          # t8 = FFFFFE0C
    sh      t6, 0x0B46(t7)             # 00000BA6
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t8, 0x0B48(t9)             # 00000B61
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x00A0          # t9 = 000000A0
    sh      $zero, 0x0B4A(t6)          # 00000AE6
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t0, 0x0B4C(t7)             # 00000BAC
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t0, 0x0B4E(t8)             # 0000095A
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0xE840          # t8 = FFFFE840
    sh      t9, 0x0B50(t6)             # 00000AEC
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x248B          # t6 = 0000248B
    sh      t5, 0x0B52(t7)             # 00000BB2
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t8, 0x0D98(t9)             # 00000E38
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x0D9A(t7)             # 00000DFA
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      a1, 0x0D9C(t8)             # FFFFF5DC
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      a2, 0x0D9E(t9)             # 00000E3E
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x006D          # t9 = 0000006D
    sh      a1, 0x0DA0(t6)             # 0000322B
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0DA2(t7)          # 00000E02
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0097          # t7 = 00000097
    sh      t0, 0x0DA4(t8)             # FFFFF5E4
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0DA6(t6)             # 00003231
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0094          # t9 = 00000094
    sh      t7, 0x0DA8(t8)             # FFFFF5E8
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0017          # t7 = 00000017
    sh      t9, 0x0DAA(t6)             # 00003235
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0016          # t9 = 00000016
    sh      t7, 0x0DAC(t8)             # FFFFF5EC
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0xFE84          # t7 = FFFFFE84
    sh      t9, 0x0DAE(t6)             # 00003239
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0xFEA2          # t9 = FFFFFEA2
    sh      t7, 0x0DB0(t8)             # FFFFF5F0
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0xFF51          # t7 = FFFFFF51
    sh      t9, 0x0DB2(t6)             # 0000323D
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x009B          # t9 = 0000009B
    sh      t7, 0x0DB4(t8)             # FFFFF5F4
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0DB6(t6)             # 00003241
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0xFFCE          # t9 = FFFFFFCE
    sh      a3, 0x0DB8(t7)             # 00000D09
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0xFFCA          # t7 = FFFFFFCA
    sh      a3, 0x0DBA(t8)             # FFFFF5FA
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0DBC(t6)             # 00003247
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0xFFE0          # t9 = FFFFFFE0
    sh      t7, 0x0DBE(t8)             # FFFFF5FE
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0xFFDA          # t7 = FFFFFFDA
    sh      t9, 0x0DC0(t6)             # 0000324B
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0xFFDC          # t9 = FFFFFFDC
    sh      t7, 0x0DC2(t8)             # FFFFF602
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    sh      t9, 0x0DC4(t6)             # 0000324F
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0xFFD8          # t9 = FFFFFFD8
    sh      t7, 0x0DC6(t8)             # FFFFF606
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0DC8(t6)             # 00003253
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x00EE          # t9 = 000000EE
    sh      $zero, 0x0DCA(t7)          # 00000DF2
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x00A4          # t7 = 000000A4
    sh      $zero, 0x0DCC(t8)          # FFFFF60C
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0DCE(t6)             # 00003259
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x007A          # t6 = 0000007A
    sh      t7, 0x0DD0(t8)             # FFFFF610
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x003C          # t8 = 0000003C
    sh      $zero, 0x0DD2(t9)          # 00000EC0
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x0DD4(t7)             # 00000E78
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t8, 0x0DD6(t9)             # 00000EC4
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x00CC          # t8 = 000000CC
    sh      $zero, 0x0DDA(t6)          # 00000E54
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x008C          # t6 = 0000008C
    sh      $zero, 0x0DDC(t7)          # 00000E80
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t8, 0x0E1C(t9)             # 00000F0A
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x0050          # t8 = 00000050
    sh      t6, 0x0E1E(t7)             # 00000EC2
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x0046          # t6 = 00000046
    sh      t8, 0x0E42(t9)             # 00000F30
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x0028          # t8 = 00000028
    sh      t6, 0x0E44(t7)             # 00000EE8
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x0140          # t6 = 00000140
    sh      t8, 0x0E46(t9)             # 00000F34
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x0E48(t7)             # 00000EEC
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    sh      t8, 0x0E4A(t9)             # 00000F38
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      a2, 0x0E4C(t6)             # 00000F8C
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    sh      t7, 0x0E4E(t8)             # 00000E76
    lw      t9, 0x0000(v0)             # 8011BA00
    lui     t8, 0x8012                 # t8 = 80120000
    sh      a2, 0x0E50(t9)             # 00000F3E
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x0E52(t7)             # 00000E58
    lw      t8, -0x46D4(t8)            # 8011B92C
    bnel    t8, $zero, lbl_800E2CE0
    lw      t9, 0x0000(v0)             # 8011BA00
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0034          # t9 = 00000034
    addiu   t7, $zero, 0x0024          # t7 = 00000024
    sh      t9, 0x0F14(t6)             # 00000F1A
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x00D6          # t9 = 000000D6
    addiu   a1, $zero, 0x0020          # a1 = 00000020
    sh      t7, 0x0F16(t8)             # 80120F16
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x004C          # t7 = 0000004C
    sh      t9, 0x0F18(t6)             # 00000F1E
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0130          # t9 = 00000130
    sh      t7, 0x0F1A(t8)             # 80120F1A
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x01AE          # t7 = 000001AE
    sh      t9, 0x0F1C(t6)             # 00000F22
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x004E          # t6 = 0000004E
    sh      t7, 0x0F1E(t8)             # 80120F1E
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x00A6          # t8 = 000000A6
    sh      a0, 0x0F20(t9)             # 00001050
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x0F22(t7)             # 000010D0
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    sh      t8, 0x0F24(t9)             # 00001054
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x0F26(t7)             # 000010D4
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x006E          # t6 = 0000006E
    sh      a1, 0x0F30(t8)             # 00000FD6
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0xFD1C          # t8 = FFFFFD1C
    sh      a1, 0x0F32(t9)             # 00001062
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x0F34(t7)             # 000010E2
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t8, 0x0F36(t9)             # 00001066
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0F38(t6)          # 00000FA6
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t3, 0x0F3A(t7)             # 000010E8
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t3, 0x0F3C(t8)             # 00000C58
    lw      t9, 0x0000(v0)             # 8011BA00
lbl_800E2CE0:
    addiu   a2, $zero, 0x00FA          # a2 = 000000FA
    addiu   t1, $zero, 0x00E6          # t1 = 000000E6
    sh      $zero, 0x0F3E(t9)          # 0000106E
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   a0, $zero, 0x0023          # a0 = 00000023
    addiu   t2, $zero, 0x0018          # t2 = 00000018
    sh      $zero, 0x0F40(t6)          # 00000FAE
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   a1, $zero, 0x001B          # a1 = 0000001B
    sh      $zero, 0x0F42(t7)          # 000010F0
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0F44(t8)          # 00000C60
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x0062          # t8 = 00000062
    sh      $zero, 0x0F46(t9)          # 00001076
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0F48(t6)          # 00000FB6
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0F4A(t7)          # 000010F8
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t8, 0x0F4C(t9)             # 0000107C
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      s1, 0x0F4E(t6)             # 00000FBC
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x0046          # t6 = 00000046
    sh      $zero, 0x0F50(t7)          # 000010FE
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0F52(t8)          # 00000FB4
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0F54(t9)          # 00001084
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0050          # t9 = 00000050
    sh      t6, 0x0F56(t7)             # 00001104
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0046          # t7 = 00000046
    sh      t3, 0x0F58(t8)             # 00000FBA
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0F5A(t6)             # 00000FA0
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    sh      t7, 0x0F5C(t8)             # 00000FBE
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x0009          # t8 = 00000009
    sh      t3, 0x0F5E(t9)             # 00000FAE
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x0F60(t7)             # 00000FA6
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x01B8          # t7 = 000001B8
    sh      t8, 0x0F64(t9)             # 00000FB4
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      a2, 0x0F68(t6)             # 00000FB8
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x00BE          # t6 = 000000BE
    sh      t7, 0x0F6A(t8)             # 00000F73
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x00B8          # t8 = 000000B8
    sh      a3, 0x0F6C(t9)             # 00000FBC
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x0F6E(t7)             # 00001126
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x00B0          # t6 = 000000B0
    sh      t8, 0x0F70(t9)             # 00000FC0
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x00AC          # t8 = 000000AC
    sh      t6, 0x0F72(t7)             # 0000112A
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x00AA          # t6 = 000000AA
    sh      t8, 0x0F74(t9)             # 00000FC4
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    sh      t6, 0x0F76(t7)             # 0000112E
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0xFFF0          # t7 = FFFFFFF0
    sh      t8, 0x0F78(t9)             # 00000FC8
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0F7A(t6)          # 00001024
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t7, 0x0F7C(t8)             # 00000F9A
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0078          # t7 = 00000078
    sh      t1, 0x0F7E(t9)             # 00000FCE
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0xFD30          # t9 = FFFFFD30
    sh      t1, 0x0F80(t6)             # 0000102A
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t7, 0x0F82(t8)             # 00000FA0
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0F84(t6)             # 0000102E
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t3, 0x0F86(t7)             # 00000FFE
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t3, 0x0F88(t8)             # 00000FA6
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t3, 0x0F8A(t9)             # 00000CBA
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      v1, 0x0F8C(t6)             # 00001036
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x00E4          # t6 = 000000E4
    sh      t0, 0x0F8E(t7)             # 00001006
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0F90(t8)          # 00000FAE
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      a3, 0x0F92(t9)             # 00000CC2
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0110          # t9 = 00000110
    sh      t6, 0x0F96(t7)             # 0000100E
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      a2, 0x0F98(t8)             # 00000FB6
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0F9A(t6)             # 0000107E
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0033          # t9 = 00000033
    sh      a0, 0x0F9C(t7)             # 00001014
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      a0, 0x0F9E(t8)             # 00000FBC
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0FA0(t6)             # 00001084
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      a0, 0x0FA2(t7)             # 0000101A
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0FA4(t8)          # 00000FC2
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    sh      $zero, 0x0FA6(t9)          # 00000FD9
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0FA8(t6)          # 0000108C
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x0FAA(t7)          # 00001022
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      t8, 0x0FAC(t9)             # 00000FDF
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x001D          # t9 = 0000001D
    sh      t2, 0x0FAE(t6)             # 00001092
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t2, 0x0FB0(t7)             # 00001028
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      t2, 0x0FB2(t8)             # 00000FD0
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0FB4(t6)             # 00001098
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      a1, 0x0FB6(t7)             # 0000102E
    lw      t8, 0x0000(v0)             # 8011BA00
    sh      a1, 0x0FB8(t8)             # 00000FD6
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      a1, 0x0FBA(t9)             # 00000FD7
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    sh      $zero, 0x0FBC(t6)          # 000010A0
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      s0, 0x0FBE(t7)             # 00001036
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0042          # t7 = 00000042
    sh      $zero, 0x0FC0(t8)          # 00000FDE
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t9, 0x0FC2(t6)             # 000010A6
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0x007E          # t6 = 0000007E
    sh      t7, 0x0FC4(t8)             # 00000FE2
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t8, $zero, 0x007C          # t8 = 0000007C
    sh      $zero, 0x0FC6(t9)          # 00001006
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x0FC8(t7)             # 0000100A
    lw      t9, 0x0000(v0)             # 8011BA00
    addiu   t6, $zero, 0xFFC1          # t6 = FFFFFFC1
    sh      t8, 0x0FCA(t9)             # 0000100A
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x0FCC(t7)             # 0000100E
    lw      s0, 0x0008($sp)
    lw      s1, 0x000C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0010           # $sp = 00000000


func_800E2F90:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_800E20AC
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop
    nop
