# "Kaleido Scope (Pause Screen) Manager" part of the code file
#
# Handles pause screen allocation and data storage.
#
# Starts at VRAM: 80099C60 / VROM: B0FBC0
#

.section .text
func_80099C60:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t6, -0x1B48(t6)            # 800FE4B8
    lw      a0, 0x0004(s0)             # 00000004
    lw      a1, 0x0008(s0)             # 00000008
    lw      a2, 0x000C(s0)             # 0000000C
    lw      a3, 0x0010(s0)             # 00000010
    sw      t6, 0x0000(s0)             # 00000000
    jal     func_800CCBB8
    sw      t6, 0x0010($sp)
    lw      t8, 0x0000(s0)             # 00000000
    lw      t9, 0x000C(s0)             # 0000000C
    lui     $at, 0x8010                # $at = 80100000
    subu    t0, t8, t9
    sw      t0, 0x0014(s0)             # 00000014
    sw      s0, -0x1B44($at)           # 800FE4BC
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80099CBC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      a3, 0x0000(a2)             # 00000000
    beq     a3, $zero, lbl_80099CFC
    or      a0, a3, $zero              # a0 = 00000000
    lw      t6, 0x0010(a2)             # 00000010
    lw      t7, 0x000C(a2)             # 0000000C
    sw      $zero, 0x0014(a2)          # 00000014
    sw      a2, 0x0018($sp)
    jal     func_80002E80              # bzero
    subu    a1, t6, t7
    lw      a2, 0x0018($sp)
    lui     $at, 0x8010                # $at = 80100000
    sw      $zero, 0x0000(a2)          # 00000000
    sw      $zero, -0x1B44($at)        # 800FE4BC
lbl_80099CFC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80099D0C:
# Calculates and sets Start Address for player_actor and kaleido_scope
# A0 = Global Context
# Result written to 800FE4B8
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     v0, 0x8010                 # v0 = 80100000
    lui     a0, 0x8010                 # a0 = 80100000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a0, a0, 0xE4B8             # a0 = 800FE4B8
    addiu   v0, v0, 0xE480             # v0 = 800FE480
    lw      t6, 0x0010(v0)             # 800FE490
lbl_80099D30:
    lw      t7, 0x000C(v0)             # 800FE48C
    addiu   v0, v0, 0x001C             # v0 = 800FE49C
    subu    v1, t6, t7
    slt     $at, a1, v1
    beq     $at, $zero, lbl_80099D4C
    nop
    or      a1, v1, $zero              # a1 = 00000000
lbl_80099D4C:
    bnel    v0, a0, lbl_80099D30
    lw      t6, 0x0010(v0)             # 800FE4AC
    jal     func_800A01B8
    addiu   a0, a2, 0x0074             # a0 = 00000074
    lui     $at, 0x8010                # $at = 80100000
    sw      v0, -0x1B48($at)           # 800FE4B8
    lui     $at, 0x8010                # $at = 80100000
    sw      $zero, -0x1B44($at)        # 800FE4BC
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80099D7C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x8010                 # a0 = 80100000
    lw      a0, -0x1B44(a0)            # 800FE4BC
    beq     a0, $zero, lbl_80099DA4
    nop
    jal     func_80099CBC
    nop
    lui     $at, 0x8010                # $at = 80100000
    sw      $zero, -0x1B44($at)        # 800FE4BC
lbl_80099DA4:
    lui     $at, 0x8010                # $at = 80100000
    sw      $zero, -0x1B48($at)        # 800FE4B8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80099DBC:
# Converts player/pause overlay virtual address to ram address?
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lui     t0, 0x8010                 # t0 = 80100000
    lw      t0, -0x1B44(t0)            # 800FE4BC
    lui     a2, 0x8010                 # a2 = 80100000
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t0, $zero, lbl_80099E40
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    lw      a2, -0x1B74(a2)            # 800FE48C
    lui     t0, 0x8010                 # t0 = 80100000
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   t0, t0, 0xE480             # t0 = 800FE480
    lw      a0, -0x1B70(a0)            # 800FE490
    or      v1, a2, $zero              # v1 = 80100000
    sltu    $at, a1, v1
lbl_80099DFC:
    bne     $at, $zero, lbl_80099E30
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sltu    $at, a0, a1
    bne     $at, $zero, lbl_80099E30
    nop
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0xE480             # a0 = 800FE480
    sw      a1, 0x0020($sp)
    jal     func_80099C60
    sw      t0, 0x001C($sp)
    lw      a1, 0x0020($sp)
    b       lbl_80099E40
    lw      t0, 0x001C($sp)
lbl_80099E30:
    bnel    v0, a3, lbl_80099DFC
    sltu    $at, a1, v1
    b       lbl_80099E78
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80099E40:
    beq     t0, $zero, lbl_80099E68
    nop
    lw      t6, 0x000C(t0)             # 0000000C
    sltu    $at, a1, t6
    bne     $at, $zero, lbl_80099E68
    nop
    lw      t7, 0x0010(t0)             # 00000010
    sltu    $at, a1, t7
    bnel    $at, $zero, lbl_80099E74
    lw      t8, 0x0014(t0)             # 00000014
lbl_80099E68:
    b       lbl_80099E78
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t8, 0x0014(t0)             # 00000014
lbl_80099E74:
    addu    v0, a1, t8
lbl_80099E78:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop
    nop
