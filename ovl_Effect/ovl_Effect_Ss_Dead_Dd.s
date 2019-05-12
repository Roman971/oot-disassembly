#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B38320:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s1, 0x0034($sp)            
	sw      s0, 0x0030($sp)            
	or      s0, a2, $zero              ## s0 = 00000000
	or      s1, a3, $zero              ## s1 = 00000000
	sw      $ra, 0x003C($sp)           
	sw      s2, 0x0038($sp)            
	sdc1    $f24, 0x0028($sp)          
	sdc1    $f22, 0x0020($sp)          
	sdc1    $f20, 0x0018($sp)          
	sw      a0, 0x0040($sp)            
	sw      a1, 0x0044($sp)            
	lbu     v0, 0x0040(s1)             ## 00000040
	bnel    v0, $zero, lbl_80B38468    
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lw      t7, 0x0000(s1)             ## 00000000
	sw      t7, 0x0000(s0)             ## 00000000
	lw      t6, 0x0004(s1)             ## 00000004
	sw      t6, 0x0004(s0)             ## 00000004
	lw      t7, 0x0008(s1)             ## 00000008
	sw      t7, 0x0008(s0)             ## 00000008
	lw      t9, 0x000C(s1)             ## 0000000C
	sw      t9, 0x000C(s0)             ## 0000000C
	lw      t8, 0x0010(s1)             ## 00000010
	sw      t8, 0x0010(s0)             ## 00000010
	lw      t9, 0x0014(s1)             ## 00000014
	lui     t8, %hi(func_80B385E8)     ## t8 = 80B40000
	addiu   t8, t8, %lo(func_80B385E8) ## t8 = 80B385E8
	sw      t9, 0x0014(s0)             ## 00000014
	lw      t1, 0x0018(s1)             ## 00000018
	lui     t9, %hi(func_80B387B8)     ## t9 = 80B40000
	addiu   t9, t9, %lo(func_80B387B8) ## t9 = 80B387B8
	sw      t1, 0x0018(s0)             ## 00000018
	lw      t0, 0x001C(s1)             ## 0000001C
	sw      t0, 0x001C(s0)             ## 0000001C
	lw      t1, 0x0020(s1)             ## 00000020
	sw      t1, 0x0020(s0)             ## 00000020
	lw      t2, 0x0034(s1)             ## 00000034
	sh      t2, 0x005C(s0)             ## 0000005C
	lh      t3, 0x0026(s1)             ## 00000026
	sh      t3, 0x0052(s0)             ## 00000052
	lh      t4, 0x0030(s1)             ## 00000030
	sh      t4, 0x0056(s0)             ## 00000056
	lh      v0, 0x0030(s1)             ## 00000030
	beql    v0, $zero, lbl_80B383E4    
	lbu     t5, 0x002B(s1)             ## 0000002B
	beq     $zero, $zero, lbl_80B38418 
	sh      v0, 0x0054(s0)             ## 00000054
	lbu     t5, 0x002B(s1)             ## 0000002B
lbl_80B383E4:
	lw      t6, 0x0034(s1)             ## 00000034
	div     $zero, t5, t6              
	mflo    t7                         
	sh      t7, 0x0054(s0)             ## 00000054
	bne     t6, $zero, lbl_80B38400    
	nop
	break	## 0x01C00
lbl_80B38400:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t6, $at, lbl_80B38418      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t5, $at, lbl_80B38418      
	nop
	break	## 0x01800
lbl_80B38418:
	sw      t8, 0x0028(s0)             ## 00000028
	sw      t9, 0x0024(s0)             ## 00000024
	lh      t0, 0x0024(s1)             ## 00000024
	sh      t0, 0x0040(s0)             ## 00000040
	lbu     t1, 0x0028(s1)             ## 00000028
	sh      t1, 0x0044(s0)             ## 00000044
	lbu     t2, 0x0029(s1)             ## 00000029
	sh      t2, 0x0046(s0)             ## 00000046
	lbu     t3, 0x002A(s1)             ## 0000002A
	sh      t3, 0x0048(s0)             ## 00000048
	lbu     t4, 0x002B(s1)             ## 0000002B
	sh      t4, 0x004A(s0)             ## 0000004A
	lbu     t5, 0x002C(s1)             ## 0000002C
	sh      t5, 0x004C(s0)             ## 0000004C
	lbu     t6, 0x002D(s1)             ## 0000002D
	sh      t6, 0x004E(s0)             ## 0000004E
	lbu     t7, 0x002E(s1)             ## 0000002E
	beq     $zero, $zero, lbl_80B385C0 
	sh      t7, 0x0050(s0)             ## 00000050
	addiu   $at, $zero, 0x0001         ## $at = 00000001
lbl_80B38468:
	bne     v0, $at, lbl_80B385B8      
	addiu   v1, $zero, 0x00FF          ## v1 = 000000FF
	addiu   v0, $zero, 0x009B          ## v0 = 0000009B
	lw      t8, 0x0034(s1)             ## 00000034
	lui     t5, %hi(func_80B385E8)     ## t5 = 80B40000
	lui     t6, %hi(func_80B387B8)     ## t6 = 80B40000
	sh      t8, 0x005C(s0)             ## 0000005C
	lh      t9, 0x0026(s1)             ## 00000026
	sh      $zero, 0x0056(s0)          ## 00000056
	addiu   t3, $zero, 0x00FA          ## t3 = 000000FA
	sh      t9, 0x0052(s0)             ## 00000052
	lw      t0, 0x0034(s1)             ## 00000034
	addiu   t4, $zero, 0x00B4          ## t4 = 000000B4
	addiu   t5, t5, %lo(func_80B385E8) ## t5 = 80B385E8
	div     $zero, v0, t0              
	mflo    t1                         
	sh      t1, 0x0054(s0)             ## 00000054
	lh      t2, 0x0024(s1)             ## 00000024
	addiu   t6, t6, %lo(func_80B387B8) ## t6 = 80B387B8
	sh      v1, 0x0044(s0)             ## 00000044
	sh      v1, 0x0046(s0)             ## 00000046
	sh      v0, 0x0048(s0)             ## 00000048
	sh      v0, 0x004A(s0)             ## 0000004A
	sh      t3, 0x004C(s0)             ## 0000004C
	sh      t4, 0x004E(s0)             ## 0000004E
	sh      $zero, 0x0050(s0)          ## 00000050
	sw      t5, 0x0028(s0)             ## 00000028
	sw      t6, 0x0024(s0)             ## 00000024
	sh      t2, 0x0040(s0)             ## 00000040
	lw      s2, 0x003C(s1)             ## 0000003C
	bne     t0, $zero, lbl_80B384EC    
	nop
	break	## 0x01C00
lbl_80B384EC:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t0, $at, lbl_80B38504      
	lui     $at, 0x8000                ## $at = 80000000
	bne     v0, $at, lbl_80B38504      
	nop
	break	## 0x01800
lbl_80B38504:
	blez    s2, lbl_80B385C0           
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f24                  ## $f24 = 0.50
	nop
lbl_80B38514:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	sub.s   $f4, $f0, $f24             
	lwc1    $f6, 0x0038(s1)            ## 00000038
	lwc1    $f10, 0x0000(s1)           ## 00000000
	mul.s   $f8, $f4, $f6              
	add.s   $f16, $f8, $f10            
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f16, 0x0000(s0)           ## 00000000
	sub.s   $f18, $f0, $f24            
	lwc1    $f4, 0x0038(s1)            ## 00000038
	lwc1    $f8, 0x0004(s1)            ## 00000004
	mul.s   $f6, $f18, $f4             
	add.s   $f10, $f6, $f8             
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f10, 0x0004(s0)           ## 00000004
	sub.s   $f16, $f0, $f24            
	lwc1    $f18, 0x0038(s1)           ## 00000038
	lwc1    $f6, 0x0008(s1)            ## 00000008
	mul.s   $f4, $f16, $f18            
	add.s   $f8, $f4, $f6              
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f8, 0x0008(s0)            ## 00000008
	sub.s   $f20, $f0, $f24            
	add.s   $f22, $f20, $f20           
	swc1    $f22, 0x000C(s0)           ## 0000000C
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f22, 0x0018(s0)           ## 00000018
	sub.s   $f20, $f0, $f24            
	add.s   $f22, $f20, $f20           
	swc1    $f22, 0x0010(s0)           ## 00000010
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f22, 0x001C(s0)           ## 0000001C
	sub.s   $f20, $f0, $f24            
	addiu   s2, s2, 0xFFFF             ## s2 = FFFFFFFF
	add.s   $f22, $f20, $f20           
	swc1    $f22, 0x0014(s0)           ## 00000014
	bgtz    s2, lbl_80B38514           
	swc1    $f22, 0x0020(s0)           ## 00000020
	beq     $zero, $zero, lbl_80B385C4 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B385B8:
	beq     $zero, $zero, lbl_80B385C4 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B385C0:
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80B385C4:
	lw      $ra, 0x003C($sp)           
	ldc1    $f20, 0x0018($sp)          
	ldc1    $f22, 0x0020($sp)          
	ldc1    $f24, 0x0028($sp)          
	lw      s0, 0x0030($sp)            
	lw      s1, 0x0034($sp)            
	lw      s2, 0x0038($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_80B385E8:
	addiu   $sp, $sp, 0xFEF0           ## $sp = FFFFFEF0
	sw      s1, 0x0018($sp)            
	or      s1, a2, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      s0, 0x0014($sp)            
	sw      a0, 0x0110($sp)            
	sw      a1, 0x0114($sp)            
	lw      t6, 0x0110($sp)            
	lw      s0, 0x0000(t6)             ## 00000000
	lh      t7, 0x0040(s1)             ## 00000040
	lui     $at, %hi(var_80B38850)     ## $at = 80B40000
	lwc1    $f8, %lo(var_80B38850)($at) 
	mtc1    t7, $f4                    ## $f4 = 0.00
	lw      a1, 0x0000(s1)             ## 00000000
	lw      a2, 0x0004(s1)             ## 00000004
	cvt.s.w $f6, $f4                   
	lw      a3, 0x0008(s1)             ## 00000008
	addiu   a0, $sp, 0x00CC            ## a0 = FFFFFFBC
	mul.s   $f0, $f6, $f8              
	jal     func_8008F82C              ## guTranslateF
	swc1    $f0, 0x0044($sp)           
	lwc1    $f0, 0x0044($sp)           
	addiu   a0, $sp, 0x008C            ## a0 = FFFFFF7C
	mfc1    a1, $f0                    
	mfc1    a2, $f0                    
	mfc1    a3, $f0                    
	jal     func_8008F4A8              ## guScaleF
	nop
	addiu   a0, $sp, 0x00CC            ## a0 = FFFFFFBC
	addiu   a1, $sp, 0x008C            ## a1 = FFFFFF7C
	jal     func_8008EDB8              
	addiu   a2, $sp, 0x004C            ## a2 = FFFFFF3C
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8008FC98              
	addiu   a1, $sp, 0x004C            ## a1 = FFFFFF3C
	beq     v0, $zero, lbl_80B387A4    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8007E930              
	sw      v0, 0x0048($sp)            
	lw      a3, 0x0048($sp)            
	lw      v0, 0x02D0(s0)             ## 000002D0
	lui     t9, 0xFA00                 ## t9 = FA000000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s0)             ## 000002D0
	sw      t9, 0x0000(v0)             ## 00000000
	lh      t0, 0x004A(s1)             ## 0000004A
	lh      t6, 0x0046(s1)             ## 00000046
	lh      t3, 0x0044(s1)             ## 00000044
	andi    t1, t0, 0x00FF             ## t1 = 00000000
	lh      t0, 0x0048(s1)             ## 00000048
	andi    t7, t6, 0x00FF             ## t7 = 00000000
	sll     t4, t3, 24                 
	or      t5, t1, t4                 ## t5 = 00000000
	sll     t8, t7, 16                 
	andi    t2, t0, 0x00FF             ## t2 = 00000000
	sll     t3, t2,  8                 
	or      t9, t5, t8                 ## t9 = 00000008
	or      t1, t9, t3                 ## t1 = 00000008
	sw      t1, 0x0004(v0)             ## 00000004
	lw      v0, 0x02D0(s0)             ## 000002D0
	lui     t6, 0xFB00                 ## t6 = FB000000
	addiu   t4, v0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02D0(s0)             ## 000002D0
	sw      t6, 0x0000(v0)             ## 00000000
	lh      t7, 0x004A(s1)             ## 0000004A
	lh      t3, 0x004E(s1)             ## 0000004E
	lh      t0, 0x004C(s1)             ## 0000004C
	andi    t5, t7, 0x00FF             ## t5 = 00000000
	lh      t7, 0x0050(s1)             ## 00000050
	andi    t1, t3, 0x00FF             ## t1 = 00000000
	sll     t2, t0, 24                 
	or      t9, t5, t2                 ## t9 = 00000000
	sll     t4, t1, 16                 
	andi    t8, t7, 0x00FF             ## t8 = 00000000
	sll     t0, t8,  8                 
	or      t6, t9, t4                 ## t6 = 00000008
	or      t5, t6, t0                 ## t5 = 00000008
	sw      t5, 0x0004(v0)             ## 00000004
	lw      v0, 0x02D0(s0)             ## 000002D0
	lui     t3, 0xDA38                 ## t3 = DA380000
	ori     t3, t3, 0x0003             ## t3 = DA380003
	addiu   t2, v0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02D0(s0)             ## 000002D0
	sw      a3, 0x0004(v0)             ## 00000004
	sw      t3, 0x0000(v0)             ## 00000000
	lw      v0, 0x02D0(s0)             ## 000002D0
	lui     t9, 0xDA38                 ## t9 = DA380000
	lui     t4, 0x0100                 ## t4 = 01000000
	addiu   t1, v0, 0x0008             ## t1 = 00000008
	sw      t1, 0x02D0(s0)             ## 000002D0
	addiu   t4, t4, 0x0000             ## t4 = 01000000
	ori     t9, t9, 0x0001             ## t9 = DA380001
	sw      t9, 0x0000(v0)             ## 00000000
	sw      t4, 0x0004(v0)             ## 00000004
	lw      v0, 0x02D0(s0)             ## 000002D0
	lui     t8, 0xFCFF                 ## t8 = FCFF0000
	lui     t6, 0xFF2D                 ## t6 = FF2D0000
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s0)             ## 000002D0
	ori     t6, t6, 0xFEFF             ## t6 = FF2DFEFF
	ori     t8, t8, 0x97FF             ## t8 = FCFF97FF
	sw      t8, 0x0000(v0)             ## 00000000
	sw      t6, 0x0004(v0)             ## 00000004
	lw      v0, 0x02D0(s0)             ## 000002D0
	lui     t2, 0x0403                 ## t2 = 04030000
	addiu   t2, t2, 0x7BD0             ## t2 = 04037BD0
	addiu   t0, v0, 0x0008             ## t0 = 00000008
	sw      t0, 0x02D0(s0)             ## 000002D0
	lui     t5, 0xDE00                 ## t5 = DE000000
	sw      t5, 0x0000(v0)             ## 00000000
	sw      t2, 0x0004(v0)             ## 00000004
lbl_80B387A4:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0110           ## $sp = 00000000


func_80B387B8:
	sw      a0, 0x0000($sp)            
	sw      a1, 0x0004($sp)            
	lh      t6, 0x0040(a2)             ## 00000040
	lh      t7, 0x0052(a2)             ## 00000052
	addu    t8, t6, t7                 
	sh      t8, 0x0040(a2)             ## 00000040
	lh      t9, 0x0040(a2)             ## 00000040
	bgezl   t9, lbl_80B387E4           
	lh      t0, 0x0056(a2)             ## 00000056
	sh      $zero, 0x0040(a2)          ## 00000040
	lh      t0, 0x0056(a2)             ## 00000056
lbl_80B387E4:
	beql    t0, $zero, lbl_80B3881C    
	lh      v0, 0x004A(a2)             ## 0000004A
	lh      t1, 0x004A(a2)             ## 0000004A
	lh      t2, 0x0054(a2)             ## 00000054
	addiu   t5, $zero, 0x00FF          ## t5 = 000000FF
	addu    t3, t1, t2                 
	sh      t3, 0x004A(a2)             ## 0000004A
	lh      t4, 0x004A(a2)             ## 0000004A
	slti    $at, t4, 0x0100            
	bne     $at, $zero, lbl_80B38838   
	nop
	jr      $ra                        
	sh      t5, 0x004A(a2)             ## 0000004A
lbl_80B38818:
	lh      v0, 0x004A(a2)             ## 0000004A
lbl_80B3881C:
	lh      v1, 0x0054(a2)             ## 00000054
	slt     $at, v0, v1                
	beq     $at, $zero, lbl_80B38834   
	subu    t6, v0, v1                 
	jr      $ra                        
	sh      $zero, 0x004A(a2)          ## 0000004A
lbl_80B38834:
	sh      t6, 0x004A(a2)             ## 0000004A
lbl_80B38838:
	jr      $ra                        
	nop

.section .data

.word 0x00000021
.word func_80B38320
.word 0x00000000, 0x00000000

.section .rodata

var_80B38850: .word 0x3C23D70A, 0x00000000, 0x00000000, 0x00000000

