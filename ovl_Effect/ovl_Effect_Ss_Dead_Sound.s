#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B38D30:
    sw      a0, 0x0000($sp)            
    sw      a1, 0x0004($sp)            
    lw      t7, 0x0000(a3)             ## 00000000
    addiu   t2, $zero, 0x0002          ## t2 = 00000002
    lui     t4, %hi(func_80B38DBC)     ## t4 = 80B40000
    sw      t7, 0x0000(a2)             ## 00000000
    lw      t6, 0x0004(a3)             ## 00000004
    addiu   t4, t4, %lo(func_80B38DBC) ## t4 = 80B38DBC
    addiu   v0, $zero, 0x0001          ## v0 = 00000001
    sw      t6, 0x0004(a2)             ## 00000004
    lw      t7, 0x0008(a3)             ## 00000008
    sw      t7, 0x0008(a2)             ## 00000008
    lw      t9, 0x000C(a3)             ## 0000000C
    sw      t9, 0x000C(a2)             ## 0000000C
    lw      t8, 0x0010(a3)             ## 00000010
    sw      t8, 0x0010(a2)             ## 00000010
    lw      t9, 0x0014(a3)             ## 00000014
    sw      t9, 0x0014(a2)             ## 00000014
    lw      t1, 0x0018(a3)             ## 00000018
    sw      t1, 0x0018(a2)             ## 00000018
    lw      t0, 0x001C(a3)             ## 0000001C
    sw      t0, 0x001C(a2)             ## 0000001C
    lw      t1, 0x0020(a3)             ## 00000020
    sh      t2, 0x005A(a2)             ## 0000005A
    sw      t1, 0x0020(a2)             ## 00000020
    lw      t3, 0x002C(a3)             ## 0000002C
    sw      $zero, 0x0028(a2)          ## 00000028
    sw      t4, 0x0024(a2)             ## 00000024
    sh      t3, 0x005C(a2)             ## 0000005C
    lh      t5, 0x0028(a3)             ## 00000028
    sh      t5, 0x0056(a2)             ## 00000056
    lhu     t6, 0x0024(a3)             ## 00000024
    sh      t6, 0x0054(a2)             ## 00000054
    jr      $ra                        
    nop


func_80B38DBC:
    addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
    sw      a1, 0x0024($sp)            
    or      a1, a2, $zero              ## a1 = 00000000
    sw      $ra, 0x001C($sp)           
    sw      a0, 0x0020($sp)            
    lh      v1, 0x0056(a1)             ## 00000056
    addiu   $at, $zero, 0x0001         ## $at = 00000001
    beq     v1, $at, lbl_80B38DF4      
    or      v0, v1, $zero              ## v0 = 00000000
    addiu   $at, $zero, 0x0002         ## $at = 00000002
    beq     v0, $at, lbl_80B38DFC      
    nop
    beq     $zero, $zero, lbl_80B38E24 
    lw      $ra, 0x001C($sp)           
lbl_80B38DF4:
    addiu   t6, v1, 0xFFFF             ## t6 = FFFFFFFF
    sh      t6, 0x0056(a1)             ## 00000056
lbl_80B38DFC:
    lui     a3, 0x8010                 ## a3 = 80100000
    lui     t7, 0x8010                 ## t7 = 80100000
    addiu   a3, a3, 0x43A0             ## a3 = 801043A0
    addiu   t7, t7, 0x43A8             ## t7 = 801043A8
    lhu     a0, 0x0054(a1)             ## 00000054
    sw      t7, 0x0014($sp)            
    sw      a3, 0x0010($sp)            
    jal     func_800C806C              
    addiu   a2, $zero, 0x0004          ## a2 = 00000004
    lw      $ra, 0x001C($sp)           
lbl_80B38E24:
    addiu   $sp, $sp, 0x0020           ## $sp = 00000000
    jr      $ra                        
    nop

.section .data

.word 0x00000023
.word func_80B38D30
.word 0x00000000, 0x00000000

.section .rodata


