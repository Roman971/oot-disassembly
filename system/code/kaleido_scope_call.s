# "Kaleido Scope (Pause Screen) Call" part of the code file
#
# Handles the construction and destruction of the pause screen and its transitions between sections.
#
# Starts at VRAM: 80099E90 / VROM: B0FDF0
#

.section .text
func_80099E90:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x8010                 # a0 = 80100000
    lw      a0, -0x1B44(a0)            # 800FE4BC
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0xE49C             # t6 = 800FE49C
    beql    t6, a0, lbl_80099ED0
    lw      $ra, 0x0014($sp)
    beq     a0, $zero, lbl_80099EC0
    nop
    jal     func_80099CBC
    nop
lbl_80099EC0:
    lui     a0, 0x8010                 # a0 = 80100000
    jal     func_80099C60
    addiu   a0, a0, 0xE49C             # a0 = 800FE49C
    lw      $ra, 0x0014($sp)
lbl_80099ED0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80099EDC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lui     a0, 0x8082                 # a0 = 80820000
    jal     func_80099DBC
    addiu   a0, a0, 0x63C0             # a0 = 808263C0
    lui     $at, 0x8012                # $at = 80120000
    lui     a0, 0x8082                 # a0 = 80820000
    sw      v0, -0x2FC0($at)           # 8011D040
    jal     func_80099DBC
    addiu   a0, a0, 0x5A00             # a0 = 80825A00
    lui     $at, 0x8012                # $at = 80120000
    sw      v0, -0x2FBC($at)           # 8011D044
    jal     func_8005BACC
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80099F28:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_8005BC44
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80099F48:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    a1, a3, $at
    lhu     t6, 0x0934(a1)             # 00000934
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0760           # $at = 00010760
    bne     t6, $zero, lbl_80099F7C
    addu    v1, a3, $at
    lhu     t7, 0x0936(a1)             # 00000936
    beql    t7, $zero, lbl_8009A0DC
    lw      $ra, 0x0014($sp)
lbl_80099F7C:
    lhu     a0, 0x01D4(v1)             # 000001D4
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     a2, a0, lbl_80099FC8
    or      v0, a0, $zero              # v0 = 00000000
    jal     func_80099650
    sw      v1, 0x001C($sp)
    lw      v1, 0x001C($sp)
    bne     v0, $zero, lbl_8009A0D8
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x4600(t8)            # 8011BA00
    sh      a2, 0x0190(t8)             # 80120190
    lhu     t0, 0x01D4(v1)             # 000001D4
    sh      $zero, 0x01E4(v1)          # 000001E4
    sh      $zero, 0x01EC(v1)          # 000001EC
    addiu   t1, t0, 0x0001             # t1 = 00000001
    b       lbl_8009A0D8
    sh      t1, 0x01D4(v1)             # 000001D4
lbl_80099FC8:
    bne     v0, $at, lbl_80099FF0
    lui     t2, 0x8012                 # t2 = 80120000
    lw      t2, -0x4600(t2)            # 8011BA00
    sh      a2, 0x0190(t2)             # 80120190
    lhu     t4, 0x01D4(v1)             # 000001D4
    sh      $zero, 0x01E4(v1)          # 000001E4
    sh      $zero, 0x01EC(v1)          # 000001EC
    addiu   t5, t4, 0x0001             # t5 = 00000001
    b       lbl_8009A0D8
    sh      t5, 0x01D4(v1)             # 000001D4
lbl_80099FF0:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_8009A008
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     v0, $at, lbl_8009A028
    nop
lbl_8009A008:
    lw      t6, -0x4600(t6)            # 8011BA00
    addiu   t8, a0, 0x0001             # t8 = 00000001
    lh      t7, 0x0190(t6)             # 80120190
    slti    $at, t7, 0x0003
    bnel    $at, $zero, lbl_8009A0DC
    lw      $ra, 0x0014($sp)
    b       lbl_8009A0D8
    sh      t8, 0x01D4(v1)             # 000001D4
lbl_8009A028:
    beq     v0, $zero, lbl_8009A0D8
    lui     a0, 0x8010                 # a0 = 80100000
    lw      a0, -0x1B44(a0)            # 800FE4BC
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0xE480             # t9 = 800FE480
    beq     t9, a0, lbl_8009A084
    nop
    beq     a0, $zero, lbl_8009A060
    nop
    sw      a1, 0x0018($sp)
    jal     func_80099CBC
    sw      a3, 0x0028($sp)
    lw      a1, 0x0018($sp)
    lw      a3, 0x0028($sp)
lbl_8009A060:
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0xE480             # a0 = 800FE480
    sw      a1, 0x0018($sp)
    jal     func_80099C60
    sw      a3, 0x0028($sp)
    lui     a0, 0x8010                 # a0 = 80100000
    lw      a0, -0x1B44(a0)            # 800FE4BC
    lw      a1, 0x0018($sp)
    lw      a3, 0x0028($sp)
lbl_8009A084:
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   t0, t0, 0xE480             # t0 = 800FE480
    bne     t0, a0, lbl_8009A0D8
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x2FC0(t9)            # 8011D040
    or      a0, a3, $zero              # a0 = 00000000
    sw      a1, 0x0018($sp)
    jalr    $ra, t9
    nop
    lw      a1, 0x0018($sp)
    lhu     t1, 0x0934(a1)             # 00000934
    bnel    t1, $zero, lbl_8009A0DC
    lw      $ra, 0x0014($sp)
    lhu     t2, 0x0936(a1)             # 00000936
    lui     a0, 0x8010                 # a0 = 80100000
    bnel    t2, $zero, lbl_8009A0DC
    lw      $ra, 0x0014($sp)
    jal     func_80099CBC
    addiu   a0, a0, 0xE480             # a0 = 800FE480
    jal     func_80099E90
    nop
lbl_8009A0D8:
    lw      $ra, 0x0014($sp)
lbl_8009A0DC:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8009A0E8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a0
    lh      t7, 0x0190(t6)             # 80120190
    slti    $at, t7, 0x0003
    bnel    $at, $zero, lbl_8009A15C
    lw      $ra, 0x0014($sp)
    lhu     v0, 0x0934(v0)             # 00010934
    slti    $at, v0, 0x0004
    bne     $at, $zero, lbl_8009A124
    slti    $at, v0, 0x0008
    bne     $at, $zero, lbl_8009A134
lbl_8009A124:
    slti    $at, v0, 0x000B
    bne     $at, $zero, lbl_8009A158
    slti    $at, v0, 0x0013
    beq     $at, $zero, lbl_8009A158
lbl_8009A134:
    lui     t9, 0x8010                 # t9 = 80100000
    lw      t9, -0x1B44(t9)            # 800FE4BC
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0xE480             # t8 = 800FE480
    bne     t8, t9, lbl_8009A158
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x2FBC(t9)            # 8011D044
    jalr    $ra, t9
    nop
lbl_8009A158:
    lw      $ra, 0x0014($sp)
lbl_8009A15C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
