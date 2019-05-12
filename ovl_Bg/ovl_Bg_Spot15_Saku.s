#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A312D0:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0034($sp)            
	sw      $zero, 0x0020($sp)         
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80035260              
	or      a1, $zero, $zero           ## a1 = 00000000
	lui     a0, 0x0600                 ## a0 = 06000000
	addiu   a0, a0, 0x04D0             ## a0 = 060004D0
	jal     func_80033EF4              
	addiu   a1, $sp, 0x0020            ## a1 = FFFFFFF0
	lw      a0, 0x0034($sp)            
	or      a2, s0, $zero              ## a2 = 00000000
	lw      a3, 0x0020($sp)            
	jal     func_800313A4              ## DynaPolyInfo_setActor
	addiu   a1, a0, 0x0810             ## a1 = 00000810
	lui     $at, %hi(var_80A315A0)     ## $at = 80A30000
	lwc1    $f0, %lo(var_80A315A0)($at) 
	lwc1    $f4, 0x0024(s0)            ## 00000024
	lwc1    $f6, 0x0028(s0)            ## 00000028
	lwc1    $f8, 0x002C(s0)            ## 0000002C
	sw      v0, 0x013C(s0)             ## 0000013C
	lui     t6, 0x8012                 ## t6 = 80120000
	swc1    $f0, 0x0050(s0)            ## 00000050
	swc1    $f0, 0x0054(s0)            ## 00000054
	swc1    $f0, 0x0058(s0)            ## 00000058
	swc1    $f4, 0x0160(s0)            ## 00000160
	swc1    $f6, 0x0164(s0)            ## 00000164
	swc1    $f8, 0x0168(s0)            ## 00000168
	lhu     t6, -0x4B2A(t6)            ## 8011B4D6
	lui     t8, %hi(func_80A313B8)     ## t8 = 80A30000
	lui     $at, %hi(var_80A315A4)     ## $at = 80A30000
	andi    t7, t6, 0x0002             ## t7 = 00000000
	beq     t7, $zero, lbl_80A3136C    
	addiu   t8, t8, %lo(func_80A313B8) ## t8 = 80A313B8
	lwc1    $f10, %lo(var_80A315A4)($at) 
	swc1    $f10, 0x002C(s0)           ## 0000002C
lbl_80A3136C:
	sw      t8, 0x0154(s0)             ## 00000154
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A31384:
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


func_80A313B8:
	sw      a1, 0x0004($sp)            
	lw      t6, 0x0158(a0)             ## 00000158
	lw      t7, 0x015C(a0)             ## 0000015C
	lui     t8, 0x8012                 ## t8 = 80120000
	bne     t6, $zero, lbl_80A313D8    
	nop
	beq     t7, $zero, lbl_80A313F8    
	nop
lbl_80A313D8:
	lhu     t8, -0x4B2A(t8)            ## 8011B4D6
	lui     t1, %hi(func_80A31400)     ## t1 = 80A30000
	addiu   t0, $zero, 0x0002          ## t0 = 00000002
	andi    t9, t8, 0x0002             ## t9 = 00000000
	bne     t9, $zero, lbl_80A313F8    
	addiu   t1, t1, %lo(func_80A31400) ## t1 = 80A31400
	sh      t0, 0x016C(a0)             ## 0000016C
	sw      t1, 0x0154(a0)             ## 00000154
lbl_80A313F8:
	jr      $ra                        
	nop


func_80A31400:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lh      t6, 0x016C(a0)             ## 0000016C
	addiu   a1, $zero, 0x2067          ## a1 = 00002067
	bnel    t6, $zero, lbl_80A31480    
	lw      $ra, 0x0014($sp)           
	jal     func_80022FD0              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f6                   ## $f6 = 2.00
	lwc1    $f4, 0x002C(a0)            ## 0000002C
	lui     $at, %hi(var_80A315A8)     ## $at = 80A30000
	addiu   a1, $zero, 0x280E          ## a1 = 0000280E
	sub.s   $f8, $f4, $f6              
	swc1    $f8, 0x002C(a0)            ## 0000002C
	lwc1    $f16, %lo(var_80A315A8)($at) 
	lwc1    $f10, 0x002C(a0)           ## 0000002C
	c.lt.s  $f10, $f16                 
	nop
	bc1fl   lbl_80A31480               
	lw      $ra, 0x0014($sp)           
	jal     func_80022FD0              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	lui     t8, %hi(func_80A3148C)     ## t8 = 80A30000
	addiu   t7, $zero, 0x001E          ## t7 = 0000001E
	addiu   t8, t8, %lo(func_80A3148C) ## t8 = 80A3148C
	sh      t7, 0x016C(a0)             ## 0000016C
	sw      t8, 0x0154(a0)             ## 00000154
	lw      $ra, 0x0014($sp)           
lbl_80A31480:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A3148C:
	sw      a1, 0x0004($sp)            
	lh      t6, 0x016C(a0)             ## 0000016C
	addiu   t8, $zero, 0x0000          ## t8 = 00000000
	addiu   t9, $zero, 0x0000          ## t9 = 00000000
	bne     t6, $zero, lbl_80A314B4    
	lui     t7, %hi(func_80A313B8)     ## t7 = 80A30000
	addiu   t7, t7, %lo(func_80A313B8) ## t7 = 80A313B8
	sw      t8, 0x0158(a0)             ## 00000158
	sw      t9, 0x015C(a0)             ## 0000015C
	sw      t7, 0x0154(a0)             ## 00000154
lbl_80A314B4:
	jr      $ra                        
	nop


func_80A314BC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lh      v0, 0x016C(a0)             ## 0000016C
	beq     v0, $zero, lbl_80A314D4    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x016C(a0)             ## 0000016C
lbl_80A314D4:
	lw      t9, 0x0154(a0)             ## 00000154
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A314F0:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	lw      t6, 0x002C($sp)            
	lw      a0, 0x0000(t6)             ## 00000000
	jal     func_8007E2C0              
	sw      a0, 0x0024($sp)            
	lw      a2, 0x0024($sp)            
	lw      v1, 0x02D0(a2)             ## 000002D0
	lui     t8, 0xDA38                 ## t8 = DA380000
	ori     t8, t8, 0x0003             ## t8 = DA380003
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(a2)             ## 000002D0
	sw      t8, 0x0000(v1)             ## 00000000
	lw      t9, 0x002C($sp)            
	lw      a0, 0x0000(t9)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x001C($sp)            
	lw      a1, 0x001C($sp)            
	lw      a2, 0x0024($sp)            
	lui     t1, 0xDE00                 ## t1 = DE000000
	sw      v0, 0x0004(a1)             ## 00000004
	lw      v1, 0x02D0(a2)             ## 000002D0
	lui     t2, 0x0600                 ## t2 = 06000000
	addiu   t2, t2, 0x03C0             ## t2 = 060003C0
	addiu   t0, v1, 0x0008             ## t0 = 00000008
	sw      t0, 0x02D0(a2)             ## 000002D0
	sw      t2, 0x0004(v1)             ## 00000004
	sw      t1, 0x0000(v1)             ## 00000000
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop

.section .data

var_80A31580: .word 0x00F80700, 0x00000000, 0x00F00000, 0x00000170
.word func_80A312D0
.word func_80A31384
.word func_80A314BC
.word func_80A314F0

.section .rodata

var_80A315A0: .word 0x3DCCCCCD
var_80A315A4: .word 0x45263000
var_80A315A8: .word 0x45264000, 0x00000000

