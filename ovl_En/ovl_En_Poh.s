#include <mips.h>
.set noreorder
.set noat

.section .text
func_8086A290:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s1, 0x0028($sp)            
	sw      s0, 0x0024($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x002C($sp)           
	lui     a1, %hi(var_8086DFBC)      ## a1 = 80870000
	addiu   a1, a1, %lo(var_8086DFBC)  ## a1 = 8086DFBC
	jal     func_80063F7C              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a2, 0x8002                 ## a2 = 80020000
	addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	jal     func_8001EC20              
	lui     a3, 0x41F0                 ## a3 = 41F00000
	addiu   a1, s0, 0x02F8             ## a1 = 000002F8
	sw      a1, 0x0030($sp)            
	jal     func_8004A484              
	or      a0, s1, $zero              ## a0 = 00000000
	lui     a3, %hi(var_8086DF24)      ## a3 = 80870000
	addiu   t6, s0, 0x0318             ## t6 = 00000318
	lw      a1, 0x0030($sp)            
	sw      t6, 0x0010($sp)            
	addiu   a3, a3, %lo(var_8086DF24)  ## a3 = 8086DF24
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8004A874              
	or      a2, s0, $zero              ## a2 = 00000000
	lw      t7, 0x0314(s0)             ## 00000314
	addiu   a1, s0, 0x02AC             ## a1 = 000002AC
	or      a0, s1, $zero              ## a0 = 00000000
	sh      $zero, 0x0036(t7)          ## 00000036
	lwc1    $f4, 0x0024(s0)            ## 00000024
	lw      t0, 0x0314(s0)             ## 00000314
	trunc.w.s $f6, $f4                   
	mfc1    t9, $f6                    
	nop
	sh      t9, 0x0030(t0)             ## 00000030
	lwc1    $f8, 0x0028(s0)            ## 00000028
	lw      t3, 0x0314(s0)             ## 00000314
	trunc.w.s $f10, $f8                  
	mfc1    t2, $f10                   
	nop
	sh      t2, 0x0032(t3)             ## 00000032
	lwc1    $f16, 0x002C(s0)           ## 0000002C
	lw      t6, 0x0314(s0)             ## 00000314
	trunc.w.s $f18, $f16                 
	mfc1    t5, $f18                   
	nop
	sh      t5, 0x0034(t6)             ## 00000034
	jal     func_8004AB7C              
	sw      a1, 0x0030($sp)            
	lui     a3, %hi(var_8086DED4)      ## a3 = 80870000
	lw      a1, 0x0030($sp)            
	addiu   a3, a3, %lo(var_8086DED4)  ## a3 = 8086DED4
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	lui     a1, %hi(var_8086DF3C)      ## a1 = 80870000
	lui     a2, %hi(var_8086DF34)      ## a2 = 80870000
	addiu   a2, a2, %lo(var_8086DF34)  ## a2 = 8086DF34
	addiu   a1, a1, %lo(var_8086DF3C)  ## a1 = 8086DF3C
	jal     func_80050344              
	addiu   a0, s0, 0x0098             ## a0 = 00000098
	addiu   t7, $zero, 0x0020          ## t7 = 00000020
	sb      $zero, 0x0184(s0)          ## 00000184
	sb      t7, 0x0185(s0)             ## 00000185
	addiu   a0, $zero, 0x02BC          ## a0 = 000002BC
	jal     func_80063BF0              
	addiu   a1, $zero, 0x012C          ## a1 = 0000012C
	sh      v0, 0x018A(s0)             ## 0000018A
	addiu   a2, s0, 0x029C             ## a2 = 0000029C
	sw      a2, 0x0030($sp)            
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_800665B0              
	addiu   a1, s1, 0x07A8             ## a1 = 000007A8
	lwc1    $f4, 0x0008(s0)            ## 00000008
	lwc1    $f8, 0x000C(s0)            ## 0000000C
	lwc1    $f16, 0x0010(s0)           ## 00000010
	trunc.w.s $f6, $f4                   
	sw      v0, 0x0298(s0)             ## 00000298
	addiu   t1, $zero, 0x00FF          ## t1 = 000000FF
	trunc.w.s $f10, $f8                  
	mfc1    a1, $f6                    
	addiu   t2, $zero, 0x00FF          ## t2 = 000000FF
	trunc.w.s $f18, $f16                 
	mfc1    a2, $f10                   
	addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
	sll     a1, a1, 16                 
	mfc1    a3, $f18                   
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	sll     a3, a3, 16                 
	sra     a3, a3, 16                 
	sra     a1, a1, 16                 
	sw      t3, 0x0018($sp)            
	sw      t2, 0x0014($sp)            
	sw      t1, 0x0010($sp)            
	sw      $zero, 0x001C($sp)         
	jal     func_80065C30              
	lw      a0, 0x0030($sp)            
	lh      v0, 0x001C(s0)             ## 0000001C
	slti    $at, v0, 0x0004            
	bnel    $at, $zero, lbl_8086A440   
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	sh      $zero, 0x001C(s0)          ## 0000001C
	lh      v0, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0x0001         ## $at = 00000001
lbl_8086A440:
	bnel    v0, $at, lbl_8086A4AC      
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	lui     v0, %hi(var_8086DEB0)      ## v0 = 80870000
	addiu   v0, v0, %lo(var_8086DEB0)  ## v0 = 8086DEB0
	lh      t4, 0x0000(v0)             ## 8086DEB0
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x0024             ## a1 = 00000024
	addiu   t5, t4, 0x0001             ## t5 = 00000001
	sh      t5, 0x0000(v0)             ## 8086DEB0
	lh      t6, 0x0000(v0)             ## 8086DEB0
	slti    $at, t6, 0x0003            
	bne     $at, $zero, lbl_8086A484   
	nop
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8086A4A0 
	nop
lbl_8086A484:
	jal     func_80013678              
	addiu   a2, $zero, 0x4001          ## a2 = 00004001
	beq     v0, $zero, lbl_8086A4A0    
	nop
	mtc1    $zero, $f4                 ## $f4 = 0.00
	nop
	swc1    $f4, 0x0068(v0)            ## 00000068
lbl_8086A4A0:
	beq     $zero, $zero, lbl_8086A53C 
	lh      v0, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0x0003         ## $at = 00000003
lbl_8086A4AC:
	bne     v0, $at, lbl_8086A4F4      
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8002049C              
	addiu   a1, $zero, 0x0028          ## a1 = 00000028
	bne     v0, $zero, lbl_8086A4D4    
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8002049C              
	addiu   a1, $zero, 0x0009          ## a1 = 00000009
	beq     v0, $zero, lbl_8086A4E4    
	or      a0, s1, $zero              ## a0 = 00000000
lbl_8086A4D4:
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8086A4EC 
	nop
lbl_8086A4E4:
	jal     func_800204D0              
	addiu   a1, $zero, 0x0028          ## a1 = 00000028
lbl_8086A4EC:
	beq     $zero, $zero, lbl_8086A53C 
	lh      v0, 0x001C(s0)             ## 0000001C
lbl_8086A4F4:
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	bne     v0, $at, lbl_8086A53C      
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8002049C              
	addiu   a1, $zero, 0x0029          ## a1 = 00000029
	bne     v0, $zero, lbl_8086A520    
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8002049C              
	addiu   a1, $zero, 0x0009          ## a1 = 00000009
	beq     v0, $zero, lbl_8086A530    
	or      a0, s1, $zero              ## a0 = 00000000
lbl_8086A520:
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8086A53C 
	lh      v0, 0x001C(s0)             ## 0000001C
lbl_8086A530:
	jal     func_800204D0              
	addiu   a1, $zero, 0x0029          ## a1 = 00000029
	lh      v0, 0x001C(s0)             ## 0000001C
lbl_8086A53C:
	slti    $at, v0, 0x0002            
	beq     $at, $zero, lbl_8086A570   
	addiu   a1, $zero, 0x006E          ## a1 = 0000006E
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x17A4           ## $at = 000117A4
	addu    a0, s1, $at                
	jal     func_80081628              ## ObjectIndex
	addiu   a1, $zero, 0x0009          ## a1 = 00000009
	addiu   t7, $zero, 0x0044          ## t7 = 00000044
	sb      v0, 0x0186(s0)             ## 00000186
	sb      $zero, 0x0187(s0)          ## 00000187
	beq     $zero, $zero, lbl_8086A594 
	sb      t7, 0x0117(s0)             ## 00000117
lbl_8086A570:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x17A4           ## $at = 000117A4
	jal     func_80081628              ## ObjectIndex
	addu    a0, s1, $at                
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	addiu   t9, $zero, 0x0043          ## t9 = 00000043
	sb      v0, 0x0186(s0)             ## 00000186
	sb      t8, 0x0187(s0)             ## 00000187
	sb      t9, 0x0117(s0)             ## 00000117
lbl_8086A594:
	lbu     t0, 0x0187(s0)             ## 00000187
	lb      t4, 0x0186(s0)             ## 00000186
	lui     t2, %hi(var_8086DF5C)      ## t2 = 80870000
	sll     t1, t0,  2                 
	addu    t1, t1, t0                 
	sll     t1, t1,  3                 
	addiu   t2, t2, %lo(var_8086DF5C)  ## t2 = 8086DF5C
	addu    t3, t1, t2                 
	bgez    t4, lbl_8086A5C4           
	sw      t3, 0x0294(s0)             ## 00000294
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8086A5C4:
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0024($sp)            
	lw      s1, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_8086A5D8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	or      a3, a1, $zero              ## a3 = 00000000
	lw      t6, 0x0018($sp)            
	or      a0, a3, $zero              ## a0 = 00000000
	addiu   a1, a3, 0x07A8             ## a1 = 000007A8
	lw      a2, 0x0298(t6)             ## 00000298
	jal     func_80066610              
	sw      a3, 0x001C($sp)            
	lw      a1, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_8004A550              
	addiu   a1, a1, 0x02F8             ## a1 = 000002F8
	lw      a1, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_8004ABCC              
	addiu   a1, a1, 0x02AC             ## a1 = 000002AC
	lw      t7, 0x0018($sp)            
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lui     v0, %hi(var_8086DEB0)      ## v0 = 80870000
	lh      t8, 0x001C(t7)             ## 0000001C
	addiu   v0, v0, %lo(var_8086DEB0)  ## v0 = 8086DEB0
	bnel    t8, $at, lbl_8086A64C      
	lw      $ra, 0x0014($sp)           
	lh      t9, 0x0000(v0)             ## 8086DEB0
	addiu   t0, t9, 0xFFFF             ## t0 = FFFFFFFF
	sh      t0, 0x0000(v0)             ## 8086DEB0
	lw      $ra, 0x0014($sp)           
lbl_8086A64C:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086A658:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lw      t6, 0x0294(a2)             ## 00000294
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	lw      a1, 0x000C(t6)             ## 0000000C
	jal     func_8008D2D4              
	sw      a2, 0x0018($sp)            
	addiu   a0, $zero, 0x0002          ## a0 = 00000002
	jal     func_80063BF0              
	addiu   a1, $zero, 0x0003          ## a1 = 00000003
	lw      a2, 0x0018($sp)            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     t7, %hi(func_8086B034)     ## t7 = 80870000
	addiu   t7, t7, %lo(func_8086B034) ## t7 = 8086B034
	sh      v0, 0x0188(a2)             ## 00000188
	sw      t7, 0x0180(a2)             ## 00000180
	swc1    $f4, 0x0068(a2)            ## 00000068
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086A6B0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lw      t6, 0x0294(a2)             ## 00000294
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	lw      a1, 0x0010(t6)             ## 00000010
	jal     func_8008D2D4              
	sw      a2, 0x0018($sp)            
	addiu   a0, $zero, 0x000F          ## a0 = 0000000F
	jal     func_80063BF0              
	addiu   a1, $zero, 0x0003          ## a1 = 00000003
	lw      a2, 0x0018($sp)            
	lui     t7, %hi(func_8086B0F0)     ## t7 = 80870000
	addiu   t7, t7, %lo(func_8086B0F0) ## t7 = 8086B0F0
	sh      v0, 0x0188(a2)             ## 00000188
	sw      t7, 0x0180(a2)             ## 00000180
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086A700:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lw      t6, 0x0294(a2)             ## 00000294
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	lw      a1, 0x0010(t6)             ## 00000010
	jal     func_8008D2D4              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f4                   ## $f4 = 2.00
	lui     t7, %hi(func_8086B20C)     ## t7 = 80870000
	addiu   t7, t7, %lo(func_8086B20C) ## t7 = 8086B20C
	sw      t7, 0x0180(a2)             ## 00000180
	sh      $zero, 0x0188(a2)          ## 00000188
	swc1    $f4, 0x0068(a2)            ## 00000068
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086A750:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lbu     t6, 0x0187(s0)             ## 00000187
	lui     a2, 0xC0C0                 ## a2 = C0C00000
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	bne     t6, $zero, lbl_8086A78C    
	lui     a1, 0x0600                 ## a1 = 06000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x01A8             ## a1 = 060001A8
	jal     func_8008D328              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beq     $zero, $zero, lbl_8086A798 
	mtc1    $zero, $f4                 ## $f4 = 0.00
lbl_8086A78C:
	jal     func_8008D2D4              
	addiu   a1, a1, 0x020C             ## a1 = 0000020C
	mtc1    $zero, $f4                 ## $f4 = 0.00
lbl_8086A798:
	addiu   t7, $zero, 0x000C          ## t7 = 0000000C
	sh      t7, 0x0188(s0)             ## 00000188
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x38EC          ## a1 = 000038EC
	jal     func_80022FD0              
	swc1    $f4, 0x0068(s0)            ## 00000068
	lui     t8, %hi(func_8086B370)     ## t8 = 80870000
	addiu   t8, t8, %lo(func_8086B370) ## t8 = 8086B370
	sw      t8, 0x0180(s0)             ## 00000180
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086A7D0:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	lbu     t6, 0x0187(s0)             ## 00000187
	lui     a2, 0xC0C0                 ## a2 = C0C00000
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	bne     t6, $zero, lbl_8086A80C    
	lui     a1, 0x0600                 ## a1 = 06000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x04EC             ## a1 = 060004EC
	jal     func_8008D21C              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beq     $zero, $zero, lbl_8086A818 
	lw      t7, 0x02E8(s0)             ## 000002E8
lbl_8086A80C:
	jal     func_8008D1C4              
	addiu   a1, a1, 0x0570             ## a1 = 00000570
	lw      t7, 0x02E8(s0)             ## 000002E8
lbl_8086A818:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0xF824           ## $at = 0001F824
	lw      t8, 0x0000(t7)             ## 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	and     t9, t8, $at                
	beq     t9, $zero, lbl_8086A844    
	nop
	lw      t0, 0x02B4(s0)             ## 000002B4
	lh      t1, 0x0032(t0)             ## 00000032
	beq     $zero, $zero, lbl_8086A858 
	sh      t1, 0x0032(s0)             ## 00000032
lbl_8086A844:
	jal     func_800213B4              
	lw      a1, 0x02B4(s0)             ## 000002B4
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addu    t2, v0, $at                
	sh      t2, 0x0032(s0)             ## 00000032
lbl_8086A858:
	lbu     t3, 0x02BD(s0)             ## 000002BD
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f4                   ## $f4 = 5.00
	andi    t4, t3, 0xFFFE             ## t4 = 00000000
	sb      t4, 0x02BD(s0)             ## 000002BD
	addiu   t5, $zero, 0x0010          ## t5 = 00000010
	swc1    $f4, 0x0068(s0)            ## 00000068
	sw      t5, 0x0010($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x4000          ## a1 = 00004000
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	jal     func_80027090              
	or      a3, $zero, $zero           ## a3 = 00000000
	lui     t6, %hi(func_8086B440)     ## t6 = 80870000
	addiu   t6, t6, %lo(func_8086B440) ## t6 = 8086B440
	sw      t6, 0x0180(s0)             ## 00000180
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086A8AC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	lw      t6, 0x0294(a3)             ## 00000294
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	lui     a2, 0xC0A0                 ## a2 = C0A00000
	lw      a1, 0x0018(t6)             ## 00000018
	jal     func_8008D328              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f4                   ## $f4 = 5.00
	lh      t7, 0x00B6(a3)             ## 000000B6
	lbu     t9, 0x02BD(a3)             ## 000002BD
	ori     $at, $zero, 0x8000         ## $at = 00008000
	lui     t2, %hi(func_8086BE10)     ## t2 = 80870000
	addiu   t1, $zero, 0x00C8          ## t1 = 000000C8
	addiu   t2, t2, %lo(func_8086BE10) ## t2 = 8086BE10
	addu    t8, t7, $at                
	ori     t0, t9, 0x0001             ## t0 = 00000001
	sh      t8, 0x0032(a3)             ## 00000032
	sb      t0, 0x02BD(a3)             ## 000002BD
	sh      t1, 0x0188(a3)             ## 00000188
	sw      t2, 0x0180(a3)             ## 00000180
	swc1    $f4, 0x0068(a3)            ## 00000068
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086A920:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lw      t6, 0x0004(s0)             ## 00000004
	lbu     t8, 0x0187(s0)             ## 00000187
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	and     t7, t6, $at                
	sb      $zero, 0x028D(s0)          ## 0000028D
	bne     t8, $zero, lbl_8086A970    
	sw      t7, 0x0004(s0)             ## 00000004
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x11C4             ## a1 = 060011C4
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008D278              
	addiu   a2, $zero, 0x0000          ## a2 = 00000000
	lui     t9, %hi(func_8086B4AC)     ## t9 = 80870000
	addiu   t9, t9, %lo(func_8086B4AC) ## t9 = 8086B4AC
	beq     $zero, $zero, lbl_8086A9BC 
	sw      t9, 0x0180(s0)             ## 00000180
lbl_8086A970:
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x0FE4             ## a1 = 06000FE4
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008D278              
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f6                   ## $f6 = 20.00
	lwc1    $f4, 0x000C(s0)            ## 0000000C
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x38EC          ## a1 = 000038EC
	add.s   $f8, $f4, $f6              
	jal     func_80022FD0              
	swc1    $f8, 0x0028(s0)            ## 00000028
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3873          ## a1 = 00003873
	lui     t0, %hi(func_8086B62C)     ## t0 = 80870000
	addiu   t0, t0, %lo(func_8086B62C) ## t0 = 8086B62C
	sw      t0, 0x0180(s0)             ## 00000180
lbl_8086A9BC:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086A9D0:
	lw      t8, 0x0004(a0)             ## 00000004
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lh      t6, 0x00B6(a0)             ## 000000B6
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	lui     t0, %hi(func_8086B6D0)     ## t0 = 80870000
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	addiu   t0, t0, %lo(func_8086B6D0) ## t0 = 8086B6D0
	and     t9, t8, $at                
	sh      $zero, 0x0188(a0)          ## 00000188
	sb      t7, 0x0117(a0)             ## 00000117
	sw      t9, 0x0004(a0)             ## 00000004
	sw      t0, 0x0180(a0)             ## 00000180
	swc1    $f4, 0x0068(a0)            ## 00000068
	sh      t6, 0x0032(a0)             ## 00000032
	jr      $ra                        
	nop


func_8086AA10:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lw      t6, 0x0294(a2)             ## 00000294
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	lw      a1, 0x0010(t6)             ## 00000010
	jal     func_8008D1C4              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	lui     $at, 0xC0A0                ## $at = C0A00000
	mtc1    $at, $f4                   ## $f4 = -5.00
	lui     t7, %hi(func_8086BAE8)     ## t7 = 80870000
	addiu   t7, t7, %lo(func_8086BAE8) ## t7 = 8086BAE8
	sw      t7, 0x0180(a2)             ## 00000180
	swc1    $f4, 0x0068(a2)            ## 00000068
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086AA5C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lw      t6, 0x0294(a2)             ## 00000294
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	lw      a1, 0x000C(t6)             ## 0000000C
	jal     func_8008D2D4              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	ori     $at, $zero, 0x8000         ## $at = 00008000
	lh      t7, 0x0032(a2)             ## 00000032
	lui     t9, %hi(func_8086BB54)     ## t9 = 80870000
	addiu   t9, t9, %lo(func_8086BB54) ## t9 = 8086BB54
	addu    t8, t7, $at                
	sh      t8, 0x018C(a2)             ## 0000018C
	sw      t9, 0x0180(a2)             ## 00000180
	swc1    $f4, 0x0068(a2)            ## 00000068
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086AAB4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lh      t7, 0x00B6(a0)             ## 000000B6
	addiu   t6, $zero, 0x0020          ## t6 = 00000020
	sb      t6, 0x0184(a0)             ## 00000184
	swc1    $f4, 0x0068(a0)            ## 00000068
	sh      t7, 0x0032(a0)             ## 00000032
	sw      a0, 0x0018($sp)            
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3874          ## a1 = 00003874
	lw      a0, 0x0018($sp)            
	jal     func_80022FD0              
	addiu   a1, $zero, 0x38EC          ## a1 = 000038EC
	lw      a0, 0x0018($sp)            
	lui     t8, %hi(func_8086BBD4)     ## t8 = 80870000
	addiu   t8, t8, %lo(func_8086BBD4) ## t8 = 8086BBD4
	sw      t8, 0x0180(a0)             ## 00000180
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086AB0C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	mtc1    $zero, $f4                 ## $f4 = 0.00
	sb      $zero, 0x0184(a0)          ## 00000184
	addiu   a1, $zero, 0x3873          ## a1 = 00003873
	swc1    $f4, 0x0068(a0)            ## 00000068
	jal     func_80022FD0              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_80022FD0              
	addiu   a1, $zero, 0x38EC          ## a1 = 000038EC
	lw      a0, 0x0018($sp)            
	lui     t6, %hi(func_8086BCF0)     ## t6 = 80870000
	addiu   t6, t6, %lo(func_8086BCF0) ## t6 = 8086BCF0
	sw      t6, 0x0180(a0)             ## 00000180
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086AB58:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	lui     t6, %hi(func_8086DAB4)     ## t6 = 80870000
	lui     t7, %hi(func_8086DB08)     ## t7 = 80870000
	addiu   t6, t6, %lo(func_8086DAB4) ## t6 = 8086DAB4
	addiu   t7, t7, %lo(func_8086DB08) ## t7 = 8086DB08
	sw      t6, 0x0130(a2)             ## 00000130
	sw      t7, 0x0134(a2)             ## 00000134
	sw      $zero, 0x00C0(a2)          ## 000000C0
	lui     a1, 0x3C23                 ## a1 = 3C230000
	ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
	sw      a2, 0x0018($sp)            
	jal     func_80020F88              
	or      a0, a2, $zero              ## a0 = 00000000
	lw      a2, 0x0018($sp)            
	lui     $at, 0xBF80                ## $at = BF800000
	mtc1    $at, $f4                   ## $f4 = -1.00
	lw      t8, 0x0004(a2)             ## 00000004
	lw      a0, 0x001C($sp)            
	lui     $at, %hi(var_8086DFE0)     ## $at = 80870000
	ori     t9, t8, 0x0010             ## t9 = 00000010
	sw      t9, 0x0004(a2)             ## 00000004
	swc1    $f4, 0x006C(a2)            ## 0000006C
	lwc1    $f6, %lo(var_8086DFE0)($at) 
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f10                  ## $f10 = 15.00
	lwc1    $f8, 0x0028(a2)            ## 00000028
	lbu     t0, 0x0187(a2)             ## 00000187
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	sub.s   $f16, $f8, $f10            
	addiu   a1, a0, 0x1C24             ## a1 = 00001C24
	swc1    $f6, 0x00BC(a2)            ## 000000BC
	beq     t0, $at, lbl_8086ABF0      
	swc1    $f16, 0x0028(a2)           ## 00000028
	addiu   t1, $zero, 0x8000          ## t1 = FFFF8000
	sh      t1, 0x00B4(a2)             ## 000000B4
lbl_8086ABF0:
	addiu   a3, $zero, 0x0008          ## a3 = 00000008
	jal     func_800265D4              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	lui     t3, %hi(func_8086BF10)     ## t3 = 80870000
	addiu   t2, $zero, 0x003C          ## t2 = 0000003C
	addiu   t3, t3, %lo(func_8086BF10) ## t3 = 8086BF10
	sh      t2, 0x0188(a2)             ## 00000188
	sw      t3, 0x0180(a2)             ## 00000180
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086AC24:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lwc1    $f4, 0x0024(s0)            ## 00000024
	lwc1    $f8, 0x0028(s0)            ## 00000028
	lwc1    $f16, 0x002C(s0)           ## 0000002C
	trunc.w.s $f6, $f4                   
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0018($sp)         
	trunc.w.s $f10, $f8                  
	mfc1    a1, $f6                    
	sw      $zero, 0x0014($sp)         
	trunc.w.s $f18, $f16                 
	mfc1    a2, $f10                   
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	mfc1    a3, $f18                   
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	sll     a3, a3, 16                 
	sra     a3, a3, 16                 
	sw      $zero, 0x0010($sp)         
	jal     func_80065BCC              
	addiu   a0, s0, 0x029C             ## a0 = 0000029C
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lh      t9, 0x001C(s0)             ## 0000001C
	sh      $zero, 0x018A(s0)          ## 0000018A
	sh      $zero, 0x00B6(s0)          ## 000000B6
	slti    $at, t9, 0x0002            
	sb      $zero, 0x028A(s0)          ## 0000028A
	sb      $zero, 0x028D(s0)          ## 0000028D
	swc1    $f0, 0x00BC(s0)            ## 000000BC
	swc1    $f0, 0x006C(s0)            ## 0000006C
	bne     $at, $zero, lbl_8086ACC4   
	swc1    $f0, 0x0060(s0)            ## 00000060
	addiu   t0, $zero, 0x00C8          ## t0 = 000000C8
	sb      t0, 0x028B(s0)             ## 0000028B
	beq     $zero, $zero, lbl_8086ACD0 
	sb      $zero, 0x028C(s0)          ## 0000028C
lbl_8086ACC4:
	addiu   t1, $zero, 0x00C8          ## t1 = 000000C8
	sb      $zero, 0x028B(s0)          ## 0000028B
	sb      t1, 0x028C(s0)             ## 0000028C
lbl_8086ACD0:
	lwc1    $f4, 0x0028(s0)            ## 00000028
	swc1    $f0, 0x0050(s0)            ## 00000050
	swc1    $f0, 0x0054(s0)            ## 00000054
	sh      $zero, 0x00B4(s0)          ## 000000B4
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x28E0          ## a1 = 000028E0
	jal     func_80022FD0              
	swc1    $f4, 0x000C(s0)            ## 0000000C
	lui     t2, %hi(func_8086C3A8)     ## t2 = 80870000
	addiu   t2, t2, %lo(func_8086C3A8) ## t2 = 8086C3A8
	sw      t2, 0x0180(s0)             ## 00000180
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086AD10:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	lwc1    $f4, 0x0028(a2)            ## 00000028
	or      a0, a2, $zero              ## a0 = 00000000
	lui     a1, 0xC120                 ## a1 = C1200000
	swc1    $f4, 0x000C(a2)            ## 0000000C
	jal     func_80020F04              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f16                  ## $f16 = 20.00
	lwc1    $f6, 0x0024(a2)            ## 00000024
	lwc1    $f10, 0x0028(a2)           ## 00000028
	lh      v0, 0x001C(a2)             ## 0000001C
	trunc.w.s $f8, $f6                   
	lwc1    $f6, 0x002C(a2)            ## 0000002C
	addiu   t6, $zero, 0x000D          ## t6 = 0000000D
	sub.s   $f18, $f10, $f16           
	mfc1    t9, $f8                    
	addiu   t7, $zero, 0x001E          ## t7 = 0000001E
	trunc.w.s $f8, $f6                   
	addiu   t4, $zero, 0x0009          ## t4 = 00000009
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	trunc.w.s $f4, $f18                  
	mfc1    t3, $f8                    
	sh      t6, 0x02EC(a2)             ## 000002EC
	sh      t7, 0x02EE(a2)             ## 000002EE
	mfc1    t1, $f4                    
	sh      $zero, 0x02F0(a2)          ## 000002F0
	sb      t4, 0x02BE(a2)             ## 000002BE
	sh      t9, 0x02F2(a2)             ## 000002F2
	sh      t3, 0x02F6(a2)             ## 000002F6
	beq     v0, $at, lbl_8086ADAC      
	sh      t1, 0x02F4(a2)             ## 000002F4
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	bne     v0, $at, lbl_8086AE6C      
	addiu   t2, $zero, 0x5005          ## t2 = 00005005
lbl_8086ADAC:
	lui     t5, 0x8010                 ## t5 = 80100000
	lui     t6, 0x8012                 ## t6 = 80120000
	lw      t6, -0x598C(t6)            ## 8011A674
	lw      t5, -0x73D4(t5)            ## 800F8C2C
	addiu   t8, $zero, 0x5000          ## t8 = 00005000
	lw      a0, 0x001C($sp)            
	and     t7, t5, t6                 
	beq     t7, $zero, lbl_8086ADD8    
	addiu   a1, $zero, 0x000A          ## a1 = 0000000A
	beq     $zero, $zero, lbl_8086AE70 
	sh      t8, 0x010E(a2)             ## 0000010E
lbl_8086ADD8:
	jal     func_8002049C              
	sw      a2, 0x0018($sp)            
	bne     v0, $zero, lbl_8086AE0C    
	lw      a2, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	addiu   a1, $zero, 0x000B          ## a1 = 0000000B
	jal     func_8002049C              
	sw      a2, 0x0018($sp)            
	bne     v0, $zero, lbl_8086AE0C    
	lw      a2, 0x0018($sp)            
	addiu   t9, $zero, 0x500F          ## t9 = 0000500F
	beq     $zero, $zero, lbl_8086AE70 
	sh      t9, 0x010E(a2)             ## 0000010E
lbl_8086AE0C:
	lh      v0, 0x001C(a2)             ## 0000001C
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	lw      a0, 0x001C($sp)            
	bne     v0, $at, lbl_8086AE34      
	addiu   a1, $zero, 0x000A          ## a1 = 0000000A
	jal     func_8002049C              
	sw      a2, 0x0018($sp)            
	bne     v0, $zero, lbl_8086AE54    
	lw      a2, 0x0018($sp)            
	lh      v0, 0x001C(a2)             ## 0000001C
lbl_8086AE34:
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	bne     v0, $at, lbl_8086AE60      
	lw      a0, 0x001C($sp)            
	addiu   a1, $zero, 0x000B          ## a1 = 0000000B
	jal     func_8002049C              
	sw      a2, 0x0018($sp)            
	beq     v0, $zero, lbl_8086AE60    
	lw      a2, 0x0018($sp)            
lbl_8086AE54:
	addiu   t0, $zero, 0x5013          ## t0 = 00005013
	beq     $zero, $zero, lbl_8086AE70 
	sh      t0, 0x010E(a2)             ## 0000010E
lbl_8086AE60:
	addiu   t1, $zero, 0x5012          ## t1 = 00005012
	beq     $zero, $zero, lbl_8086AE70 
	sh      t1, 0x010E(a2)             ## 0000010E
lbl_8086AE6C:
	sh      t2, 0x010E(a2)             ## 0000010E
lbl_8086AE70:
	lw      t5, 0x0004(a2)             ## 00000004
	lui     t7, %hi(func_8086C400)     ## t7 = 80870000
	addiu   t3, $zero, 0x00C8          ## t3 = 000000C8
	addiu   t4, $zero, 0x0020          ## t4 = 00000020
	addiu   t7, t7, %lo(func_8086C400) ## t7 = 8086C400
	ori     t6, t5, 0x0001             ## t6 = 00000001
	sh      t3, 0x0188(a2)             ## 00000188
	sb      t4, 0x0185(a2)             ## 00000185
	sw      t6, 0x0004(a2)             ## 00000004
	sw      t7, 0x0180(a2)             ## 00000180
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086AEA8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	beq     a1, $zero, lbl_8086AED4    
	lw      a0, 0x0018($sp)            
	addiu   a0, a0, 0x00E4             ## a0 = 000000E4
	jal     func_800C95C4              
	addiu   a1, $zero, 0x31E8          ## a1 = 000031E8
	lw      a0, 0x0018($sp)            
	jal     func_80022FD0              
	addiu   a1, $zero, 0x38EC          ## a1 = 000038EC
lbl_8086AED4:
	lw      t7, 0x0018($sp)            
	lui     t6, %hi(func_8086C61C)     ## t6 = 80870000
	addiu   t6, t6, %lo(func_8086C61C) ## t6 = 8086C61C
	sw      t6, 0x0180(t7)             ## 00000180
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086AEF4:
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f6                   ## $f6 = 15.00
	lwc1    $f4, 0x0028(a0)            ## 00000028
	lui     t6, %hi(func_8086C65C)     ## t6 = 80870000
	addiu   t6, t6, %lo(func_8086C65C) ## t6 = 8086C65C
	sub.s   $f8, $f4, $f6              
	sw      t6, 0x0180(a0)             ## 00000180
	swc1    $f8, 0x000C(a0)            ## 0000000C
	jr      $ra                        
	nop


func_8086AF1C:
	lui     t6, %hi(func_8086C788)     ## t6 = 80870000
	addiu   t6, t6, %lo(func_8086C788) ## t6 = 8086C788
	sw      t6, 0x0180(a0)             ## 00000180
	jr      $ra                        
	nop


func_8086AF30:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lw      t6, 0x001C($sp)            
	addiu   a0, a3, 0x0028             ## a0 = 00000028
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lw      v0, 0x1C44(t6)             ## 00001C44
	lw      a1, 0x0028(v0)             ## 00000028
	jal     func_8006385C              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	lbu     a0, 0x0185(a3)             ## 00000185
	sll     a0, a0, 11                 
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lui     $at, 0x4020                ## $at = 40200000
	mtc1    $at, $f6                   ## $f6 = 2.50
	lw      a3, 0x0018($sp)            
	addiu   t8, $zero, 0x0020          ## t8 = 00000020
	mul.s   $f8, $f6, $f0              
	lwc1    $f4, 0x0028(a3)            ## 00000028
	lbu     v0, 0x0185(a3)             ## 00000185
	addiu   t7, v0, 0xFFFF             ## t7 = FFFFFFFF
	add.s   $f10, $f4, $f8             
	beq     v0, $zero, lbl_8086AFA8    
	swc1    $f10, 0x0028(a3)           ## 00000028
	sb      t7, 0x0185(a3)             ## 00000185
	andi    v0, t7, 0x00FF             ## v0 = 000000FF
lbl_8086AFA8:
	bnel    v0, $zero, lbl_8086AFB8    
	lw      $ra, 0x0014($sp)           
	sb      t8, 0x0185(a3)             ## 00000185
	lw      $ra, 0x0014($sp)           
lbl_8086AFB8:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086AFC4:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	addiu   a1, a3, 0x0008             ## a1 = 00000008
	sw      a1, 0x001C($sp)            
	or      a0, a3, $zero              ## a0 = 00000000
	jal     func_80021528              
	sw      a3, 0x0020($sp)            
	lui     $at, 0x43C8                ## $at = 43C80000
	mtc1    $at, $f4                   ## $f4 = 400.00
	lw      a3, 0x0020($sp)            
	lw      a1, 0x001C($sp)            
	c.lt.s  $f4, $f0                   
	or      a0, a3, $zero              ## a0 = 00000000
	bc1fl   lbl_8086B018               
	addiu   a0, a3, 0x0032             ## a0 = 00000032
	jal     func_8002140C              
	sw      a3, 0x0020($sp)            
	lw      a3, 0x0020($sp)            
	sh      v0, 0x018C(a3)             ## 0000018C
	addiu   a0, a3, 0x0032             ## a0 = 00000032
lbl_8086B018:
	lh      a1, 0x018C(a3)             ## 0000018C
	jal     func_80063704              
	addiu   a2, $zero, 0x071C          ## a2 = 0000071C
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086B034:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a0, 0x0024($sp)            
	lw      a0, 0x0024($sp)            
	jal     func_8008D6A8              
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	beq     v0, $zero, lbl_8086B078    
	or      a0, s0, $zero              ## a0 = 00000000
	lh      v0, 0x0188(s0)             ## 00000188
	beq     v0, $zero, lbl_8086B078    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x0188(s0)             ## 00000188
lbl_8086B078:
	jal     func_8086AF30              
	lw      a1, 0x002C($sp)            
	lui     $at, 0x4348                ## $at = 43480000
	mtc1    $at, $f6                   ## $f6 = 200.00
	lwc1    $f4, 0x0090(s0)            ## 00000090
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_8086B0B0               
	lh      t7, 0x0188(s0)             ## 00000188
	jal     func_8086A700              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8086B0C4 
	lbu     t8, 0x028D(s0)             ## 0000028D
	lh      t7, 0x0188(s0)             ## 00000188
lbl_8086B0B0:
	bnel    t7, $zero, lbl_8086B0C4    
	lbu     t8, 0x028D(s0)             ## 0000028D
	jal     func_8086A6B0              
	or      a0, s0, $zero              ## a0 = 00000000
	lbu     t8, 0x028D(s0)             ## 0000028D
lbl_8086B0C4:
	addiu   $at, $zero, 0x00FF         ## $at = 000000FF
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    t8, $at, lbl_8086B0E0      
	lw      $ra, 0x001C($sp)           
	jal     func_8002313C              
	addiu   a1, $zero, 0x3071          ## a1 = 00003071
	lw      $ra, 0x001C($sp)           
lbl_8086B0E0:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086B0F0:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a0, 0x0024($sp)            
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	jal     func_8006385C              
	lui     a1, 0x3F80                 ## a1 = 3F800000
	lw      a0, 0x0024($sp)            
	jal     func_8008D6A8              
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	beq     v0, $zero, lbl_8086B148    
	nop
	lh      v0, 0x0188(s0)             ## 00000188
	beq     v0, $zero, lbl_8086B148    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x0188(s0)             ## 00000188
lbl_8086B148:
	jal     func_8086AFC4              
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8086AF30              
	lw      a1, 0x002C($sp)            
	lui     $at, 0x4348                ## $at = 43480000
	mtc1    $at, $f6                   ## $f6 = 200.00
	lwc1    $f4, 0x0090(s0)            ## 00000090
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_8086B19C               
	lh      t8, 0x0188(s0)             ## 00000188
	lh      t7, 0x0188(s0)             ## 00000188
	slti    $at, t7, 0x0013            
	beql    $at, $zero, lbl_8086B19C   
	lh      t8, 0x0188(s0)             ## 00000188
	jal     func_8086A700              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8086B1E0 
	lbu     t9, 0x028D(s0)             ## 0000028D
	lh      t8, 0x0188(s0)             ## 00000188
lbl_8086B19C:
	bnel    t8, $zero, lbl_8086B1E0    
	lbu     t9, 0x028D(s0)             ## 0000028D
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_8086DFE4)     ## $at = 80870000
	lwc1    $f8, %lo(var_8086DFE4)($at) 
	c.lt.s  $f0, $f8                   
	nop
	bc1f    lbl_8086B1D4               
	nop
	jal     func_8086AA5C              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8086B1E0 
	lbu     t9, 0x028D(s0)             ## 0000028D
lbl_8086B1D4:
	jal     func_8086A658              
	or      a0, s0, $zero              ## a0 = 00000000
	lbu     t9, 0x028D(s0)             ## 0000028D
lbl_8086B1E0:
	addiu   $at, $zero, 0x00FF         ## $at = 000000FF
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    t9, $at, lbl_8086B1FC      
	lw      $ra, 0x001C($sp)           
	jal     func_8002313C              
	addiu   a1, $zero, 0x3071          ## a1 = 00003071
	lw      $ra, 0x001C($sp)           
lbl_8086B1FC:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086B20C:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	lw      t6, 0x002C($sp)            
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lw      t7, 0x1C44(t6)             ## 00001C44
	jal     func_8008C9C0              
	sw      t7, 0x0024($sp)            
	lh      v1, 0x0188(s0)             ## 00000188
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	addiu   a2, $zero, 0x071C          ## a2 = 0000071C
	beq     v1, $zero, lbl_8086B24C    
	addiu   t8, v1, 0xFFFF             ## t8 = FFFFFFFF
	sh      t8, 0x0188(s0)             ## 00000188
lbl_8086B24C:
	lw      t9, 0x0024($sp)            
	lh      a3, 0x008A(s0)             ## 0000008A
	lh      t0, 0x00B6(t9)             ## 000000B6
	addiu   a1, a3, 0x3000             ## a1 = 00003000
	sll     a1, a1, 16                 
	subu    v0, a3, t0                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x3001            
	bnel    $at, $zero, lbl_8086B28C   
	slti    $at, v0, 0xD000            
	jal     func_80063704              
	sra     a1, a1, 16                 
	beq     $zero, $zero, lbl_8086B2C8 
	or      a0, s0, $zero              ## a0 = 00000000
	slti    $at, v0, 0xD000            
lbl_8086B28C:
	beq     $at, $zero, lbl_8086B2B4   
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	addiu   a1, a3, 0xD000             ## a1 = FFFFD000
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	jal     func_80063704              
	addiu   a2, $zero, 0x071C          ## a2 = 0000071C
	beq     $zero, $zero, lbl_8086B2C8 
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8086B2B4:
	sll     a1, a3, 16                 
	sra     a1, a1, 16                 
	jal     func_80063704              
	addiu   a2, $zero, 0x071C          ## a2 = 0000071C
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8086B2C8:
	jal     func_8086AF30              
	lw      a1, 0x002C($sp)            
	lui     $at, 0x438C                ## $at = 438C0000
	mtc1    $at, $f4                   ## $f4 = 280.00
	lwc1    $f0, 0x0090(s0)            ## 00000090
	c.lt.s  $f4, $f0                   
	nop
	bc1fl   lbl_8086B300               
	lh      t1, 0x0188(s0)             ## 00000188
	jal     func_8086A6B0              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8086B344 
	lbu     t2, 0x028D(s0)             ## 0000028D
	lh      t1, 0x0188(s0)             ## 00000188
lbl_8086B300:
	lui     $at, 0x430C                ## $at = 430C0000
	bnel    t1, $zero, lbl_8086B344    
	lbu     t2, 0x028D(s0)             ## 0000028D
	mtc1    $at, $f6                   ## $f6 = 140.00
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x2AAA          ## a1 = 00002AAA
	c.lt.s  $f0, $f6                   
	nop
	bc1fl   lbl_8086B344               
	lbu     t2, 0x028D(s0)             ## 0000028D
	jal     func_80021968              
	lw      a2, 0x002C($sp)            
	bnel    v0, $zero, lbl_8086B344    
	lbu     t2, 0x028D(s0)             ## 0000028D
	jal     func_8086A750              
	or      a0, s0, $zero              ## a0 = 00000000
	lbu     t2, 0x028D(s0)             ## 0000028D
lbl_8086B344:
	addiu   $at, $zero, 0x00FF         ## $at = 000000FF
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    t2, $at, lbl_8086B360      
	lw      $ra, 0x001C($sp)           
	jal     func_8002313C              
	addiu   a1, $zero, 0x3071          ## a1 = 00003071
	lw      $ra, 0x001C($sp)           
lbl_8086B360:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086B370:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a0, 0x0024($sp)            
	lw      a0, 0x0024($sp)            
	jal     func_8008D6A8              
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	beq     v0, $zero, lbl_8086B3BC    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3870          ## a1 = 00003870
	lh      v0, 0x0188(s0)             ## 00000188
	beq     v0, $zero, lbl_8086B3BC    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x0188(s0)             ## 00000188
lbl_8086B3BC:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8086AF30              
	lw      a1, 0x002C($sp)            
	lh      v0, 0x0188(s0)             ## 00000188
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	addiu   a2, $zero, 0x0E38          ## a2 = 00000E38
	slti    $at, v0, 0x000A            
	bnel    $at, $zero, lbl_8086B3F4   
	addiu   $at, $zero, 0x0009         ## $at = 00000009
	jal     func_80063704              
	lh      a1, 0x008A(s0)             ## 0000008A
	beq     $zero, $zero, lbl_8086B430 
	lw      $ra, 0x001C($sp)           
	addiu   $at, $zero, 0x0009         ## $at = 00000009
lbl_8086B3F4:
	bne     v0, $at, lbl_8086B414      
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f4                   ## $f4 = 5.00
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f6                   ## $f6 = 2.00
	swc1    $f4, 0x0068(s0)            ## 00000068
	beq     $zero, $zero, lbl_8086B42C 
	swc1    $f6, 0x0158(s0)            ## 00000158
lbl_8086B414:
	bnel    v0, $zero, lbl_8086B430    
	lw      $ra, 0x001C($sp)           
	jal     func_8086A6B0              
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t7, $zero, 0x0017          ## t7 = 00000017
	sh      t7, 0x0188(s0)             ## 00000188
lbl_8086B42C:
	lw      $ra, 0x001C($sp)           
lbl_8086B430:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086B440:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	addiu   a0, a3, 0x0068             ## a0 = 00000068
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	lui     a2, 0x3F00                 ## a2 = 3F000000
	jal     func_8006385C              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	jal     func_8008C9C0              
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	beq     v0, $zero, lbl_8086B49C    
	lw      a3, 0x0018($sp)            
	lbu     t6, 0x00AF(a3)             ## 000000AF
	beq     t6, $zero, lbl_8086B494    
	nop
	jal     func_8086A8AC              
	or      a0, a3, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8086B4A0 
	lw      $ra, 0x0014($sp)           
lbl_8086B494:
	jal     func_8086A9D0              
	or      a0, a3, $zero              ## a0 = 00000000
lbl_8086B49C:
	lw      $ra, 0x0014($sp)           
lbl_8086B4A0:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086B4AC:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beq     v0, $zero, lbl_8086B504    
	lui     $at, 0x4120                ## $at = 41200000
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	sb      t6, 0x028D(s0)             ## 0000028D
	addiu   a0, $zero, 0x02BC          ## a0 = 000002BC
	jal     func_80063BF0              
	addiu   a1, $zero, 0x012C          ## a1 = 0000012C
	lw      t7, 0x0004(s0)             ## 00000004
	sh      v0, 0x018A(s0)             ## 0000018A
	or      a0, s0, $zero              ## a0 = 00000000
	ori     t8, t7, 0x0001             ## t8 = 00000001
	jal     func_8086A6B0              
	sw      t8, 0x0004(s0)             ## 00000004
	beq     $zero, $zero, lbl_8086B5C8 
	lui     $at, 0x3F00                ## $at = 3F000000
lbl_8086B504:
	mtc1    $at, $f2                   ## $f2 = 0.50
	lwc1    $f0, 0x0154(s0)            ## 00000154
	lui     $at, %hi(var_8086DFE8)     ## $at = 80870000
	c.lt.s  $f2, $f0                   
	nop
	bc1fl   lbl_8086B5C8               
	lui     $at, 0x3F00                ## $at = 3F000000
	sub.s   $f4, $f0, $f2              
	lwc1    $f6, %lo(var_8086DFE8)($at) 
	lui     $at, 0x437F                ## $at = 437F0000
	mtc1    $at, $f10                  ## $f10 = 255.00
	mul.s   $f8, $f4, $f6              
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	lui     $at, 0x4F00                ## $at = 4F000000
	mul.s   $f16, $f8, $f10            
	cfc1    t9, $f31                   
	ctc1    t0, $f31                   
	nop
	cvt.w.s $f18, $f16                 
	cfc1    t0, $f31                   
	nop
	andi    t0, t0, 0x0078             ## t0 = 00000000
	beql    t0, $zero, lbl_8086B5AC    
	mfc1    t0, $f18                   
	mtc1    $at, $f18                  ## $f18 = 2147484000.00
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	sub.s   $f18, $f16, $f18           
	ctc1    t0, $f31                   
	nop
	cvt.w.s $f18, $f18                 
	cfc1    t0, $f31                   
	nop
	andi    t0, t0, 0x0078             ## t0 = 00000000
	bne     t0, $zero, lbl_8086B5A0    
	nop
	mfc1    t0, $f18                   
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_8086B5B8 
	or      t0, t0, $at                ## t0 = 80000000
lbl_8086B5A0:
	beq     $zero, $zero, lbl_8086B5B8 
	addiu   t0, $zero, 0xFFFF          ## t0 = FFFFFFFF
	mfc1    t0, $f18                   
lbl_8086B5AC:
	nop
	bltz    t0, lbl_8086B5A0           
	nop
lbl_8086B5B8:
	ctc1    t9, $f31                   
	sb      t0, 0x028D(s0)             ## 0000028D
	nop
	lui     $at, 0x3F00                ## $at = 3F000000
lbl_8086B5C8:
	mtc1    $at, $f6                   ## $f6 = 0.50
	lwc1    $f4, 0x0158(s0)            ## 00000158
	lui     $at, 0x438C                ## $at = 438C0000
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_8086B61C               
	lw      $ra, 0x001C($sp)           
	lwc1    $f8, 0x0090(s0)            ## 00000090
	mtc1    $at, $f10                  ## $f10 = 280.00
	or      a0, s0, $zero              ## a0 = 00000000
	c.lt.s  $f8, $f10                  
	nop
	bc1fl   lbl_8086B61C               
	lw      $ra, 0x001C($sp)           
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3873          ## a1 = 00003873
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f16                  ## $f16 = 1.00
	nop
	swc1    $f16, 0x0158(s0)           ## 00000158
	lw      $ra, 0x001C($sp)           
lbl_8086B61C:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086B62C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a2, 0x0018($sp)            
	beq     v0, $zero, lbl_8086B688    
	lw      a2, 0x0018($sp)            
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	sb      t6, 0x028D(a2)             ## 0000028D
	sw      a2, 0x0018($sp)            
	addiu   a0, $zero, 0x02BC          ## a0 = 000002BC
	jal     func_80063BF0              
	addiu   a1, $zero, 0x012C          ## a1 = 0000012C
	lw      a0, 0x0018($sp)            
	lw      t7, 0x0004(a0)             ## 00000004
	sh      v0, 0x018A(a0)             ## 0000018A
	ori     t8, t7, 0x0001             ## t8 = 00000001
	jal     func_8086A6B0              
	sw      t8, 0x0004(a0)             ## 00000004
	beq     $zero, $zero, lbl_8086B6C4 
	lw      $ra, 0x0014($sp)           
lbl_8086B688:
	lui     $at, 0x41CC                ## $at = 41CC0000
	mtc1    $at, $f6                   ## $f6 = 25.50
	lwc1    $f4, 0x0154(a2)            ## 00000154
	addiu   t0, $zero, 0x00FF          ## t0 = 000000FF
	mul.s   $f8, $f4, $f6              
	trunc.w.s $f10, $f8                  
	mfc1    v0, $f10                   
	nop
	slti    $at, v0, 0x0100            
	bnel    $at, $zero, lbl_8086B6C0   
	sb      v0, 0x028D(a2)             ## 0000028D
	beq     $zero, $zero, lbl_8086B6C0 
	sb      t0, 0x028D(a2)             ## 0000028D
	sb      v0, 0x028D(a2)             ## 0000028D
lbl_8086B6C0:
	lw      $ra, 0x0014($sp)           
lbl_8086B6C4:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086B6D0:
	addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
	sw      s1, 0x0048($sp)            
	sw      s0, 0x0044($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x004C($sp)           
	lh      t6, 0x0188(s0)             ## 00000188
	addiu   v1, $zero, 0x001C          ## v1 = 0000001C
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	sh      t7, 0x0188(s0)             ## 00000188
	lh      v0, 0x0188(s0)             ## 00000188
	slti    $at, v0, 0x0008            
	beq     $at, $zero, lbl_8086BA68   
	slti    $at, v0, 0x0005            
	beq     $at, $zero, lbl_8086B7E8   
	addiu   t4, v0, 0xFFFB             ## t4 = FFFFFFFB
	sll     a0, v0, 12                 
	addiu   a0, a0, 0xC000             ## a0 = FFFFC000
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lui     $at, 0x4220                ## $at = 42200000
	mtc1    $at, $f6                   ## $f6 = 40.00
	lui     $at, 0x41B8                ## $at = 41B80000
	mtc1    $at, $f10                  ## $f10 = 23.00
	lwc1    $f4, 0x0028(s0)            ## 00000028
	mul.s   $f16, $f0, $f10            
	add.s   $f8, $f4, $f6              
	add.s   $f18, $f16, $f8            
	swc1    $f18, 0x0070($sp)          
	lh      a0, 0x0188(s0)             ## 00000188
	sll     a0, a0, 12                 
	addiu   a0, a0, 0xC000             ## a0 = FFFFC000
	sll     a0, a0, 16                 
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	lui     $at, 0x41B8                ## $at = 41B80000
	mtc1    $at, $f4                   ## $f4 = 23.00
	nop
	mul.s   $f6, $f0, $f4              
	swc1    $f6, 0x0068($sp)           
	lh      t8, 0x07A0(s1)             ## 000007A0
	sll     t9, t8,  2                 
	addu    t0, s1, t9                 
	jal     func_8004977C              
	lw      a0, 0x0790(t0)             ## 00000790
	addiu   a0, v0, 0x4800             ## a0 = 00004800
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lwc1    $f10, 0x0068($sp)          
	lwc1    $f8, 0x0024(s0)            ## 00000024
	mul.s   $f16, $f0, $f10            
	add.s   $f18, $f16, $f8            
	swc1    $f18, 0x006C($sp)          
	lh      t1, 0x07A0(s1)             ## 000007A0
	sll     t2, t1,  2                 
	addu    t3, s1, t2                 
	jal     func_8004977C              
	lw      a0, 0x0790(t3)             ## 00000790
	addiu   a0, v0, 0x4800             ## a0 = 00004800
	sll     a0, a0, 16                 
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	lwc1    $f4, 0x0068($sp)           
	lwc1    $f10, 0x002C(s0)           ## 0000002C
	mul.s   $f6, $f0, $f4              
	add.s   $f16, $f6, $f10            
	beq     $zero, $zero, lbl_8086B88C 
	swc1    $f16, 0x0074($sp)          
lbl_8086B7E8:
	mtc1    t4, $f10                   ## $f10 = 0.00
	lui     $at, 0x4220                ## $at = 42200000
	mtc1    $at, $f18                  ## $f18 = 40.00
	cvt.s.w $f16, $f10                 
	lwc1    $f8, 0x0028(s0)            ## 00000028
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f6                   ## $f6 = 15.00
	add.s   $f4, $f8, $f18             
	mul.s   $f8, $f6, $f16             
	add.s   $f18, $f4, $f8             
	swc1    $f18, 0x0070($sp)          
	lh      t5, 0x07A0(s1)             ## 000007A0
	sll     t6, t5,  2                 
	addu    t7, s1, t6                 
	jal     func_8004977C              
	lw      a0, 0x0790(t7)             ## 00000790
	addiu   a0, v0, 0x4800             ## a0 = 00004800
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lui     $at, 0x41B8                ## $at = 41B80000
	mtc1    $at, $f10                  ## $f10 = 23.00
	lwc1    $f16, 0x0024(s0)           ## 00000024
	mul.s   $f6, $f0, $f10             
	add.s   $f4, $f6, $f16             
	swc1    $f4, 0x006C($sp)           
	lh      t8, 0x07A0(s1)             ## 000007A0
	sll     t9, t8,  2                 
	addu    t0, s1, t9                 
	jal     func_8004977C              
	lw      a0, 0x0790(t0)             ## 00000790
	addiu   a0, v0, 0x4800             ## a0 = 00004800
	sll     a0, a0, 16                 
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	lui     $at, 0x41B8                ## $at = 41B80000
	mtc1    $at, $f8                   ## $f8 = 23.00
	lwc1    $f10, 0x002C(s0)           ## 0000002C
	mul.s   $f18, $f0, $f8             
	add.s   $f6, $f18, $f10            
	swc1    $f6, 0x0074($sp)           
lbl_8086B88C:
	lh      t1, 0x0188(s0)             ## 00000188
	lui     a2, %hi(var_8086DFC0)      ## a2 = 80870000
	lui     a3, %hi(var_8086DFCC)      ## a3 = 80870000
	sll     t2, t1,  2                 
	addu    t2, t2, t1                 
	sll     t2, t2,  1                 
	addiu   t3, t2, 0x0050             ## t3 = 00000050
	addiu   t1, $zero, 0x0001          ## t1 = 00000001
	addiu   t4, $zero, 0x00FF          ## t4 = 000000FF
	addiu   t5, $zero, 0x00FF          ## t5 = 000000FF
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	addiu   t0, $zero, 0x0009          ## t0 = 00000009
	sw      t0, 0x0038($sp)            
	sw      t9, 0x0034($sp)            
	sw      t8, 0x0030($sp)            
	sw      t7, 0x0024($sp)            
	sw      t6, 0x0020($sp)            
	sw      t5, 0x001C($sp)            
	sw      t4, 0x0018($sp)            
	sw      t1, 0x003C($sp)            
	sw      t3, 0x0010($sp)            
	addiu   a3, a3, %lo(var_8086DFCC)  ## a3 = 8086DFCC
	addiu   a2, a2, %lo(var_8086DFC0)  ## a2 = 8086DFC0
	sw      $zero, 0x002C($sp)         
	sw      $zero, 0x0028($sp)         
	sw      $zero, 0x0014($sp)         
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8001E1D4              
	addiu   a1, $sp, 0x006C            ## a1 = FFFFFFF4
	lwc1    $f0, 0x0024(s0)            ## 00000024
	lwc1    $f4, 0x006C($sp)           
	lwc1    $f10, 0x0074($sp)          
	add.s   $f16, $f0, $f0             
	lui     a2, %hi(var_8086DFC0)      ## a2 = 80870000
	lui     a3, %hi(var_8086DFCC)      ## a3 = 80870000
	addiu   t5, $zero, 0x00FF          ## t5 = 000000FF
	sub.s   $f8, $f16, $f4             
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
	swc1    $f8, 0x006C($sp)           
	lwc1    $f2, 0x002C(s0)            ## 0000002C
	addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	add.s   $f18, $f2, $f2             
	addiu   t1, $zero, 0x0009          ## t1 = 00000009
	addiu   a3, a3, %lo(var_8086DFCC)  ## a3 = 8086DFCC
	addiu   a2, a2, %lo(var_8086DFC0)  ## a2 = 8086DFC0
	sub.s   $f6, $f18, $f10            
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a1, $sp, 0x006C            ## a1 = FFFFFFF4
	swc1    $f6, 0x0074($sp)           
	lh      t2, 0x0188(s0)             ## 00000188
	sw      t1, 0x0038($sp)            
	sw      t0, 0x0034($sp)            
	sll     t3, t2,  2                 
	addu    t3, t3, t2                 
	sll     t3, t3,  1                 
	addiu   t4, t3, 0x0050             ## t4 = 00000050
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	sw      t2, 0x003C($sp)            
	sw      t4, 0x0010($sp)            
	sw      t9, 0x0030($sp)            
	sw      $zero, 0x002C($sp)         
	sw      $zero, 0x0028($sp)         
	sw      t8, 0x0024($sp)            
	sw      t7, 0x0020($sp)            
	sw      t6, 0x001C($sp)            
	sw      t5, 0x0018($sp)            
	jal     func_8001E1D4              
	sw      $zero, 0x0014($sp)         
	lwc1    $f16, 0x0024(s0)           ## 00000024
	lui     a2, %hi(var_8086DFC0)      ## a2 = 80870000
	lui     a3, %hi(var_8086DFCC)      ## a3 = 80870000
	swc1    $f16, 0x006C($sp)          
	lwc1    $f4, 0x002C(s0)            ## 0000002C
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	swc1    $f4, 0x0074($sp)           
	lh      t3, 0x0188(s0)             ## 00000188
	addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
	addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
	sll     t4, t3,  2                 
	addu    t4, t4, t3                 
	sll     t4, t4,  1                 
	addiu   t5, t4, 0x0050             ## t5 = 00000050
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	addiu   t0, $zero, 0x00FF          ## t0 = 000000FF
	addiu   t1, $zero, 0x0001          ## t1 = 00000001
	addiu   t2, $zero, 0x0009          ## t2 = 00000009
	sw      t2, 0x0038($sp)            
	sw      t1, 0x0034($sp)            
	sw      t0, 0x0030($sp)            
	sw      t3, 0x003C($sp)            
	sw      t5, 0x0010($sp)            
	sw      t9, 0x0024($sp)            
	sw      t8, 0x0020($sp)            
	sw      $zero, 0x002C($sp)         
	sw      $zero, 0x0028($sp)         
	sw      t7, 0x001C($sp)            
	sw      t6, 0x0018($sp)            
	sw      $zero, 0x0014($sp)         
	addiu   a3, a3, %lo(var_8086DFCC)  ## a3 = 8086DFCC
	addiu   a2, a2, %lo(var_8086DFC0)  ## a2 = 8086DFC0
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8001E1D4              
	addiu   a1, $sp, 0x006C            ## a1 = FFFFFFF4
	lh      v0, 0x0188(s0)             ## 00000188
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    v0, $at, lbl_8086BAC4      
	addiu   $at, $zero, 0x0012         ## $at = 00000012
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3878          ## a1 = 00003878
	beq     $zero, $zero, lbl_8086BAC0 
	lh      v0, 0x0188(s0)             ## 00000188
lbl_8086BA68:
	bne     v1, v0, lbl_8086BA84       
	slti    $at, v0, 0x0013            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8086AB58              
	or      a1, s1, $zero              ## a1 = 00000000
	beq     $zero, $zero, lbl_8086BAC0 
	lh      v0, 0x0188(s0)             ## 00000188
lbl_8086BA84:
	bne     $at, $zero, lbl_8086BAC0   
	subu    t4, v1, v0                 
	mtc1    t4, $f8                    ## $f8 = 0.00
	lui     $at, %hi(var_8086DFEC)     ## $at = 80870000
	lwc1    $f10, %lo(var_8086DFEC)($at) 
	cvt.s.w $f18, $f8                  
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f16                  ## $f16 = 5.00
	lwc1    $f6, 0x0028(s0)            ## 00000028
	mul.s   $f0, $f18, $f10            
	add.s   $f4, $f6, $f16             
	swc1    $f4, 0x0028(s0)            ## 00000028
	swc1    $f0, 0x0058(s0)            ## 00000058
	swc1    $f0, 0x0054(s0)            ## 00000054
	swc1    $f0, 0x0050(s0)            ## 00000050
lbl_8086BAC0:
	addiu   $at, $zero, 0x0012         ## $at = 00000012
lbl_8086BAC4:
	bne     v0, $at, lbl_8086BAD4      
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3877          ## a1 = 00003877
lbl_8086BAD4:
	lw      $ra, 0x004C($sp)           
	lw      s0, 0x0044($sp)            
	lw      s1, 0x0048($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0078           ## $sp = 00000000


func_8086BAE8:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beq     v0, $zero, lbl_8086BB28    
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	lh      t6, 0x00B6(s0)             ## 000000B6
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8086A6B0              
	sh      t6, 0x0032(s0)             ## 00000032
	addiu   t7, $zero, 0x0017          ## t7 = 00000017
	beq     $zero, $zero, lbl_8086BB40 
	sh      t7, 0x0188(s0)             ## 00000188
lbl_8086BB28:
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	jal     func_8006385C              
	lui     a2, 0x3F00                 ## a2 = 3F000000
	lh      t8, 0x00B6(s0)             ## 000000B6
	addiu   t9, t8, 0x1000             ## t9 = 00001000
	sh      t9, 0x00B6(s0)             ## 000000B6
lbl_8086BB40:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086BB54:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	lh      a1, 0x018C(s0)             ## 0000018C
	jal     func_80063704              
	addiu   a2, $zero, 0x071C          ## a2 = 0000071C
	beql    v0, $zero, lbl_8086BB94    
	lui     $at, 0x4348                ## $at = 43480000
	jal     func_8086A6B0              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, 0x4348                ## $at = 43480000
lbl_8086BB94:
	mtc1    $at, $f6                   ## $f6 = 200.00
	lwc1    $f4, 0x0090(s0)            ## 00000090
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_8086BBB8               
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8086A700              
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8086BBB8:
	jal     func_8086AF30              
	lw      a1, 0x0024($sp)            
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086BBD4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lbu     v0, 0x0184(a2)             ## 00000184
	beq     v0, $zero, lbl_8086BBF0    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sb      t6, 0x0184(a2)             ## 00000184
lbl_8086BBF0:
	lh      t7, 0x0032(a2)             ## 00000032
	or      a0, a2, $zero              ## a0 = 00000000
	addiu   t8, t7, 0x1000             ## t8 = 00001000
	sh      t8, 0x0032(a2)             ## 00000032
	jal     func_8086AF30              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	lui     $at, 0x4F80                ## $at = 4F800000
	addiu   a0, $zero, 0x0064          ## a0 = 00000064
	lbu     v0, 0x0184(a2)             ## 00000184
	addiu   a1, $zero, 0x0032          ## a1 = 00000032
	mtc1    v0, $f4                    ## $f4 = 0.00
	bgez    v0, lbl_8086BC34           
	cvt.s.w $f6, $f4                   
	mtc1    $at, $f8                   ## $f8 = 4294967000.00
	nop
	add.s   $f6, $f6, $f8              
lbl_8086BC34:
	lui     $at, 0x40FF                ## $at = 40FF0000
	mtc1    $at, $f10                  ## $f10 = 7.97
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	lui     $at, 0x4F00                ## $at = 4F000000
	mul.s   $f16, $f6, $f10            
	cfc1    t9, $f31                   
	ctc1    t0, $f31                   
	nop
	cvt.w.s $f18, $f16                 
	cfc1    t0, $f31                   
	nop
	andi    t0, t0, 0x0078             ## t0 = 00000000
	beql    t0, $zero, lbl_8086BCB4    
	mfc1    t0, $f18                   
	mtc1    $at, $f18                  ## $f18 = 2147484000.00
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	sub.s   $f18, $f16, $f18           
	ctc1    t0, $f31                   
	nop
	cvt.w.s $f18, $f18                 
	cfc1    t0, $f31                   
	nop
	andi    t0, t0, 0x0078             ## t0 = 00000000
	bne     t0, $zero, lbl_8086BCA8    
	nop
	mfc1    t0, $f18                   
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_8086BCC0 
	or      t0, t0, $at                ## t0 = 80000000
lbl_8086BCA8:
	beq     $zero, $zero, lbl_8086BCC0 
	addiu   t0, $zero, 0xFFFF          ## t0 = FFFFFFFF
	mfc1    t0, $f18                   
lbl_8086BCB4:
	nop
	bltz    t0, lbl_8086BCA8           
	nop
lbl_8086BCC0:
	ctc1    t9, $f31                   
	bne     v0, $zero, lbl_8086BCE0    
	sb      t0, 0x028D(a2)             ## 0000028D
	jal     func_80063BF0              
	sw      a2, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_8086A6B0              
	sh      v0, 0x018A(a0)             ## 0000018A
lbl_8086BCE0:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086BCF0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lbu     t6, 0x0184(a2)             ## 00000184
	lh      t8, 0x0032(a2)             ## 00000032
	or      a0, a2, $zero              ## a0 = 00000000
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	addiu   t9, t8, 0xF000             ## t9 = FFFFF000
	sb      t7, 0x0184(a2)             ## 00000184
	sh      t9, 0x0032(a2)             ## 00000032
	jal     func_8086AF30              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	lui     $at, 0x4F80                ## $at = 4F800000
	addiu   a0, $zero, 0x02BC          ## a0 = 000002BC
	lbu     v0, 0x0184(a2)             ## 00000184
	addiu   a1, $zero, 0x012C          ## a1 = 0000012C
	mtc1    v0, $f4                    ## $f4 = 0.00
	bgez    v0, lbl_8086BD4C           
	cvt.s.w $f6, $f4                   
	mtc1    $at, $f8                   ## $f8 = 4294967000.00
	nop
	add.s   $f6, $f6, $f8              
lbl_8086BD4C:
	lui     $at, 0x40FF                ## $at = 40FF0000
	mtc1    $at, $f10                  ## $f10 = 7.97
	addiu   t1, $zero, 0x0001          ## t1 = 00000001
	lui     $at, 0x4F00                ## $at = 4F000000
	mul.s   $f16, $f6, $f10            
	cfc1    t0, $f31                   
	ctc1    t1, $f31                   
	nop
	cvt.w.s $f18, $f16                 
	cfc1    t1, $f31                   
	nop
	andi    t1, t1, 0x0078             ## t1 = 00000000
	beql    t1, $zero, lbl_8086BDCC    
	mfc1    t1, $f18                   
	mtc1    $at, $f18                  ## $f18 = 2147484000.00
	addiu   t1, $zero, 0x0001          ## t1 = 00000001
	sub.s   $f18, $f16, $f18           
	ctc1    t1, $f31                   
	nop
	cvt.w.s $f18, $f18                 
	cfc1    t1, $f31                   
	nop
	andi    t1, t1, 0x0078             ## t1 = 00000000
	bne     t1, $zero, lbl_8086BDC0    
	nop
	mfc1    t1, $f18                   
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_8086BDD8 
	or      t1, t1, $at                ## t1 = 80000000
lbl_8086BDC0:
	beq     $zero, $zero, lbl_8086BDD8 
	addiu   t1, $zero, 0xFFFF          ## t1 = FFFFFFFF
	mfc1    t1, $f18                   
lbl_8086BDCC:
	nop
	bltz    t1, lbl_8086BDC0           
	nop
lbl_8086BDD8:
	ctc1    t0, $f31                   
	addiu   $at, $zero, 0x0020         ## $at = 00000020
	bne     v0, $at, lbl_8086BE00      
	sb      t1, 0x028D(a2)             ## 0000028D
	jal     func_80063BF0              
	sw      a2, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	sh      v0, 0x018A(a0)             ## 0000018A
	jal     func_8086A6B0              
	sb      $zero, 0x0184(a0)          ## 00000184
lbl_8086BE00:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086BE10:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lbu     a0, 0x0185(s0)             ## 00000185
	sll     a0, a0, 11                 
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lui     $at, 0x4040                ## $at = 40400000
	mtc1    $at, $f4                   ## $f4 = 3.00
	nop
	mul.s   $f6, $f0, $f4              
	swc1    $f6, 0x0024($sp)           
	jal     func_80063684              ## coss?
	lh      a0, 0x00B6(s0)             ## 000000B6
	lwc1    $f10, 0x0024($sp)          
	lwc1    $f8, 0x0024(s0)            ## 00000024
	lh      a0, 0x00B6(s0)             ## 000000B6
	mul.s   $f16, $f10, $f0            
	sub.s   $f18, $f8, $f16            
	jal     func_800636C4              ## sins?
	swc1    $f18, 0x0024(s0)           ## 00000024
	lwc1    $f6, 0x0024($sp)           
	lwc1    $f4, 0x002C(s0)            ## 0000002C
	lh      a1, 0x008A(s0)             ## 0000008A
	mul.s   $f10, $f6, $f0             
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addu    a1, a1, $at                
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	addiu   a2, $zero, 0x071C          ## a2 = 0000071C
	add.s   $f8, $f4, $f10             
	jal     func_80063704              
	swc1    $f8, 0x002C(s0)            ## 0000002C
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8086AF30              
	lw      a1, 0x002C($sp)            
	lh      t6, 0x0188(s0)             ## 00000188
	lui     $at, 0x437A                ## $at = 437A0000
	beql    t6, $zero, lbl_8086BEE4    
	lh      t7, 0x00B6(s0)             ## 000000B6
	mtc1    $at, $f16                  ## $f16 = 250.00
	lwc1    $f18, 0x0090(s0)           ## 00000090
	c.lt.s  $f16, $f18                 
	nop
	bc1fl   lbl_8086BEF4               
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t7, 0x00B6(s0)             ## 000000B6
lbl_8086BEE4:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8086A6B0              
	sh      t7, 0x0032(s0)             ## 00000032
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8086BEF4:
	jal     func_8002313C              
	addiu   a1, $zero, 0x3072          ## a1 = 00003072
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086BF10:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0030($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      a1, 0x003C($sp)            
	lh      v0, 0x0188(s0)             ## 00000188
	addiu   a1, s0, 0x0024             ## a1 = 00000024
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	beq     v0, $zero, lbl_8086BF3C    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x0188(s0)             ## 00000188
lbl_8086BF3C:
	lhu     t7, 0x0088(s0)             ## 00000088
	addiu   t1, $zero, 0x0001          ## t1 = 00000001
	addiu   t2, $zero, 0x000F          ## t2 = 0000000F
	andi    t8, t7, 0x0001             ## t8 = 00000000
	beq     t8, $zero, lbl_8086BFB0    
	addiu   t3, $zero, 0x000A          ## t3 = 0000000A
	lbu     t9, 0x0187(s0)             ## 00000187
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	addiu   v0, $zero, 0x0009          ## v0 = 00000009
	bne     t9, $at, lbl_8086BF70      
	nop
	beq     $zero, $zero, lbl_8086BF70 
	addiu   v0, $zero, 0x006E          ## v0 = 0000006E
lbl_8086BF70:
	sw      t0, 0x0010($sp)            
	sw      t1, 0x0014($sp)            
	sw      t2, 0x0018($sp)            
	sw      v0, 0x001C($sp)            
	sw      t3, 0x0020($sp)            
	lw      t4, 0x0294(s0)             ## 00000294
	lw      a0, 0x003C($sp)            
	lui     a2, 0x40C0                 ## a2 = 40C00000
	lw      t5, 0x001C(t4)             ## 0000001C
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_8001D29C              
	sw      t5, 0x0024($sp)            
	jal     func_8086AC24              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8086BFCC 
	nop
lbl_8086BFB0:
	lh      t6, 0x0188(s0)             ## 00000188
	bne     t6, $zero, lbl_8086BFCC    
	nop
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8086C000 
	lw      $ra, 0x0034($sp)           
lbl_8086BFCC:
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f0                   ## $f0 = 10.00
	addiu   t7, $zero, 0x0004          ## t7 = 00000004
	sw      t7, 0x0014($sp)            
	mfc1    a2, $f0                    
	mfc1    a3, $f0                    
	lw      a0, 0x003C($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_80021E6C              
	swc1    $f0, 0x0010($sp)           
	lw      $ra, 0x0034($sp)           
lbl_8086C000:
	lw      s0, 0x0030($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086C010:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lbu     t6, 0x028D(s0)             ## 0000028D
	addu    v0, t6, a1                 
	bgez    v0, lbl_8086C038           
	slti    $at, v0, 0x0100            
	beq     $zero, $zero, lbl_8086C04C 
	sb      $zero, 0x028D(s0)          ## 0000028D
lbl_8086C038:
	bne     $at, $zero, lbl_8086C048   
	or      v1, v0, $zero              ## v1 = 00000000
	beq     $zero, $zero, lbl_8086C048 
	addiu   v1, $zero, 0x00FF          ## v1 = 000000FF
lbl_8086C048:
	sb      v1, 0x028D(s0)             ## 0000028D
lbl_8086C04C:
	bgezl   a1, lbl_8086C0C4           
	lbu     t8, 0x028D(s0)             ## 0000028D
	lbu     t7, 0x028D(s0)             ## 0000028D
	lui     $at, %hi(var_8086DFF0)     ## $at = 80870000
	lwc1    $f14, %lo(var_8086DFF0)($at) 
	mtc1    t7, $f4                    ## $f4 = 0.00
	lui     $at, 0x4F80                ## $at = 4F800000
	bgez    t7, lbl_8086C07C           
	cvt.s.w $f12, $f4                  
	mtc1    $at, $f6                   ## $f6 = 4294967000.00
	nop
	add.s   $f12, $f12, $f6            
lbl_8086C07C:
	lui     $at, %hi(var_8086DFF4)     ## $at = 80870000
	lwc1    $f8, %lo(var_8086DFF4)($at) 
	lui     $at, %hi(var_8086DFF8)     ## $at = 80870000
	lwc1    $f10, %lo(var_8086DFF8)($at) 
	mul.s   $f2, $f12, $f8             
	lui     $at, %hi(var_8086DFFC)     ## $at = 80870000
	lwc1    $f18, %lo(var_8086DFFC)($at) 
	mul.s   $f16, $f10, $f2            
	nop
	mul.s   $f4, $f14, $f2             
	add.s   $f0, $f16, $f18            
	sub.s   $f6, $f14, $f4             
	swc1    $f0, 0x0058(s0)            ## 00000058
	swc1    $f0, 0x0050(s0)            ## 00000050
	add.s   $f8, $f6, $f14             
	beq     $zero, $zero, lbl_8086C118 
	swc1    $f8, 0x0054(s0)            ## 00000054
	lbu     t8, 0x028D(s0)             ## 0000028D
lbl_8086C0C4:
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f2                   ## $f2 = 1.00
	mtc1    t8, $f10                   ## $f10 = 0.00
	lui     $at, 0x4F80                ## $at = 4F800000
	bgez    t8, lbl_8086C0E8           
	cvt.s.w $f12, $f10                 
	mtc1    $at, $f16                  ## $f16 = 4294967000.00
	nop
	add.s   $f12, $f12, $f16           
lbl_8086C0E8:
	lui     $at, %hi(var_8086E000)     ## $at = 80870000
	lwc1    $f18, %lo(var_8086E000)($at) 
	lui     $at, %hi(var_8086E004)     ## $at = 80870000
	lwc1    $f4, 0x000C(s0)            ## 0000000C
	mul.s   $f0, $f12, $f18            
	swc1    $f0, 0x0058(s0)            ## 00000058
	swc1    $f0, 0x0054(s0)            ## 00000054
	swc1    $f0, 0x0050(s0)            ## 00000050
	lwc1    $f6, %lo(var_8086E004)($at) 
	mul.s   $f8, $f6, $f12             
	add.s   $f10, $f4, $f8             
	swc1    $f10, 0x0028(s0)           ## 00000028
lbl_8086C118:
	lw      v0, 0x0294(s0)             ## 00000294
	lui     $at, 0x4F80                ## $at = 4F800000
	lbu     t9, 0x0003(v0)             ## 00000003
	mtc1    t9, $f16                   ## $f16 = 0.00
	bgez    t9, lbl_8086C13C           
	cvt.s.w $f18, $f16                 
	mtc1    $at, $f6                   ## $f6 = 4294967000.00
	nop
	add.s   $f18, $f18, $f6            
lbl_8086C13C:
	mul.s   $f4, $f18, $f2             
	addiu   t1, $zero, 0x0001          ## t1 = 00000001
	lui     $at, 0x4F00                ## $at = 4F000000
	cfc1    t0, $f31                   
	ctc1    t1, $f31                   
	nop
	cvt.w.s $f8, $f4                   
	cfc1    t1, $f31                   
	nop
	andi    t1, t1, 0x0078             ## t1 = 00000000
	beql    t1, $zero, lbl_8086C1B4    
	mfc1    t1, $f8                    
	mtc1    $at, $f8                   ## $f8 = 2147484000.00
	addiu   t1, $zero, 0x0001          ## t1 = 00000001
	sub.s   $f8, $f4, $f8              
	ctc1    t1, $f31                   
	nop
	cvt.w.s $f8, $f8                   
	cfc1    t1, $f31                   
	nop
	andi    t1, t1, 0x0078             ## t1 = 00000000
	bne     t1, $zero, lbl_8086C1A8    
	nop
	mfc1    t1, $f8                    
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_8086C1C0 
	or      t1, t1, $at                ## t1 = 80000000
lbl_8086C1A8:
	beq     $zero, $zero, lbl_8086C1C0 
	addiu   t1, $zero, 0xFFFF          ## t1 = FFFFFFFF
	mfc1    t1, $f8                    
lbl_8086C1B4:
	nop
	bltz    t1, lbl_8086C1A8           
	nop
lbl_8086C1C0:
	sb      t1, 0x028A(s0)             ## 0000028A
	lbu     t2, 0x0004(v0)             ## 00000004
	ctc1    t0, $f31                   
	lui     $at, 0x4F80                ## $at = 4F800000
	mtc1    t2, $f10                   ## $f10 = 0.00
	bgez    t2, lbl_8086C1E8           
	cvt.s.w $f16, $f10                 
	mtc1    $at, $f6                   ## $f6 = 4294967000.00
	nop
	add.s   $f16, $f16, $f6            
lbl_8086C1E8:
	mul.s   $f18, $f16, $f2            
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	lui     $at, 0x4F00                ## $at = 4F000000
	cfc1    t3, $f31                   
	ctc1    t4, $f31                   
	nop
	cvt.w.s $f4, $f18                  
	cfc1    t4, $f31                   
	nop
	andi    t4, t4, 0x0078             ## t4 = 00000000
	beql    t4, $zero, lbl_8086C260    
	mfc1    t4, $f4                    
	mtc1    $at, $f4                   ## $f4 = 2147484000.00
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	sub.s   $f4, $f18, $f4             
	ctc1    t4, $f31                   
	nop
	cvt.w.s $f4, $f4                   
	cfc1    t4, $f31                   
	nop
	andi    t4, t4, 0x0078             ## t4 = 00000000
	bne     t4, $zero, lbl_8086C254    
	nop
	mfc1    t4, $f4                    
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_8086C26C 
	or      t4, t4, $at                ## t4 = 80000000
lbl_8086C254:
	beq     $zero, $zero, lbl_8086C26C 
	addiu   t4, $zero, 0xFFFF          ## t4 = FFFFFFFF
	mfc1    t4, $f4                    
lbl_8086C260:
	nop
	bltz    t4, lbl_8086C254           
	nop
lbl_8086C26C:
	sb      t4, 0x028B(s0)             ## 0000028B
	lbu     t5, 0x0005(v0)             ## 00000005
	ctc1    t3, $f31                   
	lui     $at, 0x4F80                ## $at = 4F800000
	mtc1    t5, $f8                    ## $f8 = 0.00
	bgez    t5, lbl_8086C294           
	cvt.s.w $f10, $f8                  
	mtc1    $at, $f6                   ## $f6 = 4294967000.00
	nop
	add.s   $f10, $f10, $f6            
lbl_8086C294:
	mul.s   $f16, $f10, $f2            
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	lui     $at, 0x4F00                ## $at = 4F000000
	cfc1    t6, $f31                   
	ctc1    t7, $f31                   
	nop
	cvt.w.s $f18, $f16                 
	cfc1    t7, $f31                   
	nop
	andi    t7, t7, 0x0078             ## t7 = 00000000
	beql    t7, $zero, lbl_8086C30C    
	mfc1    t7, $f18                   
	mtc1    $at, $f18                  ## $f18 = 2147484000.00
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	sub.s   $f18, $f16, $f18           
	ctc1    t7, $f31                   
	nop
	cvt.w.s $f18, $f18                 
	cfc1    t7, $f31                   
	nop
	andi    t7, t7, 0x0078             ## t7 = 00000000
	bne     t7, $zero, lbl_8086C300    
	nop
	mfc1    t7, $f18                   
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_8086C318 
	or      t7, t7, $at                ## t7 = 80000000
lbl_8086C300:
	beq     $zero, $zero, lbl_8086C318 
	addiu   t7, $zero, 0xFFFF          ## t7 = FFFFFFFF
	mfc1    t7, $f18                   
lbl_8086C30C:
	nop
	bltz    t7, lbl_8086C300           
	nop
lbl_8086C318:
	ctc1    t6, $f31                   
	lwc1    $f4, 0x0024(s0)            ## 00000024
	sb      t7, 0x028C(s0)             ## 0000028C
	lui     $at, %hi(var_8086E008)     ## $at = 80870000
	trunc.w.s $f8, $f4                   
	lwc1    $f4, %lo(var_8086E008)($at) 
	lwc1    $f6, 0x0028(s0)            ## 00000028
	lwc1    $f16, 0x002C(s0)           ## 0000002C
	mfc1    a1, $f8                    
	mul.s   $f8, $f12, $f4             
	lbu     t1, 0x0003(v0)             ## 00000003
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	sw      t1, 0x0010($sp)            
	lbu     t2, 0x0004(v0)             ## 00000004
	trunc.w.s $f10, $f6                  
	addiu   a0, s0, 0x029C             ## a0 = 0000029C
	sw      t2, 0x0014($sp)            
	trunc.w.s $f18, $f16                 
	mfc1    a2, $f10                   
	lbu     t3, 0x0005(v0)             ## 00000005
	trunc.w.s $f6, $f8                   
	mfc1    a3, $f18                   
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	mfc1    t5, $f6                    
	sll     a3, a3, 16                 
	sra     a3, a3, 16                 
	sw      t3, 0x0018($sp)            
	jal     func_80065BCC              
	sw      t5, 0x001C($sp)            
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086C3A8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f6                   ## $f6 = 2.00
	lwc1    $f4, 0x000C(a0)            ## 0000000C
	addiu   a1, $zero, 0x0014          ## a1 = 00000014
	add.s   $f8, $f4, $f6              
	swc1    $f8, 0x000C(a0)            ## 0000000C
	jal     func_8086C010              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	addiu   $at, $zero, 0x00FF         ## $at = 000000FF
	lbu     t6, 0x028D(a0)             ## 0000028D
	bnel    t6, $at, lbl_8086C3F4      
	lw      $ra, 0x0014($sp)           
	jal     func_8086AD10              
	lw      a1, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
lbl_8086C3F4:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086C400:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	or      a3, a1, $zero              ## a3 = 00000000
	lh      v0, 0x0188(s0)             ## 00000188
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, a3, $zero              ## a1 = 00000000
	beq     v0, $zero, lbl_8086C42C    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x0188(s0)             ## 00000188
lbl_8086C42C:
	jal     func_80022930              
	sw      a3, 0x0034($sp)            
	beq     v0, $zero, lbl_8086C46C    
	lw      a3, 0x0034($sp)            
	lh      t7, 0x001C(s0)             ## 0000001C
	slti    $at, t7, 0x0002            
	bne     $at, $zero, lbl_8086C45C   
	nop
	jal     func_8086AF1C              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8086C60C 
	lw      $ra, 0x002C($sp)           
lbl_8086C45C:
	jal     func_8086AEF4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8086C60C 
	lw      $ra, 0x002C($sp)           
lbl_8086C46C:
	lh      t8, 0x0188(s0)             ## 00000188
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    t8, $zero, lbl_8086C4A0    
	lbu     t1, 0x02BE(s0)             ## 000002BE
	jal     func_8086AEA8              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lw      t9, 0x0004(s0)             ## 00000004
	lui     $at, 0xFFFE                ## $at = FFFE0000
	ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
	and     t0, t9, $at                
	beq     $zero, $zero, lbl_8086C608 
	sw      t0, 0x0004(s0)             ## 00000004
	lbu     t1, 0x02BE(s0)             ## 000002BE
lbl_8086C4A0:
	lui     $at, 0xFFFE                ## $at = FFFE0000
	or      a0, s0, $zero              ## a0 = 00000000
	andi    t2, t1, 0x0002             ## t2 = 00000000
	beq     t2, $zero, lbl_8086C4D4    
	ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
	lw      t3, 0x0004(s0)             ## 00000004
	lui     $at, 0x0001                ## $at = 00010000
	or      a1, a3, $zero              ## a1 = 00000000
	or      t4, t3, $at                ## t4 = 00010000
	jal     func_80022A90              
	sw      t4, 0x0004(s0)             ## 00000004
	beq     $zero, $zero, lbl_8086C4FC 
	lbu     a0, 0x0185(s0)             ## 00000185
lbl_8086C4D4:
	lw      t5, 0x0004(s0)             ## 00000004
	or      a0, a3, $zero              ## a0 = 00000000
	addiu   a2, s0, 0x02AC             ## a2 = 000002AC
	and     t6, t5, $at                
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	sw      t6, 0x0004(s0)             ## 00000004
	jal     func_8004C130              ## CollisionCheck_setOT
	addu    a1, a3, $at                
	lbu     a0, 0x0185(s0)             ## 00000185
lbl_8086C4FC:
	sll     a0, a0, 11                 
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f4                   ## $f4 = 5.00
	lwc1    $f8, 0x000C(s0)            ## 0000000C
	lbu     v0, 0x0185(s0)             ## 00000185
	mul.s   $f6, $f0, $f4              
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f18                  ## $f18 = 20.00
	addiu   t8, $zero, 0x0020          ## t8 = 00000020
	addiu   t7, v0, 0xFFFF             ## t7 = FFFFFFFF
	add.s   $f10, $f6, $f8             
	beq     v0, $zero, lbl_8086C544    
	swc1    $f10, 0x0028(s0)           ## 00000028
	sb      t7, 0x0185(s0)             ## 00000185
	andi    v0, t7, 0x00FF             ## v0 = 000000FF
lbl_8086C544:
	bnel    v0, $zero, lbl_8086C554    
	lwc1    $f16, 0x0028(s0)           ## 00000028
	sb      t8, 0x0185(s0)             ## 00000185
	lwc1    $f16, 0x0028(s0)           ## 00000028
lbl_8086C554:
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a1, 0xC120                 ## a1 = C1200000
	sub.s   $f4, $f16, $f18            
	trunc.w.s $f6, $f4                   
	mfc1    t0, $f6                    
	jal     func_80020F04              
	sh      t0, 0x02F4(s0)             ## 000002F4
	lw      v0, 0x0294(s0)             ## 00000294
	lwc1    $f8, 0x0024(s0)            ## 00000024
	lwc1    $f16, 0x0028(s0)           ## 00000028
	lbu     t4, 0x0003(v0)             ## 00000003
	lwc1    $f4, 0x002C(s0)            ## 0000002C
	trunc.w.s $f10, $f8                  
	sw      t4, 0x0010($sp)            
	lbu     t5, 0x0004(v0)             ## 00000004
	trunc.w.s $f18, $f16                 
	mfc1    a1, $f10                   
	sw      t5, 0x0014($sp)            
	lbu     t6, 0x0005(v0)             ## 00000005
	trunc.w.s $f6, $f4                   
	mfc1    a2, $f18                   
	sw      t6, 0x0018($sp)            
	lbu     t7, 0x028D(s0)             ## 0000028D
	mfc1    a3, $f6                    
	sll     a1, a1, 16                 
	mtc1    t7, $f8                    ## $f8 = 0.00
	sll     a2, a2, 16                 
	sll     a3, a3, 16                 
	sra     a3, a3, 16                 
	sra     a2, a2, 16                 
	sra     a1, a1, 16                 
	addiu   a0, s0, 0x029C             ## a0 = 0000029C
	bgez    t7, lbl_8086C5EC           
	cvt.s.w $f10, $f8                  
	lui     $at, 0x4F80                ## $at = 4F800000
	mtc1    $at, $f16                  ## $f16 = 4294967000.00
	nop
	add.s   $f10, $f10, $f16           
lbl_8086C5EC:
	lui     $at, %hi(var_8086E00C)     ## $at = 80870000
	lwc1    $f18, %lo(var_8086E00C)($at) 
	mul.s   $f4, $f10, $f18            
	trunc.w.s $f6, $f4                   
	mfc1    t9, $f6                    
	jal     func_80065BCC              
	sw      t9, 0x001C($sp)            
lbl_8086C608:
	lw      $ra, 0x002C($sp)           
lbl_8086C60C:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086C61C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	addiu   a1, $zero, 0xFFF3          ## a1 = FFFFFFF3
	jal     func_8086C010              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	lbu     t6, 0x028D(a0)             ## 0000028D
	bnel    t6, $zero, lbl_8086C650    
	lw      $ra, 0x0014($sp)           
	jal     func_80020EB4              
	nop
	lw      $ra, 0x0014($sp)           
lbl_8086C650:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086C65C:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lhu     t6, 0x010E(s0)             ## 0000010E
	addiu   $at, $zero, 0x5005         ## $at = 00005005
	addiu   a1, $zero, 0xFFF3          ## a1 = FFFFFFF3
	beq     t6, $at, lbl_8086C694      
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8086C010              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8086C6A0 
	lw      a0, 0x0024($sp)            
lbl_8086C694:
	jal     func_8002313C              
	addiu   a1, $zero, 0x31E8          ## a1 = 000031E8
	lw      a0, 0x0024($sp)            
lbl_8086C6A0:
	jal     func_800DD464              
	addiu   a0, a0, 0x20D8             ## a0 = 000020D8
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	bne     v0, $at, lbl_8086C75C      
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_800D6110              
	lw      a0, 0x0024($sp)            
	beq     v0, $zero, lbl_8086C774    
	addiu   a0, s0, 0x00E4             ## a0 = 000000E4
	jal     func_800C95C4              
	addiu   a1, $zero, 0x31E8          ## a1 = 000031E8
	lw      t7, 0x0024($sp)            
	lui     t8, 0x0001                 ## t8 = 00010000
	addiu   t1, $zero, 0x5007          ## t1 = 00005007
	addu    t8, t8, t7                 
	lbu     t8, 0x04BD(t8)             ## 000104BD
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x38EC          ## a1 = 000038EC
	bne     t8, $zero, lbl_8086C740    
	nop
	jal     func_80071A94              
	nop
	beq     v0, $zero, lbl_8086C728    
	addiu   t0, $zero, 0x5006          ## t0 = 00005006
	addiu   t9, $zero, 0x5008          ## t9 = 00005008
	sh      t9, 0x010E(s0)             ## 0000010E
	lw      a0, 0x0024($sp)            
	jal     func_8006FDCC              
	addiu   a1, $zero, 0x0020          ## a1 = 00000020
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3883          ## a1 = 00003883
	beq     $zero, $zero, lbl_8086C74C 
	lw      a0, 0x0024($sp)            
lbl_8086C728:
	sh      t0, 0x010E(s0)             ## 0000010E
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x38EC          ## a1 = 000038EC
	beq     $zero, $zero, lbl_8086C74C 
	lw      a0, 0x0024($sp)            
lbl_8086C740:
	jal     func_80022FD0              
	sh      t1, 0x010E(s0)             ## 0000010E
	lw      a0, 0x0024($sp)            
lbl_8086C74C:
	jal     func_800DCE80              
	lhu     a1, 0x010E(s0)             ## 0000010E
	beq     $zero, $zero, lbl_8086C778 
	lw      $ra, 0x001C($sp)           
lbl_8086C75C:
	jal     func_80022AD0              
	lw      a1, 0x0024($sp)            
	beq     v0, $zero, lbl_8086C774    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8086AEA8              
	or      a1, $zero, $zero           ## a1 = 00000000
lbl_8086C774:
	lw      $ra, 0x001C($sp)           
lbl_8086C778:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086C788:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s1, 0x0018($sp)            
	sw      s0, 0x0014($sp)            
	or      s0, a1, $zero              ## s0 = 00000000
	or      s1, a0, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8002313C              
	addiu   a1, $zero, 0x31E8          ## a1 = 000031E8
	jal     func_800DD464              
	addiu   a0, s0, 0x20D8             ## a0 = 000020D8
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	bne     v0, $at, lbl_8086C868      
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_800D6110              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_8086C8A0    
	lui     t6, 0x0001                 ## t6 = 00010000
	addu    t6, t6, s0                 
	lbu     t6, 0x04BD(t6)             ## 000104BD
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    t6, $zero, lbl_8086C82C    
	lh      t9, 0x001C(s1)             ## 0000001C
	jal     func_8002049C              
	addiu   a1, $zero, 0x000B          ## a1 = 0000000B
	bne     v0, $zero, lbl_8086C80C    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8002049C              
	addiu   a1, $zero, 0x000A          ## a1 = 0000000A
	bne     v0, $zero, lbl_8086C80C    
	addiu   t7, $zero, 0x5010          ## t7 = 00005010
	beq     $zero, $zero, lbl_8086C814 
	sh      t7, 0x010E(s1)             ## 0000010E
lbl_8086C80C:
	addiu   t8, $zero, 0x5014          ## t8 = 00005014
	sh      t8, 0x010E(s1)             ## 0000010E
lbl_8086C814:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_800DCE80              
	lhu     a1, 0x010E(s1)             ## 0000010E
	beq     $zero, $zero, lbl_8086C8A4 
	lw      $ra, 0x001C($sp)           
	lh      t9, 0x001C(s1)             ## 0000001C
lbl_8086C82C:
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	addiu   a1, $zero, 0x000B          ## a1 = 0000000B
	bne     t9, $at, lbl_8086C84C      
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_800204D0              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8086C858 
	or      a0, s1, $zero              ## a0 = 00000000
lbl_8086C84C:
	jal     func_800204D0              
	addiu   a1, $zero, 0x000A          ## a1 = 0000000A
	or      a0, s1, $zero              ## a0 = 00000000
lbl_8086C858:
	jal     func_8086AEA8              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	beq     $zero, $zero, lbl_8086C8A4 
	lw      $ra, 0x001C($sp)           
lbl_8086C868:
	jal     func_80022AD0              
	or      a1, s0, $zero              ## a1 = 00000000
	beql    v0, $zero, lbl_8086C8A4    
	lw      $ra, 0x001C($sp)           
	lhu     t0, 0x010E(s1)             ## 0000010E
	addiu   $at, $zero, 0x5000         ## $at = 00005000
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    t0, $at, lbl_8086C898      
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_800204D0              
	addiu   a1, $zero, 0x0009          ## a1 = 00000009
	or      a0, s1, $zero              ## a0 = 00000000
lbl_8086C898:
	jal     func_8086AEA8              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
lbl_8086C8A0:
	lw      $ra, 0x001C($sp)           
lbl_8086C8A4:
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_8086C8B4:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lbu     v0, 0x02BD(s0)             ## 000002BD
	andi    t6, v0, 0x0002             ## t6 = 00000000
	beql    t6, $zero, lbl_8086C93C    
	lw      $ra, 0x001C($sp)           
	lbu     t8, 0x00B1(s0)             ## 000000B1
	andi    t7, v0, 0xFFFD             ## t7 = 00000000
	sb      t7, 0x02BD(s0)             ## 000002BD
	bne     t8, $zero, lbl_8086C8F8    
	nop
	lbu     t9, 0x00B0(s0)             ## 000000B0
	beql    t9, $zero, lbl_8086C93C    
	lw      $ra, 0x001C($sp)           
lbl_8086C8F8:
	jal     func_80028390              
	or      a0, s0, $zero              ## a0 = 00000000
	bne     v0, $zero, lbl_8086C928    
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a0, 0x0024($sp)            
	jal     func_80025B4C              
	or      a1, s0, $zero              ## a1 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3876          ## a1 = 00003876
	beq     $zero, $zero, lbl_8086C930 
	nop
lbl_8086C928:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3875          ## a1 = 00003875
lbl_8086C930:
	jal     func_8086A7D0              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x001C($sp)           
lbl_8086C93C:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086C94C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lw      v0, 0x0180(a0)             ## 00000180
	lui     t6, %hi(func_8086BCF0)     ## t6 = 80870000
	addiu   t6, t6, %lo(func_8086BCF0) ## t6 = 8086BCF0
	beq     t6, v0, lbl_8086CAAC       
	lui     t7, %hi(func_8086BBD4)     ## t7 = 80870000
	addiu   t7, t7, %lo(func_8086BBD4) ## t7 = 8086BBD4
	beq     t7, v0, lbl_8086CAAC       
	lui     t8, %hi(func_8086B4AC)     ## t8 = 80870000
	addiu   t8, t8, %lo(func_8086B4AC) ## t8 = 8086B4AC
	beq     t8, v0, lbl_8086CAAC       
	lui     t9, %hi(func_8086B62C)     ## t9 = 80870000
	addiu   t9, t9, %lo(func_8086B62C) ## t9 = 8086B62C
	beql    t9, v0, lbl_8086CAB0       
	lw      $ra, 0x0014($sp)           
	lh      v0, 0x018A(a0)             ## 0000018A
	beq     v0, $zero, lbl_8086C99C    
	addiu   t0, v0, 0xFFFF             ## t0 = FFFFFFFF
	sh      t0, 0x018A(a0)             ## 0000018A
lbl_8086C99C:
	lbu     v0, 0x028D(a0)             ## 0000028D
	addiu   $at, $zero, 0x00FF         ## $at = 000000FF
	bne     v0, $at, lbl_8086CA58      
	nop
	lbu     t1, 0x010C(a0)             ## 0000010C
	beql    t1, $zero, lbl_8086C9E8    
	sb      $zero, 0x0184(a0)          ## 00000184
	lbu     t2, 0x0184(a0)             ## 00000184
	addiu   t4, $zero, 0x0014          ## t4 = 00000014
	addiu   t3, t2, 0x0001             ## t3 = 00000001
	andi    v0, t3, 0x00FF             ## v0 = 00000001
	slti    $at, v0, 0x0015            
	bne     $at, $zero, lbl_8086C9DC   
	sb      t3, 0x0184(a0)             ## 00000184
	beq     $zero, $zero, lbl_8086C9E8 
	sb      t4, 0x0184(a0)             ## 00000184
lbl_8086C9DC:
	beq     $zero, $zero, lbl_8086C9E8 
	sb      v0, 0x0184(a0)             ## 00000184
	sb      $zero, 0x0184(a0)          ## 00000184
lbl_8086C9E8:
	lbu     t5, 0x0184(a0)             ## 00000184
	addiu   $at, $zero, 0x0014         ## $at = 00000014
	beql    t5, $at, lbl_8086CA08      
	lw      v0, 0x0180(a0)             ## 00000180
	lh      t6, 0x018A(a0)             ## 0000018A
	bnel    t6, $zero, lbl_8086CAB0    
	lw      $ra, 0x0014($sp)           
	lw      v0, 0x0180(a0)             ## 00000180
lbl_8086CA08:
	lui     t7, %hi(func_8086B034)     ## t7 = 80870000
	addiu   t7, t7, %lo(func_8086B034) ## t7 = 8086B034
	beq     t7, v0, lbl_8086CA48       
	lui     t8, %hi(func_8086B0F0)     ## t8 = 80870000
	addiu   t8, t8, %lo(func_8086B0F0) ## t8 = 8086B0F0
	beq     t8, v0, lbl_8086CA48       
	lui     t9, %hi(func_8086B20C)     ## t9 = 80870000
	addiu   t9, t9, %lo(func_8086B20C) ## t9 = 8086B20C
	beq     t9, v0, lbl_8086CA48       
	lui     t0, %hi(func_8086BE10)     ## t0 = 80870000
	addiu   t0, t0, %lo(func_8086BE10) ## t0 = 8086BE10
	beq     t0, v0, lbl_8086CA48       
	lui     t1, %hi(func_8086BB54)     ## t1 = 80870000
	addiu   t1, t1, %lo(func_8086BB54) ## t1 = 8086BB54
	bnel    t1, v0, lbl_8086CAB0       
	lw      $ra, 0x0014($sp)           
lbl_8086CA48:
	jal     func_8086AAB4              
	nop
	beq     $zero, $zero, lbl_8086CAB0 
	lw      $ra, 0x0014($sp)           
lbl_8086CA58:
	bnel    v0, $zero, lbl_8086CAB0    
	lw      $ra, 0x0014($sp)           
	lh      t2, 0x018A(a0)             ## 0000018A
	bnel    t2, $zero, lbl_8086CAB0    
	lw      $ra, 0x0014($sp)           
	lw      v0, 0x0180(a0)             ## 00000180
	lui     t3, %hi(func_8086B034)     ## t3 = 80870000
	addiu   t3, t3, %lo(func_8086B034) ## t3 = 8086B034
	beq     t3, v0, lbl_8086CAA4       
	lui     t4, %hi(func_8086B0F0)     ## t4 = 80870000
	addiu   t4, t4, %lo(func_8086B0F0) ## t4 = 8086B0F0
	beq     t4, v0, lbl_8086CAA4       
	lui     t5, %hi(func_8086B20C)     ## t5 = 80870000
	addiu   t5, t5, %lo(func_8086B20C) ## t5 = 8086B20C
	beq     t5, v0, lbl_8086CAA4       
	lui     t6, %hi(func_8086BB54)     ## t6 = 80870000
	addiu   t6, t6, %lo(func_8086BB54) ## t6 = 8086BB54
	bnel    t6, v0, lbl_8086CAB0       
	lw      $ra, 0x0014($sp)           
lbl_8086CAA4:
	jal     func_8086AB0C              
	nop
lbl_8086CAAC:
	lw      $ra, 0x0014($sp)           
lbl_8086CAB0:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086CABC:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x0034($sp)            
	lw      a0, 0x0034($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x17A4           ## $at = 000117A4
	lb      a1, 0x0186(s0)             ## 00000186
	jal     func_80081688              
	addu    a0, a0, $at                
	beq     v0, $zero, lbl_8086CBF4    
	lui     t7, %hi(func_8086CFA8)     ## t7 = 80870000
	lb      t6, 0x0186(s0)             ## 00000186
	addiu   t7, t7, %lo(func_8086CFA8) ## t7 = 8086CFA8
	sw      t7, 0x0130(s0)             ## 00000130
	sb      t6, 0x001E(s0)             ## 0000001E
	lw      a0, 0x0034($sp)            
	jal     func_80020FA4              
	or      a1, s0, $zero              ## a1 = 00000000
	lbu     t8, 0x0187(s0)             ## 00000187
	lw      a0, 0x0034($sp)            
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	bne     t8, $zero, lbl_8086CB64    
	lui     a2, 0x0600                 ## a2 = 06000000
	lui     a2, 0x0600                 ## a2 = 06000000
	lui     a3, 0x0600                 ## a3 = 06000000
	addiu   t9, s0, 0x018E             ## t9 = 0000018E
	addiu   t0, s0, 0x020C             ## t0 = 0000020C
	addiu   t1, $zero, 0x0015          ## t1 = 00000015
	sw      t1, 0x0018($sp)            
	sw      t0, 0x0014($sp)            
	sw      t9, 0x0010($sp)            
	addiu   a3, a3, 0x0A60             ## a3 = 06000A60
	addiu   a2, a2, 0x50D0             ## a2 = 060050D0
	lw      a0, 0x0034($sp)            
	jal     func_8008C684              
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	lui     t2, %hi(func_8086D46C)     ## t2 = 80870000
	addiu   t2, t2, %lo(func_8086D46C) ## t2 = 8086D46C
	beq     $zero, $zero, lbl_8086CBDC 
	sw      t2, 0x0134(s0)             ## 00000134
lbl_8086CB64:
	lui     a3, 0x0600                 ## a3 = 06000000
	addiu   t3, s0, 0x018E             ## t3 = 0000018E
	addiu   t4, s0, 0x020C             ## t4 = 0000020C
	addiu   t5, $zero, 0x000C          ## t5 = 0000000C
	sw      t5, 0x0018($sp)            
	sw      t4, 0x0014($sp)            
	sw      t3, 0x0010($sp)            
	addiu   a3, a3, 0x09DC             ## a3 = 060009DC
	jal     func_8008C788              
	addiu   a2, a2, 0x6F90             ## a2 = 00006F90
	lw      t8, 0x0314(s0)             ## 00000314
	lui     t6, %hi(func_8086D68C)     ## t6 = 80870000
	addiu   t6, t6, %lo(func_8086D68C) ## t6 = 8086D68C
	sw      t6, 0x0134(s0)             ## 00000134
	addiu   t7, $zero, 0x0009          ## t7 = 00000009
	sb      t7, 0x003C(t8)             ## 0000003C
	lw      v1, 0x0314(s0)             ## 00000314
	addiu   t1, $zero, 0xC000          ## t1 = FFFFC000
	addiu   t3, $zero, 0x0014          ## t3 = 00000014
	lh      t9, 0x002A(v1)             ## 0000002A
	addiu   t4, $zero, 0x0037          ## t4 = 00000037
	addiu   t5, $zero, 0x000F          ## t5 = 0000000F
	subu    t0, $zero, t9              
	sh      t0, 0x002A(v1)             ## 0000002A
	sh      t1, 0x0032(s0)             ## 00000032
	lh      t2, 0x0032(s0)             ## 00000032
	sh      t3, 0x02EC(s0)             ## 000002EC
	sh      t4, 0x02EE(s0)             ## 000002EE
	sh      t5, 0x02F0(s0)             ## 000002F0
	sh      t2, 0x00B6(s0)             ## 000000B6
lbl_8086CBDC:
	lw      t6, 0x0004(s0)             ## 00000004
	addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
	or      a0, s0, $zero              ## a0 = 00000000
	and     t7, t6, $at                
	jal     func_8086A920              
	sw      t7, 0x0004(s0)             ## 00000004
lbl_8086CBF4:
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086CC08:
	lw      v0, 0x0180(a0)             ## 00000180
	lui     t6, %hi(func_8086B370)     ## t6 = 80870000
	addiu   t6, t6, %lo(func_8086B370) ## t6 = 8086B370
	bne     t6, v0, lbl_8086CC9C       
	lui     t9, %hi(func_8086BE10)     ## t9 = 80870000
	lbu     v0, 0x028A(a0)             ## 0000028A
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	addiu   t8, $zero, 0x0032          ## t8 = 00000032
	addiu   v0, v0, 0x0005             ## v0 = 00000005
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x0100            
	bnel    $at, $zero, lbl_8086CC4C   
	sb      v0, 0x028A(a0)             ## 0000028A
	beq     $zero, $zero, lbl_8086CC4C 
	sb      t7, 0x028A(a0)             ## 0000028A
	sb      v0, 0x028A(a0)             ## 0000028A
lbl_8086CC4C:
	lbu     v0, 0x028B(a0)             ## 0000028B
	addiu   v0, v0, 0xFFFB             ## v0 = 00000000
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x0032            
	beql    $at, $zero, lbl_8086CC74   
	sb      v0, 0x028B(a0)             ## 0000028B
	beq     $zero, $zero, lbl_8086CC74 
	sb      t8, 0x028B(a0)             ## 0000028B
	sb      v0, 0x028B(a0)             ## 0000028B
lbl_8086CC74:
	lbu     v0, 0x028C(a0)             ## 0000028C
	addiu   v0, v0, 0xFFFB             ## v0 = FFFFFFFB
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	bgez    v0, lbl_8086CC94           
	nop
	jr      $ra                        
	sb      $zero, 0x028C(a0)          ## 0000028C
lbl_8086CC94:
	jr      $ra                        
	sb      v0, 0x028C(a0)             ## 0000028C
lbl_8086CC9C:
	addiu   t9, t9, %lo(func_8086BE10) ## t9 = 8086BE10
	bne     t9, v0, lbl_8086CD2C       
	lui     t3, %hi(func_8086B440)     ## t3 = 80870000
	lbu     v0, 0x028A(a0)             ## 0000028A
	addiu   t0, $zero, 0x0050          ## t0 = 00000050
	addiu   t1, $zero, 0x00FF          ## t1 = 000000FF
	addiu   v0, v0, 0x0005             ## v0 = 00000000
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x0051            
	bne     $at, $zero, lbl_8086CCD4   
	addiu   t2, $zero, 0x00E1          ## t2 = 000000E1
	beq     $zero, $zero, lbl_8086CCD8 
	sb      t0, 0x028A(a0)             ## 0000028A
lbl_8086CCD4:
	sb      v0, 0x028A(a0)             ## 0000028A
lbl_8086CCD8:
	lbu     v0, 0x028B(a0)             ## 0000028B
	addiu   v0, v0, 0x0005             ## v0 = 00000005
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x0100            
	bnel    $at, $zero, lbl_8086CD00   
	sb      v0, 0x028B(a0)             ## 0000028B
	beq     $zero, $zero, lbl_8086CD00 
	sb      t1, 0x028B(a0)             ## 0000028B
	sb      v0, 0x028B(a0)             ## 0000028B
lbl_8086CD00:
	lbu     v0, 0x028C(a0)             ## 0000028C
	addiu   v0, v0, 0x0005             ## v0 = 0000000A
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x00E2            
	bne     $at, $zero, lbl_8086CD24   
	nop
	jr      $ra                        
	sb      t2, 0x028C(a0)             ## 0000028C
lbl_8086CD24:
	jr      $ra                        
	sb      v0, 0x028C(a0)             ## 0000028C
lbl_8086CD2C:
	addiu   t3, t3, %lo(func_8086B440) ## t3 = 8086B440
	bnel    t3, v0, lbl_8086CD74       
	lbu     v0, 0x028A(a0)             ## 0000028A
	lbu     t4, 0x0114(a0)             ## 00000114
	addiu   t6, $zero, 0x0050          ## t6 = 00000050
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	andi    t5, t4, 0x0002             ## t5 = 00000000
	beq     t5, $zero, lbl_8086CD60    
	addiu   t8, $zero, 0x00E1          ## t8 = 000000E1
	sb      $zero, 0x028A(a0)          ## 0000028A
	sb      $zero, 0x028B(a0)          ## 0000028B
	jr      $ra                        
	sb      $zero, 0x028C(a0)          ## 0000028C
lbl_8086CD60:
	sb      t6, 0x028A(a0)             ## 0000028A
	sb      t7, 0x028B(a0)             ## 0000028B
	jr      $ra                        
	sb      t8, 0x028C(a0)             ## 0000028C
lbl_8086CD70:
	lbu     v0, 0x028A(a0)             ## 0000028A
lbl_8086CD74:
	addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
	addiu   t0, $zero, 0x00FF          ## t0 = 000000FF
	addiu   v0, v0, 0x0005             ## v0 = 0000000F
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x0100            
	bnel    $at, $zero, lbl_8086CDA0   
	sb      v0, 0x028A(a0)             ## 0000028A
	beq     $zero, $zero, lbl_8086CDA0 
	sb      t9, 0x028A(a0)             ## 0000028A
	sb      v0, 0x028A(a0)             ## 0000028A
lbl_8086CDA0:
	lbu     v0, 0x028B(a0)             ## 0000028B
	addiu   v0, v0, 0x0005             ## v0 = 00000014
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x0100            
	bnel    $at, $zero, lbl_8086CDC8   
	sb      v0, 0x028B(a0)             ## 0000028B
	beq     $zero, $zero, lbl_8086CDC8 
	sb      t0, 0x028B(a0)             ## 0000028B
	sb      v0, 0x028B(a0)             ## 0000028B
lbl_8086CDC8:
	lbu     v1, 0x028C(a0)             ## 0000028C
	slti    $at, v1, 0x00D3            
	bne     $at, $zero, lbl_8086CE00   
	addiu   v0, v1, 0x0005             ## v0 = 00000005
	addiu   v0, v1, 0xFFFB             ## v0 = FFFFFFFB
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x00D2            
	beq     $at, $zero, lbl_8086CDF8   
	addiu   t1, $zero, 0x00D2          ## t1 = 000000D2
	jr      $ra                        
	sb      t1, 0x028C(a0)             ## 0000028C
lbl_8086CDF8:
	jr      $ra                        
	sb      v0, 0x028C(a0)             ## 0000028C
lbl_8086CE00:
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x00D3            
	bne     $at, $zero, lbl_8086CE1C   
	addiu   t2, $zero, 0x00D2          ## t2 = 000000D2
	jr      $ra                        
	sb      t2, 0x028C(a0)             ## 0000028C
lbl_8086CE1C:
	sb      v0, 0x028C(a0)             ## 0000028C
	jr      $ra                        
	nop


func_8086CE28:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lw      v0, 0x0180(a0)             ## 00000180
	lui     t6, %hi(func_8086B4AC)     ## t6 = 80870000
	addiu   t6, t6, %lo(func_8086B4AC) ## t6 = 8086B4AC
	beq     t6, v0, lbl_8086CE4C       
	lui     t7, %hi(func_8086B62C)     ## t7 = 80870000
	addiu   t7, t7, %lo(func_8086B62C) ## t7 = 8086B62C
	bne     t7, v0, lbl_8086CF30       
lbl_8086CE4C:
	lui     $at, 0x4140                ## $at = 41400000
	mtc1    $at, $f4                   ## $f4 = 12.00
	lwc1    $f0, 0x0154(a0)            ## 00000154
	lui     $at, %hi(var_8086E010)     ## $at = 80870000
	c.lt.s  $f0, $f4                   
	nop
	bc1f    lbl_8086CF30               
	nop
	lwc1    $f6, %lo(var_8086E010)($at) 
	lui     $at, %hi(var_8086E014)     ## $at = 80870000
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	mul.s   $f8, $f0, $f6              
	trunc.w.s $f10, $f8                  
	mfc1    v0, $f10                   
	nop
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	addiu   v0, v0, 0x0037             ## v0 = 00000037
	sb      v0, 0x0290(a0)             ## 00000290
	sb      v0, 0x028F(a0)             ## 0000028F
	sb      v0, 0x028E(a0)             ## 0000028E
	lwc1    $f16, %lo(var_8086E014)($at) 
	lui     $at, 0x4F00                ## $at = 4F000000
	mul.s   $f18, $f0, $f16            
	cfc1    t9, $f31                   
	ctc1    t0, $f31                   
	nop
	cvt.w.s $f4, $f18                  
	cfc1    t0, $f31                   
	nop
	andi    t0, t0, 0x0078             ## t0 = 00000000
	beql    t0, $zero, lbl_8086CF18    
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
	bne     t0, $zero, lbl_8086CF0C    
	nop
	mfc1    t0, $f4                    
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_8086CF24 
	or      t0, t0, $at                ## t0 = 80000000
lbl_8086CF0C:
	beq     $zero, $zero, lbl_8086CF24 
	addiu   t0, $zero, 0xFFFF          ## t0 = FFFFFFFF
	mfc1    t0, $f4                    
lbl_8086CF18:
	nop
	bltz    t0, lbl_8086CF0C           
	nop
lbl_8086CF24:
	ctc1    t9, $f31                   
	beq     $zero, $zero, lbl_8086CF98 
	sb      t0, 0x0291(a0)             ## 00000291
lbl_8086CF30:
	jal     func_800CDCCC              ## Rand.Next() float
	sw      a0, 0x0018($sp)            
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f6                   ## $f6 = 30.00
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f16                  ## $f16 = 100.00
	mul.s   $f8, $f0, $f6              
	lui     $at, 0x4320                ## $at = 43200000
	mtc1    $at, $f6                   ## $f6 = 160.00
	mul.s   $f18, $f0, $f16            
	lw      a0, 0x0018($sp)            
	addiu   t6, $zero, 0x00C8          ## t6 = 000000C8
	sb      t6, 0x0291(a0)             ## 00000291
	trunc.w.s $f10, $f8                  
	mul.s   $f8, $f0, $f6              
	mfc1    t4, $f10                   
	trunc.w.s $f4, $f18                  
	addiu   t5, t4, 0x00E1             ## t5 = 000000E1
	sb      t5, 0x028E(a0)             ## 0000028E
	trunc.w.s $f10, $f8                  
	mfc1    t9, $f4                    
	mfc1    t4, $f10                   
	addiu   t0, t9, 0x009B             ## t0 = 0000009B
	sb      t0, 0x028F(a0)             ## 0000028F
	addiu   t5, t4, 0x005F             ## t5 = 0000005F
	sb      t5, 0x0290(a0)             ## 00000290
lbl_8086CF98:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086CFA8:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      s1, 0x0020($sp)            
	sw      s0, 0x001C($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x0024($sp)           
	lbu     v0, 0x0308(s0)             ## 00000308
	andi    t6, v0, 0x0002             ## t6 = 00000000
	beq     t6, $zero, lbl_8086CFDC    
	andi    t7, v0, 0xFFFD             ## t7 = 00000000
	sb      t7, 0x0308(s0)             ## 00000308
	jal     func_8086AA10              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8086CFDC:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8086C8B4              
	or      a1, s1, $zero              ## a1 = 00000000
	jal     func_8086C94C              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t9, 0x0180(s0)             ## 00000180
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, s1, $zero              ## a1 = 00000000
	jalr    $ra, t9                    
	nop
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t0, 0x0180(s0)             ## 00000180
	lui     t8, %hi(func_8086B370)     ## t8 = 80870000
	addiu   t8, t8, %lo(func_8086B370) ## t8 = 8086B370
	bnel    t8, t0, lbl_8086D05C       
	lui     $at, 0x0001                ## $at = 00010000
	lh      t1, 0x0188(s0)             ## 00000188
	or      a0, s1, $zero              ## a0 = 00000000
	slti    $at, t1, 0x000A            
	beql    $at, $zero, lbl_8086D05C   
	lui     $at, 0x0001                ## $at = 00010000
	lw      t2, 0x0004(s0)             ## 00000004
	lui     $at, 0x0100                ## $at = 01000000
	addiu   a2, s0, 0x02F8             ## a2 = 000002F8
	or      t3, t2, $at                ## t3 = 01000000
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	sw      t3, 0x0004(s0)             ## 00000004
	jal     func_8004BD50              ## CollisionCheck_setAT
	addu    a1, s1, $at                
	lui     $at, 0x0001                ## $at = 00010000
lbl_8086D05C:
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	addu    t4, s1, $at                
	addiu   a1, s0, 0x02AC             ## a1 = 000002AC
	addiu   t5, s0, 0x02F8             ## t5 = 000002F8
	sw      t5, 0x0030($sp)            
	sw      a1, 0x002C($sp)            
	sw      t4, 0x0034($sp)            
	jal     func_80050B00              
	or      a0, s0, $zero              ## a0 = 00000000
	lbu     t6, 0x02BD(s0)             ## 000002BD
	andi    t7, t6, 0x0001             ## t7 = 00000000
	beql    t7, $zero, lbl_8086D0B0    
	or      a0, s1, $zero              ## a0 = 00000000
	lbu     t9, 0x028D(s0)             ## 0000028D
	addiu   $at, $zero, 0x00FF         ## $at = 000000FF
	or      a0, s1, $zero              ## a0 = 00000000
	bne     t9, $at, lbl_8086D0AC      
	lw      a1, 0x0034($sp)            
	jal     func_8004BF40              ## CollisionCheck_setAC
	lw      a2, 0x002C($sp)            
lbl_8086D0AC:
	or      a0, s1, $zero              ## a0 = 00000000
lbl_8086D0B0:
	lw      a1, 0x0034($sp)            
	jal     func_8004C130              ## CollisionCheck_setOT
	lw      a2, 0x002C($sp)            
	or      a0, s1, $zero              ## a0 = 00000000
	lw      a1, 0x0034($sp)            
	jal     func_8004C130              ## CollisionCheck_setOT
	lw      a2, 0x0030($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80020F04              
	lui     a1, 0x4228                 ## a1 = 42280000
	lw      v0, 0x0180(s0)             ## 00000180
	lui     t8, %hi(func_8086B440)     ## t8 = 80870000
	addiu   t8, t8, %lo(func_8086B440) ## t8 = 8086B440
	beq     t8, v0, lbl_8086D120       
	lui     t0, %hi(func_8086BAE8)     ## t0 = 80870000
	addiu   t0, t0, %lo(func_8086BAE8) ## t0 = 8086BAE8
	beq     t0, v0, lbl_8086D120       
	lui     t1, %hi(func_8086BE10)     ## t1 = 80870000
	addiu   t1, t1, %lo(func_8086BE10) ## t1 = 8086BE10
	bnel    t1, v0, lbl_8086D11C       
	lh      t4, 0x0032(s0)             ## 00000032
	lh      t2, 0x0032(s0)             ## 00000032
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addu    t3, t2, $at                
	beq     $zero, $zero, lbl_8086D120 
	sh      t3, 0x00B6(s0)             ## 000000B6
	lh      t4, 0x0032(s0)             ## 00000032
lbl_8086D11C:
	sh      t4, 0x00B6(s0)             ## 000000B6
lbl_8086D120:
	lwc1    $f4, 0x0024(s0)            ## 00000024
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f8                   ## $f8 = 20.00
	swc1    $f4, 0x003C($sp)           
	lwc1    $f6, 0x0028(s0)            ## 00000028
	addiu   t5, $sp, 0x003C            ## t5 = FFFFFFEC
	addiu   a0, s1, 0x07C0             ## a0 = 000007C0
	add.s   $f10, $f6, $f8             
	addiu   a1, s0, 0x0078             ## a1 = 00000078
	addiu   a2, $sp, 0x0038            ## a2 = FFFFFFE8
	or      a3, s0, $zero              ## a3 = 00000000
	swc1    $f10, 0x0040($sp)          
	lwc1    $f16, 0x002C(s0)           ## 0000002C
	sw      t5, 0x0010($sp)            
	jal     func_8002F4B8              ## Raycast
	swc1    $f16, 0x0044($sp)          
	swc1    $f0, 0x0080(s0)            ## 00000080
	jal     func_8086CE28              
	or      a0, s0, $zero              ## a0 = 00000000
	lbu     t6, 0x028D(s0)             ## 0000028D
	sb      t6, 0x00C8(s0)             ## 000000C8
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000


func_8086D188:
	sw      a0, 0x0000($sp)            
	lw      a0, 0x0014($sp)            
	sw      a3, 0x000C($sp)            
	lbu     t6, 0x028D(a0)             ## 0000028D
	or      v0, $zero, $zero           ## v0 = 00000000
	beq     t6, $zero, lbl_8086D1D8    
	nop
	lw      t7, 0x0294(a0)             ## 00000294
	lbu     t8, 0x0006(t7)             ## 00000006
	beq     a1, t8, lbl_8086D1D8       
	nop
	lw      t0, 0x0180(a0)             ## 00000180
	lui     t9, %hi(func_8086B6D0)     ## t9 = 80870000
	addiu   t9, t9, %lo(func_8086B6D0) ## t9 = 8086B6D0
	bnel    t9, t0, lbl_8086D1E4       
	lh      t2, 0x001C(a0)             ## 0000001C
	lh      t1, 0x0188(a0)             ## 00000188
	slti    $at, t1, 0x0002            
	bnel    $at, $zero, lbl_8086D1E4   
	lh      t2, 0x001C(a0)             ## 0000001C
lbl_8086D1D8:
	beq     $zero, $zero, lbl_8086D200 
	sw      $zero, 0x0000(a2)          ## 00000000
	lh      t2, 0x001C(a0)             ## 0000001C
lbl_8086D1E4:
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bne     t2, $at, lbl_8086D200      
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
	bne     a1, $at, lbl_8086D200      
	lui     t3, 0x0600                 ## t3 = 06000000
	addiu   t3, t3, 0x4638             ## t3 = 06004638
	sw      t3, 0x0000(a2)             ## 00000000
lbl_8086D200:
	addiu   $at, $zero, 0x0013         ## $at = 00000013
	bne     a1, $at, lbl_8086D274      
	nop
	lbu     t4, 0x0187(a0)             ## 00000187
	lw      v1, 0x0018($sp)            
	bne     t4, $zero, lbl_8086D274    
	nop
	lw      a1, 0x0000(v1)             ## 00000000
	lui     t6, 0xE700                 ## t6 = E7000000
	addiu   t5, a1, 0x0008             ## t5 = 00000008
	sw      t5, 0x0000(v1)             ## 00000000
	sw      $zero, 0x0004(a1)          ## 00000004
	sw      t6, 0x0000(a1)             ## 00000000
	lw      a1, 0x0000(v1)             ## 00000000
	lui     t8, 0xFB00                 ## t8 = FB000000
	addiu   t7, a1, 0x0008             ## t7 = 00000008
	sw      t7, 0x0000(v1)             ## 00000000
	sw      t8, 0x0000(a1)             ## 00000000
	lbu     t3, 0x028B(a0)             ## 0000028B
	lbu     t0, 0x028A(a0)             ## 0000028A
	lbu     t7, 0x028C(a0)             ## 0000028C
	lbu     t2, 0x028D(a0)             ## 0000028D
	sll     t4, t3, 16                 
	sll     t1, t0, 24                 
	or      t5, t1, t4                 ## t5 = 00000000
	sll     t8, t7,  8                 
	or      t9, t5, t8                 ## t9 = FB000000
	or      t3, t9, t2                 ## t3 = FB000000
	sw      t3, 0x0004(a1)             ## 00000004
lbl_8086D274:
	jr      $ra                        
	nop


func_8086D27C:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s0, 0x0028($sp)            
	lw      s0, 0x0058($sp)            
	sw      $ra, 0x002C($sp)           
	sw      a0, 0x0048($sp)            
	sw      a1, 0x004C($sp)            
	sw      a2, 0x0050($sp)            
	sw      a3, 0x0054($sp)            
	lw      a0, 0x004C($sp)            
	jal     func_80050CE4              
	addiu   a1, s0, 0x02F8             ## a1 = 000002F8
	lw      t6, 0x0180(s0)             ## 00000180
	lui     t0, %hi(func_8086B6D0)     ## t0 = 80870000
	addiu   t0, t0, %lo(func_8086B6D0) ## t0 = 8086B6D0
	bnel    t0, t6, lbl_8086D344       
	lw      t1, 0x0294(s0)             ## 00000294
	lh      t7, 0x0188(s0)             ## 00000188
	slti    $at, t7, 0x0002            
	bnel    $at, $zero, lbl_8086D344   
	lw      t1, 0x0294(s0)             ## 00000294
	lw      t9, 0x0294(s0)             ## 00000294
	lw      t8, 0x004C($sp)            
	lw      a2, 0x005C($sp)            
	lbu     t1, 0x0007(t9)             ## 00000007
	bnel    t8, t1, lbl_8086D344       
	lw      t1, 0x0294(s0)             ## 00000294
	lw      v1, 0x0000(a2)             ## 00000000
	lui     t3, 0xDA38                 ## t3 = DA380000
	ori     t3, t3, 0x0003             ## t3 = DA380003
	addiu   t2, v1, 0x0008             ## t2 = 00000008
	sw      t2, 0x0000(a2)             ## 00000000
	sw      t3, 0x0000(v1)             ## 00000000
	lw      t4, 0x0048($sp)            
	lw      a0, 0x0000(t4)             ## 00000000
	sw      t0, 0x0034($sp)            
	jal     func_800AB900              
	sw      v1, 0x0040($sp)            
	lw      a1, 0x0040($sp)            
	lw      a2, 0x005C($sp)            
	lw      t0, 0x0034($sp)            
	sw      v0, 0x0004(a1)             ## 00000004
	lw      v1, 0x0000(a2)             ## 00000000
	lui     t6, 0xDE00                 ## t6 = DE000000
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x0000(a2)             ## 00000000
	sw      t6, 0x0000(v1)             ## 00000000
	lw      t7, 0x0294(s0)             ## 00000294
	lw      t9, 0x0020(t7)             ## 00000020
	sw      t9, 0x0004(v1)             ## 00000004
	lw      t1, 0x0294(s0)             ## 00000294
lbl_8086D344:
	lw      t8, 0x004C($sp)            
	lbu     t2, 0x0006(t1)             ## 00000006
	bnel    t8, t2, lbl_8086D45C       
	lw      $ra, 0x002C($sp)           
	lw      t3, 0x0180(s0)             ## 00000180
	bnel    t0, t3, lbl_8086D3B0       
	addiu   a0, s0, 0x0358             ## a0 = 00000358
	lh      t4, 0x0188(s0)             ## 00000188
	slti    $at, t4, 0x0013            
	bnel    $at, $zero, lbl_8086D3B0   
	addiu   a0, s0, 0x0358             ## a0 = 00000358
	lwc1    $f0, 0x0050(s0)            ## 00000050
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     $at, %hi(var_8086E018)     ## $at = 80870000
	c.eq.s  $f4, $f0                   
	nop
	bc1tl   lbl_8086D3B0               
	addiu   a0, s0, 0x0358             ## a0 = 00000358
	lwc1    $f6, %lo(var_8086E018)($at) 
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	sw      t0, 0x0034($sp)            
	div.s   $f12, $f6, $f0             
	mfc1    a2, $f12                   
	jal     func_800AA8FC              
	mov.s   $f14, $f12                 
	lw      t0, 0x0034($sp)            
	addiu   a0, s0, 0x0358             ## a0 = 00000358
lbl_8086D3B0:
	jal     func_800AA740              
	sw      t0, 0x0034($sp)            
	lw      t0, 0x0034($sp)            
	lw      t5, 0x0180(s0)             ## 00000180
	bnel    t0, t5, lbl_8086D3F4       
	lw      v0, 0x0314(s0)             ## 00000314
	lh      t6, 0x0188(s0)             ## 00000188
	addiu   $at, $zero, 0x001B         ## $at = 0000001B
	bnel    t6, $at, lbl_8086D3F4      
	lw      v0, 0x0314(s0)             ## 00000314
	lwc1    $f8, 0x0388(s0)            ## 00000388
	lwc1    $f10, 0x038C(s0)           ## 0000038C
	lwc1    $f16, 0x0390(s0)           ## 00000390
	swc1    $f8, 0x0024(s0)            ## 00000024
	swc1    $f10, 0x0028(s0)           ## 00000028
	swc1    $f16, 0x002C(s0)           ## 0000002C
	lw      v0, 0x0314(s0)             ## 00000314
lbl_8086D3F4:
	lbu     t7, 0x028E(s0)             ## 0000028E
	addiu   a0, s0, 0x029C             ## a0 = 0000029C
	lh      a1, 0x0030(v0)             ## 00000030
	lh      a2, 0x0032(v0)             ## 00000032
	lh      a3, 0x0034(v0)             ## 00000034
	sw      t7, 0x0010($sp)            
	lbu     t9, 0x028F(s0)             ## 0000028F
	lui     $at, 0x4F80                ## $at = 4F800000
	sw      t9, 0x0014($sp)            
	lbu     t1, 0x0290(s0)             ## 00000290
	sw      t1, 0x0018($sp)            
	lbu     t8, 0x0291(s0)             ## 00000291
	mtc1    t8, $f18                   ## $f18 = 0.00
	bgez    t8, lbl_8086D43C           
	cvt.s.w $f4, $f18                  
	mtc1    $at, $f6                   ## $f6 = 4294967000.00
	nop
	add.s   $f4, $f4, $f6              
lbl_8086D43C:
	lui     $at, %hi(var_8086E01C)     ## $at = 80870000
	lwc1    $f8, %lo(var_8086E01C)($at) 
	mul.s   $f10, $f4, $f8             
	trunc.w.s $f16, $f10                 
	mfc1    t3, $f16                   
	jal     func_80065C30              
	sw      t3, 0x001C($sp)            
	lw      $ra, 0x002C($sp)           
lbl_8086D45C:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086D46C:
	addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
	sw      s2, 0x0030($sp)            
	sw      s1, 0x002C($sp)            
	or      s1, a0, $zero              ## s1 = 00000000
	or      s2, a1, $zero              ## s2 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      s0, 0x0028($sp)            
	lw      s0, 0x0000(s2)             ## 00000000
	jal     func_8086CC08              
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8007E298              
	lw      a0, 0x0000(s2)             ## 00000000
	jal     func_8007E2C0              
	lw      a0, 0x0000(s2)             ## 00000000
	lbu     v0, 0x028D(s1)             ## 0000028D
	addiu   $at, $zero, 0x00FF         ## $at = 000000FF
	or      a0, s2, $zero              ## a0 = 00000000
	beq     v0, $at, lbl_8086D4C0      
	lui     a3, %hi(func_8086D188)     ## a3 = 80870000
	bne     v0, $zero, lbl_8086D554    
	lui     t7, 0xDB06                 ## t7 = DB060000
lbl_8086D4C0:
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t7, 0xFB00                 ## t7 = FB000000
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s0)             ## 000002C0
	sw      t7, 0x0000(v1)             ## 00000000
	lbu     t3, 0x028B(s1)             ## 0000028B
	lbu     t9, 0x028A(s1)             ## 0000028A
	lbu     t7, 0x028C(s1)             ## 0000028C
	sll     t4, t3, 16                 
	lbu     t3, 0x028D(s1)             ## 0000028D
	sll     t1, t9, 24                 
	or      t5, t1, t4                 ## t5 = 00000000
	sll     t8, t7,  8                 
	or      t9, t5, t8                 ## t9 = 00000000
	or      t1, t9, t3                 ## t1 = 00000000
	sw      t1, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t6, 0xDB06                 ## t6 = DB060000
	lui     t7, 0x800F                 ## t7 = 800F0000
	addiu   t4, v1, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(s0)             ## 000002C0
	addiu   t7, t7, 0x8520             ## t7 = 800E8520
	ori     t6, t6, 0x0020             ## t6 = DB060020
	sw      t6, 0x0000(v1)             ## 00000000
	sw      t7, 0x0004(v1)             ## 00000004
	lw      a1, 0x0140(s1)             ## 00000140
	lw      a2, 0x015C(s1)             ## 0000015C
	lui     t5, %hi(func_8086D27C)     ## t5 = 80870000
	addiu   t5, t5, %lo(func_8086D27C) ## t5 = 8086D27C
	sw      t5, 0x0010($sp)            
	sw      s1, 0x0014($sp)            
	lw      t8, 0x02C0(s0)             ## 000002C0
	addiu   a3, a3, %lo(func_8086D188) ## a3 = 8086D188
	jal     func_8008A414              
	sw      t8, 0x0018($sp)            
	beq     $zero, $zero, lbl_8086D5CC 
	sw      v0, 0x02C0(s0)             ## 000002C0
lbl_8086D554:
	lw      v0, 0x02D0(s0)             ## 000002D0
	lui     t9, 0xFB00                 ## t9 = FB000000
	addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
	addiu   t2, v0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02D0(s0)             ## 000002D0
	sw      t9, 0x0000(v0)             ## 00000000
	lbu     t1, 0x028D(s1)             ## 0000028D
	ori     t7, t7, 0x0020             ## t7 = 00000020
	or      a0, s2, $zero              ## a0 = 00000000
	or      t4, t1, $at                ## t4 = FFFFFF00
	sw      t4, 0x0004(v0)             ## 00000004
	lw      v0, 0x02D0(s0)             ## 000002D0
	lui     t5, 0x800F                 ## t5 = 800F0000
	addiu   t5, t5, 0x8510             ## t5 = 800E8510
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s0)             ## 000002D0
	sw      t5, 0x0004(v0)             ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      a1, 0x0140(s1)             ## 00000140
	lw      a2, 0x015C(s1)             ## 0000015C
	lui     t8, %hi(func_8086D27C)     ## t8 = 80870000
	addiu   t8, t8, %lo(func_8086D27C) ## t8 = 8086D27C
	sw      t8, 0x0010($sp)            
	sw      s1, 0x0014($sp)            
	lw      t2, 0x02D0(s0)             ## 000002D0
	lui     a3, %hi(func_8086D188)     ## a3 = 80870000
	addiu   a3, a3, %lo(func_8086D188) ## a3 = 8086D188
	jal     func_8008A414              
	sw      t2, 0x0018($sp)            
	sw      v0, 0x02D0(s0)             ## 000002D0
lbl_8086D5CC:
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t3, 0xE700                 ## t3 = E7000000
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t3, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t4, 0xFB00                 ## t4 = FB000000
	addiu   t1, v1, 0x0008             ## t1 = 00000008
	sw      t1, 0x02C0(s0)             ## 000002C0
	sw      t4, 0x0000(v1)             ## 00000000
	lbu     t2, 0x028F(s1)             ## 0000028F
	lbu     t7, 0x028E(s1)             ## 0000028E
	lbu     t4, 0x0290(s1)             ## 00000290
	sll     t9, t2, 16                 
	sll     t5, t7, 24                 
	or      t3, t5, t9                 ## t3 = 00000008
	sll     t6, t4,  8                 
	or      t7, t3, t6                 ## t7 = 00000008
	ori     t8, t7, 0x00FF             ## t8 = 000000FF
	sw      t8, 0x0004(v1)             ## 00000004
	jal     func_800AA764              
	addiu   a0, s1, 0x0358             ## a0 = 00000358
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t5, 0xDA38                 ## t5 = DA380000
	ori     t5, t5, 0x0003             ## t5 = DA380003
	addiu   t2, v1, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(s0)             ## 000002C0
	sw      t5, 0x0000(v1)             ## 00000000
	lw      a0, 0x0000(s2)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x0038($sp)            
	lw      a1, 0x0038($sp)            
	sw      v0, 0x0004(a1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t1, 0xDE00                 ## t1 = DE000000
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(s0)             ## 000002C0
	sw      t1, 0x0000(v1)             ## 00000000
	lw      t4, 0x0294(s1)             ## 00000294
	lw      t3, 0x001C(t4)             ## 0000001C
	sw      t3, 0x0004(v1)             ## 00000004
	lw      $ra, 0x0034($sp)           
	lw      s0, 0x0028($sp)            
	lw      s1, 0x002C($sp)            
	lw      s2, 0x0030($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0060           ## $sp = 00000000


func_8086D68C:
	addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
	sw      s3, 0x0030($sp)            
	sw      s2, 0x002C($sp)            
	or      s2, a0, $zero              ## s2 = 00000000
	or      s3, a1, $zero              ## s3 = 00000000
	sw      $ra, 0x003C($sp)           
	sw      s5, 0x0038($sp)            
	sw      s4, 0x0034($sp)            
	sw      s1, 0x0028($sp)            
	sw      s0, 0x0024($sp)            
	lw      s1, 0x0000(s3)             ## 00000000
	jal     func_8086CC08              
	or      a0, s2, $zero              ## a0 = 00000000
	lh      t6, 0x001C(s2)             ## 0000001C
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	bne     t6, $at, lbl_8086D6E0      
	lui     s5, %hi(var_8086DFAC)      ## s5 = 80870000
	lui     s4, %hi(var_8086DFB4)      ## s4 = 80870000
	addiu   s5, s5, %lo(var_8086DFAC)  ## s5 = 8086DFAC
	beq     $zero, $zero, lbl_8086D6F0 
	addiu   s4, s4, %lo(var_8086DFB4)  ## s4 = 8086DFB4
lbl_8086D6E0:
	lui     s5, %hi(var_8086DFB0)      ## s5 = 80870000
	lui     s4, %hi(var_8086DFB8)      ## s4 = 80870000
	addiu   s5, s5, %lo(var_8086DFB0)  ## s5 = 8086DFB0
	addiu   s4, s4, %lo(var_8086DFB8)  ## s4 = 8086DFB8
lbl_8086D6F0:
	lbu     v0, 0x028D(s2)             ## 0000028D
	addiu   $at, $zero, 0x00FF         ## $at = 000000FF
	beq     v0, $at, lbl_8086D708      
	nop
	bne     v0, $zero, lbl_8086D834    
	nop
lbl_8086D708:
	jal     func_8007E298              
	lw      a0, 0x0000(s3)             ## 00000000
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t8, 0xDB06                 ## t8 = DB060000
	ori     t8, t8, 0x0020             ## t8 = DB060020
	addiu   t7, s0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s1)             ## 000002C0
	sw      t8, 0x0000(s0)             ## 00000000
	lbu     t9, 0x028D(s2)             ## 0000028D
	lbu     a3, 0x028C(s2)             ## 0000028C
	lbu     a2, 0x028B(s2)             ## 0000028B
	lbu     a1, 0x028A(s2)             ## 0000028A
	lw      a0, 0x0000(s3)             ## 00000000
	sw      s0, 0x0058($sp)            
	jal     func_8007EE04              
	sw      t9, 0x0010($sp)            
	lw      v1, 0x0058($sp)            
	sw      v0, 0x0004(v1)             ## 00000004
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t3, 0xDB06                 ## t3 = DB060000
	ori     t3, t3, 0x0028             ## t3 = DB060028
	addiu   t2, s0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(s1)             ## 000002C0
	sw      t3, 0x0000(s0)             ## 00000000
	lbu     t4, 0x028D(s2)             ## 0000028D
	lbu     a3, 0x0002(s5)             ## 8086DFB2
	lbu     a2, 0x0001(s5)             ## 8086DFB1
	lbu     a1, 0x0000(s5)             ## 8086DFB0
	lw      a0, 0x0000(s3)             ## 00000000
	sw      s0, 0x0054($sp)            
	jal     func_8007EE04              
	sw      t4, 0x0010($sp)            
	lw      t0, 0x0054($sp)            
	sw      v0, 0x0004(t0)             ## 00000004
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t6, 0xDB06                 ## t6 = DB060000
	ori     t6, t6, 0x002C             ## t6 = DB06002C
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s1)             ## 000002C0
	sw      t6, 0x0000(s0)             ## 00000000
	lbu     t7, 0x028D(s2)             ## 0000028D
	lbu     a3, 0x0002(s4)             ## 8086DFBA
	lbu     a2, 0x0001(s4)             ## 8086DFB9
	lbu     a1, 0x0000(s4)             ## 8086DFB8
	lw      a0, 0x0000(s3)             ## 00000000
	sw      s0, 0x0050($sp)            
	jal     func_8007EE04              
	sw      t7, 0x0010($sp)            
	lw      t1, 0x0050($sp)            
	lui     t9, 0xDB06                 ## t9 = DB060000
	ori     t9, t9, 0x0030             ## t9 = DB060030
	sw      v0, 0x0004(t1)             ## 00000004
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t2, 0x800F                 ## t2 = 800F0000
	addiu   t2, t2, 0x8520             ## t2 = 800E8520
	addiu   t8, s0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s1)             ## 000002C0
	sw      t2, 0x0004(s0)             ## 00000004
	sw      t9, 0x0000(s0)             ## 00000000
	lw      a1, 0x0140(s2)             ## 00000140
	lw      a2, 0x015C(s2)             ## 0000015C
	lbu     a3, 0x013E(s2)             ## 0000013E
	lui     t3, %hi(func_8086D188)     ## t3 = 80870000
	lui     t4, %hi(func_8086D27C)     ## t4 = 80870000
	addiu   t4, t4, %lo(func_8086D27C) ## t4 = 8086D27C
	addiu   t3, t3, %lo(func_8086D188) ## t3 = 8086D188
	sw      t3, 0x0010($sp)            
	sw      t4, 0x0014($sp)            
	sw      s2, 0x0018($sp)            
	lw      t5, 0x02C0(s1)             ## 000002C0
	or      a0, s3, $zero              ## a0 = 00000000
	jal     func_8008A88C              
	sw      t5, 0x001C($sp)            
	beq     $zero, $zero, lbl_8086D964 
	sw      v0, 0x02C0(s1)             ## 000002C0
lbl_8086D834:
	jal     func_8007E298              
	lw      a0, 0x0000(s3)             ## 00000000
	jal     func_8007E2C0              
	lw      a0, 0x0000(s3)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t7, 0xDB06                 ## t7 = DB060000
	ori     t7, t7, 0x0020             ## t7 = DB060020
	addiu   t6, s0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s1)             ## 000002D0
	sw      t7, 0x0000(s0)             ## 00000000
	lbu     t8, 0x028D(s2)             ## 0000028D
	lbu     a3, 0x028C(s2)             ## 0000028C
	lbu     a2, 0x028B(s2)             ## 0000028B
	lbu     a1, 0x028A(s2)             ## 0000028A
	lw      a0, 0x0000(s3)             ## 00000000
	sw      s0, 0x0048($sp)            
	jal     func_8007EE04              
	sw      t8, 0x0010($sp)            
	lw      v1, 0x0048($sp)            
	sw      v0, 0x0004(v1)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t2, 0xDB06                 ## t2 = DB060000
	ori     t2, t2, 0x0028             ## t2 = DB060028
	addiu   t9, s0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s1)             ## 000002D0
	sw      t2, 0x0000(s0)             ## 00000000
	lbu     t3, 0x028D(s2)             ## 0000028D
	lbu     a3, 0x0002(s5)             ## 8086DFB2
	lbu     a2, 0x0001(s5)             ## 8086DFB1
	lbu     a1, 0x0000(s5)             ## 8086DFB0
	lw      a0, 0x0000(s3)             ## 00000000
	sw      s0, 0x0044($sp)            
	jal     func_8007EE04              
	sw      t3, 0x0010($sp)            
	lw      t0, 0x0044($sp)            
	sw      v0, 0x0004(t0)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t5, 0xDB06                 ## t5 = DB060000
	ori     t5, t5, 0x002C             ## t5 = DB06002C
	addiu   t4, s0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02D0(s1)             ## 000002D0
	sw      t5, 0x0000(s0)             ## 00000000
	lbu     t6, 0x028D(s2)             ## 0000028D
	lbu     a3, 0x0002(s4)             ## 8086DFBA
	lbu     a2, 0x0001(s4)             ## 8086DFB9
	lbu     a1, 0x0000(s4)             ## 8086DFB8
	lw      a0, 0x0000(s3)             ## 00000000
	sw      s0, 0x0040($sp)            
	jal     func_8007EE04              
	sw      t6, 0x0010($sp)            
	lw      t1, 0x0040($sp)            
	lui     t8, 0xDB06                 ## t8 = DB060000
	ori     t8, t8, 0x0030             ## t8 = DB060030
	sw      v0, 0x0004(t1)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t9, 0x800F                 ## t9 = 800F0000
	addiu   t9, t9, 0x8510             ## t9 = 800E8510
	addiu   t7, s0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s1)             ## 000002D0
	sw      t9, 0x0004(s0)             ## 00000004
	sw      t8, 0x0000(s0)             ## 00000000
	lw      a1, 0x0140(s2)             ## 00000140
	lw      a2, 0x015C(s2)             ## 0000015C
	lbu     a3, 0x013E(s2)             ## 0000013E
	lui     t2, %hi(func_8086D188)     ## t2 = 80870000
	lui     t3, %hi(func_8086D27C)     ## t3 = 80870000
	addiu   t3, t3, %lo(func_8086D27C) ## t3 = 8086D27C
	addiu   t2, t2, %lo(func_8086D188) ## t2 = 8086D188
	sw      t2, 0x0010($sp)            
	sw      t3, 0x0014($sp)            
	sw      s2, 0x0018($sp)            
	lw      t4, 0x02D0(s1)             ## 000002D0
	or      a0, s3, $zero              ## a0 = 00000000
	jal     func_8008A88C              
	sw      t4, 0x001C($sp)            
	sw      v0, 0x02D0(s1)             ## 000002D0
lbl_8086D964:
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t6, 0xE700                 ## t6 = E7000000
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s1)             ## 000002C0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t6, 0x0000(s0)             ## 00000000
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t8, 0xFB00                 ## t8 = FB000000
	addiu   t7, s0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s1)             ## 000002C0
	sw      t8, 0x0000(s0)             ## 00000000
	lbu     t2, 0x028E(s2)             ## 0000028E
	lbu     t5, 0x028F(s2)             ## 0000028F
	lbu     t9, 0x0290(s2)             ## 00000290
	sll     t3, t2, 24                 
	sll     t6, t5, 16                 
	or      t7, t3, t6                 ## t7 = E7000000
	sll     t2, t9,  8                 
	or      t4, t7, t2                 ## t4 = E7000000
	ori     t5, t4, 0x00FF             ## t5 = E70000FF
	sw      t5, 0x0004(s0)             ## 00000004
	jal     func_800AA764              
	addiu   a0, s2, 0x0358             ## a0 = 00000358
	lw      s4, 0x02C0(s1)             ## 000002C0
	lui     t6, 0xDA38                 ## t6 = DA380000
	ori     t6, t6, 0x0003             ## t6 = DA380003
	addiu   t3, s4, 0x0008             ## t3 = 8086DFC0
	sw      t3, 0x02C0(s1)             ## 000002C0
	sw      t6, 0x0000(s4)             ## 8086DFB8
	jal     func_800AB900              
	lw      a0, 0x0000(s3)             ## 00000000
	lui     a3, 0xDE00                 ## a3 = DE000000
	sw      v0, 0x0004(s4)             ## 8086DFBC
	lw      s0, 0x02C0(s1)             ## 000002C0
	addiu   t8, s0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s1)             ## 000002C0
	sw      a3, 0x0000(s0)             ## 00000000
	lw      t9, 0x0294(s2)             ## 00000294
	lw      t7, 0x001C(t9)             ## 0000001C
	sw      t7, 0x0004(s0)             ## 00000004
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t4, 0x0600                 ## t4 = 06000000
	addiu   t4, t4, 0x4498             ## t4 = 06004498
	addiu   t2, s0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(s1)             ## 000002C0
	sw      t4, 0x0004(s0)             ## 00000004
	sw      a3, 0x0000(s0)             ## 00000000
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t3, 0xE700                 ## t3 = E7000000
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s1)             ## 000002C0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t3, 0x0000(s0)             ## 00000000
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t8, 0xFB00                 ## t8 = FB000000
	addiu   t6, s0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s1)             ## 000002C0
	sw      t8, 0x0000(s0)             ## 00000000
	lbu     t7, 0x0000(s5)             ## 8086DFB0
	lbu     t5, 0x0001(s5)             ## 8086DFB1
	lbu     t9, 0x0002(s5)             ## 8086DFB2
	sll     t2, t7, 24                 
	sll     t3, t5, 16                 
	or      t6, t2, t3                 ## t6 = E7000008
	sll     t7, t9,  8                 
	or      t4, t6, t7                 ## t4 = E7000008
	ori     t5, t4, 0x00FF             ## t5 = E70000FF
	sw      t5, 0x0004(s0)             ## 00000004
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t3, 0x0600                 ## t3 = 06000000
	addiu   t3, t3, 0x4530             ## t3 = 06004530
	addiu   t2, s0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(s1)             ## 000002C0
	sw      t3, 0x0004(s0)             ## 00000004
	sw      a3, 0x0000(s0)             ## 00000000
	lw      $ra, 0x003C($sp)           
	lw      s0, 0x0024($sp)            
	lw      s1, 0x0028($sp)            
	lw      s2, 0x002C($sp)            
	lw      s3, 0x0030($sp)            
	lw      s4, 0x0034($sp)            
	lw      s5, 0x0038($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0070           ## $sp = 00000000


func_8086DAB4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	lw      t9, 0x0180(a0)             ## 00000180
	jalr    $ra, t9                    
	nop
	lw      a0, 0x0018($sp)            
	lui     t6, %hi(func_8086BF10)     ## t6 = 80870000
	addiu   t6, t6, %lo(func_8086BF10) ## t6 = 8086BF10
	lw      t7, 0x0180(a0)             ## 00000180
	beq     t6, t7, lbl_8086DAF0       
	nop
	lh      t8, 0x018A(a0)             ## 0000018A
	addiu   t0, t8, 0x0001             ## t0 = 00000001
	sh      t0, 0x018A(a0)             ## 0000018A
lbl_8086DAF0:
	jal     func_8086CE28              
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8086DB08:
	addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
	sw      s2, 0x0040($sp)            
	sw      s0, 0x0038($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s2, a1, $zero              ## s2 = 00000000
	sw      $ra, 0x0044($sp)           
	sw      s1, 0x003C($sp)            
	lw      t7, 0x0180(s0)             ## 00000180
	lw      a2, 0x0000(s2)             ## 00000000
	lui     t6, %hi(func_8086BF10)     ## t6 = 80870000
	addiu   t6, t6, %lo(func_8086BF10) ## t6 = 8086BF10
	bne     t6, t7, lbl_8086DCF4       
	or      s1, a2, $zero              ## s1 = 00000000
	jal     func_8007E298              
	or      a0, a2, $zero              ## a0 = 00000000
	lw      v1, 0x02C0(s1)             ## 000002C0
	lui     t9, 0xFB00                 ## t9 = FB000000
	addiu   a0, s0, 0x029C             ## a0 = 0000029C
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s1)             ## 000002C0
	sw      t9, 0x0000(v1)             ## 00000000
	lbu     t5, 0x028F(s0)             ## 0000028F
	lbu     t2, 0x028E(s0)             ## 0000028E
	lbu     t9, 0x0290(s0)             ## 00000290
	sll     t6, t5, 16                 
	sll     t3, t2, 24                 
	or      t7, t3, t6                 ## t7 = 00000000
	sll     t1, t9,  8                 
	or      t2, t7, t1                 ## t2 = 00000000
	ori     t4, t2, 0x00FF             ## t4 = 000000FF
	sw      t4, 0x0004(v1)             ## 00000004
	lwc1    $f4, 0x0024(s0)            ## 00000024
	lwc1    $f8, 0x0028(s0)            ## 00000028
	lwc1    $f16, 0x002C(s0)           ## 0000002C
	lbu     t8, 0x028E(s0)             ## 0000028E
	trunc.w.s $f6, $f4                   
	addiu   t1, $zero, 0x00C8          ## t1 = 000000C8
	sw      t8, 0x0010($sp)            
	trunc.w.s $f10, $f8                  
	lbu     t9, 0x028F(s0)             ## 0000028F
	mfc1    a1, $f6                    
	trunc.w.s $f18, $f16                 
	mfc1    a2, $f10                   
	sw      t9, 0x0014($sp)            
	lbu     t7, 0x0290(s0)             ## 00000290
	mfc1    a3, $f18                   
	sll     a1, a1, 16                 
	sll     a2, a2, 16                 
	sll     a3, a3, 16                 
	sra     a3, a3, 16                 
	sra     a2, a2, 16                 
	sra     a1, a1, 16                 
	sw      t1, 0x001C($sp)            
	jal     func_80065C30              
	sw      t7, 0x0018($sp)            
	lw      v1, 0x02C0(s1)             ## 000002C0
	lui     t4, 0xDA38                 ## t4 = DA380000
	ori     t4, t4, 0x0003             ## t4 = DA380003
	addiu   t2, v1, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(s1)             ## 000002C0
	sw      t4, 0x0000(v1)             ## 00000000
	lw      a0, 0x0000(s2)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x0074($sp)            
	lw      a1, 0x0074($sp)            
	lui     t0, 0xDE00                 ## t0 = DE000000
	sw      v0, 0x0004(a1)             ## 00000004
	lw      v1, 0x02C0(s1)             ## 000002C0
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s1)             ## 000002C0
	sw      t0, 0x0000(v1)             ## 00000000
	lw      t3, 0x0294(s0)             ## 00000294
	lw      t6, 0x001C(t3)             ## 0000001C
	sw      t6, 0x0004(v1)             ## 00000004
	lbu     t8, 0x0187(s0)             ## 00000187
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bnel    t8, $at, lbl_8086DE94      
	lw      $ra, 0x0044($sp)           
	lh      t9, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	lui     a2, %hi(var_8086DFB0)      ## a2 = 80870000
	bne     t9, $at, lbl_8086DC60      
	addiu   a2, a2, %lo(var_8086DFB0)  ## a2 = 8086DFB0
	lui     a2, %hi(var_8086DFAC)      ## a2 = 80870000
	beq     $zero, $zero, lbl_8086DC60 
	addiu   a2, a2, %lo(var_8086DFAC)  ## a2 = 8086DFAC
lbl_8086DC60:
	lw      v1, 0x02C0(s1)             ## 000002C0
	lui     t1, 0x0600                 ## t1 = 06000000
	addiu   t1, t1, 0x4498             ## t1 = 06004498
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s1)             ## 000002C0
	sw      t1, 0x0004(v1)             ## 00000004
	sw      t0, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(s1)             ## 000002C0
	lui     t4, 0xE700                 ## t4 = E7000000
	addiu   t2, v1, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(s1)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t4, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(s1)             ## 000002C0
	lui     t3, 0xFB00                 ## t3 = FB000000
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s1)             ## 000002C0
	sw      t3, 0x0000(v1)             ## 00000000
	lbu     t1, 0x0001(a2)             ## 8086DFAD
	lbu     t8, 0x0000(a2)             ## 8086DFAC
	lbu     t3, 0x0002(a2)             ## 8086DFAE
	sll     t2, t1, 16                 
	sll     t9, t8, 24                 
	or      t4, t9, t2                 ## t4 = 00000008
	sll     t6, t3,  8                 
	or      t8, t4, t6                 ## t8 = 00000008
	ori     t7, t8, 0x00FF             ## t7 = 000000FF
	sw      t7, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s1)             ## 000002C0
	lui     t9, 0x0600                 ## t9 = 06000000
	addiu   t9, t9, 0x4530             ## t9 = 06004530
	addiu   t1, v1, 0x0008             ## t1 = 00000008
	sw      t1, 0x02C0(s1)             ## 000002C0
	sw      t9, 0x0004(v1)             ## 00000004
	sw      t0, 0x0000(v1)             ## 00000000
	beq     $zero, $zero, lbl_8086DE94 
	lw      $ra, 0x0044($sp)           
lbl_8086DCF4:
	jal     func_8007E2C0              
	or      a0, a2, $zero              ## a0 = 8086DFAC
	lw      v1, 0x02D0(s1)             ## 000002D0
	lui     t5, 0xDB06                 ## t5 = DB060000
	ori     t5, t5, 0x0020             ## t5 = DB060020
	addiu   t2, v1, 0x0008             ## t2 = 00000008
	sw      t2, 0x02D0(s1)             ## 000002D0
	sw      t5, 0x0000(v1)             ## 00000000
	lw      a0, 0x0000(s2)             ## 00000000
	addiu   t3, $zero, 0x0020          ## t3 = 00000020
	addiu   t4, $zero, 0x0040          ## t4 = 00000040
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	sw      t6, 0x0018($sp)            
	sw      t4, 0x0014($sp)            
	sw      t3, 0x0010($sp)            
	sw      $zero, 0x001C($sp)         
	lw      t7, 0x0294(s0)             ## 00000294
	lh      t8, 0x018A(s0)             ## 0000018A
	addiu   t3, $zero, 0x0080          ## t3 = 00000080
	lb      t1, 0x0008(t7)             ## 00000008
	addiu   t5, $zero, 0x0020          ## t5 = 00000020
	sw      t5, 0x0024($sp)            
	multu   t8, t1                     
	sw      t3, 0x0028($sp)            
	or      a1, $zero, $zero           ## a1 = 00000000
	or      a2, $zero, $zero           ## a2 = 00000000
	or      a3, $zero, $zero           ## a3 = 00000000
	sw      v1, 0x0054($sp)            
	mflo    t9                         
	andi    t2, t9, 0x01FF             ## t2 = 00000000
	jal     func_8007EB84              
	sw      t2, 0x0020($sp)            
	lw      t0, 0x0054($sp)            
	sw      v0, 0x0004(t0)             ## 00000004
	lw      v1, 0x02D0(s1)             ## 000002D0
	lui     t6, 0xFA00                 ## t6 = FA000000
	ori     t6, t6, 0x8080             ## t6 = FA008080
	addiu   t4, v1, 0x0008             ## t4 = 00000008
	sw      t4, 0x02D0(s1)             ## 000002D0
	sw      t6, 0x0000(v1)             ## 00000000
	lw      a1, 0x0294(s0)             ## 00000294
	lbu     t2, 0x0001(a1)             ## 00000001
	lbu     t8, 0x0000(a1)             ## 00000000
	lbu     t6, 0x0002(a1)             ## 00000002
	sll     t5, t2, 16                 
	lbu     t2, 0x028D(s0)             ## 0000028D
	sll     t1, t8, 24                 
	or      t3, t1, t5                 ## t3 = 00000000
	sll     t7, t6,  8                 
	or      t8, t3, t7                 ## t8 = 00000000
	or      t1, t8, t2                 ## t1 = 00000000
	sw      t1, 0x0004(v1)             ## 00000004
	lw      v1, 0x02D0(s1)             ## 000002D0
	lui     t4, 0xFB00                 ## t4 = FB000000
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s1)             ## 000002D0
	sw      t4, 0x0000(v1)             ## 00000000
	lbu     t8, 0x028B(s0)             ## 0000028B
	lbu     t3, 0x028A(s0)             ## 0000028A
	lbu     t4, 0x028C(s0)             ## 0000028C
	sll     t2, t8, 16                 
	sll     t7, t3, 24                 
	or      t1, t7, t2                 ## t1 = 00000000
	sll     t6, t4,  8                 
	or      t3, t1, t6                 ## t3 = FA008080
	ori     t9, t3, 0x00FF             ## t9 = FA0080FF
	sw      t9, 0x0004(v1)             ## 00000004
	lh      t8, 0x07A0(s2)             ## 000007A0
	sll     t7, t8,  2                 
	addu    t2, s2, t7                 
	jal     func_8004977C              
	lw      a0, 0x0790(t2)             ## 00000790
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addu    t5, v0, $at                
	sll     t4, t5, 16                 
	sra     t1, t4, 16                 
	mtc1    t1, $f4                    ## $f4 = 0.00
	lui     $at, %hi(var_8086E020)     ## $at = 80870000
	lwc1    $f8, %lo(var_8086E020)($at) 
	cvt.s.w $f6, $f4                   
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	mul.s   $f12, $f6, $f8             
	jal     func_800AAB94              
	nop
	lw      v1, 0x02D0(s1)             ## 000002D0
	lui     t3, 0xDA38                 ## t3 = DA380000
	ori     t3, t3, 0x0003             ## t3 = DA380003
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s1)             ## 000002D0
	sw      t3, 0x0000(v1)             ## 00000000
	lw      a0, 0x0000(s2)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x0048($sp)            
	lw      a1, 0x0048($sp)            
	lui     t0, 0xDE00                 ## t0 = DE000000
	sw      v0, 0x0004(a1)             ## 00000004
	lw      v1, 0x02D0(s1)             ## 000002D0
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s1)             ## 000002D0
	sw      t0, 0x0000(v1)             ## 00000000
	lw      t8, 0x0294(s0)             ## 00000294
	lw      t7, 0x0024(t8)             ## 00000024
	sw      t7, 0x0004(v1)             ## 00000004
	lw      $ra, 0x0044($sp)           
lbl_8086DE94:
	lw      s0, 0x0038($sp)            
	lw      s1, 0x003C($sp)            
	lw      s2, 0x0040($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0088           ## $sp = 00000000
	nop
	nop

.section .data

var_8086DEB0: .word 0x00000000
var_8086DEB4: .word 0x000D0500, 0x00001015, 0x00010000, 0x00000398
.word func_8086A290
.word func_8086A5D8
.word func_8086CABC
.word 0x00000000
var_8086DED4: .word \
0x03000939, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x00140028, 0x00140000, 0x00000000
var_8086DF00: .word \
0x00000000, 0xFFCFFFFF, 0x00080000, 0x00000000, \
0x00000000, 0x01000100, 0x12000000, 0x05780000, \
0x000A0064
var_8086DF24: .word 0x03110939, 0x10000000, 0x00000001
.word var_8086DF00
var_8086DF34: .word 0x04000019, 0x00322800
var_8086DF3C: .word \
0x00020102, 0x11020212, 0x01020402, 0x02020202, \
0x02000000, 0x00000104, 0x02020804, 0x00000400
var_8086DF5C: .word \
0xFFAAFF64, 0x00961205, 0xF8000000, 0x060015B0, \
0x06000A60, 0x060004EC, 0x060006E0, 0x06002D28, \
0x06002608, 0x06003850, 0xFFFFAA00, 0x96000901, \
0xF4000000, 0x06001440, 0x060009DC, 0x06000570, \
0x06000708, 0x060045A0, 0x06005220, 0x06001C90
var_8086DFAC: .word 0x4B1419FF
var_8086DFB0: .word 0x506E5AFF
var_8086DFB4: .word 0x5A5532FF
var_8086DFB8: .word 0x645A64FF
var_8086DFBC: .word 0x304C0C80
var_8086DFC0: .word 0x00000000, 0x40400000, 0x00000000
var_8086DFCC: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000

.section .rodata

var_8086DFE0: .word 0x44BB8000
var_8086DFE4: .word 0x3DCCCCCD
var_8086DFE8: .word 0x3D4CCCCD
var_8086DFEC: .word 0x3A83126F
var_8086DFF0: .word 0x3BE56042
var_8086DFF4: .word 0x3B808081
var_8086DFF8: .word 0x3BB78035
var_8086DFFC: .word 0x3AB78035
var_8086E000: .word 0x37E64689
var_8086E004: .word 0x3D70F0F1
var_8086E008: .word 0x3F48C8C9
var_8086E00C: .word 0x3F48C8C9
var_8086E010: .word 0x418547AE
var_8086E014: .word 0x41855555
var_8086E018: .word 0x3C23D70A
var_8086E01C: .word 0x3F48C8C9
var_8086E020: .word 0x38C90FDB, 0x00000000, 0x00000000, 0x00000000

