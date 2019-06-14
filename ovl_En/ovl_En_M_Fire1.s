#include <mips.h>
.set noreorder
.set noat

.section .text
func_808FEF20:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x002C($sp)            
    or      a2, a0, $zero              ## a2 = 00000000
    lh      t6, 0x001C(a2)             ## 0000001C
    lw      a0, 0x002C($sp)            
    addiu   a3, $zero, 0x0007          ## a3 = 00000007
    bgez    t6, lbl_808FEF50           
    addiu   a1, a0, 0x1C24             ## a1 = 00001C24
    jal     func_800265D4              
    sw      a2, 0x0028($sp)            
    lw      a2, 0x0028($sp)            
lbl_808FEF50:
    addiu   a1, a2, 0x013C             ## a1 = 0000013C
    sw      a1, 0x001C($sp)            
    lw      a0, 0x002C($sp)            
    jal     func_8004AB7C              
    sw      a2, 0x0028($sp)            
    lui     a3, %hi(var_808FF060)      ## a3 = 80900000
    lw      a1, 0x001C($sp)            
    lw      a2, 0x0028($sp)            
    addiu   a3, a3, %lo(var_808FF060)  ## a3 = 808FF060
    jal     func_8004ACEC              
    lw      a0, 0x002C($sp)            
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FEF8C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    or      a0, a3, $zero              ## a0 = 00000000
    jal     func_8004ABCC              
    addiu   a1, a2, 0x013C             ## a1 = 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_808FEFB8:
    addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x002C($sp)            
    or      a3, a0, $zero              ## a3 = 00000000
    lui     a2, 0x3E4C                 ## a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
    addiu   a0, a3, 0x0188             ## a0 = 00000188
    lui     a1, 0x3F80                 ## a1 = 3F800000
    jal     func_8006385C              
    sw      a3, 0x0028($sp)            
    beq     v0, $zero, lbl_808FEFF8    
    lw      a3, 0x0028($sp)            
    jal     func_80020EB4              
    or      a0, a3, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_808FF02C 
    lw      $ra, 0x0014($sp)           
lbl_808FEFF8:
    addiu   a2, a3, 0x013C             ## a2 = 0000013C
    or      a1, a2, $zero              ## a1 = 0000013C
    sw      a2, 0x001C($sp)            
    or      a0, a3, $zero              ## a0 = 00000000
    jal     func_80050B00              
    sw      a3, 0x0028($sp)            
    lw      a0, 0x002C($sp)            
    lui     $at, 0x0001                ## $at = 00010000
    ori     $at, $at, 0x1E60           ## $at = 00011E60
    lw      a2, 0x001C($sp)            
    jal     func_8004BD50              ## CollisionCheck_setAT
    addu    a1, a0, $at                
    lw      $ra, 0x0014($sp)           
lbl_808FF02C:
    addiu   $sp, $sp, 0x0028           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_808FF040: .word 0x00560800, 0x00000000, 0x00010000, 0x0000018C
.word func_808FEF20
.word func_808FEF8C
.word func_808FEFB8
.word 0x00000000
var_808FF060: .word \
0x0A090000, 0x08010000, 0x02000000, 0x00000001, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x19000000, \
0x00C800C8, 0x00000000, 0x00000000, 0x00000000

.section .rodata


