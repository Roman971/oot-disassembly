#include <mips.h>
.set noreorder
.set noat

.section .text
func_8095D790:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	lui     a1, %hi(var_8095F92C)      ## a1 = 80960000
	addiu   a1, a1, %lo(var_8095F92C)  ## a1 = 8095F92C
	jal     func_80063F7C              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, 0xC040                ## $at = C0400000
	mtc1    $at, $f4                   ## $f4 = -3.00
	sh      $zero, 0x0194(s0)          ## 00000194
	sh      $zero, 0x0196(s0)          ## 00000196
	sh      $zero, 0x0198(s0)          ## 00000198
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	jal     func_80020F88              
	swc1    $f4, 0x0188(s0)            ## 00000188
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	sw      a1, 0x0020($sp)            
	jal     func_8004AB7C              
	lw      a0, 0x002C($sp)            
	lui     a3, %hi(var_8095F900)      ## a3 = 80960000
	addiu   a3, a3, %lo(var_8095F900)  ## a3 = 8095F900
	lw      a0, 0x002C($sp)            
	lw      a1, 0x0020($sp)            
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80050B00              
	lw      a1, 0x0020($sp)            
	lui     t6, %hi(func_8095D860)     ## t6 = 80960000
	addiu   t6, t6, %lo(func_8095D860) ## t6 = 8095D860
	addiu   t7, $zero, 0x0014          ## t7 = 00000014
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	sw      t6, 0x0130(s0)             ## 00000130
	sh      t7, 0x0198(s0)             ## 00000198
	sb      t8, 0x0003(s0)             ## 00000003
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8095D83C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	jal     func_80072548              
	or      a0, a1, $zero              ## a0 = 00000000
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8095D860:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lui     v0, 0x0001                 ## v0 = 00010000
	addu    v0, v0, a1                 
	lbu     v0, 0x03DC(v0)             ## 000103DC
	addiu   $at, $zero, 0x000D         ## $at = 0000000D
	lw      a3, 0x1C44(a1)             ## 00001C44
	beq     v0, $at, lbl_8095D890      
	addiu   $at, $zero, 0x0011         ## $at = 00000011
	bnel    v0, $at, lbl_8095D8A4      
	lh      v0, 0x0198(a2)             ## 00000198
lbl_8095D890:
	jal     func_80020EB4              
	or      a0, a2, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8095D8F8 
	lw      $ra, 0x0014($sp)           
	lh      v0, 0x0198(a2)             ## 00000198
lbl_8095D8A4:
	lui     t7, %hi(func_8095D904)     ## t7 = 80960000
	addiu   t7, t7, %lo(func_8095D904) ## t7 = 8095D904
	blez    v0, lbl_8095D8C0           
	or      a0, a3, $zero              ## a0 = 00000000
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	beq     $zero, $zero, lbl_8095D8DC 
	sh      t6, 0x0198(a2)             ## 00000198
lbl_8095D8C0:
	sw      t7, 0x0130(a2)             ## 00000130
	sw      a3, 0x0018($sp)            
	sw      a2, 0x0020($sp)            
	jal     func_80022F84              
	addiu   a1, $zero, 0x0879          ## a1 = 00000879
	lw      a2, 0x0020($sp)            
	lw      a3, 0x0018($sp)            
lbl_8095D8DC:
	lw      t9, 0x0024(a3)             ## 00000024
	sw      t9, 0x0024(a2)             ## 00000024
	lw      t8, 0x0028(a3)             ## 00000028
	sw      t8, 0x0028(a2)             ## 00000028
	lw      t9, 0x002C(a3)             ## 0000002C
	sw      t9, 0x002C(a2)             ## 0000002C
	lw      $ra, 0x0014($sp)           
lbl_8095D8F8:
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8095D904:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	or      a3, a1, $zero              ## a3 = 00000000
	lw      v1, 0x1C44(a3)             ## 00001C44
	lui     v0, 0x0001                 ## v0 = 00010000
	addu    v0, v0, a3                 
	lw      t7, 0x0024(v1)             ## 00000024
	addiu   $at, $zero, 0x000D         ## $at = 0000000D
	sw      t7, 0x0024(s0)             ## 00000024
	lw      t6, 0x0028(v1)             ## 00000028
	sw      t6, 0x0028(s0)             ## 00000028
	lw      t7, 0x002C(v1)             ## 0000002C
	sw      t7, 0x002C(s0)             ## 0000002C
	lbu     v0, 0x03DC(v0)             ## 000103DC
	beq     v0, $at, lbl_8095D954      
	addiu   $at, $zero, 0x0011         ## $at = 00000011
	bne     v0, $at, lbl_8095D964      
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8095D954:
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8095DC88 
	lw      $ra, 0x0024($sp)           
lbl_8095D964:
	lh      v1, 0x0194(s0)             ## 00000194
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	addiu   a2, s0, 0x013C             ## a2 = 0000013C
	bne     v1, $at, lbl_8095D988      
	or      a1, a2, $zero              ## a1 = 0000013C
	lh      t8, 0x0198(s0)             ## 00000198
	addiu   t9, t8, 0x0019             ## t9 = 00000019
	beq     $zero, $zero, lbl_8095D99C 
	sb      t9, 0x0159(s0)             ## 00000159
lbl_8095D988:
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	bnel    v1, $at, lbl_8095D9A0      
	sw      a2, 0x002C($sp)            
	lh      t0, 0x0198(s0)             ## 00000198
	sb      t0, 0x0159(s0)             ## 00000159
lbl_8095D99C:
	sw      a2, 0x002C($sp)            
lbl_8095D9A0:
	jal     func_80050B00              
	sw      a3, 0x004C($sp)            
	lui     $at, %hi(var_8095F970)     ## $at = 80960000
	lwc1    $f6, %lo(var_8095F970)($at) 
	lwc1    $f4, 0x0050(s0)            ## 00000050
	lui     $at, 0x43E1                ## $at = 43E10000
	mtc1    $at, $f16                  ## $f16 = 450.00
	mul.s   $f8, $f4, $f6              
	lwc1    $f0, 0x0054(s0)            ## 00000054
	lui     $at, 0xC361                ## $at = C3610000
	mtc1    $at, $f6                   ## $f6 = -225.00
	mul.s   $f18, $f0, $f16            
	lw      a0, 0x004C($sp)            
	lw      a2, 0x002C($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	addu    a1, a0, $at                
	trunc.w.s $f10, $f8                  
	mul.s   $f8, $f0, $f6              
	mfc1    t2, $f10                   
	trunc.w.s $f4, $f18                  
	sh      t2, 0x017C(s0)             ## 0000017C
	trunc.w.s $f10, $f8                  
	mfc1    t4, $f4                    
	mfc1    t6, $f10                   
	sh      t4, 0x017E(s0)             ## 0000017E
	jal     func_8004BD50              ## CollisionCheck_setAT
	sh      t6, 0x0180(s0)             ## 00000180
	lh      v1, 0x0194(s0)             ## 00000194
	addiu   t7, $zero, 0x001E          ## t7 = 0000001E
	lui     $at, %hi(var_8095F974)     ## $at = 80960000
	beq     v1, $zero, lbl_8095DA4C    
	or      v0, v1, $zero              ## v0 = 00000000
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beq     v0, $at, lbl_8095DA98      
	addiu   a0, s0, 0x0188             ## a0 = 00000188
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     v0, $at, lbl_8095DB00      
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	beq     v0, $at, lbl_8095DB28      
	nop
	beq     $zero, $zero, lbl_8095DB84 
	lh      v0, 0x0196(s0)             ## 00000196
lbl_8095DA4C:
	sh      $zero, 0x0034(s0)          ## 00000034
	lh      v0, 0x0034(s0)             ## 00000034
	mtc1    $zero, $f2                 ## $f2 = 0.00
	sh      $zero, 0x00B8(s0)          ## 000000B8
	sh      v0, 0x0032(s0)             ## 00000032
	sh      v0, 0x0030(s0)             ## 00000030
	lh      v0, 0x00B8(s0)             ## 000000B8
	sh      t7, 0x0198(s0)             ## 00000198
	swc1    $f2, 0x0058(s0)            ## 00000058
	swc1    $f2, 0x0054(s0)            ## 00000054
	swc1    $f2, 0x0050(s0)            ## 00000050
	swc1    $f2, 0x0188(s0)            ## 00000188
	sh      v0, 0x00B6(s0)             ## 000000B6
	sh      v0, 0x00B4(s0)             ## 000000B4
	lwc1    $f16, %lo(var_8095F974)($at) 
	addiu   t8, v1, 0x0001             ## t8 = 00000001
	sh      t8, 0x0194(s0)             ## 00000194
	beq     $zero, $zero, lbl_8095DB80 
	swc1    $f16, 0x0190(s0)           ## 00000190
lbl_8095DA98:
	lui     a2, 0x3D08                 ## a2 = 3D080000
	ori     a2, a2, 0x8889             ## a2 = 3D088889
	jal     func_8006385C              
	lui     a1, 0x3F80                 ## a1 = 3F800000
	lh      t9, 0x0198(s0)             ## 00000198
	lui     a1, 0x3ECC                 ## a1 = 3ECC0000
	ori     a1, a1, 0xCCCD             ## a1 = 3ECCCCCD
	blez    t9, lbl_8095DAE8           
	addiu   a0, s0, 0x0050             ## a0 = 00000050
	lui     $at, %hi(var_8095F978)     ## $at = 80960000
	lwc1    $f18, %lo(var_8095F978)($at) 
	lw      a2, 0x0190(s0)             ## 00000190
	lui     a3, 0x3DCC                 ## a3 = 3DCC0000
	ori     a3, a3, 0xCCCD             ## a3 = 3DCCCCCD
	jal     func_80064178              
	swc1    $f18, 0x0010($sp)          
	lwc1    $f0, 0x0050(s0)            ## 00000050
	swc1    $f0, 0x0058(s0)            ## 00000058
	beq     $zero, $zero, lbl_8095DB80 
	swc1    $f0, 0x0054(s0)            ## 00000054
lbl_8095DAE8:
	lh      t1, 0x0194(s0)             ## 00000194
	addiu   t0, $zero, 0x0019          ## t0 = 00000019
	sh      t0, 0x0198(s0)             ## 00000198
	addiu   t2, t1, 0x0001             ## t2 = 00000001
	beq     $zero, $zero, lbl_8095DB80 
	sh      t2, 0x0194(s0)             ## 00000194
lbl_8095DB00:
	lh      t3, 0x0198(s0)             ## 00000198
	addiu   t4, $zero, 0x000F          ## t4 = 0000000F
	addiu   t5, v1, 0x0001             ## t5 = 00000001
	bgtz    t3, lbl_8095DB80           
	lui     $at, %hi(var_8095F97C)     ## $at = 80960000
	sh      t4, 0x0198(s0)             ## 00000198
	sh      t5, 0x0194(s0)             ## 00000194
	lwc1    $f4, %lo(var_8095F97C)($at) 
	beq     $zero, $zero, lbl_8095DB80 
	swc1    $f4, 0x0190(s0)            ## 00000190
lbl_8095DB28:
	lui     $at, %hi(var_8095F980)     ## $at = 80960000
	lwc1    $f8, %lo(var_8095F980)($at) 
	lwc1    $f6, 0x0188(s0)            ## 00000188
	lwc1    $f0, 0x0190(s0)            ## 00000190
	lwc1    $f16, 0x0050(s0)           ## 00000050
	sub.s   $f10, $f6, $f8             
	mtc1    $zero, $f2                 ## $f2 = 0.00
	lwc1    $f4, 0x0054(s0)            ## 00000054
	add.s   $f18, $f16, $f0            
	swc1    $f10, 0x0188(s0)           ## 00000188
	lwc1    $f16, 0x0188(s0)           ## 00000188
	lwc1    $f8, 0x0058(s0)            ## 00000058
	add.s   $f6, $f4, $f0              
	swc1    $f18, 0x0050(s0)           ## 00000050
	or      a0, s0, $zero              ## a0 = 00000000
	c.le.s  $f16, $f2                  
	swc1    $f6, 0x0054(s0)            ## 00000054
	add.s   $f10, $f8, $f0             
	bc1f    lbl_8095DB80               
	swc1    $f10, 0x0058(s0)           ## 00000058
	jal     func_80020EB4              
	sh      $zero, 0x0194(s0)          ## 00000194
lbl_8095DB80:
	lh      v0, 0x0196(s0)             ## 00000196
lbl_8095DB84:
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beql    v0, $zero, lbl_8095DBB4    
	lh      t6, 0x019A(s0)             ## 0000019A
	beq     v0, $at, lbl_8095DBD4      
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     v0, $at, lbl_8095DC18      
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	beql    v0, $at, lbl_8095DC40      
	lh      v0, 0x019A(s0)             ## 0000019A
	beq     $zero, $zero, lbl_8095DC68 
	lh      v0, 0x0198(s0)             ## 00000198
	lh      t6, 0x019A(s0)             ## 0000019A
lbl_8095DBB4:
	addiu   t7, $zero, 0x0014          ## t7 = 00000014
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	bgtz    t6, lbl_8095DBCC           
	nop
	sh      t7, 0x019A(s0)             ## 0000019A
	sh      t8, 0x0196(s0)             ## 00000196
lbl_8095DBCC:
	beq     $zero, $zero, lbl_8095DC68 
	lh      v0, 0x0198(s0)             ## 00000198
lbl_8095DBD4:
	lh      v0, 0x019A(s0)             ## 0000019A
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f6                   ## $f6 = 20.00
	mtc1    v0, $f18                   ## $f18 = 0.00
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f10                  ## $f10 = 1.00
	cvt.s.w $f4, $f18                  
	addiu   t9, $zero, 0x002D          ## t9 = 0000002D
	addiu   t0, $zero, 0x0002          ## t0 = 00000002
	div.s   $f8, $f4, $f6              
	sub.s   $f16, $f10, $f8            
	bgtz    v0, lbl_8095DC10           
	swc1    $f16, 0x018C(s0)           ## 0000018C
	sh      t9, 0x019A(s0)             ## 0000019A
	sh      t0, 0x0196(s0)             ## 00000196
lbl_8095DC10:
	beq     $zero, $zero, lbl_8095DC68 
	lh      v0, 0x0198(s0)             ## 00000198
lbl_8095DC18:
	lh      t1, 0x019A(s0)             ## 0000019A
	addiu   t2, $zero, 0x0005          ## t2 = 00000005
	addiu   t3, $zero, 0x0003          ## t3 = 00000003
	bgtz    t1, lbl_8095DC34           
	nop
	sh      t2, 0x019A(s0)             ## 0000019A
	sh      t3, 0x0196(s0)             ## 00000196
lbl_8095DC34:
	beq     $zero, $zero, lbl_8095DC68 
	lh      v0, 0x0198(s0)             ## 00000198
	lh      v0, 0x019A(s0)             ## 0000019A
lbl_8095DC40:
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f6                   ## $f6 = 5.00
	mtc1    v0, $f18                   ## $f18 = 0.00
	addiu   t4, $zero, 0x0004          ## t4 = 00000004
	cvt.s.w $f4, $f18                  
	div.s   $f10, $f4, $f6             
	bgtz    v0, lbl_8095DC64           
	swc1    $f10, 0x018C(s0)           ## 0000018C
	sh      t4, 0x0196(s0)             ## 00000196
lbl_8095DC64:
	lh      v0, 0x0198(s0)             ## 00000198
lbl_8095DC68:
	blez    v0, lbl_8095DC74           
	addiu   t5, v0, 0xFFFF             ## t5 = FFFFFFFF
	sh      t5, 0x0198(s0)             ## 00000198
lbl_8095DC74:
	lh      v0, 0x019A(s0)             ## 0000019A
	blez    v0, lbl_8095DC84           
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x019A(s0)             ## 0000019A
lbl_8095DC84:
	lw      $ra, 0x0024($sp)           
lbl_8095DC88:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000
	jr      $ra                        
	nop


func_8095DC98:
	addiu   $sp, $sp, 0xFF40           ## $sp = FFFFFF40
	sw      s2, 0x0040($sp)            
	or      s2, a0, $zero              ## s2 = 00000000
	sw      $ra, 0x0044($sp)           
	sw      s1, 0x003C($sp)            
	sw      s0, 0x0038($sp)            
	lui     t6, 0x0001                 ## t6 = 00010000
	addu    t6, t6, a1                 
	lw      t6, 0x1DE4(t6)             ## 00011DE4
	sw      t6, 0x00B4($sp)            
	lh      t7, 0x0194(s2)             ## 00000194
	blezl   t7, lbl_8095E27C           
	lw      $ra, 0x0044($sp)           
	lw      s1, 0x0000(a1)             ## 00000000
	lw      a0, 0x02D0(s1)             ## 000002D0
	jal     func_8007E008              
	sw      a1, 0x00C4($sp)            
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s1)             ## 000002D0
	lui     t9, 0xFA00                 ## t9 = FA000000
	sw      t9, 0x0000(v0)             ## 00000000
	lui     $at, 0x4270                ## $at = 42700000
	mtc1    $at, $f4                   ## $f4 = 60.00
	lwc1    $f0, 0x018C(s2)            ## 0000018C
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f10                  ## $f10 = 20.00
	mul.s   $f6, $f0, $f4              
	lui     $at, 0x42F0                ## $at = 42F00000
	mtc1    $zero, $f4                 ## $f4 = 0.00
	mul.s   $f16, $f10, $f0            
	trunc.w.s $f8, $f6                   
	trunc.w.s $f18, $f16                 
	mfc1    t8, $f8                    
	mtc1    $at, $f8                   ## $f8 = 120.00
	trunc.w.s $f6, $f4                   
	mfc1    t7, $f18                   
	mul.s   $f10, $f8, $f0             
	sll     t9, t8, 24                 
	andi    t8, t7, 0x00FF             ## t8 = 00000000
	sll     t5, t8, 16                 
	or      t6, t9, t5                 ## t6 = FA000000
	mfc1    t9, $f6                    
	trunc.w.s $f16, $f10                 
	andi    t5, t9, 0x00FF             ## t5 = 00000000
	sll     t7, t5,  8                 
	or      t8, t6, t7                 ## t8 = FA000000
	mfc1    t6, $f16                   
	nop
	andi    t7, t6, 0x00FF             ## t7 = 00000000
	or      t9, t8, t7                 ## t9 = FA000000
	sw      t9, 0x0004(v0)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t6, 0xE300                 ## t6 = E3000000
	ori     t6, t6, 0x1A01             ## t6 = E3001A01
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s1)             ## 000002D0
	addiu   t8, $zero, 0x0030          ## t8 = 00000030
	sw      t8, 0x0004(s0)             ## 00000004
	sw      t6, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t9, 0xE300                 ## t9 = E3000000
	ori     t9, t9, 0x1801             ## t9 = E3001801
	addiu   t7, s0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s1)             ## 000002D0
	addiu   t5, $zero, 0x00C0          ## t5 = 000000C0
	sw      t5, 0x0004(s0)             ## 00000004
	sw      t9, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t8, 0xF64F                 ## t8 = F64F0000
	ori     t8, t8, 0xC3BC             ## t8 = F64FC3BC
	addiu   t6, s0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s1)             ## 000002D0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t8, 0x0000(s0)             ## 00000000
	lw      t7, 0x00C4($sp)            
	jal     func_8007E2C0              
	lw      a0, 0x0000(t7)             ## 00000008
	lui     $at, 0x437F                ## $at = 437F0000
	mtc1    $at, $f0                   ## $f0 = 255.00
	lui     $at, %hi(var_8095F984)     ## $at = 80960000
	lwc1    $f12, %lo(var_8095F984)($at) 
	lw      v0, 0x02D0(s1)             ## 000002D0
	lui     t5, 0xFA00                 ## t5 = FA000000
	ori     t5, t5, 0x0080             ## t5 = FA000080
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s1)             ## 000002D0
	sw      t5, 0x0000(v0)             ## 00000000
	lwc1    $f18, 0x0188(s2)           ## 00000188
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mul.s   $f4, $f18, $f0             
	cfc1    t6, $f31                   
	ctc1    t8, $f31                   
	nop
	cvt.w.s $f6, $f4                   
	cfc1    t8, $f31                   
	nop
	andi    t8, t8, 0x0078             ## t8 = 00000000
	beq     t8, $zero, lbl_8095DE6C    
	lui     $at, 0x4F00                ## $at = 4F000000
	mtc1    $at, $f6                   ## $f6 = 2147484000.00
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	sub.s   $f6, $f4, $f6              
	ctc1    t8, $f31                   
	nop
	cvt.w.s $f6, $f6                   
	cfc1    t8, $f31                   
	nop
	andi    t8, t8, 0x0078             ## t8 = 00000000
	bne     t8, $zero, lbl_8095DE64    
	nop
	mfc1    t8, $f6                    
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_8095DE7C 
	or      t8, t8, $at                ## t8 = 80000000
lbl_8095DE64:
	beq     $zero, $zero, lbl_8095DE7C 
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
lbl_8095DE6C:
	mfc1    t8, $f6                    
	nop
	bltz    t8, lbl_8095DE64           
	nop
lbl_8095DE7C:
	andi    t9, t8, 0x00FF             ## t9 = 000000FF
	lui     $at, 0xFFC8                ## $at = FFC80000
	ctc1    t6, $f31                   
	or      t5, t9, $at                ## t5 = FFC800FF
	sw      t5, 0x0004(v0)             ## 00000004
	lw      v1, 0x02D0(s1)             ## 000002D0
	lui     t8, 0xFB00                 ## t8 = FB000000
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s1)             ## 000002D0
	sw      t8, 0x0000(v1)             ## 00000000
	lwc1    $f8, 0x0188(s2)            ## 00000188
	mul.s   $f10, $f8, $f0             
	cfc1    t7, $f31                   
	ctc1    t9, $f31                   
	nop
	cvt.w.s $f16, $f10                 
	cfc1    t9, $f31                   
	nop
	andi    t9, t9, 0x0078             ## t9 = 00000000
	beq     t9, $zero, lbl_8095DF18    
	lui     $at, 0x4F00                ## $at = 4F000000
	mtc1    $at, $f16                  ## $f16 = 2147484000.00
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	sub.s   $f16, $f10, $f16           
	ctc1    t9, $f31                   
	nop
	cvt.w.s $f16, $f16                 
	cfc1    t9, $f31                   
	nop
	andi    t9, t9, 0x0078             ## t9 = 00000000
	bne     t9, $zero, lbl_8095DF10    
	nop
	mfc1    t9, $f16                   
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_8095DF28 
	or      t9, t9, $at                ## t9 = 80000000
lbl_8095DF10:
	beq     $zero, $zero, lbl_8095DF28 
	addiu   t9, $zero, 0xFFFF          ## t9 = FFFFFFFF
lbl_8095DF18:
	mfc1    t9, $f16                   
	nop
	bltz    t9, lbl_8095DF10           
	nop
lbl_8095DF28:
	andi    t6, t9, 0x00FF             ## t6 = 000000FF
	lui     $at, 0xFF00                ## $at = FF000000
	ctc1    t7, $f31                   
	or      t8, t6, $at                ## t8 = FF0000FF
	sw      t8, 0x0004(v1)             ## 00000004
	mfc1    a2, $f12                   
	jal     func_800AA8FC              
	mov.s   $f14, $f12                 
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t9, 0xDA38                 ## t9 = DA380000
	ori     t9, t9, 0x0003             ## t9 = DA380003
	addiu   t7, s0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s1)             ## 000002D0
	sw      t9, 0x0000(s0)             ## 00000000
	lw      t5, 0x00C4($sp)            
	lw      a0, 0x0000(t5)             ## 00000000
	jal     func_800AB900              
	sw      s0, 0x0084($sp)            
	lw      a2, 0x0084($sp)            
	lui     t1, 0xE700                 ## t1 = E7000000
	lui     t7, 0xD700                 ## t7 = D7000000
	sw      v0, 0x0004(a2)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     a2, 0xF588                 ## a2 = F5880000
	lui     t2, 0xDE00                 ## t2 = DE000000
	addiu   t6, s0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s1)             ## 000002D0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t1, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	ori     t7, t7, 0x0002             ## t7 = D7000002
	addiu   t9, $zero, 0xFFFF          ## t9 = FFFFFFFF
	addiu   t8, s0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s1)             ## 000002D0
	sw      t9, 0x0004(s0)             ## 00000004
	sw      t7, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t6, 0xE300                 ## t6 = E3000000
	ori     t6, t6, 0x1001             ## t6 = E3001001
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s1)             ## 000002D0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t6, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t9, %hi(var_8095E2B0)      ## t9 = 80960000
	addiu   t9, t9, %lo(var_8095E2B0)  ## t9 = 8095E2B0
	addiu   t8, s0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s1)             ## 000002D0
	lui     t7, 0xFD90                 ## t7 = FD900000
	sw      t7, 0x0000(s0)             ## 00000000
	sw      t9, 0x0004(s0)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t8, 0x0701                 ## t8 = 07010000
	ori     t8, t8, 0x806F             ## t8 = 0701806F
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s1)             ## 000002D0
	lui     t6, 0xF590                 ## t6 = F5900000
	sw      t6, 0x0000(s0)             ## 00000000
	sw      t8, 0x0004(s0)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t9, 0xE600                 ## t9 = E6000000
	lui     t6, 0xF300                 ## t6 = F3000000
	addiu   t7, s0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s1)             ## 000002D0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t9, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t8, 0x077F                 ## t8 = 077F0000
	ori     t8, t8, 0xF100             ## t8 = 077FF100
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s1)             ## 000002D0
	sw      t8, 0x0004(s0)             ## 00000004
	sw      t6, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	ori     a2, a2, 0x1000             ## a2 = F5881000
	lui     t4, 0xF200                 ## t4 = F2000000
	addiu   t7, s0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s1)             ## 000002D0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t1, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t5, 0x0001                 ## t5 = 00010000
	ori     t5, t5, 0x806F             ## t5 = 0001806F
	addiu   t9, s0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s1)             ## 000002D0
	sw      t5, 0x0004(s0)             ## 00000004
	sw      a2, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t8, 0x000F                 ## t8 = 000F0000
	ori     t8, t8, 0xC0FC             ## t8 = 000FC0FC
	addiu   t6, s0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s1)             ## 000002D0
	sw      t8, 0x0004(s0)             ## 00000004
	sw      t4, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t9, 0x0101                 ## t9 = 01010000
	ori     t9, t9, 0xB86E             ## t9 = 0101B86E
	addiu   t7, s0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s1)             ## 000002D0
	sw      t9, 0x0004(s0)             ## 00000004
	sw      a2, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t6, 0x010F                 ## t6 = 010F0000
	ori     t6, t6, 0xC0FC             ## t6 = 010FC0FC
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s1)             ## 000002D0
	lw      t3, 0x00B4($sp)            
	sw      t6, 0x0004(s0)             ## 00000004
	sw      t4, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t7, %hi(var_8095F770)      ## t7 = 80960000
	addiu   t7, t7, %lo(var_8095F770)  ## t7 = 8095F770
	addiu   t8, s0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s1)             ## 000002D0
	sw      t7, 0x0004(s0)             ## 00000004
	sw      t2, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	sll     t6, t3,  2                 
	addu    t6, t6, t3                 
	addiu   t9, s0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s1)             ## 000002D0
	sw      t2, 0x0000(s0)             ## 00000000
	lw      t5, 0x00C4($sp)            
	andi    t8, t6, 0x01FF             ## t8 = 000000FC
	addiu   t7, $zero, 0x01FF          ## t7 = 000001FF
	lw      a0, 0x0000(t5)             ## 00000008
	subu    a3, t7, t8                 
	sll     t8, t3,  2                 
	addu    t8, t8, t3                 
	addiu   t9, $zero, 0x0040          ## t9 = 00000040
	sw      t9, 0x0010($sp)            
	sll     t8, t8,  2                 
	addiu   t5, $zero, 0x0040          ## t5 = 00000040
	sll     v1, t3,  1                 
	andi    t7, v1, 0x00FF             ## t7 = 00000000
	sw      t5, 0x0014($sp)            
	andi    t9, t8, 0x00FF             ## t9 = 000000FC
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	sw      t6, 0x0018($sp)            
	addiu   t5, $zero, 0x00FF          ## t5 = 000000FF
	sw      t7, 0x001C($sp)            
	addiu   t7, $zero, 0x0020          ## t7 = 00000020
	subu    t6, t5, t9                 
	addiu   t8, $zero, 0x0020          ## t8 = 00000020
	sw      t8, 0x0028($sp)            
	sw      t6, 0x0020($sp)            
	sw      t7, 0x0024($sp)            
	andi    a2, v1, 0x01FF             ## a2 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_8007EB84              
	sw      s0, 0x004C($sp)            
	lw      t1, 0x004C($sp)            
	lui     t9, 0xDE00                 ## t9 = DE000000
	lui     $at, 0x437F                ## $at = 437F0000
	sw      v0, 0x0004(t1)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t6, %hi(var_8095F798)      ## t6 = 80960000
	addiu   t6, t6, %lo(var_8095F798)  ## t6 = 8095F798
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s1)             ## 000002D0
	sw      t6, 0x0004(s0)             ## 00000004
	sw      t9, 0x0000(s0)             ## 00000000
	lwc1    $f18, 0x0188(s2)           ## 00000188
	mtc1    $at, $f4                   ## $f4 = 255.00
	lui     v0, %hi(var_8095F930)      ## v0 = 80960000
	lui     a1, %hi(var_8095F954)      ## a1 = 80960000
	mul.s   $f6, $f18, $f4             
	lui     a0, %hi(var_8095F2B0)      ## a0 = 80960000
	addiu   a0, a0, %lo(var_8095F2B0)  ## a0 = 8095F2B0
	addiu   a1, a1, %lo(var_8095F954)  ## a1 = 8095F954
	addiu   v0, v0, %lo(var_8095F930)  ## v0 = 8095F930
	trunc.w.s $f8, $f6                   
	mfc1    v1, $f8                    
	nop
	andi    v1, v1, 0x00FF             ## v1 = 00000000
lbl_8095E1E4:
	lbu     t8, 0x0000(v0)             ## 8095F930
	addiu   v0, v0, 0x0001             ## v0 = 8095F931
	sltu    $at, v0, a1                
	sll     t5, t8,  4                 
	addu    t9, a0, t5                 
	bne     $at, $zero, lbl_8095E1E4   
	sb      v1, 0x000F(t9)             ## DE00000F
	lui     $at, 0x4298                ## $at = 42980000
	mtc1    $at, $f16                  ## $f16 = 76.00
	lwc1    $f10, 0x0188(s2)           ## 00000188
	lui     v0, %hi(var_8095F954)      ## v0 = 80960000
	lui     a1, %hi(var_8095F96C)      ## a1 = 80960000
	mul.s   $f18, $f10, $f16           
	addiu   a1, a1, %lo(var_8095F96C)  ## a1 = 8095F96C
	addiu   v0, v0, %lo(var_8095F954)  ## v0 = 8095F954
	trunc.w.s $f4, $f18                  
	mfc1    v1, $f4                    
	nop
	andi    v1, v1, 0x00FF             ## v1 = 00000000
lbl_8095E230:
	lbu     t7, 0x0000(v0)             ## 8095F954
	addiu   v0, v0, 0x0004             ## v0 = 8095F958
	sll     t8, t7,  4                 
	addu    t5, a0, t8                 
	sb      v1, 0x000F(t5)             ## 00000017
	lbu     t9, -0x0003(v0)            ## 8095F955
	sll     t6, t9,  4                 
	addu    t7, a0, t6                 
	sb      v1, 0x000F(t7)             ## 0000000F
	lbu     t8, -0x0002(v0)            ## 8095F956
	sll     t5, t8,  4                 
	addu    t9, a0, t5                 
	sb      v1, 0x000F(t9)             ## DE00000F
	lbu     t6, -0x0001(v0)            ## 8095F957
	sll     t7, t6,  4                 
	addu    t8, a0, t7                 
	bne     v0, a1, lbl_8095E230       
	sb      v1, 0x000F(t8)             ## 0000000F
	lw      $ra, 0x0044($sp)           
lbl_8095E27C:
	lw      s0, 0x0038($sp)            
	lw      s1, 0x003C($sp)            
	lw      s2, 0x0040($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x00C0           ## $sp = 00000000

.section .data

var_8095E290: .word 0x009F0700, 0x02000010, 0x00010000, 0x0000019C
.word func_8095D790
.word func_8095D83C
.word func_8095D904
.word func_8095DC98
var_8095E2B0: .word \
0x14484935, 0x3C7496B7, 0xB18E6A46, 0x2F170702, \
0x07193C4D, 0x618CB0AE, 0x896E6859, 0x31273E21, \
0x204A3635, 0x5385C9DE, 0xB3856F5A, 0x492D0F03, \
0x07152C46, 0x678BAA9D, 0x6D647F85, 0x6028140B, \
0x175B6A4E, 0x4A799BB6, 0xAF946A43, 0x250F0403, \
0x0C20425B, 0x79A9CAA8, 0x6E5B5E52, 0x2E294D2D, \
0x1A484142, 0x5B8BD3D8, 0xAE7F6147, 0x3F290E05, \
0x0E213C5A, 0x81A0C6AE, 0x7A749C9E, 0x61161112, \
0x175C816B, 0x5D7FA4B4, 0xB5A57245, 0x200C0206, \
0x142A4B6B, 0x94C5DD9F, 0x60454A47, 0x27235030, \
0x1946464B, 0x628FD1C7, 0x9C735542, 0x301C0906, \
0x162F4A71, 0x99BDD9BA, 0x9089B2B8, 0x7D1D1618, \
0x1A5E9088, 0x7583A8AD, 0xB2B78550, 0x240C030A, \
0x1D38597D, 0xABDCE891, 0x52363736, 0x1B18422C, \
0x193F4453, 0x6B8FC2B2, 0x86624F3C, 0x200F070C, \
0x203C5B85, 0xB0D5E6C2, 0xA8A3B4B8, 0x8E25171E, \
0x1C5D99A0, 0x8F8EADA3, 0xACC2955D, 0x2F120611, \
0x29476B92, 0xC3EEEF8F, 0x4D2F2C2A, 0x1310342A, \
0x1D39435C, 0x7892B6A0, 0x75555139, 0x13060914, \
0x2D4B6E9C, 0xC9E9ECC4, 0xBCB4A8A6, 0x98331621, \
0x215B95AB, 0xA59DB196, 0x9EB69260, 0x391B0C1A, \
0x365880AA, 0xD9F9F4A2, 0x5B362F2C, 0x1A1D3B39, \
0x2F3E4D6B, 0x899BB493, 0x6A535B39, 0x0B040D1F, \
0x3B5C83B4, 0xE0F8EABB, 0xC1B59295, 0xA7481625, \
0x2A5589AA, 0xB1ACB48C, 0x85917451, 0x3D251627, \
0x456C97C1, 0xECFEF9C0, 0x84554543, 0x42455759, \
0x5157617B, 0x97AAAE88, 0x6A636A3A, 0x0907152D, \
0x4C6F9CCC, 0xF1FFDCA6, 0xA99D7A8D, 0xAF5D172B, \
0x33517CA0, 0xB5BBBC84, 0x69604834, 0x362E2335, \
0x5580AED9, 0xF8FFFDDF, 0xB384696B, 0x68616A6E, \
0x68767B88, 0xA2B4A47D, 0x77837F40, 0x0D0E203B, \
0x5E83B5E1, 0xFBFFCE8D, 0x867B6891, 0xB1761C32, \
0x3C537599, 0xB5C6BF7E, 0x5036211A, 0x2D383548, \
0x6895C4EB, 0xFEFFFEF5, 0xDCAD928F, 0x81727479, \
0x77919695, 0xAAB49374, 0x8AA89649, 0x16182C4C, \
0x7198CDF2, 0xFFFFC87E, 0x6A64679C, 0xAA882838, \
0x485C7898, 0xB9CFBB75, 0x40200D0D, 0x29454C5E, \
0x7CA8D8F7, 0xFFFFFAF3, 0xF2C9B0A9, 0x8D736F7B, \
0x81A5ADA3, 0xB3AF806F, 0x9AC6AF5D, 0x27253D5C, \
0x84ACE3FC, 0xFFFFD08E, 0x726D7BA4, 0x9C954142, \
0x5C6C84A1, 0xC3D0AB68, 0x3C200D10, 0x30586876, \
0x8FBAE2F8, 0xFDFFF7EB, 0xEDCCBCB1, 0x7A5B6681, \
0x89B2C1B4, 0xBCA67B71, 0x9DCCC681, 0x42384C6C, \
0x95BBEFFF, 0xFFFFE1AE, 0x8E818BA4, 0x949E625C, \
0x778194AF, 0xCFCB8F59, 0x43331B1C, 0x43728891, \
0xA4C5DCE7, 0xF3FDF7E5, 0xDEBDB9A8, 0x6C4F728B, \
0x96B9D0C6, 0xC29A7E77, 0x8FB9D7AC, 0x674E5D7F, \
0xA5BBECFB, 0xFEFFF3CE, 0xB0999599, 0x929A706C, \
0x8F9CA6C1, 0xDFC4774A, 0x4E4E3232, 0x5D90A6A7, \
0xB3C8CBCD, 0xE0F5F8E1, 0xCFB2AC9C, 0x6B4B8598, \
0xA8C4DCD7, 0xC591827B, 0x7A9FE3D4, 0x8E667091, \
0xADAFD4EA, 0xF7FDFAE5, 0xCAAF9286, 0x8D8E6C71, \
0x98B8BED6, 0xEDC06943, 0x5B66474A, 0x7FB0B9B5, \
0xBDC7B6AF, 0xC1E7F6DF, 0xC2AAA18E, 0x70549BA4, \
0xB5D0E7E6, 0xC0857F74, 0x6384E5F1, 0xAB7A81A5, \
0xAC99B2CF, 0xE6F3F6E4, 0xC9AC7F6E, 0x7F735667, \
0x93D1D7E6, 0xF6C96E46, 0x5E6F565F, 0xA1C5C2C2, \
0xC7C3A695, 0x9ECEEFD4, 0xBAA29783, 0x806CADAB, \
0xBBD6EEF1, 0xB8797063, 0x5277DEF6, 0xB78896B8, \
0xA37F8DAB, 0xCBE5EFD8, 0xC5A7715C, 0x6756364B, \
0x8CE5E4E9, 0xFADA8954, 0x5C675C75, 0xBDCEC3CD, \
0xCEBF9D83, 0x7EB6E3C3, 0xB69F917E, 0x8D8BB4B3, \
0xCAE2F5F7, 0xAF6B594C, 0x4975D5EB, 0xB593A9C7, \
0x976D6D88, 0xAFD7E0C6, 0xB7A0674F, 0x52412739, \
0x8FF2E7D9, 0xF3EBAF6E, 0x5C5A5F89, 0xCFCBBFD6, \
0xCFB69576, 0x66A0D3B0, 0xB49A8783, 0x99A8AEAC, \
0xD4EEFAFB, 0xAB624439, 0x4675CADD, 0xAC9CBBC9, \
0x89605E76, 0xA0CFCDB2, 0xA9955F47, 0x47382233, \
0xA2F9E0BE, 0xDCF3D491, 0x6053699D, 0xD1BEBDD9, \
0xC4A18368, 0x5C94C9A5, 0xB596768A, 0xA5B29493, \
0xD4F8FDFD, 0xB1643A31, 0x477BC7D1, 0xA8A9C0BC, \
0x7C5B5D7B, 0xA5CAB89B, 0x9C925F48, 0x4839203C, \
0xC0FDD9A2, 0xBAE3EBBA, 0x755D7FB4, 0xCAB0B9CE, \
0xA87E6757, 0x5D99C6A6, 0xB5956380, 0x979D6A6B, \
0xC8FEFFFE, 0xC4744337, 0x4C7ECACB, 0xADB1B3A1, \
0x6F5E6F98, 0xB6C0A588, 0x96976D52, 0x513B1D50, \
0xDAFFDA8C, 0x93C1E5DB, 0x92719DC0, 0xBDA7AFB5, \
0x82594948, 0x6EA6C2AB, 0xB48D4F6B, 0x7E774042, \
0xB1FEFFFF, 0xDB955D4B, 0x5585D0C8, 0xB1B09D7F, \
0x626890BA, 0xBFB59A7B, 0x959D8360, 0x5737196A, \
0xECFFDD7D, 0x729CC9ED, 0xB389B7C2, 0xB0A2A396, \
0x5F3C2F3F, 0x86B0C0B2, 0xAB7F3F4C, 0x5E4C2329, \
0x93F8FFFF, 0xEEBD886C, 0x6793D4C4, 0xB2A67E62, \
0x5472B2D1, 0xBFA39170, 0x96A7956C, 0x562E1A86, \
0xF8FFD66B, 0x6383A5EC, 0xCE9FC6BC, 0xA7A29278, \
0x4A2F2443, 0x9DAFB4AE, 0x9369362E, 0x3A2D191F, \
0x6FE9FFFF, 0xFCDFB899, 0x88A8CFB9, 0xAC94674E, \
0x4575CBD8, 0xB3928465, 0x899F9771, 0x522421A3, \
0xFAF8B352, 0x698886DA, 0xDFAEC9AD, 0xA3A58260, \
0x483C2F54, 0xAB9F9B96, 0x74502E21, 0x2D221E28, \
0x4AC7FFFF, 0xFBEDDBC4, 0xAFBCC6AC, 0xA2805943, \
0x366CD3D0, 0xAB8F7A5B, 0x70828269, 0x4C1D2BB4, \
0xEDE18338, 0x77A175C6, 0xE9B8BF9F, 0x9EA3714F, \
0x5458466D, 0xA986817A, 0x563E281C, 0x2D21283F, \
0x319DFCFF, 0xF3DBEBE5, 0xD2CAB99F, 0x96714C3A, \
0x2854C4C7, 0xA8917A56, 0x5763615B, 0x481833B4, \
0xCFBA5122, 0x81B876BB, 0xE8BAB091, 0x93965B3E, \
0x5B715D81, 0xA1746A5D, 0x4439221B, 0x2A1F2D51, \
0x296CF9FF, 0xEAB9DAEA, 0xE9D0AB92, 0x88643F30, \
0x1C3BA9BD, 0x9D897E60, 0x3F404150, 0x4E1A309F, \
0xA08B2B13, 0x7ABA84C4, 0xE4B6A385, 0x807D4730, \
0x55766584, 0x9B78674B, 0x3C392124, 0x271A2953, \
0x2C41F3FF, 0xE59BB7D0, 0xE1CD9D85, 0x78563425, \
0x142284AA, 0x8E7F7F74, 0x3D293150, 0x602D2872, \
0x68601C0B, 0x5BA2A0D1, 0xDBB49E82, 0x6E633925, \
0x405D5572, 0x85797452, 0x37333048, 0x36171E41, \
0x332AE9FF, 0xE88D91A3, 0xBFC98F75, 0x64482A1B, \
0x10105D8F, 0x7B6E757F, 0x593A3C63, 0x81542E46, \
0x3A441A07, 0x3776B9DC, 0xD1B5A388, 0x6A583926, \
0x2A393B53, 0x696E7968, 0x342B4F80, 0x61211229, \
0x341CDDFF, 0xF09D6E6F, 0x96C08366, 0x51392112, \
0x0C083C6D, 0x6B5C6283, 0x7860587D, 0xA5894C2B, \
0x1D3A1C06, 0x1A4BCADD, 0xCABDAE96, 0x79634A31, \
0x211B2038, 0x4D607E84, 0x342B7CB7, 0x9B3E0D1A, \
0x2E1CCAFF, 0xF9B45944, 0x6CB8805A, 0x452F1A0C, \
0x09042454, 0x685B547E, 0x9B8C738F, 0xB9B67A28, \
0x123D2005, 0x0C2ED3CF, 0xC5BFB9A1, 0x90816642, \
0x210B162B, 0x2F497E9E, 0x4649B0E5, 0xD4620F19, \
0x2A1FAFFE, 0xFECA4C28, 0x4CA9855A, 0x4835190A, \
0x07041847, 0x6D665779, 0xBAA77E87, 0xB0BF9C30, \
0x16482105, 0x0E20CDC2, 0xC3B6BCA0, 0xA49E8252, \
0x260A2031, 0x2A3E81A8, 0x707DD5FA, 0xF884141F, \
0x29248BF9, 0xFFD8421A, 0x3E99926D, 0x624E2C11, \
0x09061847, 0x74776A89, 0xB5986B66, 0x849D982F, \
0x21581F07, 0x131BC7BB, 0xBDA4B596, 0xAEAF985E, \
0x240F3B47, 0x334791A5, 0x9CADEDFC, 0xFF9E1821, \
0x272A61EC, 0xFED53516, 0x38929F83, 0x7D734D22, \
0x0C081D4C, 0x7D8A84A3, 0x9C6E463D, 0x4E657227, \
0x2E621E08, 0x161AC1B9, 0xB18EA986, 0xACB3A764, \
0x1F135A66, 0x4457A29C, 0xC4D7F8FE, 0xFFB0171E, \
0x24283ECB, 0xF5C02A19, 0x3C8EA795, 0x94967239, \
0x120C2351, 0x839B9FB6, 0x7C3C231A, 0x222E3F19, \
0x3A5E1B09, 0x171AB7BB, 0xA47FA17B, 0xA9ACB36C, \
0x201C7688, 0x5B6CAD94, 0xDFEAFBFF, 0xFCC4161A, \
0x1B2324A0, 0xCD942420, 0x4D99ABA1, 0xA5AF8D4C, \
0x1D152A55, 0x85A2B2C9, 0x59190C07, 0x0A0F1814, \
0x3A4C1A0C, 0x161AA9BE, 0x987B9E7E, 0xA8A6BC79, \
0x2B258AA2, 0x7B8AB498, 0xE5F0FEF6, 0xF1D81619, \
0x1318186F, 0x9269302A, 0x639DABA5, 0xA6AC8A54, \
0x2D243153, 0x81A1B8D1, 0x4E0F0508, 0x160E071A, \
0x2F311B10, 0x161A99BF, 0x947BA18C, 0xA6A5C789, \
0x3D2B8EB2, 0x9BABBFAB, 0xE7F8FDE7, 0xE5E91819, \
0x0D0D1843, 0x5A534C35, 0x7798AAAB, 0xA0957456, \
0x46403E55, 0x7D9DB9D6, 0x61140816, 0x3B200420, \
0x201B1916, 0x1A1F87BE, 0x9882A59D, 0xA6ABD49C, \
0x513587BB, 0xB7C8D0C9, 0xECFEFCDA, 0xDEEC181B, \
0x0B081628, 0x2D4F6E41, 0x858EADB4, 0x987A5D58, \
0x6561505B, 0x7C9CB7DE, 0x7F1E1433, 0x733F061E, \
0x1310181A, 0x212875BA, 0x9F8EA4A7, 0xABBADCAB, \
0x653E7DB6, 0xC7DADDE2, 0xF1FFFCD9, 0xE1E0161A, \
0x0A071518, 0x1E58894D, 0x8984ADB9, 0x8C5D5165, \
0x8A856366, 0x84A1AFDB, 0x9F2C3066, 0xAF630B17, \
0x1513161B, 0x2F3766B3, 0x9F9A9FA8, 0xB5C4DBB5, \
0x734B72AB, 0xC5DBE6F5, 0xF7FFFCE2, 0xEAC11118, \
0x0B0E1614, 0x21579157, 0x868DA7B9, 0x814F5E89, \
0xB3A57575, 0x92A4A4D3, 0xB64060A0, 0xDC851A16, \
0x2B20141A, 0x434A5FAC, 0x96A497A3, 0xC2C6D3B7, \
0x7E596EA1, 0xBED7E7F9, 0xFDFFFEF1, 0xEE980C12, \
0x0F1D1C15, 0x284A8D64, 0x829BA2B8, 0x7E4E77B1, \
0xD4BA8283, 0xA2A392C6, 0xC75899D1, 0xF6A13B29, \
0x4E30161E, 0x56585AA5, 0x8BA893A4, 0xD0C7C8B5, \
0x83647198, 0xB9D3DAEB, 0xFEFFFFFE, 0xF07D1315, \
0x1E332A19, 0x303D8271, 0x81A99EBB, 0x815191D3, \
0xEDCA8C91, 0xAC9A7EBA, 0xD57DCBF2, 0xFEBB7157, \
0x7A40212A, 0x645D5DA0, 0x82AB97AF, 0xDBCCC5B0, \
0x816D7A9A, 0xBBD4CBD5, 0xFCFFFFFF, 0xEF853E34, \
0x3F4C371E, 0x3A3A7E7F, 0x80B39EC1, 0x83559CE5, \
0xF7D1989E, 0xB19077BB, 0xE3ABEDFE, 0xFED4AB95, \
0xA0503643, 0x69576C9F, 0x89AEA2C3, 0xE7DAD0AD, \
0x7E7488A7, 0xC8DCB8B7, 0xF6FFFFFF, 0xF1A77B6C, \
0x6D613E22, 0x403F878C, 0x81B6A8CD, 0x825396DA, \
0xF1D4A4AC, 0xB5958BCA, 0xF1D2FCFF, 0xFFEAD8C6, \
0xB8625867, 0x6A4F73A3, 0x9AB1B0D9, 0xF2EDDEAB, \
0x7B7D95B7, 0xD9E39D96, 0xEFFFFFFE, 0xF6CEAF9D, \
0x9B6B4027, 0x3F489297, 0x8ABCB7D9, 0x825286C3, \
0xE2D3AFB6, 0xB6A5AFDD, 0xF9F0FEFF, 0xFFF9EEDF, \
0xC87D818A, 0x714D77A3, 0xA8B6BFEA, 0xF9FBECAB, \
0x7D87A4C2, 0xDFD88177, 0xE1FEFFFC, 0xF7E7D6C2, \
0xB9683C2D, 0x40599E9F, 0x91C1C6E7, 0x895878AB, \
0xD0CCB7BA, 0xB4B4D2F2, 0xFBF3F3FD, 0xFFFEEDE0, \
0xCA999D9F, 0x815C7CA0, 0xB1BCCFF7, 0xFFFFF2AE, \
0x8796ADBD, 0xCFBB6359, 0xC4F6FFFC, 0xF6E8D8C7, \
0xC35F3C3B, 0x4D739DA3, 0x9EC5D6F3, 0x9763779D, \
0xBFC5BEB8, 0xA7B4EAFC, 0xEBD7DBF6, 0xFFFCE2D2, \
0xC4A4A4A0, 0x886C82A2, 0xB2C6E0FD, 0xFFFFF2B2, \
0x97A3A9A7, 0xA98D433E, 0x9AE2FEFC, 0xF5DBC5B2, \
0xB7524254, 0x69828EA0, 0xAECFE5F9, 0xB07D8BA0, \
0xB4C0C7B2, 0x8D99DEF4, 0xCFB2B8E2, 0xFCF8DCC9, \
0xB99D948B, 0x806B779E, 0xB7D5EEFF, 0xFFFFF0B9, \
0xA6A69B86, 0x77592726, 0x6DC6FCFE, 0xF5D2B6A6, \
0xA1454B6F, 0x7E827A99, 0xBDDCF2FE, 0xCEA1ADAE, \
0xB3C3D6AC, 0x6B6EBDDD, 0xAE8992CB, 0xF3F1DCC4, \
0xA1827269, 0x665C6593, 0xC0E4F9FF, 0xFFFFECBE, \
0xADA18464, 0x49301416, 0x45A4F9FF, 0xF8CDA99C, \
0x9040548A, 0x8A756693, 0xCEEBFAFF, 0xE5C6CEBC, \
0xB5CCE7A5, 0x4B4494BE, 0x8D6D77B4, 0xE6E4DABC, \
0x885F5248, 0x403E4D80, 0xC4EFFFFE, 0xFFFFE7C0, \
0xAB926C49, 0x2B17090D, 0x2C85F3FF, 0xF5C59C94, \
0x85415B98, 0x8D626096, 0xDFF9FFFF, 0xF7E5E4C1, \
0xB5D8F4A1, 0x33246B9E, 0x79626BA2, 0xD4D1D1AC, \
0x6D473A2D, 0x25242E64, 0xB7F1FFFD, 0xFFFFDEBB, \
0x9F7E5D3B, 0x1C0B040B, 0x256FEEFE, 0xEFBD928D, \
0x8A4D5D96, 0x8C6268A9, 0xECFEFFFF, 0xFEF7EABB, \
0xACDDFA97, 0x24165285, 0x73656FA0, 0xC4B9BD94, \
0x563B2B1C, 0x161D294E, 0x9EEAFFFD, 0xFFFAD2B0, \
0x906F5332, 0x1506040F, 0x2663E4F8, 0xE7B58986, \
0x955E5F8E, 0x97737CC4, 0xF7FFFFFF, 0xFFF8DDAA, \
0x9ACEEE89, 0x1B0E4078, 0x77727CA4, 0xB8A2A078, \
0x46362412, 0x0E22334C, 0x88E2FFFE, 0xFFF1BFA0, \
0x81644C2D, 0x12050715, 0x2E61D7EA, 0xD9AB8582, \
0x9F736486, 0xAB8D98E0, 0xFEFDFFFF, 0xFFEEC896, \
0x81ADCD72, 0x150B3673, 0x83858DAB, 0xAA8C805E, \
0x3B33210C, 0x0B2A445D, 0x86E0FFFF, 0xFCE3AC8D, \
0x735D472B, 0x14090C1F, 0x3B67CBD5, 0xC39F8281, \
0xA2896D86, 0xBCA8B7F3, 0xFDFAFFFF, 0xFBDCB281, \
0x667F9C54, 0x0F0B3575, 0x999B9DB1, 0x9D7B664A, \
0x352D1C08, 0x0B335A7C, 0xA5E7FFFF, 0xF3CF9979, \
0x6558402A, 0x1E14162B, 0x4975BDBA, 0xAA918184, \
0x9F9B7B90, 0xC8BFD3FD, 0xFEFAFFFE, 0xF1C59A6D, \
0x4F506437, 0x0A0C357E, 0xB4B1ABB2, 0x8D6C533F, \
0x2E241505, 0x0C396FA3, 0xC9F2FFFB, 0xE4B98565, \
0x57543B2B, 0x31272139, 0x5D83B6A3, 0x8F7F7C83, \
0x99A88FA0, 0xD3D1E8FF, 0xFEFAFFF9, 0xDFAD855C, \
0x3C2D361F, 0x08113B88, 0xC9BDB3AE, 0x7C5E4738, \
0x27190D03, 0x0D3C85C8, 0xEAFCFEF3, 0xCEA17150, \
0x484E372F, 0x453A2F4B, 0x6F95B391, 0x786A6D7D, \
0x93B1A4B3, 0xD7DCF6FF, 0xFEFCFEED, 0xC995714B, \
0x2C181813, 0x0A1A4396, 0xD4BEB2A6, 0x6D514235, \
0x1F0E0704, 0x0F419EE6, 0xFDFFFAE3, 0xB4885E3F, \
0x39463435, 0x574A3D5D, 0x82A6AF86, 0x67555668, \
0x8DB2AEB5, 0xCFE2FDFF, 0xFFFFF7DA, 0xB07F603E, \
0x1F0D0B0F, 0x11264EA0, 0xD1B5AB9B, 0x664D4636, \
0x1608050B, 0x1143AFF7, 0xFFFFF1CD, 0x9C724C2F, \
0x2B3A353E, 0x5F534D71, 0x98B3A77D, 0x5D49404A, \
0x85AEA5A1, 0xBAE3FFFF, 0xFFFCE8C3, 0x976B4E30, \
0x15070713, 0x1D385DA3, 0xC3A69D92, 0x68585436, \
0x0F090514, 0x1546BFFE, 0xFFFDE2B6, 0x85603C22, \
0x1D2D3647, 0x5E555D85, 0xABBA9C74, 0x5943332E, \
0x7AA78A7F, 0x9CDAFFFF, 0xFFF1D5B1, 0x84583E25, \
0x0D04081B, 0x2C4A6DAA, 0xB4968C8A, 0x766E6431, \
0x0B0D071C, 0x1B4FC8FE, 0xFFF4CD9F, 0x71502F17, \
0x1221384D, 0x58586F9A, 0xBFBC906E, 0x54412E19, \
0x6A966453, 0x7CCEFDFF, 0xFCE3C1A8, 0x79492D1B, \
0x08030D24, 0x3C5C7FAC, 0xA6887D86, 0x8C896B26, \
0x090F0820, 0x2256BBEE, 0xEDD7AB80, 0x5D41200D, \
0x0B19394B, 0x4F5A7BA8, 0xC7AC8066, 0x4A382C0E, \
0x567E4132, 0x60B2E5F3, 0xE4C3AA9D, 0x6B3A1E12, \
0x05040F28, 0x426983A1, 0x8F766B7F, 0x958F5D19, \
0x0D251722, 0x2960ACDB, 0xD5B89069, 0x4C321606, \
0x06153A49, 0x4B6589AE, 0xB99D7A5F, 0x3F2F2B0E, \
0x40652E25, 0x5296D3EC, 0xD5A89789, 0x6235180B, \
0x0307172D, 0x4C6F8D9F, 0x7C6B626F, 0x7F72410E, \
0x11372F29, 0x326DA1C8, 0xC3A07C57, 0x3D240E03, \
0x05153A49, 0x53769CB4, 0xA688745D, 0x37293316, \
0x2E542D29, 0x4E8BCDE8, 0xC6978474, 0x59321306, \
0x040D2039, 0x597D9B9D, 0x72646B74, 0x6C4D2508
var_8095F2B0: .word \
0xFD3D06C4, 0x02C30000, 0x07000089, 0xFFFFFF4C, \
0x000006C4, 0x03E80000, 0x08000089, 0xFFFFFF4C, \
0x000007D0, 0x00000000, 0x07800000, 0xFFFFFF00, \
0xFD6903E8, 0x06400000, 0x07800200, 0xFFFFFFFF, \
0x029703E8, 0x06400000, 0x08800200, 0xFFFFFFFF, \
0x00000000, 0x07D00000, 0x08000400, 0xFFFFFFFF, \
0x00000000, 0x07D00000, 0x00000400, 0xFFFFFFFF, \
0x05860000, 0x05860000, 0x01000400, 0xFFFFFFFF, \
0x029703E8, 0x06400000, 0x00800200, 0xFFFFFFFF, \
0x0297FC18, 0x06400000, 0x00800600, 0xFFFFFFFF, \
0x0640FC18, 0x02970000, 0x01800600, 0xFFFFFFFF, \
0x02C3F93C, 0x02C30000, 0x01000777, 0xFFFFFF4C, \
0x03E8F93C, 0x00000000, 0x02000777, 0xFFFFFF4C, \
0x0000F830, 0x00000000, 0x01800800, 0xFFFFFF00, \
0xFC1806C4, 0x00000000, 0x06000089, 0xFFFFFF4C, \
0x000007D0, 0x00000000, 0x06800000, 0xFFFFFF00, \
0xF9C003E8, 0x02970000, 0x06800200, 0xFFFFFFFF, \
0xFA7A0000, 0x05860000, 0x07000400, 0xFFFFFFFF, \
0xFD69FC18, 0x06400000, 0x07800600, 0xFFFFFFFF, \
0x0297FC18, 0x06400000, 0x08800600, 0xFFFFFFFF, \
0x0000F93C, 0x03E80000, 0x08000777, 0xFFFFFF4C, \
0x0000F93C, 0x03E80000, 0x00000777, 0xFFFFFF4C, \
0x0000F830, 0x00000000, 0x00800800, 0xFFFFFF00, \
0xFD3D06C4, 0xFD3D0000, 0x05000089, 0xFFFFFF4C, \
0x000007D0, 0x00000000, 0x05800000, 0xFFFFFF00, \
0xF9C003E8, 0xFD690000, 0x05800200, 0xFFFFFFFF, \
0xF8300000, 0x00000000, 0x06000400, 0xFFFFFFFF, \
0xF9C0FC18, 0x02970000, 0x06800600, 0xFFFFFFFF, \
0xFD3DF93C, 0x02C30000, 0x07000777, 0xFFFFFF4C, \
0x0000F830, 0x00000000, 0x07800800, 0xFFFFFF00, \
0x000006C4, 0xFC180000, 0x04000089, 0xFFFFFF4C, \
0x000007D0, 0x00000000, 0x04800000, 0xFFFFFF00
var_8095F4B0: .word \
0xFD6903E8, 0xF9C00000, 0x04800200, 0xFFFFFFFF, \
0xFD3D06C4, 0xFD3D0000, 0x05000089, 0xFFFFFF4C, \
0x000006C4, 0xFC180000, 0x04000089, 0xFFFFFF4C, \
0xF9C003E8, 0xFD690000, 0x05800200, 0xFFFFFFFF, \
0xFA7A0000, 0xFA7A0000, 0x05000400, 0xFFFFFFFF, \
0xF8300000, 0x00000000, 0x06000400, 0xFFFFFFFF, \
0xF9C0FC18, 0xFD690000, 0x05800600, 0xFFFFFFFF, \
0xF9C0FC18, 0x02970000, 0x06800600, 0xFFFFFFFF, \
0xFC18F93C, 0x00000000, 0x06000777, 0xFFFFFF4C, \
0xFD3DF93C, 0x02C30000, 0x07000777, 0xFFFFFF4C, \
0x0000F830, 0x00000000, 0x06800800, 0xFFFFFF00, \
0x02C306C4, 0xFD3D0000, 0x03000089, 0xFFFFFF4C, \
0x000007D0, 0x00000000, 0x03800000, 0xFFFFFF00, \
0x029703E8, 0xF9C00000, 0x03800200, 0xFFFFFFFF, \
0x00000000, 0xF8300000, 0x04000400, 0xFFFFFFFF, \
0xFD69FC18, 0xF9C00000, 0x04800600, 0xFFFFFFFF, \
0xFD3DF93C, 0xFD3D0000, 0x05000777, 0xFFFFFF4C, \
0x0000F830, 0x00000000, 0x05800800, 0xFFFFFF00, \
0x03E806C4, 0x00000000, 0x02000089, 0xFFFFFF4C, \
0x000007D0, 0x00000000, 0x02800000, 0xFFFFFF00, \
0x064003E8, 0xFD690000, 0x02800200, 0xFFFFFFFF, \
0x05860000, 0xFA7A0000, 0x03000400, 0xFFFFFFFF, \
0x0297FC18, 0xF9C00000, 0x03800600, 0xFFFFFFFF, \
0x0000F93C, 0xFC180000, 0x04000777, 0xFFFFFF4C, \
0x0000F830, 0x00000000, 0x04800800, 0xFFFFFF00, \
0x02C306C4, 0x02C30000, 0x01000089, 0xFFFFFF4C, \
0x000007D0, 0x00000000, 0x01800000, 0xFFFFFF00, \
0x064003E8, 0x02970000, 0x01800200, 0xFFFFFFFF, \
0x07D00000, 0x00000000, 0x02000400, 0xFFFFFFFF, \
0x0640FC18, 0xFD690000, 0x02800600, 0xFFFFFFFF, \
0x02C3F93C, 0xFD3D0000, 0x03000777, 0xFFFFFF4C, \
0x0000F830, 0x00000000, 0x03800800, 0xFFFFFF00
var_8095F6B0: .word \
0x000006C4, 0x03E80000, 0x00000089, 0xFFFFFF4C, \
0x02C306C4, 0x02C30000, 0x01000089, 0xFFFFFF4C, \
0x000007D0, 0x00000000, 0x00800000, 0xFFFFFF00, \
0x029703E8, 0x06400000, 0x00800200, 0xFFFFFFFF, \
0x064003E8, 0x02970000, 0x01800200, 0xFFFFFFFF, \
0x05860000, 0x05860000, 0x01000400, 0xFFFFFFFF, \
0x07D00000, 0x00000000, 0x02000400, 0xFFFFFFFF, \
0x0640FC18, 0x02970000, 0x01800600, 0xFFFFFFFF, \
0x0640FC18, 0xFD690000, 0x02800600, 0xFFFFFFFF, \
0x03E8F93C, 0x00000000, 0x02000777, 0xFFFFFF4C, \
0x02C3F93C, 0xFD3D0000, 0x03000777, 0xFFFFFF4C, \
0x0000F830, 0x00000000, 0x02800800, 0xFFFFFF00
var_8095F770: .word \
0xE7000000, 0x00000000, 0xFC272C60, 0x3510E37F, \
0xE200001C, 0x0C1849D8, 0xD9F0FBFF, 0x00000000, \
0xDF000000, 0x00000000
var_8095F798: .word 0x01020040
.word var_8095F2B0
.word \
0x06000204, 0x00060200, 0x06060802, 0x000A0806, \
0x060C0E10, 0x00120E0C, 0x0612140E, 0x00161412, \
0x06161814, 0x0018161A, 0x061C001E, 0x0020001C, \
0x06200600, 0x00220620, 0x06220A06, 0x00240A22, \
0x0624260A, 0x00282624, 0x062A1612, 0x00162A2C, \
0x062E1C30, 0x00321C2E, 0x0632201C, 0x00342032, \
0x06342220, 0x00362234, 0x06362422, 0x00382436, \
0x06382824, 0x0028383A, 0x053C2E3E, 0x00000000, \
0x01020040
.word var_8095F4B0
.word \
0x06000204, 0x00000602, 0x06080600, 0x00080A06, \
0x060C0A08, 0x000C0E0A, 0x06100E0C, 0x0010120E, \
0x06121014, 0x00160418, 0x061A0416, 0x001A0004, \
0x061C001A, 0x001C0800, 0x061E081C, 0x001E0C08, \
0x06200C1E, 0x0020100C, 0x06102022, 0x00241626, \
0x06281624, 0x00281A16, 0x062A1A28, 0x002A1C1A, \
0x062C1C2A, 0x002C1E1C, 0x062E1E2C, 0x002E201E, \
0x06202E30, 0x00322434, 0x06362432, 0x00362824, \
0x06382836, 0x00382A28, 0x063A2A38, 0x003A2C2A, \
0x063C2C3A, 0x003C2E2C, 0x052E3C3E, 0x00000000, \
0x0100C018
.word var_8095F6B0
.word \
0x06000204, 0x00060200, 0x06060802, 0x000A0806, \
0x060A0C08, 0x000E0C0A, 0x060E100C, 0x0012100E, \
0x06121410, 0x00141216, 0xDF000000, 0x00000000
var_8095F900: .word \
0x0A090000, 0x10010000, 0x00000000, 0x00020000, \
0x00010000, 0x00000000, 0x00000000, 0x19000000, \
0x00090009, 0x00000000, 0x00000000
var_8095F92C: .word 0x40500000
var_8095F930: .word \
0x03040506, 0x0708090A, 0x10111213, 0x191A1B20, \
0x23242526, 0x272D2E2F, 0x3435363B, 0x3C3D4344, \
0x45464748
var_8095F954: .word \
0x00010B0C, 0x0E141517, 0x1C1E2122, 0x28292B30, \
0x3237393E, 0x4041494A
var_8095F96C: .word 0x00000000

.section .rodata

var_8095F970: .word 0x43A28000
var_8095F974: .word 0x3DA3D70A
var_8095F978: .word 0x3A83126F
var_8095F97C: .word 0x3D4CCCCD
var_8095F980: .word 0x3D89AE40
var_8095F984: .word 0x3E19999A, 0x00000000, 0x00000000

