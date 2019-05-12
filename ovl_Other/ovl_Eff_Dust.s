#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A50EF0:
	sw      a1, 0x0550(a0)             ## 00000550
	jr      $ra                        
	nop


func_80A50EFC:
	sw      a1, 0x0554(a0)             ## 00000554
	jr      $ra                        
	nop


func_80A50F08:
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f2                   ## $f2 = 1.00
	mtc1    $zero, $f0                 ## $f0 = 0.00
	or      v0, $zero, $zero           ## v0 = 00000000
	or      v1, a0, $zero              ## v1 = 00000000
	or      a1, a0, $zero              ## a1 = 00000000
	addiu   a2, $zero, 0x0040          ## a2 = 00000040
lbl_80A50F24:
	swc1    $f0, 0x0244(v1)            ## 00000244
	swc1    $f0, 0x0240(v1)            ## 00000240
	swc1    $f0, 0x023C(v1)            ## 0000023C
	swc1    $f2, 0x013C(a1)            ## 0000013C
	swc1    $f0, 0x0248(v1)            ## 00000248
	swc1    $f0, 0x024C(v1)            ## 0000024C
	swc1    $f0, 0x0250(v1)            ## 00000250
	swc1    $f2, 0x0140(a1)            ## 00000140
	swc1    $f0, 0x0254(v1)            ## 00000254
	swc1    $f0, 0x0258(v1)            ## 00000258
	swc1    $f0, 0x025C(v1)            ## 0000025C
	swc1    $f2, 0x0144(a1)            ## 00000144
	swc1    $f0, 0x0260(v1)            ## 00000260
	swc1    $f0, 0x0264(v1)            ## 00000264
	swc1    $f0, 0x0268(v1)            ## 00000268
	addiu   v0, v0, 0x0004             ## v0 = 00000004
	swc1    $f2, 0x0148(a1)            ## 00000148
	addiu   v1, v1, 0x0030             ## v1 = 00000030
	bne     v0, a2, lbl_80A50F24       
	addiu   a1, a1, 0x0010             ## a1 = 00000010
	sb      $zero, 0x053C(a0)          ## 0000053C
	jr      $ra                        
	nop


func_80A50F80:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	lh      t6, 0x001C(s0)             ## 0000001C
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A50F08              
	sw      t6, 0x0020($sp)            
	lw      t7, 0x0020($sp)            
	sltiu   $at, t7, 0x0005            
	beq     $at, $zero, lbl_80A5111C   
	sll     t7, t7,  2                 
	lui     $at, %hi(var_80A52140)     ## $at = 80A50000
	addu    $at, $at, t7               
	lw      t7, %lo(var_80A52140)($at) 
	jr      t7                         
	nop
var_80A50FC8:
	lui     a1, %hi(func_80A51150)     ## a1 = 80A50000
	addiu   a1, a1, %lo(func_80A51150) ## a1 = 80A51150
	jal     func_80A50EF0              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a1, %hi(func_80A51B20)     ## a1 = 80A50000
	addiu   a1, a1, %lo(func_80A51B20) ## a1 = 80A51B20
	jal     func_80A50EFC              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, %hi(var_80A52154)     ## $at = 80A50000
	lwc1    $f0, %lo(var_80A52154)($at) 
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f4                   ## $f4 = 1.00
	lui     $at, %hi(var_80A52158)     ## $at = 80A50000
	swc1    $f0, 0x0544(s0)            ## 00000544
	swc1    $f0, 0x0548(s0)            ## 00000548
	swc1    $f4, 0x0540(s0)            ## 00000540
	lwc1    $f6, %lo(var_80A52158)($at) 
	beq     $zero, $zero, lbl_80A51124 
	swc1    $f6, 0x054C(s0)            ## 0000054C
var_80A51014:
	lui     a1, %hi(func_80A5139C)     ## a1 = 80A50000
	addiu   a1, a1, %lo(func_80A5139C) ## a1 = 80A5139C
	jal     func_80A50EF0              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a1, %hi(func_80A51B20)     ## a1 = 80A50000
	addiu   a1, a1, %lo(func_80A51B20) ## a1 = 80A51B20
	jal     func_80A50EFC              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, %hi(var_80A5215C)     ## $at = 80A50000
	lwc1    $f0, %lo(var_80A5215C)($at) 
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f8                   ## $f8 = 1.00
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f10                  ## $f10 = 0.50
	swc1    $f0, 0x0540(s0)            ## 00000540
	swc1    $f0, 0x0548(s0)            ## 00000548
	swc1    $f8, 0x0544(s0)            ## 00000544
	beq     $zero, $zero, lbl_80A51124 
	swc1    $f10, 0x054C(s0)           ## 0000054C
var_80A51060:
	lui     a1, %hi(func_80A515E8)     ## a1 = 80A50000
	addiu   a1, a1, %lo(func_80A515E8) ## a1 = 80A515E8
	jal     func_80A50EF0              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a1, %hi(func_80A51D7C)     ## a1 = 80A50000
	addiu   a1, a1, %lo(func_80A51D7C) ## a1 = 80A51D7C
	jal     func_80A50EFC              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f16                  ## $f16 = 0.50
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f18                  ## $f18 = 15.00
	swc1    $f16, 0x0540(s0)           ## 00000540
	beq     $zero, $zero, lbl_80A51124 
	swc1    $f18, 0x054C(s0)           ## 0000054C
var_80A5109C:
	lui     a1, %hi(func_80A515E8)     ## a1 = 80A50000
	addiu   a1, a1, %lo(func_80A515E8) ## a1 = 80A515E8
	jal     func_80A50EF0              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a1, %hi(func_80A51D7C)     ## a1 = 80A50000
	addiu   a1, a1, %lo(func_80A51D7C) ## a1 = 80A51D7C
	jal     func_80A50EFC              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f4                   ## $f4 = 0.50
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f6                   ## $f6 = 10.00
	swc1    $f4, 0x0540(s0)            ## 00000540
	beq     $zero, $zero, lbl_80A51124 
	swc1    $f6, 0x054C(s0)            ## 0000054C
var_80A510D8:
	lui     a1, %hi(func_80A515E8)     ## a1 = 80A50000
	addiu   a1, a1, %lo(func_80A515E8) ## a1 = 80A515E8
	jal     func_80A50EF0              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a1, %hi(func_80A51D7C)     ## a1 = 80A50000
	addiu   a1, a1, %lo(func_80A51D7C) ## a1 = 80A51D7C
	jal     func_80A50EFC              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f8                   ## $f8 = 0.50
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f10                  ## $f10 = 20.00
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	sb      t8, 0x0003(s0)             ## 00000003
	swc1    $f8, 0x0540(s0)            ## 00000540
	beq     $zero, $zero, lbl_80A51124 
	swc1    $f10, 0x054C(s0)           ## 0000054C
lbl_80A5111C:
	jal     func_800CDB00              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80A51124:
	addiu   t9, $zero, 0x000A          ## t9 = 0000000A
	sb      t9, 0x053D(s0)             ## 0000053D
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A51140:
	sw      a0, 0x0000($sp)            
	sw      a1, 0x0004($sp)            
	jr      $ra                        
	nop


func_80A51150:
	addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
	sw      s6, 0x0060($sp)            
	or      s6, a0, $zero              ## s6 = 00000000
	sw      $ra, 0x006C($sp)           
	sw      s8, 0x0068($sp)            
	sw      s7, 0x0064($sp)            
	sw      s5, 0x005C($sp)            
	sw      s4, 0x0058($sp)            
	sw      s3, 0x0054($sp)            
	sw      s2, 0x0050($sp)            
	sw      s1, 0x004C($sp)            
	sw      s0, 0x0048($sp)            
	sdc1    $f30, 0x0040($sp)          
	sdc1    $f28, 0x0038($sp)          
	sdc1    $f26, 0x0030($sp)          
	sdc1    $f24, 0x0028($sp)          
	sdc1    $f22, 0x0020($sp)          
	sdc1    $f20, 0x0018($sp)          
	sw      a1, 0x0074($sp)            
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f22                  ## $f22 = 1.00
	lui     $at, %hi(var_80A52160)     ## $at = 80A50000
	addiu   v0, s6, 0x013C             ## v0 = 0000013C
	lwc1    $f2, %lo(var_80A52160)($at) 
	or      s3, $zero, $zero           ## s3 = 00000000
	addiu   v1, $zero, 0x0040          ## v1 = 00000040
lbl_80A511B8:
	lwc1    $f0, 0x0000(v0)            ## 0000013C
	addiu   s3, s3, 0x0004             ## s3 = 00000004
	c.lt.s  $f0, $f22                  
	nop
	bc1fl   lbl_80A511DC               
	lwc1    $f0, 0x0004(v0)            ## 00000140
	add.s   $f4, $f0, $f2              
	swc1    $f4, 0x0000(v0)            ## 0000013C
	lwc1    $f0, 0x0004(v0)            ## 00000140
lbl_80A511DC:
	addiu   v0, v0, 0x0004             ## v0 = 00000140
	c.lt.s  $f0, $f22                  
	nop
	bc1fl   lbl_80A511FC               
	lwc1    $f0, 0x0004(v0)            ## 00000144
	add.s   $f6, $f0, $f2              
	swc1    $f6, 0x0000(v0)            ## 00000140
	lwc1    $f0, 0x0004(v0)            ## 00000144
lbl_80A511FC:
	addiu   v0, v0, 0x0004             ## v0 = 00000144
	c.lt.s  $f0, $f22                  
	nop
	bc1fl   lbl_80A5121C               
	lwc1    $f0, 0x0004(v0)            ## 00000148
	add.s   $f8, $f0, $f2              
	swc1    $f8, 0x0000(v0)            ## 00000144
	lwc1    $f0, 0x0004(v0)            ## 00000148
lbl_80A5121C:
	addiu   v0, v0, 0x0004             ## v0 = 00000148
	c.lt.s  $f0, $f22                  
	nop
	bc1f    lbl_80A51238               
	nop
	add.s   $f10, $f0, $f2             
	swc1    $f10, 0x0000(v0)           ## 00000148
lbl_80A51238:
	bne     s3, v1, lbl_80A511B8       
	addiu   v0, v0, 0x0004             ## v0 = 0000014C
	lui     $at, 0x4580                ## $at = 45800000
	mtc1    $at, $f28                  ## $f28 = 4096.00
	lui     $at, 0x4600                ## $at = 46000000
	mtc1    $at, $f26                  ## $f26 = 8192.00
	lui     $at, 0xC448                ## $at = C4480000
	mtc1    $at, $f24                  ## $f24 = -800.00
	mtc1    $zero, $f30                ## $f30 = 0.00
	or      s5, $zero, $zero           ## s5 = 00000000
	addiu   s8, $zero, 0x0003          ## s8 = 00000003
	addiu   s7, $zero, 0x000C          ## s7 = 0000000C
	lbu     s3, 0x053C(s6)             ## 0000053C
lbl_80A5126C:
	andi    s3, s3, 0x003F             ## s3 = 00000004
	sll     t6, s3,  2                 
	addu    s4, s6, t6                 
	lwc1    $f16, 0x013C(s4)           ## 0000013C
	c.le.s  $f22, $f16                 
	nop
	bc1fl   lbl_80A5134C               
	addiu   s5, s5, 0x0001             ## s5 = 00000001
	jal     func_80026D90              
	mov.s   $f12, $f26                 
	trunc.w.s $f18, $f0                  
	mov.s   $f12, $f28                 
	mfc1    s2, $f18                   
	nop
	sll     s2, s2, 16                 
	jal     func_80026D90              
	sra     s2, s2, 16                 
	trunc.w.s $f4, $f0                   
	sll     a0, s2, 16                 
	sra     a0, a0, 16                 
	mfc1    s0, $f4                    
	nop
	sll     s0, s0, 16                 
	jal     func_80063684              ## coss?
	sra     s0, s0, 16                 
	sll     a0, s0, 16                 
	sra     a0, a0, 16                 
	jal     func_80063684              ## coss?
	mov.s   $f20, $f0                  
	mul.s   $f6, $f24, $f20            
	sll     a0, s0, 16                 
	multu   s3, s7                     
	sra     a0, a0, 16                 
	mul.s   $f8, $f0, $f6              
	mflo    t9                         
	addu    s1, s6, t9                 
	jal     func_800636C4              ## sins?
	swc1    $f8, 0x023C(s1)            ## 0000023C
	mul.s   $f10, $f0, $f24            
	sll     a0, s2, 16                 
	sra     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	swc1    $f10, 0x0240(s1)           ## 00000240
	sll     a0, s0, 16                 
	sra     a0, a0, 16                 
	jal     func_80063684              ## coss?
	mov.s   $f20, $f0                  
	mul.s   $f16, $f24, $f20           
	nop
	mul.s   $f18, $f0, $f16            
	swc1    $f18, 0x0244(s1)           ## 00000244
	swc1    $f30, 0x013C(s4)           ## 0000013C
	lbu     t0, 0x053C(s6)             ## 0000053C
	addiu   t1, t0, 0x0001             ## t1 = 00000001
	sb      t1, 0x053C(s6)             ## 0000053C
	addiu   s5, s5, 0x0001             ## s5 = 00000002
lbl_80A5134C:
	bnel    s5, s8, lbl_80A5126C       
	lbu     s3, 0x053C(s6)             ## 0000053C
	lw      $ra, 0x006C($sp)           
	ldc1    $f20, 0x0018($sp)          
	ldc1    $f22, 0x0020($sp)          
	ldc1    $f24, 0x0028($sp)          
	ldc1    $f26, 0x0030($sp)          
	ldc1    $f28, 0x0038($sp)          
	ldc1    $f30, 0x0040($sp)          
	lw      s0, 0x0048($sp)            
	lw      s1, 0x004C($sp)            
	lw      s2, 0x0050($sp)            
	lw      s3, 0x0054($sp)            
	lw      s4, 0x0058($sp)            
	lw      s5, 0x005C($sp)            
	lw      s6, 0x0060($sp)            
	lw      s7, 0x0064($sp)            
	lw      s8, 0x0068($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0070           ## $sp = 00000000


func_80A5139C:
	addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
	sw      s6, 0x0060($sp)            
	or      s6, a0, $zero              ## s6 = 00000000
	sw      $ra, 0x006C($sp)           
	sw      s8, 0x0068($sp)            
	sw      s7, 0x0064($sp)            
	sw      s5, 0x005C($sp)            
	sw      s4, 0x0058($sp)            
	sw      s3, 0x0054($sp)            
	sw      s2, 0x0050($sp)            
	sw      s1, 0x004C($sp)            
	sw      s0, 0x0048($sp)            
	sdc1    $f30, 0x0040($sp)          
	sdc1    $f28, 0x0038($sp)          
	sdc1    $f26, 0x0030($sp)          
	sdc1    $f24, 0x0028($sp)          
	sdc1    $f22, 0x0020($sp)          
	sdc1    $f20, 0x0018($sp)          
	sw      a1, 0x0074($sp)            
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f22                  ## $f22 = 1.00
	lui     $at, %hi(var_80A52164)     ## $at = 80A50000
	addiu   v0, s6, 0x013C             ## v0 = 0000013C
	lwc1    $f2, %lo(var_80A52164)($at) 
	or      s3, $zero, $zero           ## s3 = 00000000
	addiu   v1, $zero, 0x0040          ## v1 = 00000040
lbl_80A51404:
	lwc1    $f0, 0x0000(v0)            ## 0000013C
	addiu   s3, s3, 0x0004             ## s3 = 00000004
	c.lt.s  $f0, $f22                  
	nop
	bc1fl   lbl_80A51428               
	lwc1    $f0, 0x0004(v0)            ## 00000140
	add.s   $f4, $f0, $f2              
	swc1    $f4, 0x0000(v0)            ## 0000013C
	lwc1    $f0, 0x0004(v0)            ## 00000140
lbl_80A51428:
	addiu   v0, v0, 0x0004             ## v0 = 00000140
	c.lt.s  $f0, $f22                  
	nop
	bc1fl   lbl_80A51448               
	lwc1    $f0, 0x0004(v0)            ## 00000144
	add.s   $f6, $f0, $f2              
	swc1    $f6, 0x0000(v0)            ## 00000140
	lwc1    $f0, 0x0004(v0)            ## 00000144
lbl_80A51448:
	addiu   v0, v0, 0x0004             ## v0 = 00000144
	c.lt.s  $f0, $f22                  
	nop
	bc1fl   lbl_80A51468               
	lwc1    $f0, 0x0004(v0)            ## 00000148
	add.s   $f8, $f0, $f2              
	swc1    $f8, 0x0000(v0)            ## 00000144
	lwc1    $f0, 0x0004(v0)            ## 00000148
lbl_80A51468:
	addiu   v0, v0, 0x0004             ## v0 = 00000148
	c.lt.s  $f0, $f22                  
	nop
	bc1f    lbl_80A51484               
	nop
	add.s   $f10, $f0, $f2             
	swc1    $f10, 0x0000(v0)           ## 00000148
lbl_80A51484:
	bne     s3, v1, lbl_80A51404       
	addiu   v0, v0, 0x0004             ## v0 = 0000014C
	lui     $at, 0x4600                ## $at = 46000000
	mtc1    $at, $f28                  ## $f28 = 8192.00
	lui     $at, 0x4780                ## $at = 47800000
	mtc1    $at, $f26                  ## $f26 = 65536.00
	lui     $at, 0x43C8                ## $at = 43C80000
	mtc1    $at, $f24                  ## $f24 = 400.00
	mtc1    $zero, $f30                ## $f30 = 0.00
	or      s5, $zero, $zero           ## s5 = 00000000
	addiu   s8, $zero, 0x0002          ## s8 = 00000002
	addiu   s7, $zero, 0x000C          ## s7 = 0000000C
	lbu     s3, 0x053C(s6)             ## 0000053C
lbl_80A514B8:
	andi    s3, s3, 0x003F             ## s3 = 00000004
	sll     t6, s3,  2                 
	addu    s4, s6, t6                 
	lwc1    $f16, 0x013C(s4)           ## 0000013C
	c.le.s  $f22, $f16                 
	nop
	bc1fl   lbl_80A51598               
	addiu   s5, s5, 0x0001             ## s5 = 00000001
	jal     func_80026D90              
	mov.s   $f12, $f26                 
	trunc.w.s $f18, $f0                  
	mov.s   $f12, $f28                 
	mfc1    s2, $f18                   
	nop
	sll     s2, s2, 16                 
	jal     func_80026D64              
	sra     s2, s2, 16                 
	trunc.w.s $f4, $f0                   
	sll     a0, s2, 16                 
	sra     a0, a0, 16                 
	mfc1    s0, $f4                    
	nop
	sll     s0, s0, 16                 
	jal     func_80063684              ## coss?
	sra     s0, s0, 16                 
	sll     a0, s0, 16                 
	sra     a0, a0, 16                 
	jal     func_80063684              ## coss?
	mov.s   $f20, $f0                  
	mul.s   $f6, $f24, $f20            
	sll     a0, s0, 16                 
	multu   s3, s7                     
	sra     a0, a0, 16                 
	mul.s   $f8, $f0, $f6              
	mflo    t9                         
	addu    s1, s6, t9                 
	jal     func_800636C4              ## sins?
	swc1    $f8, 0x023C(s1)            ## 0000023C
	mul.s   $f10, $f0, $f24            
	sll     a0, s2, 16                 
	sra     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	swc1    $f10, 0x0240(s1)           ## 00000240
	sll     a0, s0, 16                 
	sra     a0, a0, 16                 
	jal     func_80063684              ## coss?
	mov.s   $f20, $f0                  
	mul.s   $f16, $f24, $f20           
	nop
	mul.s   $f18, $f0, $f16            
	swc1    $f18, 0x0244(s1)           ## 00000244
	swc1    $f30, 0x013C(s4)           ## 0000013C
	lbu     t0, 0x053C(s6)             ## 0000053C
	addiu   t1, t0, 0x0001             ## t1 = 00000001
	sb      t1, 0x053C(s6)             ## 0000053C
	addiu   s5, s5, 0x0001             ## s5 = 00000002
lbl_80A51598:
	bnel    s5, s8, lbl_80A514B8       
	lbu     s3, 0x053C(s6)             ## 0000053C
	lw      $ra, 0x006C($sp)           
	ldc1    $f20, 0x0018($sp)          
	ldc1    $f22, 0x0020($sp)          
	ldc1    $f24, 0x0028($sp)          
	ldc1    $f26, 0x0030($sp)          
	ldc1    $f28, 0x0038($sp)          
	ldc1    $f30, 0x0040($sp)          
	lw      s0, 0x0048($sp)            
	lw      s1, 0x004C($sp)            
	lw      s2, 0x0050($sp)            
	lw      s3, 0x0054($sp)            
	lw      s4, 0x0058($sp)            
	lw      s5, 0x005C($sp)            
	lw      s6, 0x0060($sp)            
	lw      s7, 0x0064($sp)            
	lw      s8, 0x0068($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0070           ## $sp = 00000000


func_80A515E8:
	addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
	sw      s3, 0x004C($sp)            
	or      s3, a0, $zero              ## s3 = 00000000
	sw      $ra, 0x005C($sp)           
	sw      s6, 0x0058($sp)            
	sw      s5, 0x0054($sp)            
	sw      s4, 0x0050($sp)            
	sw      s2, 0x0048($sp)            
	sw      s1, 0x0044($sp)            
	sw      s0, 0x0040($sp)            
	sdc1    $f28, 0x0038($sp)          
	sdc1    $f26, 0x0030($sp)          
	sdc1    $f24, 0x0028($sp)          
	sdc1    $f22, 0x0020($sp)          
	sdc1    $f20, 0x0018($sp)          
	lw      a2, 0x0118(s3)             ## 00000118
	lw      v1, 0x1C44(a1)             ## 00001C44
	addiu   v0, s3, 0x013C             ## v0 = 0000013C
	beql    a2, $zero, lbl_80A51660    
	lbu     v1, 0x053D(s3)             ## 0000053D
	lw      t6, 0x0130(a2)             ## 00000130
	beql    t6, $zero, lbl_80A51660    
	lbu     v1, 0x053D(s3)             ## 0000053D
	lw      t7, 0x066C(v1)             ## 0000066C
	addiu   v1, $zero, 0x0040          ## v1 = 00000040
	or      s2, $zero, $zero           ## s2 = 00000000
	andi    t8, t7, 0x1000             ## t8 = 00000000
	bne     t8, $zero, lbl_80A51728    
	lui     $at, 0x3F80                ## $at = 3F800000
	lbu     v1, 0x053D(s3)             ## 0000053D
lbl_80A51660:
	or      a0, s3, $zero              ## a0 = 00000000
	beq     v1, $zero, lbl_80A51674    
	addiu   t9, v1, 0xFFFF             ## t9 = 0000003F
	beq     $zero, $zero, lbl_80A51680 
	sb      t9, 0x053D(s3)             ## 0000053D
lbl_80A51674:
	jal     func_80020EB4              
	sw      v0, 0x0060($sp)            
	lw      v0, 0x0060($sp)            
lbl_80A51680:
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f22                  ## $f22 = 1.00
	lui     $at, %hi(var_80A52168)     ## $at = 80A50000
	lwc1    $f2, %lo(var_80A52168)($at) 
	or      s2, $zero, $zero           ## s2 = 00000000
	addiu   v1, $zero, 0x0040          ## v1 = 00000040
lbl_80A51698:
	lwc1    $f0, 0x0000(v0)            ## 00000000
	addiu   s2, s2, 0x0004             ## s2 = 00000004
	c.lt.s  $f0, $f22                  
	nop
	bc1fl   lbl_80A516BC               
	lwc1    $f0, 0x0004(v0)            ## 00000004
	add.s   $f4, $f0, $f2              
	swc1    $f4, 0x0000(v0)            ## 00000000
	lwc1    $f0, 0x0004(v0)            ## 00000004
lbl_80A516BC:
	addiu   v0, v0, 0x0004             ## v0 = 00000004
	c.lt.s  $f0, $f22                  
	nop
	bc1fl   lbl_80A516DC               
	lwc1    $f0, 0x0004(v0)            ## 00000008
	add.s   $f6, $f0, $f2              
	swc1    $f6, 0x0000(v0)            ## 00000004
	lwc1    $f0, 0x0004(v0)            ## 00000008
lbl_80A516DC:
	addiu   v0, v0, 0x0004             ## v0 = 00000008
	c.lt.s  $f0, $f22                  
	nop
	bc1fl   lbl_80A516FC               
	lwc1    $f0, 0x0004(v0)            ## 0000000C
	add.s   $f8, $f0, $f2              
	swc1    $f8, 0x0000(v0)            ## 00000008
	lwc1    $f0, 0x0004(v0)            ## 0000000C
lbl_80A516FC:
	addiu   v0, v0, 0x0004             ## v0 = 0000000C
	c.lt.s  $f0, $f22                  
	nop
	bc1f    lbl_80A51718               
	nop
	add.s   $f10, $f0, $f2             
	swc1    $f10, 0x0000(v0)           ## 0000000C
lbl_80A51718:
	bne     s2, v1, lbl_80A51698       
	addiu   v0, v0, 0x0004             ## v0 = 00000010
	beq     $zero, $zero, lbl_80A51AC4 
	lw      $ra, 0x005C($sp)           
lbl_80A51728:
	mtc1    $at, $f22                  ## $f22 = 0.00
	lui     $at, %hi(var_80A5216C)     ## $at = 80A50000
	lwc1    $f2, %lo(var_80A5216C)($at) 
lbl_80A51734:
	lwc1    $f0, 0x0000(v0)            ## 00000010
	addiu   s2, s2, 0x0004             ## s2 = 00000008
	c.lt.s  $f0, $f22                  
	nop
	bc1fl   lbl_80A51758               
	lwc1    $f0, 0x0004(v0)            ## 00000014
	add.s   $f16, $f0, $f2             
	swc1    $f16, 0x0000(v0)           ## 00000010
	lwc1    $f0, 0x0004(v0)            ## 00000014
lbl_80A51758:
	addiu   v0, v0, 0x0004             ## v0 = 00000014
	c.lt.s  $f0, $f22                  
	nop
	bc1fl   lbl_80A51778               
	lwc1    $f0, 0x0004(v0)            ## 00000018
	add.s   $f18, $f0, $f2             
	swc1    $f18, 0x0000(v0)           ## 00000014
	lwc1    $f0, 0x0004(v0)            ## 00000018
lbl_80A51778:
	addiu   v0, v0, 0x0004             ## v0 = 00000018
	c.lt.s  $f0, $f22                  
	nop
	bc1fl   lbl_80A51798               
	lwc1    $f0, 0x0004(v0)            ## 0000001C
	add.s   $f4, $f0, $f2              
	swc1    $f4, 0x0000(v0)            ## 00000018
	lwc1    $f0, 0x0004(v0)            ## 0000001C
lbl_80A51798:
	addiu   v0, v0, 0x0004             ## v0 = 0000001C
	c.lt.s  $f0, $f22                  
	nop
	bc1f    lbl_80A517B4               
	nop
	add.s   $f6, $f0, $f2              
	swc1    $f6, 0x0000(v0)            ## 0000001C
lbl_80A517B4:
	bne     s2, v1, lbl_80A51734       
	addiu   v0, v0, 0x0004             ## v0 = 00000020
	lw      t1, 0x0024(a2)             ## 00000024
	lui     $at, 0x457A                ## $at = 457A0000
	mtc1    $at, $f28                  ## $f28 = 4000.00
	sw      t1, 0x0024(s3)             ## 00000024
	lw      t0, 0x0028(a2)             ## 00000028
	lui     $at, %hi(var_80A52170)     ## $at = 80A50000
	or      s6, $zero, $zero           ## s6 = 00000000
	sw      t0, 0x0028(s3)             ## 00000028
	lw      t1, 0x002C(a2)             ## 0000002C
	addiu   s5, $zero, 0x000C          ## s5 = 0000000C
	sw      t1, 0x002C(s3)             ## 0000002C
	lwc1    $f26, %lo(var_80A52170)($at) 
	lui     $at, 0x44FA                ## $at = 44FA0000
	mtc1    $at, $f24                  ## $f24 = 2000.00
	nop
	lbu     s2, 0x053C(s3)             ## 0000053C
lbl_80A517FC:
	lui     $at, 0x4780                ## $at = 47800000
	andi    s2, s2, 0x003F             ## s2 = 00000008
	sll     t2, s2,  2                 
	addu    s4, s3, t2                 
	lwc1    $f8, 0x013C(s4)            ## 0000013C
	c.le.s  $f22, $f8                  
	nop
	bc1fl   lbl_80A51AB4               
	addiu   s6, s6, 0x0001             ## s6 = 00000001
	mtc1    $at, $f12                  ## $f12 = 65536.00
	jal     func_80026D90              
	nop
	trunc.w.s $f10, $f0                  
	lh      v0, 0x001C(s3)             ## 0000001C
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	mfc1    s1, $f10                   
	nop
	sll     s1, s1, 16                 
	beq     v0, $at, lbl_80A51868      
	sra     s1, s1, 16                 
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	beq     v0, $at, lbl_80A51920      
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	beq     v0, $at, lbl_80A519D8      
	nop
	beq     $zero, $zero, lbl_80A51A9C 
	mtc1    $zero, $f8                 ## $f8 = 0.00
lbl_80A51868:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_80A52174)     ## $at = 80A50000
	lwc1    $f16, %lo(var_80A52174)($at) 
	multu   s2, s5                     
	lui     $at, 0x442F                ## $at = 442F0000
	mul.s   $f18, $f0, $f16            
	mtc1    $at, $f4                   ## $f4 = 700.00
	sll     a0, s1, 16                 
	add.s   $f2, $f18, $f4             
	mflo    t4                         
	addu    s0, s3, t4                 
	c.lt.s  $f26, $f2                  
	swc1    $f2, 0x023C(s0)            ## 0000023C
	bc1f    lbl_80A518F8               
	nop
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	sll     a0, s1, 16                 
	sra     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	mov.s   $f20, $f0                  
	mul.s   $f6, $f26, $f20            
	nop
	mul.s   $f8, $f0, $f6              
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f8, 0x0240(s0)            ## 00000240
	sll     a0, s1, 16                 
	sra     a0, a0, 16                 
	jal     func_80063684              ## coss?
	mov.s   $f20, $f0                  
	mul.s   $f10, $f26, $f20           
	nop
	mul.s   $f16, $f0, $f10            
	beq     $zero, $zero, lbl_80A51A98 
	swc1    $f16, 0x0244(s0)           ## 00000244
lbl_80A518F8:
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	mul.s   $f18, $f0, $f26            
	sll     a0, s1, 16                 
	sra     a0, a0, 16                 
	jal     func_80063684              ## coss?
	swc1    $f18, 0x0240(s0)           ## 00000240
	mul.s   $f4, $f0, $f26             
	beq     $zero, $zero, lbl_80A51A98 
	swc1    $f4, 0x0244(s0)            ## 00000244
lbl_80A51920:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_80A52178)     ## $at = 80A50000
	lwc1    $f6, %lo(var_80A52178)($at) 
	multu   s2, s5                     
	lui     $at, 0x442F                ## $at = 442F0000
	mul.s   $f8, $f0, $f6              
	mtc1    $at, $f10                  ## $f10 = 700.00
	sll     a0, s1, 16                 
	add.s   $f2, $f8, $f10             
	mflo    t5                         
	addu    s0, s3, t5                 
	c.lt.s  $f24, $f2                  
	swc1    $f2, 0x023C(s0)            ## 0000023C
	bc1f    lbl_80A519B0               
	nop
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	sll     a0, s1, 16                 
	sra     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	mov.s   $f20, $f0                  
	mul.s   $f16, $f24, $f20           
	nop
	mul.s   $f18, $f0, $f16            
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f18, 0x0240(s0)           ## 00000240
	sll     a0, s1, 16                 
	sra     a0, a0, 16                 
	jal     func_80063684              ## coss?
	mov.s   $f20, $f0                  
	mul.s   $f4, $f24, $f20            
	nop
	mul.s   $f6, $f0, $f4              
	beq     $zero, $zero, lbl_80A51A98 
	swc1    $f6, 0x0244(s0)            ## 00000244
lbl_80A519B0:
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	mul.s   $f8, $f0, $f24             
	sll     a0, s1, 16                 
	sra     a0, a0, 16                 
	jal     func_80063684              ## coss?
	swc1    $f8, 0x0240(s0)            ## 00000240
	mul.s   $f10, $f0, $f24            
	beq     $zero, $zero, lbl_80A51A98 
	swc1    $f10, 0x0244(s0)           ## 00000244
lbl_80A519D8:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_80A5217C)     ## $at = 80A50000
	lwc1    $f16, %lo(var_80A5217C)($at) 
	multu   s2, s5                     
	lui     $at, %hi(var_80A52180)     ## $at = 80A50000
	mul.s   $f18, $f0, $f16            
	lwc1    $f4, %lo(var_80A52180)($at) 
	lui     $at, %hi(var_80A52184)     ## $at = 80A50000
	sll     a0, s1, 16                 
	add.s   $f2, $f18, $f4             
	mflo    t6                         
	addu    s0, s3, t6                 
	swc1    $f2, 0x023C(s0)            ## 0000023C
	lwc1    $f6, %lo(var_80A52184)($at) 
	c.lt.s  $f6, $f2                   
	nop
	bc1f    lbl_80A51A74               
	nop
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	sll     a0, s1, 16                 
	sra     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	mov.s   $f20, $f0                  
	mul.s   $f8, $f28, $f20            
	nop
	mul.s   $f10, $f0, $f8             
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f10, 0x0240(s0)           ## 00000240
	sll     a0, s1, 16                 
	sra     a0, a0, 16                 
	jal     func_80063684              ## coss?
	mov.s   $f20, $f0                  
	mul.s   $f16, $f28, $f20           
	nop
	mul.s   $f18, $f0, $f16            
	beq     $zero, $zero, lbl_80A51A98 
	swc1    $f18, 0x0244(s0)           ## 00000244
lbl_80A51A74:
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	mul.s   $f4, $f0, $f28             
	sll     a0, s1, 16                 
	sra     a0, a0, 16                 
	jal     func_80063684              ## coss?
	swc1    $f4, 0x0240(s0)            ## 00000240
	mul.s   $f6, $f0, $f28             
	swc1    $f6, 0x0244(s0)            ## 00000244
lbl_80A51A98:
	mtc1    $zero, $f8                 ## $f8 = 0.00
lbl_80A51A9C:
	nop
	swc1    $f8, 0x013C(s4)            ## 0000013C
	lbu     t7, 0x053C(s3)             ## 0000053C
	addiu   t8, t7, 0x0001             ## t8 = 00000001
	sb      t8, 0x053C(s3)             ## 0000053C
	addiu   s6, s6, 0x0001             ## s6 = 00000002
lbl_80A51AB4:
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bnel    s6, $at, lbl_80A517FC      
	lbu     s2, 0x053C(s3)             ## 0000053C
	lw      $ra, 0x005C($sp)           
lbl_80A51AC4:
	ldc1    $f20, 0x0018($sp)          
	ldc1    $f22, 0x0020($sp)          
	ldc1    $f24, 0x0028($sp)          
	ldc1    $f26, 0x0030($sp)          
	ldc1    $f28, 0x0038($sp)          
	lw      s0, 0x0040($sp)            
	lw      s1, 0x0044($sp)            
	lw      s2, 0x0048($sp)            
	lw      s3, 0x004C($sp)            
	lw      s4, 0x0050($sp)            
	lw      s5, 0x0054($sp)            
	lw      s6, 0x0058($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0070           ## $sp = 00000000


func_80A51AFC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lw      t9, 0x0550(a0)             ## 00000550
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A51B20:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      s1, 0x002C($sp)            
	or      s1, a0, $zero              ## s1 = 00000000
	sw      $ra, 0x004C($sp)           
	sw      s8, 0x0048($sp)            
	sw      s7, 0x0044($sp)            
	sw      s6, 0x0040($sp)            
	sw      s5, 0x003C($sp)            
	sw      s4, 0x0038($sp)            
	sw      s3, 0x0034($sp)            
	sw      s2, 0x0030($sp)            
	sw      s0, 0x0028($sp)            
	sdc1    $f22, 0x0020($sp)          
	sdc1    $f20, 0x0018($sp)          
	sw      a1, 0x0054($sp)            
	lw      t6, 0x0054($sp)            
	lw      s3, 0x0000(t6)             ## 00000000
	jal     func_8007E298              
	or      a0, s3, $zero              ## a0 = 00000000
	lw      s0, 0x02D0(s3)             ## 000002D0
	lui     t8, 0xE700                 ## t8 = E7000000
	addiu   s2, s1, 0x023C             ## s2 = 0000023C
	addiu   t7, s0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s3)             ## 000002D0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t8, 0x0000(s0)             ## 00000000
	addiu   s5, s1, 0x013C             ## s5 = 0000013C
	lw      s0, 0x02D0(s3)             ## 000002D0
	lui     t1, 0x8080                 ## t1 = 80800000
	ori     t1, t1, 0x80FF             ## t1 = 808080FF
	addiu   t9, s0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s3)             ## 000002D0
	lui     t0, 0xFA00                 ## t0 = FA000000
	sw      t0, 0x0000(s0)             ## 00000000
	sw      t1, 0x0004(s0)             ## 00000004
	lw      s0, 0x02D0(s3)             ## 000002D0
	lui     t4, 0x8080                 ## t4 = 80800000
	ori     t4, t4, 0x8000             ## t4 = 80808000
	addiu   t2, s0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02D0(s3)             ## 000002D0
	lui     t3, 0xFB00                 ## t3 = FB000000
	sw      t3, 0x0000(s0)             ## 00000000
	sw      t4, 0x0004(s0)             ## 00000004
	lw      s0, 0x02D0(s3)             ## 000002D0
	lui     t6, 0xDB06                 ## t6 = DB060000
	lui     t7, %hi(var_80A52130)      ## t7 = 80A50000
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s3)             ## 000002D0
	addiu   t7, t7, %lo(var_80A52130)  ## t7 = 80A52130
	ori     t6, t6, 0x0020             ## t6 = DB060020
	sw      t6, 0x0000(s0)             ## 00000000
	sw      t7, 0x0004(s0)             ## 00000004
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f22                  ## $f22 = 1.00
	or      s6, $zero, $zero           ## s6 = 00000000
lbl_80A51BFC:
	lwc1    $f20, 0x0000(s5)           ## 0000013C
	c.lt.s  $f20, $f22                 
	nop
	bc1fl   lbl_80A51D34               
	addiu   s6, s6, 0x0001             ## s6 = 00000001
	mul.s   $f4, $f20, $f20            
	lwc1    $f2, 0x0540(s1)            ## 00000540
	lwc1    $f16, 0x0544(s1)           ## 00000544
	lwc1    $f18, 0x0548(s1)           ## 00000548
	lui     v0, 0x0403                 ## v0 = 04030000
	sub.s   $f8, $f22, $f2             
	addiu   v0, v0, 0x7D20             ## v0 = 04037D20
	lui     $at, 0x00FF                ## $at = 00FF0000
	sub.s   $f0, $f22, $f4             
	lwc1    $f4, 0x0000(s2)            ## 0000023C
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	and     s8, v0, $at                
	mul.s   $f6, $f2, $f0              
	sll     t8, v0,  4                 
	lw      s0, 0x0054($sp)            
	srl     t9, t8, 28                 
	lui     $at, 0x0001                ## $at = 00010000
	lui     t1, 0x8012                 ## t1 = 80120000
	addiu   t1, t1, 0x0C38             ## t1 = 80120C38
	add.s   $f10, $f6, $f8             
	lwc1    $f8, 0x0024(s1)            ## 00000024
	ori     $at, $at, 0x1DA0           ## $at = 00011DA0
	sll     t0, t9,  2                 
	mul.s   $f6, $f4, $f10             
	sub.s   $f10, $f22, $f16           
	addu    s7, t0, t1                 
	mul.s   $f4, $f16, $f0             
	or      a3, $zero, $zero           ## a3 = 00000000
	addu    s0, s0, $at                
	add.s   $f12, $f8, $f6             
	lwc1    $f6, 0x0004(s2)            ## 00000240
	add.s   $f8, $f4, $f10             
	lwc1    $f10, 0x0028(s1)           ## 00000028
	mul.s   $f4, $f6, $f8              
	sub.s   $f8, $f22, $f18            
	mul.s   $f6, $f18, $f0             
	add.s   $f14, $f10, $f4            
	lwc1    $f4, 0x0008(s2)            ## 00000244
	add.s   $f10, $f6, $f8             
	lwc1    $f8, 0x002C(s1)            ## 0000002C
	mul.s   $f6, $f4, $f10             
	add.s   $f4, $f8, $f6              
	mfc1    a2, $f4                    
	jal     func_800AA7F4              
	nop
	lwc1    $f12, 0x054C(s1)           ## 0000054C
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mfc1    a2, $f12                   
	jal     func_800AA8FC              
	mov.s   $f14, $f12                 
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_800AA79C              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lw      s4, 0x02D0(s3)             ## 000002D0
	lui     t3, 0xDA38                 ## t3 = DA380000
	ori     t3, t3, 0x0003             ## t3 = DA380003
	addiu   t2, s4, 0x0008             ## t2 = 00000008
	sw      t2, 0x02D0(s3)             ## 000002D0
	or      a0, s3, $zero              ## a0 = 00000000
	jal     func_800AB900              
	sw      t3, 0x0000(s4)             ## 00000000
	sw      v0, 0x0004(s4)             ## 00000004
	lw      s0, 0x02D0(s3)             ## 000002D0
	lui     t5, 0xDE00                 ## t5 = DE000000
	lui     $at, 0x8000                ## $at = 80000000
	addiu   t4, s0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02D0(s3)             ## 000002D0
	sw      t5, 0x0000(s0)             ## 00000000
	lw      t6, 0x0000(s7)             ## 00000000
	addu    t7, t6, s8                 
	addu    t8, t7, $at                
	sw      t8, 0x0004(s0)             ## 00000004
	addiu   s6, s6, 0x0001             ## s6 = 00000002
lbl_80A51D34:
	addiu   $at, $zero, 0x0040         ## $at = 00000040
	addiu   s2, s2, 0x000C             ## s2 = 00000248
	bne     s6, $at, lbl_80A51BFC      
	addiu   s5, s5, 0x0004             ## s5 = 00000140
	lw      $ra, 0x004C($sp)           
	ldc1    $f20, 0x0018($sp)          
	ldc1    $f22, 0x0020($sp)          
	lw      s0, 0x0028($sp)            
	lw      s1, 0x002C($sp)            
	lw      s2, 0x0030($sp)            
	lw      s3, 0x0034($sp)            
	lw      s4, 0x0038($sp)            
	lw      s5, 0x003C($sp)            
	lw      s6, 0x0040($sp)            
	lw      s7, 0x0044($sp)            
	lw      s8, 0x0048($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000


func_80A51D7C:
	addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
	sw      s8, 0x0060($sp)            
	or      s8, a0, $zero              ## s8 = 00000000
	sw      $ra, 0x0064($sp)           
	sw      s7, 0x005C($sp)            
	sw      s6, 0x0058($sp)            
	sw      s5, 0x0054($sp)            
	sw      s4, 0x0050($sp)            
	sw      s3, 0x004C($sp)            
	sw      s2, 0x0048($sp)            
	sw      s1, 0x0044($sp)            
	sw      s0, 0x0040($sp)            
	sdc1    $f28, 0x0038($sp)          
	sdc1    $f26, 0x0030($sp)          
	sdc1    $f24, 0x0028($sp)          
	sdc1    $f22, 0x0020($sp)          
	sdc1    $f20, 0x0018($sp)          
	lw      t6, 0x1C44(a1)             ## 00001C44
	lw      s1, 0x0000(a1)             ## 00000000
	sw      t6, 0x0068($sp)            
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8007E298              
	sw      a1, 0x008C($sp)            
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t8, 0xE700                 ## t8 = E7000000
	addiu   s4, s8, 0x023C             ## s4 = 0000023C
	addiu   t7, s0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s1)             ## 000002D0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t8, 0x0000(s0)             ## 00000000
	addiu   s2, s8, 0x013C             ## s2 = 0000013C
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t0, 0xFA00                 ## t0 = FA000000
	addiu   t1, $zero, 0xFFFF          ## t1 = FFFFFFFF
	addiu   t9, s0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s1)             ## 000002D0
	sw      t1, 0x0004(s0)             ## 00000004
	sw      t0, 0x0000(s0)             ## 00000000
	lw      t2, 0x0068($sp)            
	lui     $at, %hi(var_80A52188)     ## $at = 80A50000
	lwc1    $f6, %lo(var_80A52188)($at) 
	lwc1    $f4, 0x0848(t2)            ## 00000848
	lui     $at, 0xC1A0                ## $at = C1A00000
	mtc1    $at, $f28                  ## $f28 = -20.00
	c.le.s  $f6, $f4                   
	lui     $at, 0x43A0                ## $at = 43A00000
	lui     t0, 0xDB06                 ## t0 = DB060000
	mtc1    $at, $f26                  ## $f26 = 320.00
	bc1f    lbl_80A51E68               
	ori     t0, t0, 0x0020             ## t0 = DB060020
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t4, 0xFB00                 ## t4 = FB000000
	lui     t5, 0xFF00                 ## t5 = FF000000
	addiu   t3, s0, 0x0008             ## t3 = 00000008
	sw      t3, 0x02D0(s1)             ## 000002D0
	sw      t5, 0x0004(s0)             ## 00000004
	sw      t4, 0x0000(s0)             ## 00000000
	beq     $zero, $zero, lbl_80A51E88 
	lw      s0, 0x02D0(s1)             ## 000002D0
lbl_80A51E68:
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t7, 0xFB00                 ## t7 = FB000000
	ori     t8, $zero, 0xFF00          ## t8 = 0000FF00
	addiu   t6, s0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s1)             ## 000002D0
	sw      t8, 0x0004(s0)             ## 00000004
	sw      t7, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
lbl_80A51E88:
	lui     t1, %hi(var_80A52130)      ## t1 = 80A50000
	addiu   t1, t1, %lo(var_80A52130)  ## t1 = 80A52130
	addiu   t9, s0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s1)             ## 000002D0
	sw      t1, 0x0004(s0)             ## 00000004
	sw      t0, 0x0000(s0)             ## 00000000
	lui     $at, 0x437F                ## $at = 437F0000
	mtc1    $at, $f24                  ## $f24 = 255.00
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f20                  ## $f20 = 1.00
	or      s5, $zero, $zero           ## s5 = 00000000
lbl_80A51EB4:
	lwc1    $f8, 0x0000(s2)            ## 0000013C
	lui     v1, 0x0403                 ## v1 = 04030000
	addiu   v1, v1, 0x7D20             ## v1 = 04037D20
	c.lt.s  $f8, $f20                  
	sll     t8, v1,  4                 
	srl     t9, t8, 28                 
	sll     t0, t9,  2                 
	bc1f    lbl_80A52088               
	or      a1, $zero, $zero           ## a1 = 00000000
	lw      v0, 0x02D0(s1)             ## 000002D0
	lui     t3, 0xFA00                 ## t3 = FA000000
	addiu   t5, $zero, 0x0001          ## t5 = 00000001
	addiu   t2, v0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02D0(s1)             ## 000002D0
	sw      t3, 0x0000(v0)             ## 00000000
	lwc1    $f10, 0x0000(s2)           ## 0000013C
	lui     t1, 0x8012                 ## t1 = 80120000
	addiu   t1, t1, 0x0C38             ## t1 = 80120C38
	mul.s   $f16, $f10, $f24           
	lui     $at, 0x4F00                ## $at = 4F000000
	addu    s6, t0, t1                 
	cfc1    t4, $f31                   
	ctc1    t5, $f31                   
	nop
	cvt.w.s $f18, $f16                 
	cfc1    t5, $f31                   
	nop
	andi    t5, t5, 0x0078             ## t5 = 00000000
	beql    t5, $zero, lbl_80A51F74    
	mfc1    t5, $f18                   
	mtc1    $at, $f18                  ## $f18 = 2147484000.00
	addiu   t5, $zero, 0x0001          ## t5 = 00000001
	sub.s   $f18, $f16, $f18           
	ctc1    t5, $f31                   
	nop
	cvt.w.s $f18, $f18                 
	cfc1    t5, $f31                   
	nop
	andi    t5, t5, 0x0078             ## t5 = 00000000
	bne     t5, $zero, lbl_80A51F68    
	nop
	mfc1    t5, $f18                   
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_80A51F80 
	or      t5, t5, $at                ## t5 = 80000000
lbl_80A51F68:
	beq     $zero, $zero, lbl_80A51F80 
	addiu   t5, $zero, 0xFFFF          ## t5 = FFFFFFFF
	mfc1    t5, $f18                   
lbl_80A51F74:
	nop
	bltz    t5, lbl_80A51F68           
	nop
lbl_80A51F80:
	andi    t6, t5, 0x00FF             ## t6 = 000000FF
	addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
	ctc1    t4, $f31                   
	or      t7, t6, $at                ## t7 = FFFFFFFF
	sw      t7, 0x0004(v0)             ## 00000004
	lwc1    $f0, 0x0000(s2)            ## 0000013C
	lui     $at, 0x00FF                ## $at = 00FF0000
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	mul.s   $f4, $f0, $f0              
	and     s7, v1, $at                
	lw      a0, 0x0068($sp)            
	lw      s3, 0x008C($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1DA0           ## $at = 00011DA0
	addiu   a0, a0, 0x09D0             ## a0 = 000009D0
	sub.s   $f22, $f20, $f4            
	jal     func_800AA79C              
	addu    s3, s3, $at                
	lwc1    $f2, 0x0540(s8)            ## 00000540
	lwc1    $f18, 0x0000(s2)           ## 0000013C
	lwc1    $f16, 0x0000(s4)           ## 0000023C
	mul.s   $f6, $f2, $f22             
	sub.s   $f8, $f20, $f2             
	lwc1    $f4, 0x0004(s4)            ## 00000240
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	sub.s   $f0, $f20, $f18            
	add.s   $f10, $f6, $f8             
	lwc1    $f8, 0x0008(s4)            ## 00000244
	mul.s   $f12, $f16, $f10           
	nop
	mul.s   $f6, $f0, $f4              
	nop
	mul.s   $f16, $f0, $f8             
	add.s   $f14, $f6, $f26            
	add.s   $f10, $f16, $f28           
	mfc1    a2, $f10                   
	jal     func_800AA7F4              
	nop
	lwc1    $f18, 0x0000(s2)           ## 0000013C
	lwc1    $f4, 0x054C(s8)            ## 0000054C
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mul.s   $f12, $f18, $f4            
	mfc1    a2, $f12                   
	jal     func_800AA8FC              
	mov.s   $f14, $f12                 
	jal     func_800ABE54              
	or      a0, s3, $zero              ## a0 = 00000000
	lw      s3, 0x02D0(s1)             ## 000002D0
	lui     t3, 0xDA38                 ## t3 = DA380000
	ori     t3, t3, 0x0003             ## t3 = DA380003
	addiu   t2, s3, 0x0008             ## t2 = 00000008
	sw      t2, 0x02D0(s1)             ## 000002D0
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_800AB900              
	sw      t3, 0x0000(s3)             ## 00000000
	sw      v0, 0x0004(s3)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t5, 0xDE00                 ## t5 = DE000000
	lui     $at, 0x8000                ## $at = 80000000
	addiu   t4, s0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02D0(s1)             ## 000002D0
	sw      t5, 0x0000(s0)             ## 00000000
	lw      t6, 0x0000(s6)             ## 00000000
	addu    t7, t6, s7                 
	addu    t8, t7, $at                
	sw      t8, 0x0004(s0)             ## 00000004
lbl_80A52088:
	addiu   s5, s5, 0x0001             ## s5 = 00000001
	addiu   $at, $zero, 0x0040         ## $at = 00000040
	addiu   s4, s4, 0x000C             ## s4 = 00000248
	bne     s5, $at, lbl_80A51EB4      
	addiu   s2, s2, 0x0004             ## s2 = 00000140
	lw      $ra, 0x0064($sp)           
	ldc1    $f20, 0x0018($sp)          
	ldc1    $f22, 0x0020($sp)          
	ldc1    $f24, 0x0028($sp)          
	ldc1    $f26, 0x0030($sp)          
	ldc1    $f28, 0x0038($sp)          
	lw      s0, 0x0040($sp)            
	lw      s1, 0x0044($sp)            
	lw      s2, 0x0048($sp)            
	lw      s3, 0x004C($sp)            
	lw      s4, 0x0050($sp)            
	lw      s5, 0x0054($sp)            
	lw      s6, 0x0058($sp)            
	lw      s7, 0x005C($sp)            
	lw      s8, 0x0060($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0088           ## $sp = 00000000


func_80A520E0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lw      t9, 0x0554(a0)             ## 00000554
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop
	nop

.section .data

var_80A52110: .word 0x01010400, 0x00000030, 0x00010000, 0x00000558
.word func_80A50F80
.word func_80A51140
.word func_80A51AFC
.word func_80A520E0
var_80A52130: .word 0xDF000000, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80A52140: .word var_80A50FC8
.word var_80A51014
.word var_80A51060
.word var_80A5109C
.word var_80A510D8
var_80A52154: .word 0x3F4CCCCD
var_80A52158: .word 0x3DCCCCCD
var_80A5215C: .word 0x3F4CCCCD
var_80A52160: .word 0x3D4CCCCD
var_80A52164: .word 0x3CF5C28F
var_80A52168: .word 0x3E4CCCCD
var_80A5216C: .word 0x3DCCCCCD
var_80A52170: .word 0x453B8000
var_80A52174: .word 0x458CA000
var_80A52178: .word 0x451C4000
var_80A5217C: .word 0x4604D000
var_80A52180: .word 0x44D48000
var_80A52184: .word 0x459C4000
var_80A52188: .word 0x3F59999A, 0x00000000

