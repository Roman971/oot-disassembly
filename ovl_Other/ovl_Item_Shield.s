#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A28410:
	sw      a1, 0x01F8(a0)             ## 000001F8
	jr      $ra                        
	nop


func_80A2841C:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s3, 0x002C($sp)            
	or      s3, a0, $zero              ## s3 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      s4, 0x0030($sp)            
	sw      s2, 0x0028($sp)            
	sw      s1, 0x0024($sp)            
	sw      s0, 0x0020($sp)            
	sdc1    $f20, 0x0018($sp)          
	sw      a1, 0x003C($sp)            
	lh      v0, 0x001C(s3)             ## 0000001C
	sh      $zero, 0x018A(s3)          ## 0000018A
	sh      $zero, 0x018C(s3)          ## 0000018C
	beq     v0, $zero, lbl_80A28468    
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beql    v0, $at, lbl_80A284A4      
	mtc1    $zero, $f0                 ## $f0 = 0.00
	beq     $zero, $zero, lbl_80A2852C 
	lui     a1, 0x3C23                 ## a1 = 3C230000
lbl_80A28468:
	mtc1    $zero, $f0                 ## $f0 = 0.00
	addiu   a0, s3, 0x00B4             ## a0 = 000000B4
	lui     a1, 0x44AF                 ## a1 = 44AF0000
	mfc1    a3, $f0                    
	jal     func_8001EC20              
	or      a2, $zero, $zero           ## a2 = 00000000
	addiu   t6, $zero, 0x4000          ## t6 = 00004000
	lui     a1, %hi(func_80A286B4)     ## a1 = 80A30000
	sh      t6, 0x00B4(s3)             ## 000000B4
	addiu   a1, a1, %lo(func_80A286B4) ## a1 = 80A286B4
	jal     func_80A28410              
	or      a0, s3, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A2852C 
	lui     a1, 0x3C23                 ## a1 = 3C230000
	mtc1    $zero, $f0                 ## $f0 = 0.00
lbl_80A284A4:
	addiu   a0, s3, 0x00B4             ## a0 = 000000B4
	or      a2, $zero, $zero           ## a2 = 00000000
	mfc1    a1, $f0                    
	mfc1    a3, $f0                    
	jal     func_8001EC20              
	nop
	lui     a1, %hi(func_80A28A60)     ## a1 = 80A30000
	addiu   a1, a1, %lo(func_80A28A60) ## a1 = 80A28A60
	jal     func_80A28410              
	or      a0, s3, $zero              ## a0 = 00000000
	lh      t7, 0x018C(s3)             ## 0000018C
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f20                  ## $f20 = 10.00
	ori     t8, t7, 0x0002             ## t8 = 00000002
	sh      t8, 0x018C(s3)             ## 0000018C
	addiu   s1, $zero, 0x0001          ## s1 = 00000001
	or      s0, s3, $zero              ## s0 = 00000000
	or      s2, s3, $zero              ## s2 = 00000000
	addiu   s4, $zero, 0x0011          ## s4 = 00000011
lbl_80A284F0:
	sb      s1, 0x018E(s2)             ## 0000018E
	jal     func_80026D90              
	mov.s   $f12, $f20                 
	swc1    $f0, 0x0198(s0)            ## 00000198
	jal     func_80026D90              
	mov.s   $f12, $f20                 
	swc1    $f0, 0x019C(s0)            ## 0000019C
	jal     func_80026D90              
	mov.s   $f12, $f20                 
	addiu   s1, s1, 0x0002             ## s1 = 00000003
	addiu   s0, s0, 0x000C             ## s0 = 0000000C
	addiu   s2, s2, 0x0001             ## s2 = 00000001
	bne     s1, s4, lbl_80A284F0       
	swc1    $f0, 0x0194(s0)            ## 000001A0
	lui     a1, 0x3C23                 ## a1 = 3C230000
lbl_80A2852C:
	ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
	jal     func_80020F88              
	or      a0, s3, $zero              ## a0 = 00000000
	addiu   s0, s3, 0x013C             ## s0 = 0000013C
	or      a1, s0, $zero              ## a1 = 0000013C
	jal     func_8004AB7C              
	lw      a0, 0x003C($sp)            
	lui     a3, %hi(var_80A28C60)      ## a3 = 80A30000
	addiu   a3, a3, %lo(var_80A28C60)  ## a3 = 80A28C60
	lw      a0, 0x003C($sp)            
	or      a1, s0, $zero              ## a1 = 0000013C
	jal     func_8004ACEC              
	or      a2, s3, $zero              ## a2 = 00000000
	lw      $ra, 0x0034($sp)           
	ldc1    $f20, 0x0018($sp)          
	lw      s0, 0x0020($sp)            
	lw      s1, 0x0024($sp)            
	lw      s2, 0x0028($sp)            
	lw      s3, 0x002C($sp)            
	lw      s4, 0x0030($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80A28584:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	or      a0, a3, $zero              ## a0 = 00000000
	jal     func_8004ABCC              
	addiu   a1, a2, 0x013C             ## a1 = 0000013C
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A285B0:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022BB0              
	lw      a1, 0x002C($sp)            
	beq     v0, $zero, lbl_80A285F0    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A286A4 
	lw      $ra, 0x0024($sp)           
lbl_80A285F0:
	lui     $at, 0x4248                ## $at = 42480000
	mtc1    $at, $f4                   ## $f4 = 50.00
	lw      a1, 0x002C($sp)            
	addiu   a2, $zero, 0x0029          ## a2 = 00000029
	lui     a3, 0x41F0                 ## a3 = 41F00000
	jal     func_80022BD4              
	swc1    $f4, 0x0010($sp)           
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f0                   ## $f0 = 10.00
	mtc1    $zero, $f6                 ## $f6 = 0.00
	addiu   t6, $zero, 0x0005          ## t6 = 00000005
	mfc1    a2, $f0                    
	mfc1    a3, $f0                    
	sw      t6, 0x0014($sp)            
	lw      a0, 0x002C($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_80021E6C              
	swc1    $f6, 0x0010($sp)           
	lhu     t7, 0x0088(s0)             ## 00000088
	andi    t8, t7, 0x0001             ## t8 = 00000000
	beql    t8, $zero, lbl_80A286A4    
	lw      $ra, 0x0024($sp)           
	lh      t9, 0x018A(s0)             ## 0000018A
	addiu   t0, t9, 0xFFFF             ## t0 = FFFFFFFF
	sh      t0, 0x018A(s0)             ## 0000018A
	lh      v0, 0x018A(s0)             ## 0000018A
	slti    $at, v0, 0x003C            
	beq     $at, $zero, lbl_80A28690   
	andi    t1, v0, 0x0001             ## t1 = 00000000
	beql    t1, $zero, lbl_80A28684    
	lh      t4, 0x018C(s0)             ## 0000018C
	lh      t2, 0x018C(s0)             ## 0000018C
	lh      v0, 0x018A(s0)             ## 0000018A
	ori     t3, t2, 0x0002             ## t3 = 00000002
	beq     $zero, $zero, lbl_80A28690 
	sh      t3, 0x018C(s0)             ## 0000018C
	lh      t4, 0x018C(s0)             ## 0000018C
lbl_80A28684:
	lh      v0, 0x018A(s0)             ## 0000018A
	andi    t5, t4, 0xFFFD             ## t5 = 00000000
	sh      t5, 0x018C(s0)             ## 0000018C
lbl_80A28690:
	bnel    v0, $zero, lbl_80A286A4    
	lw      $ra, 0x0024($sp)           
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x0024($sp)           
lbl_80A286A4:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A286B4:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x0034($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022BB0              
	lw      a1, 0x0034($sp)            
	beq     v0, $zero, lbl_80A286EC    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A2878C 
	lw      $ra, 0x0024($sp)           
lbl_80A286EC:
	lui     $at, 0x4248                ## $at = 42480000
	mtc1    $at, $f4                   ## $f4 = 50.00
	lw      a1, 0x0034($sp)            
	addiu   a2, $zero, 0x0029          ## a2 = 00000029
	lui     a3, 0x41F0                 ## a3 = 41F00000
	jal     func_80022BD4              
	swc1    $f4, 0x0010($sp)           
	lbu     t6, 0x014D(s0)             ## 0000014D
	addiu   a2, s0, 0x013C             ## a2 = 0000013C
	or      a1, a2, $zero              ## a1 = 0000013C
	andi    t7, t6, 0x0002             ## t7 = 00000000
	beq     t7, $zero, lbl_80A28768    
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a1, %hi(func_80A285B0)     ## a1 = 80A30000
	addiu   a1, a1, %lo(func_80A285B0) ## a1 = 80A285B0
	jal     func_80A28410              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, 0x4080                ## $at = 40800000
	mtc1    $at, $f6                   ## $f6 = 4.00
	lui     $at, 0xC080                ## $at = C0800000
	mtc1    $at, $f8                   ## $f8 = -4.00
	lui     $at, %hi(var_80A28D40)     ## $at = 80A30000
	swc1    $f6, 0x0060(s0)            ## 00000060
	swc1    $f8, 0x0070(s0)            ## 00000070
	lwc1    $f10, %lo(var_80A28D40)($at) 
	mtc1    $zero, $f16                ## $f16 = 0.00
	addiu   t8, $zero, 0x00A0          ## t8 = 000000A0
	sh      t8, 0x018A(s0)             ## 0000018A
	swc1    $f10, 0x006C(s0)           ## 0000006C
	beq     $zero, $zero, lbl_80A28788 
	swc1    $f16, 0x0068(s0)           ## 00000068
lbl_80A28768:
	jal     func_80050B00              
	sw      a2, 0x002C($sp)            
	lw      a0, 0x0034($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	lw      a2, 0x002C($sp)            
	jal     func_8004BF40              ## CollisionCheck_setAC
	addu    a1, a0, $at                
lbl_80A28788:
	lw      $ra, 0x0024($sp)           
lbl_80A2878C:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A2879C:
	addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
	sw      s3, 0x0054($sp)            
	or      s3, a0, $zero              ## s3 = 00000000
	sw      $ra, 0x006C($sp)           
	sw      s8, 0x0068($sp)            
	sw      s7, 0x0064($sp)            
	sw      s6, 0x0060($sp)            
	sw      s5, 0x005C($sp)            
	sw      s4, 0x0058($sp)            
	sw      s2, 0x0050($sp)            
	sw      s1, 0x004C($sp)            
	sw      s0, 0x0048($sp)            
	sdc1    $f28, 0x0040($sp)          
	sdc1    $f26, 0x0038($sp)          
	sdc1    $f24, 0x0030($sp)          
	sdc1    $f22, 0x0028($sp)          
	sdc1    $f20, 0x0020($sp)          
	sw      a1, 0x0074($sp)            
	jal     func_8002121C              
	or      a0, s3, $zero              ## a0 = 00000000
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f28                  ## $f28 = 10.00
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   t6, $zero, 0x0005          ## t6 = 00000005
	mfc1    a2, $f28                   
	mfc1    a3, $f28                   
	sw      t6, 0x0014($sp)            
	lw      a0, 0x0074($sp)            
	or      a1, s3, $zero              ## a1 = 00000000
	jal     func_80021E6C              
	swc1    $f4, 0x0010($sp)           
	jal     func_800636C4              ## sins?
	lh      a0, 0x00B4(s3)             ## 000000B4
	mtc1    $zero, $f6                 ## $f6 = 0.00
	nop
	c.le.s  $f6, $f0                   
	nop
	bc1f    lbl_80A28848               
	nop
	jal     func_800636C4              ## sins?
	lh      a0, 0x00B4(s3)             ## 000000B4
	beq     $zero, $zero, lbl_80A28854 
	mov.s   $f2, $f0                   
lbl_80A28848:
	jal     func_800636C4              ## sins?
	lh      a0, 0x00B4(s3)             ## 000000B4
	neg.s   $f2, $f0                   
lbl_80A28854:
	lui     $at, %hi(var_80A28D44)     ## $at = 80A30000
	lwc1    $f8, %lo(var_80A28D44)($at) 
	lui     $at, %hi(var_80A28D48)     ## $at = 80A30000
	lui     s7, %hi(var_80A28D00)      ## s7 = 80A30000
	mul.s   $f10, $f2, $f8             
	lui     s6, %hi(var_80A28CB4)      ## s6 = 80A30000
	lui     s5, %hi(var_80A28CC0)      ## s5 = 80A30000
	addiu   s5, s5, %lo(var_80A28CC0)  ## s5 = 80A28CC0
	addiu   s6, s6, %lo(var_80A28CB4)  ## s6 = 80A28CB4
	addiu   s7, s7, %lo(var_80A28D00)  ## s7 = 80A28D00
	or      s1, s3, $zero              ## s1 = 00000000
	swc1    $f10, 0x00BC(s3)           ## 000000BC
	lwc1    $f26, %lo(var_80A28D48)($at) 
	lui     $at, 0xC120                ## $at = C1200000
	mtc1    $at, $f24                  ## $f24 = -10.00
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f22                  ## $f22 = 15.00
	lui     $at, %hi(var_80A28D4C)     ## $at = 80A30000
	lwc1    $f20, %lo(var_80A28D4C)($at) 
	or      s2, $zero, $zero           ## s2 = 00000000
	or      s0, s3, $zero              ## s0 = 00000000
	addiu   s8, $zero, 0x0060          ## s8 = 00000060
	addiu   s4, $zero, 0x000F          ## s4 = 0000000F
lbl_80A288B0:
	lwc1    $f16, 0x0198(s0)           ## 00000198
	lbu     t7, 0x018E(s1)             ## 0000018E
	lui     $at, %hi(var_80A28CB4)     ## $at = 80A30000
	swc1    $f16, %lo(var_80A28CB4)($at) 
	lwc1    $f4, 0x00BC(s3)            ## 000000BC
	subu    v1, s4, t7                 
	sll     v0, v1,  2                 
	addu    t8, s5, v0                 
	mul.s   $f6, $f4, $f26             
	lwc1    $f0, 0x0000(t8)            ## 00000000
	lwc1    $f18, 0x019C(s0)           ## 0000019C
	addu    t0, s7, v0                 
	mul.s   $f10, $f0, $f24            
	addiu   t9, $zero, 0xFFFF          ## t9 = FFFFFFFF
	lw      a0, 0x0074($sp)            
	or      a1, s3, $zero              ## a1 = 00000000
	or      a2, s6, $zero              ## a2 = 80A28CB4
	add.s   $f8, $f18, $f6             
	mul.s   $f16, $f10, $f20           
	add.s   $f4, $f16, $f8             
	mul.s   $f6, $f0, $f20             
	swc1    $f4, %lo(var_80A28CB8)($at) 
	lwc1    $f18, 0x01A0(s0)           ## 000001A0
	sw      t9, 0x0010($sp)            
	swc1    $f18, %lo(var_80A28CBC)($at) 
	lwc1    $f10, 0x0000(t0)           ## 00000000
	mfc1    a3, $f6                    
	jal     func_8001DED8              
	swc1    $f10, 0x0014($sp)          
	lbu     v0, 0x018E(s1)             ## 0000018E
	beq     v0, $zero, lbl_80A28938    
	addiu   t1, v0, 0xFFFF             ## t1 = FFFFFFFF
	beq     $zero, $zero, lbl_80A28974 
	sb      t1, 0x018E(s1)             ## 0000018E
lbl_80A28938:
	lh      t2, 0x018A(s3)             ## 0000018A
	addiu   t3, $zero, 0x000F          ## t3 = 0000000F
	slti    $at, t2, 0x0011            
	bnel    $at, $zero, lbl_80A28978   
	addiu   s2, s2, 0x000C             ## s2 = 0000000C
	sb      t3, 0x018E(s1)             ## 0000018E
	jal     func_80026D90              
	mov.s   $f12, $f22                 
	swc1    $f0, 0x0198(s0)            ## 00000198
	jal     func_80026D90              
	mov.s   $f12, $f28                 
	swc1    $f0, 0x019C(s0)            ## 0000019C
	jal     func_80026D90              
	mov.s   $f12, $f22                 
	swc1    $f0, 0x01A0(s0)            ## 000001A0
lbl_80A28974:
	addiu   s2, s2, 0x000C             ## s2 = 00000018
lbl_80A28978:
	addiu   s1, s1, 0x0001             ## s1 = 00000001
	bne     s2, s8, lbl_80A288B0       
	addiu   s0, s0, 0x000C             ## s0 = 0000000C
	lhu     t4, 0x0088(s3)             ## 00000088
	andi    t5, t4, 0x0001             ## t5 = 00000000
	beql    t5, $zero, lbl_80A28A20    
	lw      $ra, 0x006C($sp)           
	lh      v0, 0x00B4(s3)             ## 000000B4
	lh      t6, 0x0188(s3)             ## 00000188
	lh      s0, 0x018A(s3)             ## 0000018A
	sra     t7, v0,  1                 
	subu    t8, t6, t7                 
	sh      t8, 0x0188(s3)             ## 00000188
	lh      v1, 0x0188(s3)             ## 00000188
	slti    $at, s0, 0x0008            
	sra     t9, v1,  2                 
	subu    t0, v1, t9                 
	sh      t0, 0x0188(s3)             ## 00000188
	lh      t1, 0x0188(s3)             ## 00000188
	addu    t2, v0, t1                 
	bne     $at, $zero, lbl_80A28A04   
	sh      t2, 0x00B4(s3)             ## 000000B4
	slti    $at, s0, 0x0018            
	beq     $at, $zero, lbl_80A28A04   
	addiu   t3, s0, 0xFFF8             ## t3 = 00000004
	mtc1    t3, $f16                   ## $f16 = 0.00
	lui     $at, %hi(var_80A28D50)     ## $at = 80A30000
	lwc1    $f4, %lo(var_80A28D50)($at) 
	cvt.s.w $f8, $f16                  
	or      a0, s3, $zero              ## a0 = 00000000
	mul.s   $f18, $f8, $f4             
	mfc1    a1, $f18                   
	jal     func_80020F88              
	nop
	lh      s0, 0x018A(s3)             ## 0000018A
lbl_80A28A04:
	beq     s0, $zero, lbl_80A28A14    
	addiu   t4, s0, 0xFFFF             ## t4 = 0000000B
	beq     $zero, $zero, lbl_80A28A1C 
	sh      t4, 0x018A(s3)             ## 0000018A
lbl_80A28A14:
	jal     func_80020EB4              
	or      a0, s3, $zero              ## a0 = 00000000
lbl_80A28A1C:
	lw      $ra, 0x006C($sp)           
lbl_80A28A20:
	ldc1    $f20, 0x0020($sp)          
	ldc1    $f22, 0x0028($sp)          
	ldc1    $f24, 0x0030($sp)          
	ldc1    $f26, 0x0038($sp)          
	ldc1    $f28, 0x0040($sp)          
	lw      s0, 0x0048($sp)            
	lw      s1, 0x004C($sp)            
	lw      s2, 0x0050($sp)            
	lw      s3, 0x0054($sp)            
	lw      s4, 0x0058($sp)            
	lw      s5, 0x005C($sp)            
	lw      s6, 0x0060($sp)            
	lw      s7, 0x0064($sp)            
	lw      s8, 0x0068($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0070           ## $sp = 00000000


func_80A28A60:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lw      a2, 0x1C44(a1)             ## 00001C44
	lh      t6, 0x018C(s0)             ## 0000018C
	lwc1    $f4, 0x0A40(a2)            ## 00000A40
	andi    t7, t6, 0xFFFD             ## t7 = 00000000
	swc1    $f4, 0x0024(s0)            ## 00000024
	lwc1    $f6, 0x0A44(a2)            ## 00000A44
	swc1    $f6, 0x0028(s0)            ## 00000028
	lwc1    $f8, 0x0A48(a2)            ## 00000A48
	sh      t7, 0x018C(s0)             ## 0000018C
	swc1    $f8, 0x002C(s0)            ## 0000002C
	lwc1    $f14, 0x0A30(a2)           ## 00000A30
	lwc1    $f12, 0x0A38(a2)           ## 00000A38
	sw      a2, 0x0020($sp)            
	neg.s   $f14, $f14                 
	jal     func_800AA4F8              
	neg.s   $f12, $f12                 
	lw      a2, 0x0020($sp)            
	sh      v0, 0x00B6(s0)             ## 000000B6
	addiu   v1, a2, 0x0A10             ## v1 = 00000A10
	lwc1    $f2, 0x0028(v1)            ## 00000A38
	lwc1    $f16, 0x0020(v1)           ## 00000A30
	lwc1    $f12, 0x0024(v1)           ## 00000A34
	mul.s   $f10, $f2, $f2             
	neg.s   $f12, $f12                 
	mul.s   $f18, $f16, $f16           
	add.s   $f0, $f10, $f18            
	jal     func_800AA4F8              
	sqrt.s  $f14, $f0                  
	sh      v0, 0x00B4(s0)             ## 000000B4
	lh      v1, 0x00B4(s0)             ## 000000B4
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a1, %hi(func_80A2879C)     ## a1 = 80A30000
	bltz    v1, lbl_80A28B00           
	subu    v0, $zero, v1              
	beq     $zero, $zero, lbl_80A28B00 
	or      v0, v1, $zero              ## v0 = 00000000
lbl_80A28B00:
	slti    $at, v0, 0x4001            
	bne     $at, $zero, lbl_80A28B18   
	nop
	lh      t8, 0x018C(s0)             ## 0000018C
	ori     t9, t8, 0x0001             ## t9 = 00000001
	sh      t9, 0x018C(s0)             ## 0000018C
lbl_80A28B18:
	jal     func_80A28410              
	addiu   a1, a1, %lo(func_80A2879C) ## a1 = 80A2879C
	lui     $at, 0x4080                ## $at = 40800000
	mtc1    $at, $f4                   ## $f4 = 4.00
	lui     $at, 0xC080                ## $at = C0800000
	mtc1    $at, $f6                   ## $f6 = -4.00
	lui     $at, %hi(var_80A28D54)     ## $at = 80A30000
	swc1    $f4, 0x0060(s0)            ## 00000060
	swc1    $f6, 0x0070(s0)            ## 00000070
	lwc1    $f8, %lo(var_80A28D54)($at) 
	mtc1    $zero, $f10                ## $f10 = 0.00
	addiu   t0, $zero, 0x0046          ## t0 = 00000046
	sh      $zero, 0x0188(s0)          ## 00000188
	sh      t0, 0x018A(s0)             ## 0000018A
	swc1    $f8, 0x006C(s0)            ## 0000006C
	swc1    $f10, 0x0068(s0)           ## 00000068
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A28B6C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lw      t9, 0x01F8(a0)             ## 000001F8
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A28B90:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x002C($sp)            
	lh      t6, 0x018C(a0)             ## 0000018C
	lw      t8, 0x002C($sp)            
	andi    t7, t6, 0x0002             ## t7 = 00000000
	bnel    t7, $zero, lbl_80A28C48    
	lw      $ra, 0x0014($sp)           
	lw      a0, 0x0000(t8)             ## 00000000
	jal     func_8007E298              
	sw      a0, 0x0020($sp)            
	lw      a2, 0x0020($sp)            
	lw      v1, 0x02C0(a2)             ## 000002C0
	lui     t0, 0xDA38                 ## t0 = DA380000
	ori     t0, t0, 0x0003             ## t0 = DA380003
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a2)             ## 000002C0
	sw      t0, 0x0000(v1)             ## 00000000
	lw      t1, 0x002C($sp)            
	lw      a0, 0x0000(t1)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	lw      a2, 0x0020($sp)            
	lui     t3, 0xDE00                 ## t3 = DE000000
	sw      v0, 0x0004(a3)             ## 00000004
	lw      v1, 0x02C0(a2)             ## 000002C0
	lui     a1, 0x0602                 ## a1 = 06020000
	addiu   a1, a1, 0x24F8             ## a1 = 060224F8
	sll     t4, a1,  4                 
	srl     t5, t4, 28                 
	addiu   t2, v1, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(a2)             ## 000002C0
	sll     t6, t5,  2                 
	lui     t7, 0x8012                 ## t7 = 80120000
	addu    t7, t7, t6                 
	lui     $at, 0x00FF                ## $at = 00FF0000
	sw      t3, 0x0000(v1)             ## 00000000
	lw      t7, 0x0C38(t7)             ## 80120C38
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	and     t8, a1, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t9, t7, t8                 
	addu    t0, t9, $at                
	sw      t0, 0x0004(v1)             ## 00000004
	lw      $ra, 0x0014($sp)           
lbl_80A28C48:
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop
	nop

.section .data

var_80A28C60: .word \
0x0A000939, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000004, 0x00000000, 0x00010100, \
0x000F000F, 0x00000000, 0x00000000
var_80A28C8C: .word 0x00EE0700, 0x00000010, 0x00150000, 0x000001FC
.word func_80A2841C
.word func_80A28584
.word func_80A28B6C
.word func_80A28B90
.word 0xFFFF00FF, 0xFF0000FF
var_80A28CB4: .word 0x00000000
var_80A28CB8: .word 0x00000000
var_80A28CBC: .word 0x00000000
var_80A28CC0: .word \
0x3E99999A, 0x3F19999A, 0x3F666666, 0x3F800000, \
0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000, \
0x3F800000, 0x3F59999A, 0x3F333333, 0x3F0CCCCD, \
0x3ECCCCCD, 0x3E800000, 0x3DCCCCCD, 0x00000000
var_80A28D00: .word \
0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000, \
0x3F800000, 0x3F800000, 0x3F800000, 0x3F4CCCCD, \
0x3F19999A, 0x3ECCCCCD, 0x3E4CCCCD, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80A28D40: .word 0xBF4CCCCD
var_80A28D44: .word 0x44BB8000
var_80A28D48: .word 0x3C23D70A
var_80A28D4C: .word 0x3E4CCCCD
var_80A28D50: .word 0x3A23D70A
var_80A28D54: .word 0xBF4CCCCD, 0x00000000, 0x00000000

