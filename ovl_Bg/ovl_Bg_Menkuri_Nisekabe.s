#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B7C000:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     a1, 0x3DCC                 ## a1 = 3DCC0000
    jal     func_80020F88              
    ori     a1, a1, 0xCCCD             ## a1 = 3DCCCCCD
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B7C028:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80B7C038:
    lbu     t6, 0x1C27(a1)             ## 00001C27
    beql    t6, $zero, lbl_80B7C058    
    lw      t9, 0x0004(a0)             ## 00000004
    lw      t7, 0x0004(a0)             ## 00000004
    ori     t8, t7, 0x0080             ## t8 = 00000080
    jr      $ra                        
    sw      t8, 0x0004(a0)             ## 00000004
lbl_80B7C054:
    lw      t9, 0x0004(a0)             ## 00000004
lbl_80B7C058:
    addiu   $at, $zero, 0xFF7F         ## $at = FFFFFF7F
    and     t0, t9, $at                
    sw      t0, 0x0004(a0)             ## 00000004
    jr      $ra                        
    nop


func_80B7C06C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a1, $zero              ## a2 = 00000000
    lw      t6, 0x0004(a0)             ## 00000004
    lh      v0, 0x001C(a0)             ## 0000001C
    addiu   $at, $zero, 0x0080         ## $at = 00000080
    andi    t7, t6, 0x0080             ## t7 = 00000000
    bne     t7, $at, lbl_80B7C0B0      
    andi    v0, v0, 0x00FF             ## v0 = 00000000
    sll     t8, v0,  2                 
    lui     a1, %hi(var_80B7C100)      ## a1 = 80B80000
    addu    a1, a1, t8                 
    lw      a1, %lo(var_80B7C100)(a1)  
    jal     func_800280C8              
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B7C0CC 
    lw      $ra, 0x0014($sp)           
lbl_80B7C0B0:
    sll     t9, v0,  2                 
    lui     a1, %hi(var_80B7C100)      ## a1 = 80B80000
    addu    a1, a1, t9                 
    lw      a1, %lo(var_80B7C100)(a1)  
    jal     func_80028048              
    or      a0, a2, $zero              ## a0 = 00000000
    lw      $ra, 0x0014($sp)           
lbl_80B7C0CC:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop

.section .data

var_80B7C0E0: .word 0x01CD0600, 0x00000000, 0x004D0000, 0x0000013C
.word func_80B7C000
.word func_80B7C028
.word func_80B7C038
.word func_80B7C06C
var_80B7C100: .word 0x06002280, 0x06002BC0, 0x00000000, 0x00000000

.section .rodata


