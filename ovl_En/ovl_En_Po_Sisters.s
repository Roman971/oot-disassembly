#include <mips.h>
.set noreorder
.set noat

.section .text
func_8093C340:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s1, 0x0028($sp)            
	sw      s0, 0x0024($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x002C($sp)           
	lui     a1, %hi(var_80940B08)      ## a1 = 80940000
	addiu   a1, a1, %lo(var_80940B08)  ## a1 = 80940B08
	jal     func_80063F7C              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a2, 0x8002                 ## a2 = 80020000
	addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	jal     func_8001EC20              
	lui     a3, 0x4248                 ## a3 = 42480000
	lui     a2, 0x0600                 ## a2 = 06000000
	lui     a3, 0x0600                 ## a3 = 06000000
	addiu   t6, s0, 0x018E             ## t6 = 0000018E
	addiu   t7, s0, 0x01D6             ## t7 = 000001D6
	addiu   t8, $zero, 0x000C          ## t8 = 0000000C
	sw      t8, 0x0018($sp)            
	sw      t7, 0x0014($sp)            
	sw      t6, 0x0010($sp)            
	addiu   a3, a3, 0x14CC             ## a3 = 060014CC
	addiu   a2, a2, 0x65C8             ## a2 = 060065C8
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8008C684              
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	addiu   v1, $zero, 0x00FF          ## v1 = 000000FF
	addiu   t9, $zero, 0x00D2          ## t9 = 000000D2
	sb      v1, 0x021E(s0)             ## 0000021E
	sb      v1, 0x021F(s0)             ## 0000021F
	sb      t9, 0x0220(s0)             ## 00000220
	sb      v1, 0x0221(s0)             ## 00000221
	addiu   a2, s0, 0x028C             ## a2 = 0000028C
	sw      a2, 0x0034($sp)            
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_800665B0              
	addiu   a1, s1, 0x07A8             ## a1 = 000007A8
	lwc1    $f4, 0x0008(s0)            ## 00000008
	lwc1    $f8, 0x000C(s0)            ## 0000000C
	lwc1    $f16, 0x0010(s0)           ## 00000010
	trunc.w.s $f6, $f4                   
	sw      v0, 0x0288(s0)             ## 00000288
	sw      $zero, 0x001C($sp)         
	trunc.w.s $f10, $f8                  
	mfc1    a1, $f6                    
	sw      $zero, 0x0018($sp)         
	trunc.w.s $f18, $f16                 
	mfc1    a2, $f10                   
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	mfc1    a3, $f18                   
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	sll     a3, a3, 16                 
	sra     a3, a3, 16                 
	sw      $zero, 0x0014($sp)         
	sw      $zero, 0x0010($sp)         
	jal     func_80065C30              
	lw      a0, 0x0034($sp)            
	addiu   a1, s0, 0x029C             ## a1 = 0000029C
	sw      a1, 0x0034($sp)            
	jal     func_8004AB7C              
	or      a0, s1, $zero              ## a0 = 00000000
	lui     a3, %hi(var_80940AB0)      ## a3 = 80940000
	lw      a1, 0x0034($sp)            
	addiu   a3, a3, %lo(var_80940AB0)  ## a3 = 80940AB0
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	lui     a1, %hi(var_80940AE4)      ## a1 = 80940000
	lui     a2, %hi(var_80940ADC)      ## a2 = 80940000
	addiu   a2, a2, %lo(var_80940ADC)  ## a2 = 80940ADC
	addiu   a1, a1, %lo(var_80940AE4)  ## a1 = 80940AE4
	jal     func_80050344              
	addiu   a0, s0, 0x0098             ## a0 = 00000098
	lh      t3, 0x001C(s0)             ## 0000001C
	lh      t8, 0x001C(s0)             ## 0000001C
	lh      t5, 0x001C(s0)             ## 0000001C
	sra     t4, t3,  8                 
	andi    t6, t4, 0x0003             ## t6 = 00000000
	lw      t3, 0x0004(s0)             ## 00000004
	lui     $at, 0x42DC                ## $at = 42DC0000
	mtc1    $at, $f4                   ## $f4 = 110.00
	sb      t6, 0x0184(s0)             ## 00000184
	addiu   t7, t6, 0x0050             ## t7 = 00000050
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	sra     t9, t8, 10                 
	addiu   v0, $zero, 0x0020          ## v0 = 00000020
	andi    t0, t9, 0x0003             ## t0 = 00000000
	addiu   t1, $zero, 0x0014          ## t1 = 00000014
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	andi    t6, t5, 0x1000             ## t6 = 00000000
	and     t4, t3, $at                
	sb      t7, 0x0117(s0)             ## 00000117
	sb      t0, 0x0185(s0)             ## 00000185
	sb      v0, 0x0186(s0)             ## 00000186
	sb      t1, 0x0187(s0)             ## 00000187
	sb      t2, 0x0188(s0)             ## 00000188
	sb      v0, 0x0189(s0)             ## 00000189
	sw      t4, 0x0004(s0)             ## 00000004
	beq     t6, $zero, lbl_8093C4F8    
	swc1    $f4, 0x0284(s0)            ## 00000284
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8093D450              
	or      a1, s1, $zero              ## a1 = 00000000
	beq     $zero, $zero, lbl_8093C570 
	lh      t5, 0x001C(s0)             ## 0000001C
lbl_8093C4F8:
	lbu     t7, 0x0184(s0)             ## 00000184
	bne     t7, $zero, lbl_8093C564    
	nop
	lbu     t8, 0x0185(s0)             ## 00000185
	addiu   $at, $zero, 0xBDFF         ## $at = FFFFBDFF
	addiu   t2, $zero, 0x0004          ## t2 = 00000004
	bne     t8, $zero, lbl_8093C534    
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t9, $zero, 0x0009          ## t9 = 00000009
	sb      t9, 0x02AE(s0)             ## 000002AE
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8093CE64              
	or      a1, s1, $zero              ## a1 = 00000000
	beq     $zero, $zero, lbl_8093C570 
	lh      t5, 0x001C(s0)             ## 0000001C
lbl_8093C534:
	lw      t0, 0x0004(s0)             ## 00000004
	lw      t3, 0x02BC(s0)             ## 000002BC
	sb      t2, 0x02C8(s0)             ## 000002C8
	and     t1, t0, $at                
	ori     t4, t3, 0x0001             ## t4 = 00000001
	sw      t1, 0x0004(s0)             ## 00000004
	sw      t4, 0x02BC(s0)             ## 000002BC
	sb      $zero, 0x02AE(s0)          ## 000002AE
	jal     func_8093CFE0              
	or      a1, $zero, $zero           ## a1 = 00000000
	beq     $zero, $zero, lbl_8093C570 
	lh      t5, 0x001C(s0)             ## 0000001C
lbl_8093C564:
	jal     func_8093D100              
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t5, 0x001C(s0)             ## 0000001C
lbl_8093C570:
	andi    t6, t5, 0x003F             ## t6 = 00000000
	sh      t6, 0x001C(s0)             ## 0000001C
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0024($sp)            
	lw      s1, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_8093C58C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lw      a0, 0x001C($sp)            
	lw      a2, 0x0288(a3)             ## 00000288
	sw      a3, 0x0018($sp)            
	jal     func_80066610              
	addiu   a1, a0, 0x07A8             ## a1 = 000007A8
	lw      a3, 0x0018($sp)            
	lbu     t7, 0x0184(a3)             ## 00000184
	bnel    t7, $zero, lbl_8093C5DC    
	lw      a0, 0x001C($sp)            
	lbu     t8, 0x0185(a3)             ## 00000185
	bnel    t8, $zero, lbl_8093C5DC    
	lw      a0, 0x001C($sp)            
	jal     func_800C6894              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
lbl_8093C5DC:
	jal     func_8004ABCC              
	addiu   a1, a3, 0x029C             ## a1 = 0000029C
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093C5F4:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s5, 0x0038($sp)            
	sw      s0, 0x0024($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s5, a2, $zero              ## s5 = 00000000
	sw      $ra, 0x003C($sp)           
	sw      s4, 0x0034($sp)            
	sw      s3, 0x0030($sp)            
	sw      s2, 0x002C($sp)            
	sw      s1, 0x0028($sp)            
	sdc1    $f22, 0x0018($sp)          
	sdc1    $f20, 0x0010($sp)          
	lbu     t6, 0x0188(s0)             ## 00000188
	or      s3, $zero, $zero           ## s3 = 00000000
	blezl   t6, lbl_8093C6F8           
	lw      $ra, 0x003C($sp)           
	multu   a1, a1                     
	lui     $at, %hi(var_80940B90)     ## $at = 80940000
	lwc1    $f8, %lo(var_80940B90)($at) 
	mtc1    a1, $f10                   ## $f10 = 0.00
	addiu   s1, s0, 0x0224             ## s1 = 00000224
	or      s2, $zero, $zero           ## s2 = 00000000
	cvt.s.w $f22, $f10                 
	mflo    t7                         
	mtc1    t7, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	mul.s   $f20, $f6, $f8             
	nop
	lh      t9, 0x018A(s0)             ## 0000018A
lbl_8093C66C:
	lh      t8, 0x00B6(s0)             ## 000000B6
	or      s4, s1, $zero              ## s4 = 00000224
	sll     t0, t9, 11                 
	addu    t1, t8, t0                 
	addu    a0, t1, s2                 
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	mul.s   $f16, $f0, $f20            
	lwc1    $f18, 0x0000(s5)           ## 00000000
	add.s   $f4, $f16, $f18            
	swc1    $f4, 0x0000(s1)            ## 00000224
	lh      t3, 0x018A(s0)             ## 0000018A
	lh      t2, 0x00B6(s0)             ## 000000B6
	sll     t4, t3, 11                 
	addu    t5, t2, t4                 
	addu    a0, t5, s2                 
	sll     a0, a0, 16                 
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	mul.s   $f6, $f0, $f20             
	lwc1    $f8, 0x0008(s5)            ## 00000008
	addiu   s3, s3, 0x0001             ## s3 = 00000001
	addiu   s1, s1, 0x000C             ## s1 = 00000230
	addiu   s2, s2, 0x2000             ## s2 = 00002000
	add.s   $f10, $f6, $f8             
	swc1    $f10, 0x0008(s4)           ## 0000022C
	lwc1    $f16, 0x0004(s5)           ## 00000004
	add.s   $f18, $f16, $f22           
	swc1    $f18, 0x0004(s4)           ## 00000228
	lbu     t6, 0x0188(s0)             ## 00000188
	slt     $at, s3, t6                
	bnel    $at, $zero, lbl_8093C66C   
	lh      t9, 0x018A(s0)             ## 0000018A
	lw      $ra, 0x003C($sp)           
lbl_8093C6F8:
	ldc1    $f20, 0x0010($sp)          
	ldc1    $f22, 0x0018($sp)          
	lw      s0, 0x0024($sp)            
	lw      s1, 0x0028($sp)            
	lw      s2, 0x002C($sp)            
	lw      s3, 0x0030($sp)            
	lw      s4, 0x0034($sp)            
	lw      s5, 0x0038($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_8093C720:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x14CC             ## a1 = 060014CC
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	lui     a2, 0xC040                 ## a2 = C0400000
	jal     func_8008D328              
	sw      a3, 0x0018($sp)            
	addiu   a0, $zero, 0x0002          ## a0 = 00000002
	jal     func_80063BF0              
	addiu   a1, $zero, 0x0003          ## a1 = 00000003
	lw      a3, 0x0018($sp)            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     t6, %hi(func_8093D868)     ## t6 = 80940000
	addiu   t6, t6, %lo(func_8093D868) ## t6 = 8093D868
	sh      v0, 0x018A(a3)             ## 0000018A
	sw      t6, 0x0180(a3)             ## 00000180
	swc1    $f4, 0x0068(a3)            ## 00000068
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093C77C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	lw      t7, 0x0180(a3)             ## 00000180
	lui     t6, %hi(func_8093DA60)     ## t6 = 80940000
	addiu   t6, t6, %lo(func_8093DA60) ## t6 = 8093DA60
	beq     t6, t7, lbl_8093C7B4       
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x0D40             ## a1 = 06000D40
	lui     a2, 0xC040                 ## a2 = C0400000
	jal     func_8008D328              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
lbl_8093C7B4:
	addiu   a0, $zero, 0x000F          ## a0 = 0000000F
	addiu   a1, $zero, 0x0003          ## a1 = 00000003
	jal     func_80063BF0              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	lui     t0, %hi(func_8093D8F0)     ## t0 = 80940000
	addiu   t0, t0, %lo(func_8093D8F0) ## t0 = 8093D8F0
	lbu     t8, 0x0189(a3)             ## 00000189
	sh      v0, 0x018A(a3)             ## 0000018A
	sw      t0, 0x0180(a3)             ## 00000180
	ori     t9, t8, 0x0007             ## t9 = 00000007
	sb      t9, 0x0189(a3)             ## 00000189
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093C7F4:
	lui     t6, %hi(func_8093DA60)     ## t6 = 80940000
	addiu   t6, t6, %lo(func_8093DA60) ## t6 = 8093DA60
	sw      t6, 0x0180(a0)             ## 00000180
	jr      $ra                        
	nop


func_8093C808:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	lbu     t6, 0x0221(a3)             ## 00000221
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x0114             ## a1 = 06000114
	beq     t6, $zero, lbl_8093C83C    
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	lbu     t8, 0x02AD(a3)             ## 000002AD
	addiu   t7, $zero, 0x0009          ## t7 = 00000009
	sb      t7, 0x02B0(a3)             ## 000002B0
	ori     t9, t8, 0x0004             ## t9 = 00000004
	sb      t9, 0x02AD(a3)             ## 000002AD
lbl_8093C83C:
	lui     a2, 0xC0A0                 ## a2 = C0A00000
	jal     func_8008D328              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     a0, 0x0600                 ## a0 = 06000000
	addiu   a0, a0, 0x0114             ## a0 = 06000114
	jal     func_8008A194              
	swc1    $f4, 0x0068(a3)            ## 00000068
	lw      a3, 0x0018($sp)            
	sll     t0, v0,  2                 
	subu    t0, t0, v0                 
	lbu     t2, 0x0189(a3)             ## 00000189
	lui     t4, %hi(func_8093DBB0)     ## t4 = 80940000
	addiu   t1, t0, 0x0003             ## t1 = 00000003
	addiu   t4, t4, %lo(func_8093DBB0) ## t4 = 8093DBB0
	andi    t3, t2, 0xFFFD             ## t3 = 00000000
	sh      t1, 0x018A(a3)             ## 0000018A
	sb      t3, 0x0189(a3)             ## 00000189
	sw      t4, 0x0180(a3)             ## 00000180
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093C89C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	lbu     t6, 0x0184(a3)             ## 00000184
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f4                   ## $f4 = 5.00
	addiu   t7, $zero, 0x0009          ## t7 = 00000009
	bne     t6, $zero, lbl_8093C8EC    
	swc1    $f4, 0x0068(a3)            ## 00000068
	lbu     t8, 0x02AD(a3)             ## 000002AD
	sb      t7, 0x02B0(a3)             ## 000002B0
	lui     a1, 0x0600                 ## a1 = 06000000
	ori     t9, t8, 0x0004             ## t9 = 00000004
	sb      t9, 0x02AD(a3)             ## 000002AD
	sw      a3, 0x0018($sp)            
	addiu   a1, a1, 0x0114             ## a1 = 06000114
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	jal     func_8008D328              
	lui     a2, 0xC0A0                 ## a2 = C0A00000
	lw      a3, 0x0018($sp)            
lbl_8093C8EC:
	lbu     t2, 0x0189(a3)             ## 00000189
	lh      t1, 0x008A(a3)             ## 0000008A
	lui     t4, %hi(func_8093DC80)     ## t4 = 80940000
	addiu   t0, $zero, 0x0005          ## t0 = 00000005
	addiu   t4, t4, %lo(func_8093DC80) ## t4 = 8093DC80
	ori     t3, t2, 0x0008             ## t3 = 00000008
	sh      t0, 0x018A(a3)             ## 0000018A
	sb      t3, 0x0189(a3)             ## 00000189
	sw      t4, 0x0180(a3)             ## 00000180
	sh      t1, 0x0032(a3)             ## 00000032
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093C924:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x0D40             ## a1 = 06000D40
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	lui     a2, 0xC040                 ## a2 = C0400000
	jal     func_8008D328              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	ori     $at, $zero, 0x8000         ## $at = 00008000
	lui     t2, %hi(func_8093DDA8)     ## t2 = 80940000
	lh      t6, 0x008A(a3)             ## 0000008A
	lbu     t8, 0x0184(a3)             ## 00000184
	addiu   t2, t2, %lo(func_8093DDA8) ## t2 = 8093DDA8
	addu    t7, t6, $at                
	beq     t8, $zero, lbl_8093C980    
	sh      t7, 0x0032(a3)             ## 00000032
	lbu     t0, 0x02AD(a3)             ## 000002AD
	addiu   t9, $zero, 0x0003          ## t9 = 00000003
	sb      t9, 0x02B0(a3)             ## 000002B0
	andi    t1, t0, 0xFFFB             ## t1 = 00000000
	sb      t1, 0x02AD(a3)             ## 000002AD
lbl_8093C980:
	sw      t2, 0x0180(a3)             ## 00000180
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093C994:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x08C0             ## a1 = 060008C0
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008D21C              
	lui     a2, 0xC040                 ## a2 = C0400000
	lw      a1, 0x02A4(s0)             ## 000002A4
	beql    a1, $zero, lbl_8093CA04    
	lbu     t1, 0x0184(s0)             ## 00000184
	lw      t6, 0x02D8(s0)             ## 000002D8
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0xF824           ## $at = 0001F824
	lw      t7, 0x0000(t6)             ## 00000000
	and     t8, t7, $at                
	beq     t8, $zero, lbl_8093C9EC    
	nop
	lh      t9, 0x0032(a1)             ## 00000032
	beq     $zero, $zero, lbl_8093CA00 
	sh      t9, 0x0032(s0)             ## 00000032
lbl_8093C9EC:
	jal     func_800213B4              
	or      a0, s0, $zero              ## a0 = 00000000
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addu    t0, v0, $at                
	sh      t0, 0x0032(s0)             ## 00000032
lbl_8093CA00:
	lbu     t1, 0x0184(s0)             ## 00000184
lbl_8093CA04:
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x4000          ## a1 = 00004000
	beq     t1, $zero, lbl_8093CA24    
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f4                   ## $f4 = 10.00
	nop
	swc1    $f4, 0x0068(s0)            ## 00000068
lbl_8093CA24:
	lbu     t2, 0x0189(s0)             ## 00000189
	addiu   t4, $zero, 0x0010          ## t4 = 00000010
	or      a3, $zero, $zero           ## a3 = 00000000
	andi    t3, t2, 0xFFF4             ## t3 = 00000000
	sb      t3, 0x0189(s0)             ## 00000189
	jal     func_80027090              
	sw      t4, 0x0010($sp)            
	lui     t5, %hi(func_8093DE64)     ## t5 = 80940000
	addiu   t5, t5, %lo(func_8093DE64) ## t5 = 8093DE64
	sw      t5, 0x0180(s0)             ## 00000180
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093CA60:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x0A54             ## a1 = 06000A54
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	lui     a2, 0xC040                 ## a2 = C0400000
	jal     func_8008D328              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	ori     $at, $zero, 0x8000         ## $at = 00008000
	lui     t1, %hi(func_8093E030)     ## t1 = 80940000
	lh      t6, 0x00B6(a3)             ## 000000B6
	lbu     t9, 0x0189(a3)             ## 00000189
	addiu   t8, $zero, 0x0005          ## t8 = 00000005
	addu    t7, t6, $at                
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f4                   ## $f4 = 5.00
	addiu   t1, t1, %lo(func_8093E030) ## t1 = 8093E030
	ori     t0, t9, 0x000B             ## t0 = 0000000B
	sh      t7, 0x0032(a3)             ## 00000032
	sh      t8, 0x018A(a3)             ## 0000018A
	sb      t0, 0x0189(a3)             ## 00000189
	sw      t1, 0x0180(a3)             ## 00000180
	swc1    $f4, 0x0068(a3)            ## 00000068
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093CAD4:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x119C             ## a0 = 0600119C
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC040                ## $at = C0400000
	mtc1    $at, $f8                   ## $f8 = -3.00
	cvt.s.w $f6, $f4                   
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0x119C             ## a1 = 0600119C
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	swc1    $f6, 0x0010($sp)           
	lui     a2, 0x3FC0                 ## a2 = 3FC00000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
	lbu     t9, 0x0189(s0)             ## 00000189
	mtc1    $zero, $f10                ## $f10 = 0.00
	lh      t8, 0x00B6(s0)             ## 000000B6
	addiu   t7, $zero, 0x0064          ## t7 = 00000064
	andi    t0, t9, 0xFFFA             ## t0 = 00000000
	sh      t7, 0x018C(s0)             ## 0000018C
	sb      t0, 0x0189(s0)             ## 00000189
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x3874          ## a1 = 00003874
	swc1    $f10, 0x0068(s0)           ## 00000068
	jal     func_80022FD0              
	sh      t8, 0x0032(s0)             ## 00000032
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x38EF          ## a1 = 000038EF
	lui     t1, %hi(func_8093E114)     ## t1 = 80940000
	addiu   t1, t1, %lo(func_8093E114) ## t1 = 8093E114
	sw      t1, 0x0180(s0)             ## 00000180
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093CB84:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0014($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      s1, 0x0018($sp)            
	lbu     v0, 0x0185(s0)             ## 00000185
	lw      s1, 0x1C44(a1)             ## 00001C44
	beql    v0, $zero, lbl_8093CBC0    
	lb      t8, 0x0833(s1)             ## 00000833
	lw      t7, 0x0180(s0)             ## 00000180
	lui     t6, %hi(func_8093DE64)     ## t6 = 80940000
	addiu   t6, t6, %lo(func_8093DE64) ## t6 = 8093DE64
	beq     t6, t7, lbl_8093CC30       
	nop
	lb      t8, 0x0833(s1)             ## 00000833
lbl_8093CBC0:
	beql    t8, $zero, lbl_8093CBDC    
	lwc1    $f4, 0x0028(s1)            ## 00000028
	lb      t9, 0x0832(s1)             ## 00000832
	slti    $at, t9, 0x0018            
	bnel    $at, $zero, lbl_8093CC18   
	addiu   a0, s0, 0x0284             ## a0 = 00000284
	lwc1    $f4, 0x0028(s1)            ## 00000028
lbl_8093CBDC:
	lwc1    $f6, 0x0080(s1)            ## 00000080
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f10                  ## $f10 = 1.00
	sub.s   $f8, $f4, $f6              
	addiu   a0, s0, 0x0284             ## a0 = 00000284
	lui     a1, 0x42DC                 ## a1 = 42DC0000
	c.lt.s  $f8, $f10                  
	nop
	bc1fl   lbl_8093CC18               
	addiu   a0, s0, 0x0284             ## a0 = 00000284
	jal     func_8006385C              
	lui     a2, 0x4040                 ## a2 = 40400000
	beq     $zero, $zero, lbl_8093CC28 
	lwc1    $f16, 0x0284(s0)           ## 00000284
	addiu   a0, s0, 0x0284             ## a0 = 00000284
lbl_8093CC18:
	lui     a1, 0x432A                 ## a1 = 432A0000
	jal     func_8006385C              
	lui     a2, 0x4120                 ## a2 = 41200000
	lwc1    $f16, 0x0284(s0)           ## 00000284
lbl_8093CC28:
	beq     $zero, $zero, lbl_8093CC44 
	swc1    $f16, 0x0020($sp)          
lbl_8093CC30:
	beql    v0, $zero, lbl_8093CC48    
	lh      a0, 0x00B6(s0)             ## 000000B6
	lw      t0, 0x0118(s0)             ## 00000118
	lwc1    $f18, 0x0090(t0)           ## 00000090
	swc1    $f18, 0x0020($sp)          
lbl_8093CC44:
	lh      a0, 0x00B6(s0)             ## 000000B6
lbl_8093CC48:
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addu    a0, a0, $at                
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lwc1    $f4, 0x0020($sp)           
	lwc1    $f8, 0x0024(s1)            ## 00000024
	lh      a0, 0x00B6(s0)             ## 000000B6
	mul.s   $f6, $f0, $f4              
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addu    a0, a0, $at                
	sll     a0, a0, 16                 
	sra     a0, a0, 16                 
	add.s   $f10, $f6, $f8             
	jal     func_80063684              ## coss?
	swc1    $f10, 0x0024(s0)           ## 00000024
	lwc1    $f16, 0x0020($sp)          
	lwc1    $f4, 0x002C(s1)            ## 0000002C
	mul.s   $f18, $f0, $f16            
	add.s   $f6, $f18, $f4             
	swc1    $f6, 0x002C(s0)            ## 0000002C
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_8093CCB0:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x0034($sp)            
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x119C             ## a0 = 0600119C
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC040                ## $at = C0400000
	mtc1    $at, $f8                   ## $f8 = -3.00
	cvt.s.w $f6, $f4                   
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0x119C             ## a1 = 0600119C
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	swc1    $f6, 0x0010($sp)           
	lui     a2, 0x3FC0                 ## a2 = 3FC00000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
	lbu     t7, 0x0184(s0)             ## 00000184
	lui     $at, 0x42DC                ## $at = 42DC0000
	bnel    t7, $zero, lbl_8093CD44    
	lh      t9, 0x00B6(s0)             ## 000000B6
	mtc1    $at, $f10                  ## $f10 = 110.00
	or      a0, s0, $zero              ## a0 = 00000000
	swc1    $f10, 0x0284(s0)           ## 00000284
	jal     func_8093CB84              
	lw      a1, 0x0034($sp)            
	lui     t8, %hi(func_8094040C)     ## t8 = 80940000
	addiu   t8, t8, %lo(func_8094040C) ## t8 = 8094040C
	sb      $zero, 0x0221(s0)          ## 00000221
	beq     $zero, $zero, lbl_8093CD48 
	sw      t8, 0x0134(s0)             ## 00000134
	lh      t9, 0x00B6(s0)             ## 000000B6
lbl_8093CD44:
	sh      t9, 0x0032(s0)             ## 00000032
lbl_8093CD48:
	mtc1    $zero, $f16                ## $f16 = 0.00
	addiu   t0, $zero, 0x000F          ## t0 = 0000000F
	sh      t0, 0x018A(s0)             ## 0000018A
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x3873          ## a1 = 00003873
	jal     func_80022FD0              
	swc1    $f16, 0x0068(s0)           ## 00000068
	lbu     t1, 0x0189(s0)             ## 00000189
	lui     t3, %hi(func_8093E22C)     ## t3 = 80940000
	addiu   t3, t3, %lo(func_8093E22C) ## t3 = 8093E22C
	andi    t2, t1, 0xFFFE             ## t2 = 00000000
	sb      t2, 0x0189(s0)             ## 00000189
	sw      t3, 0x0180(s0)             ## 00000180
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093CD90:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lui     $at, 0x4228                ## $at = 42280000
	mtc1    $at, $f8                   ## $f8 = 42.00
	lwc1    $f6, 0x0028(a3)            ## 00000028
	mtc1    $zero, $f4                 ## $f4 = 0.00
	sh      $zero, 0x018A(a3)          ## 0000018A
	add.s   $f10, $f6, $f8             
	lui     $at, %hi(var_80940B94)     ## $at = 80940000
	swc1    $f4, 0x0068(a3)            ## 00000068
	lw      t6, 0x0004(a3)             ## 00000004
	swc1    $f10, 0x0028(a3)           ## 00000028
	lwc1    $f16, %lo(var_80940B94)($at) 
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	lui     t8, %hi(func_8093E380)     ## t8 = 80940000
	addiu   t8, t8, %lo(func_8093E380) ## t8 = 8093E380
	and     t7, t6, $at                
	sw      t7, 0x0004(a3)             ## 00000004
	sb      $zero, 0x0189(a3)          ## 00000189
	sw      t8, 0x0180(a3)             ## 00000180
	swc1    $f16, 0x00BC(a3)           ## 000000BC
	sw      $zero, 0x0010($sp)         
	lw      a0, 0x0024($sp)            
	addiu   a1, $zero, 0x0C76          ## a1 = 00000C76
	jal     func_8006B6FC              
	addiu   a2, $zero, 0x03E7          ## a2 = 000003E7
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093CE10:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      a1, 0x001C($sp)            
	or      a1, a0, $zero              ## a1 = 00000000
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	lwc1    $f4, 0x0228(a1)            ## 00000228
	sh      $zero, 0x018A(a1)          ## 0000018A
	addiu   a2, a1, 0x0024             ## a2 = 00000024
	swc1    $f4, 0x0028(a1)            ## 00000028
	sw      a1, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_80013A84              
	addiu   a3, $zero, 0x0080          ## a3 = 00000080
	lw      a1, 0x0018($sp)            
	lui     t6, %hi(func_8093E53C)     ## t6 = 80940000
	addiu   t6, t6, %lo(func_8093E53C) ## t6 = 8093E53C
	sw      t6, 0x0180(a1)             ## 00000180
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093CE64:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      s0, 0x0030($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0034($sp)           
	lwc1    $f4, 0x0028(s0)            ## 00000028
	lw      a3, 0x0024(s0)             ## 00000024
	addiu   a0, a1, 0x1C24             ## a0 = 00001C24
	swc1    $f4, 0x0010($sp)           
	lwc1    $f6, 0x002C(s0)            ## 0000002C
	addiu   t6, $zero, 0x0400          ## t6 = 00000400
	sw      t6, 0x0024($sp)            
	sw      a1, 0x0054($sp)            
	sw      a0, 0x0038($sp)            
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0018($sp)         
	addiu   a2, $zero, 0x0091          ## a2 = 00000091
	jal     func_80025110              ## ActorSpawn
	swc1    $f6, 0x0014($sp)           
	sw      v0, 0x004C($sp)            
	lwc1    $f8, 0x0028(s0)            ## 00000028
	lw      a3, 0x0024(s0)             ## 00000024
	addiu   t7, $zero, 0x0800          ## t7 = 00000800
	swc1    $f8, 0x0010($sp)           
	lwc1    $f10, 0x002C(s0)           ## 0000002C
	sw      t7, 0x0024($sp)            
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0018($sp)         
	lw      a0, 0x0038($sp)            
	lw      a1, 0x0054($sp)            
	addiu   a2, $zero, 0x0091          ## a2 = 00000091
	jal     func_80025110              ## ActorSpawn
	swc1    $f10, 0x0014($sp)          
	sw      v0, 0x0048($sp)            
	lwc1    $f16, 0x0028(s0)           ## 00000028
	lw      a3, 0x0024(s0)             ## 00000024
	addiu   t8, $zero, 0x0C00          ## t8 = 00000C00
	swc1    $f16, 0x0010($sp)          
	lwc1    $f18, 0x002C(s0)           ## 0000002C
	sw      t8, 0x0024($sp)            
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0018($sp)         
	lw      a0, 0x0038($sp)            
	lw      a1, 0x0054($sp)            
	addiu   a2, $zero, 0x0091          ## a2 = 00000091
	jal     func_80025110              ## ActorSpawn
	swc1    $f18, 0x0014($sp)          
	lw      a3, 0x004C($sp)            
	or      a2, v0, $zero              ## a2 = 00000000
	lw      t9, 0x0048($sp)            
	beq     a3, $zero, lbl_8093CF4C    
	nop
	beq     t9, $zero, lbl_8093CF4C    
	nop
	bne     v0, $zero, lbl_8093CF98    
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
lbl_8093CF4C:
	beq     a3, $zero, lbl_8093CF60    
	or      a0, a3, $zero              ## a0 = 00000000
	jal     func_80020EB4              
	sw      a2, 0x0044($sp)            
	lw      a2, 0x0044($sp)            
lbl_8093CF60:
	lw      t0, 0x0048($sp)            
	beq     t0, $zero, lbl_8093CF78    
	or      a0, t0, $zero              ## a0 = 00000000
	jal     func_80020EB4              
	sw      a2, 0x0044($sp)            
	lw      a2, 0x0044($sp)            
lbl_8093CF78:
	beq     a2, $zero, lbl_8093CF88    
	nop
	jal     func_80020EB4              
	or      a0, a2, $zero              ## a0 = 00000000
lbl_8093CF88:
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8093CFD0 
	lw      $ra, 0x0034($sp)           
lbl_8093CF98:
	sw      s0, 0x0118(a2)             ## 00000118
	lw      t1, 0x0048($sp)            
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x0680             ## a1 = 06000680
	sw      s0, 0x0118(t1)             ## 00000118
	jal     func_8008D2D4              
	sw      s0, 0x0118(a3)             ## 00000118
	lui     t3, %hi(func_8093E678)     ## t3 = 80940000
	addiu   t2, $zero, 0x00A0          ## t2 = 000000A0
	addiu   t3, t3, %lo(func_8093E678) ## t3 = 8093E678
	sb      $zero, 0x0188(s0)          ## 00000188
	sb      t2, 0x0189(s0)             ## 00000189
	sw      t3, 0x0180(s0)             ## 00000180
	lw      $ra, 0x0034($sp)           
lbl_8093CFD0:
	lw      s0, 0x0030($sp)            
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093CFE0:
	addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
	sw      s0, 0x0048($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x004C($sp)           
	sw      a1, 0x0064($sp)            
	lw      t6, 0x0004(s0)             ## 00000004
	lbu     t1, 0x02AD(s0)             ## 000002AD
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	addiu   t8, $zero, 0x0064          ## t8 = 00000064
	addiu   t9, $zero, 0x0020          ## t9 = 00000020
	addiu   t0, $zero, 0x0003          ## t0 = 00000003
	and     t7, t6, $at                
	andi    t2, t1, 0xFFFB             ## t2 = 00000000
	sw      $zero, 0x0134(s0)          ## 00000134
	sw      t7, 0x0004(s0)             ## 00000004
	sh      t8, 0x018C(s0)             ## 0000018C
	sb      t9, 0x0189(s0)             ## 00000189
	sb      t0, 0x02B0(s0)             ## 000002B0
	sb      t2, 0x02AD(s0)             ## 000002AD
	lw      t3, 0x0064($sp)            
	lui     a2, %hi(var_80940B10)      ## a2 = 80940000
	addiu   a2, a2, %lo(var_80940B10)  ## a2 = 80940B10
	beq     t3, $zero, lbl_8093D0C8    
	lui     $at, 0x4234                ## $at = 42340000
	lwc1    $f4, 0x0024(s0)            ## 00000024
	mtc1    $at, $f8                   ## $f8 = 45.00
	or      a0, t3, $zero              ## a0 = 00000000
	swc1    $f4, 0x0054($sp)           
	lwc1    $f6, 0x0028(s0)            ## 00000028
	addiu   t3, $zero, 0x0009          ## t3 = 00000009
	addiu   t4, $zero, 0x0096          ## t4 = 00000096
	add.s   $f10, $f6, $f8             
	addiu   t5, $zero, 0x00FF          ## t5 = 000000FF
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	swc1    $f10, 0x0058($sp)          
	lwc1    $f16, 0x002C(s0)           ## 0000002C
	addiu   t8, $zero, 0x009B          ## t8 = 0000009B
	addiu   t9, $zero, 0x0096          ## t9 = 00000096
	addiu   t0, $zero, 0x0096          ## t0 = 00000096
	addiu   t1, $zero, 0x0096          ## t1 = 00000096
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	sw      t2, 0x0034($sp)            
	sw      t1, 0x0030($sp)            
	sw      t0, 0x002C($sp)            
	sw      t9, 0x0028($sp)            
	sw      t8, 0x0024($sp)            
	sw      $zero, 0x003C($sp)         
	sw      t3, 0x0038($sp)            
	sw      t7, 0x0020($sp)            
	sw      t6, 0x001C($sp)            
	sw      t5, 0x0018($sp)            
	sw      $zero, 0x0014($sp)         
	sw      t4, 0x0010($sp)            
	addiu   a1, $sp, 0x0054            ## a1 = FFFFFFF4
	or      a3, a2, $zero              ## a3 = 80940B10
	jal     func_8001E1D4              
	swc1    $f16, 0x005C($sp)          
lbl_8093D0C8:
	addiu   a0, s0, 0x028C             ## a0 = 0000028C
	or      a1, $zero, $zero           ## a1 = 00000000
	or      a2, $zero, $zero           ## a2 = 00000000
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_80065C98              
	sw      $zero, 0x0010($sp)         
	lui     t4, %hi(func_8093E6F4)     ## t4 = 80940000
	addiu   t4, t4, %lo(func_8093E6F4) ## t4 = 8093E6F4
	sw      t4, 0x0180(s0)             ## 00000180
	lw      $ra, 0x004C($sp)           
	lw      s0, 0x0048($sp)            
	addiu   $sp, $sp, 0x0060           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093D100:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lbu     t6, 0x0184(s0)             ## 00000184
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	lui     a1, 0x0600                 ## a1 = 06000000
	bne     t6, $at, lbl_8093D144      
	lui     a0, 0x0600                 ## a0 = 06000000
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008D1C4              
	addiu   a1, a1, 0x119C             ## a1 = 0600119C
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3873          ## a1 = 00003873
	beq     $zero, $zero, lbl_8093D180 
	nop
lbl_8093D144:
	jal     func_8008A194              
	addiu   a0, a0, 0x119C             ## a0 = 0000119C
	mtc1    v0, $f4                    ## $f4 = 0.00
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     a1, 0x0600                 ## a1 = 06000000
	cvt.s.w $f6, $f4                   
	addiu   t7, $zero, 0x0003          ## t7 = 00000003
	mfc1    a3, $f0                    
	sw      t7, 0x0014($sp)            
	addiu   a1, a1, 0x119C             ## a1 = 0600119C
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	swc1    $f6, 0x0010($sp)           
	lui     a2, 0x3F00                 ## a2 = 3F000000
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
lbl_8093D180:
	lui     t9, %hi(func_8093EDB0)     ## t9 = 80940000
	addiu   t8, $zero, 0x0020          ## t8 = 00000020
	addiu   t9, t9, %lo(func_8093EDB0) ## t9 = 8093EDB0
	sb      $zero, 0x0221(s0)          ## 00000221
	sb      t8, 0x0189(s0)             ## 00000189
	sw      t9, 0x0180(s0)             ## 00000180
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093D1AC:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x119C             ## a1 = 0600119C
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	lui     a2, 0xC0A0                 ## a2 = C0A00000
	jal     func_8008D21C              
	sw      a3, 0x0020($sp)            
	lw      a3, 0x0020($sp)            
	lui     t9, %hi(func_8093E870)     ## t9 = 80940000
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	lbu     t7, 0x0189(a3)             ## 00000189
	addiu   t9, t9, %lo(func_8093E870) ## t9 = 8093E870
	sb      t6, 0x0188(a3)             ## 00000188
	andi    t8, t7, 0xFF7F             ## t8 = 00000000
	sb      t8, 0x0189(a3)             ## 00000189
	sw      t9, 0x0180(a3)             ## 00000180
	sw      $zero, 0x0010($sp)         
	lw      a0, 0x0024($sp)            
	addiu   a1, $zero, 0x0C6C          ## a1 = 00000C6C
	jal     func_8006B6FC              
	addiu   a2, $zero, 0x009C          ## a2 = 0000009C
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093D21C:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x0D40             ## a1 = 06000D40
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008D328              
	lui     a2, 0xC040                 ## a2 = C0400000
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x0D40             ## a0 = 06000D40
	lw      v1, 0x0118(s0)             ## 00000118
	sll     t6, v0,  3                 
	subu    t6, t6, v0                 
	addiu   t7, t6, 0x0007             ## t7 = 00000007
	beq     v1, $zero, lbl_8093D28C    
	sh      t7, 0x018A(s0)             ## 0000018A
	lw      t9, 0x0024(v1)             ## 00000024
	lw      t0, 0x0118(s0)             ## 00000118
	sw      t9, 0x0024(s0)             ## 00000024
	lw      t8, 0x0028(v1)             ## 00000028
	sw      t8, 0x0028(s0)             ## 00000028
	lw      t9, 0x002C(v1)             ## 0000002C
	sw      t9, 0x002C(s0)             ## 0000002C
	lh      t1, 0x00B6(t0)             ## 000000B6
	beq     $zero, $zero, lbl_8093D2A0 
	sh      t1, 0x00B6(s0)             ## 000000B6
lbl_8093D28C:
	lh      t3, 0x018A(s0)             ## 0000018A
	lh      t2, 0x008A(s0)             ## 0000008A
	addiu   t4, t3, 0x0001             ## t4 = 00000001
	sh      t4, 0x018A(s0)             ## 0000018A
	sh      t2, 0x00B6(s0)             ## 000000B6
lbl_8093D2A0:
	lbu     t5, 0x0185(s0)             ## 00000185
	or      a0, s0, $zero              ## a0 = 00000000
	bne     t5, $zero, lbl_8093D2B8    
	nop
	jal     func_80022FD0              
	addiu   a1, $zero, 0x38EF          ## a1 = 000038EF
lbl_8093D2B8:
	lui     t6, %hi(func_8093E8DC)     ## t6 = 80940000
	addiu   t6, t6, %lo(func_8093E8DC) ## t6 = 8093E8DC
	sw      t6, 0x0180(s0)             ## 00000180
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093D2D8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x0D40             ## a1 = 06000D40
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	lui     a2, 0xC040                 ## a2 = C0400000
	jal     func_8008D328              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	lui     t3, %hi(func_8093EB30)     ## t3 = 80940000
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	lbu     t9, 0x0189(a3)             ## 00000189
	lw      t1, 0x0004(a3)             ## 00000004
	addiu   t7, $zero, 0x012C          ## t7 = 0000012C
	addiu   t8, $zero, 0x0003          ## t8 = 00000003
	addiu   t3, t3, %lo(func_8093EB30) ## t3 = 8093EB30
	ori     t0, t9, 0x0009             ## t0 = 00000009
	ori     t2, t1, 0x0001             ## t2 = 00000001
	sb      t6, 0x0221(a3)             ## 00000221
	sh      t7, 0x018A(a3)             ## 0000018A
	sh      t8, 0x018C(a3)             ## 0000018C
	sb      t0, 0x0189(a3)             ## 00000189
	sw      t2, 0x0004(a3)             ## 00000004
	sw      t3, 0x0180(a3)             ## 00000180
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093D34C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lbu     t6, 0x0184(a2)             ## 00000184
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	bne     t6, $at, lbl_8093D388      
	lui     a1, 0x0600                 ## a1 = 06000000
	lui     $at, 0xC41E                ## $at = C41E0000
	mtc1    $at, $f4                   ## $f4 = -632.00
	lui     $at, 0xC557                ## $at = C5570000
	mtc1    $at, $f6                   ## $f6 = -3440.00
	swc1    $f4, 0x0008(a2)            ## 00000008
	beq     $zero, $zero, lbl_8093D3A0 
	swc1    $f6, 0x0010(a2)            ## 00000010
lbl_8093D388:
	lui     $at, 0x443C                ## $at = 443C0000
	mtc1    $at, $f8                   ## $f8 = 752.00
	lui     $at, 0xC557                ## $at = C5570000
	mtc1    $at, $f10                  ## $f10 = -3440.00
	swc1    $f8, 0x0008(a2)            ## 00000008
	swc1    $f10, 0x0010(a2)           ## 00000010
lbl_8093D3A0:
	addiu   a1, a1, 0x0D40             ## a1 = 06000D40
	jal     func_8008D2D4              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f16                  ## $f16 = 5.00
	lbu     t7, 0x0189(a2)             ## 00000189
	lui     t9, %hi(func_8093EF2C)     ## t9 = 80940000
	addiu   t9, t9, %lo(func_8093EF2C) ## t9 = 8093EF2C
	ori     t8, t7, 0x000A             ## t8 = 0000000A
	sb      t8, 0x0189(a2)             ## 00000189
	sw      t9, 0x0180(a2)             ## 00000180
	swc1    $f16, 0x0068(a2)           ## 00000068
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093D3E4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x14CC             ## a1 = 060014CC
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	lui     a2, 0xC040                 ## a2 = C0400000
	jal     func_8008D328              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     t1, %hi(func_8093EFB4)     ## t1 = 80940000
	lbu     t7, 0x0189(a3)             ## 00000189
	lw      t9, 0x0004(a3)             ## 00000004
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	addiu   t1, t1, %lo(func_8093EFB4) ## t1 = 8093EFB4
	ori     t8, t7, 0x0015             ## t8 = 00000015
	ori     t0, t9, 0x0001             ## t0 = 00000001
	sb      t6, 0x0221(a3)             ## 00000221
	sb      t8, 0x0189(a3)             ## 00000189
	sw      t0, 0x0004(a3)             ## 00000004
	sw      t1, 0x0180(a3)             ## 00000180
	swc1    $f4, 0x0068(a3)            ## 00000068
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093D450:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	lui     $at, %hi(var_80940B04)     ## $at = 80940000
	sw      $zero, %lo(var_80940B04)($at) 
	lw      t9, 0x0008(a2)             ## 00000008
	lw      t8, 0x000C(a2)             ## 0000000C
	addiu   t6, $zero, 0x0080          ## t6 = 00000080
	sw      t9, 0x0224(a2)             ## 00000224
	lw      t9, 0x0010(a2)             ## 00000010
	addiu   t7, $zero, 0x0032          ## t7 = 00000032
	sb      $zero, 0x0221(a2)          ## 00000221
	sb      t6, 0x0189(a2)             ## 00000189
	sh      t7, 0x018A(a2)             ## 0000018A
	sw      t8, 0x0228(a2)             ## 00000228
	sw      t9, 0x022C(a2)             ## 0000022C
	lw      a0, 0x001C($sp)            
	sw      a2, 0x0018($sp)            
	addiu   a3, $zero, 0x0006          ## a3 = 00000006
	jal     func_800265D4              
	addiu   a1, a0, 0x1C24             ## a1 = 00001C24
	lw      a2, 0x0018($sp)            
	lui     t1, %hi(func_8093F048)     ## t1 = 80940000
	addiu   t1, t1, %lo(func_8093F048) ## t1 = 8093F048
	sw      t1, 0x0180(a2)             ## 00000180
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093D4C8:
	addiu   t6, $zero, 0x0008          ## t6 = 00000008
	sb      t6, 0x0188(a0)             ## 00000188
	or      v0, $zero, $zero           ## v0 = 00000000
	addiu   a1, a0, 0x0224             ## a1 = 00000224
	addiu   a2, a0, 0x0224             ## a2 = 00000224
	addiu   a3, a0, 0x0230             ## a3 = 00000230
	addiu   t0, a0, 0x023C             ## t0 = 0000023C
	addiu   t1, a0, 0x0248             ## t1 = 00000248
	addiu   v1, $zero, 0x0008          ## v1 = 00000008
lbl_8093D4EC:
	lw      t8, 0x0000(a2)             ## 00000224
	addiu   v0, v0, 0x0004             ## v0 = 00000004
	addiu   a1, a1, 0x0030             ## a1 = 00000254
	sw      t8, -0x0030(a1)            ## 00000224
	lw      t7, 0x0004(a2)             ## 00000228
	addiu   a3, a3, 0x0030             ## a3 = 00000260
	addiu   t0, t0, 0x0030             ## t0 = 0000026C
	sw      t7, -0x002C(a1)            ## 00000228
	lw      t8, 0x0008(a2)             ## 0000022C
	addiu   t1, t1, 0x0030             ## t1 = 00000278
	sw      t8, -0x0028(a1)            ## 0000022C
	lw      t2, 0x0000(a2)             ## 00000224
	sw      t2, -0x0030(a3)            ## 00000230
	lw      t9, 0x0004(a2)             ## 00000228
	sw      t9, -0x002C(a3)            ## 00000234
	lw      t2, 0x0008(a2)             ## 0000022C
	sw      t2, -0x0028(a3)            ## 00000238
	lw      t4, 0x0000(a2)             ## 00000224
	sw      t4, -0x0030(t0)            ## 0000023C
	lw      t3, 0x0004(a2)             ## 00000228
	sw      t3, -0x002C(t0)            ## 00000240
	lw      t4, 0x0008(a2)             ## 0000022C
	sw      t4, -0x0028(t0)            ## 00000244
	lw      t6, 0x0000(a2)             ## 00000224
	sw      t6, -0x0030(t1)            ## 00000248
	lw      t5, 0x0004(a2)             ## 00000228
	sw      t5, -0x002C(t1)            ## 0000024C
	lw      t6, 0x0008(a2)             ## 0000022C
	bne     v0, v1, lbl_8093D4EC       
	sw      t6, -0x0028(t1)            ## 00000250
	lui     t7, %hi(func_8093F0FC)     ## t7 = 80940000
	addiu   t7, t7, %lo(func_8093F0FC) ## t7 = 8093F0FC
	sw      t7, 0x0180(a0)             ## 00000180
	jr      $ra                        
	nop


func_8093D578:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x119C             ## a0 = 0600119C
	mtc1    v0, $f4                    ## $f4 = 0.00
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     a1, 0x0600                 ## a1 = 06000000
	cvt.s.w $f6, $f4                   
	lui     a2, 0x3F55                 ## a2 = 3F550000
	addiu   t6, $zero, 0x0003          ## t6 = 00000003
	mfc1    a3, $f0                    
	sw      t6, 0x0014($sp)            
	ori     a2, a2, 0x3F7D             ## a2 = 3F553F7D
	swc1    $f6, 0x0010($sp)           
	addiu   a1, a1, 0x119C             ## a1 = 0600119C
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
	lbu     v0, 0x0184(s0)             ## 00000184
	lui     t9, %hi(func_8093F150)     ## t9 = 80940000
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beq     v0, $zero, lbl_8093D5E8    
	addiu   t9, t9, %lo(func_8093F150) ## t9 = 8093F150
	bne     v0, $at, lbl_8093D5F4      
	addiu   t8, $zero, 0x004C          ## t8 = 0000004C
lbl_8093D5E8:
	addiu   t7, $zero, 0x0028          ## t7 = 00000028
	beq     $zero, $zero, lbl_8093D5F8 
	sh      t7, 0x018A(s0)             ## 0000018A
lbl_8093D5F4:
	sh      t8, 0x018A(s0)             ## 0000018A
lbl_8093D5F8:
	sb      $zero, 0x0188(s0)          ## 00000188
	lui     $at, %hi(var_80940B04)     ## $at = 80940000
	sw      $zero, %lo(var_80940B04)($at) 
	sw      t9, 0x0180(s0)             ## 00000180
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093D61C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x14CC             ## a1 = 060014CC
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	jal     func_8008D2D4              
	sw      a3, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	addiu   t7, $zero, 0x0020          ## t7 = 00000020
	addiu   t6, $zero, 0x0008          ## t6 = 00000008
	sh      t7, 0x018A(a0)             ## 0000018A
	sb      t6, 0x0188(a0)             ## 00000188
	lh      a1, 0x018A(a0)             ## 0000018A
	jal     func_8093C5F4              
	addiu   a2, a0, 0x0008             ## a2 = 00000008
	lw      a3, 0x0018($sp)            
	lui     t8, %hi(func_8093F2B0)     ## t8 = 80940000
	addiu   t8, t8, %lo(func_8093F2B0) ## t8 = 8093F2B0
	sw      t8, 0x0180(a3)             ## 00000180
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093D67C:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x0D40             ## a1 = 06000D40
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008D328              
	lui     a2, 0xC040                 ## a2 = C0400000
	lbu     v0, 0x0184(s0)             ## 00000184
	addiu   t6, $zero, 0x0028          ## t6 = 00000028
	addiu   t7, $zero, 0x005A          ## t7 = 0000005A
	addiu   t8, $zero, 0x0020          ## t8 = 00000020
	lui     t0, %hi(var_80940B1C)      ## t0 = 80940000
	sll     t9, v0,  1                 
	sb      $zero, 0x0188(s0)          ## 00000188
	sb      t6, 0x0189(s0)             ## 00000189
	sh      t7, 0x018A(s0)             ## 0000018A
	sb      t8, 0x0186(s0)             ## 00000186
	addu    t0, t0, t9                 
	lh      t0, %lo(var_80940B1C)(t0)  
	lwc1    $f4, 0x0028(s0)            ## 00000028
	addiu   a1, $zero, 0x001B          ## a1 = 0000001B
	sh      t0, 0x0032(s0)             ## 00000032
	bne     v0, $zero, lbl_8093D6F0    
	swc1    $f4, 0x000C(s0)            ## 0000000C
	jal     func_800204D0              
	lw      a0, 0x0024($sp)            
lbl_8093D6F0:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x2822          ## a1 = 00002822
	lui     t1, %hi(func_8093F320)     ## t1 = 80940000
	addiu   t1, t1, %lo(func_8093F320) ## t1 = 8093F320
	sw      t1, 0x0180(s0)             ## 00000180
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093D71C:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lw      t7, 0x0180(s0)             ## 00000180
	lui     t6, %hi(func_8093F320)     ## t6 = 80940000
	addiu   t6, t6, %lo(func_8093F320) ## t6 = 8093F320
	bne     t6, t7, lbl_8093D748       
	lw      v1, 0x1C44(a1)             ## 00001C44
	beq     $zero, $zero, lbl_8093D77C 
	lwc1    $f0, 0x000C(s0)            ## 0000000C
lbl_8093D748:
	lbu     v0, 0x0184(s0)             ## 00000184
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	beql    v0, $zero, lbl_8093D760    
	lui     $at, 0x40A0                ## $at = 40A00000
	bne     v0, $at, lbl_8093D770      
	lui     $at, 0x40A0                ## $at = 40A00000
lbl_8093D760:
	mtc1    $at, $f6                   ## $f6 = 5.00
	lwc1    $f4, 0x0028(v1)            ## 00000028
	beq     $zero, $zero, lbl_8093D77C 
	add.s   $f0, $f4, $f6              
lbl_8093D770:
	lui     $at, 0x4450                ## $at = 44500000
	mtc1    $at, $f0                   ## $f0 = 832.00
	nop
lbl_8093D77C:
	mfc1    a1, $f0                    
	addiu   a0, s0, 0x0028             ## a0 = 00000028
	lui     a2, 0x3F00                 ## a2 = 3F000000
	jal     func_80064280              
	lui     a3, 0x4040                 ## a3 = 40400000
	lbu     v0, 0x0186(s0)             ## 00000186
	addiu   t8, $zero, 0x0020          ## t8 = 00000020
	bne     v0, $zero, lbl_8093D7A8    
	nop
	sb      t8, 0x0186(s0)             ## 00000186
	andi    v0, t8, 0x00FF             ## v0 = 00000020
lbl_8093D7A8:
	beq     v0, $zero, lbl_8093D7BC    
	or      v1, v0, $zero              ## v1 = 00000020
	addiu   t9, v0, 0xFFFF             ## t9 = 0000001F
	sb      t9, 0x0186(s0)             ## 00000186
	andi    v1, t9, 0x00FF             ## v1 = 0000001F
lbl_8093D7BC:
	or      a0, v1, $zero              ## a0 = 0000001F
	sll     a0, a0, 27                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f0, 0x0020($sp)           
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f8                   ## $f8 = 2.00
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f10                  ## $f10 = 0.50
	lwc1    $f4, 0x0020($sp)           
	lbu     t0, 0x0221(s0)             ## 00000221
	mul.s   $f16, $f10, $f0            
	lwc1    $f10, 0x0028(s0)           ## 00000028
	addiu   $at, $zero, 0x00FF         ## $at = 000000FF
	add.s   $f18, $f8, $f16            
	mul.s   $f6, $f18, $f4             
	add.s   $f8, $f10, $f6             
	bne     t0, $at, lbl_8093D854      
	swc1    $f8, 0x0028(s0)            ## 00000028
	lw      v0, 0x0180(s0)             ## 00000180
	lui     t1, %hi(func_8093DC80)     ## t1 = 80940000
	addiu   t1, t1, %lo(func_8093DC80) ## t1 = 8093DC80
	beq     t1, v0, lbl_8093D854       
	lui     t2, %hi(func_8093DBB0)     ## t2 = 80940000
	addiu   t2, t2, %lo(func_8093DBB0) ## t2 = 8093DBB0
	beq     t2, v0, lbl_8093D854       
	lui     t3, %hi(func_8093E030)     ## t3 = 80940000
	addiu   t3, t3, %lo(func_8093E030) ## t3 = 8093E030
	bne     t3, v0, lbl_8093D84C       
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8002313C              
	addiu   a1, $zero, 0x3072          ## a1 = 00003072
	beq     $zero, $zero, lbl_8093D858 
	lw      $ra, 0x001C($sp)           
lbl_8093D84C:
	jal     func_8002313C              
	addiu   a1, $zero, 0x3071          ## a1 = 00003071
lbl_8093D854:
	lw      $ra, 0x001C($sp)           
lbl_8093D858:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093D868:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x0024($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	sw      a0, 0x001C($sp)            
	jal     func_8008C9C0              
	sw      a2, 0x0020($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_8008D6A8              
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	beq     v0, $zero, lbl_8093D8AC    
	lw      a2, 0x0020($sp)            
	lh      v0, 0x018A(a2)             ## 0000018A
	beq     v0, $zero, lbl_8093D8AC    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x018A(a2)             ## 0000018A
lbl_8093D8AC:
	lh      t7, 0x018A(a2)             ## 0000018A
	lui     $at, 0x4348                ## $at = 43480000
	beq     t7, $zero, lbl_8093D8D8    
	nop
	lwc1    $f4, 0x0090(a2)            ## 00000090
	mtc1    $at, $f6                   ## $f6 = 200.00
	nop
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_8093D8E4               
	lw      $ra, 0x0014($sp)           
lbl_8093D8D8:
	jal     func_8093C77C              
	or      a0, a2, $zero              ## a0 = 00000000
	lw      $ra, 0x0014($sp)           
lbl_8093D8E4:
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093D8F0:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0034($sp)            
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a0, 0x0028($sp)            
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	sw      a0, 0x0024($sp)            
	jal     func_8006385C              
	lui     a1, 0x3F80                 ## a1 = 3F800000
	lw      a0, 0x0028($sp)            
	jal     func_8008D6A8              
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	beq     v0, $zero, lbl_8093D94C    
	lui     $at, 0x4348                ## $at = 43480000
	lh      v0, 0x018A(s0)             ## 0000018A
	beq     v0, $zero, lbl_8093D94C    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x018A(s0)             ## 0000018A
lbl_8093D94C:
	lwc1    $f4, 0x0090(s0)            ## 00000090
	mtc1    $at, $f6                   ## $f6 = 200.00
	lui     $at, 0x40A0                ## $at = 40A00000
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_8093D9A4               
	lh      t7, 0x018A(s0)             ## 0000018A
	lwc1    $f8, 0x0094(s0)            ## 00000094
	mtc1    $at, $f10                  ## $f10 = 5.00
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f16                  ## $f16 = 30.00
	add.s   $f0, $f8, $f10             
	abs.s   $f0, $f0                   
	c.lt.s  $f0, $f16                  
	nop
	bc1fl   lbl_8093D9A4               
	lh      t7, 0x018A(s0)             ## 0000018A
	jal     func_8093C7F4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8093D9D0 
	lhu     t8, 0x0088(s0)             ## 00000088
	lh      t7, 0x018A(s0)             ## 0000018A
lbl_8093D9A4:
	lw      a0, 0x0024($sp)            
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	bne     t7, $zero, lbl_8093D9CC    
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	jal     func_8006385C              
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	beql    v0, $zero, lbl_8093D9D0    
	lhu     t8, 0x0088(s0)             ## 00000088
	jal     func_8093C720              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8093D9CC:
	lhu     t8, 0x0088(s0)             ## 00000088
lbl_8093D9D0:
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x0008             ## a1 = 00000008
	andi    t9, t8, 0x0008             ## t9 = 00000000
	beq     t9, $zero, lbl_8093DA0C    
	nop
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8002140C              
	addiu   a1, s0, 0x0008             ## a1 = 00000008
	sll     a1, v0, 16                 
	sra     a1, a1, 16                 
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	jal     func_80063704              
	addiu   a2, $zero, 0x071C          ## a2 = 0000071C
	beq     $zero, $zero, lbl_8093DA50 
	lw      $ra, 0x001C($sp)           
lbl_8093DA0C:
	jal     func_80021528              
	sw      a1, 0x0028($sp)            
	lui     $at, 0x4396                ## $at = 43960000
	mtc1    $at, $f18                  ## $f18 = 300.00
	lw      a1, 0x0028($sp)            
	c.lt.s  $f18, $f0                  
	nop
	bc1fl   lbl_8093DA50               
	lw      $ra, 0x001C($sp)           
	jal     func_8002140C              
	or      a0, s0, $zero              ## a0 = 00000000
	sll     a1, v0, 16                 
	sra     a1, a1, 16                 
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	jal     func_80063704              
	addiu   a2, $zero, 0x071C          ## a2 = 0000071C
	lw      $ra, 0x001C($sp)           
lbl_8093DA50:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093DA60:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lw      t6, 0x1C44(a1)             ## 00001C44
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      t6, 0x0024($sp)            
	lw      t8, 0x0024($sp)            
	lh      t7, 0x008A(s0)             ## 0000008A
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	lh      t9, 0x00B6(t8)             ## 000000B6
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	subu    v0, t7, t9                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	sh      v0, 0x0022($sp)            
	jal     func_8006385C              
	lui     a1, 0x4000                 ## a1 = 40000000
	lh      v0, 0x0022($sp)            
	slti    $at, v0, 0x3001            
	bnel    $at, $zero, lbl_8093DAE8   
	slti    $at, v0, 0xD000            
	lh      a1, 0x008A(s0)             ## 0000008A
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	addiu   a2, $zero, 0x071C          ## a2 = 0000071C
	addiu   a1, a1, 0x3000             ## a1 = 00003000
	sll     a1, a1, 16                 
	jal     func_80063704              
	sra     a1, a1, 16                 
	beq     $zero, $zero, lbl_8093DB24 
	lui     $at, 0x4320                ## $at = 43200000
	slti    $at, v0, 0xD000            
lbl_8093DAE8:
	beq     $at, $zero, lbl_8093DB14   
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	lh      a1, 0x008A(s0)             ## 0000008A
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	addiu   a2, $zero, 0x071C          ## a2 = 0000071C
	addiu   a1, a1, 0xD000             ## a1 = FFFFD000
	sll     a1, a1, 16                 
	jal     func_80063704              
	sra     a1, a1, 16                 
	beq     $zero, $zero, lbl_8093DB24 
	lui     $at, 0x4320                ## $at = 43200000
lbl_8093DB14:
	lh      a1, 0x008A(s0)             ## 0000008A
	jal     func_80063704              
	addiu   a2, $zero, 0x071C          ## a2 = 0000071C
	lui     $at, 0x4320                ## $at = 43200000
lbl_8093DB24:
	mtc1    $at, $f4                   ## $f4 = 160.00
	lwc1    $f2, 0x0090(s0)            ## 00000090
	lui     $at, 0x40A0                ## $at = 40A00000
	c.lt.s  $f2, $f4                   
	nop
	bc1fl   lbl_8093DB7C               
	lui     $at, 0x4370                ## $at = 43700000
	lwc1    $f6, 0x0094(s0)            ## 00000094
	mtc1    $at, $f8                   ## $f8 = 240.00
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f10                  ## $f10 = 30.00
	add.s   $f0, $f6, $f8              
	abs.s   $f0, $f0                   
	c.lt.s  $f0, $f10                  
	nop
	bc1fl   lbl_8093DB7C               
	lui     $at, 0x4370                ## $at = 43700000
	jal     func_8093C808              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8093DBA0 
	lw      $ra, 0x001C($sp)           
	lui     $at, 0x4370                ## $at = 43700000
lbl_8093DB7C:
	mtc1    $at, $f16                  ## $f16 = 240.00
	nop
	c.lt.s  $f16, $f2                  
	nop
	bc1fl   lbl_8093DBA0               
	lw      $ra, 0x001C($sp)           
	jal     func_8093C77C              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x001C($sp)           
lbl_8093DBA0:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093DBB0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f6                   ## $f6 = 1.00
	lh      v0, 0x018A(a2)             ## 0000018A
	lui     $at, 0x4040                ## $at = 40400000
	or      a0, a2, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_8093DBF4    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x018A(a2)             ## 0000018A
	lh      v0, 0x018A(a2)             ## 0000018A
lbl_8093DBF4:
	lwc1    $f4, 0x014C(a2)            ## 0000014C
	mtc1    $at, $f10                  ## $f10 = 3.00
	mtc1    v0, $f18                   ## $f18 = 0.00
	add.s   $f8, $f4, $f6              
	lh      t7, 0x00B6(a2)             ## 000000B6
	lui     $at, 0x43C0                ## $at = 43C00000
	cvt.s.w $f4, $f18                  
	mul.s   $f16, $f8, $f10            
	mtc1    $at, $f8                   ## $f8 = 384.00
	mtc1    t7, $f18                   ## $f18 = 0.00
	addiu   $at, $zero, 0x0012         ## $at = 00000012
	addiu   a1, $zero, 0x38EE          ## a1 = 000038EE
	sub.s   $f6, $f16, $f4             
	cvt.s.w $f16, $f18                 
	mul.s   $f10, $f8, $f6             
	add.s   $f4, $f16, $f10            
	trunc.w.s $f8, $f4                   
	mfc1    t9, $f8                    
	beq     v0, $at, lbl_8093DC50      
	sh      t9, 0x00B6(a2)             ## 000000B6
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	bne     v0, $at, lbl_8093DC60      
	nop
lbl_8093DC50:
	jal     func_80022FD0              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	lh      v0, 0x018A(a2)             ## 0000018A
lbl_8093DC60:
	bnel    v0, $zero, lbl_8093DC74    
	lw      $ra, 0x0014($sp)           
	jal     func_8093C89C              
	or      a0, a2, $zero              ## a0 = 00000000
	lw      $ra, 0x0014($sp)           
lbl_8093DC74:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093DC80:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0034($sp)            
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a0, 0x0024($sp)            
	lw      a0, 0x0024($sp)            
	jal     func_8008D6A8              
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	beq     v0, $zero, lbl_8093DCC4    
	lui     $at, 0x43C0                ## $at = 43C00000
	lh      v0, 0x018A(s0)             ## 0000018A
	beq     v0, $zero, lbl_8093DCC4    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x018A(s0)             ## 0000018A
lbl_8093DCC4:
	mtc1    $at, $f4                   ## $f4 = 384.00
	lwc1    $f6, 0x014C(s0)            ## 0000014C
	lh      t7, 0x00B6(s0)             ## 000000B6
	lui     $at, 0x4040                ## $at = 40400000
	mul.s   $f8, $f4, $f6              
	mtc1    $at, $f10                  ## $f10 = 3.00
	mtc1    t7, $f18                   ## $f18 = 0.00
	lh      t0, 0x018A(s0)             ## 0000018A
	cvt.s.w $f4, $f18                  
	mul.s   $f16, $f8, $f10            
	add.s   $f6, $f4, $f16             
	trunc.w.s $f8, $f6                   
	mfc1    t9, $f8                    
	bne     t0, $zero, lbl_8093DD78    
	sh      t9, 0x00B6(s0)             ## 000000B6
	lh      t1, 0x00B6(s0)             ## 000000B6
	lh      t2, 0x0032(s0)             ## 00000032
	subu    v0, t1, t2                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	bltz    v0, lbl_8093DD24           
	subu    v1, $zero, v0              
	beq     $zero, $zero, lbl_8093DD24 
	or      v1, v0, $zero              ## v1 = 00000000
lbl_8093DD24:
	slti    $at, v1, 0x1000            
	beql    $at, $zero, lbl_8093DD7C   
	lw      a0, 0x0024($sp)            
	lbu     t3, 0x0184(s0)             ## 00000184
	addiu   t4, $zero, 0x0003          ## t4 = 00000003
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t3, $zero, lbl_8093DD64    
	nop
	lbu     t5, 0x02AD(s0)             ## 000002AD
	sb      t4, 0x02B0(s0)             ## 000002B0
	or      a0, s0, $zero              ## a0 = 00000000
	andi    t6, t5, 0xFFFB             ## t6 = 00000000
	jal     func_8093C77C              
	sb      t6, 0x02AD(s0)             ## 000002AD
	beq     $zero, $zero, lbl_8093DD7C 
	lw      a0, 0x0024($sp)            
lbl_8093DD64:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x38EF          ## a1 = 000038EF
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8093CFE0              
	lw      a1, 0x0034($sp)            
lbl_8093DD78:
	lw      a0, 0x0024($sp)            
lbl_8093DD7C:
	jal     func_8008D6A8              
	lui     a1, 0x3F80                 ## a1 = 3F800000
	beq     v0, $zero, lbl_8093DD94    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x38EE          ## a1 = 000038EE
lbl_8093DD94:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093DDA8:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f6                   ## $f6 = 10.00
	lwc1    $f4, 0x0068(s0)            ## 00000068
	lh      t6, 0x00B6(s0)             ## 000000B6
	lui     $at, 0x4300                ## $at = 43000000
	mul.s   $f8, $f4, $f6              
	mtc1    $at, $f10                  ## $f10 = 128.00
	mtc1    t6, $f18                   ## $f18 = 0.00
	lui     a2, 0x3DCC                 ## a2 = 3DCC0000
	ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	cvt.s.w $f4, $f18                  
	mul.s   $f16, $f8, $f10            
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	sub.s   $f6, $f4, $f16             
	trunc.w.s $f8, $f6                   
	mfc1    t8, $f8                    
	jal     func_8006385C              
	sh      t8, 0x00B6(s0)             ## 000000B6
	beql    v0, $zero, lbl_8093DE54    
	lw      $ra, 0x001C($sp)           
	lbu     t0, 0x0184(s0)             ## 00000184
	lh      t9, 0x00B6(s0)             ## 000000B6
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t0, $zero, lbl_8093DE3C    
	sh      t9, 0x0032(s0)             ## 00000032
	jal     func_8093C77C              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8093DE54 
	lw      $ra, 0x001C($sp)           
lbl_8093DE3C:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x38EF          ## a1 = 000038EF
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8093CFE0              
	lw      a1, 0x0024($sp)            
	lw      $ra, 0x001C($sp)           
lbl_8093DE54:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093DE64:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beql    v0, $zero, lbl_8093DF04    
	lbu     v0, 0x0185(s0)             ## 00000185
	lw      t6, 0x0004(s0)             ## 00000004
	andi    t7, t6, 0x8000             ## t7 = 00000000
	bnel    t7, $zero, lbl_8093DF04    
	lbu     v0, 0x0185(s0)             ## 00000185
	lbu     t8, 0x00AF(s0)             ## 000000AF
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t8, $zero, lbl_8093DEF8    
	nop
	lbu     t9, 0x0184(s0)             ## 00000184
	beql    t9, $zero, lbl_8093DEC8    
	lbu     t0, 0x0185(s0)             ## 00000185
	jal     func_8093CA60              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8093DF04 
	lbu     v0, 0x0185(s0)             ## 00000185
	lbu     t0, 0x0185(s0)             ## 00000185
lbl_8093DEC8:
	or      a1, $zero, $zero           ## a1 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t0, $zero, lbl_8093DEE8    
	nop
	jal     func_8093CFE0              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8093DF04 
	lbu     v0, 0x0185(s0)             ## 00000185
lbl_8093DEE8:
	jal     func_8093CFE0              
	lw      a1, 0x0024($sp)            
	beq     $zero, $zero, lbl_8093DF04 
	lbu     v0, 0x0185(s0)             ## 00000185
lbl_8093DEF8:
	jal     func_8093CD90              
	lw      a1, 0x0024($sp)            
	lbu     v0, 0x0185(s0)             ## 00000185
lbl_8093DF04:
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	addiu   a0, s0, 0x00B6             ## a0 = 000000B6
	beql    v0, $zero, lbl_8093E004    
	lbu     t5, 0x0184(s0)             ## 00000184
	bnel    v0, $at, lbl_8093DF28      
	addiu   v0, $zero, 0x0400          ## v0 = 00000400
	beq     $zero, $zero, lbl_8093DF28 
	addiu   v0, $zero, 0x0800          ## v0 = 00000800
	addiu   v0, $zero, 0x0400          ## v0 = 00000400
lbl_8093DF28:
	lw      t1, 0x0118(s0)             ## 00000118
	sll     a2, v0, 16                 
	sra     a2, a2, 16                 
	jal     func_80063704              
	lh      a1, 0x00B6(t1)             ## 000000B6
	lwc1    $f0, 0x014C(s0)            ## 0000014C
	lwc1    $f4, 0x0154(s0)            ## 00000154
	lui     $at, 0x437F                ## $at = 437F0000
	mtc1    $at, $f8                   ## $f8 = 255.00
	sub.s   $f6, $f0, $f4              
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	lui     $at, 0x4F00                ## $at = 4F000000
	mul.s   $f10, $f6, $f8             
	div.s   $f16, $f10, $f0            
	cfc1    t2, $f31                   
	ctc1    t3, $f31                   
	nop
	cvt.w.s $f18, $f16                 
	cfc1    t3, $f31                   
	nop
	andi    t3, t3, 0x0078             ## t3 = 00000000
	beql    t3, $zero, lbl_8093DFCC    
	mfc1    t3, $f18                   
	mtc1    $at, $f18                  ## $f18 = 2147484000.00
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	sub.s   $f18, $f16, $f18           
	ctc1    t3, $f31                   
	nop
	cvt.w.s $f18, $f18                 
	cfc1    t3, $f31                   
	nop
	andi    t3, t3, 0x0078             ## t3 = 00000000
	bne     t3, $zero, lbl_8093DFC0    
	nop
	mfc1    t3, $f18                   
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_8093DFD8 
	or      t3, t3, $at                ## t3 = 80000000
lbl_8093DFC0:
	beq     $zero, $zero, lbl_8093DFD8 
	addiu   t3, $zero, 0xFFFF          ## t3 = FFFFFFFF
	mfc1    t3, $f18                   
lbl_8093DFCC:
	nop
	bltz    t3, lbl_8093DFC0           
	nop
lbl_8093DFD8:
	lw      t4, 0x0118(s0)             ## 00000118
	sb      t3, 0x0221(s0)             ## 00000221
	ctc1    t2, $f31                   
	lwc1    $f4, 0x0028(t4)            ## 00000028
	or      a0, s0, $zero              ## a0 = 00000000
	swc1    $f4, 0x0028(s0)            ## 00000028
	jal     func_8093CB84              
	lw      a1, 0x0024($sp)            
	beq     $zero, $zero, lbl_8093E020 
	lw      $ra, 0x001C($sp)           
	lbu     t5, 0x0184(s0)             ## 00000184
lbl_8093E004:
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	beql    t5, $zero, lbl_8093E020    
	lw      $ra, 0x001C($sp)           
	jal     func_8006385C              
	lui     a2, 0x3F00                 ## a2 = 3F000000
	lw      $ra, 0x001C($sp)           
lbl_8093E020:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093E030:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a0, 0x0024($sp)            
	lh      a1, 0x008A(s0)             ## 0000008A
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	addu    a1, a1, $at                
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	jal     func_80063704              
	addiu   a2, $zero, 0x071C          ## a2 = 0000071C
	lw      a0, 0x0024($sp)            
	jal     func_8008D6A8              
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	beql    v0, $zero, lbl_8093E098    
	lhu     t7, 0x0088(s0)             ## 00000088
	lh      v0, 0x018A(s0)             ## 0000018A
	beq     v0, $zero, lbl_8093E094    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x018A(s0)             ## 0000018A
lbl_8093E094:
	lhu     t7, 0x0088(s0)             ## 00000088
lbl_8093E098:
	andi    t8, t7, 0x0008             ## t8 = 00000000
	beql    t8, $zero, lbl_8093E0CC    
	lh      t2, 0x018A(s0)             ## 0000018A
	lbu     t0, 0x0189(s0)             ## 00000189
	lh      t9, 0x00B6(s0)             ## 000000B6
	or      a0, s0, $zero              ## a0 = 00000000
	ori     t1, t0, 0x0002             ## t1 = 00000002
	sb      t1, 0x0189(s0)             ## 00000189
	jal     func_8093CAD4              
	sh      t9, 0x0032(s0)             ## 00000032
	beq     $zero, $zero, lbl_8093E104 
	lw      $ra, 0x001C($sp)           
	lh      t2, 0x018A(s0)             ## 0000018A
lbl_8093E0CC:
	lui     $at, 0x4370                ## $at = 43700000
	bnel    t2, $zero, lbl_8093E104    
	lw      $ra, 0x001C($sp)           
	mtc1    $at, $f4                   ## $f4 = 240.00
	lwc1    $f6, 0x0090(s0)            ## 00000090
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_8093E104               
	lw      $ra, 0x001C($sp)           
	lh      t3, 0x00B6(s0)             ## 000000B6
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8093C77C              
	sh      t3, 0x0032(s0)             ## 00000032
	lw      $ra, 0x001C($sp)           
lbl_8093E104:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093E114:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      a1, 0x001C($sp)            
	or      a1, a0, $zero              ## a1 = 00000000
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	addiu   a0, a1, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a1, 0x0018($sp)            
	beq     v0, $zero, lbl_8093E15C    
	lw      a1, 0x0018($sp)            
	lui     t6, 0x0006                 ## t6 = 00060000
	ori     t6, t6, 0x0001             ## t6 = 00060001
	sb      $zero, 0x0221(a1)          ## 00000221
	sw      t6, 0x02BC(a1)             ## 000002BC
	jal     func_8093C77C              
	or      a0, a1, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8093E220 
	lw      $ra, 0x0014($sp)           
lbl_8093E15C:
	lwc1    $f4, 0x014C(a1)            ## 0000014C
	lwc1    $f10, 0x0154(a1)           ## 00000154
	lui     $at, 0x437F                ## $at = 437F0000
	trunc.w.s $f6, $f4                   
	mtc1    $at, $f18                  ## $f18 = 255.00
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	lui     $at, 0x4F00                ## $at = 4F000000
	mfc1    v0, $f6                    
	nop
	mtc1    v0, $f8                    ## $f8 = 0.00
	nop
	cvt.s.w $f0, $f8                   
	sub.s   $f16, $f0, $f10            
	mul.s   $f4, $f16, $f18            
	div.s   $f6, $f4, $f0              
	cfc1    t8, $f31                   
	ctc1    t9, $f31                   
	nop
	cvt.w.s $f8, $f6                   
	cfc1    t9, $f31                   
	nop
	andi    t9, t9, 0x0078             ## t9 = 00000000
	beql    t9, $zero, lbl_8093E204    
	mfc1    t9, $f8                    
	mtc1    $at, $f8                   ## $f8 = 2147484000.00
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	sub.s   $f8, $f6, $f8              
	ctc1    t9, $f31                   
	nop
	cvt.w.s $f8, $f8                   
	cfc1    t9, $f31                   
	nop
	andi    t9, t9, 0x0078             ## t9 = 00000000
	bne     t9, $zero, lbl_8093E1F8    
	nop
	mfc1    t9, $f8                    
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_8093E210 
	or      t9, t9, $at                ## t9 = 80000000
lbl_8093E1F8:
	beq     $zero, $zero, lbl_8093E210 
	addiu   t9, $zero, 0xFFFF          ## t9 = FFFFFFFF
	mfc1    t9, $f8                    
lbl_8093E204:
	nop
	bltz    t9, lbl_8093E1F8           
	nop
lbl_8093E210:
	ctc1    t8, $f31                   
	sb      t9, 0x0221(a1)             ## 00000221
	nop
	lw      $ra, 0x0014($sp)           
lbl_8093E220:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093E22C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a2, 0x0018($sp)            
	beq     v0, $zero, lbl_8093E2B8    
	lw      a2, 0x0018($sp)            
	lbu     t7, 0x0184(a2)             ## 00000184
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	sb      t6, 0x0221(a2)             ## 00000221
	beq     t7, $zero, lbl_8093E2A8    
	lui     t0, 0x4FC7                 ## t0 = 4FC70000
	lbu     t8, 0x0189(a2)             ## 00000189
	lh      v0, 0x018A(a2)             ## 0000018A
	ori     t0, t0, 0xFFEA             ## t0 = 4FC7FFEA
	ori     t9, t8, 0x0001             ## t9 = 00000001
	sb      t9, 0x0189(a2)             ## 00000189
	beq     v0, $zero, lbl_8093E28C    
	sw      t0, 0x02BC(a2)             ## 000002BC
	addiu   t1, v0, 0xFFFF             ## t1 = FFFFFFFF
	sh      t1, 0x018A(a2)             ## 0000018A
	lh      v0, 0x018A(a2)             ## 0000018A
lbl_8093E28C:
	bne     v0, $zero, lbl_8093E370    
	addiu   t2, $zero, 0x0014          ## t2 = 00000014
	sb      t2, 0x0187(a2)             ## 00000187
	jal     func_8093C77C              
	or      a0, a2, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8093E374 
	lw      $ra, 0x0014($sp)           
lbl_8093E2A8:
	jal     func_8093D2D8              
	or      a0, a2, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8093E374 
	lw      $ra, 0x0014($sp)           
lbl_8093E2B8:
	lui     $at, 0x437F                ## $at = 437F0000
	mtc1    $at, $f6                   ## $f6 = 255.00
	lwc1    $f4, 0x0154(a2)            ## 00000154
	lwc1    $f10, 0x014C(a2)           ## 0000014C
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	mul.s   $f8, $f4, $f6              
	lui     $at, 0x4F00                ## $at = 4F000000
	or      a0, a2, $zero              ## a0 = 00000000
	div.s   $f16, $f8, $f10            
	cfc1    t3, $f31                   
	ctc1    t4, $f31                   
	nop
	cvt.w.s $f18, $f16                 
	cfc1    t4, $f31                   
	nop
	andi    t4, t4, 0x0078             ## t4 = 00000000
	beql    t4, $zero, lbl_8093E348    
	mfc1    t4, $f18                   
	mtc1    $at, $f18                  ## $f18 = 2147484000.00
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	sub.s   $f18, $f16, $f18           
	ctc1    t4, $f31                   
	nop
	cvt.w.s $f18, $f18                 
	cfc1    t4, $f31                   
	nop
	andi    t4, t4, 0x0078             ## t4 = 00000000
	bne     t4, $zero, lbl_8093E33C    
	nop
	mfc1    t4, $f18                   
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_8093E354 
	or      t4, t4, $at                ## t4 = 80000000
lbl_8093E33C:
	beq     $zero, $zero, lbl_8093E354 
	addiu   t4, $zero, 0xFFFF          ## t4 = FFFFFFFF
	mfc1    t4, $f18                   
lbl_8093E348:
	nop
	bltz    t4, lbl_8093E33C           
	nop
lbl_8093E354:
	lbu     t5, 0x0184(a2)             ## 00000184
	ctc1    t3, $f31                   
	sb      t4, 0x0221(a2)             ## 00000221
	bnel    t5, $zero, lbl_8093E374    
	lw      $ra, 0x0014($sp)           
	jal     func_8093CB84              
	lw      a1, 0x001C($sp)            
lbl_8093E370:
	lw      $ra, 0x0014($sp)           
lbl_8093E374:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093E380:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lbu     v0, 0x0188(s0)             ## 00000188
	lh      t6, 0x018A(s0)             ## 0000018A
	addiu   t8, $zero, 0x0008          ## t8 = 00000008
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	slti    $at, v0, 0x0009            
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	bne     $at, $zero, lbl_8093E3BC   
	sh      t7, 0x018A(s0)             ## 0000018A
	beq     $zero, $zero, lbl_8093E3C0 
	sb      t8, 0x0188(s0)             ## 00000188
lbl_8093E3BC:
	sb      v0, 0x0188(s0)             ## 00000188
lbl_8093E3C0:
	lbu     v0, 0x0188(s0)             ## 00000188
	addiu   v0, v0, 0xFFFF             ## v0 = 00000000
	blez    v0, lbl_8093E40C           
	sll     t9, v0,  2                 
	subu    t9, t9, v0                 
	sll     t9, t9,  2                 
	addu    a1, s0, t9                 
	addiu   v1, a1, 0x0224             ## v1 = 00000224
	addiu   a0, a1, 0x0218             ## a0 = 00000218
lbl_8093E3E4:
	lw      t1, 0x0000(a0)             ## 00000218
	addiu   v0, v0, 0xFFFF             ## v0 = FFFFFFFF
	addiu   v1, v1, 0xFFF4             ## v1 = 00000218
	sw      t1, 0x000C(v1)             ## 00000224
	lw      t0, 0x0004(a0)             ## 0000021C
	addiu   a0, a0, 0xFFF4             ## a0 = 0000020C
	sw      t0, 0x0010(v1)             ## 00000228
	lw      t1, 0x0014(a0)             ## 00000220
	bgtz    v0, lbl_8093E3E4           
	sw      t1, 0x0014(v1)             ## 0000022C
lbl_8093E40C:
	lh      t3, 0x018A(s0)             ## 0000018A
	lh      t2, 0x00B6(s0)             ## 000000B6
	sll     t4, t3,  2                 
	subu    t4, t4, t3                 
	sll     t4, t4, 12                 
	addu    a0, t2, t4                 
	addiu   a0, a0, 0xC000             ## a0 = FFFFC20C
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lui     $at, %hi(var_80940B98)     ## $at = 80940000
	lwc1    $f4, %lo(var_80940B98)($at) 
	lwc1    $f6, 0x0050(s0)            ## 00000050
	lh      t6, 0x018A(s0)             ## 0000018A
	lwc1    $f16, 0x0024(s0)           ## 00000024
	mul.s   $f8, $f4, $f6              
	lh      t5, 0x00B6(s0)             ## 000000B6
	sll     t7, t6,  2                 
	subu    t7, t7, t6                 
	sll     t7, t7, 12                 
	addu    a0, t5, t7                 
	addiu   a0, a0, 0xC000             ## a0 = FFFFC000
	mul.s   $f10, $f0, $f8             
	sll     a0, a0, 16                 
	sra     a0, a0, 16                 
	add.s   $f18, $f10, $f16           
	jal     func_80063684              ## coss?
	swc1    $f18, 0x0224(s0)           ## 00000224
	lui     $at, %hi(var_80940B9C)     ## $at = 80940000
	lwc1    $f4, %lo(var_80940B9C)($at) 
	lwc1    $f6, 0x0050(s0)            ## 00000050
	lwc1    $f16, 0x002C(s0)           ## 0000002C
	lh      v0, 0x018A(s0)             ## 0000018A
	mul.s   $f8, $f4, $f6              
	slti    $at, v0, 0x0008            
	mul.s   $f10, $f0, $f8             
	add.s   $f18, $f10, $f16           
	beq     $at, $zero, lbl_8093E4C4   
	swc1    $f18, 0x022C(s0)           ## 0000022C
	lui     $at, 0x4110                ## $at = 41100000
	mtc1    $at, $f6                   ## $f6 = 9.00
	lwc1    $f4, 0x0234(s0)            ## 00000234
	lh      v0, 0x018A(s0)             ## 0000018A
	sub.s   $f8, $f4, $f6              
	beq     $zero, $zero, lbl_8093E514 
	swc1    $f8, 0x0228(s0)            ## 00000228
lbl_8093E4C4:
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f16                  ## $f16 = 2.00
	lwc1    $f10, 0x0234(s0)           ## 00000234
	slti    $at, v0, 0x0010            
	addiu   a0, s0, 0x0050             ## a0 = 00000050
	add.s   $f18, $f10, $f16           
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	lui     a2, 0x3A83                 ## a2 = 3A830000
	bne     $at, $zero, lbl_8093E514   
	swc1    $f18, 0x0228(s0)           ## 00000228
	jal     func_8006385C              
	ori     a2, a2, 0x126F             ## a2 = 3A83126F
	beq     v0, $zero, lbl_8093E504    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8093CE10              
	lw      a1, 0x0024($sp)            
lbl_8093E504:
	lwc1    $f0, 0x0050(s0)            ## 00000050
	lh      v0, 0x018A(s0)             ## 0000018A
	swc1    $f0, 0x0058(s0)            ## 00000058
	swc1    $f0, 0x0054(s0)            ## 00000054
lbl_8093E514:
	addiu   $at, $zero, 0x0010         ## $at = 00000010
	bne     v0, $at, lbl_8093E528      
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3877          ## a1 = 00003877
lbl_8093E528:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093E53C:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	addiu   v0, $zero, 0x0040          ## v0 = 00000040
	lh      t6, 0x018A(s0)             ## 0000018A
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	sh      t7, 0x018A(s0)             ## 0000018A
	lh      a3, 0x018A(s0)             ## 0000018A
	lw      a0, 0x0024($sp)            
	bne     v0, a3, lbl_8093E5D0       
	slti    $at, a3, 0x0020            
	jal     func_800204D0              
	lh      a1, 0x001C(s0)             ## 0000001C
	lw      a0, 0x0024($sp)            
	addiu   a1, s0, 0x0024             ## a1 = 00000024
	addiu   a2, $zero, 0x001E          ## a2 = 0000001E
	jal     func_80058FF8              
	addiu   a3, $zero, 0x2822          ## a3 = 00002822
	lbu     t8, 0x0184(s0)             ## 00000184
	lw      a0, 0x0024($sp)            
	bnel    t8, $zero, lbl_8093E5A8    
	lw      t0, 0x0024($sp)            
	jal     func_80020510              
	addiu   a1, $zero, 0x001B          ## a1 = 0000001B
	lw      t0, 0x0024($sp)            
lbl_8093E5A8:
	lui     $at, 0x0001                ## $at = 00010000
	addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
	addu    $at, $at, t0               
	sb      t9, 0x0AE3($at)            ## 00010AE3
	jal     func_800646F0              
	addiu   a0, $zero, 0x4802          ## a0 = 00004802
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8093E600 
	lh      t1, 0x018A(s0)             ## 0000018A
lbl_8093E5D0:
	beq     $at, $zero, lbl_8093E5F0   
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, a3, $zero              ## a1 = 00000000
	jal     func_8093C5F4              
	addiu   a2, s0, 0x0024             ## a2 = 00000024
	beq     $zero, $zero, lbl_8093E600 
	lh      t1, 0x018A(s0)             ## 0000018A
lbl_8093E5F0:
	subu    a1, v0, a3                 
	jal     func_8093C5F4              
	addiu   a2, s0, 0x0024             ## a2 = 00000024
	lh      t1, 0x018A(s0)             ## 0000018A
lbl_8093E600:
	addiu   $at, $zero, 0x0020         ## $at = 00000020
	bnel    t1, $at, lbl_8093E668      
	lw      $ra, 0x001C($sp)           
	lbu     t2, 0x0184(s0)             ## 00000184
	lui     t4, %hi(var_80940B24)      ## t4 = 80940000
	addiu   t4, t4, %lo(var_80940B24)  ## t4 = 80940B24
	sll     t3, t2,  2                 
	subu    t3, t3, t2                 
	sll     t3, t3,  1                 
	addu    v0, t3, t4                 
	lh      t5, 0x0000(v0)             ## 00000000
	mtc1    t5, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	swc1    $f6, 0x0024(s0)            ## 00000024
	lh      t6, 0x0002(v0)             ## 00000002
	mtc1    t6, $f8                    ## $f8 = 0.00
	nop
	cvt.s.w $f10, $f8                  
	swc1    $f10, 0x0028(s0)           ## 00000028
	lh      t7, 0x0004(v0)             ## 00000004
	mtc1    t7, $f16                   ## $f16 = 0.00
	nop
	cvt.s.w $f18, $f16                 
	swc1    $f18, 0x002C(s0)           ## 0000002C
	lw      $ra, 0x001C($sp)           
lbl_8093E668:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093E678:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a0, 0x0024($sp)            
	lui     $at, 0x4302                ## $at = 43020000
	mtc1    $at, $f6                   ## $f6 = 130.00
	lwc1    $f4, 0x0090(s0)            ## 00000090
	or      a0, s0, $zero              ## a0 = 00000000
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_8093E6C4               
	lw      a0, 0x0024($sp)            
	jal     func_8093D1AC              
	lw      a1, 0x002C($sp)            
	lw      a0, 0x0024($sp)            
lbl_8093E6C4:
	jal     func_8008D6A8              
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	beq     v0, $zero, lbl_8093E6DC    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x38ED          ## a1 = 000038ED
lbl_8093E6DC:
	lh      t6, 0x008A(s0)             ## 0000008A
	sh      t6, 0x00B6(s0)             ## 000000B6
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_8093E6F4:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x0024($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	lw      t6, 0x0024($sp)            
	addiu   a1, a2, 0x0008             ## a1 = 00000008
	lw      t7, 0x1C44(t6)             ## 00001C44
	sw      t7, 0x001C($sp)            
	lbu     a3, 0x0185(a2)             ## 00000185
	lw      v1, 0x0118(a2)             ## 00000118
	or      a0, t7, $zero              ## a0 = 00000000
	bne     a3, $zero, lbl_8093E7D4    
	or      t0, v1, $zero              ## t0 = 00000000
	jal     func_80021528              
	sw      a2, 0x0020($sp)            
	lui     $at, 0x4416                ## $at = 44160000
	mtc1    $at, $f4                   ## $f4 = 600.00
	lw      a2, 0x0020($sp)            
	addiu   t9, $zero, 0x0064          ## t9 = 00000064
	c.lt.s  $f0, $f4                   
	nop
	bc1fl   lbl_8093E76C               
	sh      t9, 0x018C(a2)             ## 0000018C
	lh      v0, 0x018C(a2)             ## 0000018C
	beq     v0, $zero, lbl_8093E770    
	addiu   t8, v0, 0xFFFF             ## t8 = FFFFFFFF
	sh      t8, 0x018C(a2)             ## 0000018C
	beq     $zero, $zero, lbl_8093E770 
	lh      v0, 0x018C(a2)             ## 0000018C
	sh      t9, 0x018C(a2)             ## 0000018C
lbl_8093E76C:
	lh      v0, 0x018C(a2)             ## 0000018C
lbl_8093E770:
	bnel    v0, $zero, lbl_8093E864    
	lw      $ra, 0x0014($sp)           
	jal     func_800CDCCC              ## Rand.Next() float
	sw      a2, 0x0020($sp)            
	lui     $at, 0x4080                ## $at = 40800000
	mtc1    $at, $f6                   ## $f6 = 4.00
	lw      a0, 0x0020($sp)            
	lui     $at, 0x40A0                ## $at = 40A00000
	mul.s   $f8, $f0, $f6              
	lh      t4, 0x008A(a0)             ## 0000008A
	mtc1    $at, $f18                  ## $f18 = 5.00
	trunc.w.s $f10, $f8                  
	mfc1    t2, $f10                   
	nop
	sll     t3, t2, 14                 
	addu    t5, t3, t4                 
	sh      t5, 0x00B6(a0)             ## 000000B6
	lw      t6, 0x001C($sp)            
	lwc1    $f16, 0x0028(t6)           ## 00000028
	add.s   $f4, $f16, $f18            
	swc1    $f4, 0x0028(a0)            ## 00000028
	jal     func_8093CCB0              
	lw      a1, 0x0024($sp)            
	beq     $zero, $zero, lbl_8093E864 
	lw      $ra, 0x0014($sp)           
lbl_8093E7D4:
	lw      v0, 0x0180(t0)             ## 00000180
	lui     t7, %hi(func_8093E8DC)     ## t7 = 80940000
	addiu   t7, t7, %lo(func_8093E8DC) ## t7 = 8093E8DC
	bne     t7, v0, lbl_8093E804       
	lui     t9, %hi(func_8093E22C)     ## t9 = 80940000
	lui     t8, %hi(func_8094040C)     ## t8 = 80940000
	addiu   t8, t8, %lo(func_8094040C) ## t8 = 8094040C
	sw      t8, 0x0134(a2)             ## 00000134
	jal     func_8093D21C              
	or      a0, a2, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8093E864 
	lw      $ra, 0x0014($sp)           
lbl_8093E804:
	addiu   t9, t9, %lo(func_8093E22C) ## t9 = FFFFE22C
	bne     t9, v0, lbl_8093E84C       
	lui     t5, %hi(func_8093E380)     ## t5 = 80940000
	lh      t1, 0x00B6(v1)             ## 000000B6
	sll     t2, a3, 14                 
	lui     $at, 0x40A0                ## $at = 40A00000
	addu    t3, t1, t2                 
	sh      t3, 0x00B6(a2)             ## 000000B6
	lw      t4, 0x001C($sp)            
	mtc1    $at, $f8                   ## $f8 = 5.00
	or      a0, a2, $zero              ## a0 = 00000000
	lwc1    $f6, 0x0028(t4)            ## 00000028
	add.s   $f10, $f6, $f8             
	swc1    $f10, 0x0028(a2)           ## 00000028
	jal     func_8093CCB0              
	lw      a1, 0x0024($sp)            
	beq     $zero, $zero, lbl_8093E864 
	lw      $ra, 0x0014($sp)           
lbl_8093E84C:
	addiu   t5, t5, %lo(func_8093E380) ## t5 = FFFFE380
	bnel    t5, v0, lbl_8093E864       
	lw      $ra, 0x0014($sp)           
	jal     func_80020EB4              
	or      a0, a2, $zero              ## a0 = 00000000
	lw      $ra, 0x0014($sp)           
lbl_8093E864:
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093E870:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beql    v0, $zero, lbl_8093E8A0    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8093D21C              
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8093E8A0:
	jal     func_8093CB84              
	lw      a1, 0x0024($sp)            
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f6                   ## $f6 = 1.00
	lwc1    $f4, 0x0028(s0)            ## 00000028
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a1, 0x4220                 ## a1 = 42200000
	add.s   $f8, $f4, $f6              
	jal     func_80020F04              
	swc1    $f8, 0x0028(s0)            ## 00000028
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093E8DC:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f6                   ## $f6 = 0.50
	lwc1    $f4, 0x014C(s0)            ## 0000014C
	lwc1    $f8, 0x0154(s0)            ## 00000154
	lui     $at, 0x437F                ## $at = 437F0000
	mul.s   $f2, $f4, $f6              
	mtc1    $at, $f10                  ## $f10 = 255.00
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	lui     $at, 0x4F00                ## $at = 4F000000
	sub.s   $f0, $f2, $f8              
	abs.s   $f0, $f0                   
	mul.s   $f16, $f0, $f10            
	div.s   $f18, $f16, $f2            
	cfc1    t6, $f31                   
	ctc1    t7, $f31                   
	nop
	cvt.w.s $f4, $f18                  
	cfc1    t7, $f31                   
	nop
	andi    t7, t7, 0x0078             ## t7 = 00000000
	beql    t7, $zero, lbl_8093E998    
	mfc1    t7, $f4                    
	mtc1    $at, $f4                   ## $f4 = 2147484000.00
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	sub.s   $f4, $f18, $f4             
	ctc1    t7, $f31                   
	nop
	cvt.w.s $f4, $f4                   
	cfc1    t7, $f31                   
	nop
	andi    t7, t7, 0x0078             ## t7 = 00000000
	bne     t7, $zero, lbl_8093E98C    
	nop
	mfc1    t7, $f4                    
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_8093E9A4 
	or      t7, t7, $at                ## t7 = 80000000
lbl_8093E98C:
	beq     $zero, $zero, lbl_8093E9A4 
	addiu   t7, $zero, 0xFFFF          ## t7 = FFFFFFFF
	mfc1    t7, $f4                    
lbl_8093E998:
	nop
	bltz    t7, lbl_8093E98C           
	nop
lbl_8093E9A4:
	lh      v0, 0x018A(s0)             ## 0000018A
	ctc1    t6, $f31                   
	sb      t7, 0x0221(s0)             ## 00000221
	beq     v0, $zero, lbl_8093E9C0    
	addiu   t8, v0, 0xFFFF             ## t8 = FFFFFFFF
	sh      t8, 0x018A(s0)             ## 0000018A
	lh      v0, 0x018A(s0)             ## 0000018A
lbl_8093E9C0:
	bne     v0, $zero, lbl_8093EA20    
	lui     $at, %hi(var_80940BA0)     ## $at = 80940000
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x4080                ## $at = 40800000
	mtc1    $at, $f6                   ## $f6 = 4.00
	lh      t9, 0x00B6(s0)             ## 000000B6
	lbu     t5, 0x0185(s0)             ## 00000185
	mul.s   $f8, $f0, $f6              
	trunc.w.s $f10, $f8                  
	mfc1    t1, $f10                   
	nop
	sll     t2, t1, 14                 
	addu    t3, t9, t2                 
	sh      t3, 0x00B6(s0)             ## 000000B6
	lh      t4, 0x00B6(s0)             ## 000000B6
	bne     t5, $zero, lbl_8093EA10    
	sh      t4, 0x0032(s0)             ## 00000032
	jal     func_800C6820              
	addiu   a0, $zero, 0x0038          ## a0 = 00000038
lbl_8093EA10:
	jal     func_8093D2D8              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8093EB08 
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8093EA20:
	lwc1    $f16, 0x0028(s0)           ## 00000028
	lwc1    $f18, %lo(var_80940BA0)($at) 
	lbu     a0, 0x0185(s0)             ## 00000185
	add.s   $f4, $f16, $f18            
	beq     a0, $zero, lbl_8093EAE0    
	swc1    $f4, 0x0028(s0)            ## 00000028
	lh      v0, 0x018A(s0)             ## 0000018A
	addiu   a2, $zero, 0x0040          ## a2 = 00000040
	slti    $at, v0, 0x005B            
	bnel    $at, $zero, lbl_8093EA58   
	slti    $at, v0, 0x0047            
	beq     $zero, $zero, lbl_8093EA98 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	slti    $at, v0, 0x0047            
lbl_8093EA58:
	bne     $at, $zero, lbl_8093EA68   
	addiu   a2, $zero, 0x0040          ## a2 = 00000040
	beq     $zero, $zero, lbl_8093EA98 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_8093EA68:
	slti    $at, v0, 0x0038            
	bne     $at, $zero, lbl_8093EA7C   
	addiu   a2, $zero, 0x0060          ## a2 = 00000060
	beq     $zero, $zero, lbl_8093EA98 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_8093EA7C:
	slti    $at, v0, 0x0029            
	bne     $at, $zero, lbl_8093EA94   
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	or      v0, $zero, $zero           ## v0 = 00000000
	beq     $zero, $zero, lbl_8093EA98 
	addiu   a2, $zero, 0x0060          ## a2 = 00000060
lbl_8093EA94:
	addiu   a2, $zero, 0x0100          ## a2 = 00000100
lbl_8093EA98:
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	bne     a0, $at, lbl_8093EAB0      
	or      v1, a0, $zero              ## v1 = 00000000
	sll     a2, a2,  1                 
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
lbl_8093EAB0:
	sll     t8, v1, 14                 
	multu   t8, v0                     
	lw      t6, 0x0118(s0)             ## 00000118
	addiu   a0, s0, 0x00B6             ## a0 = 000000B6
	lh      t7, 0x00B6(t6)             ## 000000B6
	mflo    t0                         
	addu    a1, t7, t0                 
	sll     a1, a1, 16                 
	jal     func_80063704              
	sra     a1, a1, 16                 
	beq     $zero, $zero, lbl_8093EB08 
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8093EAE0:
	lh      v0, 0x018A(s0)             ## 0000018A
	addiu   $at, $zero, 0x0046         ## $at = 00000046
	or      a0, s0, $zero              ## a0 = 00000000
	beq     v0, $at, lbl_8093EAFC      
	addiu   $at, $zero, 0x0028         ## $at = 00000028
	bnel    v0, $at, lbl_8093EB08      
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8093EAFC:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x38EF          ## a1 = 000038EF
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8093EB08:
	jal     func_8093CB84              
	lw      a1, 0x0024($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80020F04              
	lui     a1, 0x4220                 ## a1 = 42200000
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093EB30:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lh      v0, 0x018A(s0)             ## 0000018A
	beq     v0, $zero, lbl_8093EB54    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x018A(s0)             ## 0000018A
lbl_8093EB54:
	lh      t7, 0x018C(s0)             ## 0000018C
	blezl   t7, lbl_8093EC58           
	lbu     t5, 0x0185(s0)             ## 00000185
	lh      t8, 0x018A(s0)             ## 0000018A
	slti    $at, t8, 0x0010            
	bnel    $at, $zero, lbl_8093EC58   
	lbu     t5, 0x0185(s0)             ## 00000185
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lbu     v0, 0x0185(s0)             ## 00000185
	bnel    v0, $zero, lbl_8093EC44    
	lw      t1, 0x0118(s0)             ## 00000118
	lbu     v1, 0x0186(s0)             ## 00000186
	addiu   t9, $zero, 0x0010          ## t9 = 00000010
	subu    v0, t9, v1                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	bltz    v0, lbl_8093EBA8           
	subu    a0, $zero, v0              
	beq     $zero, $zero, lbl_8093EBA8 
	or      a0, v0, $zero              ## a0 = 00000000
lbl_8093EBA8:
	slti    $at, a0, 0x000E            
	beq     $at, $zero, lbl_8093EC08   
	or      a0, v1, $zero              ## a0 = 00000000
	sll     a0, a0, 27                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lh      t1, 0x018C(s0)             ## 0000018C
	addiu   t3, $zero, 0x0580          ## t3 = 00000580
	lh      t0, 0x00B6(s0)             ## 000000B6
	sll     t2, t1,  2                 
	subu    t2, t2, t1                 
	sll     t2, t2,  7                 
	subu    t4, t3, t2                 
	mtc1    t4, $f8                    ## $f8 = 0.00
	mtc1    t0, $f4                    ## $f4 = 0.00
	abs.s   $f0, $f0                   
	cvt.s.w $f10, $f8                  
	cvt.s.w $f6, $f4                   
	mul.s   $f16, $f10, $f0            
	add.s   $f18, $f6, $f16            
	trunc.w.s $f4, $f18                  
	mfc1    t6, $f4                    
	nop
	sh      t6, 0x00B6(s0)             ## 000000B6
lbl_8093EC08:
	lh      v0, 0x018A(s0)             ## 0000018A
	slti    $at, v0, 0x011C            
	beq     $at, $zero, lbl_8093EC20   
	slti    $at, v0, 0x001F            
	beql    $at, $zero, lbl_8093EC34   
	lbu     t9, 0x0189(s0)             ## 00000189
lbl_8093EC20:
	lbu     t7, 0x0189(s0)             ## 00000189
	ori     t8, t7, 0x0040             ## t8 = 00000040
	beq     $zero, $zero, lbl_8093EC54 
	sb      t8, 0x0189(s0)             ## 00000189
	lbu     t9, 0x0189(s0)             ## 00000189
lbl_8093EC34:
	andi    t0, t9, 0xFFBF             ## t0 = 00000000
	beq     $zero, $zero, lbl_8093EC54 
	sb      t0, 0x0189(s0)             ## 00000189
	lw      t1, 0x0118(s0)             ## 00000118
lbl_8093EC44:
	sll     t2, v0, 14                 
	lh      t3, 0x00B6(t1)             ## 000000B6
	addu    t4, t3, t2                 
	sh      t4, 0x00B6(s0)             ## 000000B6
lbl_8093EC54:
	lbu     t5, 0x0185(s0)             ## 00000185
lbl_8093EC58:
	bnel    t5, $zero, lbl_8093ECA0    
	lw      t0, 0x0024($sp)            
	lh      v0, 0x018A(s0)             ## 0000018A
	slti    $at, v0, 0x011C            
	beq     $at, $zero, lbl_8093EC80   
	slti    $at, v0, 0x001F            
	beq     $at, $zero, lbl_8093EC90   
	slti    $at, v0, 0x0010            
	bnel    $at, $zero, lbl_8093EC94   
	lbu     t8, 0x0189(s0)             ## 00000189
lbl_8093EC80:
	lbu     t6, 0x0189(s0)             ## 00000189
	ori     t7, t6, 0x0040             ## t7 = 00000040
	beq     $zero, $zero, lbl_8093EC9C 
	sb      t7, 0x0189(s0)             ## 00000189
lbl_8093EC90:
	lbu     t8, 0x0189(s0)             ## 00000189
lbl_8093EC94:
	andi    t9, t8, 0xFFBF             ## t9 = 00000000
	sb      t9, 0x0189(s0)             ## 00000189
lbl_8093EC9C:
	lw      t0, 0x0024($sp)            
lbl_8093ECA0:
	addiu   a1, s0, 0x0008             ## a1 = 00000008
	jal     func_80021528              
	lw      a0, 0x1C44(t0)             ## 00001C44
	lui     $at, 0x4416                ## $at = 44160000
	mtc1    $at, $f8                   ## $f8 = 600.00
	nop
	c.lt.s  $f8, $f0                   
	nop
	bc1fl   lbl_8093ECEC               
	lh      t2, 0x018A(s0)             ## 0000018A
	lbu     t1, 0x0189(s0)             ## 00000189
	or      a0, s0, $zero              ## a0 = 00000000
	andi    t3, t1, 0xFFBF             ## t3 = 00000000
	sb      t3, 0x0189(s0)             ## 00000189
	jal     func_8093CFE0              
	lw      a1, 0x0024($sp)            
	beq     $zero, $zero, lbl_8093ED94 
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t2, 0x018A(s0)             ## 0000018A
lbl_8093ECEC:
	bnel    t2, $zero, lbl_8093ED28    
	lbu     t5, 0x0185(s0)             ## 00000185
	lbu     t4, 0x0185(s0)             ## 00000185
	or      a0, s0, $zero              ## a0 = 00000000
	bne     t4, $zero, lbl_8093ED14    
	nop
	jal     func_8093C89C              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8093ED94 
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8093ED14:
	jal     func_8093CFE0              
	lw      a1, 0x0024($sp)            
	beq     $zero, $zero, lbl_8093ED94 
	or      a0, s0, $zero              ## a0 = 00000000
	lbu     t5, 0x0185(s0)             ## 00000185
lbl_8093ED28:
	beql    t5, $zero, lbl_8093ED5C    
	lh      v0, 0x018C(s0)             ## 0000018C
	lw      v0, 0x0118(s0)             ## 00000118
	lui     t6, %hi(func_8093DE64)     ## t6 = 80940000
	addiu   t6, t6, %lo(func_8093DE64) ## t6 = 8093DE64
	lw      t7, 0x0180(v0)             ## 00000180
	bnel    t6, t7, lbl_8093ED94       
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8093C994              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8093ED94 
	or      a0, s0, $zero              ## a0 = 00000000
	lh      v0, 0x018C(s0)             ## 0000018C
lbl_8093ED5C:
	addiu   t8, $zero, 0xFFF1          ## t8 = FFFFFFF1
	bne     v0, $zero, lbl_8093ED70    
	nop
	beq     $zero, $zero, lbl_8093ED90 
	sh      t8, 0x018C(s0)             ## 0000018C
lbl_8093ED70:
	bgez    v0, lbl_8093ED90           
	addiu   t9, v0, 0x0001             ## t9 = 00000001
	sh      t9, 0x018C(s0)             ## 0000018C
	lh      t0, 0x018C(s0)             ## 0000018C
	bnel    t0, $zero, lbl_8093ED94    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8093C89C              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8093ED90:
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8093ED94:
	jal     func_8093CB84              
	lw      a1, 0x0024($sp)            
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093EDB0:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a0, 0x0020($sp)            
	beql    v0, $zero, lbl_8093EE40    
	lwc1    $f8, 0x0154(s0)            ## 00000154
	lbu     t7, 0x0184(s0)             ## 00000184
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bne     t7, $at, lbl_8093EE2C      
	sb      t6, 0x0221(s0)             ## 00000221
	lui     $at, 0x44F9                ## $at = 44F90000
	lw      t8, 0x0004(s0)             ## 00000004
	mtc1    $at, $f4                   ## $f4 = 1992.00
	lbu     t0, 0x0189(s0)             ## 00000189
	lui     $at, 0xC4B4                ## $at = C4B40000
	mtc1    $at, $f6                   ## $f6 = -1440.00
	ori     t9, t8, 0x0001             ## t9 = 00000001
	ori     t1, t0, 0x0018             ## t1 = 00000018
	sw      t9, 0x0004(s0)             ## 00000004
	sb      t1, 0x0189(s0)             ## 00000189
	or      a0, s0, $zero              ## a0 = 00000000
	swc1    $f4, 0x0008(s0)            ## 00000008
	jal     func_8093C77C              
	swc1    $f6, 0x0010(s0)            ## 00000010
	beq     $zero, $zero, lbl_8093EEE4 
	lbu     t4, 0x0184(s0)             ## 00000184
lbl_8093EE2C:
	jal     func_8093D34C              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8093EEE4 
	lbu     t4, 0x0184(s0)             ## 00000184
	lwc1    $f8, 0x0154(s0)            ## 00000154
lbl_8093EE40:
	lwc1    $f10, 0x014C(s0)           ## 0000014C
	lui     $at, 0x437F                ## $at = 437F0000
	mtc1    $at, $f16                  ## $f16 = 255.00
	div.s   $f0, $f8, $f10             
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	lui     $at, 0x4F00                ## $at = 4F000000
	mul.s   $f18, $f16, $f0            
	cfc1    t2, $f31                   
	ctc1    t3, $f31                   
	nop
	cvt.w.s $f4, $f18                  
	cfc1    t3, $f31                   
	nop
	andi    t3, t3, 0x0078             ## t3 = 00000000
	beql    t3, $zero, lbl_8093EEC8    
	mfc1    t3, $f4                    
	mtc1    $at, $f4                   ## $f4 = 2147484000.00
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	sub.s   $f4, $f18, $f4             
	ctc1    t3, $f31                   
	nop
	cvt.w.s $f4, $f4                   
	cfc1    t3, $f31                   
	nop
	andi    t3, t3, 0x0078             ## t3 = 00000000
	bne     t3, $zero, lbl_8093EEBC    
	nop
	mfc1    t3, $f4                    
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_8093EED4 
	or      t3, t3, $at                ## t3 = 80000000
lbl_8093EEBC:
	beq     $zero, $zero, lbl_8093EED4 
	addiu   t3, $zero, 0xFFFF          ## t3 = FFFFFFFF
	mfc1    t3, $f4                    
lbl_8093EEC8:
	nop
	bltz    t3, lbl_8093EEBC           
	nop
lbl_8093EED4:
	ctc1    t2, $f31                   
	sb      t3, 0x0221(s0)             ## 00000221
	nop
	lbu     t4, 0x0184(s0)             ## 00000184
lbl_8093EEE4:
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	lw      a0, 0x0020($sp)            
	beql    t4, $at, lbl_8093EF10      
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8008D6A8              
	lui     a1, 0x3F80                 ## a1 = 3F800000
	beq     v0, $zero, lbl_8093EF0C    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3873          ## a1 = 00003873
lbl_8093EF0C:
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8093EF10:
	jal     func_80020F04              
	lui     a1, 0x4220                 ## a1 = 42200000
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093EF2C:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	addiu   a1, s0, 0x0008             ## a1 = 00000008
	sw      a1, 0x0020($sp)            
	jal     func_80021528              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f4                   ## $f4 = 10.00
	lw      a1, 0x0020($sp)            
	c.lt.s  $f0, $f4                   
	nop
	bc1f    lbl_8093EF84               
	nop
	jal     func_8093D3E4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8093EFA4 
	lw      $ra, 0x001C($sp)           
lbl_8093EF84:
	jal     func_8002140C              
	or      a0, s0, $zero              ## a0 = 00000000
	sll     a1, v0, 16                 
	sra     a1, a1, 16                 
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	jal     func_80063704              
	addiu   a2, $zero, 0x071C          ## a2 = 0000071C
	lw      $ra, 0x001C($sp)           
lbl_8093EFA4:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093EFB4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	addiu   a2, $zero, 0x071C          ## a2 = 0000071C
	addiu   a0, a3, 0x0032             ## a0 = 00000032
	jal     func_80063704              
	lh      a1, 0x008A(a3)             ## 0000008A
	lw      a3, 0x0018($sp)            
	lui     $at, 0x4370                ## $at = 43700000
	mtc1    $at, $f6                   ## $f6 = 240.00
	lwc1    $f4, 0x0090(a3)            ## 00000090
	lui     $at, 0x40A0                ## $at = 40A00000
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_8093F03C               
	lw      $ra, 0x0014($sp)           
	lwc1    $f8, 0x0094(a3)            ## 00000094
	mtc1    $at, $f10                  ## $f10 = 5.00
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f16                  ## $f16 = 30.00
	add.s   $f0, $f8, $f10             
	abs.s   $f0, $f0                   
	c.lt.s  $f0, $f16                  
	nop
	bc1fl   lbl_8093F03C               
	lw      $ra, 0x0014($sp)           
	jal     func_8093C77C              
	or      a0, a3, $zero              ## a0 = 00000000
	lw      $ra, 0x0014($sp)           
lbl_8093F03C:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093F048:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	lui     t6, %hi(var_80940B04)      ## t6 = 80940000
	lw      t6, %lo(var_80940B04)(t6)  
	bnel    t6, $zero, lbl_8093F080    
	lh      v0, 0x018A(s0)             ## 0000018A
	jal     func_8007943C              
	lw      a0, 0x002C($sp)            
	bnel    v0, $zero, lbl_8093F0E0    
	or      a0, s0, $zero              ## a0 = 00000000
	lh      v0, 0x018A(s0)             ## 0000018A
lbl_8093F080:
	addiu   $at, $zero, 0x001E         ## $at = 0000001E
	beq     v0, $zero, lbl_8093F094    
	addiu   t7, v0, 0xFFFF             ## t7 = FFFFFFFF
	sh      t7, 0x018A(s0)             ## 0000018A
	lh      v0, 0x018A(s0)             ## 0000018A
lbl_8093F094:
	bne     v0, $at, lbl_8093F0CC      
	nop
	lbu     t8, 0x0184(s0)             ## 00000184
	lw      a0, 0x002C($sp)            
	addiu   a1, $zero, 0x0C44          ## a1 = 00000C44
	bne     t8, $zero, lbl_8093F0BC    
	addiu   a2, $zero, 0x03E7          ## a2 = 000003E7
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_8006B6FC              
	sw      $zero, 0x0010($sp)         
lbl_8093F0BC:
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	lui     $at, %hi(var_80940B04)     ## $at = 80940000
	sw      t9, %lo(var_80940B04)($at) 
	lh      v0, 0x018A(s0)             ## 0000018A
lbl_8093F0CC:
	bnel    v0, $zero, lbl_8093F0E0    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8093D4C8              
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8093F0E0:
	jal     func_8002313C              
	addiu   a1, $zero, 0x2031          ## a1 = 00002031
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093F0FC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lh      t6, 0x018A(a0)             ## 0000018A
	addiu   a2, a0, 0x0008             ## a2 = 00000008
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	sh      t7, 0x018A(a0)             ## 0000018A
	lh      a1, 0x018A(a0)             ## 0000018A
	jal     func_8093C5F4              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	addiu   $at, $zero, 0x0020         ## $at = 00000020
	lh      t8, 0x018A(a0)             ## 0000018A
	bnel    t8, $at, lbl_8093F144      
	lw      $ra, 0x0014($sp)           
	jal     func_8093D578              
	nop
	lw      $ra, 0x0014($sp)           
lbl_8093F144:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093F150:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	lh      t6, 0x018A(a2)             ## 0000018A
	or      a0, a2, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x3873          ## a1 = 00003873
	addiu   t7, t6, 0xFFFF             ## t7 = FFFFFFFF
	sh      t7, 0x018A(a2)             ## 0000018A
	lh      v0, 0x018A(a2)             ## 0000018A
	bne     v0, $zero, lbl_8093F19C    
	nop
	jal     func_80022FD0              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	lbu     t8, 0x0189(a2)             ## 00000189
	lh      v0, 0x018A(a2)             ## 0000018A
	andi    t9, t8, 0xFF7F             ## t9 = 00000000
	sb      t9, 0x0189(a2)             ## 00000189
lbl_8093F19C:
	bgtz    v0, lbl_8093F280           
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a2, 0x0018($sp)            
	beq     v0, $zero, lbl_8093F1E0    
	lw      a2, 0x0018($sp)            
	lui     v0, %hi(var_80940B04)      ## v0 = 80940000
	addiu   t0, $zero, 0x00FF          ## t0 = 000000FF
	lbu     t2, 0x0184(a2)             ## 00000184
	addiu   v0, v0, %lo(var_80940B04)  ## v0 = 80940B04
	sb      t0, 0x0221(a2)             ## 00000221
	lw      t1, 0x0000(v0)             ## 80940B04
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	sllv    t4, t3, t2                 
	or      t5, t1, t4                 ## t5 = 00000000
	beq     $zero, $zero, lbl_8093F280 
	sw      t5, 0x0000(v0)             ## 80940B04
lbl_8093F1E0:
	lui     $at, 0x437F                ## $at = 437F0000
	mtc1    $at, $f6                   ## $f6 = 255.00
	lwc1    $f4, 0x0154(a2)            ## 00000154
	lwc1    $f10, 0x014C(a2)           ## 0000014C
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	mul.s   $f8, $f4, $f6              
	div.s   $f16, $f8, $f10            
	cfc1    t6, $f31                   
	ctc1    t7, $f31                   
	nop
	cvt.w.s $f18, $f16                 
	cfc1    t7, $f31                   
	nop
	andi    t7, t7, 0x0078             ## t7 = 00000000
	beq     t7, $zero, lbl_8093F264    
	lui     $at, 0x4F00                ## $at = 4F000000
	mtc1    $at, $f18                  ## $f18 = 2147484000.00
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	sub.s   $f18, $f16, $f18           
	ctc1    t7, $f31                   
	nop
	cvt.w.s $f18, $f18                 
	cfc1    t7, $f31                   
	nop
	andi    t7, t7, 0x0078             ## t7 = 00000000
	bne     t7, $zero, lbl_8093F25C    
	nop
	mfc1    t7, $f18                   
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_8093F274 
	or      t7, t7, $at                ## t7 = 80000000
lbl_8093F25C:
	beq     $zero, $zero, lbl_8093F274 
	addiu   t7, $zero, 0xFFFF          ## t7 = FFFFFFFF
lbl_8093F264:
	mfc1    t7, $f18                   
	nop
	bltz    t7, lbl_8093F25C           
	nop
lbl_8093F274:
	ctc1    t6, $f31                   
	sb      t7, 0x0221(a2)             ## 00000221
	nop
lbl_8093F280:
	lui     v0, %hi(var_80940B04)      ## v0 = 80940000
	addiu   v0, v0, %lo(var_80940B04)  ## v0 = 80940B04
	lw      t8, 0x0000(v0)             ## 80940B04
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	bnel    t8, $at, lbl_8093F2A4      
	lw      $ra, 0x0014($sp)           
	jal     func_8093D61C              
	or      a0, a2, $zero              ## a0 = 00000000
	lw      $ra, 0x0014($sp)           
lbl_8093F2A4:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093F2B0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	lh      a1, 0x018A(a3)             ## 0000018A
	or      a0, a3, $zero              ## a0 = 00000000
	addiu   a2, a3, 0x0008             ## a2 = 00000008
	beq     a1, $zero, lbl_8093F2EC    
	addiu   t6, a1, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x018A(a3)             ## 0000018A
	lh      a1, 0x018A(a3)             ## 0000018A
lbl_8093F2EC:
	jal     func_8093C5F4              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	lh      t7, 0x018A(a3)             ## 0000018A
	or      a0, a3, $zero              ## a0 = 00000000
	bnel    t7, $zero, lbl_8093F314    
	lw      $ra, 0x0014($sp)           
	jal     func_8093D67C              
	lw      a1, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
lbl_8093F314:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093F320:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lh      t6, 0x018A(s0)             ## 0000018A
	addiu   a0, s0, 0x00B6             ## a0 = 000000B6
	lh      a1, 0x0032(s0)             ## 00000032
	addiu   t7, t6, 0xFFFF             ## t7 = FFFFFFFF
	sh      t7, 0x018A(s0)             ## 0000018A
	jal     func_80063704              
	addiu   a2, $zero, 0x0500          ## a2 = 00000500
	lh      v0, 0x018A(s0)             ## 0000018A
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	lui     a1, 0x40A0                 ## a1 = 40A00000
	bne     v0, $zero, lbl_8093F38C    
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	lbu     t8, 0x0184(s0)             ## 00000184
	lw      t0, 0x0024($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	bne     t8, $zero, lbl_8093F38C    
	addu    $at, $at, t0               
	addiu   t9, $zero, 0x0004          ## t9 = 00000004
	sb      t9, 0x0AE3($at)            ## 00010AE3
	lh      v0, 0x018A(s0)             ## 0000018A
lbl_8093F38C:
	bgezl   v0, lbl_8093F3A4           
	addiu   $at, $zero, 0xFFBA         ## $at = FFFFFFBA
	jal     func_8006385C              
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	lh      v0, 0x018A(s0)             ## 0000018A
	addiu   $at, $zero, 0xFFBA         ## $at = FFFFFFBA
lbl_8093F3A4:
	bnel    v0, $at, lbl_8093F3D8      
	slti    $at, v0, 0xFF88            
	lbu     t1, 0x0184(s0)             ## 00000184
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lw      a0, 0x0024($sp)            
	bne     t1, $at, lbl_8093F3D4      
	lui     a1, %hi(var_80940B3C)      ## a1 = 80940000
	addiu   a1, a1, %lo(var_80940B3C)  ## a1 = 80940B3C
	addiu   a2, $zero, 0x0028          ## a2 = 00000028
	jal     func_80058FF8              
	addiu   a3, $zero, 0x38EC          ## a3 = 000038EC
	lh      v0, 0x018A(s0)             ## 0000018A
lbl_8093F3D4:
	slti    $at, v0, 0xFF88            
lbl_8093F3D8:
	beql    $at, $zero, lbl_8093F3EC   
	lw      $ra, 0x001C($sp)           
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x001C($sp)           
lbl_8093F3EC:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093F3FC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lbu     t6, 0x010C(a0)             ## 0000010C
	lui     t1, %hi(func_8093DC80)     ## t1 = 80940000
	addiu   t8, $zero, 0x0014          ## t8 = 00000014
	beq     t6, $zero, lbl_8093F440    
	addiu   t1, t1, %lo(func_8093DC80) ## t1 = 8093DC80
	lbu     v0, 0x0221(a0)             ## 00000221
	addiu   $at, $zero, 0x00FF         ## $at = 000000FF
	bnel    v0, $at, lbl_8093F444      
	sb      t8, 0x0187(a0)             ## 00000187
	lbu     v1, 0x0187(a0)             ## 00000187
	beq     v1, $zero, lbl_8093F448    
	addiu   t7, v1, 0xFFFF             ## t7 = FFFFFFFF
	sb      t7, 0x0187(a0)             ## 00000187
	beq     $zero, $zero, lbl_8093F448 
	lbu     v0, 0x0221(a0)             ## 00000221
lbl_8093F440:
	sb      t8, 0x0187(a0)             ## 00000187
lbl_8093F444:
	lbu     v0, 0x0221(a0)             ## 00000221
lbl_8093F448:
	bnel    v0, $zero, lbl_8093F464    
	lw      v0, 0x0180(a0)             ## 00000180
	lh      v0, 0x018C(a0)             ## 0000018C
	beq     v0, $zero, lbl_8093F460    
	addiu   t9, v0, 0xFFFF             ## t9 = FFFFFFFF
	sh      t9, 0x018C(a0)             ## 0000018C
lbl_8093F460:
	lw      v0, 0x0180(a0)             ## 00000180
lbl_8093F464:
	lui     t0, %hi(func_8093DBB0)     ## t0 = 80940000
	addiu   t0, t0, %lo(func_8093DBB0) ## t0 = 8093DBB0
	beql    t0, v0, lbl_8093F4C8       
	lw      $ra, 0x0014($sp)           
	beq     t1, v0, lbl_8093F4C4       
	lui     t2, %hi(func_8093DE64)     ## t2 = 80940000
	addiu   t2, t2, %lo(func_8093DE64) ## t2 = 8093DE64
	beql    t2, v0, lbl_8093F4C8       
	lw      $ra, 0x0014($sp)           
	lbu     t3, 0x0187(a0)             ## 00000187
	bnel    t3, $zero, lbl_8093F4A8    
	lh      t4, 0x018C(a0)             ## 0000018C
	jal     func_8093CAD4              
	nop
	beq     $zero, $zero, lbl_8093F4C8 
	lw      $ra, 0x0014($sp)           
	lh      t4, 0x018C(a0)             ## 0000018C
lbl_8093F4A8:
	bnel    t4, $zero, lbl_8093F4C8    
	lw      $ra, 0x0014($sp)           
	lbu     t5, 0x0221(a0)             ## 00000221
	bnel    t5, $zero, lbl_8093F4C8    
	lw      $ra, 0x0014($sp)           
	jal     func_8093CCB0              
	nop
lbl_8093F4C4:
	lw      $ra, 0x0014($sp)           
lbl_8093F4C8:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093F4D4:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0034($sp)            
	lbu     v0, 0x02AD(s0)             ## 000002AD
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x02B4             ## a1 = 000002B4
	andi    t6, v0, 0x0002             ## t6 = 00000000
	beq     t6, $zero, lbl_8093F684    
	andi    t7, v0, 0xFFFD             ## t7 = 00000000
	sb      t7, 0x02AD(s0)             ## 000002AD
	jal     func_800283BC              
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	lbu     t8, 0x0185(s0)             ## 00000185
	beql    t8, $zero, lbl_8093F594    
	lbu     t1, 0x02B0(s0)             ## 000002B0
	lw      v0, 0x0118(s0)             ## 00000118
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x38EF          ## a1 = 000038EF
	lh      t9, 0x018C(v0)             ## 0000018C
	addiu   t0, t9, 0xFFFF             ## t0 = FFFFFFFF
	jal     func_80022FD0              
	sh      t0, 0x018C(v0)             ## 0000018C
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8093CFE0              
	lw      a1, 0x0034($sp)            
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_80940BA4)     ## $at = 80940000
	lwc1    $f4, %lo(var_80940BA4)($at) 
	c.lt.s  $f0, $f4                   
	nop
	bc1fl   lbl_8093F688               
	lw      $ra, 0x001C($sp)           
	lwc1    $f6, 0x0024(s0)            ## 00000024
	lw      a0, 0x0034($sp)            
	addiu   a1, $sp, 0x0024            ## a1 = FFFFFFF4
	swc1    $f6, 0x0024($sp)           
	lwc1    $f8, 0x0028(s0)            ## 00000028
	addiu   a2, $zero, 0x0008          ## a2 = 00000008
	swc1    $f8, 0x0028($sp)           
	lwc1    $f10, 0x002C(s0)           ## 0000002C
	jal     func_80013678              
	swc1    $f10, 0x002C($sp)          
	beq     $zero, $zero, lbl_8093F688 
	lw      $ra, 0x001C($sp)           
	lbu     t1, 0x02B0(s0)             ## 000002B0
lbl_8093F594:
	addiu   $at, $zero, 0x0009         ## $at = 00000009
	beql    t1, $at, lbl_8093F5C0      
	lbu     t3, 0x0184(s0)             ## 00000184
	lbu     v0, 0x00B1(s0)             ## 000000B1
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	bne     v0, $zero, lbl_8093F5D0    
	nop
	lbu     t2, 0x00B0(s0)             ## 000000B0
	bne     t2, $zero, lbl_8093F5D0    
	nop
	lbu     t3, 0x0184(s0)             ## 00000184
lbl_8093F5C0:
	bnel    t3, $zero, lbl_8093F688    
	lw      $ra, 0x001C($sp)           
	beq     $zero, $zero, lbl_8093F684 
	sh      $zero, 0x0110(s0)          ## 00000110
lbl_8093F5D0:
	bnel    v0, $at, lbl_8093F604      
	lbu     t7, 0x0184(s0)             ## 00000184
	lbu     t5, 0x0189(s0)             ## 00000189
	lh      t4, 0x00B6(s0)             ## 000000B6
	or      a0, s0, $zero              ## a0 = 00000000
	ori     t6, t5, 0x0002             ## t6 = 00000002
	sb      t6, 0x0189(s0)             ## 00000189
	sh      t4, 0x0032(s0)             ## 00000032
	jal     func_8093CCB0              
	lw      a1, 0x0034($sp)            
	beq     $zero, $zero, lbl_8093F688 
	lw      $ra, 0x001C($sp)           
	lbu     t7, 0x0184(s0)             ## 00000184
lbl_8093F604:
	addiu   $at, $zero, 0x000E         ## $at = 0000000E
	bne     t7, $zero, lbl_8093F644    
	nop
	bne     v0, $at, lbl_8093F644      
	nop
	lw      t9, 0x0180(s0)             ## 00000180
	lui     t8, %hi(func_8093EB30)     ## t8 = 80940000
	addiu   t8, t8, %lo(func_8093EB30) ## t8 = 8093EB30
	bne     t8, t9, lbl_8093F644       
	nop
	lh      t0, 0x018C(s0)             ## 0000018C
	addiu   t1, $zero, 0xFFD3          ## t1 = FFFFFFD3
	bnel    t0, $zero, lbl_8093F688    
	lw      $ra, 0x001C($sp)           
	beq     $zero, $zero, lbl_8093F684 
	sh      t1, 0x018C(s0)             ## 0000018C
lbl_8093F644:
	jal     func_80028390              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_8093F668    
	lw      a0, 0x0034($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3875          ## a1 = 00003875
	beq     $zero, $zero, lbl_8093F67C 
	nop
lbl_8093F668:
	jal     func_80025B4C              
	or      a1, s0, $zero              ## a1 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3886          ## a1 = 00003886
lbl_8093F67C:
	jal     func_8093C994              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8093F684:
	lw      $ra, 0x001C($sp)           
lbl_8093F688:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093F698:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x0054($sp)            
	lbu     v0, 0x02AC(s0)             ## 000002AC
	or      a0, s0, $zero              ## a0 = 00000000
	andi    t6, v0, 0x0002             ## t6 = 00000000
	beq     t6, $zero, lbl_8093F6C8    
	andi    t7, v0, 0xFFFD             ## t7 = 00000000
	jal     func_8093C924              
	sb      t7, 0x02AC(s0)             ## 000002AC
lbl_8093F6C8:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8093F4D4              
	lw      a1, 0x0054($sp)            
	lbu     t8, 0x0189(s0)             ## 00000189
	or      a0, s0, $zero              ## a0 = 00000000
	andi    t9, t8, 0x0004             ## t9 = 00000000
	beql    t9, $zero, lbl_8093F6F4    
	lw      t9, 0x0180(s0)             ## 00000180
	jal     func_8093F3FC              
	lw      a1, 0x0054($sp)            
	lw      t9, 0x0180(s0)             ## 00000180
lbl_8093F6F4:
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x0054($sp)            
	jalr    $ra, t9                    
	nop
	lbu     v0, 0x0189(s0)             ## 00000189
	andi    t0, v0, 0x001F             ## t0 = 00000000
	beq     t0, $zero, lbl_8093F918    
	andi    t1, v0, 0x0008             ## t1 = 00000000
	beq     t1, $zero, lbl_8093F724    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8093D71C              
	lw      a1, 0x0054($sp)            
lbl_8093F724:
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	lbu     t2, 0x0189(s0)             ## 00000189
	lw      a0, 0x0054($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	andi    t3, t2, 0x0010             ## t3 = 00000000
	beq     t3, $zero, lbl_8093F770    
	lui     $at, 0x4120                ## $at = 41200000
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f0                   ## $f0 = 20.00
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   t4, $zero, 0x0005          ## t4 = 00000005
	mfc1    a2, $f0                    
	mfc1    a3, $f0                    
	sw      t4, 0x0014($sp)            
	jal     func_80021E6C              
	swc1    $f4, 0x0010($sp)           
	beq     $zero, $zero, lbl_8093F7B8 
	addiu   a1, s0, 0x029C             ## a1 = 0000029C
lbl_8093F770:
	lwc1    $f6, 0x0024(s0)            ## 00000024
	mtc1    $at, $f10                  ## $f10 = 0.00
	lw      a0, 0x0054($sp)            
	swc1    $f6, 0x0038($sp)           
	lwc1    $f8, 0x0028(s0)            ## 00000028
	addiu   t5, $sp, 0x0038            ## t5 = FFFFFFE8
	addiu   a1, s0, 0x0078             ## a1 = 00000078
	add.s   $f16, $f8, $f10            
	addiu   a2, $sp, 0x0034            ## a2 = FFFFFFE4
	or      a3, s0, $zero              ## a3 = 00000000
	addiu   a0, a0, 0x07C0             ## a0 = 000007C0
	swc1    $f16, 0x003C($sp)          
	lwc1    $f18, 0x002C(s0)           ## 0000002C
	sw      t5, 0x0010($sp)            
	jal     func_8002F4B8              ## Raycast
	swc1    $f18, 0x0040($sp)          
	swc1    $f0, 0x0080(s0)            ## 00000080
	addiu   a1, s0, 0x029C             ## a1 = 0000029C
lbl_8093F7B8:
	sw      a1, 0x0028($sp)            
	jal     func_80050B00              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      v0, 0x0180(s0)             ## 00000180
	lui     a0, %hi(func_8093DC80)     ## a0 = 80940000
	addiu   a0, a0, %lo(func_8093DC80) ## a0 = 8093DC80
	beq     a0, v0, lbl_8093F7E4       
	lui     t6, %hi(func_8093DBB0)     ## t6 = 80940000
	addiu   t6, t6, %lo(func_8093DBB0) ## t6 = 8093DBB0
	bne     t6, v0, lbl_8093F814       
	lui     t0, %hi(func_8093E380)     ## t0 = 80940000
lbl_8093F7E4:
	lbu     t7, 0x0188(s0)             ## 00000188
	addiu   t9, $zero, 0x0008          ## t9 = 00000008
	addiu   t8, t7, 0x0001             ## t8 = 00000001
	andi    v0, t8, 0x00FF             ## v0 = 00000001
	slti    $at, v0, 0x0009            
	bne     $at, $zero, lbl_8093F808   
	sb      t8, 0x0188(s0)             ## 00000188
	beq     $zero, $zero, lbl_8093F80C 
	sb      t9, 0x0188(s0)             ## 00000188
lbl_8093F808:
	sb      v0, 0x0188(s0)             ## 00000188
lbl_8093F80C:
	beq     $zero, $zero, lbl_8093F850 
	lw      v0, 0x0180(s0)             ## 00000180
lbl_8093F814:
	addiu   t0, t0, %lo(func_8093E380) ## t0 = 8093E380
	beq     t0, v0, lbl_8093F850       
	nop
	lbu     v1, 0x0188(s0)             ## 00000188
	addiu   t1, $zero, 0x0001          ## t1 = 00000001
	addiu   v1, v1, 0xFFFF             ## v1 = FFFFFFFF
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	bgtzl   v1, lbl_8093F84C           
	sb      v1, 0x0188(s0)             ## 00000188
	sb      t1, 0x0188(s0)             ## 00000188
	beq     $zero, $zero, lbl_8093F850 
	lw      v0, 0x0180(s0)             ## 00000180
	sb      v1, 0x0188(s0)             ## 00000188
lbl_8093F84C:
	lw      v0, 0x0180(s0)             ## 00000180
lbl_8093F850:
	bnel    a0, v0, lbl_8093F884       
	lbu     t4, 0x0189(s0)             ## 00000189
	lw      t2, 0x0004(s0)             ## 00000004
	lui     $at, 0x0100                ## $at = 01000000
	lw      a0, 0x0054($sp)            
	or      t3, t2, $at                ## t3 = 01000000
	lui     $at, 0x0001                ## $at = 00010000
	sw      t3, 0x0004(s0)             ## 00000004
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	lw      a2, 0x0028($sp)            
	jal     func_8004BD50              ## CollisionCheck_setAT
	addu    a1, a0, $at                
	lbu     t4, 0x0189(s0)             ## 00000189
lbl_8093F884:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	andi    t5, t4, 0x0001             ## t5 = 00000000
	beq     t5, $zero, lbl_8093F8A4    
	lw      a0, 0x0054($sp)            
	addu    a1, a0, $at                
	jal     func_8004BF40              ## CollisionCheck_setAC
	lw      a2, 0x0028($sp)            
lbl_8093F8A4:
	lw      t8, 0x0180(s0)             ## 00000180
	lui     t7, %hi(func_8093E6F4)     ## t7 = 80940000
	addiu   t7, t7, %lo(func_8093E6F4) ## t7 = 8093E6F4
	beq     t7, t8, lbl_8093F8CC       
	lw      a0, 0x0054($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	addu    a1, a0, $at                
	jal     func_8004C130              ## CollisionCheck_setOT
	lw      a2, 0x0028($sp)            
lbl_8093F8CC:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80020F04              
	lui     a1, 0x4220                 ## a1 = 42200000
	lw      t1, 0x0180(s0)             ## 00000180
	lui     t0, %hi(func_8093E030)     ## t0 = 80940000
	addiu   t0, t0, %lo(func_8093E030) ## t0 = 8093E030
	bnel    t0, t1, lbl_8093F904       
	lbu     t4, 0x0189(s0)             ## 00000189
	lh      t2, 0x0032(s0)             ## 00000032
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addu    t3, t2, $at                
	beq     $zero, $zero, lbl_8093F918 
	sh      t3, 0x00B6(s0)             ## 000000B6
	lbu     t4, 0x0189(s0)             ## 00000189
lbl_8093F904:
	andi    t5, t4, 0x0002             ## t5 = 00000000
	beql    t5, $zero, lbl_8093F91C    
	lw      $ra, 0x0024($sp)           
	lh      t6, 0x0032(s0)             ## 00000032
	sh      t6, 0x00B6(s0)             ## 000000B6
lbl_8093F918:
	lw      $ra, 0x0024($sp)           
lbl_8093F91C:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000
	jr      $ra                        
	nop


func_8093F92C:
	lw      v0, 0x0144(a0)             ## 00000144
	lui     t6, 0x0600                 ## t6 = 06000000
	addiu   t6, t6, 0x0114             ## t6 = 06000114
	bne     t6, v0, lbl_8093F9C0       
	lui     t9, 0x0600                 ## t9 = 06000000
	lbu     v0, 0x021E(a0)             ## 0000021E
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	addiu   t8, $zero, 0x0032          ## t8 = 00000032
	addiu   v0, v0, 0x0005             ## v0 = 00000005
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x0100            
	bnel    $at, $zero, lbl_8093F970   
	sb      v0, 0x021E(a0)             ## 0000021E
	beq     $zero, $zero, lbl_8093F970 
	sb      t7, 0x021E(a0)             ## 0000021E
	sb      v0, 0x021E(a0)             ## 0000021E
lbl_8093F970:
	lbu     v0, 0x021F(a0)             ## 0000021F
	addiu   v0, v0, 0xFFFB             ## v0 = 00000000
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x0032            
	beql    $at, $zero, lbl_8093F998   
	sb      v0, 0x021F(a0)             ## 0000021F
	beq     $zero, $zero, lbl_8093F998 
	sb      t8, 0x021F(a0)             ## 0000021F
	sb      v0, 0x021F(a0)             ## 0000021F
lbl_8093F998:
	lbu     v0, 0x0220(a0)             ## 00000220
	addiu   v0, v0, 0xFFFB             ## v0 = FFFFFFFB
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	bgez    v0, lbl_8093F9B8           
	nop
	jr      $ra                        
	sb      $zero, 0x0220(a0)          ## 00000220
lbl_8093F9B8:
	jr      $ra                        
	sb      v0, 0x0220(a0)             ## 00000220
lbl_8093F9C0:
	addiu   t9, t9, 0x0A54             ## t9 = 06000A54
	bne     t9, v0, lbl_8093FA50       
	lui     t3, 0x0600                 ## t3 = 06000000
	lbu     v0, 0x021E(a0)             ## 0000021E
	addiu   t0, $zero, 0x0050          ## t0 = 00000050
	addiu   t1, $zero, 0x00FF          ## t1 = 000000FF
	addiu   v0, v0, 0x0005             ## v0 = 00000000
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x0051            
	bne     $at, $zero, lbl_8093F9F8   
	addiu   t2, $zero, 0x00E1          ## t2 = 000000E1
	beq     $zero, $zero, lbl_8093F9FC 
	sb      t0, 0x021E(a0)             ## 0000021E
lbl_8093F9F8:
	sb      v0, 0x021E(a0)             ## 0000021E
lbl_8093F9FC:
	lbu     v0, 0x021F(a0)             ## 0000021F
	addiu   v0, v0, 0x0005             ## v0 = 00000005
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x0100            
	bnel    $at, $zero, lbl_8093FA24   
	sb      v0, 0x021F(a0)             ## 0000021F
	beq     $zero, $zero, lbl_8093FA24 
	sb      t1, 0x021F(a0)             ## 0000021F
	sb      v0, 0x021F(a0)             ## 0000021F
lbl_8093FA24:
	lbu     v0, 0x0220(a0)             ## 00000220
	addiu   v0, v0, 0x0005             ## v0 = 0000000A
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x00E2            
	bne     $at, $zero, lbl_8093FA48   
	nop
	jr      $ra                        
	sb      t2, 0x0220(a0)             ## 00000220
lbl_8093FA48:
	jr      $ra                        
	sb      v0, 0x0220(a0)             ## 00000220
lbl_8093FA50:
	addiu   t3, t3, 0x08C0             ## t3 = 060008C0
	bnel    t3, v0, lbl_8093FA98       
	lbu     v0, 0x021E(a0)             ## 0000021E
	lbu     t4, 0x0114(a0)             ## 00000114
	addiu   t6, $zero, 0x0050          ## t6 = 00000050
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	andi    t5, t4, 0x0002             ## t5 = 00000000
	beq     t5, $zero, lbl_8093FA84    
	addiu   t8, $zero, 0x00E1          ## t8 = 000000E1
	sb      $zero, 0x021E(a0)          ## 0000021E
	sb      $zero, 0x021F(a0)          ## 0000021F
	jr      $ra                        
	sb      $zero, 0x0220(a0)          ## 00000220
lbl_8093FA84:
	sb      t6, 0x021E(a0)             ## 0000021E
	sb      t7, 0x021F(a0)             ## 0000021F
	jr      $ra                        
	sb      t8, 0x0220(a0)             ## 00000220
lbl_8093FA94:
	lbu     v0, 0x021E(a0)             ## 0000021E
lbl_8093FA98:
	addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
	addiu   t0, $zero, 0x00FF          ## t0 = 000000FF
	addiu   v0, v0, 0x0005             ## v0 = 0000000F
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x0100            
	bnel    $at, $zero, lbl_8093FAC4   
	sb      v0, 0x021E(a0)             ## 0000021E
	beq     $zero, $zero, lbl_8093FAC4 
	sb      t9, 0x021E(a0)             ## 0000021E
	sb      v0, 0x021E(a0)             ## 0000021E
lbl_8093FAC4:
	lbu     v0, 0x021F(a0)             ## 0000021F
	addiu   v0, v0, 0x0005             ## v0 = 00000014
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x0100            
	bnel    $at, $zero, lbl_8093FAEC   
	sb      v0, 0x021F(a0)             ## 0000021F
	beq     $zero, $zero, lbl_8093FAEC 
	sb      t0, 0x021F(a0)             ## 0000021F
	sb      v0, 0x021F(a0)             ## 0000021F
lbl_8093FAEC:
	lbu     v1, 0x0220(a0)             ## 00000220
	slti    $at, v1, 0x00D3            
	bne     $at, $zero, lbl_8093FB24   
	addiu   v0, v1, 0x0005             ## v0 = 00000005
	addiu   v0, v1, 0xFFFB             ## v0 = FFFFFFFB
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x00D2            
	beq     $at, $zero, lbl_8093FB1C   
	addiu   t1, $zero, 0x00D2          ## t1 = 000000D2
	jr      $ra                        
	sb      t1, 0x0220(a0)             ## 00000220
lbl_8093FB1C:
	jr      $ra                        
	sb      v0, 0x0220(a0)             ## 00000220
lbl_8093FB24:
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x00D3            
	bne     $at, $zero, lbl_8093FB40   
	addiu   t2, $zero, 0x00D2          ## t2 = 000000D2
	jr      $ra                        
	sb      t2, 0x0220(a0)             ## 00000220
lbl_8093FB40:
	sb      v0, 0x0220(a0)             ## 00000220
	jr      $ra                        
	nop


func_8093FB4C:
	sw      a0, 0x0000($sp)            
	sw      a3, 0x000C($sp)            
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bne     a1, $at, lbl_8093FBC0      
	lw      v0, 0x0014($sp)            
	lbu     t6, 0x0189(v0)             ## 00000189
	andi    t7, t6, 0x0040             ## t7 = 00000000
	beql    t7, $zero, lbl_8093FBC4    
	lw      v0, 0x0014($sp)            
	lh      a0, 0x018A(v0)             ## 0000018A
	lw      v1, 0x0010($sp)            
	slti    $at, a0, 0x011C            
	bne     $at, $zero, lbl_8093FBA8   
	sll     t3, a0, 12                 
	lw      v1, 0x0010($sp)            
	sll     t9, a0, 12                 
	lui     $at, 0xFFEE                ## $at = FFEE0000
	lh      t8, 0x0000(v1)             ## 00000000
	ori     $at, $at, 0x4000           ## $at = FFEE4000
	addu    t0, t8, t9                 
	addu    t1, t0, $at                
	beq     $zero, $zero, lbl_8093FBC0 
	sh      t1, 0x0000(v1)             ## 00000000
lbl_8093FBA8:
	lh      t2, 0x0000(v1)             ## 00000000
	lui     $at, 0xFFFF                ## $at = FFFF0000
	ori     $at, $at, 0x1000           ## $at = FFFF1000
	addu    t4, t2, t3                 
	addu    t5, t4, $at                
	sh      t5, 0x0000(v1)             ## 00000000
lbl_8093FBC0:
	lw      v0, 0x0014($sp)            
lbl_8093FBC4:
	addiu   $at, $zero, 0x0008         ## $at = 00000008
	lbu     t6, 0x0221(v0)             ## 00000221
	beq     t6, $zero, lbl_8093FC00    
	nop
	beq     a1, $at, lbl_8093FC00      
	nop
	lw      t8, 0x0180(v0)             ## 00000180
	lui     t7, %hi(func_8093E380)     ## t7 = 80940000
	addiu   t7, t7, %lo(func_8093E380) ## t7 = 8093E380
	bnel    t7, t8, lbl_8093FC0C       
	addiu   $at, $zero, 0x0009         ## $at = 00000009
	lh      t9, 0x018A(v0)             ## 0000018A
	slti    $at, t9, 0x0008            
	bnel    $at, $zero, lbl_8093FC0C   
	addiu   $at, $zero, 0x0009         ## $at = 00000009
lbl_8093FC00:
	beq     $zero, $zero, lbl_8093FD30 
	sw      $zero, 0x0000(a2)          ## 00000000
	addiu   $at, $zero, 0x0009         ## $at = 00000009
lbl_8093FC0C:
	bnel    a1, $at, lbl_8093FC34      
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
	lbu     t0, 0x0184(v0)             ## 00000184
	lui     t2, %hi(var_80940B48)      ## t2 = 80940000
	sll     t1, t0,  2                 
	addu    t2, t2, t1                 
	lw      t2, %lo(var_80940B48)(t2)  
	beq     $zero, $zero, lbl_8093FD30 
	sw      t2, 0x0000(a2)             ## 00000000
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
lbl_8093FC34:
	bnel    a1, $at, lbl_8093FCBC      
	addiu   $at, $zero, 0x000B         ## $at = 0000000B
	lbu     t3, 0x0184(v0)             ## 00000184
	lui     t5, %hi(var_80940B58)      ## t5 = 80940000
	lw      a0, 0x0018($sp)            
	sll     t4, t3,  2                 
	addu    t5, t5, t4                 
	lw      t5, %lo(var_80940B58)(t5)  
	sw      t5, 0x0000(a2)             ## 00000000
	lw      a1, 0x0000(a0)             ## 00000000
	lui     t7, 0xE700                 ## t7 = E7000000
	addiu   t6, a1, 0x0008             ## t6 = 00000008
	sw      t6, 0x0000(a0)             ## 00000000
	sw      $zero, 0x0004(a1)          ## 00000004
	sw      t7, 0x0000(a1)             ## 00000000
	lw      a1, 0x0000(a0)             ## 00000000
	lui     t9, 0xFB00                 ## t9 = FB000000
	addiu   t8, a1, 0x0008             ## t8 = 00000008
	sw      t8, 0x0000(a0)             ## 00000000
	sw      t9, 0x0000(a1)             ## 00000000
	lbu     t4, 0x021F(v0)             ## 0000021F
	lbu     t1, 0x021E(v0)             ## 0000021E
	lbu     t8, 0x0220(v0)             ## 00000220
	lbu     t3, 0x0221(v0)             ## 00000221
	sll     t5, t4, 16                 
	sll     t2, t1, 24                 
	or      t6, t2, t5                 ## t6 = 80940000
	sll     t9, t8,  8                 
	or      t0, t6, t9                 ## t0 = FB940000
	or      t4, t0, t3                 ## t4 = FB940000
	sw      t4, 0x0004(a1)             ## 00000004
	beq     $zero, $zero, lbl_8093FD34 
	or      v0, $zero, $zero           ## v0 = 00000000
	addiu   $at, $zero, 0x000B         ## $at = 0000000B
lbl_8093FCBC:
	bne     a1, $at, lbl_8093FD30      
	lw      a0, 0x0018($sp)            
	lbu     t2, 0x0184(v0)             ## 00000184
	lui     t7, %hi(var_80940B68)      ## t7 = 80940000
	addiu   t7, t7, %lo(var_80940B68)  ## t7 = 80940B68
	sll     t5, t2,  2                 
	addu    v1, t5, t7                 
	lw      a1, 0x0000(a0)             ## 00000000
	lui     t6, 0xE700                 ## t6 = E7000000
	addiu   t8, a1, 0x0008             ## t8 = 00000008
	sw      t8, 0x0000(a0)             ## 00000000
	sw      $zero, 0x0004(a1)          ## 00000004
	sw      t6, 0x0000(a1)             ## 00000000
	lw      a1, 0x0000(a0)             ## 00000000
	lui     t1, 0xFB00                 ## t1 = FB000000
	addiu   t9, a1, 0x0008             ## t9 = 00000008
	sw      t9, 0x0000(a0)             ## 00000000
	sw      t1, 0x0000(a1)             ## 00000000
	lbu     t5, 0x0001(v1)             ## 00000001
	lbu     t3, 0x0000(v1)             ## 00000000
	lbu     t9, 0x0002(v1)             ## 00000002
	lbu     t2, 0x0221(v0)             ## 00000221
	sll     t7, t5, 16                 
	sll     t4, t3, 24                 
	or      t8, t4, t7                 ## t8 = FB940B68
	sll     t1, t9,  8                 
	or      t0, t8, t1                 ## t0 = FB940B68
	or      t5, t0, t2                 ## t5 = FB940B68
	sw      t5, 0x0004(a1)             ## 00000004
lbl_8093FD30:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_8093FD34:
	jr      $ra                        
	nop


func_8093FD3C:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s0, 0x0028($sp)            
	sw      a3, 0x0054($sp)            
	or      a3, a1, $zero              ## a3 = 00000000
	lw      s0, 0x0058($sp)            
	sw      $ra, 0x002C($sp)           
	sw      a0, 0x0048($sp)            
	sw      a1, 0x004C($sp)            
	sw      a2, 0x0050($sp)            
	lw      t7, 0x0180(s0)             ## 00000180
	lui     t6, %hi(func_8093E380)     ## t6 = 80940000
	addiu   t6, t6, %lo(func_8093E380) ## t6 = 8093E380
	bnel    t6, t7, lbl_8093FDEC       
	addiu   $at, $zero, 0x0008         ## $at = 00000008
	lh      t8, 0x018A(s0)             ## 0000018A
	slti    $at, t8, 0x0008            
	bne     $at, $zero, lbl_8093FDE8   
	addiu   $at, $zero, 0x0009         ## $at = 00000009
	bne     a3, $at, lbl_8093FDE8      
	lw      a2, 0x005C($sp)            
	lw      v1, 0x0000(a2)             ## 00000000
	lui     t0, 0xDA38                 ## t0 = DA380000
	ori     t0, t0, 0x0003             ## t0 = DA380003
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x0000(a2)             ## 00000000
	sw      t0, 0x0000(v1)             ## 00000000
	lw      t1, 0x0048($sp)            
	lw      a0, 0x0000(t1)             ## 00000000
	sw      a3, 0x004C($sp)            
	jal     func_800AB900              
	sw      v1, 0x0038($sp)            
	lw      a1, 0x0038($sp)            
	lw      a2, 0x005C($sp)            
	lw      a3, 0x004C($sp)            
	sw      v0, 0x0004(a1)             ## 00000004
	lw      v1, 0x0000(a2)             ## 00000000
	lui     t4, 0x0600                 ## t4 = 06000000
	addiu   t4, t4, 0x46E0             ## t4 = 060046E0
	addiu   t2, v1, 0x0008             ## t2 = 00000008
	sw      t2, 0x0000(a2)             ## 00000000
	lui     t3, 0xDE00                 ## t3 = DE000000
	sw      t3, 0x0000(v1)             ## 00000000
	sw      t4, 0x0004(v1)             ## 00000004
lbl_8093FDE8:
	addiu   $at, $zero, 0x0008         ## $at = 00000008
lbl_8093FDEC:
	bnel    a3, $at, lbl_809403FC      
	lw      $ra, 0x002C($sp)           
	lw      v0, 0x0180(s0)             ## 00000180
	lui     t5, %hi(func_8093E678)     ## t5 = 80940000
	addiu   t5, t5, %lo(func_8093E678) ## t5 = 8093E678
	beql    t5, v0, lbl_809403FC       
	lw      $ra, 0x002C($sp)           
	lbu     t6, 0x0189(s0)             ## 00000189
	lui     t1, %hi(func_8093F150)     ## t1 = 80940000
	addiu   t1, t1, %lo(func_8093F150) ## t1 = 8093F150
	andi    t7, t6, 0x0020             ## t7 = 00000000
	beq     t7, $zero, lbl_8093FE84    
	nop
	lbu     v0, 0x0188(s0)             ## 00000188
	addiu   v0, v0, 0xFFFF             ## v0 = FFFFFFFF
	blez    v0, lbl_8093FE6C           
	sll     t8, v0,  2                 
	subu    t8, t8, v0                 
	sll     t8, t8,  2                 
	addu    a1, s0, t8                 
	addiu   v1, a1, 0x0224             ## v1 = 00000224
	addiu   a0, a1, 0x0218             ## a0 = 00000218
lbl_8093FE44:
	lw      t0, 0x0000(a0)             ## 00000218
	addiu   v0, v0, 0xFFFF             ## v0 = FFFFFFFE
	addiu   v1, v1, 0xFFF4             ## v1 = 00000218
	sw      t0, 0x000C(v1)             ## 00000224
	lw      t9, 0x0004(a0)             ## 0000021C
	addiu   a0, a0, 0xFFF4             ## a0 = 0000020C
	sw      t9, 0x0010(v1)             ## 00000228
	lw      t0, 0x0014(a0)             ## 00000220
	bgtz    v0, lbl_8093FE44           
	sw      t0, 0x0014(v1)             ## 0000022C
lbl_8093FE6C:
	lui     a0, %hi(var_80940B78)      ## a0 = 80940000
	addiu   a0, a0, %lo(var_80940B78)  ## a0 = 80940B78
	jal     func_800AB958              
	addiu   a1, s0, 0x0224             ## a1 = 00000224
	beq     $zero, $zero, lbl_8093FE9C 
	lbu     t2, 0x0188(s0)             ## 00000188
lbl_8093FE84:
	bne     t1, v0, lbl_8093FE98       
	lui     a0, %hi(var_80940B78)      ## a0 = 80940000
	addiu   a0, a0, %lo(var_80940B78)  ## a0 = 80940B78
	jal     func_800AB958              
	addiu   a1, s0, 0x0008             ## a1 = 00000008
lbl_8093FE98:
	lbu     t2, 0x0188(s0)             ## 00000188
lbl_8093FE9C:
	addiu   a0, s0, 0x028C             ## a0 = 0000028C
	or      a1, $zero, $zero           ## a1 = 00000000
	blez    t2, lbl_809403D4           
	or      a2, $zero, $zero           ## a2 = 00000000
	lbu     t3, 0x0184(s0)             ## 00000184
	lui     t5, %hi(var_80940A70)      ## t5 = 80940000
	addiu   t5, t5, %lo(var_80940A70)  ## t5 = 80940A70
	sll     t4, t3,  2                 
	addu    v1, t4, t5                 
	jal     func_800CDCCC              ## Rand.Next() float
	sw      v1, 0x0030($sp)            
	lui     $at, %hi(var_80940BA8)     ## $at = 80940000
	lwc1    $f4, %lo(var_80940BA8)($at) 
	lw      v0, 0x0180(s0)             ## 00000180
	lui     $at, %hi(var_80940BAC)     ## $at = 80940000
	mul.s   $f6, $f0, $f4              
	lwc1    $f8, %lo(var_80940BAC)($at) 
	lui     t6, %hi(func_8093E53C)     ## t6 = 80940000
	addiu   t6, t6, %lo(func_8093E53C) ## t6 = 8093E53C
	lw      v1, 0x0030($sp)            
	lui     t7, %hi(func_8093F0FC)     ## t7 = 80940000
	beq     t6, v0, lbl_8093FF10       
	add.s   $f2, $f6, $f8              
	addiu   t7, t7, %lo(func_8093F0FC) ## t7 = 8093F0FC
	beq     t7, v0, lbl_8093FF10       
	lui     t8, %hi(func_8093F2B0)     ## t8 = 80940000
	addiu   t8, t8, %lo(func_8093F2B0) ## t8 = 8093F2B0
	bne     t8, v0, lbl_80940174       
	lui     $at, 0x4170                ## $at = 41700000
lbl_8093FF10:
	lwc1    $f10, 0x0224(s0)           ## 00000224
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f4                   ## $f4 = 15.00
	lwc1    $f18, 0x0228(s0)           ## 00000228
	trunc.w.s $f16, $f10                 
	lwc1    $f10, 0x022C(s0)           ## 0000022C
	lbu     t2, 0x0000(v1)             ## 00000000
	add.s   $f6, $f18, $f4             
	mfc1    a1, $f16                   
	mtc1    t2, $f18                   ## $f18 = 0.00
	trunc.w.s $f16, $f10                 
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	trunc.w.s $f8, $f6                   
	mfc1    a3, $f16                   
	addiu   a0, s0, 0x028C             ## a0 = 0000028C
	cvt.s.w $f4, $f18                  
	mfc1    a2, $f8                    
	sll     a3, a3, 16                 
	sra     a3, a3, 16                 
	sll     a2, a2, 16                 
	bgez    t2, lbl_8093FF7C           
	sra     a2, a2, 16                 
	lui     $at, 0x4F80                ## $at = 4F800000
	mtc1    $at, $f6                   ## $f6 = 4294967000.00
	nop
	add.s   $f4, $f4, $f6              
lbl_8093FF7C:
	mul.s   $f8, $f4, $f2              
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	addiu   t1, $zero, 0x00C8          ## t1 = 000000C8
	lui     $at, 0x4F00                ## $at = 4F000000
	cfc1    t3, $f31                   
	ctc1    t4, $f31                   
	nop
	cvt.w.s $f10, $f8                  
	cfc1    t4, $f31                   
	nop
	andi    t4, t4, 0x0078             ## t4 = 00000000
	beql    t4, $zero, lbl_8093FFF8    
	mfc1    t4, $f10                   
	mtc1    $at, $f10                  ## $f10 = 2147484000.00
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	sub.s   $f10, $f8, $f10            
	ctc1    t4, $f31                   
	nop
	cvt.w.s $f10, $f10                 
	cfc1    t4, $f31                   
	nop
	andi    t4, t4, 0x0078             ## t4 = 00000000
	bne     t4, $zero, lbl_8093FFEC    
	nop
	mfc1    t4, $f10                   
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_80940004 
	or      t4, t4, $at                ## t4 = 80000000
lbl_8093FFEC:
	beq     $zero, $zero, lbl_80940004 
	addiu   t4, $zero, 0xFFFF          ## t4 = FFFFFFFF
	mfc1    t4, $f10                   
lbl_8093FFF8:
	nop
	bltz    t4, lbl_8093FFEC           
	nop
lbl_80940004:
	sw      t4, 0x0010($sp)            
	lbu     t5, 0x0001(v1)             ## 00000001
	ctc1    t3, $f31                   
	lui     $at, 0x4F80                ## $at = 4F800000
	mtc1    t5, $f16                   ## $f16 = 0.00
	bgez    t5, lbl_8094002C           
	cvt.s.w $f18, $f16                 
	mtc1    $at, $f6                   ## $f6 = 4294967000.00
	nop
	add.s   $f18, $f18, $f6            
lbl_8094002C:
	mul.s   $f4, $f18, $f2             
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	lui     $at, 0x4F00                ## $at = 4F000000
	cfc1    t6, $f31                   
	ctc1    t7, $f31                   
	nop
	cvt.w.s $f8, $f4                   
	cfc1    t7, $f31                   
	nop
	andi    t7, t7, 0x0078             ## t7 = 00000000
	beql    t7, $zero, lbl_809400A4    
	mfc1    t7, $f8                    
	mtc1    $at, $f8                   ## $f8 = 2147484000.00
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	sub.s   $f8, $f4, $f8              
	ctc1    t7, $f31                   
	nop
	cvt.w.s $f8, $f8                   
	cfc1    t7, $f31                   
	nop
	andi    t7, t7, 0x0078             ## t7 = 00000000
	bne     t7, $zero, lbl_80940098    
	nop
	mfc1    t7, $f8                    
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_809400B0 
	or      t7, t7, $at                ## t7 = 80000000
lbl_80940098:
	beq     $zero, $zero, lbl_809400B0 
	addiu   t7, $zero, 0xFFFF          ## t7 = FFFFFFFF
	mfc1    t7, $f8                    
lbl_809400A4:
	nop
	bltz    t7, lbl_80940098           
	nop
lbl_809400B0:
	sw      t7, 0x0014($sp)            
	lbu     t8, 0x0002(v1)             ## 00000002
	ctc1    t6, $f31                   
	lui     $at, 0x4F80                ## $at = 4F800000
	mtc1    t8, $f10                   ## $f10 = 0.00
	bgez    t8, lbl_809400D8           
	cvt.s.w $f16, $f10                 
	mtc1    $at, $f6                   ## $f6 = 4294967000.00
	nop
	add.s   $f16, $f16, $f6            
lbl_809400D8:
	mul.s   $f18, $f16, $f2            
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	lui     $at, 0x4F00                ## $at = 4F000000
	cfc1    t9, $f31                   
	ctc1    t0, $f31                   
	nop
	cvt.w.s $f4, $f18                  
	cfc1    t0, $f31                   
	nop
	andi    t0, t0, 0x0078             ## t0 = 00000000
	beql    t0, $zero, lbl_80940150    
	mfc1    t0, $f4                    
	mtc1    $at, $f4                   ## $f4 = 2147484000.00
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	sub.s   $f4, $f18, $f4             
	ctc1    t0, $f31                   
	nop
	cvt.w.s $f4, $f4                   
	cfc1    t0, $f31                   
	nop
	andi    t0, t0, 0x0078             ## t0 = 00000000
	bne     t0, $zero, lbl_80940144    
	nop
	mfc1    t0, $f4                    
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_8094015C 
	or      t0, t0, $at                ## t0 = 80000000
lbl_80940144:
	beq     $zero, $zero, lbl_8094015C 
	addiu   t0, $zero, 0xFFFF          ## t0 = FFFFFFFF
	mfc1    t0, $f4                    
lbl_80940150:
	nop
	bltz    t0, lbl_80940144           
	nop
lbl_8094015C:
	ctc1    t9, $f31                   
	sw      t0, 0x0018($sp)            
	jal     func_80065BCC              
	sw      t1, 0x001C($sp)            
	beq     $zero, $zero, lbl_809403E4 
	lbu     t5, 0x0189(s0)             ## 00000189
lbl_80940174:
	lwc1    $f8, 0x0224(s0)            ## 00000224
	lwc1    $f6, 0x0228(s0)            ## 00000228
	mtc1    $at, $f16                  ## $f16 = 0.00
	trunc.w.s $f10, $f8                  
	lwc1    $f8, 0x022C(s0)            ## 0000022C
	lbu     t5, 0x0000(v1)             ## 00000000
	add.s   $f18, $f6, $f16            
	mfc1    a1, $f10                   
	mtc1    t5, $f6                    ## $f6 = 0.00
	trunc.w.s $f10, $f8                  
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	trunc.w.s $f4, $f18                  
	mfc1    a3, $f10                   
	addiu   a0, s0, 0x028C             ## a0 = 0000028C
	cvt.s.w $f16, $f6                  
	mfc1    a2, $f4                    
	sll     a3, a3, 16                 
	sra     a3, a3, 16                 
	sll     a2, a2, 16                 
	bgez    t5, lbl_809401DC           
	sra     a2, a2, 16                 
	lui     $at, 0x4F80                ## $at = 4F800000
	mtc1    $at, $f18                  ## $f18 = 4294967000.00
	nop
	add.s   $f16, $f16, $f18           
lbl_809401DC:
	mul.s   $f4, $f16, $f2             
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	addiu   t4, $zero, 0x00C8          ## t4 = 000000C8
	lui     $at, 0x4F00                ## $at = 4F000000
	cfc1    t6, $f31                   
	ctc1    t7, $f31                   
	nop
	cvt.w.s $f8, $f4                   
	cfc1    t7, $f31                   
	nop
	andi    t7, t7, 0x0078             ## t7 = 00000000
	beql    t7, $zero, lbl_80940258    
	mfc1    t7, $f8                    
	mtc1    $at, $f8                   ## $f8 = 2147484000.00
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	sub.s   $f8, $f4, $f8              
	ctc1    t7, $f31                   
	nop
	cvt.w.s $f8, $f8                   
	cfc1    t7, $f31                   
	nop
	andi    t7, t7, 0x0078             ## t7 = 00000000
	bne     t7, $zero, lbl_8094024C    
	nop
	mfc1    t7, $f8                    
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_80940264 
	or      t7, t7, $at                ## t7 = 80000000
lbl_8094024C:
	beq     $zero, $zero, lbl_80940264 
	addiu   t7, $zero, 0xFFFF          ## t7 = FFFFFFFF
	mfc1    t7, $f8                    
lbl_80940258:
	nop
	bltz    t7, lbl_8094024C           
	nop
lbl_80940264:
	sw      t7, 0x0010($sp)            
	lbu     t8, 0x0001(v1)             ## 00000001
	ctc1    t6, $f31                   
	lui     $at, 0x4F80                ## $at = 4F800000
	mtc1    t8, $f10                   ## $f10 = 0.00
	bgez    t8, lbl_8094028C           
	cvt.s.w $f6, $f10                  
	mtc1    $at, $f18                  ## $f18 = 4294967000.00
	nop
	add.s   $f6, $f6, $f18             
lbl_8094028C:
	mul.s   $f16, $f6, $f2             
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	lui     $at, 0x4F00                ## $at = 4F000000
	cfc1    t9, $f31                   
	ctc1    t0, $f31                   
	nop
	cvt.w.s $f4, $f16                  
	cfc1    t0, $f31                   
	nop
	andi    t0, t0, 0x0078             ## t0 = 00000000
	beql    t0, $zero, lbl_80940304    
	mfc1    t0, $f4                    
	mtc1    $at, $f4                   ## $f4 = 2147484000.00
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	sub.s   $f4, $f16, $f4             
	ctc1    t0, $f31                   
	nop
	cvt.w.s $f4, $f4                   
	cfc1    t0, $f31                   
	nop
	andi    t0, t0, 0x0078             ## t0 = 00000000
	bne     t0, $zero, lbl_809402F8    
	nop
	mfc1    t0, $f4                    
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_80940310 
	or      t0, t0, $at                ## t0 = 80000000
lbl_809402F8:
	beq     $zero, $zero, lbl_80940310 
	addiu   t0, $zero, 0xFFFF          ## t0 = FFFFFFFF
	mfc1    t0, $f4                    
lbl_80940304:
	nop
	bltz    t0, lbl_809402F8           
	nop
lbl_80940310:
	sw      t0, 0x0014($sp)            
	lbu     t1, 0x0002(v1)             ## 00000002
	ctc1    t9, $f31                   
	lui     $at, 0x4F80                ## $at = 4F800000
	mtc1    t1, $f8                    ## $f8 = 0.00
	bgez    t1, lbl_80940338           
	cvt.s.w $f10, $f8                  
	mtc1    $at, $f18                  ## $f18 = 4294967000.00
	nop
	add.s   $f10, $f10, $f18           
lbl_80940338:
	mul.s   $f6, $f10, $f2             
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	lui     $at, 0x4F00                ## $at = 4F000000
	cfc1    t2, $f31                   
	ctc1    t3, $f31                   
	nop
	cvt.w.s $f16, $f6                  
	cfc1    t3, $f31                   
	nop
	andi    t3, t3, 0x0078             ## t3 = 00000000
	beql    t3, $zero, lbl_809403B0    
	mfc1    t3, $f16                   
	mtc1    $at, $f16                  ## $f16 = 2147484000.00
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	sub.s   $f16, $f6, $f16            
	ctc1    t3, $f31                   
	nop
	cvt.w.s $f16, $f16                 
	cfc1    t3, $f31                   
	nop
	andi    t3, t3, 0x0078             ## t3 = 00000000
	bne     t3, $zero, lbl_809403A4    
	nop
	mfc1    t3, $f16                   
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_809403BC 
	or      t3, t3, $at                ## t3 = 80000000
lbl_809403A4:
	beq     $zero, $zero, lbl_809403BC 
	addiu   t3, $zero, 0xFFFF          ## t3 = FFFFFFFF
	mfc1    t3, $f16                   
lbl_809403B0:
	nop
	bltz    t3, lbl_809403A4           
	nop
lbl_809403BC:
	ctc1    t2, $f31                   
	sw      t3, 0x0018($sp)            
	jal     func_80065C30              
	sw      t4, 0x001C($sp)            
	beq     $zero, $zero, lbl_809403E4 
	lbu     t5, 0x0189(s0)             ## 00000189
lbl_809403D4:
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_80065C98              
	sw      $zero, 0x0010($sp)         
	lbu     t5, 0x0189(s0)             ## 00000189
lbl_809403E4:
	andi    t6, t5, 0x0080             ## t6 = 00000000
	bnel    t6, $zero, lbl_809403FC    
	lw      $ra, 0x002C($sp)           
	jal     func_800AA740              
	addiu   a0, s0, 0x02E8             ## a0 = 000002E8
	lw      $ra, 0x002C($sp)           
lbl_809403FC:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000
	jr      $ra                        
	nop


func_8094040C:
	addiu   $sp, $sp, 0xFF18           ## $sp = FFFFFF18
	sw      s6, 0x0068($sp)            
	sw      s5, 0x0064($sp)            
	or      s5, a0, $zero              ## s5 = 00000000
	or      s6, a1, $zero              ## s6 = 00000000
	sw      $ra, 0x0074($sp)           
	sw      s8, 0x0070($sp)            
	sw      s7, 0x006C($sp)            
	sw      s4, 0x0060($sp)            
	sw      s3, 0x005C($sp)            
	sw      s2, 0x0058($sp)            
	sw      s1, 0x0054($sp)            
	sw      s0, 0x0050($sp)            
	sdc1    $f24, 0x0048($sp)          
	sdc1    $f22, 0x0040($sp)          
	sdc1    $f20, 0x0038($sp)          
	sw      s5, 0x00E4($sp)            
	lbu     v0, 0x0184(s5)             ## 00000184
	lui     t6, %hi(var_80940A80)      ## t6 = 80940000
	lui     t7, %hi(var_80940A70)      ## t7 = 80940000
	sll     v0, v0,  2                 
	addiu   t6, t6, %lo(var_80940A80)  ## t6 = 80940A80
	addiu   t7, t7, %lo(var_80940A70)  ## t7 = 80940A70
	addu    s2, v0, t6                 
	addu    s8, v0, t7                 
	lw      s4, 0x0000(s6)             ## 00000000
	jal     func_8093F92C              
	or      a0, s5, $zero              ## a0 = 00000000
	jal     func_8007E298              
	lw      a0, 0x0000(s6)             ## 00000000
	jal     func_8007E2C0              
	lw      a0, 0x0000(s6)             ## 00000000
	lbu     v0, 0x0221(s5)             ## 00000221
	addiu   s3, $zero, 0x00FF          ## s3 = 000000FF
	lui     s7, 0xFB00                 ## s7 = FB000000
	beq     s3, v0, lbl_809404A8       
	lui     t6, 0x800F                 ## t6 = 800F0000
	bne     v0, $zero, lbl_8094053C    
	lui     t1, 0xDB06                 ## t1 = DB060000
lbl_809404A8:
	lw      s0, 0x02C0(s4)             ## 000002C0
	addiu   t6, t6, 0x8520             ## t6 = 800E8520
	or      a0, s6, $zero              ## a0 = 00000000
	addiu   t8, s0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s4)             ## 000002C0
	sw      s7, 0x0000(s0)             ## 00000000
	lbu     t3, 0x021F(s5)             ## 0000021F
	lbu     t0, 0x021E(s5)             ## 0000021E
	lbu     t7, 0x0220(s5)             ## 00000220
	lbu     t2, 0x0221(s5)             ## 00000221
	sll     t4, t3, 16                 
	sll     t1, t0, 24                 
	or      t5, t1, t4                 ## t5 = DB060000
	sll     t8, t7,  8                 
	or      t9, t5, t8                 ## t9 = DB060008
	or      t3, t9, t2                 ## t3 = DB060008
	sw      t3, 0x0004(s0)             ## 00000004
	lw      s0, 0x02C0(s4)             ## 000002C0
	lui     t4, 0xDB06                 ## t4 = DB060000
	ori     t4, t4, 0x0024             ## t4 = DB060024
	addiu   t1, s0, 0x0008             ## t1 = 00000008
	sw      t1, 0x02C0(s4)             ## 000002C0
	sw      t6, 0x0004(s0)             ## 00000004
	sw      t4, 0x0000(s0)             ## 00000000
	lw      a1, 0x0140(s5)             ## 00000140
	lw      a2, 0x015C(s5)             ## 0000015C
	lui     t7, %hi(func_8093FD3C)     ## t7 = 80940000
	addiu   t7, t7, %lo(func_8093FD3C) ## t7 = 8093FD3C
	sw      t7, 0x0010($sp)            
	sw      s5, 0x0014($sp)            
	lw      t5, 0x02C0(s4)             ## 000002C0
	lui     a3, %hi(func_8093FB4C)     ## a3 = 80940000
	addiu   a3, a3, %lo(func_8093FB4C) ## a3 = 8093FB4C
	jal     func_8008A414              
	sw      t5, 0x0018($sp)            
	beq     $zero, $zero, lbl_809405B4 
	sw      v0, 0x02C0(s4)             ## 000002C0
lbl_8094053C:
	lui     s7, 0xFB00                 ## s7 = FB000000
	lw      s0, 0x02D0(s4)             ## 000002D0
	addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
	ori     t1, t1, 0x0024             ## t1 = 00000024
	addiu   t8, s0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s4)             ## 000002D0
	sw      s7, 0x0000(s0)             ## 00000000
	lbu     t9, 0x0221(s5)             ## 00000221
	or      a0, s6, $zero              ## a0 = 00000000
	lui     a3, %hi(func_8093FB4C)     ## a3 = 80940000
	or      t2, t9, $at                ## t2 = FFFFFF00
	sw      t2, 0x0004(s0)             ## 00000004
	lw      s0, 0x02D0(s4)             ## 000002D0
	lui     t4, 0x800F                 ## t4 = 800F0000
	addiu   t4, t4, 0x8510             ## t4 = 800E8510
	addiu   t3, s0, 0x0008             ## t3 = 00000008
	sw      t3, 0x02D0(s4)             ## 000002D0
	sw      t4, 0x0004(s0)             ## 00000004
	sw      t1, 0x0000(s0)             ## 00000000
	lw      a1, 0x0140(s5)             ## 00000140
	lw      a2, 0x015C(s5)             ## 0000015C
	lui     t6, %hi(func_8093FD3C)     ## t6 = 80940000
	addiu   t6, t6, %lo(func_8093FD3C) ## t6 = 8093FD3C
	sw      t6, 0x0010($sp)            
	sw      s5, 0x0014($sp)            
	lw      t7, 0x02D0(s4)             ## 000002D0
	addiu   a3, a3, %lo(func_8093FB4C) ## a3 = 8093FB4C
	jal     func_8008A414              
	sw      t7, 0x0018($sp)            
	sw      v0, 0x02D0(s4)             ## 000002D0
lbl_809405B4:
	lbu     t5, 0x0189(s5)             ## 00000189
	andi    t8, t5, 0x0080             ## t8 = 00000000
	bnel    t8, $zero, lbl_80940614    
	lw      s1, 0x02D0(s4)             ## 000002D0
	jal     func_800AA764              
	addiu   a0, s5, 0x02E8             ## a0 = 000002E8
	lw      s1, 0x02C0(s4)             ## 000002C0
	lui     t9, 0xDA38                 ## t9 = DA380000
	ori     t9, t9, 0x0003             ## t9 = DA380003
	addiu   t0, s1, 0x0008             ## t0 = 00000008
	sw      t0, 0x02C0(s4)             ## 000002C0
	sw      t9, 0x0000(s1)             ## 00000000
	jal     func_800AB900              
	lw      a0, 0x0000(s6)             ## 00000000
	sw      v0, 0x0004(s1)             ## 00000004
	lw      s0, 0x02C0(s4)             ## 000002C0
	lui     t1, 0x0600                 ## t1 = 06000000
	addiu   t1, t1, 0x27B0             ## t1 = 060027B0
	addiu   t2, s0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(s4)             ## 000002C0
	lui     t3, 0xDE00                 ## t3 = DE000000
	sw      t3, 0x0000(s0)             ## 00000000
	sw      t1, 0x0004(s0)             ## 00000004
	lw      s1, 0x02D0(s4)             ## 000002D0
lbl_80940614:
	lui     t6, 0xDB06                 ## t6 = DB060000
	ori     t6, t6, 0x0020             ## t6 = DB060020
	addiu   t4, s1, 0x0008             ## t4 = 00000008
	sw      t4, 0x02D0(s4)             ## 000002D0
	sw      t6, 0x0000(s1)             ## 00000000
	lw      a0, 0x0000(s6)             ## 00000000
	addiu   t7, $zero, 0x0020          ## t7 = 00000020
	addiu   t5, $zero, 0x0040          ## t5 = 00000040
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	lui     t0, 0x0001                 ## t0 = 00010000
	addu    t0, t0, s6                 
	sw      t8, 0x0018($sp)            
	sw      t5, 0x0014($sp)            
	sw      t7, 0x0010($sp)            
	sw      $zero, 0x001C($sp)         
	lw      t0, 0x1DE4(t0)             ## 00011DE4
	addiu   t3, $zero, 0x0020          ## t3 = 00000020
	addiu   t1, $zero, 0x0080          ## t1 = 00000080
	subu    $at, $zero, t0             
	sll     t9, $at,  2                
	addu    t9, t9, $at                
	sll     t9, t9,  2                 
	andi    t2, t9, 0x01FF             ## t2 = 00000000
	sw      t2, 0x0020($sp)            
	sw      t1, 0x0028($sp)            
	sw      t3, 0x0024($sp)            
	or      a1, $zero, $zero           ## a1 = 00000000
	or      a2, $zero, $zero           ## a2 = 00000000
	jal     func_8007EB84              
	or      a3, $zero, $zero           ## a3 = 00000000
	sw      v0, 0x0004(s1)             ## 00000004
	lw      s0, 0x02D0(s4)             ## 000002D0
	addiu   t4, s0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02D0(s4)             ## 000002D0
	sw      s7, 0x0000(s0)             ## 00000000
	lbu     t0, 0x0001(s2)             ## 00000001
	lbu     t7, 0x0000(s2)             ## 00000000
	lbu     t1, 0x0002(s2)             ## 00000002
	lbu     t8, 0x0003(s2)             ## 00000003
	sll     t9, t0, 16                 
	sll     t5, t7, 24                 
	or      t2, t5, t9                 ## t2 = 00000000
	sll     t4, t1,  8                 
	or      t6, t2, t4                 ## t6 = 00000008
	or      t0, t6, t8                 ## t0 = 00000008
	sw      t0, 0x0004(s0)             ## 00000004
	lui     t5, %hi(func_8093E53C)     ## t5 = 80940000
	addiu   t5, t5, %lo(func_8093E53C) ## t5 = 8093E53C
	sw      t5, 0x0080($sp)            
	lw      v1, 0x0180(s5)             ## 00000180
	lui     t1, %hi(func_8093F0FC)     ## t1 = 80940000
	addiu   t1, t1, %lo(func_8093F0FC) ## t1 = 8093F0FC
	bne     t5, v1, lbl_80940768       
	nop
	lh      v0, 0x018A(s5)             ## 0000018A
	addiu   t9, $zero, 0x0020          ## t9 = 00000020
	slti    $at, v0, 0x0020            
	beq     $at, $zero, lbl_80940730   
	subu    t3, t9, v0                 
	multu   t3, s3                     
	mflo    s7                         
	bgez    s7, lbl_80940714           
	addu    $at, s7, $zero             
	addiu   $at, s7, 0x001F            ## $at = FB00001F
lbl_80940714:
	sra     s7, $at,  5                
	lui     $at, %hi(var_80940BB0)     ## $at = 80940000
	lwc1    $f20, %lo(var_80940BB0)($at) 
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f22                  ## $f22 = 0.50
	beq     $zero, $zero, lbl_8094082C 
	andi    s7, s7, 0x00FF             ## s7 = 00000000
lbl_80940730:
	multu   v0, s3                     
	mflo    s7                         
	addiu   s7, s7, 0xE020             ## s7 = FFFFE020
	bgez    s7, lbl_80940748           
	addu    $at, s7, $zero             
	addiu   $at, s7, 0x001F            ## $at = FFFFE03F
lbl_80940748:
	sra     s7, $at,  5                
	lui     $at, %hi(var_80940BB4)     ## $at = 80940000
	andi    s7, s7, 0x00FF             ## s7 = 00000020
	lwc1    $f20, %lo(var_80940BB4)($at) 
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f22                  ## $f22 = 0.50
	beq     $zero, $zero, lbl_80940830 
	lbu     t3, 0x0188(s5)             ## 00000188
lbl_80940768:
	bne     t1, v1, lbl_809407AC       
	lui     t6, %hi(func_8093F2B0)     ## t6 = 80940000
	lh      t2, 0x018A(s5)             ## 0000018A
	addiu   t4, $zero, 0x0020          ## t4 = 00000020
	subu    t7, t4, t2                 
	multu   t7, s3                     
	mflo    s7                         
	bgez    s7, lbl_80940790           
	addu    $at, s7, $zero             
	addiu   $at, s7, 0x001F            ## $at = 0000003F
lbl_80940790:
	sra     s7, $at,  5                
	lui     $at, %hi(var_80940BB8)     ## $at = 80940000
	lwc1    $f20, %lo(var_80940BB8)($at) 
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f22                  ## $f22 = 0.50
	beq     $zero, $zero, lbl_8094082C 
	andi    s7, s7, 0x00FF             ## s7 = 00000020
lbl_809407AC:
	addiu   t6, t6, %lo(func_8093F2B0) ## t6 = 8093F2B0
	bne     t6, v1, lbl_809407F4       
	lui     t9, %hi(func_8093F048)     ## t9 = 80940000
	lh      t8, 0x018A(s5)             ## 0000018A
	addiu   t0, $zero, 0x0020          ## t0 = 00000020
	subu    t5, t0, t8                 
	multu   t5, s3                     
	mflo    s7                         
	bgez    s7, lbl_809407D8           
	addu    $at, s7, $zero             
	addiu   $at, s7, 0x001F            ## $at = 0000003F
lbl_809407D8:
	sra     s7, $at,  5                
	lui     $at, %hi(var_80940BBC)     ## $at = 80940000
	lwc1    $f20, %lo(var_80940BBC)($at) 
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f22                  ## $f22 = 0.50
	beq     $zero, $zero, lbl_8094082C 
	andi    s7, s7, 0x00FF             ## s7 = 00000020
lbl_809407F4:
	addiu   t9, t9, %lo(func_8093F048) ## t9 = 8093F048
	bne     t9, v1, lbl_80940818       
	lui     $at, 0x3F00                ## $at = 3F000000
	lui     $at, %hi(var_80940BC0)     ## $at = 80940000
	lwc1    $f20, %lo(var_80940BC0)($at) 
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f22                  ## $f22 = 0.50
	beq     $zero, $zero, lbl_8094082C 
	lbu     s7, 0x00D7($sp)            
lbl_80940818:
	mtc1    $at, $f22                  ## $f22 = 0.50
	lwc1    $f4, 0x0050(s5)            ## 00000050
	lbu     s7, 0x00D7($sp)            
	mul.s   $f20, $f4, $f22            
	nop
lbl_8094082C:
	lbu     t3, 0x0188(s5)             ## 00000188
lbl_80940830:
	lui     t1, %hi(func_8093E380)     ## t1 = 80940000
	addiu   t1, t1, %lo(func_8093E380) ## t1 = 8093E380
	blez    t3, lbl_80940A28           
	or      s2, $zero, $zero           ## s2 = 00000000
	lui     t4, 0x0405                 ## t4 = 04050000
	addiu   t4, t4, 0x2A10             ## t4 = 04052A10
	lui     $at, %hi(var_80940BC4)     ## $at = 80940000
	lwc1    $f24, %lo(var_80940BC4)($at) 
	sw      t4, 0x0078($sp)            
	sw      t1, 0x007C($sp)            
	or      s3, s5, $zero              ## s3 = 00000000
	lw      v1, 0x0180(s5)             ## 00000180
lbl_80940860:
	lw      t2, 0x0080($sp)            
	lui     t7, %hi(func_8093F0FC)     ## t7 = 80940000
	addiu   t7, t7, %lo(func_8093F0FC) ## t7 = 8093F0FC
	beq     t2, v1, lbl_809408A0       
	or      a3, $zero, $zero           ## a3 = 00000000
	beq     t7, v1, lbl_809408A0       
	lui     t6, %hi(func_8093F2B0)     ## t6 = 80940000
	addiu   t6, t6, %lo(func_8093F2B0) ## t6 = 8093F2B0
	beql    t6, v1, lbl_809408A4       
	lw      s0, 0x02D0(s4)             ## 000002D0
	subu    s7, $zero, s2              
	addu    $at, s7, $zero             
	sll     s7, s7,  5                 
	subu    s7, s7, $at                
	addiu   s7, s7, 0x00F8             ## s7 = 00000118
	andi    s7, s7, 0x00FF             ## s7 = 00000018
lbl_809408A0:
	lw      s0, 0x02D0(s4)             ## 000002D0
lbl_809408A4:
	lui     t8, 0xE700                 ## t8 = E7000000
	addiu   t0, s0, 0x0008             ## t0 = 00000008
	sw      t0, 0x02D0(s4)             ## 000002D0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t8, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s4)             ## 000002D0
	lui     t9, 0xFA00                 ## t9 = FA000000
	ori     t9, t9, 0x8080             ## t9 = FA008080
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s4)             ## 000002D0
	sw      t9, 0x0000(s0)             ## 00000000
	lbu     t7, 0x0001(s8)             ## 00000001
	lbu     t1, 0x0000(s8)             ## 00000000
	lbu     t5, 0x0002(s8)             ## 00000002
	sll     t6, t7, 16                 
	sll     t4, t1, 24                 
	or      t0, t4, t6                 ## t0 = 8497FAB0
	sll     t9, t5,  8                 
	or      t3, t0, t9                 ## t3 = FE97FAB0
	andi    t1, s7, 0x00FF             ## t1 = 00000018
	or      t2, t3, t1                 ## t2 = FE97FAB8
	sw      t2, 0x0004(s0)             ## 00000004
	lwc1    $f12, 0x0224(s3)           ## 00000224
	lwc1    $f14, 0x0228(s3)           ## 00000228
	jal     func_800AA7F4              
	lw      a2, 0x022C(s3)             ## 0000022C
	lh      t7, 0x07A0(s6)             ## 000007A0
	sll     t4, t7,  2                 
	addu    t6, s6, t4                 
	jal     func_8004977C              
	lw      a0, 0x0790(t6)             ## 00000790
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addu    a1, v0, $at                
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	or      a0, $zero, $zero           ## a0 = 00000000
	or      a2, $zero, $zero           ## a2 = 00000000
	jal     func_800AAF00              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lw      t8, 0x007C($sp)            
	lw      t5, 0x0180(s5)             ## 00000180
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	bnel    t8, t5, lbl_809409C0       
	mfc1    a2, $f20                   
	lh      t0, 0x018A(s5)             ## 0000018A
	lui     $at, %hi(var_80940BC8)     ## $at = 80940000
	lwc1    $f10, %lo(var_80940BC8)($at) 
	subu    t9, t0, s2                 
	mtc1    t9, $f6                    ## $f6 = 0.00
	lui     $at, %hi(var_80940BCC)     ## $at = 80940000
	cvt.s.w $f8, $f6                   
	mul.s   $f16, $f8, $f10            
	add.s   $f20, $f16, $f22           
	c.lt.s  $f20, $f22                 
	nop
	bc1fl   lbl_80940994               
	c.lt.s  $f24, $f20                 
	beq     $zero, $zero, lbl_809409B0 
	mov.s   $f0, $f22                  
	c.lt.s  $f24, $f20                 
lbl_80940994:
	nop
	bc1fl   lbl_809409AC               
	mov.s   $f2, $f20                  
	beq     $zero, $zero, lbl_809409AC 
	mov.s   $f2, $f24                  
	mov.s   $f2, $f20                  
lbl_809409AC:
	mov.s   $f0, $f2                   
lbl_809409B0:
	lwc1    $f18, %lo(var_80940BCC)($at) 
	mul.s   $f20, $f0, $f18            
	nop
	mfc1    a2, $f20                   
lbl_809409C0:
	mov.s   $f12, $f20                 
	jal     func_800AA8FC              
	mov.s   $f14, $f20                 
	lw      s1, 0x02D0(s4)             ## 000002D0
	lui     t1, 0xDA38                 ## t1 = DA380000
	ori     t1, t1, 0x0003             ## t1 = DA380003
	addiu   t3, s1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02D0(s4)             ## 000002D0
	sw      t1, 0x0000(s1)             ## 00000000
	jal     func_800AB900              
	lw      a0, 0x0000(s6)             ## 00000000
	sw      v0, 0x0004(s1)             ## 00000004
	lw      s0, 0x02D0(s4)             ## 000002D0
	lui     t7, 0xDE00                 ## t7 = DE000000
	addiu   t2, s0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02D0(s4)             ## 000002D0
	sw      t7, 0x0000(s0)             ## 00000000
	lw      t4, 0x0078($sp)            
	sw      t4, 0x0004(s0)             ## 00000004
	lw      t6, 0x00E4($sp)            
	lbu     t8, 0x0188(t6)             ## 00000188
	addiu   s2, s2, 0x0001             ## s2 = 00000001
	addiu   s3, s3, 0x000C             ## s3 = 0000000C
	slt     $at, s2, t8                
	bnel    $at, $zero, lbl_80940860   
	lw      v1, 0x0180(s5)             ## 00000180
lbl_80940A28:
	lw      $ra, 0x0074($sp)           
	ldc1    $f20, 0x0038($sp)          
	ldc1    $f22, 0x0040($sp)          
	ldc1    $f24, 0x0048($sp)          
	lw      s0, 0x0050($sp)            
	lw      s1, 0x0054($sp)            
	lw      s2, 0x0058($sp)            
	lw      s3, 0x005C($sp)            
	lw      s4, 0x0060($sp)            
	lw      s5, 0x0064($sp)            
	lw      s6, 0x0068($sp)            
	lw      s7, 0x006C($sp)            
	lw      s8, 0x0070($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x00E8           ## $sp = 00000000
	nop
	nop
	nop

.section .data

var_80940A70: .word 0xFFAAFFFF, 0xFFC800FF, 0x00AAFFFF, 0xAAFF00FF
var_80940A80: .word 0x6400FFFF, 0xFF0000FF, 0x0000FFFF, 0x009600FF
var_80940A90: .word 0x00910500, 0x00005215, 0x00990000, 0x00000328
.word func_8093C340
.word func_8093C58C
.word func_8093F698
.word func_8094040C
var_80940AB0: .word \
0x03110939, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x00080000, 0x4FC7FFEA, 0x00000000, 0x01050100, \
0x0012003C, 0x000F0000, 0x00000000
var_80940ADC: .word 0x0A000019, 0x003C2800
var_80940AE4: .word \
0xF0020102, 0x00020202, 0xE1E2E402, 0x02020202, \
0x02000000, 0x0000E1E4, 0xE2E2E8E4, 0x00000400
var_80940B04: .word 0x00000000
var_80940B08: .word 0xC8500007, 0x304C1770
var_80940B10: .word 0x00000000, 0x00000000, 0x00000000
var_80940B1C: .word 0xB000D000, 0x50003000
var_80940B24: .word \
0xFFEA0151, 0xF958FE51, 0x036FF2AE, 0x0225036F, \
0xF2AE06B5, 0x0203FAC4
var_80940B3C: .word 0x42F00000, 0x437A0000, 0xC4B18000
var_80940B48: .word 0x06001DE0, 0x06002F88, 0x06003628, 0x06003DC8
var_80940B58: .word 0x06001CB0, 0x06002EB8, 0x06003880, 0x06004020
var_80940B68: .word 0x50006400, 0x500F0000, 0x00463200, 0x46460000
var_80940B78: .word \
0x447A0000, 0xC4D48000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80940B90: .word 0x3DCCCCCD
var_80940B94: .word 0xC5BB8000
var_80940B98: .word 0x453B8000
var_80940B9C: .word 0x453B8000
var_80940BA0: .word 0x3DCCCCCD
var_80940BA4: .word 0x3E4CCCCD
var_80940BA8: .word 0x3E99999A
var_80940BAC: .word 0x3F333333
var_80940BB0: .word 0x3BB78035
var_80940BB4: .word 0x3B30F27C
var_80940BB8: .word 0x3B30F27C
var_80940BBC: .word 0x3B656042
var_80940BC0: .word 0x3B30F27C
var_80940BC4: .word 0x3F4CCCCD
var_80940BC8: .word 0x3CCCCCCD
var_80940BCC: .word 0x3BE56042

