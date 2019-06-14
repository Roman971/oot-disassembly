#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A8EFA0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     t6, %hi(func_80A8EFE4)     ## t6 = 80A90000
    addiu   t6, t6, %lo(func_80A8EFE4) ## t6 = 80A8EFE4
    lui     a1, 0x3E4C                 ## a1 = 3E4C0000
    sw      t6, 0x013C(a0)             ## 0000013C
    jal     func_80020F88              
    ori     a1, a1, 0xCCCD             ## a1 = 3E4CCCCD
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A8EFD4:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80A8EFE4:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              ## a2 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a2, $zero              ## a0 = 00000000
    lh      a1, 0x001C(t6)             ## 0000001C
    sra     a1, a1,  8                 
    jal     func_8002060C              
    andi    a1, a1, 0x001F             ## a1 = 00000000
    beql    v0, $zero, lbl_80A8F020    
    lw      $ra, 0x0014($sp)           
    jal     func_80020EB4              
    lw      a0, 0x0018($sp)            
    lw      $ra, 0x0014($sp)           
lbl_80A8F020:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A8F02C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x013C(a0)             ## 0000013C
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A8F050:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_80022438              
    or      a2, $zero, $zero           ## a2 = 00000000
    lw      a0, 0x0018($sp)            
    lw      a1, 0x001C($sp)            
    jal     func_80022554              
    or      a2, $zero, $zero           ## a2 = 00000000
    lw      t6, 0x0018($sp)            
    lw      a0, 0x001C($sp)            
    lh      a1, 0x001C(t6)             ## 0000001C
    andi    a1, a1, 0x00FF             ## a1 = 00000000
    sll     a1, a1, 16                 
    jal     func_800570C0              
    sra     a1, a1, 16                 
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_80A8F0B0: .word 0x01370400, 0x00000009, 0x00010000, 0x00000140
.word func_80A8EFA0
.word func_80A8EFD4
.word func_80A8F02C
.word func_80A8F050

.section .rodata


