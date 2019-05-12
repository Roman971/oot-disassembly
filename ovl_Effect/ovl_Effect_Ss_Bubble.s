#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B2F3A0:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s1, 0x0020($sp)            
	sw      s0, 0x001C($sp)            
	or      s0, a2, $zero              ## s0 = 00000000
	or      s1, a3, $zero              ## s1 = 00000000
	sw      $ra, 0x0024($sp)           
	sdc1    $f20, 0x0010($sp)          
	sw      a0, 0x0038($sp)            
	sw      a1, 0x003C($sp)            
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f20                  ## $f20 = 0.50
	lui     v1, 0x0406                 ## v1 = 04060000
	addiu   v1, v1, 0xB3E0             ## v1 = 0405B3E0
	c.lt.s  $f0, $f20                  
	nop
	bc1f    lbl_80B2F3F8               
	nop
	lui     v1, 0x0406                 ## v1 = 04060000
	beq     $zero, $zero, lbl_80B2F3F8 
	addiu   v1, v1, 0xB2E0             ## v1 = 0405B2E0
lbl_80B2F3F8:
	jal     func_800CDCCC              ## Rand.Next() float
	sw      v1, 0x002C($sp)            
	c.lt.s  $f0, $f20                  
	lw      v1, 0x002C($sp)            
	lui     $at, 0x00FF                ## $at = 00FF0000
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	bc1f    lbl_80B2F424               
	sll     t7, v1,  4                 
	lui     v0, 0x0406                 ## v0 = 04060000
	beq     $zero, $zero, lbl_80B2F42C 
	addiu   v0, v0, 0xB2E0             ## v0 = 0405B2E0
lbl_80B2F424:
	lui     v0, 0x0406                 ## v0 = 04060000
	addiu   v0, v0, 0xB3E0             ## v0 = 0405B3E0
lbl_80B2F42C:
	srl     t8, t7, 28                 
	sll     t9, t8,  2                 
	lui     t0, 0x8012                 ## t0 = 80120000
	addu    t0, t0, t9                 
	lw      t0, 0x0C38(t0)             ## 80120C38
	and     t6, v0, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t1, t6, t0                 
	addu    t2, t1, $at                
	jal     func_800CDCCC              ## Rand.Next() float
	sw      t2, 0x0038(s0)             ## 00000038
	sub.s   $f4, $f0, $f20             
	lwc1    $f6, 0x0014(s1)            ## 00000014
	lwc1    $f10, 0x0000(s1)           ## 00000000
	mul.s   $f8, $f4, $f6              
	add.s   $f16, $f8, $f10            
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f16, 0x0000(s0)           ## 00000000
	sub.s   $f18, $f0, $f20            
	lwc1    $f4, 0x0010(s1)            ## 00000010
	lwc1    $f8, 0x000C(s1)            ## 0000000C
	lwc1    $f16, 0x0004(s1)           ## 00000004
	mul.s   $f6, $f18, $f4             
	add.s   $f10, $f6, $f8             
	add.s   $f18, $f10, $f16           
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f18, 0x0004(s0)           ## 00000004
	sub.s   $f4, $f0, $f20             
	lwc1    $f6, 0x0014(s1)            ## 00000014
	lwc1    $f10, 0x0008(s1)           ## 00000008
	addiu   a0, s0, 0x002C             ## a0 = 0000002C
	mul.s   $f8, $f4, $f6              
	or      a1, s0, $zero              ## a1 = 00000000
	add.s   $f16, $f8, $f10            
	jal     func_80063CAC              ## Vec3f_Copy
	swc1    $f16, 0x0008(s0)           ## 00000008
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	jal     func_800CDCCC              ## Rand.Next() float
	sh      t3, 0x005C(s0)             ## 0000005C
	mul.s   $f18, $f0, $f20            
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f4                   ## $f4 = 1.00
	lwc1    $f8, 0x0018(s1)            ## 00000018
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f16                  ## $f16 = 100.00
	lui     t7, %hi(func_80B2F530)     ## t7 = 80B30000
	add.s   $f6, $f18, $f4             
	lui     t8, %hi(func_80B2F684)     ## t8 = 80B30000
	addiu   t7, t7, %lo(func_80B2F530) ## t7 = 80B2F530
	addiu   t8, t8, %lo(func_80B2F684) ## t8 = 80B2F684
	mul.s   $f10, $f6, $f8             
	sw      t7, 0x0028(s0)             ## 00000028
	sw      t8, 0x0024(s0)             ## 00000024
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	mul.s   $f18, $f10, $f16           
	trunc.w.s $f4, $f18                  
	mfc1    t5, $f4                    
	nop
	sh      t5, 0x0040(s0)             ## 00000040
	lw      $ra, 0x0024($sp)           
	ldc1    $f20, 0x0010($sp)          
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80B2F530:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s1, 0x0018($sp)            
	or      s1, a2, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      s0, 0x0014($sp)            
	sw      a1, 0x003C($sp)            
	lh      t6, 0x0040(s1)             ## 00000040
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f8                   ## $f8 = 100.00
	mtc1    t6, $f4                    ## $f4 = 0.00
	lw      s0, 0x0000(a0)             ## 00000000
	or      a3, $zero, $zero           ## a3 = 00000000
	cvt.s.w $f6, $f4                   
	div.s   $f10, $f6, $f8             
	swc1    $f10, 0x0030($sp)          
	lwc1    $f12, 0x0000(s1)           ## 00000000
	lwc1    $f14, 0x0004(s1)           ## 00000004
	jal     func_800AA7F4              
	lw      a2, 0x0008(s1)             ## 00000008
	lwc1    $f12, 0x0030($sp)          
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mfc1    a2, $f12                   
	jal     func_800AA8FC              
	mov.s   $f14, $f12                 
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t8, 0xDA38                 ## t8 = DA380000
	ori     t8, t8, 0x0003             ## t8 = DA380003
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s0)             ## 000002C0
	sw      t8, 0x0000(v0)             ## 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_800AB900              
	sw      v0, 0x0024($sp)            
	lw      v1, 0x0024($sp)            
	sw      v0, 0x0004(v1)             ## 00000004
	jal     func_8007E298              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t0, 0xFA00                 ## t0 = FA000000
	addiu   t1, $zero, 0xFFFF          ## t1 = FFFFFFFF
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(s0)             ## 000002C0
	sw      t1, 0x0004(v0)             ## 00000004
	sw      t0, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t4, 0x9696                 ## t4 = 96960000
	ori     t4, t4, 0x9600             ## t4 = 96969600
	addiu   t2, v0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(s0)             ## 000002C0
	lui     t3, 0xFB00                 ## t3 = FB000000
	sw      t3, 0x0000(v0)             ## 00000000
	sw      t4, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t6, 0xDB06                 ## t6 = DB060000
	ori     t6, t6, 0x0020             ## t6 = DB060020
	addiu   t5, v0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s0)             ## 000002C0
	sw      t6, 0x0000(v0)             ## 00000000
	lw      t7, 0x0038(s1)             ## 00000038
	lui     t9, 0xDE00                 ## t9 = DE000000
	lui     t3, 0x8012                 ## t3 = 80120000
	sw      t7, 0x0004(v0)             ## 00000004
	lw      a2, 0x02C0(s0)             ## 000002C0
	lui     v0, 0x0402                 ## v0 = 04020000
	addiu   v0, v0, 0xA600             ## v0 = 0401A600
	sll     t0, v0,  4                 
	srl     t1, t0, 28                 
	addiu   t8, a2, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s0)             ## 000002C0
	sll     t2, t1,  2                 
	addu    t3, t3, t2                 
	lui     $at, 0x00FF                ## $at = 00FF0000
	sw      t9, 0x0000(a2)             ## 00000000
	lw      t3, 0x0C38(t3)             ## 80120C38
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	and     t4, v0, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t5, t3, t4                 
	addu    t6, t5, $at                
	sw      t6, 0x0004(a2)             ## 00000004
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80B2F684:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0020($sp)            
	or      s0, a2, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x0044($sp)            
	lwc1    $f4, 0x0004(s0)            ## 00000004
	addiu   t6, $sp, 0x0038            ## t6 = FFFFFFF8
	addiu   t7, $sp, 0x003C            ## t7 = FFFFFFFC
	swc1    $f4, 0x0038($sp)           
	lw      a3, 0x0008(s0)             ## 00000008
	lw      a2, 0x0000(s0)             ## 00000000
	sw      a0, 0x0040($sp)            
	sw      t7, 0x0014($sp)            
	sw      t6, 0x0010($sp)            
	jal     func_800347FC              
	addiu   a1, a0, 0x07C0             ## a1 = 000007C0
	bne     v0, $zero, lbl_80B2F6D8    
	lw      a0, 0x0040($sp)            
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	beq     $zero, $zero, lbl_80B2F7A4 
	sh      t8, 0x005C(s0)             ## 0000005C
lbl_80B2F6D8:
	lwc1    $f6, 0x0038($sp)           
	lwc1    $f8, 0x0004(s0)            ## 00000004
	addiu   a1, $sp, 0x002C            ## a1 = FFFFFFEC
	or      a2, $zero, $zero           ## a2 = 00000000
	c.lt.s  $f6, $f8                   
	nop
	bc1fl   lbl_80B2F72C               
	lh      t0, 0x005C(s0)             ## 0000005C
	lwc1    $f10, 0x0000(s0)           ## 00000000
	swc1    $f6, 0x0030($sp)           
	addiu   a3, $zero, 0x0050          ## a3 = 00000050
	swc1    $f10, 0x002C($sp)          
	lwc1    $f16, 0x0008(s0)           ## 00000008
	sw      $zero, 0x0010($sp)         
	jal     func_8001CF3C              
	swc1    $f16, 0x0034($sp)          
	addiu   t9, $zero, 0xFFFF          ## t9 = FFFFFFFF
	sh      t9, 0x005C(s0)             ## 0000005C
	beq     $zero, $zero, lbl_80B2F7A8 
	lw      $ra, 0x0024($sp)           
	lh      t0, 0x005C(s0)             ## 0000005C
lbl_80B2F72C:
	addiu   t1, t0, 0x0001             ## t1 = 00000001
	jal     func_800CDCCC              ## Rand.Next() float
	sh      t1, 0x005C(s0)             ## 0000005C
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f18                  ## $f18 = 0.50
	lui     $at, 0x3E80                ## $at = 3E800000
	mtc1    $at, $f8                   ## $f8 = 0.25
	mul.s   $f4, $f0, $f18             
	lwc1    $f6, 0x002C(s0)            ## 0000002C
	sub.s   $f10, $f4, $f8             
	add.s   $f16, $f10, $f6            
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f16, 0x0000(s0)           ## 00000000
	lui     $at, %hi(var_80B2F7D0)     ## $at = 80B30000
	lwc1    $f18, %lo(var_80B2F7D0)($at) 
	lui     $at, %hi(var_80B2F7D4)     ## $at = 80B30000
	lwc1    $f8, %lo(var_80B2F7D4)($at) 
	sub.s   $f4, $f0, $f18             
	mul.s   $f10, $f4, $f8             
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f10, 0x001C(s0)           ## 0000001C
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f6                   ## $f6 = 0.50
	lui     $at, 0x3E80                ## $at = 3E800000
	mtc1    $at, $f18                  ## $f18 = 0.25
	mul.s   $f16, $f0, $f6             
	lwc1    $f8, 0x0034(s0)            ## 00000034
	sub.s   $f4, $f16, $f18            
	add.s   $f10, $f4, $f8             
	swc1    $f10, 0x0008(s0)           ## 00000008
lbl_80B2F7A4:
	lw      $ra, 0x0024($sp)           
lbl_80B2F7A8:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop

.section .data

.word 0x00000007
.word func_80B2F3A0
.word 0x00000000, 0x00000000

.section .rodata

var_80B2F7D0: .word 0x3E99999A
var_80B2F7D4: .word 0x3E4CCCCD, 0x00000000, 0x00000000

