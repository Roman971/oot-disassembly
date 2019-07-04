.section .text
func_809215E0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88              
    sw      a0, 0x0018($sp)            
    lw      a0, 0x0018($sp)            
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    lw      t8, 0x0024(a0)             # 00000024
    lw      t7, 0x0028(a0)             # 00000028
    sw      $zero, 0x013C(a0)          # 0000013C
    sw      t8, 0x0038(a0)             # 00000038
    lw      t8, 0x002C(a0)             # 0000002C
    sw      t6, 0x0140(a0)             # 00000140
    sw      t7, 0x003C(a0)             # 0000003C
    sw      t8, 0x0040(a0)             # 00000040
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80921630:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80921640:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0030($sp)            
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)           
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f4                   # $f4 = 400.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    c.le.s  $f6, $f4                   
    nop
    bc1fl   lbl_809216C8               
    lw      $ra, 0x0034($sp)           
    lw      t6, 0x0140(s0)             # 00000140
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    bne     t7, $zero, lbl_809216C4    
    sw      t7, 0x0140(s0)             # 00000140
    lwc1    $f8, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    swc1    $f8, 0x0010($sp)           
    lwc1    $f10, 0x002C(s0)           # 0000002C
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    addiu   a2, $zero, 0x0016          # a2 = 00000016
    swc1    $f10, 0x0014($sp)          
    lh      t9, 0x00B4(s0)             # 000000B4
    sw      t9, 0x0018($sp)            
    lh      t0, 0x00B6(s0)             # 000000B6
    sw      t0, 0x001C($sp)            
    lh      t1, 0x00B8(s0)             # 000000B8
    sw      t2, 0x0024($sp)            
    jal     func_80025110              # ActorSpawn
    sw      t1, 0x0020($sp)            
    addiu   t3, $zero, 0x0050          # t3 = 00000050
    sw      t3, 0x0140(s0)             # 00000140
lbl_809216C4:
    lw      $ra, 0x0034($sp)           
lbl_809216C8:
    lw      s0, 0x0030($sp)            
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_809216E0: .word 0x00810600, 0x00000010, 0x00010000, 0x00000144
.word func_809215E0
.word func_80921630
.word func_80921640
.word 0x00000000

.section .rodata


