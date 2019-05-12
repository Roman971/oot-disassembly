#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B30720:
	sw      a0, 0x0000($sp)            
	sw      a1, 0x0004($sp)            
	lw      t7, 0x0000(a3)             ## 00000000
	lui     v1, 0x0403                 ## v1 = 04030000
	addiu   v1, v1, 0xD3D0             ## v1 = 0402D3D0
	sw      t7, 0x0000(a2)             ## 00000000
	lw      t6, 0x0004(a3)             ## 00000004
	sll     t8, v1,  4                 
	srl     t9, t8, 28                 
	sw      t6, 0x0004(a2)             ## 00000004
	lw      t7, 0x0008(a3)             ## 00000008
	sll     t0, t9,  2                 
	lui     t1, 0x8012                 ## t1 = 80120000
	addu    t1, t1, t0                 
	lui     $at, 0x00FF                ## $at = 00FF0000
	sw      t7, 0x0008(a2)             ## 00000008
	lw      t1, 0x0C38(t1)             ## 80120C38
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	and     t2, v1, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t3, t1, t2                 
	addu    t4, t3, $at                
	sw      t4, 0x0038(a2)             ## 00000038
	lh      t5, 0x0018(a3)             ## 00000018
	lui     t6, %hi(func_80B308AC)     ## t6 = 80B30000
	lui     t7, %hi(func_80B30B44)     ## t7 = 80B30000
	addiu   t6, t6, %lo(func_80B308AC) ## t6 = 80B308AC
	addiu   t7, t7, %lo(func_80B30B44) ## t7 = 80B30B44
	sw      t6, 0x0028(a2)             ## 00000028
	sw      t7, 0x0024(a2)             ## 00000024
	sh      t5, 0x005C(a2)             ## 0000005C
	lbu     t8, 0x000C(a3)             ## 0000000C
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	sh      t8, 0x0040(a2)             ## 00000040
	lbu     t9, 0x000D(a3)             ## 0000000D
	sh      t9, 0x0042(a2)             ## 00000042
	lbu     t0, 0x000E(a3)             ## 0000000E
	sh      t0, 0x0044(a2)             ## 00000044
	lbu     t1, 0x000F(a3)             ## 0000000F
	sh      t1, 0x0046(a2)             ## 00000046
	lbu     t2, 0x0010(a3)             ## 00000010
	sh      t2, 0x0048(a2)             ## 00000048
	lbu     t3, 0x0011(a3)             ## 00000011
	sh      t3, 0x004A(a2)             ## 0000004A
	lbu     t4, 0x0012(a3)             ## 00000012
	sh      t4, 0x004C(a2)             ## 0000004C
	lbu     t5, 0x0013(a3)             ## 00000013
	sh      t5, 0x004E(a2)             ## 0000004E
	lh      t6, 0x001A(a3)             ## 0000001A
	sh      t6, 0x0050(a2)             ## 00000050
	lh      t7, 0x0014(a3)             ## 00000014
	sh      t7, 0x0052(a2)             ## 00000052
	lh      t8, 0x0016(a3)             ## 00000016
	sh      t8, 0x0054(a2)             ## 00000054
	lh      t9, 0x0018(a3)             ## 00000018
	sh      t9, 0x0056(a2)             ## 00000056
	jr      $ra                        
	nop


func_80B30808:
	addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0078($sp)            
	sw      a1, 0x007C($sp)            
	sw      a2, 0x0080($sp)            
	sw      a3, 0x0084($sp)            
	jal     func_8001B1A4              
	addiu   a0, $sp, 0x0018            ## a0 = FFFFFFA0
	lw      t6, 0x0084($sp)            
	addiu   a1, $sp, 0x0018            ## a1 = FFFFFFA0
	or      t9, a1, $zero              ## t9 = FFFFFFA0
	addiu   t0, t6, 0x0060             ## t0 = 00000060
lbl_80B30838:
	lw      t8, 0x0000(t6)             ## 00000000
	addiu   t6, t6, 0x000C             ## t6 = 0000000C
	addiu   t9, t9, 0x000C             ## t9 = FFFFFFAC
	sw      t8, -0x000C(t9)            ## FFFFFFA0
	lw      t7, -0x0008(t6)            ## 00000004
	sw      t7, -0x0008(t9)            ## FFFFFFA4
	lw      t8, -0x0004(t6)            ## 00000008
	bne     t6, t0, lbl_80B30838       
	sw      t8, -0x0004(t9)            ## FFFFFFA8
	lw      t1, 0x007C($sp)            
	lw      t3, 0x0000(t1)             ## 00000000
	sw      t3, 0x0000(a1)             ## FFFFFFA0
	lw      t2, 0x0004(t1)             ## 00000004
	sw      t2, 0x0004(a1)             ## FFFFFFA4
	lw      t3, 0x0008(t1)             ## 00000008
	sw      t3, 0x0008(a1)             ## FFFFFFA8
	lh      t4, 0x0068($sp)            
	lh      t0, 0x0082($sp)            
	lh      t6, 0x006E($sp)            
	addiu   t5, t4, 0xFFFF             ## t5 = FFFFFFFF
	sh      t5, 0x0068($sp)            
	lw      a0, 0x0078($sp)            
	sh      t0, 0x006C($sp)            
	jal     func_8001B3D0              
	sh      t6, 0x0074($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0078           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B308AC:
	addiu   $sp, $sp, 0xFE28           ## $sp = FFFFFE28
	sw      s0, 0x0014($sp)            
	or      s0, a2, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      s1, 0x0018($sp)            
	sw      a0, 0x01D8($sp)            
	sw      a1, 0x01DC($sp)            
	lw      t6, 0x01D8($sp)            
	addiu   a0, $sp, 0x0154            ## a0 = FFFFFF7C
	lw      s1, 0x0000(t6)             ## 00000000
	lh      t7, 0x0052(s0)             ## 00000052
	lh      t8, 0x0056(s0)             ## 00000056
	lh      t9, 0x005C(s0)             ## 0000005C
	mtc1    t7, $f4                    ## $f4 = 0.00
	lui     $at, %hi(var_80B30D60)     ## $at = 80B30000
	lwc1    $f8, %lo(var_80B30D60)($at) 
	cvt.s.w $f6, $f4                   
	subu    v0, t8, t9                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x0008            
	mul.s   $f2, $f6, $f8              
	bnel    $at, $zero, lbl_80B30914   
	lw      a1, 0x0000(s0)             ## 00000000
	addiu   v0, $zero, 0x0007          ## v0 = 00000007
	lw      a1, 0x0000(s0)             ## 00000000
lbl_80B30914:
	lw      a2, 0x0004(s0)             ## 00000004
	lw      a3, 0x0008(s0)             ## 00000008
	swc1    $f2, 0x004C($sp)           
	jal     func_8008F82C              ## guTranslateF
	sh      v0, 0x004A($sp)            
	lui     $at, %hi(var_80B30D64)     ## $at = 80B30000
	lwc1    $f2, 0x004C($sp)           
	lwc1    $f10, %lo(var_80B30D64)($at) 
	addiu   a0, $sp, 0x0114            ## a0 = FFFFFF3C
	mfc1    a2, $f2                    
	mul.s   $f0, $f2, $f10             
	mfc1    a1, $f0                    
	mfc1    a3, $f0                    
	jal     func_8008F4A8              ## guScaleF
	nop
	lwc1    $f16, 0x002C(s0)           ## 0000002C
	lwc1    $f4, 0x0030(s0)            ## 00000030
	addiu   a0, $sp, 0x00D4            ## a0 = FFFFFEFC
	trunc.w.s $f18, $f16                 
	lh      a3, 0x0054(s0)             ## 00000054
	trunc.w.s $f6, $f4                   
	mfc1    a1, $f18                   
	mfc1    a2, $f6                    
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	sll     a2, a2, 16                 
	jal     func_8008F50C              
	sra     a2, a2, 16                 
	lw      a1, 0x01D8($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1DA0           ## $at = 00011DA0
	addiu   a0, $sp, 0x0154            ## a0 = FFFFFF7C
	addiu   a2, $sp, 0x0094            ## a2 = FFFFFEBC
	jal     func_8008EDB8              
	addu    a1, a1, $at                
	addiu   a0, $sp, 0x0094            ## a0 = FFFFFEBC
	addiu   a1, $sp, 0x00D4            ## a1 = FFFFFEFC
	jal     func_8008EDB8              
	addiu   a2, $sp, 0x0054            ## a2 = FFFFFE7C
	addiu   a0, $sp, 0x0054            ## a0 = FFFFFE7C
	addiu   a1, $sp, 0x0114            ## a1 = FFFFFF3C
	jal     func_8008EDB8              
	addiu   a2, $sp, 0x0194            ## a2 = FFFFFFBC
	lw      v0, 0x02D0(s1)             ## 000002D0
	lui     t3, 0xDA38                 ## t3 = DA380000
	lui     t4, 0x8010                 ## t4 = 80100000
	addiu   t2, v0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02D0(s1)             ## 000002D0
	addiu   t4, t4, 0xEDB0             ## t4 = 800FEDB0
	ori     t3, t3, 0x0003             ## t3 = DA380003
	sw      t3, 0x0000(v0)             ## 00000000
	sw      t4, 0x0004(v0)             ## 00000004
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8008FC98              
	addiu   a1, $sp, 0x0194            ## a1 = FFFFFFBC
	beq     v0, $zero, lbl_80B30B30    
	or      a1, v0, $zero              ## a1 = 00000000
	lw      v0, 0x02D0(s1)             ## 000002D0
	lui     t6, 0xDA38                 ## t6 = DA380000
	ori     t6, t6, 0x0003             ## t6 = DA380003
	addiu   t5, v0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s1)             ## 000002D0
	sw      a1, 0x0004(v0)             ## 00000004
	sw      t6, 0x0000(v0)             ## 00000000
	jal     func_8007E978              
	or      a0, s1, $zero              ## a0 = 00000000
	lw      v0, 0x02D0(s1)             ## 000002D0
	lui     t8, 0xDB06                 ## t8 = DB060000
	ori     t8, t8, 0x0020             ## t8 = DB060020
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s1)             ## 000002D0
	sw      t8, 0x0000(v0)             ## 00000000
	lh      t9, 0x004A($sp)            
	lui     a0, %hi(var_80B30D38)      ## a0 = 80B30000
	lui     t5, 0x8012                 ## t5 = 80120000
	sll     t0, t9,  2                 
	addu    a0, a0, t0                 
	lw      a0, %lo(var_80B30D38)(a0)  
	lui     $at, 0x00FF                ## $at = 00FF0000
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	sll     t2, a0,  4                 
	srl     t3, t2, 28                 
	sll     t4, t3,  2                 
	addu    t5, t5, t4                 
	lw      t5, 0x0C38(t5)             ## 80120C38
	and     t1, a0, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t6, t1, t5                 
	addu    t7, t6, $at                
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02D0(s1)             ## 000002D0
	lui     t9, 0xFA00                 ## t9 = FA000000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s1)             ## 000002D0
	sw      t9, 0x0000(v0)             ## 00000000
	lh      t0, 0x0046(s0)             ## 00000046
	lh      t6, 0x0042(s0)             ## 00000042
	lh      t4, 0x0040(s0)             ## 00000040
	andi    t2, t0, 0x00FF             ## t2 = 00000000
	lh      t0, 0x0044(s0)             ## 00000044
	andi    t7, t6, 0x00FF             ## t7 = 00000000
	sll     t1, t4, 24                 
	or      t5, t2, t1                 ## t5 = 00000000
	sll     t8, t7, 16                 
	andi    t3, t0, 0x00FF             ## t3 = 00000000
	sll     t4, t3,  8                 
	or      t9, t5, t8                 ## t9 = 00000008
	or      t2, t9, t4                 ## t2 = 00000008
	sw      t2, 0x0004(v0)             ## 00000004
	lw      v0, 0x02D0(s1)             ## 000002D0
	lui     t6, 0xFB00                 ## t6 = FB000000
	addiu   t1, v0, 0x0008             ## t1 = 00000008
	sw      t1, 0x02D0(s1)             ## 000002D0
	sw      t6, 0x0000(v0)             ## 00000000
	lh      t7, 0x004E(s0)             ## 0000004E
	lh      t4, 0x004A(s0)             ## 0000004A
	lh      t0, 0x0048(s0)             ## 00000048
	andi    t5, t7, 0x00FF             ## t5 = 00000000
	lh      t7, 0x004C(s0)             ## 0000004C
	andi    t2, t4, 0x00FF             ## t2 = 00000000
	sll     t3, t0, 24                 
	or      t9, t5, t3                 ## t9 = 00000000
	sll     t1, t2, 16                 
	andi    t8, t7, 0x00FF             ## t8 = 00000000
	sll     t0, t8,  8                 
	or      t6, t9, t1                 ## t6 = 00000008
	or      t5, t6, t0                 ## t5 = 00000008
	sw      t5, 0x0004(v0)             ## 00000004
	lw      v0, 0x02D0(s1)             ## 000002D0
	lui     t4, 0xDE00                 ## t4 = DE000000
	addiu   t3, v0, 0x0008             ## t3 = 00000008
	sw      t3, 0x02D0(s1)             ## 000002D0
	sw      t4, 0x0000(v0)             ## 00000000
	lw      t2, 0x0038(s0)             ## 00000038
	sw      t2, 0x0004(v0)             ## 00000004
lbl_80B30B30:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x01D8           ## $sp = 00000000


func_80B30B44:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      s1, 0x0020($sp)            
	sw      s0, 0x001C($sp)            
	or      s0, a2, $zero              ## s0 = 00000000
	or      s1, a0, $zero              ## s1 = 00000000
	sw      $ra, 0x0024($sp)           
	sdc1    $f20, 0x0010($sp)          
	sw      a1, 0x0054($sp)            
	lh      t6, 0x0050(s0)             ## 00000050
	beql    t6, $zero, lbl_80B30D1C    
	lw      $ra, 0x0024($sp)           
	lh      t7, 0x005C(s0)             ## 0000005C
	lh      t9, 0x0056(s0)             ## 00000056
	addiu   t8, t7, 0x0001             ## t8 = 00000001
	bnel    t8, t9, lbl_80B30D1C       
	lw      $ra, 0x0024($sp)           
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f4                   ## $f4 = 0.50
	addiu   v1, $zero, 0x0001          ## v1 = 00000001
	c.lt.s  $f0, $f4                   
	nop
	bc1f    lbl_80B30BB0               
	nop
	beq     $zero, $zero, lbl_80B30BB0 
	addiu   v1, $zero, 0xFFFF          ## v1 = FFFFFFFF
lbl_80B30BB0:
	jal     func_800CDCCC              ## Rand.Next() float
	sw      v1, 0x0034($sp)            
	lui     $at, %hi(var_80B30D68)     ## $at = 80B30000
	lwc1    $f6, %lo(var_80B30D68)($at) 
	lw      v1, 0x0034($sp)            
	lh      v0, 0x0054(s0)             ## 00000054
	mul.s   $f8, $f0, $f6              
	lui     $at, %hi(var_80B30D6C)     ## $at = 80B30000
	lwc1    $f4, %lo(var_80B30D6C)($at) 
	lui     $at, 0x42A0                ## $at = 42A00000
	addiu   a0, v0, 0xC000             ## a0 = FFFFC000
	sll     a0, a0, 16                 
	sra     a0, a0, 16                 
	trunc.w.s $f10, $f8                  
	mtc1    $at, $f8                   ## $f8 = 80.00
	mfc1    t1, $f10                   
	nop
	sll     t2, t1, 16                 
	sra     t3, t2, 16                 
	addiu   t4, t3, 0x0E38             ## t4 = 00000E38
	multu   t4, v1                     
	mflo    t5                         
	addu    t6, t5, v0                 
	sh      t6, 0x003E($sp)            
	lh      t7, 0x0052(s0)             ## 00000052
	mtc1    t7, $f16                   ## $f16 = 0.00
	nop
	cvt.s.w $f18, $f16                 
	mul.s   $f6, $f18, $f4             
	nop
	mul.s   $f20, $f6, $f8             
	jal     func_800636C4              ## sins?
	nop
	mul.s   $f10, $f0, $f20            
	lwc1    $f16, 0x0004(s0)           ## 00000004
	add.s   $f18, $f10, $f16           
	swc1    $f18, 0x0044($sp)          
	lh      a0, 0x0054(s0)             ## 00000054
	addiu   a0, a0, 0xC000             ## a0 = FFFFC000
	sll     a0, a0, 16                 
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	lh      t8, 0x07A0(s1)             ## 000007A0
	mul.s   $f20, $f0, $f20            
	sll     t9, t8,  2                 
	addu    t0, s1, t9                 
	jal     func_80049708              
	lw      a0, 0x0790(t0)             ## 00000790
	sll     a0, v0, 16                 
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	mul.s   $f6, $f0, $f20             
	lwc1    $f4, 0x0000(s0)            ## 00000000
	sub.s   $f8, $f4, $f6              
	swc1    $f8, 0x0040($sp)           
	lh      t1, 0x07A0(s1)             ## 000007A0
	sll     t2, t1,  2                 
	addu    t3, s1, t2                 
	jal     func_80049708              
	lw      a0, 0x0790(t3)             ## 00000790
	sll     a0, v0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	mul.s   $f10, $f0, $f20            
	lwc1    $f16, 0x0008(s0)           ## 00000008
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a1, $sp, 0x0040            ## a1 = FFFFFFF0
	lh      a2, 0x003E($sp)            
	or      a3, s0, $zero              ## a3 = 00000000
	add.s   $f18, $f10, $f16           
	jal     func_80B30808              
	swc1    $f18, 0x0048($sp)          
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_80B30D70)     ## $at = 80B30000
	lwc1    $f4, %lo(var_80B30D70)($at) 
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a1, $sp, 0x0040            ## a1 = FFFFFFF0
	c.lt.s  $f0, $f4                   
	nop
	bc1fl   lbl_80B30D1C               
	lw      $ra, 0x0024($sp)           
	lh      t4, 0x0054(s0)             ## 00000054
	lh      t6, 0x003E($sp)            
	or      a3, s0, $zero              ## a3 = 00000000
	sll     t5, t4,  1                 
	subu    a2, t5, t6                 
	sll     a2, a2, 16                 
	jal     func_80B30808              
	sra     a2, a2, 16                 
	lw      $ra, 0x0024($sp)           
lbl_80B30D1C:
	ldc1    $f20, 0x0010($sp)          
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000

.section .data

.word 0x0000000D
.word func_80B30720
var_80B30D38: .word \
0x0402A3D0, 0x0402A9D0, 0x0402AFD0, 0x0402B5D0, \
0x0402BBD0, 0x0402C1D0, 0x0402C7D0, 0x0402CDD0, \
0x00000000, 0x00000000

.section .rodata

var_80B30D60: .word 0x3C23D70A
var_80B30D64: .word 0x3F19999A
var_80B30D68: .word 0x45638000
var_80B30D6C: .word 0x3C23D70A
var_80B30D70: .word 0x3DCCCCCD, 0x00000000, 0x00000000, 0x00000000

