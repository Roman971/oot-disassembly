#include <mips.h>
.set noreorder
.set noat

.section .text
func_8097C3E0:
	addiu   $sp, $sp, 0xFE28           ## $sp = FFFFFE28
	sw      s1, 0x0020($sp)            
	sw      s0, 0x001C($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x0024($sp)           
	lui     a1, %hi(var_8097CE94)      ## a1 = 80980000
	addiu   a1, a1, %lo(var_8097CE94)  ## a1 = 8097CE94
	jal     func_80063F7C              
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t7, 0x001C(s0)             ## 0000001C
	lh      t8, 0x001C(s0)             ## 0000001C
	or      a0, s1, $zero              ## a0 = 00000000
	sb      t7, 0x0141(s0)             ## 00000141
	lb      t1, 0x0141(s0)             ## 00000141
	sra     t9, t8,  8                 
	andi    t0, t9, 0x00FF             ## t0 = 00000000
	beq     t1, $zero, lbl_8097C438    
	sh      t0, 0x001C(s0)             ## 0000001C
	lw      t2, 0x0004(s0)             ## 00000004
	ori     t3, t2, 0x0080             ## t3 = 00000080
	sw      t3, 0x0004(s0)             ## 00000004
lbl_8097C438:
	addiu   a1, s0, 0x0198             ## a1 = 00000198
	jal     func_8004B064              
	sw      a1, 0x0028($sp)            
	lui     a3, %hi(var_8097CE50)      ## a3 = 80980000
	addiu   t4, s0, 0x01B8             ## t4 = 000001B8
	lw      a1, 0x0028($sp)            
	sw      t4, 0x0010($sp)            
	addiu   a3, a3, %lo(var_8097CE50)  ## a3 = 8097CE50
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8004B3EC              
	or      a2, s0, $zero              ## a2 = 00000000
	addiu   a1, s0, 0x014C             ## a1 = 0000014C
	sw      a1, 0x0028($sp)            
	jal     func_8004AB7C              
	or      a0, s1, $zero              ## a0 = 00000000
	lui     a3, %hi(var_8097CE60)      ## a3 = 80980000
	lw      a1, 0x0028($sp)            
	addiu   a3, a3, %lo(var_8097CE60)  ## a3 = 8097CE60
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	lwc1    $f4, 0x0024(s0)            ## 00000024
	lwc1    $f8, 0x0028(s0)            ## 00000028
	lwc1    $f16, 0x002C(s0)           ## 0000002C
	trunc.w.s $f6, $f4                   
	lui     a2, %hi(var_8097CE8C)      ## a2 = 80980000
	addiu   a2, a2, %lo(var_8097CE8C)  ## a2 = 8097CE8C
	trunc.w.s $f10, $f8                  
	mfc1    t6, $f6                    
	addiu   a0, s0, 0x0098             ## a0 = 00000098
	trunc.w.s $f18, $f16                 
	mfc1    t8, $f10                   
	or      a1, $zero, $zero           ## a1 = 00000000
	sh      t6, 0x0192(s0)             ## 00000192
	mfc1    t0, $f18                   
	sh      t8, 0x0194(s0)             ## 00000194
	jal     func_80050344              
	sh      t0, 0x0196(s0)             ## 00000196
	lui     t5, %hi(var_8097CEA1)      ## t5 = 80980000
	lui     t6, %hi(var_8097CEA5)      ## t6 = 80980000
	lui     t1, %hi(var_8097CEA0)      ## t1 = 80980000
	lui     t2, %hi(var_8097CEA4)      ## t2 = 80980000
	lui     t3, %hi(var_8097CEA8)      ## t3 = 80980000
	lui     t4, %hi(var_8097CEAC)      ## t4 = 80980000
	lbu     t6, %lo(var_8097CEA5)(t6)  
	lbu     t5, %lo(var_8097CEA1)(t5)  
	lbu     t1, %lo(var_8097CEA0)(t1)  
	lbu     t2, %lo(var_8097CEA4)(t2)  
	lbu     t3, %lo(var_8097CEA8)(t3)  
	lbu     t4, %lo(var_8097CEAC)(t4)  
	lui     t7, %hi(var_8097CEA9)      ## t7 = 80980000
	lui     t8, %hi(var_8097CEAD)      ## t8 = 80980000
	lui     t9, %hi(var_8097CEA2)      ## t9 = 80980000
	lbu     t9, %lo(var_8097CEA2)(t9)  
	lbu     t8, %lo(var_8097CEAD)(t8)  
	lbu     t7, %lo(var_8097CEA9)(t7)  
	sb      t6, 0x01BD($sp)            
	sb      t5, 0x01B9($sp)            
	sb      t1, 0x01B8($sp)            
	sb      t2, 0x01BC($sp)            
	sb      t3, 0x01C0($sp)            
	sb      t4, 0x01C4($sp)            
	lui     t4, %hi(var_8097CEA7)      ## t4 = 80980000
	lui     t3, %hi(var_8097CEA3)      ## t3 = 80980000
	lui     t2, %hi(var_8097CEAE)      ## t2 = 80980000
	lui     t1, %hi(var_8097CEAA)      ## t1 = 80980000
	lui     t5, %hi(var_8097CEAB)      ## t5 = 80980000
	lui     t6, %hi(var_8097CEAF)      ## t6 = 80980000
	lui     t0, %hi(var_8097CEA6)      ## t0 = 80980000
	lbu     t0, %lo(var_8097CEA6)(t0)  
	lbu     t6, %lo(var_8097CEAF)(t6)  
	lbu     t5, %lo(var_8097CEAB)(t5)  
	lbu     t1, %lo(var_8097CEAA)(t1)  
	lbu     t2, %lo(var_8097CEAE)(t2)  
	lbu     t3, %lo(var_8097CEA3)(t3)  
	lbu     t4, %lo(var_8097CEA7)(t4)  
	sb      t9, 0x01BA($sp)            
	sb      t8, 0x01C5($sp)            
	sb      t7, 0x01C1($sp)            
	addiu   t7, $zero, 0x000A          ## t7 = 0000000A
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	addiu   t9, $sp, 0x0034            ## t9 = FFFFFE5C
	sw      t7, 0x01C8($sp)            
	sw      $zero, 0x01CC($sp)         
	sw      t8, 0x01D0($sp)            
	sw      t9, 0x0014($sp)            
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x0144             ## a1 = 00000144
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	or      a3, $zero, $zero           ## a3 = 00000000
	sw      $zero, 0x0010($sp)         
	sb      t0, 0x01BE($sp)            
	sb      t6, 0x01C7($sp)            
	sb      t5, 0x01C3($sp)            
	sb      t1, 0x01C2($sp)            
	sb      t2, 0x01C6($sp)            
	sb      t3, 0x01BB($sp)            
	jal     func_8001AA5C              
	sb      t4, 0x01BF($sp)            
	addiu   t0, $sp, 0x0034            ## t0 = FFFFFE5C
	sw      t0, 0x0014($sp)            
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x0148             ## a1 = 00000148
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_8001AA5C              
	sw      $zero, 0x0010($sp)         
	lh      t1, 0x001C(s0)             ## 0000001C
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x17A4           ## $at = 000117A4
	bne     t1, $zero, lbl_8097C624    
	addu    a0, s1, $at                
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x17A4           ## $at = 000117A4
	addu    a0, s1, $at                
	jal     func_80081628              ## ObjectIndex
	addiu   a1, $zero, 0x0069          ## a1 = 00000069
	lw      t2, 0x0004(s0)             ## 00000004
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	sb      v0, 0x0140(s0)             ## 00000140
	and     t3, t2, $at                
	beq     $zero, $zero, lbl_8097C64C 
	sw      t3, 0x0004(s0)             ## 00000004
lbl_8097C624:
	jal     func_80081628              ## ObjectIndex
	addiu   a1, $zero, 0x006B          ## a1 = 0000006B
	addiu   t4, $zero, 0x001E          ## t4 = 0000001E
	addiu   t5, $zero, 0x0046          ## t5 = 00000046
	sb      v0, 0x0140(s0)             ## 00000140
	sh      t4, 0x018C(s0)             ## 0000018C
	sh      t5, 0x018E(s0)             ## 0000018E
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80020F04              
	lui     a1, 0x4220                 ## a1 = 42200000
lbl_8097C64C:
	lb      t6, 0x0140(s0)             ## 00000140
	lui     t7, %hi(func_8097C6E8)     ## t7 = 80980000
	addiu   t7, t7, %lo(func_8097C6E8) ## t7 = 8097C6E8
	bgezl   t6, lbl_8097C674           
	sw      t7, 0x013C(s0)             ## 0000013C
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8097C678 
	lw      $ra, 0x0024($sp)           
	sw      t7, 0x013C(s0)             ## 0000013C
lbl_8097C674:
	lw      $ra, 0x0024($sp)           
lbl_8097C678:
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x01D8           ## $sp = 00000000


func_8097C688:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      t6, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_8001AE04              
	lw      a1, 0x0144(t6)             ## 00000144
	lw      t7, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_8001AE04              
	lw      a1, 0x0148(t7)             ## 00000148
	lw      a1, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_8004B148              
	addiu   a1, a1, 0x0198             ## a1 = 00000198
	lw      a1, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_8004ABCC              
	addiu   a1, a1, 0x014C             ## a1 = 0000014C
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8097C6E8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x17A4           ## $at = 000117A4
	lb      a1, 0x0140(a2)             ## 00000140
	sw      a2, 0x0018($sp)            
	jal     func_80081688              
	addu    a0, a3, $at                
	beq     v0, $zero, lbl_8097C750    
	lw      a2, 0x0018($sp)            
	lw      t9, 0x0004(a2)             ## 00000004
	lb      t6, 0x0140(a2)             ## 00000140
	lui     t7, %hi(func_8097CCC8)     ## t7 = 80980000
	addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
	lui     t1, %hi(func_8097C760)     ## t1 = 80980000
	addiu   t7, t7, %lo(func_8097CCC8) ## t7 = 8097CCC8
	addiu   t8, $zero, 0x0020          ## t8 = 00000020
	addiu   t1, t1, %lo(func_8097C760) ## t1 = 8097C760
	and     t0, t9, $at                
	sw      t7, 0x0134(a2)             ## 00000134
	sh      t8, 0x0142(a2)             ## 00000142
	sw      t0, 0x0004(a2)             ## 00000004
	sw      t1, 0x013C(a2)             ## 0000013C
	sb      t6, 0x001E(a2)             ## 0000001E
lbl_8097C750:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8097C760:
	addiu   $sp, $sp, 0xFF48           ## $sp = FFFFFF48
	sw      s0, 0x0038($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x005C($sp)           
	sw      s8, 0x0058($sp)            
	sw      s7, 0x0054($sp)            
	sw      s6, 0x0050($sp)            
	sw      s5, 0x004C($sp)            
	sw      s4, 0x0048($sp)            
	sw      s3, 0x0044($sp)            
	sw      s2, 0x0040($sp)            
	sw      s1, 0x003C($sp)            
	sdc1    $f24, 0x0030($sp)          
	sdc1    $f22, 0x0028($sp)          
	sdc1    $f20, 0x0020($sp)          
	sw      a1, 0x00BC($sp)            
	lh      v0, 0x0142(s0)             ## 00000142
	beq     v0, $zero, lbl_8097C7B4    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x0142(s0)             ## 00000142
	lh      v0, 0x0142(s0)             ## 00000142
lbl_8097C7B4:
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, %hi(var_8097CEE0)     ## $at = 80980000
	lwc1    $f8, %lo(var_8097CEE0)($at) 
	cvt.s.w $f6, $f4                   
	mul.s   $f12, $f6, $f8             
	jal     func_800CF470              
	nop
	lui     $at, 0x4400                ## $at = 44000000
	mtc1    $at, $f10                  ## $f10 = 512.00
	lh      t7, 0x00B6(s0)             ## 000000B6
	lh      t5, 0x0142(s0)             ## 00000142
	mul.s   $f16, $f10, $f0            
	addiu   t6, $zero, 0x0020          ## t6 = 00000020
	trunc.w.s $f18, $f16                 
	mfc1    t9, $f18                   
	nop
	sll     t0, t9, 16                 
	sra     t1, t0, 16                 
	addiu   t2, t1, 0x0400             ## t2 = 00000400
	sra     t3, t2,  1                 
	addu    t4, t7, t3                 
	bne     t5, $zero, lbl_8097C814    
	sh      t4, 0x00B6(s0)             ## 000000B6
	sh      t6, 0x0142(s0)             ## 00000142
lbl_8097C814:
	jal     func_800636C4              ## sins?
	lh      a0, 0x00B6(s0)             ## 000000B6
	mov.s   $f22, $f0                  
	jal     func_80063684              ## coss?
	lh      a0, 0x00B6(s0)             ## 000000B6
	lh      t8, 0x001C(s0)             ## 0000001C
	mov.s   $f24, $f0                  
	addiu   t0, $zero, 0x0002          ## t0 = 00000002
	beq     t8, $zero, lbl_8097C844    
	addiu   t9, $zero, 0x0004          ## t9 = 00000004
	beq     $zero, $zero, lbl_8097C848 
	sw      t9, 0x0080($sp)            
lbl_8097C844:
	sw      t0, 0x0080($sp)            
lbl_8097C848:
	lw      t1, 0x0080($sp)            
	addiu   s6, s0, 0x0198             ## s6 = 00000198
	addiu   s8, $sp, 0x0098            ## s8 = FFFFFFE0
	addiu   v0, t1, 0xFFFE             ## v0 = FFFFFFFE
	slt     $at, v0, t1                
	beq     $at, $zero, lbl_8097CA20   
	or      s3, v0, $zero              ## s3 = FFFFFFFE
	sll     s4, v0,  4                 
	lui     $at, 0x4000                ## $at = 40000000
	subu    s4, s4, v0                 
	addiu   s1, $sp, 0x00B0            ## s1 = FFFFFFF8
	mtc1    $at, $f20                  ## $f20 = 2.00
	or      s2, s1, $zero              ## s2 = FFFFFFF8
	sll     s4, s4,  2                 
	addiu   s7, $sp, 0x008C            ## s7 = FFFFFFD4
	addiu   s5, $sp, 0x00A4            ## s5 = FFFFFFEC
lbl_8097C888:
	lui     t7, %hi(var_8097CE5C)      ## t7 = 80980000
	lw      t7, %lo(var_8097CE5C)(t7)  
	addiu   v0, $sp, 0x008C            ## v0 = FFFFFFD4
	addu    v1, s4, t7                 
	lwc1    $f10, 0x0020(v1)           ## 00000020
	addiu   v0, v0, 0x000C             ## v0 = FFFFFFE0
	sltu    $at, v0, s1                
	mul.s   $f16, $f10, $f22           
	lwc1    $f18, 0x0024(s0)           ## 00000024
	beq     $at, $zero, lbl_8097C918   
	lwc1    $f14, 0x0018(v1)           ## 00000018
lbl_8097C8B4:
	mul.s   $f12, $f14, $f24           
	add.s   $f10, $f18, $f16           
	addiu   v0, v0, 0x000C             ## v0 = FFFFFFEC
	sltu    $at, v0, s1                
	addiu   v1, v1, 0x000C             ## v1 = 0000000C
	add.s   $f10, $f12, $f10           
	swc1    $f10, -0x0018(v0)          ## FFFFFFD4
	lwc1    $f10, 0x0010(v1)           ## 0000001C
	lwc1    $f12, 0x0028(s0)           ## 00000028
	add.s   $f12, $f10, $f12           
	swc1    $f12, -0x0014(v0)          ## FFFFFFD8
	lwc1    $f12, 0x0014(v1)           ## 00000020
	lwc1    $f10, 0x000C(v1)           ## 00000018
	lwc1    $f8, 0x002C(s0)            ## 0000002C
	mul.s   $f12, $f12, $f24           
	add.s   $f12, $f8, $f12            
	mul.s   $f10, $f10, $f22           
	sub.s   $f10, $f12, $f10           
	swc1    $f10, -0x0010(v0)          ## FFFFFFDC
	lwc1    $f10, 0x0020(v1)           ## 0000002C
	lwc1    $f18, 0x0024(s0)           ## 00000024
	lwc1    $f14, 0x0018(v1)           ## 00000024
	mul.s   $f16, $f10, $f22           
	bne     $at, $zero, lbl_8097C8B4   
	nop
lbl_8097C918:
	mul.s   $f12, $f14, $f24           
	add.s   $f10, $f18, $f16           
	addiu   v1, v1, 0x000C             ## v1 = 00000018
	add.s   $f10, $f12, $f10           
	swc1    $f10, -0x000C(v0)          ## FFFFFFE0
	lwc1    $f12, 0x0028(s0)           ## 00000028
	lwc1    $f10, 0x0010(v1)           ## 00000028
	add.s   $f12, $f10, $f12           
	swc1    $f12, -0x0008(v0)          ## FFFFFFE4
	lwc1    $f12, 0x0014(v1)           ## 0000002C
	lwc1    $f10, 0x000C(v1)           ## 00000024
	lwc1    $f8, 0x002C(s0)            ## 0000002C
	mul.s   $f12, $f12, $f24           
	add.s   $f12, $f8, $f12            
	mul.s   $f10, $f10, $f22           
	sub.s   $f10, $f12, $f10           
	swc1    $f10, -0x0004(v0)          ## FFFFFFE8
	or      a0, s6, $zero              ## a0 = 00000198
	or      a1, s3, $zero              ## a1 = FFFFFFFE
	or      a2, s7, $zero              ## a2 = FFFFFFD4
	or      a3, s8, $zero              ## a3 = FFFFFFE0
	jal     func_80050BD4              
	sw      s5, 0x0010($sp)            
	addiu   v0, $sp, 0x008C            ## v0 = FFFFFFD4
	lwc1    $f12, 0x0024(s0)           ## 00000024
	addiu   v0, v0, 0x000C             ## v0 = FFFFFFE0
	lwc1    $f16, -0x000C(v0)          ## FFFFFFD4
	mul.s   $f18, $f20, $f12           
	beql    v0, s2, lbl_8097C9C8       
	sub.s   $f14, $f18, $f16           
	sub.s   $f14, $f18, $f16           
lbl_8097C994:
	lwc1    $f12, -0x0004(v0)          ## FFFFFFDC
	lwc1    $f16, 0x0000(v0)           ## FFFFFFE0
	addiu   v0, v0, 0x000C             ## v0 = FFFFFFEC
	swc1    $f14, -0x0018(v0)          ## FFFFFFD4
	lwc1    $f14, 0x002C(s0)           ## 0000002C
	mul.s   $f14, $f20, $f14           
	sub.s   $f12, $f14, $f12           
	swc1    $f12, -0x0010(v0)          ## FFFFFFDC
	lwc1    $f12, 0x0024(s0)           ## 00000024
	mul.s   $f18, $f20, $f12           
	bnel    v0, s2, lbl_8097C994       
	sub.s   $f14, $f18, $f16           
	sub.s   $f14, $f18, $f16           
lbl_8097C9C8:
	lwc1    $f12, -0x0004(v0)          ## FFFFFFE8
	swc1    $f14, -0x000C(v0)          ## FFFFFFE0
	lwc1    $f14, 0x002C(s0)           ## 0000002C
	mul.s   $f14, $f20, $f14           
	sub.s   $f12, $f14, $f12           
	swc1    $f12, -0x0004(v0)          ## FFFFFFE8
	addiu   a1, s3, 0x0002             ## a1 = 00000000
	or      a0, s6, $zero              ## a0 = 00000198
	bgez    a1, lbl_8097C9FC           
	andi    a1, a1, 0x0003             ## a1 = 00000000
	beq     a1, $zero, lbl_8097C9FC    
	nop
	addiu   a1, a1, 0xFFFC             ## a1 = FFFFFFFC
lbl_8097C9FC:
	or      a2, s7, $zero              ## a2 = FFFFFFD4
	or      a3, s8, $zero              ## a3 = FFFFFFE0
	jal     func_80050BD4              
	sw      s5, 0x0010($sp)            
	lw      t3, 0x0080($sp)            
	addiu   s3, s3, 0x0001             ## s3 = FFFFFFFF
	addiu   s4, s4, 0x003C             ## s4 = 0000003C
	bne     s3, t3, lbl_8097C888       
	nop
lbl_8097CA20:
	lb      t4, 0x0141(s0)             ## 00000141
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f20                  ## $f20 = 2.00
	addiu   s7, $sp, 0x008C            ## s7 = FFFFFFD4
	addiu   s8, $sp, 0x0098            ## s8 = FFFFFFE0
	beq     t4, $zero, lbl_8097CA4C    
	addiu   s6, s0, 0x0198             ## s6 = 00000198
	lw      t5, 0x00BC($sp)            
	lbu     t6, 0x1C27(t5)             ## 00001C27
	beql    t6, $zero, lbl_8097CC04    
	lw      a0, 0x00BC($sp)            
lbl_8097CA4C:
	lh      t8, 0x001C(s0)             ## 0000001C
	addiu   a0, $zero, 0x000C          ## a0 = 0000000C
	lui     a1, %hi(var_8097CEC8)      ## a1 = 80980000
	multu   t8, a0                     
	addiu   a1, a1, %lo(var_8097CEC8)  ## a1 = 8097CEC8
	lwc1    $f8, 0x0024(s0)            ## 00000024
	lui     a2, %hi(var_8097CEB0)      ## a2 = 80980000
	addiu   a2, a2, %lo(var_8097CEB0)  ## a2 = 8097CEB0
	mflo    t9                         
	addu    v0, a1, t9                 
	lwc1    $f4, 0x0008(v0)            ## 00000008
	lwc1    $f18, 0x0000(v0)           ## 00000000
	mul.s   $f16, $f4, $f22            
	add.s   $f10, $f8, $f16            
	mul.s   $f6, $f18, $f24            
	add.s   $f4, $f6, $f10             
	swc1    $f4, 0x008C($sp)           
	lh      t0, 0x001C(s0)             ## 0000001C
	lwc1    $f16, 0x0028(s0)           ## 00000028
	multu   t0, a0                     
	mflo    t1                         
	addu    t2, a1, t1                 
	lwc1    $f8, 0x0004(t2)            ## 00000004
	add.s   $f18, $f8, $f16            
	swc1    $f18, 0x0090($sp)          
	lh      t7, 0x001C(s0)             ## 0000001C
	lwc1    $f6, 0x002C(s0)            ## 0000002C
	multu   t7, a0                     
	mflo    t3                         
	addu    v0, a1, t3                 
	lwc1    $f10, 0x0008(v0)           ## 00000008
	lwc1    $f16, 0x0000(v0)           ## 00000000
	mul.s   $f4, $f10, $f24            
	add.s   $f8, $f6, $f4              
	mul.s   $f18, $f16, $f22           
	sub.s   $f10, $f8, $f18            
	swc1    $f10, 0x0094($sp)          
	lh      t4, 0x001C(s0)             ## 0000001C
	lwc1    $f6, 0x0024(s0)            ## 00000024
	multu   t4, a0                     
	mflo    t5                         
	addu    v1, a2, t5                 
	lwc1    $f4, 0x0008(v1)            ## 00000008
	lwc1    $f18, 0x0000(v1)           ## 00000000
	mul.s   $f16, $f4, $f22            
	add.s   $f8, $f6, $f16             
	mul.s   $f10, $f18, $f24           
	add.s   $f4, $f10, $f8             
	swc1    $f4, 0x0098($sp)           
	lh      t6, 0x001C(s0)             ## 0000001C
	lwc1    $f16, 0x0028(s0)           ## 00000028
	multu   t6, a0                     
	mflo    t8                         
	addu    t9, a2, t8                 
	lwc1    $f6, 0x0004(t9)            ## 00000004
	add.s   $f18, $f6, $f16            
	swc1    $f18, 0x009C($sp)          
	lh      t0, 0x001C(s0)             ## 0000001C
	lwc1    $f10, 0x002C(s0)           ## 0000002C
	multu   t0, a0                     
	mflo    t1                         
	addu    v1, a2, t1                 
	lwc1    $f8, 0x0008(v1)            ## 00000008
	lwc1    $f16, 0x0000(v1)           ## 00000000
	mul.s   $f4, $f8, $f24             
	add.s   $f6, $f10, $f4             
	mul.s   $f18, $f16, $f22           
	sub.s   $f8, $f6, $f18             
	swc1    $f8, 0x00A0($sp)           
	jal     func_8001A890              
	lw      a0, 0x0144(s0)             ## 00000144
	or      a0, v0, $zero              ## a0 = 00000000
	or      a1, s7, $zero              ## a1 = FFFFFFD4
	jal     func_80013F30              
	or      a2, s8, $zero              ## a2 = FFFFFFE0
	addiu   v0, $sp, 0x008C            ## v0 = FFFFFFD4
	addiu   v1, $sp, 0x00A4            ## v1 = FFFFFFEC
	lwc1    $f16, 0x0024(s0)           ## 00000024
	addiu   v0, v0, 0x000C             ## v0 = FFFFFFE0
	lwc1    $f22, -0x000C(v0)          ## FFFFFFD4
	mul.s   $f24, $f20, $f16           
	beql    v0, v1, lbl_8097CBD0       
	sub.s   $f18, $f24, $f22           
	sub.s   $f18, $f24, $f22           
lbl_8097CB9C:
	lwc1    $f16, -0x0004(v0)          ## FFFFFFDC
	lwc1    $f22, 0x0000(v0)           ## FFFFFFE0
	addiu   v0, v0, 0x000C             ## v0 = FFFFFFEC
	swc1    $f18, -0x0018(v0)          ## FFFFFFD4
	lwc1    $f18, 0x002C(s0)           ## 0000002C
	mul.s   $f18, $f20, $f18           
	sub.s   $f16, $f18, $f16           
	swc1    $f16, -0x0010(v0)          ## FFFFFFDC
	lwc1    $f16, 0x0024(s0)           ## 00000024
	mul.s   $f24, $f20, $f16           
	bnel    v0, v1, lbl_8097CB9C       
	sub.s   $f18, $f24, $f22           
	sub.s   $f18, $f24, $f22           
lbl_8097CBD0:
	lwc1    $f16, -0x0004(v0)          ## FFFFFFE8
	swc1    $f18, -0x000C(v0)          ## FFFFFFE0
	lwc1    $f18, 0x002C(s0)           ## 0000002C
	mul.s   $f18, $f20, $f18           
	sub.s   $f16, $f18, $f16           
	swc1    $f16, -0x0004(v0)          ## FFFFFFE8
	jal     func_8001A890              
	lw      a0, 0x0148(s0)             ## 00000148
	or      a0, v0, $zero              ## a0 = 00000000
	or      a1, s7, $zero              ## a1 = FFFFFFD4
	jal     func_80013F30              
	or      a2, s8, $zero              ## a2 = FFFFFFE0
	lw      a0, 0x00BC($sp)            
lbl_8097CC04:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	addu    s1, a0, $at                
	or      a1, s1, $zero              ## a1 = FFFFFFF8
	jal     func_8004BD50              ## CollisionCheck_setAT
	or      a2, s6, $zero              ## a2 = 00000198
	lw      a0, 0x00BC($sp)            
	or      a1, s1, $zero              ## a1 = FFFFFFF8
	jal     func_8004C130              ## CollisionCheck_setOT
	addiu   a2, s0, 0x014C             ## a2 = 0000014C
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8002313C              
	addiu   a1, $zero, 0x204C          ## a1 = 0000204C
	lw      $ra, 0x005C($sp)           
	ldc1    $f20, 0x0020($sp)          
	ldc1    $f22, 0x0028($sp)          
	ldc1    $f24, 0x0030($sp)          
	lw      s0, 0x0038($sp)            
	lw      s1, 0x003C($sp)            
	lw      s2, 0x0040($sp)            
	lw      s3, 0x0044($sp)            
	lw      s4, 0x0048($sp)            
	lw      s5, 0x004C($sp)            
	lw      s6, 0x0050($sp)            
	lw      s7, 0x0054($sp)            
	lw      s8, 0x0058($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x00B8           ## $sp = 00000000


func_8097CC74:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lw      v0, 0x1C44(a1)             ## 00001C44
	lui     $at, 0x3000                ## $at = 30000000
	ori     $at, $at, 0x00C0           ## $at = 300000C0
	lw      t6, 0x066C(v0)             ## 0000066C
	and     t7, t6, $at                
	beql    t7, $zero, lbl_8097CCB0    
	lw      t9, 0x013C(a0)             ## 0000013C
	lw      t9, 0x013C(a0)             ## 0000013C
	lui     t8, %hi(func_8097C6E8)     ## t8 = 80980000
	addiu   t8, t8, %lo(func_8097C6E8) ## t8 = 8097C6E8
	bnel    t8, t9, lbl_8097CCBC       
	lw      $ra, 0x0014($sp)           
	lw      t9, 0x013C(a0)             ## 0000013C
lbl_8097CCB0:
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x0014($sp)           
lbl_8097CCBC:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8097CCC8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a1, $zero              ## a2 = 00000000
	lb      t6, 0x0141(a0)             ## 00000141
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0xBF20             ## a1 = 0600BF20
	beql    t6, $zero, lbl_8097CCFC    
	lh      t7, 0x001C(a0)             ## 0000001C
	jal     func_800280C8              
	or      a0, a2, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8097CD30 
	lw      $ra, 0x0014($sp)           
	lh      t7, 0x001C(a0)             ## 0000001C
lbl_8097CCFC:
	or      a0, a2, $zero              ## a0 = 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	bne     t7, $zero, lbl_8097CD24    
	nop
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0xBF20             ## a1 = 0600BF20
	jal     func_80028048              
	or      a0, a2, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8097CD30 
	lw      $ra, 0x0014($sp)           
lbl_8097CD24:
	jal     func_80028048              
	addiu   a1, a1, 0x21F0             ## a1 = 000021F0
	lw      $ra, 0x0014($sp)           
lbl_8097CD30:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop
	nop

.section .data

var_8097CD40: .word 0x00B10600, 0x00000011, 0x00010000, 0x00000328
.word func_8097C3E0
.word func_8097C688
.word func_8097CC74
.word 0x00000000
var_8097CD60: .word \
0x02000000, 0x20000000, 0x00040000, 0x00000000, \
0x00000000, 0x01000000, 0x43B68000, 0x42340000, \
0x41D80000, 0x43020000, 0x42340000, 0x43160000, \
0x43910000, 0x42340000, 0x43110000, 0x02000000, \
0x20000000, 0x00040000, 0x00000000, 0x00000000, \
0x01000000, 0x437A0000, 0x42340000, 0x42B40000, \
0x42480000, 0x42340000, 0x42A00000, 0x43200000, \
0x42340000, 0x43200000, 0x02000000, 0x20000000, \
0x00040000, 0x00000000, 0x00000000, 0x01000000, \
0xC3988000, 0x42040000, 0xC0E00000, 0xC35C0000, \
0x42040000, 0x42200000, 0xC3020000, 0x42040000, \
0xC0A00000, 0x02000000, 0x20000000, 0x00040000, \
0x00000000, 0x00000000, 0x01000000, 0xC33E0000, \
0x42040000, 0x42200000, 0xC1F00000, 0x42040000, \
0x41700000, 0xC28C0000, 0x42040000, 0xC1F00000
var_8097CE50: .word 0x0A110000, 0x20020000, 0x00000004
var_8097CE5C: .word var_8097CD60
var_8097CE60: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00500082, 0x00000000, 0x00000000
var_8097CE8C: .word 0x00000050, 0x0082FF00
var_8097CE94: .word 0xB0F803E8, 0x801F0004, 0x48500064
var_8097CEA0: .byte 0xFA
var_8097CEA1: .byte 0xFA
var_8097CEA2: .byte 0xFA
var_8097CEA3: .byte 0xC8
var_8097CEA4: .byte 0xC8
var_8097CEA5: .byte 0xC8
var_8097CEA6: .byte 0xC8
var_8097CEA7: .byte 0x82
var_8097CEA8: .byte 0xC8
var_8097CEA9: .byte 0xC8
var_8097CEAA: .byte 0xC8
var_8097CEAB: .byte 0x3C
var_8097CEAC: .byte 0x96
var_8097CEAD: .byte 0x96
var_8097CEAE: .byte 0x96
var_8097CEAF: .byte 0x14
var_8097CEB0: .word \
0xC1A00000, 0x42480000, 0x43020000, 0xC2480000, \
0x42040000, 0x41A00000
var_8097CEC8: .word \
0x43BE0000, 0x42480000, 0x42480000, 0x439B0000, \
0x42040000, 0x00000000

.section .rodata

var_8097CEE0: .word 0x3E490FDB, 0x00000000, 0x00000000, 0x00000000

