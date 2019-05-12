#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B3C410:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0034($sp)            
	lui     a1, %hi(var_80B3C6D0)      ## a1 = 80B40000
	sw      $zero, 0x0024($sp)         
	addiu   a1, a1, %lo(var_80B3C6D0)  ## a1 = 80B3C6D0
	jal     func_80063F7C              
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t6, 0x001C(s0)             ## 0000001C
	lh      t9, 0x001C(s0)             ## 0000001C
	or      a0, s0, $zero              ## a0 = 00000000
	sra     t7, t6,  8                 
	andi    t8, t7, 0x00FF             ## t8 = 00000000
	andi    t0, t9, 0x00FF             ## t0 = 00000000
	sw      t8, 0x0158(s0)             ## 00000158
	sh      t0, 0x001C(s0)             ## 0000001C
	jal     func_80035260              
	or      a1, $zero, $zero           ## a1 = 00000000
	lh      t1, 0x001C(s0)             ## 0000001C
	lui     a0, 0x0600                 ## a0 = 06000000
	addiu   a1, $sp, 0x0024            ## a1 = FFFFFFF4
	bne     t1, $zero, lbl_80B3C4B0    
	addiu   a0, a0, 0x12C0             ## a0 = 060012C0
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_80033EF4              
	addiu   a0, a0, 0x0918             ## a0 = 06000918
	lui     t2, 0x8012                 ## t2 = 80120000
	lw      t2, -0x5A2C(t2)            ## 8011A5D4
	lui     t3, %hi(func_80B3C550)     ## t3 = 80B40000
	addiu   t3, t3, %lo(func_80B3C550) ## t3 = 80B3C550
	bne     t2, $zero, lbl_80B3C4A8    
	nop
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B3C4F4 
	lw      a0, 0x0034($sp)            
lbl_80B3C4A8:
	beq     $zero, $zero, lbl_80B3C4F0 
	sw      t3, 0x0154(s0)             ## 00000154
lbl_80B3C4B0:
	jal     func_80033EF4              
	addiu   a1, $sp, 0x0024            ## a1 = FFFFFFF4
	lw      a0, 0x0034($sp)            
	jal     func_8002049C              
	lw      a1, 0x0158(s0)             ## 00000158
	beq     v0, $zero, lbl_80B3C4DC    
	lui     t4, %hi(func_80B3C560)     ## t4 = 80B40000
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B3C4F4 
	lw      a0, 0x0034($sp)            
lbl_80B3C4DC:
	lw      t5, 0x0004(s0)             ## 00000004
	addiu   t4, t4, %lo(func_80B3C560) ## t4 = FFFFC560
	sw      t4, 0x0154(s0)             ## 00000154
	ori     t6, t5, 0x0010             ## t6 = 00000010
	sw      t6, 0x0004(s0)             ## 00000004
lbl_80B3C4F0:
	lw      a0, 0x0034($sp)            
lbl_80B3C4F4:
	or      a2, s0, $zero              ## a2 = 00000000
	lw      a3, 0x0024($sp)            
	jal     func_800313A4              ## DynaPolyInfo_setActor
	addiu   a1, a0, 0x0810             ## a1 = 00000810
	sw      v0, 0x013C(s0)             ## 0000013C
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3C51C:
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


func_80B3C550:
	sw      a0, 0x0000($sp)            
	sw      a1, 0x0004($sp)            
	jr      $ra                        
	nop


func_80B3C560:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lw      a0, 0x0024($sp)            
	jal     func_8002049C              
	lw      a1, 0x0158(s0)             ## 00000158
	beq     v0, $zero, lbl_80B3C5C8    
	lw      a0, 0x0024($sp)            
	addiu   a1, s0, 0x0024             ## a1 = 00000024
	addiu   a2, $zero, 0x001E          ## a2 = 0000001E
	jal     func_80058FF8              
	addiu   a3, $zero, 0x285A          ## a3 = 0000285A
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80020F04              
	lui     a1, 0x4248                 ## a1 = 42480000
	lw      a0, 0x0024($sp)            
	jal     func_8006BA10              
	or      a1, s0, $zero              ## a1 = 00000000
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f4                   ## $f4 = 0.50
	lui     t6, %hi(func_80B3C5DC)     ## t6 = 80B40000
	addiu   t6, t6, %lo(func_80B3C5DC) ## t6 = 80B3C5DC
	sw      t6, 0x0154(s0)             ## 00000154
	swc1    $f4, 0x0068(s0)            ## 00000068
lbl_80B3C5C8:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3C5DC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lui     $at, 0x3FC0                ## $at = 3FC00000
	mtc1    $at, $f6                   ## $f6 = 1.50
	lwc1    $f4, 0x0068(a3)            ## 00000068
	lui     $at, 0x42F0                ## $at = 42F00000
	mtc1    $at, $f16                  ## $f16 = 120.00
	mul.s   $f8, $f4, $f6              
	lwc1    $f10, 0x000C(a3)           ## 0000000C
	addiu   a0, a3, 0x0028             ## a0 = 00000028
	sub.s   $f18, $f10, $f16           
	swc1    $f8, 0x0068(a3)            ## 00000068
	lw      a2, 0x0068(a3)             ## 00000068
	mfc1    a1, $f18                   
	jal     func_8006385C              
	sw      a3, 0x0018($sp)            
	beq     v0, $zero, lbl_80B3C634    
	lw      a3, 0x0018($sp)            
	jal     func_80020EB4              
	or      a0, a3, $zero              ## a0 = 00000000
lbl_80B3C634:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3C644:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lw      t9, 0x0154(a0)             ## 00000154
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3C668:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	or      a2, a1, $zero              ## a2 = 00000000
	lh      t6, 0x001C(a3)             ## 0000001C
	lui     a1, %hi(var_80B3C6D4)      ## a1 = 80B40000
	or      a0, a2, $zero              ## a0 = 00000000
	sll     t7, t6,  2                 
	addu    a1, a1, t7                 
	jal     func_80028048              
	lw      a1, %lo(var_80B3C6D4)(a1)  
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop
	nop

.section .data

var_80B3C6B0: .word 0x018D0600, 0x00000000, 0x01610000, 0x0000015C
.word func_80B3C410
.word func_80B3C51C
.word func_80B3C644
.word func_80B3C668
var_80B3C6D0: .word 0x48500064
var_80B3C6D4: .word 0x06000840, 0x06001190, 0x00000000

.section .rodata


