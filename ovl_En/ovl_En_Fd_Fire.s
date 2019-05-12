#include <mips.h>
.set noreorder
.set noat

.section .text
func_8096AE30:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	lwc1    $f4, 0x0000(a1)            ## 00000000
	lwc1    $f6, 0x0024(a0)            ## 00000024
	lwc1    $f8, 0x0004(a1)            ## 00000004
	lwc1    $f10, 0x0028(a0)           ## 00000028
	sub.s   $f2, $f4, $f6              
	lwc1    $f6, 0x002C(a0)            ## 0000002C
	lwc1    $f4, 0x0008(a1)            ## 00000008
	sub.s   $f12, $f8, $f10            
	mul.s   $f8, $f2, $f2              
	sub.s   $f14, $f4, $f6             
	mul.s   $f10, $f12, $f12           
	add.s   $f4, $f8, $f10             
	mul.s   $f6, $f14, $f14            
	lwc1    $f8, 0x0068(a0)            ## 00000068
	swc1    $f8, 0x0000($sp)           
	lwc1    $f10, 0x0000($sp)          
	add.s   $f0, $f4, $f6              
	sqrt.s  $f16, $f0                  
	abs.s   $f0, $f10                  
	abs.s   $f18, $f16                 
	c.lt.s  $f0, $f18                  
	nop
	bc1fl   lbl_8096AEB8               
	mtc1    $zero, $f0                 ## $f0 = 0.00
	div.s   $f4, $f2, $f16             
	div.s   $f8, $f14, $f16            
	mul.s   $f6, $f4, $f10             
	swc1    $f6, 0x005C(a0)            ## 0000005C
	lwc1    $f4, 0x0000($sp)           
	mul.s   $f10, $f8, $f4             
	beq     $zero, $zero, lbl_8096AEC4 
	swc1    $f10, 0x0064(a0)           ## 00000064
	mtc1    $zero, $f0                 ## $f0 = 0.00
lbl_8096AEB8:
	nop
	swc1    $f0, 0x005C(a0)            ## 0000005C
	swc1    $f0, 0x0064(a0)            ## 00000064
lbl_8096AEC4:
	lwc1    $f6, 0x0060(a0)            ## 00000060
	lwc1    $f8, 0x006C(a0)            ## 0000006C
	lwc1    $f0, 0x0070(a0)            ## 00000070
	add.s   $f4, $f6, $f8              
	swc1    $f4, 0x0060(a0)            ## 00000060
	lwc1    $f10, 0x0060(a0)           ## 00000060
	c.le.s  $f0, $f10                  
	nop
	bc1t    lbl_8096AEF0               
	nop
	swc1    $f0, 0x0060(a0)            ## 00000060
lbl_8096AEF0:
	jr      $ra                        
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_8096AEF8:
	sw      a1, 0x0004($sp)            
	lw      t7, 0x013C(a0)             ## 0000013C
	lui     t6, %hi(func_8096B3B8)     ## t6 = 80970000
	addiu   t6, t6, %lo(func_8096B3B8) ## t6 = 8096B3B8
	bnel    t6, t7, lbl_8096AF1C       
	lbu     v1, 0x0151(a0)             ## 00000151
	jr      $ra                        
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_8096AF18:
	lbu     v1, 0x0151(a0)             ## 00000151
lbl_8096AF1C:
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	andi    t8, v1, 0x0002             ## t8 = 00000000
	beq     t8, $zero, lbl_8096AF34    
	andi    t9, v1, 0xFFFD             ## t9 = 00000000
	jr      $ra                        
	sb      t9, 0x0151(a0)             ## 00000151
lbl_8096AF34:
	lbu     v1, 0x0153(a0)             ## 00000153
	or      v0, $zero, $zero           ## v0 = 00000000
	andi    t0, v1, 0x0001             ## t0 = 00000000
	beq     t0, $zero, lbl_8096AF54    
	andi    t1, v1, 0xFFFE             ## t1 = 00000000
	sb      t1, 0x0153(a0)             ## 00000153
	jr      $ra                        
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_8096AF54:
	jr      $ra                        
	nop


func_8096AF5C:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0034($sp)            
	lw      t6, 0x0034($sp)            
	lui     a2, 0x8002                 ## a2 = 80020000
	addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
	lw      t7, 0x1C44(t6)             ## 00001C44
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	lui     a3, 0x41A0                 ## a3 = 41A00000
	jal     func_8001EC20              
	sw      t7, 0x0024($sp)            
	addiu   a1, s0, 0x0140             ## a1 = 00000140
	sw      a1, 0x0020($sp)            
	jal     func_8004AB7C              
	lw      a0, 0x0034($sp)            
	lui     a3, %hi(var_8096B970)      ## a3 = 80970000
	lw      a1, 0x0020($sp)            
	addiu   a3, a3, %lo(var_8096B970)  ## a3 = 8096B970
	lw      a0, 0x0034($sp)            
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	lui     a1, %hi(var_8096B9A8)      ## a1 = 80970000
	lui     a2, %hi(var_8096B99C)      ## a2 = 80970000
	addiu   a2, a2, %lo(var_8096B99C)  ## a2 = 8096B99C
	addiu   a1, a1, %lo(var_8096B9A8)  ## a1 = 8096B9A8
	jal     func_80050370              
	addiu   a0, s0, 0x0098             ## a0 = 00000098
	lw      t8, 0x0004(s0)             ## 00000004
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	and     t9, t8, $at                
	sw      t9, 0x0004(s0)             ## 00000004
	lui     $at, %hi(var_8096BA30)     ## $at = 80970000
	lwc1    $f4, %lo(var_8096BA30)($at) 
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f6                   ## $f6 = 5.00
	lui     $at, 0x4140                ## $at = 41400000
	mtc1    $at, $f8                   ## $f8 = 12.00
	swc1    $f4, 0x006C(s0)            ## 0000006C
	swc1    $f6, 0x0068(s0)            ## 00000068
	swc1    $f8, 0x0060(s0)            ## 00000060
	lw      a1, 0x0024($sp)            
	jal     func_80063E18              
	addiu   a1, a1, 0x0024             ## a1 = 00000024
	lui     $at, 0x4040                ## $at = 40400000
	mtc1    $at, $f10                  ## $f10 = 3.00
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f12                  ## $f12 = 5.00
	swc1    $f0, 0x018C(s0)            ## 0000018C
	jal     func_80026D64              
	swc1    $f10, 0x0190(s0)           ## 00000190
	trunc.w.s $f16, $f0                  
	lui     t5, %hi(func_8096B090)     ## t5 = 80970000
	addiu   t5, t5, %lo(func_8096B090) ## t5 = 8096B090
	sw      t5, 0x013C(s0)             ## 0000013C
	mfc1    t3, $f16                   
	nop
	addiu   t4, t3, 0xFFE7             ## t4 = FFFFFFE7
	sh      t4, 0x0198(s0)             ## 00000198
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_8096B064:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	or      a0, a3, $zero              ## a0 = 00000000
	jal     func_8004ABCC              
	addiu   a1, a2, 0x0140             ## a1 = 00000140
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8096B090:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0044($sp)            
	lui     t7, %hi(var_8096B9C8)      ## t7 = 80970000
	addiu   t7, t7, %lo(var_8096B9C8)  ## t7 = 8096B9C8
	lw      t9, 0x0000(t7)             ## 8096B9C8
	addiu   t6, $sp, 0x0034            ## t6 = FFFFFFF4
	lw      t8, 0x0004(t7)             ## 8096B9CC
	sw      t9, 0x0000(t6)             ## FFFFFFF4
	lw      t9, 0x0008(t7)             ## 8096B9D0
	sw      t8, 0x0004(t6)             ## FFFFFFF8
	addiu   t0, $sp, 0x0028            ## t0 = FFFFFFE8
	sw      t9, 0x0008(t6)             ## FFFFFFFC
	lw      t1, 0x0118(s0)             ## 00000118
	lw      t3, 0x0024(t1)             ## 00000024
	sw      t3, 0x0000(t0)             ## FFFFFFE8
	lw      t2, 0x0028(t1)             ## 00000028
	sw      t2, 0x0004(t0)             ## FFFFFFEC
	lw      t3, 0x002C(t1)             ## 0000002C
	sw      t3, 0x0008(t0)             ## FFFFFFF0
	jal     func_800636C4              ## sins?
	lh      a0, 0x0032(s0)             ## 00000032
	lwc1    $f6, 0x018C(s0)            ## 0000018C
	lwc1    $f4, 0x0028($sp)           
	mul.s   $f8, $f6, $f0              
	add.s   $f10, $f4, $f8             
	swc1    $f10, 0x0028($sp)          
	jal     func_80063684              ## coss?
	lh      a0, 0x0032(s0)             ## 00000032
	lwc1    $f18, 0x018C(s0)           ## 0000018C
	lwc1    $f16, 0x0030($sp)          
	or      a0, s0, $zero              ## a0 = 00000000
	mul.s   $f6, $f18, $f0             
	addiu   a1, $sp, 0x0028            ## a1 = FFFFFFE8
	add.s   $f4, $f16, $f6             
	jal     func_8096AE30              
	swc1    $f4, 0x0030($sp)           
	lhu     t4, 0x0088(s0)             ## 00000088
	andi    t5, t4, 0x0001             ## t5 = 00000000
	beql    t5, $zero, lbl_8096B1BC    
	lw      $ra, 0x001C($sp)           
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lwc1    $f8, 0x0060(s0)            ## 00000060
	addiu   t6, $sp, 0x0034            ## t6 = FFFFFFF4
	c.lt.s  $f0, $f8                   
	nop
	bc1tl   lbl_8096B1BC               
	lw      $ra, 0x001C($sp)           
	lw      t8, 0x0000(t6)             ## FFFFFFF4
	lhu     t9, 0x0088(s0)             ## 00000088
	lh      t1, 0x001C(s0)             ## 0000001C
	sw      t8, 0x005C(s0)             ## 0000005C
	lw      t7, 0x0004(t6)             ## FFFFFFF8
	andi    t0, t9, 0xFFFE             ## t0 = 00000000
	andi    t2, t1, 0x8000             ## t2 = 00000000
	sw      t7, 0x0060(s0)             ## 00000060
	lw      t8, 0x0008(t6)             ## FFFFFFFC
	swc1    $f0, 0x0068(s0)            ## 00000068
	sh      t0, 0x0088(s0)             ## 00000088
	beq     t2, $zero, lbl_8096B1A4    
	sw      t8, 0x0064(s0)             ## 00000064
	lui     t4, %hi(func_8096B208)     ## t4 = 80970000
	addiu   t3, $zero, 0x00C8          ## t3 = 000000C8
	addiu   t4, t4, %lo(func_8096B208) ## t4 = 8096B208
	sh      t3, 0x0196(s0)             ## 00000196
	beq     $zero, $zero, lbl_8096B1B8 
	sw      t4, 0x013C(s0)             ## 0000013C
lbl_8096B1A4:
	lui     t6, %hi(func_8096B1CC)     ## t6 = 80970000
	addiu   t5, $zero, 0x012C          ## t5 = 0000012C
	addiu   t6, t6, %lo(func_8096B1CC) ## t6 = 8096B1CC
	sh      t5, 0x0196(s0)             ## 00000196
	sw      t6, 0x013C(s0)             ## 0000013C
lbl_8096B1B8:
	lw      $ra, 0x001C($sp)           
lbl_8096B1BC:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_8096B1CC:
	sw      a1, 0x0004($sp)            
	lh      v0, 0x0196(a0)             ## 00000196
	lui     t7, %hi(func_8096B3B8)     ## t7 = 80970000
	addiu   t7, t7, %lo(func_8096B3B8) ## t7 = 8096B3B8
	bne     v0, $zero, lbl_8096B1EC    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	beq     $zero, $zero, lbl_8096B1F4 
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_8096B1EC:
	sh      t6, 0x0196(a0)             ## 00000196
	lh      v1, 0x0196(a0)             ## 00000196
lbl_8096B1F4:
	bne     v1, $zero, lbl_8096B200    
	nop
	sw      t7, 0x013C(a0)             ## 0000013C
lbl_8096B200:
	jr      $ra                        
	nop


func_8096B208:
	addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	addiu   a3, $sp, 0x004C            ## a3 = FFFFFFCC
	lui     t6, %hi(var_8096B9D4)      ## t6 = 80970000
	addiu   t6, t6, %lo(var_8096B9D4)  ## t6 = 8096B9D4
	lw      v0, 0x1C44(a1)             ## 00001C44
	addiu   t0, t6, 0x0030             ## t0 = 8096BA04
	or      t9, a3, $zero              ## t9 = FFFFFFCC
lbl_8096B230:
	lw      t8, 0x0000(t6)             ## 8096B9D4
	addiu   t6, t6, 0x000C             ## t6 = 8096B9E0
	addiu   t9, t9, 0x000C             ## t9 = FFFFFFD8
	sw      t8, -0x000C(t9)            ## FFFFFFCC
	lw      t7, -0x0008(t6)            ## 8096B9D8
	sw      t7, -0x0008(t9)            ## FFFFFFD0
	lw      t8, -0x0004(t6)            ## 8096B9DC
	bne     t6, t0, lbl_8096B230       
	sw      t8, -0x0004(t9)            ## FFFFFFD4
	lw      t1, 0x009C(a1)             ## 0000009C
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
	lh      t3, 0x001C(s0)             ## 0000001C
	divu    $zero, t1, $at             
	mflo    t2                         
	andi    t4, t3, 0x7FFF             ## t4 = 00000000
	addu    v1, t2, t4                 
	addiu   $at, $zero, 0x000C         ## $at = 0000000C
	divu    $zero, v1, $at             
	lw      t6, 0x0024(v0)             ## 00000024
	addiu   t5, $sp, 0x0040            ## t5 = FFFFFFC0
	mfhi    v1                         
	sw      t6, 0x0000(t5)             ## FFFFFFC0
	lw      t0, 0x0028(v0)             ## 00000028
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sw      t0, 0x0004(t5)             ## FFFFFFC4
	lw      t6, 0x002C(v0)             ## 0000002C
	sll     t9, v1,  2                 
	addu    a2, a3, t9                 
	sw      t6, 0x0008(t5)             ## FFFFFFC8
	lwc1    $f12, 0x0000(a2)           ## 00000000
	jal     func_800CF470              
	sw      a2, 0x002C($sp)            
	lui     $at, 0x42F0                ## $at = 42F00000
	mtc1    $at, $f6                   ## $f6 = 120.00
	lwc1    $f4, 0x0040($sp)           
	lw      a2, 0x002C($sp)            
	mul.s   $f8, $f6, $f0              
	add.s   $f10, $f4, $f8             
	swc1    $f10, 0x0040($sp)          
	jal     func_800D2CD0              
	lwc1    $f12, 0x0000(a2)           ## 00000000
	lui     $at, 0x42F0                ## $at = 42F00000
	mtc1    $at, $f18                  ## $f18 = 120.00
	lwc1    $f16, 0x0048($sp)          
	lui     t8, %hi(func_8096B3B8)     ## t8 = 80970000
	mul.s   $f6, $f18, $f0             
	addiu   t8, t8, %lo(func_8096B3B8) ## t8 = 8096B3B8
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	add.s   $f4, $f16, $f6             
	swc1    $f4, 0x0048($sp)           
	lh      v0, 0x0196(s0)             ## 00000196
	bne     v0, $zero, lbl_8096B310    
	addiu   t7, v0, 0xFFFF             ## t7 = FFFFFFFF
	beq     $zero, $zero, lbl_8096B318 
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_8096B310:
	sh      t7, 0x0196(s0)             ## 00000196
	lh      v1, 0x0196(s0)             ## 00000196
lbl_8096B318:
	bne     v1, $zero, lbl_8096B328    
	nop
	beq     $zero, $zero, lbl_8096B3A4 
	sw      t8, 0x013C(s0)             ## 0000013C
lbl_8096B328:
	jal     func_80063F00              
	addiu   a1, $sp, 0x0040            ## a1 = FFFFFFC0
	sll     a1, v0, 16                 
	addiu   t1, $zero, 0x0001          ## t1 = 00000001
	sw      t1, 0x0010($sp)            
	sra     a1, a1, 16                 
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	addiu   a2, $zero, 0x0008          ## a2 = 00000008
	jal     func_80064508              
	addiu   a3, $zero, 0x0FA0          ## a3 = 00000FA0
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     a2, 0x3ECC                 ## a2 = 3ECC0000
	ori     a2, a2, 0xCCCD             ## a2 = 3ECCCCCD
	mfc1    a1, $f0                    
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	lui     a3, 0x3F80                 ## a3 = 3F800000
	jal     func_80064178              
	swc1    $f0, 0x0010($sp)           
	lui     $at, %hi(var_8096BA34)     ## $at = 80970000
	lwc1    $f10, %lo(var_8096BA34)($at) 
	lwc1    $f8, 0x0068(s0)            ## 00000068
	lui     $at, 0x40A0                ## $at = 40A00000
	c.lt.s  $f8, $f10                  
	nop
	bc1f    lbl_8096B39C               
	nop
	mtc1    $at, $f18                  ## $f18 = 5.00
	nop
	swc1    $f18, 0x0068(s0)           ## 00000068
lbl_8096B39C:
	jal     func_800211A4              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8096B3A4:
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0080           ## $sp = 00000000
	jr      $ra                        
	nop


func_8096B3B8:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	mtc1    $zero, $f0                 ## $f0 = 0.00
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	mfc1    a1, $f0                    
	lui     a2, 0x3F19                 ## a2 = 3F190000
	ori     a2, a2, 0x999A             ## a2 = 3F19999A
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	lui     a3, 0x4110                 ## a3 = 41100000
	jal     func_80064178              
	swc1    $f0, 0x0010($sp)           
	jal     func_800211A4              
	or      a0, s0, $zero              ## a0 = 00000000
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     a2, 0x3E99                 ## a2 = 3E990000
	lui     a3, 0x3DCC                 ## a3 = 3DCC0000
	mfc1    a1, $f0                    
	ori     a3, a3, 0xCCCD             ## a3 = 3DCCCCCD
	ori     a2, a2, 0x999A             ## a2 = 3E99999A
	addiu   a0, s0, 0x0190             ## a0 = 00000190
	jal     func_80064178              
	swc1    $f0, 0x0010($sp)           
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f4                   ## $f4 = 20.00
	lui     $at, 0x4040                ## $at = 40400000
	mtc1    $at, $f6                   ## $f6 = 3.00
	lwc1    $f0, 0x0190(s0)            ## 00000190
	lui     $at, %hi(var_8096BA38)     ## $at = 80970000
	div.s   $f8, $f0, $f6              
	mul.s   $f10, $f4, $f8             
	swc1    $f10, 0x00C4(s0)           ## 000000C4
	lwc1    $f16, %lo(var_8096BA38)($at) 
	c.lt.s  $f16, $f0                  
	nop
	bc1tl   lbl_8096B45C               
	lw      $ra, 0x0024($sp)           
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x0024($sp)           
lbl_8096B45C:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8096B46C:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s1, 0x0020($sp)            
	sw      s0, 0x001C($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x0024($sp)           
	lui     t6, %hi(func_8096B3B8)     ## t6 = 80970000
	addiu   t6, t6, %lo(func_8096B3B8) ## t6 = 8096B3B8
	sw      t6, 0x002C($sp)            
	lw      t7, 0x013C(s0)             ## 0000013C
	beq     t6, t7, lbl_8096B4C8       
	nop
	lw      t8, 0x0118(s0)             ## 00000118
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t9, 0x0130(t8)             ## 00000130
	beql    t9, $zero, lbl_8096B4C4    
	lw      t0, 0x002C($sp)            
	jal     func_8096AEF8              
	or      a1, s1, $zero              ## a1 = 00000000
	beq     v0, $zero, lbl_8096B4C8    
	nop
	lw      t0, 0x002C($sp)            
lbl_8096B4C4:
	sw      t0, 0x013C(s0)             ## 0000013C
lbl_8096B4C8:
	jal     func_80021124              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t9, 0x013C(s0)             ## 0000013C
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, s1, $zero              ## a1 = 00000000
	jalr    $ra, t9                    
	nop
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   t1, $zero, 0x0005          ## t1 = 00000005
	sw      t1, 0x0014($sp)            
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	lui     a2, 0x4140                 ## a2 = 41400000
	lui     a3, 0x4120                 ## a3 = 41200000
	jal     func_80021E6C              
	swc1    $f4, 0x0010($sp)           
	lw      t2, 0x002C($sp)            
	lw      t3, 0x013C(s0)             ## 0000013C
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x0140             ## a1 = 00000140
	beql    t2, t3, lbl_8096B558       
	lw      $ra, 0x0024($sp)           
	jal     func_80050B00              
	sw      a1, 0x0028($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	addu    a1, s1, $at                
	sw      a1, 0x002C($sp)            
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8004BD50              ## CollisionCheck_setAT
	lw      a2, 0x0028($sp)            
	lw      a1, 0x002C($sp)            
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8004BF40              ## CollisionCheck_setAC
	lw      a2, 0x0028($sp)            
	lw      $ra, 0x0024($sp)           
lbl_8096B558:
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_8096B568:
	addiu   $sp, $sp, 0xFF40           ## $sp = FFFFFF40
	sw      s2, 0x0048($sp)            
	sw      s1, 0x0044($sp)            
	or      s1, a1, $zero              ## s1 = 00000000
	or      s2, a0, $zero              ## s2 = 00000000
	sw      $ra, 0x004C($sp)           
	sw      s0, 0x0040($sp)            
	sdc1    $f20, 0x0038($sp)          
	lui     t7, %hi(var_8096BA04)      ## t7 = 80970000
	addiu   t7, t7, %lo(var_8096BA04)  ## t7 = 8096BA04
	lw      t9, 0x0000(t7)             ## 8096BA04
	lw      t8, 0x0004(t7)             ## 8096BA08
	addiu   t6, $sp, 0x00B8            ## t6 = FFFFFFF8
	lui     t2, %hi(var_8096BA0C)      ## t2 = 80970000
	addiu   t2, t2, %lo(var_8096BA0C)  ## t2 = 8096BA0C
	sw      t9, 0x0000(t6)             ## FFFFFFF8
	sw      t8, 0x0004(t6)             ## FFFFFFFC
	lw      t3, 0x0004(t2)             ## 8096BA10
	lw      t4, 0x0000(t2)             ## 8096BA0C
	addiu   t1, $sp, 0x00B0            ## t1 = FFFFFFF0
	lui     t6, %hi(var_8096BA14)      ## t6 = 80970000
	addiu   t6, t6, %lo(var_8096BA14)  ## t6 = 8096BA14
	sw      t3, 0x0004(t1)             ## FFFFFFF4
	sw      t4, 0x0000(t1)             ## FFFFFFF0
	lw      t8, 0x0000(t6)             ## 8096BA14
	addiu   t5, $sp, 0x009C            ## t5 = FFFFFFDC
	lw      t7, 0x0004(t6)             ## 8096BA18
	sw      t8, 0x0000(t5)             ## FFFFFFDC
	lw      t8, 0x0008(t6)             ## 8096BA1C
	lui     t1, %hi(var_8096BA20)      ## t1 = 80970000
	addiu   t1, t1, %lo(var_8096BA20)  ## t1 = 8096BA20
	sw      t7, 0x0004(t5)             ## FFFFFFE0
	sw      t8, 0x0008(t5)             ## FFFFFFE4
	lw      t3, 0x0000(t1)             ## 8096BA20
	addiu   t9, $sp, 0x0090            ## t9 = FFFFFFD0
	lw      t2, 0x0004(t1)             ## 8096BA24
	sw      t3, 0x0000(t9)             ## FFFFFFD0
	lw      t3, 0x0008(t1)             ## 8096BA28
	or      a3, $zero, $zero           ## a3 = 00000000
	sw      t2, 0x0004(t9)             ## FFFFFFD4
	sw      t3, 0x0008(t9)             ## FFFFFFD8
	lw      s0, 0x0000(s1)             ## 00000000
	lwc1    $f12, 0x0024(s2)           ## 00000024
	lwc1    $f14, 0x0028(s2)           ## 00000028
	jal     func_800AA7F4              
	lw      a2, 0x002C(s2)             ## 0000002C
	addiu   a1, s2, 0x005C             ## a1 = 0000005C
	sw      a1, 0x0054($sp)            
	jal     func_80063F00              
	addiu   a0, $sp, 0x009C            ## a0 = FFFFFFDC
	sh      v0, 0x005E($sp)            
	lh      t4, 0x07A0(s1)             ## 000007A0
	sll     t5, t4,  2                 
	addu    t6, s1, t5                 
	jal     func_8004977C              
	lw      a0, 0x0790(t6)             ## 00000790
	lh      t7, 0x005E($sp)            
	subu    v1, t7, v0                 
	sll     a0, v1, 16                 
	sh      v1, 0x008E($sp)            
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	abs.s   $f20, $f0                  
	jal     func_800636C4              ## sins?
	lh      a0, 0x008E($sp)            
	swc1    $f0, 0x0088($sp)           
	addiu   a0, $sp, 0x009C            ## a0 = FFFFFFDC
	jal     func_80063EB8              
	lw      a1, 0x0054($sp)            
	lui     $at, 0x3FC0                ## $at = 3FC00000
	mtc1    $at, $f4                   ## $f4 = 1.50
	nop
	div.s   $f6, $f0, $f4              
	swc1    $f6, 0x0080($sp)           
	lh      t8, 0x07A0(s1)             ## 000007A0
	sll     t9, t8,  2                 
	addu    t1, s1, t9                 
	jal     func_8004977C              
	lw      a0, 0x0790(t1)             ## 00000790
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addu    t2, v0, $at                
	sll     t3, t2, 16                 
	sra     t4, t3, 16                 
	mtc1    t4, $f8                    ## $f8 = 0.00
	lui     $at, %hi(var_8096BA3C)     ## $at = 80970000
	lwc1    $f16, %lo(var_8096BA3C)($at) 
	cvt.s.w $f10, $f8                  
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	mul.s   $f12, $f10, $f16           
	jal     func_800AAB94              
	nop
	lui     $at, 0xC120                ## $at = C1200000
	mtc1    $at, $f4                   ## $f4 = -10.00
	lwc1    $f18, 0x0088($sp)          
	lwc1    $f8, 0x0080($sp)           
	lui     $at, %hi(var_8096BA40)     ## $at = 80970000
	mul.s   $f6, $f18, $f4             
	lwc1    $f16, %lo(var_8096BA40)($at) 
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	mul.s   $f10, $f6, $f8             
	nop
	mul.s   $f12, $f10, $f16           
	jal     func_800AAD4C              
	nop
	lui     $at, %hi(var_8096BA44)     ## $at = 80970000
	lwc1    $f4, %lo(var_8096BA44)($at) 
	lwc1    $f18, 0x0190(s2)           ## 00000190
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mul.s   $f6, $f18, $f4             
	swc1    $f6, 0x00A4($sp)           
	lwc1    $f14, 0x00A4($sp)          
	mfc1    a2, $f14                   
	swc1    $f14, 0x00A0($sp)          
	swc1    $f14, 0x009C($sp)          
	jal     func_800AA8FC              
	mov.s   $f12, $f14                 
	lui     $at, %hi(var_8096BA48)     ## $at = 80970000
	lwc1    $f0, %lo(var_8096BA48)($at) 
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f12                  ## $f12 = 1.00
	lui     $at, %hi(var_8096BA4C)     ## $at = 80970000
	lwc1    $f10, %lo(var_8096BA4C)($at) 
	lwc1    $f18, 0x0080($sp)          
	mul.s   $f16, $f10, $f20           
	nop
	mul.s   $f4, $f16, $f18            
	add.s   $f20, $f4, $f12            
	c.lt.s  $f20, $f0                  
	nop
	bc1f    lbl_8096B778               
	nop
	mov.s   $f20, $f0                  
lbl_8096B778:
	div.s   $f6, $f12, $f20            
	mov.s   $f14, $f20                 
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mfc1    a2, $f6                    
	jal     func_800AA8FC              
	nop
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t6, 0xDA38                 ## t6 = DA380000
	ori     t6, t6, 0x0003             ## t6 = DA380003
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s0)             ## 000002D0
	sw      t6, 0x0000(v1)             ## 00000000
	lw      a0, 0x0000(s1)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x0074($sp)            
	lw      a1, 0x0074($sp)            
	sw      v0, 0x0004(a1)             ## 00000004
	jal     func_8007E2C0              
	lw      a0, 0x0000(s1)             ## 00000000
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t8, 0xDB06                 ## t8 = DB060000
	ori     t8, t8, 0x0020             ## t8 = DB060020
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s0)             ## 000002D0
	sw      t8, 0x0000(v1)             ## 00000000
	lw      a0, 0x0000(s1)             ## 00000000
	addiu   t9, $zero, 0x0020          ## t9 = 00000020
	addiu   t1, $zero, 0x0040          ## t1 = 00000040
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	sw      t2, 0x0018($sp)            
	sw      t1, 0x0014($sp)            
	sw      t9, 0x0010($sp)            
	sw      $zero, 0x001C($sp)         
	lh      t4, 0x0198(s2)             ## 00000198
	lw      t3, 0x009C(s1)             ## 0000009C
	addiu   t7, $zero, 0x0080          ## t7 = 00000080
	addiu   t6, $zero, 0x0020          ## t6 = 00000020
	multu   t3, t4                     
	sw      t6, 0x0024($sp)            
	sw      t7, 0x0028($sp)            
	or      a1, $zero, $zero           ## a1 = 00000000
	or      a2, $zero, $zero           ## a2 = 00000000
	or      a3, $zero, $zero           ## a3 = 00000000
	sw      v1, 0x0070($sp)            
	mflo    t5                         
	sw      t5, 0x0020($sp)            
	jal     func_8007EB84              
	nop
	lw      t0, 0x0070($sp)            
	sw      v0, 0x0004(t0)             ## 00000004
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t9, 0xFA00                 ## t9 = FA000000
	ori     t9, t9, 0x8080             ## t9 = FA008080
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s0)             ## 000002D0
	sw      t9, 0x0000(v1)             ## 00000000
	lh      t1, 0x001C(s2)             ## 0000001C
	addiu   t5, $sp, 0x00B8            ## t5 = FFFFFFF8
	andi    t2, t1, 0x8000             ## t2 = 00000000
	sra     t3, t2, 15                 
	sll     t4, t3,  2                 
	addu    a0, t4, t5                 
	lbu     t9, 0x0000(a0)             ## 00000000
	lbu     t7, 0x0003(a0)             ## 00000003
	lbu     t4, 0x0001(a0)             ## 00000001
	sll     t1, t9, 24                 
	lbu     t9, 0x0002(a0)             ## 00000002
	or      t2, t7, t1                 ## t2 = 00000000
	sll     t5, t4, 16                 
	or      t6, t2, t5                 ## t6 = FFFFFFF8
	sll     t7, t9,  8                 
	or      t1, t6, t7                 ## t1 = FFFFFFF8
	sw      t1, 0x0004(v1)             ## 00000004
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t4, 0xFB00                 ## t4 = FB000000
	addiu   t6, $sp, 0x00B0            ## t6 = FFFFFFF0
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02D0(s0)             ## 000002D0
	sw      t4, 0x0000(v1)             ## 00000000
	lh      t2, 0x001C(s2)             ## 0000001C
	lui     t3, 0x0405                 ## t3 = 04050000
	andi    t5, t2, 0x8000             ## t5 = 00000000
	sra     t8, t5, 15                 
	sll     t9, t8,  2                 
	addu    a1, t9, t6                 
	lbu     t4, 0x0000(a1)             ## 00000000
	lbu     t1, 0x0003(a1)             ## 00000003
	lbu     t9, 0x0001(a1)             ## 00000001
	sll     t2, t4, 24                 
	lbu     t4, 0x0002(a1)             ## 00000002
	or      t5, t1, t2                 ## t5 = FFFFFFF8
	sll     t6, t9, 16                 
	or      t7, t5, t6                 ## t7 = FFFFFFF8
	sll     t1, t4,  8                 
	or      t2, t7, t1                 ## t2 = FFFFFFF8
	sw      t2, 0x0004(v1)             ## 00000004
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t9, 0xE700                 ## t9 = E7000000
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s0)             ## 000002D0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t9, 0x0000(v1)             ## 00000000
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t6, 0xDE00                 ## t6 = DE000000
	addiu   t3, t3, 0x2A10             ## t3 = 04052A10
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s0)             ## 000002D0
	sw      t3, 0x0004(v1)             ## 00000004
	sw      t6, 0x0000(v1)             ## 00000000
	lw      $ra, 0x004C($sp)           
	ldc1    $f20, 0x0038($sp)          
	lw      s0, 0x0040($sp)            
	lw      s1, 0x0044($sp)            
	lw      s2, 0x0048($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x00C0           ## $sp = 00000000
	nop
	nop

.section .data

var_8096B950: .word 0x00A30500, 0x00000015, 0x00030000, 0x0000019C
.word func_8096AF5C
.word func_8096B064
.word func_8096B46C
.word func_8096B568
var_8096B970: .word \
0x0A110939, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x01080000, 0x0D840008, 0x00000000, 0x01010100, \
0x000C002E, 0x00000000, 0x00000000
var_8096B99C: .word 0x01000000, 0x00000000, 0xFF000000
var_8096B9A8: .word \
0x00000002, 0x00000000, 0x00000000, 0x00000000, \
0x00000400, 0x00000000, 0x00000000, 0x00000000
var_8096B9C8: .word 0x00000000, 0x00000000, 0x00000000
var_8096B9D4: .word \
0x00000000, 0x43520000, 0x42700000, 0x43870000, \
0x42F00000, 0x43A50000, 0x43340000, 0x41F00000, \
0x43700000, 0x42B40000, 0x43960000, 0x43160000
var_8096BA04: .word 0xFFFF00FF, 0xFFFFFFFF
var_8096BA0C: .word 0xFF0A00FF, 0x000AFFFF
var_8096BA14: .word 0x00000000, 0x00000000, 0x00000000
var_8096BA20: .word 0x00000000, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_8096BA30: .word 0xBF19999A
var_8096BA34: .word 0x3DCCCCCD
var_8096BA38: .word 0x3C23D70A
var_8096BA3C: .word 0x38C90FDB
var_8096BA40: .word 0x3C8EFA35
var_8096BA44: .word 0x3A83126F
var_8096BA48: .word 0x3DCCCCCD
var_8096BA4C: .word 0xBE199999

