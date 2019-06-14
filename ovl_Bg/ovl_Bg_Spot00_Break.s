#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B3FED0:
    addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
    sw      s0, 0x0018($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a1, 0x0034($sp)            
    lui     a1, %hi(var_80B40030)      ## a1 = 80B40000
    sw      $zero, 0x0024($sp)         
    addiu   a1, a1, %lo(var_80B40030)  ## a1 = 80B40030
    jal     func_80063F7C              
    or      a0, s0, $zero              ## a0 = 00000000
    or      a0, s0, $zero              ## a0 = 00000000
    jal     func_80035260              
    or      a1, $zero, $zero           ## a1 = 00000000
    lh      t6, 0x001C(s0)             ## 0000001C
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    lui     a0, 0x0600                 ## a0 = 06000000
    bne     t6, $at, lbl_80B3FF30      
    addiu   a0, a0, 0x0908             ## a0 = 06000908
    lui     a0, 0x0600                 ## a0 = 06000000
    addiu   a0, a0, 0x0AF0             ## a0 = 06000AF0
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0024            ## a1 = FFFFFFF4
    beq     $zero, $zero, lbl_80B3FF3C 
    lw      a0, 0x0034($sp)            
lbl_80B3FF30:
    jal     func_80033EF4              
    addiu   a1, $sp, 0x0024            ## a1 = FFFFFFF4
    lw      a0, 0x0034($sp)            
lbl_80B3FF3C:
    or      a2, s0, $zero              ## a2 = 00000000
    lw      a3, 0x0024($sp)            
    jal     func_800313A4              ## DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             ## a1 = 00000810
    sw      v0, 0x013C(s0)             ## 0000013C
    lui     t7, 0x8012                 ## t7 = 80120000
    lw      t7, -0x5A2C(t7)            ## 8011A5D4
    beql    t7, $zero, lbl_80B3FF6C    
    lw      $ra, 0x001C($sp)           
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
    lw      $ra, 0x001C($sp)           
lbl_80B3FF6C:
    lw      s0, 0x0018($sp)            
    addiu   $sp, $sp, 0x0030           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B3FF7C:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a3, a1, $zero              ## a3 = 00000000
    lw      t6, 0x0018($sp)            
    or      a0, a3, $zero              ## a0 = 00000000
    addiu   a1, a3, 0x0810             ## a1 = 00000810
    jal     func_80031638              ## DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             ## 0000013C
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80B3FFB0:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80B3FFC0:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a1, $zero              ## a2 = 00000000
    lh      t6, 0x001C(a0)             ## 0000001C
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    or      a0, a2, $zero              ## a0 = 00000000
    bne     t6, $at, lbl_80B3FFF8      
    lui     a1, 0x0600                 ## a1 = 06000000
    lui     a1, 0x0600                 ## a1 = 06000000
    addiu   a1, a1, 0x0980             ## a1 = 06000980
    jal     func_80028048              
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80B40004 
    lw      $ra, 0x0014($sp)           
lbl_80B3FFF8:
    jal     func_80028048              
    addiu   a1, a1, 0x0440             ## a1 = 00000440
    lw      $ra, 0x0014($sp)           
lbl_80B40004:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop

.section .data

var_80B40010: .word 0x01940600, 0x00000000, 0x01660000, 0x00000154
.word func_80B3FED0
.word func_80B3FF7C
.word func_80B3FFB0
.word func_80B3FFC0
var_80B40030: .word 0xB0F804B0, 0xB0FC04B0, 0xB0F407D0, 0x485003E8

.section .rodata


