#include <mips.h>
.set noreorder
.set noat

.section .text
func_80921730:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    sw      a1, 0x001C($sp)            
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88              
    lw      a0, 0x0018($sp)            
    lw      v0, 0x0018($sp)            
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    lw      t7, 0x0024(v0)             # 00000024
    lw      t6, 0x0028(v0)             # 00000028
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    sw      t7, 0x0038(v0)             # 00000038
    lw      t7, 0x002C(v0)             # 0000002C
    lui     a3, 0x40C0                 # a3 = 40C00000
    addiu   a0, v0, 0x00B4             # a0 = 000000B4
    sw      t6, 0x003C(v0)             # 0000003C
    jal     func_8001EC20              
    sw      t7, 0x0040(v0)             # 00000040
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop


func_80921794:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    jr      $ra                        
    nop


func_809217A4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)           
    sw      a0, 0x0018($sp)            
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0000             # a1 = 06000000
    jal     func_80028048              
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)           
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra                        
    nop
    nop
    nop
    nop

.section .data

var_809217E0: .word 0x00820600, 0x00000010, 0x00860000, 0x0000013C
.word func_80921730
.word func_80921794
.word 0x80027EF4
.word func_809217A4

.section .rodata


