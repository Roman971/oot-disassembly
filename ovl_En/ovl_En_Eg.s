#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B7BE50:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    jal     func_80064738              
    addiu   a0, $zero, 0x5801          # a0 = 00005801
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B7BE70:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80B7BE80:
    sw      a1, 0x0004($sp)            
    sw      $zero, 0x013C(a0)          # 0000013C
    jr      $ra                        
    nop


func_80B7BE90:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lui     t6, %hi(var_80B7BF80)      # t6 = 80B80000
    lw      t6, %lo(var_80B7BF80)(t6)  
    lui     t7, 0x8012                 # t7 = 80120000
    bnel    t6, $zero, lbl_80B7BF1C    
    lw      $ra, 0x0014($sp)           
    lh      t7, -0x465C(t7)            # 8011B9A4
    lw      a0, 0x001C($sp)            
    bgtzl   t7, lbl_80B7BF1C           
    lw      $ra, 0x0014($sp)           
    jal     func_8002049C              
    addiu   a1, $zero, 0x0036          # a1 = 00000036
    beql    v0, $zero, lbl_80B7BF1C    
    lw      $ra, 0x0014($sp)           
    jal     func_8009DAB0              
    lw      a0, 0x001C($sp)            
    addiu   t8, $zero, 0xFFFE          # t8 = FFFFFFFE
    lui     $at, 0x8012                # $at = 80120000
    lui     a0, 0x1000                 # a0 = 10000000
    sw      t8, -0x46CC($at)           # 8011B934
    jal     func_800CAA70              
    ori     a0, a0, 0x00FF             # a0 = 100000FF
    lw      t0, 0x001C($sp)            
    lui     $at, 0x0001                # $at = 00010000
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addu    $at, $at, t0               
    jal     func_80B7BE50              
    sb      t9, 0x1E5E($at)            # 00011E5E
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lui     $at, %hi(var_80B7BF80)     # $at = 80B80000
    sw      t1, %lo(var_80B7BF80)($at) 
    lw      $ra, 0x0014($sp)           
lbl_80B7BF1C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B7BF28:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      v0, 0x013C(a0)             # 0000013C
    bltzl   v0, lbl_80B7BF64           
    lw      $ra, 0x0014($sp)           
    bgtz    v0, lbl_80B7BF60           
    sll     t6, v0,  2                 
    lui     v1, %hi(var_80B7BF84)      # v1 = 80B80000
    addu    v1, v1, t6                 
    lw      v1, %lo(var_80B7BF84)(v1)  
    beql    v1, $zero, lbl_80B7BF64    
    lw      $ra, 0x0014($sp)           
    jalr    $ra, v1                    
    nop
lbl_80B7BF60:
    lw      $ra, 0x0014($sp)           
lbl_80B7BF64:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80B7BF70:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop

.section .data

var_80B7BF80: .word 0x00000000
var_80B7BF84: .word func_80B7BE90
var_80B7BF88: .word 0x01CC0700, 0x00000010, 0x00600000, 0x00000140
.word func_80B7BE80
.word func_80B7BE70
.word func_80B7BF28
.word func_80B7BF70
.word 0x00000000, 0x00000000

.section .rodata


