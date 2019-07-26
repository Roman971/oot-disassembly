.section .text
func_80B34900:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    lw      t7, 0x0000(a3)             # 00000000
    lui     t2, %hi(func_80B34980)     # t2 = 80B30000
    addiu   t2, t2, %lo(func_80B34980) # t2 = 80B34980
    sw      t7, 0x0000(a2)             # 00000000
    lw      t6, 0x0004(a3)             # 00000004
    addiu   t3, $zero, 0x0064          # t3 = 00000064
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sw      t6, 0x0004(a2)             # 00000004
    lw      t7, 0x0008(a3)             # 00000008
    sw      t7, 0x0008(a2)             # 00000008
    lw      t9, 0x000C(a3)             # 0000000C
    sw      t9, 0x000C(a2)             # 0000000C
    lw      t8, 0x0010(a3)             # 00000010
    sw      t8, 0x0010(a2)             # 00000010
    lw      t9, 0x0014(a3)             # 00000014
    sw      t9, 0x0014(a2)             # 00000014
    lw      t1, 0x0018(a3)             # 00000018
    sw      t1, 0x0018(a2)             # 00000018
    lw      t0, 0x001C(a3)             # 0000001C
    sw      t0, 0x001C(a2)             # 0000001C
    lw      t1, 0x0020(a3)             # 00000020
    sw      t2, 0x0024(a2)             # 00000024
    sh      t3, 0x005C(a2)             # 0000005C
    sw      t1, 0x0020(a2)             # 00000020
    lh      t4, 0x0024(a3)             # 00000024
    sh      t4, 0x0042(a2)             # 00000042
    lw      t5, 0x0028(a3)             # 00000028
    sw      t5, 0x003C(a2)             # 0000003C
    jr      $ra
    nop


func_80B34980:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    or      a3, a2, $zero              # a3 = 00000000
    lw      t6, 0x0030($sp)
    lw      t7, 0x003C(a3)             # 0000003C
    or      a1, a3, $zero              # a1 = 00000000
    lw      v0, 0x1C44(t6)             # 00001C44
    sw      t7, 0x001C($sp)
    lwc1    $f18, 0x0000(a3)           # 00000000
    lwc1    $f16, 0x0024(v0)           # 00000024
    lwc1    $f14, 0x0028(v0)           # 00000028
    lwc1    $f12, 0x0004(a3)           # 00000004
    sub.s   $f18, $f16, $f18
    lwc1    $f16, 0x002C(v0)           # 0000002C
    lwc1    $f10, 0x0008(a3)           # 00000008
    sub.s   $f12, $f14, $f12
    swc1    $f18, 0x0028($sp)
    addiu   a0, t6, 0x07C0             # a0 = 000007C0
    sub.s   $f10, $f16, $f10
    lui     a2, 0x41F0                 # a2 = 41F00000
    swc1    $f12, 0x0024($sp)
    sw      a3, 0x0038($sp)
    jal     func_80030D08
    swc1    $f10, 0x0020($sp)
    lw      a3, 0x0038($sp)
    lwc1    $f2, 0x0028($sp)
    lwc1    $f12, 0x0024($sp)
    bne     v0, $zero, lbl_80B34A3C
    lwc1    $f14, 0x0020($sp)
    mul.s   $f4, $f2, $f2
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f16                  # $f16 = 70.00
    mul.s   $f6, $f12, $f12
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lw      t9, 0x001C($sp)
    mul.s   $f10, $f14, $f14
    add.s   $f8, $f4, $f6
    add.s   $f0, $f8, $f10
    sqrt.s  $f0, $f0
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_80B34A58
    lw      $ra, 0x0014($sp)
    b       lbl_80B34A54
    sh      t8, 0x0000(t9)             # 00000000
lbl_80B34A3C:
    lh      t0, 0x005C(a3)             # 0000005C
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    slti    $at, t0, 0x0002
    bnel    $at, $zero, lbl_80B34A58
    lw      $ra, 0x0014($sp)
    sh      t1, 0x005C(a3)             # 0000005C
lbl_80B34A54:
    lw      $ra, 0x0014($sp)
lbl_80B34A58:
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

.word 0x00000018
.word func_80B34900
.word 0x00000000, 0x00000000

.section .rodata


