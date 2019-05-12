#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A50A70:
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
	addiu   a0, a0, 0x1DA8             ## a0 = 06001DA8
	jal     func_80033EF4              
	addiu   a1, $sp, 0x0020            ## a1 = FFFFFFF0
	lw      a0, 0x0034($sp)            
	or      a2, s0, $zero              ## a2 = 00000000
	lw      a3, 0x0020($sp)            
	jal     func_800313A4              ## DynaPolyInfo_setActor
	addiu   a1, a0, 0x0810             ## a1 = 00000810
	lwc1    $f4, 0x0024(s0)            ## 00000024
	lwc1    $f6, 0x0028(s0)            ## 00000028
	lwc1    $f8, 0x002C(s0)            ## 0000002C
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	sw      v0, 0x013C(s0)             ## 0000013C
	swc1    $f4, 0x015C(s0)            ## 0000015C
	swc1    $f6, 0x0160(s0)            ## 00000160
	swc1    $f8, 0x0164(s0)            ## 00000164
	lhu     t6, 0x0F06(v1)             ## 8011B4D6
	lw      t0, 0x0034($sp)            
	lui     t2, %hi(func_80A50B8C)     ## t2 = 80A50000
	andi    t7, t6, 0x0040             ## t7 = 00000000
	bnel    t7, $zero, lbl_80A50B08    
	lh      t1, 0x00A4(t0)             ## 000000A4
	lhu     t8, 0x0EDC(v1)             ## 8011B4AC
	andi    t9, t8, 0x0020             ## t9 = 00000000
	beql    t9, $zero, lbl_80A50B2C    
	lui     $at, 0x3F80                ## $at = 3F800000
	lh      t1, 0x00A4(t0)             ## 000000A4
lbl_80A50B08:
	addiu   $at, $zero, 0x0052         ## $at = 00000052
	bne     t1, $at, lbl_80A50B28      
	lui     $at, 0xC2B2                ## $at = C2B20000
	mtc1    $at, $f10                  ## $f10 = -89.00
	lui     $at, %hi(var_80A50E70)     ## $at = 80A50000
	swc1    $f10, 0x0024(s0)           ## 00000024
	lwc1    $f16, %lo(var_80A50E70)($at) 
	swc1    $f16, 0x002C(s0)           ## 0000002C
lbl_80A50B28:
	lui     $at, 0x3F80                ## $at = 3F800000
lbl_80A50B2C:
	mtc1    $at, $f0                   ## $f0 = 1.00
	addiu   t2, t2, %lo(func_80A50B8C) ## t2 = 80A50B8C
	sw      t2, 0x0154(s0)             ## 00000154
	swc1    $f0, 0x0050(s0)            ## 00000050
	swc1    $f0, 0x0054(s0)            ## 00000054
	swc1    $f0, 0x0058(s0)            ## 00000058
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A50B58:
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


func_80A50B8C:
	sw      a1, 0x0004($sp)            
	lh      v0, 0x0158(a0)             ## 00000158
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lui     t6, 0x8012                 ## t6 = 80120000
	bne     v0, $at, lbl_80A50BCC      
	addiu   v1, $zero, 0x0002          ## v1 = 00000002
	lhu     t6, -0x4B2A(t6)            ## 8011B4D6
	lui     t8, %hi(func_80A50C00)     ## t8 = 80A50000
	addiu   t8, t8, %lo(func_80A50C00) ## t8 = 80A50C00
	andi    t7, t6, 0x0040             ## t7 = 00000000
	bne     t7, $zero, lbl_80A50BCC    
	nop
	addiu   v1, $zero, 0x0002          ## v1 = 00000002
	sh      v1, 0x0168(a0)             ## 00000168
	jr      $ra                        
	sw      t8, 0x0154(a0)             ## 00000154
lbl_80A50BCC:
	bne     v1, v0, lbl_80A50BE4       
	lui     t9, %hi(func_80A50C00)     ## t9 = 80A50000
	addiu   t9, t9, %lo(func_80A50C00) ## t9 = 80A50C00
	sh      v1, 0x0168(a0)             ## 00000168
	jr      $ra                        
	sw      t9, 0x0154(a0)             ## 00000154
lbl_80A50BE4:
	bgez    v0, lbl_80A50BF8           
	lui     t0, %hi(func_80A50CD8)     ## t0 = 80A50000
	addiu   t0, t0, %lo(func_80A50CD8) ## t0 = 80A50CD8
	sh      v1, 0x0168(a0)             ## 00000168
	sw      t0, 0x0154(a0)             ## 00000154
lbl_80A50BF8:
	jr      $ra                        
	nop


func_80A50C00:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lh      t6, 0x0168(s0)             ## 00000168
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    t6, $zero, lbl_80A50CA0    
	lw      $ra, 0x001C($sp)           
	jal     func_80022FD0              
	addiu   a1, $zero, 0x2067          ## a1 = 00002067
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f6                   ## $f6 = 2.00
	lwc1    $f4, 0x0024(s0)            ## 00000024
	lui     a1, 0xC4AB                 ## a1 = C4AB0000
	lui     a2, 0x3F4C                 ## a2 = 3F4C0000
	sub.s   $f8, $f4, $f6              
	lui     a3, 0x3E99                 ## a3 = 3E990000
	ori     a3, a3, 0x999A             ## a3 = 3E99999A
	ori     a2, a2, 0xCCCD             ## a2 = 3F4CCCCD
	swc1    $f8, 0x0024(s0)            ## 00000024
	ori     a1, a1, 0xE000             ## a1 = C4ABE000
	jal     func_80064280              
	addiu   a0, s0, 0x002C             ## a0 = 0000002C
	lui     $at, 0xC2B2                ## $at = C2B20000
	mtc1    $at, $f16                  ## $f16 = -89.00
	lwc1    $f10, 0x0024(s0)           ## 00000024
	or      a0, s0, $zero              ## a0 = 00000000
	c.lt.s  $f10, $f16                 
	nop
	bc1fl   lbl_80A50CA0               
	lw      $ra, 0x001C($sp)           
	jal     func_80022FD0              
	addiu   a1, $zero, 0x280E          ## a1 = 0000280E
	lui     t8, %hi(func_80A50CB0)     ## t8 = 80A50000
	addiu   t7, $zero, 0x001E          ## t7 = 0000001E
	addiu   t8, t8, %lo(func_80A50CB0) ## t8 = 80A50CB0
	sh      t7, 0x0168(s0)             ## 00000168
	sw      t8, 0x0154(s0)             ## 00000154
	lw      $ra, 0x001C($sp)           
lbl_80A50CA0:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A50CB0:
	sw      a1, 0x0004($sp)            
	lh      t6, 0x0168(a0)             ## 00000168
	lui     t7, %hi(func_80A50B8C)     ## t7 = 80A50000
	addiu   t7, t7, %lo(func_80A50B8C) ## t7 = 80A50B8C
	bne     t6, $zero, lbl_80A50CD0    
	nop
	sh      $zero, 0x0158(a0)          ## 00000158
	sw      t7, 0x0154(a0)             ## 00000154
lbl_80A50CD0:
	jr      $ra                        
	nop


func_80A50CD8:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lh      t6, 0x0168(s0)             ## 00000168
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    t6, $zero, lbl_80A50D84    
	lw      $ra, 0x001C($sp)           
	jal     func_80022FD0              
	addiu   a1, $zero, 0x2067          ## a1 = 00002067
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f6                   ## $f6 = 2.00
	lwc1    $f4, 0x0024(s0)            ## 00000024
	lui     a1, 0xC4A8                 ## a1 = C4A80000
	lui     a2, 0x3F4C                 ## a2 = 3F4C0000
	add.s   $f8, $f4, $f6              
	lui     a3, 0x3E99                 ## a3 = 3E990000
	ori     a3, a3, 0x999A             ## a3 = 3E99999A
	ori     a2, a2, 0xCCCD             ## a2 = 3F4CCCCD
	swc1    $f8, 0x0024(s0)            ## 00000024
	ori     a1, a1, 0xC000             ## a1 = C4A8C000
	jal     func_80064280              
	addiu   a0, s0, 0x002C             ## a0 = 0000002C
	lui     $at, 0x42B4                ## $at = 42B40000
	mtc1    $at, $f10                  ## $f10 = 90.00
	lwc1    $f16, 0x0024(s0)           ## 00000024
	lui     $at, 0x42B6                ## $at = 42B60000
	or      a0, s0, $zero              ## a0 = 00000000
	c.lt.s  $f10, $f16                 
	nop
	bc1fl   lbl_80A50D84               
	lw      $ra, 0x001C($sp)           
	mtc1    $at, $f18                  ## $f18 = 91.00
	addiu   a1, $zero, 0x280E          ## a1 = 0000280E
	jal     func_80022FD0              
	swc1    $f18, 0x0024(s0)           ## 00000024
	lui     t8, %hi(func_80A50CB0)     ## t8 = 80A50000
	addiu   t7, $zero, 0x001E          ## t7 = 0000001E
	addiu   t8, t8, %lo(func_80A50CB0) ## t8 = 80A50CB0
	sh      t7, 0x0168(s0)             ## 00000168
	sw      t8, 0x0154(s0)             ## 00000154
	lw      $ra, 0x001C($sp)           
lbl_80A50D84:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A50D94:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lh      v0, 0x0168(a0)             ## 00000168
	beq     v0, $zero, lbl_80A50DAC    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x0168(a0)             ## 00000168
lbl_80A50DAC:
	lw      t9, 0x0154(a0)             ## 00000154
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A50DC8:
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
	lui     t8, 0xDA38                 ## t8 = DA380000
	ori     t8, t8, 0x0003             ## t8 = DA380003
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a2)             ## 000002C0
	sw      t8, 0x0000(v1)             ## 00000000
	lw      t9, 0x002C($sp)            
	lw      a0, 0x0000(t9)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x001C($sp)            
	lw      a1, 0x001C($sp)            
	lw      a2, 0x0024($sp)            
	lui     t1, 0xDE00                 ## t1 = DE000000
	sw      v0, 0x0004(a1)             ## 00000004
	lw      v1, 0x02C0(a2)             ## 000002C0
	lui     t2, 0x0600                 ## t2 = 06000000
	addiu   t2, t2, 0x1CD0             ## t2 = 06001CD0
	addiu   t0, v1, 0x0008             ## t0 = 00000008
	sw      t0, 0x02C0(a2)             ## 000002C0
	sw      t2, 0x0004(v1)             ## 00000004
	sw      t1, 0x0000(v1)             ## 00000000
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop

.section .data

var_80A50E50: .word 0x01000700, 0x00000000, 0x01810000, 0x0000016C
.word func_80A50A70
.word func_80A50B58
.word func_80A50D94
.word func_80A50DC8

.section .rodata

var_80A50E70: .word 0xC4ABE000, 0x00000000, 0x00000000, 0x00000000

