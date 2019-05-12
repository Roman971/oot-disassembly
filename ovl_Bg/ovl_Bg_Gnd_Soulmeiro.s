#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B67700:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s1, 0x0030($sp)            
	sw      s0, 0x002C($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x0034($sp)           
	lui     a1, %hi(var_80B67E6C)      ## a1 = 80B60000
	addiu   a1, a1, %lo(var_80B67E6C)  ## a1 = 80B67E6C
	jal     func_80063F7C              
	or      a0, s0, $zero              ## a0 = 00000000
	lh      v1, 0x001C(s0)             ## 0000001C
	sw      $zero, 0x018C(s0)          ## 0000018C
	or      a0, s1, $zero              ## a0 = 00000000
	andi    v0, v1, 0x00FF             ## v0 = 00000000
	beq     v0, $zero, lbl_80B67760    
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beq     v0, $at, lbl_80B67800      
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beql    v0, $at, lbl_80B67804      
	sra     a1, v1,  8                 
	beq     $zero, $zero, lbl_80B67834 
	lw      $ra, 0x0034($sp)           
lbl_80B67760:
	jal     func_8004AB7C              
	sw      a1, 0x0038($sp)            
	lui     a3, %hi(var_80B67E40)      ## a3 = 80B60000
	lw      a1, 0x0038($sp)            
	addiu   a3, a3, %lo(var_80B67E40)  ## a3 = 80B67E40
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	lh      a1, 0x001C(s0)             ## 0000001C
	lui     t6, %hi(func_80B67BCC)     ## t6 = 80B60000
	addiu   t6, t6, %lo(func_80B67BCC) ## t6 = 80B67BCC
	sra     a1, a1,  8                 
	sw      t6, 0x018C(s0)             ## 0000018C
	andi    a1, a1, 0x003F             ## a1 = 00000000
	jal     func_8002049C              
	or      a0, s1, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_80B677F4    
	lui     t8, %hi(func_80B67D18)     ## t8 = 80B60000
	lwc1    $f4, 0x0028(s0)            ## 00000028
	lw      a3, 0x0024(s0)             ## 00000024
	addiu   t7, $zero, 0x0009          ## t7 = 00000009
	swc1    $f4, 0x0010($sp)           
	lwc1    $f6, 0x002C(s0)            ## 0000002C
	sw      t7, 0x0024($sp)            
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0018($sp)         
	addiu   a0, s1, 0x1C24             ## a0 = 00001C24
	or      a1, s1, $zero              ## a1 = 00000000
	addiu   a2, $zero, 0x00B7          ## a2 = 000000B7
	jal     func_80025110              ## ActorSpawn
	swc1    $f6, 0x0014($sp)           
	sw      $zero, 0x0134(s0)          ## 00000134
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B67834 
	lw      $ra, 0x0034($sp)           
lbl_80B677F4:
	addiu   t8, t8, %lo(func_80B67D18) ## t8 = 00007D18
	beq     $zero, $zero, lbl_80B67830 
	sw      t8, 0x0134(s0)             ## 00000134
lbl_80B67800:
	sra     a1, v1,  8                 
lbl_80B67804:
	jal     func_8002049C              
	andi    a1, a1, 0x003F             ## a1 = 00000000
	beq     v0, $zero, lbl_80B67824    
	lui     t0, %hi(func_80B67C98)     ## t0 = 80B60000
	lui     t9, %hi(func_80B67D18)     ## t9 = 80B60000
	addiu   t9, t9, %lo(func_80B67D18) ## t9 = 80B67D18
	beq     $zero, $zero, lbl_80B67828 
	sw      t9, 0x0134(s0)             ## 00000134
lbl_80B67824:
	sw      $zero, 0x0134(s0)          ## 00000134
lbl_80B67828:
	addiu   t0, t0, %lo(func_80B67C98) ## t0 = 80B67C98
	sw      t0, 0x018C(s0)             ## 0000018C
lbl_80B67830:
	lw      $ra, 0x0034($sp)           
lbl_80B67834:
	lw      s0, 0x002C($sp)            
	lw      s1, 0x0030($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000


func_80B67844:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	lh      t6, 0x001C(a2)             ## 0000001C
	or      a0, a3, $zero              ## a0 = 00000000
	andi    t7, t6, 0x00FF             ## t7 = 00000000
	bnel    t7, $zero, lbl_80B67874    
	lw      $ra, 0x0014($sp)           
	jal     func_8004ABCC              
	addiu   a1, a2, 0x013C             ## a1 = 0000013C
	lw      $ra, 0x0014($sp)           
lbl_80B67874:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B67880:
	addiu   $sp, $sp, 0xFF28           ## $sp = FFFFFF28
	sw      s2, 0x0080($sp)            
	or      s2, a0, $zero              ## s2 = 00000000
	sw      $ra, 0x009C($sp)           
	sw      s8, 0x0098($sp)            
	sw      s7, 0x0094($sp)            
	sw      s6, 0x0090($sp)            
	sw      s5, 0x008C($sp)            
	sw      s4, 0x0088($sp)            
	sw      s3, 0x0084($sp)            
	sw      s1, 0x007C($sp)            
	sw      s0, 0x0078($sp)            
	sdc1    $f30, 0x0070($sp)          
	sdc1    $f28, 0x0068($sp)          
	sdc1    $f26, 0x0060($sp)          
	sdc1    $f24, 0x0058($sp)          
	sdc1    $f22, 0x0050($sp)          
	sdc1    $f20, 0x0048($sp)          
	sw      a1, 0x00DC($sp)            
	lhu     v0, 0x0188(s2)             ## 00000188
	addiu   $at, $zero, 0x0014         ## $at = 00000014
	beq     v0, $zero, lbl_80B678EC    
	or      v1, v0, $zero              ## v1 = 00000000
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	andi    v0, t6, 0xFFFF             ## v0 = 0000FFFF
	or      v1, v0, $zero              ## v1 = 0000FFFF
	sh      t6, 0x0188(s2)             ## 00000188
lbl_80B678EC:
	bne     v1, $at, lbl_80B67910      
	nop
	lh      a1, 0x001C(s2)             ## 0000001C
	lw      a0, 0x00DC($sp)            
	sra     a1, a1,  8                 
	jal     func_800204D0              
	andi    a1, a1, 0x003F             ## a1 = 00000000
	sw      $zero, 0x0134(s2)          ## 00000134
	lhu     v0, 0x0188(s2)             ## 00000188
lbl_80B67910:
	bne     v0, $zero, lbl_80B67974    
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	lh      a1, 0x001C(s2)             ## 0000001C
	lw      a0, 0x00DC($sp)            
	sra     a1, a1,  8                 
	jal     func_800204D0              
	andi    a1, a1, 0x003F             ## a1 = 00000000
	jal     func_80020EB4              
	or      a0, s2, $zero              ## a0 = 00000000
	lwc1    $f4, 0x0028(s2)            ## 00000028
	lw      a3, 0x0024(s2)             ## 00000024
	lw      a1, 0x00DC($sp)            
	swc1    $f4, 0x0010($sp)           
	lwc1    $f6, 0x002C(s2)            ## 0000002C
	addiu   t7, $zero, 0x0009          ## t7 = 00000009
	sw      t7, 0x0024($sp)            
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0018($sp)         
	addiu   a2, $zero, 0x00B7          ## a2 = 000000B7
	addiu   a0, a1, 0x1C24             ## a0 = 00001C24
	jal     func_80025110              ## ActorSpawn
	swc1    $f6, 0x0014($sp)           
	beq     $zero, $zero, lbl_80B67B88 
	lw      $ra, 0x009C($sp)           
lbl_80B67974:
	div     $zero, v0, $at             
	mfhi    t8                         
	bnel    t8, $zero, lbl_80B67B88    
	lw      $ra, 0x009C($sp)           
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_80B67EA0)     ## $at = 80B60000
	lwc1    $f8, %lo(var_80B67EA0)($at) 
	mtc1    $zero, $f30                ## $f30 = 0.00
	lui     $at, 0x4080                ## $at = 40800000
	mul.s   $f10, $f0, $f8             
	mtc1    $at, $f28                  ## $f28 = 4.00
	lui     $at, %hi(var_80B67EA4)     ## $at = 80B60000
	swc1    $f30, 0x00D0($sp)          
	lwc1    $f18, 0x0028(s2)           ## 00000028
	lwc1    $f26, %lo(var_80B67EA4)($at) 
	lui     $at, 0x42F0                ## $at = 42F00000
	trunc.w.s $f16, $f10                 
	mtc1    $at, $f24                  ## $f24 = 120.00
	or      s4, $zero, $zero           ## s4 = 00000000
	addiu   s5, s2, 0x0008             ## s5 = 00000008
	mfc1    s3, $f16                   
	addiu   s8, $sp, 0x00CC            ## s8 = FFFFFFF4
	ori     s7, $zero, 0x8000          ## s7 = 00008000
	sll     s3, s3, 16                 
	sra     s3, s3, 16                 
	addiu   s6, $sp, 0x00C0            ## s6 = FFFFFFE8
	swc1    $f18, 0x00C4($sp)          
lbl_80B679E4:
	lui     $at, 0x4620                ## $at = 46200000
	mtc1    $at, $f12                  ## $f12 = 10240.00
	jal     func_80026D90              
	nop
	mtc1    s3, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	add.s   $f8, $f0, $f6              
	trunc.w.s $f10, $f8                  
	mfc1    v0, $f10                   
	nop
	sll     s0, v0, 16                 
	sll     a0, v0, 16                 
	sra     s0, s0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	sll     a0, s0, 16                 
	mov.s   $f20, $f0                  
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	mul.s   $f18, $f24, $f20           
	lwc1    $f16, 0x0024(s2)           ## 00000024
	mov.s   $f22, $f0                  
	mul.s   $f8, $f24, $f0             
	or      a0, s5, $zero              ## a0 = 00000008
	or      a1, s6, $zero              ## a1 = FFFFFFE8
	add.s   $f4, $f16, $f18            
	swc1    $f4, 0x00C0($sp)           
	lwc1    $f6, 0x002C(s2)            ## 0000002C
	add.s   $f10, $f6, $f8             
	jal     func_80063EB8              
	swc1    $f10, 0x00C8($sp)          
	mul.s   $f12, $f0, $f26            
	lui     $at, %hi(var_80B67EA8)     ## $at = 80B60000
	lwc1    $f16, %lo(var_80B67EA8)($at) 
	addu    s1, s0, s7                 
	sll     s1, s1, 16                 
	sra     s1, s1, 16                 
	sll     a0, s1, 16                 
	c.lt.s  $f12, $f16                 
	nop
	bc1f    lbl_80B67AE0               
	nop
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	sll     a0, s1, 16                 
	mov.s   $f20, $f0                  
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	mul.s   $f4, $f24, $f20            
	lwc1    $f18, 0x0024(s2)           ## 00000024
	mov.s   $f22, $f0                  
	mul.s   $f10, $f24, $f0            
	or      a0, s5, $zero              ## a0 = 00000008
	or      a1, s6, $zero              ## a1 = FFFFFFE8
	add.s   $f6, $f18, $f4             
	swc1    $f6, 0x00C0($sp)           
	lwc1    $f8, 0x002C(s2)            ## 0000002C
	add.s   $f16, $f8, $f10            
	jal     func_80063EB8              
	swc1    $f16, 0x00C8($sp)          
	mul.s   $f12, $f0, $f26            
	nop
lbl_80B67AE0:
	mul.s   $f18, $f28, $f20           
	lui     a3, %hi(var_80B67E7C)      ## a3 = 80B60000
	addiu   t1, $zero, 0x003C          ## t1 = 0000003C
	addiu   t2, $zero, 0x0006          ## t2 = 00000006
	addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
	addiu   t4, $zero, 0x00FF          ## t4 = 000000FF
	addiu   t5, $zero, 0x0096          ## t5 = 00000096
	mul.s   $f4, $f18, $f12            
	addiu   t6, $zero, 0x00AA          ## t6 = 000000AA
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	mul.s   $f6, $f28, $f22            
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	addiu   t9, $zero, 0x000E          ## t9 = 0000000E
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	swc1    $f4, 0x00CC($sp)           
	swc1    $f30, 0x00D0($sp)          
	sw      t0, 0x003C($sp)            
	mul.s   $f8, $f6, $f12             
	sw      t9, 0x0038($sp)            
	sw      t8, 0x0034($sp)            
	sw      t7, 0x0028($sp)            
	sw      t6, 0x0024($sp)            
	sw      t5, 0x0020($sp)            
	sw      t4, 0x001C($sp)            
	swc1    $f8, 0x00D4($sp)           
	sw      t3, 0x0018($sp)            
	sw      t2, 0x0014($sp)            
	sw      t1, 0x0010($sp)            
	addiu   a3, a3, %lo(var_80B67E7C)  ## a3 = 80B67E7C
	lw      a0, 0x00DC($sp)            
	or      a1, s5, $zero              ## a1 = 00000008
	or      a2, s8, $zero              ## a2 = FFFFFFF4
	sw      $zero, 0x002C($sp)         
	jal     func_8001E1D4              
	sw      $zero, 0x0030($sp)         
	addiu   s3, s3, 0x2AAA             ## s3 = 00002AAA
	addiu   s4, s4, 0x0001             ## s4 = 00000001
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	sll     s3, s3, 16                 
	bne     s4, $at, lbl_80B679E4      
	sra     s3, s3, 16                 
	lw      $ra, 0x009C($sp)           
lbl_80B67B88:
	ldc1    $f20, 0x0048($sp)          
	ldc1    $f22, 0x0050($sp)          
	ldc1    $f24, 0x0058($sp)          
	ldc1    $f26, 0x0060($sp)          
	ldc1    $f28, 0x0068($sp)          
	ldc1    $f30, 0x0070($sp)          
	lw      s0, 0x0078($sp)            
	lw      s1, 0x007C($sp)            
	lw      s2, 0x0080($sp)            
	lw      s3, 0x0084($sp)            
	lw      s4, 0x0088($sp)            
	lw      s5, 0x008C($sp)            
	lw      s6, 0x0090($sp)            
	lw      s7, 0x0094($sp)            
	lw      s8, 0x0098($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x00D8           ## $sp = 00000000


func_80B67BCC:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x0034($sp)            
	lh      a1, 0x001C(s0)             ## 0000001C
	lw      a0, 0x0034($sp)            
	sra     a1, a1,  8                 
	jal     func_8002049C              
	andi    a1, a1, 0x003F             ## a1 = 00000000
	bnel    v0, $zero, lbl_80B67C88    
	lw      $ra, 0x0024($sp)           
	lbu     t7, 0x014D(s0)             ## 0000014D
	lui     t6, %hi(func_80B67D18)     ## t6 = 80B60000
	addiu   t6, t6, %lo(func_80B67D18) ## t6 = 80B67D18
	andi    t8, t7, 0x0002             ## t8 = 00000000
	beq     t8, $zero, lbl_80B67C58    
	sw      t6, 0x0134(s0)             ## 00000134
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t9, 0x8010                 ## t9 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t9, t9, 0x43A8             ## t9 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t9, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x4802          ## a0 = 00004802
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	lui     t1, %hi(func_80B67880)     ## t1 = 80B60000
	addiu   t0, $zero, 0x0028          ## t0 = 00000028
	addiu   t1, t1, %lo(func_80B67880) ## t1 = 80B67880
	sh      t0, 0x0188(s0)             ## 00000188
	beq     $zero, $zero, lbl_80B67C84 
	sw      t1, 0x018C(s0)             ## 0000018C
lbl_80B67C58:
	addiu   a2, s0, 0x013C             ## a2 = 0000013C
	or      a1, a2, $zero              ## a1 = 0000013C
	sw      a2, 0x0028($sp)            
	jal     func_80050B00              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a0, 0x0034($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	lw      a2, 0x0028($sp)            
	jal     func_8004BF40              ## CollisionCheck_setAC
	addu    a1, a0, $at                
lbl_80B67C84:
	lw      $ra, 0x0024($sp)           
lbl_80B67C88:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B67C98:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	lh      a1, 0x001C(a2)             ## 0000001C
	sw      a2, 0x0018($sp)            
	or      a0, a3, $zero              ## a0 = 00000000
	sra     a1, a1,  8                 
	jal     func_8002049C              
	andi    a1, a1, 0x003F             ## a1 = 00000000
	beq     v0, $zero, lbl_80B67CD8    
	lw      a2, 0x0018($sp)            
	lui     t6, %hi(func_80B67D18)     ## t6 = 80B60000
	addiu   t6, t6, %lo(func_80B67D18) ## t6 = 80B67D18
	beq     $zero, $zero, lbl_80B67CDC 
	sw      t6, 0x0134(a2)             ## 00000134
lbl_80B67CD8:
	sw      $zero, 0x0134(a2)          ## 00000134
lbl_80B67CDC:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B67CEC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lw      v0, 0x018C(a0)             ## 0000018C
	beql    v0, $zero, lbl_80B67D0C    
	lw      $ra, 0x0014($sp)           
	jalr    $ra, v0                    
	nop
	lw      $ra, 0x0014($sp)           
lbl_80B67D0C:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B67D18:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0014($sp)           
	or      a3, a1, $zero              ## a3 = 00000000
	lh      a2, 0x001C(a0)             ## 0000001C
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	andi    a2, a2, 0x00FF             ## a2 = 00000000
	beql    a2, $zero, lbl_80B67D58    
	lw      a0, 0x0000(a3)             ## 00000000
	beq     a2, $at, lbl_80B67DD4      
	or      a0, a3, $zero              ## a0 = 00000000
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     a2, $at, lbl_80B67DF0      
	or      a0, a3, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B67E08 
	lw      $ra, 0x0014($sp)           
	lw      a0, 0x0000(a3)             ## 00000000
lbl_80B67D58:
	sw      a3, 0x002C($sp)            
	sw      a2, 0x0024($sp)            
	jal     func_8007E2C0              
	sw      a0, 0x0020($sp)            
	lw      a1, 0x0020($sp)            
	lw      v1, 0x02D0(a1)             ## 000002D0
	lui     t7, 0xDA38                 ## t7 = DA380000
	ori     t7, t7, 0x0003             ## t7 = DA380003
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(a1)             ## 000002D0
	sw      t7, 0x0000(v1)             ## 00000000
	lw      t8, 0x002C($sp)            
	lw      a0, 0x0000(t8)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	lw      a1, 0x0020($sp)            
	lw      a2, 0x0024($sp)            
	sw      v0, 0x0004(a3)             ## 00000004
	lw      v1, 0x02D0(a1)             ## 000002D0
	lui     t0, 0xDE00                 ## t0 = DE000000
	sll     t1, a2,  2                 
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(a1)             ## 000002D0
	lui     t2, %hi(var_80B67E88)      ## t2 = 80B60000
	addu    t2, t2, t1                 
	sw      t0, 0x0000(v1)             ## 00000000
	lw      t2, %lo(var_80B67E88)(t2)  
	sw      t2, 0x0004(v1)             ## 00000004
	beq     $zero, $zero, lbl_80B67E08 
	lw      $ra, 0x0014($sp)           
lbl_80B67DD4:
	sll     t3, a2,  2                 
	lui     a1, %hi(var_80B67E88)      ## a1 = 80B60000
	addu    a1, a1, t3                 
	jal     func_800280C8              
	lw      a1, %lo(var_80B67E88)(a1)  
	beq     $zero, $zero, lbl_80B67E08 
	lw      $ra, 0x0014($sp)           
lbl_80B67DF0:
	sll     t4, a2,  2                 
	lui     a1, %hi(var_80B67E88)      ## a1 = 80B60000
	addu    a1, a1, t4                 
	jal     func_80028048              
	lw      a1, %lo(var_80B67E88)(a1)  
	lw      $ra, 0x0014($sp)           
lbl_80B67E08:
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop
	nop

.section .data

var_80B67E20: .word 0x01B50600, 0x00000000, 0x01790000, 0x00000190
.word func_80B67700
.word func_80B67844
.word func_80B67CEC
.word func_80B67D18
var_80B67E40: .word \
0x0A000900, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0x00020800, 0x00000000, 0x00010000, \
0x00320014, 0x00140000, 0x00000000
var_80B67E6C: .word 0xC8500064, 0xB0F403E8, 0xB0F803E8, 0x30FC03E8
var_80B67E7C: .word 0x00000000, 0x00000000, 0x00000000
var_80B67E88: .word \
0x06007C00, 0x06002320, 0x060035A0, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80B67EA0: .word 0x462AA800
var_80B67EA4: .word 0x3C088889
var_80B67EA8: .word 0x3F333333, 0x00000000

