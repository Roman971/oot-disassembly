# "Reality Co-Processor" part of the code file
#
# Handles the N64's RCP, managing rendering tasks.
#
# General Documentation about the RCP and rendering:
# - https://wiki.cloudmodding.com/oot/F3DZEX
# - https://wiki.cloudmodding.com/oot/Rendering
#
# Starts at VRAM: 8007DC40 / VROM: AF3BA0
#

.section .text
func_8007DC40:
# DList draw, Write Fog Settings
# A0 = DList current ptr
# A1 = Fog Red (byte)
# A2 = Fog Blue (byte)
# A3 = Fog Green (byte)
# SP+10 = Fog Alpha
# SP+14 = ?
# SP+18 = ?
# V0 = DList Next ptr
    addiu   $sp, $sp, 0xFFF8           # $sp -= 0x8
    sw      s0, 0x0004($sp)
    lw      s0, 0x001C($sp)
    lw      t6, 0x0020($sp)
    or      v0, a0, $zero              # v0 = 00000000
    addiu   a0, a0, 0x0008             # a0 = 00000008
    bne     t6, s0, lbl_8007DC68
    lui     t8, 0xF800                 # t8 = F8000000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sw      t7, 0x0020($sp)
lbl_8007DC68:
    sw      t8, 0x0000(v0)             # 00000000
    lw      t7, 0x0018($sp)
    or      t9, a1, $zero              # t9 = 00000000
    andi    t1, a2, 0x00FF             # t1 = 00000000
    sll     t2, t1, 16
    sll     t0, t9, 24
    andi    t4, a3, 0x00FF             # t4 = 00000000
    sll     t5, t4,  8
    or      t3, t0, t2                 # t3 = 00000000
    or      t6, t3, t5                 # t6 = 00000000
    andi    t8, t7, 0x00FF             # t8 = 00000001
    or      t9, t6, t8                 # t9 = 00000001
    sw      t9, 0x0004(v0)             # 00000004
    slti    $at, s0, 0x03E8
    bne     $at, $zero, lbl_8007DCC0
    or      v0, a0, $zero              # v0 = 00000008
    lui     t1, 0xDB08                 # t1 = DB080000
    sw      t1, 0x0000(v0)             # 00000008
    addiu   a0, a0, 0x0008             # a0 = 00000010
    sw      $zero, 0x0004(v0)          # 0000000C
    b       lbl_8007DDB0
    or      v0, a0, $zero              # v0 = 00000010
lbl_8007DCC0:
    slti    $at, s0, 0x03E5
    bne     $at, $zero, lbl_8007DCEC
    or      v0, a0, $zero              # v0 = 00000010
    lui     t2, 0x7FFF                 # t2 = 7FFF0000
    ori     t2, t2, 0x8100             # t2 = 7FFF8100
    lui     t0, 0xDB08                 # t0 = DB080000
    sw      t0, 0x0000(v0)             # 00000010
    sw      t2, 0x0004(v0)             # 00000014
    addiu   a0, a0, 0x0008             # a0 = 00000018
    b       lbl_8007DDB0
    or      v0, a0, $zero              # v0 = 00000018
lbl_8007DCEC:
    bgez    s0, lbl_8007DD14
    or      v0, a0, $zero              # v0 = 00000018
    or      v0, a0, $zero              # v0 = 00000018
    lui     t4, 0xDB08                 # t4 = DB080000
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    sw      t3, 0x0004(v0)             # 0000001C
    sw      t4, 0x0000(v0)             # 00000018
    addiu   a0, a0, 0x0008             # a0 = 00000020
    b       lbl_8007DDB0
    or      v0, a0, $zero              # v0 = 00000020
lbl_8007DD14:
    lui     t5, 0xDB08                 # t5 = DB080000
    sw      t5, 0x0000(v0)             # 00000020
    lw      t7, 0x0020($sp)
    lui     t6, 0x0001                 # t6 = 00010000
    ori     t6, t6, 0xF400             # t6 = 0001F400
    subu    v1, t7, s0
    div     $zero, t6, v1
    subu    t0, $zero, s0
    sll     t2, t0,  8
    addu    t4, t2, t6
    mflo    t8
    andi    t9, t8, 0xFFFF             # t9 = 00000001
    sll     t1, t9, 16
    div     $zero, t4, v1
    mflo    t3
    andi    t5, t3, 0xFFFF             # t5 = 000000FF
    or      t7, t1, t5                 # t7 = DB0800FF
    sw      t7, 0x0004(v0)             # 00000024
    addiu   a0, a0, 0x0008             # a0 = 00000028
    bne     v1, $zero, lbl_8007DD6C
    nop
    break   # 0x01C00
lbl_8007DD6C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_8007DD84
    lui     $at, 0x8000                # $at = 80000000
    bne     t6, $at, lbl_8007DD84
    nop
    break   # 0x01800
lbl_8007DD84:
    addu    $at, t6, $zero
    bne     v1, $zero, lbl_8007DD94
    nop
    break   # 0x01C00
lbl_8007DD94:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_8007DDAC
    lui     $at, 0x8000                # $at = 80000000
    bne     t4, $at, lbl_8007DDAC
    nop
    break   # 0x01800
lbl_8007DDAC:
    or      v0, a0, $zero              # v0 = 00000028
lbl_8007DDB0:
    lw      s0, 0x0004($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0008           # $sp += 0x8


func_8007DDBC:
    addiu   $sp, $sp, 0xFFF8           # $sp -= 0x8
    sw      s0, 0x0004($sp)
    lw      s0, 0x001C($sp)
    lw      t6, 0x0020($sp)
    or      v0, a0, $zero              # v0 = 00000000
    addiu   a0, a0, 0x0008             # a0 = 00000008
    bne     t6, s0, lbl_8007DDE4
    lui     t8, 0xE700                 # t8 = E7000000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sw      t7, 0x0020($sp)
lbl_8007DDE4:
    sw      t8, 0x0000(v0)             # 00000000
    sw      $zero, 0x0004(v0)          # 00000004
    or      v1, a0, $zero              # v1 = 00000008
    lui     t9, 0xF800                 # t9 = F8000000
    sw      t9, 0x0000(v1)             # 00000008
    lw      t8, 0x0018($sp)
    or      t0, a1, $zero              # t0 = 00000000
    andi    t2, a2, 0x00FF             # t2 = 00000000
    sll     t3, t2, 16
    sll     t1, t0, 24
    andi    t5, a3, 0x00FF             # t5 = 00000000
    sll     t6, t5,  8
    or      t4, t1, t3                 # t4 = 00000000
    or      t7, t4, t6                 # t7 = 00000000
    andi    t9, t8, 0x00FF             # t9 = 00000000
    or      t0, t7, t9                 # t0 = 00000000
    sw      t0, 0x0004(v1)             # 0000000C
    addiu   a0, a0, 0x0008             # a0 = 00000010
    slti    $at, s0, 0x03E8
    bne     $at, $zero, lbl_8007DE50
    or      v0, a0, $zero              # v0 = 00000010
    lui     t2, 0xDB08                 # t2 = DB080000
    sw      t2, 0x0000(v0)             # 00000010
    addiu   a0, a0, 0x0008             # a0 = 00000018
    sw      $zero, 0x0004(v0)          # 00000014
    b       lbl_8007DF40
    or      v0, a0, $zero              # v0 = 00000018
lbl_8007DE50:
    slti    $at, s0, 0x03E5
    bne     $at, $zero, lbl_8007DE7C
    or      v0, a0, $zero              # v0 = 00000018
    lui     t3, 0x7FFF                 # t3 = 7FFF0000
    ori     t3, t3, 0x8100             # t3 = 7FFF8100
    lui     t1, 0xDB08                 # t1 = DB080000
    sw      t1, 0x0000(v0)             # 00000018
    sw      t3, 0x0004(v0)             # 0000001C
    addiu   a0, a0, 0x0008             # a0 = 00000020
    b       lbl_8007DF40
    or      v0, a0, $zero              # v0 = 00000020
lbl_8007DE7C:
    bgez    s0, lbl_8007DEA4
    or      v0, a0, $zero              # v0 = 00000020
    or      v0, a0, $zero              # v0 = 00000020
    lui     t5, 0xDB08                 # t5 = DB080000
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sw      t4, 0x0004(v0)             # 00000024
    sw      t5, 0x0000(v0)             # 00000020
    addiu   a0, a0, 0x0008             # a0 = 00000028
    b       lbl_8007DF40
    or      v0, a0, $zero              # v0 = 00000028
lbl_8007DEA4:
    lui     t6, 0xDB08                 # t6 = DB080000
    sw      t6, 0x0000(v0)             # 00000028
    lw      t8, 0x0020($sp)
    lui     t7, 0x0001                 # t7 = 00010000
    ori     t7, t7, 0xF400             # t7 = 0001F400
    subu    v1, t8, s0
    div     $zero, t7, v1
    subu    t1, $zero, s0
    sll     t3, t1,  8
    addu    t5, t3, t7
    mflo    t9
    andi    t0, t9, 0xFFFF             # t0 = 00000000
    sll     t2, t0, 16
    div     $zero, t5, v1
    mflo    t4
    andi    t6, t4, 0xFFFF             # t6 = 000000FF
    or      t8, t2, t6                 # t8 = DB0800FF
    sw      t8, 0x0004(v0)             # 0000002C
    addiu   a0, a0, 0x0008             # a0 = 00000030
    bne     v1, $zero, lbl_8007DEFC
    nop
    break   # 0x01C00
lbl_8007DEFC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_8007DF14
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_8007DF14
    nop
    break   # 0x01800
lbl_8007DF14:
    addu    $at, t7, $zero
    bne     v1, $zero, lbl_8007DF24
    nop
    break   # 0x01C00
lbl_8007DF24:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_8007DF3C
    lui     $at, 0x8000                # $at = 80000000
    bne     t5, $at, lbl_8007DF3C
    nop
    break   # 0x01800
lbl_8007DF3C:
    or      v0, a0, $zero              # v0 = 00000030
lbl_8007DF40:
    lw      s0, 0x0004($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0008           # $sp += 0x8


func_8007DF4C:
# Dlist draw, Write Fog Settings Wrapper
# Wrapper for 8007DC40
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    lw      t6, 0x0038($sp)
    lw      t7, 0x003C($sp)
    lw      t8, 0x0040($sp)
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    jal     func_8007DC40
    sw      t8, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8007DF80:
    sll     t7, a1,  2
    subu    t7, t7, a1
    sll     t7, t7,  1
    or      v1, a0, $zero              # v1 = 00000000
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x7D50             # t9 = 800F7D50
    sll     t8, t7,  3
    addu    t0, t8, t9
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t0, 0x0004(v1)             # 00000004
    addiu   a0, a0, 0x0008             # a0 = 00000008
    or      v0, a0, $zero              # v0 = 00000008
    jr      $ra
    nop


func_8007DFBC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_8007DF80
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8007DFDC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t6, 0x0018($sp)
    jal     func_8007DFBC
    lw      a0, 0x0000(t6)             # 00000000
    lw      t7, 0x0018($sp)
    sw      v0, 0x0000(t7)             # 00000000
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_8007E008:
    or      v1, a0, $zero              # v1 = 00000000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x8800             # t7 = 800F8800
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    addiu   a0, a0, 0x0008             # a0 = 00000008
    or      v0, a0, $zero              # v0 = 00000008
    jr      $ra
    nop


func_8007E030:
    or      v1, a0, $zero              # v1 = 00000000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x8800             # t7 = 800F8800
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    addiu   a0, a0, 0x0008             # a0 = 00000008
    or      v0, a0, $zero              # v0 = 00000008
    jr      $ra
    nop


func_8007E058:
    or      v1, a0, $zero              # v1 = 00000000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x8710             # t7 = 800F8710
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    addiu   a0, a0, 0x0008             # a0 = 00000008
    or      a1, a0, $zero              # a1 = 00000008
    lui     t8, 0xE300                 # t8 = E3000000
    ori     t8, t8, 0x1801             # t8 = E3001801
    addiu   t9, $zero, 0x00C0          # t9 = 000000C0
    sw      t9, 0x0004(a1)             # 0000000C
    sw      t8, 0x0000(a1)             # 00000008
    addiu   a0, a0, 0x0008             # a0 = 00000010
    or      v0, a0, $zero              # v0 = 00000010
    jr      $ra
    nop


func_8007E09C:
# Write Jump to Display List 800F8830 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8830             # t8 = 800F8830
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E0C4:
# Write Jump to Display List 800F8800 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8800             # t8 = 800F8800
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E0EC:
# Write Jump to Display List 800F86B0 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x86B0             # t8 = 800F86B0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E114:
# Write Jump to Display List 800F86E0 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x86E0             # t8 = 800F86E0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E13C:
# Write Jump to Display List 800F8710 on POLY_XLU_DISP
# A0 = Graphics Context
    lw      v1, 0x02D0(a0)             # 000002D0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8710             # t8 = 800F8710
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E164:
# Write Jump to Display List 800F8740 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8740             # t8 = 800F8740
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E18C:
# Write Jump to Display List 800F8770 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8770             # t8 = 800F8770
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E1B4:
# Write Jump to Display List 800F87A0 on POLY_XLU_DISP
# A0 = Graphics Context
    lw      v1, 0x02D0(a0)             # 000002D0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x87A0             # t8 = 800F87A0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E1DC:
# Write Jump to Display List 800F8230 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8230             # t8 = 800F8230
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E204:
# Write Jump to Display List 800F8200 on POLY_XLU_DISP
# A0 = Graphics Context
    lw      v1, 0x02D0(a0)             # 000002D0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8200             # t8 = 800F8200
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E22C:
# A0 = Global Context
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    lw      t6, 0x0020($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x001C($sp)
    lw      t7, 0x0020($sp)
    lui     t8, 0x0001                 # t8 = 00010000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addu    t8, t8, t7
    lbu     t8, 0x1CBF(t8)             # 00011CBF
    lw      a0, 0x001C($sp)
    lui     t0, 0xE300                 # t0 = E3000000
    bnel    t8, $at, lbl_8007E28C
    lw      $ra, 0x0014($sp)
    lw      v1, 0x02C0(a0)             # 000002C0
    ori     t0, t0, 0x1801             # t0 = E3001801
    addiu   t1, $zero, 0x00C0          # t1 = 000000C0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a0)             # 000002C0
    sw      t1, 0x0004(v1)             # 00000004
    sw      t0, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)
lbl_8007E28C:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8007E298:
# Write Jump to Display List 800F8200 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8200             # t8 = 800F8200
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E2C0:
# Write Jump to Display List 800F8200 on POLY_XLU_DISP
# A0 = Graphics Context
    lw      v1, 0x02D0(a0)             # 000002D0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8200             # t8 = 800F8200
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E2E8:
# Write Jump to Display List 800F8320 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8320             # t8 = 800F8320
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E310:
# Write Jump to Display List 800F8350 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8350             # t8 = 800F8350
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E338:
# Write Jump to Display List 800F8380 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8380             # t8 = 800F8380
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E360:
# Write Jump to Display List 800F8950 on Display List
# A0 = Display List Append Pointer
# V0 = New Display List Append Pointer
    or      v1, a0, $zero              # v1 = 00000000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x8950             # t7 = 800F8950
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    addiu   a0, a0, 0x0008             # a0 = 00000008
    or      v0, a0, $zero              # v0 = 00000008
    jr      $ra
    nop


func_8007E388:
# Write Jump to Display List 800F83B0 on Display List
# A0 = Display List Append Pointer
# V0 = New Display List Append Pointer
    or      v1, a0, $zero              # v1 = 00000000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x83B0             # t7 = 800F83B0
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    addiu   a0, a0, 0x0008             # a0 = 00000008
    or      v0, a0, $zero              # v0 = 00000008
    jr      $ra
    nop


func_8007E3B0:
# Wrapper for 8007E388 (Writes to POLY_OPA_DISP)
# A0 = Graphics Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t6, 0x0018($sp)
    jal     func_8007E388
    lw      a0, 0x02C0(t6)             # 000002C0
    lw      t7, 0x0018($sp)
    sw      v0, 0x02C0(t7)             # 000002C0
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_8007E3DC:
# Write Jump to Display List 800F83E0 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x83E0             # t8 = 800F83E0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E404:
# Write Jump to Display List 800F8590 on POLY_XLU_DISP
# A0 = Graphics Context
    lw      v1, 0x02D0(a0)             # 000002D0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8590             # t8 = 800F8590
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E42C:
# Write Jump to Display List 800F8410 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8410             # t8 = 800F8410
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E454:
# Write Jump to Display List 800F8290 on Display List
# A0 = Display List Append Pointer
# V0 = New Display List Append Pointer
    or      v1, a0, $zero              # v1 = 00000000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x8290             # t7 = 800F8290
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    addiu   a0, a0, 0x0008             # a0 = 00000008
    or      v0, a0, $zero              # v0 = 00000008
    jr      $ra
    nop


func_8007E47C:
# Write Jump to Display List 800F8290 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8290             # t8 = 800F8290
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E4A4:
# Write Jump to Display List 800F8560 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8560             # t8 = 800F8560
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E4CC:
# Write Jump to Display List 800F85C0 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x85C0             # t8 = 800F85C0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E4F4:
# Write Jump to Display List 800F85F0 on OVERLAY_DISP
# A0 = Graphics Context
    lw      v1, 0x02B0(a0)             # 000002B0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x85F0             # t8 = 800F85F0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a0)             # 000002B0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E51C:
# Write Jump to Display List 800F8470 on POLY_XLU_DISP
# A0 = Graphics Context
    lw      v1, 0x02D0(a0)             # 000002D0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8470             # t8 = 800F8470
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E544:
# Write Jump to Display List 800F7E10 on POLY_XLU_DISP
# A0 = Graphics Context
    lw      v1, 0x02D0(a0)             # 000002D0
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x7E10             # t8 = 800F7E10
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E56C:
# Write Jump to Display List 800F8440 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8440             # t8 = 800F8440
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E594:
# Write Jump to Display List 800F7DB0 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x7DB0             # t8 = 800F7DB0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E5BC:
# Write Jump to Display List 800F84A0 on Display List
# A0 = Display List Append Pointer
# V0 = New Display List Append Pointer
    or      v1, a0, $zero              # v1 = 00000000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x84A0             # t7 = 800F84A0
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    addiu   a0, a0, 0x0008             # a0 = 00000008
    or      v0, a0, $zero              # v0 = 00000008
    jr      $ra
    nop


func_8007E5E4:
# Wrapper for 8007E5BC (Writes to POLY_OPA_DISP)
# A0 = Graphics Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t6, 0x0018($sp)
    jal     func_8007E5BC
    lw      a0, 0x02C0(t6)             # 000002C0
    lw      t7, 0x0018($sp)
    sw      v0, 0x02C0(t7)             # 000002C0
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_8007E610:
# Wrapper for 8007E5BC (Writes to OVERLAY_DISP)
# A0 = Graphics Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t6, 0x0018($sp)
    jal     func_8007E5BC
    lw      a0, 0x02B0(t6)             # 000002B0
    lw      t7, 0x0018($sp)
    sw      v0, 0x02B0(t7)             # 000002B0
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_8007E63C:
# Write Jump to Display List 800F84A0 on Display List (Updates DLIST Append)
# A0 = Pointer to Display List Append Start
# V0 = New Display List Append Pointer
    lw      v0, 0x0000(a0)             # 00000000
    or      v1, v0, $zero              # v1 = 00000000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x84A0             # t7 = 800F84A0
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    addiu   v0, v0, 0x0008             # v0 = 00000008
    sw      v0, 0x0000(a0)             # 00000000
    jr      $ra
    nop


func_8007E668:
# Write Jump to Display List 800F84D0 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x84D0             # t8 = 800F84D0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E690:
# Write Jump to Display List 800F8500 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8500             # t8 = 800F8500
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E6B8:
# Write Jump to Display List 800F8620 on POLY_XLU_DISP
# A0 = Graphics Context
    lw      v1, 0x02D0(a0)             # 000002D0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8620             # t8 = 800F8620
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E6E0:
# Write Jump to Display List 800F89B0 on Display List
# A0 = Display List Append Pointer
# V0 = New Display List Append Pointer
    or      v1, a0, $zero              # v1 = 00000000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x89B0             # t7 = 800F89B0
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    addiu   a0, a0, 0x0008             # a0 = 00000008
    or      v0, a0, $zero              # v0 = 00000008
    jr      $ra
    nop


func_8007E708:
# Write Jump to Display List 800F89E0 on Display List
# A0 = Display List Append Pointer
# V0 = New Display List Append Pointer
    or      v1, a0, $zero              # v1 = 00000000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x89E0             # t7 = 800F89E0
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    addiu   a0, a0, 0x0008             # a0 = 00000008
    or      v0, a0, $zero              # v0 = 00000008
    jr      $ra
    nop


func_8007E730:
# Write DE000000 800F8A10, E3001801 000000C0 on Display List
# A0 = Display List Append Pointer
# V0 = New Display List Append Pointer
    or      v1, a0, $zero              # v1 = 00000000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x8A10             # t7 = 800F8A10
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    addiu   a0, a0, 0x0008             # a0 = 00000008
    or      a1, a0, $zero              # a1 = 00000008
    lui     t8, 0xE300                 # t8 = E3000000
    ori     t8, t8, 0x1801             # t8 = E3001801
    addiu   t9, $zero, 0x00C0          # t9 = 000000C0
    sw      t9, 0x0004(a1)             # 0000000C
    sw      t8, 0x0000(a1)             # 00000008
    addiu   a0, a0, 0x0008             # a0 = 00000010
    or      v0, a0, $zero              # v0 = 00000010
    jr      $ra
    nop


func_8007E774:
# Write DE000000 800F8A40, E3001801 000000C0 on Display List
# A0 = Display List Append Pointer
# V0 = New Display List Append Pointer
    or      v1, a0, $zero              # v1 = 00000000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x8A40             # t7 = 800F8A40
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    addiu   a0, a0, 0x0008             # a0 = 00000008
    or      a1, a0, $zero              # a1 = 00000008
    lui     t8, 0xE300                 # t8 = E3000000
    ori     t8, t8, 0x1801             # t8 = E3001801
    addiu   t9, $zero, 0x00C0          # t9 = 000000C0
    sw      t9, 0x0004(a1)             # 0000000C
    sw      t8, 0x0000(a1)             # 00000008
    addiu   a0, a0, 0x0008             # a0 = 00000010
    or      v0, a0, $zero              # v0 = 00000010
    jr      $ra
    nop


func_8007E7B8:
# Write DE000000 800F8980, E3001801 000000C0 on Display List
# A0 = Display List Append Pointer
# V0 = New Display List Append Pointer
    lui     a1, 0xE300                 # a1 = E3000000
    ori     a1, a1, 0x1801             # a1 = E3001801
    or      v0, a0, $zero              # v0 = 00000000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x8980             # t7 = 800F8980
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v0)             # 00000000
    sw      t7, 0x0004(v0)             # 00000004
    addiu   a0, a0, 0x0008             # a0 = 00000008
    or      v1, a0, $zero              # v1 = 00000008
    addiu   t8, $zero, 0x00C0          # t8 = 000000C0
    sw      t8, 0x0004(v1)             # 0000000C
    sw      a1, 0x0000(v1)             # 00000008
    addiu   a0, a0, 0x0008             # a0 = 00000010
    or      v0, a0, $zero              # v0 = 00000010
    jr      $ra
    nop


func_8007E7FC:
# Write Jump to Display List 800F8A70 on Display List
# A0 = Display List Append Pointer
# V0 = New Display List Append Pointer
    or      v1, a0, $zero              # v1 = 00000000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x8A70             # t7 = 800F8A70
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    addiu   a0, a0, 0x0008             # a0 = 00000008
    or      v0, a0, $zero              # v0 = 00000008
    jr      $ra
    nop


func_8007E824:
# Write DE000000 800F8110, E3001801 000000C0 on Display List
# A0 = Display List Append Pointer
# V0 = New Display List Append Pointer
    or      v1, a0, $zero              # v1 = 00000000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x8110             # t7 = 800F8110
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    addiu   a0, a0, 0x0008             # a0 = 00000008
    or      a1, a0, $zero              # a1 = 00000008
    lui     t8, 0xE300                 # t8 = E3000000
    ori     t8, t8, 0x1801             # t8 = E3001801
    addiu   t9, $zero, 0x00C0          # t9 = 000000C0
    sw      t9, 0x0004(a1)             # 0000000C
    sw      t8, 0x0000(a1)             # 00000008
    addiu   a0, a0, 0x0008             # a0 = 00000010
    or      v0, a0, $zero              # v0 = 00000010
    jr      $ra
    nop


func_8007E868:
# Write Jump to Display List 800F8530 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8530             # t8 = 800F8530
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E890:
# Write Jump to Display List 800F8530 on OVERLAY_DISP
# A0 = Graphics Context
    lw      v1, 0x02B0(a0)             # 000002B0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8530             # t8 = 800F8530
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a0)             # 000002B0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E8B8:
# Write Jump to Display List 800F8650 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8650             # t8 = 800F8650
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E8E0:
# Write Jump to Display List 800F8680 on POLY_XLU_DISP
# A0 = Graphics Context
    lw      v1, 0x02D0(a0)             # 000002D0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8680             # t8 = 800F8680
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E908:
# Write Jump to Display List 800F8260 on POLY_XLU_DISP
# A0 = Graphics Context
    lw      v1, 0x02D0(a0)             # 000002D0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8260             # t8 = 800F8260
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E930:
# Write DE000000 800F8890, E3001801 000000C0 on POLY_XLU_DISP
# A0 = Graphics Context
    lw      v1, 0x02D0(a0)             # 000002D0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8890             # t8 = 800F8890
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(a0)             # 000002D0
    lui     t0, 0xE300                 # t0 = E3000000
    ori     t0, t0, 0x1801             # t0 = E3001801
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(a0)             # 000002D0
    addiu   t1, $zero, 0x00C0          # t1 = 000000C0
    sw      t1, 0x0004(v1)             # 00000004
    sw      t0, 0x0000(v1)             # 00000000
    jr      $ra
    nop


func_8007E978:
# Write Jump to Display List 800F88C0 on POLY_XLU_DISP
# A0 = Graphics Context
    lw      v1, 0x02D0(a0)             # 000002D0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x88C0             # t8 = 800F88C0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E9A0:
# Write Jump to Display List 800F87D0 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x87D0             # t8 = 800F87D0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007E9C8:
# Write Jump to Display List 800F87D0 on Display List (Updates DLIST Append)
# A0 = Pointer to Display List Append Start
# V0 = New Display List Append Pointer
    lw      v0, 0x0000(a0)             # 00000000
    or      v1, v0, $zero              # v1 = 00000000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x87D0             # t7 = 800F87D0
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    addiu   v0, v0, 0x0008             # v0 = 00000008
    sw      v0, 0x0000(a0)             # 00000000
    jr      $ra
    nop


func_8007E9F4:
# Write Jump to Display List 800F8860 on POLY_OPA_DISP
# A0 = Graphics Context
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8860             # t8 = 800F8860
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_8007EA1C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    jal     func_800A1AC4
    addiu   a1, $zero, 0x0018          # a1 = 00000018
    lw      v1, 0x001C($sp)
    lw      a0, 0x0020($sp)
    lui     t6, 0xE800                 # t6 = E8000000
    sw      t6, 0x0000(v0)             # 00000000
    sw      $zero, 0x0004(v0)          # 00000004
    andi    t7, v1, 0x0FFF             # t7 = 00000000
    sll     t8, t7, 12
    lui     $at, 0xF200                # $at = F2000000
    or      t9, t8, $at                # t9 = F2000000
    andi    t0, a0, 0x0FFF             # t0 = 00000000
    or      t1, t9, t0                 # t1 = F2000000
    sw      t1, 0x0008(v0)             # 00000008
    lw      t2, 0x0024($sp)
    lw      t8, 0x0028($sp)
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    sll     t4, t3,  2
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sll     t0, t9,  2
    addu    t5, t4, v1
    andi    t6, t5, 0x0FFF             # t6 = 00000000
    addu    t1, a0, t0
    andi    t2, t1, 0x0FFF             # t2 = 00000000
    sll     t7, t6, 12
    or      t3, t7, t2                 # t3 = 00000000
    sw      t3, 0x000C(v0)             # 0000000C
    lui     t4, 0xDF00                 # t4 = DF000000
    sw      t4, 0x0010(v0)             # 00000010
    sw      $zero, 0x0014(v0)          # 00000014
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8007EAB8:
# Wrapper for 8007EA1C (A3 = 0)
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EA1C
    sw      $zero, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8007EADC:
# Wrapper for 8007EB00 (A3 = 0)
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB00
    sw      $zero, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8007EB00:
# Animate Tile?
# Generates ? at tail end of POLY_OPA dlist
    lw      v1, 0x02C4(a0)             # 000002C4
    andi    a1, a1, 0x07FF             # a1 = 00000000
    andi    a2, a2, 0x07FF             # a2 = 00000000
    addiu   v1, v1, 0xFFE0             # v1 = FFFFFFE0
    sw      v1, 0x02C4(a0)             # 000002C4
    lui     t6, 0xE800                 # t6 = E8000000
    sw      t6, 0x0000(v1)             # FFFFFFE0
    sw      $zero, 0x0004(v1)          # FFFFFFE4
    andi    t7, a1, 0x0FFF             # t7 = 00000000
    sll     t8, t7, 12
    lui     $at, 0xF200                # $at = F2000000
    or      t9, t8, $at                # t9 = F2000000
    andi    t0, a2, 0x0FFF             # t0 = 00000000
    or      t1, t9, t0                 # t1 = F2000000
    sw      t1, 0x0008(v1)             # FFFFFFE8
    lw      t7, 0x0010($sp)
    addiu   t2, a3, 0xFFFF             # t2 = FFFFFFFF
    sll     t3, t2,  2
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sll     t9, t8,  2
    addu    t4, t3, a1
    andi    t5, t4, 0x0FFF             # t5 = 00000000
    addu    t0, a2, t9
    andi    t1, t0, 0x0FFF             # t1 = 00000000
    sll     t6, t5, 12
    or      t2, t6, t1                 # t2 = E8000000
    sw      t2, 0x000C(v1)             # FFFFFFEC
    lui     t3, 0xDF00                 # t3 = DF000000
    sw      t3, 0x0010(v1)             # FFFFFFF0
    sw      $zero, 0x0014(v1)          # FFFFFFF4
    or      v0, v1, $zero              # v0 = FFFFFFE0
    jr      $ra
    nop


func_8007EB84:
# Animate Tile
# Generates G_SETTILESIZE commands at the tail end of the POLY_OPA dlist
# E8, F2, E8, F2, DF command sequence
# A0 = Graphics Context
# A1 = ? (tile descriptor one?)
# A2 = upper left S-axis
# A3 = upper left T-axis
# SP+0x10 = width (whole units)
# SP+0x14 = height (whole units)
# SP+0x18 = Tile Descriptor Two
# SP+0x1C = upper left S-axis 2
# SP+0x20 = Upper left T-axis 2
# SP+0x24 = width (whole units)
# SP+0x28 = height (whole units)
# V0 = pointer ?
    lui     v0, 0xE800                 # v0 = E8000000
    lui     t0, 0xF200                 # t0 = F2000000
    lw      v1, 0x02C4(a0)             # 000002C4
    andi    a2, a2, 0x07FF             # a2 = 00000000
    andi    a3, a3, 0x07FF             # a3 = 00000000
    addiu   v1, v1, 0xFFD0             # v1 = FFFFFFD0
    sw      v1, 0x02C4(a0)             # 000002C4
    lw      t6, 0x001C($sp)
    lw      t8, 0x0020($sp)
    andi    t1, a2, 0x0FFF             # t1 = 00000000
    andi    t7, t6, 0x07FF             # t7 = 00000000
    andi    t9, t8, 0x07FF             # t9 = 00000000
    sw      t7, 0x001C($sp)
    sw      t9, 0x0020($sp)
    sw      v0, 0x0000(v1)             # FFFFFFD0
    sw      $zero, 0x0004(v1)          # FFFFFFD4
    sll     t2, t1, 12
    or      t3, t2, t0                 # t3 = F2000000
    andi    t4, a3, 0x0FFF             # t4 = 00000000
    or      t5, t3, t4                 # t5 = F2000000
    sw      t5, 0x0008(v1)             # FFFFFFD8
    lw      t8, 0x0010($sp)
    andi    t6, a1, 0x0007             # t6 = 00000000
    sll     t7, t6, 24
    lw      t6, 0x0014($sp)
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sll     t1, t9,  2
    addu    t2, a2, t1
    addiu   t8, t6, 0xFFFF             # t8 = FFFFFFFF
    sll     t9, t8,  2
    andi    t3, t2, 0x0FFF             # t3 = 00000000
    sll     t4, t3, 12
    addu    t1, a3, t9
    andi    t2, t1, 0x0FFF             # t2 = 00000000
    or      t5, t7, t4                 # t5 = 00000000
    or      t3, t5, t2                 # t3 = 00000000
    sw      t3, 0x000C(v1)             # FFFFFFDC
    sw      v0, 0x0010(v1)             # FFFFFFE0
    sw      $zero, 0x0014(v1)          # FFFFFFE4
    lw      t7, 0x001C($sp)
    lw      t9, 0x0020($sp)
    or      v0, v1, $zero              # v0 = FFFFFFD0
    andi    t4, t7, 0x0FFF             # t4 = 00000000
    sll     t6, t4, 12
    or      t8, t6, t0                 # t8 = F2000000
    andi    t1, t9, 0x0FFF             # t1 = 00000FFF
    or      t5, t8, t1                 # t5 = F2000FFF
    sw      t5, 0x0018(v1)             # FFFFFFE8
    lw      t3, 0x0024($sp)
    lw      t2, 0x001C($sp)
    lw      t1, 0x0018($sp)
    addiu   t7, t3, 0xFFFF             # t7 = FFFFFFFF
    sll     t4, t7,  2
    addu    t6, t2, t4
    lw      t4, 0x0028($sp)
    andi    t9, t6, 0x0FFF             # t9 = 00000000
    lw      t2, 0x0020($sp)
    sll     t8, t9, 12
    andi    t5, t1, 0x0007             # t5 = 00000007
    addiu   t6, t4, 0xFFFF             # t6 = FFFFFFFF
    sll     t9, t6,  2
    sll     t3, t5, 24
    addu    t1, t2, t9
    andi    t5, t1, 0x0FFF             # t5 = 00000FFF
    or      t7, t3, t8                 # t7 = F2000000
    or      t3, t7, t5                 # t3 = F2000FFF
    sw      t3, 0x001C(v1)             # FFFFFFEC
    lui     t8, 0xDF00                 # t8 = DF000000
    sw      t8, 0x0020(v1)             # FFFFFFF0
    sw      $zero, 0x0024(v1)          # FFFFFFF4
    jr      $ra
    nop


func_8007ECA4:
    lui     v0, 0xE800                 # v0 = E8000000
    lui     t0, 0xF200                 # t0 = F2000000
    lw      v1, 0x02C4(a0)             # 000002C4
    andi    a2, a2, 0x07FF             # a2 = 00000000
    andi    a3, a3, 0x07FF             # a3 = 00000000
    addiu   v1, v1, 0xFFD0             # v1 = FFFFFFD0
    sw      v1, 0x02C4(a0)             # 000002C4
    lw      t6, 0x001C($sp)
    lw      t8, 0x0020($sp)
    andi    t1, a2, 0x0FFF             # t1 = 00000000
    andi    t7, t6, 0x07FF             # t7 = 00000000
    andi    t9, t8, 0x07FF             # t9 = 00000000
    sw      t7, 0x001C($sp)
    sw      t9, 0x0020($sp)
    sw      v0, 0x0000(v1)             # FFFFFFD0
    sw      $zero, 0x0004(v1)          # FFFFFFD4
    sll     t2, t1, 12
    or      t3, t2, t0                 # t3 = F2000000
    andi    t4, a3, 0x0FFF             # t4 = 00000000
    or      t5, t3, t4                 # t5 = F2000000
    sw      t5, 0x0008(v1)             # FFFFFFD8
    lw      t8, 0x0010($sp)
    andi    t6, a1, 0x0007             # t6 = 00000000
    sll     t7, t6, 24
    lw      t6, 0x0014($sp)
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sll     t1, t9,  2
    addu    t2, a2, t1
    addiu   t8, t6, 0xFFFF             # t8 = FFFFFFFF
    sll     t9, t8,  2
    andi    t3, t2, 0x0FFF             # t3 = 00000000
    sll     t4, t3, 12
    addu    t1, a3, t9
    andi    t2, t1, 0x0FFF             # t2 = 00000000
    or      t5, t7, t4                 # t5 = 00000000
    or      t3, t5, t2                 # t3 = 00000000
    sw      t3, 0x000C(v1)             # FFFFFFDC
    sw      v0, 0x0010(v1)             # FFFFFFE0
    sw      $zero, 0x0014(v1)          # FFFFFFE4
    lw      t7, 0x001C($sp)
    lw      t9, 0x0020($sp)
    or      v0, v1, $zero              # v0 = FFFFFFD0
    andi    t4, t7, 0x0FFF             # t4 = 00000000
    sll     t6, t4, 12
    or      t8, t6, t0                 # t8 = F2000000
    andi    t1, t9, 0x0FFF             # t1 = 00000FFF
    or      t5, t8, t1                 # t5 = F2000FFF
    sw      t5, 0x0018(v1)             # FFFFFFE8
    lw      t3, 0x0024($sp)
    lw      t2, 0x001C($sp)
    lw      t1, 0x0018($sp)
    addiu   t7, t3, 0xFFFF             # t7 = FFFFFFFF
    sll     t4, t7,  2
    addu    t6, t2, t4
    lw      t4, 0x0028($sp)
    andi    t9, t6, 0x0FFF             # t9 = 00000000
    lw      t2, 0x0020($sp)
    sll     t8, t9, 12
    andi    t5, t1, 0x0007             # t5 = 00000007
    addiu   t6, t4, 0xFFFF             # t6 = FFFFFFFF
    sll     t9, t6,  2
    sll     t3, t5, 24
    addu    t1, t2, t9
    andi    t5, t1, 0x0FFF             # t5 = 00000FFF
    or      t7, t3, t8                 # t7 = F2000000
    or      t3, t7, t5                 # t3 = F2000FFF
    sw      t3, 0x001C(v1)             # FFFFFFEC
    lui     t8, 0xFB00                 # t8 = FB000000
    sw      t8, 0x0020(v1)             # FFFFFFF0
    lw      t9, 0x0030($sp)
    lw      t3, 0x0034($sp)
    lw      t6, 0x002C($sp)
    andi    t1, t9, 0x00FF             # t1 = 00000000
    lw      t9, 0x0038($sp)
    sll     t7, t1, 16
    andi    t8, t3, 0x00FF             # t8 = 000000FF
    sll     t2, t6, 24
    or      t5, t2, t7                 # t5 = F2000000
    sll     t4, t8,  8
    or      t6, t5, t4                 # t6 = F2000000
    andi    t1, t9, 0x00FF             # t1 = 00000000
    or      t2, t6, t1                 # t2 = F2000000
    sw      t2, 0x0024(v1)             # FFFFFFF4
    lui     t7, 0xDF00                 # t7 = DF000000
    sw      t7, 0x0028(v1)             # FFFFFFF8
    sw      $zero, 0x002C(v1)          # FFFFFFFC
    jr      $ra
    nop


func_8007EE04:
    lw      v1, 0x02C4(a0)             # 000002C4
    lui     t6, 0xFB00                 # t6 = FB000000
    sll     t8, a1, 24
    addiu   v1, v1, 0xFFF0             # v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             # 000002C4
    sw      t6, 0x0000(v1)             # FFFFFFF0
    lw      t5, 0x0010($sp)
    andi    t9, a2, 0x00FF             # t9 = 00000000
    sll     t0, t9, 16
    andi    t2, a3, 0x00FF             # t2 = 00000000
    sll     t3, t2,  8
    or      t1, t8, t0                 # t1 = 00000000
    or      t4, t1, t3                 # t4 = 00000000
    andi    t6, t5, 0x00FF             # t6 = 00000000
    or      t7, t4, t6                 # t7 = 00000000
    sw      t7, 0x0004(v1)             # FFFFFFF4
    lui     t9, 0xDF00                 # t9 = DF000000
    sw      t9, 0x0008(v1)             # FFFFFFF8
    sw      $zero, 0x000C(v1)          # FFFFFFFC
    or      v0, v1, $zero              # v0 = FFFFFFF0
    jr      $ra
    nop


func_8007EE5C:
# Writes frame buffer/z-buffer initialization dlists for POLY_OPA, POLY_XLU, OVERLAY_DISP
# A0 = Graphics Context
# A1 = ?
# A2 = ?
# A3 = ?
    addiu   $sp, $sp, 0xFF48           # $sp -= 0xB8
    sw      s2, 0x0020($sp)
    sw      s0, 0x0018($sp)
    lui     $at, 0x4080                # $at = 40800000
    lui     s0, 0x8010                 # s0 = 80100000
    lui     s2, 0x8010                 # s2 = 80100000
    sw      s1, 0x001C($sp)
    mtc1    $at, $f0                   # $f0 = 4.00
    lui     s1, 0xFF10                 # s1 = FF100000
    addiu   s2, s2, 0xE504             # s2 = 800FE504
    addiu   s0, s0, 0xE500             # s0 = 800FE500
    sw      $ra, 0x0024($sp)
    sw      a1, 0x00BC($sp)
    sw      a2, 0x00C0($sp)
    sw      a3, 0x00C4($sp)
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   t1, t1, 0x8AA0             # t1 = 800F8AA0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t1, 0x0004(v1)             # 00000004
    lw      v0, 0x02D0(a0)             # 000002D0
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(a0)             # 000002D0
    sw      t1, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      t0, 0x02B0(a0)             # 000002B0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a0)             # 000002B0
    sw      t1, 0x0004(t0)             # 00000004
    sw      t7, 0x0000(t0)             # 00000000
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t9, 0xED00                 # t9 = ED000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(a0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t6, 0x0000(s0)             # 800FE500
    lw      t7, 0x0000(s2)             # 800FE504
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    t7, $f16                   # $f16 = -2305843000000000000.00
    cvt.s.w $f6, $f4
    cvt.s.w $f18, $f16
    mul.s   $f8, $f6, $f0
    trunc.w.s $f10, $f8
    mul.s   $f4, $f18, $f0
    mfc1    t8, $f10
    nop
    andi    t9, t8, 0x0FFF             # t9 = 00000008
    trunc.w.s $f6, $f4
    sll     t6, t9, 12
    mfc1    t9, $f6
    nop
    andi    t7, t9, 0x0FFF             # t7 = 00000008
    or      t8, t6, t7                 # t8 = 00000008
    sw      t8, 0x0004(v1)             # 00000004
    lw      v0, 0x02D0(a0)             # 000002D0
    lui     t6, 0xED00                 # t6 = ED000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(a0)             # 000002D0
    sw      t6, 0x0000(v0)             # 00000000
    lw      t7, 0x0000(s0)             # 800FE500
    lw      t8, 0x0000(s2)             # 800FE504
    mtc1    t7, $f8                    # $f8 = 0.00
    mtc1    t8, $f4                    # $f4 = 0.00
    cvt.s.w $f10, $f8
    cvt.s.w $f6, $f4
    mul.s   $f16, $f10, $f0
    trunc.w.s $f18, $f16
    mul.s   $f8, $f6, $f0
    mfc1    t9, $f18
    nop
    andi    t6, t9, 0x0FFF             # t6 = 00000008
    trunc.w.s $f10, $f8
    sll     t7, t6, 12
    mfc1    t6, $f10
    nop
    andi    t8, t6, 0x0FFF             # t8 = 00000008
    or      t9, t7, t8                 # t9 = 00000008
    sw      t9, 0x0004(v0)             # 00000004
    lw      t0, 0x02B0(a0)             # 000002B0
    lui     t7, 0xED00                 # t7 = ED000000
    sw      t0, 0x0098($sp)
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a0)             # 000002B0
    lw      t8, 0x0098($sp)
    sw      t7, 0x0000(t8)             # 00000008
    lw      t9, 0x0000(s0)             # 800FE500
    lw      t6, 0x0000(s2)             # 800FE504
    mtc1    t9, $f16                   # $f16 = 0.00
    mtc1    t6, $f8                    # $f8 = 0.00
    cvt.s.w $f18, $f16
    cvt.s.w $f10, $f8
    mul.s   $f4, $f18, $f0
    trunc.w.s $f6, $f4
    mul.s   $f16, $f10, $f0
    mfc1    t7, $f6
    nop
    andi    t8, t7, 0x0FFF             # t8 = 00000000
    trunc.w.s $f18, $f16
    sll     t9, t8, 12
    mfc1    t8, $f18
    nop
    andi    t6, t8, 0x0FFF             # t6 = 00000000
    lw      t8, 0x0098($sp)
    or      t7, t9, t6                 # t7 = 00000008
    sw      t7, 0x0004(t8)             # 00000004
    lw      v1, 0x02C0(a0)             # 000002C0
    sw      v1, 0x0094($sp)
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a0)             # 000002C0
    lw      t6, 0x0000(s0)             # 800FE500
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    lw      t6, 0x0094($sp)
    andi    t8, t7, 0x0FFF             # t8 = 00000FFF
    or      t9, t8, s1                 # t9 = FF100FFF
    sw      t9, 0x0000(t6)             # 00000000
    lw      t8, 0x0094($sp)
    lw      t7, 0x02DC(a0)             # 000002DC
    sw      t7, 0x0004(t8)             # 00001003
    lw      v1, 0x02C0(a0)             # 000002C0
    sw      v1, 0x0090($sp)
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a0)             # 000002C0
    lw      t6, 0x0000(s0)             # 800FE500
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    lw      t6, 0x0090($sp)
    andi    t8, t7, 0x0FFF             # t8 = 00000FFF
    or      t9, t8, s1                 # t9 = FF100FFF
    sw      t9, 0x0000(t6)             # 00000000
    lw      t8, 0x0090($sp)
    lw      t7, 0x02DC(a0)             # 000002DC
    sw      t7, 0x0004(t8)             # 00001003
    lw      v0, 0x02D0(a0)             # 000002D0
    lui     t3, 0xFE00                 # t3 = FE000000
    sw      v0, 0x008C($sp)
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(a0)             # 000002D0
    lw      t6, 0x0000(s0)             # 800FE500
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    lw      t6, 0x008C($sp)
    andi    t8, t7, 0x0FFF             # t8 = 00000FFF
    or      t9, t8, s1                 # t9 = FF100FFF
    sw      t9, 0x0000(t6)             # 00000000
    lw      t8, 0x008C($sp)
    lw      t7, 0x02DC(a0)             # 000002DC
    sw      t7, 0x0004(t8)             # 00001003
    lw      t0, 0x02B0(a0)             # 000002B0
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a0)             # 000002B0
    lw      t6, 0x0000(s0)             # 800FE500
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    andi    t8, t7, 0x0FFF             # t8 = 00000FFF
    or      t9, t8, s1                 # t9 = FF100FFF
    sw      t9, 0x0000(t0)             # 00000000
    lw      t6, 0x02DC(a0)             # 000002DC
    sw      t6, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t1, 0x8013                 # t1 = 80130000
    addiu   t1, t1, 0xBE40             # t1 = 8012BE40
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a0)             # 000002C0
    sw      t1, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v0, 0x02D0(a0)             # 000002D0
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(a0)             # 000002D0
    sw      t1, 0x0004(v0)             # 00000004
    sw      t3, 0x0000(v0)             # 00000000
    lw      t0, 0x02B0(a0)             # 000002B0
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a0)             # 000002B0
    sw      t1, 0x0004(t0)             # 00000004
    sw      t3, 0x0000(t0)             # 00000000
    lw      t6, -0x4600(t6)            # 8011BA00
    lh      t7, 0x0190(t6)             # 80120190
    slti    $at, t7, 0x0002
    beql    $at, $zero, lbl_8007F448
    lw      $ra, 0x0024($sp)
    lw      t8, -0x2EC0(t8)            # 8011D140
    slti    $at, t8, 0x0002
    beql    $at, $zero, lbl_8007F448
    lw      $ra, 0x0024($sp)
    sw      a0, 0x00B8($sp)
    jal     func_80099650
    sw      t1, 0x0028($sp)
    lui     $ra, 0xE300                # $ra = E3000000
    ori     $ra, $ra, 0x0A01           # $ra = E3000A01
    lw      a0, 0x00B8($sp)
    lw      t1, 0x0028($sp)
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t4, 0xF600                 # t4 = F6000000
    lui     t5, 0xE700                 # t5 = E7000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a0)             # 000002C0
    lw      t6, 0x0000(s0)             # 800FE500
    sw      t1, 0x0004(v1)             # 00000004
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    andi    t8, t7, 0x0FFF             # t8 = 00000FFF
    or      t9, t8, s1                 # t9 = FF100FFF
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t7, 0x0030                 # t7 = 00300000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    sw      t7, 0x0004(v1)             # 00000004
    sw      $ra, 0x0000(v1)            # 00000000
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t9, 0xE200                 # t9 = E2000000
    ori     t9, t9, 0x001C             # t9 = E200001C
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(a0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0xFFFC                 # t8 = FFFC0000
    ori     t8, t8, 0xFFFC             # t8 = FFFCFFFC
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xF700                 # t7 = F7000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a0)             # 000002C0
    andi    t3, v0, 0x03FF             # t3 = 00000000
    sll     t3, t3,  2
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a0)             # 000002C0
    lw      t6, 0x0000(s0)             # 800FE500
    addiu   t7, t6, 0xFFFF             # t7 = 00000007
    andi    t8, t7, 0x03FF             # t8 = 00000007
    lw      t7, 0x0000(s2)             # 800FE504
    sll     t9, t8, 14
    or      t6, t9, t4                 # t6 = F6000008
    subu    t8, t7, v0
    addiu   t9, t8, 0xFFFF             # t9 = 00000006
    andi    t7, t9, 0x03FF             # t7 = 00000006
    sll     t8, t7,  2
    or      t9, t6, t8                 # t9 = F600000F
    sw      t9, 0x0000(v1)             # 00000000
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a0)             # 000002C0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(a0)             # 000002C0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lw      t8, 0x0000(s0)             # 800FE500
    addiu   t9, t8, 0xFFFF             # t9 = 00000006
    andi    t7, t9, 0x0FFF             # t7 = 00000006
    or      t6, t7, s1                 # t6 = FF100006
    sw      t6, 0x0000(v1)             # 00000000
    lw      t8, 0x02DC(a0)             # 000002DC
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t7, 0x0030                 # t7 = 00300000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a0)             # 000002C0
    sw      t7, 0x0004(v1)             # 00000004
    sw      $ra, 0x0000(v1)            # 00000000
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0xE200                 # t8 = E2000000
    ori     t8, t8, 0x001C             # t8 = E200001C
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t7, 0xF700                 # t7 = F7000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lbu     t6, 0x00BF($sp)
    lbu     t7, 0x00C3($sp)
    sll     t8, t6,  8
    andi    t9, t8, 0xF800             # t9 = 00000000
    sll     t6, t7,  3
    andi    t8, t6, 0x07C0             # t8 = 00000000
    lbu     t6, 0x00C7($sp)
    or      t7, t9, t8                 # t7 = 00000000
    sra     t9, t6,  2
    andi    t8, t9, 0x003E             # t8 = 00000000
    or      a3, t7, t8                 # a3 = 00000000
    ori     a3, a3, 0x0001             # a3 = 00000001
    sll     t6, a3, 16
    or      t2, t6, a3                 # t2 = 00000009
    sw      t2, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a0)             # 000002C0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a0)             # 000002C0
    lw      t7, 0x0000(s0)             # 800FE500
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    andi    t6, t8, 0x03FF             # t6 = 000003FF
    lw      t8, 0x0000(s2)             # 800FE504
    sll     t9, t6, 14
    or      t7, t9, t4                 # t7 = F6000008
    subu    t6, t8, v0
    addiu   t9, t6, 0xFFFF             # t9 = 000003FE
    andi    t8, t9, 0x03FF             # t8 = 000003FE
    sll     t6, t8,  2
    or      t9, t7, t6                 # t9 = F60003FF
    sw      t9, 0x0000(v1)             # 00000000
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a0)             # 000002C0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(a0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    blezl   v0, lbl_8007F448
    lw      $ra, 0x0024($sp)
    lw      t0, 0x02B0(a0)             # 000002B0
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(a0)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t5, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(a0)             # 000002B0
    lui     t9, 0x0030                 # t9 = 00300000
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a0)             # 000002B0
    sw      t9, 0x0004(t0)             # 00000004
    sw      $ra, 0x0000(t0)            # 00000000
    lw      t0, 0x02B0(a0)             # 000002B0
    lui     t7, 0xE200                 # t7 = E2000000
    ori     t7, t7, 0x001C             # t7 = E200001C
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a0)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t7, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(a0)             # 000002B0
    lui     t9, 0xF700                 # t9 = F7000000
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a0)             # 000002B0
    sw      t2, 0x0004(t0)             # 00000004
    sw      t9, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(a0)             # 000002B0
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a0)             # 000002B0
    lw      t7, 0x0000(s0)             # 800FE500
    sw      $zero, 0x0004(t0)          # 00000004
    addiu   t6, t7, 0xFFFF             # t6 = E200001B
    andi    t9, t6, 0x03FF             # t9 = 0000001B
    sll     t8, t9, 14
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    andi    t9, t6, 0x03FF             # t9 = 000003FF
    or      t7, t8, t4                 # t7 = F6000008
    sll     t8, t9,  2
    or      t6, t7, t8                 # t6 = F6000008
    sw      t6, 0x0000(t0)             # 00000000
    lw      t0, 0x02B0(a0)             # 000002B0
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a0)             # 000002B0
    lw      t7, 0x0000(s0)             # 800FE500
    addiu   t8, t7, 0xFFFF             # t8 = F6000007
    andi    t6, t8, 0x03FF             # t6 = 00000007
    lw      t8, 0x0000(s2)             # 800FE504
    sll     t9, t6, 14
    or      t7, t9, t4                 # t7 = F6000008
    addiu   t6, t8, 0xFFFF             # t6 = F6000006
    andi    t9, t6, 0x03FF             # t9 = 00000006
    sll     t8, t9,  2
    or      t6, t7, t8                 # t6 = F600000F
    sw      t6, 0x0000(t0)             # 00000000
    lw      t9, 0x0000(s2)             # 800FE504
    subu    t7, t9, v0
    andi    t8, t7, 0x03FF             # t8 = 00000008
    sll     t6, t8,  2
    sw      t6, 0x0004(t0)             # 00000004
    lw      t0, 0x02B0(a0)             # 000002B0
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a0)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t5, 0x0000(t0)             # 00000000
    lw      $ra, 0x0024($sp)
lbl_8007F448:
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B8           # $sp += 0xB8


func_8007F45C:
    lui     $at, 0x4080                # $at = 40800000
    lui     t0, 0x8010                 # t0 = 80100000
    mtc1    $at, $f0                   # $f0 = 4.00
    addiu   t0, t0, 0xE500             # t0 = 800FE500
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x8AA0             # t8 = 800F8AA0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t1, 0xED00                 # t1 = ED000000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a0)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t2, 0x0000(t0)             # 800FE500
    lw      t7, -0x1AFC(t7)            # 800FE504
    mtc1    t2, $f4                    # $f4 = 0.00
    mtc1    t7, $f16                   # $f16 = 0.00
    cvt.s.w $f6, $f4
    cvt.s.w $f18, $f16
    mul.s   $f8, $f6, $f0
    nop
    mul.s   $f4, $f18, $f0
    trunc.w.s $f10, $f8
    trunc.w.s $f6, $f4
    mfc1    t4, $f10
    mfc1    t9, $f6
    andi    t5, t4, 0x0FFF             # t5 = 00000000
    sll     t6, t5, 12
    andi    t1, t9, 0x0FFF             # t1 = 00000008
    or      t2, t6, t1                 # t2 = 00000008
    sw      t2, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t5, 0x8013                 # t5 = 80130000
    addiu   t5, t5, 0xBE40             # t5 = 8012BE40
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a0)             # 000002C0
    lui     t4, 0xFE00                 # t4 = FE000000
    sw      t4, 0x0000(v1)             # 00000000
    sw      t5, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     $at, 0xFF10                # $at = FF100000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a0)             # 000002C0
    lw      t8, 0x0000(t0)             # 800FE500
    addiu   t9, t8, 0xFFFF             # t9 = 800F8A9F
    andi    t6, t9, 0x0FFF             # t6 = 00000A9F
    or      t1, t6, $at                # t1 = FF100A9F
    sw      t1, 0x0000(v1)             # 00000000
    lw      t2, 0x02DC(a0)             # 000002DC
    sw      t2, 0x0004(v1)             # 00000004
    jr      $ra
    nop
