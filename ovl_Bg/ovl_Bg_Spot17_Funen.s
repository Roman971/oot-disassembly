#include <mips.h>
.set noreorder
.set noat

.section .text
func_8099FB40:
    addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     a1, %hi(var_8099FD20)      ## a1 = 809A0000
    jal     func_80063F7C              
    addiu   a1, a1, %lo(var_8099FD20)  ## a1 = 8099FD20
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           ## $sp = 00000000
    jr      $ra                        
    nop


func_8099FB68:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_8099FB78:
    sw      a1, 0x0004($sp)            
    lui     t6, %hi(func_8099FBAC)     ## t6 = 809A0000
    lui     t7, %hi(func_8099FB9C)     ## t7 = 809A0000
    addiu   t6, t6, %lo(func_8099FBAC) ## t6 = 8099FBAC
    addiu   t7, t7, %lo(func_8099FB9C) ## t7 = 8099FB9C
    sw      t6, 0x0134(a0)             ## 00000134
    sw      t7, 0x0130(a0)             ## 00000130
    jr      $ra                        
    nop


func_8099FB9C:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_8099FBAC:
    addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
    sw      s0, 0x0034($sp)            
    or      s0, a1, $zero              ## s0 = 00000000
    sw      $ra, 0x003C($sp)           
    sw      s1, 0x0038($sp)            
    sw      a0, 0x0058($sp)            
    lw      a0, 0x0000(s0)             ## 00000000
    jal     func_8007E2C0              
    or      s1, a0, $zero              ## s1 = 00000000
    lh      t6, 0x07A0(s0)             ## 000007A0
    sll     t7, t6,  2                 
    addu    t8, s0, t7                 
    jal     func_8004977C              
    lw      a0, 0x0790(t8)             ## 00000790
    lw      t9, 0x0058($sp)            
    ori     $at, $zero, 0x8000         ## $at = 00008000
    addiu   a1, $zero, 0x0001          ## a1 = 00000001
    lh      t2, 0x00B6(t9)             ## 000000B6
    subu    t3, v0, t2                 
    addu    t4, t3, $at                
    sll     t5, t4, 16                 
    sra     t6, t5, 16                 
    mtc1    t6, $f4                    ## $f4 = 0.00
    lui     $at, %hi(var_8099FD30)     ## $at = 809A0000
    lwc1    $f8, %lo(var_8099FD30)($at) 
    cvt.s.w $f6, $f4                   
    mul.s   $f12, $f6, $f8             
    jal     func_800AAB94              
    nop
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     t8, 0xDA38                 ## t8 = DA380000
    ori     t8, t8, 0x0003             ## t8 = DA380003
    addiu   t7, v1, 0x0008             ## t7 = 00000008
    sw      t7, 0x02D0(s1)             ## 000002D0
    sw      t8, 0x0000(v1)             ## 00000000
    lw      a0, 0x0000(s0)             ## 00000000
    jal     func_800AB900              
    sw      v1, 0x0048($sp)            
    lw      t0, 0x0048($sp)            
    lui     t2, 0xDB06                 ## t2 = DB060000
    ori     t2, t2, 0x0020             ## t2 = DB060020
    sw      v0, 0x0004(t0)             ## 00000004
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     a3, 0x0001                 ## a3 = 00010000
    addu    a3, a3, s0                 
    addiu   t9, v1, 0x0008             ## t9 = 00000008
    sw      t9, 0x02D0(s1)             ## 000002D0
    sw      t2, 0x0000(v1)             ## 00000000
    lw      a3, 0x1DE4(a3)             ## 00011DE4
    lw      a0, 0x0000(s0)             ## 00000000
    addiu   t3, $zero, 0x0020          ## t3 = 00000020
    subu    a3, $zero, a3              
    andi    a3, a3, 0x007F             ## a3 = 00000000
    addiu   t4, $zero, 0x0020          ## t4 = 00000020
    addiu   t5, $zero, 0x0001          ## t5 = 00000001
    addiu   t6, $zero, 0x0020          ## t6 = 00000020
    addiu   t7, $zero, 0x0020          ## t7 = 00000020
    sw      t7, 0x0028($sp)            
    sw      t6, 0x0024($sp)            
    sw      t5, 0x0018($sp)            
    sw      t4, 0x0014($sp)            
    sw      a3, 0x0020($sp)            
    sw      t3, 0x0010($sp)            
    sw      $zero, 0x001C($sp)         
    or      a1, $zero, $zero           ## a1 = 00000000
    or      a2, $zero, $zero           ## a2 = 00000000
    jal     func_8007EB84              
    sw      v1, 0x0044($sp)            
    lw      t1, 0x0044($sp)            
    lui     t9, 0xDE00                 ## t9 = DE000000
    sw      v0, 0x0004(t1)             ## 00000004
    lw      v1, 0x02D0(s1)             ## 000002D0
    lui     t2, 0x0600                 ## t2 = 06000000
    addiu   t2, t2, 0x0B40             ## t2 = 06000B40
    addiu   t8, v1, 0x0008             ## t8 = 00000008
    sw      t8, 0x02D0(s1)             ## 000002D0
    sw      t2, 0x0004(v1)             ## 00000004
    sw      t9, 0x0000(v1)             ## 00000000
    lw      $ra, 0x003C($sp)           
    lw      s0, 0x0034($sp)            
    lw      s1, 0x0038($sp)            
    jr      $ra                        
    addiu   $sp, $sp, 0x0058           ## $sp = 00000000
    nop
    nop

.section .data

var_8099FD00: .word 0x00BF0000, 0x00000030, 0x00B10000, 0x0000013C
.word func_8099FB40
.word func_8099FB68
.word func_8099FB78
.word 0x00000000
var_8099FD20: .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_8099FD30: .word 0x38C90FDB, 0x00000000, 0x00000000, 0x00000000

