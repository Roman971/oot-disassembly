.section .text
func_80B7EBC0:
    sw      a1, 0x0004($sp)
    lui     t6, %hi(func_80B7EBD8)     # t6 = 80B80000
    addiu   t6, t6, %lo(func_80B7EBD8) # t6 = 80B7EBD8
    sw      t6, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_80B7EBD8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    lh      t6, 0x0142(s0)             # 00000142
    beql    t6, $zero, lbl_80B7EC78
    sh      $zero, 0x0140(s0)          # 00000140
    lh      t7, 0x0140(s0)             # 00000140
    slti    $at, t7, 0x003C
    bnel    $at, $zero, lbl_80B7EC68
    lh      t2, 0x0140(s0)             # 00000140
    lw      a0, 0x1C44(a1)             # 00001C44
    jal     func_8002187C
    sw      a1, 0x003C($sp)
    bne     v0, $zero, lbl_80B7EC64
    lw      a1, 0x003C($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      $zero, 0x0018($sp)
    addiu   a2, $zero, 0x0095          # a2 = 00000095
    swc1    $f6, 0x0014($sp)
    lh      t8, 0x00B6(s0)             # 000000B6
    sw      $zero, 0x0020($sp)
    sw      t8, 0x001C($sp)
    lh      t9, 0x001C(s0)             # 0000001C
    ori     t0, t9, 0x8000             # t0 = 00008000
    jal     func_80025110              # ActorSpawn
    sw      t0, 0x0024($sp)
    lui     t1, %hi(func_80B7EC8C)     # t1 = 80B80000
    addiu   t1, t1, %lo(func_80B7EC8C) # t1 = 80B7EC8C
    beq     $zero, $zero, lbl_80B7EC78
    sw      t1, 0x013C(s0)             # 0000013C
lbl_80B7EC64:
    lh      t2, 0x0140(s0)             # 00000140
lbl_80B7EC68:
    addiu   t3, t2, 0x0001             # t3 = 00000001
    beq     $zero, $zero, lbl_80B7EC78
    sh      t3, 0x0140(s0)             # 00000140
    sh      $zero, 0x0140(s0)          # 00000140
lbl_80B7EC78:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80B7EC8C:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80B7EC9C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop

.section .data

var_80B7ECC0: .word 0x01CF0700, 0x00000010, 0x00010000, 0x00000144
.word func_80B7EBC0
.word 0x80027EF4
.word func_80B7EC9C
.word 0x00000000

.section .rodata


