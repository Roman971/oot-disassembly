#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B344D0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      t7, 0x0000(a3)             ## 00000000
	addiu   t2, $zero, 0x0064          ## t2 = 00000064
	addiu   t4, $zero, 0x00FF          ## t4 = 000000FF
	sw      t7, 0x0000(a2)             ## 00000000
	lw      t6, 0x0004(a3)             ## 00000004
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f12                  ## $f12 = 5.00
	sw      t6, 0x0004(a2)             ## 00000004
	lw      t7, 0x0008(a3)             ## 00000008
	sw      t7, 0x0008(a2)             ## 00000008
	lw      t9, 0x000C(a3)             ## 0000000C
	sw      t9, 0x000C(a2)             ## 0000000C
	lw      t8, 0x0010(a3)             ## 00000010
	sw      t8, 0x0010(a2)             ## 00000010
	lw      t9, 0x0014(a3)             ## 00000014
	sw      t9, 0x0014(a2)             ## 00000014
	lw      t1, 0x0018(a3)             ## 00000018
	sw      t1, 0x0018(a2)             ## 00000018
	lw      t0, 0x001C(a3)             ## 0000001C
	sw      t0, 0x001C(a2)             ## 0000001C
	lw      t1, 0x0020(a3)             ## 00000020
	sh      t2, 0x005C(a2)             ## 0000005C
	sw      t1, 0x0020(a2)             ## 00000020
	lh      t3, 0x0024(a3)             ## 00000024
	sh      t4, 0x0040(a2)             ## 00000040
	sh      t3, 0x004C(a2)             ## 0000004C
	sw      a3, 0x0024($sp)            
	jal     func_80026D64              
	sw      a2, 0x0020($sp)            
	trunc.w.s $f4, $f0                   
	lw      a2, 0x0020($sp)            
	lw      a3, 0x0024($sp)            
	lui     t1, %hi(func_80B345A0)     ## t1 = 80B30000
	mfc1    t8, $f4                    
	lui     t2, %hi(func_80B347FC)     ## t2 = 80B30000
	addiu   t1, t1, %lo(func_80B345A0) ## t1 = 80B345A0
	addiu   t9, t8, 0xFFE7             ## t9 = FFFFFFE7
	sh      t9, 0x0044(a2)             ## 00000044
	lbu     t0, 0x0026(a3)             ## 00000026
	addiu   t2, t2, %lo(func_80B347FC) ## t2 = 80B347FC
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	sw      t1, 0x0028(a2)             ## 00000028
	sw      t2, 0x0024(a2)             ## 00000024
	sh      t0, 0x0046(a2)             ## 00000046
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B345A0:
	addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
	sw      s2, 0x0040($sp)            
	sw      s1, 0x003C($sp)            
	lui     $at, %hi(var_80B348B0)     ## $at = 80B30000
	lwc1    $f0, %lo(var_80B348B0)($at) 
	or      s1, a2, $zero              ## s1 = 00000000
	or      s2, a0, $zero              ## s2 = 00000000
	sw      $ra, 0x0044($sp)           
	sw      s0, 0x0038($sp)            
	sw      a1, 0x006C($sp)            
	lh      t6, 0x004A(s1)             ## 0000004A
	lw      s0, 0x0000(s2)             ## 00000000
	or      a3, $zero, $zero           ## a3 = 00000000
	mtc1    t6, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	div.s   $f8, $f6, $f0              
	swc1    $f8, 0x005C($sp)           
	lh      t7, 0x0048(s1)             ## 00000048
	mtc1    t7, $f10                   ## $f10 = 0.00
	nop
	cvt.s.w $f16, $f10                 
	div.s   $f18, $f16, $f0            
	swc1    $f18, 0x0058($sp)          
	lwc1    $f12, 0x0000(s1)           ## 00000000
	lwc1    $f14, 0x0004(s1)           ## 00000004
	jal     func_800AA7F4              
	lw      a2, 0x0008(s1)             ## 00000008
	lwc1    $f12, 0x005C($sp)          
	lwc1    $f14, 0x0058($sp)          
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mfc1    a2, $f12                   
	jal     func_800AA8FC              
	nop
	jal     func_8007E2C0              
	lw      a0, 0x0000(s2)             ## 00000000
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t9, 0xDB06                 ## t9 = DB060000
	ori     t9, t9, 0x0020             ## t9 = DB060020
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s0)             ## 000002D0
	sw      t9, 0x0000(v1)             ## 00000000
	lw      a0, 0x0000(s2)             ## 00000000
	addiu   t1, $zero, 0x0020          ## t1 = 00000020
	addiu   t2, $zero, 0x0040          ## t2 = 00000040
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	sw      t3, 0x0018($sp)            
	sw      t2, 0x0014($sp)            
	sw      t1, 0x0010($sp)            
	sw      $zero, 0x001C($sp)         
	lw      t5, 0x009C(s2)             ## 0000009C
	lh      t4, 0x0044(s1)             ## 00000044
	addiu   t8, $zero, 0x0080          ## t8 = 00000080
	addiu   t7, $zero, 0x0020          ## t7 = 00000020
	multu   t4, t5                     
	sw      t7, 0x0024($sp)            
	sw      t8, 0x0028($sp)            
	or      a1, $zero, $zero           ## a1 = 00000000
	or      a2, $zero, $zero           ## a2 = 00000000
	or      a3, $zero, $zero           ## a3 = 00000000
	sw      v1, 0x004C($sp)            
	mflo    t6                         
	sw      t6, 0x0020($sp)            
	jal     func_8007EB84              
	nop
	lw      t0, 0x004C($sp)            
	lui     t6, 0xFB00                 ## t6 = FB000000
	sw      v0, 0x0004(t0)             ## 00000004
	lh      t9, 0x0046(s1)             ## 00000046
	slti    $at, t9, 0x0064            
	bnel    $at, $zero, lbl_80B34714   
	lw      v1, 0x02D0(s0)             ## 000002D0
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t2, 0xFA00                 ## t2 = FA000000
	ori     t2, t2, 0x8080             ## t2 = FA008080
	addiu   t1, v1, 0x0008             ## t1 = 00000008
	sw      t1, 0x02D0(s0)             ## 000002D0
	sw      t2, 0x0000(v1)             ## 00000000
	lh      t3, 0x0040(s1)             ## 00000040
	lui     $at, 0xFFFF                ## $at = FFFF0000
	andi    t4, t3, 0x00FF             ## t4 = 00000000
	or      t5, t4, $at                ## t5 = FFFF0000
	sw      t5, 0x0004(v1)             ## 00000004
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t7, 0xFB00                 ## t7 = FB000000
	lui     t8, 0xFF0A                 ## t8 = FF0A0000
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s0)             ## 000002D0
	sw      t8, 0x0004(v1)             ## 00000004
	sw      t7, 0x0000(v1)             ## 00000000
	beq     $zero, $zero, lbl_80B3475C 
	lw      v1, 0x02D0(s0)             ## 000002D0
	lw      v1, 0x02D0(s0)             ## 000002D0
lbl_80B34714:
	lui     t1, 0xFA00                 ## t1 = FA000000
	ori     t1, t1, 0x8080             ## t1 = FA008080
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s0)             ## 000002D0
	sw      t1, 0x0000(v1)             ## 00000000
	lh      t2, 0x0040(s1)             ## 00000040
	addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
	andi    t3, t2, 0x00FF             ## t3 = 00000080
	or      t4, t3, $at                ## t4 = FFFFFF80
	sw      t4, 0x0004(v1)             ## 00000004
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t7, 0x00FF                 ## t7 = 00FF0000
	ori     t7, t7, 0xFF00             ## t7 = 00FFFF00
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s0)             ## 000002D0
	sw      t7, 0x0004(v1)             ## 00000004
	sw      t6, 0x0000(v1)             ## 00000000
	lw      v1, 0x02D0(s0)             ## 000002D0
lbl_80B3475C:
	lui     t9, 0xE700                 ## t9 = E7000000
	lui     $at, 0x0001                ## $at = 00010000
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s0)             ## 000002D0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t9, 0x0000(v1)             ## 00000000
	ori     $at, $at, 0x1DA0           ## $at = 00011DA0
	jal     func_800ABE54              
	addu    a0, s2, $at                
	lw      t1, 0x006C($sp)            
	lui     $at, %hi(var_80B348B4)     ## $at = 80B30000
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	andi    t2, t1, 0x0001             ## t2 = 00000000
	beql    t2, $zero, lbl_80B347A4    
	lw      s1, 0x02D0(s0)             ## 000002D0
	jal     func_800AAB94              
	lwc1    $f12, %lo(var_80B348B4)($at) 
	lw      s1, 0x02D0(s0)             ## 000002D0
lbl_80B347A4:
	lui     t4, 0xDA38                 ## t4 = DA380000
	ori     t4, t4, 0x0003             ## t4 = DA380003
	addiu   t3, s1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02D0(s0)             ## 000002D0
	sw      t4, 0x0000(s1)             ## 00000000
	jal     func_800AB900              
	lw      a0, 0x0000(s2)             ## 00000000
	sw      v0, 0x0004(s1)             ## 00000004
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t7, 0x0405                 ## t7 = 04050000
	addiu   t7, t7, 0x2A10             ## t7 = 04052A10
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s0)             ## 000002D0
	lui     t6, 0xDE00                 ## t6 = DE000000
	sw      t6, 0x0000(v1)             ## 00000000
	sw      t7, 0x0004(v1)             ## 00000004
	lw      $ra, 0x0044($sp)           
	lw      s0, 0x0038($sp)            
	lw      s1, 0x003C($sp)            
	lw      s2, 0x0040($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0068           ## $sp = 00000000


func_80B347FC:
	sw      a0, 0x0000($sp)            
	sw      a1, 0x0004($sp)            
	lh      v0, 0x004A(a2)             ## 0000004A
	lh      v1, 0x004C(a2)             ## 0000004C
	addiu   t6, v0, 0x0004             ## t6 = 00000004
	slt     $at, v0, v1                
	beql    $at, $zero, lbl_80B34858   
	lh      v0, 0x0040(a2)             ## 00000040
	sh      t6, 0x004A(a2)             ## 0000004A
	lh      t7, 0x0048(a2)             ## 00000048
	lh      t9, 0x004A(a2)             ## 0000004A
	addiu   t8, t7, 0x0004             ## t8 = 00000004
	slt     $at, v1, t9                
	beq     $at, $zero, lbl_80B34878   
	sh      t8, 0x0048(a2)             ## 00000048
	lh      t0, 0x0046(a2)             ## 00000046
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	sh      v1, 0x004A(a2)             ## 0000004A
	beql    t0, $at, lbl_80B3487C      
	lh      t3, 0x0046(a2)             ## 00000046
	beq     $zero, $zero, lbl_80B34878 
	sh      v1, 0x0048(a2)             ## 00000048
	lh      v0, 0x0040(a2)             ## 00000040
lbl_80B34858:
	blez    v0, lbl_80B34878           
	addiu   t1, v0, 0xFFF6             ## t1 = FFFFFFF6
	sh      t1, 0x0040(a2)             ## 00000040
	lh      t2, 0x0040(a2)             ## 00000040
	bgtzl   t2, lbl_80B3487C           
	lh      t3, 0x0046(a2)             ## 00000046
	sh      $zero, 0x0040(a2)          ## 00000040
	sh      $zero, 0x005C(a2)          ## 0000005C
lbl_80B34878:
	lh      t3, 0x0046(a2)             ## 00000046
lbl_80B3487C:
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bne     t3, $at, lbl_80B34894      
	nop
	lh      t4, 0x0048(a2)             ## 00000048
	addiu   t5, t4, 0x0001             ## t5 = 00000001
	sh      t5, 0x0048(a2)             ## 00000048
lbl_80B34894:
	jr      $ra                        
	nop
	nop

.section .data

.word 0x00000017
.word func_80B344D0
.word 0x00000000, 0x00000000

.section .rodata

var_80B348B0: .word 0x461C4000
var_80B348B4: .word 0x40490FDB, 0x00000000, 0x00000000

