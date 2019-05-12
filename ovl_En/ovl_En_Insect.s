#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A57380:
	lh      t6, 0x001C(a0)             ## 0000001C
	lui     t9, %hi(var_80A59410)      ## t9 = 80A60000
	andi    t7, t6, 0x0003             ## t7 = 00000000
	sll     t8, t7,  1                 
	addu    t9, t9, t8                 
	lhu     t9, %lo(var_80A59410)(t9)  
	sh      t9, 0x0304(a0)             ## 00000304
	jr      $ra                        
	nop


func_80A573A4:
	lwc1    $f4, 0x0000(a0)            ## 00000000
	lwc1    $f6, 0x0000(a1)            ## 00000000
	lwc1    $f8, 0x0008(a0)            ## 00000008
	lwc1    $f10, 0x0008(a1)           ## 00000008
	sub.s   $f2, $f4, $f6              
	sub.s   $f12, $f8, $f10            
	mul.s   $f16, $f2, $f2             
	nop
	mul.s   $f18, $f12, $f12           
	add.s   $f0, $f16, $f18            
	jr      $ra                        
	nop


func_80A573D4:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lui     $at, 0x4200                ## $at = 42000000
	mtc1    $at, $f6                   ## $f6 = 32.00
	lwc1    $f4, 0x0090(a2)            ## 00000090
	lw      v0, 0x1C44(a1)             ## 00001C44
	ori     $at, $zero, 0x8000         ## $at = 00008000
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_80A574B4               
	or      v0, $zero, $zero           ## v0 = 00000000
	lh      a0, 0x008A(a2)             ## 0000008A
	sw      a2, 0x0030($sp)            
	sw      v0, 0x0028($sp)            
	addu    a0, a0, $at                
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lui     $at, 0x4180                ## $at = 41800000
	mtc1    $at, $f8                   ## $f8 = 16.00
	lw      v0, 0x0028($sp)            
	lw      t6, 0x0030($sp)            
	mul.s   $f10, $f0, $f8             
	lwc1    $f16, 0x0024(v0)           ## 00000024
	ori     $at, $zero, 0x8000         ## $at = 00008000
	add.s   $f18, $f10, $f16           
	swc1    $f18, 0x001C($sp)          
	lwc1    $f4, 0x0028(v0)            ## 00000028
	swc1    $f4, 0x0020($sp)           
	lh      a0, 0x008A(t6)             ## 0000008A
	addu    a0, a0, $at                
	sll     a0, a0, 16                 
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	lui     $at, 0x4180                ## $at = 41800000
	mtc1    $at, $f6                   ## $f6 = 16.00
	lw      v0, 0x0028($sp)            
	lw      a1, 0x0030($sp)            
	mul.s   $f8, $f0, $f6              
	lwc1    $f10, 0x002C(v0)           ## 0000002C
	addiu   a0, $sp, 0x001C            ## a0 = FFFFFFEC
	addiu   a1, a1, 0x0024             ## a1 = 00000024
	add.s   $f16, $f8, $f10            
	jal     func_80A573A4              
	swc1    $f16, 0x0024($sp)          
	lui     $at, 0x43C8                ## $at = 43C80000
	mtc1    $at, $f18                  ## $f18 = 400.00
	nop
	c.le.s  $f0, $f18                  
	nop
	bc1fl   lbl_80A574B4               
	or      v0, $zero, $zero           ## v0 = 00000000
	beq     $zero, $zero, lbl_80A574B4 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80A574B4:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A574C4:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	mtc1    $zero, $f0                 ## $f0 = 0.00
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	lw      a0, 0x0028($sp)            
	lui     a1, 0x0403                 ## a1 = 04030000
	mfc1    a3, $f0                    
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0x469C             ## a1 = 0403469C
	lui     a2, 0x3F80                 ## a2 = 3F800000
	swc1    $f0, 0x0010($sp)           
	swc1    $f0, 0x0018($sp)           
	jal     func_8008D17C              
	addiu   a0, a0, 0x019C             ## a0 = 0000019C
	lw      $ra, 0x0024($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A57510:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s1, 0x0020($sp)            
	or      s1, a0, $zero              ## s1 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      s3, 0x0028($sp)            
	sw      s2, 0x0024($sp)            
	sw      s0, 0x001C($sp)            
	sdc1    $f20, 0x0010($sp)          
	lw      s0, 0x1C6C(a1)             ## 00001C6C
	lui     $at, 0x45C8                ## $at = 45C80000
	mtc1    $at, $f20                  ## $f20 = 6400.00
	or      s3, $zero, $zero           ## s3 = 00000000
	beq     s0, $zero, lbl_80A575A4    
	sw      $zero, 0x0310(s1)          ## 00000310
	addiu   s2, $zero, 0x01CF          ## s2 = 000001CF
	lh      t6, 0x0000(s0)             ## 00000000
lbl_80A57550:
	bnel    s2, t6, lbl_80A5759C       
	lw      s0, 0x0124(s0)             ## 00000124
	lwc1    $f12, 0x0024(s1)           ## 00000024
	lwc1    $f14, 0x002C(s1)           ## 0000002C
	lw      a2, 0x0024(s0)             ## 00000024
	jal     func_800A5470              
	lw      a3, 0x002C(s0)             ## 0000002C
	c.lt.s  $f0, $f20                  
	nop
	bc1fl   lbl_80A5759C               
	lw      s0, 0x0124(s0)             ## 00000124
	lb      t7, 0x0003(s1)             ## 00000003
	lb      t8, 0x0003(s0)             ## 00000003
	bnel    t7, t8, lbl_80A5759C       
	lw      s0, 0x0124(s0)             ## 00000124
	addiu   s3, $zero, 0x0001          ## s3 = 00000001
	mov.s   $f20, $f0                  
	sw      s0, 0x0310(s1)             ## 00000310
	lw      s0, 0x0124(s0)             ## 00000124
lbl_80A5759C:
	bnel    s0, $zero, lbl_80A57550    
	lh      t6, 0x0000(s0)             ## 00000000
lbl_80A575A4:
	or      v0, s3, $zero              ## v0 = 00000001
	lw      $ra, 0x002C($sp)           
	ldc1    $f20, 0x0010($sp)          
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	lw      s2, 0x0024($sp)            
	lw      s3, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_80A575C8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lh      v0, 0x030E(a0)             ## 0000030E
	addiu   a1, $zero, 0x39F0          ## a1 = 000039F0
	blez    v0, lbl_80A575E8           
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	beq     $zero, $zero, lbl_80A5764C 
	sh      t6, 0x030E(a0)             ## 0000030E
lbl_80A575E8:
	jal     func_80022FD0              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	lui     $at, %hi(var_80A59440)     ## $at = 80A60000
	lwc1    $f12, %lo(var_80A59440)($at) 
	lwc1    $f0, 0x01B8(a0)            ## 000001B8
	lui     $at, 0x4040                ## $at = 40400000
	mtc1    $at, $f4                   ## $f4 = 3.00
	c.lt.s  $f0, $f12                  
	addiu   t0, $zero, 0x0002          ## t0 = 00000002
	bc1fl   lbl_80A57624               
	mov.s   $f2, $f0                   
	beq     $zero, $zero, lbl_80A57624 
	mov.s   $f2, $f12                  
	mov.s   $f2, $f0                   
lbl_80A57624:
	div.s   $f6, $f4, $f2              
	trunc.w.s $f8, $f6                   
	mfc1    t8, $f8                    
	nop
	sh      t8, 0x030E(a0)             ## 0000030E
	lh      t9, 0x030E(a0)             ## 0000030E
	slti    $at, t9, 0x0002            
	beql    $at, $zero, lbl_80A57650   
	lw      $ra, 0x0014($sp)           
	sh      t0, 0x030E(a0)             ## 0000030E
lbl_80A5764C:
	lw      $ra, 0x0014($sp)           
lbl_80A57650:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A5765C:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s3, 0x003C($sp)            
	sw      s1, 0x0034($sp)            
	or      s1, a0, $zero              ## s1 = 00000000
	or      s3, a1, $zero              ## s3 = 00000000
	sw      $ra, 0x0044($sp)           
	sw      s4, 0x0040($sp)            
	sw      s2, 0x0038($sp)            
	sw      s0, 0x0030($sp)            
	lui     a1, %hi(var_80A59418)      ## a1 = 80A60000
	addiu   a1, a1, %lo(var_80A59418)  ## a1 = 80A59418
	jal     func_80063F7C              
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_80A57380              
	or      a0, s1, $zero              ## a0 = 00000000
	lh      s2, 0x001C(s1)             ## 0000001C
	lui     a2, 0x0403                 ## a2 = 04030000
	lui     a3, 0x0403                 ## a3 = 04030000
	andi    s2, s2, 0x0003             ## s2 = 00000000
	sll     s2, s2, 16                 
	addiu   t6, s1, 0x01E0             ## t6 = 000001E0
	addiu   t7, s1, 0x0270             ## t7 = 00000270
	addiu   t8, $zero, 0x0018          ## t8 = 00000018
	sra     s2, s2, 16                 
	sw      t8, 0x0018($sp)            
	sw      t7, 0x0014($sp)            
	sw      t6, 0x0010($sp)            
	addiu   a3, a3, 0x469C             ## a3 = 0403469C
	addiu   a2, a2, 0x5A30             ## a2 = 04035A30
	or      a0, s3, $zero              ## a0 = 00000000
	jal     func_8008C684              
	addiu   a1, s1, 0x019C             ## a1 = 0000019C
	addiu   s0, s1, 0x013C             ## s0 = 0000013C
	or      a1, s0, $zero              ## a1 = 0000013C
	jal     func_8004A484              
	or      a0, s3, $zero              ## a0 = 00000000
	lui     a3, %hi(var_80A59400)      ## a3 = 80A60000
	addiu   t9, s1, 0x015C             ## t9 = 0000015C
	sw      t9, 0x0010($sp)            
	addiu   a3, a3, %lo(var_80A59400)  ## a3 = 80A59400
	or      a0, s3, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 0000013C
	jal     func_8004A874              
	or      a2, s1, $zero              ## a2 = 00000000
	lhu     v1, 0x0304(s1)             ## 00000304
	addiu   t0, $zero, 0x001E          ## t0 = 0000001E
	sb      t0, 0x00AE(s1)             ## 000000AE
	andi    t1, v1, 0x0001             ## t1 = 00000000
	beq     t1, $zero, lbl_80A5773C    
	lui     $at, %hi(var_80A59444)     ## $at = 80A60000
	lwc1    $f4, %lo(var_80A59444)($at) 
	lui     $at, 0xC000                ## $at = C0000000
	mtc1    $at, $f6                   ## $f6 = -2.00
	lhu     v1, 0x0304(s1)             ## 00000304
	swc1    $f4, 0x006C(s1)            ## 0000006C
	swc1    $f6, 0x0070(s1)            ## 00000070
lbl_80A5773C:
	andi    t2, v1, 0x0004             ## t2 = 00000000
	beq     t2, $zero, lbl_80A57760    
	addiu   a0, $zero, 0x00C8          ## a0 = 000000C8
	jal     func_80063BF0              
	addiu   a1, $zero, 0x0028          ## a1 = 00000028
	lw      t3, 0x0004(s1)             ## 00000004
	sh      v0, 0x030C(s1)             ## 0000030C
	ori     t4, t3, 0x0010             ## t4 = 00000010
	sw      t4, 0x0004(s1)             ## 00000004
lbl_80A57760:
	addiu   s4, $zero, 0x0002          ## s4 = 00000002
	beq     s2, s4, lbl_80A57770       
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bne     s2, $at, lbl_80A57828      
lbl_80A57770:
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_80A57510              
	or      a1, s3, $zero              ## a1 = 00000000
	beq     v0, $zero, lbl_80A5779C    
	nop
	lhu     t5, 0x0304(s1)             ## 00000304
	mtc1    $zero, $f8                 ## $f8 = 0.00
	lui     $at, %hi(var_80A593B0)     ## $at = 80A60000
	ori     t6, t5, 0x0010             ## t6 = 00000010
	sh      t6, 0x0304(s1)             ## 00000304
	swc1    $f8, %lo(var_80A593B0)($at) 
lbl_80A5779C:
	bne     s2, s4, lbl_80A57808       
	nop
	sh      $zero, 0x0034(s1)          ## 00000034
	lh      t7, 0x0034(s1)             ## 00000034
	or      s0, $zero, $zero           ## s0 = 00000000
	addiu   s2, s3, 0x1C24             ## s2 = 00001C24
	sh      t7, 0x00B8(s1)             ## 000000B8
	lwc1    $f10, 0x0028(s1)           ## 00000028
lbl_80A577BC:
	lw      a3, 0x0024(s1)             ## 00000024
	addiu   t1, $zero, 0x0003          ## t1 = 00000003
	swc1    $f10, 0x0010($sp)          
	lwc1    $f16, 0x002C(s1)           ## 0000002C
	or      a0, s2, $zero              ## a0 = 00001C24
	or      a1, s3, $zero              ## a1 = 00000000
	swc1    $f16, 0x0014($sp)          
	lh      t8, 0x00B4(s1)             ## 000000B4
	addiu   a2, $zero, 0x0020          ## a2 = 00000020
	sw      t8, 0x0018($sp)            
	lh      t9, 0x00B6(s1)             ## 000000B6
	sw      t9, 0x001C($sp)            
	lh      t0, 0x00B8(s1)             ## 000000B8
	sw      t1, 0x0024($sp)            
	jal     func_80025110              ## ActorSpawn
	sw      t0, 0x0020($sp)            
	addiu   s0, s0, 0x0001             ## s0 = 00000001
	bnel    s0, s4, lbl_80A577BC       
	lwc1    $f10, 0x0028(s1)           ## 00000028
lbl_80A57808:
	jal     func_80A5890C              
	or      a0, s1, $zero              ## a0 = 00000000
	lui     v0, %hi(var_80A593B8)      ## v0 = 80A60000
	addiu   v0, v0, %lo(var_80A593B8)  ## v0 = 80A593B8
	lh      t2, 0x0000(v0)             ## 80A593B8
	addiu   t3, t2, 0x0001             ## t3 = 00000001
	beq     $zero, $zero, lbl_80A57888 
	sh      t3, 0x0000(v0)             ## 80A593B8
lbl_80A57828:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_80A59448)     ## $at = 80A60000
	lwc1    $f18, %lo(var_80A59448)($at) 
	c.lt.s  $f0, $f18                  
	nop
	bc1f    lbl_80A57858               
	nop
	jal     func_80A57918              
	or      a0, s1, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A5788C 
	lw      $ra, 0x0044($sp)           
lbl_80A57858:
	lui     $at, %hi(var_80A5944C)     ## $at = 80A60000
	lwc1    $f4, %lo(var_80A5944C)($at) 
	c.lt.s  $f0, $f4                   
	nop
	bc1f    lbl_80A57880               
	nop
	jal     func_80A57B0C              
	or      a0, s1, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A5788C 
	lw      $ra, 0x0044($sp)           
lbl_80A57880:
	jal     func_80A57D88              
	or      a0, s1, $zero              ## a0 = 00000000
lbl_80A57888:
	lw      $ra, 0x0044($sp)           
lbl_80A5788C:
	lw      s0, 0x0030($sp)            
	lw      s1, 0x0034($sp)            
	lw      s2, 0x0038($sp)            
	lw      s3, 0x003C($sp)            
	lw      s4, 0x0040($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000


func_80A578A8:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	lh      v0, 0x001C(a2)             ## 0000001C
	or      a0, a3, $zero              ## a0 = 00000000
	addiu   a1, a2, 0x013C             ## a1 = 0000013C
	andi    v0, v0, 0x0003             ## v0 = 00000000
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	jal     func_8004A550              
	sh      v0, 0x001E($sp)            
	lh      v0, 0x001E($sp)            
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	lui     v1, %hi(var_80A593B8)      ## v1 = 80A60000
	beq     v0, $at, lbl_80A578F8      
	addiu   v1, v1, %lo(var_80A593B8)  ## v1 = 80A593B8
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bnel    v0, $at, lbl_80A5790C      
	lw      $ra, 0x0014($sp)           
lbl_80A578F8:
	lh      v0, 0x0000(v1)             ## 80A593B8
	blez    v0, lbl_80A57908           
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x0000(v1)             ## 80A593B8
lbl_80A57908:
	lw      $ra, 0x0014($sp)           
lbl_80A5790C:
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A57918:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	addiu   a0, $zero, 0x0005          ## a0 = 00000005
	addiu   a1, $zero, 0x0023          ## a1 = 00000023
	jal     func_80063BF0              
	sw      a2, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_80A574C4              
	sh      v0, 0x030A(a0)             ## 0000030A
	lw      a2, 0x0018($sp)            
	lui     t6, %hi(func_80A57968)     ## t6 = 80A50000
	addiu   t6, t6, %lo(func_80A57968) ## t6 = 80A57968
	lhu     t7, 0x0304(a2)             ## 00000304
	sw      t6, 0x0300(a2)             ## 00000300
	ori     t8, t7, 0x0100             ## t8 = 00000100
	sh      t8, 0x0304(a2)             ## 00000304
	lw      $ra, 0x0014($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80A57968:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0020($sp)            
	mtc1    $zero, $f0                 ## $f0 = 0.00
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x003C($sp)            
	lh      t6, 0x001C(s0)             ## 0000001C
	mfc1    a1, $f0                    
	lui     a2, 0x3DCC                 ## a2 = 3DCC0000
	andi    t7, t6, 0x0003             ## t7 = 00000000
	sh      t7, 0x002E($sp)            
	ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
	swc1    $f0, 0x0010($sp)           
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	jal     func_80064178              
	lui     a3, 0x3F00                 ## a3 = 3F000000
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_80A59450)     ## $at = 80A60000
	lwc1    $f6, %lo(var_80A59450)($at) 
	lwc1    $f4, 0x0068(s0)            ## 00000068
	lui     $at, %hi(var_80A59454)     ## $at = 80A60000
	lwc1    $f10, %lo(var_80A59454)($at) 
	mul.s   $f8, $f4, $f6              
	mtc1    $zero, $f12                ## $f12 = 0.00
	lui     $at, %hi(var_80A59458)     ## $at = 80A60000
	mul.s   $f16, $f0, $f10            
	add.s   $f2, $f16, $f8             
	c.lt.s  $f2, $f12                  
	nop
	bc1f    lbl_80A579F0               
	nop
	beq     $zero, $zero, lbl_80A57A14 
	swc1    $f12, 0x01B8(s0)           ## 000001B8
lbl_80A579F0:
	lwc1    $f12, %lo(var_80A59458)($at) 
	c.lt.s  $f12, $f2                  
	nop
	bc1fl   lbl_80A57A10               
	mov.s   $f0, $f2                   
	beq     $zero, $zero, lbl_80A57A10 
	mov.s   $f0, $f12                  
	mov.s   $f0, $f2                   
lbl_80A57A10:
	swc1    $f0, 0x01B8(s0)            ## 000001B8
lbl_80A57A14:
	jal     func_8008C9C0              
	addiu   a0, s0, 0x019C             ## a0 = 0000019C
	lh      t9, 0x030A(s0)             ## 0000030A
	lh      t8, 0x0032(s0)             ## 00000032
	bgtz    t9, lbl_80A57A34           
	sh      t8, 0x00B6(s0)             ## 000000B6
	jal     func_80A57B0C              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80A57A34:
	lhu     v0, 0x0304(s0)             ## 00000304
	lh      v1, 0x002E($sp)            
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	andi    t0, v0, 0x0004             ## t0 = 00000000
	beq     t0, $zero, lbl_80A57A58    
	nop
	lh      t1, 0x030C(s0)             ## 0000030C
	blez    t1, lbl_80A57A98           
	nop
lbl_80A57A58:
	beq     v1, $at, lbl_80A57A6C      
	andi    t2, v0, 0x0001             ## t2 = 00000000
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bnel    v1, $at, lbl_80A57AAC      
	andi    t6, v0, 0x0001             ## t6 = 00000000
lbl_80A57A6C:
	beql    t2, $zero, lbl_80A57AAC    
	andi    t6, v0, 0x0001             ## t6 = 00000000
	lhu     t3, 0x0088(s0)             ## 00000088
	lui     t5, %hi(var_80A593B8)      ## t5 = 80A60000
	andi    t4, t3, 0x0001             ## t4 = 00000000
	beql    t4, $zero, lbl_80A57AAC    
	andi    t6, v0, 0x0001             ## t6 = 00000000
	lh      t5, %lo(var_80A593B8)(t5)  
	slti    $at, t5, 0x0004            
	bnel    $at, $zero, lbl_80A57AAC   
	andi    t6, v0, 0x0001             ## t6 = 00000000
lbl_80A57A98:
	jal     func_80A58134              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A57AFC 
	lw      $ra, 0x0024($sp)           
	andi    t6, v0, 0x0001             ## t6 = 00000000
lbl_80A57AAC:
	beq     t6, $zero, lbl_80A57AD4    
	lui     $at, 0x4220                ## $at = 42200000
	lhu     t7, 0x0088(s0)             ## 00000088
	andi    t8, t7, 0x0040             ## t8 = 00000000
	beql    t8, $zero, lbl_80A57AD8    
	lwc1    $f18, 0x0090(s0)           ## 00000090
	jal     func_80A583D0              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A57AFC 
	lw      $ra, 0x0024($sp)           
lbl_80A57AD4:
	lwc1    $f18, 0x0090(s0)           ## 00000090
lbl_80A57AD8:
	mtc1    $at, $f4                   ## $f4 = 0.00
	nop
	c.lt.s  $f18, $f4                  
	nop
	bc1fl   lbl_80A57AFC               
	lw      $ra, 0x0024($sp)           
	jal     func_80A57D88              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x0024($sp)           
lbl_80A57AFC:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A57B0C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	addiu   a0, $zero, 0x000A          ## a0 = 0000000A
	addiu   a1, $zero, 0x002D          ## a1 = 0000002D
	jal     func_80063BF0              
	sw      a2, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_80A574C4              
	sh      v0, 0x030A(a0)             ## 0000030A
	lw      a2, 0x0018($sp)            
	lui     t6, %hi(func_80A57B5C)     ## t6 = 80A50000
	addiu   t6, t6, %lo(func_80A57B5C) ## t6 = 80A57B5C
	lhu     t7, 0x0304(a2)             ## 00000304
	sw      t6, 0x0300(a2)             ## 00000300
	ori     t8, t7, 0x0100             ## t8 = 00000100
	sh      t8, 0x0304(a2)             ## 00000304
	lw      $ra, 0x0014($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80A57B5C:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x0044($sp)            
	lh      t6, 0x001C(s0)             ## 0000001C
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     a2, 0x3DCC                 ## a2 = 3DCC0000
	andi    t7, t6, 0x0003             ## t7 = 00000000
	sh      t7, 0x0034($sp)            
	ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	lui     a1, 0x3FC0                 ## a1 = 3FC00000
	lui     a3, 0x3F00                 ## a3 = 3F000000
	jal     func_80064178              
	swc1    $f4, 0x0010($sp)           
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	addiu   a1, s0, 0x0008             ## a1 = 00000008
	sw      a1, 0x0028($sp)            
	jal     func_80A573A4              
	sw      a0, 0x002C($sp)            
	lui     $at, 0x44C8                ## $at = 44C80000
	mtc1    $at, $f6                   ## $f6 = 1600.00
	lw      a0, 0x002C($sp)            
	lw      a1, 0x0028($sp)            
	c.lt.s  $f6, $f0                   
	nop
	bc1t    lbl_80A57BE0               
	nop
	lh      t8, 0x030A(s0)             ## 0000030A
	slti    $at, t8, 0x0004            
	beql    $at, $zero, lbl_80A57C08   
	lw      v0, 0x011C(s0)             ## 0000011C
lbl_80A57BE0:
	jal     func_80063F00              
	nop
	sll     a1, v0, 16                 
	sra     a1, a1, 16                 
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	jal     func_80063704              
	addiu   a2, $zero, 0x07D0          ## a2 = 000007D0
	beq     $zero, $zero, lbl_80A57C38 
	lh      t9, 0x0032(s0)             ## 00000032
	lw      v0, 0x011C(s0)             ## 0000011C
lbl_80A57C08:
	beql    v0, $zero, lbl_80A57C38    
	lh      t9, 0x0032(s0)             ## 00000032
	beql    s0, v0, lbl_80A57C38       
	lh      t9, 0x0032(s0)             ## 00000032
	jal     func_80063F00              
	addiu   a1, v0, 0x0024             ## a1 = 00000024
	sll     a1, v0, 16                 
	sra     a1, a1, 16                 
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	jal     func_80063704              
	addiu   a2, $zero, 0x07D0          ## a2 = 000007D0
	lh      t9, 0x0032(s0)             ## 00000032
lbl_80A57C38:
	lui     $at, %hi(var_80A5945C)     ## $at = 80A60000
	lwc1    $f2, %lo(var_80A5945C)($at) 
	lui     $at, %hi(var_80A59460)     ## $at = 80A60000
	sh      t9, 0x00B6(s0)             ## 000000B6
	lwc1    $f10, %lo(var_80A59460)($at) 
	lwc1    $f8, 0x0068(s0)            ## 00000068
	lui     $at, %hi(var_80A59464)     ## $at = 80A60000
	mul.s   $f0, $f8, $f10             
	c.lt.s  $f0, $f2                   
	nop
	bc1f    lbl_80A57C70               
	nop
	beq     $zero, $zero, lbl_80A57C94 
	swc1    $f2, 0x01B8(s0)            ## 000001B8
lbl_80A57C70:
	lwc1    $f12, %lo(var_80A59464)($at) 
	c.lt.s  $f12, $f0                  
	nop
	bc1fl   lbl_80A57C90               
	mov.s   $f2, $f0                   
	beq     $zero, $zero, lbl_80A57C90 
	mov.s   $f2, $f12                  
	mov.s   $f2, $f0                   
lbl_80A57C90:
	swc1    $f2, 0x01B8(s0)            ## 000001B8
lbl_80A57C94:
	jal     func_8008C9C0              
	addiu   a0, s0, 0x019C             ## a0 = 0000019C
	lh      t0, 0x030A(s0)             ## 0000030A
	bgtzl   t0, lbl_80A57CB4           
	lhu     v0, 0x0304(s0)             ## 00000304
	jal     func_80A57918              
	or      a0, s0, $zero              ## a0 = 00000000
	lhu     v0, 0x0304(s0)             ## 00000304
lbl_80A57CB4:
	lh      v1, 0x0034($sp)            
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	andi    t1, v0, 0x0004             ## t1 = 00000000
	beq     t1, $zero, lbl_80A57CD4    
	nop
	lh      t2, 0x030C(s0)             ## 0000030C
	blez    t2, lbl_80A57D14           
	nop
lbl_80A57CD4:
	beq     v1, $at, lbl_80A57CE8      
	andi    t3, v0, 0x0001             ## t3 = 00000000
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bnel    v1, $at, lbl_80A57D28      
	andi    t7, v0, 0x0001             ## t7 = 00000000
lbl_80A57CE8:
	beql    t3, $zero, lbl_80A57D28    
	andi    t7, v0, 0x0001             ## t7 = 00000000
	lhu     t4, 0x0088(s0)             ## 00000088
	lui     t6, %hi(var_80A593B8)      ## t6 = 80A60000
	andi    t5, t4, 0x0001             ## t5 = 00000000
	beql    t5, $zero, lbl_80A57D28    
	andi    t7, v0, 0x0001             ## t7 = 00000000
	lh      t6, %lo(var_80A593B8)(t6)  
	slti    $at, t6, 0x0004            
	bnel    $at, $zero, lbl_80A57D28   
	andi    t7, v0, 0x0001             ## t7 = 00000000
lbl_80A57D14:
	jal     func_80A58134              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A57D78 
	lw      $ra, 0x0024($sp)           
	andi    t7, v0, 0x0001             ## t7 = 00000000
lbl_80A57D28:
	beq     t7, $zero, lbl_80A57D50    
	lui     $at, 0x4220                ## $at = 42200000
	lhu     t8, 0x0088(s0)             ## 00000088
	andi    t9, t8, 0x0040             ## t9 = 00000000
	beql    t9, $zero, lbl_80A57D54    
	lwc1    $f16, 0x0090(s0)           ## 00000090
	jal     func_80A583D0              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A57D78 
	lw      $ra, 0x0024($sp)           
lbl_80A57D50:
	lwc1    $f16, 0x0090(s0)           ## 00000090
lbl_80A57D54:
	mtc1    $at, $f18                  ## $f18 = 0.00
	nop
	c.lt.s  $f16, $f18                 
	nop
	bc1fl   lbl_80A57D78               
	lw      $ra, 0x0024($sp)           
	jal     func_80A57D88              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x0024($sp)           
lbl_80A57D78:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A57D88:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	addiu   a0, $zero, 0x000A          ## a0 = 0000000A
	addiu   a1, $zero, 0x0028          ## a1 = 00000028
	jal     func_80063BF0              
	sw      a2, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_80A574C4              
	sh      v0, 0x030A(a0)             ## 0000030A
	lw      a2, 0x0018($sp)            
	lui     t6, %hi(func_80A57DD8)     ## t6 = 80A50000
	addiu   t6, t6, %lo(func_80A57DD8) ## t6 = 80A57DD8
	lhu     t7, 0x0304(a2)             ## 00000304
	sw      t6, 0x0300(a2)             ## 00000300
	ori     t8, t7, 0x0100             ## t8 = 00000100
	sh      t8, 0x0304(a2)             ## 00000304
	lw      $ra, 0x0014($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80A57DD8:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x004C($sp)            
	lui     $at, 0x4220                ## $at = 42200000
	mtc1    $at, $f6                   ## $f6 = 40.00
	lwc1    $f4, 0x0090(s0)            ## 00000090
	lui     a1, 0x3FE6                 ## a1 = 3FE60000
	lui     a2, 0x3DCC                 ## a2 = 3DCC0000
	c.lt.s  $f4, $f6                   
	or      t6, $zero, $zero           ## t6 = 00000000
	ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
	ori     a1, a1, 0x6666             ## a1 = 3FE66666
	bc1f    lbl_80A57E1C               
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
lbl_80A57E1C:
	mtc1    $zero, $f8                 ## $f8 = 0.00
	sh      t6, 0x0038($sp)            
	lui     a3, 0x3F00                 ## a3 = 3F000000
	jal     func_80064178              
	swc1    $f8, 0x0010($sp)           
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	addiu   a1, s0, 0x0008             ## a1 = 00000008
	sw      a1, 0x002C($sp)            
	jal     func_80A573A4              
	sw      a0, 0x0030($sp)            
	lui     $at, 0x46C8                ## $at = 46C80000
	mtc1    $at, $f10                  ## $f10 = 25600.00
	lw      a0, 0x0030($sp)            
	lw      a1, 0x002C($sp)            
	c.lt.s  $f10, $f0                  
	nop
	bc1t    lbl_80A57E78               
	nop
	lh      t7, 0x030A(s0)             ## 0000030A
	lh      t8, 0x0038($sp)            
	slti    $at, t7, 0x0004            
	beq     $at, $zero, lbl_80A57E9C   
	nop
lbl_80A57E78:
	jal     func_80063F00              
	nop
	sll     a1, v0, 16                 
	sra     a1, a1, 16                 
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	jal     func_80063704              
	addiu   a2, $zero, 0x07D0          ## a2 = 000007D0
	beq     $zero, $zero, lbl_80A57F08 
	lh      t2, 0x0032(s0)             ## 00000032
lbl_80A57E9C:
	beq     t8, $zero, lbl_80A57F04    
	lw      v1, 0x004C($sp)            
	lh      a1, 0x008A(s0)             ## 0000008A
	lh      v0, 0x009E(v1)             ## 0000009E
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addu    a1, a1, $at                
	sll     a1, a1, 16                 
	andi    t9, v0, 0x0010             ## t9 = 00000000
	beq     t9, $zero, lbl_80A57EE0    
	sra     a1, a1, 16                 
	andi    t0, v0, 0x0020             ## t0 = 00000000
	beql    t0, $zero, lbl_80A57EFC    
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	addiu   a1, a1, 0x2000             ## a1 = 00002000
	sll     a1, a1, 16                 
	beq     $zero, $zero, lbl_80A57EF8 
	sra     a1, a1, 16                 
lbl_80A57EE0:
	andi    t1, v0, 0x0020             ## t1 = 00000000
	beql    t1, $zero, lbl_80A57EFC    
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	addiu   a1, a1, 0xE000             ## a1 = 00000000
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
lbl_80A57EF8:
	addiu   a0, s0, 0x0032             ## a0 = 00000032
lbl_80A57EFC:
	jal     func_80063704              
	addiu   a2, $zero, 0x07D0          ## a2 = 000007D0
lbl_80A57F04:
	lh      t2, 0x0032(s0)             ## 00000032
lbl_80A57F08:
	lui     $at, %hi(var_80A59468)     ## $at = 80A60000
	lwc1    $f2, %lo(var_80A59468)($at) 
	lui     $at, %hi(var_80A5946C)     ## $at = 80A60000
	sh      t2, 0x00B6(s0)             ## 000000B6
	lwc1    $f18, %lo(var_80A5946C)($at) 
	lwc1    $f16, 0x0068(s0)           ## 00000068
	lui     $at, %hi(var_80A59470)     ## $at = 80A60000
	mul.s   $f0, $f16, $f18            
	c.lt.s  $f0, $f2                   
	nop
	bc1f    lbl_80A57F40               
	nop
	beq     $zero, $zero, lbl_80A57F64 
	swc1    $f2, 0x01B8(s0)            ## 000001B8
lbl_80A57F40:
	lwc1    $f12, %lo(var_80A59470)($at) 
	c.lt.s  $f12, $f0                  
	nop
	bc1fl   lbl_80A57F60               
	mov.s   $f2, $f0                   
	beq     $zero, $zero, lbl_80A57F60 
	mov.s   $f2, $f12                  
	mov.s   $f2, $f0                   
lbl_80A57F60:
	swc1    $f2, 0x01B8(s0)            ## 000001B8
lbl_80A57F64:
	jal     func_8008C9C0              
	addiu   a0, s0, 0x019C             ## a0 = 0000019C
	lh      t3, 0x030A(s0)             ## 0000030A
	lh      t4, 0x0038($sp)            
	blez    t3, lbl_80A57F84           
	nop
	bnel    t4, $zero, lbl_80A57F98    
	lhu     t5, 0x0304(s0)             ## 00000304
lbl_80A57F84:
	jal     func_80A57918              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A57FC0 
	lw      $ra, 0x0024($sp)           
	lhu     t5, 0x0304(s0)             ## 00000304
lbl_80A57F98:
	andi    t6, t5, 0x0001             ## t6 = 00000000
	beql    t6, $zero, lbl_80A57FC0    
	lw      $ra, 0x0024($sp)           
	lhu     t7, 0x0088(s0)             ## 00000088
	andi    t8, t7, 0x0040             ## t8 = 00000000
	beql    t8, $zero, lbl_80A57FC0    
	lw      $ra, 0x0024($sp)           
	jal     func_80A583D0              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x0024($sp)           
lbl_80A57FC0:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A57FD0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	addiu   t6, $zero, 0x00C8          ## t6 = 000000C8
	sh      t6, 0x030A(a0)             ## 0000030A
	lui     a1, 0x3A83                 ## a1 = 3A830000
	ori     a1, a1, 0x126F             ## a1 = 3A83126F
	jal     func_80020F88              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	sw      $zero, 0x0134(a0)          ## 00000134
	jal     func_80A574C4              
	swc1    $f4, 0x0068(a0)            ## 00000068
	lw      a0, 0x0018($sp)            
	lui     $at, %hi(var_80A59474)     ## $at = 80A60000
	lwc1    $f6, %lo(var_80A59474)($at) 
	lhu     t8, 0x0304(a0)             ## 00000304
	lui     t7, %hi(func_80A5803C)     ## t7 = 80A60000
	addiu   t7, t7, %lo(func_80A5803C) ## t7 = 80A5803C
	andi    t9, t8, 0xFEFF             ## t9 = 00000000
	sw      t7, 0x0300(a0)             ## 00000300
	sh      t9, 0x0304(a0)             ## 00000304
	swc1    $f6, 0x01B8(a0)            ## 000001B8
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A5803C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	lh      v0, 0x030A(a2)             ## 0000030A
	addiu   $at, $zero, 0x0014         ## $at = 00000014
	bne     v0, $at, lbl_80A5807C      
	nop
	lhu     t6, 0x0304(a2)             ## 00000304
	lui     t8, %hi(func_80A5934C)     ## t8 = 80A60000
	addiu   t8, t8, %lo(func_80A5934C) ## t8 = 80A5934C
	andi    t7, t6, 0x0004             ## t7 = 00000000
	bne     t7, $zero, lbl_80A5807C    
	nop
	beq     $zero, $zero, lbl_80A58124 
	sw      t8, 0x0134(a2)             ## 00000134
lbl_80A5807C:
	bne     v0, $zero, lbl_80A580D0    
	slti    $at, v0, 0x0014            
	lhu     t9, 0x0304(a2)             ## 00000304
	lui     $at, %hi(var_80A59478)     ## $at = 80A60000
	andi    t0, t9, 0x0004             ## t0 = 00000000
	beq     t0, $zero, lbl_80A580A8    
	nop
	jal     func_80020EB4              
	or      a0, a2, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A58128 
	lw      $ra, 0x0014($sp)           
lbl_80A580A8:
	lwc1    $f12, %lo(var_80A59478)($at) 
	or      a0, a2, $zero              ## a0 = 00000000
	sw      a2, 0x0018($sp)            
	mfc1    a1, $f12                   
	jal     func_80020F88              
	nop
	jal     func_80A57918              
	lw      a0, 0x0018($sp)            
	beq     $zero, $zero, lbl_80A58128 
	lw      $ra, 0x0014($sp)           
lbl_80A580D0:
	beq     $at, $zero, lbl_80A58124   
	or      a0, a2, $zero              ## a0 = 00000000
	lui     $at, %hi(var_80A5947C)     ## $at = 80A60000
	lwc1    $f12, %lo(var_80A5947C)($at) 
	lui     $at, %hi(var_80A59480)     ## $at = 80A60000
	lwc1    $f6, %lo(var_80A59480)($at) 
	lwc1    $f4, 0x0050(a2)            ## 00000050
	add.s   $f0, $f4, $f6              
	c.lt.s  $f12, $f0                  
	nop
	bc1fl   lbl_80A5810C               
	mov.s   $f2, $f0                   
	beq     $zero, $zero, lbl_80A5810C 
	mov.s   $f2, $f12                  
	mov.s   $f2, $f0                   
lbl_80A5810C:
	mfc1    a1, $f2                    
	jal     func_80020F88              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	jal     func_8008C9C0              
	addiu   a0, a2, 0x019C             ## a0 = 0000019C
lbl_80A58124:
	lw      $ra, 0x0014($sp)           
lbl_80A58128:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A58134:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	addiu   t6, $zero, 0x003C          ## t6 = 0000003C
	sh      t6, 0x030A(s0)             ## 0000030A
	jal     func_80A574C4              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, %hi(var_80A59484)     ## $at = 80A60000
	lwc1    $f4, %lo(var_80A59484)($at) 
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x39E9          ## a1 = 000039E9
	jal     func_80022FD0              
	swc1    $f4, 0x01B8(s0)            ## 000001B8
	addiu   a0, s0, 0x0008             ## a0 = 00000008
	jal     func_80063CAC              ## Vec3f_Copy
	addiu   a1, s0, 0x0024             ## a1 = 00000024
	lhu     t8, 0x0304(s0)             ## 00000304
	lui     t7, %hi(func_80A581AC)     ## t7 = 80A60000
	addiu   t7, t7, %lo(func_80A581AC) ## t7 = 80A581AC
	andi    t0, t8, 0xFEFF             ## t0 = 00000000
	sh      t0, 0x0304(s0)             ## 00000304
	ori     t1, t0, 0x0008             ## t1 = 00000008
	sw      t7, 0x0300(s0)             ## 00000300
	sh      t1, 0x0304(s0)             ## 00000304
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A581AC:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s0, 0x0020($sp)            
	mtc1    $zero, $f0                 ## $f0 = 0.00
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x004C($sp)            
	mfc1    a1, $f0                    
	lui     a2, 0x3DCC                 ## a2 = 3DCC0000
	ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	lui     a3, 0x3F00                 ## a3 = 3F000000
	jal     func_80064178              
	swc1    $f0, 0x0010($sp)           
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	addiu   a1, $zero, 0x2AAA          ## a1 = 00002AAA
	jal     func_800637D4              
	addiu   a2, $zero, 0x0160          ## a2 = 00000160
	lui     $at, %hi(var_80A59488)     ## $at = 80A60000
	lwc1    $f12, %lo(var_80A59488)($at) 
	lui     $at, %hi(var_80A5948C)     ## $at = 80A60000
	lwc1    $f6, %lo(var_80A5948C)($at) 
	lwc1    $f4, 0x0050(s0)            ## 00000050
	sub.s   $f0, $f4, $f6              
	c.lt.s  $f0, $f12                  
	nop
	bc1fl   lbl_80A58224               
	mov.s   $f2, $f0                   
	beq     $zero, $zero, lbl_80A58224 
	mov.s   $f2, $f12                  
	mov.s   $f2, $f0                   
lbl_80A58224:
	mfc1    a1, $f2                    
	jal     func_80020F88              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, %hi(var_80A59490)     ## $at = 80A60000
	lwc1    $f10, %lo(var_80A59490)($at) 
	lwc1    $f8, 0x00BC(s0)            ## 000000BC
	sub.s   $f16, $f8, $f10            
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f16, 0x00BC(s0)           ## 000000BC
	lwc1    $f18, 0x0008(s0)           ## 00000008
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f6                   ## $f6 = 0.50
	add.s   $f4, $f0, $f18             
	sub.s   $f8, $f4, $f6              
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f8, 0x0024(s0)            ## 00000024
	lwc1    $f10, 0x0010(s0)           ## 00000010
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f18                  ## $f18 = 0.50
	add.s   $f16, $f0, $f10            
	addiu   a0, s0, 0x019C             ## a0 = 0000019C
	sub.s   $f4, $f16, $f18            
	jal     func_8008C9C0              
	swc1    $f4, 0x002C(s0)            ## 0000002C
	lh      t6, 0x030A(s0)             ## 0000030A
	slti    $at, t6, 0x0015            
	bnel    $at, $zero, lbl_80A58360   
	lh      t1, 0x030A(s0)             ## 0000030A
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_80A59494)     ## $at = 80A60000
	lwc1    $f6, %lo(var_80A59494)($at) 
	c.lt.s  $f0, $f6                   
	nop
	bc1fl   lbl_80A58360               
	lh      t1, 0x030A(s0)             ## 0000030A
	jal     func_800636C4              ## sins?
	lh      a0, 0x00B6(s0)             ## 000000B6
	lui     $at, %hi(var_80A59498)     ## $at = 80A60000
	lwc1    $f8, %lo(var_80A59498)($at) 
	mul.s   $f10, $f0, $f8             
	swc1    $f10, 0x0034($sp)          
	jal     func_800636C4              ## sins?
	lh      a0, 0x00B4(s0)             ## 000000B4
	lui     $at, %hi(var_80A5949C)     ## $at = 80A60000
	lwc1    $f16, %lo(var_80A5949C)($at) 
	mul.s   $f18, $f0, $f16            
	swc1    $f18, 0x0038($sp)          
	jal     func_80063684              ## coss?
	lh      a0, 0x00B6(s0)             ## 000000B6
	lui     $at, %hi(var_80A594A0)     ## $at = 80A60000
	lwc1    $f4, %lo(var_80A594A0)($at) 
	mul.s   $f6, $f0, $f4              
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f6, 0x003C($sp)           
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f0, 0x002C($sp)           
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f2                   ## $f2 = 5.00
	lwc1    $f8, 0x002C($sp)           
	lui     $at, 0x4100                ## $at = 41000000
	mtc1    $at, $f12                  ## $f12 = 8.00
	mul.s   $f10, $f8, $f2             
	lui     a3, %hi(var_80A59428)      ## a3 = 80A60000
	addiu   a3, a3, %lo(var_80A59428)  ## a3 = 80A59428
	mul.s   $f4, $f0, $f2              
	lw      a0, 0x004C($sp)            
	addiu   a1, s0, 0x0024             ## a1 = 00000024
	addiu   a2, $sp, 0x0034            ## a2 = FFFFFFEC
	add.s   $f16, $f10, $f12           
	add.s   $f6, $f4, $f12             
	trunc.w.s $f18, $f16                 
	trunc.w.s $f8, $f6                   
	mfc1    t8, $f18                   
	mfc1    t0, $f8                    
	sw      t8, 0x0010($sp)            
	jal     func_8001C1C4              
	sw      t0, 0x0014($sp)            
	lh      t1, 0x030A(s0)             ## 0000030A
lbl_80A58360:
	bgtzl   t1, lbl_80A583C0           
	lw      $ra, 0x0024($sp)           
	lhu     t2, 0x0304(s0)             ## 00000304
	andi    t3, t2, 0x0010             ## t3 = 00000000
	beq     t3, $zero, lbl_80A583B4    
	nop
	lw      v0, 0x0310(s0)             ## 00000310
	beq     v0, $zero, lbl_80A583B4    
	addiu   a0, v0, 0x0024             ## a0 = 00000024
	jal     func_800A5538              
	addiu   a1, s0, 0x0024             ## a1 = 00000024
	lui     $at, 0x4280                ## $at = 42800000
	mtc1    $at, $f10                  ## $f10 = 64.00
	nop
	c.lt.s  $f0, $f10                  
	nop
	bc1f    lbl_80A583B4               
	nop
	lw      t5, 0x0310(s0)             ## 00000310
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	sh      t4, 0x0142(t5)             ## 00000142
lbl_80A583B4:
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x0024($sp)           
lbl_80A583C0:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A583D0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	addiu   a0, $zero, 0x0078          ## a0 = 00000078
	addiu   a1, $zero, 0x0032          ## a1 = 00000032
	jal     func_80063BF0              
	sw      a2, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_80A574C4              
	sh      v0, 0x030A(a0)             ## 0000030A
	lw      a2, 0x0018($sp)            
	lui     t7, %hi(func_80A58430)     ## t7 = 80A60000
	addiu   t7, t7, %lo(func_80A58430) ## t7 = 80A58430
	lhu     t8, 0x0304(a2)             ## 00000304
	sh      $zero, 0x0308(a2)          ## 00000308
	lh      t6, 0x0308(a2)             ## 00000308
	andi    t9, t8, 0xFEFF             ## t9 = 00000000
	sw      t7, 0x0300(a2)             ## 00000300
	sh      t9, 0x0304(a2)             ## 00000304
	sh      t6, 0x0306(a2)             ## 00000306
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A58430:
	addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x005C($sp)            
	lh      t6, 0x001C(s0)             ## 0000001C
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	andi    t7, t6, 0x0003             ## t7 = 00000000
	sh      t7, 0x004E($sp)            
	lh      t8, 0x030A(s0)             ## 0000030A
	lui     a2, 0x3CA3                 ## a2 = 3CA30000
	slti    $at, t8, 0x0051            
	bne     $at, $zero, lbl_80A5848C   
	nop
	lui     a1, 0x3F19                 ## a1 = 3F190000
	lui     a2, 0x3DA3                 ## a2 = 3DA30000
	ori     a2, a2, 0xD70A             ## a2 = 3DA3D70A
	ori     a1, a1, 0x999A             ## a1 = 3F19999A
	jal     func_8006385C              
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	beq     $zero, $zero, lbl_80A58498 
	lh      t9, 0x030A(s0)             ## 0000030A
lbl_80A5848C:
	jal     func_8006385C              
	ori     a2, a2, 0xD70A             ## a2 = 0000D70A
	lh      t9, 0x030A(s0)             ## 0000030A
lbl_80A58498:
	lwc1    $f6, 0x0028(s0)            ## 00000028
	lwc1    $f8, 0x0084(s0)            ## 00000084
	mtc1    t9, $f16                   ## $f16 = 0.00
	lui     $at, %hi(var_80A594A4)     ## $at = 80A60000
	add.s   $f10, $f6, $f8             
	lwc1    $f2, %lo(var_80A594A4)($at) 
	mtc1    $zero, $f4                 ## $f4 = 0.00
	cvt.s.w $f18, $f16                 
	swc1    $f10, 0x0028(s0)           ## 00000028
	lui     $at, %hi(var_80A594A8)     ## $at = 80A60000
	swc1    $f4, 0x0060(s0)            ## 00000060
	lwc1    $f4, %lo(var_80A594A8)($at) 
	lui     $at, %hi(var_80A594AC)     ## $at = 80A60000
	mul.s   $f0, $f18, $f4             
	c.lt.s  $f0, $f2                   
	nop
	bc1f    lbl_80A584E8               
	nop
	beq     $zero, $zero, lbl_80A5850C 
	swc1    $f2, 0x01B8(s0)            ## 000001B8
lbl_80A584E8:
	lwc1    $f12, %lo(var_80A594AC)($at) 
	c.lt.s  $f12, $f0                  
	nop
	bc1fl   lbl_80A58508               
	mov.s   $f2, $f0                   
	beq     $zero, $zero, lbl_80A58508 
	mov.s   $f2, $f12                  
	mov.s   $f2, $f0                   
lbl_80A58508:
	swc1    $f2, 0x01B8(s0)            ## 000001B8
lbl_80A5850C:
	jal     func_8008C9C0              
	addiu   a0, s0, 0x019C             ## a0 = 0000019C
	lh      t0, 0x030A(s0)             ## 0000030A
	addiu   a0, $zero, 0xFFCE          ## a0 = FFFFFFCE
	slti    $at, t0, 0x0051            
	bnel    $at, $zero, lbl_80A58558   
	lui     $at, 0x4348                ## $at = 43480000
	jal     func_80063BF0              
	addiu   a1, $zero, 0x0064          ## a1 = 00000064
	lh      t1, 0x0306(s0)             ## 00000306
	addiu   a0, $zero, 0xFED4          ## a0 = FFFFFED4
	addiu   a1, $zero, 0x0258          ## a1 = 00000258
	addu    t2, t1, v0                 
	jal     func_80063BF0              
	sh      t2, 0x0306(s0)             ## 00000306
	lh      t3, 0x0308(s0)             ## 00000308
	addu    t4, t3, v0                 
	sh      t4, 0x0308(s0)             ## 00000308
	lui     $at, 0x4348                ## $at = 43480000
lbl_80A58558:
	mtc1    $at, $f8                   ## $f8 = 200.00
	lwc1    $f6, 0x01B8(s0)            ## 000001B8
	lh      a0, 0x0306(s0)             ## 00000306
	or      a1, $zero, $zero           ## a1 = 00000000
	mul.s   $f10, $f6, $f8             
	trunc.w.s $f16, $f10                 
	mfc1    v1, $f16                   
	nop
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	subu    v0, $zero, v1              
	slt     $at, a0, v0                
	beql    $at, $zero, lbl_80A5859C   
	slt     $at, v1, a0                
	beq     $zero, $zero, lbl_80A585B0 
	sh      v0, 0x0306(s0)             ## 00000306
	slt     $at, v1, a0                
lbl_80A5859C:
	beq     $at, $zero, lbl_80A585AC   
	or      v0, a0, $zero              ## v0 = 00000000
	beq     $zero, $zero, lbl_80A585AC 
	or      v0, v1, $zero              ## v0 = 00000000
lbl_80A585AC:
	sh      v0, 0x0306(s0)             ## 00000306
lbl_80A585B0:
	lui     $at, 0x447A                ## $at = 447A0000
	mtc1    $at, $f4                   ## $f4 = 1000.00
	lwc1    $f18, 0x01B8(s0)           ## 000001B8
	lh      t6, 0x0032(s0)             ## 00000032
	lh      t7, 0x0306(s0)             ## 00000306
	mul.s   $f6, $f18, $f4             
	lh      a0, 0x0308(s0)             ## 00000308
	addu    t8, t6, t7                 
	sh      t8, 0x0032(s0)             ## 00000032
	trunc.w.s $f8, $f6                   
	mfc1    v1, $f8                    
	nop
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	subu    v0, $zero, v1              
	slt     $at, a0, v0                
	beql    $at, $zero, lbl_80A58604   
	slt     $at, v1, a0                
	beq     $zero, $zero, lbl_80A58618 
	sh      v0, 0x0308(s0)             ## 00000308
	slt     $at, v1, a0                
lbl_80A58604:
	beq     $at, $zero, lbl_80A58614   
	or      v0, a0, $zero              ## v0 = 00000000
	beq     $zero, $zero, lbl_80A58614 
	or      v0, v1, $zero              ## v0 = 00000000
lbl_80A58614:
	sh      v0, 0x0308(s0)             ## 00000308
lbl_80A58618:
	lh      t0, 0x00B6(s0)             ## 000000B6
	lh      t1, 0x0308(s0)             ## 00000308
	addiu   a0, s0, 0x0030             ## a0 = 00000030
	addiu   a2, $zero, 0x0BB8          ## a2 = 00000BB8
	addu    t2, t0, t1                 
	jal     func_80063704              
	sh      t2, 0x00B6(s0)             ## 000000B6
	lh      t3, 0x0030(s0)             ## 00000030
	jal     func_800CDCCC              ## Rand.Next() float
	sh      t3, 0x00B4(s0)             ## 000000B4
	lui     $at, %hi(var_80A594B0)     ## $at = 80A60000
	lwc1    $f10, %lo(var_80A594B0)($at) 
	c.lt.s  $f0, $f10                  
	nop
	bc1fl   lbl_80A586B4               
	lh      t6, 0x030A(s0)             ## 0000030A
	lwc1    $f16, 0x0024(s0)           ## 00000024
	addiu   t4, $zero, 0x0004          ## t4 = 00000004
	lw      a0, 0x005C($sp)            
	swc1    $f16, 0x0040($sp)          
	lwc1    $f4, 0x0084(s0)            ## 00000084
	lwc1    $f18, 0x0028(s0)           ## 00000028
	addiu   a1, $sp, 0x0040            ## a1 = FFFFFFE8
	addiu   a2, $zero, 0x0014          ## a2 = 00000014
	add.s   $f6, $f18, $f4             
	addiu   a3, $zero, 0x0064          ## a3 = 00000064
	swc1    $f6, 0x0044($sp)           
	lwc1    $f8, 0x002C(s0)            ## 0000002C
	sw      t4, 0x0010($sp)            
	jal     func_8001CF3C              
	swc1    $f8, 0x0048($sp)           
	addiu   t5, $zero, 0x0008          ## t5 = 00000008
	sw      t5, 0x0010($sp)            
	lw      a0, 0x005C($sp)            
	addiu   a1, $sp, 0x0040            ## a1 = FFFFFFE8
	addiu   a2, $zero, 0x0028          ## a2 = 00000028
	jal     func_8001CF3C              
	addiu   a3, $zero, 0x00C8          ## a3 = 000000C8
	lh      t6, 0x030A(s0)             ## 0000030A
lbl_80A586B4:
	blez    t6, lbl_80A5870C           
	nop
	lhu     v0, 0x0304(s0)             ## 00000304
	lh      t9, 0x004E($sp)            
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	andi    t7, v0, 0x0004             ## t7 = 00000000
	beq     t7, $zero, lbl_80A586E0    
	nop
	lh      t8, 0x030C(s0)             ## 0000030C
	blez    t8, lbl_80A5870C           
	nop
lbl_80A586E0:
	beq     t9, $at, lbl_80A586F4      
	andi    t0, v0, 0x0001             ## t0 = 00000000
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bnel    t9, $at, lbl_80A58720      
	lhu     t2, 0x0088(s0)             ## 00000088
lbl_80A586F4:
	beq     t0, $zero, lbl_80A5871C    
	lui     t1, %hi(var_80A593B8)      ## t1 = 80A60000
	lh      t1, %lo(var_80A593B8)(t1)  
	slti    $at, t1, 0x0004            
	bnel    $at, $zero, lbl_80A58720   
	lhu     t2, 0x0088(s0)             ## 00000088
lbl_80A5870C:
	jal     func_80A58764              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A58754 
	lw      $ra, 0x0024($sp)           
lbl_80A5871C:
	lhu     t2, 0x0088(s0)             ## 00000088
lbl_80A58720:
	andi    t4, v0, 0x0010             ## t4 = 00000000
	andi    t3, t2, 0x0040             ## t3 = 00000000
	bnel    t3, $zero, lbl_80A58754    
	lw      $ra, 0x0024($sp)           
	beq     t4, $zero, lbl_80A58748    
	nop
	jal     func_80A5890C              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A58754 
	lw      $ra, 0x0024($sp)           
lbl_80A58748:
	jal     func_80A57918              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x0024($sp)           
lbl_80A58754:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0058           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A58764:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	addiu   t6, $zero, 0x0064          ## t6 = 00000064
	sh      t6, 0x030A(a0)             ## 0000030A
	jal     func_80A574C4              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     $at, %hi(var_80A594B4)     ## $at = 80A60000
	lhu     t7, 0x0304(a0)             ## 00000304
	swc1    $f0, 0x0060(a0)            ## 00000060
	swc1    $f0, 0x0068(a0)            ## 00000068
	lwc1    $f4, %lo(var_80A594B4)($at) 
	lui     $at, %hi(var_80A594B8)     ## $at = 80A60000
	andi    t0, t7, 0xFFFC             ## t0 = 00000000
	swc1    $f4, 0x0070(a0)            ## 00000070
	lwc1    $f6, %lo(var_80A594B8)($at) 
	andi    t2, t0, 0xFEFF             ## t2 = 00000000
	lui     t9, %hi(func_80A587DC)     ## t9 = 80A60000
	sh      t0, 0x0304(a0)             ## 00000304
	addiu   t9, t9, %lo(func_80A587DC) ## t9 = 80A587DC
	ori     t3, t2, 0x0008             ## t3 = 00000008
	sh      t2, 0x0304(a0)             ## 00000304
	sw      t9, 0x0300(a0)             ## 00000300
	sh      t3, 0x0304(a0)             ## 00000304
	swc1    $f6, 0x006C(a0)            ## 0000006C
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A587DC:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	lui     $at, %hi(var_80A594BC)     ## $at = 80A60000
	lwc1    $f12, %lo(var_80A594BC)($at) 
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	lh      t6, 0x00B4(s0)             ## 000000B4
	lh      t8, 0x00B6(s0)             ## 000000B6
	lui     $at, %hi(var_80A594C0)     ## $at = 80A60000
	addiu   t7, t6, 0xFE0C             ## t7 = FFFFFE0C
	addiu   t9, t8, 0x00C8             ## t9 = 000000C8
	sh      t7, 0x00B4(s0)             ## 000000B4
	sh      t9, 0x00B6(s0)             ## 000000B6
	lwc1    $f6, %lo(var_80A594C0)($at) 
	lwc1    $f4, 0x0050(s0)            ## 00000050
	sub.s   $f0, $f4, $f6              
	c.lt.s  $f0, $f12                  
	nop
	bc1fl   lbl_80A5883C               
	mov.s   $f2, $f0                   
	beq     $zero, $zero, lbl_80A5883C 
	mov.s   $f2, $f12                  
	mov.s   $f2, $f0                   
lbl_80A5883C:
	mfc1    a1, $f2                    
	jal     func_80020F88              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f8                   ## $f8 = 5.00
	lwc1    $f0, 0x0084(s0)            ## 00000084
	lui     $at, 0x41F0                ## $at = 41F00000
	c.lt.s  $f8, $f0                   
	nop
	bc1fl   lbl_80A588E8               
	lh      t0, 0x030A(s0)             ## 0000030A
	mtc1    $at, $f10                  ## $f10 = 30.00
	nop
	c.lt.s  $f0, $f10                  
	nop
	bc1fl   lbl_80A588E8               
	lh      t0, 0x030A(s0)             ## 0000030A
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_80A594C4)     ## $at = 80A60000
	lwc1    $f16, %lo(var_80A594C4)($at) 
	c.lt.s  $f0, $f16                  
	nop
	bc1fl   lbl_80A588E8               
	lh      t0, 0x030A(s0)             ## 0000030A
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f2                   ## $f2 = 5.00
	lui     $at, %hi(var_80A594C8)     ## $at = 80A60000
	lwc1    $f18, %lo(var_80A594C8)($at) 
	lui     $at, %hi(var_80A594CC)     ## $at = 80A60000
	lwc1    $f6, %lo(var_80A594CC)($at) 
	mul.s   $f4, $f0, $f18             
	mfc1    a3, $f2                    
	lw      a0, 0x002C($sp)            
	addiu   a1, s0, 0x0024             ## a1 = 00000024
	lui     a2, 0xC0A0                 ## a2 = C0A00000
	swc1    $f2, 0x0010($sp)           
	add.s   $f8, $f4, $f6              
	jal     func_8001CEDC              
	swc1    $f8, 0x0014($sp)           
	lh      t0, 0x030A(s0)             ## 0000030A
lbl_80A588E8:
	bgtzl   t0, lbl_80A588FC           
	lw      $ra, 0x0024($sp)           
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x0024($sp)           
lbl_80A588FC:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A5890C:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	jal     func_80A574C4              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, 0x3FC0                ## $at = 3FC00000
	mtc1    $at, $f4                   ## $f4 = 1.50
	addiu   t6, $zero, 0x0064          ## t6 = 00000064
	sh      t6, 0x030A(s0)             ## 0000030A
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f4, 0x0314(s0)            ## 00000314
	lui     $at, %hi(var_80A594D0)     ## $at = 80A60000
	lwc1    $f6, %lo(var_80A594D0)($at) 
	mul.s   $f8, $f0, $f6              
	trunc.w.s $f10, $f8                  
	mfc1    t8, $f10                   
	jal     func_800CDCCC              ## Rand.Next() float
	sh      t8, 0x0318(s0)             ## 00000318
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f16                  ## $f16 = 0.50
	lui     $at, %hi(var_80A594D4)     ## $at = 80A60000
	lwc1    $f4, %lo(var_80A594D4)($at) 
	sub.s   $f18, $f0, $f16            
	mul.s   $f6, $f18, $f4             
	trunc.w.s $f8, $f6                   
	mfc1    t0, $f8                    
	jal     func_800CDCCC              ## Rand.Next() float
	sh      t0, 0x0306(s0)             ## 00000306
	lui     $at, %hi(var_80A594D8)     ## $at = 80A60000
	lwc1    $f10, %lo(var_80A594D8)($at) 
	lui     a1, 0x3B44                 ## a1 = 3B440000
	ori     a1, a1, 0x9BA6             ## a1 = 3B449BA6
	mul.s   $f16, $f0, $f10            
	or      a0, s0, $zero              ## a0 = 00000000
	trunc.w.s $f18, $f16                 
	mfc1    t2, $f18                   
	jal     func_80020F88              
	sh      t2, 0x0032(s0)             ## 00000032
	lhu     t4, 0x0304(s0)             ## 00000304
	lui     t3, %hi(func_80A589D4)     ## t3 = 80A60000
	addiu   t3, t3, %lo(func_80A589D4) ## t3 = 80A589D4
	ori     t5, t4, 0x0100             ## t5 = 00000100
	sw      t3, 0x0300(s0)             ## 00000300
	sh      t5, 0x0304(s0)             ## 00000304
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A589D4:
	addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x005C($sp)            
	sw      $zero, 0x0050($sp)         
	lh      t6, 0x001C(s0)             ## 0000001C
	andi    t7, t6, 0x0003             ## t7 = 00000000
	sh      t7, 0x003A($sp)            
	lw      v0, 0x0310(s0)             ## 00000310
	beq     v0, $zero, lbl_80A58A14    
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	jal     func_800A5538              
	addiu   a1, v0, 0x0024             ## a1 = 00000024
	beq     $zero, $zero, lbl_80A58A24 
	swc1    $f0, 0x0040($sp)           
lbl_80A58A14:
	lui     $at, 0x4220                ## $at = 42200000
	mtc1    $at, $f4                   ## $f4 = 40.00
	nop
	swc1    $f4, 0x0040($sp)           
lbl_80A58A24:
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f12                  ## $f12 = 1.00
	lui     v0, %hi(var_80A593B0)      ## v0 = 80A60000
	addiu   v0, v0, %lo(var_80A593B0)  ## v0 = 80A593B0
	lui     $at, %hi(var_80A594DC)     ## $at = 80A60000
	lwc1    $f8, %lo(var_80A594DC)($at) 
	lwc1    $f6, 0x0000(v0)            ## 80A593B0
	lui     $at, %hi(var_80A594E0)     ## $at = 80A60000
	add.s   $f10, $f6, $f8             
	swc1    $f10, 0x0000(v0)           ## 80A593B0
	lwc1    $f0, 0x0000(v0)            ## 80A593B0
	c.lt.s  $f12, $f0                  
	nop
	bc1f    lbl_80A58A68               
	nop
	swc1    $f12, 0x0000(v0)           ## 80A593B0
	lwc1    $f0, 0x0000(v0)            ## 80A593B0
lbl_80A58A68:
	lwc1    $f16, %lo(var_80A594E0)($at) 
	c.lt.s  $f16, $f0                  
	nop
	bc1fl   lbl_80A58A8C               
	lui     $at, 0x4461                ## $at = 44610000
	mtc1    $zero, $f2                 ## $f2 = 0.00
	beq     $zero, $zero, lbl_80A58AE8 
	lw      t8, 0x0310(s0)             ## 00000310
	lui     $at, 0x4461                ## $at = 44610000
lbl_80A58A8C:
	mtc1    $at, $f18                  ## $f18 = 900.00
	lwc1    $f4, 0x0040($sp)           
	lui     $at, 0x4120                ## $at = 41200000
	c.lt.s  $f18, $f4                  
	nop
	bc1fl   lbl_80A58AD4               
	sub.s   $f4, $f12, $f0             
	lui     $at, %hi(var_80A594E4)     ## $at = 80A60000
	lwc1    $f6, %lo(var_80A594E4)($at) 
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f10                  ## $f10 = 100.00
	sub.s   $f8, $f6, $f0              
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f18                  ## $f18 = 20.00
	mul.s   $f16, $f8, $f10            
	beq     $zero, $zero, lbl_80A58AE4 
	add.s   $f2, $f16, $f18            
	sub.s   $f4, $f12, $f0             
lbl_80A58AD4:
	mtc1    $at, $f6                   ## $f6 = 20.00
	nop
	mul.s   $f2, $f4, $f6              
	nop
lbl_80A58AE4:
	lw      t8, 0x0310(s0)             ## 00000310
lbl_80A58AE8:
	beq     t8, $zero, lbl_80A58B74    
	nop
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f2, 0x003C($sp)           
	lui     $at, %hi(var_80A594E8)     ## $at = 80A60000
	lwc1    $f8, %lo(var_80A594E8)($at) 
	lwc1    $f2, 0x003C($sp)           
	c.lt.s  $f0, $f8                   
	nop
	bc1f    lbl_80A58B74               
	nop
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f2, 0x003C($sp)           
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f10                  ## $f10 = 0.50
	lwc1    $f2, 0x003C($sp)           
	lw      t9, 0x0310(s0)             ## 00000310
	sub.s   $f16, $f0, $f10            
	lw      t1, 0x0310(s0)             ## 00000310
	lwc1    $f4, 0x0024(t9)            ## 00000024
	mul.s   $f18, $f16, $f2            
	add.s   $f6, $f18, $f4             
	swc1    $f6, 0x0008(s0)            ## 00000008
	lwc1    $f8, 0x0028(t1)            ## 00000028
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f8, 0x000C(s0)            ## 0000000C
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f10                  ## $f10 = 0.50
	lwc1    $f2, 0x003C($sp)           
	lw      t2, 0x0310(s0)             ## 00000310
	sub.s   $f16, $f0, $f10            
	lwc1    $f4, 0x002C(t2)            ## 0000002C
	mul.s   $f18, $f16, $f2            
	add.s   $f6, $f18, $f4             
	swc1    $f6, 0x0010(s0)            ## 00000010
lbl_80A58B74:
	lui     v0, %hi(var_80A593B0)      ## v0 = 80A60000
	addiu   v0, v0, %lo(var_80A593B0)  ## v0 = 80A593B0
	lui     $at, %hi(var_80A594EC)     ## $at = 80A60000
	lwc1    $f8, %lo(var_80A594EC)($at) 
	lwc1    $f10, 0x0000(v0)           ## 80A593B0
	c.lt.s  $f8, $f10                  
	nop
	bc1f    lbl_80A58BC0               
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	jal     func_80063F00              
	addiu   a1, s0, 0x0008             ## a1 = 00000008
	jal     func_800CDCCC              ## Rand.Next() float
	sh      v0, 0x0318(s0)             ## 00000318
	lui     $at, %hi(var_80A594F0)     ## $at = 80A60000
	lwc1    $f2, %lo(var_80A594F0)($at) 
	mul.s   $f16, $f0, $f2             
	add.s   $f18, $f16, $f2            
	beq     $zero, $zero, lbl_80A58CDC 
	swc1    $f18, 0x0314(s0)           ## 00000314
lbl_80A58BC0:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f12                  ## $f12 = 1.00
	lui     $at, %hi(var_80A594F4)     ## $at = 80A60000
	lwc1    $f4, %lo(var_80A594F4)($at) 
	addiu   t3, s0, 0x0024             ## t3 = 00000024
	c.lt.s  $f0, $f4                   
	nop
	bc1f    lbl_80A58CDC               
	nop
	sw      t3, 0x002C($sp)            
	lwc1    $f6, 0x0314(s0)            ## 00000314
	lui     $at, %hi(var_80A594F8)     ## $at = 80A60000
	c.lt.s  $f12, $f6                  
	nop
	bc1f    lbl_80A58C14               
	nop
	lwc1    $f8, %lo(var_80A594F8)($at) 
	beq     $zero, $zero, lbl_80A58C38 
	swc1    $f8, 0x0314(s0)            ## 00000314
lbl_80A58C14:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f12                  ## $f12 = 1.00
	lui     $at, %hi(var_80A594FC)     ## $at = 80A60000
	lwc1    $f10, %lo(var_80A594FC)($at) 
	mul.s   $f16, $f0, $f10            
	add.s   $f18, $f16, $f12           
	swc1    $f18, 0x0314(s0)           ## 00000314
lbl_80A58C38:
	lui     $at, %hi(var_80A59500)     ## $at = 80A60000
	lwc1    $f4, %lo(var_80A59500)($at) 
	lui     $at, %hi(var_80A593B0)     ## $at = 80A60000
	lwc1    $f6, %lo(var_80A593B0)($at) 
	mtc1    $zero, $f8                 ## $f8 = 0.00
	sub.s   $f2, $f4, $f6              
	c.lt.s  $f2, $f8                   
	nop
	bc1fl   lbl_80A58C70               
	c.lt.s  $f12, $f2                  
	mtc1    $zero, $f2                 ## $f2 = 0.00
	beq     $zero, $zero, lbl_80A58C8C 
	nop
	c.lt.s  $f12, $f2                  
lbl_80A58C70:
	nop
	bc1fl   lbl_80A58C88               
	mov.s   $f0, $f2                   
	beq     $zero, $zero, lbl_80A58C88 
	mov.s   $f0, $f12                  
	mov.s   $f0, $f2                   
lbl_80A58C88:
	mov.s   $f2, $f0                   
lbl_80A58C8C:
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f2, 0x0034($sp)           
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f10                  ## $f10 = 0.50
	lui     $at, %hi(var_80A59504)     ## $at = 80A60000
	lwc1    $f18, %lo(var_80A59504)($at) 
	sub.s   $f16, $f0, $f10            
	lwc1    $f2, 0x0034($sp)           
	lw      a0, 0x002C($sp)            
	addiu   a1, s0, 0x0008             ## a1 = 00000008
	mul.s   $f4, $f16, $f18            
	nop
	mul.s   $f6, $f4, $f2              
	trunc.w.s $f8, $f6                   
	mfc1    t5, $f8                    
	jal     func_80063F00              
	sh      t5, 0x0038($sp)            
	lh      t6, 0x0038($sp)            
	addu    t7, v0, t6                 
	sh      t7, 0x0318(s0)             ## 00000318
lbl_80A58CDC:
	lui     $at, %hi(var_80A59508)     ## $at = 80A60000
	lwc1    $f12, %lo(var_80A59508)($at) 
	lui     $at, %hi(var_80A5950C)     ## $at = 80A60000
	lwc1    $f16, %lo(var_80A5950C)($at) 
	lwc1    $f10, 0x0050(s0)           ## 00000050
	add.s   $f2, $f10, $f16            
	c.lt.s  $f12, $f2                  
	nop
	bc1fl   lbl_80A58D10               
	mov.s   $f0, $f2                   
	beq     $zero, $zero, lbl_80A58D10 
	mov.s   $f0, $f12                  
	mov.s   $f0, $f2                   
lbl_80A58D10:
	mfc1    a1, $f0                    
	jal     func_80020F88              
	or      a0, s0, $zero              ## a0 = 00000000
	lhu     t8, 0x0088(s0)             ## 00000088
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	andi    t9, t8, 0x0001             ## t9 = 00000000
	beq     t9, $zero, lbl_80A58D8C    
	lui     a2, 0x3DCC                 ## a2 = 3DCC0000
	mtc1    $zero, $f18                ## $f18 = 0.00
	lw      a1, 0x0314(s0)             ## 00000314
	lui     a2, 0x3DCC                 ## a2 = 3DCC0000
	ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	lui     a3, 0x3F00                 ## a3 = 3F000000
	jal     func_80064178              
	swc1    $f18, 0x0010($sp)          
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	lh      a1, 0x0318(s0)             ## 00000318
	jal     func_80063704              
	addiu   a2, $zero, 0x07D0          ## a2 = 000007D0
	addiu   a0, s0, 0x0030             ## a0 = 00000030
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_80063704              
	addiu   a2, $zero, 0x07D0          ## a2 = 000007D0
	sw      v0, 0x0050($sp)            
	lh      t1, 0x0032(s0)             ## 00000032
	lh      t2, 0x0030(s0)             ## 00000030
	sh      t1, 0x00B6(s0)             ## 000000B6
	beq     $zero, $zero, lbl_80A58E0C 
	sh      t2, 0x00B4(s0)             ## 000000B4
lbl_80A58D8C:
	mtc1    $zero, $f4                 ## $f4 = 0.00
	ori     a2, a2, 0xCCCD             ## a2 = 0000CCCD
	lui     a3, 0x3F00                 ## a3 = 3F000000
	jal     func_80064178              
	swc1    $f4, 0x0010($sp)           
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f6                   ## $f6 = 0.50
	lui     $at, %hi(var_80A59510)     ## $at = 80A60000
	lwc1    $f10, %lo(var_80A59510)($at) 
	sub.s   $f8, $f0, $f6              
	lwc1    $f18, 0x0068(s0)           ## 00000068
	mul.s   $f16, $f8, $f10            
	add.s   $f4, $f18, $f16            
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f4, 0x0068(s0)            ## 00000068
	lui     $at, %hi(var_80A59514)     ## $at = 80A60000
	lwc1    $f8, %lo(var_80A59514)($at) 
	lh      t3, 0x0032(s0)             ## 00000032
	lh      t4, 0x0306(s0)             ## 00000306
	mul.s   $f10, $f0, $f8             
	lwc1    $f6, 0x0060(s0)            ## 00000060
	addu    t5, t3, t4                 
	lh      t7, 0x00B4(s0)             ## 000000B4
	sh      t5, 0x0032(s0)             ## 00000032
	lh      t6, 0x0032(s0)             ## 00000032
	addiu   t8, t7, 0xF830             ## t8 = FFFFF830
	add.s   $f18, $f6, $f10            
	sh      t8, 0x00B4(s0)             ## 000000B4
	sh      t6, 0x00B6(s0)             ## 000000B6
	swc1    $f18, 0x0060(s0)           ## 00000060
lbl_80A58E0C:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_80A59518)     ## $at = 80A60000
	lwc1    $f4, %lo(var_80A59518)($at) 
	lwc1    $f16, 0x0068(s0)           ## 00000068
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f6                   ## $f6 = 0.50
	mul.s   $f8, $f16, $f4             
	mtc1    $zero, $f12                ## $f12 = 0.00
	lui     $at, %hi(var_80A5951C)     ## $at = 80A60000
	mul.s   $f10, $f0, $f6             
	add.s   $f2, $f10, $f8             
	c.lt.s  $f2, $f12                  
	nop
	bc1f    lbl_80A58E54               
	nop
	beq     $zero, $zero, lbl_80A58E78 
	swc1    $f12, 0x01B8(s0)           ## 000001B8
lbl_80A58E54:
	lwc1    $f12, %lo(var_80A5951C)($at) 
	c.lt.s  $f12, $f2                  
	nop
	bc1fl   lbl_80A58E74               
	mov.s   $f0, $f2                   
	beq     $zero, $zero, lbl_80A58E74 
	mov.s   $f0, $f12                  
	mov.s   $f0, $f2                   
lbl_80A58E74:
	swc1    $f0, 0x01B8(s0)            ## 000001B8
lbl_80A58E78:
	jal     func_8008C9C0              
	addiu   a0, s0, 0x019C             ## a0 = 0000019C
	lhu     a2, 0x0304(s0)             ## 00000304
	andi    t9, a2, 0x0040             ## t9 = 00000000
	bne     t9, $zero, lbl_80A58EC4    
	andi    t1, a2, 0x0001             ## t1 = 00000000
	beql    t1, $zero, lbl_80A58EC8    
	lh      t0, 0x003A($sp)            
	lhu     t2, 0x0088(s0)             ## 00000088
	or      a0, s0, $zero              ## a0 = 00000000
	andi    t3, t2, 0x0001             ## t3 = 00000000
	beql    t3, $zero, lbl_80A58EC8    
	lh      t0, 0x003A($sp)            
	jal     func_80022FD0              
	addiu   a1, $zero, 0x39A0          ## a1 = 000039A0
	lhu     t4, 0x0304(s0)             ## 00000304
	ori     t5, t4, 0x0040             ## t5 = 00000040
	sh      t5, 0x0304(s0)             ## 00000304
	andi    a2, t5, 0xFFFF             ## a2 = 00000040
lbl_80A58EC4:
	lh      t0, 0x003A($sp)            
lbl_80A58EC8:
	addiu   a3, $zero, 0x0002          ## a3 = 00000002
	andi    t6, a2, 0x0010             ## t6 = 00000000
	bnel    t0, a3, lbl_80A58F90       
	andi    v0, a2, 0x0001             ## v0 = 00000000
	beq     t6, $zero, lbl_80A58F8C    
	andi    t7, a2, 0x0080             ## t7 = 00000000
	bnel    t7, $zero, lbl_80A58F90    
	andi    v0, a2, 0x0001             ## v0 = 00000000
	lbu     v0, 0x031A(s0)             ## 0000031A
	slti    $at, v0, 0x000F            
	bne     $at, $zero, lbl_80A58F84   
	addiu   t9, v0, 0x0001             ## t9 = 00000001
	lw      v0, 0x0310(s0)             ## 00000310
	lui     t1, 0x8012                 ## t1 = 80120000
	beql    v0, $zero, lbl_80A58F78    
	ori     t8, a2, 0x0080             ## t8 = 000000C0
	lh      v1, 0x001C(v0)             ## 0000001C
	lui     t2, 0x8010                 ## t2 = 80100000
	lui     t4, 0x8010                 ## t4 = 80100000
	sra     a0, v1,  8                 
	andi    a0, a0, 0x001F             ## a0 = 00000000
	addiu   a0, a0, 0xFFFF             ## a0 = FFFFFFFF
	andi    a1, a0, 0x0003             ## a1 = 00000003
	sra     t8, a0,  2                 
	sll     t9, t8,  2                 
	sll     a1, a1,  2                 
	addu    t2, t2, a1                 
	addu    t1, t1, t9                 
	lw      t1, -0x4B94(t1)            ## 8011B46C
	lw      t2, -0x72F4(t2)            ## 800F8D0C
	addu    t4, t4, a1                 
	lw      t4, -0x72E4(t4)            ## 800F8D1C
	and     t3, t1, t2                 
	andi    t6, v1, 0x00FF             ## t6 = 00000000
	srlv    t5, t3, t4                 
	and     t7, t5, t6                 
	bnel    t7, $zero, lbl_80A58F78    
	ori     t8, a2, 0x0080             ## t8 = 000000C0
	jal     func_800646F0              
	addiu   a0, $zero, 0x4807          ## a0 = 00004807
	addiu   a3, $zero, 0x0002          ## a3 = 00000002
	lhu     a2, 0x0304(s0)             ## 00000304
	lh      t0, 0x003A($sp)            
	ori     t8, a2, 0x0080             ## t8 = 00000080
lbl_80A58F78:
	sh      t8, 0x0304(s0)             ## 00000304
	beq     $zero, $zero, lbl_80A58F8C 
	andi    a2, t8, 0xFFFF             ## a2 = 00000080
lbl_80A58F84:
	sb      t9, 0x031A(s0)             ## 0000031A
	lhu     a2, 0x0304(s0)             ## 00000304
lbl_80A58F8C:
	andi    v0, a2, 0x0001             ## v0 = 00000000
lbl_80A58F90:
	beq     v0, $zero, lbl_80A58FB8    
	andi    t3, a2, 0x0010             ## t3 = 00000000
	lhu     t1, 0x0088(s0)             ## 00000088
	andi    t2, t1, 0x0040             ## t2 = 00000000
	beq     t2, $zero, lbl_80A58FB8    
	nop
	jal     func_80A583D0              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A590F4 
	lw      $ra, 0x0024($sp)           
lbl_80A58FB8:
	beq     t3, $zero, lbl_80A59084    
	lw      t2, 0x0050($sp)            
	lui     $at, 0x4110                ## $at = 41100000
	mtc1    $at, $f16                  ## $f16 = 9.00
	lwc1    $f18, 0x0040($sp)          
	c.lt.s  $f18, $f16                 
	nop
	bc1fl   lbl_80A58FF0               
	lh      t4, 0x030A(s0)             ## 0000030A
	jal     func_80A58134              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A590F4 
	lw      $ra, 0x0024($sp)           
	lh      t4, 0x030A(s0)             ## 0000030A
lbl_80A58FF0:
	blez    t4, lbl_80A59040           
	nop
	lh      v1, 0x030C(s0)             ## 0000030C
	blez    v1, lbl_80A59040           
	nop
	beq     v0, $zero, lbl_80A59050    
	lwc1    $f4, 0x0040($sp)           
	lhu     t5, 0x0088(s0)             ## 00000088
	lui     t7, %hi(var_80A593B8)      ## t7 = 80A60000
	andi    t6, t5, 0x0001             ## t6 = 00000000
	beql    t6, $zero, lbl_80A59054    
	lui     $at, 0x4461                ## $at = 44610000
	lh      t7, %lo(var_80A593B8)(t7)  
	slti    $at, t7, 0x0004            
	bnel    $at, $zero, lbl_80A59054   
	lui     $at, 0x4461                ## $at = 44610000
	beq     t0, a3, lbl_80A59040       
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bnel    t0, $at, lbl_80A59054      
	lui     $at, 0x4461                ## $at = 44610000
lbl_80A59040:
	jal     func_80A58134              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A590F4 
	lw      $ra, 0x0024($sp)           
lbl_80A59050:
	lui     $at, 0x4461                ## $at = 44610000
lbl_80A59054:
	mtc1    $at, $f6                   ## $f6 = 900.00
	addiu   t8, v1, 0x0001             ## t8 = 00000001
	ori     t9, a2, 0x0020             ## t9 = 00000020
	c.lt.s  $f4, $f6                   
	addiu   t1, $zero, 0x0064          ## t1 = 00000064
	bc1f    lbl_80A5907C               
	nop
	sh      t8, 0x030C(s0)             ## 0000030C
	beq     $zero, $zero, lbl_80A590F0 
	sh      t9, 0x0304(s0)             ## 00000304
lbl_80A5907C:
	beq     $zero, $zero, lbl_80A590F0 
	sh      t1, 0x030A(s0)             ## 0000030A
lbl_80A59084:
	beq     t2, $zero, lbl_80A5909C    
	nop
	jal     func_80A57918              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A590F4 
	lw      $ra, 0x0024($sp)           
lbl_80A5909C:
	beq     t0, a3, lbl_80A590AC       
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bnel    t0, $at, lbl_80A590F4      
	lw      $ra, 0x0024($sp)           
lbl_80A590AC:
	beql    v0, $zero, lbl_80A590F4    
	lw      $ra, 0x0024($sp)           
	lh      t3, 0x030C(s0)             ## 0000030C
	bgtzl   t3, lbl_80A590F4           
	lw      $ra, 0x0024($sp)           
	lh      t4, 0x030A(s0)             ## 0000030A
	lui     $at, %hi(var_80A59520)     ## $at = 80A60000
	bgtzl   t4, lbl_80A590F4           
	lw      $ra, 0x0024($sp)           
	lwc1    $f10, 0x0080(s0)           ## 00000080
	lwc1    $f8, %lo(var_80A59520)($at) 
	c.lt.s  $f10, $f8                  
	nop
	bc1fl   lbl_80A590F4               
	lw      $ra, 0x0024($sp)           
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80A590F0:
	lw      $ra, 0x0024($sp)           
lbl_80A590F4:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0058           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A59104:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	lw      v0, 0x011C(s0)             ## 0000011C
	beql    v0, $zero, lbl_80A59140    
	lh      v0, 0x030A(s0)             ## 0000030A
	lw      t6, 0x0130(v0)             ## 00000130
	bnel    t6, $zero, lbl_80A59140    
	lh      v0, 0x030A(s0)             ## 0000030A
	beql    s0, v0, lbl_80A59140       
	lh      v0, 0x030A(s0)             ## 0000030A
	sw      $zero, 0x011C(s0)          ## 0000011C
	lh      v0, 0x030A(s0)             ## 0000030A
lbl_80A59140:
	blez    v0, lbl_80A5914C           
	addiu   t7, v0, 0xFFFF             ## t7 = FFFFFFFF
	sh      t7, 0x030A(s0)             ## 0000030A
lbl_80A5914C:
	lh      v0, 0x030C(s0)             ## 0000030C
	blez    v0, lbl_80A5915C           
	addiu   t8, v0, 0xFFFF             ## t8 = FFFFFFFF
	sh      t8, 0x030C(s0)             ## 0000030C
lbl_80A5915C:
	lw      t9, 0x0300(s0)             ## 00000300
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x002C($sp)            
	jalr    $ra, t9                    
	nop
	lw      t0, 0x0130(s0)             ## 00000130
	beql    t0, $zero, lbl_80A5933C    
	lw      $ra, 0x0024($sp)           
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	lhu     v1, 0x0304(s0)             ## 00000304
	andi    t1, v1, 0x0100             ## t1 = 00000000
	beq     t1, $zero, lbl_80A591C8    
	andi    t2, v1, 0x0001             ## t2 = 00000000
	beq     t2, $zero, lbl_80A591BC    
	nop
	lhu     t3, 0x0088(s0)             ## 00000088
	andi    t4, t3, 0x0001             ## t4 = 00000000
	beql    t4, $zero, lbl_80A591CC    
	andi    t5, v1, 0x0001             ## t5 = 00000000
	jal     func_80A575C8              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A591C8 
	lhu     v1, 0x0304(s0)             ## 00000304
lbl_80A591BC:
	jal     func_80A575C8              
	or      a0, s0, $zero              ## a0 = 00000000
	lhu     v1, 0x0304(s0)             ## 00000304
lbl_80A591C8:
	andi    t5, v1, 0x0001             ## t5 = 00000000
lbl_80A591CC:
	beq     t5, $zero, lbl_80A591D8    
	or      v0, $zero, $zero           ## v0 = 00000000
	addiu   v0, $zero, 0x0004          ## v0 = 00000004
lbl_80A591D8:
	andi    t6, v1, 0x0002             ## t6 = 00000000
	beq     t6, $zero, lbl_80A591E8    
	lw      a0, 0x002C($sp)            
	ori     v0, v0, 0x0001             ## v0 = 00000005
lbl_80A591E8:
	beq     v0, $zero, lbl_80A5920C    
	or      a1, s0, $zero              ## a1 = 00000000
	mtc1    $zero, $f4                 ## $f4 = 0.00
	ori     v0, v0, 0x0040             ## v0 = 00000045
	sw      v0, 0x0014($sp)            
	lui     a2, 0x4100                 ## a2 = 41000000
	lui     a3, 0x40A0                 ## a3 = 40A00000
	jal     func_80021E6C              
	swc1    $f4, 0x0010($sp)           
lbl_80A5920C:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022BB0              
	lw      a1, 0x002C($sp)            
	beq     v0, $zero, lbl_80A59260    
	lui     $at, 0x4248                ## $at = 42480000
	lh      v0, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	sw      $zero, 0x0118(s0)          ## 00000118
	andi    v0, v0, 0x0003             ## v0 = 00000000
	beq     v0, $at, lbl_80A59240      
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bne     v0, $at, lbl_80A59250      
	nop
lbl_80A59240:
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A59330 
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80A59250:
	jal     func_80A57FD0              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A59330 
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80A59260:
	lwc1    $f6, 0x0090(s0)            ## 00000090
	mtc1    $at, $f8                   ## $f8 = 0.00
	nop
	c.lt.s  $f6, $f8                   
	nop
	bc1fl   lbl_80A59330               
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t8, 0x0300(s0)             ## 00000300
	lui     t7, %hi(func_80A5803C)     ## t7 = 80A60000
	addiu   t7, t7, %lo(func_80A5803C) ## t7 = 80A5803C
	beql    t7, t8, lbl_80A59330       
	or      a0, s0, $zero              ## a0 = 00000000
	lhu     v1, 0x0304(s0)             ## 00000304
	andi    t9, v1, 0x0020             ## t9 = 00000000
	bnel    t9, $zero, lbl_80A592CC    
	andi    t1, v1, 0x0008             ## t1 = 00000000
	lh      t0, 0x030C(s0)             ## 0000030C
	lw      a0, 0x002C($sp)            
	addiu   a2, s0, 0x013C             ## a2 = 0000013C
	slti    $at, t0, 0x00B4            
	beq     $at, $zero, lbl_80A592C8   
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	jal     func_8004C130              ## CollisionCheck_setOT
	addu    a1, a0, $at                
	lhu     v1, 0x0304(s0)             ## 00000304
lbl_80A592C8:
	andi    t1, v1, 0x0008             ## t1 = 00000000
lbl_80A592CC:
	bne     t1, $zero, lbl_80A5932C    
	lui     t2, %hi(var_80A593B4)      ## t2 = 80A60000
	lh      t2, %lo(var_80A593B4)(t2)  
	or      a0, s0, $zero              ## a0 = 00000000
	slti    $at, t2, 0x0004            
	beql    $at, $zero, lbl_80A59330   
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A573D4              
	lw      a1, 0x002C($sp)            
	beq     v0, $zero, lbl_80A5932C    
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f10                  ## $f10 = 30.00
	lw      a1, 0x002C($sp)            
	addiu   a2, $zero, 0x007E          ## a2 = 0000007E
	lui     a3, 0x4270                 ## a3 = 42700000
	jal     func_80022BD4              
	swc1    $f10, 0x0010($sp)          
	beq     v0, $zero, lbl_80A5932C    
	lui     v0, %hi(var_80A593B4)      ## v0 = 80A60000
	addiu   v0, v0, %lo(var_80A593B4)  ## v0 = 80A593B4
	lh      t3, 0x0000(v0)             ## 80A593B4
	addiu   t4, t3, 0x0001             ## t4 = 00000001
	sh      t4, 0x0000(v0)             ## 80A593B4
lbl_80A5932C:
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80A59330:
	jal     func_80020F04              
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	lw      $ra, 0x0024($sp)           
lbl_80A5933C:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A5934C:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0020($sp)            
	sw      a1, 0x0024($sp)            
	lw      t6, 0x0024($sp)            
	jal     func_8007E298              
	lw      a0, 0x0000(t6)             ## 00000000
	lw      v0, 0x0020($sp)            
	lw      a0, 0x0024($sp)            
	or      a3, $zero, $zero           ## a3 = 00000000
	lw      a1, 0x01A0(v0)             ## 000001A0
	lw      a2, 0x01BC(v0)             ## 000001BC
	sw      $zero, 0x0014($sp)         
	jal     func_8008993C              
	sw      $zero, 0x0010($sp)         
	lw      a1, 0x0020($sp)            
	or      a0, $zero, $zero           ## a0 = 00000000
	jal     func_80050CE4              
	addiu   a1, a1, 0x013C             ## a1 = 0000013C
	lui     $at, %hi(var_80A593B4)     ## $at = 80A60000
	sh      $zero, %lo(var_80A593B4)($at) 
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop

.section .data

var_80A593B0: .word 0x00000000
var_80A593B4: .word 0x00000000
var_80A593B8: .word 0x00000000
var_80A593BC: .word 0x00200700, 0x00000000, 0x00010000, 0x0000031C
.word func_80A5765C
.word func_80A578A8
.word func_80A59104
.word func_80A5934C
var_80A593DC: .word \
0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0x00000100, 0x00000000, 0x00000000, \
0x00050064
var_80A59400: .word 0x0A000019, 0x10000000, 0x00000001
.word var_80A593DC
var_80A59410: .word 0x00000005, 0x00070007
var_80A59418: .word 0xC850000A, 0xB0F402BC, 0xB0F80014, 0x30FC0258
var_80A59428: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80A59440: .word 0x3DCCCCCD
var_80A59444: .word 0xBE4CCCCD
var_80A59448: .word 0x3E99999A
var_80A5944C: .word 0x3ECCCCCD
var_80A59450: .word 0x3F99999A
var_80A59454: .word 0x3F4CCCCD
var_80A59458: .word 0x3FF33333
var_80A5945C: .word 0x3F333333
var_80A59460: .word 0x3FB33333
var_80A59464: .word 0x3FF33333
var_80A59468: .word 0x3F4CCCCD
var_80A5946C: .word 0x3FCCCCCD
var_80A59470: .word 0x3FF33333
var_80A59474: .word 0x3E99999A
var_80A59478: .word 0x3C23D70A
var_80A5947C: .word 0x3C23D70A
var_80A59480: .word 0x3A83126F
var_80A59484: .word 0x3FF33333
var_80A59488: .word 0x3A83126F
var_80A5948C: .word 0x3951B717
var_80A59490: .word 0x3F4CCCCD
var_80A59494: .word 0x3DCCCCCD
var_80A59498: .word 0xBF19999A
var_80A5949C: .word 0x3F19999A
var_80A594A0: .word 0xBF19999A
var_80A594A4: .word 0x3DCCCCCD
var_80A594A8: .word 0x3C9374BC
var_80A594AC: .word 0x3FF33333
var_80A594B0: .word 0x3CF5C28F
var_80A594B4: .word 0xBF4CCCCD
var_80A594B8: .word 0xBD23D70A
var_80A594BC: .word 0x3A83126F
var_80A594C0: .word 0x3851B717
var_80A594C4: .word 0x3E99999A
var_80A594C8: .word 0x3D23D70A
var_80A594CC: .word 0x3CA3D70A
var_80A594D0: .word 0x477FFF80
var_80A594D4: .word 0x44BB8000
var_80A594D8: .word 0x477FFF80
var_80A594DC: .word 0x3B5A740D
var_80A594E0: .word 0x3F7FBE77
var_80A594E4: .word 0x3F8CCCCD
var_80A594E8: .word 0x3D8F5C29
var_80A594EC: .word 0x3F7FBE77
var_80A594F0: .word 0x3F19999A
var_80A594F4: .word 0x3D8F5C29
var_80A594F8: .word 0x3DCCCCCD
var_80A594FC: .word 0x3F4CCCCD
var_80A59500: .word 0x3FA66666
var_80A59504: .word 0x477FFF00
var_80A59508: .word 0x3C23D70A
var_80A5950C: .word 0x3A51B717
var_80A59510: .word 0x3E0F5C29
var_80A59514: .word 0x3DF5C28F
var_80A59518: .word 0x3FA66666
var_80A5951C: .word 0x3FF33333
var_80A59520: .word 0xC6F9EC00, 0x00000000, 0x00000000, 0x00000000

