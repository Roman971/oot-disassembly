#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A571F0:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0034($sp)            
	lui     a1, %hi(var_80A57340)      ## a1 = 80A50000
	sw      $zero, 0x0024($sp)         
	addiu   a1, a1, %lo(var_80A57340)  ## a1 = 80A57340
	jal     func_80063F7C              
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80035260              
	or      a1, $zero, $zero           ## a1 = 00000000
	lui     a0, 0x0600                 ## a0 = 06000000
	addiu   a0, a0, 0x1438             ## a0 = 06001438
	jal     func_80033EF4              
	addiu   a1, $sp, 0x0024            ## a1 = FFFFFFF4
	lw      a0, 0x0034($sp)            
	or      a2, s0, $zero              ## a2 = 00000000
	lw      a3, 0x0024($sp)            
	jal     func_800313A4              ## DynaPolyInfo_setActor
	addiu   a1, a0, 0x0810             ## a1 = 00000810
	lh      t6, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	sw      v0, 0x013C(s0)             ## 0000013C
	bnel    t6, $at, lbl_80A5729C      
	lw      $ra, 0x001C($sp)           
	jal     func_800288B4              
	addiu   a0, $zero, 0x0018          ## a0 = 00000018
	bne     v0, $zero, lbl_80A5728C    
	lui     t7, 0x8012                 ## t7 = 80120000
	lw      t7, -0x4600(t7)            ## 8011BA00
	lh      t8, 0x0556(t7)             ## 80120556
	bnel    t8, $zero, lbl_80A57290    
	lw      t9, 0x0004(s0)             ## 00000004
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A5729C 
	lw      $ra, 0x001C($sp)           
lbl_80A5728C:
	lw      t9, 0x0004(s0)             ## 00000004
lbl_80A57290:
	ori     t0, t9, 0x0030             ## t0 = 00000030
	sw      t0, 0x0004(s0)             ## 00000004
	lw      $ra, 0x001C($sp)           
lbl_80A5729C:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A572AC:
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


func_80A572E0:
	sw      a0, 0x0000($sp)            
	sw      a1, 0x0004($sp)            
	jr      $ra                        
	nop


func_80A572F0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	or      a2, a1, $zero              ## a2 = 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x1220             ## a1 = 06001220
	jal     func_80028048              
	or      a0, a2, $zero              ## a0 = 00000000
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop

.section .data

var_80A57320: .word 0x01080600, 0x00000000, 0x01000000, 0x00000154
.word func_80A571F0
.word func_80A572AC
.word func_80A572E0
.word func_80A572F0
var_80A57340: .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

.section .rodata


