#include <mips.h>
.set noreorder
.set noat

.section .text
func_808966D0:
    sw      a1, 0x013C(a0)             # 0000013C
    jr      $ra                        
    nop


func_808966DC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a1, 0x001C($sp)            
    lui     a1, %hi(func_80896714)     # a1 = 80890000
    jal     func_808966D0              
    addiu   a1, a1, %lo(func_80896714) # a1 = 80896714
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80896704:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80896714:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_80896724:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9                    
    nop
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80896748:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    lw      v1, 0x0000(a1)             # 00000000
    lw      v0, 0x02C4(v1)             # 000002C4
    addiu   v0, v0, 0xFC40             # v0 = FFFFFC40
    sw      v0, 0x02C4(v1)             # 000002C4
    lw      a2, 0x0000(a1)             # 00000000
    lw      t0, 0x02C0(a2)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0030             # t7 = DB060030
    addiu   t6, t0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a2)             # 000002C0
    sw      v0, 0x0004(t0)             # 00000004
    sw      t7, 0x0000(t0)             # 00000000
    jal     func_8007E298              
    lw      a0, 0x0000(a1)             # 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop

.section .data

var_808967A0: .word 0x00240600, 0x00000000, 0x00400000, 0x00000140
.word func_808966DC
.word func_80896704
.word func_80896724
.word func_80896748

.section .rodata


