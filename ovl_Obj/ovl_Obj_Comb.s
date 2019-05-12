#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B4B9C0:
	addiu   $sp, $sp, 0xFF18           ## $sp = FFFFFF18
	sw      $ra, 0x009C($sp)           
	sw      s8, 0x0098($sp)            
	sw      s7, 0x0094($sp)            
	sw      s6, 0x0090($sp)            
	sw      s5, 0x008C($sp)            
	sw      s4, 0x0088($sp)            
	sw      s3, 0x0084($sp)            
	sw      s2, 0x0080($sp)            
	sw      s1, 0x007C($sp)            
	sw      s0, 0x0078($sp)            
	sdc1    $f30, 0x0070($sp)          
	sdc1    $f28, 0x0068($sp)          
	sdc1    $f26, 0x0060($sp)          
	sdc1    $f24, 0x0058($sp)          
	sdc1    $f22, 0x0050($sp)          
	sdc1    $f20, 0x0048($sp)          
	sw      a0, 0x00E8($sp)            
	sw      a1, 0x00EC($sp)            
	lui     $at, 0x41C8                ## $at = 41C80000
	mtc1    $at, $f30                  ## $f30 = 25.00
	lui     $at, 0x4290                ## $at = 42900000
	mtc1    $at, $f28                  ## $f28 = 72.00
	lui     $at, %hi(var_80B4C170)     ## $at = 80B50000
	lwc1    $f26, %lo(var_80B4C170)($at) 
	lw      t6, 0x00E8($sp)            
	lui     $at, %hi(var_80B4C174)     ## $at = 80B50000
	lwc1    $f24, %lo(var_80B4C174)($at) 
	lui     $at, 0x3F00                ## $at = 3F000000
	lui     s8, 0x0501                 ## s8 = 05010000
	addiu   t7, t6, 0x0024             ## t7 = 00000024
	mtc1    $at, $f22                  ## $f22 = 0.50
	or      s2, $zero, $zero           ## s2 = 00000000
	sw      t7, 0x00A8($sp)            
	addiu   s8, s8, 0x9940             ## s8 = 05009940
	or      s3, $zero, $zero           ## s3 = 00000000
	addiu   s7, $sp, 0x00C4            ## s7 = FFFFFFDC
	addiu   s6, $sp, 0x00DC            ## s6 = FFFFFFF4
	addiu   s5, $sp, 0x00D0            ## s5 = FFFFFFE8
	addiu   s2, s2, 0x4E20             ## s2 = 00004E20
lbl_80B4BA60:
	sll     s2, s2, 16                 
	jal     func_800CDCCC              ## Rand.Next() float
	sra     s2, s2, 16                 
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f4                   ## $f4 = 10.00
	sll     a0, s2, 16                 
	sra     a0, a0, 16                 
	mul.s   $f20, $f0, $f4             
	jal     func_800636C4              ## sins?
	nop
	addiu   t8, s3, 0xFFF1             ## t8 = FFFFFFF1
	mtc1    t8, $f8                    ## $f8 = NaN
	mul.s   $f6, $f0, $f20             
	sll     a0, s2, 16                 
	sra     a0, a0, 16                 
	cvt.s.w $f10, $f8                  
	swc1    $f6, 0x00DC($sp)           
	mul.s   $f16, $f10, $f24           
	jal     func_80063684              ## coss?
	swc1    $f16, 0x00E0($sp)          
	mul.s   $f18, $f0, $f20            
	or      a0, s6, $zero              ## a0 = FFFFFFF4
	lw      a1, 0x00A8($sp)            
	or      a2, s5, $zero              ## a2 = FFFFFFE8
	jal     func_80063D10              ## Vec3f_Add
	swc1    $f18, 0x00E4($sp)          
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lwc1    $f6, 0x00DC($sp)           
	sub.s   $f4, $f0, $f22             
	mul.s   $f8, $f6, $f22             
	add.s   $f10, $f4, $f8             
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f10, 0x00C4($sp)          
	lwc1    $f18, 0x00E0($sp)          
	sub.s   $f16, $f0, $f22            
	mul.s   $f6, $f18, $f26            
	add.s   $f4, $f16, $f6             
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f4, 0x00C8($sp)           
	lwc1    $f10, 0x00E4($sp)          
	sub.s   $f8, $f0, $f22             
	mul.s   $f18, $f10, $f22           
	add.s   $f16, $f8, $f18            
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f16, 0x00CC($sp)          
	mul.s   $f6, $f0, $f28             
	addiu   s0, $zero, 0xFF38          ## s0 = FFFFFF38
	add.s   $f4, $f6, $f30             
	trunc.w.s $f10, $f4                  
	mfc1    v0, $f10                   
	nop
	sll     v1, v0, 16                 
	sra     v1, v1, 16                 
	slti    $at, v1, 0x0028            
	sll     s4, v0, 16                 
	beq     $at, $zero, lbl_80B4BB50   
	sra     s4, s4, 16                 
	beq     $zero, $zero, lbl_80B4BB6C 
	addiu   s1, $zero, 0x0028          ## s1 = 00000028
lbl_80B4BB50:
	slti    $at, v1, 0x0046            
	beq     $at, $zero, lbl_80B4BB68   
	addiu   s0, $zero, 0xFEAC          ## s0 = FFFFFEAC
	addiu   s0, $zero, 0xFEE8          ## s0 = FFFFFEE8
	beq     $zero, $zero, lbl_80B4BB6C 
	addiu   s1, $zero, 0x001E          ## s1 = 0000001E
lbl_80B4BB68:
	addiu   s1, $zero, 0x0014          ## s1 = 00000014
lbl_80B4BB6C:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_80B4C178)     ## $at = 80B50000
	lwc1    $f8, %lo(var_80B4C178)($at) 
	lw      a0, 0x00EC($sp)            
	or      a1, s5, $zero              ## a1 = FFFFFFE8
	c.lt.s  $f0, $f8                   
	or      a2, s7, $zero              ## a2 = FFFFFFDC
	or      a3, s5, $zero              ## a3 = FFFFFFE8
	addiu   t0, $zero, 0x0004          ## t0 = 00000004
	bc1f    lbl_80B4BBA4               
	addiu   t1, $zero, 0x0050          ## t1 = 00000050
	beq     $zero, $zero, lbl_80B4BBC8 
	addiu   v0, $zero, 0x0060          ## v0 = 00000060
lbl_80B4BBA4:
	lui     $at, %hi(var_80B4C17C)     ## $at = 80B50000
	lwc1    $f18, %lo(var_80B4C17C)($at) 
	addiu   v0, $zero, 0x0020          ## v0 = 00000020
	c.lt.s  $f0, $f18                  
	nop
	bc1f    lbl_80B4BBC8               
	nop
	beq     $zero, $zero, lbl_80B4BBC8 
	addiu   v0, $zero, 0x0040          ## v0 = 00000040
lbl_80B4BBC8:
	addiu   t2, $zero, 0xFFFF          ## t2 = FFFFFFFF
	addiu   t3, $zero, 0x0002          ## t3 = 00000002
	sw      t3, 0x0038($sp)            
	sw      t2, 0x0034($sp)            
	sw      s0, 0x0010($sp)            
	sw      v0, 0x0014($sp)            
	sw      s1, 0x0018($sp)            
	sw      t0, 0x001C($sp)            
	sw      $zero, 0x0020($sp)         
	sw      s4, 0x0024($sp)            
	sw      $zero, 0x0028($sp)         
	sw      $zero, 0x002C($sp)         
	sw      t1, 0x0030($sp)            
	jal     func_8001D998              
	sw      s8, 0x003C($sp)            
	addiu   s3, s3, 0x0001             ## s3 = 00000001
	addiu   $at, $zero, 0x001F         ## $at = 0000001F
	bnel    s3, $at, lbl_80B4BA60      
	addiu   s2, s2, 0x4E20             ## s2 = 00009C40
	lw      t4, 0x00E8($sp)            
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f4                   ## $f4 = 10.00
	lwc1    $f16, 0x0024(t4)           ## 00000024
	addiu   t5, $zero, 0x0046          ## t5 = 00000046
	addiu   t6, $zero, 0x003C          ## t6 = 0000003C
	swc1    $f16, 0x00D0($sp)          
	lwc1    $f6, 0x0028(t4)            ## 00000028
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	lw      a0, 0x00EC($sp)            
	sub.s   $f10, $f6, $f4             
	or      a1, s5, $zero              ## a1 = FFFFFFE8
	lui     a2, 0x4220                 ## a2 = 42200000
	addiu   a3, $zero, 0x0006          ## a3 = 00000006
	swc1    $f10, 0x00D4($sp)          
	lwc1    $f8, 0x002C(t4)            ## 0000002C
	sw      t7, 0x0018($sp)            
	sw      t6, 0x0014($sp)            
	sw      t5, 0x0010($sp)            
	jal     func_80026308              
	swc1    $f8, 0x00D8($sp)           
	lw      $ra, 0x009C($sp)           
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
	addiu   $sp, $sp, 0x00E8           ## $sp = 00000000


func_80B4BCB0:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x0024($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lh      v0, 0x001C(a3)             ## 0000001C
	andi    a2, v0, 0x001F             ## a2 = 00000000
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	bgtz    a2, lbl_80B4BCDC           
	slti    $at, a2, 0x001A            
	beq     $at, $zero, lbl_80B4BD70   
lbl_80B4BCDC:
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	bne     a2, $at, lbl_80B4BD30      
	lw      a0, 0x0024($sp)            
	sra     a1, v0,  8                 
	andi    a1, a1, 0x003F             ## a1 = 00000000
	sh      a2, 0x001E($sp)            
	jal     func_800206E8              
	sw      a3, 0x0020($sp)            
	lh      a2, 0x001E($sp)            
	beq     v0, $zero, lbl_80B4BD10    
	lw      a3, 0x0020($sp)            
	beq     $zero, $zero, lbl_80B4BD60 
	addiu   a2, $zero, 0xFFFF          ## a2 = FFFFFFFF
lbl_80B4BD10:
	lh      t6, 0x001C(a3)             ## 0000001C
	sra     t7, t6,  8                 
	andi    t8, t7, 0x003F             ## t8 = 00000000
	sll     t9, t8,  8                 
	or      a2, a2, t9                 ## a2 = FFFFFFFF
	sll     a2, a2, 16                 
	beq     $zero, $zero, lbl_80B4BD60 
	sra     a2, a2, 16                 
lbl_80B4BD30:
	sh      a2, 0x001E($sp)            
	jal     func_800CDCCC              ## Rand.Next() float
	sw      a3, 0x0020($sp)            
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f4                   ## $f4 = 0.50
	lh      a2, 0x001E($sp)            
	lw      a3, 0x0020($sp)            
	c.lt.s  $f0, $f4                   
	nop
	bc1f    lbl_80B4BD60               
	nop
	addiu   a2, $zero, 0xFFFF          ## a2 = FFFFFFFF
lbl_80B4BD60:
	bltz    a2, lbl_80B4BD70           
	lw      a0, 0x0024($sp)            
	jal     func_80013678              
	addiu   a1, a3, 0x0024             ## a1 = 00000024
lbl_80B4BD70:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B4BD80:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x0034($sp)            
	lui     a1, %hi(var_80B4C154)      ## a1 = 80B50000
	addiu   a1, a1, %lo(var_80B4C154)  ## a1 = 80B4C154
	jal     func_80063F7C              
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x0140             ## a1 = 00000140
	sw      a1, 0x0028($sp)            
	jal     func_8004A484              
	lw      a0, 0x0034($sp)            
	lui     a3, %hi(var_80B4C144)      ## a3 = 80B50000
	addiu   t6, s0, 0x0160             ## t6 = 00000160
	lw      a1, 0x0028($sp)            
	sw      t6, 0x0010($sp)            
	addiu   a3, a3, %lo(var_80B4C144)  ## a3 = 80B4C144
	lw      a0, 0x0034($sp)            
	jal     func_8004A874              
	or      a2, s0, $zero              ## a2 = 00000000
	jal     func_80B4BE1C              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B4BDF0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	or      a2, a1, $zero              ## a2 = 00000000
	or      a0, a2, $zero              ## a0 = 00000000
	jal     func_8004A550              
	addiu   a1, a3, 0x0140             ## a1 = 00000140
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B4BE1C:
	lui     t6, %hi(func_80B4BE30)     ## t6 = 80B50000
	addiu   t6, t6, %lo(func_80B4BE30) ## t6 = 80B4BE30
	sw      t6, 0x013C(a0)             ## 0000013C
	jr      $ra                        
	nop


func_80B4BE30:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s1, 0x0018($sp)            
	sw      s0, 0x0014($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	lh      t6, 0x01A0(s0)             ## 000001A0
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	addiu   t7, t6, 0xFFCE             ## t7 = FFFFFFCE
	sh      t7, 0x01A0(s0)             ## 000001A0
	lh      t8, 0x01A0(s0)             ## 000001A0
	addu    a1, s1, $at                
	or      a0, s1, $zero              ## a0 = 00000000
	bgezl   t8, lbl_80B4BE78           
	lbu     v1, 0x0151(s0)             ## 00000151
	sh      $zero, 0x01A0(s0)          ## 000001A0
	lbu     v1, 0x0151(s0)             ## 00000151
lbl_80B4BE78:
	andi    t9, v1, 0x0002             ## t9 = 00000000
	beq     t9, $zero, lbl_80B4BEE0    
	nop
	lw      t1, 0x015C(s0)             ## 0000015C
	andi    t0, v1, 0xFFFD             ## t0 = 00000000
	sb      t0, 0x0151(s0)             ## 00000151
	lw      t2, 0x0024(t1)             ## 00000024
	lui     $at, 0x4001                ## $at = 40010000
	ori     $at, $at, 0xF866           ## $at = 4001F866
	lw      v0, 0x0000(t2)             ## 00000000
	addiu   t4, $zero, 0x05DC          ## t4 = 000005DC
	or      a0, s0, $zero              ## a0 = 00000000
	and     t3, v0, $at                
	beq     t3, $zero, lbl_80B4BEBC    
	nop
	beq     $zero, $zero, lbl_80B4BEE8 
	sh      t4, 0x01A0(s0)             ## 000001A0
lbl_80B4BEBC:
	jal     func_80B4B9C0              
	or      a1, s1, $zero              ## a1 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80B4BCB0              
	or      a1, s1, $zero              ## a1 = 00000000
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B4BEEC 
	lw      t5, 0x0130(s0)             ## 00000130
lbl_80B4BEE0:
	jal     func_8004BF40              ## CollisionCheck_setAC
	addiu   a2, s0, 0x0140             ## a2 = 00000140
lbl_80B4BEE8:
	lw      t5, 0x0130(s0)             ## 00000130
lbl_80B4BEEC:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	beq     t5, $zero, lbl_80B4BF08    
	or      a0, s1, $zero              ## a0 = 00000000
	addu    a1, s1, $at                
	jal     func_8004C130              ## CollisionCheck_setOT
	addiu   a2, s0, 0x0140             ## a2 = 00000140
lbl_80B4BF08:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80B4BF1C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lh      t6, 0x01A2(a2)             ## 000001A2
	or      a0, a2, $zero              ## a0 = 00000000
	addiu   t7, t6, 0x2EE0             ## t7 = 00002EE0
	sh      t7, 0x01A2(a2)             ## 000001A2
	sw      a2, 0x0018($sp)            
	lw      t9, 0x013C(a2)             ## 0000013C
	jalr    $ra, t9                    
	nop
	lw      a2, 0x0018($sp)            
	jal     func_800636C4              ## sins?
	lh      a0, 0x01A2(a2)             ## 000001A2
	lw      a2, 0x0018($sp)            
	lh      t8, 0x01A0(a2)             ## 000001A0
	lh      t0, 0x0014(a2)             ## 00000014
	mtc1    t8, $f4                    ## $f4 = 0.00
	mtc1    t0, $f10                   ## $f10 = 0.00
	cvt.s.w $f6, $f4                   
	cvt.s.w $f16, $f10                 
	mul.s   $f8, $f0, $f6              
	add.s   $f18, $f8, $f16            
	trunc.w.s $f4, $f18                  
	mfc1    t2, $f4                    
	nop
	sh      t2, 0x00B4(a2)             ## 000000B4
	lw      $ra, 0x0014($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80B4BF94:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0014($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      s1, 0x0018($sp)            
	sw      a1, 0x0034($sp)            
	lw      t6, 0x0034($sp)            
	lw      a0, 0x0000(t6)             ## 00000000
	jal     func_8007E298              
	or      s1, a0, $zero              ## s1 = 00000000
	lui     $at, 0x42EC                ## $at = 42EC0000
	mtc1    $at, $f4                   ## $f4 = 118.00
	lwc1    $f6, 0x0054(s0)            ## 00000054
	lwc1    $f10, 0x0028(s0)           ## 00000028
	lwc1    $f12, 0x0024(s0)           ## 00000024
	mul.s   $f8, $f4, $f6              
	lw      a2, 0x002C(s0)             ## 0000002C
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_800AA7F4              
	add.s   $f14, $f10, $f8            
	lh      t7, 0x00B6(s0)             ## 000000B6
	lui     $at, %hi(var_80B4C180)     ## $at = 80B50000
	lwc1    $f4, %lo(var_80B4C180)($at) 
	mtc1    t7, $f16                   ## $f16 = 0.00
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	cvt.s.w $f18, $f16                 
	mul.s   $f12, $f18, $f4            
	jal     func_800AAB94              
	nop
	lh      t8, 0x00B4(s0)             ## 000000B4
	lui     $at, %hi(var_80B4C184)     ## $at = 80B50000
	lwc1    $f8, %lo(var_80B4C184)($at) 
	mtc1    t8, $f6                    ## $f6 = 0.00
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	cvt.s.w $f10, $f6                  
	mul.s   $f12, $f10, $f8            
	jal     func_800AA9E0              
	nop
	lh      t9, 0x00B8(s0)             ## 000000B8
	lui     $at, %hi(var_80B4C188)     ## $at = 80B50000
	lwc1    $f4, %lo(var_80B4C188)($at) 
	mtc1    t9, $f16                   ## $f16 = 0.00
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	cvt.s.w $f18, $f16                 
	mul.s   $f12, $f18, $f4            
	jal     func_800AAD4C              
	nop
	lui     $at, 0x42EC                ## $at = 42EC0000
	mtc1    $at, $f10                  ## $f10 = 118.00
	lwc1    $f6, 0x0054(s0)            ## 00000054
	mtc1    $zero, $f12                ## $f12 = 0.00
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mul.s   $f14, $f6, $f10            
	mfc1    a2, $f12                   
	jal     func_800AA7F4              
	neg.s   $f14, $f14                 
	lwc1    $f12, 0x0050(s0)           ## 00000050
	lwc1    $f14, 0x0054(s0)           ## 00000054
	lw      a2, 0x0058(s0)             ## 00000058
	jal     func_800AA8FC              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lw      v1, 0x02C0(s1)             ## 000002C0
	lui     t1, 0xDA38                 ## t1 = DA380000
	ori     t1, t1, 0x0003             ## t1 = DA380003
	addiu   t0, v1, 0x0008             ## t0 = 00000008
	sw      t0, 0x02C0(s1)             ## 000002C0
	sw      t1, 0x0000(v1)             ## 00000000
	lw      t2, 0x0034($sp)            
	lw      a0, 0x0000(t2)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x0020($sp)            
	lw      a3, 0x0020($sp)            
	lui     t4, 0xDE00                 ## t4 = DE000000
	or      a0, $zero, $zero           ## a0 = 00000000
	sw      v0, 0x0004(a3)             ## 00000004
	lw      v1, 0x02C0(s1)             ## 000002C0
	lui     t5, 0x0501                 ## t5 = 05010000
	addiu   t5, t5, 0x95B0             ## t5 = 050095B0
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s1)             ## 000002C0
	sw      t5, 0x0004(v1)             ## 00000004
	sw      t4, 0x0000(v1)             ## 00000000
	jal     func_80050CE4              
	addiu   a1, s0, 0x0140             ## a1 = 00000140
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	nop
	nop

.section .data

var_80B4C100: .word 0x019E0600, 0x00000000, 0x00020000, 0x000001A4
.word func_80B4BD80
.word func_80B4BDF0
.word func_80B4BF1C
.word func_80B4BF94
var_80B4C120: .word \
0x00000000, 0x00000000, 0x00000000, 0x4001FFFE, \
0x00000000, 0x00010100, 0x00000000, 0x00000000, \
0x000F0064
var_80B4C144: .word 0x0A000909, 0x20000000, 0x00000001
.word var_80B4C120
var_80B4C154: .word \
0xC8500064, 0xB0F4044C, 0xB0F80064, 0x30FC0384, \
0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80B4C170: .word 0x3F19999A
var_80B4C174: .word 0x3F333333
var_80B4C178: .word 0x3DCCCCCD
var_80B4C17C: .word 0x3F4CCCCD
var_80B4C180: .word 0x38C90FDB
var_80B4C184: .word 0x38C90FDB
var_80B4C188: .word 0x38C90FDB, 0x00000000

