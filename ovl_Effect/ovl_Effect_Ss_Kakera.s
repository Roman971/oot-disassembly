#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B34AB0:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s1, 0x0018($sp)            
	sw      s0, 0x0014($sp)            
	sw      a1, 0x0024($sp)            
	or      a1, a0, $zero              ## a1 = 00000000
	or      s0, a2, $zero              ## s0 = 00000000
	or      s1, a3, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0020($sp)            
	lw      t7, 0x0000(s1)             ## 00000000
	addiu   t1, $zero, 0x0065          ## t1 = 00000065
	lui     a0, %hi(var_80B359B0)      ## a0 = 80B30000
	sw      t7, 0x0000(s0)             ## 00000000
	lw      t6, 0x0004(s1)             ## 00000004
	addiu   a0, a0, %lo(var_80B359B0)  ## a0 = 80B359B0
	sw      t6, 0x0004(s0)             ## 00000004
	lw      t7, 0x0008(s1)             ## 00000008
	sw      t7, 0x0008(s0)             ## 00000008
	lw      t9, 0x000C(s1)             ## 0000000C
	sw      t9, 0x000C(s0)             ## 0000000C
	lw      t8, 0x0010(s1)             ## 00000010
	sw      t8, 0x0010(s0)             ## 00000010
	lw      t9, 0x0014(s1)             ## 00000014
	sw      t9, 0x0014(s0)             ## 00000014
	lw      t0, 0x0034(s1)             ## 00000034
	sb      t1, 0x005E(s0)             ## 0000005E
	sh      t0, 0x005C(s0)             ## 0000005C
	lw      v1, 0x003C(s1)             ## 0000003C
	beq     v1, $zero, lbl_80B34B68    
	nop
	sw      v1, 0x0038(s0)             ## 00000038
	lh      a2, 0x003A(s1)             ## 0000003A
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	addiu   t2, $zero, 0xFFFF          ## t2 = FFFFFFFF
	beq     a2, $at, lbl_80B34B50      
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     a2, $at, lbl_80B34B50      
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bne     a2, $at, lbl_80B34B58      
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80B34B50:
	beq     $zero, $zero, lbl_80B34B70 
	sh      t2, 0x0054(s0)             ## 00000054
lbl_80B34B58:
	jal     func_80B34F64              
	sh      a2, 0x0054(s0)             ## 00000054
	beq     $zero, $zero, lbl_80B34B70 
	nop
lbl_80B34B68:
	jal     func_80001B38              
	addiu   a1, $zero, 0x00AF          ## a1 = 000000AF
lbl_80B34B70:
	lui     t3, %hi(func_80B34C78)     ## t3 = 80B30000
	lui     t4, %hi(func_80B35814)     ## t4 = 80B30000
	addiu   t3, t3, %lo(func_80B34C78) ## t3 = 80B34C78
	addiu   t4, t4, %lo(func_80B35814) ## t4 = 80B35814
	sw      t3, 0x0028(s0)             ## 00000028
	sw      t4, 0x0024(s0)             ## 00000024
	lw      t6, 0x0018(s1)             ## 00000018
	sw      t6, 0x002C(s0)             ## 0000002C
	lw      t5, 0x001C(s1)             ## 0000001C
	sw      t5, 0x0030(s0)             ## 00000030
	lw      t6, 0x0020(s1)             ## 00000020
	sw      t6, 0x0034(s0)             ## 00000034
	lh      t7, 0x002C(s1)             ## 0000002C
	sh      t7, 0x0040(s0)             ## 00000040
	lh      t8, 0x0024(s1)             ## 00000024
	jal     func_800CDCCC              ## Rand.Next() float
	sh      t8, 0x0042(s0)             ## 00000042
	lui     $at, %hi(var_80B359C4)     ## $at = 80B30000
	lwc1    $f4, %lo(var_80B359C4)($at) 
	mul.s   $f6, $f0, $f4              
	trunc.w.s $f8, $f6                   
	mfc1    t0, $f8                    
	jal     func_800CDCCC              ## Rand.Next() float
	sh      t0, 0x0044(s0)             ## 00000044
	lui     $at, %hi(var_80B359C8)     ## $at = 80B30000
	lwc1    $f10, %lo(var_80B359C8)($at) 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	mul.s   $f16, $f0, $f10            
	trunc.w.s $f18, $f16                 
	mfc1    t2, $f18                   
	nop
	sh      t2, 0x0046(s0)             ## 00000046
	lh      t3, 0x0026(s1)             ## 00000026
	sh      t3, 0x0048(s0)             ## 00000048
	lh      t4, 0x0028(s1)             ## 00000028
	sh      t4, 0x004A(s0)             ## 0000004A
	lh      t5, 0x002A(s1)             ## 0000002A
	sh      t5, 0x004C(s0)             ## 0000004C
	lh      t6, 0x002E(s1)             ## 0000002E
	sh      t6, 0x004E(s0)             ## 0000004E
	lh      t7, 0x0030(s1)             ## 00000030
	sh      t7, 0x0050(s0)             ## 00000050
	lh      t8, 0x0032(s1)             ## 00000032
	sh      t8, 0x0052(s0)             ## 00000052
	lh      t9, 0x0038(s1)             ## 00000038
	sh      t9, 0x0058(s0)             ## 00000058
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80B34C3C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	swc1    $f12, 0x0018($sp)          
	swc1    $f14, 0x001C($sp)          
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lwc1    $f12, 0x001C($sp)          
	lwc1    $f8, 0x0018($sp)           
	lw      $ra, 0x0014($sp)           
	mul.s   $f2, $f0, $f12             
	add.s   $f4, $f2, $f2              
	sub.s   $f6, $f4, $f12             
	add.s   $f0, $f6, $f8              
	jr      $ra                        
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80B34C78:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      s1, 0x0018($sp)            
	or      s1, a2, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      s0, 0x0014($sp)            
	sw      a1, 0x0054($sp)            
	lh      t6, 0x004E(s1)             ## 0000004E
	lui     $at, 0x3B80                ## $at = 3B800000
	mtc1    $at, $f8                   ## $f8 = 0.00
	mtc1    t6, $f4                    ## $f4 = 0.00
	lw      s0, 0x0000(a0)             ## 00000000
	or      a3, $zero, $zero           ## a3 = 00000000
	cvt.s.w $f6, $f4                   
	mul.s   $f10, $f6, $f8             
	swc1    $f10, 0x0044($sp)          
	lh      t7, 0x0058(s1)             ## 00000058
	sw      t7, 0x0040($sp)            
	lh      t8, 0x0054(s1)             ## 00000054
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	beql    t8, $at, lbl_80B34D6C      
	lwc1    $f12, 0x0000(s1)           ## 00000000
	lh      t9, 0x0048(s1)             ## 00000048
	addiu   $at, $zero, 0x0080         ## $at = 00000080
	sra     t0, t9,  7                 
	andi    t1, t0, 0x0001             ## t1 = 00000000
	sll     t2, t1,  7                 
	bnel    t2, $at, lbl_80B34D30      
	lw      v0, 0x02C0(s0)             ## 000002C0
	lw      v0, 0x02D0(s0)             ## 000002D0
	lui     t4, 0xDB06                 ## t4 = DB060000
	ori     t4, t4, 0x0018             ## t4 = DB060018
	addiu   t3, v0, 0x0008             ## t3 = 00000008
	sw      t3, 0x02D0(s0)             ## 000002D0
	sw      t4, 0x0000(v0)             ## 00000000
	lh      t5, 0x0056(s1)             ## 00000056
	lui     t8, 0x0001                 ## t8 = 00010000
	sll     t6, t5,  4                 
	addu    t6, t6, t5                 
	sll     t6, t6,  2                 
	addu    t7, a0, t6                 
	addu    t8, t8, t7                 
	lw      t8, 0x17B4(t8)             ## 000117B4
	sw      t8, 0x0004(v0)             ## 00000004
	beq     $zero, $zero, lbl_80B34D6C 
	lwc1    $f12, 0x0000(s1)           ## 00000000
	lw      v0, 0x02C0(s0)             ## 000002C0
lbl_80B34D30:
	lui     t0, 0xDB06                 ## t0 = DB060000
	ori     t0, t0, 0x0018             ## t0 = DB060018
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(s0)             ## 000002C0
	sw      t0, 0x0000(v0)             ## 00000000
	lh      t1, 0x0056(s1)             ## 00000056
	lui     t4, 0x0001                 ## t4 = 00010000
	sll     t2, t1,  4                 
	addu    t2, t2, t1                 
	sll     t2, t2,  2                 
	addu    t3, a0, t2                 
	addu    t4, t4, t3                 
	lw      t4, 0x17B4(t4)             ## 000117B4
	sw      t4, 0x0004(v0)             ## 00000004
	lwc1    $f12, 0x0000(s1)           ## 00000000
lbl_80B34D6C:
	lwc1    $f14, 0x0004(s1)           ## 00000004
	lw      a2, 0x0008(s1)             ## 00000008
	jal     func_800AA7F4              
	sw      a0, 0x0050($sp)            
	lh      t5, 0x0046(s1)             ## 00000046
	lui     $at, %hi(var_80B359CC)     ## $at = 80B30000
	lwc1    $f4, %lo(var_80B359CC)($at) 
	mtc1    t5, $f16                   ## $f16 = 0.00
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	cvt.s.w $f18, $f16                 
	mul.s   $f12, $f18, $f4            
	jal     func_800AAB94              
	nop
	lh      t6, 0x0044(s1)             ## 00000044
	lui     $at, %hi(var_80B359D0)     ## $at = 80B30000
	lwc1    $f10, %lo(var_80B359D0)($at) 
	mtc1    t6, $f6                    ## $f6 = 0.00
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	cvt.s.w $f8, $f6                   
	mul.s   $f12, $f8, $f10            
	jal     func_800AA9E0              
	nop
	lwc1    $f12, 0x0044($sp)          
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mfc1    a2, $f12                   
	jal     func_800AA8FC              
	mov.s   $f14, $f12                 
	lh      t7, 0x0048(s1)             ## 00000048
	addiu   $at, $zero, 0x0080         ## $at = 00000080
	lui     t2, 0xDA38                 ## t2 = DA380000
	sra     t8, t7,  7                 
	andi    t9, t8, 0x0001             ## t9 = 00000000
	sll     t0, t9,  7                 
	bne     t0, $at, lbl_80B34EA8      
	lui     t5, 0xDA38                 ## t5 = DA380000
	lw      v0, 0x02D0(s0)             ## 000002D0
	ori     t2, t2, 0x0003             ## t2 = DA380003
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t1, v0, 0x0008             ## t1 = 00000008
	sw      t1, 0x02D0(s0)             ## 000002D0
	sw      t2, 0x0000(v0)             ## 00000000
	jal     func_800AB900              
	sw      v0, 0x002C($sp)            
	lw      v1, 0x002C($sp)            
	sw      v0, 0x0004(v1)             ## 00000004
	lw      t3, 0x0050($sp)            
	jal     func_8007E2C0              
	lw      a0, 0x0000(t3)             ## 00000000
	lw      a1, 0x0040($sp)            
	lui     t5, 0xFA00                 ## t5 = FA000000
	lui     t7, %hi(var_80B35918)      ## t7 = 80B30000
	bltz    a1, lbl_80B34E84           
	sll     t6, a1,  2                 
	lw      v0, 0x02D0(s0)             ## 000002D0
	subu    t6, t6, a1                 
	addiu   t7, t7, %lo(var_80B35918)  ## t7 = 80B35918
	addiu   t4, v0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02D0(s0)             ## 000002D0
	addu    v1, t6, t7                 
	sw      t5, 0x0000(v0)             ## 00000000
	lbu     t2, 0x0000(v1)             ## 00000000
	lbu     t9, 0x0002(v1)             ## 00000002
	lbu     t6, 0x0001(v1)             ## 00000001
	sll     t3, t2, 24                 
	sll     t0, t9,  8                 
	or      t4, t0, t3                 ## t4 = 00000000
	sll     t7, t6, 16                 
	or      t8, t4, t7                 ## t8 = 80B35918
	ori     t9, t8, 0x00FF             ## t9 = 80B359FF
	sw      t9, 0x0004(v0)             ## 00000004
lbl_80B34E84:
	lw      v0, 0x02D0(s0)             ## 000002D0
	lui     t2, 0xDE00                 ## t2 = DE000000
	addiu   t1, v0, 0x0008             ## t1 = 00000008
	sw      t1, 0x02D0(s0)             ## 000002D0
	sw      t2, 0x0000(v0)             ## 00000000
	lw      t0, 0x0038(s1)             ## 00000038
	sw      t0, 0x0004(v0)             ## 00000004
	beq     $zero, $zero, lbl_80B34F54 
	lw      $ra, 0x001C($sp)           
lbl_80B34EA8:
	lw      v0, 0x02C0(s0)             ## 000002C0
	ori     t5, t5, 0x0003             ## t5 = FA000003
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t3, v0, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s0)             ## 000002C0
	sw      t5, 0x0000(v0)             ## 00000000
	jal     func_800AB900              
	sw      v0, 0x0020($sp)            
	lw      v1, 0x0020($sp)            
	sw      v0, 0x0004(v1)             ## 00000004
	lw      t6, 0x0050($sp)            
	jal     func_8007E298              
	lw      a0, 0x0000(t6)             ## 00000000
	lw      a1, 0x0040($sp)            
	lui     t7, 0xFA00                 ## t7 = FA000000
	lui     t9, %hi(var_80B35918)      ## t9 = 80B30000
	bltz    a1, lbl_80B34F34           
	sll     t8, a1,  2                 
	lw      v0, 0x02C0(s0)             ## 000002C0
	subu    t8, t8, a1                 
	addiu   t9, t9, %lo(var_80B35918)  ## t9 = 80B35918
	addiu   t4, v0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(s0)             ## 000002C0
	addu    v1, t8, t9                 
	sw      t7, 0x0000(v0)             ## 00000000
	lbu     t5, 0x0000(v1)             ## 00000000
	lbu     t2, 0x0002(v1)             ## 00000002
	lbu     t8, 0x0001(v1)             ## 00000001
	sll     t6, t5, 24                 
	sll     t0, t2,  8                 
	or      t4, t0, t6                 ## t4 = 00000000
	sll     t9, t8, 16                 
	or      t1, t4, t9                 ## t1 = 80B35918
	ori     t2, t1, 0x00FF             ## t2 = 80B359FF
	sw      t2, 0x0004(v0)             ## 00000004
lbl_80B34F34:
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t5, 0xDE00                 ## t5 = DE000000
	addiu   t3, v0, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s0)             ## 000002C0
	sw      t5, 0x0000(v0)             ## 00000000
	lw      t0, 0x0038(s1)             ## 00000038
	sw      t0, 0x0004(v0)             ## 00000004
	lw      $ra, 0x001C($sp)           
lbl_80B34F54:
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000


func_80B34F64:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x17A4           ## $at = 000117A4
	addu    a0, a3, $at                
	lh      a1, 0x0054(a2)             ## 00000054
	sw      a2, 0x0020($sp)            
	jal     func_80081628              ## ObjectIndex
	sw      a0, 0x001C($sp)            
	lw      a2, 0x0020($sp)            
	lw      a0, 0x001C($sp)            
	sh      v0, 0x0056(a2)             ## 00000056
	lh      a1, 0x0056(a2)             ## 00000056
	bltzl   a1, lbl_80B34FBC           
	sh      $zero, 0x005C(a2)          ## 0000005C
	jal     func_80081688              
	sw      a2, 0x0020($sp)            
	bne     v0, $zero, lbl_80B34FC0    
	lw      a2, 0x0020($sp)            
	sh      $zero, 0x005C(a2)          ## 0000005C
lbl_80B34FBC:
	sw      $zero, 0x0028(a2)          ## 00000028
lbl_80B34FC0:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B34FD0:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sdc1    $f22, 0x0020($sp)          
	lui     $at, 0x3A80                ## $at = 3A800000
	sw      s0, 0x0028($sp)            
	mtc1    $at, $f0                   ## $f0 = 0.00
	mtc1    $zero, $f22                ## $f22 = 0.00
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sdc1    $f20, 0x0018($sp)          
	lh      t6, 0x004A(s0)             ## 0000004A
	lh      t7, 0x004C(s0)             ## 0000004C
	lh      t8, 0x0052(s0)             ## 00000052
	mtc1    t6, $f4                    ## $f4 = 0.00
	mtc1    t7, $f8                    ## $f8 = 0.00
	lui     $at, 0x4080                ## $at = 40800000
	cvt.s.w $f6, $f4                   
	mtc1    t8, $f4                    ## $f4 = 0.00
	mov.s   $f12, $f22                 
	cvt.s.w $f10, $f8                  
	mul.s   $f18, $f6, $f0             
	cvt.s.w $f6, $f4                   
	mul.s   $f20, $f10, $f0            
	mtc1    $at, $f10                  ## $f10 = 4.00
	swc1    $f18, 0x0034($sp)          
	mul.s   $f8, $f6, $f0              
	nop
	mul.s   $f14, $f8, $f10            
	jal     func_80B34C3C              
	swc1    $f14, 0x0044($sp)          
	lwc1    $f4, 0x000C(s0)            ## 0000000C
	mov.s   $f12, $f22                 
	lwc1    $f14, 0x0044($sp)          
	sub.s   $f2, $f4, $f0              
	jal     func_80B34C3C              
	swc1    $f2, 0x0038($sp)           
	lwc1    $f6, 0x0010(s0)            ## 00000010
	mov.s   $f12, $f22                 
	lwc1    $f14, 0x0044($sp)          
	sub.s   $f16, $f6, $f0             
	jal     func_80B34C3C              
	swc1    $f16, 0x003C($sp)          
	lwc1    $f2, 0x0038($sp)           
	lwc1    $f8, 0x0014(s0)            ## 00000014
	lwc1    $f16, 0x003C($sp)          
	c.lt.s  $f22, $f2                  
	lwc1    $f18, 0x0034($sp)          
	sub.s   $f12, $f8, $f0             
	bc1f    lbl_80B350BC               
	nop
	mul.s   $f10, $f2, $f18            
	nop
	mul.s   $f4, $f2, $f2              
	nop
	mul.s   $f6, $f4, $f20             
	lwc1    $f4, 0x000C(s0)            ## 0000000C
	add.s   $f8, $f10, $f6             
	sub.s   $f10, $f4, $f8             
	beq     $zero, $zero, lbl_80B350E0 
	swc1    $f10, 0x000C(s0)           ## 0000000C
lbl_80B350BC:
	mul.s   $f6, $f2, $f18             
	nop
	mul.s   $f4, $f2, $f2              
	nop
	mul.s   $f8, $f4, $f20             
	lwc1    $f4, 0x000C(s0)            ## 0000000C
	sub.s   $f10, $f6, $f8             
	sub.s   $f6, $f4, $f10             
	swc1    $f6, 0x000C(s0)            ## 0000000C
lbl_80B350E0:
	c.lt.s  $f22, $f16                 
	nop
	bc1f    lbl_80B35114               
	nop
	mul.s   $f0, $f16, $f18            
	lwc1    $f4, 0x0010(s0)            ## 00000010
	mul.s   $f8, $f16, $f16            
	nop
	mul.s   $f2, $f8, $f20             
	add.s   $f10, $f0, $f2             
	sub.s   $f6, $f4, $f10             
	beq     $zero, $zero, lbl_80B35134 
	swc1    $f6, 0x0010(s0)            ## 00000010
lbl_80B35114:
	mul.s   $f0, $f16, $f18            
	lwc1    $f4, 0x0010(s0)            ## 00000010
	mul.s   $f8, $f16, $f16            
	nop
	mul.s   $f2, $f8, $f20             
	sub.s   $f10, $f0, $f2             
	sub.s   $f6, $f4, $f10             
	swc1    $f6, 0x0010(s0)            ## 00000010
lbl_80B35134:
	c.lt.s  $f22, $f12                 
	nop
	bc1fl   lbl_80B3515C               
	sub.s   $f8, $f0, $f2              
	add.s   $f4, $f0, $f2              
	lwc1    $f8, 0x0014(s0)            ## 00000014
	sub.s   $f10, $f8, $f4             
	beq     $zero, $zero, lbl_80B35168 
	swc1    $f10, 0x0014(s0)           ## 00000014
	sub.s   $f8, $f0, $f2              
lbl_80B3515C:
	lwc1    $f6, 0x0014(s0)            ## 00000014
	sub.s   $f4, $f6, $f8              
	swc1    $f4, 0x0014(s0)            ## 00000014
lbl_80B35168:
	lw      $ra, 0x002C($sp)           
	ldc1    $f20, 0x0018($sp)          
	ldc1    $f22, 0x0020($sp)          
	lw      s0, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000


func_80B35180:
	mtc1    $zero, $f0                 ## $f0 = 0.00
	nop
	swc1    $f0, 0x0020(a0)            ## 00000020
	swc1    $f0, 0x001C(a0)            ## 0000001C
	swc1    $f0, 0x0018(a0)            ## 00000018
	jr      $ra                        
	nop


func_80B3519C:
	swc1    $f12, 0x0000($sp)          
	sw      a1, 0x0004($sp)            
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f0                   ## $f0 = 1.00
	nop
	jr      $ra                        
	nop


func_80B351B8:
	sll     t6, a1,  2                 
	lui     $at, %hi(var_80B35920)     ## $at = 80B30000
	addu    $at, $at, t6               
	lwc1    $f2, %lo(var_80B35920)($at) 
	lui     $at, 0x3F80                ## $at = 3F800000
	c.lt.s  $f2, $f12                  
	nop
	bc1fl   lbl_80B351E8               
	mtc1    $at, $f0                   ## $f0 = 1.00
	jr      $ra                        
	div.s   $f0, $f2, $f12             
lbl_80B351E4:
	mtc1    $at, $f0                   ## $f0 = 1.00
lbl_80B351E8:
	nop
	jr      $ra                        
	nop


func_80B351F4:
	mul.s   $f2, $f12, $f12            
	sll     t6, a1,  2                 
	lui     $at, %hi(var_80B35920)     ## $at = 80B30000
	addu    $at, $at, t6               
	lwc1    $f14, %lo(var_80B35920)($at) 
	lui     $at, 0x3F80                ## $at = 3F800000
	c.lt.s  $f14, $f2                  
	nop
	bc1fl   lbl_80B35228               
	mtc1    $at, $f0                   ## $f0 = 1.00
	jr      $ra                        
	div.s   $f0, $f14, $f2             
lbl_80B35224:
	mtc1    $at, $f0                   ## $f0 = 1.00
lbl_80B35228:
	nop
	jr      $ra                        
	nop


func_80B35234:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	jal     func_80B351F4              
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B35254:
	mtc1    a2, $f12                   ## $f12 = 0.00
	lui     $at, 0x3F80                ## $at = 3F800000
	lh      v0, 0x0040(a0)             ## 00000040
	lui     t7, %hi(var_80B35948)      ## t7 = 80B30000
	addiu   t7, t7, %lo(var_80B35948)  ## t7 = 80B35948
	andi    v0, v0, 0x0003             ## v0 = 00000000
	beq     v0, $zero, lbl_80B352D8    
	sll     t6, v0,  2                 
	mtc1    $at, $f2                   ## $f2 = 1.00
	addu    v1, t6, t7                 
	c.lt.s  $f2, $f12                  
	nop
	bc1fl   lbl_80B35298               
	mov.s   $f0, $f2                   
	beq     $zero, $zero, lbl_80B35298 
	div.s   $f0, $f2, $f12             
	mov.s   $f0, $f2                   
lbl_80B35298:
	lwc1    $f4, -0x0004(v1)           ## FFFFFFFC
	lwc1    $f6, 0x0008(a1)            ## 00000008
	lwc1    $f16, 0x0018(a0)           ## 00000018
	mul.s   $f8, $f4, $f6              
	nop
	mul.s   $f10, $f8, $f0             
	add.s   $f18, $f16, $f10           
	lwc1    $f10, 0x0020(a0)           ## 00000020
	swc1    $f18, 0x0018(a0)           ## 00000018
	lwc1    $f6, 0x0000(a1)            ## 00000000
	lwc1    $f4, -0x0004(v1)           ## FFFFFFFC
	mul.s   $f8, $f4, $f6              
	nop
	mul.s   $f16, $f8, $f0             
	sub.s   $f18, $f10, $f16           
	swc1    $f18, 0x0020(a0)           ## 00000020
lbl_80B352D8:
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	jr      $ra                        
	nop


func_80B352E4:
	sw      a1, 0x0004($sp)            
	sw      a2, 0x0008($sp)            
	lh      v0, 0x0040(a0)             ## 00000040
	lui     $at, %hi(var_80B35950)     ## $at = 80B30000
	sra     v0, v0,  2                 
	andi    v0, v0, 0x0007             ## v0 = 00000000
	beq     v0, $zero, lbl_80B35318    
	sll     t6, v0,  2                 
	addu    $at, $at, t6               
	lwc1    $f6, %lo(var_80B35950)($at) 
	lwc1    $f4, 0x001C(a0)            ## 0000001C
	add.s   $f8, $f4, $f6              
	swc1    $f8, 0x001C(a0)            ## 0000001C
lbl_80B35318:
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	jr      $ra                        
	nop


func_80B35324:
	mtc1    a2, $f12                   ## $f12 = 0.00
	lui     $at, 0x3F80                ## $at = 3F800000
	lh      v0, 0x0040(a0)             ## 00000040
	lui     t7, %hi(var_80B3596C)      ## t7 = 80B30000
	addiu   t7, t7, %lo(var_80B3596C)  ## t7 = 80B3596C
	sra     v0, v0,  5                 
	andi    v0, v0, 0x0003             ## v0 = 00000000
	beq     v0, $zero, lbl_80B353AC    
	sll     t6, v0,  2                 
	mtc1    $at, $f2                   ## $f2 = 1.00
	addu    v1, t6, t7                 
	c.lt.s  $f2, $f12                  
	nop
	bc1fl   lbl_80B3536C               
	mov.s   $f0, $f2                   
	beq     $zero, $zero, lbl_80B3536C 
	div.s   $f0, $f2, $f12             
	mov.s   $f0, $f2                   
lbl_80B3536C:
	lwc1    $f4, 0x0000(a1)            ## 00000000
	lwc1    $f6, -0x0004(v1)           ## FFFFFFFC
	lwc1    $f16, 0x0018(a0)           ## 00000018
	mul.s   $f8, $f4, $f6              
	nop
	mul.s   $f10, $f8, $f0             
	sub.s   $f18, $f16, $f10           
	lwc1    $f10, 0x0020(a0)           ## 00000020
	swc1    $f18, 0x0018(a0)           ## 00000018
	lwc1    $f6, -0x0004(v1)           ## FFFFFFFC
	lwc1    $f4, 0x0008(a1)            ## 00000008
	mul.s   $f8, $f4, $f6              
	nop
	mul.s   $f16, $f8, $f0             
	sub.s   $f18, $f10, $f16           
	swc1    $f18, 0x0020(a0)           ## 00000020
lbl_80B353AC:
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	jr      $ra                        
	nop


func_80B353B8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	mtc1    a2, $f12                   ## $f12 = 0.00
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lh      a1, 0x0040(a0)             ## 00000040
	lui     t9, %hi(var_80B35978)      ## t9 = 80B30000
	sw      a0, 0x0018($sp)            
	sra     a1, a1,  7                 
	andi    a1, a1, 0x000F             ## a1 = 00000000
	sll     t6, a1,  2                 
	addu    t9, t9, t6                 
	lw      t9, %lo(var_80B35978)(t9)  
	jalr    $ra, t9                    
	nop
	lw      a0, 0x0018($sp)            
	lui     $at, 0x3A80                ## $at = 3A800000
	mtc1    $at, $f10                  ## $f10 = 0.00
	lh      t7, 0x0052(a0)             ## 00000052
	mov.s   $f12, $f0                  
	mtc1    t7, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	mul.s   $f8, $f6, $f0              
	nop
	mul.s   $f14, $f8, $f10            
	jal     func_80B34C3C              
	nop
	lw      a0, 0x0018($sp)            
	lui     $at, %hi(var_80B359D4)     ## $at = 80B30000
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	lwc1    $f16, 0x0018(a0)           ## 00000018
	lwc1    $f4, 0x001C(a0)            ## 0000001C
	lwc1    $f8, 0x0020(a0)            ## 00000020
	mul.s   $f18, $f16, $f0            
	nop
	mul.s   $f6, $f4, $f0              
	nop
	mul.s   $f10, $f8, $f0             
	swc1    $f18, 0x0018(a0)           ## 00000018
	lwc1    $f18, 0x0018(a0)           ## 00000018
	swc1    $f6, 0x001C(a0)            ## 0000001C
	lwc1    $f6, 0x001C(a0)            ## 0000001C
	swc1    $f10, 0x0020(a0)           ## 00000020
	lwc1    $f16, %lo(var_80B359D4)($at) 
	lwc1    $f10, 0x0020(a0)           ## 00000020
	mul.s   $f2, $f0, $f16             
	add.s   $f4, $f18, $f2             
	add.s   $f8, $f6, $f2              
	swc1    $f4, 0x0018(a0)            ## 00000018
	add.s   $f16, $f10, $f2            
	swc1    $f8, 0x001C(a0)            ## 0000001C
	swc1    $f16, 0x0020(a0)           ## 00000020
	lw      $ra, 0x0014($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80B35494:
	sw      a1, 0x0004($sp)            
	sw      a2, 0x0008($sp)            
	lh      t6, 0x0042(a0)             ## 00000042
	lui     $at, 0x3B80                ## $at = 3B800000
	mtc1    $at, $f8                   ## $f8 = 0.00
	mtc1    t6, $f4                    ## $f4 = 0.00
	lwc1    $f16, 0x001C(a0)           ## 0000001C
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	cvt.s.w $f6, $f4                   
	mul.s   $f10, $f6, $f8             
	add.s   $f18, $f16, $f10           
	swc1    $f18, 0x001C(a0)           ## 0000001C
	jr      $ra                        
	nop


func_80B354CC:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sdc1    $f20, 0x0018($sp)          
	jal     func_80B35180              
	or      a0, s0, $zero              ## a0 = 00000000
	lwc1    $f4, 0x0000(s0)            ## 00000000
	lwc1    $f6, 0x002C(s0)            ## 0000002C
	lui     $at, 0x447A                ## $at = 447A0000
	sub.s   $f8, $f4, $f6              
	swc1    $f8, 0x002C($sp)           
	lwc1    $f16, 0x0030(s0)           ## 00000030
	lwc1    $f10, 0x0004(s0)           ## 00000004
	sub.s   $f18, $f10, $f16           
	lwc1    $f10, 0x002C($sp)          
	swc1    $f18, 0x0030($sp)          
	lwc1    $f6, 0x0034(s0)            ## 00000034
	lwc1    $f4, 0x0008(s0)            ## 00000008
	mul.s   $f16, $f10, $f10           
	lwc1    $f18, 0x0030($sp)          
	sub.s   $f8, $f4, $f6              
	mul.s   $f4, $f18, $f18            
	mtc1    $at, $f18                  ## $f18 = 1000.00
	swc1    $f8, 0x0034($sp)           
	lwc1    $f8, 0x0034($sp)           
	mul.s   $f10, $f8, $f8             
	add.s   $f6, $f16, $f4             
	add.s   $f0, $f6, $f10             
	sqrt.s  $f20, $f0                  
	c.lt.s  $f18, $f20                 
	nop
	bc1fl   lbl_80B35560               
	lh      t6, 0x0040(s0)             ## 00000040
	beq     $zero, $zero, lbl_80B35600 
	or      v0, $zero, $zero           ## v0 = 00000000
	lh      t6, 0x0040(s0)             ## 00000040
lbl_80B35560:
	or      a0, s0, $zero              ## a0 = 00000000
	beql    t6, $zero, lbl_80B355E0    
	mfc1    a2, $f20                   
	mfc1    a2, $f20                   
	jal     func_80B35254              
	addiu   a1, $sp, 0x002C            ## a1 = FFFFFFF4
	bne     v0, $zero, lbl_80B35588    
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B35600 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B35588:
	mfc1    a2, $f20                   
	jal     func_80B352E4              
	addiu   a1, $sp, 0x002C            ## a1 = FFFFFFF4
	bne     v0, $zero, lbl_80B355A4    
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B35600 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B355A4:
	mfc1    a2, $f20                   
	jal     func_80B35324              
	addiu   a1, $sp, 0x002C            ## a1 = FFFFFFF4
	bne     v0, $zero, lbl_80B355C0    
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B35600 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B355C0:
	mfc1    a2, $f20                   
	jal     func_80B353B8              
	addiu   a1, $sp, 0x002C            ## a1 = FFFFFFF4
	bnel    v0, $zero, lbl_80B355E0    
	mfc1    a2, $f20                   
	beq     $zero, $zero, lbl_80B35600 
	or      v0, $zero, $zero           ## v0 = 00000000
	mfc1    a2, $f20                   
lbl_80B355E0:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80B35494              
	addiu   a1, $sp, 0x002C            ## a1 = FFFFFFF4
	bnel    v0, $zero, lbl_80B35600    
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	beq     $zero, $zero, lbl_80B35600 
	or      v0, $zero, $zero           ## v0 = 00000000
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B35600:
	lw      $ra, 0x0024($sp)           
	ldc1    $f20, 0x0018($sp)          
	lw      s0, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80B35614:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lh      t7, 0x0050(a3)             ## 00000050
	lw      t6, 0x001C($sp)            
	bne     t7, $zero, lbl_80B356F4    
	lw      v0, 0x1C44(t6)             ## 00001C44
	lh      v1, 0x0048(a3)             ## 00000048
	addiu   $at, $zero, 0x0010         ## $at = 00000010
	sra     t8, v1,  4                 
	andi    t9, t8, 0x0001             ## t9 = 00000000
	sll     t0, t9,  4                 
	bne     t0, $at, lbl_80B356B8      
	sra     t4, v1,  2                 
	sra     t1, v1,  2                 
	andi    t2, t1, 0x0003             ## t2 = 00000000
	mtc1    t2, $f6                    ## $f6 = 0.00
	lwc1    $f4, 0x0080(v0)            ## 00000080
	lwc1    $f16, 0x0004(a3)           ## 00000004
	cvt.s.w $f8, $f6                   
	andi    t3, v1, 0xFF9F             ## t3 = 00000000
	sub.s   $f10, $f4, $f8             
	c.le.s  $f16, $f10                 
	nop
	bc1fl   lbl_80B35808               
	lw      $ra, 0x0014($sp)           
	mtc1    $zero, $f0                 ## $f0 = 0.00
	sh      $zero, 0x0052(a3)          ## 00000052
	lh      v0, 0x0052(a3)             ## 00000052
	sh      $zero, 0x0040(a3)          ## 00000040
	sh      t3, 0x0048(a3)             ## 00000048
	swc1    $f0, 0x0020(a3)            ## 00000020
	swc1    $f0, 0x001C(a3)            ## 0000001C
	swc1    $f0, 0x0018(a3)            ## 00000018
	swc1    $f0, 0x0014(a3)            ## 00000014
	swc1    $f0, 0x0010(a3)            ## 00000010
	swc1    $f0, 0x000C(a3)            ## 0000000C
	sh      v0, 0x004A(a3)             ## 0000004A
	beq     $zero, $zero, lbl_80B35804 
	sh      v0, 0x0042(a3)             ## 00000042
lbl_80B356B8:
	andi    t5, t4, 0x0003             ## t5 = 00000000
	mtc1    t5, $f6                    ## $f6 = 0.00
	lwc1    $f18, 0x0080(v0)           ## 00000080
	lui     $at, 0x4416                ## $at = 44160000
	cvt.s.w $f4, $f6                   
	mtc1    $at, $f10                  ## $f10 = 600.00
	lwc1    $f6, 0x0004(a3)            ## 00000004
	sub.s   $f8, $f18, $f4             
	sub.s   $f16, $f8, $f10            
	c.le.s  $f6, $f16                  
	nop
	bc1fl   lbl_80B35808               
	lw      $ra, 0x0014($sp)           
	beq     $zero, $zero, lbl_80B35804 
	sh      $zero, 0x005C(a3)          ## 0000005C
lbl_80B356F4:
	lh      v1, 0x0048(a3)             ## 00000048
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	andi    v0, v1, 0x0003             ## v0 = 00000000
	beq     v0, $zero, lbl_80B35720    
	nop
	beq     v0, $at, lbl_80B35728      
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     v0, $at, lbl_80B357E0      
	lw      a0, 0x001C($sp)            
	beq     $zero, $zero, lbl_80B35808 
	lw      $ra, 0x0014($sp)           
lbl_80B35720:
	beq     $zero, $zero, lbl_80B35804 
	sh      $zero, 0x0050(a3)          ## 00000050
lbl_80B35728:
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lwc1    $f18, 0x0010(a3)           ## 00000010
	lw      a0, 0x001C($sp)            
	sra     t6, v1,  2                 
	c.lt.s  $f18, $f0                  
	andi    t7, t6, 0x0003             ## t7 = 00000000
	sll     t8, t7,  2                 
	or      a1, a3, $zero              ## a1 = 00000000
	bc1f    lbl_80B35804               
	addiu   a0, a0, 0x07C0             ## a0 = 000007C0
	lui     a2, %hi(var_80B359A0)      ## a2 = 80B30000
	addu    a2, a2, t8                 
	lw      a2, %lo(var_80B359A0)(a2)  
	jal     func_80030D08              
	sw      a3, 0x0018($sp)            
	beq     v0, $zero, lbl_80B35804    
	lw      a3, 0x0018($sp)            
	lui     $at, %hi(var_80B359D8)     ## $at = 80B30000
	lwc1    $f12, %lo(var_80B359D8)($at) 
	lui     $at, %hi(var_80B359DC)     ## $at = 80B30000
	lwc1    $f14, %lo(var_80B359DC)($at) 
	jal     func_80B34C3C              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	lui     $at, %hi(var_80B359E0)     ## $at = 80B30000
	lwc1    $f4, 0x000C(a3)            ## 0000000C
	lwc1    $f10, 0x0010(a3)           ## 00000010
	mul.s   $f8, $f4, $f0              
	swc1    $f8, 0x000C(a3)            ## 0000000C
	lwc1    $f16, %lo(var_80B359E0)($at) 
	lui     $at, %hi(var_80B359E4)     ## $at = 80B30000
	mul.s   $f6, $f10, $f16            
	swc1    $f6, 0x0010(a3)            ## 00000010
	lwc1    $f12, %lo(var_80B359E4)($at) 
	lui     $at, %hi(var_80B359E8)     ## $at = 80B30000
	jal     func_80B34C3C              
	lwc1    $f14, %lo(var_80B359E8)($at) 
	lw      a3, 0x0018($sp)            
	lwc1    $f18, 0x0014(a3)           ## 00000014
	lh      v0, 0x0050(a3)             ## 00000050
	mul.s   $f4, $f18, $f0             
	addiu   t9, v0, 0xFFFF             ## t9 = FFFFFFFF
	blez    v0, lbl_80B35804           
	swc1    $f4, 0x0014(a3)            ## 00000014
	beq     $zero, $zero, lbl_80B35804 
	sh      t9, 0x0050(a3)             ## 00000050
lbl_80B357E0:
	sra     t0, v1,  2                 
	andi    t1, t0, 0x0003             ## t1 = 00000000
	sll     t2, t1,  2                 
	lui     a2, %hi(var_80B359A0)      ## a2 = 80B30000
	addu    a2, a2, t2                 
	lw      a2, %lo(var_80B359A0)(a2)  
	addiu   a0, a0, 0x07C0             ## a0 = 000007C0
	jal     func_80030D08              
	or      a1, a3, $zero              ## a1 = 00000000
lbl_80B35804:
	lw      $ra, 0x0014($sp)           
lbl_80B35808:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B35814:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a2, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0020($sp)            
	sw      a1, 0x0024($sp)            
	lh      v0, 0x0048(s0)             ## 00000048
	addiu   $at, $zero, 0x0020         ## $at = 00000020
	sra     v0, v0,  5                 
	andi    v0, v0, 0x0003             ## v0 = 00000000
	sll     v0, v0,  5                 
	beq     v0, $at, lbl_80B35860      
	addiu   $at, $zero, 0x0040         ## $at = 00000040
	beq     v0, $at, lbl_80B3587C      
	addiu   $at, $zero, 0x0060         ## $at = 00000060
	beql    v0, $at, lbl_80B3589C      
	lh      t4, 0x0044(s0)             ## 00000044
	beq     $zero, $zero, lbl_80B358B0 
	nop
lbl_80B35860:
	lh      t6, 0x0044(s0)             ## 00000044
	lh      t8, 0x0046(s0)             ## 00000046
	addiu   t7, t6, 0x000B             ## t7 = 0000000B
	addiu   t9, t8, 0x0003             ## t9 = 00000003
	sh      t7, 0x0044(s0)             ## 00000044
	beq     $zero, $zero, lbl_80B358B0 
	sh      t9, 0x0046(s0)             ## 00000046
lbl_80B3587C:
	lh      t0, 0x0044(s0)             ## 00000044
	lh      t2, 0x0046(s0)             ## 00000046
	addiu   t1, t0, 0x0041             ## t1 = 00000041
	addiu   t3, t2, 0x000B             ## t3 = 0000000B
	sh      t1, 0x0044(s0)             ## 00000044
	beq     $zero, $zero, lbl_80B358B0 
	sh      t3, 0x0046(s0)             ## 00000046
	lh      t4, 0x0044(s0)             ## 00000044
lbl_80B3589C:
	lh      t6, 0x0046(s0)             ## 00000046
	addiu   t5, t4, 0x009B             ## t5 = 0000009B
	addiu   t7, t6, 0x001F             ## t7 = 0000001F
	sh      t5, 0x0044(s0)             ## 00000044
	sh      t7, 0x0046(s0)             ## 00000046
lbl_80B358B0:
	jal     func_80B34FD0              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80B354CC              
	or      a0, s0, $zero              ## a0 = 00000000
	bne     v0, $zero, lbl_80B358CC    
	or      a0, s0, $zero              ## a0 = 00000000
	sh      $zero, 0x005C(s0)          ## 0000005C
lbl_80B358CC:
	jal     func_80B35614              
	lw      a1, 0x0020($sp)            
	lh      t8, 0x0054(s0)             ## 00000054
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	or      a0, s0, $zero              ## a0 = 00000000
	beql    t8, $at, lbl_80B358F4      
	lw      $ra, 0x001C($sp)           
	jal     func_80B34F64              
	lw      a1, 0x0020($sp)            
	lw      $ra, 0x001C($sp)           
lbl_80B358F4:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop
	nop

.section .data

.word 0x00000019
.word func_80B34AB0
var_80B35918: .word 0xFFFFFFEB, 0xAA820000
var_80B35920: .word \
0x3F800000, 0x42C80000, 0x42200000, 0x40A00000, \
0x42C80000, 0x42200000, 0x40A00000, 0x42C80000, \
0x42200000, 0x40A00000
var_80B35948: .word 0x3D4CCCCD, 0x3F800000
var_80B35950: .word \
0x40800000, 0x3DCCCCCD, 0x3E99999A, 0x3F666666, \
0xBDCCCCCD, 0xBE99999A, 0xBF666666
var_80B3596C: .word 0x3DCCCCCD, 0x3F800000, 0x40C00000
var_80B35978: .word func_80B3519C
.word func_80B351B8
.word func_80B351B8
.word func_80B351B8
.word func_80B351F4
.word func_80B351F4
.word func_80B351F4
.word func_80B35234
.word func_80B35234
.word func_80B35234
var_80B359A0: .word 0x41200000, 0x41A00000, 0x42200000, 0x00000000

.section .rodata

var_80B359B0: .word \
0x2E2E2F7A, 0x5F656666, 0x5F6B616B, 0x6572612E, \
0x63000000
var_80B359C4: .word 0x46FFFE00
var_80B359C8: .word 0x46FFFE00
var_80B359CC: .word 0x3C23D70A
var_80B359D0: .word 0x3C23D70A
var_80B359D4: .word 0x3C23D70A
var_80B359D8: .word 0x3F666666
var_80B359DC: .word 0x3E4CCCCD
var_80B359E0: .word 0xBF4CCCCD
var_80B359E4: .word 0x3F666666
var_80B359E8: .word 0x3E4CCCCD, 0x00000000

