#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B3F8B0:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0034($sp)            
	lui     a2, 0x8002                 ## a2 = 80020000
	addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	lui     a1, 0x43C8                 ## a1 = 43C80000
	jal     func_8001EC20              
	lui     a3, 0x4150                 ## a3 = 41500000
	addiu   a1, s0, 0x0144             ## a1 = 00000144
	sw      a1, 0x0024($sp)            
	jal     func_8004AB7C              
	lw      a0, 0x0034($sp)            
	lui     a3, %hi(var_80B3FE00)      ## a3 = 80B40000
	lw      a1, 0x0024($sp)            
	addiu   a3, a3, %lo(var_80B3FE00)  ## a3 = 80B3FE00
	lw      a0, 0x0034($sp)            
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	lh      t6, 0x001C(s0)             ## 0000001C
	lw      a0, 0x0034($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	lui     a1, %hi(var_80B3FE2C)      ## a1 = 80B40000
	sll     t7, t6,  1                 
	addu    a1, a1, t7                 
	ori     $at, $at, 0x17A4           ## $at = 000117A4
	lh      a1, %lo(var_80B3FE2C)(a1)  
	jal     func_80081628              ## ObjectIndex
	addu    a0, a0, $at                
	sb      v0, 0x0140(s0)             ## 00000140
	lb      t8, 0x0140(s0)             ## 00000140
	lui     t9, %hi(func_80B3F998)     ## t9 = 80B40000
	addiu   t9, t9, %lo(func_80B3F998) ## t9 = 80B3F998
	bgezl   t8, lbl_80B3F958           
	sw      t9, 0x013C(s0)             ## 0000013C
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B3F95C 
	lw      $ra, 0x001C($sp)           
	sw      t9, 0x013C(s0)             ## 0000013C
lbl_80B3F958:
	lw      $ra, 0x001C($sp)           
lbl_80B3F95C:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3F96C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	or      a0, a3, $zero              ## a0 = 00000000
	jal     func_8004ABCC              
	addiu   a1, a2, 0x0144             ## a1 = 00000144
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3F998:
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
	beq     v0, $zero, lbl_80B3FA00    
	lw      a2, 0x0018($sp)            
	lui     $at, 0x4120                ## $at = 41200000
	lb      t6, 0x0140(a2)             ## 00000140
	mtc1    $at, $f4                   ## $f4 = 10.00
	lui     t7, %hi(func_80B3FCFC)     ## t7 = 80B40000
	lui     t9, %hi(func_80B3FA10)     ## t9 = 80B40000
	addiu   t7, t7, %lo(func_80B3FCFC) ## t7 = 80B3FCFC
	addiu   t8, $zero, 0x001E          ## t8 = 0000001E
	addiu   t9, t9, %lo(func_80B3FA10) ## t9 = 80B3FA10
	sw      t7, 0x0134(a2)             ## 00000134
	sh      $zero, 0x00B6(a2)          ## 000000B6
	sh      t8, 0x0142(a2)             ## 00000142
	sw      t9, 0x013C(a2)             ## 0000013C
	sb      t6, 0x001E(a2)             ## 0000001E
	swc1    $f4, 0x0068(a2)            ## 00000068
lbl_80B3FA00:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3FA10:
	addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
	sw      s0, 0x0030($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      a1, 0x005C($sp)            
	lw      t6, 0x005C($sp)            
	lh      t7, 0x0142(s0)             ## 00000142
	lui     $at, 0xBF80                ## $at = BF800000
	lw      v1, 0x1C44(t6)             ## 00001C44
	addiu   t8, t7, 0xFFFF             ## t8 = FFFFFFFF
	sh      t8, 0x0142(s0)             ## 00000142
	lh      t9, 0x0142(s0)             ## 00000142
	bnel    t9, $zero, lbl_80B3FA58    
	lh      t0, 0x0018(s0)             ## 00000018
	mtc1    $at, $f4                   ## $f4 = -1.00
	nop
	swc1    $f4, 0x006C(s0)            ## 0000006C
	lh      t0, 0x0018(s0)             ## 00000018
lbl_80B3FA58:
	lhu     v0, 0x0088(s0)             ## 00000088
	addiu   t1, t0, 0x2AA8             ## t1 = 00002AA8
	andi    t2, v0, 0x0008             ## t2 = 00000000
	bne     t2, $zero, lbl_80B3FAA8    
	sh      t1, 0x0018(s0)             ## 00000018
	andi    t3, v0, 0x0001             ## t3 = 00000000
	bnel    t3, $zero, lbl_80B3FAAC    
	lb      v0, 0x013E(v1)             ## 0000013E
	lbu     t4, 0x0154(s0)             ## 00000154
	andi    t5, t4, 0x0002             ## t5 = 00000000
	bnel    t5, $zero, lbl_80B3FAAC    
	lb      v0, 0x013E(v1)             ## 0000013E
	lbu     t6, 0x0155(s0)             ## 00000155
	andi    t7, t6, 0x0002             ## t7 = 00000000
	bnel    t7, $zero, lbl_80B3FAAC    
	lb      v0, 0x013E(v1)             ## 0000013E
	lbu     t8, 0x0156(s0)             ## 00000156
	andi    t9, t8, 0x0002             ## t9 = 00000002
	beql    t9, $zero, lbl_80B3FBB8    
	lh      t6, 0x0142(s0)             ## 00000142
lbl_80B3FAA8:
	lb      v0, 0x013E(v1)             ## 0000013E
lbl_80B3FAAC:
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beq     v0, $at, lbl_80B3FACC      
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	bne     v0, $at, lbl_80B3FB2C      
	lui     t0, 0x8012                 ## t0 = 80120000
	lw      t0, -0x5A2C(t0)            ## 8011A5D4
	bnel    t0, $zero, lbl_80B3FB30    
	lwc1    $f6, 0x0024(s0)            ## 00000024
lbl_80B3FACC:
	lbu     v0, 0x0154(s0)             ## 00000154
	andi    t1, v0, 0x0002             ## t1 = 00000000
	beq     t1, $zero, lbl_80B3FB2C    
	andi    t2, v0, 0x0010             ## t2 = 00000000
	beq     t2, $zero, lbl_80B3FB2C    
	andi    t3, v0, 0x0004             ## t3 = 00000000
	beq     t3, $zero, lbl_80B3FB2C    
	andi    t5, v0, 0xFFE9             ## t5 = 00000000
	sb      t5, 0x0154(s0)             ## 00000154
	ori     t6, t5, 0x0008             ## t6 = 00000008
	addiu   t7, $zero, 0x0002          ## t7 = 00000002
	sb      t6, 0x0154(s0)             ## 00000154
	sw      t7, 0x015C(s0)             ## 0000015C
	addiu   a0, v1, 0x0A10             ## a0 = 00000A10
	addiu   a1, $sp, 0x004C            ## a1 = FFFFFFF4
	jal     func_800ABF50              
	or      a2, $zero, $zero           ## a2 = 00000000
	lh      t8, 0x004E($sp)            
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addiu   t0, $zero, 0x001E          ## t0 = 0000001E
	addu    t9, t8, $at                
	sh      t9, 0x0032(s0)             ## 00000032
	beq     $zero, $zero, lbl_80B3FBCC 
	sh      t0, 0x0142(s0)             ## 00000142
lbl_80B3FB2C:
	lwc1    $f6, 0x0024(s0)            ## 00000024
lbl_80B3FB30:
	lui     $at, 0x4080                ## $at = 40800000
	mtc1    $at, $f10                  ## $f10 = 4.00
	swc1    $f6, 0x0040($sp)           
	lwc1    $f8, 0x0028(s0)            ## 00000028
	addiu   t1, $zero, 0x0007          ## t1 = 00000007
	addiu   t2, $zero, 0x0003          ## t2 = 00000003
	add.s   $f16, $f8, $f10            
	addiu   t3, $zero, 0x000F          ## t3 = 0000000F
	addiu   t4, $zero, 0xFFFF          ## t4 = FFFFFFFF
	addiu   t5, $zero, 0x000A          ## t5 = 0000000A
	swc1    $f16, 0x0044($sp)          
	lwc1    $f18, 0x002C(s0)           ## 0000002C
	sw      $zero, 0x0024($sp)         
	sw      t5, 0x0020($sp)            
	sw      t4, 0x001C($sp)            
	sw      t3, 0x0018($sp)            
	sw      t2, 0x0014($sp)            
	sw      t1, 0x0010($sp)            
	lw      a0, 0x005C($sp)            
	addiu   a1, $sp, 0x0040            ## a1 = FFFFFFE8
	lui     a2, 0x40C0                 ## a2 = 40C00000
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_8001D29C              
	swc1    $f18, 0x0048($sp)          
	lw      a0, 0x005C($sp)            
	addiu   a1, s0, 0x0024             ## a1 = 00000024
	addiu   a2, $zero, 0x0014          ## a2 = 00000014
	jal     func_80058FF8              
	addiu   a3, $zero, 0x38C0          ## a3 = 000038C0
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B3FBD0 
	lw      $ra, 0x0034($sp)           
	lh      t6, 0x0142(s0)             ## 00000142
lbl_80B3FBB8:
	addiu   $at, $zero, 0xFED4         ## $at = FFFFFED4
	bnel    t6, $at, lbl_80B3FBD0      
	lw      $ra, 0x0034($sp)           
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80B3FBCC:
	lw      $ra, 0x0034($sp)           
lbl_80B3FBD0:
	lw      s0, 0x0030($sp)            
	addiu   $sp, $sp, 0x0058           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3FBE0:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s2, 0x0028($sp)            
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s2, a1, $zero              ## s2 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      s1, 0x0024($sp)            
	lw      v0, 0x1C44(s2)             ## 00001C44
	lui     $at, 0x3000                ## $at = 30000000
	ori     $at, $at, 0x00C0           ## $at = 300000C0
	lw      t6, 0x066C(v0)             ## 0000066C
	and     t7, t6, $at                
	beql    t7, $zero, lbl_80B3FC30    
	lw      t9, 0x013C(s0)             ## 0000013C
	lw      t9, 0x013C(s0)             ## 0000013C
	lui     t8, %hi(func_80B3F998)     ## t8 = 80B40000
	addiu   t8, t8, %lo(func_80B3F998) ## t8 = 80B3F998
	bnel    t8, t9, lbl_80B3FCE8       
	lw      $ra, 0x002C($sp)           
	lw      t9, 0x013C(s0)             ## 0000013C
lbl_80B3FC30:
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, s2, $zero              ## a1 = 00000000
	jalr    $ra, t9                    
	nop
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     v0, %hi(var_80B3FE00)      ## v0 = 80B40000
	addiu   v0, v0, %lo(var_80B3FE00)  ## v0 = 80B3FE00
	lh      t0, 0x0020(v0)             ## 80B3FE20
	lh      t1, 0x0022(v0)             ## 80B3FE22
	addiu   t2, $zero, 0x0005          ## t2 = 00000005
	mtc1    t0, $f4                    ## $f4 = 0.00
	mtc1    t1, $f6                    ## $f6 = 0.00
	sw      t2, 0x0014($sp)            
	cvt.s.w $f4, $f4                   
	or      a0, s2, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	lui     a2, 0x4120                 ## a2 = 41200000
	cvt.s.w $f8, $f6                   
	mfc1    a3, $f4                    
	jal     func_80021E6C              
	swc1    $f8, 0x0010($sp)           
	addiu   s1, s0, 0x0144             ## s1 = 00000144
	or      a1, s1, $zero              ## a1 = 00000144
	jal     func_80050B00              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t3, 0x0004(s0)             ## 00000004
	lui     $at, 0x0100                ## $at = 01000000
	or      a0, s2, $zero              ## a0 = 00000000
	or      t4, t3, $at                ## t4 = 01000000
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	sw      t4, 0x0004(s0)             ## 00000004
	addu    a1, s2, $at                
	sw      a1, 0x0030($sp)            
	jal     func_8004BD50              ## CollisionCheck_setAT
	or      a2, s1, $zero              ## a2 = 00000144
	or      a0, s2, $zero              ## a0 = 00000000
	lw      a1, 0x0030($sp)            
	jal     func_8004BF40              ## CollisionCheck_setAC
	or      a2, s1, $zero              ## a2 = 00000144
	or      a0, s2, $zero              ## a0 = 00000000
	lw      a1, 0x0030($sp)            
	jal     func_8004C130              ## CollisionCheck_setOT
	or      a2, s1, $zero              ## a2 = 00000144
	lw      $ra, 0x002C($sp)           
lbl_80B3FCE8:
	lw      s0, 0x0020($sp)            
	lw      s1, 0x0024($sp)            
	lw      s2, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_80B3FCFC:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      $ra, 0x001C($sp)           
	sw      s0, 0x0018($sp)            
	sw      a0, 0x0030($sp)            
	sw      a1, 0x0034($sp)            
	lw      t6, 0x0034($sp)            
	lw      a0, 0x0000(t6)             ## 00000000
	jal     func_8007E298              
	or      s0, a0, $zero              ## s0 = 00000000
	lw      a0, 0x0034($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1DA0           ## $at = 00011DA0
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	jal     func_800AA79C              
	addu    a0, a0, $at                
	lw      t7, 0x0030($sp)            
	lui     $at, %hi(var_80B3FE50)     ## $at = 80B40000
	lwc1    $f8, %lo(var_80B3FE50)($at) 
	lh      t8, 0x0018(t7)             ## 00000018
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	mtc1    t8, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	mul.s   $f12, $f6, $f8             
	jal     func_800AAD4C              
	nop
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t0, 0xDA38                 ## t0 = DA380000
	ori     t0, t0, 0x0003             ## t0 = DA380003
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(s0)             ## 000002C0
	sw      t0, 0x0000(v1)             ## 00000000
	lw      t1, 0x0034($sp)            
	lw      a0, 0x0000(t1)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x0020($sp)            
	lw      a1, 0x0020($sp)            
	sw      v0, 0x0004(a1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t3, 0xDE00                 ## t3 = DE000000
	lui     t7, %hi(var_80B3FE38)      ## t7 = 80B40000
	addiu   t2, v1, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(s0)             ## 000002C0
	sw      t3, 0x0000(v1)             ## 00000000
	lw      t4, 0x0030($sp)            
	lh      t5, 0x001C(t4)             ## 0000001C
	sll     t6, t5,  2                 
	addu    t7, t7, t6                 
	lw      t7, %lo(var_80B3FE38)(t7)  
	sw      t7, 0x0004(v1)             ## 00000004
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	nop
	nop
	nop

.section .data

var_80B3FDE0: .word 0x01930600, 0x00000010, 0x00010000, 0x00000190
.word func_80B3F8B0
.word func_80B3F96C
.word func_80B3FBE0
.word 0x00000000
var_80B3FE00: .word \
0x0A110939, 0x20010000, 0x00000000, 0xFFCFFFFF, \
0x00080000, 0xFFCFFFFF, 0x00000000, 0x11010100, \
0x000D000D, 0x00000000, 0x00000000
var_80B3FE2C: .word 0x004A0164, 0x01680171, 0x01720000
var_80B3FE38: .word \
0x06002028, 0x060012F0, 0x06004008, 0x06002410, \
0x06001890, 0x00000000

.section .rodata

var_80B3FE50: .word 0x38C90FDB, 0x00000000, 0x00000000, 0x00000000

