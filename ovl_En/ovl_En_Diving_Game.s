#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A7DF00:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x003C($sp)            
	lui     $at, 0xC040                ## $at = C0400000
	mtc1    $at, $f4                   ## $f4 = -3.00
	lui     a2, 0x8002                 ## a2 = 80020000
	addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	lui     a3, 0x41F0                 ## a3 = 41F00000
	jal     func_8001EC20              
	swc1    $f4, 0x006C(s0)            ## 0000006C
	lui     a2, 0x0601                 ## a2 = 06010000
	lui     a3, 0x0600                 ## a3 = 06000000
	addiu   t6, s0, 0x0180             ## t6 = 00000180
	addiu   t7, s0, 0x01F8             ## t7 = 000001F8
	addiu   t8, $zero, 0x0014          ## t8 = 00000014
	sw      t8, 0x0018($sp)            
	sw      t7, 0x0014($sp)            
	sw      t6, 0x0010($sp)            
	addiu   a3, a3, 0x2FE8             ## a3 = 06002FE8
	addiu   a2, a2, 0xBFA8             ## a2 = 0600BFA8
	lw      a0, 0x003C($sp)            
	jal     func_8008C788              
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	addiu   a1, s0, 0x033C             ## a1 = 0000033C
	sw      a1, 0x0030($sp)            
	jal     func_8004AB7C              
	lw      a0, 0x003C($sp)            
	lui     a3, %hi(var_80A7F704)      ## a3 = 80A80000
	lw      a1, 0x0030($sp)            
	addiu   a3, a3, %lo(var_80A7F704)  ## a3 = 80A7F704
	lw      a0, 0x003C($sp)            
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	addiu   t9, $zero, 0xFFFF          ## t9 = FFFFFFFF
	sb      t9, 0x0003(s0)             ## 00000003
	lui     $at, %hi(var_80A7F740)     ## $at = 80A80000
	lwc1    $f6, %lo(var_80A7F740)($at) 
	lui     $at, %hi(var_80A7F744)     ## $at = 80A80000
	lui     v0, %hi(var_80A7F700)      ## v0 = 80A80000
	swc1    $f6, 0x0050(s0)            ## 00000050
	lwc1    $f8, %lo(var_80A7F744)($at) 
	lui     $at, %hi(var_80A7F748)     ## $at = 80A80000
	addiu   v0, v0, %lo(var_80A7F700)  ## v0 = 80A7F700
	swc1    $f8, 0x0054(s0)            ## 00000054
	lwc1    $f10, %lo(var_80A7F748)($at) 
	lui     t4, %hi(func_80A7E334)     ## t4 = 80A80000
	addiu   t1, $zero, 0x0001          ## t1 = 00000001
	swc1    $f10, 0x0058(s0)           ## 00000058
	lbu     t0, 0x0000(v0)             ## 80A7F700
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
	beq     t0, $zero, lbl_80A7DFF8    
	addiu   t4, t4, %lo(func_80A7E334) ## t4 = 80A7E334
	sb      t1, 0x030F(s0)             ## 0000030F
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A7E00C 
	lw      $ra, 0x002C($sp)           
lbl_80A7DFF8:
	sb      t2, 0x0000(v0)             ## 00000000
	sb      $zero, 0x001F(s0)          ## 0000001F
	sb      t3, 0x00AE(s0)             ## 000000AE
	sw      t4, 0x0270(s0)             ## 00000270
	lw      $ra, 0x002C($sp)           
lbl_80A7E00C:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A7E01C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	lbu     t6, 0x030F(a2)             ## 0000030F
	lui     $at, 0x8012                ## $at = 80120000
	or      a0, a3, $zero              ## a0 = 00000000
	bne     t6, $zero, lbl_80A7E044    
	nop
	sh      $zero, -0x4662($at)        ## 8011B99E
lbl_80A7E044:
	jal     func_8004ABCC              
	addiu   a1, a2, 0x033C             ## a1 = 0000033C
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A7E05C:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      s0, 0x0038($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x003C($sp)           
	sw      a1, 0x0054($sp)            
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f4                   ## $f4 = 0.50
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f8                   ## $f8 = 30.00
	sub.s   $f6, $f0, $f4              
	lwc1    $f16, 0x0024(s0)           ## 00000024
	mul.s   $f10, $f6, $f8             
	add.s   $f18, $f10, $f16           
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f18, 0x0040($sp)          
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f4                   ## $f4 = 0.50
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f8                   ## $f8 = 20.00
	sub.s   $f6, $f0, $f4              
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f18                  ## $f18 = 30.00
	lwc1    $f16, 0x0028(s0)           ## 00000028
	mul.s   $f10, $f6, $f8             
	add.s   $f4, $f16, $f18            
	add.s   $f6, $f10, $f4             
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f6, 0x0044($sp)           
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f8                   ## $f8 = 0.50
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f18                  ## $f18 = 20.00
	sub.s   $f16, $f0, $f8             
	lwc1    $f4, 0x002C(s0)            ## 0000002C
	lui     $at, %hi(var_80A7F74C)     ## $at = 80A80000
	lwc1    $f12, %lo(var_80A7F74C)($at) 
	mul.s   $f10, $f16, $f18           
	add.s   $f6, $f10, $f4             
	jal     func_80026D90              
	swc1    $f6, 0x0048($sp)           
	trunc.w.s $f10, $f0                  
	lwc1    $f8, 0x0040($sp)           
	lwc1    $f16, 0x0044($sp)          
	lwc1    $f18, 0x0048($sp)          
	mfc1    t7, $f10                   
	sw      $zero, 0x001C($sp)         
	swc1    $f8, 0x0010($sp)           
	sll     t8, t7, 16                 
	sra     t9, t8, 16                 
	addiu   t0, t9, 0xFC18             ## t0 = FFFFFC18
	sw      t0, 0x0020($sp)            
	swc1    $f16, 0x0014($sp)          
	swc1    $f18, 0x0018($sp)          
	lh      t1, 0x0296(s0)             ## 00000296
	lw      a2, 0x0054($sp)            
	sw      $zero, 0x0028($sp)         
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a3, $zero, 0x0131          ## a3 = 00000131
	sw      t1, 0x0024($sp)            
	jal     func_800253F0              
	addiu   a0, a2, 0x1C24             ## a0 = 00001C24
	beq     v0, $zero, lbl_80A7E174    
	lui     $at, 0x4140                ## $at = 41400000
	mtc1    $at, $f4                   ## $f4 = 12.00
	lui     $at, 0x40C0                ## $at = 40C00000
	mtc1    $at, $f6                   ## $f6 = 6.00
	swc1    $f4, 0x0068(v0)            ## 00000068
	swc1    $f6, 0x0060(v0)            ## 00000060
lbl_80A7E174:
	lw      $ra, 0x003C($sp)           
	lw      s0, 0x0038($sp)            
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A7E188:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lh      t6, 0x13CE(v1)             ## 8011B99E
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
	bne     t6, $at, lbl_80A7E230      
	nop
	jal     func_8009CB08              
	lw      a0, 0x0024($sp)            
	bne     v0, $zero, lbl_80A7E230    
	lui     $at, 0x8012                ## $at = 80120000
	jal     func_800C6894              
	sh      $zero, -0x4662($at)        ## 8011B99E
	jal     func_800646F0              
	addiu   a0, $zero, 0x482C          ## a0 = 0000482C
	addiu   t7, $zero, 0x71AD          ## t7 = 000071AD
	sh      t7, 0x010E(s0)             ## 0000010E
	lw      a0, 0x0024($sp)            
	andi    a1, t7, 0xFFFF             ## a1 = 000071AD
	jal     func_800DCE14              
	or      a2, $zero, $zero           ## a2 = 00000000
	sh      $zero, 0x0294(s0)          ## 00000294
	lh      v0, 0x0294(s0)             ## 00000294
	addiu   t8, $zero, 0x0005          ## t8 = 00000005
	sh      t8, 0x0282(s0)             ## 00000282
	sh      v0, 0x0292(s0)             ## 00000292
	sh      v0, 0x028C(s0)             ## 0000028C
	sh      v0, 0x0298(s0)             ## 00000298
	sb      v0, 0x030E(s0)             ## 0000030E
	lw      a0, 0x0024($sp)            
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_800218EC              
	addiu   a2, $zero, 0x0008          ## a2 = 00000008
	lui     t9, %hi(func_80A7E6CC)     ## t9 = 80A80000
	addiu   t9, t9, %lo(func_80A7E6CC) ## t9 = 80A7E6CC
	sw      t9, 0x0270(s0)             ## 00000270
	beq     $zero, $zero, lbl_80A7E320 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80A7E230:
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	lhu     t0, 0x0EDA(v1)             ## 8011B4AA
	addiu   v0, $zero, 0x0005          ## v0 = 00000005
	or      a2, $zero, $zero           ## a2 = 00000000
	andi    t1, t0, 0x0100             ## t1 = 00000000
	beql    t1, $zero, lbl_80A7E258    
	lh      t2, 0x0294(s0)             ## 00000294
	addiu   v0, $zero, 0x000A          ## v0 = 0000000A
	lh      t2, 0x0294(s0)             ## 00000294
lbl_80A7E258:
	slt     $at, t2, v0                
	bne     $at, $zero, lbl_80A7E320   
	or      v0, $zero, $zero           ## v0 = 00000000
	sh      $zero, 0x13CE(v1)          ## 8011B99E
	sh      $zero, 0x0294(s0)          ## 00000294
	lh      v0, 0x0294(s0)             ## 00000294
	addiu   t5, $zero, 0x4055          ## t5 = 00004055
	sh      v0, 0x0292(s0)             ## 00000292
	sh      v0, 0x028C(s0)             ## 0000028C
	sh      v0, 0x0298(s0)             ## 00000298
	sb      v0, 0x030E(s0)             ## 0000030E
	lhu     t3, 0x0EDA(v1)             ## 8011B4AA
	andi    t4, t3, 0x0100             ## t4 = 00000000
	bnel    t4, $zero, lbl_80A7E2A0    
	lh      v0, 0x029A(s0)             ## 0000029A
	beq     $zero, $zero, lbl_80A7E2B8 
	sh      t5, 0x010E(s0)             ## 0000010E
	lh      v0, 0x029A(s0)             ## 0000029A
lbl_80A7E2A0:
	addiu   t6, $zero, 0x405D          ## t6 = 0000405D
	sh      t6, 0x010E(s0)             ## 0000010E
	slti    $at, v0, 0x0064            
	beq     $at, $zero, lbl_80A7E2B8   
	addiu   t7, v0, 0x0001             ## t7 = 00000001
	sh      t7, 0x029A(s0)             ## 0000029A
lbl_80A7E2B8:
	lw      a0, 0x0024($sp)            
	jal     func_800DCE14              
	lhu     a1, 0x010E(s0)             ## 0000010E
	addiu   t8, $zero, 0x0005          ## t8 = 00000005
	jal     func_800C6894              
	sh      t8, 0x0282(s0)             ## 00000282
	jal     func_800C69A0              
	addiu   a0, $zero, 0x0039          ## a0 = 00000039
	lw      a0, 0x0024($sp)            
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_800218EC              
	addiu   a2, $zero, 0x0008          ## a2 = 00000008
	lui     t9, 0x8012                 ## t9 = 80120000
	lhu     t9, -0x4B56(t9)            ## 8011B4AA
	lui     t2, %hi(func_80A7E6CC)     ## t2 = 80A80000
	lui     t1, %hi(func_80A7EFF4)     ## t1 = 80A80000
	andi    t0, t9, 0x0100             ## t0 = 00000000
	bne     t0, $zero, lbl_80A7E314    
	addiu   t2, t2, %lo(func_80A7E6CC) ## t2 = 80A7E6CC
	addiu   t1, t1, %lo(func_80A7EFF4) ## t1 = 80A7EFF4
	sw      t1, 0x0270(s0)             ## 00000270
	beq     $zero, $zero, lbl_80A7E320 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80A7E314:
	sw      t2, 0x0270(s0)             ## 00000270
	beq     $zero, $zero, lbl_80A7E320 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80A7E320:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A7E334:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x2FE8             ## a0 = 06002FE8
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC120                ## $at = C1200000
	mtc1    $at, $f18                  ## $f18 = -10.00
	cvt.s.w $f6, $f4                   
	lw      a0, 0x0028($sp)            
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x2FE8             ## a1 = 06002FE8
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	trunc.w.s $f8, $f6                   
	sw      $zero, 0x0014($sp)         
	swc1    $f18, 0x0018($sp)          
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	mfc1    t7, $f8                    
	nop
	sll     t8, t7, 16                 
	sra     t9, t8, 16                 
	mtc1    t9, $f10                   ## $f10 = 0.00
	nop
	cvt.s.w $f16, $f10                 
	jal     func_8008D17C              
	swc1    $f16, 0x0010($sp)          
	lw      v0, 0x0028($sp)            
	lui     t1, %hi(func_80A7E3D0)     ## t1 = 80A80000
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	addiu   t1, t1, %lo(func_80A7E3D0) ## t1 = 80A7E3D0
	sb      t0, 0x030D(v0)             ## 0000030D
	sw      t1, 0x0270(v0)             ## 00000270
	lw      $ra, 0x0024($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A7E3D0:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lh      t6, 0x0298(s0)             ## 00000298
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    t6, $at, lbl_80A7E410      
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A7E188              
	lw      a1, 0x0024($sp)            
	bne     v0, $zero, lbl_80A7E54C    
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80A7E410:
	jal     func_80022930              
	lw      a1, 0x0024($sp)            
	beq     v0, $zero, lbl_80A7E490    
	lw      a0, 0x0024($sp)            
	lh      t7, 0x0282(s0)             ## 00000282
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	beql    t7, $at, lbl_80A7E550      
	lw      $ra, 0x001C($sp)           
	lh      v0, 0x0298(s0)             ## 00000298
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lw      a0, 0x0024($sp)            
	beq     v0, $zero, lbl_80A7E460    
	or      a1, $zero, $zero           ## a1 = 00000000
	beq     v0, $at, lbl_80A7E478      
	lui     t9, %hi(func_80A7F088)     ## t9 = 80A80000
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     v0, $at, lbl_80A7E484      
	lui     t0, %hi(func_80A7EF74)     ## t0 = 80A80000
	beq     $zero, $zero, lbl_80A7E550 
	lw      $ra, 0x001C($sp)           
lbl_80A7E460:
	jal     func_800218EC              
	addiu   a2, $zero, 0x0008          ## a2 = 00000008
	lui     t8, %hi(func_80A7E560)     ## t8 = 80A80000
	addiu   t8, t8, %lo(func_80A7E560) ## t8 = 80A7E560
	beq     $zero, $zero, lbl_80A7E54C 
	sw      t8, 0x0270(s0)             ## 00000270
lbl_80A7E478:
	addiu   t9, t9, %lo(func_80A7F088) ## t9 = FFFFF088
	beq     $zero, $zero, lbl_80A7E54C 
	sw      t9, 0x0270(s0)             ## 00000270
lbl_80A7E484:
	addiu   t0, t0, %lo(func_80A7EF74) ## t0 = FFFFEF74
	beq     $zero, $zero, lbl_80A7E54C 
	sw      t0, 0x0270(s0)             ## 00000270
lbl_80A7E490:
	jal     func_800597C0              
	addiu   a1, $zero, 0x001D          ## a1 = 0000001D
	beq     v0, $zero, lbl_80A7E4B8    
	lw      a0, 0x0024($sp)            
	jal     func_800597C0              
	addiu   a1, $zero, 0x001D          ## a1 = 0000001D
	addiu   t1, $zero, 0x0006          ## t1 = 00000006
	sh      v0, 0x010E(s0)             ## 0000010E
	beq     $zero, $zero, lbl_80A7E53C 
	sh      t1, 0x0282(s0)             ## 00000282
lbl_80A7E4B8:
	lh      v0, 0x0298(s0)             ## 00000298
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	addiu   t2, $zero, 0x0004          ## t2 = 00000004
	beq     v0, $zero, lbl_80A7E4E8    
	lui     t3, 0x8012                 ## t3 = 80120000
	beq     v0, $at, lbl_80A7E520      
	addiu   t9, $zero, 0x4056          ## t9 = 00004056
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     v0, $at, lbl_80A7E530      
	addiu   t1, $zero, 0x405B          ## t1 = 0000405B
	beq     $zero, $zero, lbl_80A7E540 
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80A7E4E8:
	sh      t2, 0x0282(s0)             ## 00000282
	lhu     t3, -0x4B56(t3)            ## 8011B4AA
	addiu   t5, $zero, 0x4053          ## t5 = 00004053
	addiu   t7, $zero, 0x405C          ## t7 = 0000405C
	andi    t4, t3, 0x0100             ## t4 = 00000000
	bne     t4, $zero, lbl_80A7E514    
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	sh      t5, 0x010E(s0)             ## 0000010E
	beq     $zero, $zero, lbl_80A7E53C 
	sh      t6, 0x028C(s0)             ## 0000028C
lbl_80A7E514:
	sh      t7, 0x010E(s0)             ## 0000010E
	beq     $zero, $zero, lbl_80A7E53C 
	sh      t8, 0x028C(s0)             ## 0000028C
lbl_80A7E520:
	addiu   t0, $zero, 0x0005          ## t0 = 00000005
	sh      t9, 0x010E(s0)             ## 0000010E
	beq     $zero, $zero, lbl_80A7E53C 
	sh      t0, 0x0282(s0)             ## 00000282
lbl_80A7E530:
	addiu   t2, $zero, 0x0005          ## t2 = 00000005
	sh      t1, 0x010E(s0)             ## 0000010E
	sh      t2, 0x0282(s0)             ## 00000282
lbl_80A7E53C:
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80A7E540:
	lw      a1, 0x0024($sp)            
	jal     func_80022A68              
	lui     a2, 0x42A0                 ## a2 = 42A00000
lbl_80A7E54C:
	lw      $ra, 0x001C($sp)           
lbl_80A7E550:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A7E560:
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
	lh      t6, 0x0282(s0)             ## 00000282
	lw      a3, 0x0024($sp)            
	bnel    t6, v0, lbl_80A7E6BC       
	lw      $ra, 0x001C($sp)           
	jal     func_800D6110              
	or      a0, a3, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_80A7E6B8    
	lw      a3, 0x0024($sp)            
	lui     v0, 0x0001                 ## v0 = 00010000
	addu    v0, v0, a3                 
	lbu     v0, 0x04BD(v0)             ## 000104BD
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lui     t7, 0x8012                 ## t7 = 80120000
	beq     v0, $zero, lbl_80A7E5D4    
	nop
	beql    v0, $at, lbl_80A7E624      
	sh      $zero, 0x0294(s0)          ## 00000294
	beq     $zero, $zero, lbl_80A7E640 
	nop
lbl_80A7E5D4:
	lh      t7, -0x59FC(t7)            ## 8011A604
	slti    $at, t7, 0x0014            
	bnel    $at, $zero, lbl_80A7E600   
	sh      $zero, 0x0294(s0)          ## 00000294
	jal     func_800721CC              
	addiu   a0, $zero, 0xFFEC          ## a0 = FFFFFFEC
	lw      a3, 0x0024($sp)            
	addiu   t8, $zero, 0x4054          ## t8 = 00004054
	beq     $zero, $zero, lbl_80A7E640 
	sh      t8, 0x010E(s0)             ## 0000010E
	sh      $zero, 0x0294(s0)          ## 00000294
lbl_80A7E600:
	lh      v0, 0x0294(s0)             ## 00000294
	addiu   t9, $zero, 0x0085          ## t9 = 00000085
	sh      t9, 0x010E(s0)             ## 0000010E
	sh      v0, 0x0292(s0)             ## 00000292
	sh      v0, 0x028C(s0)             ## 0000028C
	sh      v0, 0x0298(s0)             ## 00000298
	beq     $zero, $zero, lbl_80A7E640 
	sb      v0, 0x030E(s0)             ## 0000030E
	sh      $zero, 0x0294(s0)          ## 00000294
lbl_80A7E624:
	lh      v0, 0x0294(s0)             ## 00000294
	addiu   t0, $zero, 0x002D          ## t0 = 0000002D
	sh      t0, 0x010E(s0)             ## 0000010E
	sh      v0, 0x0292(s0)             ## 00000292
	sh      v0, 0x028C(s0)             ## 0000028C
	sh      v0, 0x0298(s0)             ## 00000298
	sb      v0, 0x030E(s0)             ## 0000030E
lbl_80A7E640:
	lui     t1, 0x8012                 ## t1 = 80120000
	lhu     t1, -0x4B56(t1)            ## 8011B4AA
	or      a0, a3, $zero              ## a0 = 00000000
	andi    t2, t1, 0x0100             ## t2 = 00000000
	beq     t2, $zero, lbl_80A7E670    
	nop
	lhu     v0, 0x010E(s0)             ## 0000010E
	addiu   $at, $zero, 0x0085         ## $at = 00000085
	beq     v0, $at, lbl_80A7E670      
	addiu   $at, $zero, 0x002D         ## $at = 0000002D
	bne     v0, $at, lbl_80A7E690      
	addiu   t5, $zero, 0x0037          ## t5 = 00000037
lbl_80A7E670:
	jal     func_800DCE80              
	lhu     a1, 0x010E(s0)             ## 0000010E
	lui     t4, %hi(func_80A7E6CC)     ## t4 = 80A80000
	addiu   t3, $zero, 0x0005          ## t3 = 00000005
	addiu   t4, t4, %lo(func_80A7E6CC) ## t4 = 80A7E6CC
	sh      t3, 0x0282(s0)             ## 00000282
	beq     $zero, $zero, lbl_80A7E6B8 
	sw      t4, 0x0270(s0)             ## 00000270
lbl_80A7E690:
	lui     $at, 0x0001                ## $at = 00010000
	addu    $at, $at, a3               
	sb      t5, 0x03DC($at)            ## 000103DC
	or      a0, a3, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_800218EC              
	addiu   a2, $zero, 0x0008          ## a2 = 00000008
	lui     t6, %hi(func_80A7E780)     ## t6 = 80A80000
	addiu   t6, t6, %lo(func_80A7E780) ## t6 = 80A7E780
	sw      t6, 0x0270(s0)             ## 00000270
lbl_80A7E6B8:
	lw      $ra, 0x001C($sp)           
lbl_80A7E6BC:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A7E6CC:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s1, 0x0018($sp)            
	sw      s0, 0x0014($sp)            
	or      s0, a1, $zero              ## s0 = 00000000
	or      s1, a0, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	jal     func_8008C9C0              
	addiu   a0, s1, 0x013C             ## a0 = 0000013C
	jal     func_800DD464              
	addiu   a0, s0, 0x20D8             ## a0 = 000020D8
	lh      t6, 0x0282(s1)             ## 00000282
	bnel    t6, v0, lbl_80A7E770       
	lw      $ra, 0x001C($sp)           
	jal     func_800D6110              
	or      a0, s0, $zero              ## a0 = 00000000
	beql    v0, $zero, lbl_80A7E770    
	lw      $ra, 0x001C($sp)           
	lh      t7, 0x028C(s1)             ## 0000028C
	lui     $at, 0x0001                ## $at = 00010000
	addu    $at, $at, s0               
	bne     t7, $zero, lbl_80A7E74C    
	addiu   t9, $zero, 0x0037          ## t9 = 00000037
	jal     func_800D6218              
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_800218EC              
	addiu   a2, $zero, 0x0007          ## a2 = 00000007
	lui     t8, %hi(func_80A7E334)     ## t8 = 80A80000
	addiu   t8, t8, %lo(func_80A7E334) ## t8 = 80A7E334
	beq     $zero, $zero, lbl_80A7E76C 
	sw      t8, 0x0270(s1)             ## 00000270
lbl_80A7E74C:
	sb      t9, 0x03DC($at)            ## 000003DC
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_800218EC              
	addiu   a2, $zero, 0x0008          ## a2 = 00000008
	lui     t0, %hi(func_80A7E780)     ## t0 = 80A80000
	addiu   t0, t0, %lo(func_80A7E780) ## t0 = 80A7E780
	sw      t0, 0x0270(s1)             ## 00000270
lbl_80A7E76C:
	lw      $ra, 0x001C($sp)           
lbl_80A7E770:
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80A7E780:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x219C             ## a0 = 0600219C
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC120                ## $at = C1200000
	mtc1    $at, $f18                  ## $f18 = -10.00
	cvt.s.w $f6, $f4                   
	lw      a0, 0x0028($sp)            
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   t0, $zero, 0x0002          ## t0 = 00000002
	sw      t0, 0x0014($sp)            
	addiu   a1, a1, 0x219C             ## a1 = 0600219C
	trunc.w.s $f8, $f6                   
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f18, 0x0018($sp)          
	mfc1    t7, $f8                    
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	sll     t8, t7, 16                 
	sra     t9, t8, 16                 
	mtc1    t9, $f10                   ## $f10 = 0.00
	nop
	cvt.s.w $f16, $f10                 
	jal     func_8008D17C              
	swc1    $f16, 0x0010($sp)          
	lw      v0, 0x0028($sp)            
	lui     t1, %hi(func_80A7E818)     ## t1 = 80A80000
	addiu   t1, t1, %lo(func_80A7E818) ## t1 = 80A7E818
	sb      $zero, 0x030D(v0)          ## 0000030D
	sw      t1, 0x0270(v0)             ## 00000270
	lw      $ra, 0x0024($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A7E818:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      a1, 0x0024($sp)            
	or      a1, a0, $zero              ## a1 = 00000000
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0020($sp)            
	lwc1    $f4, 0x0154(a1)            ## 00000154
	sw      a1, 0x0020($sp)            
	addiu   a0, a1, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	swc1    $f4, 0x001C($sp)           
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f8                   ## $f8 = 15.00
	lwc1    $f6, 0x001C($sp)           
	lui     t6, %hi(func_80A7E878)     ## t6 = 80A80000
	lw      a1, 0x0020($sp)            
	c.le.s  $f8, $f6                   
	addiu   t6, t6, %lo(func_80A7E878) ## t6 = 80A7E878
	bc1fl   lbl_80A7E86C               
	lw      $ra, 0x0014($sp)           
	sw      t6, 0x0270(a1)             ## 00000270
	lw      $ra, 0x0014($sp)           
lbl_80A7E86C:
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A7E878:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s1, 0x0018($sp)            
	sw      s0, 0x0014($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8009D0F0              
	or      a0, s1, $zero              ## a0 = 00000000
	sh      v0, 0x0290(s0)             ## 00000290
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_8009D1AC              
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	or      a0, s1, $zero              ## a0 = 00000000
	lh      a1, 0x0290(s0)             ## 00000290
	jal     func_8009D1AC              
	addiu   a2, $zero, 0x0007          ## a2 = 00000007
	lui     $at, 0xC352                ## $at = C3520000
	mtc1    $at, $f4                   ## $f4 = -210.00
	lui     $at, 0xC2A0                ## $at = C2A00000
	mtc1    $at, $f6                   ## $f6 = -80.00
	lui     $at, 0xC47F                ## $at = C47F0000
	mtc1    $at, $f8                   ## $f8 = -1020.00
	lui     $at, 0xC38C                ## $at = C38C0000
	mtc1    $at, $f10                  ## $f10 = -280.00
	lui     $at, 0xC1A0                ## $at = C1A00000
	mtc1    $at, $f16                  ## $f16 = -20.00
	lui     $at, 0xC370                ## $at = C3700000
	mtc1    $at, $f18                  ## $f18 = -240.00
	addiu   v1, $zero, 0x000A          ## v1 = 0000000A
	sh      v1, 0x028A(s0)             ## 0000028A
	lui     t6, 0x8012                 ## t6 = 80120000
	swc1    $f4, 0x02E4(s0)            ## 000002E4
	swc1    $f6, 0x02E8(s0)            ## 000002E8
	swc1    $f8, 0x02EC(s0)            ## 000002EC
	swc1    $f10, 0x02C0(s0)           ## 000002C0
	swc1    $f16, 0x02C4(s0)           ## 000002C4
	swc1    $f18, 0x02C8(s0)           ## 000002C8
	lhu     t6, -0x4B56(t6)            ## 8011B4AA
	addiu   t8, $zero, 0x0005          ## t8 = 00000005
	lui     $at, %hi(var_80A7F750)     ## $at = 80A80000
	andi    t7, t6, 0x0100             ## t7 = 00000000
	bnel    t7, $zero, lbl_80A7E93C    
	sh      v1, 0x0296(s0)             ## 00000296
	beq     $zero, $zero, lbl_80A7E93C 
	sh      t8, 0x0296(s0)             ## 00000296
	sh      v1, 0x0296(s0)             ## 00000296
lbl_80A7E93C:
	lwc1    $f2, %lo(var_80A7F750)($at) 
	lui     $at, 0x42A0                ## $at = 42A00000
	mtc1    $at, $f18                  ## $f18 = 80.00
	swc1    $f2, 0x02F8(s0)            ## 000002F8
	swc1    $f2, 0x02F4(s0)            ## 000002F4
	swc1    $f2, 0x02F0(s0)            ## 000002F0
	swc1    $f2, 0x02D4(s0)            ## 000002D4
	swc1    $f2, 0x02D0(s0)            ## 000002D0
	swc1    $f2, 0x02CC(s0)            ## 000002CC
	lwc1    $f4, 0x00EC(s1)            ## 000000EC
	lui     $at, 0x437A                ## $at = 437A0000
	or      a0, s1, $zero              ## a0 = 00000000
	swc1    $f4, 0x02A8(s0)            ## 000002A8
	lwc1    $f6, 0x00F0(s1)            ## 000000F0
	lh      a1, 0x0290(s0)             ## 00000290
	addiu   a2, s0, 0x02A8             ## a2 = 000002A8
	swc1    $f6, 0x02AC(s0)            ## 000002AC
	lwc1    $f8, 0x00F4(s1)            ## 000000F4
	addiu   a3, s0, 0x02B4             ## a3 = 000002B4
	swc1    $f8, 0x02B0(s0)            ## 000002B0
	lwc1    $f10, 0x00E0(s1)           ## 000000E0
	mtc1    $at, $f8                   ## $f8 = 250.00
	lui     $at, %hi(var_80A7F754)     ## $at = 80A80000
	swc1    $f10, 0x02B4(s0)           ## 000002B4
	lwc1    $f16, 0x00E4(s1)           ## 000000E4
	add.s   $f4, $f16, $f18            
	lwc1    $f18, 0x02C0(s0)           ## 000002C0
	lwc1    $f16, 0x02B4(s0)           ## 000002B4
	swc1    $f4, 0x02B8(s0)            ## 000002B8
	lwc1    $f6, 0x00E8(s1)            ## 000000E8
	sub.s   $f0, $f16, $f18            
	lwc1    $f18, 0x02C8(s0)           ## 000002C8
	add.s   $f10, $f6, $f8             
	lwc1    $f8, 0x02C4(s0)            ## 000002C4
	lwc1    $f6, 0x02B8(s0)            ## 000002B8
	abs.s   $f0, $f0                   
	swc1    $f10, 0x02BC(s0)           ## 000002BC
	lwc1    $f2, %lo(var_80A7F754)($at) 
	lwc1    $f16, 0x02BC(s0)           ## 000002BC
	mul.s   $f4, $f0, $f2              
	sub.s   $f0, $f6, $f8              
	lwc1    $f8, 0x02E4(s0)            ## 000002E4
	lwc1    $f6, 0x02A8(s0)            ## 000002A8
	abs.s   $f0, $f0                   
	swc1    $f4, 0x02D8(s0)            ## 000002D8
	mul.s   $f10, $f0, $f2             
	sub.s   $f0, $f16, $f18            
	lwc1    $f18, 0x02E8(s0)           ## 000002E8
	lwc1    $f16, 0x02AC(s0)           ## 000002AC
	abs.s   $f0, $f0                   
	swc1    $f10, 0x02DC(s0)           ## 000002DC
	mul.s   $f4, $f0, $f2              
	sub.s   $f0, $f6, $f8              
	lwc1    $f8, 0x02EC(s0)            ## 000002EC
	lwc1    $f6, 0x02B0(s0)            ## 000002B0
	abs.s   $f0, $f0                   
	swc1    $f4, 0x02E0(s0)            ## 000002E0
	mul.s   $f10, $f0, $f2             
	sub.s   $f0, $f16, $f18            
	abs.s   $f0, $f0                   
	swc1    $f10, 0x02FC(s0)           ## 000002FC
	mul.s   $f4, $f0, $f2              
	sub.s   $f0, $f6, $f8              
	abs.s   $f0, $f0                   
	swc1    $f4, 0x0300(s0)            ## 00000300
	mul.s   $f10, $f0, $f2             
	jal     func_8009D328              
	swc1    $f10, 0x0304(s0)           ## 00000304
	or      a0, s1, $zero              ## a0 = 00000000
	lh      a1, 0x0290(s0)             ## 00000290
	jal     func_8009D55C              
	lw      a2, 0x02DC(s1)             ## 000002DC
	mtc1    $zero, $f16                ## $f16 = 0.00
	lui     t0, %hi(func_80A7EA8C)     ## t0 = 80A80000
	addiu   t9, $zero, 0x003C          ## t9 = 0000003C
	addiu   t0, t0, %lo(func_80A7EA8C) ## t0 = 80A7EA8C
	sh      t9, 0x0284(s0)             ## 00000284
	sw      t0, 0x0270(s0)             ## 00000270
	swc1    $f16, 0x0308(s0)           ## 00000308
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80A7EA8C:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lw      a0, 0x0024($sp)            
	jal     func_8009DBE4              
	addiu   a1, s0, 0x00E4             ## a1 = 000000E4
	beql    v0, $zero, lbl_80A7EAC8    
	lh      a1, 0x0290(s0)             ## 00000290
	jal     func_800C7548              
	or      a0, $zero, $zero           ## a0 = 00000000
	lh      a1, 0x0290(s0)             ## 00000290
lbl_80A7EAC8:
	beql    a1, $zero, lbl_80A7EBAC    
	lw      a0, 0x0024($sp)            
	lwc1    $f4, 0x02D8(s0)            ## 000002D8
	lwc1    $f6, 0x0308(s0)            ## 00000308
	addiu   a0, s0, 0x02B4             ## a0 = 000002B4
	lw      a1, 0x02C0(s0)             ## 000002C0
	mul.s   $f8, $f4, $f6              
	lw      a2, 0x02CC(s0)             ## 000002CC
	mfc1    a3, $f8                    
	jal     func_80064280              
	nop
	lwc1    $f10, 0x02E0(s0)           ## 000002E0
	lwc1    $f16, 0x0308(s0)           ## 00000308
	addiu   a0, s0, 0x02BC             ## a0 = 000002BC
	lw      a1, 0x02C8(s0)             ## 000002C8
	mul.s   $f18, $f10, $f16           
	lw      a2, 0x02D4(s0)             ## 000002D4
	mfc1    a3, $f18                   
	jal     func_80064280              
	nop
	lwc1    $f4, 0x02FC(s0)            ## 000002FC
	lwc1    $f6, 0x0308(s0)            ## 00000308
	addiu   a0, s0, 0x02A8             ## a0 = 000002A8
	lw      a1, 0x02E4(s0)             ## 000002E4
	mul.s   $f8, $f4, $f6              
	lw      a2, 0x02F0(s0)             ## 000002F0
	mfc1    a3, $f8                    
	jal     func_80064280              
	nop
	lwc1    $f10, 0x0300(s0)           ## 00000300
	lwc1    $f16, 0x0308(s0)           ## 00000308
	addiu   a0, s0, 0x02AC             ## a0 = 000002AC
	lw      a1, 0x02E8(s0)             ## 000002E8
	mul.s   $f18, $f10, $f16           
	lw      a2, 0x02F4(s0)             ## 000002F4
	mfc1    a3, $f18                   
	jal     func_80064280              
	nop
	lwc1    $f4, 0x0304(s0)            ## 00000304
	lwc1    $f6, 0x0308(s0)            ## 00000308
	addiu   a0, s0, 0x02B0             ## a0 = 000002B0
	lw      a1, 0x02EC(s0)             ## 000002EC
	mul.s   $f8, $f4, $f6              
	lw      a2, 0x02F8(s0)             ## 000002F8
	mfc1    a3, $f8                    
	jal     func_80064280              
	nop
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f0                   ## $f0 = 1.00
	lui     a3, 0x3CA3                 ## a3 = 3CA30000
	ori     a3, a3, 0xD70A             ## a3 = 3CA3D70A
	mfc1    a1, $f0                    
	mfc1    a2, $f0                    
	jal     func_80064280              
	addiu   a0, s0, 0x0308             ## a0 = 00000308
	lh      a1, 0x0290(s0)             ## 00000290
	lw      a0, 0x0024($sp)            
lbl_80A7EBAC:
	addiu   a2, s0, 0x02A8             ## a2 = 000002A8
	jal     func_8009D328              
	addiu   a3, s0, 0x02B4             ## a3 = 000002B4
	lbu     t6, 0x030E(s0)             ## 0000030E
	bnel    t6, $zero, lbl_80A7EC34    
	lh      t7, 0x0284(s0)             ## 00000284
	lh      t7, 0x028A(s0)             ## 0000028A
	addiu   t8, $zero, 0x0005          ## t8 = 00000005
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    t7, $zero, lbl_80A7EC34    
	lh      t7, 0x0284(s0)             ## 00000284
	sh      t8, 0x028A(s0)             ## 0000028A
	jal     func_80A7E05C              
	lw      a1, 0x0024($sp)            
	lh      t9, 0x0296(s0)             ## 00000296
	lui     t1, 0x8012                 ## t1 = 80120000
	addiu   t3, $zero, 0x001E          ## t3 = 0000001E
	addiu   t0, t9, 0xFFFF             ## t0 = FFFFFFFF
	sh      t0, 0x0296(s0)             ## 00000296
	lhu     t1, -0x4B56(t1)            ## 8011B4AA
	addiu   t4, $zero, 0x0005          ## t4 = 00000005
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	andi    t2, t1, 0x0100             ## t2 = 00000000
	bnel    t2, $zero, lbl_80A7EC1C    
	sh      t4, 0x0286(s0)             ## 00000286
	beq     $zero, $zero, lbl_80A7EC1C 
	sh      t3, 0x0286(s0)             ## 00000286
	sh      t4, 0x0286(s0)             ## 00000286
lbl_80A7EC1C:
	lh      t5, 0x0296(s0)             ## 00000296
	bgtzl   t5, lbl_80A7EC34           
	lh      t7, 0x0284(s0)             ## 00000284
	sh      $zero, 0x0296(s0)          ## 00000296
	sb      t6, 0x030E(s0)             ## 0000030E
	lh      t7, 0x0284(s0)             ## 00000284
lbl_80A7EC34:
	beql    t7, $zero, lbl_80A7ED08    
	lh      t8, 0x0292(s0)             ## 00000292
	lwc1    $f10, 0x02B4(s0)           ## 000002B4
	lwc1    $f16, 0x02C0(s0)           ## 000002C0
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f2                   ## $f2 = 2.00
	sub.s   $f0, $f10, $f16            
	abs.s   $f0, $f0                   
	c.lt.s  $f0, $f2                   
	nop
	bc1fl   lbl_80A7ED3C               
	lw      $ra, 0x001C($sp)           
	lwc1    $f18, 0x02B8(s0)           ## 000002B8
	lwc1    $f4, 0x02C4(s0)            ## 000002C4
	sub.s   $f0, $f18, $f4             
	abs.s   $f0, $f0                   
	c.lt.s  $f0, $f2                   
	nop
	bc1fl   lbl_80A7ED3C               
	lw      $ra, 0x001C($sp)           
	lwc1    $f6, 0x02BC(s0)            ## 000002BC
	lwc1    $f8, 0x02C8(s0)            ## 000002C8
	sub.s   $f0, $f6, $f8              
	abs.s   $f0, $f0                   
	c.lt.s  $f0, $f2                   
	nop
	bc1fl   lbl_80A7ED3C               
	lw      $ra, 0x001C($sp)           
	lwc1    $f10, 0x02A8(s0)           ## 000002A8
	lwc1    $f16, 0x02E4(s0)           ## 000002E4
	sub.s   $f0, $f10, $f16            
	abs.s   $f0, $f0                   
	c.lt.s  $f0, $f2                   
	nop
	bc1fl   lbl_80A7ED3C               
	lw      $ra, 0x001C($sp)           
	lwc1    $f18, 0x02AC(s0)           ## 000002AC
	lwc1    $f4, 0x02E8(s0)            ## 000002E8
	sub.s   $f0, $f18, $f4             
	abs.s   $f0, $f0                   
	c.lt.s  $f0, $f2                   
	nop
	bc1fl   lbl_80A7ED3C               
	lw      $ra, 0x001C($sp)           
	lwc1    $f6, 0x02B0(s0)            ## 000002B0
	lwc1    $f8, 0x02EC(s0)            ## 000002EC
	sub.s   $f0, $f6, $f8              
	abs.s   $f0, $f0                   
	c.lt.s  $f0, $f2                   
	nop
	bc1fl   lbl_80A7ED3C               
	lw      $ra, 0x001C($sp)           
	lh      t8, 0x0292(s0)             ## 00000292
lbl_80A7ED08:
	lui     t2, %hi(func_80A7ED4C)     ## t2 = 80A80000
	addiu   t9, $zero, 0x0046          ## t9 = 00000046
	beq     t8, $zero, lbl_80A7ED34    
	addiu   t2, t2, %lo(func_80A7ED4C) ## t2 = 80A7ED4C
	lui     t1, %hi(func_80A7EE04)     ## t1 = 80A80000
	addiu   t0, $zero, 0x0002          ## t0 = 00000002
	addiu   t1, t1, %lo(func_80A7EE04) ## t1 = 80A7EE04
	sh      t9, 0x0284(s0)             ## 00000284
	sh      t0, 0x0292(s0)             ## 00000292
	beq     $zero, $zero, lbl_80A7ED38 
	sw      t1, 0x0270(s0)             ## 00000270
lbl_80A7ED34:
	sw      t2, 0x0270(s0)             ## 00000270
lbl_80A7ED38:
	lw      $ra, 0x001C($sp)           
lbl_80A7ED3C:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A7ED4C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      a1, 0x001C($sp)            
	or      a1, a0, $zero              ## a1 = 00000000
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	addiu   a0, a1, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a1, 0x0018($sp)            
	lw      a1, 0x0018($sp)            
	lui     t9, %hi(func_80A7EA8C)     ## t9 = 80A80000
	lui     $at, 0xC352                ## $at = C3520000
	lh      t6, 0x0286(a1)             ## 00000286
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	addiu   t8, $zero, 0x0064          ## t8 = 00000064
	bne     t6, $zero, lbl_80A7EDF4    
	addiu   t9, t9, %lo(func_80A7EA8C) ## t9 = 80A7EA8C
	mtc1    $at, $f0                   ## $f0 = -210.00
	lui     $at, 0xC2A0                ## $at = C2A00000
	mtc1    $at, $f2                   ## $f2 = -80.00
	lui     $at, 0xC47F                ## $at = C47F0000
	mtc1    $at, $f12                  ## $f12 = -1020.00
	lui     $at, 0xC38C                ## $at = C38C0000
	mtc1    $at, $f14                  ## $f14 = -280.00
	lui     $at, 0xC1A0                ## $at = C1A00000
	mtc1    $at, $f16                  ## $f16 = -20.00
	lui     $at, 0xC370                ## $at = C3700000
	mtc1    $at, $f18                  ## $f18 = -240.00
	sh      t7, 0x0292(a1)             ## 00000292
	sh      t8, 0x0284(a1)             ## 00000284
	sw      t9, 0x0270(a1)             ## 00000270
	swc1    $f0, 0x02E4(a1)            ## 000002E4
	swc1    $f0, 0x02A8(a1)            ## 000002A8
	swc1    $f2, 0x02E8(a1)            ## 000002E8
	swc1    $f2, 0x02AC(a1)            ## 000002AC
	swc1    $f12, 0x02EC(a1)           ## 000002EC
	swc1    $f12, 0x02B0(a1)           ## 000002B0
	swc1    $f14, 0x02C0(a1)           ## 000002C0
	swc1    $f14, 0x02B4(a1)           ## 000002B4
	swc1    $f16, 0x02C4(a1)           ## 000002C4
	swc1    $f16, 0x02B8(a1)           ## 000002B8
	swc1    $f18, 0x02C8(a1)           ## 000002C8
	swc1    $f18, 0x02BC(a1)           ## 000002BC
lbl_80A7EDF4:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A7EE04:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lh      t6, 0x0284(s0)             ## 00000284
	lw      a0, 0x0024($sp)            
	bnel    t6, $zero, lbl_80A7EE74    
	lw      $ra, 0x001C($sp)           
	jal     func_8009D21C              
	lh      a1, 0x0290(s0)             ## 00000290
	lw      a0, 0x0024($sp)            
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_8009D1AC              
	addiu   a2, $zero, 0x0007          ## a2 = 00000007
	addiu   t7, $zero, 0x405A          ## t7 = 0000405A
	sh      t7, 0x010E(s0)             ## 0000010E
	lw      a0, 0x0024($sp)            
	jal     func_800DCE80              
	andi    a1, t7, 0xFFFF             ## a1 = 0000405A
	lui     t9, %hi(func_80A7EE84)     ## t9 = 80A80000
	addiu   t8, $zero, 0x0005          ## t8 = 00000005
	addiu   t9, t9, %lo(func_80A7EE84) ## t9 = 80A7EE84
	sh      t8, 0x0282(s0)             ## 00000282
	sw      t9, 0x0270(s0)             ## 00000270
	lw      $ra, 0x001C($sp)           
lbl_80A7EE74:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A7EE84:
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
	lh      t6, 0x0282(s0)             ## 00000282
	bnel    t6, v0, lbl_80A7EF64       
	lw      $ra, 0x001C($sp)           
	jal     func_800D6110              
	lw      a0, 0x0024($sp)            
	beql    v0, $zero, lbl_80A7EF64    
	lw      $ra, 0x001C($sp)           
	jal     func_800D6218              
	lw      a0, 0x0024($sp)            
	lui     t7, 0x8012                 ## t7 = 80120000
	lhu     t7, -0x4B56(t7)            ## 8011B4AA
	lui     t9, 0x8012                 ## t9 = 80120000
	lui     t0, 0x8012                 ## t0 = 80120000
	andi    t8, t7, 0x0100             ## t8 = 00000000
	bne     t8, $zero, lbl_80A7EF0C    
	nop
	lw      t9, -0x4600(t9)            ## 8011BA00
	lh      a0, 0x12D8(t9)             ## 801212D8
	addiu   a0, a0, 0x0032             ## a0 = 00000032
	sll     a0, a0, 16                 
	jal     func_8007397C              
	sra     a0, a0, 16                 
	beq     $zero, $zero, lbl_80A7EF24 
	nop
lbl_80A7EF0C:
	lw      t0, -0x4600(t0)            ## FFFFBA00
	lh      a0, 0x12D8(t0)             ## 000012D8
	addiu   a0, a0, 0x0032             ## a0 = 00000032
	sll     a0, a0, 16                 
	jal     func_8007397C              
	sra     a0, a0, 16                 
lbl_80A7EF24:
	jal     func_800C6820              
	addiu   a0, $zero, 0x006C          ## a0 = 0000006C
	lw      a0, 0x0024($sp)            
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_800218EC              
	addiu   a2, $zero, 0x0007          ## a2 = 00000007
	lui     t4, %hi(func_80A7E3D0)     ## t4 = 80A80000
	addiu   t1, $zero, 0x405B          ## t1 = 0000405B
	addiu   t2, $zero, 0x0005          ## t2 = 00000005
	addiu   t3, $zero, 0x0002          ## t3 = 00000002
	addiu   t4, t4, %lo(func_80A7E3D0) ## t4 = 80A7E3D0
	sh      t1, 0x010E(s0)             ## 0000010E
	sh      t2, 0x0282(s0)             ## 00000282
	sh      t3, 0x0298(s0)             ## 00000298
	sw      t4, 0x0270(s0)             ## 00000270
	lw      $ra, 0x001C($sp)           
lbl_80A7EF64:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A7EF74:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_8008C9C0              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	lw      a0, 0x001C($sp)            
	jal     func_800DD464              
	addiu   a0, a0, 0x20D8             ## a0 = 000020D8
	lw      t6, 0x0018($sp)            
	lh      t7, 0x0282(t6)             ## 00000282
	bnel    t7, v0, lbl_80A7EFDC       
	lw      a0, 0x0018($sp)            
	jal     func_800D6110              
	lw      a0, 0x001C($sp)            
	beql    v0, $zero, lbl_80A7EFDC    
	lw      a0, 0x0018($sp)            
	jal     func_800D6218              
	lw      a0, 0x001C($sp)            
	lw      t9, 0x0018($sp)            
	lui     t8, %hi(func_80A7E3D0)     ## t8 = 80A80000
	addiu   t8, t8, %lo(func_80A7E3D0) ## t8 = 80A7E3D0
	beq     $zero, $zero, lbl_80A7EFE4 
	sw      t8, 0x0270(t9)             ## 00000270
	lw      a0, 0x0018($sp)            
lbl_80A7EFDC:
	jal     func_80A7E188              
	lw      a1, 0x001C($sp)            
lbl_80A7EFE4:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A7EFF4:
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
	lh      t6, 0x0282(s0)             ## 00000282
	bnel    t6, v0, lbl_80A7F078       
	lw      $ra, 0x001C($sp)           
	jal     func_800D6110              
	lw      a0, 0x0024($sp)            
	beql    v0, $zero, lbl_80A7F078    
	lw      $ra, 0x001C($sp)           
	jal     func_800D6218              
	lw      a0, 0x0024($sp)            
	lw      a0, 0x0024($sp)            
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_800218EC              
	addiu   a2, $zero, 0x0007          ## a2 = 00000007
	lui     t0, %hi(func_80A7E3D0)     ## t0 = 80A80000
	addiu   t7, $zero, 0x4056          ## t7 = 00004056
	addiu   t8, $zero, 0x0005          ## t8 = 00000005
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	addiu   t0, t0, %lo(func_80A7E3D0) ## t0 = 80A7E3D0
	sh      t7, 0x010E(s0)             ## 0000010E
	sh      t8, 0x0282(s0)             ## 00000282
	sh      t9, 0x0298(s0)             ## 00000298
	sw      t0, 0x0270(s0)             ## 00000270
	lw      $ra, 0x001C($sp)           
lbl_80A7F078:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A7F088:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lw      a0, 0x002C($sp)            
	jal     func_800DD464              
	addiu   a0, a0, 0x20D8             ## a0 = 000020D8
	lh      t6, 0x0282(s0)             ## 00000282
	bnel    t6, v0, lbl_80A7F108       
	lw      $ra, 0x0024($sp)           
	jal     func_800D6110              
	lw      a0, 0x002C($sp)            
	beql    v0, $zero, lbl_80A7F108    
	lw      $ra, 0x0024($sp)           
	jal     func_800D6218              
	lw      a0, 0x002C($sp)            
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f4                   ## $f4 = 10.00
	sw      $zero, 0x0118(s0)          ## 00000118
	lw      a1, 0x002C($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a2, $zero, 0x0037          ## a2 = 00000037
	lui     a3, 0x42B4                 ## a3 = 42B40000
	jal     func_80022BD4              
	swc1    $f4, 0x0010($sp)           
	lui     t7, %hi(func_80A7F118)     ## t7 = 80A80000
	addiu   t7, t7, %lo(func_80A7F118) ## t7 = 80A7F118
	sw      t7, 0x0270(s0)             ## 00000270
	lw      $ra, 0x0024($sp)           
lbl_80A7F108:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A7F118:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0020($sp)            
	sw      a1, 0x0024($sp)            
	lw      a0, 0x0020($sp)            
	jal     func_8008C9C0              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	lw      a0, 0x0020($sp)            
	jal     func_80022BB0              
	lw      a1, 0x0024($sp)            
	beq     v0, $zero, lbl_80A7F158    
	lw      a0, 0x0020($sp)            
	lui     t6, %hi(func_80A7F184)     ## t6 = 80A80000
	addiu   t6, t6, %lo(func_80A7F184) ## t6 = 80A7F184
	beq     $zero, $zero, lbl_80A7F174 
	sw      t6, 0x0270(a0)             ## 00000270
lbl_80A7F158:
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f4                   ## $f4 = 10.00
	lw      a1, 0x0024($sp)            
	addiu   a2, $zero, 0x0037          ## a2 = 00000037
	lui     a3, 0x42B4                 ## a3 = 42B40000
	jal     func_80022BD4              
	swc1    $f4, 0x0010($sp)           
lbl_80A7F174:
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A7F184:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a2, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_800DD464              
	addiu   a0, a0, 0x20D8             ## a0 = 000020D8
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	bne     v0, $at, lbl_80A7F204      
	lw      a2, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_800D6110              
	sw      a2, 0x0018($sp)            
	beq     v0, $zero, lbl_80A7F204    
	lw      a2, 0x0018($sp)            
	sh      $zero, 0x0294(a2)          ## 00000294
	lh      v0, 0x0294(a2)             ## 00000294
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	sh      v0, 0x0292(a2)             ## 00000292
	sh      v0, 0x028C(a2)             ## 0000028C
	sh      v0, 0x0298(a2)             ## 00000298
	sb      v0, 0x030E(a2)             ## 0000030E
	lhu     t6, 0x0EDA(v1)             ## 8011B4AA
	lui     t8, %hi(func_80A7E334)     ## t8 = 80A80000
	addiu   t8, t8, %lo(func_80A7E334) ## t8 = 80A7E334
	ori     t7, t6, 0x0100             ## t7 = 00000100
	sh      t7, 0x0EDA(v1)             ## 8011B4AA
	sw      t8, 0x0270(a2)             ## 00000270
lbl_80A7F204:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A7F214:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x004C($sp)            
	lw      t6, 0x004C($sp)            
	lui     t2, 0x8012                 ## t2 = 80120000
	lw      t7, 0x1C44(t6)             ## 00001C44
	sw      t7, 0x003C($sp)            
	lh      v0, 0x0284(s0)             ## 00000284
	beq     v0, $zero, lbl_80A7F248    
	addiu   t8, v0, 0xFFFF             ## t8 = FFFFFFFF
	sh      t8, 0x0284(s0)             ## 00000284
lbl_80A7F248:
	lh      v0, 0x0286(s0)             ## 00000286
	beq     v0, $zero, lbl_80A7F258    
	addiu   t9, v0, 0xFFFF             ## t9 = FFFFFFFF
	sh      t9, 0x0286(s0)             ## 00000286
lbl_80A7F258:
	lh      v0, 0x0288(s0)             ## 00000288
	beq     v0, $zero, lbl_80A7F268    
	addiu   t0, v0, 0xFFFF             ## t0 = FFFFFFFF
	sh      t0, 0x0288(s0)             ## 00000288
lbl_80A7F268:
	lh      v0, 0x028A(s0)             ## 0000028A
	beq     v0, $zero, lbl_80A7F278    
	addiu   t1, v0, 0xFFFF             ## t1 = FFFFFFFF
	sh      t1, 0x028A(s0)             ## 0000028A
lbl_80A7F278:
	lh      t2, -0x4660(t2)            ## 8011B9A0
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
	bnel    t2, $at, lbl_80A7F294      
	lh      t3, 0x0288(s0)             ## 00000288
	jal     func_800C666C              
	nop
	lh      t3, 0x0288(s0)             ## 00000288
lbl_80A7F294:
	bnel    t3, $zero, lbl_80A7F2E4    
	lw      t9, 0x0270(s0)             ## 00000270
	lh      t5, 0x028E(s0)             ## 0000028E
	addiu   t4, $zero, 0x0002          ## t4 = 00000002
	sh      t4, 0x0288(s0)             ## 00000288
	addiu   t6, t5, 0x0001             ## t6 = 00000001
	sh      t6, 0x028E(s0)             ## 0000028E
	lh      t7, 0x028E(s0)             ## 0000028E
	slti    $at, t7, 0x0003            
	bne     $at, $zero, lbl_80A7F2E0   
	lui     $at, 0x4270                ## $at = 42700000
	mtc1    $at, $f12                  ## $f12 = 60.00
	jal     func_80026D64              
	sh      $zero, 0x028E(s0)          ## 0000028E
	trunc.w.s $f4, $f0                   
	mfc1    t1, $f4                    
	nop
	addiu   t2, t1, 0x0014             ## t2 = 00000014
	sh      t2, 0x0288(s0)             ## 00000288
lbl_80A7F2E0:
	lw      t9, 0x0270(s0)             ## 00000270
lbl_80A7F2E4:
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x004C($sp)            
	jalr    $ra, t9                    
	nop
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80020F04              
	lui     a1, 0x42A0                 ## a1 = 42A00000
	lw      t3, 0x003C($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x0314             ## a1 = 00000314
	lw      t5, 0x0024(t3)             ## 00000024
	addiu   a2, $zero, 0x0002          ## a2 = 00000002
	addiu   a3, $zero, 0x0004          ## a3 = 00000004
	sw      t5, 0x032C(s0)             ## 0000032C
	lw      t4, 0x0028(t3)             ## 00000028
	sw      t4, 0x0330(s0)             ## 00000330
	lw      t5, 0x002C(t3)             ## 0000002C
	sw      t5, 0x0334(s0)             ## 00000334
	lw      t6, 0x003C($sp)            
	lwc1    $f6, 0x0028(t6)            ## 00000028
	jal     func_80027854              
	swc1    $f6, 0x0330(s0)            ## 00000330
	lwl     t8, 0x031C(s0)             ## 0000031C
	lwl     t1, 0x0322(s0)             ## 00000322
	lwr     t8, 0x031F(s0)             ## 0000031F
	lwr     t1, 0x0325(s0)             ## 00000325
	lw      a0, 0x004C($sp)            
	swl     t8, 0x0274(s0)             ## 00000274
	swl     t1, 0x027A(s0)             ## 0000027A
	swr     t8, 0x0277(s0)             ## 00000277
	swr     t1, 0x027D(s0)             ## 0000027D
	lhu     t8, 0x0320(s0)             ## 00000320
	lhu     t1, 0x0326(s0)             ## 00000326
	lui     t2, 0x0001                 ## t2 = 00010000
	addu    t2, t2, a0                 
	sh      t8, 0x0278(s0)             ## 00000278
	sh      t1, 0x027E(s0)             ## 0000027E
	lw      t2, 0x1DE4(t2)             ## 00011DE4
	andi    t9, t2, 0x000F             ## t9 = 00000000
	bnel    t9, $zero, lbl_80A7F3D4    
	lh      t6, 0x0280(s0)             ## 00000280
	lw      t4, 0x0024(s0)             ## 00000024
	addiu   a1, $sp, 0x0030            ## a1 = FFFFFFE8
	lui     $at, 0x41A0                ## $at = 41A00000
	sw      t4, 0x0000(a1)             ## FFFFFFE8
	lw      t3, 0x0028(s0)             ## 00000028
	mtc1    $at, $f10                  ## $f10 = 20.00
	addiu   t5, $zero, 0x001E          ## t5 = 0000001E
	sw      t3, 0x0004(a1)             ## FFFFFFEC
	lw      t4, 0x002C(s0)             ## 0000002C
	addiu   a2, $zero, 0x0064          ## a2 = 00000064
	addiu   a3, $zero, 0x01F4          ## a3 = 000001F4
	sw      t4, 0x0008(a1)             ## FFFFFFF0
	lwc1    $f8, 0x0034($sp)           
	sw      t5, 0x0010($sp)            
	add.s   $f16, $f8, $f10            
	jal     func_8001CF3C              
	swc1    $f16, 0x0034($sp)          
	lw      a0, 0x004C($sp)            
	lh      t6, 0x0280(s0)             ## 00000280
lbl_80A7F3D4:
	lui     $at, 0x4270                ## $at = 42700000
	mtc1    $at, $f18                  ## $f18 = 60.00
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	sh      t7, 0x0280(s0)             ## 00000280
	addiu   t8, $zero, 0x001D          ## t8 = 0000001D
	sw      t8, 0x0014($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	lui     a2, 0x41A0                 ## a2 = 41A00000
	lui     a3, 0x41A0                 ## a3 = 41A00000
	jal     func_80021E6C              
	swc1    $f18, 0x0010($sp)          
	addiu   a2, s0, 0x033C             ## a2 = 0000033C
	or      a1, a2, $zero              ## a1 = 0000033C
	sw      a2, 0x002C($sp)            
	jal     func_80050B00              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a0, 0x004C($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	lw      a2, 0x002C($sp)            
	jal     func_8004C130              ## CollisionCheck_setOT
	addu    a1, a0, $at                
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A7F440:
	lw      v1, 0x02C4(a0)             ## 000002C4
	lui     t6, 0xDF00                 ## t6 = DF000000
	addiu   v1, v1, 0xFFF0             ## v1 = FFFFFFF0
	sw      v1, 0x02C4(a0)             ## 000002C4
	sw      t6, 0x0000(v1)             ## FFFFFFF0
	sw      $zero, 0x0004(v1)          ## FFFFFFF4
	or      v0, v1, $zero              ## v0 = FFFFFFF0
	jr      $ra                        
	nop


func_80A7F464:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0028($sp)            
	sw      a2, 0x0030($sp)            
	sw      a3, 0x0034($sp)            
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	bne     a1, $at, lbl_80A7F498      
	lw      v0, 0x0038($sp)            
	lw      v1, 0x003C($sp)            
	lh      t6, 0x0000(v0)             ## 00000000
	lh      t7, 0x027C(v1)             ## 0000027C
	addu    t8, t6, t7                 
	sh      t8, 0x0000(v0)             ## 00000000
lbl_80A7F498:
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	lw      v0, 0x0038($sp)            
	bne     a1, $at, lbl_80A7F4C8      
	lw      v1, 0x003C($sp)            
	lh      t9, 0x0000(v0)             ## 00000000
	lh      t0, 0x0276(v1)             ## 00000276
	lh      t2, 0x0004(v0)             ## 00000004
	addu    t1, t9, t0                 
	sh      t1, 0x0000(v0)             ## 00000000
	lh      t3, 0x0278(v1)             ## 00000278
	addu    t4, t2, t3                 
	sh      t4, 0x0004(v0)             ## 00000004
lbl_80A7F4C8:
	lbu     t5, 0x030D(v1)             ## 0000030D
	addiu   $at, $zero, 0x0008         ## $at = 00000008
	beql    t5, $zero, lbl_80A7F5B4    
	or      v0, $zero, $zero           ## v0 = 00000000
	beq     a1, $at, lbl_80A7F4F4      
	sll     v1, a1,  2                 
	addiu   $at, $zero, 0x0009         ## $at = 00000009
	beq     a1, $at, lbl_80A7F4F4      
	addiu   $at, $zero, 0x000C         ## $at = 0000000C
	bnel    a1, $at, lbl_80A7F5B4      
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80A7F4F4:
	lw      t6, 0x0028($sp)            
	subu    v1, v1, a1                 
	sll     v1, v1,  3                 
	lw      t7, 0x009C(t6)             ## 0000009C
	addu    v1, v1, a1                 
	sll     v1, v1,  1                 
	addiu   t8, v1, 0x0814             ## t8 = 00000814
	multu   t7, t8                     
	sw      v1, 0x0018($sp)            
	mflo    a0                         
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lw      v0, 0x0038($sp)            
	lui     $at, 0x4348                ## $at = 43480000
	mtc1    $at, $f8                   ## $f8 = 200.00
	lh      t9, 0x0002(v0)             ## 00000002
	lw      v1, 0x0018($sp)            
	mul.s   $f10, $f0, $f8             
	mtc1    t9, $f4                    ## $f4 = 0.00
	addiu   t4, v1, 0x0940             ## t4 = 00000940
	cvt.s.w $f6, $f4                   
	add.s   $f16, $f6, $f10            
	trunc.w.s $f18, $f16                 
	mfc1    t1, $f18                   
	nop
	sh      t1, 0x0002(v0)             ## 00000002
	lw      t2, 0x0028($sp)            
	lw      t3, 0x009C(t2)             ## 0000009C
	multu   t3, t4                     
	mflo    a0                         
	sll     a0, a0, 16                 
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	lw      v0, 0x0038($sp)            
	lui     $at, 0x4348                ## $at = 43480000
	mtc1    $at, $f6                   ## $f6 = 200.00
	lh      t5, 0x0004(v0)             ## 00000004
	mul.s   $f10, $f0, $f6             
	mtc1    t5, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f8, $f4                   
	add.s   $f16, $f8, $f10            
	trunc.w.s $f18, $f16                 
	mfc1    t7, $f18                   
	nop
	sh      t7, 0x0004(v0)             ## 00000004
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80A7F5B4:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A7F5C4:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x004C($sp)            
	lw      t6, 0x004C($sp)            
	lw      a0, 0x0000(t6)             ## 00000000
	jal     func_8007E298              
	sw      a0, 0x003C($sp)            
	lw      t0, 0x003C($sp)            
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t8, 0xFB00                 ## t8 = FB000000
	addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t0)             ## 000002C0
	sw      t9, 0x0004(v1)             ## 00000004
	sw      t8, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t5, 0xDB06                 ## t5 = DB060000
	ori     t5, t5, 0x0030             ## t5 = DB060030
	addiu   t4, v1, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(t0)             ## 000002C0
	sw      t5, 0x0000(v1)             ## 00000000
	lw      t6, 0x004C($sp)            
	lw      a0, 0x0000(t6)             ## 00000000
	jal     func_80A7F440              
	sw      v1, 0x0030($sp)            
	lw      t3, 0x0030($sp)            
	lw      t0, 0x003C($sp)            
	sw      v0, 0x0004(t3)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t8, 0xDB06                 ## t8 = DB060000
	ori     t8, t8, 0x0020             ## t8 = DB060020
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t0)             ## 000002C0
	sw      t8, 0x0000(v1)             ## 00000000
	lh      t9, 0x028E(s0)             ## 0000028E
	lui     t2, %hi(var_80A7F730)      ## t2 = 80A80000
	lui     $at, 0x00FF                ## $at = 00FF0000
	sll     t4, t9,  2                 
	addu    t2, t2, t4                 
	lw      t2, %lo(var_80A7F730)(t2)  
	lui     t9, 0x8012                 ## t9 = 80120000
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	sll     t6, t2,  4                 
	srl     t7, t6, 28                 
	sll     t8, t7,  2                 
	addu    t9, t9, t8                 
	lw      t9, 0x0C38(t9)             ## 80120C38
	and     t5, t2, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t4, t5, t9                 
	addu    t6, t4, $at                
	sw      t6, 0x0004(v1)             ## 00000004
	lw      a1, 0x0140(s0)             ## 00000140
	lw      a2, 0x015C(s0)             ## 0000015C
	lbu     a3, 0x013E(s0)             ## 0000013E
	lui     t7, %hi(func_80A7F464)     ## t7 = 80A80000
	addiu   t7, t7, %lo(func_80A7F464) ## t7 = 80A7F464
	sw      t7, 0x0010($sp)            
	sw      s0, 0x0018($sp)            
	sw      $zero, 0x0014($sp)         
	jal     func_80089D8C              
	lw      a0, 0x004C($sp)            
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop

.section .data

var_80A7F6E0: .word 0x01240400, 0x00000019, 0x00FE0000, 0x00000388
.word func_80A7DF00
.word func_80A7E01C
.word func_80A7F214
.word func_80A7F5C4
var_80A7F700: .word 0x00000000
var_80A7F704: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x000A000A, 0x00000000, 0x00000000
var_80A7F730: .word 0x06003E40, 0x06004640, 0x06004E40, 0x00000000

.section .rodata

var_80A7F740: .word 0x3C23D70A
var_80A7F744: .word 0x3C54FDF3
var_80A7F748: .word 0x3C656041
var_80A7F74C: .word 0x455AC000
var_80A7F750: .word 0x3DCCCCCD
var_80A7F754: .word 0x3D23D70A, 0x00000000, 0x00000000

