# Unknown part of the code file
#
# The purpose of this file's content is currently unknown until further investigation.
#
# Starts at VRAM: 8009FEC0 / VROM: B15E20
#

.section .text
func_8009FEC0:
# Frame Display List Buffer - Allocate (Memory Allocation Handle)
# (Wrapper for 800A0248)
# A0 = Allocation Handle ptr
# A1 = Allocate Start
# A2 = Allocate Size
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800A0248
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009FEE0:
# Frame Display List Buffer - Zero Memory Allocation Handle
# (Wrapper for 800A026C)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800A026C
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009FF00:
# Frame Display List Buffer - Check if full
# (Wrapper for 800A0208)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800A0208
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009FF20:
# (Wrapper for 800A022C)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800A022C
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009FF40:
# (Wrapper for 800A01F4)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800A01F4
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009FF60:
# (Wrapper for 800A00D0)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800A00D0
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009FF80:
# (Wrapper for 800A00DC)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800A00DC
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009FFA0:
# (Wrapper for 800A00E8)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800A00E8
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009FFC0:
# (Wrapper for 800A00F4)
# Calls wrapped function with A1 <<= 3
# A0 = ?
# A1 = s32?
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a1, $zero              # a2 = 00000000
    jal     func_800A00F4
    sll     a1, a2,  3
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009FFE4:
# (Wrapper for 8009FFC0)
# Calls wrapped function with A1 = 1
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_8009FFC0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A0004:
# (Wrapper for 8009FFE4)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_8009FFE4
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A0024:
# (Wrapper for 800A0128)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800A0128
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A0044:
# (Wrapper for 800A0024)
# Calls wrapped function with A1 <<= 6
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a1, $zero              # a2 = 00000000
    jal     func_800A0024
    sll     a1, a2,  6
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A0068:
# (Wrapper for 800A0024)
# Calls wrapped function with A1 = 0x40
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800A0024
    addiu   a1, $zero, 0x0040          # a1 = 00000040
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A0088:
# (Wrapper for 800A0024)
# Calls wrapped function with A1 <<= 4
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a1, $zero              # a2 = 00000000
    jal     func_800A0024
    sll     a1, a2,  4
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A00AC:
# (Wrapper for 800A0024)
# Calls wrapped function with A1 = 0x10
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800A0024
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop


func_800A00D0:
    lw      v0, 0x0008(a0)             # 00000008
    jr      $ra
    nop


func_800A00DC:
    sw      a1, 0x0008(a0)             # 00000008
    jr      $ra
    nop


func_800A00E8:
    lw      v0, 0x000C(a0)             # 0000000C
    jr      $ra
    nop


func_800A00F4:
# A0 = ?
# A1 = Increment
    lw      v0, 0x0008(a0)             # 00000008
    addu    t6, v0, a1
    sw      t6, 0x0008(a0)             # 00000008
    jr      $ra
    nop


func_800A0108:
# Wrapper for 800A00F4 (A1 = 1)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800A00F4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A0128:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bnel    a1, $at, lbl_800A0140
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     $zero, $zero, lbl_800A019C
    addiu   v1, $zero, 0xFFF8          # v1 = FFFFFFF8
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_800A0140:
    beq     a1, $at, lbl_800A0150
    addiu   v0, $zero, 0x000C          # v0 = 0000000C
    bne     a1, v0, lbl_800A0158
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_800A0150:
    beq     $zero, $zero, lbl_800A019C
    addiu   v1, $zero, 0xFFFC          # v1 = FFFFFFFC
lbl_800A0158:
    beq     a1, $at, lbl_800A0180
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     a1, $at, lbl_800A0180
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     a1, $at, lbl_800A0180
    nop
    beq     a1, v0, lbl_800A0180
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bnel    a1, $at, lbl_800A018C
    sltiu   $at, a1, 0x0010
lbl_800A0180:
    beq     $zero, $zero, lbl_800A019C
    addiu   v1, $zero, 0xFFFE          # v1 = FFFFFFFE
    sltiu   $at, a1, 0x0010
lbl_800A018C:
    bne     $at, $zero, lbl_800A019C
    or      v1, $zero, $zero           # v1 = 00000000
    beq     $zero, $zero, lbl_800A019C
    addiu   v1, $zero, 0xFFF0          # v1 = FFFFFFF0
lbl_800A019C:
    lw      t6, 0x000C(a0)             # 0000000C
    and     t7, t6, v1
    subu    t8, t7, a1
    and     v0, t8, v1
    sw      v0, 0x000C(a0)             # 0000000C
    jr      $ra
    nop


func_800A01B8:
# Allocates to the tail end of the given heap (0x10 aligned)
# A0 = Allocation Handle ptr
# A1 = Allocate Size
# V0 = ptr to free space
    lw      t6, 0x000C(a0)             # 0000000C
    addiu   $at, $zero, 0xFFF0         # $at = FFFFFFF0
    and     t7, t6, $at
    subu    t8, t7, a1
    and     v0, t8, $at
    sw      v0, 0x000C(a0)             # 0000000C
    jr      $ra
    nop


func_800A01D8:
# Allocates to the tail end of the given heap (custom align)
# A0 = Allocation Handle ptr
# A1 = Allocate Size
# A2 = Alignment Constant
# V0 = ptr to free space
    lw      t6, 0x000C(a0)             # 0000000C
    and     t7, t6, a2
    subu    t8, t7, a1
    and     v0, t8, a2
    sw      v0, 0x000C(a0)             # 0000000C
    jr      $ra
    nop


func_800A01F4:
# Get Free Memory left in memory allocation handle
# A0 = Allocation Handle ptr
# V0 = free space
    lw      t6, 0x000C(a0)             # 0000000C
    lw      t7, 0x0008(a0)             # 00000008
    subu    v0, t6, t7
    jr      $ra
    nop


func_800A0208:
# Is Allocation Handle full
# A0 = Allocation Handle ptr
# V0 = 1 if full, 0 if free space remains
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800A01F4
    nop
    slti    v0, v0, 0x0000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A022C:
# Set Allocation Handle (helper)
# A0 = Allocation Handle ptr
# Size and Start address for handle must be valid
    lw      v0, 0x0004(a0)             # 00000004
    lw      t6, 0x0000(a0)             # 00000000
    sw      v0, 0x0008(a0)             # 00000008
    addu    t7, v0, t6
    sw      t7, 0x000C(a0)             # 0000000C
    jr      $ra
    nop


func_800A0248:
# Set Allocation Handle
# (Wrapper for 800A022C)
# A0 = Allocation Handle ptr
# A1 = Allocate Start
# A2 = Allocate Size
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0004(a0)             # 00000004
    jal     func_800A022C
    sw      a2, 0x0000(a0)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800A026C:
# Zero Allocation Handle
# A0 = Allocation Handle ptr
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
