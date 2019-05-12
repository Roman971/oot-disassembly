#include <mips.h>
.set noreorder
.set noat

.section .text
func_8089D890:
	sw      a2, 0x0008($sp)            
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	addu    t6, a2, a1                 
	lbu     t7, 0x0000(t6)             ## 00000000
	beq     t7, $zero, lbl_8089D8C8    
	nop
	bgez    a2, lbl_8089D8BC           
	sra     t8, a2,  1                 
	addiu   $at, a2, 0x0001            ## $at = 00000001
	sra     t8, $at,  1                
lbl_8089D8BC:
	sll     t9, t8,  1                 
	addu    t0, a0, t9                 
	sh      $zero, 0x0000(t0)          ## 00000000
lbl_8089D8C8:
	jr      $ra                        
	nop


func_8089D8D0:
	sw      a2, 0x0008($sp)            
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	addu    t6, a2, a1                 
	lbu     t7, 0x0000(t6)             ## 00000000
	sll     t8, a2,  1                 
	addu    t9, a0, t8                 
	beq     t7, $zero, lbl_8089D8F8    
	nop
	sh      $zero, 0x0000(t9)          ## 00000000
lbl_8089D8F8:
	jr      $ra                        
	nop


func_8089D900:
	sw      a2, 0x0008($sp)            
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	addu    t6, a2, a1                 
	lbu     t7, 0x0000(t6)             ## 00000000
	sll     t8, a2,  1                 
	addu    t9, a0, t8                 
	beq     t7, $zero, lbl_8089D928    
	nop
	sh      $zero, 0x0000(t9)          ## 00000000
lbl_8089D928:
	jr      $ra                        
	nop


func_8089D930:
	sw      a2, 0x0008($sp)            
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	addu    t6, a2, a1                 
	lbu     t7, 0x0000(t6)             ## 00000000
	andi    t9, a2, 0x00F0             ## t9 = 00000000
	sll     t0, t9,  1                 
	beq     t7, $zero, lbl_8089D970    
	andi    t8, a2, 0x000F             ## t8 = 00000000
	addu    t1, t8, t0                 
	sll     t2, t1, 16                 
	sra     t3, t2, 16                 
	sll     t4, t3,  1                 
	addu    v0, a0, t4                 
	sh      $zero, 0x0020(v0)          ## 00000020
	sh      $zero, 0x0000(v0)          ## 00000000
lbl_8089D970:
	jr      $ra                        
	nop


func_8089D978:
	sw      a2, 0x0008($sp)            
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	addu    t6, a2, a1                 
	lbu     t7, 0x0000(t6)             ## 00000000
	andi    t8, a2, 0x000F             ## t8 = 00000000
	sll     t9, t8,  1                 
	beq     t7, $zero, lbl_8089D9BC    
	andi    t0, a2, 0x00F0             ## t0 = 00000000
	sll     t1, t0,  1                 
	addu    t2, t9, t1                 
	sll     t3, t2, 16                 
	sra     t4, t3, 16                 
	sll     t5, t4,  1                 
	addu    v0, a0, t5                 
	sh      $zero, 0x0002(v0)          ## 00000002
	sh      $zero, 0x0000(v0)          ## 00000000
lbl_8089D9BC:
	jr      $ra                        
	nop


func_8089D9C4:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s3, 0x0024($sp)            
	sw      s2, 0x0020($sp)            
	sw      s1, 0x001C($sp)            
	sll     s1, a1, 16                 
	lui     s2, 0x8012                 ## s2 = 80120000
	lui     s3, 0x00FF                 ## s3 = 00FF0000
	sw      s4, 0x0028($sp)            
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	lui     s4, 0x8000                 ## s4 = 80000000
	ori     s3, s3, 0xFFFF             ## s3 = 00FFFFFF
	addiu   s2, s2, 0x0C38             ## s2 = 80120C38
	sra     s1, s1, 16                 
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x0034($sp)            
	lui     v0, 0x0601                 ## v0 = 06010000
	addiu   v0, v0, 0x5890             ## v0 = 06015890
	sll     t6, v0,  4                 
	srl     t7, t6, 28                 
	sll     t8, t7,  2                 
	addu    t9, s2, t8                 
	lw      t0, 0x0000(t9)             ## 00000000
	and     t1, v0, s3                 
	sll     a2, s1, 16                 
	addu    t2, t0, t1                 
	addu    a0, t2, s4                 
	sra     a2, a2, 16                 
	jal     func_8089D890              
	or      a1, s0, $zero              ## a1 = 00000000
	lui     v0, 0x0601                 ## v0 = 06010000
	addiu   v0, v0, 0x7210             ## v0 = 06017210
	sll     t3, v0,  4                 
	srl     t4, t3, 28                 
	sll     t5, t4,  2                 
	addu    t6, s2, t5                 
	lw      t7, 0x0000(t6)             ## 00000000
	and     t8, v0, s3                 
	sll     a2, s1, 16                 
	addu    t9, t7, t8                 
	addu    a0, t9, s4                 
	sra     a2, a2, 16                 
	jal     func_8089D900              
	or      a1, s0, $zero              ## a1 = 00000000
	lui     v0, 0x0601                 ## v0 = 06010000
	addiu   v0, v0, 0x5D90             ## v0 = 06015D90
	sll     t0, v0,  4                 
	srl     t1, t0, 28                 
	sll     t2, t1,  2                 
	addu    t3, s2, t2                 
	lw      t4, 0x0000(t3)             ## 00000000
	and     t5, v0, s3                 
	sll     a2, s1, 16                 
	addu    t6, t4, t5                 
	addu    a0, t6, s4                 
	sra     a2, a2, 16                 
	jal     func_8089D8D0              
	or      a1, s0, $zero              ## a1 = 00000000
	lui     v0, 0x0601                 ## v0 = 06010000
	addiu   v0, v0, 0x6390             ## v0 = 06016390
	sll     t7, v0,  4                 
	srl     t8, t7, 28                 
	sll     t9, t8,  2                 
	addu    t0, s2, t9                 
	lw      t1, 0x0000(t0)             ## 00000000
	and     t2, v0, s3                 
	sll     a2, s1, 16                 
	addu    t3, t1, t2                 
	addu    a0, t3, s4                 
	sra     a2, a2, 16                 
	jal     func_8089D8D0              
	or      a1, s0, $zero              ## a1 = 00000000
	lui     v0, 0x0601                 ## v0 = 06010000
	addiu   v0, v0, 0x6590             ## v0 = 06016590
	sll     t4, v0,  4                 
	srl     t5, t4, 28                 
	sll     t6, t5,  2                 
	addu    t7, s2, t6                 
	lw      t8, 0x0000(t7)             ## 00000000
	and     t9, v0, s3                 
	sll     a2, s1, 16                 
	addu    t0, t8, t9                 
	addu    a0, t0, s4                 
	sra     a2, a2, 16                 
	jal     func_8089D8D0              
	or      a1, s0, $zero              ## a1 = 00000000
	lui     v0, 0x0601                 ## v0 = 06010000
	addiu   v0, v0, 0x6790             ## v0 = 06016790
	sll     t1, v0,  4                 
	srl     t2, t1, 28                 
	sll     t3, t2,  2                 
	addu    t4, s2, t3                 
	lw      t5, 0x0000(t4)             ## 00000000
	and     t6, v0, s3                 
	sll     a2, s1, 16                 
	addu    t7, t5, t6                 
	addu    a0, t7, s4                 
	sra     a2, a2, 16                 
	jal     func_8089D8D0              
	or      a1, s0, $zero              ## a1 = 00000000
	lui     v0, 0x0601                 ## v0 = 06010000
	addiu   v0, v0, 0x5990             ## v0 = 06015990
	sll     t8, v0,  4                 
	srl     t9, t8, 28                 
	sll     t0, t9,  2                 
	addu    t1, s2, t0                 
	lw      t2, 0x0000(t1)             ## 00000000
	and     t3, v0, s3                 
	sll     a2, s1, 16                 
	addu    t4, t2, t3                 
	addu    a0, t4, s4                 
	sra     a2, a2, 16                 
	jal     func_8089D930              
	or      a1, s0, $zero              ## a1 = 00000000
	lui     v0, 0x0601                 ## v0 = 06010000
	addiu   v0, v0, 0x5F90             ## v0 = 06015F90
	sll     t5, v0,  4                 
	srl     t6, t5, 28                 
	sll     t7, t6,  2                 
	addu    t8, s2, t7                 
	lw      t9, 0x0000(t8)             ## 00000000
	and     t0, v0, s3                 
	sll     a2, s1, 16                 
	addu    t1, t9, t0                 
	addu    a0, t1, s4                 
	sra     a2, a2, 16                 
	jal     func_8089D930              
	or      a1, s0, $zero              ## a1 = 00000000
	lui     v0, 0x0601                 ## v0 = 06010000
	addiu   v0, v0, 0x6990             ## v0 = 06016990
	sll     t2, v0,  4                 
	srl     t3, t2, 28                 
	sll     t4, t3,  2                 
	addu    t5, s2, t4                 
	lw      t6, 0x0000(t5)             ## 00000000
	and     t7, v0, s3                 
	sll     a2, s1, 16                 
	addu    t8, t6, t7                 
	addu    a0, t8, s4                 
	sra     a2, a2, 16                 
	jal     func_8089D978              
	or      a1, s0, $zero              ## a1 = 00000000
	lui     v0, 0x0601                 ## v0 = 06010000
	addiu   v0, v0, 0x6E10             ## v0 = 06016E10
	sll     t9, v0,  4                 
	srl     t0, t9, 28                 
	sll     t1, t0,  2                 
	addu    t2, s2, t1                 
	lw      t3, 0x0000(t2)             ## 00000000
	and     t4, v0, s3                 
	sll     a2, s1, 16                 
	addu    t5, t3, t4                 
	addu    a0, t5, s4                 
	sra     a2, a2, 16                 
	jal     func_8089D978              
	or      a1, s0, $zero              ## a1 = 00000000
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0018($sp)            
	lw      s1, 0x001C($sp)            
	lw      s2, 0x0020($sp)            
	lw      s3, 0x0024($sp)            
	lw      s4, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_8089DC54:
	addiu   $sp, $sp, 0xEFA0           ## $sp = FFFFEFA0
	sdc1    $f20, 0x0010($sp)          
	mtc1    a3, $f20                   ## $f20 = 0.00
	sw      s3, 0x0030($sp)            
	sw      s1, 0x0028($sp)            
	lui     v0, 0x8012                 ## v0 = 80120000
	lui     v1, 0x00FF                 ## v1 = 00FF0000
	ori     v1, v1, 0xFFFF             ## v1 = 00FFFFFF
	addiu   v0, v0, 0x0C38             ## v0 = 80120C38
	or      s1, a1, $zero              ## s1 = 00000000
	or      s3, a0, $zero              ## s3 = 00000000
	lui     a3, 0x8000                 ## a3 = 80000000
	sw      $ra, 0x0034($sp)           
	sw      s2, 0x002C($sp)            
	sw      s0, 0x0024($sp)            
	sdc1    $f22, 0x0018($sp)          
	mtc1    a2, $f4                    ## $f4 = 0.00
	lui     $at, 0x4248                ## $at = 42480000
	mtc1    $at, $f6                   ## $f6 = 50.00
	cvt.s.w $f0, $f4                   
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f10                  ## $f10 = 100.00
	sll     t6, s3,  4                 
	sll     t3, s1,  4                 
	srl     t7, t6, 28                 
	mul.s   $f8, $f0, $f6              
	sll     t8, t7,  2                 
	srl     t4, t3, 28                 
	sll     t5, t4,  2                 
	addu    t9, v0, t8                 
	addu    t6, v0, t5                 
	lw      t0, 0x0000(t9)             ## 00000000
	div.s   $f16, $f8, $f10            
	lw      t7, 0x0000(t6)             ## 00000000
	and     t1, s3, v1                 
	and     t8, s1, v1                 
	lui     $at, %hi(var_808A6C30)     ## $at = 808A0000
	addu    t2, t0, t1                 
	addu    t9, t7, t8                 
	addu    s3, t2, a3                 
	addu    s1, t9, a3                 
	lwc1    $f22, %lo(var_808A6C30)($at) 
	swc1    $f0, 0x004C($sp)           
	or      s0, $zero, $zero           ## s0 = 00000000
	trunc.w.s $f18, $f16                 
	mfc1    s2, $f18                   
	nop
	sll     s2, s2, 16                 
	sra     s2, s2, 16                 
	lwc1    $f0, 0x004C($sp)           
lbl_8089DD1C:
	bgez    s0, lbl_8089DD2C           
	sra     t1, s0,  5                 
	addiu   $at, s0, 0x001F            ## $at = 0000001F
	sra     t1, $at,  5                
lbl_8089DD2C:
	addu    t2, t1, s2                 
	andi    t3, t2, 0x001F             ## t3 = 00000000
	mtc1    t3, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	mul.s   $f12, $f6, $f22            
	jal     func_800CF470              
	nop
	mul.s   $f8, $f0, $f20             
	sll     t4, s0,  1                 
	sll     t6, s0,  1                 
	addiu   s0, s0, 0x0020             ## s0 = 00000020
	sll     s0, s0, 16                 
	addiu   t5, $sp, 0x0054            ## t5 = FFFFEFF4
	sra     s0, s0, 16                 
	trunc.w.s $f10, $f8                  
	addu    v1, t4, t5                 
	addu    a0, s1, t6                 
	or      v0, $zero, $zero           ## v0 = 00000000
	mfc1    a1, $f10                   
	nop
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
lbl_8089DD88:
	sll     t8, v0,  1                 
	addu    t1, a1, v0                 
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	sll     v0, v0, 16                 
	andi    t2, t1, 0x001F             ## t2 = 00000000
	addu    t9, a0, t8                 
	lhu     t0, 0x0000(t9)             ## 00000000
	sra     v0, v0, 16                 
	sll     t3, t2,  1                 
	slti    $at, v0, 0x0020            
	addu    t4, v1, t3                 
	bne     $at, $zero, lbl_8089DD88   
	sh      t0, 0x0000(t4)             ## 00000000
	slti    $at, s0, 0x0800            
	bnel    $at, $zero, lbl_8089DD1C   
	lwc1    $f0, 0x004C($sp)           
	lui     $at, 0x42A0                ## $at = 42A00000
	mtc1    $at, $f18                  ## $f18 = 80.00
	lwc1    $f16, 0x004C($sp)          
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f6                   ## $f6 = 100.00
	mul.s   $f4, $f16, $f18            
	or      s0, $zero, $zero           ## s0 = 00000000
	div.s   $f8, $f4, $f6              
	trunc.w.s $f10, $f8                  
	mfc1    s1, $f10                   
	nop
	sll     s1, s1, 16                 
	sra     s1, s1, 16                 
	addu    t6, s0, s1                 
lbl_8089DE00:
	andi    t7, t6, 0x001F             ## t7 = 00000000
	mtc1    t7, $f16                   ## $f16 = 0.00
	nop
	cvt.s.w $f18, $f16                 
	mul.s   $f12, $f18, $f22           
	jal     func_800CF470              
	nop
	mul.s   $f4, $f0, $f20             
	sll     t8, s0,  1                 
	sll     t1, s0,  1                 
	addiu   s0, s0, 0x0001             ## s0 = 00000001
	sll     s0, s0, 16                 
	addiu   t9, $sp, 0x0054            ## t9 = FFFFEFF4
	sra     s0, s0, 16                 
	trunc.w.s $f6, $f4                   
	addu    v1, t8, t9                 
	addu    a0, s3, t1                 
	or      v0, $zero, $zero           ## v0 = 00000000
	mfc1    a1, $f6                    
	nop
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	sll     a1, a1,  5                 
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	addu    t5, a1, v0                 
lbl_8089DE68:
	andi    t6, t5, 0x07FF             ## t6 = 00000000
	sll     t3, v0,  1                 
	addu    t0, v1, t3                 
	sll     t7, t6, 16                 
	lhu     t4, 0x0000(t0)             ## 00000000
	sra     t8, t7, 16                 
	sll     t9, t8,  1                 
	addu    t1, a0, t9                 
	sh      t4, 0x0000(t1)             ## 00000000
	addiu   v0, v0, 0x0020             ## v0 = 00000020
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x0800            
	bnel    $at, $zero, lbl_8089DE68   
	addu    t5, a1, v0                 
	slti    $at, s0, 0x0020            
	bnel    $at, $zero, lbl_8089DE00   
	addu    t6, s0, s1                 
	lw      $ra, 0x0034($sp)           
	ldc1    $f20, 0x0010($sp)          
	ldc1    $f22, 0x0018($sp)          
	lw      s0, 0x0024($sp)            
	lw      s1, 0x0028($sp)            
	lw      s2, 0x002C($sp)            
	lw      s3, 0x0030($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x1060           ## $sp = 00000000


func_8089DED4:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	lh      s0, 0x003E($sp)            
	sw      $ra, 0x001C($sp)           
	lui     v1, 0x0001                 ## v1 = 00010000
	addu    v1, v1, a0                 
	lw      v1, 0x1E10(v1)             ## 00011E10
	blez    s0, lbl_8089DFA8           
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_8089DEF8:
	lbu     t6, 0x0024(v1)             ## 00010024
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	sll     v0, v0, 16                 
	bne     t6, $zero, lbl_8089DF9C    
	sra     v0, v0, 16                 
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	sb      t7, 0x0024(v1)             ## 00010024
	lw      t9, 0x0000(a1)             ## 00000000
	lui     $at, 0x447A                ## $at = 447A0000
	mtc1    $at, $f6                   ## $f6 = 1000.00
	sw      t9, 0x0000(v1)             ## 00010000
	lw      t8, 0x0004(a1)             ## 00000004
	addiu   t4, $zero, 0x00FF          ## t4 = 000000FF
	lui     $at, 0x4120                ## $at = 41200000
	sw      t8, 0x0004(v1)             ## 00010004
	lw      t9, 0x0008(a1)             ## 00000008
	mtc1    $at, $f12                  ## $f12 = 10.00
	sw      t9, 0x0008(v1)             ## 00010008
	lw      t1, 0x0000(a2)             ## 00000000
	sw      t1, 0x000C(v1)             ## 0001000C
	lw      t0, 0x0004(a2)             ## 00000004
	sw      t0, 0x0010(v1)             ## 00010010
	lw      t1, 0x0008(a2)             ## 00000008
	sw      t1, 0x0014(v1)             ## 00010014
	lw      t3, 0x0000(a3)             ## 00000000
	sw      t3, 0x0018(v1)             ## 00010018
	lw      t2, 0x0004(a3)             ## 00000004
	sw      t2, 0x001C(v1)             ## 0001001C
	lw      t3, 0x0008(a3)             ## 00000008
	sw      t3, 0x0020(v1)             ## 00010020
	lwc1    $f4, 0x0038($sp)           
	sh      t4, 0x002A(v1)             ## 0001002A
	div.s   $f8, $f4, $f6              
	swc1    $f8, 0x002C(v1)            ## 0001002C
	jal     func_80026D64              
	sw      v1, 0x0020($sp)            
	trunc.w.s $f10, $f0                  
	lw      v1, 0x0020($sp)            
	mfc1    t8, $f10                   
	beq     $zero, $zero, lbl_8089DFA8 
	sb      t8, 0x0025(v1)             ## 00000025
lbl_8089DF9C:
	slt     $at, v0, s0                
	bne     $at, $zero, lbl_8089DEF8   
	addiu   v1, v1, 0x0030             ## v1 = 00000030
lbl_8089DFA8:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089DFBC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lw      a2, 0x1C4C(a1)             ## 00001C4C
	lui     $at, 0x4220                ## $at = 42200000
	or      v0, $zero, $zero           ## v0 = 00000000
	beq     a2, $zero, lbl_8089E06C    
	nop
	mtc1    $at, $f16                  ## $f16 = 40.00
	nop
lbl_8089DFE0:
	bnel    a2, a0, lbl_8089DFF4       
	lwc1    $f4, 0x0024(a2)            ## 00000024
	beq     $zero, $zero, lbl_8089E064 
	lw      a2, 0x0124(a2)             ## 00000124
	lwc1    $f4, 0x0024(a2)            ## 00000024
lbl_8089DFF4:
	lwc1    $f6, 0x040C(a0)            ## 0000040C
	lwc1    $f8, 0x0028(a2)            ## 00000028
	lwc1    $f10, 0x0410(a0)           ## 00000410
	sub.s   $f2, $f4, $f6              
	lwc1    $f4, 0x0414(a0)            ## 00000414
	lwc1    $f18, 0x002C(a2)           ## 0000002C
	sub.s   $f12, $f8, $f10            
	abs.s   $f0, $f2                   
	sub.s   $f14, $f18, $f4            
	c.lt.s  $f0, $f16                  
	nop
	bc1fl   lbl_8089E064               
	lw      a2, 0x0124(a2)             ## 00000124
	abs.s   $f0, $f12                  
	c.lt.s  $f0, $f16                  
	nop
	bc1fl   lbl_8089E064               
	lw      a2, 0x0124(a2)             ## 00000124
	abs.s   $f0, $f14                  
	c.lt.s  $f0, $f16                  
	nop
	bc1fl   lbl_8089E064               
	lw      a2, 0x0124(a2)             ## 00000124
	jal     func_80020EB4              
	or      a0, a2, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089E06C 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	lw      a2, 0x0124(a2)             ## 00000124
lbl_8089E064:
	bne     a2, $zero, lbl_8089DFE0    
	nop
lbl_8089E06C:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089E07C:
	addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
	sw      s3, 0x0040($sp)            
	sw      s0, 0x0034($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s3, a1, $zero              ## s3 = 00000000
	sw      $ra, 0x0044($sp)           
	sw      s2, 0x003C($sp)            
	sw      s1, 0x0038($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	addu    $at, $at, s3               
	addiu   t6, s0, 0x0910             ## t6 = 00000910
	lui     a1, %hi(var_808A6A58)      ## a1 = 808A0000
	sw      t6, 0x1E10($at)            ## 00011E10
	addiu   a1, a1, %lo(var_808A6A58)  ## a1 = 808A6A58
	jal     func_80063F7C              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a1, 0x460F                 ## a1 = 460F0000
	lui     a2, 0x8002                 ## a2 = 80020000
	addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
	ori     a1, a1, 0xC000             ## a1 = 460FC000
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	jal     func_8001EC20              
	lui     a3, 0x437A                 ## a3 = 437A0000
	lui     a1, 0x3C23                 ## a1 = 3C230000
	ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
	jal     func_80020F88              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     s2, 0x0601                 ## s2 = 06010000
	addiu   s2, s2, 0xF0D8             ## s2 = 0600F0D8
	addiu   s1, s0, 0x013C             ## s1 = 0000013C
	lui     a2, 0x0602                 ## a2 = 06020000
	addiu   a2, a2, 0x9F10             ## a2 = 06019F10
	or      a1, s1, $zero              ## a1 = 0000013C
	or      a3, s2, $zero              ## a3 = 0600F0D8
	or      a0, s3, $zero              ## a0 = 00000000
	sw      $zero, 0x0010($sp)         
	sw      $zero, 0x0014($sp)         
	jal     func_8008C684              
	sw      $zero, 0x0018($sp)         
	or      a0, s1, $zero              ## a0 = 0000013C
	jal     func_8008D2D4              
	or      a1, s2, $zero              ## a1 = 0600F0D8
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f4                   ## $f4 = 1.00
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, s3, $zero              ## a1 = 00000000
	jal     func_8089E398              
	swc1    $f4, 0x01E8(s0)            ## 000001E8
	addiu   t7, $zero, 0x000C          ## t7 = 0000000C
	sh      t7, 0x0184(s0)             ## 00000184
	lui     $at, %hi(var_808A6C34)     ## $at = 808A0000
	lwc1    $f6, %lo(var_808A6C34)($at) 
	lui     $at, 0x447A                ## $at = 447A0000
	mtc1    $at, $f8                   ## $f8 = 1000.00
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f10                  ## $f10 = 2.00
	addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
	sb      t8, 0x00AE(s0)             ## 000000AE
	lui     $at, %hi(var_808A6C38)     ## $at = 808A0000
	swc1    $f6, 0x020C(s0)            ## 0000020C
	swc1    $f8, 0x0210(s0)            ## 00000210
	swc1    $f10, 0x0214(s0)           ## 00000214
	lwc1    $f16, %lo(var_808A6C38)($at) 
	addiu   s1, s0, 0x0430             ## s1 = 00000430
	or      a1, s1, $zero              ## a1 = 00000430
	or      a0, s3, $zero              ## a0 = 00000000
	jal     func_8004A484              
	swc1    $f16, 0x0218(s0)           ## 00000218
	lui     a3, %hi(var_808A3A3C)      ## a3 = 808A0000
	addiu   t9, s0, 0x0450             ## t9 = 00000450
	sw      t9, 0x0010($sp)            
	addiu   a3, a3, %lo(var_808A3A3C)  ## a3 = 808A3A3C
	or      a0, s3, $zero              ## a0 = 00000000
	or      a1, s1, $zero              ## a1 = 00000430
	jal     func_8004A874              
	or      a2, s0, $zero              ## a2 = 00000000
	lui     a1, 0x0001                 ## a1 = 00010000
	addu    a1, a1, s3                 
	lb      a1, 0x1CBC(a1)             ## 00011CBC
	jal     func_80020640              
	or      a0, s3, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_8089E32C    
	lui     a1, 0x8012                 ## a1 = 80120000
	lui     a2, 0x00FF                 ## a2 = 00FF0000
	ori     a2, a2, 0xFFFF             ## a2 = 00FFFFFF
	addiu   a1, a1, 0x0C38             ## a1 = 80120C38
	lui     a3, 0x8000                 ## a3 = 80000000
	lui     v0, 0x0300                 ## v0 = 03000000
	lui     v1, %hi(var_808A5A58)      ## v1 = 808A0000
	addiu   v0, v0, 0x21C8             ## v0 = 030021C8
	addiu   v1, v1, %lo(var_808A5A58)  ## v1 = 808A5A58
	sll     t0, v0,  4                 
	sll     t7, v1,  4                 
	srl     t1, t0, 28                 
	srl     t8, t7, 28                 
	sll     t2, t1,  2                 
	sll     t9, t8,  2                 
	addu    t3, a1, t2                 
	addu    t0, a1, t9                 
	lw      t4, 0x0000(t3)             ## 00000000
	lw      t1, 0x0000(t0)             ## 00000000
	and     t5, v0, a2                 
	and     t2, v1, a2                 
	addu    t6, t4, t5                 
	addu    t3, t1, t2                 
	addu    s1, t6, a3                 
	addu    s2, t3, a3                 
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, %hi(var_808A6C3C)     ## $at = 808A0000
	lwc1    $f18, %lo(var_808A6C3C)($at) 
	lui     $at, %hi(var_808A6C40)     ## $at = 808A0000
	lwc1    $f4, %lo(var_808A6C40)($at) 
	lui     $at, %hi(var_808A6C44)     ## $at = 808A0000
	lwc1    $f6, %lo(var_808A6C44)($at) 
	addiu   a0, s3, 0x1C24             ## a0 = 00001C24
	sw      a0, 0x0048($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	or      a2, s3, $zero              ## a2 = 00000000
	addiu   a3, $zero, 0x005D          ## a3 = 0000005D
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x0024($sp)         
	sw      $zero, 0x0028($sp)         
	swc1    $f18, 0x0010($sp)          
	swc1    $f4, 0x0014($sp)           
	jal     func_800253F0              
	swc1    $f6, 0x0018($sp)           
	lui     $at, %hi(var_808A6C48)     ## $at = 808A0000
	lwc1    $f8, %lo(var_808A6C48)($at) 
	lui     $at, %hi(var_808A6C4C)     ## $at = 808A0000
	lwc1    $f10, %lo(var_808A6C4C)($at) 
	lui     a3, 0xC45E                 ## a3 = C45E0000
	addiu   t4, $zero, 0x6000          ## t4 = 00006000
	sw      t4, 0x0024($sp)            
	ori     a3, a3, 0x8000             ## a3 = C45E8000
	lw      a0, 0x0048($sp)            
	or      a1, s3, $zero              ## a1 = 00000000
	addiu   a2, $zero, 0x0059          ## a2 = 00000059
	sw      $zero, 0x0018($sp)         
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0020($sp)         
	swc1    $f8, 0x0010($sp)           
	jal     func_80025110              ## ActorSpawn
	swc1    $f10, 0x0014($sp)          
	lui     $at, %hi(var_808A6C50)     ## $at = 808A0000
	lwc1    $f16, %lo(var_808A6C50)($at) 
	lui     $at, %hi(var_808A6C54)     ## $at = 808A0000
	lwc1    $f18, %lo(var_808A6C54)($at) 
	lui     a3, 0xC42C                 ## a3 = C42C0000
	ori     a3, a3, 0x8000             ## a3 = C42C8000
	lw      a0, 0x0048($sp)            
	or      a1, s3, $zero              ## a1 = 00000000
	addiu   a2, $zero, 0x005F          ## a2 = 0000005F
	sw      $zero, 0x0018($sp)         
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x0024($sp)         
	swc1    $f16, 0x0010($sp)          
	jal     func_80025110              ## ActorSpawn
	swc1    $f18, 0x0014($sp)          
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_8089E304:
	sll     v0, v1,  1                 
	addiu   v1, v1, 0x0001             ## v1 = 00000001
	sll     v1, v1, 16                 
	addu    t5, s2, v0                 
	lhu     t6, 0x0000(t5)             ## 00000000
	sra     v1, v1, 16                 
	slti    $at, v1, 0x0800            
	addu    t7, s1, v0                 
	bne     $at, $zero, lbl_8089E304   
	sh      t6, 0x0000(t7)             ## 00000000
lbl_8089E32C:
	lw      t8, 0x0004(s0)             ## 00000004
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	and     t9, t8, $at                
	sw      t9, 0x0004(s0)             ## 00000004
	lw      $ra, 0x0044($sp)           
	lw      s0, 0x0034($sp)            
	lw      s1, 0x0038($sp)            
	lw      s2, 0x003C($sp)            
	lw      s3, 0x0040($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0060           ## $sp = 00000000


func_8089E358:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	lw      a1, 0x001C($sp)            
	jal     func_8008D6D0              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	lw      a1, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_8004A550              
	addiu   a1, a1, 0x0430             ## a1 = 00000430
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089E398:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	lui     a0, 0x0601                 ## a0 = 06010000
	jal     func_8008A194              
	addiu   a0, a0, 0xF0D8             ## a0 = 0600F0D8
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC120                ## $at = C1200000
	lw      v1, 0x0028($sp)            
	cvt.s.w $f6, $f4                   
	mtc1    $at, $f8                   ## $f8 = -10.00
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0xF0D8             ## a1 = 0600F0D8
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f6, 0x0010($sp)           
	sw      $zero, 0x0014($sp)         
	addiu   a0, v1, 0x013C             ## a0 = 0000013C
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
	lw      v1, 0x0028($sp)            
	lui     t6, %hi(func_8089E418)     ## t6 = 808A0000
	addiu   t6, t6, %lo(func_8089E418) ## t6 = 8089E418
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	sw      t6, 0x0180(v1)             ## 00000180
	sh      $zero, 0x018C(v1)          ## 0000018C
	sh      t7, 0x01AC(v1)             ## 000001AC
	lw      $ra, 0x0024($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089E418:
	addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	or      a2, a1, $zero              ## a2 = 00000000
	lw      t6, 0x1C44(a2)             ## 00001C44
	sw      a2, 0x007C($sp)            
	or      a0, a2, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_8009D2F0              
	sw      t6, 0x006C($sp)            
	sw      v0, 0x0070($sp)            
	lh      v1, 0x0186(s0)             ## 00000186
	beq     v1, $zero, lbl_8089E458    
	addiu   t7, v1, 0xFFFF             ## t7 = FFFFFFFF
	sh      t7, 0x0186(s0)             ## 00000186
lbl_8089E458:
	lh      v1, 0x0188(s0)             ## 00000188
	beq     v1, $zero, lbl_8089E468    
	addiu   t8, v1, 0xFFFF             ## t8 = FFFFFFFF
	sh      t8, 0x0188(s0)             ## 00000188
lbl_8089E468:
	lh      v0, 0x018A(s0)             ## 0000018A
	beq     v0, $zero, lbl_8089E478    
	addiu   t9, v0, 0xFFFF             ## t9 = FFFFFFFF
	sh      t9, 0x018A(s0)             ## 0000018A
lbl_8089E478:
	lhu     t0, 0x018C(s0)             ## 0000018C
	sltiu   $at, t0, 0x0005            
	beq     $at, $zero, lbl_8089EE40   
	sll     t0, t0,  2                 
	lui     $at, %hi(var_808A6C58)     ## $at = 808A0000
	addu    $at, $at, t0               
	lw      t0, %lo(var_808A6C58)($at) 
	jr      t0                         
	nop
var_8089E49C:
	lw      t1, 0x006C($sp)            
	lui     $at, %hi(var_808A6C6C)     ## $at = 808A0000
	lwc1    $f6, %lo(var_808A6C6C)($at) 
	lwc1    $f4, 0x0028(t1)            ## 00000028
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	lui     $at, %hi(var_808A6C70)     ## $at = 808A0000
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_8089EE44               
	lh      t3, 0x01A4(s0)             ## 000001A4
	sh      v0, 0x018C(s0)             ## 0000018C
	lwc1    $f8, %lo(var_808A6C70)($at) 
	lui     $at, %hi(var_808A6C74)     ## $at = 808A0000
	swc1    $f8, 0x0024(s0)            ## 00000024
	lwc1    $f10, %lo(var_808A6C74)($at) 
	sh      v0, 0x0190(s0)             ## 00000190
	beq     $zero, $zero, lbl_8089EE40 
	swc1    $f10, 0x002C(s0)           ## 0000002C
var_8089E4E4:
	lw      a0, 0x007C($sp)            
	jal     func_80052328              
	addiu   a1, a0, 0x1D64             ## a1 = 00001D64
	lw      a0, 0x007C($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_800218EC              
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	jal     func_8009D284              
	lw      a0, 0x007C($sp)            
	jal     func_8009D0F0              
	lw      a0, 0x007C($sp)            
	sh      v0, 0x01A4(s0)             ## 000001A4
	lw      a0, 0x007C($sp)            
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_8009D1AC              
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	lw      a0, 0x007C($sp)            
	lh      a1, 0x01A4(s0)             ## 000001A4
	jal     func_8009D1AC              
	addiu   a2, $zero, 0x0007          ## a2 = 00000007
	lui     $at, %hi(var_808A6C78)     ## $at = 808A0000
	lwc1    $f0, %lo(var_808A6C78)($at) 
	lui     $at, 0x43F0                ## $at = 43F00000
	mtc1    $at, $f16                  ## $f16 = 480.00
	lui     $at, 0x4248                ## $at = 42480000
	mtc1    $at, $f4                   ## $f4 = 50.00
	sub.s   $f18, $f0, $f16            
	addiu   t3, $zero, 0x0002          ## t3 = 00000002
	addiu   t4, $zero, 0x003C          ## t4 = 0000003C
	addiu   t5, $zero, 0x00A0          ## t5 = 000000A0
	sh      t3, 0x018C(s0)             ## 0000018C
	sh      t4, 0x0186(s0)             ## 00000186
	sh      t5, 0x0188(s0)             ## 00000188
	add.s   $f6, $f18, $f4             
	lw      t6, 0x006C($sp)            
	swc1    $f0, 0x0028(t6)            ## 00000028
	swc1    $f6, 0x041C(s0)            ## 0000041C
var_8089E578:
	lh      v1, 0x0188(s0)             ## 00000188
	lw      v0, 0x006C($sp)            
	addiu   t7, $zero, 0x3FFF          ## t7 = 00003FFF
	slti    $at, v1, 0x0083            
	bne     $at, $zero, lbl_8089E5FC   
	or      a1, s0, $zero              ## a1 = 00000000
	lui     $at, %hi(var_808A6C7C)     ## $at = 808A0000
	lwc1    $f0, %lo(var_808A6C7C)($at) 
	lui     $at, %hi(var_808A6C80)     ## $at = 808A0000
	mtc1    $zero, $f10                ## $f10 = 0.00
	swc1    $f0, 0x0024(v0)            ## 00000024
	lwc1    $f8, %lo(var_808A6C80)($at) 
	sh      t7, 0x0032(v0)             ## 00000032
	lh      t8, 0x0032(v0)             ## 00000032
	swc1    $f10, 0x0068(v0)           ## 00000068
	swc1    $f8, 0x002C(v0)            ## 0000002C
	sh      t8, 0x00B6(v0)             ## 000000B6
	lui     $at, 0x42C8                ## $at = 42C80000
	swc1    $f0, 0x0418(s0)            ## 00000418
	lwc1    $f16, 0x002C(v0)           ## 0000002C
	mtc1    $at, $f18                  ## $f18 = 100.00
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f10                  ## $f10 = 20.00
	sub.s   $f4, $f16, $f18            
	lh      v1, 0x0188(s0)             ## 00000188
	swc1    $f4, 0x0420(s0)            ## 00000420
	lwc1    $f6, 0x0024(v0)            ## 00000024
	swc1    $f6, 0x0424(s0)            ## 00000424
	lwc1    $f8, 0x0028(v0)            ## 00000028
	add.s   $f16, $f8, $f10            
	swc1    $f16, 0x0428(s0)           ## 00000428
	lwc1    $f18, 0x002C(v0)           ## 0000002C
	swc1    $f18, 0x042C(s0)           ## 0000042C
lbl_8089E5FC:
	addiu   $at, $zero, 0x006E         ## $at = 0000006E
	bne     v1, $at, lbl_8089E61C      
	lw      v0, 0x006C($sp)            
	lw      a0, 0x007C($sp)            
	jal     func_800218EC              
	addiu   a2, $zero, 0x0009          ## a2 = 00000009
	lh      v1, 0x0188(s0)             ## 00000188
	lw      v0, 0x006C($sp)            
lbl_8089E61C:
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bne     v1, $at, lbl_8089E63C      
	lw      a0, 0x007C($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_800218EC              
	addiu   a2, $zero, 0x000C          ## a2 = 0000000C
	lh      v1, 0x0188(s0)             ## 00000188
	lw      v0, 0x006C($sp)            
lbl_8089E63C:
	slti    $at, v1, 0x0006            
	beq     $at, $zero, lbl_8089E654   
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t9, $zero, 0xBFFF          ## t9 = FFFFBFFF
	beq     $zero, $zero, lbl_8089E65C 
	sh      t9, 0x00B6(v0)             ## 000000B6
lbl_8089E654:
	addiu   t0, $zero, 0x3FFF          ## t0 = 00003FFF
	sh      t0, 0x00B6(v0)             ## 000000B6
lbl_8089E65C:
	lh      t1, 0x0188(s0)             ## 00000188
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	addiu   t3, $zero, 0x0002          ## t3 = 00000002
	slti    $at, t1, 0x003C            
	beql    $at, $zero, lbl_8089E680   
	sh      t3, 0x01AC(s0)             ## 000001AC
	beq     $zero, $zero, lbl_8089E680 
	sh      t2, 0x01AC(s0)             ## 000001AC
	sh      t3, 0x01AC(s0)             ## 000001AC
lbl_8089E680:
	jal     func_8089FA24              
	lw      a1, 0x007C($sp)            
	lh      v1, 0x0186(s0)             ## 00000186
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lui     a0, 0x1001                 ## a0 = 10010000
	bne     v1, $at, lbl_8089E6A8      
	nop
	jal     func_800CAA70              
	ori     a0, a0, 0x00FF             ## a0 = 100100FF
	lh      v1, 0x0186(s0)             ## 00000186
lbl_8089E6A8:
	bne     v1, $zero, lbl_8089E794    
	lw      t4, 0x006C($sp)            
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f6                   ## $f6 = 30.00
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f16                  ## $f16 = 20.00
	lwc1    $f10, 0x01F4(s0)           ## 000001F4
	lwc1    $f4, 0x03DC(s0)            ## 000003DC
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	mul.s   $f18, $f10, $f16           
	add.s   $f8, $f4, $f6              
	mtc1    $zero, $f4                 ## $f4 = 0.00
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x0418             ## a0 = 00000418
	mfc1    a1, $f8                    
	swc1    $f4, 0x0010($sp)           
	mfc1    a3, $f18                   
	jal     func_80064178              
	nop
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f8                   ## $f8 = 20.00
	lwc1    $f6, 0x01F4(s0)            ## 000001F4
	mtc1    $zero, $f16                ## $f16 = 0.00
	lw      a1, 0x03E0(s0)             ## 000003E0
	mul.s   $f10, $f6, $f8             
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x041C             ## a0 = 0000041C
	swc1    $f16, 0x0010($sp)          
	mfc1    a3, $f10                   
	jal     func_80064178              
	nop
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f4                   ## $f4 = 10.00
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f10                  ## $f10 = 20.00
	lwc1    $f8, 0x01F4(s0)            ## 000001F4
	lwc1    $f18, 0x03E4(s0)           ## 000003E4
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	mul.s   $f16, $f8, $f10            
	add.s   $f6, $f18, $f4             
	mtc1    $zero, $f18                ## $f18 = 0.00
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x0420             ## a0 = 00000420
	mfc1    a1, $f6                    
	swc1    $f18, 0x0010($sp)          
	mfc1    a3, $f16                   
	jal     func_80064178              
	nop
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     a3, 0x3CA3                 ## a3 = 3CA30000
	ori     a3, a3, 0xD70A             ## a3 = 3CA3D70A
	addiu   a0, s0, 0x01F4             ## a0 = 000001F4
	lui     a1, 0x3F80                 ## a1 = 3F800000
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_80064178              
	swc1    $f4, 0x0010($sp)           
	beq     $zero, $zero, lbl_8089E7C0 
	nop
lbl_8089E794:
	lwc1    $f6, 0x0024(t4)            ## 00000024
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f10                  ## $f10 = 20.00
	swc1    $f6, 0x0424(s0)            ## 00000424
	lw      t5, 0x006C($sp)            
	lwc1    $f8, 0x0028(t5)            ## 00000028
	add.s   $f16, $f8, $f10            
	swc1    $f16, 0x0428(s0)           ## 00000428
	lw      t6, 0x006C($sp)            
	lwc1    $f18, 0x002C(t6)           ## 0000002C
	swc1    $f18, 0x042C(s0)           ## 0000042C
lbl_8089E7C0:
	lui     t7, 0x8012                 ## t7 = 80120000
	lhu     t7, -0x4B4E(t7)            ## 8011B4B2
	andi    t8, t7, 0x0002             ## t8 = 00000000
	beql    t8, $zero, lbl_8089E884    
	lh      t6, 0x0188(s0)             ## 00000188
	lh      t9, 0x0188(s0)             ## 00000188
	addiu   $at, $zero, 0x0064         ## $at = 00000064
	addiu   t0, $zero, 0x3FFF          ## t0 = 00003FFF
	bne     t9, $at, lbl_8089EE40      
	addiu   t1, $zero, 0x0002          ## t1 = 00000002
	lui     $at, %hi(var_808A6C84)     ## $at = 808A0000
	lwc1    $f4, %lo(var_808A6C84)($at) 
	lui     $at, %hi(var_808A6C88)     ## $at = 808A0000
	mtc1    $zero, $f8                 ## $f8 = 0.00
	swc1    $f4, 0x0024(s0)            ## 00000024
	lwc1    $f6, %lo(var_808A6C88)($at) 
	addiu   t2, $zero, 0x0004          ## t2 = 00000004
	addiu   t3, $zero, 0x001E          ## t3 = 0000001E
	addiu   t4, $zero, 0x0096          ## t4 = 00000096
	lui     a0, 0x0601                 ## a0 = 06010000
	sh      t0, 0x0032(s0)             ## 00000032
	sh      $zero, 0x0192(s0)          ## 00000192
	sh      t1, 0x0190(s0)             ## 00000190
	sh      t2, 0x018C(s0)             ## 0000018C
	sh      t3, 0x0186(s0)             ## 00000186
	sh      t4, 0x0188(s0)             ## 00000188
	addiu   a0, a0, 0x8EEC             ## a0 = 06008EEC
	swc1    $f8, 0x01F4(s0)            ## 000001F4
	jal     func_8008A194              
	swc1    $f6, 0x002C(s0)            ## 0000002C
	mtc1    v0, $f10                   ## $f10 = 0.00
	mtc1    $zero, $f18                ## $f18 = 0.00
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	cvt.s.w $f16, $f10                 
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   t5, $zero, 0x0002          ## t5 = 00000002
	sw      t5, 0x0014($sp)            
	addiu   a1, a1, 0x8EEC             ## a1 = 06008EEC
	sw      a0, 0x003C($sp)            
	swc1    $f16, 0x0010($sp)          
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_8008D17C              
	swc1    $f18, 0x0018($sp)          
	jal     func_8008C9C0              
	lw      a0, 0x003C($sp)            
	beq     $zero, $zero, lbl_8089EE44 
	lh      t3, 0x01A4(s0)             ## 000001A4
	lh      t6, 0x0188(s0)             ## 00000188
lbl_8089E884:
	addiu   t7, $zero, 0x0003          ## t7 = 00000003
	addiu   t8, $zero, 0x0014          ## t8 = 00000014
	bnel    t6, $zero, lbl_8089EE44    
	lh      t3, 0x01A4(s0)             ## 000001A4
	mtc1    $zero, $f4                 ## $f4 = 0.00
	sh      t7, 0x018C(s0)             ## 0000018C
	sh      t8, 0x018E(s0)             ## 0000018E
	beq     $zero, $zero, lbl_8089EE40 
	swc1    $f4, 0x01F4(s0)            ## 000001F4
var_8089E8A8:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8089FA24              
	lw      a1, 0x007C($sp)            
	lh      t9, 0x018E(s0)             ## 0000018E
	lui     $at, %hi(var_808A6C8C)     ## $at = 808A0000
	lwc1    $f10, %lo(var_808A6C8C)($at) 
	mtc1    t9, $f6                    ## $f6 = 0.00
	nop
	cvt.s.w $f8, $f6                   
	mul.s   $f12, $f8, $f10            
	jal     func_800CF470              
	nop
	lui     $at, %hi(var_808A6C90)     ## $at = 808A0000
	lwc1    $f16, %lo(var_808A6C90)($at) 
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     a3, 0x3C23                 ## a3 = 3C230000
	mul.s   $f18, $f0, $f16            
	ori     a3, a3, 0xD70A             ## a3 = 3C23D70A
	addiu   a0, s0, 0x01FC             ## a0 = 000001FC
	lui     a2, 0x3F80                 ## a2 = 3F800000
	swc1    $f4, 0x0010($sp)           
	mfc1    a1, $f18                   
	jal     func_80064178              
	nop
	lui     $at, 0x42B4                ## $at = 42B40000
	mtc1    $at, $f8                   ## $f8 = 90.00
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f18                  ## $f18 = 20.00
	lwc1    $f16, 0x01F4(s0)           ## 000001F4
	lwc1    $f6, 0x03DC(s0)            ## 000003DC
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	mul.s   $f4, $f16, $f18            
	add.s   $f10, $f6, $f8             
	mtc1    $zero, $f6                 ## $f6 = 0.00
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x0418             ## a0 = 00000418
	mfc1    a1, $f10                   
	swc1    $f6, 0x0010($sp)           
	mfc1    a3, $f4                    
	jal     func_80064178              
	nop
	lui     $at, 0x4248                ## $at = 42480000
	mtc1    $at, $f10                  ## $f10 = 50.00
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f4                   ## $f4 = 20.00
	lwc1    $f18, 0x01F4(s0)           ## 000001F4
	lwc1    $f8, 0x03E0(s0)            ## 000003E0
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	mul.s   $f6, $f18, $f4             
	add.s   $f16, $f8, $f10            
	mtc1    $zero, $f8                 ## $f8 = 0.00
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x041C             ## a0 = 0000041C
	mfc1    a1, $f16                   
	swc1    $f8, 0x0010($sp)           
	mfc1    a3, $f6                    
	jal     func_80064178              
	nop
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f16                  ## $f16 = 20.00
	lwc1    $f10, 0x01F4(s0)           ## 000001F4
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lw      a1, 0x03E4(s0)             ## 000003E4
	mul.s   $f18, $f10, $f16           
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x0420             ## a0 = 00000420
	swc1    $f4, 0x0010($sp)           
	mfc1    a3, $f18                   
	jal     func_80064178              
	nop
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f8                   ## $f8 = 10.00
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f18                  ## $f18 = 20.00
	lwc1    $f16, 0x01F4(s0)           ## 000001F4
	lwc1    $f6, 0x03E0(s0)            ## 000003E0
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	mul.s   $f4, $f16, $f18            
	sub.s   $f10, $f6, $f8             
	mtc1    $zero, $f6                 ## $f6 = 0.00
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x0428             ## a0 = 00000428
	mfc1    a1, $f10                   
	swc1    $f6, 0x0010($sp)           
	mfc1    a3, $f4                    
	jal     func_80064178              
	nop
	mtc1    $zero, $f8                 ## $f8 = 0.00
	lui     a3, 0x3CA3                 ## a3 = 3CA30000
	ori     a3, a3, 0xD70A             ## a3 = 3CA3D70A
	addiu   a0, s0, 0x01F4             ## a0 = 000001F4
	lui     a1, 0x3F80                 ## a1 = 3F800000
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_80064178              
	swc1    $f8, 0x0010($sp)           
	lw      t0, 0x006C($sp)            
	lwc1    $f16, 0x0024(s0)           ## 00000024
	lui     $at, 0x4348                ## $at = 43480000
	lwc1    $f10, 0x0024(t0)           ## 00000024
	mtc1    $at, $f18                  ## $f18 = 200.00
	lui     a0, 0x0601                 ## a0 = 06010000
	sub.s   $f0, $f10, $f16            
	addiu   t1, $zero, 0x0004          ## t1 = 00000004
	addiu   t2, $zero, 0x001E          ## t2 = 0000001E
	addiu   t3, $zero, 0x0096          ## t3 = 00000096
	abs.s   $f0, $f0                   
	addiu   a0, a0, 0x8EEC             ## a0 = 06008EEC
	c.lt.s  $f0, $f18                  
	nop
	bc1fl   lbl_8089EE44               
	lh      t3, 0x01A4(s0)             ## 000001A4
	mtc1    $zero, $f4                 ## $f4 = 0.00
	sh      t1, 0x018C(s0)             ## 0000018C
	sh      t2, 0x0186(s0)             ## 00000186
	sh      t3, 0x0188(s0)             ## 00000188
	jal     func_8008A194              
	swc1    $f4, 0x01F4(s0)            ## 000001F4
	mtc1    v0, $f6                    ## $f6 = 0.00
	lui     $at, 0xC0A0                ## $at = C0A00000
	mtc1    $at, $f10                  ## $f10 = -5.00
	cvt.s.w $f8, $f6                   
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   t4, $zero, 0x0002          ## t4 = 00000002
	sw      t4, 0x0014($sp)            
	addiu   a1, a1, 0x8EEC             ## a1 = 06008EEC
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	swc1    $f8, 0x0010($sp)           
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_8008D17C              
	swc1    $f10, 0x0018($sp)          
	beq     $zero, $zero, lbl_8089EE44 
	lh      t3, 0x01A4(s0)             ## 000001A4
var_8089EAC0:
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     a3, 0x3C23                 ## a3 = 3C230000
	ori     a3, a3, 0xD70A             ## a3 = 3C23D70A
	mfc1    a1, $f0                    
	addiu   a0, s0, 0x01FC             ## a0 = 000001FC
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_80064178              
	swc1    $f0, 0x0010($sp)           
	lui     t5, 0x8012                 ## t5 = 80120000
	lhu     t5, -0x4B4E(t5)            ## 8011B4B2
	lw      t7, 0x006C($sp)            
	andi    t6, t5, 0x0002             ## t6 = 00000000
	beq     t6, $zero, lbl_8089EB04    
	lui     $at, 0xC248                ## $at = C2480000
	mtc1    $at, $f0                   ## $f0 = -50.00
	beq     $zero, $zero, lbl_8089EB10 
	lui     $at, 0x428C                ## $at = 428C0000
lbl_8089EB04:
	mtc1    $zero, $f0                 ## $f0 = 0.00
	nop
	lui     $at, 0x428C                ## $at = 428C0000
lbl_8089EB10:
	mtc1    $at, $f4                   ## $f4 = 70.00
	lwc1    $f16, 0x0024(t7)           ## 00000024
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f10                  ## $f10 = 20.00
	lwc1    $f8, 0x01F4(s0)            ## 000001F4
	add.s   $f18, $f16, $f0            
	addiu   a0, s0, 0x0418             ## a0 = 00000418
	mul.s   $f16, $f8, $f10            
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	add.s   $f6, $f18, $f4             
	mtc1    $zero, $f18                ## $f18 = 0.00
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	sw      a0, 0x0038($sp)            
	mfc1    a1, $f6                    
	mfc1    a3, $f16                   
	jal     func_80064178              
	swc1    $f18, 0x0010($sp)          
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f6                   ## $f6 = 10.00
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f16                  ## $f16 = 20.00
	lw      t8, 0x006C($sp)            
	lwc1    $f10, 0x01F4(s0)           ## 000001F4
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	lwc1    $f4, 0x0028(t8)            ## 00000028
	mul.s   $f18, $f10, $f16           
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	add.s   $f8, $f4, $f6              
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   a0, s0, 0x041C             ## a0 = 0000041C
	mfc1    a1, $f8                    
	mfc1    a3, $f18                   
	jal     func_80064178              
	swc1    $f4, 0x0010($sp)           
	lui     $at, 0x4270                ## $at = 42700000
	mtc1    $at, $f8                   ## $f8 = 60.00
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f18                  ## $f18 = 20.00
	lw      t9, 0x006C($sp)            
	lwc1    $f16, 0x01F4(s0)           ## 000001F4
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	lwc1    $f6, 0x002C(t9)            ## 0000002C
	mul.s   $f4, $f16, $f18            
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	sub.s   $f10, $f6, $f8             
	mtc1    $zero, $f6                 ## $f6 = 0.00
	addiu   a0, s0, 0x0420             ## a0 = 00000420
	mfc1    a1, $f10                   
	mfc1    a3, $f4                    
	jal     func_80064178              
	swc1    $f6, 0x0010($sp)           
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f10                  ## $f10 = 20.00
	lwc1    $f8, 0x01F4(s0)            ## 000001F4
	mtc1    $zero, $f18                ## $f18 = 0.00
	addiu   a0, s0, 0x0424             ## a0 = 00000424
	mul.s   $f16, $f8, $f10            
	lw      a1, 0x03DC(s0)             ## 000003DC
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	sw      a0, 0x0034($sp)            
	swc1    $f18, 0x0010($sp)          
	mfc1    a3, $f16                   
	jal     func_80064178              
	nop
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f6                   ## $f6 = 20.00
	lwc1    $f4, 0x01F4(s0)            ## 000001F4
	mtc1    $zero, $f10                ## $f10 = 0.00
	lw      a1, 0x03E0(s0)             ## 000003E0
	mul.s   $f8, $f4, $f6              
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x0428             ## a0 = 00000428
	swc1    $f10, 0x0010($sp)          
	mfc1    a3, $f8                    
	jal     func_80064178              
	nop
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f18                  ## $f18 = 20.00
	lwc1    $f16, 0x01F4(s0)           ## 000001F4
	mtc1    $zero, $f6                 ## $f6 = 0.00
	lw      a1, 0x03E4(s0)             ## 000003E4
	mul.s   $f4, $f16, $f18            
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x042C             ## a0 = 0000042C
	swc1    $f6, 0x0010($sp)           
	mfc1    a3, $f4                    
	jal     func_80064178              
	nop
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f2                   ## $f2 = 1.00
	mtc1    $zero, $f8                 ## $f8 = 0.00
	lui     a3, 0x3CA3                 ## a3 = 3CA30000
	mfc1    a1, $f2                    
	mfc1    a2, $f2                    
	ori     a3, a3, 0xD70A             ## a3 = 3CA3D70A
	addiu   a0, s0, 0x01F4             ## a0 = 000001F4
	jal     func_80064178              
	swc1    $f8, 0x0010($sp)           
	lh      t0, 0x0186(s0)             ## 00000186
	bnel    t0, $zero, lbl_8089ECE0    
	lh      v1, 0x0188(s0)             ## 00000188
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	mtc1    $zero, $f10                ## $f10 = 0.00
	lui     a1, 0x3D4C                 ## a1 = 3D4C0000
	lui     a3, 0x3BA3                 ## a3 = 3BA30000
	ori     a3, a3, 0xD70A             ## a3 = 3BA3D70A
	ori     a1, a1, 0xCCCD             ## a1 = 3D4CCCCD
	addiu   a0, s0, 0x01F8             ## a0 = 000001F8
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_80064178              
	swc1    $f10, 0x0010($sp)          
	lh      v1, 0x0188(s0)             ## 00000188
lbl_8089ECE0:
	addiu   $at, $zero, 0x0064         ## $at = 00000064
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    v1, $at, lbl_8089ED00      
	addiu   $at, $zero, 0x005A         ## $at = 0000005A
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3852          ## a1 = 00003852
	lh      v1, 0x0188(s0)             ## 00000188
	addiu   $at, $zero, 0x005A         ## $at = 0000005A
lbl_8089ED00:
	bne     v1, $at, lbl_8089ED80      
	lui     t1, 0x8012                 ## t1 = 80120000
	lhu     t1, -0x4B4E(t1)            ## 8011B4B2
	lw      a0, 0x007C($sp)            
	lui     v0, 0x0601                 ## v0 = 06010000
	andi    t2, t1, 0x0002             ## t2 = 00000000
	bne     t2, $zero, lbl_8089ED74    
	addiu   a1, a0, 0x1D4C             ## a1 = 00001D4C
	addiu   v0, v0, 0x7410             ## v0 = 06017410
	sll     t3, v0,  4                 
	srl     t4, t3, 28                 
	sll     t5, t4,  2                 
	lui     t6, 0x8012                 ## t6 = 80120000
	addu    t6, t6, t5                 
	lui     $at, 0x00FF                ## $at = 00FF0000
	lw      t6, 0x0C38(t6)             ## 80120C38
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	and     t7, v0, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addiu   t8, $zero, 0x00B4          ## t8 = 000000B4
	addiu   t9, $zero, 0x0080          ## t9 = 00000080
	addiu   t0, $zero, 0x0028          ## t0 = 00000028
	addu    a2, t6, t7                 
	addu    a2, a2, $at                
	sw      t0, 0x0018($sp)            
	sw      t9, 0x0014($sp)            
	sw      t8, 0x0010($sp)            
	jal     func_80020780              
	addiu   a3, $zero, 0x00A0          ## a3 = 000000A0
lbl_8089ED74:
	jal     func_800CAA70              
	addiu   a0, $zero, 0x006B          ## a0 = 0000006B
	lh      v1, 0x0188(s0)             ## 00000188
lbl_8089ED80:
	bnel    v1, $zero, lbl_8089EE44    
	lh      t3, 0x01A4(s0)             ## 000001A4
	lw      v1, 0x0038($sp)            
	lw      v0, 0x0070($sp)            
	or      a2, $zero, $zero           ## a2 = 00000000
	lw      t2, 0x0000(v1)             ## 00000000
	sw      t2, 0x005C(v0)             ## 0000005C
	lw      t1, 0x0004(v1)             ## 00000004
	sw      t1, 0x0060(v0)             ## 00000060
	lw      t2, 0x0008(v1)             ## 00000008
	sw      t2, 0x0064(v0)             ## 00000064
	lw      t4, 0x0000(v1)             ## 00000000
	sw      t4, 0x0074(v0)             ## 00000074
	lw      t3, 0x0004(v1)             ## 00000004
	sw      t3, 0x0078(v0)             ## 00000078
	lw      t4, 0x0008(v1)             ## 00000008
	sw      t4, 0x007C(v0)             ## 0000007C
	lw      t5, 0x0034($sp)            
	lw      t7, 0x0000(t5)             ## 00000000
	sw      t7, 0x0050(v0)             ## 00000050
	lw      t6, 0x0004(t5)             ## 00000004
	sw      t6, 0x0054(v0)             ## 00000054
	lw      t7, 0x0008(t5)             ## 00000008
	sw      t7, 0x0058(v0)             ## 00000058
	lh      a1, 0x01A4(s0)             ## 000001A4
	jal     func_8009D718              
	lw      a0, 0x007C($sp)            
	lw      a0, 0x007C($sp)            
	sh      $zero, 0x01A4(s0)          ## 000001A4
	jal     func_80052340              
	addiu   a1, a0, 0x1D64             ## a1 = 00001D64
	lw      a0, 0x007C($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_800218EC              
	addiu   a2, $zero, 0x0007          ## a2 = 00000007
	jal     func_8089F0CC              
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t8, $zero, 0x0032          ## t8 = 00000032
	sh      t8, 0x01CA(s0)             ## 000001CA
	sh      $zero, 0x01AC(s0)          ## 000001AC
	lw      t0, 0x006C($sp)            
	addiu   t9, $zero, 0xBFFE          ## t9 = FFFFBFFE
	lui     t1, 0x8012                 ## t1 = 80120000
	sh      t9, 0x00B6(t0)             ## 000000B6
	lhu     t1, -0x4B4E(t1)            ## 8011B4B2
	lui     $at, 0x8012                ## $at = 80120000
	ori     t2, t1, 0x0002             ## t2 = 80120002
	sh      t2, -0x4B4E($at)           ## 8011B4B2
lbl_8089EE40:
	lh      t3, 0x01A4(s0)             ## 000001A4
lbl_8089EE44:
	beql    t3, $zero, lbl_8089EF84    
	lw      $ra, 0x002C($sp)           
	lh      v0, 0x01A6(s0)             ## 000001A6
	beq     v0, $zero, lbl_8089EE5C    
	addiu   t4, v0, 0xFFFF             ## t4 = FFFFFFFF
	sh      t4, 0x01A6(s0)             ## 000001A6
lbl_8089EE5C:
	lwc1    $f16, 0x0418(s0)           ## 00000418
	lui     $at, %hi(var_808A6C94)     ## $at = 808A0000
	lwc1    $f6, %lo(var_808A6C94)($at) 
	swc1    $f16, 0x0060($sp)          
	lh      t5, 0x01A6(s0)             ## 000001A6
	lui     $at, 0x42B4                ## $at = 42B40000
	mtc1    $at, $f10                  ## $f10 = 90.00
	mtc1    t5, $f18                   ## $f18 = 0.00
	lui     $at, 0x4334                ## $at = 43340000
	cvt.s.w $f4, $f18                  
	mtc1    $at, $f18                  ## $f18 = 180.00
	mul.s   $f8, $f4, $f6              
	nop
	mul.s   $f16, $f8, $f10            
	jal     func_800CF470              
	div.s   $f12, $f16, $f18           
	lh      t6, 0x01A6(s0)             ## 000001A6
	lui     $at, %hi(var_808A6C98)     ## $at = 808A0000
	lwc1    $f10, %lo(var_808A6C98)($at) 
	mtc1    t6, $f4                    ## $f4 = 0.00
	lwc1    $f18, 0x041C(s0)           ## 0000041C
	lui     $at, %hi(var_808A6C9C)     ## $at = 808A0000
	cvt.s.w $f6, $f4                   
	mul.s   $f8, $f6, $f0              
	nop
	mul.s   $f16, $f8, $f10            
	add.s   $f4, $f16, $f18            
	lwc1    $f18, %lo(var_808A6C9C)($at) 
	lui     $at, 0x42B4                ## $at = 42B40000
	swc1    $f4, 0x0064($sp)           
	lwc1    $f6, 0x0420(s0)            ## 00000420
	swc1    $f6, 0x0068($sp)           
	lwc1    $f8, 0x0424(s0)            ## 00000424
	mtc1    $at, $f6                   ## $f6 = 90.00
	lui     $at, 0x4334                ## $at = 43340000
	swc1    $f8, 0x0054($sp)           
	lh      t7, 0x01A6(s0)             ## 000001A6
	mtc1    t7, $f10                   ## $f10 = 0.00
	nop
	cvt.s.w $f16, $f10                 
	mtc1    $at, $f10                  ## $f10 = 180.00
	mul.s   $f4, $f16, $f18            
	nop
	mul.s   $f8, $f4, $f6              
	jal     func_800CF470              
	div.s   $f12, $f8, $f10            
	lh      t8, 0x01A6(s0)             ## 000001A6
	lui     $at, %hi(var_808A6CA0)     ## $at = 808A0000
	lwc1    $f6, %lo(var_808A6CA0)($at) 
	mtc1    t8, $f16                   ## $f16 = 0.00
	lwc1    $f10, 0x0428(s0)           ## 00000428
	lui     $at, 0x3F80                ## $at = 3F800000
	cvt.s.w $f18, $f16                 
	addiu   t9, $sp, 0x0048            ## t9 = FFFFFFD0
	lw      a0, 0x007C($sp)            
	addiu   a2, $sp, 0x0054            ## a2 = FFFFFFDC
	addiu   a3, $sp, 0x0060            ## a3 = FFFFFFE8
	mul.s   $f4, $f18, $f0             
	nop
	mul.s   $f8, $f4, $f6              
	mtc1    $at, $f6                   ## $f6 = 1.00
	add.s   $f16, $f8, $f10            
	swc1    $f16, 0x0058($sp)          
	lwc1    $f18, 0x042C(s0)           ## 0000042C
	swc1    $f18, 0x005C($sp)          
	lwc1    $f4, 0x01FC(s0)            ## 000001FC
	swc1    $f6, 0x004C($sp)           
	swc1    $f4, 0x0048($sp)           
	lwc1    $f8, 0x01FC(s0)            ## 000001FC
	swc1    $f8, 0x0050($sp)           
	lh      a1, 0x01A4(s0)             ## 000001A4
	jal     func_8009D438              
	sw      t9, 0x0010($sp)            
	lw      $ra, 0x002C($sp)           
lbl_8089EF84:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0078           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089EF94:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0030($sp)            
	lw      t6, 0x0030($sp)            
	lui     v1, %hi(func_8089F2E8)     ## v1 = 808A0000
	addiu   v1, v1, %lo(func_8089F2E8) ## v1 = 8089F2E8
	lw      t7, 0x0180(t6)             ## 00000180
	lui     a0, 0x0600                 ## a0 = 06000000
	addiu   a0, a0, 0x1074             ## a0 = 06001074
	beql    v1, t7, lbl_8089F014       
	lw      t1, 0x0030($sp)            
	jal     func_8008A194              
	sw      v1, 0x0028($sp)            
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC0A0                ## $at = C0A00000
	mtc1    $at, $f8                   ## $f8 = -5.00
	cvt.s.w $f6, $f4                   
	lw      a0, 0x0030($sp)            
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	sw      t8, 0x0014($sp)            
	addiu   a1, a1, 0x1074             ## a1 = 06001074
	swc1    $f6, 0x0010($sp)           
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f8, 0x0018($sp)           
	jal     func_8008D17C              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	lw      v1, 0x0028($sp)            
	lw      t9, 0x0030($sp)            
	sw      v1, 0x0180(t9)             ## 00000180
	lw      t1, 0x0030($sp)            
lbl_8089F014:
	addiu   t0, $zero, 0x0064          ## t0 = 00000064
	sh      t0, 0x01CA(t1)             ## 000001CA
	lw      $ra, 0x0024($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_8089F028:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lui     a0, 0x0601                 ## a0 = 06010000
	jal     func_8008A194              
	addiu   a0, a0, 0xE848             ## a0 = 0600E848
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC0A0                ## $at = C0A00000
	mtc1    $at, $f8                   ## $f8 = -5.00
	cvt.s.w $f6, $f4                   
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0xE848             ## a1 = 0600E848
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	swc1    $f6, 0x0010($sp)           
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
	lui     $at, 0x4248                ## $at = 42480000
	mtc1    $at, $f10                  ## $f10 = 50.00
	lui     $at, 0x4396                ## $at = 43960000
	mtc1    $at, $f16                  ## $f16 = 300.00
	lui     t7, %hi(func_8089F39C)     ## t7 = 808A0000
	addiu   t7, t7, %lo(func_8089F39C) ## t7 = 8089F39C
	addiu   t8, $zero, 0x000A          ## t8 = 0000000A
	addiu   t9, $zero, 0x0002          ## t9 = 00000002
	addiu   t0, $zero, 0x0023          ## t0 = 00000023
	sw      t7, 0x0180(s0)             ## 00000180
	sh      t8, 0x01A0(s0)             ## 000001A0
	sh      t9, 0x01B0(s0)             ## 000001B0
	sh      t0, 0x01CA(s0)             ## 000001CA
	swc1    $f10, 0x01EC(s0)           ## 000001EC
	swc1    $f16, 0x01F0(s0)           ## 000001F0
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089F0CC:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lui     a0, 0x0602                 ## a0 = 06020000
	jal     func_8008A194              
	addiu   a0, a0, 0xC534             ## a0 = 0601C534
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC120                ## $at = C1200000
	mtc1    $at, $f8                   ## $f8 = -10.00
	cvt.s.w $f6, $f4                   
	lui     a1, 0x0602                 ## a1 = 06020000
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0xC534             ## a1 = 0601C534
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	swc1    $f6, 0x0010($sp)           
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
	lw      t8, 0x0004(s0)             ## 00000004
	mtc1    $zero, $f10                ## $f10 = 0.00
	lui     t7, %hi(func_8089FA24)     ## t7 = 808A0000
	addiu   t7, t7, %lo(func_8089FA24) ## t7 = 8089FA24
	ori     t9, t8, 0x0001             ## t9 = 00000001
	sh      $zero, 0x019A(s0)          ## 0000019A
	sw      t7, 0x0180(s0)             ## 00000180
	sh      $zero, 0x01CA(s0)          ## 000001CA
	sw      t9, 0x0004(s0)             ## 00000004
	swc1    $f10, 0x01D4(s0)           ## 000001D4
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089F15C:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	lui     $at, 0x426C                ## $at = 426C0000
	mtc1    $at, $f4                   ## $f4 = 59.00
	lui     $at, 0xC0A0                ## $at = C0A00000
	mtc1    $at, $f6                   ## $f6 = -5.00
	lw      a0, 0x0028($sp)            
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0xDF38             ## a1 = 0600DF38
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f4, 0x0010($sp)           
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	jal     func_8008D17C              
	swc1    $f6, 0x0018($sp)           
	lw      v0, 0x0028($sp)            
	lui     t7, %hi(func_8089FE34)     ## t7 = 808A0000
	addiu   t7, t7, %lo(func_8089FE34) ## t7 = 8089FE34
	addiu   t8, $zero, 0x001B          ## t8 = 0000001B
	sw      t7, 0x0180(v0)             ## 00000180
	sh      $zero, 0x0198(v0)          ## 00000198
	sh      t8, 0x01CA(v0)             ## 000001CA
	lw      $ra, 0x0024($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089F1D0:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	mtc1    $zero, $f0                 ## $f0 = 0.00
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lui     a0, 0x0600                 ## a0 = 06000000
	swc1    $f0, 0x01D4(s0)            ## 000001D4
	swc1    $f0, 0x0068(s0)            ## 00000068
	jal     func_8008A194              
	addiu   a0, a0, 0x61D4             ## a0 = 060061D4
	mtc1    v0, $f4                    ## $f4 = 0.00
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     a1, 0x0600                 ## a1 = 06000000
	cvt.s.w $f6, $f4                   
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	mfc1    a3, $f0                    
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0x61D4             ## a1 = 060061D4
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	swc1    $f6, 0x0010($sp)           
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
	lui     t7, %hi(func_8089F820)     ## t7 = 808A0000
	addiu   t7, t7, %lo(func_8089F820) ## t7 = 8089F820
	addiu   t8, $zero, 0x0032          ## t8 = 00000032
	sw      t7, 0x0180(s0)             ## 00000180
	sh      t8, 0x01CA(s0)             ## 000001CA
	sh      $zero, 0x019E(s0)          ## 0000019E
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089F258:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     a0, 0x0601                 ## a0 = 06010000
	addiu   a0, a0, 0x8EEC             ## a0 = 06008EEC
	jal     func_8008A194              
	swc1    $f4, 0x0068(s0)            ## 00000068
	mtc1    v0, $f6                    ## $f6 = 0.00
	lui     $at, 0xC0A0                ## $at = C0A00000
	mtc1    $at, $f10                  ## $f10 = -5.00
	cvt.s.w $f8, $f6                   
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0x8EEC             ## a1 = 06008EEC
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	swc1    $f8, 0x0010($sp)           
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_8008D17C              
	swc1    $f10, 0x0018($sp)          
	lui     t7, %hi(func_8089F950)     ## t7 = 808A0000
	addiu   t7, t7, %lo(func_8089F950) ## t7 = 8089F950
	addiu   t8, $zero, 0x0064          ## t8 = 00000064
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	sw      t7, 0x0180(s0)             ## 00000180
	sh      t8, 0x01CA(s0)             ## 000001CA
	sh      $zero, 0x019C(s0)          ## 0000019C
	sb      t9, 0x01D2(s0)             ## 000001D2
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089F2E8:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	lw      a0, 0x0028($sp)            
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a0, 0x0020($sp)            
	lui     $at, %hi(var_808A6CA4)     ## $at = 808A0000
	lwc1    $f4, %lo(var_808A6CA4)($at) 
	lw      a0, 0x0028($sp)            
	lui     a3, 0x3CA3                 ## a3 = 3CA30000
	ori     a3, a3, 0xD70A             ## a3 = 3CA3D70A
	lui     a1, 0x3F80                 ## a1 = 3F800000
	lui     a2, 0x3F00                 ## a2 = 3F000000
	swc1    $f4, 0x0010($sp)           
	jal     func_80064178              
	addiu   a0, a0, 0x01E8             ## a0 = 000001E8
	lw      a0, 0x0028($sp)            
	mtc1    $zero, $f6                 ## $f6 = 0.00
	lui     a1, 0x3D4C                 ## a1 = 3D4C0000
	lui     a3, 0x3BA3                 ## a3 = 3BA30000
	ori     a3, a3, 0xD70A             ## a3 = 3BA3D70A
	ori     a1, a1, 0xCCCD             ## a1 = 3D4CCCCD
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a0, a0, 0x01F8             ## a0 = 000001F8
	jal     func_80064178              
	swc1    $f6, 0x0010($sp)           
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x1074             ## a0 = 06001074
	mtc1    v0, $f8                    ## $f8 = 0.00
	lw      a0, 0x0020($sp)            
	cvt.s.w $f8, $f8                   
	mfc1    a1, $f8                    
	jal     func_8008D6A8              
	nop
	beql    v0, $zero, lbl_8089F390    
	lw      $ra, 0x001C($sp)           
	jal     func_8089F15C              
	lw      a0, 0x0028($sp)            
	lw      $ra, 0x001C($sp)           
lbl_8089F390:
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089F39C:
	addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
	sw      s7, 0x0068($sp)            
	sw      s1, 0x0050($sp)            
	or      s1, a0, $zero              ## s1 = 00000000
	or      s7, a1, $zero              ## s7 = 00000000
	sw      $ra, 0x006C($sp)           
	sw      s6, 0x0064($sp)            
	sw      s5, 0x0060($sp)            
	sw      s4, 0x005C($sp)            
	sw      s3, 0x0058($sp)            
	sw      s2, 0x0054($sp)            
	sw      s0, 0x004C($sp)            
	sdc1    $f26, 0x0040($sp)          
	sdc1    $f24, 0x0038($sp)          
	sdc1    $f22, 0x0030($sp)          
	sdc1    $f20, 0x0028($sp)          
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     a1, 0x3D4C                 ## a1 = 3D4C0000
	lui     a3, 0x3BA3                 ## a3 = 3BA30000
	ori     a3, a3, 0xD70A             ## a3 = 3BA3D70A
	ori     a1, a1, 0xCCCD             ## a1 = 3D4CCCCD
	addiu   a0, s1, 0x01F8             ## a0 = 000001F8
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_80064178              
	swc1    $f4, 0x0010($sp)           
	addiu   a0, s1, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a0, 0x0070($sp)            
	lh      t6, 0x01CA(s1)             ## 000001CA
	or      s0, $zero, $zero           ## s0 = 00000000
	lui     $at, 0x42B4                ## $at = 42B40000
	bne     t6, $zero, lbl_8089F5B4    
	lui     s6, %hi(var_808A6A6C)      ## s6 = 808A0000
	mtc1    $at, $f26                  ## $f26 = 90.00
	lui     $at, 0x4040                ## $at = 40400000
	mtc1    $at, $f24                  ## $f24 = 3.00
	lui     $at, %hi(var_808A6CA8)     ## $at = 808A0000
	lwc1    $f22, %lo(var_808A6CA8)($at) 
	lui     $at, 0x41A0                ## $at = 41A00000
	lui     s5, %hi(var_808A6A68)      ## s5 = 808A0000
	mtc1    $at, $f20                  ## $f20 = 20.00
	addiu   s5, s5, %lo(var_808A6A68)  ## s5 = 808A6A68
	addiu   s6, s6, %lo(var_808A6A6C)  ## s6 = 808A6A6C
	addiu   s4, $sp, 0x0084            ## s4 = FFFFFFE4
	addiu   s3, $sp, 0x0090            ## s3 = FFFFFFF0
	addiu   s2, $sp, 0x0078            ## s2 = FFFFFFD8
lbl_8089F454:
	jal     func_80026D90              
	mov.s   $f12, $f20                 
	swc1    $f0, 0x0090($sp)           
	jal     func_80026D90              
	mov.s   $f12, $f20                 
	swc1    $f0, 0x0094($sp)           
	jal     func_80026D90              
	mov.s   $f12, $f20                 
	lwc1    $f6, 0x0090($sp)           
	lwc1    $f10, 0x0094($sp)          
	swc1    $f0, 0x0098($sp)           
	mul.s   $f8, $f6, $f22             
	addiu   t7, $zero, 0x01F4          ## t7 = 000001F4
	addiu   t8, $zero, 0x000A          ## t8 = 0000000A
	mul.s   $f16, $f10, $f22           
	addiu   t9, $zero, 0x000A          ## t9 = 0000000A
	or      a0, s7, $zero              ## a0 = 00000000
	mul.s   $f18, $f0, $f22            
	swc1    $f8, 0x0084($sp)           
	or      a1, s2, $zero              ## a1 = FFFFFFD8
	mul.s   $f8, $f6, $f24             
	swc1    $f16, 0x0088($sp)          
	or      a2, s3, $zero              ## a2 = FFFFFFF0
	or      a3, s4, $zero              ## a3 = FFFFFFE4
	swc1    $f18, 0x008C($sp)          
	lwc1    $f4, 0x0024(s1)            ## 00000024
	add.s   $f16, $f4, $f8             
	mul.s   $f4, $f10, $f24            
	swc1    $f16, 0x0078($sp)          
	lwc1    $f18, 0x0028(s1)           ## 00000028
	add.s   $f6, $f18, $f26            
	mul.s   $f18, $f0, $f24            
	add.s   $f8, $f6, $f4              
	swc1    $f8, 0x007C($sp)           
	lwc1    $f16, 0x002C(s1)           ## 0000002C
	sw      t9, 0x0020($sp)            
	sw      t8, 0x001C($sp)            
	add.s   $f10, $f16, $f18           
	sw      t7, 0x0018($sp)            
	sw      s6, 0x0014($sp)            
	sw      s5, 0x0010($sp)            
	jal     func_8001BE64              
	swc1    $f10, 0x0080($sp)          
	addiu   s0, s0, 0x0001             ## s0 = 00000001
	sll     s0, s0, 16                 
	sra     s0, s0, 16                 
	slti    $at, s0, 0x001E            
	bne     $at, $zero, lbl_8089F454   
	nop
	lui     s0, 0x0600                 ## s0 = 06000000
	addiu   s0, s0, 0x4E0C             ## s0 = 06004E0C
	jal     func_8008A194              
	or      a0, s0, $zero              ## a0 = 06004E0C
	mtc1    v0, $f6                    ## $f6 = 0.00
	lui     $at, 0xC0A0                ## $at = C0A00000
	mtc1    $at, $f8                   ## $f8 = -5.00
	cvt.s.w $f4, $f6                   
	addiu   t0, $zero, 0x0002          ## t0 = 00000002
	sw      t0, 0x0014($sp)            
	lw      a0, 0x0070($sp)            
	or      a1, s0, $zero              ## a1 = 06004E0C
	lui     a2, 0x3F80                 ## a2 = 3F800000
	swc1    $f4, 0x0010($sp)           
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
	lui     t1, %hi(func_8089F5F0)     ## t1 = 808A0000
	addiu   t1, t1, %lo(func_8089F5F0) ## t1 = 8089F5F0
	sw      t1, 0x0180(s1)             ## 00000180
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x180E          ## a1 = 0000180E
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3806          ## a1 = 00003806
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, s7, $zero              ## a1 = 00000000
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_80026CF4              
	addiu   a3, $zero, 0x000A          ## a3 = 0000000A
	lh      t2, 0x0184(s1)             ## 00000184
	addiu   t5, $zero, 0x0001          ## t5 = 00000001
	addiu   t3, t2, 0xFFFE             ## t3 = FFFFFFFE
	sh      t3, 0x0184(s1)             ## 00000184
	lh      t4, 0x0184(s1)             ## 00000184
	bgtzl   t4, lbl_8089F5B8           
	lw      $ra, 0x006C($sp)           
	sh      t5, 0x0184(s1)             ## 00000184
lbl_8089F5B4:
	lw      $ra, 0x006C($sp)           
lbl_8089F5B8:
	ldc1    $f20, 0x0028($sp)          
	ldc1    $f22, 0x0030($sp)          
	ldc1    $f24, 0x0038($sp)          
	ldc1    $f26, 0x0040($sp)          
	lw      s0, 0x004C($sp)            
	lw      s1, 0x0050($sp)            
	lw      s2, 0x0054($sp)            
	lw      s3, 0x0058($sp)            
	lw      s4, 0x005C($sp)            
	lw      s5, 0x0060($sp)            
	lw      s6, 0x0064($sp)            
	lw      s7, 0x0068($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x00A0           ## $sp = 00000000


func_8089F5F0:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x003C($sp)            
	addiu   t6, $zero, 0x000A          ## t6 = 0000000A
	sh      t6, 0x01AE(s0)             ## 000001AE
	lui     $at, %hi(var_808A6CAC)     ## $at = 808A0000
	lwc1    $f4, %lo(var_808A6CAC)($at) 
	lui     a1, 0x3FA6                 ## a1 = 3FA60000
	lui     a3, 0x3DCC                 ## a3 = 3DCC0000
	ori     a3, a3, 0xCCCD             ## a3 = 3DCCCCCD
	ori     a1, a1, 0x6666             ## a1 = 3FA66666
	addiu   a0, s0, 0x01E8             ## a0 = 000001E8
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_80064178              
	swc1    $f4, 0x0010($sp)           
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a0, 0x0030($sp)            
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x4E0C             ## a0 = 06004E0C
	mtc1    v0, $f6                    ## $f6 = 0.00
	lw      a0, 0x0030($sp)            
	cvt.s.w $f6, $f6                   
	mfc1    a1, $f6                    
	jal     func_8008D6A8              
	nop
	beq     v0, $zero, lbl_8089F6BC    
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x42A8             ## a0 = 060042A8
	mtc1    v0, $f8                    ## $f8 = 0.00
	lui     $at, 0xC0A0                ## $at = C0A00000
	mtc1    $at, $f16                  ## $f16 = -5.00
	cvt.s.w $f10, $f8                  
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x42A8             ## a1 = 060042A8
	lw      a0, 0x0030($sp)            
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f10, 0x0010($sp)          
	sw      $zero, 0x0014($sp)         
	jal     func_8008D17C              
	swc1    $f16, 0x0018($sp)          
	lui     t7, %hi(func_8089F6D0)     ## t7 = 808A0000
	addiu   t7, t7, %lo(func_8089F6D0) ## t7 = 8089F6D0
	addiu   t8, $zero, 0x0064          ## t8 = 00000064
	sw      t7, 0x0180(s0)             ## 00000180
	sh      t8, 0x01CA(s0)             ## 000001CA
lbl_8089F6BC:
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089F6D0:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x003C($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3051          ## a1 = 00003051
	addiu   t6, $zero, 0x000A          ## t6 = 0000000A
	sh      t6, 0x01AE(s0)             ## 000001AE
	lui     $at, %hi(var_808A6CB0)     ## $at = 808A0000
	lwc1    $f4, %lo(var_808A6CB0)($at) 
	lui     a3, 0x3CA3                 ## a3 = 3CA30000
	ori     a3, a3, 0xD70A             ## a3 = 3CA3D70A
	addiu   a0, s0, 0x01E8             ## a0 = 000001E8
	lui     a1, 0x3F80                 ## a1 = 3F800000
	lui     a2, 0x3F00                 ## a2 = 3F000000
	jal     func_80064178              
	swc1    $f4, 0x0010($sp)           
	mtc1    $zero, $f6                 ## $f6 = 0.00
	lui     a1, 0x3D4C                 ## a1 = 3D4C0000
	lui     a3, 0x3BA3                 ## a3 = 3BA30000
	ori     a3, a3, 0xD70A             ## a3 = 3BA3D70A
	ori     a1, a1, 0xCCCD             ## a1 = 3D4CCCCD
	addiu   a0, s0, 0x01F8             ## a0 = 000001F8
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_80064178              
	swc1    $f6, 0x0010($sp)           
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a0, 0x0030($sp)            
	lh      t7, 0x01CA(s0)             ## 000001CA
	lui     a0, 0x0601                 ## a0 = 06010000
	bnel    t7, $zero, lbl_8089F7AC    
	lw      $ra, 0x002C($sp)           
	jal     func_8008A194              
	addiu   a0, a0, 0x9D10             ## a0 = 06009D10
	mtc1    v0, $f8                    ## $f8 = 0.00
	lui     $at, 0xC0A0                ## $at = C0A00000
	mtc1    $at, $f16                  ## $f16 = -5.00
	cvt.s.w $f10, $f8                  
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	sw      t8, 0x0014($sp)            
	addiu   a1, a1, 0x9D10             ## a1 = 06009D10
	lw      a0, 0x0030($sp)            
	swc1    $f10, 0x0010($sp)          
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_8008D17C              
	swc1    $f16, 0x0018($sp)          
	lui     t9, %hi(func_8089F7BC)     ## t9 = 808A0000
	addiu   t9, t9, %lo(func_8089F7BC) ## t9 = 8089F7BC
	sw      t9, 0x0180(s0)             ## 00000180
	lw      $ra, 0x002C($sp)           
lbl_8089F7AC:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089F7BC:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0020($sp)            
	sw      a1, 0x0024($sp)            
	lw      a0, 0x0020($sp)            
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a0, 0x0018($sp)            
	lui     a0, 0x0601                 ## a0 = 06010000
	jal     func_8008A194              
	addiu   a0, a0, 0x9D10             ## a0 = 06009D10
	mtc1    v0, $f4                    ## $f4 = 0.00
	lw      a0, 0x0018($sp)            
	cvt.s.w $f4, $f4                   
	mfc1    a1, $f4                    
	jal     func_8008D6A8              
	nop
	beql    v0, $zero, lbl_8089F814    
	lw      $ra, 0x0014($sp)           
	jal     func_8089F15C              
	lw      a0, 0x0020($sp)            
	lw      $ra, 0x0014($sp)           
lbl_8089F814:
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089F820:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x004C($sp)            
	lui     t7, %hi(var_808A6A70)      ## t7 = 808A0000
	addiu   t7, t7, %lo(var_808A6A70)  ## t7 = 808A6A70
	lw      t9, 0x0000(t7)             ## 808A6A70
	addiu   t6, $sp, 0x0038            ## t6 = FFFFFFF0
	lw      t8, 0x0004(t7)             ## 808A6A74
	sw      t9, 0x0000(t6)             ## FFFFFFF0
	lw      t9, 0x0008(t7)             ## 808A6A78
	lui     t1, %hi(var_808A6A7C)      ## t1 = 808A0000
	addiu   t1, t1, %lo(var_808A6A7C)  ## t1 = 808A6A7C
	sw      t8, 0x0004(t6)             ## FFFFFFF4
	sw      t9, 0x0008(t6)             ## FFFFFFF8
	lw      t3, 0x0000(t1)             ## 808A6A7C
	addiu   t0, $sp, 0x002C            ## t0 = FFFFFFE4
	lw      t2, 0x0004(t1)             ## 808A6A80
	sw      t3, 0x0000(t0)             ## FFFFFFE4
	lw      t3, 0x0008(t1)             ## 808A6A84
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	sw      t2, 0x0004(t0)             ## FFFFFFE8
	sw      t3, 0x0008(t0)             ## FFFFFFEC
	jal     func_8008C9C0              
	sw      a0, 0x0028($sp)            
	lw      a0, 0x0028($sp)            
	jal     func_8008D6A8              
	lui     a1, 0x4140                 ## a1 = 41400000
	beq     v0, $zero, lbl_8089F8A4    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3805          ## a1 = 00003805
lbl_8089F8A4:
	lw      a0, 0x0028($sp)            
	jal     func_8008D6A8              
	lui     a1, 0x4188                 ## a1 = 41880000
	beq     v0, $zero, lbl_8089F8C0    
	lui     $at, 0x4188                ## $at = 41880000
	addiu   t4, $zero, 0x001C          ## t4 = 0000001C
	sh      t4, 0x01B8(s0)             ## 000001B8
lbl_8089F8C0:
	lwc1    $f0, 0x0154(s0)            ## 00000154
	mtc1    $at, $f4                   ## $f4 = 17.00
	lui     $at, 0x420C                ## $at = 420C0000
	c.lt.s  $f4, $f0                   
	nop
	bc1fl   lbl_8089F92C               
	lh      t7, 0x01CA(s0)             ## 000001CA
	mtc1    $at, $f6                   ## $f6 = 35.00
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x004C($sp)            
	c.lt.s  $f0, $f6                   
	nop
	bc1fl   lbl_8089F92C               
	lh      t7, 0x01CA(s0)             ## 000001CA
	jal     func_808A1998              
	lh      a2, 0x019E(s0)             ## 0000019E
	lh      t5, 0x019E(s0)             ## 0000019E
	mtc1    $zero, $f0                 ## $f0 = 0.00
	addiu   a0, s0, 0x0234             ## a0 = 00000234
	addiu   t6, t5, 0x0001             ## t6 = 00000001
	sh      t6, 0x019E(s0)             ## 0000019E
	mfc1    a1, $f0                    
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x4100                 ## a3 = 41000000
	jal     func_80064178              
	swc1    $f0, 0x0010($sp)           
	lh      t7, 0x01CA(s0)             ## 000001CA
lbl_8089F92C:
	bnel    t7, $zero, lbl_8089F940    
	lw      $ra, 0x0024($sp)           
	jal     func_8089F15C              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x0024($sp)           
lbl_8089F940:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089F950:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	lh      t7, 0x019C(s0)             ## 0000019C
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	sb      t6, 0x01D2(s0)             ## 000001D2
	slti    $at, t7, 0x0015            
	bne     $at, $zero, lbl_8089F984   
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x304F          ## a1 = 0000304F
lbl_8089F984:
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     a1, 0x3D4C                 ## a1 = 3D4C0000
	lui     a3, 0x3BA3                 ## a3 = 3BA30000
	ori     a3, a3, 0xD70A             ## a3 = 3BA3D70A
	ori     a1, a1, 0xCCCD             ## a1 = 3D4CCCCD
	addiu   a0, s0, 0x01F8             ## a0 = 000001F8
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_80064178              
	swc1    $f4, 0x0010($sp)           
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lh      t8, 0x01CA(s0)             ## 000001CA
	bnel    t8, $zero, lbl_8089F9D0    
	lh      t9, 0x019C(s0)             ## 0000019C
	jal     func_8089F1D0              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089FA14 
	lw      $ra, 0x0024($sp)           
	lh      t9, 0x019C(s0)             ## 0000019C
lbl_8089F9D0:
	addiu   t0, t9, 0x0001             ## t0 = 00000001
	sh      t0, 0x019C(s0)             ## 0000019C
	lh      v0, 0x019C(s0)             ## 0000019C
	slti    $at, v0, 0x0015            
	bne     $at, $zero, lbl_8089FA10   
	slti    $at, v0, 0x0052            
	beq     $at, $zero, lbl_8089FA10   
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8089DFBC              
	lw      a1, 0x002C($sp)            
	beq     v0, $zero, lbl_8089FA10    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3850          ## a1 = 00003850
	jal     func_8089F028              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8089FA10:
	lw      $ra, 0x0024($sp)           
lbl_8089FA14:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089FA24:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      s0, 0x0030($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      a1, 0x0054($sp)            
	lh      t6, 0x019A(s0)             ## 0000019A
	bne     t6, $zero, lbl_8089FA70    
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	sw      a0, 0x003C($sp)            
	jal     func_8008D6A8              
	lui     a1, 0x4160                 ## a1 = 41600000
	beq     v0, $zero, lbl_8089FB94    
	lw      a0, 0x003C($sp)            
	lui     a1, 0x0602                 ## a1 = 06020000
	jal     func_8008D2D4              
	addiu   a1, a1, 0xB6E0             ## a1 = 0601B6E0
	addiu   v1, $zero, 0x0001          ## v1 = 00000001
	beq     $zero, $zero, lbl_8089FB94 
	sh      v1, 0x019A(s0)             ## 0000019A
lbl_8089FA70:
	lh      t7, 0x01AC(s0)             ## 000001AC
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     t7, $at, lbl_8089FB94      
	nop
	lwc1    $f4, 0x0154(s0)            ## 00000154
	addiu   v1, $zero, 0x0001          ## v1 = 00000001
	addiu   $at, $zero, 0x001F         ## $at = 0000001F
	trunc.w.s $f6, $f4                   
	mfc1    v0, $f6                    
	nop
	beq     v1, v0, lbl_8089FAA8       
	nop
	bne     v0, $at, lbl_8089FB94      
	nop
lbl_8089FAA8:
	bne     v1, v0, lbl_8089FAF4       
	lw      a0, 0x0054($sp)            
	lui     $at, 0x4100                ## $at = 41000000
	mtc1    $at, $f8                   ## $f8 = 8.00
	addiu   t9, $zero, 0x000A          ## t9 = 0000000A
	addiu   t0, $zero, 0x01F4          ## t0 = 000001F4
	addiu   t1, $zero, 0x000A          ## t1 = 0000000A
	sw      t1, 0x001C($sp)            
	sw      t0, 0x0018($sp)            
	sw      t9, 0x0010($sp)            
	lw      a0, 0x0054($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a2, s0, 0x0400             ## a2 = 00000400
	lui     a3, 0x41C8                 ## a3 = 41C80000
	sw      $zero, 0x0020($sp)         
	jal     func_800260E8              
	swc1    $f8, 0x0014($sp)           
	beq     $zero, $zero, lbl_8089FB30 
	lh      t5, 0x01AC(s0)             ## 000001AC
lbl_8089FAF4:
	lui     $at, 0x4100                ## $at = 41000000
	mtc1    $at, $f10                  ## $f10 = 8.00
	addiu   t2, $zero, 0x000A          ## t2 = 0000000A
	addiu   t3, $zero, 0x01F4          ## t3 = 000001F4
	addiu   t4, $zero, 0x000A          ## t4 = 0000000A
	sw      t4, 0x001C($sp)            
	sw      t3, 0x0018($sp)            
	sw      t2, 0x0010($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a2, s0, 0x03F4             ## a2 = 000003F4
	lui     a3, 0x41C8                 ## a3 = 41C80000
	sw      $zero, 0x0020($sp)         
	jal     func_800260E8              
	swc1    $f10, 0x0014($sp)          
	lh      t5, 0x01AC(s0)             ## 000001AC
lbl_8089FB30:
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t5, $zero, lbl_8089FB4C    
	nop
	jal     func_800646F0              
	addiu   a0, $zero, 0x3808          ## a0 = 00003808
	beq     $zero, $zero, lbl_8089FB58 
	lh      t6, 0x01A4(s0)             ## 000001A4
lbl_8089FB4C:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3808          ## a1 = 00003808
	lh      t6, 0x01A4(s0)             ## 000001A4
lbl_8089FB58:
	addiu   t7, $zero, 0x000A          ## t7 = 0000000A
	addiu   a1, $zero, 0x00B4          ## a1 = 000000B4
	bne     t6, $zero, lbl_8089FB84    
	addiu   a2, $zero, 0x0014          ## a2 = 00000014
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x0054($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_80026CF4              
	addiu   a3, $zero, 0x000A          ## a3 = 0000000A
	beq     $zero, $zero, lbl_8089FB94 
	nop
lbl_8089FB84:
	mtc1    $zero, $f12                ## $f12 = 0.00
	sh      t7, 0x01A6(s0)             ## 000001A6
	jal     func_8009151C              
	addiu   a3, $zero, 0x0064          ## a3 = 00000064
lbl_8089FB94:
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lui     $at, %hi(var_808A6CB4)     ## $at = 808A0000
	lwc1    $f0, %lo(var_808A6CB4)($at) 
	lui     $at, 0x4080                ## $at = 40800000
	mtc1    $at, $f16                  ## $f16 = 4.00
	lui     $at, 0x3E80                ## $at = 3E800000
	mtc1    $at, $f4                   ## $f4 = 0.25
	mul.s   $f18, $f0, $f16            
	lh      t8, 0x0190(s0)             ## 00000190
	lui     t0, %hi(var_808A6A88)      ## t0 = 808A0000
	mul.s   $f6, $f0, $f4              
	sll     t9, t8,  2                 
	subu    t9, t9, t8                 
	sll     t9, t9,  2                 
	addiu   t0, t0, %lo(var_808A6A88)  ## t0 = 808A6A88
	addu    t1, t9, t0                 
	mtc1    $zero, $f8                 ## $f8 = 0.00
	sw      t1, 0x004C($sp)            
	mfc1    a3, $f6                    
	mfc1    a1, $f18                   
	swc1    $f0, 0x01DC(s0)            ## 000001DC
	addiu   a0, s0, 0x01D4             ## a0 = 000001D4
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_80064178              
	swc1    $f8, 0x0010($sp)           
	lw      t2, 0x004C($sp)            
	mtc1    $zero, $f10                ## $f10 = 0.00
	lui     a2, 0x3E99                 ## a2 = 3E990000
	lw      a3, 0x01D4(s0)             ## 000001D4
	lw      a1, 0x0000(t2)             ## 00000000
	ori     a2, a2, 0x999A             ## a2 = 3E99999A
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	jal     func_80064178              
	swc1    $f10, 0x0010($sp)          
	lw      t3, 0x004C($sp)            
	mtc1    $zero, $f16                ## $f16 = 0.00
	lui     a2, 0x3E99                 ## a2 = 3E990000
	lw      a3, 0x01D4(s0)             ## 000001D4
	lw      a1, 0x0008(t3)             ## 00000008
	ori     a2, a2, 0x999A             ## a2 = 3E99999A
	addiu   a0, s0, 0x002C             ## a0 = 0000002C
	jal     func_80064178              
	swc1    $f16, 0x0010($sp)          
	lw      v0, 0x004C($sp)            
	lwc1    $f4, 0x0024(s0)            ## 00000024
	lui     $at, 0x42A0                ## $at = 42A00000
	lwc1    $f18, 0x0000(v0)           ## 00000000
	addiu   a0, s0, 0x01D8             ## a0 = 000001D8
	lui     a1, 0x44FA                 ## a1 = 44FA0000
	sub.s   $f6, $f18, $f4             
	mtc1    $at, $f4                   ## $f4 = 80.00
	lui     a2, 0x3F80                 ## a2 = 3F800000
	swc1    $f6, 0x0048($sp)           
	lwc1    $f10, 0x002C(s0)           ## 0000002C
	lwc1    $f8, 0x0008(v0)            ## 00000008
	sub.s   $f16, $f8, $f10            
	mtc1    $zero, $f8                 ## $f8 = 0.00
	swc1    $f16, 0x0044($sp)          
	lwc1    $f18, 0x01DC(s0)           ## 000001DC
	swc1    $f8, 0x0010($sp)           
	mul.s   $f6, $f18, $f4             
	mfc1    a3, $f6                    
	jal     func_80064178              
	nop
	lwc1    $f12, 0x0048($sp)          
	jal     func_800CD76C              
	lwc1    $f14, 0x0044($sp)          
	lui     $at, %hi(var_808A6CB8)     ## $at = 808A0000
	lwc1    $f10, %lo(var_808A6CB8)($at) 
	lwc1    $f4, 0x01DC(s0)            ## 000001DC
	lwc1    $f6, 0x01D8(s0)            ## 000001D8
	mul.s   $f16, $f0, $f10            
	addiu   t6, $zero, 0x0005          ## t6 = 00000005
	sw      t6, 0x0010($sp)            
	mul.s   $f8, $f4, $f6              
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	addiu   a2, $zero, 0x0005          ## a2 = 00000005
	trunc.w.s $f18, $f16                 
	trunc.w.s $f10, $f8                  
	mfc1    a1, $f18                   
	mfc1    a3, $f10                   
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	sll     a3, a3, 16                 
	jal     func_80064508              
	sra     a3, a3, 16                 
	addiu   a0, s0, 0x01B4             ## a0 = 000001B4
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x0002          ## a2 = 00000002
	addiu   a3, $zero, 0x07D0          ## a3 = 000007D0
	jal     func_80064508              
	sw      $zero, 0x0010($sp)         
	lwc1    $f0, 0x0048($sp)           
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f2                   ## $f2 = 5.00
	abs.s   $f0, $f0                   
	c.le.s  $f0, $f2                   
	lwc1    $f0, 0x0044($sp)           
	bc1fl   lbl_8089FD9C               
	lh      t5, 0x01CA(s0)             ## 000001CA
	abs.s   $f0, $f0                   
	c.le.s  $f0, $f2                   
	nop
	bc1fl   lbl_8089FD9C               
	lh      t5, 0x01CA(s0)             ## 000001CA
	lh      t7, 0x0192(s0)             ## 00000192
	mtc1    $zero, $f16                ## $f16 = 0.00
	mtc1    $zero, $f18                ## $f18 = 0.00
	swc1    $f16, 0x01D8(s0)           ## 000001D8
	bne     t7, $zero, lbl_8089FD78    
	swc1    $f18, 0x01D4(s0)           ## 000001D4
	lh      t8, 0x0190(s0)             ## 00000190
	addiu   t9, t8, 0x0001             ## t9 = 00000001
	sh      t9, 0x0190(s0)             ## 00000190
	lh      t0, 0x0190(s0)             ## 00000190
	slti    $at, t0, 0x0004            
	bnel    $at, $zero, lbl_8089FD9C   
	lh      t5, 0x01CA(s0)             ## 000001CA
	beq     $zero, $zero, lbl_8089FD98 
	sh      $zero, 0x0190(s0)          ## 00000190
lbl_8089FD78:
	lh      t1, 0x0190(s0)             ## 00000190
	addiu   t4, $zero, 0x0003          ## t4 = 00000003
	addiu   t2, t1, 0xFFFF             ## t2 = FFFFFFFF
	sh      t2, 0x0190(s0)             ## 00000190
	lh      t3, 0x0190(s0)             ## 00000190
	bgezl   t3, lbl_8089FD9C           
	lh      t5, 0x01CA(s0)             ## 000001CA
	sh      t4, 0x0190(s0)             ## 00000190
lbl_8089FD98:
	lh      t5, 0x01CA(s0)             ## 000001CA
lbl_8089FD9C:
	bnel    t5, $zero, lbl_8089FE24    
	lw      $ra, 0x0034($sp)           
	lh      t6, 0x01AC(s0)             ## 000001AC
	lui     $at, 0x43FA                ## $at = 43FA0000
	bnel    t6, $zero, lbl_8089FE24    
	lw      $ra, 0x0034($sp)           
	lwc1    $f4, 0x0090(s0)            ## 00000090
	mtc1    $at, $f6                   ## $f6 = 500.00
	nop
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_8089FE04               
	lh      t9, 0x01AA(s0)             ## 000001AA
	lh      t7, 0x0194(s0)             ## 00000194
	beql    t7, $zero, lbl_8089FE04    
	lh      t9, 0x01AA(s0)             ## 000001AA
	lh      t8, 0x01AA(s0)             ## 000001AA
	bnel    t8, $zero, lbl_8089FE04    
	lh      t9, 0x01AA(s0)             ## 000001AA
	jal     func_8089F258              
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x0054($sp)            
	jal     func_808A1998              
	addiu   a2, $zero, 0xFFFF          ## a2 = FFFFFFFF
	lh      t9, 0x01AA(s0)             ## 000001AA
lbl_8089FE04:
	bnel    t9, $zero, lbl_8089FE24    
	lw      $ra, 0x0034($sp)           
	lh      t0, 0x01A8(s0)             ## 000001A8
	bnel    t0, $zero, lbl_8089FE24    
	lw      $ra, 0x0034($sp)           
	jal     func_8089F15C              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x0034($sp)           
lbl_8089FE24:
	lw      s0, 0x0030($sp)            
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089FE34:
	addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
	sw      s0, 0x0030($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      a1, 0x0064($sp)            
	lw      t6, 0x0004(s0)             ## 00000004
	lui     $at, 0x0100                ## $at = 01000000
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	or      t7, t6, $at                ## t7 = 01000000
	jal     func_8008C9C0              
	sw      t7, 0x0004(s0)             ## 00000004
	lh      v0, 0x01CA(s0)             ## 000001CA
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
	or      a0, s0, $zero              ## a0 = 00000000
	bne     v0, $at, lbl_8089FE88      
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f4                   ## $f4 = 15.00
	addiu   a1, $zero, 0x3805          ## a1 = 00003805
	jal     func_80022FD0              
	swc1    $f4, 0x0060(s0)            ## 00000060
	lh      v0, 0x01CA(s0)             ## 000001CA
lbl_8089FE88:
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bne     v0, $at, lbl_8089FEA0      
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x384D          ## a1 = 0000384D
	lh      v0, 0x01CA(s0)             ## 000001CA
lbl_8089FEA0:
	lh      t8, 0x0190(s0)             ## 00000190
	lui     t0, %hi(var_808A6A88)      ## t0 = 808A0000
	addiu   t0, t0, %lo(var_808A6A88)  ## t0 = 808A6A88
	sll     t9, t8,  2                 
	subu    t9, t9, t8                 
	sll     t9, t9,  2                 
	lui     $at, 0x4040                ## $at = 40400000
	mtc1    $at, $f6                   ## $f6 = 3.00
	addu    t1, t9, t0                 
	sw      t1, 0x005C($sp)            
	bne     v0, $zero, lbl_8089FFEC    
	swc1    $f6, 0x01DC(s0)            ## 000001DC
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f8                   ## $f8 = 5.00
	lwc1    $f0, 0x01DC(s0)            ## 000001DC
	lui     $at, 0x3E80                ## $at = 3E800000
	mtc1    $at, $f16                  ## $f16 = 0.25
	mul.s   $f10, $f0, $f8             
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   a0, s0, 0x01D4             ## a0 = 000001D4
	mul.s   $f18, $f0, $f16            
	lui     a2, 0x3F80                 ## a2 = 3F800000
	swc1    $f4, 0x0010($sp)           
	mfc1    a1, $f10                   
	mfc1    a3, $f18                   
	jal     func_80064178              
	nop
	lw      t2, 0x005C($sp)            
	mtc1    $zero, $f6                 ## $f6 = 0.00
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	lw      a3, 0x01D4(s0)             ## 000001D4
	lw      a1, 0x0000(t2)             ## 00000000
	sw      a0, 0x0040($sp)            
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_80064178              
	swc1    $f6, 0x0010($sp)           
	lw      t3, 0x005C($sp)            
	mtc1    $zero, $f8                 ## $f8 = 0.00
	lw      a3, 0x01D4(s0)             ## 000001D4
	lw      a1, 0x0008(t3)             ## 00000008
	addiu   a0, s0, 0x002C             ## a0 = 0000002C
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_80064178              
	swc1    $f8, 0x0010($sp)           
	lh      t4, 0x01B4(s0)             ## 000001B4
	lhu     t6, 0x0088(s0)             ## 00000088
	lui     $at, %hi(var_808A6CBC)     ## $at = 808A0000
	addiu   t5, t4, 0x07D0             ## t5 = 000007D0
	andi    t7, t6, 0x0001             ## t7 = 00000000
	beq     t7, $zero, lbl_8089FFEC    
	sh      t5, 0x01B4(s0)             ## 000001B4
	lwc1    $f10, %lo(var_808A6CBC)($at) 
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x304E          ## a1 = 0000304E
	jal     func_80022FD0              
	swc1    $f10, 0x0218(s0)           ## 00000218
	lh      v0, 0x018E(s0)             ## 0000018E
	lw      a0, 0x0064($sp)            
	addiu   a1, $zero, 0x0002          ## a1 = 00000002
	andi    t8, v0, 0x0007             ## t8 = 00000000
	bne     t8, $zero, lbl_8089FFA8    
	addiu   a0, a0, 0x01E0             ## a0 = 000001E0
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	jal     func_800497A4              
	addiu   a3, $zero, 0x0008          ## a3 = 00000008
	lh      v0, 0x018E(s0)             ## 0000018E
lbl_8089FFA8:
	andi    t9, v0, 0x0001             ## t9 = 00000000
	bne     t9, $zero, lbl_8089FFEC    
	lw      a0, 0x0064($sp)            
	lui     $at, 0x4100                ## $at = 41000000
	mtc1    $at, $f16                  ## $f16 = 8.00
	addiu   t0, $zero, 0x0003          ## t0 = 00000003
	addiu   t1, $zero, 0x01F4          ## t1 = 000001F4
	addiu   t2, $zero, 0x000A          ## t2 = 0000000A
	sw      t2, 0x001C($sp)            
	sw      t1, 0x0018($sp)            
	sw      t0, 0x0010($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	lw      a2, 0x0040($sp)            
	lui     a3, 0x4220                 ## a3 = 42200000
	sw      $zero, 0x0020($sp)         
	jal     func_800260E8              
	swc1    $f16, 0x0014($sp)          
lbl_8089FFEC:
	lw      t3, 0x005C($sp)            
	lwc1    $f4, 0x0024(s0)            ## 00000024
	lui     $at, 0x42C8                ## $at = 42C80000
	lwc1    $f18, 0x0000(t3)           ## 00000000
	addiu   a0, s0, 0x01D8             ## a0 = 000001D8
	lui     a1, 0x44FA                 ## a1 = 44FA0000
	sub.s   $f6, $f18, $f4             
	mtc1    $at, $f4                   ## $f4 = 100.00
	lui     a2, 0x3F80                 ## a2 = 3F800000
	swc1    $f6, 0x004C($sp)           
	lwc1    $f10, 0x002C(s0)           ## 0000002C
	lwc1    $f8, 0x0008(t3)            ## 00000008
	sub.s   $f16, $f8, $f10            
	mtc1    $zero, $f8                 ## $f8 = 0.00
	swc1    $f16, 0x0048($sp)          
	lwc1    $f18, 0x01DC(s0)           ## 000001DC
	swc1    $f8, 0x0010($sp)           
	mul.s   $f6, $f18, $f4             
	mfc1    a3, $f6                    
	jal     func_80064178              
	nop
	lwc1    $f12, 0x004C($sp)          
	jal     func_800CD76C              
	lwc1    $f14, 0x0048($sp)          
	lui     $at, %hi(var_808A6CC0)     ## $at = 808A0000
	lwc1    $f10, %lo(var_808A6CC0)($at) 
	lwc1    $f4, 0x01DC(s0)            ## 000001DC
	lwc1    $f6, 0x01D8(s0)            ## 000001D8
	mul.s   $f16, $f0, $f10            
	sw      $zero, 0x0010($sp)         
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	mul.s   $f8, $f4, $f6              
	addiu   a2, $zero, 0x0005          ## a2 = 00000005
	trunc.w.s $f18, $f16                 
	trunc.w.s $f10, $f8                  
	mfc1    a1, $f18                   
	mfc1    a3, $f10                   
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	sll     a3, a3, 16                 
	jal     func_80064508              
	sra     a3, a3, 16                 
	lwc1    $f0, 0x004C($sp)           
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f2                   ## $f2 = 15.00
	abs.s   $f0, $f0                   
	c.le.s  $f0, $f2                   
	lwc1    $f0, 0x0048($sp)           
	bc1fl   lbl_808A0220               
	lw      $ra, 0x0034($sp)           
	abs.s   $f0, $f0                   
	c.le.s  $f0, $f2                   
	nop
	bc1fl   lbl_808A0220               
	lw      $ra, 0x0034($sp)           
	lh      t6, 0x0198(s0)             ## 00000198
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x384D          ## a1 = 0000384D
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	sh      t7, 0x0198(s0)             ## 00000198
	lh      t8, 0x0198(s0)             ## 00000198
	lw      t9, 0x0064($sp)            
	slti    $at, t8, 0x0002            
	bne     $at, $zero, lbl_808A01C4   
	addiu   t0, t9, 0x01E0             ## t0 = 000001E0
	sw      t0, 0x0040($sp)            
	lh      t1, 0x0196(s0)             ## 00000196
	mtc1    $zero, $f16                ## $f16 = 0.00
	mtc1    $zero, $f18                ## $f18 = 0.00
	beq     t1, $zero, lbl_808A0118    
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t2, 0x0192(s0)             ## 00000192
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	subu    t4, t3, t2                 
	sh      t4, 0x0192(s0)             ## 00000192
lbl_808A0118:
	swc1    $f16, 0x01D8(s0)           ## 000001D8
	jal     func_8089F0CC              
	swc1    $f18, 0x01D4(s0)           ## 000001D4
	lui     $at, %hi(var_808A6CC4)     ## $at = 808A0000
	lwc1    $f4, %lo(var_808A6CC4)($at) 
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f6                   ## $f6 = 20.00
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x384C          ## a1 = 0000384C
	swc1    $f4, 0x0218(s0)            ## 00000218
	jal     func_80022FD0              
	swc1    $f6, 0x0060(s0)            ## 00000060
	lw      a0, 0x0040($sp)            
	addiu   a1, $zero, 0x0002          ## a1 = 00000002
	addiu   a2, $zero, 0x0006          ## a2 = 00000006
	jal     func_800497A4              
	addiu   a3, $zero, 0x0008          ## a3 = 00000008
	lwc1    $f8, 0x0024(s0)            ## 00000024
	lui     $at, 0x4270                ## $at = 42700000
	mtc1    $at, $f16                  ## $f16 = 60.00
	swc1    $f8, 0x0050($sp)           
	lwc1    $f10, 0x0028(s0)           ## 00000028
	addiu   t5, $zero, 0x0320          ## t5 = 00000320
	addiu   t6, $zero, 0x000A          ## t6 = 0000000A
	add.s   $f18, $f10, $f16           
	lw      a0, 0x0064($sp)            
	addiu   a1, $sp, 0x0050            ## a1 = FFFFFFF0
	lui     a2, 0x437A                 ## a2 = 437A0000
	swc1    $f18, 0x0054($sp)          
	lwc1    $f4, 0x002C(s0)            ## 0000002C
	sw      $zero, 0x0018($sp)         
	sw      t6, 0x0014($sp)            
	sw      t5, 0x0010($sp)            
	addiu   a3, $zero, 0x0028          ## a3 = 00000028
	jal     func_80026308              
	swc1    $f4, 0x0058($sp)           
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x0064($sp)            
	addiu   a2, $zero, 0x0006          ## a2 = 00000006
	jal     func_80026CF4              
	addiu   a3, $zero, 0x000F          ## a3 = 0000000F
	beq     $zero, $zero, lbl_808A01D0 
	lh      t7, 0x0192(s0)             ## 00000192
lbl_808A01C4:
	jal     func_80022FD0              
	swc1    $f2, 0x0060(s0)            ## 00000060
	lh      t7, 0x0192(s0)             ## 00000192
lbl_808A01D0:
	bnel    t7, $zero, lbl_808A0200    
	lh      t1, 0x0190(s0)             ## 00000190
	lh      t8, 0x0190(s0)             ## 00000190
	addiu   t9, t8, 0x0001             ## t9 = 00000001
	sh      t9, 0x0190(s0)             ## 00000190
	lh      t0, 0x0190(s0)             ## 00000190
	slti    $at, t0, 0x0004            
	bnel    $at, $zero, lbl_808A0220   
	lw      $ra, 0x0034($sp)           
	beq     $zero, $zero, lbl_808A021C 
	sh      $zero, 0x0190(s0)          ## 00000190
	lh      t1, 0x0190(s0)             ## 00000190
lbl_808A0200:
	addiu   t4, $zero, 0x0003          ## t4 = 00000003
	addiu   t3, t1, 0xFFFF             ## t3 = FFFFFFFF
	sh      t3, 0x0190(s0)             ## 00000190
	lh      t2, 0x0190(s0)             ## 00000190
	bgezl   t2, lbl_808A0220           
	lw      $ra, 0x0034($sp)           
	sh      t4, 0x0190(s0)             ## 00000190
lbl_808A021C:
	lw      $ra, 0x0034($sp)           
lbl_808A0220:
	lw      s0, 0x0030($sp)            
	addiu   $sp, $sp, 0x0060           ## $sp = 00000000
	jr      $ra                        
	nop


func_808A0230:
	addiu   $sp, $sp, 0xFF50           ## $sp = FFFFFF50
	sw      s1, 0x0028($sp)            
	or      s1, a0, $zero              ## s1 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      s0, 0x0024($sp)            
	lw      v0, 0x1C44(a1)             ## 00001C44
	or      a0, s1, $zero              ## a0 = 00000000
	sw      v0, 0x009C($sp)            
	sw      v0, 0x0098($sp)            
	lh      t6, 0x018E(s1)             ## 0000018E
	lh      v1, 0x01CA(s1)             ## 000001CA
	sb      $zero, 0x01D2(s1)          ## 000001D2
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	beq     v1, $zero, lbl_808A0274    
	sh      t7, 0x018E(s1)             ## 0000018E
	addiu   t8, v1, 0xFFFF             ## t8 = FFFFFFFF
	sh      t8, 0x01CA(s1)             ## 000001CA
lbl_808A0274:
	lh      v0, 0x01CC(s1)             ## 000001CC
	beq     v0, $zero, lbl_808A0284    
	addiu   t9, v0, 0xFFFF             ## t9 = FFFFFFFF
	sh      t9, 0x01CC(s1)             ## 000001CC
lbl_808A0284:
	lh      v0, 0x01CE(s1)             ## 000001CE
	beq     v0, $zero, lbl_808A0294    
	addiu   t2, v0, 0xFFFF             ## t2 = FFFFFFFF
	sh      t2, 0x01CE(s1)             ## 000001CE
lbl_808A0294:
	lh      v0, 0x01B0(s1)             ## 000001B0
	beq     v0, $zero, lbl_808A02A4    
	addiu   t3, v0, 0xFFFF             ## t3 = FFFFFFFF
	sh      t3, 0x01B0(s1)             ## 000001B0
lbl_808A02A4:
	lh      v0, 0x01B8(s1)             ## 000001B8
	beq     v0, $zero, lbl_808A02B4    
	addiu   t4, v0, 0xFFFF             ## t4 = FFFFFFFF
	sh      t4, 0x01B8(s1)             ## 000001B8
lbl_808A02B4:
	jal     func_808A1620              
	sw      a1, 0x00B4($sp)            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	or      a0, s1, $zero              ## a0 = 00000000
	c.lt.s  $f4, $f0                   
	nop
	bc1fl   lbl_808A02E8               
	sh      $zero, 0x0194(s1)          ## 00000194
	trunc.w.s $f6, $f0                   
	mfc1    t6, $f6                    
	beq     $zero, $zero, lbl_808A02E8 
	sh      t6, 0x0194(s1)             ## 00000194
	sh      $zero, 0x0194(s1)          ## 00000194
lbl_808A02E8:
	jal     func_808A175C              
	lw      a1, 0x00B4($sp)            
	mtc1    $zero, $f8                 ## $f8 = 0.00
	or      a0, s1, $zero              ## a0 = 00000000
	c.lt.s  $f8, $f0                   
	nop
	bc1fl   lbl_808A031C               
	sh      $zero, 0x0196(s1)          ## 00000196
	trunc.w.s $f10, $f0                  
	mfc1    t8, $f10                   
	beq     $zero, $zero, lbl_808A031C 
	sh      t8, 0x0196(s1)             ## 00000196
	sh      $zero, 0x0196(s1)          ## 00000196
lbl_808A031C:
	jal     func_808A18A8              
	lw      a1, 0x00B4($sp)            
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_808A1904              
	lw      a1, 0x00B4($sp)            
	lw      t9, 0x0180(s1)             ## 00000180
	or      a0, s1, $zero              ## a0 = 00000000
	lw      a1, 0x00B4($sp)            
	jalr    $ra, t9                    
	nop
	lh      t2, 0x0032(s1)             ## 00000032
	mtc1    $zero, $f16                ## $f16 = 0.00
	lw      a1, 0x0218(s1)             ## 00000218
	sh      t2, 0x00B6(s1)             ## 000000B6
	addiu   a0, s1, 0x00BC             ## a0 = 000000BC
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x42C8                 ## a3 = 42C80000
	jal     func_80064178              
	swc1    $f16, 0x0010($sp)          
	jal     func_8002121C              
	or      a0, s1, $zero              ## a0 = 00000000
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_808A1A0C              
	lw      a1, 0x00B4($sp)            
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f0                   ## $f0 = 10.00
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f18                  ## $f18 = 20.00
	addiu   t3, $zero, 0x0004          ## t3 = 00000004
	mfc1    a2, $f0                    
	mfc1    a3, $f0                    
	sw      t3, 0x0014($sp)            
	lw      a0, 0x00B4($sp)            
	or      a1, s1, $zero              ## a1 = 00000000
	jal     func_80021E6C              
	swc1    $f18, 0x0010($sp)          
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     a3, 0x3A83                 ## a3 = 3A830000
	ori     a3, a3, 0x126F             ## a3 = 3A83126F
	mfc1    a1, $f0                    
	addiu   a0, s1, 0x01F8             ## a0 = 000001F8
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_80064178              
	swc1    $f0, 0x0010($sp)           
	mtc1    $zero, $f2                 ## $f2 = 0.00
	lui     a3, 0x3A83                 ## a3 = 3A830000
	ori     a3, a3, 0x126F             ## a3 = 3A83126F
	mfc1    a1, $f2                    
	addiu   a0, s1, 0x01FC             ## a0 = 000001FC
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_80064178              
	swc1    $f2, 0x0010($sp)           
	lh      t4, 0x018E(s1)             ## 0000018E
	andi    t5, t4, 0x007F             ## t5 = 00000000
	bne     t5, $zero, lbl_808A043C    
	or      s0, $zero, $zero           ## s0 = 00000000
lbl_808A03FC:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x3E80                ## $at = 3E800000
	mtc1    $at, $f4                   ## $f4 = 0.25
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f8                   ## $f8 = 0.50
	mul.s   $f6, $f0, $f4              
	sll     t6, s0,  2                 
	addiu   s0, s0, 0x0001             ## s0 = 00000001
	sll     s0, s0, 16                 
	sra     s0, s0, 16                 
	slti    $at, s0, 0x0032            
	addu    t7, s1, t6                 
	add.s   $f10, $f6, $f8             
	bne     $at, $zero, lbl_808A03FC   
	swc1    $f10, 0x0314(t7)           ## 00000314
lbl_808A043C:
	or      s0, $zero, $zero           ## s0 = 00000000
lbl_808A0440:
	sll     t8, s0,  2                 
	addu    v0, s1, t8                 
	lwc1    $f16, 0x024C(v0)           ## 0000024C
	lwc1    $f18, 0x0314(v0)           ## 00000314
	addiu   s0, s0, 0x0001             ## s0 = 00000001
	sll     s0, s0, 16                 
	add.s   $f4, $f16, $f18            
	sra     s0, s0, 16                 
	slti    $at, s0, 0x0032            
	bne     $at, $zero, lbl_808A0440   
	swc1    $f4, 0x024C(v0)            ## 0000024C
	lh      v0, 0x01B8(s1)             ## 000001B8
	beq     v0, $zero, lbl_808A074C    
	slti    $at, v0, 0x000B            
	bne     $at, $zero, lbl_808A04C8   
	addiu   a0, s1, 0x0230             ## a0 = 00000230
	andi    t9, v0, 0x0001             ## t9 = 00000000
	beq     t9, $zero, lbl_808A049C    
	addiu   a0, s1, 0x0230             ## a0 = 00000230
	lui     $at, 0x4220                ## $at = 42200000
	mtc1    $at, $f0                   ## $f0 = 40.00
	beq     $zero, $zero, lbl_808A04AC 
	mtc1    $zero, $f6                 ## $f6 = 0.00
lbl_808A049C:
	lui     $at, 0x4270                ## $at = 42700000
	mtc1    $at, $f0                   ## $f0 = 60.00
	nop
	mtc1    $zero, $f6                 ## $f6 = 0.00
lbl_808A04AC:
	mfc1    a1, $f0                    
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x4248                 ## a3 = 42480000
	jal     func_80064178              
	swc1    $f6, 0x0010($sp)           
	beq     $zero, $zero, lbl_808A04E4 
	lw      v1, 0x00B4($sp)            
lbl_808A04C8:
	mtc1    $zero, $f8                 ## $f8 = 0.00
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x4120                 ## a3 = 41200000
	jal     func_80064178              
	swc1    $f8, 0x0010($sp)           
	lw      v1, 0x00B4($sp)            
lbl_808A04E4:
	lui     $at, 0x0001                ## $at = 00010000
	addu    v0, v1, $at                
	lh      t2, 0x0ABA(v0)             ## 00000ABA
	bnel    t2, $zero, lbl_808A0750    
	lh      v0, 0x01AE(s1)             ## 000001AE
	lh      t3, 0x0AB4(v0)             ## 00000AB4
	addiu   t5, $zero, 0x0001          ## t5 = 00000001
	bnel    t3, $zero, lbl_808A0750    
	lh      v0, 0x01AE(s1)             ## 000001AE
	cfc1    t4, $f31                   
	ctc1    t5, $f31                   
	lwc1    $f10, 0x0230(s1)           ## 00000230
	lui     $at, %hi(var_808A6CC8)     ## $at = 808A0000
	lwc1    $f0, %lo(var_808A6CC8)($at) 
	cvt.w.s $f16, $f10                 
	lui     $at, 0x4F00                ## $at = 4F000000
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	cfc1    t5, $f31                   
	nop
	andi    t5, t5, 0x0078             ## t5 = 00000000
	beql    t5, $zero, lbl_808A0584    
	mfc1    t5, $f16                   
	mtc1    $at, $f16                  ## $f16 = 2147484000.00
	addiu   t5, $zero, 0x0001          ## t5 = 00000001
	sub.s   $f16, $f10, $f16           
	ctc1    t5, $f31                   
	nop
	cvt.w.s $f16, $f16                 
	cfc1    t5, $f31                   
	nop
	andi    t5, t5, 0x0078             ## t5 = 00000000
	bne     t5, $zero, lbl_808A0578    
	nop
	mfc1    t5, $f16                   
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_808A0590 
	or      t5, t5, $at                ## t5 = 80000000
lbl_808A0578:
	beq     $zero, $zero, lbl_808A0590 
	addiu   t5, $zero, 0xFFFF          ## t5 = FFFFFFFF
	mfc1    t5, $f16                   
lbl_808A0584:
	nop
	bltz    t5, lbl_808A0578           
	nop
lbl_808A0590:
	andi    t6, t5, 0x00FF             ## t6 = 000000FF
	sh      t6, 0x0AB6(v0)             ## 00000AB6
	ctc1    t4, $f31                   
	lwc1    $f18, 0x0230(s1)           ## 00000230
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	lui     $at, 0x4F00                ## $at = 4F000000
	mul.s   $f4, $f18, $f0             
	cfc1    t7, $f31                   
	ctc1    t8, $f31                   
	nop
	cvt.w.s $f6, $f4                   
	cfc1    t8, $f31                   
	nop
	andi    t8, t8, 0x0078             ## t8 = 00000000
	beql    t8, $zero, lbl_808A0618    
	mfc1    t8, $f6                    
	mtc1    $at, $f6                   ## $f6 = 2147484000.00
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	sub.s   $f6, $f4, $f6              
	ctc1    t8, $f31                   
	nop
	cvt.w.s $f6, $f6                   
	cfc1    t8, $f31                   
	nop
	andi    t8, t8, 0x0078             ## t8 = 00000000
	bne     t8, $zero, lbl_808A060C    
	nop
	mfc1    t8, $f6                    
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_808A0624 
	or      t8, t8, $at                ## t8 = 80000000
lbl_808A060C:
	beq     $zero, $zero, lbl_808A0624 
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	mfc1    t8, $f6                    
lbl_808A0618:
	nop
	bltz    t8, lbl_808A060C           
	nop
lbl_808A0624:
	ctc1    t7, $f31                   
	andi    t9, t8, 0x00FF             ## t9 = 000000FF
	sh      t9, 0x0AB8(v0)             ## 00000AB8
	lwc1    $f8, 0x0230(s1)            ## 00000230
	cfc1    t2, $f31                   
	ctc1    t3, $f31                   
	lui     $at, 0x4F00                ## $at = 4F000000
	cvt.w.s $f10, $f8                  
	cfc1    t3, $f31                   
	nop
	andi    t3, t3, 0x0078             ## t3 = 00000000
	beql    t3, $zero, lbl_808A06A0    
	mfc1    t3, $f10                   
	mtc1    $at, $f10                  ## $f10 = 2147484000.00
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	sub.s   $f10, $f8, $f10            
	ctc1    t3, $f31                   
	nop
	cvt.w.s $f10, $f10                 
	cfc1    t3, $f31                   
	nop
	andi    t3, t3, 0x0078             ## t3 = 00000000
	bne     t3, $zero, lbl_808A0694    
	nop
	mfc1    t3, $f10                   
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_808A06AC 
	or      t3, t3, $at                ## t3 = 80000000
lbl_808A0694:
	beq     $zero, $zero, lbl_808A06AC 
	addiu   t3, $zero, 0xFFFF          ## t3 = FFFFFFFF
	mfc1    t3, $f10                   
lbl_808A06A0:
	nop
	bltz    t3, lbl_808A0694           
	nop
lbl_808A06AC:
	andi    t4, t3, 0x00FF             ## t4 = 000000FF
	sh      t4, 0x0AB0(v0)             ## 00000AB0
	ctc1    t2, $f31                   
	lwc1    $f16, 0x0230(s1)           ## 00000230
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	lui     $at, 0x4F00                ## $at = 4F000000
	mul.s   $f18, $f16, $f0            
	cfc1    t5, $f31                   
	ctc1    t6, $f31                   
	nop
	cvt.w.s $f4, $f18                  
	cfc1    t6, $f31                   
	nop
	andi    t6, t6, 0x0078             ## t6 = 00000000
	beql    t6, $zero, lbl_808A0734    
	mfc1    t6, $f4                    
	mtc1    $at, $f4                   ## $f4 = 2147484000.00
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	sub.s   $f4, $f18, $f4             
	ctc1    t6, $f31                   
	nop
	cvt.w.s $f4, $f4                   
	cfc1    t6, $f31                   
	nop
	andi    t6, t6, 0x0078             ## t6 = 00000000
	bne     t6, $zero, lbl_808A0728    
	nop
	mfc1    t6, $f4                    
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_808A0740 
	or      t6, t6, $at                ## t6 = 80000000
lbl_808A0728:
	beq     $zero, $zero, lbl_808A0740 
	addiu   t6, $zero, 0xFFFF          ## t6 = FFFFFFFF
	mfc1    t6, $f4                    
lbl_808A0734:
	nop
	bltz    t6, lbl_808A0728           
	nop
lbl_808A0740:
	ctc1    t5, $f31                   
	andi    t7, t6, 0x00FF             ## t7 = 000000FF
	sh      t7, 0x0AB2(v0)             ## 00000AB2
lbl_808A074C:
	lh      v0, 0x01AE(s1)             ## 000001AE
lbl_808A0750:
	lw      v1, 0x00B4($sp)            
	lui     a2, 0x3F80                 ## a2 = 3F800000
	beq     v0, $zero, lbl_808A0848    
	lui     a3, 0x40A0                 ## a3 = 40A00000
	slti    $at, v0, 0x03E8            
	bne     $at, $zero, lbl_808A07AC   
	addiu   t8, v0, 0xFFFF             ## t8 = FFFFFFFF
	mtc1    $zero, $f6                 ## $f6 = 0.00
	addiu   a0, s1, 0x0200             ## a0 = 00000200
	lui     a1, 0x41F0                 ## a1 = 41F00000
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x41A0                 ## a3 = 41A00000
	jal     func_80064178              
	swc1    $f6, 0x0010($sp)           
	mtc1    $zero, $f8                 ## $f8 = 0.00
	addiu   a0, s1, 0x0204             ## a0 = 00000204
	lui     a1, 0x4120                 ## a1 = 41200000
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x41A0                 ## a3 = 41A00000
	jal     func_80064178              
	swc1    $f8, 0x0010($sp)           
	beq     $zero, $zero, lbl_808A07EC 
	mtc1    $zero, $f18                ## $f18 = 0.00
lbl_808A07AC:
	mtc1    $zero, $f10                ## $f10 = 0.00
	sh      t8, 0x01AE(s1)             ## 000001AE
	addiu   a0, s1, 0x0200             ## a0 = 00000200
	lui     a1, 0x437F                 ## a1 = 437F0000
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x41A0                 ## a3 = 41A00000
	jal     func_80064178              
	swc1    $f10, 0x0010($sp)          
	mtc1    $zero, $f16                ## $f16 = 0.00
	addiu   a0, s1, 0x0204             ## a0 = 00000204
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x41A0                 ## a3 = 41A00000
	jal     func_80064178              
	swc1    $f16, 0x0010($sp)          
	mtc1    $zero, $f18                ## $f18 = 0.00
lbl_808A07EC:
	addiu   a0, s1, 0x0208             ## a0 = 00000208
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x41A0                 ## a3 = 41A00000
	jal     func_80064178              
	swc1    $f18, 0x0010($sp)          
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   a0, s1, 0x020C             ## a0 = 0000020C
	lui     a1, 0x4461                 ## a1 = 44610000
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x4120                 ## a3 = 41200000
	jal     func_80064178              
	swc1    $f4, 0x0010($sp)           
	mtc1    $zero, $f6                 ## $f6 = 0.00
	lui     a1, 0x4489                 ## a1 = 44890000
	ori     a1, a1, 0x6000             ## a1 = 44896000
	addiu   a0, s1, 0x0210             ## a0 = 00000210
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x4120                 ## a3 = 41200000
	jal     func_80064178              
	swc1    $f6, 0x0010($sp)           
	beq     $zero, $zero, lbl_808A094C 
	lw      t8, 0x009C($sp)            
lbl_808A0848:
	lbu     t9, 0x07AF(v1)             ## 000007AF
	mtc1    $zero, $f16                ## $f16 = 0.00
	addiu   a0, s1, 0x0200             ## a0 = 00000200
	mtc1    t9, $f8                    ## $f8 = 0.00
	lui     $at, 0x4F80                ## $at = 4F800000
	bgez    t9, lbl_808A0870           
	cvt.s.w $f8, $f8                   
	mtc1    $at, $f10                  ## $f10 = 4294967000.00
	nop
	add.s   $f8, $f8, $f10             
lbl_808A0870:
	mfc1    a1, $f8                    
	jal     func_80064178              
	swc1    $f16, 0x0010($sp)          
	lw      t2, 0x00B4($sp)            
	mtc1    $zero, $f6                 ## $f6 = 0.00
	addiu   a0, s1, 0x0204             ## a0 = 00000204
	lbu     t3, 0x07B0(t2)             ## 000007B0
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x40A0                 ## a3 = 40A00000
	mtc1    t3, $f18                   ## $f18 = 0.00
	lui     $at, 0x4F80                ## $at = 4F800000
	bgez    t3, lbl_808A08B0           
	cvt.s.w $f18, $f18                 
	mtc1    $at, $f4                   ## $f4 = 4294967000.00
	nop
	add.s   $f18, $f18, $f4            
lbl_808A08B0:
	mfc1    a1, $f18                   
	jal     func_80064178              
	swc1    $f6, 0x0010($sp)           
	lw      t4, 0x00B4($sp)            
	mtc1    $zero, $f16                ## $f16 = 0.00
	addiu   a0, s1, 0x0208             ## a0 = 00000208
	lbu     t5, 0x07B1(t4)             ## 000007B1
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x40A0                 ## a3 = 40A00000
	mtc1    t5, $f8                    ## $f8 = 0.00
	lui     $at, 0x4F80                ## $at = 4F800000
	bgez    t5, lbl_808A08F0           
	cvt.s.w $f8, $f8                   
	mtc1    $at, $f10                  ## $f10 = 4294967000.00
	nop
	add.s   $f8, $f8, $f10             
lbl_808A08F0:
	mfc1    a1, $f8                    
	jal     func_80064178              
	swc1    $f16, 0x0010($sp)          
	lw      t6, 0x00B4($sp)            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   a0, s1, 0x020C             ## a0 = 0000020C
	lh      t7, 0x07B2(t6)             ## 000007B2
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x40A0                 ## a3 = 40A00000
	mtc1    t7, $f18                   ## $f18 = 0.00
	swc1    $f4, 0x0010($sp)           
	cvt.s.w $f18, $f18                 
	mfc1    a1, $f18                   
	jal     func_80064178              
	nop
	mtc1    $zero, $f6                 ## $f6 = 0.00
	addiu   a0, s1, 0x0210             ## a0 = 00000210
	lui     a1, 0x447A                 ## a1 = 447A0000
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x40A0                 ## a3 = 40A00000
	jal     func_80064178              
	swc1    $f6, 0x0010($sp)           
	lw      t8, 0x009C($sp)            
lbl_808A094C:
	lui     $at, 0xC47A                ## $at = C47A0000
	mtc1    $at, $f10                  ## $f10 = -1000.00
	lwc1    $f8, 0x0028(t8)            ## 00000028
	lui     $at, %hi(var_808A6CCC)     ## $at = 808A0000
	c.lt.s  $f8, $f10                  
	nop
	bc1fl   lbl_808A0D74               
	lh      t6, 0x01B6(s1)             ## 000001B6
	sh      $zero, 0x008C($sp)         
	lwc1    $f0, 0x0214(s1)            ## 00000214
	lwc1    $f16, %lo(var_808A6CCC)($at) 
	addiu   s0, $zero, 0x0001          ## s0 = 00000001
	or      v1, $zero, $zero           ## v1 = 00000000
	c.lt.s  $f16, $f0                  
	lui     $at, %hi(var_808A6CD0)     ## $at = 808A0000
	bc1f    lbl_808A0998               
	nop
	beq     $zero, $zero, lbl_808A0A88 
	sh      $zero, 0x0090($sp)         
lbl_808A0998:
	lwc1    $f18, %lo(var_808A6CD0)($at) 
	addiu   s0, $zero, 0x0003          ## s0 = 00000003
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	c.lt.s  $f18, $f0                  
	or      v1, $zero, $zero           ## v1 = 00000000
	lui     $at, %hi(var_808A6CD4)     ## $at = 808A0000
	bc1f    lbl_808A09C0               
	nop
	beq     $zero, $zero, lbl_808A0A88 
	sh      t9, 0x0090($sp)            
lbl_808A09C0:
	lwc1    $f4, %lo(var_808A6CD4)($at) 
	addiu   s0, $zero, 0x0007          ## s0 = 00000007
	addiu   t2, $zero, 0x0003          ## t2 = 00000003
	c.lt.s  $f4, $f0                   
	lui     $at, %hi(var_808A6CDC)     ## $at = 808A0000
	bc1f    lbl_808A0A08               
	nop
	jal     func_800CDCCC              ## Rand.Next() float
	sh      t2, 0x0090($sp)            
	lui     $at, %hi(var_808A6CD8)     ## $at = 808A0000
	lwc1    $f6, %lo(var_808A6CD8)($at) 
	mul.s   $f8, $f0, $f6              
	trunc.w.s $f10, $f8                  
	mfc1    v1, $f10                   
	nop
	sll     v1, v1, 16                 
	beq     $zero, $zero, lbl_808A0A88 
	sra     v1, v1, 16                 
lbl_808A0A08:
	lwc1    $f16, %lo(var_808A6CDC)($at) 
	addiu   t4, $zero, 0x0FFF          ## t4 = 00000FFF
	addiu   s0, $zero, 0x0001          ## s0 = 00000001
	c.lt.s  $f16, $f0                  
	addiu   t6, $zero, 0xFFFF          ## t6 = FFFFFFFF
	addiu   v1, $zero, 0x0001          ## v1 = 00000001
	bc1fl   lbl_808A0A5C               
	sh      t6, 0x0090($sp)            
	addiu   s0, $zero, 0x0007          ## s0 = 00000007
	jal     func_800CDCCC              ## Rand.Next() float
	sh      t4, 0x0090($sp)            
	lui     $at, %hi(var_808A6CE0)     ## $at = 808A0000
	lwc1    $f18, %lo(var_808A6CE0)($at) 
	mul.s   $f4, $f0, $f18             
	trunc.w.s $f6, $f4                   
	mfc1    v1, $f6                    
	nop
	sll     v1, v1, 16                 
	beq     $zero, $zero, lbl_808A0A88 
	sra     v1, v1, 16                 
	sh      t6, 0x0090($sp)            
lbl_808A0A5C:
	jal     func_800CDCCC              ## Rand.Next() float
	sh      v1, 0x008E($sp)            
	lui     $at, 0x4248                ## $at = 42480000
	mtc1    $at, $f8                   ## $f8 = 50.00
	lh      v1, 0x008E($sp)            
	mul.s   $f10, $f0, $f8             
	trunc.w.s $f16, $f10                 
	mfc1    t2, $f16                   
	nop
	addiu   t3, t2, 0xFFCE             ## t3 = FFFFFFCE
	sh      t3, 0x008C($sp)            
lbl_808A0A88:
	lw      t4, 0x0098($sp)            
	lbu     t5, 0x0434(t4)             ## 00000434
	slti    $at, t5, 0x000A            
	bnel    $at, $zero, lbl_808A0AA4   
	lh      a2, 0x018E(s1)             ## 0000018E
	addiu   s0, $zero, 0xFFFF          ## s0 = FFFFFFFF
	lh      a2, 0x018E(s1)             ## 0000018E
lbl_808A0AA4:
	and     t6, a2, s0                 
	bnel    t6, $zero, lbl_808A0B80    
	lh      t6, 0x0090($sp)            
	jal     func_800CDCCC              ## Rand.Next() float
	sh      v1, 0x008E($sp)            
	lui     $at, 0x43A5                ## $at = 43A50000
	mtc1    $at, $f18                  ## $f18 = 330.00
	nop
	mul.s   $f4, $f0, $f18             
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f4, 0x007C($sp)           
	lui     $at, %hi(var_808A6CE4)     ## $at = 808A0000
	lwc1    $f6, %lo(var_808A6CE4)($at) 
	mul.s   $f12, $f0, $f6             
	jal     func_800CF470              
	swc1    $f12, 0x0078($sp)          
	lwc1    $f8, 0x007C($sp)           
	lui     $at, %hi(var_808A6CE8)     ## $at = 808A0000
	lwc1    $f16, %lo(var_808A6CE8)($at) 
	mul.s   $f10, $f0, $f8             
	lui     $at, %hi(var_808A6CEC)     ## $at = 808A0000
	lwc1    $f4, %lo(var_808A6CEC)($at) 
	lwc1    $f12, 0x0078($sp)          
	swc1    $f4, 0x0084($sp)           
	add.s   $f18, $f10, $f16           
	jal     func_800D2CD0              
	swc1    $f18, 0x0080($sp)          
	lwc1    $f6, 0x007C($sp)           
	lui     $at, %hi(var_808A6CF0)     ## $at = 808A0000
	lwc1    $f10, %lo(var_808A6CF0)($at) 
	mul.s   $f8, $f0, $f6              
	lh      v1, 0x008E($sp)            
	lh      t4, 0x008C($sp)            
	lui     t7, %hi(var_808A6AD0)      ## t7 = 808A0000
	sll     t9, v1,  2                 
	lui     t8, %hi(var_808A6AD8)      ## t8 = 808A0000
	addiu   t2, $zero, 0x000A          ## t2 = 0000000A
	add.s   $f16, $f8, $f10            
	addu    t9, t9, v1                 
	subu    t3, t2, t9                 
	addiu   t8, t8, %lo(var_808A6AD8)  ## t8 = 808A6AD8
	addiu   t7, t7, %lo(var_808A6AD0)  ## t7 = 808A6AD0
	sll     v0, v1,  2                 
	addiu   t5, t4, 0x0064             ## t5 = 00000064
	swc1    $f16, 0x0088($sp)          
	sw      t5, 0x0018($sp)            
	addu    a2, v0, t7                 
	addu    a3, v0, t8                 
	sw      t3, 0x0010($sp)            
	lw      a0, 0x00B4($sp)            
	addiu   a1, $sp, 0x0080            ## a1 = FFFFFFD0
	jal     func_8001D68C              
	sw      v1, 0x0014($sp)            
	lh      a2, 0x018E(s1)             ## 0000018E
	lh      t6, 0x0090($sp)            
lbl_808A0B80:
	lui     t2, %hi(var_808A6AB8)      ## t2 = 808A0000
	addiu   t2, t2, %lo(var_808A6AB8)  ## t2 = 808A6AB8
	and     t7, a2, t6                 
	bne     t7, $zero, lbl_808A0D58    
	addiu   t8, $sp, 0x006C            ## t8 = FFFFFFBC
	lw      t3, 0x0000(t2)             ## 808A6AB8
	lw      t9, 0x0004(t2)             ## 808A6ABC
	lui     t5, %hi(var_808A6AC4)      ## t5 = 808A0000
	sw      t3, 0x0000(t8)             ## FFFFFFBC
	lw      t3, 0x0008(t2)             ## 808A6AC0
	addiu   t5, t5, %lo(var_808A6AC4)  ## t5 = 808A6AC4
	sw      t9, 0x0004(t8)             ## FFFFFFC0
	sw      t3, 0x0008(t8)             ## FFFFFFC4
	lw      t7, 0x0000(t5)             ## 808A6AC4
	addiu   t4, $sp, 0x0060            ## t4 = FFFFFFB0
	lw      t6, 0x0004(t5)             ## 808A6AC8
	sw      t7, 0x0000(t4)             ## FFFFFFB0
	lw      t7, 0x0008(t5)             ## 808A6ACC
	sw      t6, 0x0004(t4)             ## FFFFFFB4
	jal     func_800CDCCC              ## Rand.Next() float
	sw      t7, 0x0008(t4)             ## FFFFFFB8
	lui     $at, 0x43A5                ## $at = 43A50000
	mtc1    $at, $f18                  ## $f18 = 330.00
	nop
	mul.s   $f4, $f0, $f18             
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f4, 0x0050($sp)           
	lui     $at, %hi(var_808A6CF4)     ## $at = 808A0000
	lwc1    $f6, %lo(var_808A6CF4)($at) 
	mul.s   $f12, $f0, $f6             
	jal     func_800CF470              
	swc1    $f12, 0x004C($sp)          
	lwc1    $f8, 0x0050($sp)           
	lui     $at, %hi(var_808A6CF8)     ## $at = 808A0000
	lwc1    $f16, %lo(var_808A6CF8)($at) 
	mul.s   $f10, $f0, $f8             
	lui     $at, %hi(var_808A6CFC)     ## $at = 808A0000
	lwc1    $f4, %lo(var_808A6CFC)($at) 
	lwc1    $f12, 0x004C($sp)          
	swc1    $f4, 0x0058($sp)           
	add.s   $f18, $f10, $f16           
	jal     func_800D2CD0              
	swc1    $f18, 0x0054($sp)          
	lwc1    $f6, 0x0050($sp)           
	lui     $at, %hi(var_808A6D00)     ## $at = 808A0000
	lwc1    $f10, %lo(var_808A6D00)($at) 
	mul.s   $f8, $f0, $f6              
	lw      a0, 0x00B4($sp)            
	addiu   a1, $sp, 0x0054            ## a1 = FFFFFFA4
	add.s   $f16, $f8, $f10            
	jal     func_8001D028              
	swc1    $f16, 0x005C($sp)          
	or      s0, $zero, $zero           ## s0 = 00000000
lbl_808A0C54:
	lui     $at, %hi(var_808A6D04)     ## $at = 808A0000
	lwc1    $f18, %lo(var_808A6D04)($at) 
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f12                  ## $f12 = 0.50
	jal     func_80026D90              
	swc1    $f18, 0x0064($sp)          
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f12                  ## $f12 = 0.50
	jal     func_80026D90              
	swc1    $f0, 0x0060($sp)           
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f0, 0x0068($sp)           
	lui     $at, 0x43A5                ## $at = 43A50000
	mtc1    $at, $f4                   ## $f4 = 330.00
	nop
	mul.s   $f6, $f0, $f4              
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f6, 0x0050($sp)           
	lui     $at, %hi(var_808A6D08)     ## $at = 808A0000
	lwc1    $f8, %lo(var_808A6D08)($at) 
	mul.s   $f12, $f0, $f8             
	jal     func_800CF470              
	swc1    $f12, 0x004C($sp)          
	lwc1    $f10, 0x0050($sp)          
	lui     $at, %hi(var_808A6D0C)     ## $at = 808A0000
	lwc1    $f18, %lo(var_808A6D0C)($at) 
	mul.s   $f16, $f0, $f10            
	lui     $at, %hi(var_808A6D10)     ## $at = 808A0000
	lwc1    $f6, %lo(var_808A6D10)($at) 
	lwc1    $f12, 0x004C($sp)          
	swc1    $f6, 0x0058($sp)           
	add.s   $f4, $f16, $f18            
	jal     func_800D2CD0              
	swc1    $f4, 0x0054($sp)           
	lwc1    $f8, 0x0050($sp)           
	lui     $at, %hi(var_808A6D14)     ## $at = 808A0000
	lwc1    $f16, %lo(var_808A6D14)($at) 
	mul.s   $f10, $f0, $f8             
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f12                  ## $f12 = 2.00
	add.s   $f18, $f10, $f16           
	jal     func_80026D64              
	swc1    $f18, 0x005C($sp)          
	trunc.w.s $f4, $f0                   
	addiu   t5, $zero, 0x0050          ## t5 = 00000050
	sw      t5, 0x0014($sp)            
	lw      a0, 0x00B4($sp)            
	mfc1    t2, $f4                    
	addiu   a1, $sp, 0x0054            ## a1 = FFFFFFA4
	addiu   a2, $sp, 0x006C            ## a2 = FFFFFFBC
	sll     t9, t2, 16                 
	sra     t3, t9, 16                 
	addiu   t4, t3, 0x0006             ## t4 = 00000006
	mtc1    t4, $f6                    ## $f6 = 0.00
	addiu   a3, $sp, 0x0060            ## a3 = FFFFFFB0
	cvt.s.w $f8, $f6                   
	jal     func_8089DED4              
	swc1    $f8, 0x0010($sp)           
	addiu   s0, s0, 0x0001             ## s0 = 00000001
	sll     s0, s0, 16                 
	sra     s0, s0, 16                 
	slti    $at, s0, 0x0004            
	bne     $at, $zero, lbl_808A0C54   
	nop
	lh      a2, 0x018E(s1)             ## 0000018E
lbl_808A0D58:
	lui     a0, 0x0300                 ## a0 = 03000000
	lui     a1, %hi(var_808A3A58)      ## a1 = 808A0000
	addiu   a1, a1, %lo(var_808A3A58)  ## a1 = 808A3A58
	addiu   a0, a0, 0x21C8             ## a0 = 030021C8
	jal     func_8089DC54              
	lw      a3, 0x0214(s1)             ## 00000214
	lh      t6, 0x01B6(s1)             ## 000001B6
lbl_808A0D74:
	lui     a3, 0x8012                 ## a3 = 80120000
	addiu   a3, a3, 0x0C38             ## a3 = 80120C38
	beq     t6, $zero, lbl_808A0E44    
	lui     t0, 0x00FF                 ## t0 = 00FF0000
	ori     t0, t0, 0xFFFF             ## t0 = 00FFFFFF
	lui     t1, 0x8000                 ## t1 = 80000000
	lui     v0, %hi(var_808A3A58)      ## v0 = 808A0000
	addiu   v0, v0, %lo(var_808A3A58)  ## v0 = 808A3A58
	sll     t7, v0,  4                 
	lui     v1, %hi(var_808A5A58)      ## v1 = 808A0000
	srl     t8, t7, 28                 
	addiu   v1, v1, %lo(var_808A5A58)  ## v1 = 808A5A58
	sll     t2, t8,  2                 
	sll     t6, v1,  4                 
	addu    t9, a3, t2                 
	srl     t7, t6, 28                 
	lw      t3, 0x0000(t9)             ## 00000000
	sll     t8, t7,  2                 
	addu    t2, a3, t8                 
	lw      t9, 0x0000(t2)             ## 00000000
	and     t4, v0, t0                 
	addu    t5, t3, t4                 
	and     t3, v1, t0                 
	addu    t4, t9, t3                 
	addu    a1, t5, t1                 
	addu    a2, t4, t1                 
	or      a0, $zero, $zero           ## a0 = 00000000
lbl_808A0DE0:
	lh      v1, 0x01B2(s1)             ## 000001B2
	addiu   a0, a0, 0x0001             ## a0 = 00000001
	sll     a0, a0, 16                 
	andi    v1, v1, 0x07FF             ## v1 = 00000258
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sll     v0, v1,  1                 
	addu    t5, a2, v0                 
	lhu     t6, 0x0000(t5)             ## 00000000
	addu    t7, a1, v0                 
	sra     a0, a0, 16                 
	sh      t6, 0x0000(t7)             ## 00000000
	lh      t8, 0x01B2(s1)             ## 000001B2
	slti    $at, a0, 0x0014            
	addiu   t2, t8, 0x0025             ## t2 = 00000025
	bne     $at, $zero, lbl_808A0DE0   
	sh      t2, 0x01B2(s1)             ## 000001B2
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     a3, 0x3C23                 ## a3 = 3C230000
	ori     a3, a3, 0xD70A             ## a3 = 3C23D70A
	mfc1    a1, $f0                    
	addiu   a0, s1, 0x0214             ## a0 = 00000214
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_80064178              
	swc1    $f0, 0x0010($sp)           
lbl_808A0E44:
	lh      t9, 0x01AC(s1)             ## 000001AC
	bnel    t9, $zero, lbl_808A0EBC    
	lw      t2, 0x0180(s1)             ## 00000180
	lw      t4, 0x0180(s1)             ## 00000180
	lui     t3, %hi(func_808A1C30)     ## t3 = 808A0000
	addiu   t3, t3, %lo(func_808A1C30) ## t3 = 808A1C30
	beq     t3, t4, lbl_808A0E78       
	lw      a0, 0x00B4($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	addu    a1, a0, $at                
	jal     func_8004BF40              ## CollisionCheck_setAC
	addiu   a2, s1, 0x0430             ## a2 = 00000430
lbl_808A0E78:
	lw      a0, 0x00B4($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	addiu   a2, s1, 0x0430             ## a2 = 00000430
	addu    s0, a0, $at                
	or      a1, s0, $zero              ## a1 = 00000001
	jal     func_8004C130              ## CollisionCheck_setOT
	sw      a2, 0x0034($sp)            
	lw      t7, 0x0180(s1)             ## 00000180
	lui     v1, %hi(func_8089FE34)     ## v1 = 808A0000
	addiu   v1, v1, %lo(func_8089FE34) ## v1 = 8089FE34
	bne     v1, t7, lbl_808A0EB8       
	lw      a2, 0x0034($sp)            
	lw      a0, 0x00B4($sp)            
	jal     func_8004BD50              ## CollisionCheck_setAT
	or      a1, s0, $zero              ## a1 = 00000001
lbl_808A0EB8:
	lw      t2, 0x0180(s1)             ## 00000180
lbl_808A0EBC:
	lui     t8, %hi(func_8089F950)     ## t8 = 808A0000
	lui     v1, %hi(func_8089FE34)     ## v1 = 808A0000
	addiu   t8, t8, %lo(func_8089F950) ## t8 = 8089F950
	bne     t8, t2, lbl_808A0EE0       
	addiu   v1, v1, %lo(func_8089FE34) ## v1 = 8089FE34
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lw      t9, 0x044C(s1)             ## 0000044C
	beq     $zero, $zero, lbl_808A0EF4 
	swc1    $f0, 0x0038(t9)            ## 00000038
lbl_808A0EE0:
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f10                  ## $f10 = 1.00
	lw      t3, 0x044C(s1)             ## 0000044C
	mtc1    $zero, $f0                 ## $f0 = 0.00
	swc1    $f10, 0x0038(t3)           ## 00000038
lbl_808A0EF4:
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f2                   ## $f2 = 1.00
	addiu   s0, $zero, 0x0006          ## s0 = 00000006
	addiu   v0, $zero, 0x000C          ## v0 = 0000000C
lbl_808A0F04:
	beql    s0, v0, lbl_808A0F40       
	addiu   s0, s0, 0x0001             ## s0 = 00000007
	lw      t4, 0x0180(s1)             ## 00000180
	bnel    v1, t4, lbl_808A0F30       
	lw      t8, 0x044C(s1)             ## 0000044C
	lw      t5, 0x044C(s1)             ## 0000044C
	sll     t6, s0,  6                 
	addu    t7, t5, t6                 
	beq     $zero, $zero, lbl_808A0F3C 
	swc1    $f0, 0x0038(t7)            ## 00000038
	lw      t8, 0x044C(s1)             ## 0000044C
lbl_808A0F30:
	sll     t2, s0,  6                 
	addu    t9, t8, t2                 
	swc1    $f2, 0x0038(t9)            ## 00000038
lbl_808A0F3C:
	addiu   s0, s0, 0x0001             ## s0 = 00000008
lbl_808A0F40:
	sll     s0, s0, 16                 
	sra     s0, s0, 16                 
	slti    $at, s0, 0x0013            
	bne     $at, $zero, lbl_808A0F04   
	nop
	mtc1    $zero, $f16                ## $f16 = 0.00
	lwc1    $f18, 0x0234(s1)           ## 00000234
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xBA00             ## v0 = 8011BA00
	c.eq.s  $f16, $f18                 
	addiu   a0, s1, 0x0234             ## a0 = 00000234
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x4000                 ## a3 = 40000000
	bc1tl   lbl_808A1044               
	lw      t6, 0x0000(v0)             ## 8011BA00
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xBA00             ## v0 = 8011BA00
	lw      t4, 0x0000(v0)             ## 8011BA00
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	addiu   t5, $zero, 0x00FF          ## t5 = 000000FF
	sh      t3, 0x0454(t4)             ## 00000454
	lw      t6, 0x0000(v0)             ## 8011BA00
	addiu   t7, $zero, 0x0050          ## t7 = 00000050
	cfc1    t9, $f31                   
	sh      t5, 0x0456(t6)             ## 00000456
	lw      t8, 0x0000(v0)             ## 8011BA00
	ctc1    t3, $f31                   
	lui     $at, 0x4F00                ## $at = 4F000000
	sh      t7, 0x0458(t8)             ## 8089FDA8
	lw      t2, 0x0000(v0)             ## 8011BA00
	sh      $zero, 0x045A(t2)          ## 0000045A
	lwc1    $f4, 0x0234(s1)            ## 00000234
	cvt.w.s $f6, $f4                   
	cfc1    t3, $f31                   
	nop
	andi    t3, t3, 0x0078             ## t3 = 00000000
	beql    t3, $zero, lbl_808A1020    
	mfc1    t3, $f6                    
	mtc1    $at, $f6                   ## $f6 = 2147484000.00
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	sub.s   $f6, $f4, $f6              
	ctc1    t3, $f31                   
	nop
	cvt.w.s $f6, $f6                   
	cfc1    t3, $f31                   
	nop
	andi    t3, t3, 0x0078             ## t3 = 00000000
	bne     t3, $zero, lbl_808A1014    
	nop
	mfc1    t3, $f6                    
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_808A102C 
	or      t3, t3, $at                ## t3 = 80000000
lbl_808A1014:
	beq     $zero, $zero, lbl_808A102C 
	addiu   t3, $zero, 0xFFFF          ## t3 = FFFFFFFF
	mfc1    t3, $f6                    
lbl_808A1020:
	nop
	bltz    t3, lbl_808A1014           
	nop
lbl_808A102C:
	lw      t5, 0x0000(v0)             ## 8011BA00
	ctc1    t9, $f31                   
	andi    t4, t3, 0x00FF             ## t4 = 000000FF
	beq     $zero, $zero, lbl_808A1048 
	sh      t4, 0x045C(t5)             ## 0000055B
	lw      t6, 0x0000(v0)             ## 8011BA00
lbl_808A1044:
	sh      $zero, 0x0454(t6)          ## 00000454
lbl_808A1048:
	mfc1    a1, $f0                    
	jal     func_80064178              
	swc1    $f0, 0x0010($sp)           
	jal     func_808A3370              
	lw      a0, 0x00B4($sp)            
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0024($sp)            
	lw      s1, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x00B0           ## $sp = 00000000


func_808A1070:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s0, 0x0018($sp)            
	or      s0, a1, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0048($sp)            
	sw      a2, 0x0050($sp)            
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	beq     s0, $at, lbl_808A1094      
	or      a0, a3, $zero              ## a0 = 00000000
lbl_808A1094:
	jal     func_800AB1BC              
	lw      a1, 0x0058($sp)            
	lw      t6, 0x0050($sp)            
	lui     $at, 0x3F80                ## $at = 3F800000
	lw      t8, 0x0048($sp)            
	lw      t7, 0x0000(t6)             ## 00000000
	beql    t7, $zero, lbl_808A1260    
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	mtc1    $at, $f2                   ## $f2 = 1.00
	addiu   $at, $zero, 0x0021         ## $at = 00000021
	lw      t9, 0x0000(t8)             ## 00000000
	mov.s   $f0, $f2                   
	mov.s   $f14, $f2                  
	beq     s0, $at, lbl_808A10DC      
	sw      t9, 0x0038($sp)            
	addiu   $at, $zero, 0x0030         ## $at = 00000030
	bnel    s0, $at, lbl_808A10EC      
	swc1    $f0, 0x0040($sp)           
lbl_808A10DC:
	lw      t0, 0x005C($sp)            
	lwc1    $f0, 0x01E8(t0)            ## 000001E8
	mov.s   $f14, $f0                  
	swc1    $f0, 0x0040($sp)           
lbl_808A10EC:
	jal     func_800AA6EC              
	swc1    $f14, 0x0044($sp)          
	lwc1    $f0, 0x0040($sp)           
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f12                  ## $f12 = 1.00
	mfc1    a2, $f0                    
	lwc1    $f14, 0x0044($sp)          
	jal     func_800AA8FC              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	beq     s0, $at, lbl_808A1204      
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	beq     s0, $at, lbl_808A1204      
	lw      t1, 0x005C($sp)            
	sll     t2, s0,  2                 
	addu    v0, t1, t2                 
	lui     $at, %hi(var_808A6D18)     ## $at = 808A0000
	lwc1    $f6, %lo(var_808A6D18)($at) 
	lwc1    $f4, 0x024C(v0)            ## 0000024C
	sw      v0, 0x0024($sp)            
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	mul.s   $f12, $f4, $f6             
	jal     func_800AA9E0              
	nop
	lw      s0, 0x0024($sp)            
	lui     $at, %hi(var_808A6D1C)     ## $at = 808A0000
	lwc1    $f10, %lo(var_808A6D1C)($at) 
	lwc1    $f8, 0x024C(s0)            ## 0000024C
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	mul.s   $f12, $f8, $f10            
	jal     func_800AAB94              
	nop
	lui     $at, %hi(var_808A6D20)     ## $at = 808A0000
	lwc1    $f18, %lo(var_808A6D20)($at) 
	lwc1    $f16, 0x024C(s0)           ## 0000024C
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	mul.s   $f12, $f16, $f18           
	jal     func_800AAD4C              
	nop
	lw      t3, 0x005C($sp)            
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f2                   ## $f2 = 1.00
	lwc1    $f0, 0x01F8(t3)            ## 000001F8
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	sub.s   $f12, $f2, $f0             
	add.s   $f14, $f0, $f2             
	mfc1    a2, $f12                   
	jal     func_800AA8FC              
	nop
	lui     $at, %hi(var_808A6D24)     ## $at = 808A0000
	lwc1    $f6, %lo(var_808A6D24)($at) 
	lwc1    $f4, 0x024C(s0)            ## 0000024C
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	mul.s   $f12, $f4, $f6             
	jal     func_800AAD4C              
	neg.s   $f12, $f12                 
	lui     $at, %hi(var_808A6D28)     ## $at = 808A0000
	lwc1    $f10, %lo(var_808A6D28)($at) 
	lwc1    $f8, 0x024C(s0)            ## 0000024C
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	mul.s   $f12, $f8, $f10            
	jal     func_800AAB94              
	neg.s   $f12, $f12                 
	lui     $at, %hi(var_808A6D2C)     ## $at = 808A0000
	lwc1    $f18, %lo(var_808A6D2C)($at) 
	lwc1    $f16, 0x024C(s0)           ## 0000024C
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	mul.s   $f12, $f16, $f18           
	jal     func_800AA9E0              
	neg.s   $f12, $f12                 
lbl_808A1204:
	lw      v0, 0x0038($sp)            
	lw      s0, 0x02C0(v0)             ## 000002C0
	lui     t5, 0xDA38                 ## t5 = DA380000
	ori     t5, t5, 0x0003             ## t5 = DA380003
	addiu   t4, s0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(v0)             ## 000002C0
	sw      t5, 0x0000(s0)             ## 00000000
	lw      t6, 0x0048($sp)            
	jal     func_800AB900              
	lw      a0, 0x0000(t6)             ## 00000000
	sw      v0, 0x0004(s0)             ## 00000004
	lw      t7, 0x0038($sp)            
	lui     t9, 0xDE00                 ## t9 = DE000000
	lw      v1, 0x02C0(t7)             ## 000002C0
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t7)             ## 000002C0
	sw      t9, 0x0000(v1)             ## 00000000
	lw      t0, 0x0050($sp)            
	lw      t1, 0x0000(t0)             ## 00000000
	sw      t1, 0x0004(v1)             ## 00000004
	jal     func_800AA724              
	nop
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_808A1260:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000
	jr      $ra                        
	nop


func_808A1274:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	sw      a2, 0x0020($sp)            
	sw      a3, 0x0024($sp)            
	lw      t6, 0x001C($sp)            
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	lui     a0, %hi(var_808A6AEC)      ## a0 = 808A0000
	bne     t6, $at, lbl_808A12F4      
	lw      t7, 0x001C($sp)            
	lw      a1, 0x0028($sp)            
	addiu   a0, a0, %lo(var_808A6AEC)  ## a0 = 808A6AEC
	jal     func_800AB958              
	addiu   a1, a1, 0x03DC             ## a1 = 000003DC
	lw      a1, 0x0028($sp)            
	lui     a0, %hi(var_808A6AE0)      ## a0 = 808A0000
	addiu   a0, a0, %lo(var_808A6AE0)  ## a0 = 808A6AE0
	jal     func_800AB958              
	addiu   a1, a1, 0x0038             ## a1 = 00000038
	lw      a1, 0x0028($sp)            
	lui     a0, %hi(var_808A6AF8)      ## a0 = 808A0000
	addiu   a0, a0, %lo(var_808A6AF8)  ## a0 = 808A6AF8
	jal     func_800AB958              
	addiu   a1, a1, 0x03E8             ## a1 = 000003E8
	lw      a1, 0x0028($sp)            
	lui     a0, %hi(var_808A6B04)      ## a0 = 808A0000
	addiu   a0, a0, %lo(var_808A6B04)  ## a0 = 808A6B04
	jal     func_800AB958              
	addiu   a1, a1, 0x040C             ## a1 = 0000040C
	beq     $zero, $zero, lbl_808A133C 
	lw      a1, 0x0028($sp)            
lbl_808A12F4:
	addiu   $at, $zero, 0x0027         ## $at = 00000027
	bne     t7, $at, lbl_808A131C      
	lw      t8, 0x001C($sp)            
	lw      a1, 0x0028($sp)            
	lui     a0, %hi(var_808A6B10)      ## a0 = 808A0000
	addiu   a0, a0, %lo(var_808A6B10)  ## a0 = 808A6B10
	jal     func_800AB958              
	addiu   a1, a1, 0x0400             ## a1 = 00000400
	beq     $zero, $zero, lbl_808A133C 
	lw      a1, 0x0028($sp)            
lbl_808A131C:
	addiu   $at, $zero, 0x002E         ## $at = 0000002E
	bne     t8, $at, lbl_808A1338      
	lui     a0, %hi(var_808A6B1C)      ## a0 = 808A0000
	lw      a1, 0x0028($sp)            
	addiu   a0, a0, %lo(var_808A6B1C)  ## a0 = 808A6B1C
	jal     func_800AB958              
	addiu   a1, a1, 0x03F4             ## a1 = 000003F4
lbl_808A1338:
	lw      a1, 0x0028($sp)            
lbl_808A133C:
	lw      a0, 0x001C($sp)            
	jal     func_80050CE4              
	addiu   a1, a1, 0x0430             ## a1 = 00000430
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808A1358:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0024($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      s1, 0x0028($sp)            
	sw      a1, 0x0034($sp)            
	lw      t6, 0x0034($sp)            
	lw      a0, 0x0000(t6)             ## 00000000
	jal     func_8007E298              
	or      s1, a0, $zero              ## s1 = 00000000
	lh      v0, 0x01B0(s0)             ## 000001B0
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	slti    $at, v0, 0x0002            
	bne     $at, $zero, lbl_808A13C8   
	andi    t7, v0, 0x0001             ## t7 = 00000000
	beq     t7, $zero, lbl_808A13C8    
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	lw      a0, 0x02C0(s1)             ## 000002C0
	addiu   t8, $zero, 0x0384          ## t8 = 00000384
	addiu   t9, $zero, 0x044B          ## t9 = 0000044B
	sw      t9, 0x0018($sp)            
	sw      t8, 0x0014($sp)            
	sw      $zero, 0x0010($sp)         
	addiu   a1, $zero, 0x00FF          ## a1 = 000000FF
	jal     func_8007DC40              
	addiu   a3, $zero, 0x00FF          ## a3 = 000000FF
	beq     $zero, $zero, lbl_808A1590 
	sw      v0, 0x02C0(s1)             ## 000002C0
lbl_808A13C8:
	cfc1    t0, $f31                   
	ctc1    a1, $f31                   
	lwc1    $f4, 0x0200(s0)            ## 00000200
	lw      a0, 0x02C0(s1)             ## 000002C0
	lui     $at, 0x4F00                ## $at = 4F000000
	cvt.w.s $f6, $f4                   
	cfc1    a1, $f31                   
	nop
	andi    a1, a1, 0x0078             ## a1 = 00000000
	beql    a1, $zero, lbl_808A143C    
	mfc1    a1, $f6                    
	mtc1    $at, $f6                   ## $f6 = 2147484000.00
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	sub.s   $f6, $f4, $f6              
	ctc1    a1, $f31                   
	nop
	cvt.w.s $f6, $f6                   
	cfc1    a1, $f31                   
	nop
	andi    a1, a1, 0x0078             ## a1 = 00000000
	bne     a1, $zero, lbl_808A1430    
	nop
	mfc1    a1, $f6                    
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_808A1448 
	or      a1, a1, $at                ## a1 = 80000000
lbl_808A1430:
	beq     $zero, $zero, lbl_808A1448 
	addiu   a1, $zero, 0xFFFF          ## a1 = FFFFFFFF
	mfc1    a1, $f6                    
lbl_808A143C:
	nop
	bltz    a1, lbl_808A1430           
	nop
lbl_808A1448:
	ctc1    t0, $f31                   
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	lwc1    $f8, 0x0204(s0)            ## 00000204
	lui     $at, 0x4F00                ## $at = 4F000000
	cfc1    t1, $f31                   
	ctc1    a2, $f31                   
	nop
	cvt.w.s $f10, $f8                  
	cfc1    a2, $f31                   
	nop
	andi    a2, a2, 0x0078             ## a2 = 00000000
	beql    a2, $zero, lbl_808A14C4    
	mfc1    a2, $f10                   
	mtc1    $at, $f10                  ## $f10 = 2147484000.00
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	sub.s   $f10, $f8, $f10            
	ctc1    a2, $f31                   
	nop
	cvt.w.s $f10, $f10                 
	cfc1    a2, $f31                   
	nop
	andi    a2, a2, 0x0078             ## a2 = 00000000
	bne     a2, $zero, lbl_808A14B8    
	nop
	mfc1    a2, $f10                   
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_808A14D0 
	or      a2, a2, $at                ## a2 = 80000000
lbl_808A14B8:
	beq     $zero, $zero, lbl_808A14D0 
	addiu   a2, $zero, 0xFFFF          ## a2 = FFFFFFFF
	mfc1    a2, $f10                   
lbl_808A14C4:
	nop
	bltz    a2, lbl_808A14B8           
	nop
lbl_808A14D0:
	ctc1    t1, $f31                   
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lwc1    $f16, 0x0208(s0)           ## 00000208
	lui     $at, 0x4F00                ## $at = 4F000000
	cfc1    t2, $f31                   
	ctc1    a3, $f31                   
	nop
	cvt.w.s $f18, $f16                 
	cfc1    a3, $f31                   
	nop
	andi    a3, a3, 0x0078             ## a3 = 00000000
	beql    a3, $zero, lbl_808A154C    
	mfc1    a3, $f18                   
	mtc1    $at, $f18                  ## $f18 = 2147484000.00
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	sub.s   $f18, $f16, $f18           
	ctc1    a3, $f31                   
	nop
	cvt.w.s $f18, $f18                 
	cfc1    a3, $f31                   
	nop
	andi    a3, a3, 0x0078             ## a3 = 00000000
	bne     a3, $zero, lbl_808A1540    
	nop
	mfc1    a3, $f18                   
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_808A1558 
	or      a3, a3, $at                ## a3 = 80000000
lbl_808A1540:
	beq     $zero, $zero, lbl_808A1558 
	addiu   a3, $zero, 0xFFFF          ## a3 = FFFFFFFF
	mfc1    a3, $f18                   
lbl_808A154C:
	nop
	bltz    a3, lbl_808A1540           
	nop
lbl_808A1558:
	sw      $zero, 0x0010($sp)         
	lwc1    $f4, 0x020C(s0)            ## 0000020C
	ctc1    t2, $f31                   
	nop
	trunc.w.s $f6, $f4                   
	mfc1    t4, $f6                    
	nop
	sw      t4, 0x0014($sp)            
	lwc1    $f8, 0x0210(s0)            ## 00000210
	trunc.w.s $f10, $f8                  
	mfc1    t6, $f10                   
	jal     func_8007DC40              
	sw      t6, 0x0018($sp)            
	sw      v0, 0x02C0(s1)             ## 000002C0
lbl_808A1590:
	lwc1    $f12, 0x022C(s0)           ## 0000022C
	jal     func_800AAD4C              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lh      t7, 0x01B4(s0)             ## 000001B4
	lui     $at, 0x4700                ## $at = 47000000
	mtc1    $at, $f4                   ## $f4 = 32768.00
	mtc1    t7, $f16                   ## $f16 = 0.00
	lui     $at, %hi(var_808A6D30)     ## $at = 808A0000
	lwc1    $f8, %lo(var_808A6D30)($at) 
	cvt.s.w $f18, $f16                 
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	div.s   $f6, $f18, $f4             
	mul.s   $f12, $f6, $f8             
	jal     func_800AA9E0              
	nop
	lui     t8, %hi(func_808A1274)     ## t8 = 808A0000
	addiu   t8, t8, %lo(func_808A1274) ## t8 = 808A1274
	lw      a1, 0x0140(s0)             ## 00000140
	lw      a2, 0x015C(s0)             ## 0000015C
	lui     a3, %hi(func_808A1070)     ## a3 = 808A0000
	addiu   a3, a3, %lo(func_808A1070) ## a3 = 808A1070
	sw      s0, 0x0014($sp)            
	sw      t8, 0x0010($sp)            
	jal     func_8008993C              
	lw      a0, 0x0034($sp)            
	lw      a0, 0x0034($sp)            
	jal     func_8009A574              
	lw      a1, 0x02C0(s1)             ## 000002C0
	sw      v0, 0x02C0(s1)             ## 000002C0
	jal     func_808A34A4              
	lw      a0, 0x0034($sp)            
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0024($sp)            
	lw      s1, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_808A1620:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lw      v0, 0x1C44(a1)             ## 00001C44
	lwc1    $f6, 0x0024(s0)            ## 00000024
	lwc1    $f4, 0x0024(v0)            ## 00000024
	sub.s   $f8, $f4, $f6              
	swc1    $f8, 0x0034($sp)           
	lwc1    $f16, 0x002C(s0)           ## 0000002C
	lwc1    $f10, 0x002C(v0)           ## 0000002C
	sub.s   $f18, $f10, $f16           
	swc1    $f18, 0x0030($sp)          
	lh      a0, 0x0032(s0)             ## 00000032
	subu    a0, $zero, a0              
	sll     a0, a0, 16                 
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	swc1    $f0, 0x0020($sp)           
	lh      a0, 0x0032(s0)             ## 00000032
	subu    a0, $zero, a0              
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lwc1    $f4, 0x0020($sp)           
	lwc1    $f6, 0x0034($sp)           
	lwc1    $f10, 0x0030($sp)          
	mul.s   $f8, $f4, $f6              
	nop
	mul.s   $f16, $f0, $f10            
	add.s   $f18, $f16, $f8            
	swc1    $f18, 0x002C($sp)          
	lh      a0, 0x0032(s0)             ## 00000032
	subu    a0, $zero, a0              
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	swc1    $f0, 0x0020($sp)           
	lh      a0, 0x0032(s0)             ## 00000032
	subu    a0, $zero, a0              
	sll     a0, a0, 16                 
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	lwc1    $f4, 0x0020($sp)           
	lwc1    $f10, 0x0034($sp)          
	lwc1    $f8, 0x0030($sp)           
	neg.s   $f6, $f4                   
	lui     $at, 0x4316                ## $at = 43160000
	mul.s   $f16, $f6, $f10            
	mtc1    $at, $f4                   ## $f4 = 150.00
	lui     $at, 0x42C8                ## $at = 42C80000
	mul.s   $f18, $f0, $f8             
	lwc1    $f0, 0x002C($sp)           
	lw      $ra, 0x001C($sp)           
	abs.s   $f0, $f0                   
	c.lt.s  $f0, $f4                   
	add.s   $f2, $f18, $f16            
	bc1fl   lbl_808A1748               
	lui     $at, 0xBF80                ## $at = BF800000
	mtc1    $at, $f6                   ## $f6 = -1.00
	lui     $at, 0x44FA                ## $at = 44FA0000
	c.le.s  $f6, $f2                   
	nop
	bc1fl   lbl_808A1748               
	lui     $at, 0xBF80                ## $at = BF800000
	mtc1    $at, $f10                  ## $f10 = -1.00
	nop
	c.le.s  $f2, $f10                  
	nop
	bc1fl   lbl_808A1748               
	lui     $at, 0xBF80                ## $at = BF800000
	beq     $zero, $zero, lbl_808A1750 
	mov.s   $f0, $f2                   
	lui     $at, 0xBF80                ## $at = BF800000
lbl_808A1748:
	mtc1    $at, $f0                   ## $f0 = -1.00
	nop
lbl_808A1750:
	lw      s0, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_808A175C:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lw      v0, 0x1C44(a1)             ## 00001C44
	lwc1    $f6, 0x0024(s0)            ## 00000024
	addiu   t7, $zero, 0x8000          ## t7 = FFFF8000
	lwc1    $f4, 0x0024(v0)            ## 00000024
	sub.s   $f8, $f4, $f6              
	swc1    $f8, 0x0034($sp)           
	lwc1    $f16, 0x002C(s0)           ## 0000002C
	lwc1    $f10, 0x002C(v0)           ## 0000002C
	sub.s   $f18, $f10, $f16           
	swc1    $f18, 0x0030($sp)          
	lh      t6, 0x0032(s0)             ## 00000032
	subu    a0, t7, t6                 
	sll     a0, a0, 16                 
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	swc1    $f0, 0x0020($sp)           
	lh      t8, 0x0032(s0)             ## 00000032
	addiu   t9, $zero, 0x8000          ## t9 = FFFF8000
	subu    a0, t9, t8                 
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lwc1    $f4, 0x0020($sp)           
	lwc1    $f6, 0x0034($sp)           
	lwc1    $f10, 0x0030($sp)          
	addiu   t1, $zero, 0x8000          ## t1 = FFFF8000
	mul.s   $f8, $f4, $f6              
	nop
	mul.s   $f16, $f0, $f10            
	add.s   $f18, $f16, $f8            
	swc1    $f18, 0x002C($sp)          
	lh      t0, 0x0032(s0)             ## 00000032
	subu    a0, t1, t0                 
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	swc1    $f0, 0x0020($sp)           
	lh      t2, 0x0032(s0)             ## 00000032
	addiu   t3, $zero, 0x8000          ## t3 = FFFF8000
	subu    a0, t3, t2                 
	sll     a0, a0, 16                 
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	lwc1    $f4, 0x0020($sp)           
	lwc1    $f10, 0x0034($sp)          
	lwc1    $f8, 0x0030($sp)           
	neg.s   $f6, $f4                   
	lui     $at, 0x4316                ## $at = 43160000
	mul.s   $f16, $f6, $f10            
	mtc1    $at, $f4                   ## $f4 = 150.00
	lui     $at, 0x42C8                ## $at = 42C80000
	mul.s   $f18, $f0, $f8             
	lwc1    $f0, 0x002C($sp)           
	lw      $ra, 0x001C($sp)           
	abs.s   $f0, $f0                   
	c.lt.s  $f0, $f4                   
	add.s   $f2, $f18, $f16            
	bc1fl   lbl_808A1894               
	lui     $at, 0xBF80                ## $at = BF800000
	mtc1    $at, $f6                   ## $f6 = -1.00
	lui     $at, 0x44FA                ## $at = 44FA0000
	c.le.s  $f6, $f2                   
	nop
	bc1fl   lbl_808A1894               
	lui     $at, 0xBF80                ## $at = BF800000
	mtc1    $at, $f10                  ## $f10 = -1.00
	nop
	c.le.s  $f2, $f10                  
	nop
	bc1fl   lbl_808A1894               
	lui     $at, 0xBF80                ## $at = BF800000
	beq     $zero, $zero, lbl_808A189C 
	mov.s   $f0, $f2                   
	lui     $at, 0xBF80                ## $at = BF800000
lbl_808A1894:
	mtc1    $at, $f0                   ## $f0 = -1.00
	nop
lbl_808A189C:
	lw      s0, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_808A18A8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a1, $zero              ## a2 = 00000000
	lw      a1, 0x1C44(a2)             ## 00001C44
	jal     func_800213B4              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	lh      t6, 0x0032(a0)             ## 00000032
	subu    v1, v0, t6                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	slti    $at, v1, 0x38E3            
	beq     $at, $zero, lbl_808A18F0   
	slti    $at, v1, 0xC71E            
	bne     $at, $zero, lbl_808A18F0   
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	beq     $zero, $zero, lbl_808A18F4 
	sh      t7, 0x01A8(a0)             ## 000001A8
lbl_808A18F0:
	sh      $zero, 0x01A8(a0)          ## 000001A8
lbl_808A18F4:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808A1904:
	sw      a1, 0x0004($sp)            
	lui     $at, 0x4348                ## $at = 43480000
	lui     a1, %hi(var_808A6A88)      ## a1 = 808A0000
	mtc1    $at, $f12                  ## $f12 = 200.00
	sh      $zero, 0x01AA(a0)          ## 000001AA
	addiu   a1, a1, %lo(var_808A6A88)  ## a1 = 808A6A88
	or      v0, $zero, $zero           ## v0 = 00000000
	lwc1    $f2, 0x0024(a0)            ## 00000024
	addiu   a2, $zero, 0x000C          ## a2 = 0000000C
lbl_808A1928:
	multu   v0, a2                     
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x0004            
	mflo    t6                         
	addu    v1, a1, t6                 
	lwc1    $f4, 0x0000(v1)            ## 00000000
	sub.s   $f0, $f2, $f4              
	abs.s   $f0, $f0                   
	c.lt.s  $f0, $f12                  
	nop
	bc1f    lbl_808A1988               
	nop
	lwc1    $f6, 0x002C(a0)            ## 0000002C
	lwc1    $f8, 0x0008(v1)            ## 00000008
	sub.s   $f0, $f6, $f8              
	abs.s   $f0, $f0                   
	c.lt.s  $f0, $f12                  
	nop
	bc1f    lbl_808A1988               
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	jr      $ra                        
	sh      t7, 0x01AA(a0)             ## 000001AA
lbl_808A1988:
	bne     $at, $zero, lbl_808A1928   
	nop
	jr      $ra                        
	nop


func_808A1998:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      a1, 0x003C($sp)            
	sw      a2, 0x0040($sp)            
	lw      a2, 0x003C($sp)            
	or      a1, a0, $zero              ## a1 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      a0, 0x0038($sp)            
	lwc1    $f4, 0x03DC(a1)            ## 000003DC
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f8                   ## $f8 = 20.00
	swc1    $f4, 0x0010($sp)           
	lwc1    $f6, 0x03E0(a1)            ## 000003E0
	lh      t7, 0x0042($sp)            
	addiu   a0, a2, 0x1C24             ## a0 = 00001C24
	sub.s   $f10, $f6, $f8             
	addiu   a3, $zero, 0x0030          ## a3 = 00000030
	swc1    $f10, 0x0014($sp)          
	lwc1    $f16, 0x03E4(a1)           ## 000003E4
	sw      $zero, 0x001C($sp)         
	swc1    $f16, 0x0018($sp)          
	lh      t6, 0x00B6(a1)             ## 000000B6
	sw      $zero, 0x0024($sp)         
	sw      t7, 0x0028($sp)            
	jal     func_800253F0              
	sw      t6, 0x0020($sp)            
	lw      $ra, 0x0034($sp)           
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_808A1A0C:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0034($sp)            
	lh      t6, 0x0184(s0)             ## 00000184
	bgtzl   t6, lbl_808A1A60           
	lh      t9, 0x01B0(s0)             ## 000001B0
	lw      t8, 0x0180(s0)             ## 00000180
	lui     t7, %hi(func_808A1C30)     ## t7 = 808A0000
	addiu   t7, t7, %lo(func_808A1C30) ## t7 = 808A1C30
	beql    t7, t8, lbl_808A1A60       
	lh      t9, 0x01B0(s0)             ## 000001B0
	jal     func_808A1B78              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a0, 0x0034($sp)            
	jal     func_80025B4C              
	or      a1, s0, $zero              ## a1 = 00000000
	beq     $zero, $zero, lbl_808A1B68 
	lw      $ra, 0x001C($sp)           
	lh      t9, 0x01B0(s0)             ## 000001B0
lbl_808A1A60:
	bnel    t9, $zero, lbl_808A1B68    
	lw      $ra, 0x001C($sp)           
	lw      t1, 0x0180(s0)             ## 00000180
	lui     t0, %hi(func_8089F950)     ## t0 = 808A0000
	addiu   t0, t0, %lo(func_8089F950) ## t0 = 8089F950
	bne     t0, t1, lbl_808A1AE8       
	or      v0, $zero, $zero           ## v0 = 00000000
	lw      a3, 0x044C(s0)             ## 0000044C
	sll     t2, v0,  6                 
lbl_808A1A84:
	addu    v1, a3, t2                 
	lbu     a2, 0x0016(v1)             ## 00000016
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	sll     v0, v0, 16                 
	andi    t3, a2, 0x0002             ## t3 = 00000000
	beq     t3, $zero, lbl_808A1ADC    
	sra     v0, v0, 16                 
	lw      a1, 0x0024(v1)             ## 00000024
	lw      a0, 0x0000(a1)             ## 00000000
	andi    t4, a0, 0x0010             ## t4 = 00000000
	bne     t4, $zero, lbl_808A1AB8    
	andi    t5, a0, 0x0004             ## t5 = 00000000
	beq     t5, $zero, lbl_808A1ADC    
lbl_808A1AB8:
	andi    t6, a2, 0xFFFD             ## t6 = 00000000
	sb      t6, 0x0016(v1)             ## 00000016
	addiu   t7, $zero, 0x0002          ## t7 = 00000002
	sh      t7, 0x01B0(s0)             ## 000001B0
	jal     func_8089F0CC              
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t8, $zero, 0x0032          ## t8 = 00000032
	beq     $zero, $zero, lbl_808A1B64 
	sh      t8, 0x01CA(s0)             ## 000001CA
lbl_808A1ADC:
	slti    $at, v0, 0x0013            
	bnel    $at, $zero, lbl_808A1A84   
	sll     t2, v0,  6                 
lbl_808A1AE8:
	lw      a3, 0x044C(s0)             ## 0000044C
	lui     t2, %hi(func_8089F6D0)     ## t2 = 808A0000
	lbu     v1, 0x0016(a3)             ## 00000016
	andi    t9, v1, 0x0002             ## t9 = 00000000
	beq     t9, $zero, lbl_808A1B64    
	andi    t0, v1, 0xFFFD             ## t0 = 00000000
	sb      t0, 0x0016(a3)             ## 00000016
	lw      v0, 0x0180(s0)             ## 00000180
	lw      t1, 0x044C(s0)             ## 0000044C
	addiu   t2, t2, %lo(func_8089F6D0) ## t2 = 8089F6D0
	beq     t2, v0, lbl_808A1B28       
	lw      a1, 0x0024(t1)             ## 00000024
	lui     t3, %hi(func_8089F5F0)     ## t3 = 808A0000
	addiu   t3, t3, %lo(func_8089F5F0) ## t3 = 8089F5F0
	bnel    t3, v0, lbl_808A1B68       
	lw      $ra, 0x001C($sp)           
lbl_808A1B28:
	jal     func_80051A34              
	lw      a0, 0x0000(a1)             ## 00000000
	beq     v0, $zero, lbl_808A1B64    
	sb      v0, 0x0027($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3806          ## a1 = 00003806
	jal     func_8089EF94              
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t4, $zero, 0x0005          ## t4 = 00000005
	sh      t4, 0x01B0(s0)             ## 000001B0
	lbu     t6, 0x0027($sp)            
	lh      t5, 0x0184(s0)             ## 00000184
	subu    t7, t5, t6                 
	sh      t7, 0x0184(s0)             ## 00000184
lbl_808A1B64:
	lw      $ra, 0x001C($sp)           
lbl_808A1B68:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_808A1B78:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	mtc1    $zero, $f0                 ## $f0 = 0.00
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lui     a0, 0x0600                 ## a0 = 06000000
	swc1    $f0, 0x01D4(s0)            ## 000001D4
	swc1    $f0, 0x0068(s0)            ## 00000068
	jal     func_8008A194              
	addiu   a0, a0, 0x2D0C             ## a0 = 06002D0C
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC0A0                ## $at = C0A00000
	mtc1    $at, $f8                   ## $f8 = -5.00
	cvt.s.w $f6, $f4                   
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0x2D0C             ## a1 = 06002D0C
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	swc1    $f6, 0x0010($sp)           
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
	lui     t7, %hi(func_808A1C30)     ## t7 = 808A0000
	addiu   t7, t7, %lo(func_808A1C30) ## t7 = 808A1C30
	sw      t7, 0x0180(s0)             ## 00000180
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3807          ## a1 = 00003807
	lw      t8, 0x0004(s0)             ## 00000004
	addiu   $at, $zero, 0xFFFA         ## $at = FFFFFFFA
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	lui     a0, 0x1001                 ## a0 = 10010000
	and     t9, t8, $at                
	sh      $zero, 0x01CA(s0)          ## 000001CA
	sh      $zero, 0x018C(s0)          ## 0000018C
	sw      t9, 0x0004(s0)             ## 00000004
	sh      t0, 0x01AC(s0)             ## 000001AC
	jal     func_800CAA70              
	ori     a0, a0, 0x00FF             ## a0 = 100100FF
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_808A1C30:
	addiu   $sp, $sp, 0xFE60           ## $sp = FFFFFE60
	sw      s0, 0x0038($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x003C($sp)           
	sw      a1, 0x01A4($sp)            
	lw      t6, 0x01A4($sp)            
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lw      t7, 0x1C44(t6)             ## 00001C44
	sw      a0, 0x004C($sp)            
	jal     func_8008C9C0              
	sw      t7, 0x0160($sp)            
	lh      v1, 0x018C(s0)             ## 0000018C
	slti    $at, v1, 0x000A            
	bne     $at, $zero, lbl_808A1C80   
	sll     t8, v1,  2                 
	addiu   $at, $zero, 0x0064         ## $at = 00000064
	beql    v1, $at, lbl_808A3260      
	lh      t0, 0x01CA(s0)             ## 000001CA
	beq     $zero, $zero, lbl_808A3344 
	lh      a1, 0x01A4(s0)             ## 000001A4
lbl_808A1C80:
	sltiu   $at, v1, 0x000A            
	beq     $at, $zero, lbl_808A3340   
	lui     $at, %hi(var_808A6D34)     ## $at = 808A0000
	addu    $at, $at, t8               
	lw      t8, %lo(var_808A6D34)($at) 
	jr      t8                         
	nop
var_808A1C9C:
	lw      a0, 0x01A4($sp)            
	addiu   t9, $zero, 0x0005          ## t9 = 00000005
	sh      t9, 0x018C(s0)             ## 0000018C
	jal     func_80052328              
	addiu   a1, a0, 0x1D64             ## a1 = 00001D64
	lw      a0, 0x01A4($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_800218EC              
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	jal     func_8009D0F0              
	lw      a0, 0x01A4($sp)            
	sh      v0, 0x01A4(s0)             ## 000001A4
	lw      a0, 0x01A4($sp)            
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_8009D1AC              
	addiu   a2, $zero, 0x0003          ## a2 = 00000003
	lw      a0, 0x01A4($sp)            
	lh      a1, 0x01A4(s0)             ## 000001A4
	jal     func_8009D1AC              
	addiu   a2, $zero, 0x0007          ## a2 = 00000007
	lw      a0, 0x01A4($sp)            
	jal     func_8009D2F0              
	or      a1, $zero, $zero           ## a1 = 00000000
	lwc1    $f4, 0x005C(v0)            ## 0000005C
	swc1    $f4, 0x0418(s0)            ## 00000418
	lwc1    $f6, 0x0060(v0)            ## 00000060
	swc1    $f6, 0x041C(s0)            ## 0000041C
	lwc1    $f8, 0x0064(v0)            ## 00000064
	swc1    $f8, 0x0420(s0)            ## 00000420
	lwc1    $f10, 0x0050(v0)           ## 00000050
	swc1    $f10, 0x0424(s0)           ## 00000424
	lwc1    $f18, 0x0054(v0)           ## 00000054
	swc1    $f18, 0x0428(s0)           ## 00000428
	lwc1    $f4, 0x0058(v0)            ## 00000058
	beq     $zero, $zero, lbl_808A3340 
	swc1    $f4, 0x042C(s0)            ## 0000042C
var_808A1D2C:
	lh      a0, 0x00B6(s0)             ## 000000B6
	addiu   a0, a0, 0xEC78             ## a0 = FFFFEC78
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lui     $at, 0x4316                ## $at = 43160000
	mtc1    $at, $f6                   ## $f6 = 150.00
	lh      a0, 0x00B6(s0)             ## 000000B6
	mul.s   $f12, $f0, $f6             
	addiu   a0, a0, 0xEC78             ## a0 = FFFFEC78
	sll     a0, a0, 16                 
	sra     a0, a0, 16                 
	jal     func_80063684              ## coss?
	swc1    $f12, 0x0180($sp)          
	lui     $at, 0x4316                ## $at = 43160000
	mtc1    $at, $f8                   ## $f8 = 150.00
	lwc1    $f12, 0x0180($sp)          
	lwc1    $f10, 0x0024(s0)           ## 00000024
	mul.s   $f14, $f0, $f8             
	lw      a0, 0x0160($sp)            
	add.s   $f18, $f10, $f12           
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     a2, 0x3F00                 ## a2 = 3F000000
	lui     a3, 0x40A0                 ## a3 = 40A00000
	mfc1    a1, $f18                   
	swc1    $f14, 0x017C($sp)          
	addiu   a0, a0, 0x0024             ## a0 = 00000024
	jal     func_80064178              
	swc1    $f4, 0x0010($sp)           
	lwc1    $f14, 0x017C($sp)          
	lwc1    $f6, 0x002C(s0)            ## 0000002C
	lw      a0, 0x0160($sp)            
	mtc1    $zero, $f10                ## $f10 = 0.00
	add.s   $f8, $f6, $f14             
	lui     a2, 0x3F00                 ## a2 = 3F000000
	lui     a3, 0x40A0                 ## a3 = 40A00000
	addiu   a0, a0, 0x002C             ## a0 = 0000002C
	mfc1    a1, $f8                    
	jal     func_80064178              
	swc1    $f10, 0x0010($sp)          
	mtc1    $zero, $f18                ## $f18 = 0.00
	lui     a1, 0x3D8F                 ## a1 = 3D8F0000
	lui     a3, 0x3BA3                 ## a3 = 3BA30000
	ori     a3, a3, 0xD70A             ## a3 = 3BA3D70A
	ori     a1, a1, 0x5C29             ## a1 = 3D8F5C29
	addiu   a0, s0, 0x01F8             ## a0 = 000001F8
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_80064178              
	swc1    $f18, 0x0010($sp)          
	jal     func_800636C4              ## sins?
	lh      a0, 0x0032(s0)             ## 00000032
	lui     $at, 0x4366                ## $at = 43660000
	mtc1    $at, $f4                   ## $f4 = 230.00
	lh      a0, 0x0032(s0)             ## 00000032
	mul.s   $f12, $f0, $f4             
	jal     func_80063684              ## coss?
	swc1    $f12, 0x0180($sp)          
	lui     $at, 0x4366                ## $at = 43660000
	mtc1    $at, $f6                   ## $f6 = 230.00
	lwc1    $f12, 0x0180($sp)          
	lwc1    $f8, 0x0024(s0)            ## 00000024
	mul.s   $f14, $f0, $f6             
	lui     $at, %hi(var_808A6D5C)     ## $at = 808A0000
	add.s   $f10, $f8, $f12            
	lwc1    $f18, %lo(var_808A6D5C)($at) 
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	mfc1    a1, $f10                   
	swc1    $f14, 0x017C($sp)          
	addiu   a0, s0, 0x0418             ## a0 = 00000418
	lui     a3, 0x4248                 ## a3 = 42480000
	jal     func_80064178              
	swc1    $f18, 0x0010($sp)          
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f6                   ## $f6 = 20.00
	lwc1    $f4, 0x0028(s0)            ## 00000028
	lui     $at, %hi(var_808A6D60)     ## $at = 808A0000
	lwc1    $f10, %lo(var_808A6D60)($at) 
	add.s   $f8, $f4, $f6              
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x041C             ## a0 = 0000041C
	mfc1    a1, $f8                    
	lui     a3, 0x4248                 ## a3 = 42480000
	jal     func_80064178              
	swc1    $f10, 0x0010($sp)          
	lwc1    $f14, 0x017C($sp)          
	lwc1    $f18, 0x002C(s0)           ## 0000002C
	lui     $at, %hi(var_808A6D64)     ## $at = 808A0000
	lwc1    $f6, %lo(var_808A6D64)($at) 
	add.s   $f4, $f18, $f14            
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x0420             ## a0 = 00000420
	mfc1    a1, $f4                    
	lui     a3, 0x4248                 ## a3 = 42480000
	jal     func_80064178              
	swc1    $f6, 0x0010($sp)           
	lui     $at, %hi(var_808A6D68)     ## $at = 808A0000
	lwc1    $f8, %lo(var_808A6D68)($at) 
	lw      a1, 0x0024(s0)             ## 00000024
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x0424             ## a0 = 00000424
	lui     a3, 0x41F0                 ## a3 = 41F00000
	jal     func_80064178              
	swc1    $f8, 0x0010($sp)           
	lui     $at, 0x428C                ## $at = 428C0000
	mtc1    $at, $f18                  ## $f18 = 70.00
	lwc1    $f10, 0x003C(s0)           ## 0000003C
	lui     $at, %hi(var_808A6D6C)     ## $at = 808A0000
	lwc1    $f6, %lo(var_808A6D6C)($at) 
	sub.s   $f4, $f10, $f18            
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x0428             ## a0 = 00000428
	mfc1    a1, $f4                    
	lui     a3, 0x41F0                 ## a3 = 41F00000
	jal     func_80064178              
	swc1    $f6, 0x0010($sp)           
	lui     $at, %hi(var_808A6D70)     ## $at = 808A0000
	lwc1    $f8, %lo(var_808A6D70)($at) 
	lw      a1, 0x002C(s0)             ## 0000002C
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x042C             ## a0 = 0000042C
	lui     a3, 0x41F0                 ## a3 = 41F00000
	jal     func_80064178              
	swc1    $f8, 0x0010($sp)           
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x2D0C             ## a0 = 06002D0C
	mtc1    v0, $f10                   ## $f10 = 0.00
	lw      a0, 0x004C($sp)            
	cvt.s.w $f10, $f10                 
	mfc1    a1, $f10                   
	jal     func_8008D6A8              
	nop
	beq     v0, $zero, lbl_808A3340    
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x3CF8             ## a0 = 06003CF8
	mtc1    v0, $f18                   ## $f18 = 0.00
	lui     $at, 0xBF80                ## $at = BF800000
	mtc1    $at, $f6                   ## $f6 = -1.00
	cvt.s.w $f4, $f18                  
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   t0, $zero, 0x0002          ## t0 = 00000002
	sw      t0, 0x0014($sp)            
	addiu   a1, a1, 0x3CF8             ## a1 = 06003CF8
	lw      a0, 0x004C($sp)            
	swc1    $f4, 0x0010($sp)           
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_8008D17C              
	swc1    $f6, 0x0018($sp)           
	addiu   t1, $zero, 0x0006          ## t1 = 00000006
	sh      t1, 0x018C(s0)             ## 0000018C
	lui     $at, %hi(var_808A6D74)     ## $at = 808A0000
	lwc1    $f8, %lo(var_808A6D74)($at) 
	lui     $at, %hi(var_808A6D78)     ## $at = 808A0000
	lwc1    $f10, %lo(var_808A6D78)($at) 
	lw      a1, 0x01A4($sp)            
	lui     a3, 0xC45E                 ## a3 = C45E0000
	addiu   t3, $zero, 0x6000          ## t3 = 00006000
	sw      t3, 0x0024($sp)            
	ori     a3, a3, 0x8000             ## a3 = C45E8000
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0018($sp)         
	addiu   a2, $zero, 0x0059          ## a2 = 00000059
	swc1    $f8, 0x0010($sp)           
	swc1    $f10, 0x0014($sp)          
	jal     func_80025110              ## ActorSpawn
	addiu   a0, a1, 0x1C24             ## a0 = 00001C24
	beq     $zero, $zero, lbl_808A3344 
	lh      a1, 0x01A4(s0)             ## 000001A4
var_808A1FF0:
	lui     $at, %hi(var_808A6D7C)     ## $at = 808A0000
	lwc1    $f18, %lo(var_808A6D7C)($at) 
	lw      a1, 0x0024(s0)             ## 00000024
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x0424             ## a0 = 00000424
	lui     a3, 0x41F0                 ## a3 = 41F00000
	jal     func_80064178              
	swc1    $f18, 0x0010($sp)          
	lui     $at, 0x428C                ## $at = 428C0000
	mtc1    $at, $f6                   ## $f6 = 70.00
	lwc1    $f4, 0x0028(s0)            ## 00000028
	lui     $at, 0x4302                ## $at = 43020000
	mtc1    $at, $f10                  ## $f10 = 130.00
	sub.s   $f8, $f4, $f6              
	lui     $at, %hi(var_808A6D80)     ## $at = 808A0000
	lwc1    $f4, %lo(var_808A6D80)($at) 
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	add.s   $f18, $f8, $f10            
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x0428             ## a0 = 00000428
	lui     a3, 0x41A0                 ## a3 = 41A00000
	mfc1    a1, $f18                   
	jal     func_80064178              
	swc1    $f4, 0x0010($sp)           
	lui     $at, %hi(var_808A6D84)     ## $at = 808A0000
	lwc1    $f6, %lo(var_808A6D84)($at) 
	lw      a1, 0x002C(s0)             ## 0000002C
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x042C             ## a0 = 0000042C
	lui     a3, 0x41F0                 ## a3 = 41F00000
	jal     func_80064178              
	swc1    $f6, 0x0010($sp)           
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x3CF8             ## a0 = 06003CF8
	mtc1    v0, $f8                    ## $f8 = 0.00
	lw      a0, 0x004C($sp)            
	cvt.s.w $f8, $f8                   
	mfc1    a1, $f8                    
	jal     func_8008D6A8              
	nop
	beq     v0, $zero, lbl_808A3340    
	lw      a0, 0x004C($sp)            
	lui     $at, 0x426C                ## $at = 426C0000
	mtc1    $at, $f10                  ## $f10 = 59.00
	lui     $at, 0xBF80                ## $at = BF800000
	mtc1    $at, $f18                  ## $f18 = -1.00
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   t4, $zero, 0x0002          ## t4 = 00000002
	sw      t4, 0x0014($sp)            
	addiu   a1, a1, 0xDF38             ## a1 = 0600DF38
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x41F0                 ## a3 = 41F00000
	swc1    $f10, 0x0010($sp)          
	jal     func_8008D17C              
	swc1    $f18, 0x0018($sp)          
	addiu   t5, $zero, 0x0007          ## t5 = 00000007
	sh      t5, 0x018C(s0)             ## 0000018C
	lui     $at, %hi(var_808A6D88)     ## $at = 808A0000
	lwc1    $f4, %lo(var_808A6D88)($at) 
	mtc1    $zero, $f6                 ## $f6 = 0.00
	mtc1    $zero, $f8                 ## $f8 = 0.00
	sh      $zero, 0x0198(s0)          ## 00000198
	sh      $zero, 0x018E(s0)          ## 0000018E
	swc1    $f4, 0x0218(s0)            ## 00000218
	swc1    $f6, 0x01F4(s0)            ## 000001F4
	beq     $zero, $zero, lbl_808A3340 
	swc1    $f8, 0x01D4(s0)            ## 000001D4
var_808A2108:
	lh      t6, 0x01B4(s0)             ## 000001B4
	mtc1    $zero, $f10                ## $f10 = 0.00
	lw      a1, 0x0024(s0)             ## 00000024
	addiu   t7, t6, 0x07D0             ## t7 = 000007D0
	sh      t7, 0x01B4(s0)             ## 000001B4
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x0424             ## a0 = 00000424
	lui     a3, 0x41F0                 ## a3 = 41F00000
	jal     func_80064178              
	swc1    $f10, 0x0010($sp)          
	lui     $at, 0x428C                ## $at = 428C0000
	mtc1    $at, $f4                   ## $f4 = 70.00
	lwc1    $f18, 0x0028(s0)           ## 00000028
	lui     $at, 0x4302                ## $at = 43020000
	mtc1    $at, $f8                   ## $f8 = 130.00
	sub.s   $f6, $f18, $f4             
	mtc1    $zero, $f18                ## $f18 = 0.00
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	add.s   $f10, $f6, $f8             
	addiu   a0, s0, 0x0428             ## a0 = 00000428
	lui     a3, 0x41A0                 ## a3 = 41A00000
	swc1    $f18, 0x0010($sp)          
	mfc1    a1, $f10                   
	jal     func_80064178              
	nop
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lw      a1, 0x002C(s0)             ## 0000002C
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x042C             ## a0 = 0000042C
	lui     a3, 0x41F0                 ## a3 = 41F00000
	jal     func_80064178              
	swc1    $f4, 0x0010($sp)           
	lui     $at, %hi(var_808A6D8C)     ## $at = 808A0000
	lwc1    $f2, %lo(var_808A6D8C)($at) 
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f8                   ## $f8 = 5.00
	lwc1    $f6, 0x01F4(s0)            ## 000001F4
	lui     a1, 0xC45E                 ## a1 = C45E0000
	mfc1    a2, $f2                    
	mul.s   $f10, $f6, $f8             
	ori     a1, a1, 0x8000             ## a1 = C45E8000
	addiu   a0, s0, 0x0418             ## a0 = 00000418
	swc1    $f2, 0x0010($sp)           
	mfc1    a3, $f10                   
	jal     func_80064178              
	nop
	lui     $at, %hi(var_808A6D90)     ## $at = 808A0000
	lwc1    $f2, %lo(var_808A6D90)($at) 
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f4                   ## $f4 = 5.00
	lwc1    $f18, 0x01F4(s0)           ## 000001F4
	lui     a1, 0xC54E                 ## a1 = C54E0000
	mfc1    a2, $f2                    
	mul.s   $f6, $f18, $f4             
	ori     a1, a1, 0x8000             ## a1 = C54E8000
	addiu   a0, s0, 0x0420             ## a0 = 00000420
	swc1    $f2, 0x0010($sp)           
	mfc1    a3, $f6                    
	jal     func_80064178              
	nop
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f2                   ## $f2 = 1.00
	mtc1    $zero, $f8                 ## $f8 = 0.00
	lui     a3, 0x3DCC                 ## a3 = 3DCC0000
	mfc1    a1, $f2                    
	mfc1    a2, $f2                    
	ori     a3, a3, 0xCCCD             ## a3 = 3DCCCCCD
	addiu   a0, s0, 0x01F4             ## a0 = 000001F4
	jal     func_80064178              
	swc1    $f8, 0x0010($sp)           
	lh      t8, 0x01CA(s0)             ## 000001CA
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lui     t4, %hi(var_808A6A88)      ## t4 = 808A0000
	bne     t8, $at, lbl_808A229C      
	addiu   t4, t4, %lo(var_808A6A88)  ## t4 = 808A6A88
	lui     $at, 0x3FC0                ## $at = 3FC00000
	mtc1    $at, $f18                  ## $f18 = 1.50
	lwc1    $f10, 0x01D4(s0)           ## 000001D4
	lh      t0, 0x0192(s0)             ## 00000192
	addiu   t9, $zero, 0x0008          ## t9 = 00000008
	div.s   $f4, $f10, $f18            
	sh      t9, 0x018C(s0)             ## 0000018C
	lui     $at, 0xC37A                ## $at = C37A0000
	addiu   t1, $zero, 0x03E8          ## t1 = 000003E8
	bne     t0, $zero, lbl_808A227C    
	swc1    $f4, 0x0068(s0)            ## 00000068
	lui     $at, 0x437A                ## $at = 437A0000
	mtc1    $at, $f6                   ## $f6 = 250.00
	beq     $zero, $zero, lbl_808A2288 
	swc1    $f6, 0x0228(s0)            ## 00000228
lbl_808A227C:
	mtc1    $at, $f8                   ## $f8 = 250.00
	nop
	swc1    $f8, 0x0228(s0)            ## 00000228
lbl_808A2288:
	lui     $at, 0x44FA                ## $at = 44FA0000
	mtc1    $at, $f10                  ## $f10 = 2000.00
	sh      t1, 0x01CA(s0)             ## 000001CA
	beq     $zero, $zero, lbl_808A3340 
	swc1    $f10, 0x0224(s0)           ## 00000224
lbl_808A229C:
	lui     $at, 0x4040                ## $at = 40400000
	mtc1    $at, $f0                   ## $f0 = 3.00
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f18                  ## $f18 = 5.00
	lui     $at, 0x3E80                ## $at = 3E800000
	mtc1    $at, $f6                   ## $f6 = 0.25
	mul.s   $f4, $f0, $f18             
	lh      t2, 0x0190(s0)             ## 00000190
	mtc1    $zero, $f10                ## $f10 = 0.00
	mul.s   $f8, $f0, $f6              
	sll     t3, t2,  2                 
	subu    t3, t3, t2                 
	sll     t3, t3,  2                 
	addu    t5, t3, t4                 
	sw      t5, 0x019C($sp)            
	mfc1    a1, $f4                    
	mfc1    a3, $f8                    
	swc1    $f0, 0x01DC(s0)            ## 000001DC
	addiu   a0, s0, 0x01D4             ## a0 = 000001D4
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_80064178              
	swc1    $f10, 0x0010($sp)          
	lw      v0, 0x019C($sp)            
	lwc1    $f4, 0x0024(s0)            ## 00000024
	lwc1    $f8, 0x002C(s0)            ## 0000002C
	lwc1    $f18, 0x0000(v0)           ## 00000000
	lwc1    $f6, 0x0008(v0)            ## 00000008
	lui     $at, 0x4348                ## $at = 43480000
	sub.s   $f12, $f18, $f4            
	mtc1    $at, $f16                  ## $f16 = 200.00
	lui     $at, 0x428C                ## $at = 428C0000
	sub.s   $f14, $f6, $f8             
	mul.s   $f10, $f12, $f12           
	nop
	mul.s   $f18, $f14, $f14           
	add.s   $f0, $f10, $f18            
	sqrt.s  $f0, $f0                   
	c.lt.s  $f0, $f16                  
	sub.s   $f2, $f0, $f16             
	mtc1    $at, $f0                   ## $f0 = 70.00
	bc1t    lbl_808A2350               
	nop
	lh      t6, 0x01CA(s0)             ## 000001CA
	beql    t6, $zero, lbl_808A235C    
	c.lt.s  $f0, $f2                   
lbl_808A2350:
	mtc1    $zero, $f2                 ## $f2 = 0.00
	nop
	c.lt.s  $f0, $f2                   
lbl_808A235C:
	nop
	bc1fl   lbl_808A2370               
	lh      a0, 0x018E(s0)             ## 0000018E
	mov.s   $f2, $f0                   
	lh      a0, 0x018E(s0)             ## 0000018E
lbl_808A2370:
	swc1    $f2, 0x0178($sp)           
	addu    $at, a0, $zero             
	sll     a0, a0,  5                 
	subu    a0, a0, $at                
	sll     a0, a0,  2                 
	addu    a0, a0, $at                
	sll     a0, a0,  3                 
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lui     $at, 0xC248                ## $at = C2480000
	mtc1    $at, $f12                  ## $f12 = -50.00
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f6                   ## $f6 = 100.00
	mul.s   $f4, $f0, $f12             
	lh      a0, 0x018E(s0)             ## 0000018E
	addu    $at, a0, $zero             
	sll     a0, a0,  5                 
	subu    a0, a0, $at                
	div.s   $f8, $f4, $f6              
	sll     a0, a0,  2                 
	addu    a0, a0, $at                
	sll     a0, a0,  3                 
	sll     a0, a0, 16                 
	sra     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	swc1    $f8, 0x022C(s0)            ## 0000022C
	lwc1    $f2, 0x0178($sp)           
	mtc1    $zero, $f18                ## $f18 = 0.00
	mtc1    $zero, $f4                 ## $f4 = 0.00
	mul.s   $f10, $f0, $f2             
	swc1    $f18, 0x0198($sp)          
	swc1    $f4, 0x0194($sp)           
	lui     $at, %hi(var_808A6D94)     ## $at = 808A0000
	or      a1, $zero, $zero           ## a1 = 00000000
	swc1    $f10, 0x0190($sp)          
	lh      t7, 0x00B6(s0)             ## 000000B6
	lwc1    $f10, %lo(var_808A6D94)($at) 
	mtc1    t7, $f6                    ## $f6 = 0.00
	nop
	cvt.s.w $f8, $f6                   
	mul.s   $f12, $f8, $f10            
	jal     func_800AAB94              
	nop
	addiu   a0, $sp, 0x0190            ## a0 = FFFFFFF0
	jal     func_800AB958              
	addiu   a1, $sp, 0x0184            ## a1 = FFFFFFE4
	lw      t8, 0x019C($sp)            
	lwc1    $f4, 0x0184($sp)           
	mtc1    $zero, $f8                 ## $f8 = 0.00
	lwc1    $f18, 0x0000(t8)           ## 00000000
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	lw      a3, 0x01D4(s0)             ## 000001D4
	add.s   $f6, $f18, $f4             
	sw      a0, 0x0048($sp)            
	lui     a2, 0x3F80                 ## a2 = 3F800000
	swc1    $f8, 0x0010($sp)           
	mfc1    a1, $f6                    
	jal     func_80064178              
	nop
	lw      t9, 0x019C($sp)            
	lwc1    $f18, 0x018C($sp)          
	mtc1    $zero, $f6                 ## $f6 = 0.00
	lwc1    $f10, 0x0008(t9)           ## 00000008
	lw      a3, 0x01D4(s0)             ## 000001D4
	addiu   a0, s0, 0x002C             ## a0 = 0000002C
	add.s   $f4, $f10, $f18            
	lui     a2, 0x3F80                 ## a2 = 3F800000
	swc1    $f6, 0x0010($sp)           
	mfc1    a1, $f4                    
	jal     func_80064178              
	nop
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x304E          ## a1 = 0000304E
	lh      v1, 0x018E(s0)             ## 0000018E
	lw      a0, 0x01A4($sp)            
	addiu   a1, $zero, 0x0002          ## a1 = 00000002
	andi    t0, v1, 0x0007             ## t0 = 00000000
	bne     t0, $zero, lbl_808A24C4    
	addiu   a0, a0, 0x01E0             ## a0 = 000001E0
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	jal     func_800497A4              
	addiu   a3, $zero, 0x0008          ## a3 = 00000008
	lh      v1, 0x018E(s0)             ## 0000018E
lbl_808A24C4:
	andi    t1, v1, 0x0001             ## t1 = 00000000
	bne     t1, $zero, lbl_808A2508    
	lw      a0, 0x01A4($sp)            
	lui     $at, 0x4100                ## $at = 41000000
	mtc1    $at, $f8                   ## $f8 = 8.00
	addiu   t2, $zero, 0x0003          ## t2 = 00000003
	addiu   t3, $zero, 0x01F4          ## t3 = 000001F4
	addiu   t4, $zero, 0x000A          ## t4 = 0000000A
	sw      t4, 0x001C($sp)            
	sw      t3, 0x0018($sp)            
	sw      t2, 0x0010($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	lw      a2, 0x0048($sp)            
	lui     a3, 0x4220                 ## a3 = 42200000
	sw      $zero, 0x0020($sp)         
	jal     func_800260E8              
	swc1    $f8, 0x0014($sp)           
lbl_808A2508:
	lw      t5, 0x019C($sp)            
	lwc1    $f18, 0x0024(s0)           ## 00000024
	lui     $at, 0x42C8                ## $at = 42C80000
	lwc1    $f10, 0x0000(t5)           ## 00000000
	lwc1    $f8, 0x01DC(s0)            ## 000001DC
	lwc1    $f6, 0x002C(s0)            ## 0000002C
	sub.s   $f12, $f10, $f18           
	mtc1    $at, $f10                  ## $f10 = 100.00
	lwc1    $f4, 0x0008(t5)            ## 00000008
	lui     a1, 0x44BB                 ## a1 = 44BB0000
	mul.s   $f18, $f8, $f10            
	sub.s   $f14, $f4, $f6             
	mtc1    $zero, $f4                 ## $f4 = 0.00
	ori     a1, a1, 0x8000             ## a1 = 44BB8000
	swc1    $f12, 0x0180($sp)          
	swc1    $f14, 0x017C($sp)          
	addiu   a0, s0, 0x01D8             ## a0 = 000001D8
	mfc1    a3, $f18                   
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_80064178              
	swc1    $f4, 0x0010($sp)           
	lwc1    $f12, 0x0180($sp)          
	jal     func_800CD76C              
	lwc1    $f14, 0x017C($sp)          
	lui     $at, %hi(var_808A6D98)     ## $at = 808A0000
	lwc1    $f6, %lo(var_808A6D98)($at) 
	lwc1    $f18, 0x01DC(s0)           ## 000001DC
	lwc1    $f4, 0x01D8(s0)            ## 000001D8
	mul.s   $f8, $f0, $f6              
	sw      $zero, 0x0010($sp)         
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	mul.s   $f6, $f18, $f4             
	addiu   a2, $zero, 0x0005          ## a2 = 00000005
	trunc.w.s $f10, $f8                  
	trunc.w.s $f8, $f6                   
	mfc1    a1, $f10                   
	mfc1    a3, $f8                    
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	sll     a3, a3, 16                 
	jal     func_80064508              
	sra     a3, a3, 16                 
	lwc1    $f12, 0x0180($sp)          
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f2                   ## $f2 = 15.00
	abs.s   $f0, $f12                  
	lwc1    $f14, 0x017C($sp)          
	c.le.s  $f0, $f2                   
	nop
	bc1fl   lbl_808A3344               
	lh      a1, 0x01A4(s0)             ## 000001A4
	abs.s   $f0, $f14                  
	or      a0, s0, $zero              ## a0 = 00000000
	c.le.s  $f0, $f2                   
	addiu   a1, $zero, 0x384D          ## a1 = 0000384D
	bc1fl   lbl_808A3344               
	lh      a1, 0x01A4(s0)             ## 000001A4
	jal     func_80022FD0              
	swc1    $f2, 0x0060(s0)            ## 00000060
	lh      t8, 0x0192(s0)             ## 00000192
	addiu   t6, $zero, 0x000A          ## t6 = 0000000A
	addiu   a1, $sp, 0x0154            ## a1 = FFFFFFB4
	bnel    t8, $zero, lbl_808A2630    
	lh      t2, 0x0190(s0)             ## 00000190
	lh      t9, 0x0190(s0)             ## 00000190
	addiu   t0, t9, 0x0001             ## t0 = 00000001
	sh      t0, 0x0190(s0)             ## 00000190
	lh      t1, 0x0190(s0)             ## 00000190
	slti    $at, t1, 0x0004            
	bnel    $at, $zero, lbl_808A2650   
	lwc1    $f10, 0x0024(s0)           ## 00000024
	beq     $zero, $zero, lbl_808A264C 
	sh      $zero, 0x0190(s0)          ## 00000190
	lh      t2, 0x0190(s0)             ## 00000190
lbl_808A2630:
	addiu   t5, $zero, 0x0003          ## t5 = 00000003
	addiu   t3, t2, 0xFFFF             ## t3 = FFFFFFFF
	sh      t3, 0x0190(s0)             ## 00000190
	lh      t4, 0x0190(s0)             ## 00000190
	bgezl   t4, lbl_808A2650           
	lwc1    $f10, 0x0024(s0)           ## 00000024
	sh      t5, 0x0190(s0)             ## 00000190
lbl_808A264C:
	lwc1    $f10, 0x0024(s0)           ## 00000024
lbl_808A2650:
	sh      t6, 0x01CA(s0)             ## 000001CA
	lui     $at, 0x4270                ## $at = 42700000
	swc1    $f10, 0x0154($sp)          
	lwc1    $f18, 0x0028(s0)           ## 00000028
	mtc1    $at, $f4                   ## $f4 = 60.00
	addiu   t7, $zero, 0x0320          ## t7 = 00000320
	addiu   t8, $zero, 0x000A          ## t8 = 0000000A
	add.s   $f6, $f18, $f4             
	lw      a0, 0x01A4($sp)            
	lui     a2, 0x437A                 ## a2 = 437A0000
	addiu   a3, $zero, 0x0028          ## a3 = 00000028
	swc1    $f6, 0x0158($sp)           
	lwc1    $f8, 0x002C(s0)            ## 0000002C
	sw      $zero, 0x0018($sp)         
	sw      t8, 0x0014($sp)            
	sw      t7, 0x0010($sp)            
	jal     func_80026308              
	swc1    $f8, 0x015C($sp)           
	beq     $zero, $zero, lbl_808A3344 
	lh      a1, 0x01A4(s0)             ## 000001A4
var_808A26A0:
	lh      v1, 0x01CA(s0)             ## 000001CA
	addiu   $at, $zero, 0x0374         ## $at = 00000374
	lui     a0, 0x0600                 ## a0 = 06000000
	bnel    v1, $at, lbl_808A2740      
	slti    $at, v1, 0x0356            
	jal     func_8008A194              
	addiu   a0, a0, 0x42A8             ## a0 = 060042A8
	mtc1    v0, $f10                   ## $f10 = 0.00
	lui     $at, 0xC1A0                ## $at = C1A00000
	mtc1    $at, $f4                   ## $f4 = -20.00
	cvt.s.w $f18, $f10                 
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x42A8             ## a1 = 060042A8
	lw      a0, 0x004C($sp)            
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f18, 0x0010($sp)          
	sw      $zero, 0x0014($sp)         
	jal     func_8008D17C              
	swc1    $f4, 0x0018($sp)           
	lwc1    $f6, 0x0418(s0)            ## 00000418
	lwc1    $f8, 0x0024(s0)            ## 00000024
	lwc1    $f10, 0x0420(s0)           ## 00000420
	lwc1    $f18, 0x002C(s0)           ## 0000002C
	sub.s   $f12, $f6, $f8             
	sub.s   $f14, $f10, $f18           
	mul.s   $f4, $f12, $f12            
	nop
	mul.s   $f6, $f14, $f14            
	add.s   $f0, $f4, $f6              
	sqrt.s  $f0, $f0                   
	jal     func_800CD76C              
	swc1    $f0, 0x021C(s0)            ## 0000021C
	addiu   t9, $zero, 0x015E          ## t9 = 0000015E
	addiu   t0, $zero, 0x0009          ## t0 = 00000009
	swc1    $f0, 0x0220(s0)            ## 00000220
	sh      t9, 0x01CC(s0)             ## 000001CC
	sh      t0, 0x018C(s0)             ## 0000018C
	lh      v1, 0x01CA(s0)             ## 000001CA
	slti    $at, v1, 0x0356            
lbl_808A2740:
	beq     $at, $zero, lbl_808A2790   
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808A2748:
	lui     a0, %hi(var_808A3690)      ## a0 = 808A0000
	lh      a1, 0x01BC(s0)             ## 000001BC
	sh      v0, 0x0176($sp)            
	jal     func_8089D9C4              
	addiu   a0, a0, %lo(var_808A3690)  ## a0 = 808A3690
	lh      v1, 0x01BC(s0)             ## 000001BC
	lh      v0, 0x0176($sp)            
	slti    $at, v1, 0x0100            
	beq     $at, $zero, lbl_808A2778   
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	addiu   t1, v1, 0x0001             ## t1 = 00000001
	sh      t1, 0x01BC(s0)             ## 000001BC
lbl_808A2778:
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x0002            
	bne     $at, $zero, lbl_808A2748   
	nop
	lh      v1, 0x01CA(s0)             ## 000001CA
lbl_808A2790:
	slti    $at, v1, 0x03D8            
	beq     $at, $zero, lbl_808A27B4   
	addiu   a0, s0, 0x01B4             ## a0 = 000001B4
	addiu   a1, $zero, 0xC000          ## a1 = FFFFC000
	addiu   a2, $zero, 0x000A          ## a2 = 0000000A
	addiu   a3, $zero, 0x012C          ## a3 = 0000012C
	jal     func_80064508              
	sw      $zero, 0x0010($sp)         
	lh      v1, 0x01CA(s0)             ## 000001CA
lbl_808A27B4:
	addiu   $at, $zero, 0x0388         ## $at = 00000388
	bne     v1, $at, lbl_808A27CC      
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3853          ## a1 = 00003853
	lh      v1, 0x01CA(s0)             ## 000001CA
lbl_808A27CC:
	slti    $at, v1, 0x0356            
	beq     $at, $zero, lbl_808A27E4   
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3054          ## a1 = 00003054
	lh      v1, 0x01CA(s0)             ## 000001CA
lbl_808A27E4:
	addiu   $at, $zero, 0x03C0         ## $at = 000003C0
	bne     v1, $at, lbl_808A27FC      
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3855          ## a1 = 00003855
	lh      v1, 0x01CA(s0)             ## 000001CA
lbl_808A27FC:
	slti    $at, v1, 0x03C0            
	beq     $at, $zero, lbl_808A2AFC   
	or      a0, s0, $zero              ## a0 = 00000000
	mtc1    $zero, $f0                 ## $f0 = 0.00
	addiu   a0, s0, 0x00C4             ## a0 = 000000C4
	lui     a2, 0x3F80                 ## a2 = 3F800000
	mfc1    a1, $f0                    
	lui     a3, 0x4120                 ## a3 = 41200000
	jal     func_80064178              
	swc1    $f0, 0x0010($sp)           
	lh      v1, 0x01CA(s0)             ## 000001CA
	slti    $at, v1, 0x02C6            
	bne     $at, $zero, lbl_808A2B4C   
	addiu   $at, $zero, 0x02C6         ## $at = 000002C6
	bne     v1, $at, lbl_808A290C      
	addiu   a0, $sp, 0x00F4            ## a0 = FFFFFF54
	addiu   v1, $sp, 0x0124            ## v1 = FFFFFF84
	lui     t2, %hi(var_808A6B28)      ## t2 = 808A0000
	addiu   t2, t2, %lo(var_808A6B28)  ## t2 = 808A6B28
	addiu   t6, t2, 0x0030             ## t6 = 808A6B58
	or      t5, v1, $zero              ## t5 = FFFFFF84
lbl_808A2850:
	lw      t4, 0x0000(t2)             ## 808A6B28
	addiu   t2, t2, 0x000C             ## t2 = 808A6B34
	addiu   t5, t5, 0x000C             ## t5 = FFFFFF90
	sw      t4, -0x000C(t5)            ## FFFFFF84
	lw      t3, -0x0008(t2)            ## 808A6B2C
	sw      t3, -0x0008(t5)            ## FFFFFF88
	lw      t4, -0x0004(t2)            ## 808A6B30
	bne     t2, t6, lbl_808A2850       
	sw      t4, -0x0004(t5)            ## FFFFFF8C
	lui     t7, %hi(var_808A6B58)      ## t7 = 808A0000
	addiu   t7, t7, %lo(var_808A6B58)  ## t7 = 808A6B58
	addiu   t1, t7, 0x0030             ## t1 = 808A6B88
	or      t0, a0, $zero              ## t0 = FFFFFF54
lbl_808A2884:
	lw      t9, 0x0000(t7)             ## 808A6B58
	addiu   t7, t7, 0x000C             ## t7 = 808A6B64
	addiu   t0, t0, 0x000C             ## t0 = FFFFFF60
	sw      t9, -0x000C(t0)            ## FFFFFF54
	lw      t8, -0x0008(t7)            ## 808A6B5C
	sw      t8, -0x0008(t0)            ## FFFFFF58
	lw      t9, -0x0004(t7)            ## 808A6B60
	bne     t7, t1, lbl_808A2884       
	sw      t9, -0x0004(t0)            ## FFFFFF5C
	lh      t2, 0x0192(s0)             ## 00000192
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	sh      t6, 0x01B6(s0)             ## 000001B6
	bnel    t2, $zero, lbl_808A28D8    
	lh      t4, 0x0190(s0)             ## 00000190
	lh      t5, 0x0190(s0)             ## 00000190
	sll     t3, t5,  2                 
	subu    t3, t3, t5                 
	sll     t3, t3,  2                 
	beq     $zero, $zero, lbl_808A28E8 
	addu    v0, v1, t3                 
	lh      t4, 0x0190(s0)             ## 00000190
lbl_808A28D8:
	sll     t1, t4,  2                 
	subu    t1, t1, t4                 
	sll     t1, t1,  2                 
	addu    v0, a0, t1                 
lbl_808A28E8:
	lwc1    $f8, 0x0000(v0)            ## 00000000
	lw      t7, 0x0160($sp)            
	mtc1    $zero, $f0                 ## $f0 = 0.00
	swc1    $f8, 0x0024(t7)            ## 808A6B88
	lw      t0, 0x0160($sp)            
	lwc1    $f10, 0x0008(v0)           ## 00000008
	swc1    $f10, 0x002C(t0)           ## FFFFFF8C
	swc1    $f0, 0x01F4(s0)            ## 000001F4
	lh      v1, 0x01CA(s0)             ## 000001CA
lbl_808A290C:
	mtc1    $zero, $f0                 ## $f0 = 0.00
	slti    $at, v1, 0x0375            
	bne     $at, $zero, lbl_808A2940   
	addiu   a0, s0, 0x0218             ## a0 = 00000218
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x0218             ## a0 = 00000218
	lui     a1, 0x4348                 ## a1 = 43480000
	lui     a3, 0x42C8                 ## a3 = 42C80000
	jal     func_80064178              
	swc1    $f0, 0x0010($sp)           
	beq     $zero, $zero, lbl_808A295C 
	nop
lbl_808A2940:
	lui     a1, 0xC5CE                 ## a1 = C5CE0000
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	ori     a1, a1, 0x4000             ## a1 = C5CE4000
	lui     a3, 0x41F0                 ## a3 = 41F00000
	jal     func_80064178              
	swc1    $f0, 0x0010($sp)           
lbl_808A295C:
	lui     t9, %hi(var_808A6B88)      ## t9 = 808A0000
	addiu   t9, t9, %lo(var_808A6B88)  ## t9 = 808A6B88
	lw      t2, 0x0000(t9)             ## 808A6B88
	lw      t6, 0x0004(t9)             ## 808A6B8C
	addiu   t8, $sp, 0x00E4            ## t8 = FFFFFF44
	lui     t3, %hi(var_808A6B90)      ## t3 = 808A0000
	addiu   t3, t3, %lo(var_808A6B90)  ## t3 = 808A6B90
	sw      t2, 0x0000(t8)             ## FFFFFF44
	sw      t6, 0x0004(t8)             ## FFFFFF48
	lw      t4, 0x0004(t3)             ## 808A6B94
	lw      t1, 0x0000(t3)             ## 808A6B90
	lui     $at, 0x42F0                ## $at = 42F00000
	addiu   t5, $sp, 0x00DC            ## t5 = FFFFFF3C
	mtc1    $at, $f12                  ## $f12 = 120.00
	sw      t4, 0x0004(t5)             ## FFFFFF40
	jal     func_80026D90              
	sw      t1, 0x0000(t5)             ## FFFFFF3C
	lwc1    $f18, 0x0038(s0)           ## 00000038
	lui     $at, 0x4248                ## $at = 42480000
	mtc1    $at, $f12                  ## $f12 = 50.00
	add.s   $f4, $f0, $f18             
	jal     func_80026D64              
	swc1    $f4, 0x0168($sp)           
	lwc1    $f6, 0x0028(s0)            ## 00000028
	lui     $at, 0x42F0                ## $at = 42F00000
	mtc1    $at, $f12                  ## $f12 = 120.00
	add.s   $f8, $f0, $f6              
	jal     func_80026D90              
	swc1    $f8, 0x016C($sp)           
	lwc1    $f10, 0x0040(s0)           ## 00000040
	lui     t7, %hi(var_808A6C18)      ## t7 = 808A0000
	lui     t0, %hi(var_808A6C1C)      ## t0 = 808A0000
	add.s   $f18, $f0, $f10            
	addiu   t0, t0, %lo(var_808A6C1C)  ## t0 = 808A6C1C
	addiu   t7, t7, %lo(var_808A6C18)  ## t7 = 808A6C18
	lui     a2, %hi(var_808A6C00)      ## a2 = 808A0000
	lui     a3, %hi(var_808A6C0C)      ## a3 = 808A0000
	addiu   t8, $zero, 0x01F4          ## t8 = 000001F4
	addiu   t9, $zero, 0x000A          ## t9 = 0000000A
	addiu   t6, $zero, 0x000A          ## t6 = 0000000A
	swc1    $f18, 0x0170($sp)          
	sw      t6, 0x0020($sp)            
	sw      t9, 0x001C($sp)            
	sw      t8, 0x0018($sp)            
	addiu   a3, a3, %lo(var_808A6C0C)  ## a3 = 808A6C0C
	addiu   a2, a2, %lo(var_808A6C00)  ## a2 = 808A6C00
	sw      t7, 0x0010($sp)            
	sw      t0, 0x0014($sp)            
	lw      a0, 0x01A4($sp)            
	jal     func_8001BE64              
	addiu   a1, $sp, 0x0168            ## a1 = FFFFFFC8
	lui     $at, 0x42F0                ## $at = 42F00000
	mtc1    $at, $f12                  ## $f12 = 120.00
	jal     func_80026D90              
	nop
	lwc1    $f4, 0x0038(s0)            ## 00000038
	lui     $at, %hi(var_808A6D9C)     ## $at = 808A0000
	lwc1    $f8, %lo(var_808A6D9C)($at) 
	add.s   $f6, $f0, $f4              
	lui     $at, 0x42F0                ## $at = 42F00000
	mtc1    $at, $f12                  ## $f12 = 120.00
	swc1    $f8, 0x016C($sp)           
	jal     func_80026D90              
	swc1    $f6, 0x0168($sp)           
	lwc1    $f10, 0x0040(s0)           ## 00000040
	add.s   $f18, $f0, $f10            
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f18, 0x0170($sp)          
	lui     $at, %hi(var_808A6DA0)     ## $at = 808A0000
	lwc1    $f4, %lo(var_808A6DA0)($at) 
	mul.s   $f6, $f0, $f4              
	trunc.w.s $f8, $f6                   
	mfc1    v1, $f8                    
	nop
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	jal     func_800CDCCC              ## Rand.Next() float
	sh      v1, 0x00EE($sp)            
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f10                  ## $f10 = 100.00
	lh      v1, 0x00EE($sp)            
	addiu   t1, $zero, 0x000A          ## t1 = 0000000A
	mul.s   $f18, $f0, $f10            
	sll     t4, v1,  2                 
	addu    t4, t4, v1                 
	subu    t7, t1, t4                 
	addiu   t5, $sp, 0x00E4            ## t5 = FFFFFF44
	addiu   t3, $sp, 0x00DC            ## t3 = FFFFFF3C
	sll     v0, v1,  2                 
	trunc.w.s $f4, $f18                  
	addu    a2, v0, t5                 
	addu    a3, v0, t3                 
	sw      t7, 0x0010($sp)            
	mfc1    t8, $f4                    
	lw      a0, 0x01A4($sp)            
	addiu   a1, $sp, 0x0168            ## a1 = FFFFFFC8
	sll     t9, t8, 16                 
	sra     t6, t9, 16                 
	addiu   t2, t6, 0x0064             ## t2 = 00000064
	sw      t2, 0x0018($sp)            
	jal     func_8001D68C              
	sw      v1, 0x0014($sp)            
	beq     $zero, $zero, lbl_808A2B50 
	mtc1    $zero, $f0                 ## $f0 = 0.00
lbl_808A2AFC:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x304E          ## a1 = 0000304E
	lh      t5, 0x018E(s0)             ## 0000018E
	lw      a0, 0x01A4($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	andi    t3, t5, 0x0001             ## t3 = 00000000
	bne     t3, $zero, lbl_808A2B4C    
	addiu   a2, s0, 0x0024             ## a2 = 00000024
	lui     $at, 0x4100                ## $at = 41000000
	mtc1    $at, $f6                   ## $f6 = 8.00
	addiu   t1, $zero, 0x0003          ## t1 = 00000003
	addiu   t4, $zero, 0x01F4          ## t4 = 000001F4
	addiu   t7, $zero, 0x000A          ## t7 = 0000000A
	sw      t7, 0x001C($sp)            
	sw      t4, 0x0018($sp)            
	sw      t1, 0x0010($sp)            
	lui     a3, 0x4220                 ## a3 = 42200000
	sw      $zero, 0x0020($sp)         
	jal     func_800260E8              
	swc1    $f6, 0x0014($sp)           
lbl_808A2B4C:
	mtc1    $zero, $f0                 ## $f0 = 0.00
lbl_808A2B50:
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	lui     a3, 0x3DCC                 ## a3 = 3DCC0000
	mfc1    a1, $f0                    
	ori     a3, a3, 0xCCCD             ## a3 = 3DCCCCCD
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	jal     func_80064178              
	swc1    $f0, 0x0010($sp)           
	lwc1    $f2, 0x0228(s0)            ## 00000228
	lwc1    $f10, 0x0224(s0)           ## 00000224
	lh      t0, 0x0032(s0)             ## 00000032
	trunc.w.s $f8, $f2                   
	lh      t3, 0x01B4(s0)             ## 000001B4
	lh      t6, 0x01CA(s0)             ## 000001CA
	trunc.w.s $f18, $f10                 
	mfc1    t2, $f8                    
	slti    $at, t6, 0x0367            
	addiu   a0, s0, 0x0228             ## a0 = 00000228
	mfc1    t8, $f18                   
	addu    t5, t0, t2                 
	sh      t5, 0x0032(s0)             ## 00000032
	addu    t9, t3, t8                 
	bne     $at, $zero, lbl_808A2C1C   
	sh      t9, 0x01B4(s0)             ## 000001B4
	lh      t0, 0x0192(s0)             ## 00000192
	lui     $at, 0xC3E1                ## $at = C3E10000
	bnel    t0, $zero, lbl_808A2BF4    
	mtc1    $at, $f10                  ## $f10 = -450.00
	lui     $at, 0x43E1                ## $at = 43E10000
	mtc1    $at, $f4                   ## $f4 = 450.00
	lui     $at, 0x4120                ## $at = 41200000
	c.lt.s  $f2, $f4                   
	nop
	bc1fl   lbl_808A2C3C               
	mtc1    $zero, $f0                 ## $f0 = 0.00
	mtc1    $at, $f6                   ## $f6 = 10.00
	nop
	add.s   $f8, $f2, $f6              
	beq     $zero, $zero, lbl_808A2C38 
	swc1    $f8, 0x0228(s0)            ## 00000228
	mtc1    $at, $f10                  ## $f10 = 10.00
lbl_808A2BF4:
	lui     $at, 0x4120                ## $at = 41200000
	c.lt.s  $f10, $f2                  
	nop
	bc1fl   lbl_808A2C3C               
	mtc1    $zero, $f0                 ## $f0 = 0.00
	mtc1    $at, $f18                  ## $f18 = 10.00
	nop
	sub.s   $f4, $f2, $f18             
	beq     $zero, $zero, lbl_808A2C38 
	swc1    $f4, 0x0228(s0)            ## 00000228
lbl_808A2C1C:
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     a2, 0x3D4C                 ## a2 = 3D4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3D4CCCCD
	mfc1    a1, $f0                    
	lui     a3, 0x4220                 ## a3 = 42200000
	jal     func_80064178              
	swc1    $f0, 0x0010($sp)           
lbl_808A2C38:
	mtc1    $zero, $f0                 ## $f0 = 0.00
lbl_808A2C3C:
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	mfc1    a1, $f0                    
	addiu   a0, s0, 0x0224             ## a0 = 00000224
	lui     a3, 0x4188                 ## a3 = 41880000
	jal     func_80064178              
	swc1    $f0, 0x0010($sp)           
	mtc1    $zero, $f6                 ## $f6 = 0.00
	addiu   a0, s0, 0x0424             ## a0 = 00000424
	lw      a1, 0x0024(s0)             ## 00000024
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	sw      a0, 0x0048($sp)            
	lui     a3, 0x41F0                 ## a3 = 41F00000
	jal     func_80064178              
	swc1    $f6, 0x0010($sp)           
	lui     $at, 0x428C                ## $at = 428C0000
	mtc1    $at, $f10                  ## $f10 = 70.00
	lwc1    $f8, 0x0028(s0)            ## 00000028
	lui     $at, 0x4302                ## $at = 43020000
	mtc1    $at, $f4                   ## $f4 = 130.00
	sub.s   $f18, $f8, $f10            
	mtc1    $zero, $f8                 ## $f8 = 0.00
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	add.s   $f6, $f18, $f4             
	addiu   a0, s0, 0x0428             ## a0 = 00000428
	lui     a3, 0x41A0                 ## a3 = 41A00000
	swc1    $f8, 0x0010($sp)           
	mfc1    a1, $f6                    
	jal     func_80064178              
	nop
	mtc1    $zero, $f10                ## $f10 = 0.00
	lw      a1, 0x002C(s0)             ## 0000002C
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x042C             ## a0 = 0000042C
	lui     a3, 0x41F0                 ## a3 = 41F00000
	jal     func_80064178              
	swc1    $f10, 0x0010($sp)          
	lh      t2, 0x018C(s0)             ## 0000018C
	addiu   $at, $zero, 0x0009         ## $at = 00000009
	bnel    t2, $at, lbl_808A2FC8      
	lh      t2, 0x0192(s0)             ## 00000192
	lh      t5, 0x01CA(s0)             ## 000001CA
	addiu   v1, $sp, 0x00AC            ## v1 = FFFFFF0C
	lui     t1, %hi(var_808A6B98)      ## t1 = 808A0000
	slti    $at, t5, 0x02C6            
	beq     $at, $zero, lbl_808A2E90   
	addiu   a0, s0, 0x021C             ## a0 = 0000021C
	addiu   a0, $sp, 0x007C            ## a0 = FFFFFEDC
	addiu   t1, t1, %lo(var_808A6B98)  ## t1 = 808A6B98
	addiu   t8, t1, 0x0030             ## t8 = 808A6BC8
	or      t3, v1, $zero              ## t3 = FFFFFF0C
lbl_808A2D14:
	lw      t7, 0x0000(t1)             ## 808A6B98
	addiu   t1, t1, 0x000C             ## t1 = 808A6BA4
	addiu   t3, t3, 0x000C             ## t3 = FFFFFF18
	sw      t7, -0x000C(t3)            ## FFFFFF0C
	lw      t4, -0x0008(t1)            ## 808A6B9C
	sw      t4, -0x0008(t3)            ## FFFFFF10
	lw      t7, -0x0004(t1)            ## 808A6BA0
	bne     t1, t8, lbl_808A2D14       
	sw      t7, -0x0004(t3)            ## FFFFFF14
	lui     t9, %hi(var_808A6BC8)      ## t9 = 808A0000
	addiu   t9, t9, %lo(var_808A6BC8)  ## t9 = 808A6BC8
	addiu   t5, t9, 0x0030             ## t5 = 808A6BF8
	or      t2, a0, $zero              ## t2 = FFFFFEDC
lbl_808A2D48:
	lw      t0, 0x0000(t9)             ## 808A6BC8
	addiu   t9, t9, 0x000C             ## t9 = 808A6BD4
	addiu   t2, t2, 0x000C             ## t2 = FFFFFEE8
	sw      t0, -0x000C(t2)            ## FFFFFEDC
	lw      t6, -0x0008(t9)            ## 808A6BCC
	sw      t6, -0x0008(t2)            ## FFFFFEE0
	lw      t0, -0x0004(t9)            ## 808A6BD0
	bne     t9, t5, lbl_808A2D48       
	sw      t0, -0x0004(t2)            ## FFFFFEE4
	lh      t8, 0x0192(s0)             ## 00000192
	bnel    t8, $zero, lbl_808A2D94    
	lh      t4, 0x0190(s0)             ## 00000190
	lh      t1, 0x0190(s0)             ## 00000190
	sll     t3, t1,  2                 
	subu    t3, t3, t1                 
	sll     t3, t3,  2                 
	beq     $zero, $zero, lbl_808A2DA4 
	addu    v0, v1, t3                 
	lh      t4, 0x0190(s0)             ## 00000190
lbl_808A2D94:
	sll     t7, t4,  2                 
	subu    t7, t7, t4                 
	sll     t7, t7,  2                 
	addu    v0, a0, t7                 
lbl_808A2DA4:
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f4                   ## $f4 = 20.00
	lwc1    $f18, 0x01F4(s0)           ## 000001F4
	mtc1    $zero, $f8                 ## $f8 = 0.00
	lw      a1, 0x0000(v0)             ## 00000000
	mul.s   $f6, $f18, $f4             
	addiu   a0, s0, 0x0418             ## a0 = 00000418
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	sw      a0, 0x004C($sp)            
	sw      v0, 0x0078($sp)            
	swc1    $f8, 0x0010($sp)           
	mfc1    a3, $f6                    
	jal     func_80064178              
	nop
	lw      t5, 0x0160($sp)            
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f18                  ## $f18 = 30.00
	lwc1    $f10, 0x0028(t5)           ## 00000028
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f8                   ## $f8 = 20.00
	lwc1    $f6, 0x01F4(s0)            ## 000001F4
	add.s   $f4, $f10, $f18            
	mtc1    $zero, $f18                ## $f18 = 0.00
	mul.s   $f10, $f6, $f8             
	lui     a2, 0x3DCC                 ## a2 = 3DCC0000
	mfc1    a1, $f4                    
	ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
	addiu   a0, s0, 0x041C             ## a0 = 0000041C
	swc1    $f18, 0x0010($sp)          
	mfc1    a3, $f10                   
	jal     func_80064178              
	nop
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f6                   ## $f6 = 20.00
	lwc1    $f4, 0x01F4(s0)            ## 000001F4
	lw      v0, 0x0078($sp)            
	mtc1    $zero, $f10                ## $f10 = 0.00
	mul.s   $f8, $f4, $f6              
	lui     a2, 0x3DCC                 ## a2 = 3DCC0000
	lw      a1, 0x0008(v0)             ## 00000008
	ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
	addiu   a0, s0, 0x0420             ## a0 = 00000420
	swc1    $f10, 0x0010($sp)          
	mfc1    a3, $f8                    
	jal     func_80064178              
	nop
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f2                   ## $f2 = 1.00
	mtc1    $zero, $f18                ## $f18 = 0.00
	lui     a3, 0x3CA3                 ## a3 = 3CA30000
	mfc1    a1, $f2                    
	mfc1    a2, $f2                    
	ori     a3, a3, 0xD70A             ## a3 = 3CA3D70A
	addiu   a0, s0, 0x01F4             ## a0 = 000001F4
	jal     func_80064178              
	swc1    $f18, 0x0010($sp)          
	beq     $zero, $zero, lbl_808A30BC 
	lh      v1, 0x01CA(s0)             ## 000001CA
lbl_808A2E90:
	lh      t9, 0x0192(s0)             ## 00000192
	lui     $at, %hi(var_808A6DA8)     ## $at = 808A0000
	bnel    t9, $zero, lbl_808A2EBC    
	lwc1    $f10, 0x0220(s0)           ## 00000220
	lui     $at, %hi(var_808A6DA4)     ## $at = 808A0000
	lwc1    $f6, %lo(var_808A6DA4)($at) 
	lwc1    $f4, 0x0220(s0)            ## 00000220
	add.s   $f8, $f4, $f6              
	beq     $zero, $zero, lbl_808A2EC8 
	swc1    $f8, 0x0220(s0)            ## 00000220
	lwc1    $f10, 0x0220(s0)           ## 00000220
lbl_808A2EBC:
	lwc1    $f18, %lo(var_808A6DA8)($at) 
	sub.s   $f4, $f10, $f18            
	swc1    $f4, 0x0220(s0)            ## 00000220
lbl_808A2EC8:
	lui     $at, %hi(var_808A6DAC)     ## $at = 808A0000
	lwc1    $f0, %lo(var_808A6DAC)($at) 
	lui     a1, 0x435C                 ## a1 = 435C0000
	lui     a3, 0x40A0                 ## a3 = 40A00000
	mfc1    a2, $f0                    
	jal     func_80064178              
	swc1    $f0, 0x0010($sp)           
	jal     func_800CF470              
	lwc1    $f12, 0x0220(s0)           ## 00000220
	lwc1    $f6, 0x021C(s0)            ## 0000021C
	mul.s   $f8, $f6, $f0              
	swc1    $f8, 0x0180($sp)           
	jal     func_800D2CD0              
	lwc1    $f12, 0x0220(s0)           ## 00000220
	lwc1    $f10, 0x021C(s0)           ## 0000021C
	lwc1    $f12, 0x0180($sp)          
	lwc1    $f18, 0x0024(s0)           ## 00000024
	mul.s   $f14, $f10, $f0            
	mtc1    $zero, $f6                 ## $f6 = 0.00
	add.s   $f4, $f18, $f12            
	addiu   a0, s0, 0x0418             ## a0 = 00000418
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	mfc1    a1, $f4                    
	sw      a0, 0x004C($sp)            
	swc1    $f14, 0x017C($sp)          
	lui     a3, 0x4248                 ## a3 = 42480000
	jal     func_80064178              
	swc1    $f6, 0x0010($sp)           
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f10                  ## $f10 = 20.00
	lwc1    $f8, 0x0028(s0)            ## 00000028
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	add.s   $f18, $f8, $f10            
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x041C             ## a0 = 0000041C
	lui     a3, 0x4248                 ## a3 = 42480000
	mfc1    a1, $f18                   
	jal     func_80064178              
	swc1    $f4, 0x0010($sp)           
	lwc1    $f14, 0x017C($sp)          
	lwc1    $f6, 0x002C(s0)            ## 0000002C
	mtc1    $zero, $f10                ## $f10 = 0.00
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	add.s   $f8, $f6, $f14             
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x0420             ## a0 = 00000420
	lui     a3, 0x4248                 ## a3 = 42480000
	mfc1    a1, $f8                    
	jal     func_80064178              
	swc1    $f10, 0x0010($sp)          
	mtc1    $zero, $f2                 ## $f2 = 0.00
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	lui     a3, 0x3C23                 ## a3 = 3C230000
	mfc1    a1, $f2                    
	ori     a3, a3, 0xD70A             ## a3 = 3C23D70A
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x022C             ## a0 = 0000022C
	jal     func_80064178              
	swc1    $f2, 0x0010($sp)           
	beq     $zero, $zero, lbl_808A30BC 
	lh      v1, 0x01CA(s0)             ## 000001CA
	lh      t2, 0x0192(s0)             ## 00000192
lbl_808A2FC8:
	addiu   a0, s0, 0x022C             ## a0 = 0000022C
	lui     a1, 0x3F00                 ## a1 = 3F000000
	bne     t2, $zero, lbl_808A3004    
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	mtc1    $zero, $f18                ## $f18 = 0.00
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	lui     a3, 0x3D4C                 ## a3 = 3D4C0000
	ori     a3, a3, 0xCCCD             ## a3 = 3D4CCCCD
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x022C             ## a0 = 0000022C
	lui     a1, 0xBF00                 ## a1 = BF000000
	jal     func_80064178              
	swc1    $f18, 0x0010($sp)          
	beq     $zero, $zero, lbl_808A301C 
	nop
lbl_808A3004:
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     a3, 0x3D4C                 ## a3 = 3D4C0000
	ori     a3, a3, 0xCCCD             ## a3 = 3D4CCCCD
	ori     a2, a2, 0xCCCD             ## a2 = 0000CCCD
	jal     func_80064178              
	swc1    $f4, 0x0010($sp)           
lbl_808A301C:
	lui     $at, %hi(var_808A6DB0)     ## $at = 808A0000
	lwc1    $f0, %lo(var_808A6DB0)($at) 
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f8                   ## $f8 = 5.00
	lwc1    $f6, 0x01F4(s0)            ## 000001F4
	addiu   a0, s0, 0x0418             ## a0 = 00000418
	lui     a1, 0xC45E                 ## a1 = C45E0000
	mul.s   $f10, $f6, $f8             
	mfc1    a2, $f0                    
	ori     a1, a1, 0x8000             ## a1 = C45E8000
	sw      a0, 0x004C($sp)            
	swc1    $f0, 0x0010($sp)           
	mfc1    a3, $f10                   
	jal     func_80064178              
	nop
	lui     $at, %hi(var_808A6DB4)     ## $at = 808A0000
	lwc1    $f2, %lo(var_808A6DB4)($at) 
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f4                   ## $f4 = 5.00
	lwc1    $f18, 0x01F4(s0)           ## 000001F4
	lui     a1, 0xC54E                 ## a1 = C54E0000
	mfc1    a2, $f2                    
	mul.s   $f6, $f18, $f4             
	ori     a1, a1, 0x8000             ## a1 = C54E8000
	addiu   a0, s0, 0x0420             ## a0 = 00000420
	swc1    $f2, 0x0010($sp)           
	mfc1    a3, $f6                    
	jal     func_80064178              
	nop
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f2                   ## $f2 = 1.00
	mtc1    $zero, $f8                 ## $f8 = 0.00
	lui     a3, 0x3D4C                 ## a3 = 3D4C0000
	mfc1    a1, $f2                    
	mfc1    a2, $f2                    
	ori     a3, a3, 0xCCCD             ## a3 = 3D4CCCCD
	addiu   a0, s0, 0x01F4             ## a0 = 000001F4
	jal     func_80064178              
	swc1    $f8, 0x0010($sp)           
	lh      v1, 0x01CA(s0)             ## 000001CA
lbl_808A30BC:
	addiu   $at, $zero, 0x0334         ## $at = 00000334
	bnel    v1, $at, lbl_808A3140      
	addiu   $at, $zero, 0x0258         ## $at = 00000258
	jal     func_800CAA70              
	addiu   a0, $zero, 0x0021          ## a0 = 00000021
	jal     func_800636C4              ## sins?
	lh      a0, 0x00B6(s0)             ## 000000B6
	swc1    $f0, 0x0050($sp)           
	jal     func_80063684              ## coss?
	lh      a0, 0x00B6(s0)             ## 000000B6
	lui     $at, 0xC248                ## $at = C2480000
	mtc1    $at, $f12                  ## $f12 = -50.00
	lwc1    $f10, 0x0050($sp)          
	lwc1    $f4, 0x0024(s0)            ## 00000024
	lwc1    $f8, 0x0028(s0)            ## 00000028
	mul.s   $f18, $f10, $f12           
	lw      a1, 0x01A4($sp)            
	swc1    $f8, 0x0010($sp)           
	mul.s   $f10, $f0, $f12            
	addiu   a2, $zero, 0x005F          ## a2 = 0000005F
	addiu   a0, a1, 0x1C24             ## a0 = 00001C24
	add.s   $f6, $f18, $f4             
	lwc1    $f18, 0x002C(s0)           ## 0000002C
	sw      $zero, 0x0024($sp)         
	sw      $zero, 0x0020($sp)         
	add.s   $f4, $f10, $f18            
	mfc1    a3, $f6                    
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0018($sp)         
	jal     func_80025110              ## ActorSpawn
	swc1    $f4, 0x0014($sp)           
	lh      v1, 0x01CA(s0)             ## 000001CA
	addiu   $at, $zero, 0x0258         ## $at = 00000258
lbl_808A3140:
	bne     v1, $at, lbl_808A325C      
	lw      a0, 0x01A4($sp)            
	addiu   t6, a0, 0x1C24             ## t6 = 00001C24
	sw      t6, 0x0044($sp)            
	jal     func_8009D2F0              
	or      a1, $zero, $zero           ## a1 = 00000000
	lw      t0, 0x004C($sp)            
	or      a2, $zero, $zero           ## a2 = 00000000
	lw      t1, 0x0000(t0)             ## 00000000
	sw      t1, 0x005C(v0)             ## 0000005C
	lw      t8, 0x0004(t0)             ## 00000004
	sw      t8, 0x0060(v0)             ## 00000060
	lw      t1, 0x0008(t0)             ## 00000008
	sw      t1, 0x0064(v0)             ## 00000064
	lw      t3, 0x004C($sp)            
	lw      t7, 0x0000(t3)             ## 00000000
	sw      t7, 0x0074(v0)             ## 00000074
	lw      t4, 0x0004(t3)             ## 00000004
	sw      t4, 0x0078(v0)             ## 00000078
	lw      t7, 0x0008(t3)             ## 00000008
	sw      t7, 0x007C(v0)             ## 0000007C
	lw      t5, 0x0048($sp)            
	lw      t2, 0x0000(t5)             ## 00000000
	sw      t2, 0x0050(v0)             ## 00000050
	lw      t9, 0x0004(t5)             ## 00000004
	sw      t9, 0x0054(v0)             ## 00000054
	lw      t2, 0x0008(t5)             ## 00000008
	sw      t2, 0x0058(v0)             ## 00000058
	lh      a1, 0x01A4(s0)             ## 000001A4
	jal     func_8009D718              
	lw      a0, 0x01A4($sp)            
	addiu   t6, $zero, 0x0064          ## t6 = 00000064
	sh      $zero, 0x01AC(s0)          ## 000001AC
	sh      $zero, 0x01A4(s0)          ## 000001A4
	sh      t6, 0x018C(s0)             ## 0000018C
	lw      a0, 0x01A4($sp)            
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_8009D1AC              
	addiu   a2, $zero, 0x0007          ## a2 = 00000007
	lw      a0, 0x01A4($sp)            
	jal     func_80052340              
	addiu   a1, a0, 0x1D64             ## a1 = 00001D64
	lw      a0, 0x01A4($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_800218EC              
	addiu   a2, $zero, 0x0007          ## a2 = 00000007
	lui     $at, %hi(var_808A6DB8)     ## $at = 808A0000
	lwc1    $f6, %lo(var_808A6DB8)($at) 
	lui     $at, %hi(var_808A6DBC)     ## $at = 808A0000
	lwc1    $f8, %lo(var_808A6DBC)($at) 
	lui     $at, %hi(var_808A6DC0)     ## $at = 808A0000
	lwc1    $f10, %lo(var_808A6DC0)($at) 
	lw      a0, 0x0044($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	lw      a2, 0x01A4($sp)            
	addiu   a3, $zero, 0x005D          ## a3 = 0000005D
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x0024($sp)         
	sw      $zero, 0x0028($sp)         
	swc1    $f6, 0x0010($sp)           
	swc1    $f8, 0x0014($sp)           
	jal     func_800253F0              
	swc1    $f10, 0x0018($sp)          
	lw      a0, 0x01A4($sp)            
	mtc1    $zero, $f18                ## $f18 = 0.00
	lui     a1, 0x0001                 ## a1 = 00010000
	addu    a1, a1, a0                 
	swc1    $f18, 0x0158(s0)           ## 00000158
	jal     func_80020658              
	lb      a1, 0x1CBC(a1)             ## 00011CBC
lbl_808A325C:
	lh      t0, 0x01CA(s0)             ## 000001CA
lbl_808A3260:
	slti    $at, t0, 0x02C6            
	beql    $at, $zero, lbl_808A3344   
	lh      a1, 0x01A4(s0)             ## 000001A4
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f4                   ## $f4 = 0.50
	lui     t8, %hi(var_808A6BF8)      ## t8 = 808A0000
	lui     t1, %hi(var_808A6BFC)      ## t1 = 808A0000
	c.lt.s  $f0, $f4                   
	lui     $at, 0x4270                ## $at = 42700000
	bc1fl   lbl_808A3344               
	lh      a1, 0x01A4(s0)             ## 000001A4
	lw      t8, %lo(var_808A6BF8)(t8)  
	lw      t1, %lo(var_808A6BFC)(t1)  
	mtc1    $at, $f12                  ## $f12 = 60.00
	sw      t8, 0x0064($sp)            
	jal     func_80026D90              
	sw      t1, 0x0060($sp)            
	lwc1    $f6, 0x0038(s0)            ## 00000038
	add.s   $f8, $f0, $f6              
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f8, 0x0068($sp)           
	lui     $at, 0x4248                ## $at = 42480000
	mtc1    $at, $f10                  ## $f10 = 50.00
	lui     $at, %hi(var_808A6DC4)     ## $at = 808A0000
	lwc1    $f4, %lo(var_808A6DC4)($at) 
	mul.s   $f18, $f0, $f10            
	lui     $at, 0x4270                ## $at = 42700000
	mtc1    $at, $f12                  ## $f12 = 60.00
	add.s   $f6, $f18, $f4             
	jal     func_80026D90              
	swc1    $f6, 0x006C($sp)           
	lwc1    $f8, 0x0040(s0)            ## 00000040
	add.s   $f10, $f0, $f8             
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f10, 0x0070($sp)          
	lui     $at, 0x4248                ## $at = 42480000
	mtc1    $at, $f18                  ## $f18 = 50.00
	addiu   t3, $zero, 0x0005          ## t3 = 00000005
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	mul.s   $f4, $f0, $f18             
	sw      t4, 0x0014($sp)            
	sw      t3, 0x0010($sp)            
	lw      a0, 0x01A4($sp)            
	addiu   a1, $sp, 0x0068            ## a1 = FFFFFEC8
	addiu   a2, $sp, 0x0064            ## a2 = FFFFFEC4
	addiu   a3, $sp, 0x0060            ## a3 = FFFFFEC0
	trunc.w.s $f6, $f4                   
	mfc1    t5, $f6                    
	nop
	sll     t9, t5, 16                 
	sra     t2, t9, 16                 
	addiu   t6, t2, 0x0032             ## t6 = 00000032
	jal     func_8001D68C              
	sw      t6, 0x0018($sp)            
lbl_808A3340:
	lh      a1, 0x01A4(s0)             ## 000001A4
lbl_808A3344:
	lw      a0, 0x01A4($sp)            
	addiu   a2, s0, 0x0424             ## a2 = 00000424
	beql    a1, $zero, lbl_808A3360    
	lw      $ra, 0x003C($sp)           
	jal     func_8009D328              
	addiu   a3, s0, 0x0418             ## a3 = 00000418
	lw      $ra, 0x003C($sp)           
lbl_808A3360:
	lw      s0, 0x0038($sp)            
	addiu   $sp, $sp, 0x01A0           ## $sp = 00000000
	jr      $ra                        
	nop


func_808A3370:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	addiu   a2, $sp, 0x0008            ## a2 = FFFFFFF0
	lui     t6, %hi(var_808A6C20)      ## t6 = 808A0000
	addiu   t6, t6, %lo(var_808A6C20)  ## t6 = 808A6C20
	lw      t8, 0x0000(t6)             ## 808A6C20
	lui     v0, 0x0001                 ## v0 = 00010000
	addu    v0, v0, a0                 
	lw      v0, 0x1E10(v0)             ## 00011E10
	sw      t8, 0x0000(a2)             ## FFFFFFF0
	lw      t7, 0x0004(t6)             ## 808A6C24
	or      v1, $zero, $zero           ## v1 = 00000000
	addiu   t0, $zero, 0x0003          ## t0 = 00000003
	sw      t7, 0x0004(a2)             ## FFFFFFF4
	lw      t8, 0x0008(t6)             ## 808A6C28
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	sw      t8, 0x0008(a2)             ## FFFFFFF8
lbl_808A33B0:
	lbu     t9, 0x0024(v0)             ## 00010024
	addiu   v1, v1, 0x0001             ## v1 = 00000001
	sll     v1, v1, 16                 
	beq     t9, $zero, lbl_808A3490    
	sra     v1, v1, 16                 
	lwc1    $f0, 0x000C(v0)            ## 0001000C
	lwc1    $f4, 0x0000(v0)            ## 00010000
	lwc1    $f2, 0x0010(v0)            ## 00010010
	lwc1    $f8, 0x0004(v0)            ## 00010004
	lwc1    $f12, 0x0014(v0)           ## 00010014
	lwc1    $f16, 0x0008(v0)           ## 00010008
	add.s   $f6, $f4, $f0              
	lwc1    $f4, 0x0018(v0)            ## 00010018
	lbu     t1, 0x0025(v0)             ## 00010025
	add.s   $f10, $f8, $f2             
	lwc1    $f8, 0x001C(v0)            ## 0001001C
	swc1    $f6, 0x0000(v0)            ## 00010000
	add.s   $f18, $f16, $f12           
	lwc1    $f16, 0x0020(v0)           ## 00010020
	swc1    $f10, 0x0004(v0)           ## 00010004
	add.s   $f6, $f0, $f4              
	swc1    $f18, 0x0008(v0)           ## 00010008
	lbu     t3, 0x0024(v0)             ## 00010024
	add.s   $f10, $f2, $f8             
	addiu   t2, t1, 0x0001             ## t2 = 00000001
	sb      t2, 0x0025(v0)             ## 00010025
	add.s   $f18, $f12, $f16           
	swc1    $f6, 0x000C(v0)            ## 0001000C
	swc1    $f10, 0x0010(v0)           ## 00010010
	bne     a3, t3, lbl_808A3490       
	swc1    $f18, 0x0014(v0)           ## 00010014
	andi    a0, t2, 0x00FF             ## a0 = 00000001
	bgez    a0, lbl_808A3444           
	andi    a0, a0, 0x0003             ## a0 = 00000001
	beq     a0, $zero, lbl_808A3444    
	nop
	addiu   a0, a0, 0xFFFC             ## a0 = FFFFFFFD
lbl_808A3444:
	sll     a0, a0, 16                 
	sra     a0, a0, 16                 
	multu   a0, t0                     
	lh      t8, 0x002A(v0)             ## 0001002A
	addiu   t9, t8, 0xFFEC             ## t9 = FFFFFFEC
	mflo    t4                         
	addu    a1, a2, t4                 
	lbu     t5, 0x0000(a1)             ## 00000000
	sb      t5, 0x0026(v0)             ## 00010026
	lbu     t6, 0x0001(a1)             ## 00000001
	sb      t6, 0x0027(v0)             ## 00010027
	lbu     t7, 0x0002(a1)             ## 00000002
	sh      t9, 0x002A(v0)             ## 0001002A
	lh      t1, 0x002A(v0)             ## 0001002A
	sb      t7, 0x0028(v0)             ## 00010028
	bgtzl   t1, lbl_808A3494           
	slti    $at, v1, 0x0050            
	sh      $zero, 0x002A(v0)          ## 0001002A
	sb      $zero, 0x0024(v0)          ## 00010024
lbl_808A3490:
	slti    $at, v1, 0x0050            
lbl_808A3494:
	bne     $at, $zero, lbl_808A33B0   
	addiu   v0, v0, 0x0030             ## v0 = 00010030
	jr      $ra                        
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_808A34A4:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      $ra, 0x0044($sp)           
	sw      s8, 0x0040($sp)            
	sw      s7, 0x003C($sp)            
	sw      s6, 0x0038($sp)            
	sw      s5, 0x0034($sp)            
	sw      s4, 0x0030($sp)            
	sw      s3, 0x002C($sp)            
	sw      s2, 0x0028($sp)            
	sw      s1, 0x0024($sp)            
	sw      s0, 0x0020($sp)            
	sdc1    $f20, 0x0018($sp)          
	or      a1, a0, $zero              ## a1 = 00000000
	lw      a0, 0x0000(a1)             ## 00000000
	lui     s2, 0x0001                 ## s2 = 00010000
	addu    s2, s2, a1                 
	or      s4, $zero, $zero           ## s4 = 00000000
	lw      s2, 0x1E10(s2)             ## 00011E10
	or      s1, a0, $zero              ## s1 = 00000000
	jal     func_8007E2C0              
	sw      a1, 0x0048($sp)            
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f20                  ## $f20 = 1.00
	or      s5, $zero, $zero           ## s5 = 00000000
	addiu   s8, $zero, 0x0001          ## s8 = 00000001
	lui     s7, 0xDE00                 ## s7 = DE000000
lbl_808A350C:
	lbu     t6, 0x0024(s2)             ## 00010024
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1DA0           ## $at = 00011DA0
	bne     s8, t6, lbl_808A3618       
	lui     s6, 0x0601                 ## s6 = 06010000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t8, 0xE700                 ## t8 = E7000000
	or      a3, $zero, $zero           ## a3 = 00000000
	addiu   t7, s0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s1)             ## 000002D0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t8, 0x0000(s0)             ## 00000000
	lw      s3, 0x0048($sp)            
	addiu   s6, s6, 0x9DD0             ## s6 = 06009DD0
	bne     s4, $zero, lbl_808A3570    
	addu    s3, s3, $at                
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t0, 0x0601                 ## t0 = 06010000
	addiu   t0, t0, 0x9D50             ## t0 = 06009D50
	addiu   t9, s0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s1)             ## 000002D0
	sw      t0, 0x0004(s0)             ## 00000004
	sw      s7, 0x0000(s0)             ## 00000000
	addiu   s4, s4, 0x0001             ## s4 = 00000001
	andi    s4, s4, 0x00FF             ## s4 = 00000001
lbl_808A3570:
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t2, 0xFA00                 ## t2 = FA000000
	addiu   t1, s0, 0x0008             ## t1 = 00000008
	sw      t1, 0x02D0(s1)             ## 000002D0
	sw      t2, 0x0000(s0)             ## 00000000
	lbu     t4, 0x0026(s2)             ## 00010026
	lbu     t7, 0x0027(s2)             ## 00010027
	lbu     t1, 0x0028(s2)             ## 00010028
	sll     t5, t4, 24                 
	lh      t4, 0x002A(s2)             ## 0001002A
	sll     t8, t7, 16                 
	or      t9, t5, t8                 ## t9 = E7000000
	sll     t2, t1,  8                 
	or      t3, t9, t2                 ## t3 = FF000000
	andi    t6, t4, 0x00FF             ## t6 = 00000000
	or      t7, t3, t6                 ## t7 = FF000000
	sw      t7, 0x0004(s0)             ## 00000004
	lwc1    $f12, 0x0000(s2)           ## 00010000
	lwc1    $f14, 0x0004(s2)           ## 00010004
	jal     func_800AA7F4              
	lw      a2, 0x0008(s2)             ## 00010008
	jal     func_800ABE54              
	or      a0, s3, $zero              ## a0 = 00000000
	lwc1    $f12, 0x002C(s2)           ## 0001002C
	mfc1    a2, $f20                   
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	jal     func_800AA8FC              
	mov.s   $f14, $f12                 
	lw      s3, 0x02D0(s1)             ## 000002D0
	lui     t8, 0xDA38                 ## t8 = DA380000
	ori     t8, t8, 0x0003             ## t8 = DA380003
	addiu   t5, s3, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s1)             ## 000002D0
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_800AB900              
	sw      t8, 0x0000(s3)             ## 00000000
	sw      v0, 0x0004(s3)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	addiu   t0, s0, 0x0008             ## t0 = 00000008
	sw      t0, 0x02D0(s1)             ## 000002D0
	sw      s6, 0x0004(s0)             ## 00000004
	sw      s7, 0x0000(s0)             ## 00000000
lbl_808A3618:
	addiu   s5, s5, 0x0001             ## s5 = 00000001
	sll     s5, s5, 16                 
	sra     s5, s5, 16                 
	slti    $at, s5, 0x0050            
	bne     $at, $zero, lbl_808A350C   
	addiu   s2, s2, 0x0030             ## s2 = 00010030
	lw      $ra, 0x0044($sp)           
	ldc1    $f20, 0x0018($sp)          
	lw      s0, 0x0020($sp)            
	lw      s1, 0x0024($sp)            
	lw      s2, 0x0028($sp)            
	lw      s3, 0x002C($sp)            
	lw      s4, 0x0030($sp)            
	lw      s5, 0x0034($sp)            
	lw      s6, 0x0038($sp)            
	lw      s7, 0x003C($sp)            
	lw      s8, 0x0040($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000
	nop
	nop
	nop

.section .data

var_808A3670: .word 0x00120900, 0x00000035, 0x00190000, 0x00001810
.word func_8089E07C
.word func_8089E358
.word func_808A0230
.word func_808A1358
var_808A3690: .word \
0x00000000, 0x00000000, 0x00000101, 0x01000000, \
0x01000000, 0x01010100, 0x00000001, 0x01010000, \
0x01000001, 0x01010101, 0x00000001, 0x01010100, \
0x00010101, 0x01010101, 0x01000000, 0x01010101, \
0x00000101, 0x01010100, 0x00000100, 0x00010101, \
0x00000101, 0x01010000, 0x00010101, 0x01000001, \
0x00000101, 0x00000000, 0x01010101, 0x01000000, \
0x00010100, 0x01010001, 0x01010101, 0x01010000, \
0x00000101, 0x00000101, 0x01010101, 0x01010000, \
0x00000101, 0x01000101, 0x01010101, 0x01000001, \
0x00000101, 0x01000001, 0x01010101, 0x01010100, \
0x01000001, 0x01000000, 0x01010101, 0x01000000, \
0x00010000, 0x01010000, 0x01010101, 0x00000000, \
0x00010101, 0x00000100, 0x00000100, 0x00000100, \
0x01010101, 0x01010000, 0x01010001, 0x01010000, \
0x00000101, 0x00000000, 0x00010101, 0x00000000
var_808A3790: .word \
0x03000000, 0xFFCFFFFF, 0x00040000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x07002134, 0x04B00000, \
0x00280064, 0x03000000, 0xFFCFFFFF, 0x00040000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x210007D0, \
0xF8300000, 0x003C0064, 0x02000000, 0xFFCFFFFF, \
0x00040000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x01000000, 0x00000000, 0x003C0064, 0x02000000, \
0xFFCFFFFF, 0x00040000, 0xFFCFFFFF, 0x00000000, \
0x01010100, 0x0F000000, 0x00000000, 0x00140064, \
0x02000000, 0xFFCFFFFF, 0x00040000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x10000000, 0x00000000, \
0x001E0064, 0x02000000, 0xFFCFFFFF, 0x00040000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x11000000, \
0x00000000, 0x00280064, 0x02000000, 0xFFCFFFFF, \
0x00040000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x16000000, 0x00000000, 0x001E0064, 0x02000000, \
0xFFCFFFFF, 0x00040000, 0xFFCFFFFF, 0x00000000, \
0x01010100, 0x17000000, 0x00000000, 0x00140064, \
0x02000000, 0xFFCFFFFF, 0x00040000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x18000000, 0x00000000, \
0x001E0064, 0x02000000, 0xFFCFFFFF, 0x00040000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x1D000000, \
0x00000000, 0x001E0064, 0x02000000, 0xFFCFFFFF, \
0x00040000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x1E000000, 0x00000000, 0x001E0064, 0x02000000, \
0xFFCFFFFF, 0x00040000, 0xFFCFFFFF, 0x00000000, \
0x01010100, 0x1F000000, 0x00000000, 0x001E0064, \
0x02000000, 0xFFCFFFFF, 0x00040000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x20000000, 0x00000000, \
0x00320064, 0x02000000, 0xFFCFFFFF, 0x00040000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x26000000, \
0x00000000, 0x001E0064, 0x02000000, 0xFFCFFFFF, \
0x00040000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x27000000, 0x00000000, 0x001E0064, 0x02000000, \
0xFFCFFFFF, 0x00040000, 0xFFCFFFFF, 0x00000000, \
0x01010100, 0x28000000, 0x00000000, 0x00280064, \
0x02000000, 0xFFCFFFFF, 0x00040000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x2D000000, 0x00000000, \
0x001E0064, 0x02000000, 0xFFCFFFFF, 0x00040000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x2E000000, \
0x00000000, 0x001E0064, 0x02000000, 0xFFCFFFFF, \
0x00040000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x2F000000, 0x00000000, 0x00280064
var_808A3A3C: .word 0x03110909, 0x10000000, 0x00000013
.word var_808A3790
.word 0x00000000, 0x00000000, 0x00000000
var_808A3A58: .word \
0x68835107, 0x51073001, 0x40835147, 0x48C54905, \
0x49033881, 0x61C959C9, 0x58C16901, 0x81C58185, \
0x68C16901, 0x9A8B8A07, 0x49054103, 0x28015145, \
0x92097903, 0x88817841, 0x9841A801, 0xA0019841, \
0x60C578C5, 0xB905B945, 0xEAD1B24D, 0x8103B9C3, \
0xCAC5D307, 0xEBCBCAC5, 0x90418081, 0xA1437081, \
0x40012001, 0x394B3909, 0x10013841, 0x38013043, \
0x40416801, 0xC001D001, 0xC001A001, 0x88017001, \
0x788368C5, 0x7883A189, 0xBA4F6907, 0x4841A1C7, \
0xC2CFBA8D, 0xA2079101, 0xD001E001, 0xD801C801, \
0xC8017043, 0x58C75085, 0x30016801, 0x90818001, \
0x9001B801, 0xA801A001, 0xA8019041, 0x80417843, \
0x98838083, 0x88C5B20F, 0xBA516907, 0x4801B20B, \
0xC28D9945, 0x80C19081, 0xD801B801, 0x90019001, \
0xC001C001, 0xC041C041, 0xA801C001, 0xD801E801, \
0xE801E8C3, 0xD903C881, 0xE145D903, 0xB841B001, \
0xB001A841, 0xA883B149, 0xD149C105, 0xB8C3C987, \
0x90C39103, 0x9103A881, 0xD0019001, 0x58014001, \
0xA041D801, 0xE001E001, 0xC801B801, 0xB041C8C3, \
0xE185D9C7, 0xC985C185, 0xE28BEACD, 0xE1C7C081, \
0xC041D001, 0xC801B801, 0x900198C5, 0xC947C145, \
0x91039947, 0xB147D801, 0xB8018001, 0x58018841, \
0xB081D903, 0xB8819081, 0x8883A041, 0x90019081, \
0x89477105, 0x79476905, 0x60C38189, 0x79039081, \
0xB001C801, 0xC801D001, 0xD0018001, 0x7083A0C5, \
0xB9CBC1CB, 0xC107C801, 0xA0016801, 0x88C5B0C5, \
0xD8C3D841, 0xB0019841, 0x80419801, 0xA001A905, \
0x88C37905, 0x71075881, 0x60C37145, 0x70C39081, \
0xB001A801, 0x98018801, 0xC001C801, 0xA001C001, \
0xC801C801, 0xB801A001, 0x88017043, 0x9885A001, \
0xC001C001, 0xC801C841, 0xB841C801, 0xC001B801, \
0x90419105, 0x584160C3, 0x710760C3, 0x80C3A801, \
0x9801C945, 0xDA07B187, 0xA0C3B801, 0xC001C801, \
0x98018001, 0x8801B801, 0xD001B043, 0xB001C001, \
0xC801D001, 0xD001D801, 0xE001E001, 0xD001B001, \
0x98019107, 0x70C57989, 0x79498149, 0x8883A001, \
0xA985D2C7, 0xD287C9C3, 0x81038841, 0x8001A947, \
0x898B6883, 0x58018801, 0xD801D001, 0xC801C801, \
0x98836043, 0x6801A001, 0xC801D801, 0xD001B001, \
0xA0419107, 0x70C36883, 0x61076885, 0x98019041, \
0xA145A145, 0x9903B101, 0x910388C3, 0xB183C249, \
0xEA8BC985, 0xB8C1A8C1, 0xC041C001, 0xD001B8C5, \
0xA1C991C7, 0x48018081, 0xA841B801, 0xE001B001, \
0xA8018043, 0x60015001, 0x80859001, 0xA8018801, \
0x68017001, 0x68017001, 0x99056843, 0x40019103, \
0xEA09C1C3, 0xB141D143, 0xB883C801, 0xE001C985, \
0xE2C97101, 0x20016105, 0x78C37801, 0xA0019001, \
0xA801B001, 0xB801B001, 0xB001A801, 0xA8017801, \
0x50414843, 0x28014001, 0x58C75001, 0x48017001, \
0xA0C59081, 0x8081B187, 0xB105C801, 0xD001A881, \
0xA1817881, 0x9181A2CF, 0x59454841, 0x99477907, \
0x8843A001, 0xC801C801, 0xB801B841, 0xB105A947, \
0xC245BA45, 0xBA43C283, 0xA9C370C1, 0x48016043, \
0x90417801, 0x9841B103, 0xC185B881, 0xB001B801, \
0x9101C281, 0xEC4BD38F, 0x69017143, 0xB209B981, \
0x88819801, 0xC001B801, 0xB883EA8F, 0xBA07BA07, \
0xCB07D349, 0xEC8BDBC7, 0xE3C7C241, 0x99816147, \
0x38015801, 0x904390C3, 0xB985A0C1, 0xB801C001, \
0x90815103, 0xBA87D2C5, 0xC201E309, 0xE2CBB981, \
0xA1459841, 0xB801A841, 0xA907B20B, 0x71039205, \
0x82058207, 0x69416101, 0x9A03C201, 0xEB4D81C9, \
0x180158C7, 0x90438841, 0x90C1A101, 0xA081A001, \
0xA8015801, 0x7141B245, 0xDAC7DAC9, 0xAA0768C1, \
0x99CB9883, 0xC00190C5, 0x78C38147, 0x79036103, \
0x79836941, 0x58C158C1, 0x59016101, 0xAA496105, \
0x710550C7, 0x78017801, 0x8081B9C5, 0xA985C041, \
0xD801B0C3, 0x99C78A09, 0x58C158C1, 0x58816041, \
0xA1479801, 0xB0018883, 0x78818145, 0x81456143, \
0x820779C5, 0x69836985, 0x928D7A09, 0xA1C79185, \
0x79472843, 0x40017801, 0x70839103, 0xC983C801, \
0xE001D001, 0x89058987, 0x714389C9, 0x81456083, \
0x80417801, 0x904160C3, 0x790191C5, 0xB2479A49, \
0x71836141, 0x69416141, 0x824B6945, 0x50817147, \
0x598B3801, 0x38018885, 0x80016801, 0x8883B801, \
0xD801D801, 0x60013801, 0x38014043, 0x40014801, \
0x78018843, 0xA1459A09, 0xCA899A07, 0xC245AA47, \
0x71416941, 0x69836143, 0x8A4D6103, 0x38017147, \
0x518B2801, 0x484180C5, 0x78018001, 0x9843C001, \
0xD801E001, 0x88017001, 0x70436801, 0x68017001, \
0x8043B145, 0xB181D2C7, 0xCA878141, 0x81418141, \
0x71836141, 0x7A076983, 0x820B6945, 0x4801798B, \
0x598D2001, 0x6081B187, 0xA1018041, 0x8801B801, \
0xD001D801, 0x88C370C3, 0x79477905, 0x70C58147, \
0x70C38101, 0xB1C1D2C9, 0x91C38141, 0x898191C5, \
0x61454905, 0x620D7185, 0x69436945, 0x50417989, \
0x49091801, 0x7987EB4F, 0xC243C181, 0xD141D001, \
0xE001D001, 0xA941B981, 0xA1837143, 0x50C38185, \
0x9941A181, 0xD289BA8D, 0x91838941, 0x9A0589C5, \
0x5147418B, 0x59C958C1, 0x58C160C1, 0x60C37989, \
0x40C53883, 0x51496905, 0x9141D203, 0xD941D801, \
0xD001A945, 0xD285DB49, 0xEC0BC241, 0xC203B9C1, \
0xBA81D2C7, 0xDAC9B28B, 0x80C191C5, 0x8A078A09, \
0x61C961C9, 0x69834841, 0x61037987, 0x89CB8189, \
0x48C7598B, 0x40C55841, 0x68C17841, 0x9801D801, \
0xC8019145, 0x99C371C5, 0x9A05B181, 0xBA81C241, \
0xB2458985, 0xA209B2CD, 0x80C1AA4B, 0xA24B81C7, \
0x594561C9, 0x79C57183, 0x928D924D, 0x798768C3, \
0x38835107, 0x40837945, 0x81058801, 0xC841D801, \
0xA903B247, 0x99836101, 0x61416901, 0x71438A07, \
0x8A097943, 0x9A099185, 0x8101A209, 0x99C78143, \
0x59035943, 0x590160C1, 0x89C97103, 0x604168C3, \
0x40834083, 0x300170C3, 0x8081A801, 0xD001C801, \
0x60816101, 0x48416945, 0x928D7987, 0x7185928D, \
0x924B7943, 0x89858103, 0x8943A20B, 0x81437985, \
0x91C1A205, 0x99C37143, 0x81C768C1, 0x71038987, \
0x40814883, 0x50C58987, 0x90C3A801, 0xB8018801, \
0x48015881, 0x58C1820B, 0x8A4B6103, 0x81C98209, \
0x69015881, 0x60817101, 0x81458143, 0x79437943, \
0xA205C2C7, 0xC2897943, 0x89877903, 0x8103B9C9, \
0x89879189, 0x71899987, 0xA103A801, 0xC801C801, \
0x90418103, 0x7947920B, 0x71455041, 0x71856101, \
0x58C16901, 0x710189C9, 0x91C78943, 0x918391C5, \
0x81859209, 0x91C778C1, 0x89038903, 0x9987B985, \
0xC1C798C3, 0x80C3B145, 0xA841D001, 0xE001E801, \
0xD001A841, 0x88419107, 0x68814801, 0x71457987, \
0x714581C7, 0x89C969CB, 0x38C74885, 0x50437105, \
0x60C76085, 0x58434801, 0x58435843, 0x58434801, \
0x70019001, 0xA801B801, 0xD001D801, 0xE001E801, \
0xE001B801, 0x98018801, 0x58013801, 0x41092043, \
0x50C36105, 0x40435043, 0x68019001, 0x9801A801, \
0xA001C801, 0xD001D001, 0xD001D001, 0xC801C801, \
0xC001D001, 0xD001C801, 0xC801A801, 0xB001D001, \
0xE001D001, 0xC801B001, 0xA8019843, 0x70014001, \
0x58436801, 0x80019801, 0xB001D801, 0xD001D801, \
0xB001B801, 0xC001C001, 0xC001B001, 0xB041A083, \
0x80017841, 0x70018041, 0x80837041, 0x88C5A883, \
0xD801B001, 0x8001A085, 0xC801D001, 0xD001B001, \
0xA801A801, 0xB001C001, 0xC801C801, 0x88417883, \
0x80C398C1, 0xD185D143, 0xD103D103, 0xC903C143, \
0xB1018903, 0x6945AA4B, 0xDB0DD245, 0xD205B8C1, \
0xD001D001, 0xB081EA4B, 0xD103D0C1, 0xE001E001, \
0xD001D801, 0xE001D801, 0xD981EAC9, 0xDAC7DB07, \
0x50C17903, 0xD249C185, 0xC987C989, 0xB0C1C9C7, \
0xD249AA4B, 0x698791C5, 0xCA85C243, 0xDB0BD205, \
0xA841D001, 0xC103DA49, 0xCA05D247, 0xE2078881, \
0x6801A987, 0xC205D2C3, 0xDB85D385, 0xC301BAC1, \
0x59435945, 0x91C98105, 0x910590C3, 0x8881A989, \
0xB1C960C3, 0x48015081, 0x89858143, 0x92098145, \
0x8083C801, 0x804360C5, 0x710368C1, 0x68C13841, \
0x9A09DB4D, 0xDB07B245, 0x71836941, 0x61416983, \
0x594340C3, 0x71038105, 0xA1CBA147, 0x808560C5, \
0x71095041, 0x684170C3, 0x91438101, 0x91C7A9C5, \
0x8881D801, 0xB80190C5, 0x60817101, 0x79855105, \
0x8A07C2C9, 0xAA036941, 0x79837183, 0x69836983, \
0x510348C1, 0x68C15107, 0x598B5843, 0x80018801, \
0x70016801, 0x88017883, 0x60433801, 0x48C58143, \
0xC9C1C943, 0xA841C001, 0xC00198C1, 0x9A4B61C9, \
0x49037943, 0x69016941, 0x820779C5, 0x69435943, \
0x51035145, 0x38813885, 0x68C78801, 0xD001B001, \
0x78017041, 0x808370C7, 0x60015001, 0x68435001, \
0x480188C5, 0x9841B801, 0xE801D001, 0xA1875105, \
0x38817141, 0x714179C5, 0x79856101, 0x69416143, \
0x58C36105, 0x58C36885, 0x9001D001, 0xC0019001, \
0x88C3C28F, 0x71479103, 0xB101C981, 0xB9C76801, \
0x60018043, 0x8801A801, 0xE001D001, 0x80414001, \
0x30018143, 0x920789C7, 0x79437101, 0x68C168C1, \
0x80C3714B, 0x90419001, 0xD801C001, 0x88C58947, \
0xE2CFA20B, 0x30014041, 0xB9C3DAC7, 0xEB89D243, \
0xE285EB09, 0xC183A041, 0xD801C001, 0x78015001, \
0x58838907, 0x810598C1, 0x98819841, 0x98419881, \
0xB041A001, 0xA801B001, 0xC00180C3, 0x9A0B8989, \
0xDA8B7903, 0x790128C7, 0x314B5147, 0xB245DAC5, \
0xDB87D305, 0xCA01A101, 0xD801C801, 0x98017801, \
0x9843A001, 0xB001C801, 0xD001D801, 0xC801C001, \
0xB001A801, 0xC001C001, 0x88C57103, 0xA183CA05, \
0xCA05C249, 0x92095105, 0x61CB924B, 0x71837183, \
0x610179C5, 0x89C77001, 0xD801E801, 0xC901B145, \
0x9801A001, 0xC001C801, 0xC001D001, 0xD001D001, \
0xD001C001, 0x88C3AA4B, 0xBA8BC203, 0xEB0BBA8B, \
0x798781C9, 0x28412801, 0x514779C5, 0x690179C7, \
0x82078A09, 0x81016801, 0xB801E001, 0xC943DA05, \
0xB141B103, 0x90018801, 0x784390C5, 0x90C588C5, \
0x8147A209, 0xBA89E349, 0xCB05D287, 0xC30D6945, \
0x694581C7, 0x28414905, 0x51896943, 0x61016147, \
0x48435001, 0x60019001, 0xD001D801, 0xB081D181, \
0xD2039145, 0x60416001, 0x69056105, 0x61455103, \
0x388138C1, 0x9A038981, 0x89416143, 0x69454881, \
0x30835189, 0x08439ACF, 0x8A4B9981, 0x59076043, \
0x80019801, 0xA001B001, 0xD801E801, 0xB0019001, \
0xA8C1BA05, 0xA1817901, 0x590348C3, 0x59474903, \
0x28410001, 0x00012841, 0x488150C1, 0x698571C9, \
0x30C50843, 0x00015901, 0x89419141, 0x68839001, \
0xD001D801, 0xD001C001, 0xA801D801, 0xD801C801, \
0xD001D945, 0xDA45CA43, 0x99857143, 0x61033041, \
0x59033881, 0x38C34841, 0x50817A0B, 0x820B4149, \
0x20010001, 0x590150C1, 0x91C37903, 0xA841D001, \
0xD001B0C5, 0xA903A903, 0x9881D801, 0xD001B801, \
0xD801B801, 0x9801D181, 0xD2059985, 0x89836943, \
0x798348C1, 0x38C36945, 0x8A4D9AD1, 0x718730C5, \
0x00010843, 0x9B0FB28B, 0xA1C77083, 0xC801D001, \
0xA0439147, 0x888198C1, 0x8001D801, 0xC0019841, \
0x78018001, 0xB801D001, 0xC041B943, 0x99439185, \
0x79035903, 0x410579C9, 0x79C958C1, 0x484158C1, \
0x28816143, 0x69858901, 0x60419041, 0xC801A001, \
0x80014801, 0x30015801, 0x9801D001, 0xB883B1C9, \
0x91876041, 0x8843D001, 0xD801A001, 0xA0C19103, \
0x708158C3, 0x4107820D, 0x71896103, 0x60C15881, \
0x38C36945, 0x78C18881, 0x8001D001, 0xE801C801, \
0xB001A001, 0x80018801, 0xA0019801, 0xB187B1C5, \
0xC281AA05, 0x89858001, 0xC801C001, 0xB0019801, \
0x68415841, 0x598B8A0D, 0x69057947, 0x58C54841, \
0x3909720D, 0x89459083, 0xC801E801, 0xE801D001, \
0xD801D001, 0x90437083, 0x78C36081, 0x9A09A1C5, \
0xD285D2C5, 0x89417101, 0x7001B801, 0xB801A001, \
0x88436907, 0x71CD6883, 0x48017841, 0x68015001, \
0x70C59987, 0xA081C801, 0xE001D801, 0xC801A041, \
0xC987C9C9, 0x70814041, 0x50C54041, 0x51057143, \
0x690191C1, 0xD2C5D2C7, 0xA981D183, 0xB801B001, \
0xA801A801, 0x78016001, 0x60018801, 0xA001A001, \
0xA885A883, 0xC801C801, 0x78018083, 0x88C1B1C7, \
0xE34BCA85, 0xA941A181, 0x818560C1, 0x68C1B207, \
0x60C15881, 0x9A05B1C1, 0xCA85EC53, 0xC1C7A081, \
0x9001B001, 0xC001C001, 0xC801C801, 0xD001D001, \
0xD001D801, 0xE0019001, 0x684191C9, 0x9983CA45, \
0x99819141, 0xCA85DB89, 0xEB8DD285, 0xC241D30D, \
0x8A098209, 0x79C75081, 0x79C959CB, 0x30815881, \
0x8041B001, 0xC801A001, 0x70017041, 0x80838001, \
0xB801E001, 0xE0019081, 0x6907924B, 0xA1C3A1C1, \
0x68C18183, 0xB30FDB4D, 0xEC0FE349, 0xA1C1924B, \
0x924B8A4B, 0x82096945, 0x8A0D3083, 0x00010001, \
0x70419881, 0xD105D187, 0xD1C7C143, 0xB187A0C3, \
0xD801E801, 0xE001B145, 0x50C35147, 0x81C57943, \
0x8A05AACB, 0xAB0D9A47, 0x920581C3, 0x58818A09, \
0x8A4B7145, 0x50415041, 0x71475883, 0x28412041, \
0x9105A987, 0xCA09DA4B, 0xE2CDB943, 0xA987A083, \
0xE001E801, 0xE881A0C1, 0x81437143, 0xAA036901, \
0x89C39207, 0x71017941, 0x81837141, 0x68C18A09, \
0x71435081, 0x40015041, 0x79496907, 0x38433843, \
0x70C57105, 0x68C360C3, 0x81893801, 0x5001C801, \
0xE001D881, 0xC0419801, 0x9101A181, 0x99817941, \
0x92059205, 0x79418181, 0x8A0581C5, 0x8207924B, \
0x61016103, 0x79897147, 0x798B5843, 0x48015083, \
0x79077147, 0x79498189, 0x99CB9841, 0xC001D801, \
0xC883B905, 0xC001B001, 0x78C37901, 0x8181AAC9, \
0xA2478981, 0x92037941, 0x81C381C5, 0x71416101, \
0x40016905, 0x8A0D68C5, 0x50017001, 0x58419107, \
0x79478147, 0x99479883, 0xB041D801, 0xD001B883, \
0xB9898083, 0xA0019801, 0x704170C1, 0xA289C34F, \
0x91C370C1, 0x89C389C5, 0x92499249, 0x714358C1, \
0x50817147, 0x71496083, 0x68C59907, 0x99497107, \
0x70419041, 0xB001C001, 0xD801D801, 0xA04170C5, \
0x68815041, 0x60018801, 0x78019183, 0xBB4FA289, \
0x68817901, 0xAA8B9A49, 0x89C5928B, 0x79C779C7, \
0x8A0B7989, 0x68C57949, 0x814B58C5, 0x508348C5, \
0x8801B001, 0xB001A801, 0xB841B905, 0x60C32801, \
0x58819209, 0x80C5A801, 0x9801A987, 0xB2CD8983, \
0x70C189C5, 0x9A498183, 0x81C58A49, 0x69416101, \
0x714560C3, 0x30431043, 0x00012001, 0x38414883, \
0xA801B801, 0x80016801, 0xBA4FA24D, 0x48C33041, \
0x81C79209, 0x7041A801, 0xA00190C1, 0x89857943, \
0x81858185, 0x818581C5, 0x82077185, 0x508158C1, \
0x61035881, 0x38411085, 0x28852841, 0x40018841, \
0xA8018801, 0x58018187, 0xA28F7985, 0x30412801, \
0x71437983, 0x78C3B001, 0xA801A143, 0xA24989C7, \
0x710168C1, 0x81859A49, 0x81C57143, 0x61017145, \
0x79C77187, 0x71454081, 0x38415841, 0x9041A001, \
0x68835107, 0x51073001, 0x40835147, 0x48C54905, \
0x49033881, 0x61C959C9, 0x58C16901, 0x81C58185, \
0x68C16901, 0x9A8B8A07, 0x49054103, 0x28015145, \
0x92097903, 0x88817841, 0x9841A801, 0xA0019841, \
0x60C578C5, 0xB905B945, 0xEAD1B24D, 0x8103B9C3, \
0xCAC5D307, 0xEBCBCAC5, 0x90418081, 0xA1437081, \
0x40012001, 0x394B3909, 0x10013841, 0x38013043, \
0x40416801, 0xC001D001, 0xC001A001, 0x88017001, \
0x788368C5, 0x7883A189, 0xBA4F6907, 0x4841A1C7, \
0xC2CFBA8D, 0xA2079101, 0xD001E001, 0xD801C801, \
0xC8017043, 0x58C75085, 0x30016801, 0x90818001, \
0x9001B801, 0xA801A001, 0xA8019041, 0x80417843, \
0x98838083, 0x88C5B20F, 0xBA516907, 0x4801B20B, \
0xC28D9945, 0x80C19081, 0xD801B801, 0x90019001, \
0xC001C001, 0xC041C041, 0xA801C001, 0xD801E801, \
0xE801E8C3, 0xD903C881, 0xE145D903, 0xB841B001, \
0xB001A841, 0xA883B149, 0xD149C105, 0xB8C3C987, \
0x90C39103, 0x9103A881, 0xD0019001, 0x58014001, \
0xA041D801, 0xE001E001, 0xC801B801, 0xB041C8C3, \
0xE185D9C7, 0xC985C185, 0xE28BEACD, 0xE1C7C081, \
0xC041D001, 0xC801B801, 0x900198C5, 0xC947C145, \
0x91039947, 0xB147D801, 0xB8018001, 0x58018841, \
0xB081D903, 0xB8819081, 0x8883A041, 0x90019081, \
0x89477105, 0x79476905, 0x60C38189, 0x79039081, \
0xB001C801, 0xC801D001, 0xD0018001, 0x7083A0C5, \
0xB9CBC1CB, 0xC107C801, 0xA0016801, 0x88C5B0C5, \
0xD8C3D841, 0xB0019841, 0x80419801, 0xA001A905, \
0x88C37905, 0x71075881, 0x60C37145, 0x70C39081, \
0xB001A801, 0x98018801, 0xC001C801, 0xA001C001, \
0xC801C801, 0xB801A001, 0x88017043, 0x9885A001, \
0xC001C001, 0xC801C841, 0xB841C801, 0xC001B801, \
0x90419105, 0x584160C3, 0x710760C3, 0x80C3A801, \
0x9801C945, 0xDA07B187, 0xA0C3B801, 0xC001C801, \
0x98018001, 0x8801B801, 0xD001B043, 0xB001C001, \
0xC801D001, 0xD001D801, 0xE001E001, 0xD001B001, \
0x98019107, 0x70C57989, 0x79498149, 0x8883A001, \
0xA985D2C7, 0xD287C9C3, 0x81038841, 0x8001A947, \
0x898B6883, 0x58018801, 0xD801D001, 0xC801C801, \
0x98836043, 0x6801A001, 0xC801D801, 0xD001B001, \
0xA0419107, 0x70C36883, 0x61076885, 0x98019041, \
0xA145A145, 0x9903B101, 0x910388C3, 0xB183C249, \
0xEA8BC985, 0xB8C1A8C1, 0xC041C001, 0xD001B8C5, \
0xA1C991C7, 0x48018081, 0xA841B801, 0xE001B001, \
0xA8018043, 0x60015001, 0x80859001, 0xA8018801, \
0x68017001, 0x68017001, 0x99056843, 0x40019103, \
0xEA09C1C3, 0xB141D143, 0xB883C801, 0xE001C985, \
0xE2C97101, 0x20016105, 0x78C37801, 0xA0019001, \
0xA801B001, 0xB801B001, 0xB001A801, 0xA8017801, \
0x50414843, 0x28014001, 0x58C75001, 0x48017001, \
0xA0C59081, 0x8081B187, 0xB105C801, 0xD001A881, \
0xA1817881, 0x9181A2CF, 0x59454841, 0x99477907, \
0x8843A001, 0xC801C801, 0xB801B841, 0xB105A947, \
0xC245BA45, 0xBA43C283, 0xA9C370C1, 0x48016043, \
0x90417801, 0x9841B103, 0xC185B881, 0xB001B801, \
0x9101C281, 0xEC4BD38F, 0x69017143, 0xB209B981, \
0x88819801, 0xC001B801, 0xB883EA8F, 0xBA07BA07, \
0xCB07D349, 0xEC8BDBC7, 0xE3C7C241, 0x99816147, \
0x38015801, 0x904390C3, 0xB985A0C1, 0xB801C001, \
0x90815103, 0xBA87D2C5, 0xC201E309, 0xE2CBB981, \
0xA1459841, 0xB801A841, 0xA907B20B, 0x71039205, \
0x82058207, 0x69416101, 0x9A03C201, 0xEB4D81C9, \
0x180158C7, 0x90438841, 0x90C1A101, 0xA081A001, \
0xA8015801, 0x7141B245, 0xDAC7DAC9, 0xAA0768C1, \
0x99CB9883, 0xC00190C5, 0x78C38147, 0x79036103, \
0x79836941, 0x58C158C1, 0x59016101, 0xAA496105, \
0x710550C7, 0x78017801, 0x8081B9C5, 0xA985C041, \
0xD801B0C3, 0x99C78A09, 0x58C158C1, 0x58816041, \
0xA1479801, 0xB0018883, 0x78818145, 0x81456143, \
0x820779C5, 0x69836985, 0x928D7A09, 0xA1C79185, \
0x79472843, 0x40017801, 0x70839103, 0xC983C801, \
0xE001D001, 0x89058987, 0x714389C9, 0x81456083, \
0x80417801, 0x904160C3, 0x790191C5, 0xB2479A49, \
0x71836141, 0x69416141, 0x824B6945, 0x50817147, \
0x598B3801, 0x38018885, 0x80016801, 0x8883B801, \
0xD801D801, 0x60013801, 0x38014043, 0x40014801, \
0x78018843, 0xA1459A09, 0xCA899A07, 0xC245AA47, \
0x71416941, 0x69836143, 0x8A4D6103, 0x38017147, \
0x518B2801, 0x484180C5, 0x78018001, 0x9843C001, \
0xD801E001, 0x88017001, 0x70436801, 0x68017001, \
0x8043B145, 0xB181D2C7, 0xCA878141, 0x81418141, \
0x71836141, 0x7A076983, 0x820B6945, 0x4801798B, \
0x598D2001, 0x6081B187, 0xA1018041, 0x8801B801, \
0xD001D801, 0x88C370C3, 0x79477905, 0x70C58147, \
0x70C38101, 0xB1C1D2C9, 0x91C38141, 0x898191C5, \
0x61454905, 0x620D7185, 0x69436945, 0x50417989, \
0x49091801, 0x7987EB4F, 0xC243C181, 0xD141D001, \
0xE001D001, 0xA941B981, 0xA1837143, 0x50C38185, \
0x9941A181, 0xD289BA8D, 0x91838941, 0x9A0589C5, \
0x5147418B, 0x59C958C1, 0x58C160C1, 0x60C37989, \
0x40C53883, 0x51496905, 0x9141D203, 0xD941D801, \
0xD001A945, 0xD285DB49, 0xEC0BC241, 0xC203B9C1, \
0xBA81D2C7, 0xDAC9B28B, 0x80C191C5, 0x8A078A09, \
0x61C961C9, 0x69834841, 0x61037987, 0x89CB8189, \
0x48C7598B, 0x40C55841, 0x68C17841, 0x9801D801, \
0xC8019145, 0x99C371C5, 0x9A05B181, 0xBA81C241, \
0xB2458985, 0xA209B2CD, 0x80C1AA4B, 0xA24B81C7, \
0x594561C9, 0x79C57183, 0x928D924D, 0x798768C3, \
0x38835107, 0x40837945, 0x81058801, 0xC841D801, \
0xA903B247, 0x99836101, 0x61416901, 0x71438A07, \
0x8A097943, 0x9A099185, 0x8101A209, 0x99C78143, \
0x59035943, 0x590160C1, 0x89C97103, 0x604168C3, \
0x40834083, 0x300170C3, 0x8081A801, 0xD001C801, \
0x60816101, 0x48416945, 0x928D7987, 0x7185928D, \
0x924B7943, 0x89858103, 0x8943A20B, 0x81437985, \
0x91C1A205, 0x99C37143, 0x81C768C1, 0x71038987, \
0x40814883, 0x50C58987, 0x90C3A801, 0xB8018801, \
0x48015881, 0x58C1820B, 0x8A4B6103, 0x81C98209, \
0x69015881, 0x60817101, 0x81458143, 0x79437943, \
0xA205C2C7, 0xC2897943, 0x89877903, 0x8103B9C9, \
0x89879189, 0x71899987, 0xA103A801, 0xC801C801, \
0x90418103, 0x7947920B, 0x71455041, 0x71856101, \
0x58C16901, 0x710189C9, 0x91C78943, 0x918391C5, \
0x81859209, 0x91C778C1, 0x89038903, 0x9987B985, \
0xC1C798C3, 0x80C3B145, 0xA841D001, 0xE001E801, \
0xD001A841, 0x88419107, 0x68814801, 0x71457987, \
0x714581C7, 0x89C969CB, 0x38C74885, 0x50437105, \
0x60C76085, 0x58434801, 0x58435843, 0x58434801, \
0x70019001, 0xA801B801, 0xD001D801, 0xE001E801, \
0xE001B801, 0x98018801, 0x58013801, 0x41092043, \
0x50C36105, 0x40435043, 0x68019001, 0x9801A801, \
0xA001C801, 0xD001D001, 0xD001D001, 0xC801C801, \
0xC001D001, 0xD001C801, 0xC801A801, 0xB001D001, \
0xE001D001, 0xC801B001, 0xA8019843, 0x70014001, \
0x58436801, 0x80019801, 0xB001D801, 0xD001D801, \
0xB001B801, 0xC001C001, 0xC001B001, 0xB041A083, \
0x80017841, 0x70018041, 0x80837041, 0x88C5A883, \
0xD801B001, 0x8001A085, 0xC801D001, 0xD001B001, \
0xA801A801, 0xB001C001, 0xC801C801, 0x88417883, \
0x80C398C1, 0xD185D143, 0xD103D103, 0xC903C143, \
0xB1018903, 0x6945AA4B, 0xDB0DD245, 0xD205B8C1, \
0xD001D001, 0xB081EA4B, 0xD103D0C1, 0xE001E001, \
0xD001D801, 0xE001D801, 0xD981EAC9, 0xDAC7DB07, \
0x50C17903, 0xD249C185, 0xC987C989, 0xB0C1C9C7, \
0xD249AA4B, 0x698791C5, 0xCA85C243, 0xDB0BD205, \
0xA841D001, 0xC103DA49, 0xCA05D247, 0xE2078881, \
0x6801A987, 0xC205D2C3, 0xDB85D385, 0xC301BAC1, \
0x59435945, 0x91C98105, 0x910590C3, 0x8881A989, \
0xB1C960C3, 0x48015081, 0x89858143, 0x92098145, \
0x8083C801, 0x804360C5, 0x710368C1, 0x68C13841, \
0x9A09DB4D, 0xDB07B245, 0x71836941, 0x61416983, \
0x594340C3, 0x71038105, 0xA1CBA147, 0x808560C5, \
0x71095041, 0x684170C3, 0x91438101, 0x91C7A9C5, \
0x8881D801, 0xB80190C5, 0x60817101, 0x79855105, \
0x8A07C2C9, 0xAA036941, 0x79837183, 0x69836983, \
0x510348C1, 0x68C15107, 0x598B5843, 0x80018801, \
0x70016801, 0x88017883, 0x60433801, 0x48C58143, \
0xC9C1C943, 0xA841C001, 0xC00198C1, 0x9A4B61C9, \
0x49037943, 0x69016941, 0x820779C5, 0x69435943, \
0x51035145, 0x38813885, 0x68C78801, 0xD001B001, \
0x78017041, 0x808370C7, 0x60015001, 0x68435001, \
0x480188C5, 0x9841B801, 0xE801D001, 0xA1875105, \
0x38817141, 0x714179C5, 0x79856101, 0x69416143, \
0x58C36105, 0x58C36885, 0x9001D001, 0xC0019001, \
0x88C3C28F, 0x71479103, 0xB101C981, 0xB9C76801, \
0x60018043, 0x8801A801, 0xE001D001, 0x80414001, \
0x30018143, 0x920789C7, 0x79437101, 0x68C168C1, \
0x80C3714B, 0x90419001, 0xD801C001, 0x88C58947, \
0xE2CFA20B, 0x30014041, 0xB9C3DAC7, 0xEB89D243, \
0xE285EB09, 0xC183A041, 0xD801C001, 0x78015001, \
0x58838907, 0x810598C1, 0x98819841, 0x98419881, \
0xB041A001, 0xA801B001, 0xC00180C3, 0x9A0B8989, \
0xDA8B7903, 0x790128C7, 0x314B5147, 0xB245DAC5, \
0xDB87D305, 0xCA01A101, 0xD801C801, 0x98017801, \
0x9843A001, 0xB001C801, 0xD001D801, 0xC801C001, \
0xB001A801, 0xC001C001, 0x88C57103, 0xA183CA05, \
0xCA05C249, 0x92095105, 0x61CB924B, 0x71837183, \
0x610179C5, 0x89C77001, 0xD801E801, 0xC901B145, \
0x9801A001, 0xC001C801, 0xC001D001, 0xD001D001, \
0xD001C001, 0x88C3AA4B, 0xBA8BC203, 0xEB0BBA8B, \
0x798781C9, 0x28412801, 0x514779C5, 0x690179C7, \
0x82078A09, 0x81016801, 0xB801E001, 0xC943DA05, \
0xB141B103, 0x90018801, 0x784390C5, 0x90C588C5, \
0x8147A209, 0xBA89E349, 0xCB05D287, 0xC30D6945, \
0x694581C7, 0x28414905, 0x51896943, 0x61016147, \
0x48435001, 0x60019001, 0xD001D801, 0xB081D181, \
0xD2039145, 0x60416001, 0x69056105, 0x61455103, \
0x388138C1, 0x9A038981, 0x89416143, 0x69454881, \
0x30835189, 0x08439ACF, 0x8A4B9981, 0x59076043, \
0x80019801, 0xA001B001, 0xD801E801, 0xB0019001, \
0xA8C1BA05, 0xA1817901, 0x590348C3, 0x59474903, \
0x28410001, 0x00012841, 0x488150C1, 0x698571C9, \
0x30C50843, 0x00015901, 0x89419141, 0x68839001, \
0xD001D801, 0xD001C001, 0xA801D801, 0xD801C801, \
0xD001D945, 0xDA45CA43, 0x99857143, 0x61033041, \
0x59033881, 0x38C34841, 0x50817A0B, 0x820B4149, \
0x20010001, 0x590150C1, 0x91C37903, 0xA841D001, \
0xD001B0C5, 0xA903A903, 0x9881D801, 0xD001B801, \
0xD801B801, 0x9801D181, 0xD2059985, 0x89836943, \
0x798348C1, 0x38C36945, 0x8A4D9AD1, 0x718730C5, \
0x00010843, 0x9B0FB28B, 0xA1C77083, 0xC801D001, \
0xA0439147, 0x888198C1, 0x8001D801, 0xC0019841, \
0x78018001, 0xB801D001, 0xC041B943, 0x99439185, \
0x79035903, 0x410579C9, 0x79C958C1, 0x484158C1, \
0x28816143, 0x69858901, 0x60419041, 0xC801A001, \
0x80014801, 0x30015801, 0x9801D001, 0xB883B1C9, \
0x91876041, 0x8843D001, 0xD801A001, 0xA0C19103, \
0x708158C3, 0x4107820D, 0x71896103, 0x60C15881, \
0x38C36945, 0x78C18881, 0x8001D001, 0xE801C801, \
0xB001A001, 0x80018801, 0xA0019801, 0xB187B1C5, \
0xC281AA05, 0x89858001, 0xC801C001, 0xB0019801, \
0x68415841, 0x598B8A0D, 0x69057947, 0x58C54841, \
0x3909720D, 0x89459083, 0xC801E801, 0xE801D001, \
0xD801D001, 0x90437083, 0x78C36081, 0x9A09A1C5, \
0xD285D2C5, 0x89417101, 0x7001B801, 0xB801A001, \
0x88436907, 0x71CD6883, 0x48017841, 0x68015001, \
0x70C59987, 0xA081C801, 0xE001D801, 0xC801A041, \
0xC987C9C9, 0x70814041, 0x50C54041, 0x51057143, \
0x690191C1, 0xD2C5D2C7, 0xA981D183, 0xB801B001, \
0xA801A801, 0x78016001, 0x60018801, 0xA001A001, \
0xA885A883, 0xC801C801, 0x78018083, 0x88C1B1C7, \
0xE34BCA85, 0xA941A181, 0x818560C1, 0x68C1B207, \
0x60C15881, 0x9A05B1C1, 0xCA85EC53, 0xC1C7A081, \
0x9001B001, 0xC001C001, 0xC801C801, 0xD001D001, \
0xD001D801, 0xE0019001, 0x684191C9, 0x9983CA45, \
0x99819141, 0xCA85DB89, 0xEB8DD285, 0xC241D30D, \
0x8A098209, 0x79C75081, 0x79C959CB, 0x30815881, \
0x8041B001, 0xC801A001, 0x70017041, 0x80838001, \
0xB801E001, 0xE0019081, 0x6907924B, 0xA1C3A1C1, \
0x68C18183, 0xB30FDB4D, 0xEC0FE349, 0xA1C1924B, \
0x924B8A4B, 0x82096945, 0x8A0D3083, 0x00010001, \
0x70419881, 0xD105D187, 0xD1C7C143, 0xB187A0C3, \
0xD801E801, 0xE001B145, 0x50C35147, 0x81C57943, \
0x8A05AACB, 0xAB0D9A47, 0x920581C3, 0x58818A09, \
0x8A4B7145, 0x50415041, 0x71475883, 0x28412041, \
0x9105A987, 0xCA09DA4B, 0xE2CDB943, 0xA987A083, \
0xE001E801, 0xE881A0C1, 0x81437143, 0xAA036901, \
0x89C39207, 0x71017941, 0x81837141, 0x68C18A09, \
0x71435081, 0x40015041, 0x79496907, 0x38433843, \
0x70C57105, 0x68C360C3, 0x81893801, 0x5001C801, \
0xE001D881, 0xC0419801, 0x9101A181, 0x99817941, \
0x92059205, 0x79418181, 0x8A0581C5, 0x8207924B, \
0x61016103, 0x79897147, 0x798B5843, 0x48015083, \
0x79077147, 0x79498189, 0x99CB9841, 0xC001D801, \
0xC883B905, 0xC001B001, 0x78C37901, 0x8181AAC9, \
0xA2478981, 0x92037941, 0x81C381C5, 0x71416101, \
0x40016905, 0x8A0D68C5, 0x50017001, 0x58419107, \
0x79478147, 0x99479883, 0xB041D801, 0xD001B883, \
0xB9898083, 0xA0019801, 0x704170C1, 0xA289C34F, \
0x91C370C1, 0x89C389C5, 0x92499249, 0x714358C1, \
0x50817147, 0x71496083, 0x68C59907, 0x99497107, \
0x70419041, 0xB001C001, 0xD801D801, 0xA04170C5, \
0x68815041, 0x60018801, 0x78019183, 0xBB4FA289, \
0x68817901, 0xAA8B9A49, 0x89C5928B, 0x79C779C7, \
0x8A0B7989, 0x68C57949, 0x814B58C5, 0x508348C5, \
0x8801B001, 0xB001A801, 0xB841B905, 0x60C32801, \
0x58819209, 0x80C5A801, 0x9801A987, 0xB2CD8983, \
0x70C189C5, 0x9A498183, 0x81C58A49, 0x69416101, \
0x714560C3, 0x30431043, 0x00012001, 0x38414883, \
0xA801B801, 0x80016801, 0xBA4FA24D, 0x48C33041, \
0x81C79209, 0x7041A801, 0xA00190C1, 0x89857943, \
0x81858185, 0x818581C5, 0x82077185, 0x508158C1, \
0x61035881, 0x38411085, 0x28852841, 0x40018841, \
0xA8018801, 0x58018187, 0xA28F7985, 0x30412801, \
0x71437983, 0x78C3B001, 0xA801A143, 0xA24989C7, \
0x710168C1, 0x81859A49, 0x81C57143, 0x61017145, \
0x79C77187, 0x71454081, 0x38415841, 0x9041A001
var_808A5A58: .word \
0x48C5418B, 0x41CB2041, 0x314741CD, 0x394739C9, \
0x39872901, 0x4A8F4A8F, 0x49415983, 0x6A496A47, \
0x514159C1, 0x8B517B0D, 0x39C93985, 0x2041420B, \
0x7A8D5945, 0x40C34041, 0x30412801, 0x28413001, \
0x49495947, 0x48834105, 0x698B824D, 0x59456183, \
0x8A47A309, 0xC3CD8A87, 0x404148C1, 0x510548C3, \
0x38011843, 0x321129CF, 0x084130C1, 0x284120C7, \
0x38853801, 0x28011801, 0x20012001, 0x38414001, \
0x50C74947, 0x50C56149, 0x7A0F59CB, 0x388169CB, \
0x9ACF92CF, 0x7A8B5103, 0x20011001, 0x20012001, \
0x28014885, 0x494B414B, 0x20014041, 0x40413841, \
0x30012001, 0x18012001, 0x20013043, 0x38414885, \
0x388348C5, 0x50C7820F, 0x8A51518B, 0x388169C9, \
0x7A0D5947, 0x51014081, 0x10011801, 0x30013001, \
0x18011801, 0x20412801, 0x20012001, 0x18011001, \
0x08010801, 0x18411041, 0x18032041, 0x18412001, \
0x20012041, 0x30435109, 0x38853883, 0x28813885, \
0x51034903, 0x59052841, 0x10013001, 0x40013001, \
0x30410801, 0x08011001, 0x18011801, 0x20411843, \
0x20413083, 0x308338C3, 0x51075147, 0x30832041, \
0x10011001, 0x10011801, 0x30413885, 0x30832883, \
0x50C55147, 0x40C51001, 0x20013801, 0x40834083, \
0x20411001, 0x20413883, 0x40833043, 0x30014081, \
0x59495987, 0x59CD5989, 0x49476A4D, 0x59854883, \
0x18011001, 0x10011001, 0x20013001, 0x48C53885, \
0x51075149, 0x28431801, 0x28014001, 0x48C73083, \
0x10010841, 0x20012801, 0x40812801, 0x28013083, \
0x51055949, 0x59894105, 0x51475987, 0x51454083, \
0x18012001, 0x28013001, 0x18011801, 0x28011001, \
0x20012001, 0x18012001, 0x30014085, 0x40832001, \
0x10010801, 0x10011001, 0x18011001, 0x10011801, \
0x38415107, 0x40815147, 0x59CB4905, 0x51052801, \
0x30413043, 0x38C34105, 0x30832001, 0x18012001, \
0x30013801, 0x30012001, 0x18012041, 0x18011801, \
0x10011801, 0x18010801, 0x08010001, 0x08011801, \
0x30015107, 0x5147620D, 0x69CD61CB, 0x40832801, \
0x510569C5, 0x69C748C3, 0x51454881, 0x384140C5, \
0x720F48C7, 0x38013841, 0x10010801, 0x08011001, \
0x384348C5, 0x38013001, 0x10010001, 0x08011801, \
0x28415909, 0x514548C5, 0x518B48C7, 0x38013041, \
0x59455107, 0x510340C1, 0x50C55103, 0x51456189, \
0x49053883, 0x30812841, 0x18010801, 0x08012843, \
0x6A0B7A0B, 0x30414881, 0x28432001, 0x08012001, \
0x28014085, 0x40413801, 0x50873001, 0x28013841, \
0x40014843, 0x40014041, 0x50C54885, 0x30015105, \
0x38C538C1, 0x38812883, 0x18011001, 0x08012083, \
0x71875181, 0x180159C9, 0x51074041, 0x30013001, \
0x28012001, 0x20012001, 0x20012001, 0x28014041, \
0x388338C7, 0x20013043, 0x498B3845, 0x38014843, \
0x40C53841, 0x48C348C5, 0x28831001, 0x10012841, \
0x514150C1, 0x69C19B93, 0x49CB38C1, 0x61875149, \
0x40832801, 0x10010801, 0x10012041, 0x30455945, \
0x79C77205, 0x82077A45, 0x79C55141, 0x30014887, \
0x40834001, 0x30413883, 0x38831841, 0x18012001, \
0x49038A43, 0xDC8FBC13, 0x51815A05, 0x7A0B5101, \
0x40813001, 0x10011001, 0x204140C7, 0x72096987, \
0xA34BB38B, 0xE4D1CC4B, 0xCC0D69C1, 0x69C551CB, \
0x28014001, 0x388348C3, 0x48C53883, 0x18412001, \
0x40834185, 0x9AC98247, 0x69C37A07, 0x69894903, \
0x51053041, 0x18012801, 0x38C56189, 0x59877A89, \
0x72CB72CB, 0x5A035181, 0x7A456181, 0x8A4B728F, \
0x1043514B, 0x38433841, 0x488140C1, 0x30812001, \
0x30013801, 0x61C38AC9, 0x820771C9, 0x72095143, \
0x6A0D3843, 0x200148C7, 0x510361CB, 0x59855187, \
0x6A475A03, 0x49414981, 0x49814983, 0x8A8D51C9, \
0x5987418D, 0x40014001, 0x48C15945, 0x49052001, \
0x08013883, 0x7A4B7ACD, 0x49414941, 0x40C148C1, \
0x59473001, 0x280148C5, 0x51016187, 0x6A0951C7, \
0x72CB6A8B, 0x5A476247, 0x7B5372CF, 0x7A096189, \
0x620B20C7, 0x38014001, 0x48C75103, 0x38C31001, \
0x00012001, 0x51076A49, 0x6187724D, 0x69C94145, \
0x48833801, 0x40414905, 0x61857209, 0x824982CB, \
0x624751C1, 0x520351C3, 0x73115A09, 0x40C15A0B, \
0x4A112881, 0x280150C7, 0x48434043, 0x38431801, \
0x08011801, 0x38012801, 0x300130C7, 0x30013801, \
0x40014043, 0x51057A4D, 0x7A497A49, 0x7A078A89, \
0x620359C1, 0x5A4551C5, 0x7B535185, 0x280159CB, \
0x4A0F1801, 0x38C35907, 0x40013843, 0x30031801, \
0x00011001, 0x38014043, 0x48854001, 0x40014001, \
0x488340C5, 0x51038207, 0x720769C3, 0x61C169C1, \
0x624559C3, 0x62CB5A07, 0x72CF6209, 0x30416A0F, \
0x4A511801, 0x49015947, 0x48C14041, 0x38411801, \
0x08011001, 0x48C54905, 0x618B5989, 0x590759C9, \
0x51055943, 0x69838249, 0x72456981, 0x6A037A87, \
0x520939C9, 0x52D15A49, 0x59C759C9, 0x40C1620D, \
0x41CD1001, 0x620D820B, 0x69C540C1, 0x20410801, \
0x00011801, 0x48C35941, 0x698559C5, 0x41476A07, \
0x59416141, 0x7A4992CF, 0x69C56181, 0x7A497247, \
0x420B320F, 0x4A4F4141, 0x49414943, 0x5145620F, \
0x39492949, 0x41CD59C7, 0x594348C3, 0x18410001, \
0x100140C5, 0x69C5AB0B, 0xC40F71C3, 0x69836181, \
0x8A838A47, 0x824992CF, 0x51017A49, 0x7ACB7A8D, \
0x528F528F, 0x5A4738C1, 0x51856A0B, 0x72916A0D, \
0x398B4251, 0x314740C1, 0x51034041, 0x20011001, \
0x20015987, 0x72056A49, 0x7A876141, 0x8A8171C3, \
0x82877207, 0x828D9311, 0x5901828D, 0x8ACF728B, \
0x4A09528F, 0x6A896207, 0x831382D3, 0x620B5145, \
0x28C541CD, 0x310561C9, 0x59473041, 0x18011001, \
0x3883828B, 0x71C351C5, 0x51C351C5, 0x61C572CD, \
0x7A8D6205, 0x7A4B71C9, 0x59417A4D, 0x720969C5, \
0x49C749C7, 0x49C34981, 0x7A4F5985, 0x40C15145, \
0x310730C5, 0x28815145, 0x48812801, 0x10412001, \
0x48C35185, 0x30815A07, 0x83536249, 0x62098B53, \
0x830F61C7, 0x6A096185, 0x6187824D, 0x59856A09, \
0x72438A89, 0x720359C5, 0x724D5143, 0x59856A0B, \
0x30C53945, 0x418969CB, 0x40832001, 0x18013001, \
0x38414101, 0x494172D1, 0x7B115185, 0x728D730F, \
0x51834901, 0x49015943, 0x69C76185, 0x59C569C7, \
0x82879ACB, 0x8A8B61C5, 0x6A095985, 0x61476187, \
0x61CB71CB, 0x5A0D69C9, 0x40C31801, 0x10011801, \
0x40435145, 0x69C97AD1, 0x5A0940C1, 0x620951C5, \
0x490151C5, 0x5983724D, 0x724B6985, 0x6A077207, \
0x69C97A8B, 0x7A4B5101, 0x61475985, 0x69894905, \
0x510548C3, 0x490748C3, 0x20411001, 0x00010001, \
0x18012841, 0x40415949, 0x50C13001, 0x6209624B, \
0x61C96A8B, 0x7A4B5A51, 0x294940C9, 0x39075987, \
0x494B5109, 0x40853001, 0x48853885, 0x40853801, \
0x40013001, 0x28011001, 0x10010801, 0x00010801, \
0x00011801, 0x28013801, 0x40012801, 0x39CF18C7, \
0x394751C9, 0x30854087, 0x48433041, 0x30012801, \
0x28012001, 0x20011801, 0x20012001, 0x18012801, \
0x20012001, 0x18011801, 0x18012001, 0x20010801, \
0x08010801, 0x18012001, 0x28013843, 0x40433801, \
0x40854085, 0x40013001, 0x20011001, 0x18011801, \
0x20011801, 0x10011001, 0x10011001, 0x18013043, \
0x38414081, 0x40014881, 0x48C54041, 0x48C52043, \
0x10011001, 0x30013043, 0x18010801, 0x20012001, \
0x28012001, 0x20011001, 0x08011801, 0x384148C3, \
0x50C538C1, 0x28431843, 0x18411041, 0x20412843, \
0x38C16145, 0x59C98ACF, 0x824B5945, 0x49052041, \
0x10011001, 0x20412885, 0x18411001, 0x08011801, \
0x18011801, 0x10011801, 0x28815947, 0x82458A47, \
0x41435985, 0x614938C3, 0x30833085, 0x288138C5, \
0x5945824D, 0x5A4D7249, 0x82077A03, 0x8A8B4903, \
0x20011001, 0x288348C5, 0x51435145, 0x40C54081, \
0x48415147, 0x51038245, 0xAB49C409, 0xA381A341, \
0x49C749CB, 0x724B5907, 0x510748C5, 0x38815909, \
0x59875107, 0x30814943, 0x6A0769C5, 0x7ACF61C7, \
0x48852001, 0x40834949, 0x59855141, 0x51412881, \
0x828D9ACD, 0x92898287, 0x6A4551C1, 0x51C15A45, \
0x4A073187, 0x59476189, 0x698B5107, 0x48C55149, \
0x598D3883, 0x48815905, 0x61856183, 0x728B7185, \
0x40811801, 0x200148C5, 0x48C35983, 0x624941C7, \
0x7A8D92CD, 0x820559C1, 0x6A876247, 0x5A455207, \
0x41853985, 0x5143418B, 0x52114085, 0x40433801, \
0x40434001, 0x400150C5, 0x40C52801, 0x410961C5, \
0x49012843, 0x20412001, 0x20014081, 0x82CF528F, \
0x39876207, 0x51815A01, 0x7ACD6A87, 0x520749C5, \
0x4187420B, 0x2903310B, 0x51493801, 0x20012001, \
0x40014881, 0x48C3590B, 0x40833801, 0x48874083, \
0x300150C5, 0x28411801, 0x08011801, 0x61874187, \
0x28C161C5, 0x5A036A49, 0x6A4751C1, 0x5A0559C7, \
0x494551C9, 0x49475109, 0x30011801, 0x20013001, \
0x48C3824F, 0x5A0D5945, 0x48814101, 0x61474041, \
0x40014885, 0x30412001, 0x08011001, 0x40413841, \
0x200169C7, 0x7A8B7249, 0x61C55981, 0x51415141, \
0x50C55A0F, 0x40433001, 0x18012001, 0x40C55949, \
0x6989720D, 0x28013081, 0x61858205, 0x9ACB5983, \
0x59456987, 0x40C32841, 0x10011001, 0x40013801, \
0x40C75949, 0x59474081, 0x38813841, 0x30413881, \
0x28412801, 0x20011801, 0x280148C5, 0x7A4F6A0B, \
0x61895943, 0x5945198B, 0x29CF424B, 0x8A898A47, \
0xAB49A305, 0x59433883, 0x10011001, 0x28014041, \
0x38433001, 0x20011001, 0x10011001, 0x10011001, \
0x18011801, 0x20012801, 0x51075987, 0x61455945, \
0x514579C9, 0x7A8F41C9, 0x4A91830F, 0x6A475A47, \
0x51C16A8B, 0x72494041, 0x18010801, 0x204138C5, \
0x30012001, 0x18011801, 0x18011001, 0x10011001, \
0x20012801, 0x40C57A0D, 0x8A8D6183, 0x71C9828D, \
0x6A0B728D, 0x20C12041, 0x39CB7289, 0x51816ACD, \
0x728B7A8D, 0x59434001, 0x18010801, 0x204338C1, \
0x38C33883, 0x30013801, 0x488548C3, 0x490750C5, \
0x61CB7A0B, 0x930B928B, 0xA30771C5, 0xA35159C9, \
0x59C76A8B, 0x20C1398B, 0x428F59C5, 0x518151CB, \
0x39073845, 0x40413001, 0x10010801, 0x18413081, \
0x40C36187, 0x40814041, 0x59C951C9, 0x49CB4987, \
0x31432945, 0x7A4769C1, 0x69C151C5, 0x5A4938C1, \
0x29473A0D, 0x08C79395, 0x7B0F69C5, 0x51C940C7, \
0x40012801, 0x28012001, 0x08010801, 0x10012801, \
0x30835943, 0x61435983, 0x41853947, 0x4A0B3987, \
0x20810001, 0x00851881, 0x41414101, 0x5A4B628D, \
0x294700C7, 0x00015181, 0x61C16141, 0x49053801, \
0x18011001, 0x10011801, 0x18010801, 0x08011001, \
0x10012043, 0x51435945, 0x6A0561C7, 0x51C720C1, \
0x49C52903, 0x31473901, 0x41016AD1, 0x72D13A0D, \
0x10810001, 0x49834141, 0x720561C7, 0x30411801, \
0x10012843, 0x30833883, 0x28411001, 0x08011001, \
0x18011801, 0x20012881, 0x49056985, 0x6A0759C7, \
0x6A073943, 0x294759C9, 0x7B118B97, 0x5A4D2947, \
0x004308C7, 0x8BD59B0F, 0x720948C5, 0x20011001, \
0x30435947, 0x488140C1, 0x30011801, 0x10013041, \
0x38033801, 0x28010801, 0x180140C3, 0x618569C7, \
0x59875187, 0x31896A8F, 0x6A4F4143, 0x38814941, \
0x18C35205, 0x5A096141, 0x40813843, 0x10012001, \
0x40413801, 0x28013801, 0x30011801, 0x20436147, \
0x69C940C1, 0x38432001, 0x08012801, 0x30835103, \
0x50C34987, 0x318B7AD1, 0x620D5187, 0x49454101, \
0x31475A09, 0x51014881, 0x38011801, 0x00011001, \
0x20012801, 0x40413803, 0x30413001, 0x48C569C7, \
0x82437A07, 0x69C93801, 0x28011001, 0x18013001, \
0x488340C3, 0x4A0F7AD1, 0x518769CD, 0x41893883, \
0x29CF62D3, 0x61873883, 0x20010001, 0x00011001, \
0x08012001, 0x388350C5, 0x50C548C3, 0x724D7207, \
0x79C58247, 0x61815983, 0x38012001, 0x10012001, \
0x4083598B, 0x5A515105, 0x38014041, 0x40013801, \
0x59496189, 0x30411801, 0x10011801, 0x18012841, \
0x308340C5, 0x48C130C1, 0x41493101, 0x41896205, \
0x51C57203, 0x8A057A47, 0x59013083, 0x18011801, \
0x28013001, 0x38014001, 0x40013001, 0x28012801, \
0x30432843, 0x10012001, 0x380148C5, 0x50C361C7, \
0x8A497205, 0x50C16183, 0x6A095141, 0x51418249, \
0x49414101, 0x7A476981, 0x72058249, 0x49053841, \
0x30012001, 0x18012001, 0x28012001, 0x18011801, \
0x08010801, 0x10013001, 0x4881724D, 0x698569C5, \
0x61836141, 0x7A05B38B, 0xA2CD7A05, 0x71C39B11, \
0x7A8B72CD, 0x6A8D4101, 0x6A8F4A4F, 0x39474903, \
0x48812001, 0x10012801, 0x38414043, 0x48C53841, \
0x10010801, 0x08013883, 0x598B7ACF, 0x720571C3, \
0x51416A45, 0xA393AB4F, 0xCC11A30B, 0x71C382CF, \
0x7B0F82D1, 0x72CF51C9, 0x7AD32907, 0x00010001, \
0x48813881, 0x18432843, 0x40C538C3, 0x59453885, \
0x10010001, 0x080140C5, 0x418749CB, 0x6A496A05, \
0x7A89934F, 0xA3D182CB, 0x7ACB7247, 0x49017A8B, \
0x7B0F6209, 0x40C140C1, 0x598B4105, 0x20831883, \
0x59075147, 0x49055147, 0x594940C1, 0x61472883, \
0x08010001, 0x10013883, 0x598561C3, 0x7A475981, \
0x72477AC9, 0x61816201, 0x6A056201, 0x51417ACD, \
0x5A0740C1, 0x38013881, 0x620F598B, 0x288530C5, \
0x51475949, 0x51454945, 0x6A0D2881, 0x38012001, \
0x08010801, 0x10012841, 0x51036981, 0x618161C1, \
0x82897A87, 0x61C16A43, 0x7A896A89, 0x7A8B7B0F, \
0x51835187, 0x620D59CB, 0x6A0F40C5, 0x38414107, \
0x598B61CB, 0x620B6A0D, 0x720D3841, 0x20011001, \
0x10012083, 0x18012801, 0x51055981, 0x6A039B4F, \
0x82CB69C1, 0x7A8769C1, 0x6A877249, 0x5A035181, \
0x30015989, 0x72D35147, 0x38434801, 0x40835907, \
0x61CB618B, 0x51474083, 0x28031001, 0x10012043, \
0x40C548C5, 0x38412801, 0x48415101, 0x8B0DB3D5, \
0x72455101, 0x72457A89, 0x82CD830D, 0x62074141, \
0x40C1620B, 0x59CD5107, 0x49096147, 0x614B598B, \
0x48813841, 0x20011801, 0x08011001, 0x30435107, \
0x50C13881, 0x40013801, 0x404169C7, 0xABD38B0D, \
0x50C15981, 0x934F8ACD, 0x72898311, 0x728B6A8D, \
0x7AD1620D, 0x518961CD, 0x69CF4949, 0x41073947, \
0x38412001, 0x18012001, 0x28413043, 0x51471801, \
0x40C17A8D, 0x51053001, 0x30416187, 0x9B5371C5, \
0x51417209, 0x82CD6A47, 0x72497B0F, 0x59C35185, \
0x62094947, 0x28C50885, 0x00011883, 0x28813907, \
0x20012001, 0x38014841, 0x7A4F828F, 0x394720C1, \
0x6A4B7A8D, 0x48C12801, 0x280148C1, 0x72096205, \
0x6A096A07, 0x6A47724B, 0x728B6209, 0x39014901, \
0x51854101, 0x28C50909, 0x21071885, 0x30814841, \
0x28013841, 0x40416A0B, 0x93536249, 0x20812081, \
0x5A076A07, 0x49052801, 0x200150C3, 0x82CF7A8B, \
0x59815101, 0x6A4782CF, 0x724959C5, 0x51C161C7, \
0x6A8D620B, 0x59893105, 0x30C54083, 0x40413001
var_808A6A58: .word 0x801F0005, 0x8917000C, 0xB86CF448, 0x304C2008
var_808A6A68: .word 0xFFFF00FF
var_808A6A6C: .word 0xFF0A00FF
var_808A6A70: .word 0x00000000, 0x00000000, 0x00000000
var_808A6A7C: .word 0x00000000, 0x00000000, 0x00000000
var_808A6A88: .word \
0xC4ADC000, 0x00000000, 0xC56DC000, 0xC4ADC000, \
0x00000000, 0xC52F4000, 0xC3C30000, 0x00000000, \
0xC52F4000, 0xC3C30000, 0x00000000, 0xC56DC000
var_808A6AB8: .word 0x00000000, 0x00000000, 0x00000000
var_808A6AC4: .word 0x00000000, 0x00000000, 0x00000000
var_808A6AD0: .word 0xFFFF00FF, 0x00000096
var_808A6AD8: .word 0xFF0000FF, 0x00000000
var_808A6AE0: .word 0x459C4000, 0xC51C4000, 0x00000000
var_808A6AEC: .word 0x00000000, 0x00000000, 0x00000000
var_808A6AF8: .word 0x4633B000, 0xC53B8000, 0x00000000
var_808A6B04: .word 0x459C4000, 0xC4FA0000, 0x00000000
var_808A6B10: .word 0x45FA0000, 0x00000000, 0x00000000
var_808A6B1C: .word 0x45FA0000, 0x00000000, 0x00000000
var_808A6B28: .word \
0xC3DC0000, 0x00000000, 0xC54E8000, 0xC45E8000, \
0x00000000, 0xC56AA000, 0xC4A78000, 0x00000000, \
0xC54E8000, 0xC45E8000, 0x00000000, 0xC5326000
var_808A6B58: .word \
0xC45E8000, 0x00000000, 0xC5326000, 0xC3DC0000, \
0x00000000, 0xC54E8000, 0xC45E8000, 0x00000000, \
0xC56AA000, 0xC4A78000, 0x00000000, 0xC54E8000
var_808A6B88: .word 0xFFFF00FF, 0x00000064
var_808A6B90: .word 0xFF0000FF, 0x00000000
var_808A6B98: .word \
0xC3C30000, 0x00000000, 0xC54E8000, 0xC45E8000, \
0x00000000, 0xC56DC000, 0xC4ADC000, 0x00000000, \
0xC54E8000, 0xC45E8000, 0x00000000, 0xC52F4000
var_808A6BC8: .word \
0xC45E8000, 0x00000000, 0xC52F4000, 0xC3C30000, \
0x00000000, 0xC54E8000, 0xC45E8000, 0x00000000, \
0xC56DC000, 0xC4ADC000, 0x00000000, 0xC54E8000
var_808A6BF8: .word 0x00000064
var_808A6BFC: .word 0x00000000
var_808A6C00: .word 0x00000000, 0x00000000, 0x00000000
var_808A6C0C: .word 0x00000000, 0x3F800000, 0x00000000
var_808A6C18: .word 0xFFFF64FF
var_808A6C1C: .word 0xFF6400FF
var_808A6C20: .word 0xFF8000FF, 0x0000FFFF, 0x00FF0000, 0x00000000

.section .rodata

var_808A6C30: .word 0x3E490FDB
var_808A6C34: .word 0x4478C000
var_808A6C38: .word 0x460FC000
var_808A6C3C: .word 0xC45E8000
var_808A6C40: .word 0xC4BE7852
var_808A6C44: .word 0xC54E8000
var_808A6C48: .word 0xC4BE7852
var_808A6C4C: .word 0xC54E8000
var_808A6C50: .word 0xC4BE7852
var_808A6C54: .word 0xC54E8000
var_808A6C58: .word var_8089E49C
.word var_8089E4E4
.word var_8089E578
.word var_8089E8A8
.word var_8089EAC0
var_808A6C6C: .word 0xC498F852
var_808A6C70: .word 0xC4ADC000
var_808A6C74: .word 0xC552E000
var_808A6C78: .word 0xC47FF0A4
var_808A6C7C: .word 0xC45E8000
var_808A6C80: .word 0xC52F4000
var_808A6C84: .word 0xC48B4000
var_808A6C88: .word 0xC52F4000
var_808A6C8C: .word 0x3D4CCCCD
var_808A6C90: .word 0x3DCCCCCD
var_808A6C94: .word 0x40490E56
var_808A6C98: .word 0x3F333333
var_808A6C9C: .word 0x40490E56
var_808A6CA0: .word 0x3F333333
var_808A6CA4: .word 0x3A83126F
var_808A6CA8: .word 0xBDCCCCCD
var_808A6CAC: .word 0x3A83126F
var_808A6CB0: .word 0x3A83126F
var_808A6CB4: .word 0x3F333333
var_808A6CB8: .word 0x4622F983
var_808A6CBC: .word 0x45F0A000
var_808A6CC0: .word 0x4622F983
var_808A6CC4: .word 0x460FC000
var_808A6CC8: .word 0x3DCCCCCD
var_808A6CCC: .word 0x3FF33333
var_808A6CD0: .word 0x3FD9999A
var_808A6CD4: .word 0x3FB33333
var_808A6CD8: .word 0x3FF33333
var_808A6CDC: .word 0x3F8CCCCD
var_808A6CE0: .word 0x3FF33333
var_808A6CE4: .word 0x40C8F5C3
var_808A6CE8: .word 0xC45E8000
var_808A6CEC: .word 0xC4BE7852
var_808A6CF0: .word 0xC54E8000
var_808A6CF4: .word 0x40C8F5C3
var_808A6CF8: .word 0xC45E8000
var_808A6CFC: .word 0xC4BE7852
var_808A6D00: .word 0xC54E8000
var_808A6D04: .word 0x3ECCCCCD
var_808A6D08: .word 0x40C8F5C3
var_808A6D0C: .word 0xC45E8000
var_808A6D10: .word 0xC4BD3852
var_808A6D14: .word 0xC54E8000
var_808A6D18: .word 0x3DEB851F
var_808A6D1C: .word 0x3E051EB8
var_808A6D20: .word 0x3DCCCCCD
var_808A6D24: .word 0x3DCCCCCD
var_808A6D28: .word 0x3E051EB8
var_808A6D2C: .word 0x3DEB851F
var_808A6D30: .word 0x40490FD0
var_808A6D34: .word var_808A1C9C
.word lbl_808A3340
.word lbl_808A3340
.word lbl_808A3340
.word lbl_808A3340
.word var_808A1D2C
.word var_808A1FF0
.word var_808A2108
.word var_808A26A0
.word var_808A26A0
var_808A6D5C: .word 0x3DCCCCCD
var_808A6D60: .word 0x3DCCCCCD
var_808A6D64: .word 0x3DCCCCCD
var_808A6D68: .word 0x3DCCCCCD
var_808A6D6C: .word 0x3DCCCCCD
var_808A6D70: .word 0x3DCCCCCD
var_808A6D74: .word 0xC4BE7852
var_808A6D78: .word 0xC54E8000
var_808A6D7C: .word 0x3DCCCCCD
var_808A6D80: .word 0x3DCCCCCD
var_808A6D84: .word 0x3DCCCCCD
var_808A6D88: .word 0x45F0A000
var_808A6D8C: .word 0x3DCCCCCD
var_808A6D90: .word 0x3DCCCCCD
var_808A6D94: .word 0x38C90FDB
var_808A6D98: .word 0x4622F983
var_808A6D9C: .word 0xC4BB5852
var_808A6DA0: .word 0x3FF33333
var_808A6DA4: .word 0x3C23D70A
var_808A6DA8: .word 0x3C23D70A
var_808A6DAC: .word 0x3DCCCCCD
var_808A6DB0: .word 0x3DCCCCCD
var_808A6DB4: .word 0x3DCCCCCD
var_808A6DB8: .word 0xC45E8000
var_808A6DBC: .word 0xC4BE7852
var_808A6DC0: .word 0xC54E8000
var_808A6DC4: .word 0xC4BB5852, 0x00000000, 0x00000000

