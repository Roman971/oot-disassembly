.section .text
func_808F33A0:
    sw      a1, 0x0180(a0)             # 00000180
    jr      $ra                        
    nop


func_808F33AC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     a1, %hi(func_808F33E4)     # a1 = 808F0000
    jal     func_808F33A0              
    addiu   a1, a1, %lo(func_808F33E4) # a1 = 808F33E4
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_808F33D4:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_808F33E4:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_808F33F4:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_808F3404:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_808F3420: .word 0x004F0400, 0x00000009, 0x00350000, 0x00000184
.word func_808F33AC
.word func_808F33D4
.word func_808F33F4
.word func_808F3404

.section .rodata


