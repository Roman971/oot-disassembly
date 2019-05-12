#include <mips.h>
.set noreorder
.set noat

.section .text
func_80AE1640:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0038($sp)            
	sw      a2, 0x0040($sp)            
	lw      t6, 0x0040($sp)            
	lui     t8, %hi(var_80AE2698)      ## t8 = 80AE0000
	mtc1    $zero, $f6                 ## $f6 = 0.00
	lw      v0, 0x0000(t6)             ## 00000000
	addiu   t8, t8, %lo(var_80AE2698)  ## t8 = 80AE2698
	sll     t7, a1,  4                 
	bltzl   v0, lbl_80AE167C           
	mtc1    $zero, $f0                 ## $f0 = 0.00
	bne     a1, v0, lbl_80AE1684       
	sll     t9, a1,  4                 
	mtc1    $zero, $f0                 ## $f0 = 0.00
lbl_80AE167C:
	beq     $zero, $zero, lbl_80AE1694 
	addu    v1, t7, t8                 
lbl_80AE1684:
	lui     t0, %hi(var_80AE2698)      ## t0 = 80AE0000
	addiu   t0, t0, %lo(var_80AE2698)  ## t0 = 80AE2698
	addu    v1, t9, t0                 
	lwc1    $f0, 0x000C(v1)            ## 0000000C
lbl_80AE1694:
	lwc1    $f4, 0x0004(v1)            ## 00000004
	c.le.s  $f6, $f4                   
	nop
	bc1fl   lbl_80AE1700               
	lw      a0, 0x0000(v1)             ## 00000000
	lw      a0, 0x0000(v1)             ## 00000000
	sw      v1, 0x002C($sp)            
	sw      a1, 0x003C($sp)            
	jal     func_8008A194              
	swc1    $f0, 0x0034($sp)           
	mtc1    v0, $f8                    ## $f8 = 0.00
	lw      v1, 0x002C($sp)            
	lwc1    $f0, 0x0034($sp)           
	cvt.s.w $f10, $f8                  
	lw      a0, 0x0038($sp)            
	lbu     t1, 0x0008(v1)             ## 00000008
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	lw      a1, 0x0000(v1)             ## 00000000
	lw      a2, 0x0004(v1)             ## 00000004
	swc1    $f10, 0x0010($sp)          
	swc1    $f0, 0x0018($sp)           
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	jal     func_8008D17C              
	sw      t1, 0x0014($sp)            
	beq     $zero, $zero, lbl_80AE1750 
	lw      t3, 0x003C($sp)            
	lw      a0, 0x0000(v1)             ## 00000000
lbl_80AE1700:
	sw      v1, 0x002C($sp)            
	sw      a1, 0x003C($sp)            
	jal     func_8008A194              
	swc1    $f0, 0x0034($sp)           
	mtc1    v0, $f16                   ## $f16 = 0.00
	lw      v1, 0x002C($sp)            
	lwc1    $f0, 0x0034($sp)           
	cvt.s.w $f16, $f16                 
	lw      a0, 0x0038($sp)            
	mtc1    $zero, $f18                ## $f18 = 0.00
	lbu     t2, 0x0008(v1)             ## 00000008
	lw      a1, 0x0000(v1)             ## 00000000
	lw      a2, 0x0004(v1)             ## 00000004
	mfc1    a3, $f16                   
	swc1    $f0, 0x0018($sp)           
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	sw      t2, 0x0014($sp)            
	jal     func_8008D17C              
	swc1    $f18, 0x0010($sp)          
	lw      t3, 0x003C($sp)            
lbl_80AE1750:
	lw      t4, 0x0040($sp)            
	sw      t3, 0x0000(t4)             ## 00000000
	lw      $ra, 0x0024($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80AE1764:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x004C($sp)            
	lui     t6, 0x8012                 ## t6 = 80120000
	lw      t6, -0x5A20(t6)            ## 8011A5E0
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	beq     t6, $zero, lbl_80AE17A0    
	lui     a2, 0x8002                 ## a2 = 80020000
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80AE18E8 
	lw      $ra, 0x002C($sp)           
lbl_80AE17A0:
	addiu   a2, a2, 0xEFF4             ## a2 = FFFFEFF4
	jal     func_8001EC20              
	lui     a3, 0x4198                 ## a3 = 41980000
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	lui     a2, 0x0601                 ## a2 = 06010000
	addiu   t7, s0, 0x0274             ## t7 = 00000274
	addiu   t8, s0, 0x02D4             ## t8 = 000002D4
	addiu   t9, $zero, 0x0010          ## t9 = 00000010
	sw      t9, 0x0018($sp)            
	sw      t8, 0x0014($sp)            
	sw      t7, 0x0010($sp)            
	addiu   a2, a2, 0x8540             ## a2 = 06008540
	sw      a1, 0x0038($sp)            
	lw      a0, 0x004C($sp)            
	jal     func_8008C788              
	or      a3, $zero, $zero           ## a3 = 00000000
	addiu   a1, s0, 0x0184             ## a1 = 00000184
	sw      a1, 0x0034($sp)            
	jal     func_8004AB7C              
	lw      a0, 0x004C($sp)            
	lui     a3, %hi(var_80AE2640)      ## a3 = 80AE0000
	lw      a1, 0x0034($sp)            
	addiu   a3, a3, %lo(var_80AE2640)  ## a3 = 80AE2640
	lw      a0, 0x004C($sp)            
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	lui     a1, %hi(var_80AE2678)      ## a1 = 80AE0000
	lui     a2, %hi(var_80AE266C)      ## a2 = 80AE0000
	addiu   a2, a2, %lo(var_80AE266C)  ## a2 = 80AE266C
	addiu   a1, a1, %lo(var_80AE2678)  ## a1 = 80AE2678
	jal     func_80050370              
	addiu   a0, s0, 0x0098             ## a0 = 00000098
	mtc1    $zero, $f0                 ## $f0 = 0.00
	addiu   t0, $zero, 0x0004          ## t0 = 00000004
	sw      t0, 0x0014($sp)            
	mfc1    a2, $f0                    
	mfc1    a3, $f0                    
	lw      a0, 0x004C($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_80021E6C              
	swc1    $f0, 0x0010($sp)           
	lui     v1, %hi(var_80AE2698)      ## v1 = 80AE0000
	addiu   v1, v1, %lo(var_80AE2698)  ## v1 = 80AE2698
	jal     func_8008A194              
	lw      a0, 0x0000(v1)             ## 80AE2698
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     v1, %hi(var_80AE2698)      ## v1 = 80AE0000
	addiu   v1, v1, %lo(var_80AE2698)  ## v1 = 80AE2698
	cvt.s.w $f6, $f4                   
	lbu     t1, 0x0008(v1)             ## 80AE26A0
	lwc1    $f8, 0x000C(v1)            ## 80AE26A4
	lw      a1, 0x0000(v1)             ## 80AE2698
	lw      a0, 0x0038($sp)            
	lui     a2, 0x3F80                 ## a2 = 3F800000
	swc1    $f6, 0x0010($sp)           
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	sw      t1, 0x0014($sp)            
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
	lh      t3, 0x001C(s0)             ## 0000001C
	lui     $at, 0xBF80                ## $at = BF800000
	mtc1    $at, $f10                  ## $f10 = -1.00
	addiu   t2, $zero, 0x0006          ## t2 = 00000006
	addiu   t5, $zero, 0xFFFF          ## t5 = FFFFFFFF
	andi    t4, t3, 0x00FF             ## t4 = 00000000
	sb      t2, 0x001F(s0)             ## 0000001F
	sw      t4, 0x01E4(s0)             ## 000001E4
	sw      $zero, 0x01DC(s0)          ## 000001DC
	sw      $zero, 0x01D0(s0)          ## 000001D0
	sw      t5, 0x0200(s0)             ## 00000200
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, s0, 0x0200             ## a2 = 00000200
	jal     func_80AE1640              
	swc1    $f10, 0x006C(s0)           ## 0000006C
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f16                  ## $f16 = 1.00
	lui     t6, %hi(func_80AE1EE8)     ## t6 = 80AE0000
	addiu   t6, t6, %lo(func_80AE1EE8) ## t6 = 80AE1EE8
	sw      t6, 0x0180(s0)             ## 00000180
	swc1    $f16, 0x01FC(s0)           ## 000001FC
	lw      $ra, 0x002C($sp)           
lbl_80AE18E8:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AE18F8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	or      a0, a3, $zero              ## a0 = 00000000
	jal     func_8004ABCC              
	addiu   a1, a2, 0x0184             ## a1 = 00000184
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AE1924:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0034($sp)            
	lw      a0, 0x0034($sp)            
	addiu   v1, $zero, 0x0001          ## v1 = 00000001
	sw      v1, 0x0024($sp)            
	jal     func_800DD464              
	addiu   a0, a0, 0x20D8             ## a0 = 000020D8
	sltiu   $at, v0, 0x0007            
	beq     $at, $zero, lbl_80AE1A40   
	lw      v1, 0x0024($sp)            
	sll     t6, v0,  2                 
	lui     $at, %hi(var_80AE2700)     ## $at = 80AE0000
	addu    $at, $at, t6               
	lw      t6, %lo(var_80AE2700)($at) 
	jr      t6                         
	nop
var_80AE1970:
	lw      a0, 0x0034($sp)            
	jal     func_800D6110              
	sw      v1, 0x0024($sp)            
	beq     v0, $zero, lbl_80AE1A40    
	lw      v1, 0x0024($sp)            
	lw      t7, 0x0034($sp)            
	lui     t8, 0x0001                 ## t8 = 00010000
	addiu   t0, $zero, 0x2024          ## t0 = 00002024
	addu    t8, t8, t7                 
	lbu     t8, 0x04BD(t8)             ## 000104BD
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	bne     t8, $zero, lbl_80AE19C8    
	addiu   a2, s0, 0x0200             ## a2 = 00000200
	addiu   t9, $zero, 0x2026          ## t9 = 00002026
	sh      t9, 0x010E(s0)             ## 0000010E
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x0003          ## a1 = 00000003
	jal     func_80AE1640              
	addiu   a2, s0, 0x0200             ## a2 = 00000200
	beq     $zero, $zero, lbl_80AE1A40 
	addiu   v1, $zero, 0x0002          ## v1 = 00000002
lbl_80AE19C8:
	jal     func_80AE1640              
	sh      t0, 0x010E(s0)             ## 0000010E
	beq     $zero, $zero, lbl_80AE1A40 
	addiu   v1, $zero, 0x0002          ## v1 = 00000002
var_80AE19D8:
	lw      a0, 0x0034($sp)            
	jal     func_800D6110              
	sw      v1, 0x0024($sp)            
	beq     v0, $zero, lbl_80AE1A40    
	lw      v1, 0x0024($sp)            
	lhu     t1, 0x010E(s0)             ## 0000010E
	addiu   $at, $zero, 0x2026         ## $at = 00002026
	or      v1, $zero, $zero           ## v1 = 00000000
	bne     t1, $at, lbl_80AE1A40      
	nop
	jal     func_80079B54              
	lw      a0, 0x0034($sp)            
	lw      a0, 0x0034($sp)            
	jal     func_8006FDCC              
	addiu   a1, $zero, 0x002C          ## a1 = 0000002C
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	lhu     t2, 0x0EF6(v1)             ## 8011B4C6
	addiu   a0, $zero, 0x001E          ## a0 = 0000001E
	ori     t3, t2, 0x0400             ## t3 = 00000400
	jal     func_800721CC              
	sh      t3, 0x0EF6(v1)             ## 8011B4C6
	addiu   t4, $zero, 0x2027          ## t4 = 00002027
	sh      t4, 0x010E(s0)             ## 0000010E
	beq     $zero, $zero, lbl_80AE1A40 
	addiu   v1, $zero, 0x0002          ## v1 = 00000002
lbl_80AE1A40:
	or      v0, v1, $zero              ## v0 = 00000002
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AE1A58:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0020($sp)            
	or      a2, a1, $zero              ## a2 = 00000000
	lw      t6, 0x1C44(a2)             ## 00001C44
	or      a0, a2, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x000F          ## a1 = 0000000F
	jal     func_800597C0              
	sw      t6, 0x001C($sp)            
	lui     t7, 0x8012                 ## t7 = 80120000
	lhu     t7, -0x4B3A(t7)            ## 8011B4C6
	or      v1, v0, $zero              ## v1 = 00000000
	or      a0, v0, $zero              ## a0 = 00000000
	andi    t8, t7, 0x0400             ## t8 = 00000000
	beq     t8, $zero, lbl_80AE1AA8    
	lw      $ra, 0x0014($sp)           
	bnel    v0, $zero, lbl_80AE1AD4    
	or      v0, a0, $zero              ## v0 = 00000000
	beq     $zero, $zero, lbl_80AE1AD0 
	addiu   a0, $zero, 0x2028          ## a0 = 00002028
lbl_80AE1AA8:
	lw      t9, 0x001C($sp)            
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	lbu     t0, 0x014F(t9)             ## 0000014F
	bne     t0, $at, lbl_80AE1AC4      
	nop
	beq     $zero, $zero, lbl_80AE1AD0 
	addiu   a0, $zero, 0x2023          ## a0 = 00002023
lbl_80AE1AC4:
	bnel    v1, $zero, lbl_80AE1AD4    
	or      v0, a0, $zero              ## v0 = 00002023
	addiu   a0, $zero, 0x2022          ## a0 = 00002022
lbl_80AE1AD0:
	or      v0, a0, $zero              ## v0 = 00002022
lbl_80AE1AD4:
	jr      $ra                        
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80AE1ADC:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	or      a2, a1, $zero              ## a2 = 00000000
	lw      v0, 0x01D0(s0)             ## 000001D0
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	or      a0, a2, $zero              ## a0 = 00000000
	bnel    v0, $at, lbl_80AE1B1C      
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	jal     func_800DCE80              
	lhu     a1, 0x010E(s0)             ## 0000010E
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	beq     $zero, $zero, lbl_80AE1C14 
	sw      t6, 0x01D0(s0)             ## 000001D0
	addiu   $at, $zero, 0x0001         ## $at = 00000001
lbl_80AE1B1C:
	bne     v0, $at, lbl_80AE1B38      
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80AE1924              
	or      a1, a2, $zero              ## a1 = 00000000
	beq     $zero, $zero, lbl_80AE1C14 
	sw      v0, 0x01D0(s0)             ## 000001D0
lbl_80AE1B38:
	or      a1, a2, $zero              ## a1 = 00000000
	jal     func_80022930              
	sw      a2, 0x0034($sp)            
	beq     v0, $zero, lbl_80AE1BC0    
	lw      a0, 0x0034($sp)            
	lhu     v0, 0x010E(s0)             ## 0000010E
	addiu   v1, $zero, 0x2022          ## v1 = 00002022
	or      a0, s0, $zero              ## a0 = 00000000
	beq     v1, v0, lbl_80AE1B70       
	addiu   a1, $zero, 0x0003          ## a1 = 00000003
	beq     v1, v0, lbl_80AE1B7C       
	addiu   $at, $zero, 0x2028         ## $at = 00002028
	beql    v0, $at, lbl_80AE1B80      
	addiu   $at, $zero, 0x2023         ## $at = 00002023
lbl_80AE1B70:
	jal     func_80AE1640              
	addiu   a2, s0, 0x0200             ## a2 = 00000200
	lhu     v0, 0x010E(s0)             ## 0000010E
lbl_80AE1B7C:
	addiu   $at, $zero, 0x2023         ## $at = 00002023
lbl_80AE1B80:
	beq     v0, $at, lbl_80AE1B90      
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   $at, $zero, 0x2028         ## $at = 00002028
	bne     v0, $at, lbl_80AE1BA0      
lbl_80AE1B90:
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	jal     func_80AE1640              
	addiu   a2, s0, 0x0200             ## a2 = 00000200
	lhu     v0, 0x010E(s0)             ## 0000010E
lbl_80AE1BA0:
	addiu   $at, $zero, 0x2023         ## $at = 00002023
	bnel    v0, $at, lbl_80AE1BB8      
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	jal     func_800646F0              
	addiu   a0, $zero, 0x4807          ## a0 = 00004807
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
lbl_80AE1BB8:
	beq     $zero, $zero, lbl_80AE1C14 
	sw      t7, 0x01D0(s0)             ## 000001D0
lbl_80AE1BC0:
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a2, $sp, 0x002A            ## a2 = FFFFFFFA
	jal     func_80022B14              
	addiu   a3, $sp, 0x0028            ## a3 = FFFFFFF8
	lh      v0, 0x002A($sp)            
	bltz    v0, lbl_80AE1C14           
	slti    $at, v0, 0x0141            
	beq     $at, $zero, lbl_80AE1C14   
	lh      v0, 0x0028($sp)            
	bltz    v0, lbl_80AE1C14           
	slti    $at, v0, 0x00F1            
	beq     $at, $zero, lbl_80AE1C14   
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x0034($sp)            
	jal     func_80022A68              
	lui     a2, 0x42C8                 ## a2 = 42C80000
	beq     v0, $zero, lbl_80AE1C14    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80AE1A58              
	lw      a1, 0x0034($sp)            
	sh      v0, 0x010E(s0)             ## 0000010E
lbl_80AE1C14:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AE1C28:
	sll     t6, a1,  3                 
	addu    t7, t6, a0                 
	lbu     v0, 0x0000(t7)             ## 00000000
	jr      $ra                        
	nop


func_80AE1C3C:
	sll     t6, a2,  3                 
	addu    t7, a0, t6                 
	lw      t0, 0x0004(t7)             ## 00000004
	lui     t2, 0x8012                 ## t2 = 80120000
	lui     $at, 0x00FF                ## $at = 00FF0000
	sll     t8, t0,  4                 
	srl     t9, t8, 28                 
	sll     t1, t9,  2                 
	addu    t2, t2, t1                 
	lw      t2, 0x0C38(t2)             ## 80120C38
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	sll     t5, a3,  2                 
	subu    t5, t5, a3                 
	and     t3, t0, $at                
	sll     t5, t5,  1                 
	addu    t4, t2, t3                 
	addu    v1, t4, t5                 
	lui     $at, 0x8000                ## $at = 80000000
	addu    v1, v1, $at                
	lh      t6, 0x0000(v1)             ## 00000000
	or      v0, $zero, $zero           ## v0 = 00000000
	mtc1    t6, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	swc1    $f6, 0x0000(a1)            ## 00000000
	lh      t7, 0x0002(v1)             ## 00000002
	mtc1    t7, $f8                    ## $f8 = 0.00
	nop
	cvt.s.w $f10, $f8                  
	swc1    $f10, 0x0004(a1)           ## 00000004
	lh      t8, 0x0004(v1)             ## 00000004
	mtc1    t8, $f16                   ## $f16 = 0.00
	nop
	cvt.s.w $f18, $f16                 
	swc1    $f18, 0x0008(a1)           ## 00000008
	jr      $ra                        
	nop


func_80AE1CD0:
	addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
	sw      s2, 0x0048($sp)            
	sw      s0, 0x0040($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	addiu   s2, $sp, 0x0064            ## s2 = FFFFFFEC
	sw      $ra, 0x004C($sp)           
	sw      s1, 0x0044($sp)            
	sdc1    $f26, 0x0038($sp)          
	sdc1    $f24, 0x0030($sp)          
	sdc1    $f22, 0x0028($sp)          
	sdc1    $f20, 0x0020($sp)          
	sw      a1, 0x007C($sp)            
	lw      s1, 0x007C($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	or      a1, s2, $zero              ## a1 = FFFFFFEC
	addu    s1, s1, $at                
	lw      a0, 0x1E08(s1)             ## 00001E08
	lw      a2, 0x01E4(s0)             ## 000001E4
	jal     func_80AE1C3C              
	lw      a3, 0x01EC(s0)             ## 000001EC
	lwc1    $f4, 0x0064($sp)           
	lwc1    $f6, 0x0024(s0)            ## 00000024
	lwc1    $f8, 0x006C($sp)           
	lwc1    $f10, 0x002C(s0)           ## 0000002C
	sub.s   $f20, $f4, $f6             
	sub.s   $f22, $f8, $f10            
	mov.s   $f12, $f20                 
	jal     func_800CD76C              
	mov.s   $f14, $f22                 
	lui     $at, %hi(var_80AE271C)     ## $at = 80AE0000
	lwc1    $f24, %lo(var_80AE271C)($at) 
	lui     $at, %hi(var_80AE2720)     ## $at = 80AE0000
	lwc1    $f26, %lo(var_80AE2720)($at) 
	mul.s   $f16, $f0, $f24            
	nop
	mul.s   $f8, $f20, $f20            
	nop
	mul.s   $f10, $f22, $f22           
	trunc.w.s $f18, $f16                 
	add.s   $f0, $f8, $f10             
	mfc1    t7, $f18                   
	sqrt.s  $f0, $f0                   
	sll     t8, t7, 16                 
	sra     t9, t8, 16                 
	mtc1    t9, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	swc1    $f0, 0x01F8(s0)            ## 000001F8
	c.le.s  $f0, $f26                  
	swc1    $f6, 0x01F4(s0)            ## 000001F4
	bc1f    lbl_80AE1E54               
	nop
lbl_80AE1DA0:
	lw      t0, 0x01EC(s0)             ## 000001EC
	lw      a1, 0x01E4(s0)             ## 000001E4
	addiu   t1, t0, 0x0001             ## t1 = 00000001
	sw      t1, 0x01EC(s0)             ## 000001EC
	jal     func_80AE1C28              
	lw      a0, 0x1E08(s1)             ## 00001E08
	lw      a3, 0x01EC(s0)             ## 000001EC
	or      a1, s2, $zero              ## a1 = FFFFFFEC
	bltz    a3, lbl_80AE1DD0           
	slt     $at, a3, v0                
	bnel    $at, $zero, lbl_80AE1DDC   
	lw      a0, 0x1E08(s1)             ## 00001E08
lbl_80AE1DD0:
	sw      $zero, 0x01EC(s0)          ## 000001EC
	or      a3, $zero, $zero           ## a3 = 00000000
	lw      a0, 0x1E08(s1)             ## 00001E08
lbl_80AE1DDC:
	jal     func_80AE1C3C              
	lw      a2, 0x01E4(s0)             ## 000001E4
	lwc1    $f16, 0x0064($sp)          
	lwc1    $f18, 0x0024(s0)           ## 00000024
	lwc1    $f4, 0x006C($sp)           
	lwc1    $f6, 0x002C(s0)            ## 0000002C
	sub.s   $f20, $f16, $f18           
	sub.s   $f22, $f4, $f6             
	mov.s   $f12, $f20                 
	jal     func_800CD76C              
	mov.s   $f14, $f22                 
	mul.s   $f8, $f0, $f24             
	nop
	mul.s   $f4, $f20, $f20            
	nop
	mul.s   $f6, $f22, $f22            
	trunc.w.s $f10, $f8                  
	add.s   $f0, $f4, $f6              
	mfc1    t3, $f10                   
	sqrt.s  $f0, $f0                   
	sll     t4, t3, 16                 
	sra     t5, t4, 16                 
	mtc1    t5, $f16                   ## $f16 = 0.00
	nop
	cvt.s.w $f18, $f16                 
	swc1    $f0, 0x01F8(s0)            ## 000001F8
	c.le.s  $f0, $f26                  
	swc1    $f18, 0x01F4(s0)           ## 000001F4
	bc1t    lbl_80AE1DA0               
	nop
lbl_80AE1E54:
	lwc1    $f8, 0x01F4(s0)            ## 000001F4
	sw      $zero, 0x0010($sp)         
	addiu   a0, s0, 0x00B6             ## a0 = 000000B6
	trunc.w.s $f10, $f8                  
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	addiu   a3, $zero, 0x09C4          ## a3 = 000009C4
	mfc1    a1, $f10                   
	nop
	sll     a1, a1, 16                 
	jal     func_80064508              
	sra     a1, a1, 16                 
	lh      t7, 0x00B6(s0)             ## 000000B6
	lwc1    $f16, 0x01FC(s0)           ## 000001FC
	or      a0, s0, $zero              ## a0 = 00000000
	sh      t7, 0x0032(s0)             ## 00000032
	jal     func_8002121C              
	swc1    $f16, 0x0068(s0)           ## 00000068
	mtc1    $zero, $f0                 ## $f0 = 0.00
	addiu   t8, $zero, 0x0004          ## t8 = 00000004
	sw      t8, 0x0014($sp)            
	mfc1    a2, $f0                    
	mfc1    a3, $f0                    
	lw      a0, 0x007C($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_80021E6C              
	swc1    $f0, 0x0010($sp)           
	or      v0, $zero, $zero           ## v0 = 00000000
	lw      $ra, 0x004C($sp)           
	ldc1    $f20, 0x0020($sp)          
	ldc1    $f22, 0x0028($sp)          
	ldc1    $f24, 0x0030($sp)          
	ldc1    $f26, 0x0038($sp)          
	lw      s0, 0x0040($sp)            
	lw      s1, 0x0044($sp)            
	lw      s2, 0x0048($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0078           ## $sp = 00000000


func_80AE1EE8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lw      t6, 0x01D0(a3)             ## 000001D0
	lui     t7, %hi(func_80AE2114)     ## t7 = 80AE0000
	addiu   t7, t7, %lo(func_80AE2114) ## t7 = 80AE2114
	beq     t6, $zero, lbl_80AE1F14    
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	beq     $zero, $zero, lbl_80AE2078 
	sw      t7, 0x0180(a3)             ## 00000180
lbl_80AE1F14:
	jal     func_8008C9C0              
	sw      a3, 0x0018($sp)            
	beq     v0, $zero, lbl_80AE200C    
	lw      a3, 0x0018($sp)            
	lw      t8, 0x01D0(a3)             ## 000001D0
	lw      a1, 0x0200(a3)             ## 00000200
	lui     t9, 0x8012                 ## t9 = 80120000
	bnel    t8, $zero, lbl_80AE1FFC    
	or      a0, a3, $zero              ## a0 = 00000000
	lhu     t9, -0x4B3A(t9)            ## 8011B4C6
	andi    t0, t9, 0x0400             ## t0 = 00000000
	beq     t0, $zero, lbl_80AE1F70    
	nop
	jal     func_800CDCCC              ## Rand.Next() float
	sw      a3, 0x0018($sp)            
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f4                   ## $f4 = 10.00
	lw      a3, 0x0018($sp)            
	mul.s   $f6, $f0, $f4              
	trunc.w.s $f8, $f6                   
	mfc1    v0, $f8                    
	beq     $zero, $zero, lbl_80AE1F94 
	nop
lbl_80AE1F70:
	jal     func_800CDCCC              ## Rand.Next() float
	sw      a3, 0x0018($sp)            
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f10                  ## $f10 = 5.00
	lw      a3, 0x0018($sp)            
	mul.s   $f16, $f0, $f10            
	trunc.w.s $f18, $f16                 
	mfc1    v0, $f18                   
	nop
lbl_80AE1F94:
	bne     v0, $zero, lbl_80AE1FF8    
	or      a1, $zero, $zero           ## a1 = 00000000
	lui     t3, 0x8012                 ## t3 = 80120000
	lhu     t3, -0x4B3A(t3)            ## 8011B4C6
	addiu   a1, $zero, 0x0002          ## a1 = 00000002
	andi    t4, t3, 0x0400             ## t4 = 00000000
	beq     t4, $zero, lbl_80AE1FE8    
	nop
	jal     func_800CDCCC              ## Rand.Next() float
	sw      a3, 0x0018($sp)            
	add.s   $f4, $f0, $f0              
	lw      a3, 0x0018($sp)            
	trunc.w.s $f6, $f4                   
	mfc1    t6, $f6                    
	nop
	bne     t6, $zero, lbl_80AE1FE0    
	nop
	beq     $zero, $zero, lbl_80AE1FE8 
	addiu   a1, $zero, 0x0002          ## a1 = 00000002
lbl_80AE1FE0:
	beq     $zero, $zero, lbl_80AE1FE8 
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
lbl_80AE1FE8:
	lui     t7, %hi(func_80AE2088)     ## t7 = 80AE0000
	addiu   t7, t7, %lo(func_80AE2088) ## t7 = 80AE2088
	beq     $zero, $zero, lbl_80AE1FF8 
	sw      t7, 0x0180(a3)             ## 00000180
lbl_80AE1FF8:
	or      a0, a3, $zero              ## a0 = 00000000
lbl_80AE1FFC:
	addiu   a2, a3, 0x0200             ## a2 = 00000200
	jal     func_80AE1640              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
lbl_80AE200C:
	lw      t8, 0x01D0(a3)             ## 000001D0
	or      a0, a3, $zero              ## a0 = 00000000
	bnel    t8, $zero, lbl_80AE207C    
	lw      $ra, 0x0014($sp)           
	lwc1    $f8, 0x0154(a3)            ## 00000154
	trunc.w.s $f10, $f8                  
	mfc1    v0, $f10                   
	nop
	slti    $at, v0, 0x0008            
	bne     $at, $zero, lbl_80AE203C   
	slti    $at, v0, 0x0010            
	bne     $at, $zero, lbl_80AE2058   
lbl_80AE203C:
	slti    $at, v0, 0x0017            
	bne     $at, $zero, lbl_80AE2050   
	slti    $at, v0, 0x001E            
	bnel    $at, $zero, lbl_80AE205C   
	mtc1    $zero, $f16                ## $f16 = 0.00
lbl_80AE2050:
	bne     v0, $zero, lbl_80AE2064    
	lui     $at, 0x3F80                ## $at = 3F800000
lbl_80AE2058:
	mtc1    $zero, $f16                ## $f16 = 0.00
lbl_80AE205C:
	beq     $zero, $zero, lbl_80AE2070 
	swc1    $f16, 0x01FC(a3)           ## 000001FC
lbl_80AE2064:
	mtc1    $at, $f18                  ## $f18 = 1.00
	nop
	swc1    $f18, 0x01FC(a3)           ## 000001FC
lbl_80AE2070:
	jal     func_80AE1CD0              
	lw      a1, 0x001C($sp)            
lbl_80AE2078:
	lw      $ra, 0x0014($sp)           
lbl_80AE207C:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AE2088:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lw      t6, 0x01D0(a3)             ## 000001D0
	lui     t7, %hi(func_80AE2114)     ## t7 = 80AE0000
	addiu   t7, t7, %lo(func_80AE2114) ## t7 = 80AE2114
	beq     t6, $zero, lbl_80AE20B4    
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	beq     $zero, $zero, lbl_80AE2104 
	sw      t7, 0x0180(a3)             ## 00000180
lbl_80AE20B4:
	jal     func_8008C9C0              
	sw      a3, 0x0018($sp)            
	beq     v0, $zero, lbl_80AE2104    
	lw      a3, 0x0018($sp)            
	lw      t8, 0x01D0(a3)             ## 000001D0
	lw      a1, 0x0200(a3)             ## 00000200
	or      a0, a3, $zero              ## a0 = 00000000
	bne     t8, $zero, lbl_80AE20FC    
	nop
	lw      v0, 0x01F0(a3)             ## 000001F0
	lui     t0, %hi(func_80AE1EE8)     ## t0 = 80AE0000
	addiu   t0, t0, %lo(func_80AE1EE8) ## t0 = 80AE1EE8
	blez    v0, lbl_80AE20F4           
	addiu   t9, v0, 0xFFFF             ## t9 = FFFFFFFF
	beq     $zero, $zero, lbl_80AE20FC 
	sw      t9, 0x01F0(a3)             ## 000001F0
lbl_80AE20F4:
	or      a1, $zero, $zero           ## a1 = 00000000
	sw      t0, 0x0180(a3)             ## 00000180
lbl_80AE20FC:
	jal     func_80AE1640              
	addiu   a2, a3, 0x0200             ## a2 = 00000200
lbl_80AE2104:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AE2114:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lw      v1, 0x1C44(a1)             ## 00001C44
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      v1, 0x0024($sp)            
	beq     v0, $zero, lbl_80AE2154    
	lw      v1, 0x0024($sp)            
	lw      a1, 0x0200(s0)             ## 00000200
	sw      v1, 0x0024($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80AE1640              
	addiu   a2, s0, 0x0200             ## a2 = 00000200
	lw      v1, 0x0024($sp)            
lbl_80AE2154:
	lw      t6, 0x0270(s0)             ## 00000270
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x0248             ## a1 = 00000248
	ori     t7, t6, 0x0001             ## t7 = 00000001
	sw      t7, 0x0270(s0)             ## 00000270
	lwc1    $f4, 0x0038(v1)            ## 00000038
	or      a2, $zero, $zero           ## a2 = 00000000
	addiu   a3, $zero, 0x0004          ## a3 = 00000004
	swc1    $f4, 0x0260(s0)            ## 00000260
	lwc1    $f6, 0x003C(v1)            ## 0000003C
	swc1    $f6, 0x0264(s0)            ## 00000264
	lwc1    $f8, 0x0040(v1)            ## 00000040
	jal     func_80027854              
	swc1    $f8, 0x0268(s0)            ## 00000268
	lw      t8, 0x01D0(s0)             ## 000001D0
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	bnel    t8, $zero, lbl_80AE21C8    
	lw      $ra, 0x001C($sp)           
	jal     func_80AE1640              
	addiu   a2, s0, 0x0200             ## a2 = 00000200
	lw      t0, 0x0270(s0)             ## 00000270
	lui     t9, %hi(func_80AE1EE8)     ## t9 = 80AE0000
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	addiu   t9, t9, %lo(func_80AE1EE8) ## t9 = 80AE1EE8
	and     t1, t0, $at                
	sw      t9, 0x0180(s0)             ## 00000180
	sw      t1, 0x0270(s0)             ## 00000270
	lw      $ra, 0x001C($sp)           
lbl_80AE21C8:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AE21D8:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0034($sp)            
	lw      v0, 0x0200(s0)             ## 00000200
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bne     v0, $zero, lbl_80AE2234    
	nop
	lwc1    $f4, 0x0154(s0)            ## 00000154
	addiu   $at, $zero, 0x0009         ## $at = 00000009
	or      a0, s0, $zero              ## a0 = 00000000
	trunc.w.s $f6, $f4                   
	mfc1    v0, $f6                    
	nop
	beq     v0, $at, lbl_80AE2224      
	addiu   $at, $zero, 0x0017         ## $at = 00000017
	bnel    v0, $at, lbl_80AE22AC      
	addiu   a2, s0, 0x0184             ## a2 = 00000184
lbl_80AE2224:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x28EF          ## a1 = 000028EF
	beq     $zero, $zero, lbl_80AE22AC 
	addiu   a2, s0, 0x0184             ## a2 = 00000184
lbl_80AE2234:
	bnel    v0, $at, lbl_80AE2278      
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	lwc1    $f8, 0x0154(s0)            ## 00000154
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
	or      a0, s0, $zero              ## a0 = 00000000
	trunc.w.s $f10, $f8                  
	mfc1    v0, $f10                   
	nop
	beq     v0, $at, lbl_80AE2264      
	addiu   $at, $zero, 0x0019         ## $at = 00000019
	bnel    v0, $at, lbl_80AE22AC      
	addiu   a2, s0, 0x0184             ## a2 = 00000184
lbl_80AE2264:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x28EF          ## a1 = 000028EF
	beq     $zero, $zero, lbl_80AE22AC 
	addiu   a2, s0, 0x0184             ## a2 = 00000184
	addiu   $at, $zero, 0x0002         ## $at = 00000002
lbl_80AE2278:
	bnel    v0, $at, lbl_80AE22AC      
	addiu   a2, s0, 0x0184             ## a2 = 00000184
	lwc1    $f16, 0x0154(s0)           ## 00000154
	addiu   $at, $zero, 0x0014         ## $at = 00000014
	or      a0, s0, $zero              ## a0 = 00000000
	trunc.w.s $f18, $f16                 
	mfc1    t9, $f18                   
	nop
	bnel    t9, $at, lbl_80AE22AC      
	addiu   a2, s0, 0x0184             ## a2 = 00000184
	jal     func_80022FD0              
	addiu   a1, $zero, 0x28EF          ## a1 = 000028EF
	addiu   a2, s0, 0x0184             ## a2 = 00000184
lbl_80AE22AC:
	or      a1, a2, $zero              ## a1 = 00000184
	sw      a2, 0x0024($sp)            
	jal     func_80050B00              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a0, 0x0034($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	lw      a2, 0x0024($sp)            
	jal     func_8004C130              ## CollisionCheck_setOT
	addu    a1, a0, $at                
	lw      t9, 0x0180(s0)             ## 00000180
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x0034($sp)            
	jalr    $ra, t9                    
	nop
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80AE1ADC              
	lw      a1, 0x0034($sp)            
	lw      t1, 0x01D8(s0)             ## 000001D8
	lui     t7, %hi(var_80AE26D8)      ## t7 = 80AE0000
	addiu   t2, t1, 0xFFFF             ## t2 = FFFFFFFF
	bgez    t2, lbl_80AE2334           
	sw      t2, 0x01D8(s0)             ## 000001D8
	lw      t4, 0x01D4(s0)             ## 000001D4
	addiu   v0, t4, 0x0001             ## v0 = 00000001
	slti    $at, v0, 0x0003            
	bne     $at, $zero, lbl_80AE2324   
	sw      v0, 0x01D4(s0)             ## 000001D4
	sw      $zero, 0x01D4(s0)          ## 000001D4
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AE2324:
	sll     t6, v0,  2                 
	addu    t7, t7, t6                 
	lw      t7, %lo(var_80AE26D8)(t7)  
	sw      t7, 0x01D8(s0)             ## 000001D8
lbl_80AE2334:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AE2348:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      s2, 0x0030($sp)            
	sw      s1, 0x002C($sp)            
	or      s1, a0, $zero              ## s1 = 00000000
	or      s2, a1, $zero              ## s2 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      s0, 0x0028($sp)            
	lw      a0, 0x0000(s2)             ## 00000000
	jal     func_8007E298              
	or      s0, a0, $zero              ## s0 = 00000000
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t7, 0xDB06                 ## t7 = DB060000
	ori     t7, t7, 0x0020             ## t7 = DB060020
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s0)             ## 000002C0
	sw      t7, 0x0000(v1)             ## 00000000
	lw      t8, 0x01D4(s1)             ## 000001D4
	lui     t0, %hi(var_80AE26E4)      ## t0 = 80AE0000
	lui     t7, 0x8012                 ## t7 = 80120000
	sll     t9, t8,  2                 
	addu    t0, t0, t9                 
	lw      t0, %lo(var_80AE26E4)(t0)  
	lui     $at, 0x00FF                ## $at = 00FF0000
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	sll     t4, t0,  4                 
	srl     t5, t4, 28                 
	sll     t6, t5,  2                 
	addu    t7, t7, t6                 
	lw      t7, 0x0C38(t7)             ## 80120C38
	and     t3, t0, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t8, t3, t7                 
	addu    t9, t8, $at                
	sw      t9, 0x0004(v1)             ## 00000004
	lw      a1, 0x0140(s1)             ## 00000140
	lw      a2, 0x015C(s1)             ## 0000015C
	lbu     a3, 0x013E(s1)             ## 0000013E
	lui     t4, %hi(func_80AE24FC)     ## t4 = 80AE0000
	lui     t5, %hi(func_80AE258C)     ## t5 = 80AE0000
	addiu   t5, t5, %lo(func_80AE258C) ## t5 = 80AE258C
	addiu   t4, t4, %lo(func_80AE24FC) ## t4 = 80AE24FC
	sw      t4, 0x0010($sp)            
	sw      t5, 0x0014($sp)            
	sw      s1, 0x0018($sp)            
	jal     func_80089D8C              
	or      a0, s2, $zero              ## a0 = 00000000
	lui     t6, 0x8012                 ## t6 = 80120000
	lhu     t6, -0x4B3A(t6)            ## 8011B4C6
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x17A4           ## $at = 000117A4
	andi    t3, t6, 0x0400             ## t3 = 00000000
	beq     t3, $zero, lbl_80AE24E4    
	addu    a0, s2, $at                
	jal     func_80081628              ## ObjectIndex
	addiu   a1, $zero, 0x0015          ## a1 = 00000015
	bltz    v0, lbl_80AE24E4           
	sw      v0, 0x0038($sp)            
	jal     func_800AA764              
	addiu   a0, s1, 0x0208             ## a0 = 00000208
	jal     func_800AB900              
	lw      a0, 0x0000(s2)             ## 00000000
	lui     t0, 0xDB06                 ## t0 = DB060000
	ori     t0, t0, 0x0018             ## t0 = DB060018
	addiu   t1, $zero, 0x0044          ## t1 = 00000044
	lui     t2, 0x0001                 ## t2 = 00010000
	lw      v1, 0x02C0(s0)             ## 000002C0
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s0)             ## 000002C0
	sw      t0, 0x0000(v1)             ## 00000000
	lw      t8, 0x0038($sp)            
	lui     t7, 0xDB06                 ## t7 = DB060000
	multu   t8, t1                     
	mflo    t9                         
	addu    t4, s2, t9                 
	addu    t5, t4, t2                 
	lw      t6, 0x17B4(t5)             ## 000017B4
	lui     t4, 0xDE00                 ## t4 = DE000000
	sw      t6, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	ori     t7, t7, 0x0034             ## t7 = DB060034
	addiu   t8, v0, 0xFE40             ## t8 = FFFFFE40
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s0)             ## 000002C0
	sw      t8, 0x0004(v1)             ## 00000004
	sw      t7, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t5, 0x0603                 ## t5 = 06030000
	addiu   t5, t5, 0xAF70             ## t5 = 0602AF70
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(s0)             ## 000002C0
	sw      t5, 0x0004(v1)             ## 00000004
	sw      t4, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(s0)             ## 000002C0
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s0)             ## 000002C0
	sw      t0, 0x0000(v1)             ## 00000000
	lb      t3, 0x001E(s1)             ## 0000001E
	multu   t3, t1                     
	mflo    t7                         
	addu    t8, s2, t7                 
	addu    t9, t8, t2                 
	lw      t4, 0x17B4(t9)             ## 000017BC
	sw      t4, 0x0004(v1)             ## 00000004
lbl_80AE24E4:
	lw      $ra, 0x0034($sp)           
	lw      s0, 0x0028($sp)            
	lw      s1, 0x002C($sp)            
	lw      s2, 0x0030($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000


func_80AE24FC:
	sw      a0, 0x0000($sp)            
	lw      a0, 0x0014($sp)            
	sw      a2, 0x0008($sp)            
	sw      a3, 0x000C($sp)            
	lw      t6, 0x0270(a0)             ## 00000270
	addiu   $at, $zero, 0x0008         ## $at = 00000008
	andi    t7, t6, 0x0001             ## t7 = 00000000
	beql    t7, $zero, lbl_80AE2584    
	or      v0, $zero, $zero           ## v0 = 00000000
	beq     a1, $at, lbl_80AE253C      
	lw      v0, 0x0010($sp)            
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	beq     a1, $at, lbl_80AE2560      
	lw      v0, 0x0010($sp)            
	beq     $zero, $zero, lbl_80AE2584 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AE253C:
	lh      t8, 0x0000(v0)             ## 00000000
	lh      t9, 0x0258(a0)             ## 00000258
	lh      t1, 0x0002(v0)             ## 00000002
	addu    t0, t8, t9                 
	sh      t0, 0x0000(v0)             ## 00000000
	lh      t2, 0x0256(a0)             ## 00000256
	subu    t3, t1, t2                 
	beq     $zero, $zero, lbl_80AE2580 
	sh      t3, 0x0002(v0)             ## 00000002
lbl_80AE2560:
	lh      t4, 0x0000(v0)             ## 00000000
	lh      t5, 0x0252(a0)             ## 00000252
	lh      t7, 0x0004(v0)             ## 00000004
	addu    t6, t4, t5                 
	sh      t6, 0x0000(v0)             ## 00000000
	lh      t8, 0x0250(a0)             ## 00000250
	addu    t9, t7, t8                 
	sh      t9, 0x0004(v0)             ## 00000004
lbl_80AE2580:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AE2584:
	jr      $ra                        
	nop


func_80AE258C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a2, 0x0020($sp)            
	sw      a3, 0x0024($sp)            
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	bne     a1, $at, lbl_80AE2608      
	lui     a0, %hi(var_80AE26F0)      ## a0 = 80AE0000
	lw      a1, 0x0028($sp)            
	addiu   a0, a0, %lo(var_80AE26F0)  ## a0 = 80AE26F0
	jal     func_800AB958              
	addiu   a1, a1, 0x0038             ## a1 = 00000038
	mtc1    $zero, $f12                ## $f12 = 0.00
	lui     $at, 0xC348                ## $at = C3480000
	mtc1    $at, $f14                  ## $f14 = -200.00
	mfc1    a2, $f12                   
	jal     func_800AA7F4              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mtc1    $zero, $f12                ## $f12 = 0.00
	jal     func_800AAB94              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	mtc1    $zero, $f12                ## $f12 = 0.00
	jal     func_800AA9E0              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lui     $at, %hi(var_80AE2724)     ## $at = 80AE0000
	lwc1    $f12, %lo(var_80AE2724)($at) 
	jal     func_800AAD4C              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lw      a0, 0x0028($sp)            
	jal     func_800AA740              
	addiu   a0, a0, 0x0208             ## a0 = 00000208
lbl_80AE2608:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop

.section .data

var_80AE2620: .word 0x016C0400, 0x00000009, 0x01450000, 0x00000334
.word func_80AE1764
.word func_80AE18F8
.word func_80AE21D8
.word func_80AE2348
var_80AE2640: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0012003F, 0x00000000, 0x00000000
var_80AE266C: .word 0x00000000, 0x00000000, 0xFF000000
var_80AE2678: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80AE2698: .word \
0x06000700, 0x3F800000, 0x02000000, 0xC1200000, \
0x06000E10, 0x3F800000, 0x02000000, 0xC1200000, \
0x06001588, 0x3F800000, 0x02000000, 0xC1200000, \
0x0600195C, 0x3F800000, 0x02000000, 0xC1200000
var_80AE26D8: .word 0x00000046, 0x00000001, 0x00000001
var_80AE26E4: .word 0x06002130, 0x06002930, 0x06003130
var_80AE26F0: .word 0x43FA0000, 0x44480000, 0x00000000, 0x00000000

.section .rodata

var_80AE2700: .word lbl_80AE1A40
.word lbl_80AE1A40
.word lbl_80AE1A40
.word lbl_80AE1A40
.word var_80AE1970
.word lbl_80AE1A40
.word var_80AE19D8
var_80AE271C: .word 0x4622F983
var_80AE2720: .word 0x41270A3D
var_80AE2724: .word 0x3FDF66F3, 0x00000000, 0x00000000

