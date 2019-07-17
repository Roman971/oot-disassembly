.section .text
func_80B75F10:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      $zero, 0x001C($sp)
    lw      a0, 0x0028($sp)
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x0368             # a0 = 06000368
    jal     func_80033EF4
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFF4
    lw      a0, 0x002C($sp)
    lw      a2, 0x0028($sp)
    lw      a3, 0x001C($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      t6, 0x0028($sp)
    lui     a1, %hi(var_80B76070)      # a1 = 80B70000
    addiu   a1, a1, %lo(var_80B76070)  # a1 = 80B76070
    sw      v0, 0x013C(t6)             # 0000013C
    jal     func_80063F7C
    lw      a0, 0x0028($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B75F7C:
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


func_80B75FB0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x0118(a3)             # 00000118
    addiu   a0, a3, 0x0050             # a0 = 00000050
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    bne     t6, $zero, lbl_80B76004
    lui     a2, 0x3BA3                 # a2 = 3BA30000
    ori     a2, a2, 0xD70A             # a2 = 3BA3D70A
    jal     func_8006385C
    sw      a3, 0x0018($sp)
    beq     v0, $zero, lbl_80B75FF8
    lw      a3, 0x0018($sp)
    jal     func_80020EB4
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B76008
    lw      $ra, 0x0014($sp)
lbl_80B75FF8:
    lwc1    $f0, 0x0050(a3)            # 00000050
    swc1    $f0, 0x0058(a3)            # 00000058
    swc1    $f0, 0x0054(a3)            # 00000054
lbl_80B76004:
    lw      $ra, 0x0014($sp)
lbl_80B76008:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B76014:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0150             # a1 = 06000150
    jal     func_80028048
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80B76050: .word 0x01C30600, 0x00000000, 0x00AF0000, 0x00000154
.word func_80B75F10
.word func_80B75F7C
.word func_80B75FB0
.word func_80B76014
var_80B76070: .word 0xC8500064, 0xB0F403E8, 0xB0F801F4, 0x30FC03E8

.section .rodata


