#include <mips.h>
.set noreorder
.set noat

.section .text
func_808C2350:
	sw      a1, 0x0144(a0)             ## 00000144
	jr      $ra                        
	nop


func_808C235C:
	addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
	sw      s6, 0x0060($sp)            
	sw      s3, 0x0054($sp)            
	or      s3, a0, $zero              ## s3 = 00000000
	or      s6, a1, $zero              ## s6 = 00000000
	sw      $ra, 0x006C($sp)           
	sw      s8, 0x0068($sp)            
	sw      s7, 0x0064($sp)            
	sw      s5, 0x005C($sp)            
	sw      s4, 0x0058($sp)            
	sw      s2, 0x0050($sp)            
	sw      s1, 0x004C($sp)            
	sw      s0, 0x0048($sp)            
	sdc1    $f24, 0x0040($sp)          
	sdc1    $f22, 0x0038($sp)          
	sdc1    $f20, 0x0030($sp)          
	lui     a1, %hi(var_808C3FF4)      ## a1 = 808C0000
	addiu   a1, a1, %lo(var_808C3FF4)  ## a1 = 808C3FF4
	jal     func_80063F7C              
	or      a0, s3, $zero              ## a0 = 00000000
	lui     t7, %hi(var_808C3FD4)      ## t7 = 808C0000
	addiu   t6, $zero, 0x0003          ## t6 = 00000003
	addiu   t7, t7, %lo(var_808C3FD4)  ## t7 = 808C3FD4
	lui     a2, 0x8002                 ## a2 = 80020000
	lui     a3, 0x3E0F                 ## a3 = 3E0F0000
	sb      t6, 0x001F(s3)             ## 0000001F
	sw      t7, 0x0098(s3)             ## 00000098
	ori     a3, a3, 0x5C29             ## a3 = 3E0F5C29
	addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
	addiu   a0, s3, 0x00B4             ## a0 = 000000B4
	jal     func_8001EC20              
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
	addiu   s0, s3, 0x0164             ## s0 = 00000164
	sw      $zero, 0x0140(s3)          ## 00000140
	sb      t8, 0x00AF(s3)             ## 000000AF
	or      s5, s3, $zero              ## s5 = 00000000
	sh      t9, 0x014E(s3)             ## 0000014E
	or      a1, s0, $zero              ## a1 = 00000164
	jal     func_8004A484              
	or      a0, s6, $zero              ## a0 = 00000000
	lui     a3, %hi(var_808C3FC4)      ## a3 = 808C0000
	addiu   t0, s3, 0x0184             ## t0 = 00000184
	sw      t0, 0x0010($sp)            
	addiu   a3, a3, %lo(var_808C3FC4)  ## a3 = 808C3FC4
	or      a0, s6, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000164
	jal     func_8004A874              
	or      a2, s3, $zero              ## a2 = 00000000
	lh      v1, 0x001C(s3)             ## 0000001C
	addiu   t1, $zero, 0x0006          ## t1 = 00000006
	addiu   t4, $zero, 0x0008          ## t4 = 00000008
	bgez    v1, lbl_808C2578           
	nop
	lbu     t2, 0x0175(s3)             ## 00000175
	lw      t5, 0x0180(s3)             ## 00000180
	sb      t1, 0x0117(s3)             ## 00000117
	ori     t3, t2, 0x0004             ## t3 = 00000004
	sh      $zero, 0x014A(s3)          ## 0000014A
	sb      t3, 0x0175(s3)             ## 00000175
	sh      t4, 0x0036(t5)             ## 00000036
	lw      v0, 0x0180(s3)             ## 00000180
	or      a0, s3, $zero              ## a0 = 00000000
	lh      t6, 0x0036(v0)             ## 00000036
	jal     func_808C3118              
	sh      t6, 0x002E(v0)             ## 0000002E
	lw      t8, 0x0024(s3)             ## 00000024
	lw      t9, 0x0004(s3)             ## 00000004
	lw      t7, 0x0028(s3)             ## 00000028
	sw      t8, 0x0038(s3)             ## 00000038
	lw      t8, 0x002C(s3)             ## 0000002C
	ori     t0, t9, 0x0015             ## t0 = 00000015
	sw      t0, 0x0004(s3)             ## 00000004
	or      a0, s3, $zero              ## a0 = 00000000
	lui     a1, 0x3FC0                 ## a1 = 3FC00000
	sw      t7, 0x003C(s3)             ## 0000003C
	jal     func_80020F88              
	sw      t8, 0x0040(s3)             ## 00000040
	lui     $at, 0x3F40                ## $at = 3F400000
	mtc1    $at, $f24                  ## $f24 = 0.75
	lui     $at, 0x40C0                ## $at = 40C00000
	mtc1    $at, $f22                  ## $f22 = 6.00
	lui     $at, %hi(var_808C4050)     ## $at = 808C0000
	lwc1    $f20, %lo(var_808C4050)($at) 
	or      s1, $zero, $zero           ## s1 = 00000000
	or      s4, $zero, $zero           ## s4 = 00000000
	addiu   s7, s6, 0x1C24             ## s7 = 00001C24
	addiu   s8, $zero, 0x0002          ## s8 = 00000002
	lwc1    $f4, 0x0028(s3)            ## 00000028
lbl_808C24C4:
	lw      a3, 0x0024(s3)             ## 00000024
	or      a0, s7, $zero              ## a0 = 00001C24
	swc1    $f4, 0x0010($sp)           
	lwc1    $f6, 0x002C(s3)            ## 0000002C
	sw      s4, 0x0024($sp)            
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0018($sp)         
	or      a1, s6, $zero              ## a1 = 00000000
	addiu   a2, $zero, 0x0035          ## a2 = 00000035
	jal     func_80025110              ## ActorSpawn
	swc1    $f6, 0x0014($sp)           
	beq     v0, $zero, lbl_808C2560    
	or      s0, v0, $zero              ## s0 = 00000000
	sw      v0, 0x011C(s5)             ## 0000011C
	subu    $at, $zero, s1             
	addiu   t1, s1, 0x0001             ## t1 = 00000001
	sll     s2, $at,  2                
	mfc1    a1, $f20                   
	sw      s5, 0x0118(v0)             ## 00000118
	sh      t1, 0x0152(v0)             ## 00000152
	sw      s3, 0x01C4(v0)             ## 000001C4
	addu    s2, s2, $at                
	jal     func_80020F88              
	or      a0, v0, $zero              ## a0 = 00000000
	mtc1    s1, $f8                    ## $f8 = 0.00
	bne     s1, s8, lbl_808C2548       
	cvt.s.w $f10, $f8                  
	lw      t2, 0x0004(s0)             ## 00000004
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	sw      t4, 0x0140(s0)             ## 00000140
	ori     t3, t2, 0x0015             ## t3 = 00000015
	sw      t3, 0x0004(s0)             ## 00000004
lbl_808C2548:
	mul.s   $f16, $f10, $f24           
	sh      s2, 0x014C(s0)             ## 0000014C
	sh      s2, 0x014A(s0)             ## 0000014A
	or      s5, s0, $zero              ## s5 = 00000000
	sub.s   $f18, $f22, $f16           
	swc1    $f18, 0x015C(s0)           ## 0000015C
lbl_808C2560:
	addiu   s1, s1, 0x0001             ## s1 = 00000001
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	bnel    s1, $at, lbl_808C24C4      
	lwc1    $f4, 0x0028(s3)            ## 00000028
	beq     $zero, $zero, lbl_808C259C 
	lw      $ra, 0x006C($sp)           
lbl_808C2578:
	bne     v1, $zero, lbl_808C2590    
	nop
	jal     func_808C2600              
	or      a0, s3, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_808C259C 
	lw      $ra, 0x006C($sp)           
lbl_808C2590:
	jal     func_808C2D84              
	or      a0, s3, $zero              ## a0 = 00000000
	lw      $ra, 0x006C($sp)           
lbl_808C259C:
	ldc1    $f20, 0x0030($sp)          
	ldc1    $f22, 0x0038($sp)          
	ldc1    $f24, 0x0040($sp)          
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


func_808C25D4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	or      a0, a3, $zero              ## a0 = 00000000
	jal     func_8004A550              
	addiu   a1, a2, 0x0164             ## a1 = 00000164
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808C2600:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	lui     a1, %hi(func_808C262C)     ## a1 = 808C0000
	sw      t6, 0x013C(a0)             ## 0000013C
	jal     func_808C2350              
	addiu   a1, a1, %lo(func_808C262C) ## a1 = 808C262C
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808C262C:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x003C($sp)            
	lh      t6, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0x000B         ## $at = 0000000B
	bnel    t6, $at, lbl_808C2678      
	lw      t9, 0x0140(s0)             ## 00000140
	lw      t8, 0x0118(s0)             ## 00000118
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	sw      t7, 0x013C(s0)             ## 0000013C
	bnel    t8, $zero, lbl_808C27F8    
	lw      $ra, 0x0024($sp)           
	jal     func_808C29D8              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_808C27F8 
	lw      $ra, 0x0024($sp)           
	lw      t9, 0x0140(s0)             ## 00000140
lbl_808C2678:
	lui     $at, 0x3F80                ## $at = 3F800000
	beql    t9, $zero, lbl_808C2694    
	lw      v0, 0x01C4(s0)             ## 000001C4
	lw      t0, 0x0004(s0)             ## 00000004
	ori     t1, t0, 0x0001             ## t1 = 00000001
	sw      t1, 0x0004(s0)             ## 00000004
	lw      v0, 0x01C4(s0)             ## 000001C4
lbl_808C2694:
	lw      t2, 0x0140(v0)             ## 00000140
	beql    t2, $zero, lbl_808C271C    
	lw      t1, 0x0118(s0)             ## 00000118
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lwc1    $f10, 0x0028(s0)           ## 00000028
	trunc.w.s $f4, $f0                   
	swc1    $f0, 0x0158(s0)            ## 00000158
	swc1    $f0, 0x0060(s0)            ## 00000060
	mfc1    v1, $f4                    
	nop
	sll     t4, v1, 16                 
	sra     t5, t4, 16                 
	mtc1    t5, $f6                    ## $f6 = 0.00
	sh      v1, 0x0150(s0)             ## 00000150
	cvt.s.w $f8, $f6                   
	swc1    $f8, 0x0068(s0)            ## 00000068
	lwc1    $f16, 0x000C(v0)           ## 0000000C
	c.lt.s  $f10, $f16                 
	nop
	bc1fl   lbl_808C26FC               
	lw      t8, 0x0118(s0)             ## 00000118
	lw      t6, 0x0004(s0)             ## 00000004
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	and     t7, t6, $at                
	sw      t7, 0x0004(s0)             ## 00000004
	lw      t8, 0x0118(s0)             ## 00000118
lbl_808C26FC:
	lw      t0, 0x0100(t8)             ## 00000100
	sw      t0, 0x0024(s0)             ## 00000024
	lw      t9, 0x0104(t8)             ## 00000104
	sw      t9, 0x0028(s0)             ## 00000028
	lw      t0, 0x0108(t8)             ## 00000108
	beq     $zero, $zero, lbl_808C27F4 
	sw      t0, 0x002C(s0)             ## 0000002C
	lw      t1, 0x0118(s0)             ## 00000118
lbl_808C271C:
	mtc1    $at, $f2                   ## $f2 = NaN
	lui     $at, 0x4080                ## $at = 40800000
	mtc1    $at, $f4                   ## $f4 = 4.00
	lwc1    $f18, 0x0028(t1)           ## 00000029
	mtc1    $zero, $f0                 ## $f0 = 0.00
	mfc1    a2, $f2                    
	sub.s   $f6, $f18, $f4             
	mfc1    a3, $f2                    
	addiu   a0, s0, 0x0028             ## a0 = 00000028
	swc1    $f0, 0x0010($sp)           
	mfc1    a1, $f6                    
	jal     func_80064178              
	nop
	lw      v0, 0x01C4(s0)             ## 000001C4
	lh      t2, 0x00B6(v0)             ## 000000B6
	addiu   t3, t2, 0x4000             ## t3 = 00004000
	sh      t3, 0x0036($sp)            
	lh      t5, 0x014A(s0)             ## 0000014A
	lh      t4, 0x014C(v0)             ## 0000014C
	addu    a0, t4, t5                 
	addu    $at, a0, $zero             
	sll     a0, a0,  5                 
	subu    a0, a0, $at                
	sll     a0, a0,  2                 
	addu    a0, a0, $at                
	sll     a0, a0,  4                 
	sll     a0, a0, 16                 
	sra     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sh      a0, 0x0034($sp)            
	swc1    $f0, 0x002C($sp)           
	jal     func_800636C4              ## sins?
	lh      a0, 0x0036($sp)            
	lwc1    $f8, 0x015C(s0)            ## 0000015C
	lwc1    $f16, 0x002C($sp)          
	lwc1    $f4, 0x0008(s0)            ## 00000008
	mul.s   $f10, $f0, $f8             
	nop
	mul.s   $f18, $f10, $f16           
	add.s   $f6, $f18, $f4             
	swc1    $f6, 0x0024(s0)            ## 00000024
	jal     func_800636C4              ## sins?
	lh      a0, 0x0034($sp)            
	swc1    $f0, 0x002C($sp)           
	jal     func_80063684              ## coss?
	lh      a0, 0x0036($sp)            
	lwc1    $f8, 0x015C(s0)            ## 0000015C
	lwc1    $f16, 0x002C($sp)          
	lwc1    $f4, 0x0010(s0)            ## 00000010
	mul.s   $f10, $f0, $f8             
	nop
	mul.s   $f18, $f10, $f16           
	add.s   $f6, $f18, $f4             
	swc1    $f6, 0x002C(s0)            ## 0000002C
lbl_808C27F4:
	lw      $ra, 0x0024($sp)           
lbl_808C27F8:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_808C2808:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	addiu   t6, $zero, 0x0007          ## t6 = 00000007
	addiu   t7, $zero, 0x00C8          ## t7 = 000000C8
	lui     a1, %hi(func_808C283C)     ## a1 = 808C0000
	sw      t6, 0x013C(a0)             ## 0000013C
	sh      t7, 0x014A(a0)             ## 0000014A
	jal     func_808C2350              
	addiu   a1, a1, %lo(func_808C283C) ## a1 = 808C283C
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808C283C:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x0034($sp)            
	lw      t6, 0x0034($sp)            
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f6                   ## $f6 = 30.00
	lw      v0, 0x1C44(t6)             ## 00001C44
	mtc1    $zero, $f10                ## $f10 = 0.00
	addiu   a0, s0, 0x0028             ## a0 = 00000028
	lwc1    $f4, 0x0028(v0)            ## 00000028
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x3F00                 ## a3 = 3F000000
	add.s   $f8, $f4, $f6              
	sw      v0, 0x002C($sp)            
	swc1    $f10, 0x0010($sp)          
	mfc1    a1, $f8                    
	jal     func_80064178              
	nop
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t7, 0x8010                 ## t7 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t7, t7, 0x43A8             ## t7 = 801043A8
	sw      t7, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x3064          ## a0 = 00003064
	addiu   a1, s0, 0x00E4             ## a1 = 000000E4
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	lbu     v0, 0x0174(s0)             ## 00000174
	andi    t8, v0, 0x0002             ## t8 = 00000000
	beq     t8, $zero, lbl_808C28E0    
	andi    t9, v0, 0xFFFD             ## t9 = 00000000
	sb      t9, 0x0174(s0)             ## 00000174
	lw      t0, 0x002C($sp)            
	lw      t1, 0x0168(s0)             ## 00000168
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	bnel    t0, t1, lbl_808C28E4       
	lh      v0, 0x0150(s0)             ## 00000150
	sh      t2, 0x014A(s0)             ## 0000014A
lbl_808C28E0:
	lh      v0, 0x0150(s0)             ## 00000150
lbl_808C28E4:
	slti    $at, v0, 0x00FF            
	beq     $at, $zero, lbl_808C28F4   
	addiu   t3, v0, 0x000F             ## t3 = 0000000F
	sh      t3, 0x0150(s0)             ## 00000150
lbl_808C28F4:
	jal     func_800A4650              
	lwc1    $f12, 0x0158(s0)           ## 00000158
	mtc1    $zero, $f16                ## $f16 = 0.00
	nop
	c.eq.s  $f0, $f16                  
	nop
	bc1f    lbl_808C2924               
	nop
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	add.s   $f18, $f0, $f0             
	swc1    $f18, 0x0160(s0)           ## 00000160
lbl_808C2924:
	jal     func_800A4650              
	lwc1    $f12, 0x0158(s0)           ## 00000158
	lui     $at, %hi(var_808C4054)     ## $at = 808C0000
	lwc1    $f2, %lo(var_808C4054)($at) 
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f4                   ## $f4 = 2.00
	lwc1    $f6, 0x0160(s0)            ## 00000160
	lwc1    $f16, 0x0028(s0)           ## 00000028
	lui     a2, 0x3DCC                 ## a2 = 3DCC0000
	add.s   $f8, $f4, $f6              
	lwc1    $f4, 0x0158(s0)            ## 00000158
	mfc1    a3, $f2                    
	ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
	mul.s   $f10, $f0, $f8             
	add.s   $f6, $f4, $f2              
	mtc1    $zero, $f8                 ## $f8 = 0.00
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	lui     a1, 0x4020                 ## a1 = 40200000
	swc1    $f6, 0x0158(s0)            ## 00000158
	add.s   $f18, $f16, $f10           
	swc1    $f18, 0x0028(s0)           ## 00000028
	jal     func_80064178              
	swc1    $f8, 0x0010($sp)           
	lh      t4, 0x014A(s0)             ## 0000014A
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	addiu   t5, t4, 0xFFFF             ## t5 = FFFFFFFF
	sh      t5, 0x014A(s0)             ## 0000014A
	lh      t6, 0x014A(s0)             ## 0000014A
	addiu   a3, $zero, 0x02EE          ## a3 = 000002EE
	beq     t6, $zero, lbl_808C29BC    
	nop
	lh      a1, 0x008A(s0)             ## 0000008A
	jal     func_80064508              
	sw      $zero, 0x0010($sp)         
	lh      t7, 0x0032(s0)             ## 00000032
	beq     $zero, $zero, lbl_808C29C4 
	sh      t7, 0x00B6(s0)             ## 000000B6
lbl_808C29BC:
	jal     func_808C3470              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_808C29C4:
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_808C29D8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lh      t7, 0x001C(a0)             ## 0000001C
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sh      t6, 0x014A(a0)             ## 0000014A
	bgez    t7, lbl_808C2A2C           
	addiu   t8, $zero, 0x000D          ## t8 = 0000000D
	lw      v0, 0x011C(a0)             ## 0000011C
	addiu   v1, $zero, 0x000B          ## v1 = 0000000B
	addiu   a1, $zero, 0x3866          ## a1 = 00003866
	beql    v0, $zero, lbl_808C2A20    
	sh      t8, 0x014A(a0)             ## 0000014A
	sh      v1, 0x001C(v0)             ## 0000001C
lbl_808C2A0C:
	sb      $zero, 0x00AF(v0)          ## 000000AF
	lw      v0, 0x011C(v0)             ## 0000011C
	bnel    v0, $zero, lbl_808C2A0C    
	sh      v1, 0x001C(v0)             ## 0000001C
	sh      t8, 0x014A(a0)             ## 0000014A
lbl_808C2A20:
	jal     func_80022FD0              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
lbl_808C2A2C:
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	lui     a1, %hi(func_808C2A50)     ## a1 = 808C0000
	sw      t9, 0x013C(a0)             ## 0000013C
	jal     func_808C2350              
	addiu   a1, a1, %lo(func_808C2A50) ## a1 = 808C2A50
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808C2A50:
	addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
	sw      s4, 0x0060($sp)            
	sw      s2, 0x0058($sp)            
	sw      s1, 0x0054($sp)            
	sw      s0, 0x0050($sp)            
	addiu   s0, $sp, 0x0078            ## s0 = FFFFFFE8
	addiu   s1, $sp, 0x006C            ## s1 = FFFFFFDC
	or      s2, a0, $zero              ## s2 = 00000000
	or      s4, a1, $zero              ## s4 = 00000000
	sw      $ra, 0x0064($sp)           
	sw      s3, 0x005C($sp)            
	sdc1    $f20, 0x0048($sp)          
	lui     t6, %hi(var_808C3FF8)      ## t6 = 808C0000
	addiu   t6, t6, %lo(var_808C3FF8)  ## t6 = 808C3FF8
	lw      t8, 0x0000(t6)             ## 808C3FF8
	lui     t9, %hi(var_808C4004)      ## t9 = 808C0000
	addiu   t9, t9, %lo(var_808C4004)  ## t9 = 808C4004
	sw      t8, 0x0000(s0)             ## FFFFFFE8
	lw      t7, 0x0004(t6)             ## 808C3FFC
	sw      t7, 0x0004(s0)             ## FFFFFFEC
	lw      t8, 0x0008(t6)             ## 808C4000
	sw      t8, 0x0008(s0)             ## FFFFFFF0
	lw      t1, 0x0000(t9)             ## 808C4004
	sw      t1, 0x0000(s1)             ## FFFFFFDC
	lw      t0, 0x0004(t9)             ## 808C4008
	sw      t0, 0x0004(s1)             ## FFFFFFE0
	lw      t1, 0x0008(t9)             ## 808C400C
	sw      t1, 0x0008(s1)             ## FFFFFFE4
	lh      t2, 0x014A(s2)             ## 0000014A
	addiu   t3, t2, 0xFFFF             ## t3 = FFFFFFFF
	sh      t3, 0x014A(s2)             ## 0000014A
	lh      t4, 0x014A(s2)             ## 0000014A
	bgtzl   t4, lbl_808C2D64           
	lw      $ra, 0x0064($sp)           
	lh      t5, 0x001C(s2)             ## 0000001C
	addiu   $at, $zero, 0x000C         ## $at = 0000000C
	addiu   s3, s4, 0x1C24             ## s3 = 00001C24
	bnel    t5, $at, lbl_808C2CAC      
	lui     $at, 0x3F00                ## $at = 3F000000
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f20                  ## $f20 = 0.50
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f6                   ## $f6 = 15.00
	sub.s   $f4, $f0, $f20             
	lwc1    $f10, 0x0024(s2)           ## 00000024
	mul.s   $f8, $f4, $f6              
	add.s   $f16, $f8, $f10            
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f16, 0x006C($sp)          
	sub.s   $f18, $f0, $f20            
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f4                   ## $f4 = 15.00
	lwc1    $f8, 0x002C(s2)            ## 0000002C
	mul.s   $f6, $f18, $f4             
	add.s   $f10, $f6, $f8             
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f10, 0x0074($sp)          
	sub.s   $f16, $f0, $f20            
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f18                  ## $f18 = 5.00
	lwc1    $f6, 0x0028(s2)            ## 00000028
	addiu   t6, $zero, 0x0064          ## t6 = 00000064
	mul.s   $f4, $f16, $f18            
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
	addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
	addiu   t0, $zero, 0x00FF          ## t0 = 000000FF
	addiu   t1, $zero, 0x00FF          ## t1 = 000000FF
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	add.s   $f8, $f4, $f6              
	addiu   t3, $zero, 0x0009          ## t3 = 00000009
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	sw      t4, 0x003C($sp)            
	swc1    $f8, 0x0070($sp)           
	sw      t3, 0x0038($sp)            
	sw      t2, 0x0034($sp)            
	sw      t1, 0x0030($sp)            
	sw      t0, 0x0024($sp)            
	sw      t9, 0x0020($sp)            
	sw      t8, 0x001C($sp)            
	sw      t7, 0x0018($sp)            
	sw      t6, 0x0010($sp)            
	sw      $zero, 0x002C($sp)         
	sw      $zero, 0x0028($sp)         
	sw      $zero, 0x0014($sp)         
	or      a0, s4, $zero              ## a0 = 00000000
	or      a1, s1, $zero              ## a1 = FFFFFFDC
	or      a2, s0, $zero              ## a2 = FFFFFFE8
	jal     func_8001E1D4              
	or      a3, s0, $zero              ## a3 = FFFFFFE8
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	sub.s   $f10, $f0, $f20            
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f16                  ## $f16 = 15.00
	lwc1    $f4, 0x0024(s2)            ## 00000024
	mul.s   $f18, $f10, $f16           
	add.s   $f6, $f18, $f4             
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f6, 0x006C($sp)           
	sub.s   $f8, $f0, $f20             
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f10                  ## $f10 = 15.00
	lwc1    $f18, 0x002C(s2)           ## 0000002C
	mul.s   $f16, $f8, $f10            
	add.s   $f4, $f16, $f18            
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f4, 0x0074($sp)           
	sub.s   $f6, $f0, $f20             
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f8                   ## $f8 = 5.00
	lwc1    $f16, 0x0028(s2)           ## 00000028
	addiu   t5, $zero, 0x0064          ## t5 = 00000064
	mul.s   $f10, $f6, $f8             
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
	addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
	addiu   t0, $zero, 0x00FF          ## t0 = 000000FF
	addiu   t1, $zero, 0x0001          ## t1 = 00000001
	add.s   $f18, $f10, $f16           
	addiu   t2, $zero, 0x0009          ## t2 = 00000009
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	sw      t3, 0x003C($sp)            
	swc1    $f18, 0x0070($sp)          
	sw      t2, 0x0038($sp)            
	sw      t1, 0x0034($sp)            
	sw      t0, 0x0030($sp)            
	sw      t9, 0x0024($sp)            
	sw      t8, 0x0020($sp)            
	sw      t7, 0x001C($sp)            
	sw      t6, 0x0018($sp)            
	sw      t5, 0x0010($sp)            
	sw      $zero, 0x002C($sp)         
	sw      $zero, 0x0028($sp)         
	sw      $zero, 0x0014($sp)         
	or      a0, s4, $zero              ## a0 = 00000000
	or      a1, s1, $zero              ## a1 = FFFFFFDC
	or      a2, s0, $zero              ## a2 = FFFFFFE8
	jal     func_8001E1D4              
	or      a3, s0, $zero              ## a3 = FFFFFFE8
	or      a0, s4, $zero              ## a0 = 00000000
	or      a1, s2, $zero              ## a1 = 00000000
	addiu   a2, s2, 0x0024             ## a2 = 00000024
	jal     func_80013A84              
	addiu   a3, $zero, 0x0050          ## a3 = 00000050
	beq     $zero, $zero, lbl_808C2D30 
	lw      v0, 0x011C(s2)             ## 0000011C
	lui     $at, 0x3F00                ## $at = 3F000000
lbl_808C2CAC:
	mtc1    $at, $f20                  ## $f20 = 0.50
	or      s1, $zero, $zero           ## s1 = 00000000
	lwc1    $f4, 0x0028(s2)            ## 00000028
lbl_808C2CB8:
	lw      a3, 0x0024(s2)             ## 00000024
	addiu   t4, $zero, 0x000A          ## t4 = 0000000A
	swc1    $f4, 0x0010($sp)           
	lwc1    $f6, 0x002C(s2)            ## 0000002C
	sw      t4, 0x0024($sp)            
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0018($sp)         
	or      a0, s3, $zero              ## a0 = 00001C24
	or      a1, s4, $zero              ## a1 = 00000000
	addiu   a2, $zero, 0x0035          ## a2 = 00000035
	jal     func_80025110              ## ActorSpawn
	swc1    $f6, 0x0014($sp)           
	beq     v0, $zero, lbl_808C2D14    
	or      s0, v0, $zero              ## s0 = 00000000
	lwc1    $f8, 0x0058(s2)            ## 00000058
	or      a0, v0, $zero              ## a0 = 00000000
	mul.s   $f10, $f8, $f20            
	mfc1    a1, $f10                   
	jal     func_80020F88              
	nop
	lh      t5, 0x0150(s2)             ## 00000150
	sh      t5, 0x0150(s0)             ## 00000150
lbl_808C2D14:
	addiu   s1, s1, 0x0001             ## s1 = 00000001
	sll     s1, s1, 16                 
	sra     s1, s1, 16                 
	slti    $at, s1, 0x0002            
	bnel    $at, $zero, lbl_808C2CB8   
	lwc1    $f4, 0x0028(s2)            ## 00000028
	lw      v0, 0x011C(s2)             ## 0000011C
lbl_808C2D30:
	addiu   t9, $zero, 0x0002          ## t9 = 00000002
	or      a0, s2, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_808C2D58    
	nop
	sw      $zero, 0x0118(v0)          ## 00000118
	lw      t7, 0x011C(s2)             ## 0000011C
	addiu   t6, $zero, 0x000B          ## t6 = 0000000B
	sh      t6, 0x001C(t7)             ## 0000001C
	lw      t8, 0x011C(s2)             ## 0000011C
	sb      $zero, 0x00AF(t8)          ## 000000AF
lbl_808C2D58:
	jal     func_80020EB4              
	sw      t9, 0x0140(s2)             ## 00000140
	lw      $ra, 0x0064($sp)           
lbl_808C2D64:
	ldc1    $f20, 0x0048($sp)          
	lw      s0, 0x0050($sp)            
	lw      s1, 0x0054($sp)            
	lw      s2, 0x0058($sp)            
	lw      s3, 0x005C($sp)            
	lw      s4, 0x0060($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0090           ## $sp = 00000000


func_808C2D84:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sdc1    $f20, 0x0018($sp)          
	jal     func_800CDCCC              ## Rand.Next() float
	sw      $zero, 0x013C(s0)          ## 0000013C
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f20                  ## $f20 = 0.50
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f6                   ## $f6 = 5.00
	sub.s   $f4, $f0, $f20             
	lwc1    $f10, 0x0024(s0)           ## 00000024
	mul.s   $f8, $f4, $f6              
	add.s   $f16, $f10, $f8            
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f16, 0x0024(s0)           ## 00000024
	sub.s   $f18, $f0, $f20            
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f4                   ## $f4 = 5.00
	lwc1    $f10, 0x0028(s0)           ## 00000028
	mul.s   $f6, $f18, $f4             
	add.s   $f8, $f10, $f6             
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f8, 0x0028(s0)            ## 00000028
	sub.s   $f16, $f0, $f20            
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f18                  ## $f18 = 5.00
	lwc1    $f10, 0x002C(s0)           ## 0000002C
	mul.s   $f4, $f16, $f18            
	add.s   $f6, $f10, $f4             
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f6, 0x002C(s0)            ## 0000002C
	sub.s   $f8, $f0, $f20             
	lui     $at, 0x3FC0                ## $at = 3FC00000
	mtc1    $at, $f16                  ## $f16 = 1.50
	nop
	mul.s   $f18, $f8, $f16            
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f18, 0x005C(s0)           ## 0000005C
	sub.s   $f10, $f0, $f20            
	lui     $at, 0x3FC0                ## $at = 3FC00000
	mtc1    $at, $f4                   ## $f4 = 1.50
	nop
	mul.s   $f6, $f10, $f4             
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f6, 0x0060(s0)            ## 00000060
	sub.s   $f8, $f0, $f20             
	lui     $at, 0x3FC0                ## $at = 3FC00000
	mtc1    $at, $f16                  ## $f16 = 1.50
	lw      t6, 0x0004(s0)             ## 00000004
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	mul.s   $f18, $f8, $f16            
	lui     a1, %hi(func_808C2E88)     ## a1 = 808C0000
	and     t7, t6, $at                
	sw      t7, 0x0004(s0)             ## 00000004
	addiu   a1, a1, %lo(func_808C2E88) ## a1 = 808C2E88
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_808C2350              
	swc1    $f18, 0x0064(s0)           ## 00000064
	lw      $ra, 0x0024($sp)           
	ldc1    $f20, 0x0018($sp)          
	lw      s0, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_808C2E88:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	jal     func_80021124              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	lh      t6, 0x014E(a0)             ## 0000014E
	addiu   t7, t6, 0xFFEC             ## t7 = FFFFFFEC
	sh      t7, 0x014E(a0)             ## 0000014E
	lh      t8, 0x014E(a0)             ## 0000014E
	slti    $at, t8, 0x0014            
	beql    $at, $zero, lbl_808C2EC8   
	lw      $ra, 0x0014($sp)           
	jal     func_80020EB4              
	sh      $zero, 0x014E(a0)          ## 0000014E
	lw      $ra, 0x0014($sp)           
lbl_808C2EC8:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808C2ED4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	jal     func_800CDCCC              ## Rand.Next() float
	sw      a0, 0x0018($sp)            
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f4                   ## $f4 = 15.00
	lui     $at, 0x4220                ## $at = 42200000
	mtc1    $at, $f8                   ## $f8 = 40.00
	mul.s   $f6, $f0, $f4              
	lw      a0, 0x0018($sp)            
	addiu   t8, $zero, 0x0008          ## t8 = 00000008
	lui     a1, %hi(func_808C2F30)     ## a1 = 808C0000
	addiu   a1, a1, %lo(func_808C2F30) ## a1 = 808C2F30
	sw      t8, 0x013C(a0)             ## 0000013C
	add.s   $f10, $f6, $f8             
	trunc.w.s $f16, $f10                 
	mfc1    t7, $f16                   
	jal     func_808C2350              
	sh      t7, 0x014A(a0)             ## 0000014A
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808C2F30:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x0034($sp)            
	lw      t6, 0x0034($sp)            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     a2, 0x3DCC                 ## a2 = 3DCC0000
	lw      t7, 0x1C44(t6)             ## 00001C44
	lui     a3, 0x3E4C                 ## a3 = 3E4C0000
	ori     a3, a3, 0xCCCD             ## a3 = 3E4CCCCD
	ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	lui     a1, 0x4020                 ## a1 = 40200000
	swc1    $f4, 0x0010($sp)           
	jal     func_80064178              
	sw      t7, 0x0028($sp)            
	lw      t8, 0x0028($sp)            
	lui     $at, 0x42AA                ## $at = 42AA0000
	mtc1    $at, $f8                   ## $f8 = 85.00
	lwc1    $f6, 0x0028(t8)            ## 00000028
	lui     $at, 0x3E80                ## $at = 3E800000
	lwc1    $f4, 0x0068(s0)            ## 00000068
	add.s   $f10, $f6, $f8             
	mtc1    $at, $f6                   ## $f6 = 0.25
	lwc1    $f16, 0x015C(s0)           ## 0000015C
	addiu   a0, s0, 0x0028             ## a0 = 00000028
	mul.s   $f8, $f4, $f6              
	add.s   $f18, $f10, $f16           
	mtc1    $zero, $f10                ## $f10 = 0.00
	lui     a2, 0x3F80                 ## a2 = 3F800000
	mfc1    a1, $f18                   
	swc1    $f10, 0x0010($sp)          
	mfc1    a3, $f8                    
	jal     func_80064178              
	nop
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t9, 0x8010                 ## t9 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t9, t9, 0x43A8             ## t9 = 801043A8
	sw      t9, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x3064          ## a0 = 00003064
	addiu   a1, s0, 0x00E4             ## a1 = 000000E4
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	lbu     v0, 0x0174(s0)             ## 00000174
	andi    t0, v0, 0x0002             ## t0 = 00000000
	beq     t0, $zero, lbl_808C3014    
	andi    t1, v0, 0xFFFD             ## t1 = 00000000
	sb      t1, 0x0174(s0)             ## 00000174
	lw      t2, 0x0028($sp)            
	lw      t3, 0x0168(s0)             ## 00000168
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	bnel    t2, t3, lbl_808C3018       
	lh      v0, 0x0150(s0)             ## 00000150
	sh      t4, 0x014C(s0)             ## 0000014C
lbl_808C3014:
	lh      v0, 0x0150(s0)             ## 00000150
lbl_808C3018:
	beq     v0, $zero, lbl_808C3024    
	addiu   t5, v0, 0xFFF1             ## t5 = FFFFFFF1
	sh      t5, 0x0150(s0)             ## 00000150
lbl_808C3024:
	jal     func_800A4650              
	lwc1    $f12, 0x0158(s0)           ## 00000158
	mtc1    $zero, $f16                ## $f16 = 0.00
	nop
	c.eq.s  $f0, $f16                  
	nop
	bc1f    lbl_808C3060               
	nop
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x4080                ## $at = 40800000
	mtc1    $at, $f18                  ## $f18 = 4.00
	nop
	mul.s   $f4, $f0, $f18             
	swc1    $f4, 0x0160(s0)            ## 00000160
lbl_808C3060:
	jal     func_800A4650              
	lwc1    $f12, 0x0158(s0)           ## 00000158
	lui     $at, 0x3E80                ## $at = 3E800000
	mtc1    $at, $f8                   ## $f8 = 0.25
	lwc1    $f6, 0x0068(s0)            ## 00000068
	lwc1    $f16, 0x0160(s0)           ## 00000160
	lh      t6, 0x0032(s0)             ## 00000032
	mul.s   $f10, $f6, $f8             
	lwc1    $f6, 0x0028(s0)            ## 00000028
	lh      t7, 0x0154(s0)             ## 00000154
	lui     $at, %hi(var_808C4058)     ## $at = 808C0000
	lh      v0, 0x014A(s0)             ## 0000014A
	addu    t8, t6, t7                 
	sh      t8, 0x0032(s0)             ## 00000032
	add.s   $f18, $f10, $f16           
	lwc1    $f10, 0x0158(s0)           ## 00000158
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	addiu   t9, v0, 0xFFFF             ## t9 = FFFFFFFF
	mul.s   $f4, $f0, $f18             
	add.s   $f8, $f6, $f4              
	swc1    $f8, 0x0028(s0)            ## 00000028
	lwc1    $f16, %lo(var_808C4058)($at) 
	add.s   $f18, $f10, $f16           
	beq     v0, $zero, lbl_808C30C8    
	swc1    $f18, 0x0158(s0)           ## 00000158
	sh      t9, 0x014A(s0)             ## 0000014A
lbl_808C30C8:
	jal     func_80063F00              
	addiu   a1, s0, 0x0008             ## a1 = 00000008
	sll     a1, v0, 16                 
	sra     a1, a1, 16                 
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	addiu   a3, $zero, 0x02EE          ## a3 = 000002EE
	jal     func_80064508              
	sw      $zero, 0x0010($sp)         
	lh      t0, 0x014A(s0)             ## 0000014A
	bnel    t0, $zero, lbl_808C3104    
	lh      t1, 0x0032(s0)             ## 00000032
	jal     func_808C2808              
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t1, 0x0032(s0)             ## 00000032
lbl_808C3104:
	sh      t1, 0x00B6(s0)             ## 000000B6
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_808C3118:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   t6, $zero, 0x0004          ## t6 = 00000004
	addiu   t7, $zero, 0xC000          ## t7 = FFFFC000
	addiu   t8, $zero, 0x003C          ## t8 = 0000003C
	lui     a1, %hi(func_808C3164)     ## a1 = 808C0000
	sw      t6, 0x013C(a0)             ## 0000013C
	sw      $zero, 0x0140(a0)          ## 00000140
	sh      t7, 0x00B4(a0)             ## 000000B4
	sh      t8, 0x014A(a0)             ## 0000014A
	sh      $zero, 0x014C(a0)          ## 0000014C
	addiu   a1, a1, %lo(func_808C3164) ## a1 = 808C3164
	jal     func_808C2350              
	swc1    $f4, 0x0068(a0)            ## 00000068
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808C3164:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sdc1    $f20, 0x0020($sp)          
	lw      t6, 0x1C44(a1)             ## 00001C44
	lui     $at, 0x4348                ## $at = 43480000
	mtc1    $at, $f6                   ## $f6 = 200.00
	sw      t6, 0x0034($sp)            
	lwc1    $f4, 0x0090(s0)            ## 00000090
	lh      t7, 0x014C(s0)             ## 0000014C
	addiu   a1, $zero, 0xC000          ## a1 = FFFFC000
	c.lt.s  $f4, $f6                   
	addiu   t8, t7, 0xFFFF             ## t8 = FFFFFFFF
	sh      t8, 0x014C(s0)             ## 0000014C
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	bc1f    lbl_808C331C               
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	lbu     v0, 0x0174(s0)             ## 00000174
	addiu   t5, $zero, 0x0001          ## t5 = 00000001
	or      a0, s0, $zero              ## a0 = 00000000
	andi    t9, v0, 0x0002             ## t9 = 00000000
	beq     t9, $zero, lbl_808C31DC    
	andi    t0, v0, 0xFFFD             ## t0 = 00000000
	sb      t0, 0x0174(s0)             ## 00000174
	lw      t1, 0x0034($sp)            
	lw      t2, 0x0168(s0)             ## 00000168
	bnel    t1, t2, lbl_808C31E0       
	lh      v0, 0x014A(s0)             ## 0000014A
	sh      $zero, 0x014A(s0)          ## 0000014A
lbl_808C31DC:
	lh      v0, 0x014A(s0)             ## 0000014A
lbl_808C31E0:
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	beq     v0, $zero, lbl_808C3308    
	addiu   t3, v0, 0xFFFF             ## t3 = FFFFFFFF
	sh      t3, 0x014A(s0)             ## 0000014A
	sw      $zero, 0x0010($sp)         
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	jal     func_80064508              
	addiu   a3, $zero, 0x01F4          ## a3 = 000001F4
	lh      a1, 0x008A(s0)             ## 0000008A
	sw      $zero, 0x0010($sp)         
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	jal     func_80064508              
	addiu   a3, $zero, 0x05DC          ## a3 = 000005DC
	lw      a1, 0x0034($sp)            
	addiu   a0, s0, 0x0008             ## a0 = 00000008
	jal     func_80063F00              
	addiu   a1, a1, 0x0024             ## a1 = 00000024
	lui     $at, %hi(var_808C405C)     ## $at = 808C0000
	lwc1    $f0, %lo(var_808C405C)($at) 
	addiu   t4, v0, 0x4000             ## t4 = 00004000
	sh      t4, 0x0032($sp)            
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f10                  ## $f10 = 30.00
	lwc1    $f8, 0x000C(s0)            ## 0000000C
	mfc1    a2, $f0                    
	addiu   a0, s0, 0x0028             ## a0 = 00000028
	add.s   $f16, $f8, $f10            
	lui     a3, 0x3F80                 ## a3 = 3F800000
	swc1    $f0, 0x0010($sp)           
	mfc1    a1, $f16                   
	jal     func_80064178              
	nop
	lh      a0, 0x014C(s0)             ## 0000014C
	addu    $at, a0, $zero             
	sll     a0, a0,  5                 
	subu    a0, a0, $at                
	sll     a0, a0,  2                 
	addu    a0, a0, $at                
	sll     a0, a0,  4                 
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	mov.s   $f20, $f0                  
	jal     func_800636C4              ## sins?
	lh      a0, 0x0032($sp)            
	lwc1    $f18, 0x015C(s0)           ## 0000015C
	lh      a0, 0x014C(s0)             ## 0000014C
	lwc1    $f8, 0x0008(s0)            ## 00000008
	mul.s   $f4, $f0, $f18             
	addu    $at, a0, $zero             
	sll     a0, a0,  5                 
	subu    a0, a0, $at                
	sll     a0, a0,  2                 
	addu    a0, a0, $at                
	sll     a0, a0,  4                 
	mul.s   $f6, $f4, $f20             
	sll     a0, a0, 16                 
	sra     a0, a0, 16                 
	add.s   $f10, $f6, $f8             
	jal     func_800636C4              ## sins?
	swc1    $f10, 0x0024(s0)           ## 00000024
	mov.s   $f20, $f0                  
	jal     func_80063684              ## coss?
	lh      a0, 0x0032($sp)            
	lwc1    $f16, 0x015C(s0)           ## 0000015C
	lwc1    $f6, 0x0010(s0)            ## 00000010
	mul.s   $f18, $f0, $f16            
	nop
	mul.s   $f4, $f18, $f20            
	add.s   $f8, $f4, $f6              
	beq     $zero, $zero, lbl_808C341C 
	swc1    $f8, 0x002C(s0)            ## 0000002C
lbl_808C3308:
	sh      $zero, 0x00B4(s0)          ## 000000B4
	jal     func_808C2ED4              
	sw      t5, 0x0140(s0)             ## 00000140
	beq     $zero, $zero, lbl_808C3420 
	lwc1    $f8, 0x000C(s0)            ## 0000000C
lbl_808C331C:
	addiu   a3, $zero, 0x01F4          ## a3 = 000001F4
	jal     func_80064508              
	sw      $zero, 0x0010($sp)         
	lui     $at, %hi(var_808C4060)     ## $at = 808C0000
	lwc1    $f0, %lo(var_808C4060)($at) 
	lw      a1, 0x000C(s0)             ## 0000000C
	addiu   a0, s0, 0x0028             ## a0 = 00000028
	mfc1    a2, $f0                    
	lui     a3, 0x3FC0                 ## a3 = 3FC00000
	jal     func_80064178              
	swc1    $f0, 0x0010($sp)           
	mtc1    $zero, $f10                ## $f10 = 0.00
	lw      a1, 0x0034($sp)            
	addiu   t6, $zero, 0x003C          ## t6 = 0000003C
	c.eq.s  $f0, $f10                  
	addiu   a1, a1, 0x0024             ## a1 = 00000024
	bc1f    lbl_808C336C               
	nop
	beq     $zero, $zero, lbl_808C341C 
	sh      t6, 0x014A(s0)             ## 0000014A
lbl_808C336C:
	jal     func_80063F00              
	addiu   a0, s0, 0x0008             ## a0 = 00000008
	sh      v0, 0x0032($sp)            
	lh      a0, 0x014C(s0)             ## 0000014C
	addu    $at, a0, $zero             
	sll     a0, a0,  5                 
	subu    a0, a0, $at                
	sll     a0, a0,  2                 
	addu    a0, a0, $at                
	sll     a0, a0,  4                 
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	mov.s   $f20, $f0                  
	jal     func_800636C4              ## sins?
	lh      a0, 0x0032($sp)            
	lui     $at, 0x40C0                ## $at = 40C00000
	mtc1    $at, $f16                  ## $f16 = 6.00
	lh      a0, 0x014C(s0)             ## 0000014C
	lwc1    $f6, 0x0008(s0)            ## 00000008
	mul.s   $f18, $f0, $f16            
	addu    $at, a0, $zero             
	sll     a0, a0,  5                 
	subu    a0, a0, $at                
	sll     a0, a0,  2                 
	addu    a0, a0, $at                
	sll     a0, a0,  4                 
	mul.s   $f4, $f18, $f20            
	sll     a0, a0, 16                 
	sra     a0, a0, 16                 
	add.s   $f8, $f4, $f6              
	jal     func_800636C4              ## sins?
	swc1    $f8, 0x0024(s0)            ## 00000024
	mov.s   $f20, $f0                  
	jal     func_80063684              ## coss?
	lh      a0, 0x0032($sp)            
	lui     $at, 0x40C0                ## $at = 40C00000
	mtc1    $at, $f10                  ## $f10 = 6.00
	lwc1    $f4, 0x0010(s0)            ## 00000010
	mul.s   $f16, $f0, $f10            
	nop
	mul.s   $f18, $f16, $f20           
	add.s   $f6, $f18, $f4             
	swc1    $f6, 0x002C(s0)            ## 0000002C
lbl_808C341C:
	lwc1    $f8, 0x000C(s0)            ## 0000000C
lbl_808C3420:
	lwc1    $f10, 0x0028(s0)           ## 00000028
	lh      t7, 0x0032(s0)             ## 00000032
	lui     a3, 0x8010                 ## a3 = 80100000
	c.eq.s  $f8, $f10                  
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   a0, $zero, 0x3064          ## a0 = 00003064
	addiu   a1, s0, 0x00E4             ## a1 = 000000E4
	bc1t    lbl_808C345C               
	sh      t7, 0x00B6(s0)             ## 000000B6
	lui     t8, 0x8010                 ## t8 = 80100000
	addiu   t8, t8, 0x43A8             ## t8 = 801043A8
	sw      t8, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_800C806C              
	sw      a3, 0x0010($sp)            
lbl_808C345C:
	lw      $ra, 0x002C($sp)           
	ldc1    $f20, 0x0020($sp)          
	lw      s0, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_808C3470:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	addiu   t6, $zero, 0x0009          ## t6 = 00000009
	lui     a1, %hi(func_808C34A0)     ## a1 = 808C0000
	sw      t6, 0x013C(a0)             ## 0000013C
	sh      $zero, 0x014A(a0)          ## 0000014A
	jal     func_808C2350              
	addiu   a1, a1, %lo(func_808C34A0) ## a1 = 808C34A0
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808C34A0:
	addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
	sw      s0, 0x0030($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      a1, 0x0064($sp)            
	sw      $zero, 0x0044($sp)         
	lh      t6, 0x014C(s0)             ## 0000014C
	lh      v0, 0x014A(s0)             ## 0000014A
	addiu   t7, t6, 0xFFFF             ## t7 = FFFFFFFF
	bne     v0, $zero, lbl_808C34EC    
	sh      t7, 0x014C(s0)             ## 0000014C
	lwc1    $f6, 0x000C(s0)            ## 0000000C
	lwc1    $f8, 0x0028(s0)            ## 00000028
	lui     $at, 0x4270                ## $at = 42700000
	mtc1    $at, $f4                   ## $f4 = 60.00
	sub.s   $f10, $f6, $f8             
	c.lt.s  $f4, $f10                  
	nop
	bc1f    lbl_808C35E0               
lbl_808C34EC:
	addiu   t8, v0, 0xFFFF             ## t8 = FFFFFFFF
	sh      t8, 0x014A(s0)             ## 0000014A
	lh      v0, 0x014A(s0)             ## 0000014A
	bnel    v0, $zero, lbl_808C3534    
	lh      t0, 0x00B4(s0)             ## 000000B4
	jal     func_808C3118              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      v0, 0x011C(s0)             ## 0000011C
	beql    v0, $zero, lbl_808C3760    
	lw      $ra, 0x0034($sp)           
	lh      t9, 0x014A(v0)             ## 0000014A
lbl_808C3518:
	sh      t9, 0x014C(v0)             ## 0000014C
	lw      v0, 0x011C(v0)             ## 0000011C
	bnel    v0, $zero, lbl_808C3518    
	lh      t9, 0x014A(v0)             ## 0000014A
	beq     $zero, $zero, lbl_808C3760 
	lw      $ra, 0x0034($sp)           
	lh      t0, 0x00B4(s0)             ## 000000B4
lbl_808C3534:
	addiu   a0, $zero, 0xC000          ## a0 = FFFFC000
	addiu   t1, $zero, 0x0050          ## t1 = 00000050
	beql    a0, t0, lbl_808C35C4       
	lh      t6, 0x014A(s0)             ## 0000014A
	mtc1    $zero, $f0                 ## $f0 = 0.00
	sh      t1, 0x014A(s0)             ## 0000014A
	addiu   v1, s0, 0x0008             ## v1 = 00000008
	swc1    $f0, 0x0060(s0)            ## 00000060
	swc1    $f0, 0x0068(s0)            ## 00000068
	lw      t3, 0x0000(v1)             ## 00000008
	lw      v0, 0x011C(s0)             ## 0000011C
	lui     $at, 0x42A0                ## $at = 42A00000
	sw      t3, 0x0024(s0)             ## 00000024
	lw      t2, 0x0004(v1)             ## 0000000C
	sw      t2, 0x0028(s0)             ## 00000028
	lw      t3, 0x0008(v1)             ## 00000010
	sh      a0, 0x00B4(s0)             ## 000000B4
	beq     v0, $zero, lbl_808C35C0    
	sw      t3, 0x002C(s0)             ## 0000002C
	mtc1    $at, $f2                   ## $f2 = 80.00
	nop
	swc1    $f0, 0x0060(v0)            ## 00000060
lbl_808C358C:
	swc1    $f0, 0x0068(v0)            ## 00000068
	lw      t5, 0x0000(v1)             ## 00000008
	sw      t5, 0x0024(v0)             ## 00000024
	lw      t4, 0x0004(v1)             ## 0000000C
	sw      t4, 0x0028(v0)             ## 00000028
	lw      t5, 0x0008(v1)             ## 00000010
	sw      t5, 0x002C(v0)             ## 0000002C
	lwc1    $f16, 0x000C(s0)           ## 0000000C
	sub.s   $f18, $f16, $f2            
	swc1    $f18, 0x0028(v0)           ## 00000028
	lw      v0, 0x011C(v0)             ## 0000011C
	bnel    v0, $zero, lbl_808C358C    
	swc1    $f0, 0x0060(v0)            ## 00000060
lbl_808C35C0:
	lh      t6, 0x014A(s0)             ## 0000014A
lbl_808C35C4:
	lwc1    $f6, 0x000C(s0)            ## 0000000C
	mtc1    t6, $f8                    ## $f8 = 0.00
	nop
	cvt.s.w $f4, $f8                   
	sub.s   $f10, $f6, $f4             
	beq     $zero, $zero, lbl_808C375C 
	swc1    $f10, 0x0028(s0)           ## 00000028
lbl_808C35E0:
	lh      v0, 0x00B4(s0)             ## 000000B4
	addiu   $at, $zero, 0x4000         ## $at = 00004000
	beq     v0, $at, lbl_808C35F4      
	addiu   t7, v0, 0xFC00             ## t7 = FFFFFC00
	sh      t7, 0x00B4(s0)             ## 000000B4
lbl_808C35F4:
	lh      v0, 0x0150(s0)             ## 00000150
	beq     v0, $zero, lbl_808C3604    
	addiu   t8, v0, 0xFFF1             ## t8 = FFFFFFF1
	sh      t8, 0x0150(s0)             ## 00000150
lbl_808C3604:
	jal     func_80063684              ## coss?
	lh      a0, 0x00B4(s0)             ## 000000B4
	add.s   $f16, $f0, $f0             
	lh      a0, 0x00B4(s0)             ## 000000B4
	jal     func_800636C4              ## sins?
	swc1    $f16, 0x0068(s0)           ## 00000068
	lwc1    $f2, 0x0028(s0)            ## 00000028
	lwc1    $f6, 0x0080(s0)            ## 00000080
	lui     $at, 0xC000                ## $at = C0000000
	mtc1    $at, $f18                  ## $f18 = -2.00
	sub.s   $f4, $f2, $f6              
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f10                  ## $f10 = 20.00
	mul.s   $f8, $f0, $f18             
	lui     a3, 0x8010                 ## a3 = 80100000
	c.lt.s  $f4, $f10                  
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   a0, $zero, 0x3064          ## a0 = 00003064
	bc1f    lbl_808C365C               
	swc1    $f8, 0x0060(s0)            ## 00000060
	sw      t9, 0x0044($sp)            
lbl_808C365C:
	lwc1    $f16, 0x000C(s0)           ## 0000000C
	lui     t0, 0x8010                 ## t0 = 80100000
	addiu   t0, t0, 0x43A8             ## t0 = 801043A8
	c.eq.s  $f16, $f2                  
	addiu   a1, s0, 0x00E4             ## a1 = 000000E4
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	bc1tl   lbl_808C368C               
	lw      t1, 0x0044($sp)            
	sw      a3, 0x0010($sp)            
	jal     func_800C806C              
	sw      t0, 0x0014($sp)            
	lw      t1, 0x0044($sp)            
lbl_808C368C:
	lw      t2, 0x0064($sp)            
	lui     t3, 0x0001                 ## t3 = 00010000
	beq     t1, $zero, lbl_808C375C    
	addu    t3, t3, t2                 
	lw      t3, 0x1DE4(t3)             ## 00011DE4
	andi    t4, t3, 0x0001             ## t4 = 00000000
	beql    t4, $zero, lbl_808C3760    
	lw      $ra, 0x0034($sp)           
	lw      t7, 0x0024(s0)             ## 00000024
	addiu   t5, $sp, 0x0048            ## t5 = FFFFFFE8
	lui     $at, 0x40A0                ## $at = 40A00000
	sw      t7, 0x0000(t5)             ## FFFFFFE8
	lw      t6, 0x0028(s0)             ## 00000028
	mtc1    $at, $f12                  ## $f12 = 5.00
	sw      t6, 0x0004(t5)             ## FFFFFFEC
	lw      t7, 0x002C(s0)             ## 0000002C
	sw      t7, 0x0008(t5)             ## FFFFFFF0
	lwc1    $f18, 0x0080(s0)           ## 00000080
	jal     func_80026D90              
	swc1    $f18, 0x004C($sp)          
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f0, 0x0054($sp)           
	lui     $at, 0x4060                ## $at = 40600000
	mtc1    $at, $f8                   ## $f8 = 3.50
	lui     $at, 0x3FC0                ## $at = 3FC00000
	mtc1    $at, $f4                   ## $f4 = 1.50
	mul.s   $f6, $f0, $f8              
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f12                  ## $f12 = 5.00
	add.s   $f10, $f6, $f4             
	jal     func_80026D90              
	swc1    $f10, 0x0058($sp)          
	swc1    $f0, 0x005C($sp)           
	addiu   a0, $zero, 0x0064          ## a0 = 00000064
	jal     func_80063BF0              
	addiu   a1, $zero, 0x0032          ## a1 = 00000032
	lui     t8, %hi(var_808C401C)      ## t8 = 808C0000
	lui     t9, %hi(var_808C4020)      ## t9 = 808C0000
	addiu   t9, t9, %lo(var_808C4020)  ## t9 = 808C4020
	addiu   t8, t8, %lo(var_808C401C)  ## t8 = 808C401C
	lui     a3, %hi(var_808C4010)      ## a3 = 808C0000
	addiu   t0, $zero, 0x0014          ## t0 = 00000014
	sw      t0, 0x001C($sp)            
	addiu   a3, a3, %lo(var_808C4010)  ## a3 = 808C4010
	sw      t8, 0x0010($sp)            
	sw      t9, 0x0014($sp)            
	lw      a0, 0x0064($sp)            
	addiu   a1, $sp, 0x0048            ## a1 = FFFFFFE8
	addiu   a2, $sp, 0x0054            ## a2 = FFFFFFF4
	sw      v0, 0x0018($sp)            
	jal     func_8001D18C              
	sw      $zero, 0x0020($sp)         
lbl_808C375C:
	lw      $ra, 0x0034($sp)           
lbl_808C3760:
	lw      s0, 0x0030($sp)            
	addiu   $sp, $sp, 0x0060           ## $sp = 00000000
	jr      $ra                        
	nop


func_808C3770:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s1, 0x0020($sp)            
	or      s1, a0, $zero              ## s1 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      s5, 0x0030($sp)            
	sw      s4, 0x002C($sp)            
	sw      s3, 0x0028($sp)            
	sw      s2, 0x0024($sp)            
	sw      s0, 0x001C($sp)            
	sw      a1, 0x003C($sp)            
	lbu     v0, 0x0175(s1)             ## 00000175
	andi    t6, v0, 0x0002             ## t6 = 00000000
	beql    t6, $zero, lbl_808C39A8    
	lw      $ra, 0x0034($sp)           
	lw      t7, 0x013C(s1)             ## 0000013C
	addiu   s5, $zero, 0xFFFD          ## s5 = FFFFFFFD
	andi    t9, v0, 0xFFFD             ## t9 = 00000000
	slti    $at, t7, 0x0002            
	bne     $at, $zero, lbl_808C39A4   
	or      a0, s1, $zero              ## a0 = 00000000
	lh      t8, 0x001C(s1)             ## 0000001C
	or      s2, $zero, $zero           ## s2 = 00000000
	or      s4, $zero, $zero           ## s4 = 00000000
	bgez    t8, lbl_808C37D8           
	addiu   a1, s1, 0x0164             ## a1 = 00000164
	addiu   s2, $zero, 0x0001          ## s2 = 00000001
lbl_808C37D8:
	sb      t9, 0x0175(s1)             ## 00000175
	jal     func_800284A8              
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	lbu     v0, 0x00B1(s1)             ## 000000B1
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beq     v0, $zero, lbl_808C39A4    
	sb      v0, 0x0148(s1)             ## 00000148
	bne     v0, $at, lbl_808C3800      
	nop
	addiu   s4, $zero, 0x0001          ## s4 = 00000001
lbl_808C3800:
	bnel    s2, $zero, lbl_808C3814    
	lbu     t0, 0x00AF(s1)             ## 000000AF
	jal     func_80028390              
	or      a0, s1, $zero              ## a0 = 00000000
	lbu     t0, 0x00AF(s1)             ## 000000AF
lbl_808C3814:
	bne     t0, $zero, lbl_808C3858    
	nop
	lw      t1, 0x0004(s1)             ## 00000004
	lw      s0, 0x01C4(s1)             ## 000001C4
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	and     t2, t1, $at                
	sw      t2, 0x0004(s1)             ## 00000004
	lh      t3, 0x001C(s0)             ## 0000001C
	bgezl   t3, lbl_808C39A8           
	lw      $ra, 0x0034($sp)           
	jal     func_808C29D8              
	or      a0, s0, $zero              ## a0 = 00000000
	lbu     t4, 0x00B1(s1)             ## 000000B1
	addiu   t5, $zero, 0x000C          ## t5 = 0000000C
	sh      t5, 0x001C(s0)             ## 0000001C
	beq     $zero, $zero, lbl_808C39A4 
	sb      t4, 0x0148(s0)             ## 00000148
lbl_808C3858:
	beq     s4, $zero, lbl_808C38B4    
	addiu   s3, $zero, 0x0050          ## s3 = 00000050
	sh      s3, 0x0110(s1)             ## 00000110
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x389E          ## a1 = 0000389E
	beq     s2, $zero, lbl_808C389C    
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   t6, $zero, 0x0050          ## t6 = 00000050
	sw      t6, 0x0010($sp)            
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	jal     func_80027090              
	or      a3, $zero, $zero           ## a3 = 00000000
	beq     $zero, $zero, lbl_808C38B8 
	lw      s0, 0x0118(s1)             ## 00000118
lbl_808C389C:
	addiu   t7, $zero, 0x0050          ## t7 = 00000050
	sw      t7, 0x0010($sp)            
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	jal     func_80027090              
	addiu   a3, $zero, 0x2000          ## a3 = 00002000
lbl_808C38B4:
	lw      s0, 0x0118(s1)             ## 00000118
lbl_808C38B8:
	addiu   s3, $zero, 0x0050          ## s3 = 00000050
	beql    s0, $zero, lbl_808C3938    
	lw      s0, 0x011C(s1)             ## 0000011C
	lbu     t8, 0x0175(s0)             ## 00000175
lbl_808C38C8:
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x389E          ## a1 = 0000389E
	and     t9, t8, s5                 
	beq     s4, $zero, lbl_808C3928    
	sb      t9, 0x0175(s0)             ## 00000175
	jal     func_80022FD0              
	sh      s3, 0x0110(s0)             ## 00000110
	beq     s2, $zero, lbl_808C3910    
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t0, $zero, 0x0050          ## t0 = 00000050
	sw      t0, 0x0010($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	jal     func_80027090              
	or      a3, $zero, $zero           ## a3 = 00000000
	beq     $zero, $zero, lbl_808C392C 
	lw      s0, 0x0118(s0)             ## 00000118
lbl_808C3910:
	addiu   t1, $zero, 0x0050          ## t1 = 00000050
	sw      t1, 0x0010($sp)            
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	jal     func_80027090              
	addiu   a3, $zero, 0x2000          ## a3 = 00002000
lbl_808C3928:
	lw      s0, 0x0118(s0)             ## 00000118
lbl_808C392C:
	bnel    s0, $zero, lbl_808C38C8    
	lbu     t8, 0x0175(s0)             ## 00000175
	lw      s0, 0x011C(s1)             ## 0000011C
lbl_808C3938:
	beql    s0, $zero, lbl_808C39A8    
	lw      $ra, 0x0034($sp)           
	lbu     t2, 0x0175(s0)             ## 00000175
lbl_808C3944:
	and     t3, t2, s5                 
	beq     s4, $zero, lbl_808C3998    
	sb      t3, 0x0175(s0)             ## 00000175
	beq     s2, $zero, lbl_808C397C    
	sh      s3, 0x0110(s0)             ## 00000110
	addiu   t4, $zero, 0x0050          ## t4 = 00000050
	sw      t4, 0x0010($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	jal     func_80027090              
	or      a3, $zero, $zero           ## a3 = 00000000
	beq     $zero, $zero, lbl_808C399C 
	lw      s0, 0x011C(s0)             ## 0000011C
lbl_808C397C:
	addiu   t5, $zero, 0x0050          ## t5 = 00000050
	sw      t5, 0x0010($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	jal     func_80027090              
	addiu   a3, $zero, 0x2000          ## a3 = 00002000
lbl_808C3998:
	lw      s0, 0x011C(s0)             ## 0000011C
lbl_808C399C:
	bnel    s0, $zero, lbl_808C3944    
	lbu     t2, 0x0175(s0)             ## 00000175
lbl_808C39A4:
	lw      $ra, 0x0034($sp)           
lbl_808C39A8:
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	lw      s2, 0x0024($sp)            
	lw      s3, 0x0028($sp)            
	lw      s4, 0x002C($sp)            
	lw      s5, 0x0030($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_808C39C8:
	addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x0074($sp)            
	lui     t7, %hi(var_808C4024)      ## t7 = 808C0000
	addiu   t7, t7, %lo(var_808C4024)  ## t7 = 808C4024
	lw      t9, 0x0000(t7)             ## 808C4024
	addiu   t6, $sp, 0x005C            ## t6 = FFFFFFEC
	lw      t8, 0x0004(t7)             ## 808C4028
	sw      t9, 0x0000(t6)             ## FFFFFFEC
	lw      t9, 0x0008(t7)             ## 808C402C
	lui     t1, %hi(var_808C4030)      ## t1 = 808C0000
	addiu   t1, t1, %lo(var_808C4030)  ## t1 = 808C4030
	sw      t8, 0x0004(t6)             ## FFFFFFF0
	sw      t9, 0x0008(t6)             ## FFFFFFF4
	lw      t3, 0x0000(t1)             ## 808C4030
	addiu   t0, $sp, 0x0050            ## t0 = FFFFFFE0
	lw      t2, 0x0004(t1)             ## 808C4034
	sw      t3, 0x0000(t0)             ## FFFFFFE0
	lw      t3, 0x0008(t1)             ## 808C4038
	sw      t2, 0x0004(t0)             ## FFFFFFE4
	lui     t4, %hi(var_808C403C)      ## t4 = 808C0000
	sw      t3, 0x0008(t0)             ## FFFFFFE8
	lui     t5, %hi(var_808C4040)      ## t5 = 808C0000
	lw      t4, %lo(var_808C403C)(t4)  
	lw      t5, %lo(var_808C4040)(t5)  
	lw      t6, 0x0074($sp)            
	sw      t4, 0x0040($sp)            
	sw      t5, 0x003C($sp)            
	lw      v0, 0x1C44(t6)             ## 00001C30
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t7, 0x066C(v0)             ## 0000066C
	sll     t8, t7,  5                 
	bgezl   t8, lbl_808C3A60           
	lbu     t9, 0x00AF(s0)             ## 000000AF
	sb      $zero, 0x0148(s0)          ## 00000148
	lbu     t9, 0x00AF(s0)             ## 000000AF
lbl_808C3A60:
	beql    t9, $zero, lbl_808C3A74    
	lw      t9, 0x0144(s0)             ## 00000144
	jal     func_808C3770              
	lw      a1, 0x0074($sp)            
	lw      t9, 0x0144(s0)             ## 00000144
lbl_808C3A74:
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x0074($sp)            
	jalr    $ra, t9                    
	nop
	lh      t0, 0x001C(s0)             ## 0000001C
	bgezl   t0, lbl_808C3BA4           
	lh      t4, 0x001C(s0)             ## 0000001C
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t1, 0x013C(s0)             ## 0000013C
	addiu   $at, $zero, 0x0009         ## $at = 00000009
	lw      a0, 0x0074($sp)            
	beq     t1, $at, lbl_808C3ACC      
	or      a1, s0, $zero              ## a1 = 00000000
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f4                   ## $f4 = 10.00
	addiu   t2, $zero, 0x0005          ## t2 = 00000005
	sw      t2, 0x0014($sp)            
	addiu   a2, $zero, 0x0000          ## a2 = 00000000
	lui     a3, 0x4170                 ## a3 = 41700000
	jal     func_80021E6C              
	swc1    $f4, 0x0010($sp)           
lbl_808C3ACC:
	mtc1    $zero, $f6                 ## $f6 = 0.00
	lwc1    $f8, 0x0068(s0)            ## 00000068
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t2, 0x8010                 ## t2 = 80100000
	c.eq.s  $f6, $f8                   
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t2, t2, 0x43A8             ## t2 = 801043A8
	addiu   a1, s0, 0x00E4             ## a1 = 000000E4
	bc1t    lbl_808C3B54               
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	lhu     t3, 0x0088(s0)             ## 00000088
	andi    t4, t3, 0x0008             ## t4 = 00000000
	beql    t4, $zero, lbl_808C3B58    
	lh      t9, 0x00B8(s0)             ## 000000B8
	lh      a0, 0x0032(s0)             ## 00000032
	lh      t5, 0x007E(s0)             ## 0000007E
	subu    v0, t5, a0                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	bltz    v0, lbl_808C3B28           
	subu    v1, $zero, v0              
	beq     $zero, $zero, lbl_808C3B28 
	or      v1, v0, $zero              ## v1 = 00000000
lbl_808C3B28:
	slti    $at, v1, 0x4001            
	bnel    $at, $zero, lbl_808C3B58   
	lh      t9, 0x00B8(s0)             ## 000000B8
	bltz    v0, lbl_808C3B48           
	addiu   t7, a0, 0x01F4             ## t7 = 000001F4
	addiu   t6, a0, 0xFE0C             ## t6 = FFFFFE0C
	beq     $zero, $zero, lbl_808C3B4C 
	sh      t6, 0x0032(s0)             ## 00000032
lbl_808C3B48:
	sh      t7, 0x0032(s0)             ## 00000032
lbl_808C3B4C:
	lh      t8, 0x0032(s0)             ## 00000032
	sh      t8, 0x00B6(s0)             ## 000000B6
lbl_808C3B54:
	lh      t9, 0x00B8(s0)             ## 000000B8
lbl_808C3B58:
	addiu   a0, $zero, 0x3865          ## a0 = 00003865
	addiu   t0, t9, 0x0800             ## t0 = 00000800
	sh      t0, 0x00B8(s0)             ## 000000B8
	lh      t1, 0x00B8(s0)             ## 000000B8
	bnel    t1, $zero, lbl_808C3B80    
	lw      t3, 0x013C(s0)             ## 0000013C
	sw      a3, 0x0010($sp)            
	jal     func_800C806C              
	sw      t2, 0x0014($sp)            
	lw      t3, 0x013C(s0)             ## 0000013C
lbl_808C3B80:
	lw      a0, 0x0074($sp)            
	addiu   a2, s0, 0x0164             ## a2 = 00000164
	slti    $at, t3, 0x0002            
	bne     $at, $zero, lbl_808C3BA0   
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	jal     func_8004BD50              ## CollisionCheck_setAT
	addu    a1, a0, $at                
lbl_808C3BA0:
	lh      t4, 0x001C(s0)             ## 0000001C
lbl_808C3BA4:
	addiu   $at, $zero, 0x000B         ## $at = 0000000B
	addiu   a2, s0, 0x0164             ## a2 = 00000164
	beql    t4, $at, lbl_808C3BD0      
	lw      t0, 0x0024(s0)             ## 00000024
	lh      t5, 0x0152(s0)             ## 00000152
	addiu   t6, t5, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x0152(s0)             ## 00000152
	lh      t7, 0x0152(s0)             ## 00000152
	andi    t8, t7, 0x0007             ## t8 = 00000000
	sh      t8, 0x0152(s0)             ## 00000152
	lw      t0, 0x0024(s0)             ## 00000024
lbl_808C3BD0:
	lbu     t1, 0x0148(s0)             ## 00000148
	lw      t9, 0x0028(s0)             ## 00000028
	sw      t0, 0x0038(s0)             ## 00000038
	lw      t0, 0x002C(s0)             ## 0000002C
	addiu   $at, $zero, 0x000E         ## $at = 0000000E
	sw      t9, 0x003C(s0)             ## 0000003C
	bne     t1, $at, lbl_808C3C04      
	sw      t0, 0x0040(s0)             ## 00000040
	lw      a0, 0x0074($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	jal     func_8004BD50              ## CollisionCheck_setAT
	addu    a1, a0, $at                
lbl_808C3C04:
	lh      t2, 0x0152(s0)             ## 00000152
	andi    t3, t2, 0x0007             ## t3 = 00000000
	bnel    t3, $zero, lbl_808C3CF4    
	lw      t7, 0x013C(s0)             ## 0000013C
	lh      t4, 0x0150(s0)             ## 00000150
	lui     $at, 0x3E80                ## $at = 3E800000
	mtc1    $at, $f0                   ## $f0 = 0.25
	sb      t4, 0x0040($sp)            
	lwc1    $f10, 0x005C(s0)           ## 0000005C
	neg.s   $f16, $f10                 
	mul.s   $f18, $f16, $f0            
	swc1    $f18, 0x0050($sp)          
	lwc1    $f4, 0x0060(s0)            ## 00000060
	neg.s   $f6, $f4                   
	mul.s   $f8, $f6, $f0              
	swc1    $f8, 0x0054($sp)           
	lwc1    $f10, 0x0064(s0)           ## 00000064
	neg.s   $f16, $f10                 
	mul.s   $f18, $f16, $f0            
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f18, 0x0058($sp)          
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f4                   ## $f4 = 0.50
	lui     $at, 0x41C8                ## $at = 41C80000
	mtc1    $at, $f8                   ## $f8 = 25.00
	sub.s   $f6, $f0, $f4              
	lwc1    $f16, 0x0024(s0)           ## 00000024
	mul.s   $f10, $f6, $f8             
	add.s   $f18, $f10, $f16           
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f18, 0x0044($sp)          
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f4                   ## $f4 = 0.50
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f8                   ## $f8 = 20.00
	sub.s   $f6, $f0, $f4              
	lwc1    $f16, 0x0028(s0)           ## 00000028
	mul.s   $f10, $f6, $f8             
	add.s   $f18, $f10, $f16           
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f18, 0x0048($sp)          
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f4                   ## $f4 = 0.50
	lui     $at, 0x41C8                ## $at = 41C80000
	mtc1    $at, $f8                   ## $f8 = 25.00
	sub.s   $f6, $f0, $f4              
	lwc1    $f16, 0x002C(s0)           ## 0000002C
	addiu   t5, $sp, 0x0040            ## t5 = FFFFFFD0
	addiu   t6, $sp, 0x003C            ## t6 = FFFFFFCC
	mul.s   $f10, $f6, $f8             
	sw      t6, 0x0014($sp)            
	sw      t5, 0x0010($sp)            
	lw      a0, 0x0074($sp)            
	addiu   a1, $sp, 0x0044            ## a1 = FFFFFFD4
	addiu   a2, $sp, 0x005C            ## a2 = FFFFFFEC
	addiu   a3, $sp, 0x0050            ## a3 = FFFFFFE0
	add.s   $f18, $f10, $f16           
	jal     func_8001C66C              
	swc1    $f18, 0x004C($sp)          
	lw      t7, 0x013C(s0)             ## 0000013C
lbl_808C3CF4:
	slti    $at, t7, 0x0002            
	bnel    $at, $zero, lbl_808C3D24   
	lw      $ra, 0x0024($sp)           
	lbu     t8, 0x00AF(s0)             ## 000000AF
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	beq     t8, $zero, lbl_808C3D20    
	lw      a0, 0x0074($sp)            
	addu    a1, a0, $at                
	jal     func_8004BF40              ## CollisionCheck_setAC
	addiu   a2, s0, 0x0164             ## a2 = 00000164
lbl_808C3D20:
	lw      $ra, 0x0024($sp)           
lbl_808C3D24:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0070           ## $sp = 00000000
	jr      $ra                        
	nop


func_808C3D34:
	addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
	sw      s1, 0x0018($sp)            
	or      s1, a0, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      s0, 0x0014($sp)            
	sw      a1, 0x005C($sp)            
	lw      t6, 0x005C($sp)            
	lw      t7, 0x0140(s1)             ## 00000140
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	lw      a2, 0x0000(t6)             ## 00000000
	beq     t7, $at, lbl_808C3F44      
	or      s0, a2, $zero              ## s0 = 00000000
	lh      v0, 0x001C(s1)             ## 0000001C
	addiu   $at, $zero, 0x000C         ## $at = 0000000C
	bltz    v0, lbl_808C3D7C           
	nop
	bne     v0, $at, lbl_808C3DF0      
	nop
lbl_808C3D7C:
	jal     func_8007E298              
	or      a0, a2, $zero              ## a0 = 00000000
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t9, 0xDA38                 ## t9 = DA380000
	ori     t9, t9, 0x0003             ## t9 = DA380003
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s0)             ## 000002C0
	sw      t9, 0x0000(v1)             ## 00000000
	lw      t2, 0x005C($sp)            
	lw      a0, 0x0000(t2)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x0044($sp)            
	lw      a1, 0x0044($sp)            
	mtc1    $zero, $f12                ## $f12 = 0.00
	lui     t4, 0xDE00                 ## t4 = DE000000
	sw      v0, 0x0004(a1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t5, 0x0600                 ## t5 = 06000000
	addiu   t5, t5, 0x08D0             ## t5 = 060008D0
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s0)             ## 000002C0
	sw      t5, 0x0004(v1)             ## 00000004
	sw      t4, 0x0000(v1)             ## 00000000
	mov.s   $f14, $f12                 
	lui     a2, 0x4100                 ## a2 = 41000000
	jal     func_800AA7F4              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	beq     $zero, $zero, lbl_808C3F48 
	lh      v0, 0x001C(s1)             ## 0000001C
lbl_808C3DF0:
	jal     func_8007E2C0              
	or      a0, a2, $zero              ## a0 = 00000000
	lw      a0, 0x005C($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1DA0           ## $at = 00011DA0
	jal     func_800ABE54              
	addu    a0, a0, $at                
	lui     t1, 0xE700                 ## t1 = E7000000
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t7, 0xFA00                 ## t7 = FA000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s0)             ## 000002D0
	sw      t7, 0x0000(v1)             ## 00000000
	lh      t9, 0x0150(s1)             ## 00000150
	lh      t4, 0x014E(s1)             ## 0000014E
	addiu   a1, a1, 0x0C68             ## a1 = 06000C68
	sll     t2, t9, 24                 
	ori     t3, t2, 0xFF00             ## t3 = 0000FF00
	andi    t5, t4, 0x00FF             ## t5 = 00000000
	or      t6, t3, t5                 ## t6 = 0000FF00
	sw      t6, 0x0004(v1)             ## 00000004
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t9, 0xFC30                 ## t9 = FC300000
	ori     t9, t9, 0xB261             ## t9 = FC30B261
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s0)             ## 000002D0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t1, 0x0000(v1)             ## 00000000
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t2, 0x5566                 ## t2 = 55660000
	ori     t2, t2, 0xDB6D             ## t2 = 5566DB6D
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s0)             ## 000002D0
	sw      t2, 0x0004(v1)             ## 00000004
	sw      t9, 0x0000(v1)             ## 00000000
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t5, 0xDB06                 ## t5 = DB060000
	ori     t5, t5, 0x0020             ## t5 = DB060020
	addiu   t4, v1, 0x0008             ## t4 = 00000008
	sw      t4, 0x02D0(s0)             ## 000002D0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t1, 0x0000(v1)             ## 00000000
	lw      v1, 0x02D0(s0)             ## 000002D0
	sll     t6, a1,  4                 
	srl     t7, t6, 28                 
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02D0(s0)             ## 000002D0
	sll     t8, t7,  2                 
	lui     t9, 0x8012                 ## t9 = 80120000
	addu    t9, t9, t8                 
	lui     $at, 0x00FF                ## $at = 00FF0000
	sw      t5, 0x0000(v1)             ## 00000000
	lw      t9, 0x0C38(t9)             ## 80120C38
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	and     t2, a1, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t4, t9, t2                 
	addu    t3, t4, $at                
	sw      t3, 0x0004(v1)             ## 00000004
	lw      v1, 0x02D0(s0)             ## 000002D0
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s0)             ## 000002D0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t1, 0x0000(v1)             ## 00000000
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t7, 0xDA38                 ## t7 = DA380000
	ori     t7, t7, 0x0003             ## t7 = DA380003
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s0)             ## 000002D0
	sw      t7, 0x0000(v1)             ## 00000000
	lw      t8, 0x005C($sp)            
	lw      a0, 0x0000(t8)             ## 00000008
	jal     func_800AB900              
	sw      v1, 0x0024($sp)            
	lw      t0, 0x0024($sp)            
	lui     t2, 0xDE00                 ## t2 = DE000000
	sw      v0, 0x0004(t0)             ## 00000004
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t4, 0x0600                 ## t4 = 06000000
	addiu   t4, t4, 0x0000             ## t4 = 06000000
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s0)             ## 000002D0
	sw      t4, 0x0004(v1)             ## 00000004
	sw      t2, 0x0000(v1)             ## 00000000
lbl_808C3F44:
	lh      v0, 0x001C(s1)             ## 0000001C
lbl_808C3F48:
	addiu   $at, $zero, 0x000B         ## $at = 0000000B
	or      a0, $zero, $zero           ## a0 = 00000000
	blez    v0, lbl_808C3F60           
	nop
	bnel    v0, $at, lbl_808C3F6C      
	lw      $ra, 0x001C($sp)           
lbl_808C3F60:
	jal     func_80050CE4              
	addiu   a1, s1, 0x0164             ## a1 = 00000164
	lw      $ra, 0x001C($sp)           
lbl_808C3F6C:
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0058           ## $sp = 00000000
	nop

.section .data

var_808C3F80: .word 0x00350500, 0x00000000, 0x00220000, 0x000001C8
.word func_808C235C
.word func_808C25D4
.word func_808C39C8
.word func_808C3D34
var_808C3FA0: .word \
0x00000000, 0xFFCFFFFF, 0x03080000, 0xFFCFFFFF, \
0x01000000, 0x01010000, 0x00000000, 0x00000000, \
0x00040064
var_808C3FC4: .word 0x01110900, 0x10000000, 0x00000001
.word var_808C3FA0
var_808C3FD4: .word \
0x10F20000, 0xF100E200, 0xE1E2E400, 0x00000000, \
0x00000000, 0x0000E1E4, 0xE2E2E8E4, 0x0000E400
var_808C3FF4: .word 0x304C000A
var_808C3FF8: .word 0x00000000, 0x3F000000, 0x00000000
var_808C4004: .word 0x00000000, 0x00000000, 0x00000000
var_808C4010: .word 0x00000000, 0xBF000000, 0x00000000
var_808C401C: .word 0xFFFFFFFF
var_808C4020: .word 0x96969600
var_808C4024: .word 0x00000000, 0x00000000, 0x00000000
var_808C4030: .word 0x00000000, 0xBF19999A, 0x00000000
var_808C403C: .word 0x0000FFFF
var_808C4040: .word 0x00000000, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_808C4050: .word 0x3E99999A
var_808C4054: .word 0x3E4CCCCD
var_808C4058: .word 0x3E4CCCCD
var_808C405C: .word 0x3E99999A
var_808C4060: .word 0x3E99999A, 0x00000000, 0x00000000, 0x00000000

