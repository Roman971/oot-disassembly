#include <mips.h>
.set noreorder
.set noat

.section .text
func_809251F0:
	addiu   v0, a0, 0x0300             ## v0 = 00000300
	addiu   a0, $zero, 0x0001          ## a0 = 00000001
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_809251FC:
	lbu     t6, 0x0000(v0)             ## 00000300
	addiu   v1, v1, 0x0001             ## v1 = 00000001
	sll     v1, v1, 16                 
	beq     a0, t6, lbl_80925280       
	sra     v1, v1, 16                 
	lwc1    $f4, 0x0014($sp)           
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	swc1    $f4, 0x0004(v0)            ## 00000304
	lwc1    $f6, 0x0018($sp)           
	swc1    $f6, 0x0008(v0)            ## 00000308
	lbu     t8, 0x0013($sp)            
	sb      t9, 0x0000(v0)             ## 00000300
	sb      t8, 0x0001(v0)             ## 00000301
	sb      t8, 0x0002(v0)             ## 00000302
	lw      t1, 0x0000(a1)             ## 00000000
	sw      t1, 0x0014(v0)             ## 00000314
	lw      t0, 0x0004(a1)             ## 00000004
	sw      t0, 0x0018(v0)             ## 00000318
	lw      t1, 0x0008(a1)             ## 00000008
	sw      t1, 0x001C(v0)             ## 0000031C
	lw      t3, 0x0000(a3)             ## 00000000
	sw      t3, 0x002C(v0)             ## 0000032C
	lw      t2, 0x0004(a3)             ## 00000004
	sw      t2, 0x0030(v0)             ## 00000330
	lw      t3, 0x0008(a3)             ## 00000008
	sw      t3, 0x0034(v0)             ## 00000334
	lw      t5, 0x0000(a2)             ## 00000000
	sw      t5, 0x0020(v0)             ## 00000320
	lw      t4, 0x0004(a2)             ## 00000004
	sw      t4, 0x0024(v0)             ## 00000324
	lw      t5, 0x0008(a2)             ## 00000008
	jr      $ra                        
	sw      t5, 0x0028(v0)             ## 00000328
lbl_80925280:
	slti    $at, v1, 0x0014            
	bne     $at, $zero, lbl_809251FC   
	addiu   v0, v0, 0x0038             ## v0 = 00000338
	jr      $ra                        
	nop


func_80925294:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      $ra, 0x002C($sp)           
	sw      s1, 0x0028($sp)            
	sw      s0, 0x0024($sp)            
	sdc1    $f22, 0x0018($sp)          
	sdc1    $f20, 0x0010($sp)          
	lui     $at, %hi(var_80926E00)     ## $at = 80920000
	lwc1    $f22, %lo(var_80926E00)($at) 
	lui     $at, %hi(var_80926E04)     ## $at = 80920000
	addiu   s0, a0, 0x0300             ## s0 = 00000300
	lwc1    $f20, %lo(var_80926E04)($at) 
	or      s1, $zero, $zero           ## s1 = 00000000
lbl_809252C4:
	lbu     t6, 0x0000(s0)             ## 00000300
	beql    t6, $zero, lbl_80925370    
	addiu   s1, s1, 0x0001             ## s1 = 00000001
	lbu     t7, 0x0001(s0)             ## 00000301
	addiu   t8, t7, 0xFFFF             ## t8 = FFFFFFFF
	andi    t9, t8, 0x00FF             ## t9 = 000000FF
	bne     t9, $zero, lbl_809252E8    
	sb      t8, 0x0001(s0)             ## 00000301
	sb      $zero, 0x0000(s0)          ## 00000300
lbl_809252E8:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	mul.s   $f4, $f0, $f20             
	sub.s   $f6, $f4, $f22             
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f6, 0x002C(s0)            ## 0000032C
	lwc1    $f12, 0x0020(s0)           ## 00000320
	lwc1    $f10, 0x0014(s0)           ## 00000314
	mul.s   $f8, $f0, $f20             
	lwc1    $f14, 0x0024(s0)           ## 00000324
	add.s   $f18, $f10, $f12           
	lwc1    $f4, 0x0018(s0)            ## 00000318
	lwc1    $f16, 0x0028(s0)           ## 00000328
	swc1    $f18, 0x0014(s0)           ## 00000314
	lwc1    $f18, 0x002C(s0)           ## 0000032C
	add.s   $f6, $f4, $f14             
	sub.s   $f2, $f8, $f22             
	lwc1    $f8, 0x001C(s0)            ## 0000031C
	swc1    $f6, 0x0018(s0)            ## 00000318
	add.s   $f4, $f12, $f18            
	lwc1    $f6, 0x0030(s0)            ## 00000330
	lwc1    $f18, 0x0004(s0)           ## 00000304
	add.s   $f10, $f8, $f16            
	swc1    $f4, 0x0020(s0)            ## 00000320
	lwc1    $f4, 0x0008(s0)            ## 00000308
	add.s   $f8, $f14, $f6             
	swc1    $f10, 0x001C(s0)           ## 0000031C
	swc1    $f2, 0x0034(s0)            ## 00000334
	add.s   $f10, $f16, $f2            
	swc1    $f8, 0x0024(s0)            ## 00000324
	add.s   $f6, $f18, $f4             
	swc1    $f10, 0x0028(s0)           ## 00000328
	swc1    $f6, 0x0004(s0)            ## 00000304
	addiu   s1, s1, 0x0001             ## s1 = 00000002
lbl_80925370:
	sll     s1, s1, 16                 
	sra     s1, s1, 16                 
	slti    $at, s1, 0x0014            
	bne     $at, $zero, lbl_809252C4   
	addiu   s0, s0, 0x0038             ## s0 = 00000338
	lw      $ra, 0x002C($sp)           
	ldc1    $f20, 0x0010($sp)          
	ldc1    $f22, 0x0018($sp)          
	lw      s0, 0x0024($sp)            
	lw      s1, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_809253A0:
	addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
	sw      s7, 0x004C($sp)            
	or      s7, a1, $zero              ## s7 = 00000000
	sw      $ra, 0x0054($sp)           
	sw      s8, 0x0050($sp)            
	sw      s6, 0x0048($sp)            
	sw      s5, 0x0044($sp)            
	sw      s4, 0x0040($sp)            
	sw      s3, 0x003C($sp)            
	sw      s2, 0x0038($sp)            
	sw      s1, 0x0034($sp)            
	sw      s0, 0x0030($sp)            
	sdc1    $f24, 0x0028($sp)          
	sdc1    $f22, 0x0020($sp)          
	sdc1    $f20, 0x0018($sp)          
	or      a2, a0, $zero              ## a2 = 00000000
	addiu   s2, a2, 0x0300             ## s2 = 00000300
	lw      a0, 0x0000(s7)             ## 00000000
	or      s8, $zero, $zero           ## s8 = 00000000
	jal     func_8007E2C0              
	or      s1, a0, $zero              ## s1 = 00000000
	lui     $at, 0x4100                ## $at = 41000000
	mtc1    $at, $f24                  ## $f24 = 8.00
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f22                  ## $f22 = 1.00
	lui     $at, 0x437F                ## $at = 437F0000
	mtc1    $at, $f20                  ## $f20 = 255.00
	or      s5, $zero, $zero           ## s5 = 00000000
lbl_80925410:
	lbu     t6, 0x0000(s2)             ## 00000300
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1DA0           ## $at = 00011DA0
	beq     t6, $zero, lbl_8092563C    
	addu    s4, s7, $at                
	lui     s6, 0x0601                 ## s6 = 06010000
	bne     s8, $zero, lbl_8092547C    
	addiu   s6, s6, 0xBCA0             ## s6 = 0600BCA0
	lui     s3, 0x0601                 ## s3 = 06010000
	addiu   s3, s3, 0xBC90             ## s3 = 0600BC90
	lw      a0, 0x02D0(s1)             ## 000002D0
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_8007DFBC              
	addiu   s8, $zero, 0x0001          ## s8 = 00000001
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s1)             ## 000002D0
	lui     t8, 0xDE00                 ## t8 = DE000000
	sw      t8, 0x0000(v0)             ## 00000000
	sw      s3, 0x0004(v0)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t1, 0x643C                 ## t1 = 643C0000
	ori     t1, t1, 0x1400             ## t1 = 643C1400
	addiu   t9, s0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s1)             ## 000002D0
	lui     t0, 0xFB00                 ## t0 = FB000000
	sw      t0, 0x0000(s0)             ## 00000000
	sw      t1, 0x0004(s0)             ## 00000004
lbl_8092547C:
	lbu     t2, 0x0001(s2)             ## 00000301
	lui     $at, 0x4F80                ## $at = 4F800000
	lui     t6, 0xFA00                 ## t6 = FA000000
	mtc1    t2, $f4                    ## $f4 = 0.00
	or      a3, $zero, $zero           ## a3 = 00000000
	bgez    t2, lbl_809254A4           
	cvt.s.w $f6, $f4                   
	mtc1    $at, $f8                   ## $f8 = 4294967000.00
	nop
	add.s   $f6, $f6, $f8              
lbl_809254A4:
	lbu     t3, 0x0002(s2)             ## 00000302
	lui     $at, 0x4F80                ## $at = 4F800000
	mtc1    t3, $f10                   ## $f10 = 0.00
	bgez    t3, lbl_809254C4           
	cvt.s.w $f16, $f10                 
	mtc1    $at, $f18                  ## $f18 = 4294967000.00
	nop
	add.s   $f16, $f16, $f18           
lbl_809254C4:
	div.s   $f4, $f20, $f16            
	lui     $at, 0xAA82                ## $at = AA820000
	ori     $at, $at, 0x5A00           ## $at = AA825A00
	mul.s   $f8, $f6, $f4              
	trunc.w.s $f10, $f8                  
	mfc1    a0, $f10                   
	nop
	sll     a0, a0, 16                 
	sra     a0, a0, 16                 
	lw      s0, 0x02D0(s1)             ## 000002D0
	andi    t7, a0, 0x00FF             ## t7 = 00000000
	or      t8, t7, $at                ## t8 = AA825A00
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s1)             ## 000002D0
	sw      t8, 0x0004(s0)             ## 00000004
	sw      t6, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t0, 0xE700                 ## t0 = E7000000
	addiu   t9, s0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s1)             ## 000002D0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t0, 0x0000(s0)             ## 00000000
	lwc1    $f12, 0x0014(s2)           ## 00000314
	lwc1    $f14, 0x0018(s2)           ## 00000318
	jal     func_800AA7F4              
	lw      a2, 0x001C(s2)             ## 0000031C
	jal     func_800ABE54              
	or      a0, s4, $zero              ## a0 = 00000000
	lwc1    $f12, 0x0004(s2)           ## 00000304
	mfc1    a2, $f22                   
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	jal     func_800AA8FC              
	mov.s   $f14, $f12                 
	lw      s3, 0x02D0(s1)             ## 000002D0
	lui     t2, 0xDA38                 ## t2 = DA380000
	ori     t2, t2, 0x0003             ## t2 = DA380003
	addiu   t1, s3, 0x0008             ## t1 = 0600BC98
	sw      t1, 0x02D0(s1)             ## 000002D0
	sw      t2, 0x0000(s3)             ## 0600BC90
	jal     func_800AB900              
	lw      a0, 0x0000(s7)             ## 00000000
	sw      v0, 0x0004(s3)             ## 0600BC94
	lbu     t3, 0x0001(s2)             ## 00000301
	lui     t7, 0xDB06                 ## t7 = DB060000
	ori     t7, t7, 0x0020             ## t7 = DB060020
	mtc1    t3, $f18                   ## $f18 = 0.00
	lui     a0, %hi(var_80926D20)      ## a0 = 80920000
	bgez    t3, lbl_80925598           
	cvt.s.w $f16, $f18                 
	lui     $at, 0x4F80                ## $at = 4F800000
	mtc1    $at, $f6                   ## $f6 = 4294967000.00
	nop
	add.s   $f16, $f16, $f6            
lbl_80925598:
	lbu     t4, 0x0002(s2)             ## 00000302
	lui     $at, 0x4F80                ## $at = 4F800000
	lui     t3, 0x8012                 ## t3 = 80120000
	mtc1    t4, $f4                    ## $f4 = 0.00
	bgez    t4, lbl_809255BC           
	cvt.s.w $f8, $f4                   
	mtc1    $at, $f10                  ## $f10 = 4294967000.00
	nop
	add.s   $f8, $f8, $f10             
lbl_809255BC:
	div.s   $f18, $f24, $f8            
	mul.s   $f6, $f16, $f18            
	trunc.w.s $f4, $f6                   
	mfc1    a2, $f4                    
	nop
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	lw      s0, 0x02D0(s1)             ## 000002D0
	sll     t8, a2,  2                 
	addu    a0, a0, t8                 
	addiu   t6, s0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s1)             ## 000002D0
	sw      t7, 0x0000(s0)             ## 00000000
	lw      a0, %lo(var_80926D20)(a0)  
	lui     $at, 0x00FF                ## $at = 00FF0000
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	sll     t0, a0,  4                 
	srl     t1, t0, 28                 
	sll     t2, t1,  2                 
	addu    t3, t3, t2                 
	lw      t3, 0x0C38(t3)             ## 80120C38
	and     t9, a0, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t4, t9, t3                 
	addu    t5, t4, $at                
	sw      t5, 0x0004(s0)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t7, 0xDE00                 ## t7 = DE000000
	addiu   t6, s0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s1)             ## 000002D0
	sw      s6, 0x0004(s0)             ## 00000004
	sw      t7, 0x0000(s0)             ## 00000000
lbl_8092563C:
	addiu   s5, s5, 0x0001             ## s5 = 00000001
	sll     s5, s5, 16                 
	sra     s5, s5, 16                 
	slti    $at, s5, 0x0014            
	bne     $at, $zero, lbl_80925410   
	addiu   s2, s2, 0x0038             ## s2 = 00000338
	lw      $ra, 0x0054($sp)           
	ldc1    $f20, 0x0018($sp)          
	ldc1    $f22, 0x0020($sp)          
	ldc1    $f24, 0x0028($sp)          
	lw      s0, 0x0030($sp)            
	lw      s1, 0x0034($sp)            
	lw      s2, 0x0038($sp)            
	lw      s3, 0x003C($sp)            
	lw      s4, 0x0040($sp)            
	lw      s5, 0x0044($sp)            
	lw      s6, 0x0048($sp)            
	lw      s7, 0x004C($sp)            
	lw      s8, 0x0050($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0058           ## $sp = 00000000


func_80925690:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0048($sp)            
	sw      a1, 0x004C($sp)            
	sw      a2, 0x0050($sp)            
	sw      a3, 0x0054($sp)            
	lui     t7, %hi(var_80926D40)      ## t7 = 80920000
	addiu   t7, t7, %lo(var_80926D40)  ## t7 = 80926D40
	lw      t9, 0x0000(t7)             ## 80926D40
	addiu   t6, $sp, 0x003C            ## t6 = FFFFFFF4
	lw      t8, 0x0004(t7)             ## 80926D44
	sw      t9, 0x0000(t6)             ## FFFFFFF4
	lw      t9, 0x0008(t7)             ## 80926D48
	lui     t1, %hi(var_80926D4C)      ## t1 = 80920000
	addiu   t1, t1, %lo(var_80926D4C)  ## t1 = 80926D4C
	sw      t8, 0x0004(t6)             ## FFFFFFF8
	sw      t9, 0x0008(t6)             ## FFFFFFFC
	lw      t3, 0x0000(t1)             ## 80926D4C
	addiu   t0, $sp, 0x0030            ## t0 = FFFFFFE8
	lw      t2, 0x0004(t1)             ## 80926D50
	sw      t3, 0x0000(t0)             ## FFFFFFE8
	lw      t3, 0x0008(t1)             ## 80926D54
	sw      t2, 0x0004(t0)             ## FFFFFFEC
	jal     func_800CDCCC              ## Rand.Next() float
	sw      t3, 0x0008(t0)             ## FFFFFFF0
	lwc1    $f6, 0x005C($sp)           
	lwc1    $f4, 0x0034($sp)           
	lbu     t4, 0x0053($sp)            
	mul.s   $f8, $f0, $f6              
	lwc1    $f16, 0x0054($sp)          
	lwc1    $f18, 0x0058($sp)          
	lw      a0, 0x0048($sp)            
	lw      a1, 0x004C($sp)            
	addiu   a2, $sp, 0x003C            ## a2 = FFFFFFF4
	addiu   a3, $sp, 0x0030            ## a3 = FFFFFFE8
	add.s   $f10, $f4, $f8             
	sw      t4, 0x0010($sp)            
	swc1    $f16, 0x0014($sp)          
	swc1    $f18, 0x0018($sp)          
	jal     func_809251F0              
	swc1    $f10, 0x0034($sp)          
	or      v0, $zero, $zero           ## v0 = 00000000
	lw      $ra, 0x0024($sp)           
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000
	jr      $ra                        
	nop


func_80925748:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x2F84             ## a0 = 06002F84
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC120                ## $at = C1200000
	mtc1    $at, $f8                   ## $f8 = -10.00
	cvt.s.w $f6, $f4                   
	lw      a0, 0x0028($sp)            
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x2F84             ## a1 = 06002F84
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f6, 0x0010($sp)           
	sw      $zero, 0x0014($sp)         
	swc1    $f8, 0x0018($sp)           
	jal     func_8008D17C              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	addiu   a0, $zero, 0x003C          ## a0 = 0000003C
	jal     func_80063BF0              
	addiu   a1, $zero, 0x003C          ## a1 = 0000003C
	lw      v1, 0x0028($sp)            
	mtc1    $zero, $f10                ## $f10 = 0.00
	sh      v0, 0x020C(v1)             ## 0000020C
	swc1    $f10, 0x0068(v1)           ## 00000068
	lw      $ra, 0x0024($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_809257C4:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x2F84             ## a0 = 06002F84
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC120                ## $at = C1200000
	mtc1    $at, $f8                   ## $f8 = -10.00
	cvt.s.w $f6, $f4                   
	lw      a0, 0x0028($sp)            
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x1FA8             ## a1 = 06001FA8
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f6, 0x0010($sp)           
	sw      $zero, 0x0014($sp)         
	swc1    $f8, 0x0018($sp)           
	jal     func_8008D17C              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	addiu   a0, $zero, 0x00F0          ## a0 = 000000F0
	jal     func_80063BF0              
	addiu   a1, $zero, 0x00F0          ## a1 = 000000F0
	lw      t6, 0x0028($sp)            
	sh      v0, 0x020C(t6)             ## 0000020C
	lw      $ra, 0x0024($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80925838:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x1144             ## a0 = 06001144
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC120                ## $at = C1200000
	mtc1    $at, $f8                   ## $f8 = -10.00
	cvt.s.w $f6, $f4                   
	lw      a0, 0x0028($sp)            
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x1144             ## a1 = 06001144
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f6, 0x0010($sp)           
	sw      $zero, 0x0014($sp)         
	swc1    $f8, 0x0018($sp)           
	jal     func_8008D17C              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	lw      a0, 0x0028($sp)            
	jal     func_80925A00              
	lw      a1, 0x002C($sp)            
	bltz    v0, lbl_809258A8           
	lw      t7, 0x0028($sp)            
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	sb      t6, 0x01F8(t7)             ## 000001F8
lbl_809258A8:
	lw      $ra, 0x0024($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_809258B8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lh      v0, 0x0214(a2)             ## 00000214
	bne     v0, $zero, lbl_809258D8    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	beq     $zero, $zero, lbl_809258E0 
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_809258D8:
	sh      t6, 0x0214(a2)             ## 00000214
	lh      v1, 0x0214(a2)             ## 00000214
lbl_809258E0:
	bnel    v1, $zero, lbl_80925970    
	lw      $ra, 0x0014($sp)           
	lh      t7, 0x0212(a2)             ## 00000212
	addiu   t8, t7, 0x0001             ## t8 = 00000001
	sh      t8, 0x0212(a2)             ## 00000212
	lh      t9, 0x0212(a2)             ## 00000212
	slti    $at, t9, 0x0003            
	bnel    $at, $zero, lbl_80925970   
	lw      $ra, 0x0014($sp)           
	lh      t0, 0x0208(a2)             ## 00000208
	addiu   a0, $zero, 0x001E          ## a0 = 0000001E
	addiu   a1, $zero, 0x001E          ## a1 = 0000001E
	addiu   t1, t0, 0xFFFF             ## t1 = FFFFFFFF
	sh      t1, 0x0208(a2)             ## 00000208
	lh      t2, 0x0208(a2)             ## 00000208
	bgezl   t2, lbl_8092596C           
	sh      $zero, 0x0212(a2)          ## 00000212
	jal     func_80063BF0              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	addiu   t3, $zero, 0x0002          ## t3 = 00000002
	sh      v0, 0x0214(a2)             ## 00000214
	jal     func_800CDCCC              ## Rand.Next() float
	sh      t3, 0x0208(a2)             ## 00000208
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f4                   ## $f4 = 0.50
	lw      a2, 0x0018($sp)            
	c.lt.s  $f4, $f0                   
	nop
	bc1fl   lbl_8092596C               
	sh      $zero, 0x0212(a2)          ## 00000212
	lh      t4, 0x0208(a2)             ## 00000208
	addiu   t5, t4, 0x0001             ## t5 = 00000001
	sh      t5, 0x0208(a2)             ## 00000208
	sh      $zero, 0x0212(a2)          ## 00000212
lbl_8092596C:
	lw      $ra, 0x0014($sp)           
lbl_80925970:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8092597C:
	lui     $at, %hi(var_80926E08)     ## $at = 80920000
	lwc1    $f4, %lo(var_80926E08)($at) 
	lwc1    $f6, 0x008C(a0)            ## 0000008C
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_809259A4               
	lh      v0, 0x00B6(a0)             ## 000000B6
	jr      $ra                        
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_809259A0:
	lh      v0, 0x00B6(a0)             ## 000000B6
lbl_809259A4:
	lh      t6, 0x020E(a0)             ## 0000020E
	lh      t7, 0x0216(a0)             ## 00000216
	lh      t8, 0x008A(a0)             ## 0000008A
	subu    v0, v0, t6                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	subu    v0, v0, t7                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	subu    v1, t8, v0                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	bltz    v1, lbl_809259E4           
	subu    v0, $zero, v1              
	beq     $zero, $zero, lbl_809259E4 
	or      v0, v1, $zero              ## v0 = 00000000
lbl_809259E4:
	slti    $at, v0, 0x1554            
	beq     $at, $zero, lbl_809259F8   
	or      v0, $zero, $zero           ## v0 = 00000000
	jr      $ra                        
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_809259F8:
	jr      $ra                        
	nop


func_80925A00:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s1, 0x0034($sp)            
	or      s1, a0, $zero              ## s1 = 00000000
	sw      $ra, 0x003C($sp)           
	sw      s2, 0x0038($sp)            
	sw      s0, 0x0030($sp)            
	sdc1    $f24, 0x0028($sp)          
	sdc1    $f22, 0x0020($sp)          
	sdc1    $f20, 0x0018($sp)          
	lw      s0, 0x1C64(a1)             ## 00001C64
	lui     $at, 0x4120                ## $at = 41200000
	beql    s0, $zero, lbl_80925AC4    
	addiu   v0, $zero, 0xFFFF          ## v0 = FFFFFFFF
	mtc1    $at, $f24                  ## $f24 = 10.00
	lui     $at, 0x4220                ## $at = 42200000
	mtc1    $at, $f22                  ## $f22 = 40.00
	addiu   s2, $zero, 0x0196          ## s2 = 00000196
	lh      t6, 0x0000(s0)             ## 00000000
lbl_80925A48:
	beql    s2, t6, lbl_80925A5C       
	lw      t7, 0x0200(s1)             ## 00000200
	beq     $zero, $zero, lbl_80925AB8 
	lw      s0, 0x0124(s0)             ## 00000124
	lw      t7, 0x0200(s1)             ## 00000200
lbl_80925A5C:
	or      a0, s1, $zero              ## a0 = 00000000
	bnel    s0, t7, lbl_80925A74       
	lwc1    $f4, 0x0028(s0)            ## 00000028
	beq     $zero, $zero, lbl_80925AB8 
	lw      s0, 0x0124(s0)             ## 00000124
	lwc1    $f4, 0x0028(s0)            ## 00000028
lbl_80925A74:
	lwc1    $f6, 0x0080(s1)            ## 00000080
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_800214FC              
	sub.s   $f20, $f4, $f6             
	c.lt.s  $f22, $f0                  
	nop
	bc1t    lbl_80925AA4               
	nop
	c.lt.s  $f24, $f20                 
	nop
	bc1fl   lbl_80925AB0               
	sw      s0, 0x0200(s1)             ## 00000200
lbl_80925AA4:
	beq     $zero, $zero, lbl_80925AB8 
	lw      s0, 0x0124(s0)             ## 00000124
	sw      s0, 0x0200(s1)             ## 00000200
lbl_80925AB0:
	beq     $zero, $zero, lbl_80925AC4 
	lh      v0, 0x001C(s0)             ## 0000001C
lbl_80925AB8:
	bnel    s0, $zero, lbl_80925A48    
	lh      t6, 0x0000(s0)             ## 00000000
	addiu   v0, $zero, 0xFFFF          ## v0 = FFFFFFFF
lbl_80925AC4:
	lw      $ra, 0x003C($sp)           
	ldc1    $f20, 0x0018($sp)          
	ldc1    $f22, 0x0020($sp)          
	ldc1    $f24, 0x0028($sp)          
	lw      s0, 0x0030($sp)            
	lw      s1, 0x0034($sp)            
	lw      s2, 0x0038($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_80925AE8:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	lw      a1, 0x0200(a0)             ## 00000200
	beql    a1, $zero, lbl_80925B54    
	lw      $ra, 0x0014($sp)           
	lwc1    $f4, 0x0028(a1)            ## 00000028
	lwc1    $f6, 0x0080(a0)            ## 00000080
	sw      a0, 0x0020($sp)            
	sub.s   $f8, $f4, $f6              
	jal     func_800214FC              
	swc1    $f8, 0x0018($sp)           
	lui     $at, 0x4220                ## $at = 42200000
	mtc1    $at, $f10                  ## $f10 = 40.00
	lw      a0, 0x0020($sp)            
	lui     $at, 0x4120                ## $at = 41200000
	c.lt.s  $f10, $f0                  
	lwc1    $f18, 0x0018($sp)          
	bc1tl   lbl_80925B50               
	sw      $zero, 0x0200(a0)          ## 00000200
	mtc1    $at, $f16                  ## $f16 = 10.00
	nop
	c.lt.s  $f16, $f18                 
	nop
	bc1fl   lbl_80925B54               
	lw      $ra, 0x0014($sp)           
	sw      $zero, 0x0200(a0)          ## 00000200
lbl_80925B50:
	lw      $ra, 0x0014($sp)           
lbl_80925B54:
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80925B60:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	mtc1    $zero, $f14                ## $f14 = 0.00
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x0034($sp)            
	lui     t7, %hi(var_80926D90)      ## t7 = 80920000
	addiu   t7, t7, %lo(var_80926D90)  ## t7 = 80926D90
	lw      t9, 0x0000(t7)             ## 80926D90
	lw      t8, 0x0004(t7)             ## 80926D94
	addiu   t6, $sp, 0x0028            ## t6 = FFFFFFF8
	sw      t9, 0x0000(t6)             ## FFFFFFF8
	sw      t8, 0x0004(t6)             ## FFFFFFFC
	lwc1    $f0, 0x0154(a0)            ## 00000154
	lui     $at, 0x41C8                ## $at = 41C80000
	addiu   a1, $zero, 0x38B8          ## a1 = 000038B8
	c.eq.s  $f14, $f0                  
	nop
	bc1t    lbl_80925BC0               
	nop
	mtc1    $at, $f4                   ## $f4 = 25.00
	nop
	c.eq.s  $f4, $f0                   
	nop
	bc1fl   lbl_80925BD4               
	lw      t1, 0x0144(a0)             ## 00000144
lbl_80925BC0:
	jal     func_80022FD0              
	sw      a0, 0x0030($sp)            
	mtc1    $zero, $f14                ## $f14 = 0.00
	lw      a0, 0x0030($sp)            
	lw      t1, 0x0144(a0)             ## 00000144
lbl_80925BD4:
	lui     t0, 0x0600                 ## t0 = 06000000
	addiu   t0, t0, 0x1FA8             ## t0 = 06001FA8
	beq     t0, t1, lbl_80925BEC       
	addiu   v0, $sp, 0x0028            ## v0 = FFFFFFF8
	beq     $zero, $zero, lbl_80925C78 
	mov.s   $f0, $f14                  
lbl_80925BEC:
	lui     $at, 0x4140                ## $at = 41400000
	mtc1    $at, $f12                  ## $f12 = 12.00
	lwc1    $f2, 0x0154(a0)            ## 00000154
	addiu   v1, $sp, 0x0030            ## v1 = 00000000
	lwc1    $f0, 0x0000(v0)            ## FFFFFFF8
lbl_80925C00:
	add.s   $f6, $f0, $f12             
	c.lt.s  $f2, $f6                   
	nop
	bc1fl   lbl_80925C28               
	addiu   v0, v0, 0x0004             ## v0 = FFFFFFFC
	c.le.s  $f0, $f2                   
	nop
	bc1tl   lbl_80925C34               
	addiu   t2, $sp, 0x0030            ## t2 = 00000000
	addiu   v0, v0, 0x0004             ## v0 = 00000000
lbl_80925C28:
	bnel    v0, v1, lbl_80925C00       
	lwc1    $f0, 0x0000(v0)            ## 00000000
	addiu   t2, $sp, 0x0030            ## t2 = 00000000
lbl_80925C34:
	sltu    $at, v0, t2                
	bnel    $at, $zero, lbl_80925C4C   
	lwc1    $f8, 0x0000(v0)            ## 00000000
	beq     $zero, $zero, lbl_80925C78 
	mov.s   $f0, $f14                  
	lwc1    $f8, 0x0000(v0)            ## 00000000
lbl_80925C4C:
	lui     $at, %hi(var_80926E0C)     ## $at = 80920000
	lwc1    $f16, %lo(var_80926E0C)($at) 
	sub.s   $f10, $f2, $f8             
	mul.s   $f2, $f10, $f16            
	trunc.w.s $f18, $f2                  
	mfc1    a0, $f18                   
	nop
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	add.s   $f0, $f0, $f0              
lbl_80925C78:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80925C88:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	lh      t6, 0x001C(s0)             ## 0000001C
	lui     a0, 0x0001                 ## a0 = 00010000
	addu    a0, a0, a1                 
	bgez    t6, lbl_80925CB4           
	lui     t0, 0x8012                 ## t0 = 80120000
	beq     $zero, $zero, lbl_80925DE4 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80925CB4:
	lw      a0, 0x1E08(a0)             ## 00011E08
	lh      t2, 0x0218(s0)             ## 00000218
	lui     $at, 0x00FF                ## $at = 00FF0000
	lw      v1, 0x0004(a0)             ## 00010004
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	sll     t3, t2,  2                 
	sll     t7, v1,  4                 
	srl     t8, t7, 28                 
	sll     t9, t8,  2                 
	addu    t0, t0, t9                 
	lw      t0, 0x0C38(t0)             ## 80120C38
	and     t1, v1, $at                
	lui     $at, 0x8000                ## $at = 80000000
	subu    t3, t3, t2                 
	addu    v0, t0, t1                 
	addu    v0, v0, $at                
	sll     t3, t3,  1                 
	addu    v0, v0, t3                 
	lh      t4, 0x0000(v0)             ## 00000001
	lh      t5, 0x0004(v0)             ## 00000005
	lwc1    $f8, 0x0024(s0)            ## 00000024
	mtc1    t4, $f4                    ## $f4 = 0.00
	mtc1    t5, $f10                   ## $f10 = 0.00
	lwc1    $f18, 0x002C(s0)           ## 0000002C
	cvt.s.w $f6, $f4                   
	sw      a0, 0x0034($sp)            
	cvt.s.w $f16, $f10                 
	sub.s   $f12, $f6, $f8             
	sub.s   $f14, $f16, $f18           
	swc1    $f12, 0x002C($sp)          
	jal     func_800CD76C              
	swc1    $f14, 0x0028($sp)          
	lui     $at, %hi(var_80926E10)     ## $at = 80920000
	lwc1    $f4, %lo(var_80926E10)($at) 
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	sw      t7, 0x0010($sp)            
	mul.s   $f6, $f0, $f4              
	addiu   a0, s0, 0x00B6             ## a0 = 000000B6
	addiu   a2, $zero, 0x000A          ## a2 = 0000000A
	addiu   a3, $zero, 0x03E8          ## a3 = 000003E8
	trunc.w.s $f8, $f6                   
	mfc1    a1, $f8                    
	nop
	sll     a1, a1, 16                 
	jal     func_80064508              
	sra     a1, a1, 16                 
	lwc1    $f12, 0x002C($sp)          
	lwc1    $f14, 0x0028($sp)          
	lwl     t9, 0x00B4(s0)             ## 000000B4
	mul.s   $f10, $f12, $f12           
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f4                   ## $f4 = 10.00
	mul.s   $f16, $f14, $f14           
	lwr     t9, 0x00B7(s0)             ## 000000B7
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	swl     t9, 0x0030(s0)             ## 00000030
	swr     t9, 0x0033(s0)             ## 00000033
	lhu     t9, 0x00B8(s0)             ## 000000B8
	add.s   $f18, $f10, $f16           
	sh      t9, 0x0034(s0)             ## 00000034
	c.lt.s  $f18, $f4                  
	nop
	bc1f    lbl_80925DE4               
	nop
	lh      t0, 0x0218(s0)             ## 00000218
	addiu   t1, t0, 0x0001             ## t1 = 00000001
	sh      t1, 0x0218(s0)             ## 00000218
	lw      t3, 0x0034($sp)            
	lh      t2, 0x0218(s0)             ## 00000218
	lbu     t4, 0x0000(t3)             ## 00000000
	slt     $at, t2, t4                
	bne     $at, $zero, lbl_80925DDC   
	nop
	sh      $zero, 0x0218(s0)          ## 00000218
lbl_80925DDC:
	beq     $zero, $zero, lbl_80925DE4 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80925DE4:
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_80925DF8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	jal     func_800597C0              
	addiu   a1, $zero, 0x000E          ## a1 = 0000000E
	beq     v0, $zero, lbl_80925E1C    
	andi    v1, v0, 0xFFFF             ## v1 = 00000000
	beq     $zero, $zero, lbl_80925E3C 
	or      v0, v1, $zero              ## v0 = 00000000
lbl_80925E1C:
	lui     t6, 0x8012                 ## t6 = 80120000
	lhu     t6, -0x4B1E(t6)            ## 8011B4E2
	addiu   v0, $zero, 0x5018          ## v0 = 00005018
	andi    t7, t6, 0x0200             ## t7 = 00000000
	beq     t7, $zero, lbl_80925E3C    
	nop
	beq     $zero, $zero, lbl_80925E3C 
	addiu   v0, $zero, 0x5019          ## v0 = 00005019
lbl_80925E3C:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80925E4C:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	or      a2, a1, $zero              ## a2 = 00000000
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	sw      t6, 0x001C($sp)            
	addiu   a0, a3, 0x20D8             ## a0 = 000020D8
	sw      a2, 0x0024($sp)            
	jal     func_800DD464              
	sw      a3, 0x0020($sp)            
	sltiu   $at, v0, 0x000A            
	lw      a2, 0x0024($sp)            
	beq     $at, $zero, lbl_80925FD4   
	lw      a3, 0x0020($sp)            
	sll     t7, v0,  2                 
	lui     $at, %hi(var_80926E14)     ## $at = 80920000
	addu    $at, $at, t7               
	lw      t7, %lo(var_80926E14)($at) 
	jr      t7                         
	nop
var_80925E9C:
	lhu     t8, 0x010E(a2)             ## 0000010E
	addiu   $at, $zero, 0x5028         ## $at = 00005028
	lui     v1, 0x8012                 ## v1 = 80120000
	bne     t8, $at, lbl_80925EBC      
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	lhu     t9, 0x0F12(v1)             ## 8011B4E2
	ori     t0, t9, 0x0100             ## t0 = 00000100
	sh      t0, 0x0F12(v1)             ## 8011B4E2
lbl_80925EBC:
	beq     $zero, $zero, lbl_80925FD4 
	sw      $zero, 0x001C($sp)         
var_80925EC4:
	or      a0, a3, $zero              ## a0 = 00000000
	sw      a2, 0x0024($sp)            
	jal     func_800D6110              
	sw      a3, 0x0020($sp)            
	lw      a2, 0x0024($sp)            
	beq     v0, $zero, lbl_80925FD4    
	lw      a3, 0x0020($sp)            
	lhu     v0, 0x010E(a2)             ## 0000010E
	addiu   $at, $zero, 0x5018         ## $at = 00005018
	lui     t1, 0x0001                 ## t1 = 00010000
	beq     v0, $at, lbl_80925F00      
	addu    t1, t1, a3                 
	addiu   $at, $zero, 0x5019         ## $at = 00005019
	bnel    v0, $at, lbl_80925FD8      
	lh      v0, 0x001E($sp)            
lbl_80925F00:
	lbu     t1, 0x04BD(t1)             ## 000104BD
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lui     v1, 0x8012                 ## v1 = 80120000
	bne     t1, $at, lbl_80925F20      
	or      a0, a3, $zero              ## a0 = 00000000
	addiu   t2, $zero, 0x0084          ## t2 = 00000084
	beq     $zero, $zero, lbl_80925F74 
	sh      t2, 0x010E(a2)             ## 0000010E
lbl_80925F20:
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	lh      t3, 0x0034(v1)             ## 8011A604
	addiu   t4, $zero, 0x0085          ## t4 = 00000085
	addiu   t5, $zero, 0x0037          ## t5 = 00000037
	slti    $at, t3, 0x000A            
	beql    $at, $zero, lbl_80925F48   
	lui     $at, 0x0001                ## $at = 00010000
	beq     $zero, $zero, lbl_80925F74 
	sh      t4, 0x010E(a2)             ## 0000010E
	lui     $at, 0x0001                ## $at = 00010000
lbl_80925F48:
	addu    $at, $at, a3               
	sb      t5, 0x03DC($at)            ## 000103DC
	jal     func_800721CC              
	addiu   a0, $zero, 0xFFF6          ## a0 = FFFFFFF6
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	lhu     t6, 0x0F12(v1)             ## 8011B4E2
	addiu   v0, $zero, 0x0002          ## v0 = 00000002
	ori     t7, t6, 0x0200             ## t7 = 00000200
	beq     $zero, $zero, lbl_80925FD8 
	sh      t7, 0x0F12(v1)             ## 8011B4E2
lbl_80925F74:
	jal     func_800DCE80              
	lhu     a1, 0x010E(a2)             ## 0000010E
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	lhu     t8, 0x0F12(v1)             ## 8011B4E2
	ori     t9, t8, 0x0200             ## t9 = 00000200
	beq     $zero, $zero, lbl_80925FD4 
	sh      t9, 0x0F12(v1)             ## 8011B4E2
var_80925F94:
	or      a0, a3, $zero              ## a0 = 00000000
	sw      a2, 0x0024($sp)            
	jal     func_800D6110              
	sw      a3, 0x0020($sp)            
	lw      a2, 0x0024($sp)            
	beq     v0, $zero, lbl_80925FD4    
	lw      a3, 0x0020($sp)            
	lhu     v0, 0x010E(a2)             ## 0000010E
	addiu   $at, $zero, 0x0084         ## $at = 00000084
	beq     v0, $at, lbl_80925FC8      
	addiu   $at, $zero, 0x0085         ## $at = 00000085
	bnel    v0, $at, lbl_80925FD8      
	lh      v0, 0x001E($sp)            
lbl_80925FC8:
	jal     func_800D6218              
	or      a0, a3, $zero              ## a0 = 00000000
	sw      $zero, 0x001C($sp)         
lbl_80925FD4:
	lh      v0, 0x001E($sp)            
lbl_80925FD8:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80925FE8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a1, a0, $zero              ## a1 = 00000000
	jal     func_800CDCCC              ## Rand.Next() float
	sw      a1, 0x0018($sp)            
	lui     $at, %hi(var_80926E3C)     ## $at = 80920000
	lwc1    $f4, %lo(var_80926E3C)($at) 
	lw      a1, 0x0018($sp)            
	lui     $at, %hi(var_80926E40)     ## $at = 80920000
	c.lt.s  $f0, $f4                   
	nop
	bc1f    lbl_80926024               
	nop
	beq     $zero, $zero, lbl_80926068 
	or      a0, $zero, $zero           ## a0 = 00000000
lbl_80926024:
	ldc1    $f6, %lo(var_80926E40)($at) 
	cvt.d.s $f2, $f0                   
	lui     $at, %hi(var_80926E48)     ## $at = 80920000
	c.lt.d  $f2, $f6                   
	nop
	bc1f    lbl_80926048               
	nop
	beq     $zero, $zero, lbl_80926068 
	addiu   a0, $zero, 0x0001          ## a0 = 00000001
lbl_80926048:
	ldc1    $f8, %lo(var_80926E48)($at) 
	addiu   a0, $zero, 0x0003          ## a0 = 00000003
	c.lt.d  $f2, $f8                   
	nop
	bc1f    lbl_80926068               
	nop
	beq     $zero, $zero, lbl_80926068 
	addiu   a0, $zero, 0x0002          ## a0 = 00000002
lbl_80926068:
	beq     a0, $zero, lbl_80926090    
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beq     a0, $at, lbl_809260AC      
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     a0, $at, lbl_809260D0      
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	beql    a0, $at, lbl_809260F8      
	lbu     v1, 0x01FC(a1)             ## 000001FC
	beq     $zero, $zero, lbl_80926110 
	lbu     v1, 0x01F9(a1)             ## 000001F9
lbl_80926090:
	lbu     v1, 0x01F9(a1)             ## 000001F9
	or      v0, a0, $zero              ## v0 = 00000002
	slti    $at, v1, 0x0008            
	beq     $at, $zero, lbl_80926110   
	addiu   t6, v1, 0x0001             ## t6 = 00000001
	beq     $zero, $zero, lbl_80926194 
	sb      t6, 0x01F9(a1)             ## 000001F9
lbl_809260AC:
	lbu     v1, 0x01FA(a1)             ## 000001FA
	or      v0, a0, $zero              ## v0 = 00000002
	slti    $at, v1, 0x0004            
	beq     $at, $zero, lbl_809260C8   
	addiu   t7, v1, 0x0001             ## t7 = 00000001
	beq     $zero, $zero, lbl_80926194 
	sb      t7, 0x01FA(a1)             ## 000001FA
lbl_809260C8:
	beq     $zero, $zero, lbl_80926110 
	lbu     v1, 0x01F9(a1)             ## 000001F9
lbl_809260D0:
	lbu     v1, 0x01FB(a1)             ## 000001FB
	or      v0, a0, $zero              ## v0 = 00000002
	slti    $at, v1, 0x0002            
	beq     $at, $zero, lbl_809260EC   
	addiu   t8, v1, 0x0001             ## t8 = 00000001
	beq     $zero, $zero, lbl_80926194 
	sb      t8, 0x01FB(a1)             ## 000001FB
lbl_809260EC:
	beq     $zero, $zero, lbl_80926110 
	lbu     v1, 0x01F9(a1)             ## 000001F9
	lbu     v1, 0x01FC(a1)             ## 000001FC
lbl_809260F8:
	or      v0, a0, $zero              ## v0 = 00000002
	bgtz    v1, lbl_8092610C           
	addiu   t9, v1, 0x0001             ## t9 = 00000001
	beq     $zero, $zero, lbl_80926194 
	sb      t9, 0x01FC(a1)             ## 000001FC
lbl_8092610C:
	lbu     v1, 0x01F9(a1)             ## 000001F9
lbl_80926110:
	slti    $at, v1, 0x0008            
	beq     $at, $zero, lbl_80926128   
	addiu   t0, v1, 0x0001             ## t0 = 00000001
	sb      t0, 0x01F9(a1)             ## 000001F9
	beq     $zero, $zero, lbl_80926190 
	or      a0, $zero, $zero           ## a0 = 00000000
lbl_80926128:
	lbu     v1, 0x01FA(a1)             ## 000001FA
	addiu   a0, $zero, 0x0001          ## a0 = 00000001
	slti    $at, v1, 0x0004            
	beq     $at, $zero, lbl_80926144   
	addiu   t1, v1, 0x0001             ## t1 = 00000001
	beq     $zero, $zero, lbl_80926190 
	sb      t1, 0x01FA(a1)             ## 000001FA
lbl_80926144:
	lbu     v1, 0x01FB(a1)             ## 000001FB
	addiu   a0, $zero, 0x0002          ## a0 = 00000002
	slti    $at, v1, 0x0002            
	beq     $at, $zero, lbl_80926160   
	addiu   t2, v1, 0x0001             ## t2 = 00000001
	beq     $zero, $zero, lbl_80926190 
	sb      t2, 0x01FB(a1)             ## 000001FB
lbl_80926160:
	lbu     v1, 0x01FC(a1)             ## 000001FC
	or      a0, $zero, $zero           ## a0 = 00000000
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	bgtz    v1, lbl_80926180           
	addiu   t3, v1, 0x0001             ## t3 = 00000001
	sb      t3, 0x01FC(a1)             ## 000001FC
	beq     $zero, $zero, lbl_80926190 
	addiu   a0, $zero, 0x0003          ## a0 = 00000003
lbl_80926180:
	sb      t4, 0x01F9(a1)             ## 000001F9
	sb      $zero, 0x01FA(a1)          ## 000001FA
	sb      $zero, 0x01FB(a1)          ## 000001FB
	sb      $zero, 0x01FC(a1)          ## 000001FC
lbl_80926190:
	or      v0, a0, $zero              ## v0 = 00000003
lbl_80926194:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809261A4:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	lui     t7, %hi(var_80926D98)      ## t7 = 80920000
	addiu   t7, t7, %lo(var_80926D98)  ## t7 = 80926D98
	lw      t9, 0x0000(t7)             ## 80926D98
	addiu   t6, $sp, 0x0044            ## t6 = FFFFFFF4
	lw      t8, 0x0004(t7)             ## 80926D9C
	sw      t9, 0x0000(t6)             ## FFFFFFF4
	lw      t9, 0x0008(t7)             ## 80926DA0
	lui     t1, %hi(var_80926DA4)      ## t1 = 80920000
	addiu   t1, t1, %lo(var_80926DA4)  ## t1 = 80926DA4
	sw      t8, 0x0004(t6)             ## FFFFFFF8
	sw      t9, 0x0008(t6)             ## FFFFFFFC
	lw      t3, 0x0000(t1)             ## 80926DA4
	addiu   t0, $sp, 0x0038            ## t0 = FFFFFFE8
	lw      t2, 0x0004(t1)             ## 80926DA8
	sw      t3, 0x0000(t0)             ## FFFFFFE8
	lw      t3, 0x0008(t1)             ## 80926DAC
	lui     t5, %hi(var_80926DB0)      ## t5 = 80920000
	addiu   t5, t5, %lo(var_80926DB0)  ## t5 = 80926DB0
	sw      t2, 0x0004(t0)             ## FFFFFFEC
	sw      t3, 0x0008(t0)             ## FFFFFFF0
	lw      t7, 0x0000(t5)             ## 80926DB0
	addiu   t4, $sp, 0x002C            ## t4 = FFFFFFDC
	lw      t6, 0x0004(t5)             ## 80926DB4
	sw      t7, 0x0000(t4)             ## FFFFFFDC
	lw      t7, 0x0008(t5)             ## 80926DB8
	lui     $at, 0x4200                ## $at = 42000000
	sw      t6, 0x0004(t4)             ## FFFFFFE0
	sw      t7, 0x0008(t4)             ## FFFFFFE4
	lwc1    $f0, 0x0154(s0)            ## 00000154
	mtc1    $at, $f4                   ## $f4 = 32.00
	lui     $at, 0x4220                ## $at = 42200000
	c.le.s  $f4, $f0                   
	nop
	bc1fl   lbl_80926304               
	lw      $ra, 0x0024($sp)           
	mtc1    $at, $f6                   ## $f6 = 40.00
	nop
	c.lt.s  $f0, $f6                   
	nop
	bc1fl   lbl_80926304               
	lw      $ra, 0x0024($sp)           
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f8                   ## $f8 = 0.50
	lui     $at, 0x4140                ## $at = 41400000
	mtc1    $at, $f16                  ## $f16 = 12.00
	sub.s   $f10, $f0, $f8             
	lwc1    $f4, 0x02F4(s0)            ## 000002F4
	mul.s   $f18, $f10, $f16           
	add.s   $f6, $f18, $f4             
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f6, 0x0044($sp)           
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f8                   ## $f8 = 0.50
	lui     $at, 0x4100                ## $at = 41000000
	mtc1    $at, $f16                  ## $f16 = 8.00
	sub.s   $f10, $f0, $f8             
	lwc1    $f4, 0x02F8(s0)            ## 000002F8
	mul.s   $f18, $f10, $f16           
	add.s   $f6, $f18, $f4             
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f6, 0x0048($sp)           
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f8                   ## $f8 = 0.50
	lui     $at, 0x4140                ## $at = 41400000
	mtc1    $at, $f16                  ## $f16 = 12.00
	sub.s   $f10, $f0, $f8             
	lwc1    $f4, 0x02FC(s0)            ## 000002FC
	lui     $at, %hi(var_80926E50)     ## $at = 80920000
	lwc1    $f8, %lo(var_80926E50)($at) 
	mul.s   $f18, $f10, $f16           
	mtc1    $zero, $f10                ## $f10 = 0.00
	lui     a3, 0x3E4C                 ## a3 = 3E4C0000
	ori     a3, a3, 0xCCCD             ## a3 = 3E4CCCCD
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $sp, 0x0044            ## a1 = FFFFFFF4
	addiu   a2, $zero, 0x000C          ## a2 = 0000000C
	add.s   $f6, $f18, $f4             
	swc1    $f8, 0x0010($sp)           
	swc1    $f10, 0x0014($sp)          
	jal     func_80925690              
	swc1    $f6, 0x004C($sp)           
	lw      $ra, 0x0024($sp)           
lbl_80926304:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000
	jr      $ra                        
	nop


func_80926314:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x0044($sp)            
	lui     a2, 0x8002                 ## a2 = 80020000
	addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	jal     func_8001EC20              
	lui     a3, 0x41C0                 ## a3 = 41C00000
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	lui     a2, 0x0601                 ## a2 = 06010000
	addiu   t6, s0, 0x021A             ## t6 = 0000021A
	addiu   t7, s0, 0x0286             ## t7 = 00000286
	addiu   t8, $zero, 0x0012          ## t8 = 00000012
	sw      t8, 0x0018($sp)            
	sw      t7, 0x0014($sp)            
	sw      t6, 0x0010($sp)            
	addiu   a2, a2, 0xBE40             ## a2 = 0600BE40
	sw      a1, 0x0030($sp)            
	lw      a0, 0x0044($sp)            
	jal     func_8008C788              
	or      a3, $zero, $zero           ## a3 = 00000000
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x2F84             ## a0 = 06002F84
	mtc1    v0, $f4                    ## $f4 = 0.00
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     a1, 0x0600                 ## a1 = 06000000
	cvt.s.w $f6, $f4                   
	mfc1    a3, $f0                    
	addiu   a1, a1, 0x2F84             ## a1 = 06002F84
	lw      a0, 0x0030($sp)            
	lui     a2, 0x3F80                 ## a2 = 3F800000
	sw      $zero, 0x0014($sp)         
	swc1    $f6, 0x0010($sp)           
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
	addiu   a1, s0, 0x0184             ## a1 = 00000184
	sw      a1, 0x0030($sp)            
	jal     func_8004AB7C              
	lw      a0, 0x0044($sp)            
	lui     a3, %hi(var_80926D58)      ## a3 = 80920000
	lw      a1, 0x0030($sp)            
	addiu   a3, a3, %lo(var_80926D58)  ## a3 = 80926D58
	lw      a0, 0x0044($sp)            
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	lui     a2, %hi(var_80926D84)      ## a2 = 80920000
	addiu   a2, a2, %lo(var_80926D84)  ## a2 = 80926D84
	addiu   a0, s0, 0x0098             ## a0 = 00000098
	jal     func_80050370              
	or      a1, $zero, $zero           ## a1 = 00000000
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	lhu     v0, 0x000C(v1)             ## 8011A5DC
	ori     $at, $zero, 0xC001         ## $at = 0000C001
	slt     $at, v0, $at               
	bne     $at, $zero, lbl_80926438   
	ori     $at, $zero, 0xE000         ## $at = 0000E000
	slt     $at, v0, $at               
	beq     $at, $zero, lbl_80926438   
	nop
	lw      t9, 0x0004(v1)             ## 8011A5D4
	lw      t0, 0x0044($sp)            
	beq     t9, $zero, lbl_80926438    
	nop
	lh      t1, 0x00A4(t0)             ## 000000A4
	addiu   $at, $zero, 0x0053         ## $at = 00000053
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t1, $at, lbl_80926448      
	lui     a1, 0x3C23                 ## a1 = 3C230000
lbl_80926438:
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80926480 
	lw      $ra, 0x002C($sp)           
lbl_80926448:
	jal     func_80020F88              
	ori     a1, a1, 0xD70A             ## a1 = 0000D70A
	addiu   t2, $zero, 0x0006          ## t2 = 00000006
	sb      t2, 0x001F(s0)             ## 0000001F
	lui     $at, %hi(var_80926E54)     ## $at = 80920000
	lwc1    $f8, %lo(var_80926E54)($at) 
	lui     t4, %hi(func_809264BC)     ## t4 = 80920000
	addiu   t3, $zero, 0xFFFF          ## t3 = FFFFFFFF
	addiu   t4, t4, %lo(func_809264BC) ## t4 = 809264BC
	sw      t3, 0x0204(s0)             ## 00000204
	sw      $zero, 0x0200(s0)          ## 00000200
	sw      t4, 0x0180(s0)             ## 00000180
	swc1    $f8, 0x006C(s0)            ## 0000006C
	lw      $ra, 0x002C($sp)           
lbl_80926480:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_80926490:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	or      a0, a3, $zero              ## a0 = 00000000
	jal     func_8004ABCC              
	addiu   a1, a2, 0x0184             ## a1 = 00000184
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809264BC:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x0034($sp)            
	lh      v0, 0x01D0(s0)             ## 000001D0
	beq     v0, $zero, lbl_8092657C    
	nop
	lh      v1, 0x00B6(s0)             ## 000000B6
	lh      t6, 0x020E(s0)             ## 0000020E
	lh      t7, 0x008A(s0)             ## 0000008A
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	subu    v1, v1, t6                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	subu    v1, t7, v1                 
	sll     v1, v1, 16                 
	bne     v0, $at, lbl_80926528      
	sra     v1, v1, 16                 
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80925838              
	lw      a1, 0x0034($sp)            
	lui     t8, %hi(func_809267B4)     ## t8 = 80920000
	addiu   t8, t8, %lo(func_809267B4) ## t8 = 809267B4
	sh      $zero, 0x01D0(s0)          ## 000001D0
	beq     $zero, $zero, lbl_809266D0 
	sw      t8, 0x0180(s0)             ## 00000180
lbl_80926528:
	lh      t9, 0x01C4(s0)             ## 000001C4
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f8                   ## $f8 = 30.00
	mtc1    t9, $f4                    ## $f4 = 0.00
	lui     t0, %hi(func_80925DF8)     ## t0 = 80920000
	lui     t1, %hi(func_80925E4C)     ## t1 = 80920000
	cvt.s.w $f6, $f4                   
	addiu   t1, t1, %lo(func_80925E4C) ## t1 = 80925E4C
	addiu   t0, t0, %lo(func_80925DF8) ## t0 = 80925DF8
	sw      t0, 0x0010($sp)            
	sw      t1, 0x0014($sp)            
	sh      v1, 0x002E($sp)            
	add.s   $f10, $f6, $f8             
	lw      a0, 0x0034($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a2, s0, 0x01D0             ## a2 = 000001D0
	mfc1    a3, $f10                   
	jal     func_800271FC              
	nop
	beq     $zero, $zero, lbl_80926688 
	lh      v1, 0x002E($sp)            
lbl_8092657C:
	jal     func_8092597C              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_80926604    
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t4, 0x01C4(s0)             ## 000001C4
	lh      v1, 0x00B6(s0)             ## 000000B6
	lh      t2, 0x020E(s0)             ## 0000020E
	mtc1    t4, $f16                   ## $f16 = 0.00
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f4                   ## $f4 = 30.00
	cvt.s.w $f18, $f16                 
	lh      t3, 0x008A(s0)             ## 0000008A
	subu    v1, v1, t2                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      $zero, 0x020C(s0)          ## 0000020C
	add.s   $f6, $f18, $f4             
	subu    v1, t3, v1                 
	sll     v1, v1, 16                 
	lui     t5, %hi(func_80925DF8)     ## t5 = 80920000
	lui     t6, %hi(func_80925E4C)     ## t6 = 80920000
	sra     v1, v1, 16                 
	addiu   t6, t6, %lo(func_80925E4C) ## t6 = 80925E4C
	addiu   t5, t5, %lo(func_80925DF8) ## t5 = 80925DF8
	mfc1    a3, $f6                    
	sw      t5, 0x0010($sp)            
	sw      t6, 0x0014($sp)            
	sh      v1, 0x002E($sp)            
	lw      a0, 0x0034($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_800271FC              
	addiu   a2, s0, 0x01D0             ## a2 = 000001D0
	beq     $zero, $zero, lbl_80926688 
	lh      v1, 0x002E($sp)            
lbl_80926604:
	jal     func_80022930              
	lw      a1, 0x0034($sp)            
	beq     v0, $zero, lbl_80926644    
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	lh      v1, 0x00B6(s0)             ## 000000B6
	lh      t7, 0x020E(s0)             ## 0000020E
	lh      t8, 0x008A(s0)             ## 0000008A
	sh      $zero, 0x020C(s0)          ## 0000020C
	subu    v1, v1, t7                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	subu    v1, t8, v1                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	beq     $zero, $zero, lbl_80926688 
	sh      t9, 0x01D0(s0)             ## 000001D0
lbl_80926644:
	lh      v1, 0x020C(s0)             ## 0000020C
	or      a0, s0, $zero              ## a0 = 00000000
	bne     v1, $zero, lbl_8092665C    
	addiu   t0, v1, 0xFFFF             ## t0 = FFFFFFFF
	beq     $zero, $zero, lbl_80926664 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_8092665C:
	sh      t0, 0x020C(s0)             ## 0000020C
	lh      v0, 0x020C(s0)             ## 0000020C
lbl_80926664:
	bne     v0, $zero, lbl_80926688    
	or      v1, $zero, $zero           ## v1 = 00000000
	jal     func_809257C4              
	lw      a1, 0x0034($sp)            
	lui     t1, %hi(func_809266E4)     ## t1 = 80920000
	addiu   t1, t1, %lo(func_809266E4) ## t1 = 809266E4
	sw      t1, 0x0180(s0)             ## 00000180
	beq     $zero, $zero, lbl_80926688 
	lh      v1, 0x002E($sp)            
lbl_80926688:
	subu    a0, $zero, v1              
	slti    $at, a0, 0x04F6            
	beq     $at, $zero, lbl_809266A0   
	addiu   a2, $zero, 0x0006          ## a2 = 00000006
	beq     $zero, $zero, lbl_809266BC 
	addiu   a1, $zero, 0x04F6          ## a1 = 000004F6
lbl_809266A0:
	slti    $at, a0, 0x29EB            
	bne     $at, $zero, lbl_809266B4   
	or      v0, a0, $zero              ## v0 = 00000000
	beq     $zero, $zero, lbl_809266B4 
	addiu   v0, $zero, 0x29EA          ## v0 = 000029EA
lbl_809266B4:
	sll     a1, v0, 16                 
	sra     a1, a1, 16                 
lbl_809266BC:
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	sw      t2, 0x0010($sp)            
	addiu   a0, s0, 0x0216             ## a0 = 00000216
	jal     func_80064508              
	addiu   a3, $zero, 0x03E8          ## a3 = 000003E8
lbl_809266D0:
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_809266E4:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	lh      t6, 0x01D0(s0)             ## 000001D0
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	or      a0, s0, $zero              ## a0 = 00000000
	bne     t6, $at, lbl_80926724      
	nop
	jal     func_80925838              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     t7, %hi(func_809267B4)     ## t7 = 80920000
	addiu   t7, t7, %lo(func_809267B4) ## t7 = 809267B4
	sh      $zero, 0x01D0(s0)          ## 000001D0
	beq     $zero, $zero, lbl_809267A0 
	sw      t7, 0x0180(s0)             ## 00000180
lbl_80926724:
	jal     func_80925B60              
	sw      a1, 0x002C($sp)            
	swc1    $f0, 0x0068(s0)            ## 00000068
	lw      a1, 0x002C($sp)            
	jal     func_80925C88              
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	sw      t8, 0x0010($sp)            
	addiu   a0, s0, 0x0216             ## a0 = 00000216
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x0006          ## a2 = 00000006
	jal     func_80064508              
	addiu   a3, $zero, 0x03E8          ## a3 = 000003E8
	jal     func_80925AE8              
	or      a0, s0, $zero              ## a0 = 00000000
	lh      v0, 0x020C(s0)             ## 0000020C
	beq     v0, $zero, lbl_80926770    
	addiu   t9, v0, 0xFFFF             ## t9 = FFFFFFFF
	sh      t9, 0x020C(s0)             ## 0000020C
lbl_80926770:
	jal     func_8092597C              
	or      a0, s0, $zero              ## a0 = 00000000
	bne     v0, $zero, lbl_8092678C    
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t0, 0x020C(s0)             ## 0000020C
	bnel    t0, $zero, lbl_809267A4    
	lw      $ra, 0x0024($sp)           
lbl_8092678C:
	jal     func_80925748              
	lw      a1, 0x002C($sp)            
	lui     t1, %hi(func_809264BC)     ## t1 = 80920000
	addiu   t1, t1, %lo(func_809264BC) ## t1 = 809264BC
	sw      t1, 0x0180(s0)             ## 00000180
lbl_809267A0:
	lw      $ra, 0x0024($sp)           
lbl_809267A4:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_809267B4:
	addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x005C($sp)            
	lui     t7, %hi(var_80926DBC)      ## t7 = 80920000
	addiu   t7, t7, %lo(var_80926DBC)  ## t7 = 80926DBC
	lw      t9, 0x0000(t7)             ## 80926DBC
	addiu   t6, $sp, 0x002C            ## t6 = FFFFFFD4
	lw      t8, 0x0004(t7)             ## 80926DC0
	sw      t9, 0x0000(t6)             ## FFFFFFD4
	lw      t9, 0x0008(t7)             ## 80926DC4
	sw      t8, 0x0004(t6)             ## FFFFFFD8
	lw      t8, 0x000C(t7)             ## 80926DC8
	sw      t9, 0x0008(t6)             ## FFFFFFDC
	lw      t9, 0x0010(t7)             ## 80926DCC
	or      a0, s0, $zero              ## a0 = 00000000
	sw      t8, 0x000C(t6)             ## FFFFFFE0
	jal     func_809261A4              
	sw      t9, 0x0010(t6)             ## FFFFFFE4
	lui     $at, 0x4200                ## $at = 42000000
	mtc1    $at, $f4                   ## $f4 = 32.00
	lwc1    $f6, 0x0154(s0)            ## 00000154
	or      a0, s0, $zero              ## a0 = 00000000
	c.eq.s  $f4, $f6                   
	nop
	bc1fl   lbl_80926900               
	lui     $at, 0x4200                ## $at = 42000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x28C8          ## a1 = 000028C8
	lbu     t0, 0x01F8(s0)             ## 000001F8
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	sh      $zero, 0x020A(s0)          ## 0000020A
	bnel    t0, $at, lbl_80926900      
	lui     $at, 0x4200                ## $at = 42000000
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     $at, 0xC220                ## $at = C2200000
	mtc1    $at, $f8                   ## $f8 = -40.00
	swc1    $f0, 0x004C($sp)           
	swc1    $f0, 0x0050($sp)           
	swc1    $f8, 0x0054($sp)           
	lh      t1, 0x00B6(s0)             ## 000000B6
	or      a1, $zero, $zero           ## a1 = 00000000
	mtc1    t1, $f10                   ## $f10 = 0.00
	jal     func_800AAB94              
	cvt.s.w $f12, $f10                 
	addiu   a0, $sp, 0x004C            ## a0 = FFFFFFF4
	jal     func_800AB958              
	addiu   a1, $sp, 0x0040            ## a1 = FFFFFFE8
	lwc1    $f16, 0x0040($sp)          
	lwc1    $f18, 0x0024(s0)           ## 00000024
	lwc1    $f6, 0x0044($sp)           
	or      a0, s0, $zero              ## a0 = 00000000
	add.s   $f4, $f16, $f18            
	lwc1    $f16, 0x0048($sp)          
	swc1    $f4, 0x0040($sp)           
	lwc1    $f8, 0x0028(s0)            ## 00000028
	add.s   $f10, $f6, $f8             
	swc1    $f10, 0x0044($sp)          
	lwc1    $f18, 0x002C(s0)           ## 0000002C
	add.s   $f4, $f16, $f18            
	jal     func_80925FE8              
	swc1    $f4, 0x0048($sp)           
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bne     v0, $at, lbl_809268E0      
	sw      v0, 0x0204(s0)             ## 00000204
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	lhu     v0, 0x0EF2(v1)             ## 8011B4C2
	addiu   t4, $zero, 0x0004          ## t4 = 00000004
	andi    t2, v0, 0x1000             ## t2 = 00000000
	bne     t2, $zero, lbl_809268E0    
	ori     t3, v0, 0x1000             ## t3 = 00001000
	sh      t3, 0x0EF2(v1)             ## 8011B4C2
	sw      t4, 0x0204(s0)             ## 00000204
lbl_809268E0:
	lw      t5, 0x0204(s0)             ## 00000204
	lw      a0, 0x005C($sp)            
	addiu   a1, $sp, 0x0040            ## a1 = FFFFFFE8
	sll     t6, t5,  2                 
	addu    a2, $sp, t6                
	jal     func_80013678              
	lh      a2, 0x002E(a2)             ## 0000002E
	lui     $at, 0x4200                ## $at = 42000000
lbl_80926900:
	mtc1    $at, $f8                   ## $f8 = 32.00
	lwc1    $f6, 0x0154(s0)            ## 00000154
	c.le.s  $f8, $f6                   
	nop
	bc1fl   lbl_80926998               
	lh      t1, 0x020A(s0)             ## 0000020A
	lh      t7, 0x020A(s0)             ## 0000020A
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
	bnel    t7, $at, lbl_80926998      
	lh      t1, 0x020A(s0)             ## 0000020A
	lbu     t8, 0x01F8(s0)             ## 000001F8
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    t8, $zero, lbl_8092694C    
	lw      t9, 0x0204(s0)             ## 00000204
	jal     func_80022FD0              
	addiu   a1, $zero, 0x4806          ## a1 = 00004806
	beq     $zero, $zero, lbl_80926998 
	lh      t1, 0x020A(s0)             ## 0000020A
	lw      t9, 0x0204(s0)             ## 00000204
lbl_8092694C:
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	lui     a3, 0x8010                 ## a3 = 80100000
	bne     t9, $at, lbl_8092698C      
	or      a0, s0, $zero              ## a0 = 00000000
	lui     t0, 0x8010                 ## t0 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t0, t0, 0x43A8             ## t0 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t0, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x4802          ## a0 = 00004802
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_80926998 
	lh      t1, 0x020A(s0)             ## 0000020A
lbl_8092698C:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x4807          ## a1 = 00004807
	lh      t1, 0x020A(s0)             ## 0000020A
lbl_80926998:
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lw      a1, 0x014C(s0)             ## 0000014C
	addiu   t2, t1, 0x0001             ## t2 = 00000001
	jal     func_8008D6A8              
	sh      t2, 0x020A(s0)             ## 0000020A
	beql    v0, $zero, lbl_80926A08    
	lw      $ra, 0x0024($sp)           
	lw      t3, 0x0204(s0)             ## 00000204
	lw      a0, 0x005C($sp)            
	addiu   a1, $zero, 0x501A          ## a1 = 0000501A
	bgez    t3, lbl_809269D8           
	nop
	jal     func_800DCE14              
	or      a2, $zero, $zero           ## a2 = 00000000
	beq     $zero, $zero, lbl_809269E4 
	or      a0, s0, $zero              ## a0 = 00000000
lbl_809269D8:
	jal     func_800D6218              
	lw      a0, 0x005C($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
lbl_809269E4:
	jal     func_80925748              
	lw      a1, 0x005C($sp)            
	lui     t5, %hi(func_809264BC)     ## t5 = 80920000
	addiu   t4, $zero, 0xFFFF          ## t4 = FFFFFFFF
	addiu   t5, t5, %lo(func_809264BC) ## t5 = 809264BC
	sw      t4, 0x0204(s0)             ## 00000204
	sb      $zero, 0x01F8(s0)          ## 000001F8
	sw      t5, 0x0180(s0)             ## 00000180
	lw      $ra, 0x0024($sp)           
lbl_80926A08:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0058           ## $sp = 00000000
	jr      $ra                        
	nop


func_80926A18:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x003C($sp)            
	addiu   a2, s0, 0x0184             ## a2 = 00000184
	or      a1, a2, $zero              ## a1 = 00000184
	sw      a2, 0x002C($sp)            
	jal     func_80050B00              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a0, 0x003C($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	lw      a2, 0x002C($sp)            
	jal     func_8004C130              ## CollisionCheck_setOT
	addu    a1, a0, $at                
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   t6, $zero, 0x0005          ## t6 = 00000005
	sw      t6, 0x0014($sp)            
	lw      a0, 0x003C($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	lui     a2, 0x4220                 ## a2 = 42200000
	lui     a3, 0x4120                 ## a3 = 41200000
	jal     func_80021E6C              
	swc1    $f4, 0x0010($sp)           
	lw      t9, 0x0180(s0)             ## 00000180
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x003C($sp)            
	jalr    $ra, t9                    
	nop
	jal     func_80925294              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_809258B8              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_80926AC4:
	lw      v0, 0x0000(a0)             ## 00000000
	lw      a1, 0x02C0(v0)             ## 000002C0
	lui     t8, 0x0601                 ## t8 = 06010000
	addiu   t8, t8, 0xACE0             ## t8 = 0600ACE0
	addiu   t6, a1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(v0)             ## 000002C0
	lui     t7, 0xDE00                 ## t7 = DE000000
	sw      t7, 0x0000(a1)             ## 00000000
	sw      t8, 0x0004(a1)             ## 00000004
	jr      $ra                        
	nop


func_80926AF0:
	sw      a0, 0x0000($sp)            
	sw      a2, 0x0008($sp)            
	sw      a3, 0x000C($sp)            
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	beq     a1, $at, lbl_80926B1C      
	lw      v1, 0x0010($sp)            
	addiu   $at, $zero, 0x0010         ## $at = 00000010
	beq     a1, $at, lbl_80926B2C      
	lw      v0, 0x0014($sp)            
	beq     $zero, $zero, lbl_80926B54 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80926B1C:
	lw      v0, 0x0014($sp)            
	lh      t6, 0x0002(v1)             ## 00000002
	beq     $zero, $zero, lbl_80926B50 
	sh      t6, 0x020E(v0)             ## 0000020E
lbl_80926B2C:
	lw      v1, 0x0010($sp)            
	lh      t7, 0x020E(v0)             ## 0000020E
	lh      t1, 0x0216(v0)             ## 00000216
	lh      t8, 0x0002(v1)             ## 00000002
	addu    t9, t7, t8                 
	sh      t9, 0x020E(v0)             ## 0000020E
	lh      t0, 0x0002(v1)             ## 00000002
	addu    t2, t0, t1                 
	sh      t2, 0x0002(v1)             ## 00000002
lbl_80926B50:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80926B54:
	jr      $ra                        
	nop


func_80926B5C:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      a2, 0x0040($sp)            
	sw      a3, 0x0044($sp)            
	addiu   a3, $sp, 0x001C            ## a3 = FFFFFFE4
	or      a2, a1, $zero              ## a2 = 00000000
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0038($sp)            
	sw      a1, 0x003C($sp)            
	lui     t7, %hi(var_80926DD0)      ## t7 = 80920000
	addiu   t7, t7, %lo(var_80926DD0)  ## t7 = 80926DD0
	lw      t9, 0x0000(t7)             ## 80926DD0
	addiu   t6, $sp, 0x0028            ## t6 = FFFFFFF0
	lw      t8, 0x0004(t7)             ## 80926DD4
	sw      t9, 0x0000(t6)             ## FFFFFFF0
	lw      t9, 0x0008(t7)             ## 80926DD8
	lui     t0, %hi(var_80926DDC)      ## t0 = 80920000
	addiu   t0, t0, %lo(var_80926DDC)  ## t0 = 80926DDC
	sw      t8, 0x0004(t6)             ## FFFFFFF4
	sw      t9, 0x0008(t6)             ## FFFFFFF8
	lw      t2, 0x0000(t0)             ## 80926DDC
	addiu   $at, $zero, 0x0010         ## $at = 00000010
	or      a0, a3, $zero              ## a0 = FFFFFFE4
	sw      t2, 0x0000(a3)             ## FFFFFFE4
	lw      t1, 0x0004(t0)             ## 80926DE0
	sw      t1, 0x0004(a3)             ## FFFFFFE8
	lw      t2, 0x0008(t0)             ## 80926DE4
	bne     a2, $at, lbl_80926BE0      
	sw      t2, 0x0008(a3)             ## FFFFFFEC
	lw      a1, 0x0048($sp)            
	sw      a2, 0x003C($sp)            
	jal     func_800AB958              
	addiu   a1, a1, 0x0038             ## a1 = 00000038
	lw      a2, 0x003C($sp)            
lbl_80926BE0:
	addiu   $at, $zero, 0x000E         ## $at = 0000000E
	bne     a2, $at, lbl_80926C00      
	lw      a1, 0x0048($sp)            
	addiu   a0, $sp, 0x0028            ## a0 = FFFFFFF0
	jal     func_800AB958              
	addiu   a1, a1, 0x02F4             ## a1 = 000002F4
	jal     func_80926AC4              
	lw      a0, 0x0038($sp)            
lbl_80926C00:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_80926C10:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x003C($sp)            
	jal     func_800AA6EC              
	nop
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_809253A0              
	lw      a1, 0x003C($sp)            
	jal     func_800AA724              
	nop
	lw      t6, 0x003C($sp)            
	lw      a0, 0x0000(t6)             ## 00000000
	jal     func_8007E298              
	sw      a0, 0x0030($sp)            
	lw      t1, 0x0030($sp)            
	lw      v1, 0x02C0(t1)             ## 000002C0
	lui     t8, 0xDB06                 ## t8 = DB060000
	ori     t8, t8, 0x0020             ## t8 = DB060020
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t1)             ## 000002C0
	sw      t8, 0x0000(v1)             ## 00000000
	lh      t9, 0x0212(s0)             ## 00000212
	lui     t0, %hi(var_80926DE8)      ## t0 = 80920000
	lui     t7, 0x8012                 ## t7 = 80120000
	sll     t2, t9,  2                 
	addu    t0, t0, t2                 
	lw      t0, %lo(var_80926DE8)(t0)  
	lui     $at, 0x00FF                ## $at = 00FF0000
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	sll     t4, t0,  4                 
	srl     t5, t4, 28                 
	sll     t6, t5,  2                 
	addu    t7, t7, t6                 
	lw      t7, 0x0C38(t7)             ## 80120C38
	and     t3, t0, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t8, t3, t7                 
	addu    t9, t8, $at                
	sw      t9, 0x0004(v1)             ## 00000004
	lw      a1, 0x0140(s0)             ## 00000140
	lw      a2, 0x015C(s0)             ## 0000015C
	lbu     a3, 0x013E(s0)             ## 0000013E
	lui     t2, %hi(func_80926AF0)     ## t2 = 80920000
	lui     t4, %hi(func_80926B5C)     ## t4 = 80920000
	addiu   t4, t4, %lo(func_80926B5C) ## t4 = 80926B5C
	addiu   t2, t2, %lo(func_80926AF0) ## t2 = 80926AF0
	sw      t2, 0x0010($sp)            
	sw      t4, 0x0014($sp)            
	sw      s0, 0x0018($sp)            
	jal     func_80089D8C              
	lw      a0, 0x003C($sp)            
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop

.section .data

var_80926D00: .word 0x00850400, 0x00000009, 0x00890000, 0x00000760
.word func_80926314
.word func_80926490
.word func_80926A18
.word func_80926C10
var_80926D20: .word \
0x04058EE0, 0x04058AE0, 0x040586E0, 0x040582E0, \
0x04057EE0, 0x04057AE0, 0x040576E0, 0x040572E0
var_80926D40: .word 0x00000000, 0x00000000, 0x00000000
var_80926D4C: .word 0x00000000, 0x3E99999A, 0x00000000
var_80926D58: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x001E0034, 0x00000000, 0x00000000
var_80926D84: .word 0x00000000, 0x00000000, 0xFF000000
var_80926D90: .word 0x42100000, 0x41200000
var_80926D98: .word 0x00000000, 0x00000000, 0x00000000
var_80926DA4: .word 0x00000000, 0x00000000, 0x00000000
var_80926DB0: .word 0x00000000, 0x3E99999A, 0x00000000
var_80926DBC: .word \
0x00000000, 0x00000001, 0x00000002, 0x00000014, \
0x00000006
var_80926DD0: .word 0x00000000, 0x00000000, 0x458FC000
var_80926DDC: .word 0x00000000, 0x00000000, 0x00000000
var_80926DE8: .word \
0x06003B40, 0x06004340, 0x06004B40, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80926E00: .word 0x3E4CCCCD
var_80926E04: .word 0x3ECCCCCD
var_80926E08: .word 0x461C4000
var_80926E0C: .word 0x452AAAAB
var_80926E10: .word 0x4622F983
var_80926E14: .word lbl_80925FD4
.word lbl_80925FD4
.word var_80925E9C
.word lbl_80925FD4
.word var_80925EC4
.word var_80925F94
.word lbl_80925FD4
.word lbl_80925FD4
.word lbl_80925FD4
.word lbl_80925FD4
var_80926E3C: .word 0x3ECCCCCD
var_80926E40: .word 0x3FE66666, 0x66666666
var_80926E48: .word 0x3FECCCCC, 0xCCCCCCCD
var_80926E50: .word 0x3DCCCCCD
var_80926E54: .word 0xBDCCCCCD, 0x00000000, 0x00000000

