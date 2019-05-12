#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A2BA10:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	sw      $ra, 0x0014($sp)           
	lw      t6, 0x0004(v1)             ## 8011A5D4
	lw      v0, 0x1C44(a1)             ## 00001C44
	lui     $at, %hi(var_80A2D0E4)     ## $at = 80A30000
	beq     t6, $zero, lbl_80A2BA44    
	nop
	lui     $at, %hi(var_80A2D0E0)     ## $at = 80A30000
	lwc1    $f4, %lo(var_80A2D0E0)($at) 
	beq     $zero, $zero, lbl_80A2BA4C 
	swc1    $f4, 0x014C(a0)            ## 0000014C
lbl_80A2BA44:
	lwc1    $f6, %lo(var_80A2D0E4)($at) 
	swc1    $f6, 0x014C(a0)            ## 0000014C
lbl_80A2BA4C:
	lw      t8, 0x0024(v0)             ## 00000024
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	sw      t8, 0x0024(a0)             ## 00000024
	lw      t7, 0x0028(v0)             ## 00000028
	sw      t7, 0x0028(a0)             ## 00000028
	lw      t8, 0x002C(v0)             ## 0000002C
	sw      t8, 0x002C(a0)             ## 0000002C
	jal     func_80020F88              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   t9, $zero, 0xFFFF          ## t9 = FFFFFFFF
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	sb      t9, 0x0003(a0)             ## 00000003
	lh      t0, 0x13C8(v1)             ## 8011B998
	lui     t1, %hi(func_80A2BB2C)     ## t1 = 80A30000
	addiu   t1, t1, %lo(func_80A2BB2C) ## t1 = 80A2BB2C
	beq     t0, $zero, lbl_80A2BADC    
	lui     t2, %hi(func_80A2C068)     ## t2 = 80A30000
	addiu   t2, t2, %lo(func_80A2C068) ## t2 = 80A2C068
	sw      t1, 0x0130(a0)             ## 00000130
	sw      t2, 0x0134(a0)             ## 00000134
	lui     $at, %hi(var_80A2D0E8)     ## $at = 80A30000
	lwc1    $f10, %lo(var_80A2D0E8)($at) 
	lwc1    $f8, 0x014C(a0)            ## 0000014C
	lui     $at, %hi(var_80A2D0EC)     ## $at = 80A30000
	lwc1    $f16, 0x014C(a0)           ## 0000014C
	mul.s   $f0, $f8, $f10             
	swc1    $f0, 0x0058(a0)            ## 00000058
	swc1    $f0, 0x0050(a0)            ## 00000050
	lwc1    $f18, %lo(var_80A2D0EC)($at) 
	sh      $zero, 0x013C(a0)          ## 0000013C
	sb      $zero, 0x013E(a0)          ## 0000013E
	mul.s   $f4, $f16, $f18            
	beq     $zero, $zero, lbl_80A2BAE4 
	swc1    $f4, 0x0054(a0)            ## 00000054
lbl_80A2BADC:
	sh      $zero, 0x013C(a0)          ## 0000013C
	sh      $zero, 0x13C8(v1)          ## 8011B998
lbl_80A2BAE4:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A2BAF4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      a0, 0x0018($sp)            
	or      a0, a1, $zero              ## a0 = 00000000
	sw      $ra, 0x0014($sp)           
	lui     t6, 0x8012                 ## t6 = 80120000
	lh      t6, -0x4668(t6)            ## 8011B998
	bnel    t6, $zero, lbl_80A2BB20    
	lw      $ra, 0x0014($sp)           
	jal     func_80072548              
	nop
	lw      $ra, 0x0014($sp)           
lbl_80A2BB20:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A2BB2C:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	lui     t0, 0x8012                 ## t0 = 80120000
	addiu   t0, t0, 0xA5D0             ## t0 = 8011A5D0
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	addiu   t1, $zero, 0x000D          ## t1 = 0000000D
	lui     v0, 0x0001                 ## v0 = 00010000
	addu    v0, v0, a1                 
	lbu     v0, 0x03DC(v0)             ## 000103DC
	lw      a3, 0x1C44(a1)             ## 00001C44
	lh      v1, 0x13C8(t0)             ## 8011B998
	beq     v0, t1, lbl_80A2BB68       
	addiu   $at, $zero, 0x0011         ## $at = 00000011
	bnel    v0, $at, lbl_80A2BB7C      
	slti    $at, v1, 0x04B0            
lbl_80A2BB68:
	jal     func_80020EB4              
	or      a0, a2, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A2BD68 
	lw      $ra, 0x0014($sp)           
	slti    $at, v1, 0x04B0            
lbl_80A2BB7C:
	bne     $at, $zero, lbl_80A2BB9C   
	addiu   t6, $zero, 0xFF9C          ## t6 = FFFFFF9C
	sb      $zero, 0x0A68(a3)          ## 00000A68
	sh      $zero, 0x13C8(t0)          ## 000013C8
	jal     func_80020EB4              
	or      a0, a2, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A2BD68 
	lw      $ra, 0x0014($sp)           
lbl_80A2BB9C:
	sb      t6, 0x0A68(a3)             ## 00000A68
	lh      v0, 0x013C(a2)             ## 0000013C
	lwc1    $f0, 0x014C(a2)            ## 0000014C
	addiu   a0, $zero, 0x00FF          ## a0 = 000000FF
	slti    $at, v0, 0x0014            
	swc1    $f0, 0x0058(a2)            ## 00000058
	beq     $at, $zero, lbl_80A2BC24   
	swc1    $f0, 0x0050(a2)            ## 00000050
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, %hi(var_80A2D0F0)     ## $at = 80A30000
	lwc1    $f8, %lo(var_80A2D0F0)($at) 
	cvt.s.w $f6, $f4                   
	lui     $at, %hi(var_80A2D0F4)     ## $at = 80A30000
	lwc1    $f16, %lo(var_80A2D0F4)($at) 
	lwc1    $f4, 0x014C(a2)            ## 0000014C
	lh      t7, 0x013C(a2)             ## 0000013C
	lui     $at, %hi(var_80A2D0F8)     ## $at = 80A30000
	mul.s   $f10, $f6, $f8             
	mtc1    t7, $f6                    ## $f6 = 0.00
	nop
	cvt.s.w $f8, $f6                   
	lwc1    $f6, 0x014C(a2)            ## 0000014C
	sub.s   $f18, $f16, $f10           
	mul.s   $f0, $f18, $f4             
	swc1    $f0, 0x0058(a2)            ## 00000058
	swc1    $f0, 0x0050(a2)            ## 00000050
	lwc1    $f16, %lo(var_80A2D0F8)($at) 
	lui     $at, %hi(var_80A2D0FC)     ## $at = 80A30000
	lwc1    $f18, %lo(var_80A2D0FC)($at) 
	mul.s   $f10, $f8, $f16            
	add.s   $f4, $f10, $f18            
	mul.s   $f8, $f4, $f6              
	beq     $zero, $zero, lbl_80A2BC38 
	swc1    $f8, 0x0054(a2)            ## 00000054
lbl_80A2BC24:
	lwc1    $f0, 0x014C(a2)            ## 0000014C
	lwc1    $f16, 0x014C(a2)           ## 0000014C
	swc1    $f0, 0x0058(a2)            ## 00000058
	swc1    $f0, 0x0050(a2)            ## 00000050
	swc1    $f16, 0x0054(a2)           ## 00000054
lbl_80A2BC38:
	lui     $at, %hi(var_80A2D100)     ## $at = 80A30000
	lwc1    $f0, %lo(var_80A2D100)($at) 
	lwc1    $f10, 0x0050(a2)           ## 00000050
	lwc1    $f4, 0x0058(a2)            ## 00000058
	lh      v0, 0x013C(a2)             ## 0000013C
	mul.s   $f18, $f10, $f0            
	slti    $at, v0, 0x0014            
	mul.s   $f6, $f4, $f0              
	swc1    $f18, 0x0050(a2)           ## 00000050
	beq     $at, $zero, lbl_80A2BC78   
	swc1    $f6, 0x0058(a2)            ## 00000058
	sll     a0, v0,  2                 
	subu    a0, a0, v0                 
	sll     a0, a0,  2                 
	beq     $zero, $zero, lbl_80A2BC78 
	andi    a0, a0, 0x00FF             ## a0 = 000000FF
lbl_80A2BC78:
	slti    $at, v1, 0x049C            
	bnel    $at, $zero, lbl_80A2BCB4   
	slti    $at, v1, 0x044C            
	multu   v1, t1                     
	addiu   t9, $zero, 0x3CEB          ## t9 = 00003CEB
	andi    t3, v1, 0x0001             ## t3 = 00000000
	mflo    t8                         
	subu    t2, t9, t8                 
	beq     t3, $zero, lbl_80A2BCD0    
	sb      t2, 0x013E(a2)             ## 0000013E
	andi    t4, t2, 0x00FF             ## t4 = 00000000
	sra     t5, t4,  1                 
	beq     $zero, $zero, lbl_80A2BCD0 
	sb      t5, 0x013E(a2)             ## 0000013E
	slti    $at, v1, 0x044C            
lbl_80A2BCB4:
	bne     $at, $zero, lbl_80A2BCCC   
	addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
	sll     t7, v1,  7                 
	addiu   t9, t7, 0x007F             ## t9 = 0000007F
	beq     $zero, $zero, lbl_80A2BCD0 
	sb      t9, 0x013E(a2)             ## 0000013E
lbl_80A2BCCC:
	sb      t8, 0x013E(a2)             ## 0000013E
lbl_80A2BCD0:
	lbu     t2, 0x013E(a2)             ## 0000013E
	slt     $at, a0, t2                
	beql    $at, $zero, lbl_80A2BCE8   
	lh      t3, 0x0032(a2)             ## 00000032
	sb      a0, 0x013E(a2)             ## 0000013E
	lh      t3, 0x0032(a2)             ## 00000032
lbl_80A2BCE8:
	addiu   t4, t3, 0x03E8             ## t4 = 000003E8
	sh      t4, 0x0032(a2)             ## 00000032
	lh      t5, 0x07A0(a1)             ## 000007A0
	sll     t6, t5,  2                 
	addu    t7, a1, t6                 
	lw      a0, 0x0790(t7)             ## 00000790
	sw      a2, 0x0028($sp)            
	jal     func_8004977C              
	sh      v1, 0x0018($sp)            
	lw      a2, 0x0028($sp)            
	lh      v1, 0x0018($sp)            
	lui     t0, 0x8012                 ## t0 = 80120000
	lh      t9, 0x0032(a2)             ## 00000032
	lh      t2, 0x013C(a2)             ## 0000013C
	addiu   t0, t0, 0xA5D0             ## t0 = 8011A5D0
	addu    t8, v0, t9                 
	addiu   t3, t2, 0x0001             ## t3 = 00000001
	sh      t8, 0x00B6(a2)             ## 000000B6
	sh      t3, 0x013C(a2)             ## 0000013C
	addiu   t4, v1, 0x0001             ## t4 = 00000001
	slti    $at, v1, 0x044C            
	beq     $at, $zero, lbl_80A2BD58   
	sh      t4, 0x13C8(t0)             ## 8011B998
	or      a0, a2, $zero              ## a0 = 00000000
	jal     func_8002313C              
	addiu   a1, $zero, 0x007C          ## a1 = 0000007C
	beq     $zero, $zero, lbl_80A2BD68 
	lw      $ra, 0x0014($sp)           
lbl_80A2BD58:
	or      a0, a2, $zero              ## a0 = 00000000
	jal     func_8002313C              
	addiu   a1, $zero, 0x00C0          ## a1 = 000000C0
	lw      $ra, 0x0014($sp)           
lbl_80A2BD68:
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A2BD74:
	mtc1    a1, $f12                   ## $f12 = 0.00
	lui     $at, 0x0001                ## $at = 00010000
	addu    v0, a0, $at                
	lbu     t6, 0x1CBF(v0)             ## 00001CBF
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	beq     t6, $at, lbl_80A2BEB8      
	nop
	mtc1    $zero, $f2                 ## $f2 = 0.00
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f14                  ## $f14 = 1.00
	c.lt.s  $f12, $f2                  
	lui     $at, %hi(var_80A2D104)     ## $at = 80A30000
	bc1fl   lbl_80A2BDB4               
	c.lt.s  $f14, $f12                 
	mov.s   $f12, $f2                  
	c.lt.s  $f14, $f12                 
lbl_80A2BDB4:
	nop
	bc1f    lbl_80A2BDC4               
	nop
	mov.s   $f12, $f14                 
lbl_80A2BDC4:
	lwc1    $f16, %lo(var_80A2D104)($at) 
	c.lt.s  $f12, $f16                 
	sub.s   $f0, $f12, $f16            
	bc1fl   lbl_80A2BDE0               
	lh      t7, 0x0AF6(v0)             ## 00000AF6
	mov.s   $f0, $f2                   
	lh      t7, 0x0AF6(v0)             ## 00000AF6
lbl_80A2BDE0:
	lui     $at, %hi(var_80A2D108)     ## $at = 80A30000
	lwc1    $f4, %lo(var_80A2D108)($at) 
	mtc1    t7, $f6                    ## $f6 = 0.00
	c.eq.s  $f12, $f2                  
	lui     $at, 0x0001                ## $at = 00010000
	cvt.s.w $f8, $f6                   
	addu    $at, $at, a0               
	or      v0, $zero, $zero           ## v0 = 00000000
	sub.s   $f10, $f4, $f8             
	mul.s   $f18, $f10, $f0            
	trunc.w.s $f6, $f18                  
	mfc1    t9, $f6                    
	bc1f    lbl_80A2BE40               
	sh      t9, 0x0AC2($at)            ## 00010AC2
	lui     $at, 0x0001                ## $at = 00010000
	addu    v1, a0, $at                
	addiu   a0, $zero, 0x0003          ## a0 = 00000003
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80A2BE28:
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	addiu   v1, v1, 0x0002             ## v1 = 00000002
	bne     v0, a0, lbl_80A2BE28       
	sh      $zero, 0x0ABA(v1)          ## 00000ABC
	jr      $ra                        
	nop
lbl_80A2BE40:
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f4                   ## $f4 = 5.00
	lui     $at, 0x0001                ## $at = 00010000
	addu    v1, a0, $at                
	mul.s   $f0, $f12, $f4             
	addu    a1, a0, $at                
	addiu   a0, $zero, 0x0003          ## a0 = 00000003
	c.lt.s  $f14, $f0                  
	nop
	bc1f    lbl_80A2BE70               
	nop
	mov.s   $f0, $f14                  
lbl_80A2BE70:
	lbu     t0, 0x0AF3(a1)             ## 00000AF3
	lui     $at, 0x4F80                ## $at = 4F800000
	mtc1    t0, $f8                    ## $f8 = 0.00
	bgez    t0, lbl_80A2BE90           
	cvt.s.w $f10, $f8                  
	mtc1    $at, $f18                  ## $f18 = 4294967000.00
	nop
	add.s   $f10, $f10, $f18           
lbl_80A2BE90:
	mul.s   $f6, $f10, $f0             
	addiu   v0, v0, 0x0001             ## v0 = 00000002
	addiu   v1, v1, 0x0002             ## v1 = 00000004
	addiu   a1, a1, 0x0001             ## a1 = 00000001
	trunc.w.s $f4, $f6                   
	mfc1    t4, $f4                    
	nop
	subu    t5, $zero, t4              
	bne     v0, a0, lbl_80A2BE70       
	sh      t5, 0x0ABA(v1)             ## 00000ABE
lbl_80A2BEB8:
	jr      $ra                        
	nop


func_80A2BEC0:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x003C($sp)            
	lw      t6, 0x003C($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x00C3          ## a1 = 000000C3
	lw      t7, 0x1C44(t6)             ## 00001C44
	jal     func_8002313C              
	sw      t7, 0x002C($sp)            
	lh      v0, 0x013C(s0)             ## 0000013C
	slti    $at, v0, 0x0023            
	beql    $at, $zero, lbl_80A2BF74   
	slti    $at, v0, 0x0037            
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, %hi(var_80A2D10C)     ## $at = 80A30000
	lwc1    $f8, %lo(var_80A2D10C)($at) 
	cvt.s.w $f6, $f4                   
	lw      a0, 0x003C($sp)            
	mul.s   $f10, $f6, $f8             
	mfc1    a1, $f10                   
	jal     func_80A2BD74              
	nop
	lui     $at, %hi(var_80A2D110)     ## $at = 80A30000
	lwc1    $f18, %lo(var_80A2D110)($at) 
	lwc1    $f16, 0x014C(s0)           ## 0000014C
	lui     $at, %hi(var_80A2D114)     ## $at = 80A30000
	lwc1    $f6, %lo(var_80A2D114)($at) 
	mul.s   $f4, $f16, $f18            
	lui     a2, 0x3D4C                 ## a2 = 3D4C0000
	lui     a3, 0x3C23                 ## a3 = 3C230000
	ori     a3, a3, 0xD70A             ## a3 = 3C23D70A
	ori     a2, a2, 0xCCCD             ## a2 = 3D4CCCCD
	addiu   a0, s0, 0x0050             ## a0 = 00000050
	swc1    $f6, 0x0010($sp)           
	mfc1    a1, $f4                    
	jal     func_80064178              
	nop
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80020F88              
	lw      a1, 0x0050(s0)             ## 00000050
	beq     $zero, $zero, lbl_80A2C04C 
	lh      v0, 0x013C(s0)             ## 0000013C
	slti    $at, v0, 0x0037            
lbl_80A2BF74:
	beq     $at, $zero, lbl_80A2C000   
	lui     t1, %hi(func_80A2BB2C)     ## t1 = 80A30000
	lui     $at, %hi(var_80A2D118)     ## $at = 80A30000
	lwc1    $f10, %lo(var_80A2D118)($at) 
	lwc1    $f8, 0x0050(s0)            ## 00000050
	or      a0, s0, $zero              ## a0 = 00000000
	mul.s   $f16, $f8, $f10            
	mfc1    a1, $f16                   
	jal     func_80020F88              
	nop
	lw      t8, 0x002C($sp)            
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f18                  ## $f18 = 1.00
	lw      a1, 0x08FC(t8)             ## 000008FC
	addiu   a0, s0, 0x0144             ## a0 = 00000144
	lui     a2, 0x3F00                 ## a2 = 3F000000
	lui     a3, 0x4040                 ## a3 = 40400000
	jal     func_80064178              
	swc1    $f18, 0x0010($sp)          
	lh      v0, 0x013C(s0)             ## 0000013C
	addiu   t9, $zero, 0x0036          ## t9 = 00000036
	slti    $at, v0, 0x0031            
	bne     $at, $zero, lbl_80A2C04C   
	subu    t0, t9, v0                 
	mtc1    t0, $f4                    ## $f4 = 0.00
	lui     $at, %hi(var_80A2D11C)     ## $at = 80A30000
	lwc1    $f8, %lo(var_80A2D11C)($at) 
	cvt.s.w $f6, $f4                   
	lw      a0, 0x003C($sp)            
	mul.s   $f10, $f6, $f8             
	mfc1    a1, $f10                   
	jal     func_80A2BD74              
	nop
	beq     $zero, $zero, lbl_80A2C04C 
	lh      v0, 0x013C(s0)             ## 0000013C
lbl_80A2C000:
	lui     t2, %hi(func_80A2C068)     ## t2 = 80A30000
	addiu   t1, t1, %lo(func_80A2BB2C) ## t1 = FFFFBB2C
	addiu   t2, t2, %lo(func_80A2C068) ## t2 = 80A2C068
	sw      t1, 0x0130(s0)             ## 00000130
	sw      t2, 0x0134(s0)             ## 00000134
	lui     $at, %hi(var_80A2D120)     ## $at = 80A30000
	lwc1    $f18, %lo(var_80A2D120)($at) 
	lwc1    $f16, 0x014C(s0)           ## 0000014C
	lui     $at, %hi(var_80A2D124)     ## $at = 80A30000
	lwc1    $f4, 0x014C(s0)            ## 0000014C
	mul.s   $f0, $f16, $f18            
	swc1    $f0, 0x0058(s0)            ## 00000058
	swc1    $f0, 0x0050(s0)            ## 00000050
	lwc1    $f6, %lo(var_80A2D124)($at) 
	sh      $zero, 0x013C(s0)          ## 0000013C
	lh      v0, 0x013C(s0)             ## 0000013C
	mul.s   $f8, $f4, $f6              
	sb      $zero, 0x013E(s0)          ## 0000013E
	swc1    $f8, 0x0054(s0)            ## 00000054
lbl_80A2C04C:
	addiu   t3, v0, 0x0001             ## t3 = 00000001
	sh      t3, 0x013C(s0)             ## 0000013C
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A2C068:
	addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
	sw      s2, 0x0040($sp)            
	sw      s0, 0x0038($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s2, a1, $zero              ## s2 = 00000000
	sw      $ra, 0x0044($sp)           
	sw      s1, 0x003C($sp)            
	lui     t6, 0x0001                 ## t6 = 00010000
	addu    t6, t6, s2                 
	lw      t6, 0x1DE4(t6)             ## 00011DE4
	sh      t6, 0x006E($sp)            
	lw      a0, 0x0000(s2)             ## 00000000
	jal     func_8007E2C0              
	or      s1, a0, $zero              ## s1 = 00000000
	lw      v0, 0x1C44(s2)             ## 00001C44
	lwc1    $f14, 0x0028(s0)           ## 00000028
	lui     $at, 0xC000                ## $at = C0000000
	lwc1    $f4, 0x08F8(v0)            ## 000008F8
	mtc1    $at, $f8                   ## $f8 = -2.00
	or      a3, $zero, $zero           ## a3 = 00000000
	swc1    $f4, 0x0024(s0)            ## 00000024
	lwc1    $f6, 0x0900(v0)            ## 00000900
	swc1    $f6, 0x002C(s0)            ## 0000002C
	lwc1    $f0, 0x08FC(v0)            ## 000008FC
	sub.s   $f2, $f0, $f14             
	c.lt.s  $f2, $f8                   
	nop
	bc1f    lbl_80A2C0F4               
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f12                  ## $f12 = 2.00
	nop
	add.s   $f10, $f0, $f12            
	swc1    $f10, 0x0028(s0)           ## 00000028
	beq     $zero, $zero, lbl_80A2C11C 
	lwc1    $f14, 0x0028(s0)           ## 00000028
lbl_80A2C0F4:
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f12                  ## $f12 = 2.00
	nop
	c.lt.s  $f12, $f2                  
	nop
	bc1fl   lbl_80A2C120               
	lwc1    $f12, 0x0024(s0)           ## 00000024
	sub.s   $f16, $f0, $f12            
	swc1    $f16, 0x0028(s0)           ## 00000028
	lwc1    $f14, 0x0028(s0)           ## 00000028
lbl_80A2C11C:
	lwc1    $f12, 0x0024(s0)           ## 00000024
lbl_80A2C120:
	jal     func_800AA7F4              
	lw      a2, 0x002C(s0)             ## 0000002C
	lwc1    $f12, 0x0050(s0)           ## 00000050
	lwc1    $f14, 0x0054(s0)           ## 00000054
	lw      a2, 0x0058(s0)             ## 00000058
	jal     func_800AA8FC              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lh      t7, 0x00B6(s0)             ## 000000B6
	lui     $at, %hi(var_80A2D128)     ## $at = 80A30000
	lwc1    $f6, %lo(var_80A2D128)($at) 
	mtc1    t7, $f18                   ## $f18 = 0.00
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	cvt.s.w $f4, $f18                  
	mul.s   $f12, $f4, $f6             
	jal     func_800AAB94              
	nop
	lw      v1, 0x02D0(s1)             ## 000002D0
	lui     t9, 0xDA38                 ## t9 = DA380000
	ori     t9, t9, 0x0003             ## t9 = DA380003
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s1)             ## 000002D0
	sw      t9, 0x0000(v1)             ## 00000000
	lw      a0, 0x0000(s2)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x0058($sp)            
	lw      a3, 0x0058($sp)            
	lui     t1, 0xDE00                 ## t1 = DE000000
	or      a1, $zero, $zero           ## a1 = 00000000
	sw      v0, 0x0004(a3)             ## 00000004
	lw      a0, 0x02D0(s1)             ## 000002D0
	lui     t3, 0xFA00                 ## t3 = FA000000
	lui     $at, 0x4F80                ## $at = 4F800000
	addiu   t2, a0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02D0(s1)             ## 000002D0
	sw      t3, 0x0000(a0)             ## 00000000
	lbu     t4, 0x013E(s0)             ## 0000013E
	lui     t3, 0xFB00                 ## t3 = FB000000
	mtc1    t4, $f8                    ## $f8 = 0.00
	bgez    t4, lbl_80A2C1CC           
	cvt.s.w $f10, $f8                  
	mtc1    $at, $f16                  ## $f16 = 4294967000.00
	nop
	add.s   $f10, $f10, $f16           
lbl_80A2C1CC:
	lui     $at, %hi(var_80A2D12C)     ## $at = 80A30000
	lwc1    $f18, %lo(var_80A2D12C)($at) 
	lui     $at, 0xAAFF                ## $at = AAFF0000
	ori     $at, $at, 0xFF00           ## $at = AAFFFF00
	mul.s   $f4, $f10, $f18            
	trunc.w.s $f6, $f4                   
	mfc1    t7, $f6                    
	nop
	andi    t8, t7, 0x00FF             ## t8 = 00000000
	or      t9, t8, $at                ## t9 = AAFFFF00
	sw      t9, 0x0004(a0)             ## 00000004
	lw      v1, 0x02D0(s1)             ## 000002D0
	lui     t4, 0x0064                 ## t4 = 00640000
	ori     t4, t4, 0xFF80             ## t4 = 0064FF80
	addiu   t2, v1, 0x0008             ## t2 = 00000008
	sw      t2, 0x02D0(s1)             ## 000002D0
	sw      t4, 0x0004(v1)             ## 00000004
	sw      t3, 0x0000(v1)             ## 00000000
	lw      v1, 0x02D0(s1)             ## 000002D0
	lui     t6, %hi(var_80A2CFE0)      ## t6 = 80A30000
	addiu   t6, t6, %lo(var_80A2CFE0)  ## t6 = 80A2CFE0
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s1)             ## 000002D0
	sw      t6, 0x0004(v1)             ## 00000004
	sw      t1, 0x0000(v1)             ## 00000000
	lw      v1, 0x02D0(s1)             ## 000002D0
	addiu   t8, $zero, 0x0020          ## t8 = 00000020
	addiu   t9, $zero, 0x0020          ## t9 = 00000020
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s1)             ## 000002D0
	sw      t1, 0x0000(v1)             ## 00000000
	lw      a0, 0x0000(s2)             ## 00000000
	lhu     v0, 0x006E($sp)            
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	addiu   t4, $zero, 0x0040          ## t4 = 00000040
	subu    $at, $zero, v0             
	sll     t3, $at,  4                
	addiu   t5, $zero, 0x0020          ## t5 = 00000020
	sw      t5, 0x0028($sp)            
	sw      t3, 0x0020($sp)            
	sll     a3, $at,  2                
	sw      t4, 0x0024($sp)            
	sw      t2, 0x0018($sp)            
	sw      $zero, 0x001C($sp)         
	sw      t9, 0x0014($sp)            
	sw      t8, 0x0010($sp)            
	sw      v1, 0x0048($sp)            
	jal     func_8007EB84              
	sll     a2, v0,  1                 
	lw      t0, 0x0048($sp)            
	lui     t7, 0xDE00                 ## t7 = DE000000
	sw      v0, 0x0004(t0)             ## 00000004
	lw      v1, 0x02D0(s1)             ## 000002D0
	lui     t8, %hi(var_80A2D090)      ## t8 = 80A30000
	addiu   t8, t8, %lo(var_80A2D090)  ## t8 = 80A2D090
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s1)             ## 000002D0
	sw      t8, 0x0004(v1)             ## 00000004
	sw      t7, 0x0000(v1)             ## 00000000
	lw      $ra, 0x0044($sp)           
	lw      s0, 0x0038($sp)            
	lw      s1, 0x003C($sp)            
	lw      s2, 0x0040($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0078           ## $sp = 00000000


func_80A2C2D0:
	addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
	sw      s2, 0x0020($sp)            
	sw      s1, 0x001C($sp)            
	or      s1, a1, $zero              ## s1 = 00000000
	or      s2, a0, $zero              ## s2 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      s0, 0x0018($sp)            
	lw      t6, 0x009C(s1)             ## 0000009C
	lw      v0, 0x1C44(s1)             ## 00001C44
	andi    t7, t6, 0x001F             ## t7 = 00000000
	mtc1    t7, $f4                    ## $f4 = 0.00
	bgez    t7, lbl_80A2C314           
	cvt.s.w $f6, $f4                   
	lui     $at, 0x4F80                ## $at = 4F800000
	mtc1    $at, $f8                   ## $f8 = 4294967000.00
	nop
	add.s   $f6, $f6, $f8              
lbl_80A2C314:
	swc1    $f6, 0x005C($sp)           
	lh      v1, 0x013C(s2)             ## 0000013C
	slti    $at, v1, 0x0020            
	beql    $at, $zero, lbl_80A2C3BC   
	slti    $at, v1, 0x0082            
	lwc1    $f10, 0x09AC(v0)           ## 000009AC
	lwc1    $f16, 0x0988(v0)           ## 00000988
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f0                   ## $f0 = 0.50
	add.s   $f18, $f10, $f16           
	addiu   t9, $sp, 0x0068            ## t9 = FFFFFFF0
	mul.s   $f4, $f18, $f0             
	swc1    $f4, 0x0068($sp)           
	lwc1    $f6, 0x098C(v0)            ## 0000098C
	lwc1    $f8, 0x09B0(v0)            ## 000009B0
	add.s   $f10, $f8, $f6             
	mul.s   $f16, $f10, $f0            
	swc1    $f16, 0x006C($sp)          
	lwc1    $f4, 0x0990(v0)            ## 00000990
	lwc1    $f18, 0x09B4(v0)           ## 000009B4
	add.s   $f8, $f18, $f4             
	mul.s   $f6, $f8, $f0              
	swc1    $f6, 0x0070($sp)           
	lh      v1, 0x013C(s2)             ## 0000013C
	slti    $at, v1, 0x0015            
	bne     $at, $zero, lbl_80A2C39C   
	addiu   t8, v1, 0xFFEC             ## t8 = FFFFFFEC
	mtc1    t8, $f10                   ## $f10 = NaN
	lui     $at, %hi(var_80A2D130)     ## $at = 80A30000
	lwc1    $f4, %lo(var_80A2D130)($at) 
	cvt.s.w $f18, $f10                 
	mul.s   $f8, $f18, $f4             
	add.s   $f6, $f16, $f8             
	swc1    $f6, 0x006C($sp)           
lbl_80A2C39C:
	lw      t1, 0x0000(t9)             ## FFFFFFF0
	sw      t1, 0x0140(s2)             ## 00000140
	lw      t0, 0x0004(t9)             ## FFFFFFF4
	sw      t0, 0x0144(s2)             ## 00000144
	lw      t1, 0x0008(t9)             ## FFFFFFF8
	beq     $zero, $zero, lbl_80A2C3E0 
	sw      t1, 0x0148(s2)             ## 00000148
	slti    $at, v1, 0x0082            
lbl_80A2C3BC:
	beql    $at, $zero, lbl_80A2C668   
	lw      $ra, 0x0024($sp)           
	lw      t4, 0x0140(s2)             ## 00000140
	addiu   t2, $sp, 0x0068            ## t2 = FFFFFFF0
	sw      t4, 0x0000(t2)             ## FFFFFFF0
	lw      t3, 0x0144(s2)             ## 00000144
	sw      t3, 0x0004(t2)             ## FFFFFFF4
	lw      t4, 0x0148(s2)             ## 00000148
	sw      t4, 0x0008(t2)             ## FFFFFFF8
lbl_80A2C3E0:
	lh      t5, 0x07A0(s1)             ## 000007A0
	sll     t6, t5,  2                 
	addu    t7, s1, t6                 
	jal     func_80049754              
	lw      a0, 0x0790(t7)             ## 00000790
	sll     a0, v0, 16                 
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	swc1    $f0, 0x0030($sp)           
	lh      t8, 0x07A0(s1)             ## 000007A0
	sll     t9, t8,  2                 
	addu    t0, s1, t9                 
	jal     func_8004977C              
	lw      a0, 0x0790(t0)             ## 00000790
	sll     a0, v0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lui     $at, 0x4396                ## $at = 43960000
	mtc1    $at, $f18                  ## $f18 = 300.00
	lwc1    $f10, 0x0050(s2)           ## 00000050
	lwc1    $f8, 0x0030($sp)           
	mul.s   $f4, $f10, $f18            
	lwc1    $f10, 0x0068($sp)          
	mul.s   $f16, $f4, $f0             
	nop
	mul.s   $f6, $f16, $f8             
	sub.s   $f18, $f10, $f6            
	swc1    $f18, 0x0068($sp)          
	lh      t1, 0x07A0(s1)             ## 000007A0
	sll     t2, t1,  2                 
	addu    t3, s1, t2                 
	jal     func_80049754              
	lw      a0, 0x0790(t3)             ## 00000790
	sll     a0, v0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lui     $at, 0x4396                ## $at = 43960000
	mtc1    $at, $f16                  ## $f16 = 300.00
	lwc1    $f4, 0x0050(s2)            ## 00000050
	lwc1    $f6, 0x006C($sp)           
	mul.s   $f8, $f4, $f16             
	nop
	mul.s   $f10, $f8, $f0             
	sub.s   $f18, $f6, $f10            
	swc1    $f18, 0x006C($sp)          
	lh      t4, 0x07A0(s1)             ## 000007A0
	sll     t5, t4,  2                 
	addu    t6, s1, t5                 
	jal     func_80049754              
	lw      a0, 0x0790(t6)             ## 00000790
	sll     a0, v0, 16                 
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	swc1    $f0, 0x0030($sp)           
	lh      t7, 0x07A0(s1)             ## 000007A0
	sll     t8, t7,  2                 
	addu    t9, s1, t8                 
	jal     func_8004977C              
	lw      a0, 0x0790(t9)             ## 00000790
	sll     a0, v0, 16                 
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	lui     $at, 0x4396                ## $at = 43960000
	mtc1    $at, $f16                  ## $f16 = 300.00
	lwc1    $f4, 0x0050(s2)            ## 00000050
	lwc1    $f10, 0x0030($sp)          
	mul.s   $f8, $f4, $f16             
	lwc1    $f4, 0x0070($sp)           
	mul.s   $f6, $f8, $f0              
	nop
	mul.s   $f18, $f6, $f10            
	sub.s   $f16, $f4, $f18            
	swc1    $f16, 0x0070($sp)          
	lw      a0, 0x0000(s1)             ## 00000000
	jal     func_8007E2C0              
	or      s0, a0, $zero              ## s0 = 00000000
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t1, 0xFA00                 ## t1 = FA000000
	lui     t2, 0xAAFF                 ## t2 = AAFF0000
	addiu   t0, v1, 0x0008             ## t0 = 00000008
	sw      t0, 0x02D0(s0)             ## 000002D0
	ori     t2, t2, 0xFFFF             ## t2 = AAFFFFFF
	ori     t1, t1, 0x0080             ## t1 = FA000080
	sw      t1, 0x0000(v1)             ## 00000000
	sw      t2, 0x0004(v1)             ## 00000004
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t5, 0x0096                 ## t5 = 00960000
	ori     t5, t5, 0xFFFF             ## t5 = 0096FFFF
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02D0(s0)             ## 000002D0
	lui     t4, 0xFB00                 ## t4 = FB000000
	sw      t4, 0x0000(v1)             ## 00000000
	sw      t5, 0x0004(v1)             ## 00000004
	lwc1    $f12, 0x0068($sp)          
	lwc1    $f14, 0x006C($sp)          
	lw      a2, 0x0070($sp)            
	jal     func_800AA7F4              
	or      a3, $zero, $zero           ## a3 = 00000000
	lwc1    $f12, 0x0050(s2)           ## 00000050
	lwc1    $f14, 0x0054(s2)           ## 00000054
	lw      a2, 0x0058(s2)             ## 00000058
	jal     func_800AA8FC              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1DA0           ## $at = 00011DA0
	addu    a0, s1, $at                
	jal     func_800AA79C              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	jal     func_800AA6EC              
	nop
	lw      s2, 0x02D0(s0)             ## 000002D0
	lui     t7, 0xDA38                 ## t7 = DA380000
	ori     t7, t7, 0x0003             ## t7 = DA380003
	addiu   t6, s2, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s0)             ## 000002D0
	sw      t7, 0x0000(s2)             ## 00000000
	jal     func_800AB900              
	lw      a0, 0x0000(s1)             ## 00000000
	sw      v0, 0x0004(s2)             ## 00000004
	lui     $at, %hi(var_80A2D134)     ## $at = 80A30000
	lwc1    $f6, %lo(var_80A2D134)($at) 
	lwc1    $f8, 0x005C($sp)           
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	mul.s   $f12, $f8, $f6             
	jal     func_800AAD4C              
	nop
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     s2, 0x0401                 ## s2 = 04010000
	addiu   s2, s2, 0x05D0             ## s2 = 040105D0
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s0)             ## 000002D0
	lui     t9, 0xDE00                 ## t9 = DE000000
	sw      t9, 0x0000(v1)             ## 00000000
	sw      s2, 0x0004(v1)             ## 00000004
	jal     func_800AA724              
	nop
	lwc1    $f10, 0x005C($sp)          
	lui     $at, %hi(var_80A2D138)     ## $at = 80A30000
	lwc1    $f18, %lo(var_80A2D138)($at) 
	neg.s   $f4, $f10                  
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	mul.s   $f12, $f4, $f18            
	jal     func_800AAD4C              
	nop
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t1, 0xDA38                 ## t1 = DA380000
	ori     t1, t1, 0x0003             ## t1 = DA380003
	addiu   t0, v1, 0x0008             ## t0 = 00000008
	sw      t0, 0x02D0(s0)             ## 000002D0
	sw      t1, 0x0000(v1)             ## 00000000
	lw      a0, 0x0000(s1)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x0040($sp)            
	lw      a1, 0x0040($sp)            
	sw      v0, 0x0004(a1)             ## 00000004
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t3, 0xDE00                 ## t3 = DE000000
	addiu   t2, v1, 0x0008             ## t2 = 00000008
	sw      t2, 0x02D0(s0)             ## 000002D0
	sw      s2, 0x0004(v1)             ## 00000004
	sw      t3, 0x0000(v1)             ## 00000000
	lw      $ra, 0x0024($sp)           
lbl_80A2C668:
	lw      s0, 0x0018($sp)            
	lw      s1, 0x001C($sp)            
	lw      s2, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0078           ## $sp = 00000000
	nop

.section .data

var_80A2C680: .word 0x00F40700, 0x02000010, 0x00010000, 0x00000154
.word func_80A2BA10
.word func_80A2BAF4
.word func_80A2BEC0
.word func_80A2C2D0
var_80A2C6A0: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x00000000, \
0x00000102, 0x01000001, 0x00000000, 0x00000000, \
0x00010000, 0x00000000, 0x00000001, 0x00000000, \
0x00000204, 0x02000101, 0x00000000, 0x00000000, \
0x00010101, 0x00000001, 0x00000001, 0x00000000, \
0x00000307, 0x03010102, 0x00000000, 0x00000000, \
0x01010102, 0x00000002, 0x01010001, 0x00000000, \
0x00010509, 0x04010103, 0x01000000, 0x00000000, \
0x01020202, 0x00000104, 0x03020101, 0x00000000, \
0x0001060C, 0x06010103, 0x01000000, 0x00000000, \
0x02020202, 0x00000206, 0x05040101, 0x00000000, \
0x0001080F, 0x07010103, 0x01000001, 0x00000000, \
0x03030202, 0x00010408, 0x07060201, 0x00000000, \
0x00010911, 0x08010103, 0x01000001, 0x00000001, \
0x04040303, 0x0101050B, 0x0A080301, 0x00000000, \
0x00020B14, 0x0A010103, 0x01000001, 0x00010102, \
0x06060403, 0x0203070D, 0x0C0A0401, 0x00000000, \
0x00030D17, 0x0B020103, 0x01010001, 0x00010205, \
0x09080503, 0x0205090E, 0x0E0D0501, 0x00000000, \
0x01050F18, 0x0C020102, 0x01010001, 0x00010408, \
0x0D0B0502, 0x03070B0F, 0x0F0F0601, 0x00000000, \
0x02081219, 0x0D030102, 0x00010001, 0x0001050B, \
0x130F0702, 0x04080B0F, 0x10110801, 0x00000000, \
0x030C1419, 0x0E040101, 0x00010001, 0x0001070F, \
0x19140A03, 0x05090B0E, 0x10130A02, 0x00000001, \
0x05121719, 0x0E040100, 0x00010102, 0x01020A13, \
0x1F1A0F06, 0x06090A0C, 0x10150B03, 0x01000001, \
0x08181B19, 0x0F050201, 0x01020102, 0x02040D18, \
0x2721140A, 0x080A0A0C, 0x11160D04, 0x02020001, \
0x0B1E1E19, 0x10070403, 0x02030202, 0x0408111D, \
0x2F2A1B0F, 0x0A0B0B0D, 0x12180F06, 0x04040101, \
0x0E242119, 0x11090606, 0x04040304, 0x070C1623, \
0x38322214, 0x0E0D0E10, 0x141A1108, 0x06060102, \
0x112A241A, 0x120B0909, 0x06050507, 0x0B111C29, \
0x413B291B, 0x13101216, 0x181B1209, 0x08080304, \
0x152F271B, 0x140E0C0C, 0x0907080B, 0x10172230, \
0x4A433223, 0x1813161D, 0x1D1E140B, 0x0A0A0608, \
0x1A342B1E, 0x17110F0F, 0x0C0B0D11, 0x171F2A38, \
0x534C3B2B, 0x1E161C25, 0x2221160D, 0x0B0C0A0E, \
0x21393023, 0x1B151211, 0x0F0F1217, 0x1E273240, \
0x5C564534, 0x251B242F, 0x2924190F, 0x0E0E0F17, \
0x293E372B, 0x21181513, 0x1113181E, 0x26303B48, \
0x655F4E3E, 0x2D222D3A, 0x30271C13, 0x11111520, \
0x32453F35, 0x281D1714, 0x14181E25, 0x2F3A4551, \
0x6F695746, 0x362B3744, 0x372A1F17, 0x15151D2A, \
0x3D4D483F, 0x31231A14, 0x171E252E, 0x38444F5B, \
0x7974614F, 0x4036404C, 0x3C2D231D, 0x1A1A2637, \
0x4957524A, 0x3A2A1D15, 0x1A252E37, 0x43505B66, \
0x837F6C59, 0x4A414750, 0x3F2E2723, 0x21213245, \
0x57625D54, 0x43312216, 0x1F2D3741, 0x4D5B6671, \
0x8E8B7662, 0x544B4D51, 0x3F302C2C, 0x2B2D4054, \
0x656D675E, 0x4C3A281A, 0x2536414B, 0x5867717B, \
0x9896816C, 0x5E545150, 0x3F323337, 0x383C5063, \
0x71777168, 0x56432F21, 0x2C3F4B56, 0x63727C86, \
0xA2A08B76, 0x685D5651, 0x3F343A43, 0x484D5F70, \
0x7D827B71, 0x5F4C3829, 0x34465462, 0x6F7C8690, \
0xACA99581, 0x72655B53, 0x42394450, 0x585E6D7C, \
0x878C8479, 0x68574334, 0x3D4E5E6E, 0x7B88919A, \
0xB4B09E8C, 0x7C6E6155, 0x46414F5F, 0x676E7B87, \
0x92958C80, 0x71625041, 0x4857697A, 0x86929BA3, \
0xBBB7A796, 0x86776658, 0x4D4B5C6E, 0x777D8791, \
0x9C9F9487, 0x7A6D5C4F, 0x54617486, 0x919CA4AB, \
0xC2BBAFA1, 0x907F6C5D, 0x55576A7E, 0x8589929A, \
0xA5A99D90, 0x8478695E, 0x5F697F93, 0x9DA6ACB2, \
0xC8BFB6AC, 0x9A877465, 0x6064788D, 0x92949BA1, \
0xADB2A89C, 0x8F83766C, 0x6A718AA1, 0xA9AFB2B8, \
0xCEC3BDB6, 0xA4907E70, 0x6C72879B, 0x9C9CA2A8, \
0xB5BBB3A9, 0x9B8E8279, 0x737693AE, 0xB4B6B9BE, \
0xD5C9C5BF, 0xAF9C8B7E, 0x7A8094A5, 0xA4A0A7B0, \
0xBDC5C0B7, 0xA8998E85, 0x7B7B9AB7, 0xBDBEC0C5, \
0xDBCFCCC8, 0xBAA9998E, 0x898E9FAD, 0xA8A1ACB8, \
0xC6CECCC5, 0xB6A4988F, 0x8381A0BE, 0xC4C6C8CD, \
0xE0D4D3D1, 0xC5B7A89D, 0x989CA8B3, 0xABA2B0C0, \
0xCED8D8D2, 0xC2AEA298, 0x8C89A6C3, 0xCACED1D5, \
0xE5DBDAD8, 0xD0C4B6AB, 0xA6A8B1B8, 0xAEA4B5C7, \
0xD6E0E3DE, 0xCDB7ABA2, 0x9590ACC9, 0xD0D5D9DC, \
0xEBE1E0DE, 0xDAD1C4B9, 0xB2B2B8BC, 0xB1A7B9CE, \
0xDEE8ECE8, 0xD6BDB3AC, 0x9E98B3CE, 0xD6DBE0E3, \
0xF0E9E6E3, 0xE3DDD2C6, 0xBCBABEC0, 0xB4AABED5, \
0xE5EFF3F0, 0xDDC2BBB6, 0xA79FB9D4, 0xDCE2E7E9, \
0xF5F0ECE7, 0xEAE8DED2, 0xC6C1C2C3, 0xB7ADC4DD, \
0xEBF3F8F5, 0xE1C6C2C1, 0xB1A7BFD8, 0xE1E7EDF0, \
0xF9F5F1EB, 0xF0F0E9DD, 0xCFC7C7C6, 0xBBB1CBE5, \
0xF0F5FBF7, 0xE3CACACC, 0xBBB0C5DC, 0xE5ECF4F6, \
0xFCF9F5EE, 0xF5F7F0E7, 0xD7CDCCCB, 0xBFB7D2EB, \
0xF4F7FBF6, 0xE4CDD2D6, 0xC6B9CBE0, 0xE9F1F9FB, \
0xFDFCF8F2, 0xF9FAF6EE, 0xDFD5D3D0, 0xC5BDD9F0, \
0xF7F9FBF4, 0xE5D0D9E0, 0xD1C2D2E4, 0xEDF5FCFE, \
0xFEFDFAF4, 0xFBFCF9F3, 0xE6DDDAD7, 0xCBC3DEF4, \
0xFAFBFCF3, 0xE5D3DEE8, 0xDBCDDAE9, 0xF2F8FEFF, \
0xFEFDFCF6, 0xFCFDFCF7, 0xECE4E2DF, 0xD2C9E3F7, \
0xFCFDFBF3, 0xE5D6E4EF, 0xE3D6E1EE, 0xF6FAFEFF, \
0xFEFDFDF8, 0xFCFDFDFA, 0xF1EAE9E7, 0xD9CFE7F9, \
0xFEFEFBF3, 0xE7DBE9F4, 0xEBDFE8F3, 0xF9FCFFFF, \
0xFEFDFDFA, 0xFDFDFEFC, 0xF5EFEFEE, 0xE0D5ECFB, \
0xFFFEFBF3, 0xE9E1EEF8, 0xF0E6EEF6, 0xFCFDFFFF, \
0xFEFDFEFC, 0xFEFDFEFE, 0xF8F4F4F3, 0xE7DDF1FD, \
0xFFFEFBF3, 0xECE7F3FC, 0xF5ECF2F9, 0xFDFEFFFF, \
0xFEFDFFFE, 0xFFFDFEFE, 0xFAF7F8F7, 0xEDE5F5FE, \
0xFFFEFBF5, 0xF0EDF7FD, 0xF9F1F5FA, 0xFEFFFFFF, \
0xFEFDFFFF, 0xFFFEFEFF, 0xFCFAFAFA, 0xF2ECF8FE, \
0xFFFEFCF7, 0xF4F3FAFE, 0xFBF6F8FB, 0xFEFFFFFF, \
0xFEFDFFFF, 0xFFFEFEFF, 0xFDFCFCFC, 0xF7F2FBFF, \
0xFFFEFCFA, 0xF8F7FCFF, 0xFEFAFBFC, 0xFFFFFFFF, \
0xFEFEFFFF, 0xFFFFFFFF, 0xFEFDFEFD, 0xFAF7FCFF, \
0xFFFEFDFC, 0xFCFBFDFF, 0xFFFDFDFD, 0xFFFFFFFF, \
0xFFFEFFFF, 0xFFFFFFFF, 0xFFFEFEFE, 0xFCFAFDFF, \
0xFFFEFEFE, 0xFEFDFEFF, 0xFFFFFEFD, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFDFCFEFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFE, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFEFEFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
var_80A2CEA0: .word \
0x00000000, 0x00400000, 0x04000200, 0x000078FF, \
0x00370000, 0x00200000, 0x06AB0200, 0x67003CFF, \
0x0000006C, 0x00000000, 0x05550000, 0x007800FF, \
0x00370000, 0xFFE00000, 0x09550200, 0x6700C4FF, \
0x0000006C, 0x00000000, 0x08000000, 0x007800FF, \
0x00000000, 0xFFC00000, 0x0C000200, 0x000088FF, \
0x0000006C, 0x00000000, 0x0AAB0000, 0x007800FF, \
0xFFC90000, 0xFFE00000, 0x0EAB0200, 0x9900C4FF, \
0x0000006C, 0x00000000, 0x0D550000, 0x007800FF, \
0xFFC90000, 0x00200000, 0x11550200, 0x98003CFF, \
0x0000006C, 0x00000000, 0x10000000, 0x007800FF, \
0xFFC90000, 0x00200000, 0x01550200, 0x98003CFF, \
0x0000006C, 0x00000000, 0x02AB0000, 0x007800FF, \
0x0000FF94, 0x00000000, 0x02AB0400, 0x008800FF, \
0x0000FF94, 0x00000000, 0x0D550400, 0x008800FF, \
0x0000FF94, 0x00000000, 0x0AAB0400, 0x008800FF, \
0x0000FF94, 0x00000000, 0x08000400, 0x008800FF, \
0x0000FF94, 0x00000000, 0x05550400, 0x008800FF, \
0xFFC90000, 0x00200000, 0x09550200, 0x98003CFF, \
0xFFC90000, 0xFFE00000, 0x06AB0200, 0x9900C4FF
var_80A2CFE0: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000, 0x04032930, \
0xF5900000, 0x07014450, 0xE6000000, 0x00000000, \
0xF3000000, 0x071FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x00014450, 0xF2000000, 0x0007C07C, \
0xFD900000
.word var_80A2C6A0
.word \
0xF5900100, 0x0705B45D, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF200, 0xE7000000, 0x00000000, \
0xF5880900, 0x0105B45D, 0xF2000000, 0x0107C0FC, \
0xFC262A60, 0x350C937F, 0xE200001C, 0x0C1849D8, \
0xD9F2FFFF, 0x00000000, 0xD9FFFFFF, 0x00020400, \
0xDF000000, 0x00000000
var_80A2D090: .word 0x01014028
.word var_80A2CEA0
.word \
0x06000204, 0x00020608, 0x06060A0C, 0x000A0E10, \
0x060E1214, 0x00160018, 0x061A0016, 0x001C0E0A, \
0x061E0A06, 0x00200602, 0x06220200, 0x00202426, \
0xDF000000, 0x00000000, 0x326496C8, 0xFFC89664, \
0x00000000, 0x00000000

.section .rodata

var_80A2D0E0: .word 0x3ECCCCCD
var_80A2D0E4: .word 0x3F19999A
var_80A2D0E8: .word 0x3FCCCCCD
var_80A2D0EC: .word 0x3F4CCCCD
var_80A2D0F0: .word 0x3CF5C28F
var_80A2D0F4: .word 0x3FCCCCCD
var_80A2D0F8: .word 0x3C23D70A
var_80A2D0FC: .word 0x3F4CCCCD
var_80A2D100: .word 0x3FA66666
var_80A2D104: .word 0x3E4CCCCD
var_80A2D108: .word 0x44548000
var_80A2D10C: .word 0x3CB60B61
var_80A2D110: .word 0x3DAAAAAA
var_80A2D114: .word 0x38D1B717
var_80A2D118: .word 0x3F666666
var_80A2D11C: .word 0x3E4CCCCD
var_80A2D120: .word 0x3FCCCCCD
var_80A2D124: .word 0x3F4CCCCD
var_80A2D128: .word 0x38C90FDB
var_80A2D12C: .word 0x3F19999A
var_80A2D130: .word 0x3FB33333
var_80A2D134: .word 0x3DC90FDB
var_80A2D138: .word 0x3DC90FDB, 0x00000000

