#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B375D0:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0030($sp)            
	sw      a1, 0x0034($sp)            
	lw      a0, 0x0030($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x17A4           ## $at = 000117A4
	addu    a0, a0, $at                
	sw      a0, 0x001C($sp)            
	addiu   a1, $zero, 0x0117          ## a1 = 00000117
	sw      a2, 0x0038($sp)            
	jal     func_80081628              ## ObjectIndex
	sw      a3, 0x003C($sp)            
	lw      a0, 0x001C($sp)            
	lw      a2, 0x0038($sp)            
	lw      a3, 0x003C($sp)            
	bltz    v0, lbl_80B37700           
	or      a1, v0, $zero              ## a1 = 00000000
	sw      v0, 0x0024($sp)            
	sw      a2, 0x0038($sp)            
	jal     func_80081688              
	sw      a3, 0x003C($sp)            
	lw      a1, 0x0024($sp)            
	lw      a2, 0x0038($sp)            
	beq     v0, $zero, lbl_80B37700    
	lw      a3, 0x003C($sp)            
	lui     a0, 0x8012                 ## a0 = 80120000
	addiu   a0, a0, 0x0C38             ## a0 = 80120C38
	lw      t6, 0x0030($sp)            
	sll     t7, a1,  4                 
	addu    t7, t7, a1                 
	sll     t7, t7,  2                 
	lui     t9, 0x0001                 ## t9 = 00010000
	addu    t8, t6, t7                 
	addu    t9, t9, t8                 
	lw      t9, 0x17B4(t9)             ## 000117B4
	lui     $at, 0x8000                ## $at = 80000000
	lw      v1, 0x0018(a0)             ## 80120C50
	addu    t0, t9, $at                
	sw      t0, 0x0018(a0)             ## 80120C50
	lw      t2, 0x0000(a3)             ## 00000000
	lui     t7, %hi(func_80B37714)     ## t7 = 80B30000
	lui     t8, %hi(func_80B378C8)     ## t8 = 80B30000
	sw      t2, 0x0000(a2)             ## 00000000
	lw      t1, 0x0004(a3)             ## 00000004
	addiu   t7, t7, %lo(func_80B37714) ## t7 = 80B37714
	addiu   t8, t8, %lo(func_80B378C8) ## t8 = 80B378C8
	sw      t1, 0x0004(a2)             ## 00000004
	lw      t2, 0x0008(a3)             ## 00000008
	addiu   t9, $zero, 0x0032          ## t9 = 00000032
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	sw      t2, 0x0008(a2)             ## 00000008
	lw      t4, 0x000C(a3)             ## 0000000C
	addiu   t2, $zero, 0x0005          ## t2 = 00000005
	sw      t4, 0x000C(a2)             ## 0000000C
	lw      t3, 0x0010(a3)             ## 00000010
	sw      t3, 0x0010(a2)             ## 00000010
	lw      t4, 0x0014(a3)             ## 00000014
	sw      t4, 0x0014(a2)             ## 00000014
	lw      t6, 0x0018(a3)             ## 00000018
	sw      t6, 0x0018(a2)             ## 00000018
	lw      t5, 0x001C(a3)             ## 0000001C
	sw      t5, 0x001C(a2)             ## 0000001C
	lw      t6, 0x0020(a3)             ## 00000020
	sw      t7, 0x0028(a2)             ## 00000028
	sw      t8, 0x0024(a2)             ## 00000024
	sh      t9, 0x005C(a2)             ## 0000005C
	sw      t6, 0x0020(a2)             ## 00000020
	lh      t0, 0x0026(a3)             ## 00000026
	sh      t0, 0x0044(a2)             ## 00000044
	lh      t1, 0x0024(a3)             ## 00000024
	sh      t2, 0x0042(a2)             ## 00000042
	sh      a1, 0x0040(a2)             ## 00000040
	sh      t1, 0x0046(a2)             ## 00000046
	beq     $zero, $zero, lbl_80B37704 
	sw      v1, 0x0018(a0)             ## 80120C50
lbl_80B37700:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B37704:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B37714:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s2, 0x0020($sp)            
	sw      s1, 0x001C($sp)            
	or      s1, a0, $zero              ## s1 = 00000000
	or      s2, a2, $zero              ## s2 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      s0, 0x0018($sp)            
	sw      a1, 0x004C($sp)            
	lh      t6, 0x0046(s2)             ## 00000046
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f8                   ## $f8 = 100.00
	mtc1    t6, $f4                    ## $f4 = 0.00
	lui     v0, 0x0001                 ## v0 = 00010000
	lui     $at, 0x8000                ## $at = 80000000
	cvt.s.w $f6, $f4                   
	or      a3, $zero, $zero           ## a3 = 00000000
	div.s   $f10, $f6, $f8             
	swc1    $f10, 0x0040($sp)          
	lh      t7, 0x0040(s2)             ## 00000040
	sll     t8, t7,  4                 
	addu    t8, t8, t7                 
	sll     t8, t8,  2                 
	addu    t9, s1, t8                 
	addu    v0, v0, t9                 
	lw      v0, 0x17B4(v0)             ## 000117B4
	addu    t4, v0, $at                
	lw      s0, 0x0000(s1)             ## 00000000
	lui     $at, 0x8012                ## $at = 80120000
	sw      t4, 0x0C50($at)            ## 80120C50
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t6, 0xDB06                 ## t6 = DB060000
	ori     t6, t6, 0x0018             ## t6 = DB060018
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s0)             ## 000002D0
	sw      v0, 0x0004(v1)             ## 00000004
	sw      t6, 0x0000(v1)             ## 00000000
	lwc1    $f12, 0x0000(s2)           ## 00000000
	lwc1    $f14, 0x0004(s2)           ## 00000004
	jal     func_800AA7F4              
	lw      a2, 0x0008(s2)             ## 00000008
	lwc1    $f12, 0x0040($sp)          
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mfc1    a2, $f12                   
	jal     func_800AA8FC              
	mov.s   $f14, $f12                 
	jal     func_8007E2C0              
	lw      a0, 0x0000(s1)             ## 00000000
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1DA0           ## $at = 00011DA0
	jal     func_800ABE54              
	addu    a0, s1, $at                
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t8, 0xDA38                 ## t8 = DA380000
	ori     t8, t8, 0x0003             ## t8 = DA380003
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s0)             ## 000002D0
	sw      t8, 0x0000(v1)             ## 00000000
	lw      a0, 0x0000(s1)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x002C($sp)            
	lw      t0, 0x002C($sp)            
	lui     t1, 0x00FF                 ## t1 = 00FF0000
	lui     t3, 0x8012                 ## t3 = 80120000
	addiu   t3, t3, 0x0C38             ## t3 = 80120C38
	ori     t1, t1, 0xFFFF             ## t1 = 00FFFFFF
	lui     t2, 0x8000                 ## t2 = 80000000
	sw      v0, 0x0004(t0)             ## 00000004
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t4, 0xDB06                 ## t4 = DB060000
	ori     t4, t4, 0x0020             ## t4 = DB060020
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s0)             ## 000002D0
	sw      t4, 0x0000(v1)             ## 00000000
	lh      t5, 0x0044(s2)             ## 00000044
	lui     a1, %hi(var_80B37940)      ## a1 = 80B30000
	lui     a3, 0x0600                 ## a3 = 06000000
	sll     t6, t5,  2                 
	addu    a1, a1, t6                 
	lw      a1, %lo(var_80B37940)(a1)  
	addiu   a3, a3, 0x0DC0             ## a3 = 06000DC0
	sll     t8, a1,  4                 
	srl     t9, t8, 28                 
	sll     t4, t9,  2                 
	addu    t5, t3, t4                 
	lw      t6, 0x0000(t5)             ## 00000000
	and     t7, a1, t1                 
	lui     t5, 0xDE00                 ## t5 = DE000000
	addu    t8, t7, t6                 
	addu    t9, t8, t2                 
	sw      t9, 0x0004(v1)             ## 00000004
	lw      v1, 0x02D0(s0)             ## 000002D0
	sll     t7, a3,  4                 
	srl     t6, t7, 28                 
	addiu   t4, v1, 0x0008             ## t4 = 00000008
	sw      t4, 0x02D0(s0)             ## 000002D0
	sll     t8, t6,  2                 
	addu    t9, t3, t8                 
	sw      t5, 0x0000(v1)             ## 00000000
	lw      t4, 0x0000(t9)             ## 00000008
	and     t5, a3, t1                 
	addu    t7, t4, t5                 
	addu    t6, t7, t2                 
	sw      t6, 0x0004(v1)             ## 00000004
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0018($sp)            
	lw      s1, 0x001C($sp)            
	lw      s2, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000


func_80B378C8:
	sw      a1, 0x0004($sp)            
	lh      v0, 0x0042(a2)             ## 00000042
	beq     v0, $zero, lbl_80B378E0    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	beq     $zero, $zero, lbl_80B378EC 
	sh      t6, 0x0042(a2)             ## 00000042
lbl_80B378E0:
	mtc1    $zero, $f4                 ## $f4 = 0.00
	nop
	swc1    $f4, 0x0010(a2)            ## 00000010
lbl_80B378EC:
	lh      t7, 0x0042(a2)             ## 00000042
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bne     t7, $at, lbl_80B3791C      
	nop
	lh      t8, 0x0044(a2)             ## 00000044
	lui     t0, %hi(var_80B37930)      ## t0 = 80B30000
	lui     $at, 0x0001                ## $at = 00010000
	sll     t9, t8,  1                 
	addu    t0, t0, t9                 
	lh      t0, %lo(var_80B37930)(t0)  
	addu    $at, $at, a0               
	sh      t0, 0x072C($at)            ## 0001072C
lbl_80B3791C:
	jr      $ra                        
	nop
	nop
	nop
	nop

.section .data

var_80B37930: .word 0x001E003C, 0x00640000, 0x0000001E
.word func_80B375D0
var_80B37940: .word 0x06000000, 0x06000480, 0x06000900, 0x00000000

.section .rodata


