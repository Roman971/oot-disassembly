#include <mips.h>
.set noreorder
.set noat

.section .text
func_8091CB90:
	sw      a1, 0x0158(a0)             ## 00000158
	jr      $ra                        
	nop


func_8091CB9C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	lui     a1, %hi(var_8091CEF0)      ## a1 = 80920000
	addiu   a1, a1, %lo(var_8091CEF0)  ## a1 = 8091CEF0
	or      a0, a2, $zero              ## a0 = 00000000
	jal     func_80063F7C              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	lh      t6, 0x001C(a2)             ## 0000001C
	ori     $at, $at, 0x17A4           ## $at = 000117A4
	addiu   v0, $zero, 0x0068          ## v0 = 00000068
	beq     t6, $zero, lbl_8091CBE8    
	addu    a0, a0, $at                
	beq     $zero, $zero, lbl_8091CBE8 
	addiu   v0, $zero, 0x0061          ## v0 = 00000061
lbl_8091CBE8:
	sll     a1, v0, 16                 
	sra     a1, a1, 16                 
	jal     func_80081628              ## ObjectIndex
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	sll     t7, v0, 24                 
	sra     t8, t7, 24                 
	bgez    t8, lbl_8091CC1C           
	sb      v0, 0x0154(a2)             ## 00000154
	jal     func_80020EB4              
	or      a0, a2, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8091CC30 
	lw      $ra, 0x0014($sp)           
lbl_8091CC1C:
	lui     a1, %hi(func_8091CC70)     ## a1 = 80920000
	addiu   a1, a1, %lo(func_8091CC70) ## a1 = 8091CC70
	jal     func_8091CB90              
	or      a0, a2, $zero              ## a0 = 00000000
	lw      $ra, 0x0014($sp)           
lbl_8091CC30:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8091CC3C:
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


func_8091CC70:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	lw      a0, 0x002C($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x17A4           ## $at = 000117A4
	lb      a1, 0x0154(s0)             ## 00000154
	jal     func_80081688              
	addu    a0, a0, $at                
	beq     v0, $zero, lbl_8091CD30    
	addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
	sw      $zero, 0x0024($sp)         
	lw      t6, 0x0004(s0)             ## 00000004
	lb      t8, 0x0154(s0)             ## 00000154
	or      a1, s0, $zero              ## a1 = 00000000
	and     t7, t6, $at                
	sw      t7, 0x0004(s0)             ## 00000004
	sb      t8, 0x001E(s0)             ## 0000001E
	jal     func_80020FA4              
	lw      a0, 0x002C($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80035260              
	or      a1, $zero, $zero           ## a1 = 00000000
	lh      t9, 0x001C(s0)             ## 0000001C
	lui     a0, 0x0600                 ## a0 = 06000000
	addiu   a0, a0, 0x0330             ## a0 = 06000330
	beq     t9, $zero, lbl_8091CCF4    
	nop
	lui     a0, 0x0600                 ## a0 = 06000000
	beq     $zero, $zero, lbl_8091CCF4 
	addiu   a0, a0, 0x0658             ## a0 = 06000658
lbl_8091CCF4:
	jal     func_80033EF4              
	addiu   a1, $sp, 0x0024            ## a1 = FFFFFFFC
	lw      a0, 0x002C($sp)            
	or      a2, s0, $zero              ## a2 = 00000000
	lw      a3, 0x0024($sp)            
	jal     func_800313A4              ## DynaPolyInfo_setActor
	addiu   a1, a0, 0x0810             ## a1 = 00000810
	lui     a1, %hi(func_8091CD44)     ## a1 = 80920000
	sw      v0, 0x013C(s0)             ## 0000013C
	addiu   a1, a1, %lo(func_8091CD44) ## a1 = 8091CD44
	jal     func_8091CB90              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     t1, %hi(func_8091CD78)     ## t1 = 80920000
	addiu   t1, t1, %lo(func_8091CD78) ## t1 = 8091CD78
	sw      t1, 0x0134(s0)             ## 00000134
lbl_8091CD30:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8091CD44:
	sw      a0, 0x0000($sp)            
	sw      a1, 0x0004($sp)            
	jr      $ra                        
	nop


func_8091CD54:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lw      t9, 0x0158(a0)             ## 00000158
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8091CD78:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0018($sp)            
	or      s0, a1, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lh      v0, 0x001C(a0)             ## 0000001C
	lw      a3, 0x0000(s0)             ## 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	beq     v0, $zero, lbl_8091CE58    
	or      a2, a3, $zero              ## a2 = 00000000
	lui     $at, 0x0001                ## $at = 00010000
	sll     t6, v0,  1                 
	lui     a1, %hi(var_8091CEFE)      ## a1 = 80920000
	addu    a1, a1, t6                 
	ori     $at, $at, 0x17A4           ## $at = 000117A4
	addu    a0, s0, $at                
	lh      a1, %lo(var_8091CEFE)(a1)  
	jal     func_80081628              ## ObjectIndex
	sw      a2, 0x0034($sp)            
	bltz    v0, lbl_8091CDF4           
	lw      a2, 0x0034($sp)            
	sll     t7, v0,  4                 
	addu    t7, t7, v0                 
	sll     t7, t7,  2                 
	addu    t8, s0, t7                 
	lui     t9, 0x0001                 ## t9 = 00010000
	addu    t9, t9, t8                 
	lw      t9, 0x17B4(t9)             ## 000117B4
	lui     $at, 0x8000                ## $at = 80000000
	addu    t0, t9, $at                
	lui     $at, 0x8012                ## $at = 80120000
	sw      t0, 0x0C50($at)            ## 80120C50
lbl_8091CDF4:
	lw      v1, 0x02C0(a2)             ## 000002C0
	lui     a0, 0x0600                 ## a0 = 06000000
	addiu   a0, a0, 0x0000             ## a0 = 06000000
	sll     t3, a0,  4                 
	srl     t4, t3, 28                 
	lui     t2, 0xDB06                 ## t2 = DB060000
	addiu   t1, v1, 0x0008             ## t1 = 00000008
	sw      t1, 0x02C0(a2)             ## 000002C0
	ori     t2, t2, 0x0020             ## t2 = DB060020
	sll     t5, t4,  2                 
	lui     t6, 0x8012                 ## t6 = 80120000
	addu    t6, t6, t5                 
	lui     $at, 0x00FF                ## $at = 00FF0000
	sw      t2, 0x0000(v1)             ## 00000000
	lw      t6, 0x0C38(t6)             ## 80120C38
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	and     t7, a0, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t8, t6, t7                 
	addu    t9, t8, $at                
	sw      t9, 0x0004(v1)             ## 00000004
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x0330             ## a1 = 06000330
	beq     $zero, $zero, lbl_8091CE5C 
	lw      a3, 0x0000(s0)             ## 00000000
lbl_8091CE58:
	addiu   a1, a1, 0x0140             ## a1 = 06000470
lbl_8091CE5C:
	or      a0, a3, $zero              ## a0 = 00000000
	sw      a1, 0x0038($sp)            
	jal     func_8007E298              
	sw      a2, 0x0034($sp)            
	lw      a2, 0x0034($sp)            
	lw      v1, 0x02C0(a2)             ## 000002C0
	lui     t1, 0xDA38                 ## t1 = DA380000
	ori     t1, t1, 0x0003             ## t1 = DA380003
	addiu   t0, v1, 0x0008             ## t0 = 00000008
	sw      t0, 0x02C0(a2)             ## 000002C0
	sw      t1, 0x0000(v1)             ## 00000000
	lw      a0, 0x0000(s0)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x0024($sp)            
	lw      a3, 0x0024($sp)            
	lw      a1, 0x0038($sp)            
	lw      a2, 0x0034($sp)            
	sw      v0, 0x0004(a3)             ## 00000004
	lw      v1, 0x02C0(a2)             ## 000002C0
	lui     t3, 0xDE00                 ## t3 = DE000000
	addiu   t2, v1, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(a2)             ## 000002C0
	sw      a1, 0x0004(v1)             ## 00000004
	sw      t3, 0x0000(v1)             ## 00000000
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	nop

.section .data

var_8091CED0: .word 0x006E0100, 0x00000010, 0x00010000, 0x0000015C
.word func_8091CB9C
.word func_8091CC3C
.word func_8091CD54
.word 0x00000000
var_8091CEF0: .byte 0xC8, 0x50, 0x03, 0xE8, 0xB0, 0xF4, 0x0F, 0xA0, 0xB0, 0xF8, 0x01, 0x90, 0x30, 0xFC
var_8091CEFE: .byte \
0x01, 0x90, 0x00, 0x62, 0x00, 0x63, 0x00, 0x64, 0x00, 0x65, 0x00, 0x66, 0x00, 0x67, 0x00, 0x00, \
0x00, 0x00

.section .rodata


