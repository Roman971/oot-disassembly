#include <mips.h>
.set noreorder
.set noat

.section .text
func_808AD2F0:
	jr      $ra                        
	nop
	jr      $ra                        
	nop


func_808AD300:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x0044($sp)            
	lui     a0, 0x0601                 ## a0 = 06010000
	jal     func_8008A194              
	addiu   a0, a0, 0x2118             ## a0 = 06012118
	mtc1    v0, $f4                    ## $f4 = 0.00
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	lui     a2, 0x0601                 ## a2 = 06010000
	cvt.s.w $f6, $f4                   
	addiu   a2, a2, 0xF5D8             ## a2 = 0600F5D8
	sw      a1, 0x0034($sp)            
	lw      a0, 0x0044($sp)            
	or      a3, $zero, $zero           ## a3 = 00000000
	sw      $zero, 0x0010($sp)         
	swc1    $f6, 0x003C($sp)           
	sw      $zero, 0x0014($sp)         
	jal     func_8008C788              
	sw      $zero, 0x0018($sp)         
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lwc1    $f8, 0x003C($sp)           
	lui     a1, 0x0601                 ## a1 = 06010000
	mfc1    a3, $f0                    
	addiu   a1, a1, 0x2118             ## a1 = 06012118
	lw      a0, 0x0034($sp)            
	lui     a2, 0x3F80                 ## a2 = 3F800000
	sw      $zero, 0x0014($sp)         
	swc1    $f8, 0x0010($sp)           
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
	addiu   a1, s0, 0x0184             ## a1 = 00000184
	sw      a1, 0x0030($sp)            
	jal     func_8004AB7C              
	lw      a0, 0x0044($sp)            
	lui     a3, %hi(var_808B0D80)      ## a3 = 808B0000
	lw      a1, 0x0030($sp)            
	addiu   a3, a3, %lo(var_808B0D80)  ## a3 = 808B0D80
	lw      a0, 0x0044($sp)            
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	lui     a1, 0x3C23                 ## a1 = 3C230000
	ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
	jal     func_80020F88              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a2, 0x8002                 ## a2 = 80020000
	addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	jal     func_8001EC20              
	lui     a3, 0x41C0                 ## a3 = 41C00000
	sb      $zero, 0x001F(s0)          ## 0000001F
	lui     t6, 0x8012                 ## t6 = 80120000
	lw      t6, -0x46D0(t6)            ## 8011B930
	lui     a0, 0x0600                 ## a0 = 06000000
	slti    $at, t6, 0x0004            
	bne     $at, $zero, lbl_808AD438   
	nop
	jal     func_8008A194              
	addiu   a0, a0, 0x0438             ## a0 = 06000438
	mtc1    v0, $f10                   ## $f10 = 0.00
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     a1, 0x0600                 ## a1 = 06000000
	cvt.s.w $f16, $f10                 
	mfc1    a3, $f0                    
	addiu   a1, a1, 0x0438             ## a1 = 06000438
	lw      a0, 0x0034($sp)            
	lui     a2, 0x3F80                 ## a2 = 3F800000
	sw      $zero, 0x0014($sp)         
	swc1    $f16, 0x0010($sp)          
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
	lui     t7, %hi(func_808AE440)     ## t7 = 808B0000
	addiu   t7, t7, %lo(func_808AE440) ## t7 = 808AE440
	sh      $zero, 0x01D6(s0)          ## 000001D6
	beq     $zero, $zero, lbl_808AD57C 
	sw      t7, 0x0180(s0)             ## 00000180
lbl_808AD438:
	jal     func_800288B4              
	addiu   a0, $zero, 0x0009          ## a0 = 00000009
	beq     v0, $zero, lbl_808AD478    
	nop
	jal     func_800288B4              
	addiu   a0, $zero, 0x0025          ## a0 = 00000025
	beq     v0, $zero, lbl_808AD478    
	nop
	jal     func_800288B4              
	addiu   a0, $zero, 0x0037          ## a0 = 00000037
	beq     v0, $zero, lbl_808AD478    
	nop
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_808AD580 
	lw      $ra, 0x002C($sp)           
lbl_808AD478:
	jal     func_800288B4              
	addiu   a0, $zero, 0x0009          ## a0 = 00000009
	beq     v0, $zero, lbl_808AD498    
	nop
	jal     func_800288B4              
	addiu   a0, $zero, 0x0025          ## a0 = 00000025
	bne     v0, $zero, lbl_808AD4B4    
	nop
lbl_808AD498:
	jal     func_800288B4              
	addiu   a0, $zero, 0x0009          ## a0 = 00000009
	beq     v0, $zero, lbl_808AD508    
	nop
	jal     func_800288B4              
	addiu   a0, $zero, 0x0037          ## a0 = 00000037
	beq     v0, $zero, lbl_808AD508    
lbl_808AD4B4:
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x0438             ## a0 = 06000438
	mtc1    v0, $f18                   ## $f18 = 0.00
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     a1, 0x0600                 ## a1 = 06000000
	cvt.s.w $f4, $f18                  
	mfc1    a3, $f0                    
	addiu   a1, a1, 0x0438             ## a1 = 06000438
	lw      a0, 0x0034($sp)            
	lui     a2, 0x3F80                 ## a2 = 3F800000
	sw      $zero, 0x0014($sp)         
	swc1    $f4, 0x0010($sp)           
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
	lui     t9, %hi(func_808AD6D0)     ## t9 = 808B0000
	addiu   t8, $zero, 0x703D          ## t8 = 0000703D
	addiu   t9, t9, %lo(func_808AD6D0) ## t9 = 808AD6D0
	sh      t8, 0x010E(s0)             ## 0000010E
	beq     $zero, $zero, lbl_808AD57C 
	sw      t9, 0x0180(s0)             ## 00000180
lbl_808AD508:
	jal     func_800288B4              
	addiu   a0, $zero, 0x0040          ## a0 = 00000040
	beq     v0, $zero, lbl_808AD56C    
	ori     t2, $zero, 0xFFFF          ## t2 = 0000FFFF
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x0438             ## a0 = 06000438
	mtc1    v0, $f6                    ## $f6 = 0.00
	mtc1    $zero, $f10                ## $f10 = 0.00
	lui     a1, 0x0600                 ## a1 = 06000000
	cvt.s.w $f8, $f6                   
	addiu   a1, a1, 0x0438             ## a1 = 06000438
	lw      a0, 0x0034($sp)            
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	sw      $zero, 0x0014($sp)         
	swc1    $f8, 0x0010($sp)           
	jal     func_8008D17C              
	swc1    $f10, 0x0018($sp)          
	lui     t1, %hi(func_808AD6D0)     ## t1 = 808B0000
	addiu   t0, $zero, 0x703C          ## t0 = 0000703C
	addiu   t1, t1, %lo(func_808AD6D0) ## t1 = 808AD6D0
	sh      t0, 0x010E(s0)             ## 0000010E
	beq     $zero, $zero, lbl_808AD57C 
	sw      t1, 0x0180(s0)             ## 00000180
lbl_808AD56C:
	lui     t3, %hi(func_808AD7C8)     ## t3 = 808B0000
	addiu   t3, t3, %lo(func_808AD7C8) ## t3 = 808AD7C8
	sh      t2, 0x010E(s0)             ## 0000010E
	sw      t3, 0x0180(s0)             ## 00000180
lbl_808AD57C:
	lw      $ra, 0x002C($sp)           
lbl_808AD580:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_808AD590:
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
	jal     func_8004ABCC              
	addiu   a1, a1, 0x0184             ## a1 = 00000184
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808AD5D0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lw      t7, 0x0144(a2)             ## 00000144
	lui     t6, 0x0601                 ## t6 = 06010000
	addiu   t6, t6, 0x0B38             ## t6 = 06010B38
	bne     t6, t7, lbl_808AD628       
	lui     $at, 0x41D0                ## $at = 41D00000
	lwc1    $f4, 0x0154(a2)            ## 00000154
	mtc1    $at, $f6                   ## $f6 = 26.00
	lui     t8, 0x0601                 ## t8 = 06010000
	lui     t9, 0x0601                 ## t9 = 06010000
	c.lt.s  $f4, $f6                   
	addiu   t8, t8, 0x8C48             ## t8 = 06008C48
	addiu   t9, t9, 0x8848             ## t9 = 06008848
	addiu   t0, $zero, 0x0002          ## t0 = 00000002
	bc1fl   lbl_808AD62C               
	lh      v1, 0x01EC(a2)             ## 000001EC
	sw      t8, 0x01E4(a2)             ## 000001E4
	sw      t9, 0x01E8(a2)             ## 000001E8
	beq     $zero, $zero, lbl_808AD6C0 
	sh      t0, 0x01EC(a2)             ## 000001EC
lbl_808AD628:
	lh      v1, 0x01EC(a2)             ## 000001EC
lbl_808AD62C:
	addiu   a0, $zero, 0x001E          ## a0 = 0000001E
	addiu   a1, $zero, 0x000A          ## a1 = 0000000A
	bne     v1, $zero, lbl_808AD644    
	addiu   t1, v1, 0xFFFF             ## t1 = FFFFFFFF
	beq     $zero, $zero, lbl_808AD650 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808AD644:
	sh      t1, 0x01EC(a2)             ## 000001EC
	lh      v1, 0x01EC(a2)             ## 000001EC
	or      v0, v1, $zero              ## v0 = 00000000
lbl_808AD650:
	bnel    v0, $zero, lbl_808AD670    
	slti    $at, v1, 0x0004            
	jal     func_80063BF0              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	sh      v0, 0x01EC(a2)             ## 000001EC
	lh      v1, 0x01EC(a2)             ## 000001EC
	slti    $at, v1, 0x0004            
lbl_808AD670:
	beql    $at, $zero, lbl_808AD684   
	sh      $zero, 0x01EE(a2)          ## 000001EE
	beq     $zero, $zero, lbl_808AD684 
	sh      v1, 0x01EE(a2)             ## 000001EE
	sh      $zero, 0x01EE(a2)          ## 000001EE
lbl_808AD684:
	lh      t2, 0x01EE(a2)             ## 000001EE
	lui     t4, %hi(var_808B0DAC)      ## t4 = 808B0000
	addiu   t4, t4, %lo(var_808B0DAC)  ## t4 = 808B0DAC
	sll     t3, t2,  2                 
	addu    v0, t3, t4                 
	lw      t5, 0x0000(v0)             ## 00000000
	lh      t7, 0x01E2(a2)             ## 000001E2
	lui     t9, %hi(var_808B0DBC)      ## t9 = 808B0000
	sw      t5, 0x01E4(a2)             ## 000001E4
	lw      t6, 0x0000(v0)             ## 00000000
	sll     t8, t7,  2                 
	addu    t9, t9, t8                 
	sw      t6, 0x01E8(a2)             ## 000001E8
	lw      t9, %lo(var_808B0DBC)(t9)  
	sw      t9, 0x01DC(a2)             ## 000001DC
lbl_808AD6C0:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808AD6D0:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s1, 0x0028($sp)            
	sw      s0, 0x0024($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x002C($sp)           
	lw      t6, 0x1C44(s1)             ## 00001C44
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	sw      t6, 0x003C($sp)            
	lw      t8, 0x0038(s0)             ## 00000038
	addiu   a2, s0, 0x01F0             ## a2 = 000001F0
	addiu   a3, s0, 0x01F6             ## a3 = 000001F6
	sw      t8, 0x0010($sp)            
	lw      t7, 0x003C(s0)             ## 0000003C
	sw      t7, 0x0014($sp)            
	lw      t8, 0x0040(s0)             ## 00000040
	jal     func_8002B024              
	sw      t8, 0x0018($sp)            
	lh      t9, 0x01D6(s0)             ## 000001D6
	or      a1, s1, $zero              ## a1 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t9, $zero, lbl_808AD748    
	nop
	jal     func_80022AD0              
	or      a0, s0, $zero              ## a0 = 00000000
	beql    v0, $zero, lbl_808AD78C    
	addiu   a2, s0, 0x0184             ## a2 = 00000184
	beq     $zero, $zero, lbl_808AD788 
	sh      $zero, 0x01D6(s0)          ## 000001D6
lbl_808AD748:
	jal     func_80022930              
	or      a1, s1, $zero              ## a1 = 00000000
	beq     v0, $zero, lbl_808AD764    
	lw      t1, 0x003C($sp)            
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	beq     $zero, $zero, lbl_808AD788 
	sh      t0, 0x01D6(s0)             ## 000001D6
lbl_808AD764:
	lwc1    $f4, 0x0028(t1)            ## 00000028
	lwc1    $f6, 0x0028(s0)            ## 00000028
	or      a0, s0, $zero              ## a0 = 00000000
	c.le.s  $f6, $f4                   
	nop
	bc1fl   lbl_808AD78C               
	addiu   a2, s0, 0x0184             ## a2 = 00000184
	jal     func_80022A90              
	or      a1, s1, $zero              ## a1 = 00000000
lbl_808AD788:
	addiu   a2, s0, 0x0184             ## a2 = 00000184
lbl_808AD78C:
	or      a1, a2, $zero              ## a1 = 00000184
	sw      a2, 0x0034($sp)            
	jal     func_80050B00              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	lw      a2, 0x0034($sp)            
	addu    a1, s1, $at                
	jal     func_8004C130              ## CollisionCheck_setOT
	or      a0, s1, $zero              ## a0 = 00000000
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0024($sp)            
	lw      s1, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_808AD7C8:
	addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
	sw      s1, 0x0028($sp)            
	sw      s0, 0x0024($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x002C($sp)           
	lw      t6, 0x1C44(s1)             ## 00001C44
	lui     t8, %hi(var_808B0DC0)      ## t8 = 808B0000
	addiu   t8, t8, %lo(var_808B0DC0)  ## t8 = 808B0DC0
	sw      t6, 0x006C($sp)            
	lw      t1, 0x0000(t8)             ## 808B0DC0
	addiu   t7, $sp, 0x0054            ## t7 = FFFFFFE4
	lw      t9, 0x0004(t8)             ## 808B0DC4
	sw      t1, 0x0000(t7)             ## FFFFFFE4
	lw      t1, 0x0008(t8)             ## 808B0DC8
	lui     t3, %hi(var_808B0DCC)      ## t3 = 808B0000
	addiu   t3, t3, %lo(var_808B0DCC)  ## t3 = 808B0DCC
	sw      t9, 0x0004(t7)             ## FFFFFFE8
	sw      t1, 0x0008(t7)             ## FFFFFFEC
	lw      t5, 0x0000(t3)             ## 808B0DCC
	addiu   t2, $sp, 0x0048            ## t2 = FFFFFFD8
	lw      t4, 0x0004(t3)             ## 808B0DD0
	sw      t5, 0x0000(t2)             ## FFFFFFD8
	lw      t5, 0x0008(t3)             ## 808B0DD4
	lui     t7, %hi(var_808B0DD8)      ## t7 = 808B0000
	addiu   t7, t7, %lo(var_808B0DD8)  ## t7 = 808B0DD8
	sw      t4, 0x0004(t2)             ## FFFFFFDC
	sw      t5, 0x0008(t2)             ## FFFFFFE0
	lw      t9, 0x0000(t7)             ## 808B0DD8
	addiu   t6, $sp, 0x003C            ## t6 = FFFFFFCC
	lw      t8, 0x0004(t7)             ## 808B0DDC
	sw      t9, 0x0000(t6)             ## FFFFFFCC
	lw      t9, 0x0008(t7)             ## 808B0DE0
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, s1, $zero              ## a1 = 00000000
	sw      t8, 0x0004(t6)             ## FFFFFFD0
	jal     func_80022930              
	sw      t9, 0x0008(t6)             ## FFFFFFD4
	beq     v0, $zero, lbl_808AD990    
	lui     a0, 0x0601                 ## a0 = 06010000
	jal     func_8008A194              
	addiu   a0, a0, 0x0B38             ## a0 = 06010B38
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC120                ## $at = C1200000
	mtc1    $at, $f8                   ## $f8 = -10.00
	cvt.s.w $f6, $f4                   
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   t1, $zero, 0x0003          ## t1 = 00000003
	sw      t1, 0x0014($sp)            
	addiu   a1, a1, 0x0B38             ## a1 = 06010B38
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	swc1    $f6, 0x0010($sp)           
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
	jal     func_8009D0F0              
	or      a0, s1, $zero              ## a0 = 00000000
	sh      v0, 0x01D8(s0)             ## 000001D8
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_8009D1AC              
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	or      a0, s1, $zero              ## a0 = 00000000
	lh      a1, 0x01D8(s0)             ## 000001D8
	jal     func_8009D1AC              
	addiu   a2, $zero, 0x0007          ## a2 = 00000007
	or      a0, s1, $zero              ## a0 = 00000000
	lh      a1, 0x01D8(s0)             ## 000001D8
	lw      a2, 0x006C($sp)            
	jal     func_8009D66C              
	addiu   a3, $zero, 0x0021          ## a3 = 00000021
	lui     $at, 0x0001                ## $at = 00010000
	addu    v1, s1, $at                
	addiu   t0, $zero, 0x00FF          ## t0 = 000000FF
	addiu   t2, $zero, 0x0018          ## t2 = 00000018
	sb      t0, 0x0B06(v1)             ## 00000B06
	sb      t0, 0x0B07(v1)             ## 00000B07
	sb      t0, 0x0B08(v1)             ## 00000B08
	sb      t2, 0x0B09(v1)             ## 00000B09
	addu    $at, $at, s1               
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	sb      t3, 0x0B05($at)            ## 00010B05
	lh      a1, 0x01D8(s0)             ## 000001D8
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a2, $sp, 0x0054            ## a2 = FFFFFFE4
	jal     func_8009D328              
	addiu   a3, $sp, 0x0048            ## a3 = FFFFFFD8
	or      a0, s1, $zero              ## a0 = 00000000
	lh      a1, 0x01D8(s0)             ## 000001D8
	jal     func_8009D55C              
	lui     a2, 0x41F0                 ## a2 = 41F00000
	jal     func_80099620              
	addiu   a0, $zero, 0x0020          ## a0 = 00000020
	jal     func_8006D8E0              
	addiu   a0, $zero, 0x0002          ## a0 = 00000002
	addiu   t4, $sp, 0x003C            ## t4 = FFFFFFCC
	lw      v0, 0x006C($sp)            
	lw      t6, 0x0000(t4)             ## FFFFFFCC
	mtc1    $zero, $f10                ## $f10 = 0.00
	lui     t7, %hi(func_808ADA00)     ## t7 = 808B0000
	sw      t6, 0x0024(v0)             ## 00000024
	lw      t5, 0x0004(t4)             ## FFFFFFD0
	addiu   t7, t7, %lo(func_808ADA00) ## t7 = 808ADA00
	addiu   a0, $zero, 0x0051          ## a0 = 00000051
	sw      t5, 0x0028(v0)             ## 00000028
	lw      t6, 0x0008(t4)             ## FFFFFFD4
	swc1    $f10, 0x0068(v0)           ## 00000068
	sw      t6, 0x002C(v0)             ## 0000002C
	sh      $zero, 0x01D2(s0)          ## 000001D2
	jal     func_800C69A0              
	sw      t7, 0x0180(s0)             ## 00000180
	beq     $zero, $zero, lbl_808AD9F0 
	lw      $ra, 0x002C($sp)           
lbl_808AD990:
	lh      t8, 0x008A(s0)             ## 0000008A
	lh      t9, 0x00B6(s0)             ## 000000B6
	lw      t1, 0x006C($sp)            
	subu    v0, t8, t9                 
	bltz    v0, lbl_808AD9B4           
	subu    v1, $zero, v0              
	sll     v1, v0, 16                 
	beq     $zero, $zero, lbl_808AD9BC 
	sra     v1, v1, 16                 
lbl_808AD9B4:
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
lbl_808AD9BC:
	slti    $at, v1, 0x238E            
	beql    $at, $zero, lbl_808AD9F0   
	lw      $ra, 0x002C($sp)           
	lwc1    $f16, 0x0028(t1)           ## 00000028
	lwc1    $f18, 0x0028(s0)           ## 00000028
	or      a0, s0, $zero              ## a0 = 00000000
	c.lt.s  $f16, $f18                 
	nop
	bc1tl   lbl_808AD9F0               
	lw      $ra, 0x002C($sp)           
	jal     func_80022A90              
	or      a1, s1, $zero              ## a1 = 00000000
	lw      $ra, 0x002C($sp)           
lbl_808AD9F0:
	lw      s0, 0x0024($sp)            
	lw      s1, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0070           ## $sp = 00000000


func_808ADA00:
	addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
	sw      s1, 0x0028($sp)            
	sw      s0, 0x0024($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x002C($sp)           
	lui     t7, %hi(var_808B0DE4)      ## t7 = 808B0000
	addiu   t7, t7, %lo(var_808B0DE4)  ## t7 = 808B0DE4
	lw      t9, 0x0000(t7)             ## 808B0DE4
	addiu   t6, $sp, 0x0074            ## t6 = FFFFFFF4
	lw      t8, 0x0004(t7)             ## 808B0DE8
	sw      t9, 0x0000(t6)             ## FFFFFFF4
	lw      t9, 0x0008(t7)             ## 808B0DEC
	lui     t1, %hi(var_808B0DF0)      ## t1 = 808B0000
	addiu   t1, t1, %lo(var_808B0DF0)  ## t1 = 808B0DF0
	sw      t8, 0x0004(t6)             ## FFFFFFF8
	sw      t9, 0x0008(t6)             ## FFFFFFFC
	lw      t3, 0x0000(t1)             ## 808B0DF0
	addiu   t0, $sp, 0x0068            ## t0 = FFFFFFE8
	lw      t2, 0x0004(t1)             ## 808B0DF4
	sw      t3, 0x0000(t0)             ## FFFFFFE8
	lw      t3, 0x0008(t1)             ## 808B0DF8
	lui     t5, %hi(var_808B0DFC)      ## t5 = 808B0000
	addiu   t5, t5, %lo(var_808B0DFC)  ## t5 = 808B0DFC
	sw      t2, 0x0004(t0)             ## FFFFFFEC
	sw      t3, 0x0008(t0)             ## FFFFFFF0
	lw      t7, 0x0000(t5)             ## 808B0DFC
	addiu   t4, $sp, 0x0058            ## t4 = FFFFFFD8
	lw      t6, 0x0004(t5)             ## 808B0E00
	sw      t7, 0x0000(t4)             ## FFFFFFD8
	lw      t7, 0x0008(t5)             ## 808B0E04
	lui     t9, %hi(var_808B0E08)      ## t9 = 808B0000
	addiu   t9, t9, %lo(var_808B0E08)  ## t9 = 808B0E08
	sw      t6, 0x0004(t4)             ## FFFFFFDC
	sw      t7, 0x0008(t4)             ## FFFFFFE0
	lwr     t1, 0x0002(t9)             ## 808B0E0A
	addiu   t8, $sp, 0x0054            ## t8 = FFFFFFD4
	swr     t1, 0x0002(t8)             ## FFFFFFD6
	lw      t2, 0x1C44(s1)             ## 00001C44
	sw      $zero, 0x003C($sp)         
	sw      t2, 0x004C($sp)            
	lhu     t3, 0x01D2(s0)             ## 000001D2
	sltiu   $at, t3, 0x000A            
	beq     $at, $zero, lbl_808ADF24   
	sll     t3, t3,  2                 
	lui     $at, %hi(var_808B0EB0)     ## $at = 808B0000
	addu    $at, $at, t3               
	lw      t3, %lo(var_808B0EB0)($at) 
	jr      t3                         
	nop
var_808ADAC8:
	lwc1    $f4, 0x0154(s0)            ## 00000154
	addiu   $at, $zero, 0x000E         ## $at = 0000000E
	trunc.w.s $f6, $f4                   
	mfc1    v0, $f6                    
	nop
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	beq     v0, $at, lbl_808ADB04      
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	beq     v0, $at, lbl_808ADB0C      
	addiu   $at, $zero, 0x0040         ## $at = 00000040
	beq     v0, $at, lbl_808ADB40      
	lui     t6, 0x0601                 ## t6 = 06010000
	beq     $zero, $zero, lbl_808ADF28 
	lw      t6, 0x003C($sp)            
lbl_808ADB04:
	beq     $zero, $zero, lbl_808ADF24 
	sh      $zero, 0x01D4(s0)          ## 000001D4
lbl_808ADB0C:
	lh      v1, 0x01D4(s0)             ## 000001D4
	lui     $at, 0x4170                ## $at = 41700000
	bne     v1, $zero, lbl_808ADB24    
	addiu   t5, v1, 0xFFFF             ## t5 = FFFFFFFF
	beq     $zero, $zero, lbl_808ADB2C 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808ADB24:
	sh      t5, 0x01D4(s0)             ## 000001D4
	lh      v0, 0x01D4(s0)             ## 000001D4
lbl_808ADB2C:
	beql    v0, $zero, lbl_808ADF28    
	lw      t6, 0x003C($sp)            
	mtc1    $at, $f8                   ## $f8 = 15.00
	beq     $zero, $zero, lbl_808ADF24 
	swc1    $f8, 0x0154(s0)            ## 00000154
lbl_808ADB40:
	addiu   t6, t6, 0x1348             ## t6 = 06011348
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	sw      t6, 0x0048($sp)            
	sw      t7, 0x003C($sp)            
	addiu   t8, $zero, 0x702E          ## t8 = 0000702E
	sh      t8, 0x010E(s0)             ## 0000010E
	andi    a1, t8, 0xFFFF             ## a1 = 0000702E
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_800DCE14              
	or      a2, $zero, $zero           ## a2 = 00000000
	lh      t9, 0x01D2(s0)             ## 000001D2
	addiu   t0, t9, 0x0001             ## t0 = 00000001
	beq     $zero, $zero, lbl_808ADF24 
	sh      t0, 0x01D2(s0)             ## 000001D2
var_808ADB78:
	jal     func_800DD464              
	addiu   a0, s1, 0x20D8             ## a0 = 000020D8
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bnel    v0, $at, lbl_808ADF28      
	lw      t6, 0x003C($sp)            
	jal     func_800D6110              
	or      a0, s1, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_808ADF24    
	lui     $at, 0x0001                ## $at = 00010000
	addu    $at, $at, s1               
	sb      $zero, 0x0B05($at)         ## 00010B05
	lh      a1, 0x01D8(s0)             ## 000001D8
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a2, $sp, 0x0074            ## a2 = FFFFFFF4
	jal     func_8009D328              
	addiu   a3, $sp, 0x0068            ## a3 = FFFFFFE8
	or      a0, s1, $zero              ## a0 = 00000000
	lh      a1, 0x01D8(s0)             ## 000001D8
	jal     func_8009D55C              
	lui     a2, 0x41C8                 ## a2 = 41C80000
	addiu   t2, $sp, 0x0058            ## t2 = FFFFFFD8
	lw      t4, 0x0000(t2)             ## FFFFFFD8
	lw      t1, 0x004C($sp)            
	addiu   t5, $zero, 0x702F          ## t5 = 0000702F
	andi    a1, t5, 0xFFFF             ## a1 = 0000702F
	sw      t4, 0x0024(t1)             ## 00000024
	lw      t3, 0x0004(t2)             ## FFFFFFDC
	or      a0, s1, $zero              ## a0 = 00000000
	sw      t3, 0x0028(t1)             ## 00000028
	lw      t4, 0x0008(t2)             ## FFFFFFE0
	sw      t4, 0x002C(t1)             ## 0000002C
	jal     func_800DCE80              
	sh      t5, 0x010E(s0)             ## 0000010E
	lh      t6, 0x01D2(s0)             ## 000001D2
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	beq     $zero, $zero, lbl_808ADF24 
	sh      t7, 0x01D2(s0)             ## 000001D2
var_808ADC0C:
	addiu   a0, s1, 0x20D8             ## a0 = 000020D8
	jal     func_800DD464              
	sw      a0, 0x0034($sp)            
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	bnel    v0, $at, lbl_808ADF28      
	lw      t6, 0x003C($sp)            
	jal     func_800D6110              
	or      a0, s1, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_808ADF24    
	lw      t8, 0x0034($sp)            
	addiu   t9, t8, 0x7FFF             ## t9 = 00007FFF
	lbu     t9, 0x63E6(t9)             ## 0000E3E5
	lui     t4, 0x0601                 ## t4 = 06010000
	addiu   t4, t4, 0x16E4             ## t4 = 060116E4
	bne     t9, $zero, lbl_808ADC70    
	addiu   t5, $zero, 0x0002          ## t5 = 00000002
	lui     t0, 0x0601                 ## t0 = 06010000
	addiu   t0, t0, 0x3F10             ## t0 = 06013F10
	addiu   t1, $zero, 0x0002          ## t1 = 00000002
	sw      t0, 0x0048($sp)            
	sw      t1, 0x003C($sp)            
	lh      t2, 0x01D2(s0)             ## 000001D2
	addiu   t3, t2, 0x0001             ## t3 = 00000001
	beq     $zero, $zero, lbl_808ADF24 
	sh      t3, 0x01D2(s0)             ## 000001D2
lbl_808ADC70:
	sw      t4, 0x0048($sp)            
	sw      t5, 0x003C($sp)            
	addiu   t6, $zero, 0x0006          ## t6 = 00000006
	beq     $zero, $zero, lbl_808ADF24 
	sh      t6, 0x01D2(s0)             ## 000001D2
var_808ADC84:
	lui     a0, 0x0601                 ## a0 = 06010000
	jal     func_8008A194              
	addiu   a0, a0, 0x3F10             ## a0 = 06013F10
	mtc1    v0, $f10                   ## $f10 = 0.00
	lwc1    $f18, 0x0154(s0)           ## 00000154
	lui     t7, 0x0601                 ## t7 = 06010000
	cvt.s.w $f16, $f10                 
	addiu   t9, $zero, 0x7032          ## t9 = 00007032
	addiu   t7, t7, 0x43A8             ## t7 = 060143A8
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	andi    a1, t9, 0xFFFF             ## a1 = 00007032
	or      a0, s1, $zero              ## a0 = 00000000
	c.eq.s  $f16, $f18                 
	nop
	bc1fl   lbl_808ADF28               
	lw      t6, 0x003C($sp)            
	sw      t7, 0x0048($sp)            
	sw      t8, 0x003C($sp)            
	jal     func_800DCE80              
	sh      t9, 0x010E(s0)             ## 0000010E
	lh      t0, 0x01D2(s0)             ## 000001D2
	addiu   t1, t0, 0x0001             ## t1 = 00000001
	beq     $zero, $zero, lbl_808ADF24 
	sh      t1, 0x01D2(s0)             ## 000001D2
var_808ADCE4:
	addiu   a0, s1, 0x20D8             ## a0 = 000020D8
	jal     func_800DD464              
	sw      a0, 0x0034($sp)            
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	bnel    v0, $at, lbl_808ADF28      
	lw      t6, 0x003C($sp)            
	jal     func_800D6110              
	or      a0, s1, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_808ADF24    
	lw      t2, 0x0034($sp)            
	addiu   t3, t2, 0x7FFF             ## t3 = 00007FFF
	lbu     t3, 0x63E6(t3)             ## 0000E3E5
	addiu   t7, $zero, 0x7034          ## t7 = 00007034
	andi    a1, t7, 0xFFFF             ## a1 = 00007034
	bne     t3, $zero, lbl_808ADD44    
	or      a0, s1, $zero              ## a0 = 00000000
	lui     t4, 0x0601                 ## t4 = 06010000
	addiu   t4, t4, 0x32D8             ## t4 = 060132D8
	addiu   t5, $zero, 0x0002          ## t5 = 00000002
	sw      t4, 0x0048($sp)            
	sw      t5, 0x003C($sp)            
	addiu   t6, $zero, 0x0009          ## t6 = 00000009
	beq     $zero, $zero, lbl_808ADF24 
	sh      t6, 0x01D2(s0)             ## 000001D2
lbl_808ADD44:
	jal     func_800DCE80              
	sh      t7, 0x010E(s0)             ## 0000010E
	lh      t8, 0x01D2(s0)             ## 000001D2
	addiu   t9, t8, 0x0001             ## t9 = 00000001
	beq     $zero, $zero, lbl_808ADF24 
	sh      t9, 0x01D2(s0)             ## 000001D2
var_808ADD5C:
	jal     func_800DD464              
	addiu   a0, s1, 0x20D8             ## a0 = 000020D8
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bnel    v0, $at, lbl_808ADF28      
	lw      t6, 0x003C($sp)            
	jal     func_800D6110              
	or      a0, s1, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_808ADF24    
	addiu   t0, $zero, 0x7033          ## t0 = 00007033
	sh      t0, 0x010E(s0)             ## 0000010E
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_800DCE80              
	andi    a1, t0, 0xFFFF             ## a1 = 00007033
	lh      t1, 0x01D2(s0)             ## 000001D2
	addiu   t2, t1, 0xFFFF             ## t2 = FFFFFFFF
	beq     $zero, $zero, lbl_808ADF24 
	sh      t2, 0x01D2(s0)             ## 000001D2
var_808ADDA0:
	lui     a0, 0x0601                 ## a0 = 06010000
	jal     func_8008A194              
	addiu   a0, a0, 0x16E4             ## a0 = 060116E4
	mtc1    v0, $f4                    ## $f4 = 0.00
	lwc1    $f8, 0x0154(s0)            ## 00000154
	lui     t3, 0x0601                 ## t3 = 06010000
	cvt.s.w $f6, $f4                   
	addiu   t5, $zero, 0x7031          ## t5 = 00007031
	addiu   t3, t3, 0x1B88             ## t3 = 06011B88
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	andi    a1, t5, 0xFFFF             ## a1 = 00007031
	or      a0, s1, $zero              ## a0 = 00000000
	c.eq.s  $f6, $f8                   
	nop
	bc1fl   lbl_808ADF28               
	lw      t6, 0x003C($sp)            
	sw      t3, 0x0048($sp)            
	sw      t4, 0x003C($sp)            
	jal     func_800DCE80              
	sh      t5, 0x010E(s0)             ## 0000010E
	lh      t6, 0x01D2(s0)             ## 000001D2
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	beq     $zero, $zero, lbl_808ADF24 
	sh      t7, 0x01D2(s0)             ## 000001D2
var_808ADE00:
	jal     func_800DD464              
	addiu   a0, s1, 0x20D8             ## a0 = 000020D8
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bnel    v0, $at, lbl_808ADF28      
	lw      t6, 0x003C($sp)            
	jal     func_800D6110              
	or      a0, s1, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_808ADF24    
	addiu   t8, $zero, 0x7030          ## t8 = 00007030
	sh      t8, 0x010E(s0)             ## 0000010E
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_800DCE80              
	andi    a1, t8, 0xFFFF             ## a1 = 00007030
	lh      t9, 0x01D2(s0)             ## 000001D2
	addiu   t0, t9, 0x0001             ## t0 = 00000001
	beq     $zero, $zero, lbl_808ADF24 
	sh      t0, 0x01D2(s0)             ## 000001D2
var_808ADE44:
	addiu   a0, s1, 0x20D8             ## a0 = 000020D8
	jal     func_800DD464              
	sw      a0, 0x0034($sp)            
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	bnel    v0, $at, lbl_808ADF28      
	lw      t6, 0x003C($sp)            
	jal     func_800D6110              
	or      a0, s1, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_808ADF24    
	lw      t1, 0x0034($sp)            
	addiu   t2, t1, 0x7FFF             ## t2 = 00007FFF
	lbu     t2, 0x63E6(t2)             ## 0000E3E5
	addiu   t6, $zero, 0x7031          ## t6 = 00007031
	andi    a1, t6, 0xFFFF             ## a1 = 00007031
	bne     t2, $zero, lbl_808ADEA4    
	or      a0, s1, $zero              ## a0 = 00000000
	lui     t3, 0x0601                 ## t3 = 06010000
	addiu   t3, t3, 0x38E0             ## t3 = 060138E0
	addiu   t4, $zero, 0x0002          ## t4 = 00000002
	sw      t3, 0x0048($sp)            
	sw      t4, 0x003C($sp)            
	addiu   t5, $zero, 0x0003          ## t5 = 00000003
	beq     $zero, $zero, lbl_808ADF24 
	sh      t5, 0x01D2(s0)             ## 000001D2
lbl_808ADEA4:
	jal     func_800DCE80              
	sh      t6, 0x010E(s0)             ## 0000010E
	lh      t7, 0x01D2(s0)             ## 000001D2
	addiu   t8, t7, 0xFFFF             ## t8 = FFFFFFFF
	beq     $zero, $zero, lbl_808ADF24 
	sh      t8, 0x01D2(s0)             ## 000001D2
var_808ADEBC:
	lui     a0, 0x0601                 ## a0 = 06010000
	jal     func_8008A194              
	addiu   a0, a0, 0x32D8             ## a0 = 060132D8
	mtc1    v0, $f10                   ## $f10 = 0.00
	lwc1    $f18, 0x0154(s0)           ## 00000154
	lui     t9, 0x0600                 ## t9 = 06000000
	cvt.s.w $f16, $f10                 
	lui     t1, %hi(var_808AED60)      ## t1 = 808B0000
	addiu   t9, t9, 0x0438             ## t9 = 06000438
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	addiu   t1, t1, %lo(var_808AED60)  ## t1 = 808AED60
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	c.eq.s  $f16, $f18                 
	lui     $at, 0x8012                ## $at = 80120000
	lui     t3, %hi(func_808AE07C)     ## t3 = 808B0000
	bc1fl   lbl_808ADF28               
	lw      t6, 0x003C($sp)            
	sw      t9, 0x0048($sp)            
	sw      t0, 0x003C($sp)            
	sw      t1, 0x1D68(s1)             ## 00001D68
	sb      t2, -0x461C($at)           ## 8011B9E4
	lh      t4, 0x01D2(s0)             ## 000001D2
	addiu   t3, t3, %lo(func_808AE07C) ## t3 = 808AE07C
	sw      t3, 0x0180(s0)             ## 00000180
	addiu   t5, t4, 0x0001             ## t5 = 00000001
	sh      t5, 0x01D2(s0)             ## 000001D2
lbl_808ADF24:
	lw      t6, 0x003C($sp)            
lbl_808ADF28:
	beql    t6, $zero, lbl_808ADF78    
	lw      t0, 0x0038(s0)             ## 00000038
	jal     func_8008A194              
	lw      a0, 0x0048($sp)            
	mtc1    v0, $f4                    ## $f4 = 0.00
	lw      t7, 0x003C($sp)            
	lui     $at, 0xC120                ## $at = C1200000
	cvt.s.w $f6, $f4                   
	addu    t8, $sp, t7                
	mtc1    $at, $f8                   ## $f8 = -10.00
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lw      a1, 0x0048($sp)            
	lui     a2, 0x3F80                 ## a2 = 3F800000
	swc1    $f6, 0x0010($sp)           
	lbu     t8, 0x0054(t8)             ## 00000054
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f8, 0x0018($sp)           
	jal     func_8008D17C              
	sw      t8, 0x0014($sp)            
	lw      t0, 0x0038(s0)             ## 00000038
lbl_808ADF78:
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	sw      t0, 0x0010($sp)            
	lw      t9, 0x003C(s0)             ## 0000003C
	addiu   a2, s0, 0x01F0             ## a2 = 000001F0
	addiu   a3, s0, 0x01F6             ## a3 = 000001F6
	sw      t9, 0x0014($sp)            
	lw      t0, 0x0040(s0)             ## 00000040
	jal     func_8002B024              
	sw      t0, 0x0018($sp)            
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0024($sp)            
	lw      s1, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0080           ## $sp = 00000000


func_808ADFB4:
	lw      t6, 0x000C(a0)             ## 0000000C
	mtc1    t6, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	swc1    $f6, 0x0000(a1)            ## 00000000
	lw      t7, 0x0010(a0)             ## 00000010
	mtc1    t7, $f8                    ## $f8 = 0.00
	nop
	cvt.s.w $f10, $f8                  
	swc1    $f10, 0x0004(a1)           ## 00000004
	lw      t8, 0x0014(a0)             ## 00000014
	mtc1    t8, $f16                   ## $f16 = 0.00
	nop
	cvt.s.w $f18, $f16                 
	swc1    $f18, 0x0008(a1)           ## 00000008
	jr      $ra                        
	nop


func_808ADFF8:
	lw      t6, 0x0018(a0)             ## 00000018
	mtc1    t6, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	swc1    $f6, 0x0000(a1)            ## 00000000
	lw      t7, 0x001C(a0)             ## 0000001C
	mtc1    t7, $f8                    ## $f8 = 0.00
	nop
	cvt.s.w $f10, $f8                  
	swc1    $f10, 0x0004(a1)           ## 00000004
	lw      t8, 0x0020(a0)             ## 00000020
	mtc1    t8, $f16                   ## $f16 = 0.00
	nop
	cvt.s.w $f18, $f16                 
	swc1    $f18, 0x0008(a1)           ## 00000008
	jr      $ra                        
	nop


func_808AE03C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      a1, 0x001C($sp)            
	or      a1, a0, $zero              ## a1 = 00000000
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	lbu     t6, 0x0171(a1)             ## 00000171
	addiu   a2, a1, 0x013C             ## a2 = 0000013C
	lui     a3, 0x3F80                 ## a3 = 3F800000
	ori     t7, t6, 0x0001             ## t7 = 00000001
	sb      t7, 0x0171(a1)             ## 00000171
	jal     func_8008B778              
	lw      a0, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808AE07C:
	addiu   $sp, $sp, 0xFF28           ## $sp = FFFFFF28
	sw      s2, 0x0030($sp)            
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s2, a1, $zero              ## s2 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      s1, 0x002C($sp)            
	lui     t7, %hi(var_808B0E0C)      ## t7 = 808B0000
	addiu   t7, t7, %lo(var_808B0E0C)  ## t7 = 808B0E0C
	addiu   t0, t7, 0x0024             ## t0 = 808B0E30
	addiu   t6, $sp, 0x00B0            ## t6 = FFFFFFD8
lbl_808AE0A8:
	lw      t9, 0x0000(t7)             ## 808B0E0C
	addiu   t7, t7, 0x000C             ## t7 = 808B0E18
	addiu   t6, t6, 0x000C             ## t6 = FFFFFFE4
	sw      t9, -0x000C(t6)            ## FFFFFFD8
	lw      t8, -0x0008(t7)            ## 808B0E10
	sw      t8, -0x0008(t6)            ## FFFFFFDC
	lw      t9, -0x0004(t7)            ## 808B0E14
	bne     t7, t0, lbl_808AE0A8       
	sw      t9, -0x0004(t6)            ## FFFFFFE0
	lw      t9, 0x0000(t7)             ## 808B0E18
	lui     t2, %hi(var_808B0E34)      ## t2 = 808B0000
	addiu   t2, t2, %lo(var_808B0E34)  ## t2 = 808B0E34
	sw      t9, 0x0000(t6)             ## FFFFFFE4
	lw      t4, 0x0000(t2)             ## 808B0E34
	addiu   t1, $sp, 0x00A4            ## t1 = FFFFFFCC
	lw      t3, 0x0004(t2)             ## 808B0E38
	sw      t4, 0x0000(t1)             ## FFFFFFCC
	lhu     t4, 0x0008(t2)             ## 808B0E3C
	lui     t0, %hi(var_808B0E40)      ## t0 = 808B0000
	addiu   t0, t0, %lo(var_808B0E40)  ## t0 = 808B0E40
	sw      t3, 0x0004(t1)             ## FFFFFFD0
	sh      t4, 0x0008(t1)             ## FFFFFFD4
	lw      t6, 0x0000(t0)             ## 808B0E40
	addiu   t5, $sp, 0x0098            ## t5 = FFFFFFC0
	lw      t7, 0x0004(t0)             ## 808B0E44
	sw      t6, 0x0000(t5)             ## FFFFFFC0
	lw      t6, 0x0008(t0)             ## 808B0E48
	lui     t9, %hi(var_808B0E4C)      ## t9 = 808B0000
	addiu   t9, t9, %lo(var_808B0E4C)  ## t9 = 808B0E4C
	sw      t7, 0x0004(t5)             ## FFFFFFC4
	sw      t6, 0x0008(t5)             ## FFFFFFC8
	lw      t2, 0x0000(t9)             ## 808B0E4C
	addiu   t8, $sp, 0x008C            ## t8 = FFFFFFB4
	lw      t1, 0x0004(t9)             ## 808B0E50
	sw      t2, 0x0000(t8)             ## FFFFFFB4
	lw      t2, 0x0008(t9)             ## 808B0E54
	lui     t4, %hi(var_808B0E58)      ## t4 = 808B0000
	addiu   t4, t4, %lo(var_808B0E58)  ## t4 = 808B0E58
	sw      t1, 0x0004(t8)             ## FFFFFFB8
	sw      t2, 0x0008(t8)             ## FFFFFFBC
	lw      t0, 0x0000(t4)             ## 808B0E58
	addiu   t3, $sp, 0x005C            ## t3 = FFFFFF84
	lw      t5, 0x0004(t4)             ## 808B0E5C
	sw      t0, 0x0000(t3)             ## FFFFFF84
	lw      t0, 0x0008(t4)             ## 808B0E60
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	sw      t5, 0x0004(t3)             ## FFFFFF88
	sw      t0, 0x0008(t3)             ## FFFFFF8C
	jal     func_8008C9C0              
	sw      a0, 0x0044($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_808AE03C              
	or      a1, s2, $zero              ## a1 = 00000000
	lbu     t7, 0x1D6C(s2)             ## 00001D6C
	lui     t6, %hi(func_808AE38C)     ## t6 = 808B0000
	addiu   t6, t6, %lo(func_808AE38C) ## t6 = 808AE38C
	bnel    t7, $zero, lbl_808AE19C    
	lw      s1, 0x1D8C(s2)             ## 00001D8C
	beq     $zero, $zero, lbl_808AE374 
	sw      t6, 0x0180(s0)             ## 00000180
	lw      s1, 0x1D8C(s2)             ## 00001D8C
lbl_808AE19C:
	beq     s1, $zero, lbl_808AE374    
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_808ADFB4              
	addiu   a1, $sp, 0x0074            ## a1 = FFFFFF9C
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_808ADFF8              
	addiu   a1, $sp, 0x0068            ## a1 = FFFFFF90
	lh      v0, 0x01D6(s0)             ## 000001D6
	addiu   t8, $sp, 0x0074            ## t8 = FFFFFF9C
	bnel    v0, $zero, lbl_808AE21C    
	lhu     v1, 0x0000(s1)             ## 00000000
	lw      t1, 0x0000(t8)             ## FFFFFF9C
	addiu   v1, $sp, 0x0048            ## v1 = FFFFFF70
	sw      t1, 0x0000(v1)             ## FFFFFF70
	lw      t9, 0x0004(t8)             ## FFFFFFA0
	lw      t3, 0x0000(v1)             ## FFFFFF70
	sw      t9, 0x0004(v1)             ## FFFFFF74
	lw      t1, 0x0008(t8)             ## FFFFFFA4
	sw      t1, 0x0008(v1)             ## FFFFFF78
	sw      t3, 0x0008(s0)             ## 00000008
	lw      t2, 0x0004(v1)             ## FFFFFF74
	lh      v0, 0x01D6(s0)             ## 000001D6
	sw      t2, 0x000C(s0)             ## 0000000C
	lw      t3, 0x0008(v1)             ## FFFFFF78
	sw      t3, 0x0010(s0)             ## 00000010
	lw      t5, 0x0000(v1)             ## FFFFFF70
	sw      t5, 0x0024(s0)             ## 00000024
	lw      t4, 0x0004(v1)             ## FFFFFF74
	sw      t4, 0x0028(s0)             ## 00000028
	lw      t5, 0x0008(v1)             ## FFFFFF78
	sw      t5, 0x002C(s0)             ## 0000002C
	lhu     v1, 0x0000(s1)             ## 00000000
lbl_808AE21C:
	beq     v1, v0, lbl_808AE27C       
	sll     t0, v1,  2                 
	addu    a0, $sp, t0                
	jal     func_8008A194              
	lw      a0, 0x00B0(a0)             ## 000000B0
	mtc1    v0, $f4                    ## $f4 = 0.00
	lhu     v1, 0x0000(s1)             ## 00000000
	lui     $at, 0xC120                ## $at = C1200000
	cvt.s.w $f6, $f4                   
	sll     t7, v1,  2                 
	addu    a1, $sp, t7                
	lw      a1, 0x00B0(a1)             ## 000000B0
	addu    t6, $sp, v1                
	mtc1    $at, $f8                   ## $f8 = -10.00
	swc1    $f6, 0x0010($sp)           
	lbu     t6, 0x00A4(t6)             ## 000000A4
	lw      a0, 0x0044($sp)            
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f8, 0x0018($sp)           
	jal     func_8008D17C              
	sw      t6, 0x0014($sp)            
	lhu     t8, 0x0000(s1)             ## 00000000
	sh      t8, 0x01D6(s0)             ## 000001D6
lbl_808AE27C:
	addiu   t9, $sp, 0x005C            ## t9 = FFFFFF84
	lw      t2, 0x0000(t9)             ## FFFFFF84
	sw      t2, 0x005C(s0)             ## 0000005C
	lw      t1, 0x0004(t9)             ## FFFFFF88
	sw      t1, 0x0060(s0)             ## 00000060
	lw      t2, 0x0008(t9)             ## FFFFFF8C
	sw      t2, 0x0064(s0)             ## 00000064
	lhu     t3, 0x1D74(s2)             ## 00001D74
	lhu     v0, 0x0004(s1)             ## 00000004
	slt     $at, t3, v0                
	beql    $at, $zero, lbl_808AE328   
	lw      t7, 0x0038(s0)             ## 00000038
	lhu     t4, 0x0002(s1)             ## 00000002
	lwc1    $f16, 0x0068($sp)          
	lwc1    $f18, 0x0074($sp)          
	subu    t5, v0, t4                 
	mtc1    t5, $f10                   ## $f10 = 0.00
	sub.s   $f4, $f16, $f18            
	lwc1    $f2, 0x0070(s0)            ## 00000070
	cvt.s.w $f0, $f10                  
	div.s   $f6, $f4, $f0              
	swc1    $f6, 0x005C(s0)            ## 0000005C
	lwc1    $f10, 0x0078($sp)          
	lwc1    $f8, 0x006C($sp)           
	lwc1    $f6, 0x006C(s0)            ## 0000006C
	sub.s   $f16, $f8, $f10            
	div.s   $f18, $f16, $f0            
	swc1    $f18, 0x0060(s0)           ## 00000060
	lwc1    $f4, 0x0060(s0)            ## 00000060
	add.s   $f8, $f4, $f6              
	swc1    $f8, 0x0060(s0)            ## 00000060
	lwc1    $f10, 0x0060(s0)           ## 00000060
	c.lt.s  $f10, $f2                  
	nop
	bc1fl   lbl_808AE314               
	lwc1    $f16, 0x0070($sp)          
	swc1    $f2, 0x0060(s0)            ## 00000060
	lwc1    $f16, 0x0070($sp)          
lbl_808AE314:
	lwc1    $f18, 0x007C($sp)          
	sub.s   $f4, $f16, $f18            
	div.s   $f6, $f4, $f0              
	swc1    $f6, 0x0064(s0)            ## 00000064
	lw      t7, 0x0038(s0)             ## 00000038
lbl_808AE328:
	or      a0, s2, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	sw      t7, 0x0010($sp)            
	lw      t0, 0x003C(s0)             ## 0000003C
	addiu   a2, s0, 0x01F0             ## a2 = 000001F0
	addiu   a3, s0, 0x01F6             ## a3 = 000001F6
	sw      t0, 0x0014($sp)            
	lw      t7, 0x0040(s0)             ## 00000040
	jal     func_8002B024              
	sw      t7, 0x0018($sp)            
	or      a0, s2, $zero              ## a0 = 00000000
	lh      a1, 0x01D8(s0)             ## 000001D8
	addiu   a2, $sp, 0x0098            ## a2 = FFFFFFC0
	jal     func_8009D328              
	addiu   a3, $sp, 0x008C            ## a3 = FFFFFFB4
	or      a0, s2, $zero              ## a0 = 00000000
	lh      a1, 0x01D8(s0)             ## 000001D8
	jal     func_8009D55C              
	lui     a2, 0x428C                 ## a2 = 428C0000
lbl_808AE374:
	lw      $ra, 0x0034($sp)           
	lw      s0, 0x0028($sp)            
	lw      s1, 0x002C($sp)            
	lw      s2, 0x0030($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x00D8           ## $sp = 00000000


func_808AE38C:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x0044($sp)            
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x0438             ## a0 = 06000438
	mtc1    v0, $f4                    ## $f4 = 0.00
	lw      t6, 0x0044($sp)            
	mtc1    $zero, $f0                 ## $f0 = 0.00
	cvt.s.w $f6, $f4                   
	lw      t7, 0x1C44(t6)             ## 00001C44
	lui     a1, 0x0600                 ## a1 = 06000000
	mfc1    a3, $f0                    
	addiu   a1, a1, 0x0438             ## a1 = 06000438
	sw      $zero, 0x0014($sp)         
	swc1    $f6, 0x0010($sp)           
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lui     a2, 0x3F80                 ## a2 = 3F800000
	swc1    $f0, 0x0018($sp)           
	jal     func_8008D17C              
	sw      t7, 0x0034($sp)            
	lw      a0, 0x0044($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_800218EC              
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	lw      a0, 0x0034($sp)            
	jal     func_80022F84              
	addiu   a1, $zero, 0x6836          ## a1 = 00006836
	addiu   t8, $zero, 0x7039          ## t8 = 00007039
	sh      t8, 0x010E(s0)             ## 0000010E
	lw      a0, 0x0044($sp)            
	andi    a1, t8, 0xFFFF             ## a1 = 00007039
	jal     func_800DCE14              
	or      a2, $zero, $zero           ## a2 = 00000000
	lui     t9, %hi(func_808AE6F4)     ## t9 = 808B0000
	addiu   t9, t9, %lo(func_808AE6F4) ## t9 = 808AE6F4
	sh      $zero, 0x01D2(s0)          ## 000001D2
	sw      t9, 0x0180(s0)             ## 00000180
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_808AE440:
	addiu   $sp, $sp, 0xFF48           ## $sp = FFFFFF48
	sw      s0, 0x0024($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      s1, 0x0028($sp)            
	sw      a1, 0x00BC($sp)            
	lui     t7, %hi(var_808B0E64)      ## t7 = 808B0000
	addiu   t7, t7, %lo(var_808B0E64)  ## t7 = 808B0E64
	addiu   t0, t7, 0x0024             ## t0 = 808B0E88
	addiu   t6, $sp, 0x0090            ## t6 = FFFFFFD8
lbl_808AE468:
	lw      t9, 0x0000(t7)             ## 808B0E64
	addiu   t7, t7, 0x000C             ## t7 = 808B0E70
	addiu   t6, t6, 0x000C             ## t6 = FFFFFFE4
	sw      t9, -0x000C(t6)            ## FFFFFFD8
	lw      t8, -0x0008(t7)            ## 808B0E68
	sw      t8, -0x0008(t6)            ## FFFFFFDC
	lw      t9, -0x0004(t7)            ## 808B0E6C
	bne     t7, t0, lbl_808AE468       
	sw      t9, -0x0004(t6)            ## FFFFFFE0
	lw      t9, 0x0000(t7)             ## 808B0E70
	lui     t2, %hi(var_808B0E8C)      ## t2 = 808B0000
	addiu   t2, t2, %lo(var_808B0E8C)  ## t2 = 808B0E8C
	sw      t9, 0x0000(t6)             ## FFFFFFE4
	lw      t4, 0x0000(t2)             ## 808B0E8C
	addiu   t1, $sp, 0x0084            ## t1 = FFFFFFCC
	lw      t3, 0x0004(t2)             ## 808B0E90
	sw      t4, 0x0000(t1)             ## FFFFFFCC
	lhu     t4, 0x0008(t2)             ## 808B0E94
	lui     t0, %hi(var_808B0E98)      ## t0 = 808B0000
	addiu   t0, t0, %lo(var_808B0E98)  ## t0 = 808B0E98
	sw      t3, 0x0004(t1)             ## FFFFFFD0
	sh      t4, 0x0008(t1)             ## FFFFFFD4
	lw      t6, 0x0000(t0)             ## 808B0E98
	addiu   t5, $sp, 0x0058            ## t5 = FFFFFFA0
	lw      t7, 0x0004(t0)             ## 808B0E9C
	sw      t6, 0x0000(t5)             ## FFFFFFA0
	lw      t6, 0x0008(t0)             ## 808B0EA0
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	sw      t7, 0x0004(t5)             ## FFFFFFA4
	sw      t6, 0x0008(t5)             ## FFFFFFA8
	jal     func_8008C9C0              
	sw      a0, 0x003C($sp)            
	beql    v0, $zero, lbl_808AE544    
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t9, 0x0144(s0)             ## 00000144
	lui     t8, 0x0601                 ## t8 = 06010000
	addiu   t8, t8, 0x0B38             ## t8 = 06010B38
	bne     t8, t9, lbl_808AE540       
	lui     s1, 0x0601                 ## s1 = 06010000
	addiu   s1, s1, 0x1348             ## s1 = 06011348
	jal     func_8008A194              
	or      a0, s1, $zero              ## a0 = 06011348
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC120                ## $at = C1200000
	mtc1    $at, $f8                   ## $f8 = -10.00
	cvt.s.w $f6, $f4                   
	lw      a0, 0x003C($sp)            
	or      a1, s1, $zero              ## a1 = 06011348
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	sw      $zero, 0x0014($sp)         
	swc1    $f6, 0x0010($sp)           
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
lbl_808AE540:
	or      a0, s0, $zero              ## a0 = 00000000
lbl_808AE544:
	jal     func_808AE03C              
	lw      a1, 0x00BC($sp)            
	lw      t1, 0x00BC($sp)            
	lw      s1, 0x1D8C(t1)             ## 00001D8C
	beq     s1, $zero, lbl_808AE6E0    
	or      a0, s1, $zero              ## a0 = 06011348
	jal     func_808ADFB4              
	addiu   a1, $sp, 0x0070            ## a1 = FFFFFFB8
	or      a0, s1, $zero              ## a0 = 06011348
	jal     func_808ADFF8              
	addiu   a1, $sp, 0x0064            ## a1 = FFFFFFAC
	lh      v0, 0x01D6(s0)             ## 000001D6
	addiu   t2, $sp, 0x0070            ## t2 = FFFFFFB8
	bnel    v0, $zero, lbl_808AE5D4    
	lhu     v1, 0x0000(s1)             ## 06011348
	lw      t4, 0x0000(t2)             ## FFFFFFB8
	addiu   v1, $sp, 0x0040            ## v1 = FFFFFF88
	sw      t4, 0x0000(v1)             ## FFFFFF88
	lw      t3, 0x0004(t2)             ## FFFFFFBC
	lw      t0, 0x0000(v1)             ## FFFFFF88
	sw      t3, 0x0004(v1)             ## FFFFFF8C
	lw      t4, 0x0008(t2)             ## FFFFFFC0
	sw      t4, 0x0008(v1)             ## FFFFFF90
	sw      t0, 0x0008(s0)             ## 00000008
	lw      t5, 0x0004(v1)             ## FFFFFF8C
	lh      v0, 0x01D6(s0)             ## 000001D6
	sw      t5, 0x000C(s0)             ## 0000000C
	lw      t0, 0x0008(v1)             ## FFFFFF90
	sw      t0, 0x0010(s0)             ## 00000010
	lw      t6, 0x0000(v1)             ## FFFFFF88
	sw      t6, 0x0024(s0)             ## 00000024
	lw      t7, 0x0004(v1)             ## FFFFFF8C
	sw      t7, 0x0028(s0)             ## 00000028
	lw      t6, 0x0008(v1)             ## FFFFFF90
	sw      t6, 0x002C(s0)             ## 0000002C
	lhu     v1, 0x0000(s1)             ## 06011348
lbl_808AE5D4:
	beq     v1, v0, lbl_808AE634       
	sll     t8, v1,  2                 
	addu    a0, $sp, t8                
	jal     func_8008A194              
	lw      a0, 0x0090(a0)             ## 00000090
	mtc1    v0, $f10                   ## $f10 = 0.00
	lhu     v1, 0x0000(s1)             ## 06011348
	lui     $at, 0xC120                ## $at = C1200000
	cvt.s.w $f16, $f10                 
	sll     t9, v1,  2                 
	addu    a1, $sp, t9                
	lw      a1, 0x0090(a1)             ## 00000090
	addu    t1, $sp, v1                
	mtc1    $at, $f18                  ## $f18 = -10.00
	swc1    $f16, 0x0010($sp)          
	lbu     t1, 0x0084(t1)             ## 00000084
	lw      a0, 0x003C($sp)            
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f18, 0x0018($sp)          
	jal     func_8008D17C              
	sw      t1, 0x0014($sp)            
	lhu     t2, 0x0000(s1)             ## 06011348
	sh      t2, 0x01D6(s0)             ## 000001D6
lbl_808AE634:
	addiu   t3, $sp, 0x0058            ## t3 = FFFFFFA0
	lw      t5, 0x0000(t3)             ## FFFFFFA0
	sw      t5, 0x005C(s0)             ## 0000005C
	lw      t4, 0x0004(t3)             ## FFFFFFA4
	sw      t4, 0x0060(s0)             ## 00000060
	lw      t5, 0x0008(t3)             ## FFFFFFA8
	sw      t5, 0x0064(s0)             ## 00000064
	lw      t0, 0x00BC($sp)            
	lhu     v0, 0x0004(s1)             ## 0601134C
	lhu     t7, 0x1D74(t0)             ## 00001D74
	slt     $at, t7, v0                
	beql    $at, $zero, lbl_808AE6E4   
	lw      $ra, 0x002C($sp)           
	lhu     t6, 0x0002(s1)             ## 0601134A
	lwc1    $f6, 0x0064($sp)           
	lwc1    $f8, 0x0070($sp)           
	subu    t8, v0, t6                 
	mtc1    t8, $f4                    ## $f4 = 0.00
	sub.s   $f10, $f6, $f8             
	lwc1    $f2, 0x0070(s0)            ## 00000070
	cvt.s.w $f0, $f4                   
	div.s   $f16, $f10, $f0            
	swc1    $f16, 0x005C(s0)           ## 0000005C
	lwc1    $f4, 0x0074($sp)           
	lwc1    $f18, 0x0068($sp)          
	lwc1    $f16, 0x006C(s0)           ## 0000006C
	sub.s   $f6, $f18, $f4             
	div.s   $f8, $f6, $f0              
	swc1    $f8, 0x0060(s0)            ## 00000060
	lwc1    $f10, 0x0060(s0)           ## 00000060
	add.s   $f18, $f10, $f16           
	swc1    $f18, 0x0060(s0)           ## 00000060
	lwc1    $f4, 0x0060(s0)            ## 00000060
	c.lt.s  $f4, $f2                   
	nop
	bc1fl   lbl_808AE6D0               
	lwc1    $f6, 0x006C($sp)           
	swc1    $f2, 0x0060(s0)            ## 00000060
	lwc1    $f6, 0x006C($sp)           
lbl_808AE6D0:
	lwc1    $f8, 0x0078($sp)           
	sub.s   $f10, $f6, $f8             
	div.s   $f16, $f10, $f0            
	swc1    $f16, 0x0064(s0)           ## 00000064
lbl_808AE6E0:
	lw      $ra, 0x002C($sp)           
lbl_808AE6E4:
	lw      s0, 0x0024($sp)            
	lw      s1, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x00B8           ## $sp = 00000000


func_808AE6F4:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s1, 0x0028($sp)            
	sw      s0, 0x0024($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x002C($sp)           
	lhu     t6, 0x01D2(s0)             ## 000001D2
	lw      v0, 0x1C44(s1)             ## 00001C44
	sltiu   $at, t6, 0x0007            
	beq     $at, $zero, lbl_808AE9A8   
	sll     t6, t6,  2                 
	lui     $at, %hi(var_808B0ED8)     ## $at = 808B0000
	addu    $at, $at, t6               
	lw      t6, %lo(var_808B0ED8)($at) 
	jr      t6                         
	nop
var_808AE734:
	addiu   a0, s1, 0x20D8             ## a0 = 000020D8
	jal     func_800DD464              
	sw      a0, 0x0030($sp)            
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	bnel    v0, $at, lbl_808AE9AC      
	lw      t1, 0x0038(s0)             ## 00000038
	jal     func_800D6110              
	or      a0, s1, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_808AE9A8    
	lw      t7, 0x0030($sp)            
	addiu   t8, t7, 0x7FFF             ## t8 = 00007FFF
	lbu     t8, 0x63E6(t8)             ## 0000E3E5
	addiu   t2, $zero, 0x703A          ## t2 = 0000703A
	andi    a1, t2, 0xFFFF             ## a1 = 0000703A
	bne     t8, $zero, lbl_808AE798    
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   t9, $zero, 0x703B          ## t9 = 0000703B
	sh      t9, 0x010E(s0)             ## 0000010E
	andi    a1, t9, 0xFFFF             ## a1 = 0000703B
	jal     func_800DCE80              
	or      a0, s1, $zero              ## a0 = 00000000
	lh      t0, 0x01D2(s0)             ## 000001D2
	addiu   t1, t0, 0x0001             ## t1 = 00000001
	beq     $zero, $zero, lbl_808AE9A8 
	sh      t1, 0x01D2(s0)             ## 000001D2
lbl_808AE798:
	jal     func_800DCE80              
	sh      t2, 0x010E(s0)             ## 0000010E
	beq     $zero, $zero, lbl_808AE9A8 
	sh      $zero, 0x01D2(s0)          ## 000001D2
var_808AE7A8:
	jal     func_800DD464              
	addiu   a0, s1, 0x20D8             ## a0 = 000020D8
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bnel    v0, $at, lbl_808AE9AC      
	lw      t1, 0x0038(s0)             ## 00000038
	jal     func_800D6110              
	or      a0, s1, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_808AE9A8    
	ori     t3, $zero, 0xFFFF          ## t3 = 0000FFFF
	lui     t9, 0x0001                 ## t9 = 00010000
	sh      t3, 0x010E(s0)             ## 0000010E
	addu    t9, t9, s1                 
	lw      t9, 0x1D5C(t9)             ## 00011D5C
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	jalr    $ra, t9                    
	nop
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f4                   ## $f4 = 10.00
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, s1, $zero              ## a1 = 00000000
	addiu   a2, $zero, 0x000B          ## a2 = 0000000B
	lui     a3, 0x42F0                 ## a3 = 42F00000
	jal     func_80022BD4              
	swc1    $f4, 0x0010($sp)           
	lui     $at, 0x0001                ## $at = 00010000
	addu    $at, $at, s1               
	addiu   t4, $zero, 0x0036          ## t4 = 00000036
	sb      t4, 0x03DC($at)            ## 000103DC
	lui     $at, 0x0001                ## $at = 00010000
	addu    $at, $at, s1               
	addiu   t5, $zero, 0x0004          ## t5 = 00000004
	sb      t5, 0x04BF($at)            ## 000104BF
	lh      t6, 0x01D2(s0)             ## 000001D2
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	sh      t7, 0x01D2(s0)             ## 000001D2
var_808AE838:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022BB0              
	or      a1, s1, $zero              ## a1 = 00000000
	beq     v0, $zero, lbl_808AE88C    
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_8009D5F0              
	lh      a2, 0x01D8(s0)             ## 000001D8
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_8009D1AC              
	addiu   a2, $zero, 0x0007          ## a2 = 00000007
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8009D21C              
	lh      a1, 0x01D8(s0)             ## 000001D8
	lh      t8, 0x01D2(s0)             ## 000001D2
	sw      $zero, 0x0118(s0)          ## 00000118
	addiu   t0, t8, 0x0001             ## t0 = 00000001
	beq     $zero, $zero, lbl_808AE9A8 
	sh      t0, 0x01D2(s0)             ## 000001D2
lbl_808AE88C:
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f6                   ## $f6 = 10.00
	or      a1, s1, $zero              ## a1 = 00000000
	addiu   a2, $zero, 0x000B          ## a2 = 0000000B
	lui     a3, 0x42F0                 ## a3 = 42F00000
	jal     func_80022BD4              
	swc1    $f6, 0x0010($sp)           
	beq     $zero, $zero, lbl_808AE9AC 
	lw      t1, 0x0038(s0)             ## 00000038
var_808AE8B0:
	jal     func_800DD464              
	addiu   a0, s1, 0x20D8             ## a0 = 000020D8
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	bnel    v0, $at, lbl_808AE9AC      
	lw      t1, 0x0038(s0)             ## 00000038
	jal     func_800D6110              
	or      a0, s1, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_808AE9A8    
	addiu   t1, $zero, 0x703C          ## t1 = 0000703C
	sh      t1, 0x010E(s0)             ## 0000010E
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_800DCE80              
	andi    a1, t1, 0xFFFF             ## a1 = 0000703C
	jal     func_800288E0              
	addiu   a0, $zero, 0x0040          ## a0 = 00000040
	addiu   t2, $zero, 0x0006          ## t2 = 00000006
	beq     $zero, $zero, lbl_808AE9A8 
	sh      t2, 0x01D2(s0)             ## 000001D2
var_808AE8F8:
	lwc1    $f8, 0x0028(v0)            ## 00000028
	lwc1    $f10, 0x0028(s0)           ## 00000028
	or      a0, s0, $zero              ## a0 = 00000000
	c.lt.s  $f8, $f10                  
	nop
	bc1tl   lbl_808AE9AC               
	lw      t1, 0x0038(s0)             ## 00000038
	jal     func_80022930              
	or      a1, s1, $zero              ## a1 = 00000000
	beq     v0, $zero, lbl_808AE934    
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t3, 0x01D2(s0)             ## 000001D2
	addiu   t9, t3, 0x0001             ## t9 = 00000001
	beq     $zero, $zero, lbl_808AE9A8 
	sh      t9, 0x01D2(s0)             ## 000001D2
lbl_808AE934:
	jal     func_80022A90              
	or      a1, s1, $zero              ## a1 = 00000000
	beq     $zero, $zero, lbl_808AE9AC 
	lw      t1, 0x0038(s0)             ## 00000038
var_808AE944:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022AD0              
	or      a1, s1, $zero              ## a1 = 00000000
	beql    v0, $zero, lbl_808AE9AC    
	lw      t1, 0x0038(s0)             ## 00000038
	lh      t4, 0x01D2(s0)             ## 000001D2
	addiu   t5, t4, 0xFFFF             ## t5 = FFFFFFFF
	beq     $zero, $zero, lbl_808AE9A8 
	sh      t5, 0x01D2(s0)             ## 000001D2
var_808AE968:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022AD0              
	or      a1, s1, $zero              ## a1 = 00000000
	beq     v0, $zero, lbl_808AE9A8    
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_800218EC              
	addiu   a2, $zero, 0x0007          ## a2 = 00000007
	jal     func_8006D8E0              
	addiu   a0, $zero, 0x0032          ## a0 = 00000032
	lw      t6, 0x0004(s0)             ## 00000004
	addiu   $at, $zero, 0xFEFF         ## $at = FFFFFEFF
	addiu   t8, $zero, 0x0004          ## t8 = 00000004
	and     t7, t6, $at                
	sw      t7, 0x0004(s0)             ## 00000004
	sh      t8, 0x01D2(s0)             ## 000001D2
lbl_808AE9A8:
	lw      t1, 0x0038(s0)             ## 00000038
lbl_808AE9AC:
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	sw      t1, 0x0010($sp)            
	lw      t0, 0x003C(s0)             ## 0000003C
	addiu   a2, s0, 0x01F0             ## a2 = 000001F0
	addiu   a3, s0, 0x01F6             ## a3 = 000001F6
	sw      t0, 0x0014($sp)            
	lw      t1, 0x0040(s0)             ## 00000040
	jal     func_8002B024              
	sw      t1, 0x0018($sp)            
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0024($sp)            
	lw      s1, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_808AE9E8:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x003C($sp)            
	lui     t6, %hi(func_808AE07C)     ## t6 = 808B0000
	addiu   t6, t6, %lo(func_808AE07C) ## t6 = 808AE07C
	sw      t6, 0x002C($sp)            
	lw      v0, 0x0180(s0)             ## 00000180
	lui     t7, %hi(func_808AE440)     ## t7 = 808B0000
	addiu   t7, t7, %lo(func_808AE440) ## t7 = 808AE440
	beql    t6, v0, lbl_808AEA30       
	mtc1    $zero, $f0                 ## $f0 = 0.00
	beql    t7, v0, lbl_808AEA30       
	mtc1    $zero, $f0                 ## $f0 = 0.00
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	mtc1    $zero, $f0                 ## $f0 = 0.00
lbl_808AEA30:
	addiu   t8, $zero, 0x0005          ## t8 = 00000005
	sw      t8, 0x0014($sp)            
	mfc1    a2, $f0                    
	mfc1    a3, $f0                    
	lw      a0, 0x003C($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_80021E6C              
	swc1    $f0, 0x0010($sp)           
	lw      t9, 0x0180(s0)             ## 00000180
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x003C($sp)            
	jalr    $ra, t9                    
	nop
	lw      t0, 0x002C($sp)            
	lw      t1, 0x0180(s0)             ## 00000180
	addiu   a2, s0, 0x0184             ## a2 = 00000184
	or      a1, a2, $zero              ## a1 = 00000184
	beq     t0, t1, lbl_808AEA9C       
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80050B00              
	sw      a2, 0x002C($sp)            
	lw      a0, 0x003C($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	lw      a2, 0x002C($sp)            
	jal     func_8004C130              ## CollisionCheck_setOT
	addu    a1, a0, $at                
lbl_808AEA9C:
	lh      a1, 0x0030(s0)             ## 00000030
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	sw      t3, 0x0010($sp)            
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	addiu   a2, $zero, 0x000A          ## a2 = 0000000A
	jal     func_80064508              
	addiu   a3, $zero, 0x03E8          ## a3 = 000003E8
	lh      a1, 0x0032(s0)             ## 00000032
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	sw      t4, 0x0010($sp)            
	addiu   a0, s0, 0x00B6             ## a0 = 000000B6
	addiu   a2, $zero, 0x000A          ## a2 = 0000000A
	jal     func_80064508              
	addiu   a3, $zero, 0x03E8          ## a3 = 000003E8
	lh      a1, 0x0034(s0)             ## 00000034
	addiu   t5, $zero, 0x0001          ## t5 = 00000001
	sw      t5, 0x0010($sp)            
	addiu   a0, s0, 0x00B8             ## a0 = 000000B8
	addiu   a2, $zero, 0x000A          ## a2 = 0000000A
	jal     func_80064508              
	addiu   a3, $zero, 0x03E8          ## a3 = 000003E8
	jal     func_808AD5D0              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_808AEB0C:
	sw      a0, 0x0000($sp)            
	sw      a3, 0x000C($sp)            
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	beq     a1, $at, lbl_808AEB38      
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	beq     a1, $at, lbl_808AEB38      
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	beq     a1, $at, lbl_808AEB38      
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bnel    a1, $at, lbl_808AEB40      
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
lbl_808AEB38:
	sw      $zero, 0x0000(a2)          ## 00000000
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
lbl_808AEB40:
	beq     a1, $at, lbl_808AEB8C      
	lw      v0, 0x0014($sp)            
	addiu   $at, $zero, 0x0011         ## $at = 00000011
	bne     a1, $at, lbl_808AEBC0      
	lw      v0, 0x0014($sp)            
	lw      v1, 0x0010($sp)            
	lh      t7, 0x01F2(v0)             ## 000001F2
	lh      t6, 0x0000(v1)             ## 00000000
	lh      t9, 0x0002(v1)             ## 00000002
	lh      t2, 0x0004(v1)             ## 00000004
	addu    t8, t6, t7                 
	sh      t8, 0x0000(v1)             ## 00000000
	lh      t0, 0x01F4(v0)             ## 000001F4
	addu    t1, t9, t0                 
	sh      t1, 0x0002(v1)             ## 00000002
	lh      t3, 0x01F0(v0)             ## 000001F0
	addu    t4, t2, t3                 
	beq     $zero, $zero, lbl_808AEBC0 
	sh      t4, 0x0004(v1)             ## 00000004
lbl_808AEB8C:
	lw      v1, 0x0010($sp)            
	lh      t6, 0x01F8(v0)             ## 000001F8
	lh      t5, 0x0000(v1)             ## 00000000
	lh      t8, 0x0002(v1)             ## 00000002
	lh      t1, 0x0004(v1)             ## 00000004
	addu    t7, t5, t6                 
	sh      t7, 0x0000(v1)             ## 00000000
	lh      t9, 0x01F6(v0)             ## 000001F6
	addu    t0, t8, t9                 
	sh      t0, 0x0002(v1)             ## 00000002
	lh      t2, 0x01FA(v0)             ## 000001FA
	addu    t3, t1, t2                 
	sh      t3, 0x0004(v1)             ## 00000004
lbl_808AEBC0:
	or      v0, $zero, $zero           ## v0 = 00000000
	jr      $ra                        
	nop


func_808AEBCC:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      a0, 0x0028($sp)            
	addiu   a0, $sp, 0x001C            ## a0 = FFFFFFF4
	sw      $ra, 0x0014($sp)           
	sw      a2, 0x0030($sp)            
	sw      a3, 0x0034($sp)            
	lui     t6, %hi(var_808B0EA4)      ## t6 = 808B0000
	addiu   t6, t6, %lo(var_808B0EA4)  ## t6 = 808B0EA4
	lw      t8, 0x0000(t6)             ## 808B0EA4
	addiu   $at, $zero, 0x0011         ## $at = 00000011
	sw      t8, 0x0000(a0)             ## FFFFFFF4
	lw      t7, 0x0004(t6)             ## 808B0EA8
	sw      t7, 0x0004(a0)             ## FFFFFFF8
	lw      t8, 0x0008(t6)             ## 808B0EAC
	bne     a1, $at, lbl_808AEC18      
	sw      t8, 0x0008(a0)             ## FFFFFFFC
	lw      a1, 0x0038($sp)            
	jal     func_800AB958              
	addiu   a1, a1, 0x0038             ## a1 = 00000038
lbl_808AEC18:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_808AEC28:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      $ra, 0x002C($sp)           
	sw      s0, 0x0028($sp)            
	lui     t4, 0x8012                 ## t4 = 80120000
	lui     t5, 0x00FF                 ## t5 = 00FF0000
	ori     t5, t5, 0xFFFF             ## t5 = 00FFFFFF
	addiu   t4, t4, 0x0C38             ## t4 = 80120C38
	or      s0, a0, $zero              ## s0 = 00000000
	lui     $ra, 0x8000                ## $ra = 80000000
	lw      v1, 0x0000(a1)             ## 00000000
	lw      v0, 0x02C0(v1)             ## 000002C0
	lui     t7, 0xDB06                 ## t7 = DB060000
	ori     t7, t7, 0x0020             ## t7 = DB060020
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(v1)             ## 000002C0
	sw      t7, 0x0000(v0)             ## 00000000
	lw      a3, 0x01E4(s0)             ## 000001E4
	sll     t8, a3,  4                 
	srl     t9, t8, 28                 
	sll     t6, t9,  2                 
	addu    t7, t4, t6                 
	lw      t8, 0x0000(t7)             ## DB060020
	and     t9, a3, t5                 
	addu    t6, t8, t9                 
	addu    t7, t6, $ra                
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(v1)             ## 000002C0
	lui     t9, 0xDB06                 ## t9 = DB060000
	ori     t9, t9, 0x0024             ## t9 = DB060024
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(v1)             ## 000002C0
	sw      t9, 0x0000(v0)             ## 00000000
	lw      t1, 0x01E8(s0)             ## 000001E8
	sll     t6, t1,  4                 
	srl     t7, t6, 28                 
	sll     t8, t7,  2                 
	addu    t9, t4, t8                 
	lw      t6, 0x0000(t9)             ## DB060024
	and     t7, t1, t5                 
	addu    t8, t6, t7                 
	addu    t9, t8, $ra                
	sw      t9, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(v1)             ## 000002C0
	lui     t7, 0xDB06                 ## t7 = DB060000
	ori     t7, t7, 0x0028             ## t7 = DB060028
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(v1)             ## 000002C0
	sw      t7, 0x0000(v0)             ## 00000000
	lw      t3, 0x01DC(s0)             ## 000001DC
	sll     t8, t3,  4                 
	srl     t9, t8, 28                 
	sll     t6, t9,  2                 
	addu    t7, t4, t6                 
	lw      t8, 0x0000(t7)             ## DB060028
	and     t9, t3, t5                 
	addu    t6, t8, t9                 
	addu    t7, t6, $ra                
	sw      t7, 0x0004(v0)             ## 00000004
	lw      a0, 0x0000(a1)             ## 00000000
	jal     func_8007E298              
	sw      a1, 0x0034($sp)            
	lw      a1, 0x0140(s0)             ## 00000140
	lw      a2, 0x015C(s0)             ## 0000015C
	lbu     a3, 0x013E(s0)             ## 0000013E
	lui     t8, %hi(func_808AEB0C)     ## t8 = 808B0000
	lui     t9, %hi(func_808AEBCC)     ## t9 = 808B0000
	addiu   t9, t9, %lo(func_808AEBCC) ## t9 = 808AEBCC
	addiu   t8, t8, %lo(func_808AEB0C) ## t8 = 808AEB0C
	sw      t8, 0x0010($sp)            
	sw      t9, 0x0014($sp)            
	sw      s0, 0x0018($sp)            
	jal     func_80089D8C              
	lw      a0, 0x0034($sp)            
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop

.section .data

var_808AED60: .word \
0x0000001C, 0x00000BB8, 0x0000000A, 0x00000003, \
0x00050190, 0x04BB0000, 0xC0000000, 0xFFFFFE5A, \
0x00000054, 0x00000001, 0xFFFFFE5A, 0x00000054, \
0x00000001, 0x0F6484E4, 0x00000000, 0x00000001, \
0x000104BB, 0x04D90000, 0xC0000000, 0xFFFFFE5A, \
0x00000054, 0x00000001, 0xFFFFFE1D, 0x00000054, \
0x00000000, 0x0F6484E4, 0x00000000, 0x00000001, \
0x002904D9, 0x051F0000, 0xC0000000, 0xFFFFFE1D, \
0x00000054, 0x00000000, 0xFFFFFE1D, 0x00000054, \
0x00000000, 0x0F6484E4, 0x00000000, 0x00000001, \
0x00000012, 0x00000001, 0x00070492, 0x05247477, \
0x00000000, 0xFFFFFE1B, 0x00000054, 0x00000000, \
0xFFFFFE2B, 0x00000055, 0xFFFFFFC9, 0x3DE07038, \
0x3BE07038, 0xBDE07038, 0x00000049, 0x00000001, \
0x00010000, 0x0BB80000, 0x00000000, 0x00000000, \
0xFFFFFFE8, 0x00000003, 0x00000000, 0xFFFFFFE8, \
0x00000003, 0x00000000, 0x00000000, 0x00000000, \
0x00000010, 0x00000003, 0x000904C4, 0x051E8000, \
0x00000000, 0xFFFFFC86, 0x0000005A, 0x00000096, \
0xFFFFFC86, 0x0000005A, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x000A051E, 0x05A90000, \
0x00000000, 0xFFFFFC86, 0x0000005A, 0x00000000, \
0xFFFFFC86, 0x0000005A, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x000405A9, 0x05B10000, \
0x00000000, 0xFFFFFC86, 0x0000005A, 0x00000000, \
0xFFFFFC86, 0x0000005A, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000003, 0x00000001, \
0x000C05B4, 0x05B50000, 0x00000000, 0xFFFFFFFF, \
0x00000000, 0x00000002, 0xFFFFFFFF, 0x00000000, \
0x00000002, 0x00000000, 0x00000000, 0x00000000, \
0x0000001D, 0x00000001, 0x0002014A, 0x02FB0000, \
0x00000000, 0xFFFFFB1E, 0x00000096, 0x00000000, \
0xFFFFFB1E, 0x00000096, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0000002D, 0x00000001, \
0x000100C8, 0x00E700E7, 0x0000002D, 0x00000001, \
0x000500E6, 0x010F010F, 0x0000002D, 0x00000001, \
0x0001035C, 0x03660366, 0x0000002D, 0x00000001, \
0x0005036B, 0x03840384, 0x00000001, 0x00010000, \
0x014B0000, 0x00000000, 0x42733334, 0xFE410080, \
0x00012031, 0x00000000, 0x42733334, 0xFE410080, \
0x00013533, 0x00000000, 0x42733334, 0xFE410080, \
0x00013833, 0x00000000, 0x42733334, 0xFE410080, \
0x00012C20, 0x00000000, 0x42733334, 0xFE780091, \
0x00012032, 0x00000000, 0x42733334, 0xFEC200A8, \
0x00013533, 0x00000000, 0x42733334, 0xFF2200C6, \
0x00013639, 0x00000000, 0x42733334, 0xFF6E00DD, \
0x0001392C, 0x00000000, 0x42733334, 0xFF7C00DE, \
0x00012032, 0x00000000, 0x42733334, 0xFFBE010B, \
0x00013632, 0x00000000, 0x42733334, 0xFFBE010B, \
0x00013639, 0x00000000, 0x42733334, 0xFFBE010B, \
0x0001392C, 0x00000000, 0x42733334, 0xFFBE010B, \
0x00012031, 0x00000000, 0x42733334, 0xFFBE010B, \
0x00013533, 0xFF000000, 0x42733334, 0xFFBE010B, \
0x00013336, 0x00000001, 0x000100E6, 0x065F0000, \
0x00000000, 0x42700000, 0xFB3C01BD, 0x00182031, \
0x00000000, 0x42700000, 0xFB3C01BD, 0x00183533, \
0x00000000, 0x42700000, 0xFB3C01BD, 0x00183833, \
0x00000000, 0x42700000, 0xFB3C01BD, 0x00182C20, \
0x00000000, 0x42700000, 0xFB3C01BD, 0x00182032, \
0x00000000, 0x42700000, 0xFB3C01BD, 0x00183533, \
0x00000000, 0x42700000, 0xFB3C01BD, 0x00183639, \
0x00000000, 0x42700000, 0xFB3C01BD, 0x0018392C, \
0x00000000, 0x42700000, 0xFB3C01BD, 0x00182032, \
0x00000000, 0x42700000, 0xFB3C0103, 0x00183632, \
0x00000000, 0x42700000, 0xFB3C00BD, 0x00183639, \
0x00000000, 0x42700000, 0xFB9100C6, 0x0051392C, \
0x00000000, 0x42700000, 0xFB940077, 0x00542031, \
0x00000000, 0x42726667, 0xFB510089, 0x00243533, \
0x00000000, 0x42726667, 0xFB3E007F, 0x00163336, \
0x00000000, 0x42726667, 0xFB3E007F, 0x0016332C, \
0x00000000, 0x42726667, 0xFB3E007F, 0x00162032, \
0x00000000, 0x42726667, 0xFB3E007F, 0x00163231, \
0x00000000, 0x42726667, 0xFB3E007F, 0x00163232, \
0x00000000, 0x42726667, 0xFB3E007F, 0x0016392C, \
0x00000000, 0x42726667, 0xFB3E007F, 0x00162034, \
0x00000000, 0x42726667, 0xFB3E007F, 0x00163331, \
0x00000000, 0x42726667, 0xFB3E007F, 0x00163434, \
0x00000000, 0x42726667, 0xFB3E007F, 0x0016312C, \
0x00000000, 0x42726667, 0xFB3E007F, 0x00162032, \
0x00000000, 0x42726667, 0xFB3E007F, 0x00163136, \
0x00000000, 0x42726667, 0xFB3E007F, 0x00163336, \
0x00000000, 0x42726667, 0xFB3E007F, 0x0016332C, \
0x00000000, 0x42726667, 0xFB3E007F, 0x0016200A, \
0x00000000, 0x42726667, 0xFB3E007F, 0x00163136, \
0xFF000000, 0x42726667, 0xFB3E007F, 0x00163336, \
0x00000001, 0x0001032A, 0x04110000, 0x00000000, \
0x42726668, 0xFB3E007F, 0x00162031, 0x00000000, \
0x42726668, 0xFB3E007F, 0x00163533, 0x00000000, \
0x42726668, 0xFB3E007F, 0x00163833, 0x00000000, \
0x42726668, 0xFB3E0058, 0x00152C20, 0x00000000, \
0x42726668, 0xFB48FFCC, 0x00172032, 0x00000000, \
0x42726668, 0xFB4FFF8E, 0x001A3533, 0x00000000, \
0x42726668, 0xFB4FFF8E, 0x001A3639, 0x00000000, \
0x42726668, 0xFB4FFF8E, 0x001A392C, 0x00000000, \
0x42726668, 0xFB4FFF8E, 0x001A2032, 0x00000000, \
0x42726668, 0xFB4FFF8E, 0x001A3632, 0xFF000000, \
0x42726668, 0xFB4FFF8E, 0x001A3639, 0x00000001, \
0x00010366, 0x04ED0000, 0x00000000, 0x42A08C84, \
0xFFC500A0, 0x01402031, 0x00000000, 0x42704C78, \
0xFFC500A0, 0x01403533, 0x00000000, 0x42704C78, \
0xFFC500A0, 0x01403833, 0x00000000, 0x42704C78, \
0xFFC500A0, 0x01402C20, 0x00000000, 0x42704C78, \
0xFF8D0094, 0x00F92032, 0x00000000, 0x42704C78, \
0xFF42007E, 0x00C03533, 0x00000000, 0x42704C78, \
0xFEE20069, 0x00873639, 0x00000000, 0x42704C78, \
0xFE9B006C, 0x0057392C, 0x00000000, 0x42704C78, \
0xFE760068, 0x00352032, 0x00000000, 0x42704C78, \
0xFE760068, 0x00353632, 0x00000000, 0x42704C78, \
0xFE760068, 0x00353639, 0x00000000, 0x42704C78, \
0xFE760068, 0x0035392C, 0x00000000, 0x42704C78, \
0xFE760068, 0x00352031, 0xFF000000, 0x42704C78, \
0xFE760068, 0x00353533, 0x00000001, 0x00010488, \
0x05790000, 0x00000000, 0x42700000, 0xFE3500AF, \
0x00502031, 0x00000000, 0x42700000, 0xFE3500AF, \
0x00503533, 0x00000000, 0x42700000, 0xFE3500AF, \
0x00503833, 0x00000000, 0x42700000, 0xFE3500AF, \
0x00502C20, 0x00000000, 0x42700000, 0xFE3500AF, \
0x00502032, 0x00000000, 0x42700000, 0xFE3500AF, \
0x00503533, 0x00000000, 0x42700000, 0xFE3500AF, \
0x00503639, 0x00000000, 0x42700000, 0xFE3500AF, \
0x0050392C, 0xFF000000, 0x42700000, 0xFE3500AF, \
0x00502032, 0x00000001, 0x000104EC, 0x05830000, \
0x00000000, 0x4234CCBE, 0xFE330085, 0x00002031, \
0x00000000, 0x4234CCBE, 0xFE330085, 0x00003533, \
0x00000000, 0x4234CCBE, 0xFE330085, 0x00003833, \
0x00000000, 0x4234CCBE, 0xFE330085, 0x00002C20, \
0x00000000, 0x4234CCBE, 0xFE330085, 0x00002032, \
0xFF000000, 0x4234CCBE, 0xFE330085, 0x00003533, \
0x00000001, 0x00010528, 0x05FB0000, 0x00000000, \
0x412FFF56, 0xFE18007C, 0xFFFA2031, 0x00000000, \
0x412FFF56, 0xFE18007C, 0xFFFA3533, 0x00000000, \
0x412FFF56, 0xFE18007C, 0xFFFA3833, 0x00000000, \
0x412FFF56, 0xFE18007C, 0xFFFA2C20, 0x00000000, \
0x412FFF56, 0xFE18007C, 0xFFFA2032, 0x00000000, \
0x412FFF56, 0xFE18007C, 0xFFFA3533, 0x00000000, \
0x412FFF56, 0xFE18007C, 0xFFFA3639, 0xFF000000, \
0x412FFF56, 0xFE18007C, 0xFFFA392C, 0x00000002, \
0x00010000, 0x01680000, 0x0000001E, 0x42726667, \
0xFE06006E, 0x00012031, 0x0000001E, 0x42733334, \
0xFE06006E, 0x00013533, 0x0000001E, 0x42733334, \
0xFE06006E, 0x00013833, 0x0000001E, 0x42733334, \
0xFE06006E, 0x00012C20, 0x00000019, 0x42733334, \
0xFE3D007F, 0x00012032, 0x00000019, 0x42733334, \
0xFE840095, 0x00013533, 0x00000014, 0x42733334, \
0xFEDD00B1, 0x00013639, 0x00000014, 0x42733334, \
0xFF2000D2, 0x0001392C, 0x00000014, 0x42733334, \
0xFF2B00E6, 0x00012032, 0x00000014, 0x42733334, \
0xFF710123, 0x00013632, 0x00000014, 0x42733334, \
0xFF790134, 0x00013639, 0x00000014, 0x42733334, \
0xFF81013F, 0x0001392C, 0x00000014, 0x42733334, \
0xFF880146, 0x00012031, 0x00000014, 0x42733334, \
0xFF880146, 0x00013533, 0xFF00001E, 0x42733334, \
0xFF880146, 0x00013336, 0x00000002, 0x000100E6, \
0x06AE0000, 0x0000001E, 0x42700000, 0xFB22019D, \
0x00052031, 0x0000001E, 0x42700000, 0xFB22019D, \
0x00053533, 0x0000001E, 0x42700000, 0xFB22019D, \
0x00053833, 0x0000001E, 0x42700000, 0xFB22019D, \
0x00052C20, 0x0000001E, 0x42700000, 0xFB22019D, \
0x00052032, 0x0000001E, 0x42700000, 0xFB22019D, \
0x00053533, 0x0000001E, 0x42700000, 0xFB22019D, \
0x00053639, 0x0000001E, 0x42700000, 0xFB22019D, \
0x0005392C, 0x0000001E, 0x42700000, 0xFB22019D, \
0x00052032, 0x0000001E, 0x42700000, 0xFB2300E3, \
0x00053632, 0x0000001E, 0x42700000, 0xFB23009E, \
0x00053639, 0x0000001E, 0x42700000, 0xFB6400B2, \
0x0032392C, 0x00000050, 0x42700000, 0xFB660083, \
0x00332031, 0x00000050, 0x42726667, 0xFB280092, \
0x00063533, 0x0000001E, 0x42726667, 0xFB1B0099, \
0xFFFD3336, 0x0000001E, 0x42726667, 0xFB1B0099, \
0xFFFD332C, 0x0000001E, 0x42726667, 0xFB1B0099, \
0xFFFD2032, 0x0000001E, 0x42726667, 0xFB1B0099, \
0xFFFD3231, 0x0000001E, 0x42726667, 0xFB1B0099, \
0xFFFD3232, 0x0000001E, 0x42726667, 0xFB1C0098, \
0xFFFE392C, 0x0000001E, 0x42726667, 0xFB1C0098, \
0xFFFE2034, 0x00000050, 0x42726667, 0xFB1C0098, \
0xFFFE3331, 0x00000050, 0x42726667, 0xFB1C0098, \
0xFFFE3434, 0x00000050, 0x42726667, 0xFB1C0098, \
0xFFFE312C, 0x00000050, 0x42726667, 0xFB1D0097, \
0xFFFF2032, 0x00000050, 0x42726667, 0xFB1D0097, \
0xFFFF3136, 0x00000050, 0x42726667, 0xFB1D0097, \
0xFFFF3336, 0x00000050, 0x42726667, 0xFB1D0097, \
0xFFFF332C, 0x00000050, 0x42726667, 0xFB1D0097, \
0xFFFF200A, 0x0000001E, 0x42726667, 0xFB1D0097, \
0xFFFF3136, 0xFF000050, 0x42726667, 0xFB1D0097, \
0xFFFF3336, 0x00000002, 0x0001032A, 0x042E0000, \
0x0000001E, 0x42726668, 0xFB1D0097, 0xFFFF2031, \
0x0000001E, 0x42726668, 0xFB1D0097, 0xFFFF3533, \
0x00000014, 0x42726668, 0xFB1E0096, 0x00003833, \
0x0000000A, 0x42726668, 0xFB27007D, 0x00052C20, \
0x0000000A, 0x42726668, 0xFB36FFF3, 0x000A2032, \
0x0000000A, 0x42726668, 0xFB3EFFB7, 0x001A3533, \
0x0000001E, 0x42726668, 0xFB3EFFB7, 0x001A3639, \
0x0000001E, 0x42726668, 0xFB3EFFB7, 0x001A392C, \
0x0000001E, 0x42726668, 0xFB3EFFB7, 0x001A2032, \
0x0000001E, 0x42726668, 0xFB3EFFB7, 0x001A3632, \
0xFF00001E, 0x42726668, 0xFB3EFFB7, 0x001A3639, \
0x00000002, 0x00010366, 0x050A0000, 0x0000001E, \
0x42704C78, 0xFFD300F0, 0x00F12031, 0x0000001E, \
0x42704C78, 0xFFD300F0, 0x00F13533, 0x0000001E, \
0x42704C78, 0xFFC800DB, 0x00E03833, 0x0000001E, \
0x42704C78, 0xFFAB00B7, 0x00D42C20, 0x0000001E, \
0x42704C78, 0xFF340086, 0x00B72032, 0x0000001E, \
0x42704C78, 0xFEE80074, 0x007D3533, 0x0000001E, \
0x42704C78, 0xFE880068, 0x00453639, 0x0000001E, \
0x42704C78, 0xFE48006B, 0x000D392C, 0x0000001E, \
0x42704C78, 0xFE2D006E, 0xFFE72032, 0x0000001E, \
0x42704C78, 0xFE2D006E, 0xFFE73632, 0x0000001E, \
0x42704C78, 0xFE2D006E, 0xFFE73639, 0x0000001E, \
0x42704C78, 0xFE2D006E, 0xFFE7392C, 0x0000001E, \
0x42704C78, 0xFE2D006E, 0xFFE72031, 0xFF00001E, \
0x42704C78, 0xFE2D006E, 0xFFE73533, 0x00000002, \
0x00010488, 0x05960000, 0x0000001E, 0x42700000, \
0xFE38008A, 0x00102031, 0x0000001E, 0x42700000, \
0xFE38008A, 0x00103533, 0x0000001E, 0x42700000, \
0xFE38008A, 0x00103833, 0x0000001E, 0x42700000, \
0xFE38008A, 0x00102C20, 0x0000001E, 0x42700000, \
0xFE38008A, 0x00102032, 0x0000001E, 0x42700000, \
0xFE38008A, 0x00103533, 0x0000001E, 0x42700000, \
0xFE38008A, 0x00103639, 0x0000001E, 0x42700000, \
0xFE38008A, 0x0010392C, 0xFF00001E, 0x42700000, \
0xFE38008A, 0x00102032, 0x00000002, 0x000104EC, \
0x05A00000, 0x0000001E, 0x4234CCBE, 0xFDE90085, \
0x00002031, 0x0000001E, 0x4234CCBE, 0xFDE90085, \
0x00003533, 0x0000001E, 0x4234CCBE, 0xFDE90085, \
0x00003833, 0x0000001E, 0x4234CCBE, 0xFDE90085, \
0x00002C20, 0x0000001E, 0x4234CCBE, 0xFDE90085, \
0x00002032, 0xFF00001E, 0x4234CCBE, 0xFDE90085, \
0x00003533, 0x00000002, 0x00010528, 0x06180000, \
0x0000001E, 0x412FFF56, 0xFABB007C, 0xFFFA2031, \
0x0000001E, 0x412FFF56, 0xFABB007C, 0xFFFA3533, \
0x0000001E, 0x412FFF56, 0xFABB007C, 0xFFFA3833, \
0x0000001E, 0x412FFF56, 0xFABB007C, 0xFFFA2C20, \
0x0000001E, 0x412FFF56, 0xFABB007C, 0xFFFA2032, \
0x0000001E, 0x412FFF56, 0xFABB007C, 0xFFFA3533, \
0x0000001E, 0x412FFF56, 0xFABB007C, 0xFFFA3639, \
0xFF00001E, 0x412FFF56, 0xFABB007C, 0xFFFA392C, \
0x00000013, 0x0000000A, 0xFFFF0000, 0x0032FFFF, \
0xFFFFFFFF, 0x70350032, 0x00BE0000, 0xFFFFFFFF, \
0xFFFF00BE, 0x012CFFFF, 0xFFFFFFFF, 0x7036012C, \
0x03200000, 0xFFFFFFFF, 0xFFFF0320, 0x03CAFFFF, \
0xFFFFFFFF, 0x703703CA, 0x047E0000, 0xFFFF7038, \
0xFFFF047E, 0x04A6FFFF, 0xFFFFFFFF, 0x700504A6, \
0x04B00000, 0xFFFF700B, 0xFFFF04B0, 0x053CFFFF, \
0xFFFFFFFF, 0x7009053C, 0x058C0000, 0xFFFFFFFF, \
0x00000056, 0x00000001, 0x004E00E6, 0x00E70000, \
0x00000000, 0x00000003, 0x00000000, 0x00000000, \
0x00000003, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000056, 0x00000001, \
0x002A0366, 0x03670000, 0x00000000, 0xFFFFFFFE, \
0x00000000, 0xFFFFFFFD, 0xFFFFFFFE, 0x00000000, \
0xFFFFFFFD, 0x00000000, 0x00000000, 0x00000000, \
0x00000057, 0x00000001, 0x0001006E, 0x006F0000, \
0x00000000, 0xFFFFFFFE, 0x00000000, 0x00000001, \
0xFFFFFFFE, 0x00000000, 0x00000001, 0x00000000, \
0x00000000, 0x00000000, 0xFFFFFFFF, 0x00000000, \
0xC3DC0000, 0x42EA0000, 0x00000000, 0xC3F50000, \
0x42F00000, 0x00000000, 0x0000002D, 0xC3F20000, \
0x42F40000, 0xC1E80000, 0xC3F00000, 0x42E80000, \
0x41900000, 0x00000050, 0xC3CE8000, 0x43080000, \
0xC2900000, 0xC3C98000, 0x430D0000, 0xC2B20000, \
0x00000019, 0xC3E30000, 0x42F00000, 0x00000000, \
0xC3D90000, 0x42F20000, 0x00000000, 0x00000014, \
0xC3E30000, 0x42F00000, 0x00000000, 0xC3D70000, \
0x42CE0000, 0xC2140000, 0x00000014, 0xC3E30000, \
0x42D20000, 0x42480000, 0xC3E28000, 0x42D20000, \
0x42840000, 0x0000003C, 0xC3FA8000, 0x42F40000, \
0x00000000, 0xC3E08000, 0x42EE0000, 0x00000000, \
0x0000002D, 0xC3E70000, 0x42F20000, 0x00000000, \
0xC3D18000, 0x42FA0000, 0x00000000, 0x00000014, \
0xC409C000, 0x42EE0000, 0x40E00000, 0xC412C000, \
0x42E60000, 0x41600000, 0x00000014, 0xC3F48000, \
0x43010000, 0x00000000, 0xC3EB0000, 0x43000000, \
0x00000000, 0x00000028, 0xC4034000, 0x42FC0000, \
0x00000000, 0xC3FE8000, 0x42FC0000, 0x00000000, \
0x0000000A, 0xC3F58000, 0x42F00000, 0xC0E00000, \
0xC3FE8000, 0x42E60000, 0xC0E00000, 0x0000004B, \
0xC3F28000, 0x42F00000, 0xC2280000, 0xC3F20000, \
0x42F00000, 0x41200000, 0x0000002D
var_808AFEBC: .word \
0x00000014, 0x42A19989, 0xFE1C007A, 0xFFE30000, \
0x00000014, 0x42A19989, 0xFE1C007A, 0xFFE30000, \
0x00000014, 0x42A19989, 0xFE1C007A, 0xFFE30000, \
0x00000014, 0x42A19989, 0xFE3C0079, 0xFFEB0000, \
0x00000014, 0x42A19989, 0xFE3C0079, 0xFFEB0000, \
0x00000014, 0x42A19989, 0xFE3C0079, 0xFFEB0000, \
0xFF000014, 0x42A19989, 0xFE3C0079, 0xFFEB0000, \
0xFF00001E, 0x42A19989, 0xFE3C0079, 0xFFEB0000
var_808AFF3C: .word \
0x00000000, 0x42A19989, 0xFE200074, 0x00120000, \
0x00000000, 0x42A19989, 0xFE200074, 0x00120000, \
0x00000000, 0x42A19989, 0xFE200074, 0x00120000, \
0x00000000, 0x42A19989, 0xFE200074, 0x00120000, \
0x00000000, 0x42A19989, 0xFE200074, 0x00120000, \
0x00000000, 0x42A19989, 0xFE200074, 0x00120000, \
0xFF000000, 0x42A19989, 0xFE200074, 0x00120000, \
0xFF000000, 0x42A19989, 0xFE200074, 0x00120000
var_808AFFBC: .word \
0x00000014, 0x4234CCDC, 0xFE490074, 0x00000000, \
0x00000014, 0x4234CCDC, 0xFE490074, 0x00000000, \
0x00000014, 0x424A667B, 0xFE4F0074, 0x00000000, \
0x00000014, 0x425E6680, 0xFE510074, 0x00000000, \
0x00000014, 0x4270001E, 0xFE550074, 0x00000000, \
0x00000014, 0x4282000F, 0xFE580074, 0x00000000, \
0x00000014, 0x428D999D, 0xFE5A0074, 0x00000000, \
0x00000014, 0x4297332D, 0xFE5D0073, 0x00000000, \
0xFF000014, 0x4297332D, 0xFE5D0074, 0x00000000, \
0xFF00001E, 0x4297332D, 0xFE5D0073, 0x00000000
var_808B005C: .word \
0x00000000, 0x427199B8, 0xFE200072, 0x00000000, \
0x00000000, 0x4234CCDC, 0xFE200072, 0x00000000, \
0x00000000, 0x4234CCDC, 0xFE260072, 0x00000000, \
0x00000000, 0x424A667B, 0xFE280072, 0x00000000, \
0x00000000, 0x425E6680, 0xFE2C0072, 0x00000000, \
0x00000000, 0x4270001E, 0xFE2F0072, 0x00000000, \
0x00000000, 0x4282000F, 0xFE310072, 0x00000000, \
0x00000000, 0x428D999D, 0xFE340072, 0x00000000, \
0xFF000000, 0x4297332D, 0xFE340072, 0x00000000, \
0xFF000000, 0x4297332D, 0xFE340072, 0x00000000
var_808B00FC: .word \
0x00000019, 0x4270001E, 0xFF8C0032, 0x01D50000, \
0x00000019, 0x4270001E, 0xFF8C0032, 0x01D50000, \
0x00000019, 0x4270001E, 0xFF8A0032, 0x01D30000, \
0x00000019, 0x4270001E, 0xFF880032, 0x01D10000, \
0x00000019, 0x4270001E, 0xFF850032, 0x01D00000, \
0x00000019, 0x4270001E, 0xFF820032, 0x01CF0000, \
0x00000019, 0x4270001E, 0xFF7F0032, 0x01CE0000, \
0x00000019, 0x4270001E, 0xFF7D0032, 0x01CE0000, \
0x00000019, 0x4270001E, 0xFF7A0032, 0x01CF0000, \
0x00000019, 0x4270001E, 0xFF770032, 0x01D00000, \
0x00000019, 0x4270001E, 0xFF740032, 0x01D20000, \
0x00000019, 0x4270001E, 0xFF740032, 0x01D20000, \
0xFF000019, 0x4270001E, 0xFF740032, 0x01D20000, \
0xFF000019, 0x4270001E, 0xFF740032, 0x01D20000
var_808B01DC: .word \
0x00000000, 0x41A33320, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0x00000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0xFF000000, 0x4270001E, 0xFF7E0032, 0x01E00000, \
0xFF000000, 0x4270001E, 0xFF7E0032, 0x01E00000
var_808B02BC: .word \
0x0000001E, 0x41A66654, 0xFE550074, 0x00040000, \
0x0000001E, 0x41A66654, 0xFE560073, 0x00040000, \
0x0000001E, 0x41A66654, 0xFE530073, 0x00070000, \
0x0000001E, 0x41A66654, 0xFE540072, 0x000C0000, \
0x0000001E, 0x41A66654, 0xFE520072, 0x000E0000, \
0x0000001E, 0x41A66654, 0xFE520072, 0x000E0000, \
0x0000001E, 0x41A66654, 0xFE520072, 0x000E0000, \
0xFF00001E, 0x41A66654, 0xFE520070, 0x000E0000, \
0xFF00001E, 0x41A66654, 0xFE520070, 0x000E0000
var_808B034C: .word \
0x00000000, 0x41A66654, 0xFE7B006D, 0x00240000, \
0x00000000, 0x41A66654, 0xFE7B006D, 0x00240000, \
0x00000000, 0x41A66654, 0xFE7B006D, 0x00240000, \
0x00000000, 0x41A66654, 0xFE7B006D, 0x00240000, \
0x00000000, 0x41A66654, 0xFE7B006D, 0x00240000, \
0x00000000, 0x41A66654, 0xFE7B006D, 0x00240000, \
0x00000000, 0x41A66654, 0xFE7B006D, 0x00240000, \
0xFF000000, 0x41A66654, 0xFE7B006D, 0x00240000, \
0xFF000000, 0x41A66654, 0xFE7B006D, 0x00240000
var_808B03DC: .word \
0x0000001E, 0x42340000, 0xFE100077, 0x00000000, \
0x0000001E, 0x42340000, 0xFE100077, 0x00000000, \
0x0000001E, 0x42340000, 0xFE100077, 0x00000000, \
0x0000000F, 0x42340000, 0xFE100077, 0x00000000, \
0x0000000F, 0x42373343, 0xFE29007A, 0x00000000, \
0x0000000F, 0x42373343, 0xFE75008B, 0x00000000, \
0x0000000F, 0x42373343, 0xFF3F00B7, 0x00000000, \
0x0000000F, 0x42373343, 0x001D00E8, 0x00000000, \
0x0000001E, 0x42373343, 0x01680130, 0x00000000, \
0x0000001E, 0x42373343, 0x01AD0148, 0x00000000, \
0x0000001E, 0x42373343, 0x01AD0148, 0x00000000, \
0x0000001E, 0x42373343, 0x01AD0148, 0x00000000, \
0x0000001E, 0x42373343, 0x01AD0148, 0x00000000, \
0xFF00001E, 0x42373343, 0x01AD0148, 0x00000000, \
0xFF00001E, 0x42373343, 0x01AD0148, 0x00000000
var_808B04CC: .word \
0x00000000, 0x42340000, 0xFE450073, 0x00000000, \
0x00000000, 0x42340000, 0xFE450073, 0x00000000, \
0x00000000, 0x42340000, 0xFE450073, 0x00000000, \
0x00000000, 0x42340000, 0xFE450073, 0x00000000, \
0x00000000, 0x42373343, 0xFE5C0085, 0x00000000, \
0x00000000, 0x42373343, 0xFEA80096, 0x00000000, \
0x00000000, 0x42373343, 0xFF7100C2, 0x00000000, \
0x00000000, 0x42373343, 0x005000F3, 0x00000000, \
0x00000000, 0x42373343, 0x019C013B, 0x00000000, \
0x00000000, 0x42373343, 0x01E2014C, 0x00000000, \
0x00000000, 0x42373343, 0x01E2014C, 0x00000000, \
0x00000000, 0x42373343, 0x01E2014C, 0x00000000, \
0x00000000, 0x42373343, 0x01E2014C, 0x00000000, \
0xFF000000, 0x42373343, 0x01E2014C, 0x00000000, \
0xFF000000, 0x42373343, 0x01E2014C, 0x00000000
var_808B05BC: .word \
0x00000019, 0x42726685, 0x00420194, 0x01A90000, \
0x00000019, 0x427199B8, 0x00420194, 0x01A90000, \
0x00000019, 0x425E6680, 0x00420194, 0x01AA0000, \
0x00000019, 0x425CCCE6, 0x003F0175, 0x019D0000, \
0x00000019, 0x424999AE, 0x001A0161, 0x01980000, \
0x00000019, 0x424999AE, 0x00110145, 0x018D0000, \
0x00000019, 0x423599A9, 0x00110146, 0x018D0000, \
0x00000019, 0x4234CCDC, 0xFF7800B1, 0x01030000, \
0x00000019, 0x422199A4, 0xFEFE006F, 0x00A90000, \
0x00000019, 0x4220CCD7, 0xFE87006C, 0x00410000, \
0x00000019, 0x420CCCD2, 0xFE87006C, 0x00410000, \
0x00000019, 0x420CCCD2, 0xFE87006C, 0x00410000, \
0xFF00001E, 0x41F1999A, 0xFE88006C, 0x00410000, \
0xFF00001E, 0x41F1999A, 0xFE88006C, 0x00410000
var_808B069C: .word \
0x00000000, 0x42373343, 0x001D017F, 0x01BD0000, \
0x00000000, 0x42373343, 0x001D017F, 0x01BD0000, \
0x00000000, 0x42373343, 0x001D017F, 0x01BD0000, \
0x00000000, 0x42373343, 0x001D017F, 0x01BD0000, \
0x00000000, 0x42373343, 0x001D017F, 0x01BD0000, \
0x00000000, 0x42373343, 0x0031015B, 0x01A80000, \
0x00000000, 0x42373343, 0x0031015B, 0x01A80000, \
0x00000000, 0x41F1999A, 0xFF9900C0, 0x011E0000, \
0x00000000, 0x41F1999A, 0xFF200071, 0x00C60000, \
0x00000000, 0x41F1999A, 0xFEA7006D, 0x00600000, \
0x00000000, 0x41F1999A, 0xFEA7006D, 0x00600000, \
0x00000000, 0x41F1999A, 0xFEA7006D, 0x00600000, \
0xFF000000, 0x41F1999A, 0xFEA7006D, 0x00600000, \
0xFF000000, 0x41F1999A, 0xFEA7006D, 0x00600000
var_808B077C: .word \
0x0000000A, 0x41F00000, 0xFE1E0077, 0x00000000, \
0x0000000A, 0x41F00000, 0xFE1E0077, 0x00000000, \
0x0000000A, 0x41F00000, 0xFE1E0077, 0x00000000, \
0x0000000A, 0x41F66668, 0xFE1E0077, 0x00000000, \
0x0000000A, 0x41F66668, 0xFE1E0077, 0x00000000, \
0x0000000A, 0x41F66668, 0xFE32007E, 0x00000000, \
0x0000001E, 0x41F66668, 0xFE750096, 0x00000000, \
0x0000001E, 0x41F66668, 0xFE750096, 0x00000000, \
0xFF00001E, 0x41F66668, 0xFE750096, 0x00000000, \
0xFF00001E, 0x41F66668, 0xFE750096, 0x00000000
var_808B081C: .word \
0x00000000, 0x41F00000, 0xFE480073, 0x00000000, \
0x00000000, 0x41F00000, 0xFE480073, 0x00000000, \
0x00000000, 0x41F00000, 0xFE480073, 0x00000000, \
0x00000000, 0x41F66668, 0xFE480073, 0x00000000, \
0x00000000, 0x41F66668, 0xFE480073, 0x00000000, \
0x00000000, 0x41F66668, 0xFE59008E, 0x00000000, \
0x00000000, 0x41F66668, 0xFE9A00AB, 0x00000000, \
0x00000000, 0x41F66668, 0xFE9A00AB, 0x00000000, \
0xFF000000, 0x41F66668, 0xFE9A00AB, 0x00000000, \
0xFF000000, 0x41F66668, 0xFE9A00AB, 0x00000000
var_808B08BC: .word \
0x0000001E, 0x41C80000, 0xFDD90077, 0x00070000, \
0x0000001E, 0x41C80000, 0xFDD90077, 0x00070000, \
0x0000000F, 0x41C80000, 0xFDD90077, 0x00070000, \
0x0000000F, 0x42700000, 0xFE1B0078, 0xFFF90000, \
0x0000001E, 0x42700000, 0xFE1B0078, 0xFFF90000, \
0x0000001E, 0x42700000, 0xFE1B0078, 0xFFF90000, \
0x0000001E, 0x42700000, 0xFE1B0076, 0xFFFB0000, \
0xFF00001E, 0x42700000, 0xFE1B0077, 0xFFFA0000, \
0xFF00001E, 0x42700000, 0xFE1B0077, 0xFFFA0000
var_808B094C: .word \
0x00000000, 0x4234CCDC, 0xFDB50073, 0x000E0000, \
0x00000000, 0x41CB3366, 0xFDB50073, 0x000E0000, \
0x00000000, 0x41CB3366, 0xFDB50073, 0x000E0000, \
0x00000000, 0x4270CD09, 0xFDF70075, 0xFFFF0000, \
0x00000000, 0x4270CD09, 0xFDF70075, 0xFFFF0000, \
0x00000000, 0x4270CD09, 0xFDF70075, 0xFFFF0000, \
0x00000000, 0x4270CD09, 0xFDF70075, 0xFFFF0000, \
0xFF000000, 0x4270CD09, 0xFDF70074, 0x00000000, \
0xFF000000, 0x4270CC08, 0xFDF70074, 0x00000000
var_808B09DC: .word \
0x0000001E, 0x4270001E, 0x004B0034, 0x00320000, \
0x0000001E, 0x4270001E, 0x004B0034, 0x00300000, \
0x0000003C, 0x4270001E, 0x004A0034, 0x002D0000, \
0x0000003C, 0x4270001E, 0x00310033, 0xFFD50000, \
0x0000001E, 0x4270001E, 0x00310033, 0xFFD50000, \
0x0000001E, 0x4270001E, 0x00310033, 0xFFD50000, \
0xFF00001E, 0x4270001E, 0x00310033, 0xFFD50000, \
0xFF00001E, 0x4270001E, 0x00310033, 0xFFD50000
var_808B0A5C: .word \
0x00000000, 0x4270001E, 0x005A0034, 0x00350000, \
0x00000000, 0x4270001E, 0x005A0034, 0x00320000, \
0x00000000, 0x4270001E, 0x005A0034, 0x002D0000, \
0x00000000, 0x4270001E, 0x00410033, 0xFFD40000, \
0x00000000, 0x4270001E, 0x00410033, 0xFFD40000, \
0x00000000, 0x4270001E, 0x00410033, 0xFFD40000, \
0xFF000000, 0x4270001E, 0x00410033, 0xFFD40000, \
0xFF000000, 0x4270001E, 0x00410033, 0xFFD40000
var_808B0ADC: .word \
0x0000001F, 0x4270001E, 0xFE3F0079, 0xFFED0000, \
0x0000001E, 0x4270001E, 0xFE3F0079, 0xFFED0000, \
0x0000001E, 0x4270001E, 0xFE3F0079, 0xFFED0000, \
0x0000001E, 0x4270001E, 0xFE38006E, 0xFFEF0000, \
0x0000001E, 0x4270001E, 0xFE38006E, 0xFFEF0000, \
0x0000001E, 0x4270001E, 0xFE38006E, 0xFFEF0000, \
0xFF00001E, 0x4270001E, 0xFE38006E, 0xFFEF0000, \
0xFF00001E, 0x4270001E, 0xFE38006E, 0xFFEF0000
var_808B0B5C: .word \
0x00000000, 0x4270001E, 0xFE47006B, 0xFFEA0000, \
0x00000000, 0x4270001E, 0xFE47006B, 0xFFEA0000, \
0x00000000, 0x4270001E, 0xFE47006B, 0xFFEA0000, \
0x00000000, 0x4270001E, 0xFE47006B, 0xFFEA0000, \
0x00000000, 0x4270001E, 0xFE47006B, 0xFFEA0000, \
0x00000000, 0x4270001E, 0xFE47006B, 0xFFEA0000, \
0xFF000000, 0x4270001E, 0xFE47006B, 0xFFEA0000, \
0xFF000000, 0x4270001E, 0xFE47006B, 0xFFEA0000
var_808B0BDC: .word \
0x0000001E, 0x41A66654, 0xFEB5006E, 0xFFA50000, \
0x0000001E, 0x41A66654, 0xFEB5006E, 0xFFA50000, \
0x0000001E, 0x41A66654, 0xFEB5006E, 0xFFA50000, \
0x0000001E, 0x41A66654, 0xFE010079, 0x00070000, \
0x0000001E, 0x41A66654, 0xFE010079, 0x00070000, \
0x0000001E, 0x41A66654, 0xFE010079, 0x00070000, \
0xFF00001E, 0x41A66654, 0xFE010079, 0x00070000, \
0xFF00001E, 0x41A66654, 0xFE010079, 0x00070000
var_808B0C5C: .word \
0x00000000, 0x41A66654, 0xFE8F006E, 0xFFBA0000, \
0x00000000, 0x41A66654, 0xFE8F006E, 0xFFBA0000, \
0x00000000, 0x41A66654, 0xFE8F006E, 0xFFBA0000, \
0x00000000, 0x41A66654, 0xFDDB007C, 0x001D0000, \
0x00000000, 0x41A66654, 0xFDDB007C, 0x001D0000, \
0x00000000, 0x41A66654, 0xFDDB007C, 0x001D0000, \
0xFF000000, 0x41A66654, 0xFDDB007C, 0x001D0000, \
0xFF000000, 0x41A66654, 0xFDDB007C, 0x001D0000
.word var_808AFEBC
.word var_808AFF3C
.word 0x00000000
.word var_808AFFBC
.word var_808B005C
.word 0x00000000
.word var_808B00FC
.word var_808B01DC
.word 0x00000000
.word var_808B02BC
.word var_808B034C
.word 0x00000000
.word var_808B03DC
.word var_808B04CC
.word 0x00000000
.word var_808B05BC
.word var_808B069C
.word 0x00000000
.word var_808B077C
.word var_808B081C
.word 0x00000000
.word var_808B08BC
.word var_808B094C
.word 0x00000000
.word var_808B09DC
.word var_808B0A5C
.word 0x00000000
.word var_808B0ADC
.word var_808B0B5C
.word 0x00000000
.word var_808B0BDC
.word var_808B0C5C
.word 0x00000000
var_808B0D60: .word 0x00290400, 0x00000019, 0x001D0000, 0x000001FC
.word func_808AD300
.word func_808AD590
.word func_808AE9E8
.word func_808AEC28
var_808B0D80: .word \
0x00000039, 0x20010000, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0014002E, 0x00000000, 0x00000000
var_808B0DAC: .word 0x06007208, 0x06009848, 0x06009C48, 0x06009848
var_808B0DBC: .word 0x06007608
var_808B0DC0: .word 0xC3E60000, 0x42EC0000, 0x00000000
var_808B0DCC: .word 0xC3CB0000, 0x42DC0000, 0x00000000
var_808B0DD8: .word 0xC3C70000, 0x42A80000, 0x00000000
var_808B0DE4: .word 0xC3D58000, 0x42D80000, 0x41D00000
var_808B0DF0: .word 0xC3AA0000, 0x42D80000, 0x42C40000
var_808B0DFC: .word 0xC3D90000, 0x42A80000, 0x00000000
var_808B0E08: .word 0x00000200
var_808B0E0C: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x06012B04, \
0x06012118, 0x06010B38
var_808B0E34: .word 0x00000000, 0x00000002, 0x00020000
var_808B0E40: .word 0xC3D28000, 0x430F0000, 0xC0A00000
var_808B0E4C: .word 0xC4000000, 0x42D20000, 0xC0800000
var_808B0E58: .word 0x00000000, 0x00000000, 0x00000000
var_808B0E64: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x06012B04, \
0x06012118, 0x06010B38
var_808B0E8C: .word 0x00000000, 0x00000002, 0x00020000
var_808B0E98: .word 0x00000000, 0x00000000, 0x00000000
var_808B0EA4: .word 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_808B0EB0: .word var_808ADAC8
.word var_808ADB78
.word var_808ADC0C
.word var_808ADC84
.word var_808ADCE4
.word var_808ADD5C
.word var_808ADDA0
.word var_808ADE00
.word var_808ADE44
.word var_808ADEBC
var_808B0ED8: .word var_808AE734
.word var_808AE7A8
.word var_808AE838
.word var_808AE8B0
.word var_808AE8F8
.word var_808AE944
.word var_808AE968
.word 0x00000000, 0x00000000, 0x00000000

