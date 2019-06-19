.section .text
func_80B67F60:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_80020F88              
    lw      a0, 0x0018($sp)            
    lui     $at, %hi(var_80B68080)     # $at = 80B70000
    lwc1    $f4, %lo(var_80B68080)($at) 
    lw      t6, 0x0018($sp)            
    swc1    $f4, 0x00F4(t6)            # 000000F4
    lw      $ra, 0x0014($sp)           
    jr      $ra                        
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80B67F9C:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80B67FAC:
    lbu     t6, 0x1C27(a1)             # 00001C27
    beql    t6, $zero, lbl_80B67FCC    
    lw      t9, 0x0004(a0)             # 00000004
    lw      t7, 0x0004(a0)             # 00000004
    ori     t8, t7, 0x0080             # t8 = 00000080
    jr      $ra                        
    sw      t8, 0x0004(a0)             # 00000004
lbl_80B67FC8:
    lw      t9, 0x0004(a0)             # 00000004
lbl_80B67FCC:
    addiu   $at, $zero, 0xFF7F         # $at = FFFFFF7F
    and     t0, t9, $at                
    sw      t0, 0x0004(a0)             # 00000004
    jr      $ra                        
    nop


func_80B67FE0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x0004(a0)             # 00000004
    lh      v0, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0080         # $at = 00000080
    andi    t7, t6, 0x0080             # t7 = 00000000
    bne     t7, $at, lbl_80B68024      
    andi    v0, v0, 0x00FF             # v0 = 00000000
    sll     t8, v0,  2                 
    lui     a1, %hi(var_80B68070)      # a1 = 80B70000
    addu    a1, a1, t8                 
    lw      a1, %lo(var_80B68070)(a1)  
    jal     func_800280C8              
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B68040 
    lw      $ra, 0x0014($sp)           
lbl_80B68024:
    sll     t9, v0,  2                 
    lui     a1, %hi(var_80B68070)      # a1 = 80B70000
    addu    a1, a1, t9                 
    lw      a1, %lo(var_80B68070)(a1)  
    jal     func_80028048              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
lbl_80B68040:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_80B68050: .word 0x01B60600, 0x00000010, 0x01790000, 0x0000013C
.word func_80B67F60
.word func_80B67F9C
.word func_80B67FAC
.word func_80B67FE0
var_80B68070: .word 0x06009230, 0x0600A390, 0x0600B4A0, 0x00000000

.section .rodata

var_80B68080: .word 0x453B8000, 0x00000000, 0x00000000, 0x00000000

