#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A91130:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    or      a2, a0, $zero              ## a2 = 00000000
    or      a3, a1, $zero              ## a3 = 00000000
    lh      a1, 0x001C(a2)             ## 0000001C
    sw      a2, 0x0018($sp)            
    jal     func_8002049C              
    or      a0, a3, $zero              ## a0 = 00000000
    beq     v0, $zero, lbl_80A91168    
    lw      a2, 0x0018($sp)            
    jal     func_80020EB4              
    or      a0, a2, $zero              ## a0 = 00000000
    beq     $zero, $zero, lbl_80A91180 
    lw      $ra, 0x0014($sp)           
lbl_80A91168:
    lui     $at, 0x3F80                ## $at = 3F800000
    mtc1    $at, $f6                   ## $f6 = 1.00
    lwc1    $f4, 0x0028(a2)            ## 00000028
    add.s   $f8, $f4, $f6              
    swc1    $f8, 0x0028(a2)            ## 00000028
    lw      $ra, 0x0014($sp)           
lbl_80A91180:
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_80A9118C:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80A9119C:
    addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
    sw      s0, 0x0038($sp)            
    or      s0, a0, $zero              ## s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      a1, 0x0064($sp)            
    lw      a0, 0x0064($sp)            
    addiu   t6, s0, 0x0078             ## t6 = 00000078
    addiu   t7, $zero, 0x0001          ## t7 = 00000001
    addiu   t8, $zero, 0x0001          ## t8 = 00000001
    addiu   t9, $sp, 0x0048            ## t9 = FFFFFFE8
    addiu   a0, a0, 0x07C0             ## a0 = 000007C0
    sw      a0, 0x0040($sp)            
    sw      t9, 0x0024($sp)            
    sw      t8, 0x0020($sp)            
    sw      t7, 0x001C($sp)            
    sw      t6, 0x0010($sp)            
    addiu   a1, s0, 0x0008             ## a1 = 00000008
    addiu   a2, s0, 0x0024             ## a2 = 00000024
    addiu   a3, $sp, 0x004C            ## a3 = FFFFFFEC
    sw      $zero, 0x0014($sp)         
    sw      $zero, 0x0018($sp)         
    jal     func_80030940              
    sw      s0, 0x0028($sp)            
    beq     v0, $zero, lbl_80A91268    
    lw      a0, 0x0040($sp)            
    jal     func_80031464              
    lw      a1, 0x0048($sp)            
    beql    v0, $zero, lbl_80A9126C    
    lw      $ra, 0x003C($sp)           
    lh      t0, 0x0000(v0)             ## 00000000
    addiu   $at, $zero, 0x00FF         ## $at = 000000FF
    bnel    t0, $at, lbl_80A9126C      
    lw      $ra, 0x003C($sp)           
    lh      v1, 0x001C(v0)             ## 0000001C
    addiu   $at, $zero, 0x0003         ## $at = 00000003
    andi    v1, v1, 0x000F             ## v1 = 00000000
    beq     v1, $at, lbl_80A9123C      
    addiu   $at, $zero, 0x0007         ## $at = 00000007
    bne     v1, $at, lbl_80A9124C      
    nop
lbl_80A9123C:
    jal     func_800646F0              
    addiu   a0, $zero, 0x4802          ## a0 = 00004802
    beq     $zero, $zero, lbl_80A91258 
    lw      a0, 0x0064($sp)            
lbl_80A9124C:
    jal     func_800646F0              
    addiu   a0, $zero, 0x4807          ## a0 = 00004807
    lw      a0, 0x0064($sp)            
lbl_80A91258:
    jal     func_800204D0              
    lh      a1, 0x001C(s0)             ## 0000001C
    jal     func_80020EB4              
    or      a0, s0, $zero              ## a0 = 00000000
lbl_80A91268:
    lw      $ra, 0x003C($sp)           
lbl_80A9126C:
    lw      s0, 0x0038($sp)            
    addiu   $sp, $sp, 0x0060           ## $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_80A91280: .word 0x01390600, 0x00000000, 0x00010000, 0x0000013C
.word func_80A91130
.word func_80A9118C
.word func_80A9119C
.word 0x00000000

.section .rodata


