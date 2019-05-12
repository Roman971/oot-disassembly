#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B864E0:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0034($sp)            
	sw      $zero, 0x0024($sp)         
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80035260              
	or      a1, $zero, $zero           ## a1 = 00000000
	lui     a0, 0x0500                 ## a0 = 05000000
	addiu   a0, a0, 0x4E98             ## a0 = 05004E98
	jal     func_80033EF4              
	addiu   a1, $sp, 0x0024            ## a1 = FFFFFFF4
	lw      a0, 0x0034($sp)            
	or      a2, s0, $zero              ## a2 = 00000000
	lw      a3, 0x0024($sp)            
	jal     func_800313A4              ## DynaPolyInfo_setActor
	addiu   a1, a0, 0x0810             ## a1 = 00000810
	lui     a1, %hi(var_80B86710)      ## a1 = 80B80000
	sw      v0, 0x013C(s0)             ## 0000013C
	addiu   a1, a1, %lo(var_80B86710)  ## a1 = 80B86710
	jal     func_80063F7C              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     t6, 0x8012                 ## t6 = 80120000
	lw      t6, -0x5A2C(t6)            ## 8011A5D4
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	addiu   v0, $zero, 0x0011          ## v0 = 00000011
	beq     t6, $zero, lbl_80B8655C    
	nop
	beq     $zero, $zero, lbl_80B8655C 
	addiu   v0, $zero, 0x0005          ## v0 = 00000005
lbl_80B8655C:
	bne     v0, $at, lbl_80B8657C      
	nop
	lh      a1, 0x001C(s0)             ## 0000001C
	lw      a0, 0x0034($sp)            
	jal     func_8002049C              
	andi    a1, a1, 0x003F             ## a1 = 00000000
	bnel    v0, $zero, lbl_80B86588    
	lw      $ra, 0x001C($sp)           
lbl_80B8657C:
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x001C($sp)           
lbl_80B86588:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B86598:
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


func_80B865CC:
	lw      v0, 0x1C44(a1)             ## 00001C44
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
	lw      t6, 0x0670(v0)             ## 00000670
	and     t7, t6, $at                
	sw      t7, 0x0670(v0)             ## 00000670
	swc1    $f4, 0x0140(a0)            ## 00000140
	jr      $ra                        
	nop


func_80B865F0:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	lw      t6, 0x002C($sp)            
	lw      a0, 0x0000(t6)             ## 00000000
	jal     func_8007E298              
	sw      a0, 0x0024($sp)            
	lw      a2, 0x0024($sp)            
	lw      v1, 0x02C0(a2)             ## 000002C0
	lui     a1, 0x0500                 ## a1 = 05000000
	addiu   a1, a1, 0x4350             ## a1 = 05004350
	sll     t9, a1,  4                 
	srl     t0, t9, 28                 
	lui     t8, 0xDB06                 ## t8 = DB060000
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a2)             ## 000002C0
	ori     t8, t8, 0x0020             ## t8 = DB060020
	sll     t1, t0,  2                 
	lui     t2, 0x8012                 ## t2 = 80120000
	addu    t2, t2, t1                 
	lui     $at, 0x00FF                ## $at = 00FF0000
	sw      t8, 0x0000(v1)             ## 00000000
	lw      t2, 0x0C38(t2)             ## 80120C38
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	and     t3, a1, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t4, t2, t3                 
	addu    t5, t4, $at                
	sw      t5, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(a2)             ## 000002C0
	lui     t7, 0xDA38                 ## t7 = DA380000
	ori     t7, t7, 0x0003             ## t7 = DA380003
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a2)             ## 000002C0
	sw      t7, 0x0000(v1)             ## 00000000
	lw      t8, 0x002C($sp)            
	lw      a0, 0x0000(t8)             ## DB060020
	jal     func_800AB900              
	sw      v1, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	lw      a2, 0x0024($sp)            
	lui     t0, 0xFB00                 ## t0 = FB000000
	sw      v0, 0x0004(a3)             ## 00000004
	lw      v1, 0x02C0(a2)             ## 000002C0
	lui     t1, 0xE8D2                 ## t1 = E8D20000
	ori     t1, t1, 0xB0FF             ## t1 = E8D2B0FF
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a2)             ## 000002C0
	sw      t1, 0x0004(v1)             ## 00000004
	sw      t0, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(a2)             ## 000002C0
	lui     t4, 0x0500                 ## t4 = 05000000
	addiu   t4, t4, 0x4CD0             ## t4 = 05004CD0
	addiu   t2, v1, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(a2)             ## 000002C0
	lui     t3, 0xDE00                 ## t3 = DE000000
	sw      t3, 0x0000(v1)             ## 00000000
	sw      t4, 0x0004(v1)             ## 00000004
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop
	nop

.section .data

var_80B866F0: .word 0x01D50600, 0x00000000, 0x00030000, 0x00000154
.word func_80B864E0
.word func_80B86598
.word func_80B865CC
.word func_80B865F0
var_80B86710: .word 0xC850014D, 0xB0F40708, 0xB0F801F4, 0x30FC05DC

.section .rodata


