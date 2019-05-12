#include <mips.h>
.set noreorder
.set noat

.section .text
func_80ABD750:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s4, 0x0030($sp)            
	sw      s2, 0x0028($sp)            
	or      s2, a0, $zero              ## s2 = 00000000
	or      s4, a1, $zero              ## s4 = 00000000
	sw      $ra, 0x003C($sp)           
	sw      s6, 0x0038($sp)            
	sw      s5, 0x0034($sp)            
	sw      s3, 0x002C($sp)            
	sw      s1, 0x0024($sp)            
	sw      s0, 0x0020($sp)            
	sdc1    $f20, 0x0018($sp)          
	addiu   s5, s4, 0x0024             ## s5 = 00000024
	or      a1, s5, $zero              ## a1 = 00000024
	jal     func_80063CAC              ## Vec3f_Copy
	or      a0, s2, $zero              ## a0 = 00000000
	lh      t6, 0x001C(s4)             ## 0000001C
	lui     s6, %hi(var_80ABE018)      ## s6 = 80AC0000
	addiu   s6, s6, %lo(var_80ABE018)  ## s6 = 80ABE018
	andi    t7, t6, 0x0003             ## t7 = 00000000
	sll     t8, t7,  1                 
	addu    t9, s6, t8                 
	lh      t0, 0x0000(t9)             ## 00000000
	addiu   s3, $zero, 0x0001          ## s3 = 00000001
	addiu   s0, s2, 0x000C             ## s0 = 0000000C
	slti    $at, t0, 0x0002            
	bne     $at, $zero, lbl_80ABD840   
	lui     $at, 0x42A0                ## $at = 42A00000
	mtc1    $at, $f20                  ## $f20 = 80.00
	or      s1, $zero, $zero           ## s1 = 00000000
	or      a0, s0, $zero              ## a0 = 0000000C
lbl_80ABD7CC:
	jal     func_80063CAC              ## Vec3f_Copy
	or      a1, s5, $zero              ## a1 = 00000024
	sll     s2, s1, 16                 
	sra     s2, s2, 16                 
	sll     a0, s2, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	mul.s   $f6, $f20, $f0             
	lwc1    $f4, 0x0000(s0)            ## 0000000C
	sll     a0, s2, 16                 
	sra     a0, a0, 16                 
	add.s   $f8, $f4, $f6              
	jal     func_80063684              ## coss?
	swc1    $f8, 0x0000(s0)            ## 0000000C
	mul.s   $f16, $f20, $f0            
	lwc1    $f10, 0x0008(s0)           ## 00000014
	addiu   s3, s3, 0x0001             ## s3 = 00000002
	addiu   s0, s0, 0x000C             ## s0 = 00000018
	addiu   s1, s1, 0x2000             ## s1 = 00002000
	add.s   $f18, $f10, $f16           
	swc1    $f18, -0x0004(s0)          ## 00000014
	lh      t1, 0x001C(s4)             ## 0000001C
	andi    t2, t1, 0x0003             ## t2 = 00000000
	sll     t3, t2,  1                 
	addu    t4, s6, t3                 
	lh      t5, 0x0000(t4)             ## 00000000
	slt     $at, s3, t5                
	bnel    $at, $zero, lbl_80ABD7CC   
	or      a0, s0, $zero              ## a0 = 00000018
lbl_80ABD840:
	lw      $ra, 0x003C($sp)           
	ldc1    $f20, 0x0018($sp)          
	lw      s0, 0x0020($sp)            
	lw      s1, 0x0024($sp)            
	lw      s2, 0x0028($sp)            
	lw      s3, 0x002C($sp)            
	lw      s4, 0x0030($sp)            
	lw      s5, 0x0034($sp)            
	lw      s6, 0x0038($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_80ABD86C:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s5, 0x0028($sp)            
	lui     s5, %hi(var_80ABE018)      ## s5 = 80AC0000
	sw      s4, 0x0024($sp)            
	or      s4, a1, $zero              ## s4 = 00000000
	addiu   s5, s5, %lo(var_80ABE018)  ## s5 = 80ABE018
	sw      $ra, 0x002C($sp)           
	sw      s3, 0x0020($sp)            
	sw      s2, 0x001C($sp)            
	sw      s1, 0x0018($sp)            
	sw      s0, 0x0014($sp)            
	lh      t6, 0x001C(s4)             ## 0000001C
	lui     s1, %hi(var_80ABE028)      ## s1 = 80AC0000
	addiu   s1, s1, %lo(var_80ABE028)  ## s1 = 80ABE028
	andi    t7, t6, 0x0003             ## t7 = 00000000
	sll     t8, t7,  1                 
	addu    t9, s5, t8                 
	lh      t0, 0x0000(t9)             ## 00000000
	or      s2, $zero, $zero           ## s2 = 00000000
	or      s0, a0, $zero              ## s0 = 00000000
	blez    t0, lbl_80ABD948           
	addiu   s3, s4, 0x0024             ## s3 = 00000024
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80ABD8C8:
	jal     func_80063CAC              ## Vec3f_Copy
	or      a1, s3, $zero              ## a1 = 00000024
	jal     func_80063684              ## coss?
	lh      a0, 0x0002(s1)             ## 80ABE02A
	lh      t1, 0x0000(s1)             ## 80ABE028
	lwc1    $f4, 0x0000(s0)            ## 00000000
	mtc1    t1, $f6                    ## $f6 = 0.00
	nop
	cvt.s.w $f8, $f6                   
	mul.s   $f10, $f8, $f0             
	add.s   $f16, $f4, $f10            
	swc1    $f16, 0x0000(s0)           ## 00000000
	jal     func_800636C4              ## sins?
	lh      a0, 0x0002(s1)             ## 80ABE02A
	lh      t2, 0x0000(s1)             ## 80ABE028
	lwc1    $f18, 0x0008(s0)           ## 00000008
	addiu   s2, s2, 0x0001             ## s2 = 00000001
	mtc1    t2, $f6                    ## $f6 = 0.00
	addiu   s0, s0, 0x000C             ## s0 = 0000000C
	addiu   s1, s1, 0x0004             ## s1 = 80ABE02C
	cvt.s.w $f8, $f6                   
	mul.s   $f4, $f8, $f0              
	sub.s   $f10, $f18, $f4            
	swc1    $f10, -0x0004(s0)          ## 00000008
	lh      t3, 0x001C(s4)             ## 0000001C
	andi    t4, t3, 0x0003             ## t4 = 00000000
	sll     t5, t4,  1                 
	addu    t6, s5, t5                 
	lh      t7, 0x0000(t6)             ## 00000000
	slt     $at, s2, t7                
	bnel    $at, $zero, lbl_80ABD8C8   
	or      a0, s0, $zero              ## a0 = 0000000C
lbl_80ABD948:
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	lw      s2, 0x001C($sp)            
	lw      s3, 0x0020($sp)            
	lw      s4, 0x0024($sp)            
	lw      s5, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_80ABD96C:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s6, 0x0038($sp)            
	lui     s6, %hi(var_80ABE018)      ## s6 = 80AC0000
	sw      s5, 0x0034($sp)            
	or      s5, a1, $zero              ## s5 = 00000000
	addiu   s6, s6, %lo(var_80ABE018)  ## s6 = 80ABE018
	sw      $ra, 0x003C($sp)           
	sw      s4, 0x0030($sp)            
	sw      s3, 0x002C($sp)            
	sw      s2, 0x0028($sp)            
	sw      s1, 0x0024($sp)            
	sw      s0, 0x0020($sp)            
	sdc1    $f20, 0x0018($sp)          
	lh      t6, 0x001C(s5)             ## 0000001C
	or      s3, $zero, $zero           ## s3 = 00000000
	or      s0, a0, $zero              ## s0 = 00000000
	andi    t7, t6, 0x0003             ## t7 = 00000000
	sll     t8, t7,  1                 
	addu    t9, s6, t8                 
	lh      t0, 0x0000(t9)             ## 00000000
	addiu   s4, s5, 0x0024             ## s4 = 00000024
	lui     $at, 0x42A0                ## $at = 42A00000
	blezl   t0, lbl_80ABDA50           
	lw      $ra, 0x003C($sp)           
	mtc1    $at, $f20                  ## $f20 = 80.00
	or      s1, $zero, $zero           ## s1 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80ABD9D8:
	jal     func_80063CAC              ## Vec3f_Copy
	or      a1, s4, $zero              ## a1 = 00000024
	sll     s2, s1, 16                 
	sra     s2, s2, 16                 
	sll     a0, s2, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	mul.s   $f6, $f20, $f0             
	lwc1    $f4, 0x0000(s0)            ## 00000000
	sll     a0, s2, 16                 
	sra     a0, a0, 16                 
	add.s   $f8, $f4, $f6              
	jal     func_80063684              ## coss?
	swc1    $f8, 0x0000(s0)            ## 00000000
	mul.s   $f16, $f20, $f0            
	lwc1    $f10, 0x0008(s0)           ## 00000008
	addiu   s3, s3, 0x0001             ## s3 = 00000001
	addiu   s0, s0, 0x000C             ## s0 = 0000000C
	addiu   s1, s1, 0x2000             ## s1 = 00002000
	add.s   $f18, $f10, $f16           
	swc1    $f18, -0x0004(s0)          ## 00000008
	lh      t1, 0x001C(s5)             ## 0000001C
	andi    t2, t1, 0x0003             ## t2 = 00000000
	sll     t3, t2,  1                 
	addu    t4, s6, t3                 
	lh      t5, 0x0000(t4)             ## 00000000
	slt     $at, s3, t5                
	bnel    $at, $zero, lbl_80ABD9D8   
	or      a0, s0, $zero              ## a0 = 0000000C
	lw      $ra, 0x003C($sp)           
lbl_80ABDA50:
	ldc1    $f20, 0x0018($sp)          
	lw      s0, 0x0020($sp)            
	lw      s1, 0x0024($sp)            
	lw      s2, 0x0028($sp)            
	lw      s3, 0x002C($sp)            
	lw      s4, 0x0030($sp)            
	lw      s5, 0x0034($sp)            
	lw      s6, 0x0038($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_80ABDA78:
	lh      v1, 0x001C(a1)             ## 0000001C
	lui     t8, %hi(var_80ABE058)      ## t8 = 80AC0000
	sra     v0, v1,  8                 
	andi    v0, v0, 0x000F             ## v0 = 00000000
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x000D            
	bne     $at, $zero, lbl_80ABDAA0   
	andi    t6, v1, 0x0003             ## t6 = 00000000
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80ABDAA0:
	sll     t7, t6,  1                 
	addu    t8, t8, t7                 
	lh      t8, %lo(var_80ABE058)(t8)  
	sll     t1, v0,  8                 
	andi    t9, t8, 0xF0FF             ## t9 = 00000000
	sh      t9, 0x0000(a0)             ## 00000000
	lh      t0, 0x0000(a0)             ## 00000000
	or      t2, t0, t1                 ## t2 = 00000000
	sh      t2, 0x0000(a0)             ## 00000000
	jr      $ra                        
	nop


func_80ABDACC:
	addiu   $sp, $sp, 0xFEF8           ## $sp = FFFFFEF8
	sw      s8, 0x0050($sp)            
	sw      s3, 0x003C($sp)            
	sw      s2, 0x0038($sp)            
	or      s2, a0, $zero              ## s2 = 00000000
	or      s3, a1, $zero              ## s3 = 00000000
	addiu   s8, $sp, 0x0070            ## s8 = FFFFFF68
	sw      $ra, 0x0054($sp)           
	sw      s7, 0x004C($sp)            
	sw      s6, 0x0048($sp)            
	sw      s5, 0x0044($sp)            
	sw      s4, 0x0040($sp)            
	sw      s1, 0x0034($sp)            
	sw      s0, 0x0030($sp)            
	lh      s0, 0x001C(s2)             ## 0000001C
	lui     t9, %hi(var_80ABE060)      ## t9 = 80AC0000
	or      a0, s8, $zero              ## a0 = FFFFFF68
	andi    s0, s0, 0x0003             ## s0 = 00000000
	sll     t6, s0,  2                 
	addu    t9, t9, t6                 
	lw      t9, %lo(var_80ABE060)(t9)  
	or      a1, s2, $zero              ## a1 = 00000000
	jalr    $ra, t9                    
	nop
	addiu   a0, $sp, 0x006E            ## a0 = FFFFFF66
	jal     func_80ABDA78              
	or      a1, s2, $zero              ## a1 = 00000000
	lui     t7, %hi(var_80ABE018)      ## t7 = 80AC0000
	addiu   t7, t7, %lo(var_80ABE018)  ## t7 = 80ABE018
	sll     s6, s0,  1                 
	addu    s7, s6, t7                 
	lh      v0, 0x0000(s7)             ## 00000000
	or      s0, s2, $zero              ## s0 = 00000000
	or      s1, $zero, $zero           ## s1 = 00000000
	blez    v0, lbl_80ABDBF8           
	addiu   s5, $zero, 0x000C          ## s5 = 0000000C
	lui     s4, %hi(var_80ABE020)      ## s4 = 80AC0000
	addiu   s4, s4, %lo(var_80ABE020)  ## s4 = 80ABE020
lbl_80ABDB64:
	lw      t8, 0x0140(s0)             ## 00000140
	bnel    t8, $zero, lbl_80ABDBEC    
	addiu   s1, s1, 0x0001             ## s1 = 00000001
	lhu     t0, 0x0170(s2)             ## 00000170
	srav    t1, t0, s1                 
	andi    t2, t1, 0x0001             ## t2 = 00000000
	bnel    t2, $zero, lbl_80ABDBE8    
	lh      v0, 0x0000(s7)             ## 00000000
	multu   s1, s5                     
	addu    t3, s4, s6                 
	lh      a2, 0x0000(t3)             ## 00000000
	lh      t9, 0x006E($sp)            
	addiu   a0, s3, 0x1C24             ## a0 = 00001C24
	or      a1, s3, $zero              ## a1 = 00000000
	mflo    t4                         
	addu    v0, s8, t4                 
	lwc1    $f4, 0x0004(v0)            ## 00000004
	lw      a3, 0x0000(v0)             ## 00000000
	swc1    $f4, 0x0010($sp)           
	lwc1    $f6, 0x0008(v0)            ## 00000008
	swc1    $f6, 0x0014($sp)           
	lh      t5, 0x0030(s2)             ## 00000030
	sw      $zero, 0x001C($sp)         
	sw      t5, 0x0018($sp)            
	lh      t6, 0x0034(s2)             ## 00000034
	sw      t9, 0x0024($sp)            
	jal     func_80025110              ## ActorSpawn
	sw      t6, 0x0020($sp)            
	beq     v0, $zero, lbl_80ABDBE4    
	sw      v0, 0x0140(s0)             ## 00000140
	lb      t7, 0x0003(s2)             ## 00000003
	sb      t7, 0x0003(v0)             ## 00000003
lbl_80ABDBE4:
	lh      v0, 0x0000(s7)             ## 00000000
lbl_80ABDBE8:
	addiu   s1, s1, 0x0001             ## s1 = 00000002
lbl_80ABDBEC:
	slt     $at, s1, v0                
	bne     $at, $zero, lbl_80ABDB64   
	addiu   s0, s0, 0x0004             ## s0 = 00000004
lbl_80ABDBF8:
	lw      $ra, 0x0054($sp)           
	lw      s0, 0x0030($sp)            
	lw      s1, 0x0034($sp)            
	lw      s2, 0x0038($sp)            
	lw      s3, 0x003C($sp)            
	lw      s4, 0x0040($sp)            
	lw      s5, 0x0044($sp)            
	lw      s6, 0x0048($sp)            
	lw      s7, 0x004C($sp)            
	lw      s8, 0x0050($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0108           ## $sp = 00000000


func_80ABDC28:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s3, 0x0020($sp)            
	sw      s1, 0x0018($sp)            
	or      s1, a0, $zero              ## s1 = 00000000
	or      s3, a1, $zero              ## s3 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      s2, 0x001C($sp)            
	sw      s0, 0x0014($sp)            
	lh      t6, 0x001C(s1)             ## 0000001C
	lui     v0, %hi(var_80ABE018)      ## v0 = 80AC0000
	or      s2, $zero, $zero           ## s2 = 00000000
	andi    t7, t6, 0x0003             ## t7 = 00000000
	sll     t8, t7,  1                 
	addu    v0, v0, t8                 
	lh      v0, %lo(var_80ABE018)(v0)  
	or      s0, s1, $zero              ## s0 = 00000000
	blezl   v0, lbl_80ABDD10           
	lw      $ra, 0x0024($sp)           
lbl_80ABDC70:
	lhu     t9, 0x0170(s1)             ## 00000170
	srav    t0, t9, s2                 
	andi    t1, t0, 0x0001             ## t1 = 00000000
	bnel    t1, $zero, lbl_80ABDCE4    
	sw      $zero, 0x0140(s0)          ## 00000140
	lw      a0, 0x0140(s0)             ## 00000140
	beql    a0, $zero, lbl_80ABDD00    
	addiu   s2, s2, 0x0001             ## s2 = 00000001
	jal     func_80022BB0              
	or      a1, s3, $zero              ## a1 = 00000000
	beq     v0, $zero, lbl_80ABDCB8    
	nop
	lhu     t2, 0x0170(s1)             ## 00000170
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	sllv    t4, t3, s2                 
	or      t5, t2, t4                 ## t5 = 00000000
	beq     $zero, $zero, lbl_80ABDCC0 
	sh      t5, 0x0170(s1)             ## 00000170
lbl_80ABDCB8:
	jal     func_80020EB4              
	lw      a0, 0x0140(s0)             ## 00000140
lbl_80ABDCC0:
	sw      $zero, 0x0140(s0)          ## 00000140
	lh      t6, 0x001C(s1)             ## 0000001C
	lui     v0, %hi(var_80ABE018)      ## v0 = 80AC0000
	andi    t7, t6, 0x0003             ## t7 = 00000000
	sll     t8, t7,  1                 
	addu    v0, v0, t8                 
	beq     $zero, $zero, lbl_80ABDCFC 
	lh      v0, %lo(var_80ABE018)(v0)  
	sw      $zero, 0x0140(s0)          ## 00000140
lbl_80ABDCE4:
	lh      t9, 0x001C(s1)             ## 0000001C
	lui     v0, %hi(var_80ABE018)      ## v0 = 80AC0000
	andi    t0, t9, 0x0003             ## t0 = 00000000
	sll     t1, t0,  1                 
	addu    v0, v0, t1                 
	lh      v0, %lo(var_80ABE018)(v0)  
lbl_80ABDCFC:
	addiu   s2, s2, 0x0001             ## s2 = 00000002
lbl_80ABDD00:
	slt     $at, s2, v0                
	bne     $at, $zero, lbl_80ABDC70   
	addiu   s0, s0, 0x0004             ## s0 = 00000004
	lw      $ra, 0x0024($sp)           
lbl_80ABDD10:
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	lw      s2, 0x001C($sp)            
	lw      s3, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80ABDD28:
	lh      t6, 0x001C(a0)             ## 0000001C
	lui     v1, %hi(var_80ABE018)      ## v1 = 80AC0000
	or      v0, $zero, $zero           ## v0 = 00000000
	andi    t7, t6, 0x0003             ## t7 = 00000000
	sll     t8, t7,  1                 
	addu    v1, v1, t8                 
	lh      v1, %lo(var_80ABE018)(v1)  
	or      a1, a0, $zero              ## a1 = 00000000
	blez    v1, lbl_80ABDDB4           
	nop
lbl_80ABDD50:
	lw      a2, 0x0140(a1)             ## 00000140
	beql    a2, $zero, lbl_80ABDDA8    
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	lhu     a3, 0x0170(a0)             ## 00000170
	srav    t9, a3, v0                 
	andi    t0, t9, 0x0001             ## t0 = 00000000
	bnel    t0, $zero, lbl_80ABDDA8    
	addiu   v0, v0, 0x0001             ## v0 = 00000002
	lw      t1, 0x0130(a2)             ## 00000130
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	sllv    t3, t2, v0                 
	bne     t1, $zero, lbl_80ABDDA4    
	or      t4, a3, t3                 ## t4 = 00000000
	sh      t4, 0x0170(a0)             ## 00000170
	sw      $zero, 0x0140(a1)          ## 00000140
	lh      t5, 0x001C(a0)             ## 0000001C
	lui     v1, %hi(var_80ABE018)      ## v1 = 80AC0000
	andi    t6, t5, 0x0003             ## t6 = 00000000
	sll     t7, t6,  1                 
	addu    v1, v1, t7                 
	lh      v1, %lo(var_80ABE018)(v1)  
lbl_80ABDDA4:
	addiu   v0, v0, 0x0001             ## v0 = 00000003
lbl_80ABDDA8:
	slt     $at, v0, v1                
	bne     $at, $zero, lbl_80ABDD50   
	addiu   a1, a1, 0x0004             ## a1 = 00000004
lbl_80ABDDB4:
	jr      $ra                        
	nop


func_80ABDDBC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lui     a1, %hi(var_80ABE06C)      ## a1 = 80AC0000
	addiu   a1, a1, %lo(var_80ABE06C)  ## a1 = 80ABE06C
	jal     func_80063F7C              
	sw      a0, 0x0018($sp)            
	lw      t6, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	lui     $at, 0x4496                ## $at = 44960000
	lbu     t7, 0x1D6C(t6)             ## 00001D6C
	beq     t7, $zero, lbl_80ABDE04    
	nop
	lwc1    $f4, 0x00F4(a0)            ## 000000F4
	mtc1    $at, $f6                   ## $f6 = 1200.00
	nop
	add.s   $f8, $f4, $f6              
	swc1    $f8, 0x00F4(a0)            ## 000000F4
lbl_80ABDE04:
	jal     func_80ABDE1C              
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80ABDE1C:
	lui     t6, %hi(func_80ABDE30)     ## t6 = 80AC0000
	addiu   t6, t6, %lo(func_80ABDE30) ## t6 = 80ABDE30
	sw      t6, 0x013C(a0)             ## 0000013C
	jr      $ra                        
	nop


func_80ABDE30:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	jal     func_80ABDE54              
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80ABDE54:
	lui     t6, %hi(func_80ABDE68)     ## t6 = 80AC0000
	addiu   t6, t6, %lo(func_80ABDE68) ## t6 = 80ABDE68
	sw      t6, 0x013C(a0)             ## 0000013C
	jr      $ra                        
	nop


func_80ABDE68:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lwc1    $f12, 0x00E4(a0)           ## 000000E4
	lwc1    $f14, 0x00EC(a0)           ## 000000EC
	jal     func_800A5434              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	lui     $at, %hi(var_80ABE000)     ## $at = 80AC0000
	lh      t6, 0x001C(a0)             ## 0000001C
	lwc1    $f6, 0x0174(a0)            ## 00000174
	andi    t7, t6, 0x0003             ## t7 = 00000000
	sll     t8, t7,  2                 
	addu    $at, $at, t8               
	lwc1    $f4, %lo(var_80ABE000)($at) 
	mul.s   $f8, $f4, $f6              
	c.lt.s  $f0, $f8                   
	nop
	bc1fl   lbl_80ABDEDC               
	lw      $ra, 0x0014($sp)           
	lw      t9, 0x0004(a0)             ## 00000004
	ori     t0, t9, 0x0010             ## t0 = 00000010
	sw      t0, 0x0004(a0)             ## 00000004
	sw      a0, 0x0018($sp)            
	jal     func_80ABDACC              
	lw      a1, 0x001C($sp)            
	jal     func_80ABDEE8              
	lw      a0, 0x0018($sp)            
	lw      $ra, 0x0014($sp)           
lbl_80ABDEDC:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80ABDEE8:
	lui     t6, %hi(func_80ABDEFC)     ## t6 = 80AC0000
	addiu   t6, t6, %lo(func_80ABDEFC) ## t6 = 80ABDEFC
	sw      t6, 0x013C(a0)             ## 0000013C
	jr      $ra                        
	nop


func_80ABDEFC:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_80ABDD28              
	or      a0, s0, $zero              ## a0 = 00000000
	lwc1    $f12, 0x00E4(s0)           ## 000000E4
	jal     func_800A5434              
	lwc1    $f14, 0x00EC(s0)           ## 000000EC
	lh      t6, 0x001C(s0)             ## 0000001C
	lui     $at, %hi(var_80ABE00C)     ## $at = 80AC0000
	lwc1    $f6, 0x0174(s0)            ## 00000174
	andi    t7, t6, 0x0003             ## t7 = 00000000
	sll     t8, t7,  2                 
	addu    $at, $at, t8               
	lwc1    $f4, %lo(var_80ABE00C)($at) 
	mul.s   $f8, $f4, $f6              
	c.le.s  $f8, $f0                   
	nop
	bc1fl   lbl_80ABDF7C               
	lw      $ra, 0x001C($sp)           
	lw      t9, 0x0004(s0)             ## 00000004
	addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
	or      a0, s0, $zero              ## a0 = 00000000
	and     t0, t9, $at                
	sw      t0, 0x0004(s0)             ## 00000004
	jal     func_80ABDC28              
	lw      a1, 0x0024($sp)            
	jal     func_80ABDE54              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x001C($sp)           
lbl_80ABDF7C:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80ABDF8C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lbu     t6, 0x1D6C(a1)             ## 00001D6C
	lui     $at, 0x4080                ## $at = 40800000
	bnel    t6, $zero, lbl_80ABDFB8    
	mtc1    $at, $f6                   ## $f6 = 4.00
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f4                   ## $f4 = 1.00
	beq     $zero, $zero, lbl_80ABDFC0 
	swc1    $f4, 0x0174(a0)            ## 00000174
	mtc1    $at, $f6                   ## $f6 = 1.00
lbl_80ABDFB8:
	nop
	swc1    $f6, 0x0174(a0)            ## 00000174
lbl_80ABDFC0:
	lw      t9, 0x013C(a0)             ## 0000013C
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop
	nop

.section .data

var_80ABDFE0: .word 0x01510600, 0x00000000, 0x00010000, 0x00000178
.word func_80ABDDBC
.word 0x80027EF4
.word func_80ABDF8C
.word 0x00000000
var_80ABE000: .word 0x4A1C4000, 0x4A1C4000, 0x4A1C4000
var_80ABE00C: .word 0x4A316E44, 0x4A316E44, 0x4A316E44
var_80ABE018: .word 0x0009000C, 0x00080000
var_80ABE020: .word 0x01250125, 0x014E0000
var_80ABE028: .word \
0x00280666, 0x00282CCC, 0x00285999, 0x00288666, \
0x0014C000, 0x00501333, 0x00504000, 0x00506CCC, \
0x00509333, 0x0050ACCC, 0x0050C666, 0x003CE000
var_80ABE058: .word 0x00000000, 0x00000000
var_80ABE060: .word func_80ABD750
.word func_80ABD86C
.word func_80ABD96C
var_80ABE06C: .word \
0xB0F40064, 0xB0F80834, 0x30FC0064, 0x00000000, \
0x00000000

.section .rodata


