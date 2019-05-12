#include <mips.h>
.set noreorder
.set noat

.section .text
func_808BD020:
	sw      a1, 0x01E8(a0)             ## 000001E8
	jr      $ra                        
	nop


func_808BD02C:
	addiu   $sp, $sp, 0xFE30           ## $sp = FFFFFE30
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x01D4($sp)            
	addiu   t6, $zero, 0xFFFF          ## t6 = FFFFFFFF
	lui     a1, %hi(var_808BD810)      ## a1 = 808C0000
	sb      t6, 0x0003(s0)             ## 00000003
	addiu   a1, a1, %lo(var_808BD810)  ## a1 = 808BD810
	jal     func_80063F7C              
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	addiu   t9, $zero, 0x0064          ## t9 = 00000064
	addiu   t0, $zero, 0x00FF          ## t0 = 000000FF
	addiu   t1, $zero, 0x00FF          ## t1 = 000000FF
	addiu   t2, $zero, 0x00FF          ## t2 = 000000FF
	sb      t7, 0x01B0($sp)            
	sb      t9, 0x01B2($sp)            
	sb      t0, 0x01B3($sp)            
	sb      t1, 0x01B4($sp)            
	sb      t2, 0x01B5($sp)            
	addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
	addiu   t3, $zero, 0x0064          ## t3 = 00000064
	addiu   t4, $zero, 0x0040          ## t4 = 00000040
	addiu   t5, $zero, 0x00FF          ## t5 = 000000FF
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	addiu   t7, $zero, 0x0064          ## t7 = 00000064
	addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
	addiu   t0, $zero, 0x0064          ## t0 = 00000064
	addiu   t1, $zero, 0x0008          ## t1 = 00000008
	addiu   t2, $sp, 0x002C            ## t2 = FFFFFE5C
	sb      t8, 0x01B1($sp)            
	sb      t3, 0x01B6($sp)            
	sb      t4, 0x01B7($sp)            
	sb      t5, 0x01B8($sp)            
	sb      t6, 0x01B9($sp)            
	sb      t7, 0x01BA($sp)            
	sb      $zero, 0x01BB($sp)         
	sb      t8, 0x01BC($sp)            
	sb      t9, 0x01BD($sp)            
	sb      t0, 0x01BE($sp)            
	sb      $zero, 0x01BF($sp)         
	sw      t1, 0x01C0($sp)            
	sw      $zero, 0x01C4($sp)         
	sw      $zero, 0x01C8($sp)         
	sw      t2, 0x0014($sp)            
	lw      a0, 0x01D4($sp)            
	addiu   a1, s0, 0x01C8             ## a1 = 000001C8
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_8001AA5C              
	sw      $zero, 0x0010($sp)         
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	sw      a1, 0x0028($sp)            
	jal     func_8004B858              
	lw      a0, 0x01D4($sp)            
	lui     a3, %hi(var_808BD7C0)      ## a3 = 808C0000
	lw      a1, 0x0028($sp)            
	addiu   a3, a3, %lo(var_808BD7C0)  ## a3 = 808BD7C0
	lw      a0, 0x01D4($sp)            
	jal     func_8004B960              
	or      a2, s0, $zero              ## a2 = 00000000
	lui     a1, %hi(func_808BD188)     ## a1 = 808C0000
	addiu   a1, a1, %lo(func_808BD188) ## a1 = 808BD188
	jal     func_808BD020              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x01D0           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BD148:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      t6, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_8001AE04              
	lw      a1, 0x01C8(t6)             ## 000001C8
	lw      a1, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_8004B8A8              
	addiu   a1, a1, 0x013C             ## a1 = 0000013C
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BD188:
	addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
	sw      s0, 0x0030($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      a1, 0x0084($sp)            
	lw      t6, 0x0084($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t7, 0x1C44(t6)             ## 00001C44
	sw      t7, 0x0078($sp)            
	lw      v1, 0x01BC(s0)             ## 000001BC
	beq     v1, $zero, lbl_808BD310    
	addiu   a1, v1, 0x0038             ## a1 = 00000038
	sw      v1, 0x007C($sp)            
	jal     func_8002140C              
	sw      a1, 0x0040($sp)            
	sh      v0, 0x0072($sp)            
	lh      t8, 0x0032(s0)             ## 00000032
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x0040($sp)            
	subu    a2, t8, v0                 
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	jal     func_80021488              
	sh      a2, 0x0070($sp)            
	sh      v0, 0x006E($sp)            
	lh      t9, 0x0030(s0)             ## 00000030
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	lw      a1, 0x0040($sp)            
	subu    a3, t9, v0                 
	sll     a3, a3, 16                 
	sra     a3, a3, 16                 
	jal     func_80063E18              
	sh      a3, 0x006C($sp)            
	lui     $at, %hi(var_808BD830)     ## $at = 808C0000
	lwc1    $f14, %lo(var_808BD830)($at) 
	lui     $at, 0x4348                ## $at = 43480000
	mtc1    $at, $f4                   ## $f4 = 200.00
	lui     $at, %hi(var_808BD834)     ## $at = 808C0000
	lwc1    $f8, %lo(var_808BD834)($at) 
	sub.s   $f6, $f4, $f0              
	lw      v1, 0x007C($sp)            
	lh      a2, 0x0070($sp)            
	lh      a3, 0x006C($sp)            
	mul.s   $f12, $f6, $f8             
	lw      t0, 0x0078($sp)            
	c.lt.s  $f12, $f14                 
	nop
	bc1f    lbl_808BD250               
	nop
	mov.s   $f12, $f14                 
lbl_808BD250:
	beq     t0, v1, lbl_808BD288       
	nop
	lw      t1, 0x0130(v1)             ## 00000130
	beq     t1, $zero, lbl_808BD280    
	nop
	bltz    a2, lbl_808BD274           
	subu    v0, $zero, a2              
	beq     $zero, $zero, lbl_808BD274 
	or      v0, a2, $zero              ## v0 = 00000000
lbl_808BD274:
	slti    $at, v0, 0x4001            
	bne     $at, $zero, lbl_808BD288   
	nop
lbl_808BD280:
	beq     $zero, $zero, lbl_808BD310 
	sw      $zero, 0x01BC(s0)          ## 000001BC
lbl_808BD288:
	bltz    a2, lbl_808BD298           
	subu    v0, $zero, a2              
	beq     $zero, $zero, lbl_808BD298 
	or      v0, a2, $zero              ## v0 = 00000000
lbl_808BD298:
	mtc1    v0, $f10                   ## $f10 = 0.00
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	lh      a1, 0x0072($sp)            
	cvt.s.w $f16, $f10                 
	sh      a3, 0x006C($sp)            
	swc1    $f12, 0x0064($sp)          
	mul.s   $f18, $f16, $f12           
	trunc.w.s $f4, $f18                  
	mfc1    a2, $f4                    
	nop
	sll     a2, a2, 16                 
	jal     func_80063704              
	sra     a2, a2, 16                 
	lh      a3, 0x006C($sp)            
	lwc1    $f12, 0x0064($sp)          
	bltz    a3, lbl_808BD2E4           
	subu    v0, $zero, a3              
	beq     $zero, $zero, lbl_808BD2E4 
	or      v0, a3, $zero              ## v0 = 00000000
lbl_808BD2E4:
	mtc1    v0, $f6                    ## $f6 = 0.00
	addiu   a0, s0, 0x0030             ## a0 = 00000030
	lh      a1, 0x006E($sp)            
	cvt.s.w $f8, $f6                   
	mul.s   $f10, $f8, $f12            
	trunc.w.s $f16, $f10                 
	mfc1    a2, $f16                   
	nop
	sll     a2, a2, 16                 
	jal     func_80063704              
	sra     a2, a2, 16                 
lbl_808BD310:
	addiu   t4, s0, 0x0024             ## t4 = 00000024
	sw      t4, 0x0040($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_800212E4              
	lui     a1, 0x4140                 ## a1 = 41400000
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8002313C              
	addiu   a1, $zero, 0x1010          ## a1 = 00001010
	lbu     v1, 0x014C(s0)             ## 0000014C
	andi    v1, v1, 0x0002             ## v1 = 00000000
	sltu    v1, $zero, v1              
	beql    v1, $zero, lbl_808BD38C    
	lbu     v1, 0x01C4(s0)             ## 000001C4
	lw      v0, 0x0140(s0)             ## 00000140
	addiu   $at, $zero, 0x0015         ## $at = 00000015
	lh      v1, 0x0000(v0)             ## 00000000
	beq     v1, $at, lbl_808BD368      
	addiu   $at, $zero, 0x019C         ## $at = 0000019C
	bnel    v1, $at, lbl_808BD38C      
	lbu     v1, 0x01C4(s0)             ## 000001C4
lbl_808BD368:
	sw      v0, 0x01C0(s0)             ## 000001C0
	lh      t5, 0x0000(v0)             ## 00000000
	addiu   $at, $zero, 0x019C         ## $at = 0000019C
	bnel    t5, $at, lbl_808BD38C      
	lbu     v1, 0x01C4(s0)             ## 000001C4
	lw      t6, 0x0004(v0)             ## 00000004
	ori     t7, t6, 0x2000             ## t7 = 00002000
	sw      t7, 0x0004(v0)             ## 00000004
	lbu     v1, 0x01C4(s0)             ## 000001C4
lbl_808BD38C:
	bne     v1, $zero, lbl_808BD39C    
	addiu   t8, v1, 0xFFFF             ## t8 = FFFFFFFF
	beq     $zero, $zero, lbl_808BD3A4 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808BD39C:
	sb      t8, 0x01C4(s0)             ## 000001C4
	andi    v0, t8, 0x00FF             ## v0 = 000000FF
lbl_808BD3A4:
	bne     v0, $zero, lbl_808BD458    
	lw      a1, 0x0078($sp)            
	lw      a0, 0x0040($sp)            
	jal     func_80063E18              
	addiu   a1, a1, 0x0038             ## a1 = 00000038
	lui     $at, 0x4220                ## $at = 42200000
	mtc1    $at, $f18                  ## $f18 = 40.00
	lw      v0, 0x0078($sp)            
	c.lt.s  $f0, $f18                  
	sw      v0, 0x01BC(s0)             ## 000001BC
	bc1fl   lbl_808BD58C               
	lw      v1, 0x01C0(s0)             ## 000001C0
	lw      v1, 0x01C0(s0)             ## 000001C0
	addiu   a1, v0, 0x0024             ## a1 = 00000024
	beq     v1, $zero, lbl_808BD434    
	addiu   a0, v1, 0x0024             ## a0 = 00000024
	jal     func_80063CAC              ## Vec3f_Copy
	sw      v1, 0x007C($sp)            
	lw      v1, 0x007C($sp)            
	addiu   $at, $zero, 0x0015         ## $at = 00000015
	lh      t9, 0x0000(v1)             ## 00000000
	bnel    t9, $at, lbl_808BD424      
	lw      t2, 0x0004(v1)             ## 00000004
	lhu     t0, 0x0088(v1)             ## 00000088
	lui     $at, %hi(var_808BD838)     ## $at = 808C0000
	lwc1    $f4, %lo(var_808BD838)($at) 
	andi    t1, t0, 0xFFFC             ## t1 = 00000000
	sh      t1, 0x0088(v1)             ## 00000088
	swc1    $f4, 0x006C(v1)            ## 0000006C
	beq     $zero, $zero, lbl_808BD434 
	lw      v0, 0x0078($sp)            
	lw      t2, 0x0004(v1)             ## 00000004
lbl_808BD424:
	addiu   $at, $zero, 0xDFFF         ## $at = FFFFDFFF
	and     t3, t2, $at                
	sw      t3, 0x0004(v1)             ## 00000004
	lw      v0, 0x0078($sp)            
lbl_808BD434:
	lw      t4, 0x066C(v0)             ## 0000066C
	lui     $at, 0xFDFF                ## $at = FDFF0000
	ori     $at, $at, 0xFFFF           ## $at = FDFFFFFF
	and     t5, t4, $at                
	sw      t5, 0x066C(v0)             ## 0000066C
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_808BD58C 
	lw      v1, 0x01C0(s0)             ## 000001C0
lbl_808BD458:
	lbu     v1, 0x014C(s0)             ## 0000014C
	lw      a0, 0x0084($sp)            
	addiu   a1, s0, 0x0100             ## a1 = 00000100
	andi    v1, v1, 0x0002             ## v1 = 00000000
	sltu    v1, $zero, v1              
	beq     v1, $zero, lbl_808BD48C    
	addiu   a0, a0, 0x07C0             ## a0 = 000007C0
	lw      a0, 0x0040($sp)            
	addiu   a1, s0, 0x0100             ## a1 = 00000100
	jal     func_80063CAC              ## Vec3f_Copy
	sw      v1, 0x0074($sp)            
	beq     $zero, $zero, lbl_808BD558 
	lw      v1, 0x0074($sp)            
lbl_808BD48C:
	addiu   t6, s0, 0x0074             ## t6 = 00000074
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	addiu   t1, $sp, 0x0058            ## t1 = FFFFFFD8
	sw      t1, 0x0024($sp)            
	sw      t0, 0x0020($sp)            
	sw      t9, 0x001C($sp)            
	sw      t8, 0x0018($sp)            
	sw      t7, 0x0014($sp)            
	sw      t6, 0x0010($sp)            
	lw      a2, 0x0040($sp)            
	addiu   a3, $sp, 0x004C            ## a3 = FFFFFFCC
	jal     func_800308B4              
	sw      a0, 0x003C($sp)            
	beq     v0, $zero, lbl_808BD558    
	or      v1, v0, $zero              ## v1 = 00000000
	lw      a2, 0x0074(s0)             ## 00000074
	addiu   t2, $sp, 0x004C            ## t2 = FFFFFFCC
	sw      t2, 0x0010($sp)            
	sw      v0, 0x0074($sp)            
	lw      a0, 0x0084($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_800231BC              
	lw      a3, 0x0058($sp)            
	bne     v0, $zero, lbl_808BD53C    
	lw      v1, 0x0074($sp)            
	lw      a1, 0x0058($sp)            
	addiu   $at, $zero, 0x0032         ## $at = 00000032
	lw      a0, 0x003C($sp)            
	beql    a1, $at, lbl_808BD548      
	lw      a0, 0x0084($sp)            
	jal     func_80031464              
	sw      v1, 0x0074($sp)            
	beq     v0, $zero, lbl_808BD544    
	lw      v1, 0x0074($sp)            
	lh      t3, 0x0000(v0)             ## 00000000
	addiu   $at, $zero, 0x00C8         ## $at = 000000C8
	bnel    t3, $at, lbl_808BD548      
	lw      a0, 0x0084($sp)            
	lh      t4, 0x001C(v0)             ## 0000001C
	bnel    t4, $zero, lbl_808BD548    
	lw      a0, 0x0084($sp)            
lbl_808BD53C:
	beq     $zero, $zero, lbl_808BD558 
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_808BD544:
	lw      a0, 0x0084($sp)            
lbl_808BD548:
	addiu   a1, $sp, 0x004C            ## a1 = FFFFFFCC
	jal     func_800511B8              
	sw      v1, 0x0074($sp)            
	lw      v1, 0x0074($sp)            
lbl_808BD558:
	beql    v1, $zero, lbl_808BD58C    
	lw      v1, 0x01C0(s0)             ## 000001C0
	lh      t5, 0x0030(s0)             ## 00000030
	lh      t7, 0x0032(s0)             ## 00000032
	ori     $at, $zero, 0x8000         ## $at = 00008000
	subu    t6, $zero, t5              
	addu    t8, t7, $at                
	sh      t6, 0x0030(s0)             ## 00000030
	sh      t8, 0x0032(s0)             ## 00000032
	lw      t9, 0x0078($sp)            
	sb      $zero, 0x01C4(s0)          ## 000001C4
	sw      t9, 0x01BC(s0)             ## 000001BC
	lw      v1, 0x01C0(s0)             ## 000001C0
lbl_808BD58C:
	beql    v1, $zero, lbl_808BD5B8    
	lw      $ra, 0x0034($sp)           
	lw      t0, 0x0130(v1)             ## 00000130
	addiu   a0, v1, 0x0024             ## a0 = 00000024
	bne     t0, $zero, lbl_808BD5AC    
	nop
	beq     $zero, $zero, lbl_808BD5B4 
	sw      $zero, 0x01C0(s0)          ## 000001C0
lbl_808BD5AC:
	jal     func_80063CAC              ## Vec3f_Copy
	lw      a1, 0x0040($sp)            
lbl_808BD5B4:
	lw      $ra, 0x0034($sp)           
lbl_808BD5B8:
	lw      s0, 0x0030($sp)            
	addiu   $sp, $sp, 0x0080           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BD5C8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lw      v0, 0x1C44(a1)             ## 00001C44
	lw      t6, 0x066C(v0)             ## 0000066C
	sll     t7, t6,  2                 
	bltzl   t7, lbl_808BD614           
	lw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	lw      t9, 0x01E8(a0)             ## 000001E8
	jalr    $ra, t9                    
	nop
	lw      a0, 0x0018($sp)            
	jal     func_80020F04              
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	lw      a0, 0x0018($sp)            
	lbu     t8, 0x01C5(a0)             ## 000001C5
	addiu   t0, t8, 0x0001             ## t0 = 00000001
	sb      t0, 0x01C5(a0)             ## 000001C5
	lw      $ra, 0x0014($sp)           
lbl_808BD614:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BD620:
	addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
	sw      s0, 0x001C($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      s1, 0x0020($sp)            
	sw      a1, 0x005C($sp)            
	lh      t7, 0x0032(s0)             ## 00000032
	lui     $at, %hi(var_808BD83C)     ## $at = 808C0000
	lwc1    $f8, %lo(var_808BD83C)($at) 
	mtc1    t7, $f4                    ## $f4 = 0.00
	lw      t6, 0x005C($sp)            
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	cvt.s.w $f6, $f4                   
	lw      s1, 0x0000(t6)             ## 00000000
	mul.s   $f12, $f6, $f8             
	jal     func_800AAB94              
	nop
	lui     $at, %hi(var_808BD840)     ## $at = 808C0000
	lwc1    $f12, %lo(var_808BD840)($at) 
	jal     func_800AAD4C              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lh      t8, 0x0030(s0)             ## 00000030
	lui     $at, %hi(var_808BD844)     ## $at = 808C0000
	lwc1    $f18, %lo(var_808BD844)($at) 
	mtc1    t8, $f10                   ## $f10 = 0.00
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	cvt.s.w $f16, $f10                 
	mul.s   $f12, $f16, $f18           
	jal     func_800AA9E0              
	nop
	lui     a0, %hi(var_808BD818)      ## a0 = 808C0000
	addiu   a0, a0, %lo(var_808BD818)  ## a0 = 808BD818
	jal     func_800AB958              
	addiu   a1, $sp, 0x0048            ## a1 = FFFFFFF0
	lui     a0, %hi(var_808BD824)      ## a0 = 808C0000
	addiu   a0, a0, %lo(var_808BD824)  ## a0 = 808BD824
	jal     func_800AB958              
	addiu   a1, $sp, 0x003C            ## a1 = FFFFFFE4
	addiu   t9, $sp, 0x003C            ## t9 = FFFFFFE4
	sw      t9, 0x0010($sp)            
	lw      a0, 0x005C($sp)            
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	addiu   a2, s0, 0x01CC             ## a2 = 000001CC
	jal     func_8007AF14              
	addiu   a3, $sp, 0x0048            ## a3 = FFFFFFF0
	beql    v0, $zero, lbl_808BD6F8    
	lw      t0, 0x005C($sp)            
	jal     func_8001A890              
	lw      a0, 0x01C8(s0)             ## 000001C8
	or      a0, v0, $zero              ## a0 = 00000000
	addiu   a1, $sp, 0x0048            ## a1 = FFFFFFF0
	jal     func_80013F30              
	addiu   a2, $sp, 0x003C            ## a2 = FFFFFFE4
	lw      t0, 0x005C($sp)            
lbl_808BD6F8:
	jal     func_8007E298              
	lw      a0, 0x0000(t0)             ## 00000000
	lbu     t1, 0x01C5(s0)             ## 000001C5
	lui     $at, %hi(var_808BD848)     ## $at = 808C0000
	lwc1    $f8, %lo(var_808BD848)($at) 
	sll     t2, t1,  2                 
	subu    t2, t2, t1                 
	sll     t2, t2,  4                 
	subu    t2, t2, t1                 
	sll     t2, t2,  3                 
	subu    t2, t2, t1                 
	sll     t2, t2,  5                 
	mtc1    t2, $f4                    ## $f4 = 0.00
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	cvt.s.w $f6, $f4                   
	mul.s   $f12, $f6, $f8             
	jal     func_800AAB94              
	nop
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t4, 0xDA38                 ## t4 = DA380000
	ori     t4, t4, 0x0003             ## t4 = DA380003
	addiu   t3, s0, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s1)             ## 000002C0
	sw      t4, 0x0000(s0)             ## 00000000
	lw      t5, 0x005C($sp)            
	jal     func_800AB900              
	lw      a0, 0x0000(t5)             ## 00000000
	sw      v0, 0x0004(s0)             ## 00000004
	lw      v1, 0x02C0(s1)             ## 000002C0
	lui     t8, 0x0401                 ## t8 = 04010000
	addiu   t8, t8, 0xC808             ## t8 = 0400C808
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s1)             ## 000002C0
	lui     t7, 0xDE00                 ## t7 = DE000000
	sw      t7, 0x0000(v1)             ## 00000000
	sw      t8, 0x0004(v1)             ## 00000004
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0058           ## $sp = 00000000
	nop

.section .data

var_808BD7A0: .word 0x00320800, 0x00000030, 0x00010000, 0x000001EC
.word func_808BD02C
.word func_808BD148
.word func_808BD5C8
.word func_808BD620
var_808BD7C0: .word \
0x0A090000, 0x08030000, 0x02000000, 0x00000010, \
0x00010000, 0xFFCFFFFF, 0x00000000, 0x05000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_808BD810: .word 0x881F0005, 0x50B40000
var_808BD818: .word 0xC4700000, 0x00000000, 0x00000000
var_808BD824: .word 0x44700000, 0x00000000, 0x00000000

.section .rodata

var_808BD830: .word 0x3DF5C28F
var_808BD834: .word 0x3BA3D70A
var_808BD838: .word 0xBF666666
var_808BD83C: .word 0x38C90FDB
var_808BD840: .word 0x3F44597C
var_808BD844: .word 0x38C90FDB
var_808BD848: .word 0x38C90FDB, 0x00000000

