#include <mips.h>
.set noreorder
.set noat

.section .text
func_80928AA0:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0034($sp)            
	sw      $zero, 0x0024($sp)         
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80035260              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lw      a0, 0x0034($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x17A4           ## $at = 000117A4
	addiu   a1, $zero, 0x0073          ## a1 = 00000073
	jal     func_80081628              ## ObjectIndex
	addu    a0, a0, $at                
	sb      v0, 0x0164(s0)             ## 00000164
	lb      t6, 0x0164(s0)             ## 00000164
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a1, %hi(var_809292B4)      ## a1 = 80930000
	bgez    t6, lbl_80928B04           
	nop
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80928B48 
	lw      $ra, 0x001C($sp)           
lbl_80928B04:
	jal     func_80063F7C              
	addiu   a1, a1, %lo(var_809292B4)  ## a1 = FFFF92B4
	lui     a0, 0x0601                 ## a0 = 06010000
	addiu   a0, a0, 0x87AC             ## a0 = 060087AC
	jal     func_80033EF4              
	addiu   a1, $sp, 0x0024            ## a1 = FFFFFFF4
	lw      a0, 0x0034($sp)            
	or      a2, s0, $zero              ## a2 = 00000000
	lw      a3, 0x0024($sp)            
	jal     func_800313A4              ## DynaPolyInfo_setActor
	addiu   a1, a0, 0x0810             ## a1 = 00000810
	sw      v0, 0x013C(s0)             ## 0000013C
	jal     func_80928CEC              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, %hi(var_80929290)     ## $at = 80930000
	sh      $zero, %lo(var_80929290)($at) 
	lw      $ra, 0x001C($sp)           
lbl_80928B48:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80928B58:
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


func_80928B8C:
	sw      a0, 0x0000($sp)            
	lw      v1, 0x1C44(a1)             ## 00001C44
	lui     $at, %hi(var_809292D0)     ## $at = 80930000
	lwc1    $f4, %lo(var_809292D0)($at) 
	lwc1    $f0, 0x002C(v1)            ## 0000002C
	lui     $at, 0xC4E6                ## $at = C4E60000
	or      v0, $zero, $zero           ## v0 = 00000000
	c.lt.s  $f4, $f0                   
	addiu   v1, v1, 0x0024             ## v1 = 00000024
	bc1f    lbl_80928BBC               
	nop
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80928BBC:
	beq     v0, $zero, lbl_80928C34    
	nop
	mtc1    $at, $f6                   ## $f6 = -1840.00
	lui     $at, %hi(var_809292D4)     ## $at = 80930000
	or      v0, $zero, $zero           ## v0 = 00000000
	c.lt.s  $f0, $f6                   
	nop
	bc1f    lbl_80928BE4               
	nop
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80928BE4:
	beq     v0, $zero, lbl_80928C34    
	nop
	lwc1    $f0, 0x0000(v1)            ## 00000024
	lwc1    $f8, %lo(var_809292D4)($at) 
	lui     $at, %hi(var_809292D8)     ## $at = 80930000
	or      v0, $zero, $zero           ## v0 = 00000000
	c.lt.s  $f8, $f0                   
	nop
	bc1f    lbl_80928C10               
	nop
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80928C10:
	beq     v0, $zero, lbl_80928C34    
	nop
	lwc1    $f10, %lo(var_809292D8)($at) 
	or      v0, $zero, $zero           ## v0 = 00000000
	c.lt.s  $f0, $f10                  
	nop
	bc1f    lbl_80928C34               
	nop
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80928C34:
	jr      $ra                        
	nop


func_80928C3C:
	sw      a0, 0x0000($sp)            
	lw      v1, 0x1C44(a1)             ## 00001C44
	lui     $at, 0xC552                ## $at = C5520000
	mtc1    $at, $f4                   ## $f4 = -3360.00
	lwc1    $f0, 0x002C(v1)            ## 0000002C
	lui     $at, 0xC4E6                ## $at = C4E60000
	or      v0, $zero, $zero           ## v0 = 00000000
	c.lt.s  $f4, $f0                   
	addiu   v1, v1, 0x0024             ## v1 = 00000024
	bc1f    lbl_80928C6C               
	nop
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80928C6C:
	beq     v0, $zero, lbl_80928CE4    
	nop
	mtc1    $at, $f6                   ## $f6 = -1840.00
	lui     $at, %hi(var_809292DC)     ## $at = 80930000
	or      v0, $zero, $zero           ## v0 = 00000000
	c.lt.s  $f0, $f6                   
	nop
	bc1f    lbl_80928C94               
	nop
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80928C94:
	beq     v0, $zero, lbl_80928CE4    
	nop
	lwc1    $f0, 0x0000(v1)            ## 00000024
	lwc1    $f8, %lo(var_809292DC)($at) 
	lui     $at, %hi(var_809292E0)     ## $at = 80930000
	or      v0, $zero, $zero           ## v0 = 00000000
	c.lt.s  $f8, $f0                   
	nop
	bc1f    lbl_80928CC0               
	nop
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80928CC0:
	beq     v0, $zero, lbl_80928CE4    
	nop
	lwc1    $f10, %lo(var_809292E0)($at) 
	or      v0, $zero, $zero           ## v0 = 00000000
	c.lt.s  $f0, $f10                  
	nop
	bc1f    lbl_80928CE4               
	nop
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80928CE4:
	jr      $ra                        
	nop


func_80928CEC:
	lui     t6, %hi(func_80928D00)     ## t6 = 80930000
	addiu   t6, t6, %lo(func_80928D00) ## t6 = 80928D00
	sw      t6, 0x0154(a0)             ## 00000154
	jr      $ra                        
	nop


func_80928D00:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	or      a2, a1, $zero              ## a2 = 00000000
	lw      t6, 0x0018($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x17A4           ## $at = 000117A4
	addu    a0, a2, $at                
	jal     func_80081688              
	lb      a1, 0x0164(t6)             ## 00000164
	beql    v0, $zero, lbl_80928D4C    
	lw      $ra, 0x0014($sp)           
	jal     func_80928D58              
	lw      a0, 0x0018($sp)            
	lw      t8, 0x0018($sp)            
	lui     t7, %hi(func_809291CC)     ## t7 = 80930000
	addiu   t7, t7, %lo(func_809291CC) ## t7 = 809291CC
	sw      t7, 0x0134(t8)             ## 00000134
	lw      $ra, 0x0014($sp)           
lbl_80928D4C:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80928D58:
	lw      t6, 0x0160(a0)             ## 00000160
	addiu   t8, $zero, 0x0015          ## t8 = 00000015
	lui     $at, %hi(var_809292E4)     ## $at = 80930000
	blez    t6, lbl_80928D78           
	lui     t9, %hi(func_80928D94)     ## t9 = 80930000
	addiu   t7, $zero, 0x0064          ## t7 = 00000064
	beq     $zero, $zero, lbl_80928D7C 
	sw      t7, 0x0158(a0)             ## 00000158
lbl_80928D78:
	sw      t8, 0x0158(a0)             ## 00000158
lbl_80928D7C:
	lwc1    $f4, %lo(var_809292E4)($at) 
	addiu   t9, t9, %lo(func_80928D94) ## t9 = 80928D94
	sw      t9, 0x0154(a0)             ## 00000154
	swc1    $f4, 0x0028(a0)            ## 00000028
	jr      $ra                        
	nop


func_80928D94:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lw      t6, 0x0160(s0)             ## 00000160
	bne     t6, $zero, lbl_80928DF8    
	nop
	jal     func_80928C3C              
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    v0, $zero, lbl_80928DD8    
	lw      v0, 0x0158(s0)             ## 00000158
	lw      t7, 0x0158(s0)             ## 00000158
	addiu   v0, $zero, 0x0015          ## v0 = 00000015
	slti    $at, t7, 0x0014            
	beq     $at, $zero, lbl_80928DF0   
	nop
	lw      v0, 0x0158(s0)             ## 00000158
lbl_80928DD8:
	bgtzl   v0, lbl_80928E40           
	slti    $at, v0, 0x0014            
	jal     func_80928E64              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80928E3C 
	lw      v0, 0x0158(s0)             ## 00000158
lbl_80928DF0:
	beq     $zero, $zero, lbl_80928E3C 
	sw      v0, 0x0158(s0)             ## 00000158
lbl_80928DF8:
	jal     func_80928B8C              
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    v0, $zero, lbl_80928E20    
	lw      v0, 0x0158(s0)             ## 00000158
	lw      t9, 0x0158(s0)             ## 00000158
	addiu   v0, $zero, 0x0064          ## v0 = 00000064
	slti    $at, t9, 0x0014            
	beql    $at, $zero, lbl_80928E3C   
	sw      v0, 0x0158(s0)             ## 00000158
	lw      v0, 0x0158(s0)             ## 00000158
lbl_80928E20:
	bgtzl   v0, lbl_80928E40           
	slti    $at, v0, 0x0014            
	jal     func_80928E64              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80928E3C 
	lw      v0, 0x0158(s0)             ## 00000158
	sw      v0, 0x0158(s0)             ## 00000158
lbl_80928E3C:
	slti    $at, v0, 0x0014            
lbl_80928E40:
	beql    $at, $zero, lbl_80928E54   
	lw      $ra, 0x001C($sp)           
	jal     func_80064738              
	addiu   a0, $zero, 0x205C          ## a0 = 0000205C
	lw      $ra, 0x001C($sp)           
lbl_80928E54:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80928E64:
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     t6, %hi(func_80928E84)     ## t6 = 80930000
	addiu   t6, t6, %lo(func_80928E84) ## t6 = 80928E84
	sw      t6, 0x0154(a0)             ## 00000154
	sw      $zero, 0x015C(a0)          ## 0000015C
	swc1    $f4, 0x0060(a0)            ## 00000060
	jr      $ra                        
	nop


func_80928E84:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x003C($sp)            
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	lwc1    $f12, 0x0060(s0)           ## 00000060
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     $at, %hi(var_809292E8)     ## $at = 80930000
	c.lt.s  $f12, $f4                  
	nop
	bc1fl   lbl_80928FEC               
	lw      $ra, 0x0024($sp)           
	lwc1    $f14, %lo(var_809292E8)($at) 
	lwc1    $f2, 0x0028(s0)            ## 00000028
	c.le.s  $f2, $f14                  
	nop
	bc1fl   lbl_80928FEC               
	lw      $ra, 0x0024($sp)           
	lw      v0, 0x015C(s0)             ## 0000015C
	slti    $at, v0, 0x0004            
	bne     $at, $zero, lbl_80928EF4   
	nop
	jal     func_80928FFC              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80928FEC 
	lw      $ra, 0x0024($sp)           
lbl_80928EF4:
	bne     v0, $zero, lbl_80928F3C    
	nop
	lw      t6, 0x0160(s0)             ## 00000160
	addiu   a0, $zero, 0x281D          ## a0 = 0000281D
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	jal     func_80064738              
	sw      t7, 0x0160(s0)             ## 00000160
	lwc1    $f0, 0x0094(s0)            ## 00000094
	addiu   a1, $zero, 0x00FF          ## a1 = 000000FF
	addiu   a2, $zero, 0x0014          ## a2 = 00000014
	mul.s   $f12, $f0, $f0             
	jal     func_800915CC              
	addiu   a3, $zero, 0x0096          ## a3 = 00000096
	lui     $at, %hi(var_809292EC)     ## $at = 80930000
	lwc1    $f14, %lo(var_809292EC)($at) 
	lw      v0, 0x015C(s0)             ## 0000015C
	lwc1    $f12, 0x0060(s0)           ## 00000060
	lwc1    $f2, 0x0028(s0)            ## 00000028
lbl_80928F3C:
	lui     v1, %hi(var_809292C0)      ## v1 = 80930000
	addiu   v1, v1, %lo(var_809292C0)  ## v1 = 809292C0
	sll     t8, v0,  2                 
	sub.s   $f6, $f2, $f14             
	addu    t9, v1, t8                 
	lwc1    $f8, 0x0000(t9)            ## 00000000
	abs.s   $f0, $f12                  
	lw      t0, 0x015C(s0)             ## 0000015C
	mul.s   $f10, $f6, $f8             
	lw      a2, 0x003C($sp)            
	sll     t1, t0,  2                 
	lw      t3, 0x015C(s0)             ## 0000015C
	addu    t2, v1, t1                 
	addiu   a1, $zero, 0x0003          ## a1 = 00000003
	addiu   t4, t3, 0x0001             ## t4 = 00000001
	div.s   $f16, $f10, $f0            
	sub.s   $f18, $f14, $f16           
	swc1    $f18, 0x0028(s0)           ## 00000028
	lwc1    $f4, 0x0000(t2)            ## 00000000
	sw      t4, 0x015C(s0)             ## 0000015C
	swc1    $f4, 0x0060(s0)            ## 00000060
	lh      t5, 0x07A0(a2)             ## 000007A0
	sll     t6, t5,  2                 
	addu    t7, a2, t6                 
	jal     func_8007D85C              
	lw      a0, 0x0790(t7)             ## 00000790
	sll     a0, v0, 16                 
	sw      v0, 0x002C($sp)            
	sra     a0, a0, 16                 
	jal     func_8007D668              
	addiu   a1, $zero, 0xC350          ## a1 = FFFFC350
	lh      s0, 0x002E($sp)            
	addiu   a1, $zero, 0x0005          ## a1 = 00000005
	or      a2, $zero, $zero           ## a2 = 00000000
	sll     a0, s0, 16                 
	sra     a0, a0, 16                 
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_8007D738              
	sw      $zero, 0x0010($sp)         
	sll     a0, s0, 16                 
	sra     a0, a0, 16                 
	jal     func_8007D6B0              
	addiu   a1, $zero, 0x0005          ## a1 = 00000005
	lw      $ra, 0x0024($sp)           
lbl_80928FEC:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_80928FFC:
	lui     t6, %hi(func_80929024)     ## t6 = 80930000
	addiu   t6, t6, %lo(func_80929024) ## t6 = 80929024
	sw      t6, 0x0154(a0)             ## 00000154
	lui     $at, %hi(var_809292F0)     ## $at = 80930000
	lwc1    $f4, %lo(var_809292F0)($at) 
	addiu   t7, $zero, 0x0014          ## t7 = 00000014
	sw      t7, 0x0158(a0)             ## 00000158
	swc1    $f4, 0x0028(a0)            ## 00000028
	jr      $ra                        
	nop


func_80929024:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lw      t6, 0x0158(a0)             ## 00000158
	bgtzl   t6, lbl_80929048           
	lw      $ra, 0x0014($sp)           
	jal     func_80929054              
	nop
	lw      $ra, 0x0014($sp)           
lbl_80929048:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80929054:
	lui     t6, %hi(func_80929074)     ## t6 = 80930000
	addiu   t6, t6, %lo(func_80929074) ## t6 = 80929074
	sw      t6, 0x0154(a0)             ## 00000154
	lui     $at, %hi(var_809292F4)     ## $at = 80930000
	lwc1    $f4, %lo(var_809292F4)($at) 
	swc1    $f4, 0x0060(a0)            ## 00000060
	jr      $ra                        
	nop


func_80929074:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     a2, 0x3D75                 ## a2 = 3D750000
	lui     a3, 0x3DCC                 ## a3 = 3DCC0000
	ori     a3, a3, 0xCCCD             ## a3 = 3DCCCCCD
	ori     a2, a2, 0xC28F             ## a2 = 3D75C28F
	addiu   a0, s0, 0x0060             ## a0 = 00000060
	lui     a1, 0x40A0                 ## a1 = 40A00000
	jal     func_80064178              
	swc1    $f4, 0x0010($sp)           
	lwc1    $f6, 0x0028(s0)            ## 00000028
	lwc1    $f8, 0x0060(s0)            ## 00000060
	lui     $at, %hi(var_809292F8)     ## $at = 80930000
	add.s   $f10, $f6, $f8             
	swc1    $f10, 0x0028(s0)           ## 00000028
	lwc1    $f18, %lo(var_809292F8)($at) 
	lwc1    $f16, 0x0028(s0)           ## 00000028
	c.le.s  $f18, $f16                 
	nop
	bc1fl   lbl_809290E4               
	lw      $ra, 0x0024($sp)           
	jal     func_80928D58              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x0024($sp)           
lbl_809290E4:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_809290F4:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a1, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lw      v0, 0x0158(a2)             ## 00000158
	blez    v0, lbl_80929118           
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sw      t6, 0x0158(a2)             ## 00000158
lbl_80929118:
	sw      a2, 0x0030($sp)            
	lw      t9, 0x0154(a2)             ## 00000154
	or      a0, a2, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	jalr    $ra, t9                    
	nop
	lw      a0, 0x0030($sp)            
	jal     func_80928B8C              
	or      a1, s0, $zero              ## a1 = 00000000
	beq     v0, $zero, lbl_80929194    
	lw      a2, 0x0030($sp)            
	lui     t7, %hi(var_80929290)      ## t7 = 80930000
	lh      t7, %lo(var_80929290)(t7)  
	bnel    t7, $zero, lbl_809291BC    
	lw      $ra, 0x002C($sp)           
	lw      t8, 0x0790(s0)             ## 00000790
	lui     $at, %hi(var_80929290)     ## $at = 80930000
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lh      t0, 0x0142(t8)             ## 00000142
	or      a3, $zero, $zero           ## a3 = 00000000
	sh      t0, %lo(var_80929290)($at) 
	lw      a0, 0x0790(s0)             ## 00000790
	sw      $zero, 0x0018($sp)         
	sw      $zero, 0x0014($sp)         
	jal     func_80049D58              
	sw      $zero, 0x0010($sp)         
	lw      a0, 0x0790(s0)             ## 00000790
	jal     func_800495BC              
	addiu   a1, $zero, 0x0027          ## a1 = 00000027
	beq     $zero, $zero, lbl_809291BC 
	lw      $ra, 0x002C($sp)           
lbl_80929194:
	lui     t1, %hi(var_80929290)      ## t1 = 80930000
	lh      t1, %lo(var_80929290)(t1)  
	addiu   a1, $zero, 0x0004          ## a1 = 00000004
	beql    t1, $zero, lbl_809291BC    
	lw      $ra, 0x002C($sp)           
	jal     func_800495BC              
	lw      a0, 0x0790(s0)             ## 00000790
	lui     $at, %hi(var_80929290)     ## $at = 80930000
	sh      $zero, %lo(var_80929290)($at) 
	lw      $ra, 0x002C($sp)           
lbl_809291BC:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_809291CC:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0030($sp)            
	lw      a0, 0x0000(a1)             ## 00000000
	sw      a1, 0x0034($sp)            
	jal     func_8007E298              
	sw      a0, 0x0024($sp)            
	lw      a1, 0x0034($sp)            
	lw      a2, 0x0024($sp)            
	lw      v1, 0x02C0(a2)             ## 000002C0
	lui     t7, 0xDB06                 ## t7 = DB060000
	ori     t7, t7, 0x0020             ## t7 = DB060020
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a2)             ## 000002C0
	sw      t7, 0x0000(v1)             ## 00000000
	lw      t8, 0x0030($sp)            
	lui     t2, 0x0001                 ## t2 = 00010000
	lb      t9, 0x0164(t8)             ## 00000164
	sll     t0, t9,  4                 
	addu    t0, t0, t9                 
	sll     t0, t0,  2                 
	addu    t1, a1, t0                 
	addu    t2, t2, t1                 
	lw      t2, 0x17B4(t2)             ## 000117B4
	sw      t2, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(a2)             ## 000002C0
	lui     t4, 0xDA38                 ## t4 = DA380000
	ori     t4, t4, 0x0003             ## t4 = DA380003
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(a2)             ## 000002C0
	sw      t4, 0x0000(v1)             ## 00000000
	lw      a0, 0x0000(a1)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	lw      a2, 0x0024($sp)            
	lui     t6, 0xDE00                 ## t6 = DE000000
	sw      v0, 0x0004(a3)             ## 00000004
	lw      v1, 0x02C0(a2)             ## 000002C0
	lui     t7, 0x0600                 ## t7 = 06000000
	addiu   t7, t7, 0x7690             ## t7 = 06007690
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(a2)             ## 000002C0
	sw      t7, 0x0004(v1)             ## 00000004
	sw      t6, 0x0000(v1)             ## 00000000
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop

.section .data

var_80929290: .word 0x00000000
var_80929294: .word 0x00890100, 0x00000030, 0x00720000, 0x00000168
.word func_80928AA0
.word func_80928B58
.word func_809290F4
.word 0x00000000
var_809292B4: .word 0xB06CFFFF, 0xB070FFF5, 0x485003E8
var_809292C0: .word 0x40800000, 0x3FC00000, 0x3ECCCCCD, 0x3DCCCCCD

.section .rodata

var_809292D0: .word 0xC54E4000
var_809292D4: .word 0x44DFE000
var_809292D8: .word 0x4508F000
var_809292DC: .word 0x44DFE000
var_809292E0: .word 0x4508F000
var_809292E4: .word 0x442AC000
var_809292E8: .word 0x43C98000
var_809292EC: .word 0x43C98000
var_809292F0: .word 0x43C98000
var_809292F4: .word 0xBDCCCCCD
var_809292F8: .word 0x442AC000, 0x00000000

