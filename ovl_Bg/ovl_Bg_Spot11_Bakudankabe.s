#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B4C220:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x0024($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	addiu   a1, a2, 0x0154             ## a1 = 00000154
	sw      a1, 0x0018($sp)            
	lw      a0, 0x0024($sp)            
	jal     func_8004AB7C              
	sw      a2, 0x0020($sp)            
	lui     a3, %hi(var_80B4C7A0)      ## a3 = 80B50000
	lw      a1, 0x0018($sp)            
	lw      a2, 0x0020($sp)            
	addiu   a3, a3, %lo(var_80B4C7A0)  ## a3 = 80B4C7A0
	jal     func_8004ACEC              
	lw      a0, 0x0024($sp)            
	lw      a2, 0x0020($sp)            
	lwc1    $f4, 0x0024(a2)            ## 00000024
	lwc1    $f8, 0x0028(a2)            ## 00000028
	lwc1    $f16, 0x002C(a2)           ## 0000002C
	trunc.w.s $f6, $f4                   
	lh      t6, 0x019A(a2)             ## 0000019A
	lh      t2, 0x019C(a2)             ## 0000019C
	trunc.w.s $f10, $f8                  
	mfc1    t0, $f6                    
	lh      t9, 0x019E(a2)             ## 0000019E
	trunc.w.s $f18, $f16                 
	mfc1    t7, $f10                   
	addu    t1, t6, t0                 
	sh      t1, 0x019A(a2)             ## 0000019A
	mfc1    t3, $f18                   
	addu    t8, t2, t7                 
	sh      t8, 0x019C(a2)             ## 0000019C
	addu    t4, t9, t3                 
	sh      t4, 0x019E(a2)             ## 0000019E
	lw      $ra, 0x0014($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80B4C2B4:
	addiu   $sp, $sp, 0xFF28           ## $sp = FFFFFF28
	sw      s4, 0x0088($sp)            
	mtc1    $zero, $f0                 ## $f0 = 0.00
	or      s4, a0, $zero              ## s4 = 00000000
	sw      $ra, 0x009C($sp)           
	sw      s8, 0x0098($sp)            
	sw      s7, 0x0094($sp)            
	sw      s6, 0x0090($sp)            
	sw      s5, 0x008C($sp)            
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
	sw      a1, 0x00DC($sp)            
	lui     $at, %hi(var_80B4C7F0)     ## $at = 80B50000
	lwc1    $f30, %lo(var_80B4C7F0)($at) 
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f28                  ## $f28 = 20.00
	lui     $at, 0x40D0                ## $at = 40D00000
	mtc1    $at, $f26                  ## $f26 = 6.50
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f24                  ## $f24 = 30.00
	lui     $at, 0x42F0                ## $at = 42F00000
	mtc1    $at, $f22                  ## $f22 = 120.00
	lui     $at, 0x3F00                ## $at = 3F000000
	lui     s7, 0x0501                 ## s7 = 05010000
	mtc1    $at, $f20                  ## $f20 = 0.50
	swc1    $f0, 0x00C4($sp)           
	swc1    $f0, 0x00BC($sp)           
	addiu   s7, s7, 0xA880             ## s7 = 0500A880
	or      s1, $zero, $zero           ## s1 = 00000000
	addiu   s5, s4, 0x0024             ## s5 = 00000024
	addiu   s8, $zero, 0x0014          ## s8 = 00000014
	addiu   s6, $sp, 0x00BC            ## s6 = FFFFFFE4
	addiu   s2, $sp, 0x00C8            ## s2 = FFFFFFF0
lbl_80B4C358:
	lui     a1, %hi(var_80B4C7CC)      ## a1 = 80B50000
	addiu   a1, a1, %lo(var_80B4C7CC)  ## a1 = 80B4C7CC
	or      a0, s5, $zero              ## a0 = 00000024
	jal     func_80063D10              ## Vec3f_Add
	or      a2, s2, $zero              ## a2 = FFFFFFF0
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	sub.s   $f6, $f0, $f20             
	mtc1    s1, $f18                   ## $f18 = 0.00
	lwc1    $f4, 0x00C8($sp)           
	lwc1    $f16, 0x00CC($sp)          
	mul.s   $f8, $f6, $f22             
	cvt.s.w $f6, $f18                  
	add.s   $f10, $f4, $f8             
	mul.s   $f4, $f6, $f26             
	swc1    $f10, 0x00C8($sp)          
	add.s   $f8, $f24, $f4             
	add.s   $f10, $f16, $f8            
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f10, 0x00CC($sp)          
	sub.s   $f6, $f0, $f20             
	lwc1    $f18, 0x00D0($sp)          
	mul.s   $f4, $f6, $f28             
	add.s   $f16, $f18, $f4            
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f16, 0x00D0($sp)          
	sub.s   $f8, $f0, $f30             
	lui     $at, 0x4140                ## $at = 41400000
	mtc1    $at, $f10                  ## $f10 = 12.00
	nop
	mul.s   $f6, $f8, $f10             
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f6, 0x00C0($sp)           
	lui     $at, 0x425C                ## $at = 425C0000
	mtc1    $at, $f18                  ## $f18 = 55.00
	lui     $at, 0x4100                ## $at = 41000000
	mtc1    $at, $f16                  ## $f16 = 8.00
	mul.s   $f4, $f0, $f18             
	add.s   $f8, $f4, $f16             
	trunc.w.s $f10, $f8                  
	mfc1    v0, $f10                   
	nop
	sll     v1, v0, 16                 
	sra     v1, v1, 16                 
	slti    $at, v1, 0x0014            
	sll     s3, v0, 16                 
	beq     $at, $zero, lbl_80B4C420   
	sra     s3, s3, 16                 
	beq     $zero, $zero, lbl_80B4C434 
	addiu   s0, $zero, 0xFED4          ## s0 = FFFFFED4
lbl_80B4C420:
	slti    $at, v1, 0x0023            
	beq     $at, $zero, lbl_80B4C434   
	addiu   s0, $zero, 0xFE5C          ## s0 = FFFFFE5C
	beq     $zero, $zero, lbl_80B4C434 
	addiu   s0, $zero, 0xFE98          ## s0 = FFFFFE98
lbl_80B4C434:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_80B4C7F4)     ## $at = 80B50000
	lwc1    $f6, %lo(var_80B4C7F4)($at) 
	lw      a0, 0x00DC($sp)            
	or      a1, s2, $zero              ## a1 = FFFFFFF0
	c.lt.s  $f0, $f6                   
	or      a2, s6, $zero              ## a2 = FFFFFFE4
	or      a3, s2, $zero              ## a3 = FFFFFFF0
	addiu   t7, $zero, 0x001E          ## t7 = 0000001E
	bc1f    lbl_80B4C46C               
	addiu   t8, $zero, 0x0004          ## t8 = 00000004
	beq     $zero, $zero, lbl_80B4C470 
	addiu   v0, $zero, 0x0041          ## v0 = 00000041
lbl_80B4C46C:
	addiu   v0, $zero, 0x0021          ## v0 = 00000021
lbl_80B4C470:
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	addiu   t0, $zero, 0x0003          ## t0 = 00000003
	addiu   t1, $zero, 0x0050          ## t1 = 00000050
	addiu   t2, $zero, 0xFFFF          ## t2 = FFFFFFFF
	addiu   t3, $zero, 0x0002          ## t3 = 00000002
	sw      t3, 0x0038($sp)            
	sw      t2, 0x0034($sp)            
	sw      t1, 0x0030($sp)            
	sw      t0, 0x002C($sp)            
	sw      t9, 0x0028($sp)            
	sw      s0, 0x0010($sp)            
	sw      v0, 0x0014($sp)            
	sw      t7, 0x0018($sp)            
	sw      t8, 0x001C($sp)            
	sw      $zero, 0x0020($sp)         
	sw      s3, 0x0024($sp)            
	jal     func_8001D998              
	sw      s7, 0x003C($sp)            
	addiu   s1, s1, 0x0001             ## s1 = 00000001
	bne     s1, s8, lbl_80B4C358       
	nop
	lui     a1, %hi(var_80B4C7CC)      ## a1 = 80B50000
	addiu   a1, a1, %lo(var_80B4C7CC)  ## a1 = 80B4C7CC
	or      a0, s5, $zero              ## a0 = 00000024
	jal     func_80063D10              ## Vec3f_Add
	or      a2, s2, $zero              ## a2 = FFFFFFF0
	lui     $at, 0x428C                ## $at = 428C0000
	mtc1    $at, $f20                  ## $f20 = 70.00
	addiu   t4, $zero, 0x006E          ## t4 = 0000006E
	addiu   t5, $zero, 0x00A0          ## t5 = 000000A0
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	mfc1    a2, $f20                   
	sw      t6, 0x0018($sp)            
	sw      t5, 0x0014($sp)            
	sw      t4, 0x0010($sp)            
	lw      a0, 0x00DC($sp)            
	or      a1, s2, $zero              ## a1 = FFFFFFF0
	jal     func_80026308              
	addiu   a3, $zero, 0x0004          ## a3 = 00000004
	lui     $at, 0x4220                ## $at = 42200000
	mtc1    $at, $f22                  ## $f22 = 40.00
	lwc1    $f18, 0x00CC($sp)          
	mfc1    a2, $f20                   
	addiu   t7, $zero, 0x006E          ## t7 = 0000006E
	add.s   $f4, $f18, $f22            
	addiu   t8, $zero, 0x00A0          ## t8 = 000000A0
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	sw      t9, 0x0018($sp)            
	swc1    $f4, 0x00CC($sp)           
	sw      t8, 0x0014($sp)            
	sw      t7, 0x0010($sp)            
	lw      a0, 0x00DC($sp)            
	or      a1, s2, $zero              ## a1 = FFFFFFF0
	jal     func_80026308              
	addiu   a3, $zero, 0x0005          ## a3 = 00000005
	lwc1    $f16, 0x00CC($sp)          
	mfc1    a2, $f20                   
	addiu   t0, $zero, 0x006E          ## t0 = 0000006E
	add.s   $f8, $f16, $f22            
	addiu   t1, $zero, 0x00A0          ## t1 = 000000A0
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	sw      t2, 0x0018($sp)            
	swc1    $f8, 0x00CC($sp)           
	sw      t1, 0x0014($sp)            
	sw      t0, 0x0010($sp)            
	lw      a0, 0x00DC($sp)            
	or      a1, s2, $zero              ## a1 = FFFFFFF0
	jal     func_80026308              
	addiu   a3, $zero, 0x0004          ## a3 = 00000004
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
	addiu   $sp, $sp, 0x00D8           ## $sp = 00000000


func_80B4C5CC:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0034($sp)            
	sw      $zero, 0x0024($sp)         
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80035260              
	or      a1, $zero, $zero           ## a1 = 00000000
	lh      a1, 0x001C(s0)             ## 0000001C
	lw      a0, 0x0034($sp)            
	jal     func_8002049C              
	andi    a1, a1, 0x003F             ## a1 = 00000000
	beq     v0, $zero, lbl_80B4C618    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B4C658 
	lw      $ra, 0x001C($sp)           
lbl_80B4C618:
	jal     func_80B4C220              
	lw      a1, 0x0034($sp)            
	lui     a0, 0x0600                 ## a0 = 06000000
	addiu   a0, a0, 0x1A58             ## a0 = 06001A58
	jal     func_80033EF4              
	addiu   a1, $sp, 0x0024            ## a1 = FFFFFFF4
	lw      a0, 0x0034($sp)            
	or      a2, s0, $zero              ## a2 = 00000000
	lw      a3, 0x0024($sp)            
	jal     func_800313A4              ## DynaPolyInfo_setActor
	addiu   a1, a0, 0x0810             ## a1 = 00000810
	sw      v0, 0x013C(s0)             ## 0000013C
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80020F88              
	lui     a1, 0x3F80                 ## a1 = 3F800000
	lw      $ra, 0x001C($sp)           
lbl_80B4C658:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B4C668:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	or      a3, a1, $zero              ## a3 = 00000000
	lw      t6, 0x0018($sp)            
	or      a0, a3, $zero              ## a0 = 00000000
	addiu   a1, a3, 0x0810             ## a1 = 00000810
	lw      a2, 0x013C(t6)             ## 0000013C
	jal     func_80031638              ## DynaPolyInfo_delReserve
	sw      a3, 0x001C($sp)            
	lw      a1, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_8004ABCC              
	addiu   a1, a1, 0x0154             ## a1 = 00000154
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B4C6B0:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s1, 0x0018($sp)            
	sw      s0, 0x0014($sp)            
	or      s0, a1, $zero              ## s0 = 00000000
	or      s1, a0, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	lbu     t6, 0x0165(s1)             ## 00000165
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	andi    t7, t6, 0x0002             ## t7 = 00000000
	beq     t7, $zero, lbl_80B4C72C    
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_80B4C2B4              
	or      a1, s0, $zero              ## a1 = 00000000
	lh      a1, 0x001C(s1)             ## 0000001C
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_800204D0              
	andi    a1, a1, 0x003F             ## a1 = 00000000
	lui     a1, %hi(var_80B4C7D8)      ## a1 = 80B50000
	addiu   a1, a1, %lo(var_80B4C7D8)  ## a1 = 80B4C7D8
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a2, $zero, 0x0028          ## a2 = 00000028
	jal     func_80058FF8              
	addiu   a3, $zero, 0x2810          ## a3 = 00002810
	jal     func_800646F0              
	addiu   a0, $zero, 0x4802          ## a0 = 00004802
	jal     func_80020EB4              
	or      a0, s1, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B4C73C 
	lw      $ra, 0x001C($sp)           
lbl_80B4C72C:
	addu    a1, s0, $at                
	jal     func_8004BF40              ## CollisionCheck_setAC
	addiu   a2, s1, 0x0154             ## a2 = 00000154
	lw      $ra, 0x001C($sp)           
lbl_80B4C73C:
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80B4C74C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	or      a2, a1, $zero              ## a2 = 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x1980             ## a1 = 06001980
	jal     func_80028048              
	or      a0, a2, $zero              ## a0 = 00000000
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop
	nop

.section .data

var_80B4C780: .word 0x019F0100, 0x00000030, 0x016F0000, 0x000001A0
.word func_80B4C5CC
.word func_80B4C668
.word func_80B4C6B0
.word func_80B4C74C
var_80B4C7A0: .word \
0x0A000900, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000008, 0x00000000, 0x00010000, \
0x00280050, 0x000008D3, 0x006CF9D4
var_80B4C7CC: .word 0x450D3000, 0x42D80000, 0xC4C1C000
var_80B4C7D8: .word \
0x450D3000, 0x42D80000, 0xC4C1C000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80B4C7F0: .word 0x3E4CCCCD
var_80B4C7F4: .word 0x3ECCCCCD, 0x00000000, 0x00000000

