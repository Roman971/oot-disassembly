#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B85720:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0038($sp)            
	sw      a2, 0x0040($sp)            
	lw      t6, 0x0040($sp)            
	lui     t8, %hi(var_80B8636C)      ## t8 = 80B80000
	mtc1    $zero, $f6                 ## $f6 = 0.00
	lw      v0, 0x0000(t6)             ## 00000000
	addiu   t8, t8, %lo(var_80B8636C)  ## t8 = 80B8636C
	sll     t7, a1,  4                 
	bltzl   v0, lbl_80B8575C           
	mtc1    $zero, $f0                 ## $f0 = 0.00
	bne     a1, v0, lbl_80B85764       
	sll     t9, a1,  4                 
	mtc1    $zero, $f0                 ## $f0 = 0.00
lbl_80B8575C:
	beq     $zero, $zero, lbl_80B85774 
	addu    v1, t7, t8                 
lbl_80B85764:
	lui     t0, %hi(var_80B8636C)      ## t0 = 80B80000
	addiu   t0, t0, %lo(var_80B8636C)  ## t0 = 80B8636C
	addu    v1, t9, t0                 
	lwc1    $f0, 0x000C(v1)            ## 0000000C
lbl_80B85774:
	lwc1    $f4, 0x0004(v1)            ## 00000004
	c.le.s  $f6, $f4                   
	nop
	bc1fl   lbl_80B857E0               
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
	beq     $zero, $zero, lbl_80B85830 
	lw      t3, 0x003C($sp)            
	lw      a0, 0x0000(v1)             ## 00000000
lbl_80B857E0:
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
lbl_80B85830:
	lw      t4, 0x0040($sp)            
	sw      t3, 0x0000(t4)             ## 00000000
	lw      $ra, 0x0024($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80B85844:
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	sw      a1, 0x0004($sp)            
	lhu     t6, 0x0EE6(v0)             ## 8011B4B6
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	addiu   t8, $zero, 0x6086          ## t8 = 00006086
	andi    t7, t6, 0x000F             ## t7 = 00000000
	beql    t7, $at, lbl_80B85874      
	lhu     t9, 0x0F26(v0)             ## 8011B4F6
	jr      $ra                        
	sh      t8, 0x010E(a0)             ## 0000010E
lbl_80B85870:
	lhu     t9, 0x0F26(v0)             ## 8011B4F6
lbl_80B85874:
	andi    t0, t9, 0x8000             ## t0 = 00000000
	beql    t0, $zero, lbl_80B858DC    
	lh      t9, 0x13D2(v0)             ## 8011B9A2
	lhu     t1, 0x13FC(v0)             ## 8011B9CC
	addiu   t3, $zero, 0x6082          ## t3 = 00006082
	andi    t2, t1, 0x0001             ## t2 = 00000000
	beql    t2, $zero, lbl_80B858A0    
	lh      t4, 0x13D2(v0)             ## 8011B9A2
	jr      $ra                        
	sh      t3, 0x010E(a0)             ## 0000010E
lbl_80B8589C:
	lh      t4, 0x13D2(v0)             ## 8011B9A2
lbl_80B858A0:
	addiu   t5, $zero, 0x6076          ## t5 = 00006076
	beql    t4, $zero, lbl_80B858B8    
	lw      t6, 0x0EC8(v0)             ## 8011B498
	jr      $ra                        
	sh      t5, 0x010E(a0)             ## 0000010E
lbl_80B858B4:
	lw      t6, 0x0EC8(v0)             ## 8011B498
lbl_80B858B8:
	addiu   $at, $zero, 0x009E         ## $at = 0000009E
	addiu   t7, $zero, 0x607E          ## t7 = 0000607E
	bne     t6, $at, lbl_80B858D0      
	addiu   t8, $zero, 0x6081          ## t8 = 00006081
	jr      $ra                        
	sh      t7, 0x010E(a0)             ## 0000010E
lbl_80B858D0:
	jr      $ra                        
	sh      t8, 0x010E(a0)             ## 0000010E
lbl_80B858D8:
	lh      t9, 0x13D2(v0)             ## 8011B9A2
lbl_80B858DC:
	addiu   t0, $zero, 0x6076          ## t0 = 00006076
	addiu   t1, $zero, 0x607D          ## t1 = 0000607D
	beql    t9, $zero, lbl_80B858F8    
	sh      t1, 0x010E(a0)             ## 0000010E
	jr      $ra                        
	sh      t0, 0x010E(a0)             ## 0000010E
lbl_80B858F4:
	sh      t1, 0x010E(a0)             ## 0000010E
lbl_80B858F8:
	lhu     t2, 0x13FC(v0)             ## 8011B9CC
	addiu   t4, $zero, 0x009E          ## t4 = 0000009E
	sw      t4, 0x0EC8(v0)             ## 8011B498
	andi    t3, t2, 0xFFFE             ## t3 = 00000000
	sh      t3, 0x13FC(v0)             ## 8011B9CC
	jr      $ra                        
	nop


func_80B85914:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x0044($sp)            
	lui     a1, %hi(var_80B863DC)      ## a1 = 80B80000
	addiu   a1, a1, %lo(var_80B863DC)  ## a1 = 80B863DC
	jal     func_80063F7C              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a2, 0x8002                 ## a2 = 80020000
	addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	jal     func_8001EC20              
	lui     a3, 0x41A8                 ## a3 = 41A80000
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	lui     a2, 0x0600                 ## a2 = 06000000
	addiu   t6, s0, 0x01EC             ## t6 = 000001EC
	addiu   t7, s0, 0x024C             ## t7 = 0000024C
	addiu   t8, $zero, 0x0010          ## t8 = 00000010
	sw      t8, 0x0018($sp)            
	sw      t7, 0x0014($sp)            
	sw      t6, 0x0010($sp)            
	addiu   a2, a2, 0x5E18             ## a2 = 06005E18
	sw      a1, 0x0030($sp)            
	lw      a0, 0x0044($sp)            
	jal     func_8008C788              
	or      a3, $zero, $zero           ## a3 = 00000000
	lui     v1, %hi(var_80B8636C)      ## v1 = 80B80000
	addiu   v1, v1, %lo(var_80B8636C)  ## v1 = 80B8636C
	jal     func_8008A194              
	lw      a0, 0x0020(v1)             ## 80B8638C
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     v1, %hi(var_80B8636C)      ## v1 = 80B80000
	addiu   v1, v1, %lo(var_80B8636C)  ## v1 = 80B8636C
	cvt.s.w $f6, $f4                   
	lbu     t9, 0x0028(v1)             ## 80B86394
	lwc1    $f8, 0x002C(v1)            ## 80B86398
	lw      a1, 0x0020(v1)             ## 80B8638C
	lw      a0, 0x0030($sp)            
	lui     a2, 0x3F80                 ## a2 = 3F800000
	swc1    $f6, 0x0010($sp)           
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	sw      t9, 0x0014($sp)            
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
	addiu   t0, $zero, 0x0002          ## t0 = 00000002
	sw      t0, 0x01E8(s0)             ## 000001E8
	addiu   a1, s0, 0x0184             ## a1 = 00000184
	sw      a1, 0x0030($sp)            
	jal     func_8004AB7C              
	lw      a0, 0x0044($sp)            
	lui     a3, %hi(var_80B86340)      ## a3 = 80B80000
	lw      a1, 0x0030($sp)            
	addiu   a3, a3, %lo(var_80B86340)  ## a3 = 80B86340
	lw      a0, 0x0044($sp)            
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	lhu     t3, 0x01E4(s0)             ## 000001E4
	lui     $at, 0xBF80                ## $at = BF800000
	mtc1    $at, $f10                  ## $f10 = -1.00
	lh      t5, 0x001C(s0)             ## 0000001C
	addiu   t1, $zero, 0x00FF          ## t1 = 000000FF
	addiu   t2, $zero, 0x0006          ## t2 = 00000006
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	ori     t4, t3, 0x0001             ## t4 = 00000001
	sb      t1, 0x00AE(s0)             ## 000000AE
	sw      $zero, 0x01D0(s0)          ## 000001D0
	sb      t2, 0x001F(s0)             ## 0000001F
	sh      t4, 0x01E4(s0)             ## 000001E4
	bne     t5, $at, lbl_80B85A44      
	swc1    $f10, 0x006C(s0)           ## 0000006C
	lui     t6, %hi(func_80B85F44)     ## t6 = 80B80000
	addiu   t6, t6, %lo(func_80B85F44) ## t6 = 80B85F44
	beq     $zero, $zero, lbl_80B85A5C 
	sw      t6, 0x0180(s0)             ## 00000180
lbl_80B85A44:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80B85844              
	lw      a1, 0x0044($sp)            
	lui     t7, %hi(func_80B85E54)     ## t7 = 80B80000
	addiu   t7, t7, %lo(func_80B85E54) ## t7 = 80B85E54
	sw      t7, 0x0180(s0)             ## 00000180
lbl_80B85A5C:
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	lw      t8, 0x0004(v0)             ## 8011A5D4
	beql    t8, $zero, lbl_80B85A84    
	lh      t9, 0x001C(s0)             ## 0000001C
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	lh      t9, 0x001C(s0)             ## 0000001C
lbl_80B85A84:
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bnel    t9, $at, lbl_80B85ABC      
	lw      $ra, 0x002C($sp)           
	lhu     t0, 0x0F26(v0)             ## 8011B4F6
	andi    t1, t0, 0x8000             ## t1 = 00000000
	beq     t1, $zero, lbl_80B85AB0    
	nop
	lhu     t2, 0x13FC(v0)             ## 8011B9CC
	andi    t3, t2, 0x0001             ## t3 = 00000000
	bnel    t3, $zero, lbl_80B85ABC    
	lw      $ra, 0x002C($sp)           
lbl_80B85AB0:
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x002C($sp)           
lbl_80B85ABC:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B85ACC:
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


func_80B85AF8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	sw      a2, 0x0020($sp)            
	lw      a1, 0x001C($sp)            
	jal     func_80022930              
	sw      a0, 0x0018($sp)            
	beq     v0, $zero, lbl_80B85B2C    
	lw      a0, 0x0018($sp)            
	lw      t6, 0x0020($sp)            
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	beq     $zero, $zero, lbl_80B85B84 
	sw      t6, 0x0180(a0)             ## 00000180
lbl_80B85B2C:
	lh      t7, 0x008A(a0)             ## 0000008A
	lh      t8, 0x00B6(a0)             ## 000000B6
	subu    v0, t7, t8                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	bltz    v0, lbl_80B85B50           
	subu    v1, $zero, v0              
	beq     $zero, $zero, lbl_80B85B50 
	or      v1, v0, $zero              ## v1 = 00000001
lbl_80B85B50:
	slti    $at, v1, 0x4301            
	beq     $at, $zero, lbl_80B85B80   
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f0                   ## $f0 = 100.00
	lwc1    $f4, 0x0090(a0)            ## 00000090
	c.lt.s  $f4, $f0                   
	nop
	bc1fl   lbl_80B85B84               
	or      v0, $zero, $zero           ## v0 = 00000000
	mfc1    a2, $f0                    
	jal     func_80022A68              
	lw      a1, 0x001C($sp)            
lbl_80B85B80:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B85B84:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B85B94:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	lh      t6, 0x01E6(s0)             ## 000001E6
	slti    $at, t6, 0x003D            
	bne     $at, $zero, lbl_80B85BC0   
	nop
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80B85BC0:
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lh      t7, 0x01E6(s0)             ## 000001E6
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     a2, 0x3F19                 ## a2 = 3F190000
	addiu   t8, t7, 0x0001             ## t8 = 00000001
	sh      t8, 0x01E6(s0)             ## 000001E6
	ori     a2, a2, 0x999A             ## a2 = 3F19999A
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	lui     a1, 0x4120                 ## a1 = 41200000
	lui     a3, 0x4000                 ## a3 = 40000000
	jal     func_80064178              
	swc1    $f4, 0x0010($sp)           
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B85C08:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a3, 0x0018($sp)            
	beq     v0, $zero, lbl_80B85C88    
	lw      a3, 0x0018($sp)            
	lui     t6, %hi(func_80B85B94)     ## t6 = 80B80000
	addiu   t6, t6, %lo(func_80B85B94) ## t6 = 80B85B94
	sw      t6, 0x0180(a3)             ## 00000180
	sw      a3, 0x0018($sp)            
	or      a0, a3, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_80B85720              
	addiu   a2, a3, 0x01E8             ## a2 = 000001E8
	lw      a3, 0x0018($sp)            
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	lhu     t8, 0x01E4(a3)             ## 000001E4
	sw      t7, 0x01D0(a3)             ## 000001D0
	andi    t9, t8, 0x0002             ## t9 = 00000000
	bne     t9, $zero, lbl_80B85C70    
	nop
	jal     func_800D6218              
	lw      a0, 0x001C($sp)            
lbl_80B85C70:
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	lhu     t0, 0x13FC(v0)             ## 8011B9CC
	sh      $zero, 0x13D2(v0)          ## 8011B9A2
	andi    t1, t0, 0xFFFE             ## t1 = 00000000
	sh      t1, 0x13FC(v0)             ## 8011B9CC
lbl_80B85C88:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B85C98:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lhu     v1, 0x010E(s0)             ## 0000010E
	addiu   $at, $zero, 0x607D         ## $at = 0000607D
	lw      a0, 0x0024($sp)            
	beq     v1, $at, lbl_80B85CE0      
	addiu   $at, $zero, 0x607E         ## $at = 0000607E
	beq     v1, $at, lbl_80B85CE0      
	addiu   $at, $zero, 0x6081         ## $at = 00006081
	beq     v1, $at, lbl_80B85D98      
	lw      a0, 0x0024($sp)            
	beq     $zero, $zero, lbl_80B85DF4 
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80B85CE0:
	jal     func_800DD464              
	addiu   a0, a0, 0x20D8             ## a0 = 000020D8
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	bnel    v0, $at, lbl_80B85E44      
	lw      $ra, 0x001C($sp)           
	jal     func_800D6110              
	lw      a0, 0x0024($sp)            
	beq     v0, $zero, lbl_80B85E40    
	lw      t6, 0x0024($sp)            
	lui     v1, 0x0001                 ## v1 = 00010000
	addu    v1, v1, t6                 
	lbu     v1, 0x04BD(v1)             ## 000104BD
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lw      a0, 0x0024($sp)            
	beq     v1, $zero, lbl_80B85D30    
	nop
	beq     v1, $at, lbl_80B85D58      
	lui     v1, 0x8012                 ## v1 = 80120000
	beq     $zero, $zero, lbl_80B85D74 
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
lbl_80B85D30:
	jal     func_800DCE80              
	addiu   a1, $zero, 0x607F          ## a1 = 0000607F
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   t7, $zero, 0x607F          ## t7 = 0000607F
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	sh      t7, 0x010E(s0)             ## 0000010E
	lhu     t8, 0x13FC(v1)             ## 8011B9CC
	ori     t9, t8, 0x0001             ## t9 = 00000001
	beq     $zero, $zero, lbl_80B85D74 
	sh      t9, 0x13FC(v1)             ## 8011B9CC
lbl_80B85D58:
	lw      a0, 0x0024($sp)            
	jal     func_800DCE80              
	addiu   a1, $zero, 0x6080          ## a1 = 00006080
	addiu   t0, $zero, 0x6080          ## t0 = 00006080
	lui     v1, 0x8012                 ## v1 = 80120000
	sh      t0, 0x010E(s0)             ## 0000010E
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
lbl_80B85D74:
	lhu     v0, 0x01E4(s0)             ## 000001E4
	andi    t1, v0, 0x0004             ## t1 = 00000000
	beq     t1, $zero, lbl_80B85E40    
	andi    t2, v0, 0xFFFB             ## t2 = 00000000
	sh      t2, 0x01E4(s0)             ## 000001E4
	lw      t3, 0x0EC8(v1)             ## 8011B498
	addiu   t4, t3, 0x0001             ## t4 = 00000001
	beq     $zero, $zero, lbl_80B85E40 
	sw      t4, 0x0EC8(v1)             ## 8011B498
lbl_80B85D98:
	jal     func_800DD464              
	addiu   a0, a0, 0x20D8             ## a0 = 000020D8
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bnel    v0, $at, lbl_80B85E44      
	lw      $ra, 0x001C($sp)           
	jal     func_800D6110              
	lw      a0, 0x0024($sp)            
	beql    v0, $zero, lbl_80B85E44    
	lw      $ra, 0x001C($sp)           
	lhu     t5, 0x01E4(s0)             ## 000001E4
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	ori     t6, t5, 0x0004             ## t6 = 00000004
	sh      t6, 0x01E4(s0)             ## 000001E4
	lw      t7, 0x0EC8(v1)             ## 8011B498
	lw      a0, 0x0024($sp)            
	addiu   a1, $zero, 0x607E          ## a1 = 0000607E
	addiu   t8, t7, 0xFFFF             ## t8 = FFFFFFFF
	jal     func_800DCE80              
	sw      t8, 0x0EC8(v1)             ## 8011B498
	addiu   t9, $zero, 0x607E          ## t9 = 0000607E
	beq     $zero, $zero, lbl_80B85E40 
	sh      t9, 0x010E(s0)             ## 0000010E
lbl_80B85DF4:
	jal     func_80022AD0              
	lw      a1, 0x0024($sp)            
	beql    v0, $zero, lbl_80B85E44    
	lw      $ra, 0x001C($sp)           
	lhu     t0, 0x010E(s0)             ## 0000010E
	addiu   $at, $zero, 0x607F         ## $at = 0000607F
	lui     t2, %hi(func_80B85E54)     ## t2 = 80B80000
	bne     t0, $at, lbl_80B85E30      
	addiu   t2, t2, %lo(func_80B85E54) ## t2 = 80B85E54
	jal     func_800738E8              
	or      a0, $zero, $zero           ## a0 = 00000000
	lui     t1, %hi(func_80B85E54)     ## t1 = 80B80000
	addiu   t1, t1, %lo(func_80B85E54) ## t1 = 80B85E54
	beq     $zero, $zero, lbl_80B85E34 
	sw      t1, 0x0180(s0)             ## 00000180
lbl_80B85E30:
	sw      t2, 0x0180(s0)             ## 00000180
lbl_80B85E34:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80B85844              
	lw      a1, 0x0024($sp)            
lbl_80B85E40:
	lw      $ra, 0x001C($sp)           
lbl_80B85E44:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B85E54:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_8008C9C0              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	lw      a0, 0x0018($sp)            
	jal     func_80B85844              
	lw      a1, 0x001C($sp)            
	lui     a2, %hi(func_80B85C98)     ## a2 = 80B80000
	addiu   a2, a2, %lo(func_80B85C98) ## a2 = 80B85C98
	lw      a0, 0x0018($sp)            
	jal     func_80B85AF8              
	lw      a1, 0x001C($sp)            
	beq     v0, $zero, lbl_80B85EB8    
	lw      t6, 0x0018($sp)            
	lhu     t7, 0x010E(t6)             ## 0000010E
	addiu   $at, $zero, 0x607D         ## $at = 0000607D
	lui     v0, 0x8012                 ## v0 = 80120000
	bne     t7, $at, lbl_80B85EB8      
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	lhu     t8, 0x0F26(v0)             ## 8011B4F6
	ori     t9, t8, 0x8000             ## t9 = 00008000
	sh      t9, 0x0F26(v0)             ## 8011B4F6
lbl_80B85EB8:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B85EC8:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lw      a0, 0x0024($sp)            
	jal     func_800DD464              
	addiu   a0, a0, 0x20D8             ## a0 = 000020D8
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bnel    v0, $at, lbl_80B85F34      
	lw      $ra, 0x001C($sp)           
	jal     func_800D6110              
	lw      a0, 0x0024($sp)            
	beq     v0, $zero, lbl_80B85F30    
	or      a0, s0, $zero              ## a0 = 00000000
	lhu     t6, 0x01E4(s0)             ## 000001E4
	addiu   a1, $zero, 0x0003          ## a1 = 00000003
	addiu   a2, s0, 0x01E8             ## a2 = 000001E8
	andi    t7, t6, 0xFFFE             ## t7 = 00000000
	jal     func_80B85720              
	sh      t7, 0x01E4(s0)             ## 000001E4
	lui     t8, %hi(func_80B85C08)     ## t8 = 80B80000
	addiu   t8, t8, %lo(func_80B85C08) ## t8 = 80B85C08
	sw      t8, 0x0180(s0)             ## 00000180
lbl_80B85F30:
	lw      $ra, 0x001C($sp)           
lbl_80B85F34:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B85F44:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	addiu   t6, $zero, 0xC180          ## t6 = FFFFC180
	sh      t6, 0x0032(s0)             ## 00000032
	lh      t7, 0x0032(s0)             ## 00000032
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sh      t7, 0x00B6(s0)             ## 000000B6
	lui     a3, 0x8012                 ## a3 = 80120000
	addiu   a3, a3, 0xA5D0             ## a3 = 8011A5D0
	lh      v1, 0x13D4(a3)             ## 8011B9A4
	lw      t8, 0x0EC8(a3)             ## 8011B498
	lui     a2, %hi(func_80B85EC8)     ## a2 = 80B80000
	addiu   a2, a2, %lo(func_80B85EC8) ## a2 = 80B85EC8
	slt     $at, v1, t8                
	beq     $at, $zero, lbl_80B85FA0   
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t9, $zero, 0x6085          ## t9 = 00006085
	beq     $zero, $zero, lbl_80B85FA8 
	sh      t9, 0x010E(s0)             ## 0000010E
lbl_80B85FA0:
	addiu   t0, $zero, 0x6084          ## t0 = 00006084
	sh      t0, 0x010E(s0)             ## 0000010E
lbl_80B85FA8:
	jal     func_80B85AF8              
	lw      a1, 0x0024($sp)            
	lui     a3, 0x8012                 ## a3 = 80120000
	beq     v0, $zero, lbl_80B85FE4    
	addiu   a3, a3, 0xA5D0             ## a3 = 8011A5D0
	sh      $zero, 0x01E6(s0)          ## 000001E6
	lh      v0, 0x13D4(a3)             ## 8011B9A4
	lw      t1, 0x0EC8(a3)             ## 8011B498
	sll     v1, v0, 16                 
	sra     v1, v1, 16                 
	slt     $at, v1, t1                
	beql    $at, $zero, lbl_80B86028   
	lw      $ra, 0x001C($sp)           
	beq     $zero, $zero, lbl_80B86024 
	sw      v0, 0x0EC8(a3)             ## 8011B498
lbl_80B85FE4:
	lhu     t2, 0x13FC(a3)             ## 8011B9CC
	or      a0, s0, $zero              ## a0 = 00000000
	andi    t3, t2, 0x0001             ## t3 = 00000000
	bnel    t3, $zero, lbl_80B86028    
	lw      $ra, 0x001C($sp)           
	lhu     t4, 0x01E4(s0)             ## 000001E4
	addiu   a1, $zero, 0x0003          ## a1 = 00000003
	addiu   a2, s0, 0x01E8             ## a2 = 000001E8
	ori     t6, t4, 0x0002             ## t6 = 00000002
	sh      t6, 0x01E4(s0)             ## 000001E4
	andi    t7, t6, 0xFFFE             ## t7 = 00000002
	jal     func_80B85720              
	sh      t7, 0x01E4(s0)             ## 000001E4
	lui     t8, %hi(func_80B85C08)     ## t8 = 80B80000
	addiu   t8, t8, %lo(func_80B85C08) ## t8 = 80B85C08
	sw      t8, 0x0180(s0)             ## 00000180
lbl_80B86024:
	lw      $ra, 0x001C($sp)           
lbl_80B86028:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B86038:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s1, 0x0028($sp)            
	sw      s0, 0x0024($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x002C($sp)           
	lhu     t6, 0x01E4(s0)             ## 000001E4
	addiu   a0, s0, 0x01D8             ## a0 = 000001D8
	or      a1, $zero, $zero           ## a1 = 00000000
	andi    t7, t6, 0x0001             ## t7 = 00000000
	beq     t7, $zero, lbl_80B8609C    
	addiu   a2, $zero, 0x0006          ## a2 = 00000006
	lw      t9, 0x0038(s0)             ## 00000038
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	sw      t9, 0x0010($sp)            
	lw      t8, 0x003C(s0)             ## 0000003C
	addiu   a2, s0, 0x01D8             ## a2 = 000001D8
	addiu   a3, s0, 0x01DE             ## a3 = 000001DE
	sw      t8, 0x0014($sp)            
	lw      t9, 0x0040(s0)             ## 00000040
	jal     func_8002B024              
	sw      t9, 0x0018($sp)            
	beq     $zero, $zero, lbl_80B86104 
	lw      t9, 0x0180(s0)             ## 00000180
lbl_80B8609C:
	addiu   t0, $zero, 0x0064          ## t0 = 00000064
	sw      t0, 0x0010($sp)            
	jal     func_80064508              
	addiu   a3, $zero, 0x1838          ## a3 = 00001838
	addiu   t1, $zero, 0x0064          ## t1 = 00000064
	sw      t1, 0x0010($sp)            
	addiu   a0, s0, 0x01DA             ## a0 = 000001DA
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x0006          ## a2 = 00000006
	jal     func_80064508              
	addiu   a3, $zero, 0x1838          ## a3 = 00001838
	addiu   t2, $zero, 0x0064          ## t2 = 00000064
	sw      t2, 0x0010($sp)            
	addiu   a0, s0, 0x01DE             ## a0 = 000001DE
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x0006          ## a2 = 00000006
	jal     func_80064508              
	addiu   a3, $zero, 0x1838          ## a3 = 00001838
	addiu   t3, $zero, 0x0064          ## t3 = 00000064
	sw      t3, 0x0010($sp)            
	addiu   a0, s0, 0x01E0             ## a0 = 000001E0
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x0006          ## a2 = 00000006
	jal     func_80064508              
	addiu   a3, $zero, 0x1838          ## a3 = 00001838
	lw      t9, 0x0180(s0)             ## 00000180
lbl_80B86104:
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, s1, $zero              ## a1 = 00000000
	jalr    $ra, t9                    
	nop
	addiu   a2, s0, 0x0184             ## a2 = 00000184
	or      a1, a2, $zero              ## a1 = 00000184
	sw      a2, 0x0034($sp)            
	jal     func_80050B00              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	lw      a2, 0x0034($sp)            
	addu    a1, s1, $at                
	jal     func_8004C130              ## CollisionCheck_setOT
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	mtc1    $zero, $f0                 ## $f0 = 0.00
	addiu   t4, $zero, 0x0004          ## t4 = 00000004
	sw      t4, 0x0014($sp)            
	mfc1    a2, $f0                    
	mfc1    a3, $f0                    
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_80021E6C              
	swc1    $f0, 0x0010($sp)           
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0024($sp)            
	lw      s1, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_80B86180:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x003C($sp)            
	lw      t6, 0x003C($sp)            
	lw      a0, 0x0000(t6)             ## 00000000
	jal     func_8007E298              
	sw      a0, 0x0030($sp)            
	lw      t1, 0x0030($sp)            
	lw      v1, 0x02C0(t1)             ## 000002C0
	lui     t8, 0xDB06                 ## t8 = DB060000
	ori     t8, t8, 0x0020             ## t8 = DB060020
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t1)             ## 000002C0
	sw      t8, 0x0000(v1)             ## 00000000
	lw      t9, 0x01D0(s0)             ## 000001D0
	lui     t0, %hi(var_80B863E0)      ## t0 = 80B80000
	lui     t7, 0x8012                 ## t7 = 80120000
	sll     t2, t9,  2                 
	addu    t0, t0, t2                 
	lw      t0, %lo(var_80B863E0)(t0)  
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
	lw      a1, 0x0140(s0)             ## 00000140
	lw      a2, 0x015C(s0)             ## 0000015C
	lbu     a3, 0x013E(s0)             ## 0000013E
	lui     t2, %hi(func_80B8624C)     ## t2 = 80B80000
	lui     t4, %hi(func_80B862D4)     ## t4 = 80B80000
	addiu   t4, t4, %lo(func_80B862D4) ## t4 = 80B862D4
	addiu   t2, t2, %lo(func_80B8624C) ## t2 = 80B8624C
	sw      t2, 0x0010($sp)            
	sw      t4, 0x0014($sp)            
	sw      s0, 0x0018($sp)            
	jal     func_80089D8C              
	lw      a0, 0x003C($sp)            
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B8624C:
	sw      a0, 0x0000($sp)            
	sw      a2, 0x0008($sp)            
	sw      a3, 0x000C($sp)            
	addiu   $at, $zero, 0x0008         ## $at = 00000008
	beq     a1, $at, lbl_80B86278      
	lw      v0, 0x0014($sp)            
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	beq     a1, $at, lbl_80B862A0      
	lw      v0, 0x0014($sp)            
	beq     $zero, $zero, lbl_80B862CC 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B86278:
	lw      v1, 0x0010($sp)            
	lh      t7, 0x01E0(v0)             ## 000001E0
	lh      t6, 0x0000(v1)             ## 00000000
	lh      t9, 0x0002(v1)             ## 00000002
	addu    t8, t6, t7                 
	sh      t8, 0x0000(v1)             ## 00000000
	lh      t0, 0x01DE(v0)             ## 000001DE
	subu    t1, t9, t0                 
	beq     $zero, $zero, lbl_80B862C8 
	sh      t1, 0x0002(v1)             ## 00000002
lbl_80B862A0:
	lw      v1, 0x0010($sp)            
	lh      t3, 0x01DA(v0)             ## 000001DA
	lh      t2, 0x0000(v1)             ## 00000000
	lh      t5, 0x0004(v1)             ## 00000004
	addu    t4, t2, t3                 
	sh      t4, 0x0000(v1)             ## 00000000
	lh      t6, 0x01D8(v0)             ## 000001D8
	addu    t7, t5, t6                 
	addiu   t8, t7, 0x0FA0             ## t8 = 00000FA0
	sh      t8, 0x0004(v1)             ## 00000004
lbl_80B862C8:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B862CC:
	jr      $ra                        
	nop


func_80B862D4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a2, 0x0020($sp)            
	sw      a3, 0x0024($sp)            
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	bne     a1, $at, lbl_80B86304      
	lui     a0, %hi(var_80B863E8)      ## a0 = 80B80000
	lw      a1, 0x0028($sp)            
	addiu   a0, a0, %lo(var_80B863E8)  ## a0 = 80B863E8
	jal     func_800AB958              
	addiu   a1, a1, 0x0038             ## a1 = 00000038
lbl_80B86304:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop
	nop

.section .data

var_80B86320: .word 0x01D40400, 0x00000019, 0x013C0000, 0x000002AC
.word func_80B85914
.word func_80B85ACC
.word func_80B86038
.word func_80B86180
var_80B86340: .word \
0x0A000939, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000004, 0x00000000, 0x00010100, \
0x0012003F, 0x00000000, 0x00000000
var_80B8636C: .word \
0x06000718, 0x3F800000, 0x00000000, 0xC0E00000, \
0x06006940, 0xBF800000, 0x02000000, 0xC0E00000, \
0x06006C50, 0x3F800000, 0x00000000, 0xC0E00000, \
0x06006940, 0x3F800000, 0x02000000, 0xC0E00000, \
0x06000468, 0x3F800000, 0x00000000, 0xC0E00000, \
0x060073A0, 0x3F800000, 0x00000000, 0xC1400000, \
0x06008060, 0x3F800000, 0x00000000, 0xC1400000
var_80B863DC: .word 0x30F40FA0
var_80B863E0: .word 0x06000E30, 0x06000C30
var_80B863E8: .word \
0x43480000, 0x44480000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata


