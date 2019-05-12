#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B33000:
	sw      a0, 0x0000($sp)            
	sw      a1, 0x0004($sp)            
	lw      t7, 0x0008(a3)             ## 00000008
	lui     v0, 0x0402                 ## v0 = 04020000
	addiu   v0, v0, 0x1C10             ## v0 = 04021C10
	sw      t7, 0x0000(a2)             ## 00000000
	lw      t6, 0x000C(a3)             ## 0000000C
	sll     t8, v0,  4                 
	srl     t9, t8, 28                 
	sw      t6, 0x0004(a2)             ## 00000004
	lw      t7, 0x0010(a3)             ## 00000010
	sll     t0, t9,  2                 
	lui     t1, 0x8012                 ## t1 = 80120000
	addu    t1, t1, t0                 
	lui     $at, 0x00FF                ## $at = 00FF0000
	sw      t7, 0x0008(a2)             ## 00000008
	lw      t1, 0x0C38(t1)             ## 80120C38
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	and     t2, v0, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t3, t1, t2                 
	addu    t4, t3, $at                
	sw      t4, 0x0038(a2)             ## 00000038
	lw      t5, 0x0000(a3)             ## 00000000
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lui     t8, %hi(func_80B33100)     ## t8 = 80B30000
	bne     t5, $at, lbl_80B3307C      
	addiu   t8, t8, %lo(func_80B33100) ## t8 = 80B33100
	addiu   t6, $zero, 0x0010          ## t6 = 00000010
	beq     $zero, $zero, lbl_80B33084 
	sh      t6, 0x005C(a2)             ## 0000005C
lbl_80B3307C:
	addiu   t7, $zero, 0x0008          ## t7 = 00000008
	sh      t7, 0x005C(a2)             ## 0000005C
lbl_80B33084:
	lui     t9, %hi(func_80B33310)     ## t9 = 80B30000
	addiu   t9, t9, %lo(func_80B33310) ## t9 = 80B33310
	sw      t8, 0x0028(a2)             ## 00000028
	sw      t9, 0x0024(a2)             ## 00000024
	lw      v0, 0x0000(a3)             ## 00000000
	sh      $zero, 0x0040(a2)          ## 00000040
	lw      t0, 0x0000(a3)             ## 00000000
	sll     v0, v0,  2                 
	sll     t1, v0,  2                 
	lui     t2, %hi(var_80B33440)      ## t2 = 80B30000
	addiu   t2, t2, %lo(var_80B33440)  ## t2 = 80B33440
	subu    t1, t1, v0                 
	addu    v1, t1, t2                 
	sh      t0, 0x0042(a2)             ## 00000042
	lbu     t3, 0x0000(v1)             ## 00000000
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	sh      t3, 0x0044(a2)             ## 00000044
	lbu     t4, 0x0001(v1)             ## 00000001
	sh      t4, 0x0046(a2)             ## 00000046
	lbu     t5, 0x0002(v1)             ## 00000002
	sh      t5, 0x0048(a2)             ## 00000048
	lbu     t6, 0x0003(v1)             ## 00000003
	sh      t6, 0x004A(a2)             ## 0000004A
	lbu     t7, 0x0004(v1)             ## 00000004
	sh      t7, 0x004C(a2)             ## 0000004C
	lbu     t8, 0x0005(v1)             ## 00000005
	sh      t8, 0x004E(a2)             ## 0000004E
	lh      t9, 0x0004(a3)             ## 00000004
	sh      t9, 0x0050(a2)             ## 00000050
	jr      $ra                        
	nop


func_80B33100:
	addiu   $sp, $sp, 0xFEA8           ## $sp = FFFFFEA8
	sw      s1, 0x0018($sp)            
	or      s1, a2, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      s0, 0x0014($sp)            
	sw      a0, 0x0158($sp)            
	sw      a1, 0x015C($sp)            
	lw      t6, 0x0158($sp)            
	addiu   a0, $sp, 0x0114            ## a0 = FFFFFFBC
	lw      s0, 0x0000(t6)             ## 00000000
	lw      a1, 0x0000(s1)             ## 00000000
	lw      a2, 0x0004(s1)             ## 00000004
	jal     func_8008F82C              ## guTranslateF
	lw      a3, 0x0008(s1)             ## 00000008
	lh      t7, 0x0050(s1)             ## 00000050
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f8                   ## $f8 = 100.00
	mtc1    t7, $f4                    ## $f4 = 0.00
	addiu   a0, $sp, 0x00D4            ## a0 = FFFFFF7C
	lui     a3, 0x3F80                 ## a3 = 3F800000
	cvt.s.w $f6, $f4                   
	div.s   $f0, $f6, $f8              
	mfc1    a1, $f0                    
	mfc1    a2, $f0                    
	jal     func_8008F4A8              ## guScaleF
	nop
	lw      a1, 0x0158($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1DA0           ## $at = 00011DA0
	addiu   a0, $sp, 0x0114            ## a0 = FFFFFFBC
	addiu   a2, $sp, 0x0054            ## a2 = FFFFFEFC
	jal     func_8008EDB8              
	addu    a1, a1, $at                
	addiu   a0, $sp, 0x0054            ## a0 = FFFFFEFC
	addiu   a1, $sp, 0x00D4            ## a1 = FFFFFF7C
	jal     func_8008EDB8              
	addiu   a2, $sp, 0x0094            ## a2 = FFFFFF3C
	lw      v0, 0x02D0(s0)             ## 000002D0
	lui     t9, 0xDA38                 ## t9 = DA380000
	lui     t0, 0x8010                 ## t0 = 80100000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s0)             ## 000002D0
	addiu   t0, t0, 0xEDB0             ## t0 = 800FEDB0
	ori     t9, t9, 0x0003             ## t9 = DA380003
	sw      t9, 0x0000(v0)             ## 00000000
	sw      t0, 0x0004(v0)             ## 00000004
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8008FC98              
	addiu   a1, $sp, 0x0094            ## a1 = FFFFFF3C
	beq     v0, $zero, lbl_80B332FC    
	or      a3, v0, $zero              ## a3 = 00000000
	lw      v0, 0x02D0(s0)             ## 000002D0
	lui     t2, 0xDA38                 ## t2 = DA380000
	ori     t2, t2, 0x0003             ## t2 = DA380003
	addiu   t1, v0, 0x0008             ## t1 = 00000008
	sw      t1, 0x02D0(s0)             ## 000002D0
	sw      a3, 0x0004(v0)             ## 00000004
	sw      t2, 0x0000(v0)             ## 00000000
	lw      v0, 0x02D0(s0)             ## 000002D0
	lui     t4, 0xDB06                 ## t4 = DB060000
	ori     t4, t4, 0x0020             ## t4 = DB060020
	addiu   t3, v0, 0x0008             ## t3 = 00000008
	sw      t3, 0x02D0(s0)             ## 000002D0
	sw      t4, 0x0000(v0)             ## 00000000
	lh      t8, 0x0042(s1)             ## 00000042
	lh      t5, 0x0040(s1)             ## 00000040
	lui     a2, %hi(var_80B33470)      ## a2 = 80B30000
	sll     t9, t8,  5                 
	sll     t6, t5,  2                 
	addu    t0, t6, t9                 
	addu    a2, a2, t0                 
	lw      a2, %lo(var_80B33470)(a2)  
	lui     t5, 0x8012                 ## t5 = 80120000
	lui     $at, 0x00FF                ## $at = 00FF0000
	sll     t2, a2,  4                 
	srl     t3, t2, 28                 
	sll     t4, t3,  2                 
	addu    t5, t5, t4                 
	lw      t5, 0x0C38(t5)             ## 80120C38
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	and     t1, a2, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t7, t1, t5                 
	addu    t8, t7, $at                
	sw      t8, 0x0004(v0)             ## 00000004
	jal     func_8007E978              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      v0, 0x02D0(s0)             ## 000002D0
	lui     t9, 0xFA00                 ## t9 = FA000000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s0)             ## 000002D0
	sw      t9, 0x0000(v0)             ## 00000000
	lh      t0, 0x0048(s1)             ## 00000048
	lh      t8, 0x0046(s1)             ## 00000046
	lh      t1, 0x0044(s1)             ## 00000044
	andi    t2, t0, 0x00FF             ## t2 = 00000000
	sll     t3, t2,  8                 
	andi    t6, t8, 0x00FF             ## t6 = 00000000
	sll     t5, t1, 24                 
	or      t7, t3, t5                 ## t7 = 00000000
	sll     t9, t6, 16                 
	or      t0, t7, t9                 ## t0 = FA000000
	ori     t2, t0, 0x00FF             ## t2 = FA0000FF
	sw      t2, 0x0004(v0)             ## 00000004
	lw      v0, 0x02D0(s0)             ## 000002D0
	lui     t1, 0xFB00                 ## t1 = FB000000
	addiu   t4, v0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02D0(s0)             ## 000002D0
	sw      t1, 0x0000(v0)             ## 00000000
	lh      t3, 0x004E(s1)             ## 0000004E
	lh      t2, 0x004C(s1)             ## 0000004C
	lh      t7, 0x004A(s1)             ## 0000004A
	andi    t5, t3, 0x00FF             ## t5 = 00000000
	sll     t8, t5,  8                 
	andi    t4, t2, 0x00FF             ## t4 = 000000FF
	sll     t9, t7, 24                 
	or      t0, t8, t9                 ## t0 = FA000000
	sll     t1, t4, 16                 
	or      t3, t0, t1                 ## t3 = FB000000
	sw      t3, 0x0004(v0)             ## 00000004
	lw      v0, 0x02D0(s0)             ## 000002D0
	lui     t6, 0xDE00                 ## t6 = DE000000
	addiu   t5, v0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s0)             ## 000002D0
	sw      t6, 0x0000(v0)             ## 00000000
	lw      t7, 0x0038(s1)             ## 00000038
	sw      t7, 0x0004(v0)             ## 00000004
lbl_80B332FC:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0158           ## $sp = 00000000


func_80B33310:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0014($sp)            
	or      s0, a2, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      s1, 0x0018($sp)            
	sw      a0, 0x0020($sp)            
	sw      a1, 0x0024($sp)            
	lh      t6, 0x0042(s0)             ## 00000042
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lui     t4, %hi(var_80B33440)      ## t4 = 80B30000
	bne     t6, $at, lbl_80B33364      
	addiu   t4, t4, %lo(var_80B33440)  ## t4 = 80B33440
	lh      v0, 0x005C(s0)             ## 0000005C
	addiu   t7, $zero, 0x000F          ## t7 = 0000000F
	subu    t8, t7, v0                 
	bgez    t8, lbl_80B3335C           
	sra     t9, t8,  1                 
	addiu   $at, t8, 0x0001            ## $at = 00000001
	sra     t9, $at,  1                
lbl_80B3335C:
	beq     $zero, $zero, lbl_80B33374 
	sh      t9, 0x0040(s0)             ## 00000040
lbl_80B33364:
	lh      v0, 0x005C(s0)             ## 0000005C
	addiu   t0, $zero, 0x0007          ## t0 = 00000007
	subu    t1, t0, v0                 
	sh      t1, 0x0040(s0)             ## 00000040
lbl_80B33374:
	lh      t2, 0x0040(s0)             ## 00000040
	beql    t2, $zero, lbl_80B33428    
	lw      $ra, 0x001C($sp)           
	lh      v1, 0x0042(s0)             ## 00000042
	lh      a0, 0x0044(s0)             ## 00000044
	addiu   a2, v0, 0x0001             ## a2 = 00000001
	sll     v1, v1,  2                 
	addiu   v1, v1, 0x0002             ## v1 = 00000002
	sll     t3, v1,  2                 
	subu    t3, t3, v1                 
	addu    s1, t3, t4                 
	jal     func_8001B8FC              
	lbu     a1, 0x0000(s1)             ## 00000000
	lh      a2, 0x005C(s0)             ## 0000005C
	sh      v0, 0x0044(s0)             ## 00000044
	lbu     a1, 0x0001(s1)             ## 00000001
	lh      a0, 0x0046(s0)             ## 00000046
	jal     func_8001B8FC              
	addiu   a2, a2, 0x0001             ## a2 = 00000001
	lh      a2, 0x005C(s0)             ## 0000005C
	sh      v0, 0x0046(s0)             ## 00000046
	lbu     a1, 0x0002(s1)             ## 00000002
	lh      a0, 0x0048(s0)             ## 00000048
	jal     func_8001B8FC              
	addiu   a2, a2, 0x0001             ## a2 = 00000001
	lh      a2, 0x005C(s0)             ## 0000005C
	sh      v0, 0x0048(s0)             ## 00000048
	lbu     a1, 0x0003(s1)             ## 00000003
	lh      a0, 0x004A(s0)             ## 0000004A
	jal     func_8001B8FC              
	addiu   a2, a2, 0x0001             ## a2 = 00000001
	lh      a2, 0x005C(s0)             ## 0000005C
	sh      v0, 0x004A(s0)             ## 0000004A
	lbu     a1, 0x0004(s1)             ## 00000004
	lh      a0, 0x004C(s0)             ## 0000004C
	jal     func_8001B8FC              
	addiu   a2, a2, 0x0001             ## a2 = 00000001
	lh      a2, 0x005C(s0)             ## 0000005C
	sh      v0, 0x004C(s0)             ## 0000004C
	lbu     a1, 0x0005(s1)             ## 00000005
	lh      a0, 0x004E(s0)             ## 0000004E
	jal     func_8001B8FC              
	addiu   a2, a2, 0x0001             ## a2 = 00000001
	sh      v0, 0x004E(s0)             ## 0000004E
	lw      $ra, 0x001C($sp)           
lbl_80B33428:
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	nop
	nop

.section .data

var_80B33440: .word \
0xFFFFFFFF, 0xFF00FFFF, 0xFFFF0000, 0xFFC864C8, \
0x96009664, 0x00643200, 0xFFFFFFFF, 0x0000FFFF, \
0x00FF0000, 0xFFFFFF00, 0xFFC8FFFF, 0xFF9600FF
var_80B33470: .word \
0x0401F810, 0x0401F990, 0x0401FB10, 0x0401FC90, \
0x0401FE10, 0x0401FF90, 0x04020110, 0x04020290, \
0x04020410, 0x04020590, 0x04020710, 0x04020890, \
0x04020A10, 0x04020B90, 0x04020D10, 0x04020E90, \
0x04021010, 0x04021190, 0x04021310, 0x04021490, \
0x04021610, 0x04021790, 0x04021910, 0x04021A90, \
0x0401F810, 0x0401F990, 0x0401FB10, 0x0401FC90, \
0x0401FE10, 0x0401FF90, 0x04020110, 0x04020290, \
0x00000015
.word func_80B33000
.word 0x00000000, 0x00000000

.section .rodata


