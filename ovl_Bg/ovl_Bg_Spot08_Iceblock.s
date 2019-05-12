#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A5CF80:
	sw      a1, 0x0154(a0)             ## 00000154
	jr      $ra                        
	nop


func_80A5CF8C:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0020($sp)            
	sw      a1, 0x0024($sp)            
	sw      a2, 0x0028($sp)            
	sw      $zero, 0x0018($sp)         
	lw      a0, 0x0020($sp)            
	jal     func_80035260              
	or      a1, a3, $zero              ## a1 = 00000000
	lw      a0, 0x0028($sp)            
	jal     func_80033EF4              
	addiu   a1, $sp, 0x0018            ## a1 = FFFFFFF8
	lw      a0, 0x0024($sp)            
	lw      a2, 0x0020($sp)            
	lw      a3, 0x0018($sp)            
	jal     func_800313A4              ## DynaPolyInfo_setActor
	addiu   a1, a0, 0x0810             ## a1 = 00000810
	lw      t6, 0x0020($sp)            
	sw      v0, 0x013C(t6)             ## 0000013C
	lw      $ra, 0x0014($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80A5CFE4:
	lh      v0, 0x001C(a0)             ## 0000001C
	andi    v0, v0, 0x00FF             ## v0 = 00000000
	slti    $at, v0, 0x0025            
	bne     $at, $zero, lbl_80A5D00C   
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	addiu   $at, $zero, 0x00FF         ## $at = 000000FF
	beq     v0, $at, lbl_80A5D02C      
	addiu   t7, $zero, 0x0010          ## t7 = 00000010
	beq     $zero, $zero, lbl_80A5D038 
	addiu   t8, $zero, 0x0010          ## t8 = 00000010
lbl_80A5D00C:
	sltiu   $at, t6, 0x0024            
	beq     $at, $zero, lbl_80A5D034   
	sll     t6, t6,  2                 
	lui     $at, %hi(var_80A5DCF0)     ## $at = 80A60000
	addu    $at, $at, t6               
	lw      t6, %lo(var_80A5DCF0)($at) 
	jr      t6                         
	nop
lbl_80A5D02C:
	jr      $ra                        
	sh      t7, 0x001C(a0)             ## 0000001C
lbl_80A5D034:
	addiu   t8, $zero, 0x0010          ## t8 = 00000010
lbl_80A5D038:
	sh      t8, 0x001C(a0)             ## 0000001C
var_80A5D03C:
	jr      $ra                        
	nop


func_80A5D044:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0020($sp)            
	lw      t6, 0x0020($sp)            
	jal     func_800636C4              ## sins?
	lh      a0, 0x017C(t6)             ## 0000017C
	lw      t7, 0x0020($sp)            
	swc1    $f0, 0x001C($sp)           
	jal     func_800636C4              ## sins?
	lh      a0, 0x017E(t7)             ## 0000017E
	lui     $at, 0x4080                ## $at = 40800000
	mtc1    $at, $f6                   ## $f6 = 4.00
	lwc1    $f4, 0x001C($sp)           
	lui     $at, 0x4040                ## $at = 40400000
	mtc1    $at, $f10                  ## $f10 = 3.00
	mul.s   $f8, $f4, $f6              
	lw      t8, 0x0020($sp)            
	mul.s   $f16, $f0, $f10            
	add.s   $f18, $f16, $f8            
	swc1    $f18, 0x0188(t8)           ## 00000188
	lw      $ra, 0x0014($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_80A5D0A0:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	lh      v0, 0x001C(a3)             ## 0000001C
	lui     $at, %hi(var_80A5DD80)     ## $at = 80A60000
	or      a0, a3, $zero              ## a0 = 00000000
	andi    v0, v0, 0x00F0             ## v0 = 00000000
	beq     v0, $zero, lbl_80A5D0E0    
	nop
	addiu   $at, $zero, 0x0010         ## $at = 00000010
	beq     v0, $at, lbl_80A5D0EC      
	addiu   $at, $zero, 0x0020         ## $at = 00000020
	beq     v0, $at, lbl_80A5D0FC      
	nop
	beq     $zero, $zero, lbl_80A5D108 
	nop
lbl_80A5D0E0:
	lwc1    $f4, %lo(var_80A5DD80)($at) 
	beq     $zero, $zero, lbl_80A5D108 
	swc1    $f4, 0x0018($sp)           
lbl_80A5D0EC:
	lui     $at, %hi(var_80A5DD84)     ## $at = 80A60000
	lwc1    $f6, %lo(var_80A5DD84)($at) 
	beq     $zero, $zero, lbl_80A5D108 
	swc1    $f6, 0x0018($sp)           
lbl_80A5D0FC:
	lui     $at, %hi(var_80A5DD88)     ## $at = 80A60000
	lwc1    $f8, %lo(var_80A5DD88)($at) 
	swc1    $f8, 0x0018($sp)           
lbl_80A5D108:
	jal     func_80035340              
	sw      a3, 0x0020($sp)            
	beq     v0, $zero, lbl_80A5D128    
	lw      a3, 0x0020($sp)            
	lui     $at, 0xC080                ## $at = C0800000
	mtc1    $at, $f0                   ## $f0 = -4.00
	beq     $zero, $zero, lbl_80A5D134 
	mfc1    a1, $f0                    
lbl_80A5D128:
	mtc1    $zero, $f0                 ## $f0 = 0.00
	nop
	mfc1    a1, $f0                    
lbl_80A5D134:
	addiu   a0, a3, 0x0184             ## a0 = 00000184
	jal     func_8006385C              
	lw      a2, 0x0018($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A5D150:
	lwc1    $f4, 0x0184(a0)            ## 00000184
	lwc1    $f6, 0x0188(a0)            ## 00000188
	lwc1    $f10, 0x000C(a0)           ## 0000000C
	add.s   $f8, $f4, $f6              
	add.s   $f16, $f8, $f10            
	swc1    $f16, 0x0028(a0)           ## 00000028
	jr      $ra                        
	nop


func_80A5D170:
	mtc1    a2, $f12                   ## $f12 = 0.00
	nop
	lwc1    $f4, 0x0000(a1)            ## 00000000
	mul.s   $f6, $f4, $f12             
	swc1    $f6, 0x0000(a0)            ## 00000000
	lwc1    $f8, 0x0004(a1)            ## 00000004
	mul.s   $f10, $f8, $f12            
	swc1    $f10, 0x0004(a0)           ## 00000004
	lwc1    $f16, 0x0008(a1)           ## 00000008
	mul.s   $f18, $f16, $f12           
	swc1    $f18, 0x0008(a0)           ## 00000008
	jr      $ra                        
	nop


func_80A5D1A4:
	lwc1    $f4, 0x0004(a1)            ## 00000004
	lwc1    $f6, 0x0008(a2)            ## 00000008
	lwc1    $f10, 0x0008(a1)           ## 00000008
	lwc1    $f16, 0x0004(a2)           ## 00000004
	mul.s   $f8, $f4, $f6              
	nop
	mul.s   $f18, $f10, $f16           
	sub.s   $f4, $f8, $f18             
	swc1    $f4, 0x0000(a0)            ## 00000000
	lwc1    $f10, 0x0000(a2)           ## 00000000
	lwc1    $f6, 0x0008(a1)            ## 00000008
	lwc1    $f8, 0x0000(a1)            ## 00000000
	lwc1    $f18, 0x0008(a2)           ## 00000008
	mul.s   $f16, $f6, $f10            
	nop
	mul.s   $f4, $f8, $f18             
	sub.s   $f6, $f16, $f4             
	swc1    $f6, 0x0004(a0)            ## 00000004
	lwc1    $f8, 0x0004(a2)            ## 00000004
	lwc1    $f10, 0x0000(a1)           ## 00000000
	lwc1    $f4, 0x0000(a2)            ## 00000000
	lwc1    $f16, 0x0004(a1)           ## 00000004
	mul.s   $f18, $f10, $f8            
	nop
	mul.s   $f6, $f16, $f4             
	sub.s   $f10, $f18, $f6            
	swc1    $f10, 0x0008(a0)           ## 00000008
	jr      $ra                        
	nop


func_80A5D218:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a0, a1, $zero              ## a0 = 00000000
	sw      a1, 0x001C($sp)            
	jal     func_800A5510              
	sw      a2, 0x0018($sp)            
	lui     $at, %hi(var_80A5DD8C)     ## $at = 80A60000
	lwc1    $f4, %lo(var_80A5DD8C)($at) 
	lw      a1, 0x001C($sp)            
	lw      a2, 0x0018($sp)            
	c.lt.s  $f0, $f4                   
	or      v0, $zero, $zero           ## v0 = 00000000
	lui     $at, 0x3F80                ## $at = 3F800000
	bc1fl   lbl_80A5D278               
	mtc1    $at, $f8                   ## $f8 = 1.00
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f6                   ## $f6 = 1.00
	swc1    $f0, 0x0004(a2)            ## 00000004
	swc1    $f0, 0x0000(a2)            ## 00000000
	beq     $zero, $zero, lbl_80A5D2A4 
	swc1    $f6, 0x0008(a2)            ## 00000008
	mtc1    $at, $f8                   ## $f8 = 1.00
lbl_80A5D278:
	lwc1    $f10, 0x0000(a1)           ## 00000000
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	div.s   $f2, $f8, $f0              
	mul.s   $f16, $f10, $f2            
	swc1    $f16, 0x0000(a2)           ## 00000000
	lwc1    $f18, 0x0004(a1)           ## 00000004
	mul.s   $f4, $f18, $f2             
	swc1    $f4, 0x0004(a2)            ## 00000004
	lwc1    $f6, 0x0008(a1)            ## 00000008
	mul.s   $f8, $f6, $f2              
	swc1    $f8, 0x0008(a2)            ## 00000008
lbl_80A5D2A4:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A5D2B4:
	addiu   $sp, $sp, 0xFF18           ## $sp = FFFFFF18
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lh      v0, 0x001C(s0)             ## 0000001C
	lw      v1, 0x1C44(a1)             ## 00001C44
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	andi    v0, v0, 0x00FF             ## v0 = 00000000
	beq     v0, $at, lbl_80A5D2F8      
	addiu   a0, v1, 0x0024             ## a0 = 00000024
	addiu   $at, $zero, 0x0011         ## $at = 00000011
	beq     v0, $at, lbl_80A5D2F0      
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	beq     $zero, $zero, lbl_80A5D300 
	sw      t6, 0x0084($sp)            
lbl_80A5D2F0:
	beq     $zero, $zero, lbl_80A5D300 
	sw      $zero, 0x0084($sp)         
lbl_80A5D2F8:
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	sw      t7, 0x0084($sp)            
lbl_80A5D300:
	addiu   a1, s0, 0x0024             ## a1 = 00000024
	jal     func_80063D48              ## Vec3f_Sub
	addiu   a2, $sp, 0x00C8            ## a2 = FFFFFFE0
	lui     $at, 0x4316                ## $at = 43160000
	mtc1    $at, $f4                   ## $f4 = 150.00
	lwc1    $f6, 0x0054(s0)            ## 00000054
	lwc1    $f10, 0x00CC($sp)          
	addiu   a0, $sp, 0x00C8            ## a0 = FFFFFFE0
	mul.s   $f8, $f4, $f6              
	sub.s   $f16, $f10, $f8            
	jal     func_800A5510              
	swc1    $f16, 0x00CC($sp)          
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f0, 0x0088($sp)           
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f18                  ## $f18 = 0.50
	lui     $at, %hi(var_80A5DD90)     ## $at = 80A60000
	lwc1    $f6, %lo(var_80A5DD90)($at) 
	sub.s   $f4, $f0, $f18             
	mtc1    $zero, $f8                 ## $f8 = 0.00
	mul.s   $f10, $f4, $f6             
	swc1    $f8, 0x00A8($sp)           
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f10, 0x00A4($sp)          
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f16                  ## $f16 = 0.50
	lui     $at, %hi(var_80A5DD94)     ## $at = 80A60000
	lwc1    $f4, %lo(var_80A5DD94)($at) 
	sub.s   $f18, $f0, $f16            
	mtc1    $zero, $f8                 ## $f8 = 0.00
	or      a0, s0, $zero              ## a0 = 00000000
	mul.s   $f6, $f18, $f4             
	swc1    $f6, 0x00AC($sp)           
	lwc1    $f10, 0x0158(s0)           ## 00000158
	swc1    $f8, 0x00D8($sp)           
	swc1    $f10, 0x00D4($sp)          
	lwc1    $f16, 0x0160(s0)           ## 00000160
	jal     func_80035364              
	swc1    $f16, 0x00DC($sp)          
	beq     v0, $zero, lbl_80A5D410    
	lui     $at, 0x4040                ## $at = 40400000
	mtc1    $at, $f18                  ## $f18 = 3.00
	lwc1    $f4, 0x0088($sp)           
	addiu   a0, $sp, 0x00C8            ## a0 = FFFFFFE0
	addiu   a1, $sp, 0x00D4            ## a1 = FFFFFFEC
	c.lt.s  $f18, $f4                  
	nop
	bc1f    lbl_80A5D410               
	nop
	jal     func_80063D48              ## Vec3f_Sub
	addiu   a2, $sp, 0x00BC            ## a2 = FFFFFFD4
	lw      v0, 0x0084($sp)            
	lui     $at, %hi(var_80A5DCA8)     ## $at = 80A60000
	lwc1    $f10, 0x0088($sp)          
	sll     v0, v0,  2                 
	addu    $at, $at, v0               
	lwc1    $f6, %lo(var_80A5DCA8)($at) 
	lwc1    $f16, 0x0050(s0)           ## 00000050
	addiu   a0, $sp, 0x00BC            ## a0 = FFFFFFD4
	mul.s   $f8, $f6, $f10             
	or      a1, a0, $zero              ## a1 = FFFFFFD4
	sw      v0, 0x002C($sp)            
	div.s   $f18, $f8, $f16            
	mfc1    a2, $f18                   
	jal     func_80A5D170              
	nop
	beq     $zero, $zero, lbl_80A5D444 
	lui     a2, 0xBC23                 ## a2 = BC230000
lbl_80A5D410:
	lui     t9, %hi(var_80A5DC9C)      ## t9 = 80A60000
	addiu   t9, t9, %lo(var_80A5DC9C)  ## t9 = 80A5DC9C
	lw      t1, 0x0000(t9)             ## 80A5DC9C
	addiu   t8, $sp, 0x00BC            ## t8 = FFFFFFD4
	lw      t0, 0x0004(t9)             ## 80A5DCA0
	sw      t1, 0x0000(t8)             ## FFFFFFD4
	lw      t1, 0x0008(t9)             ## 80A5DCA4
	sw      t0, 0x0004(t8)             ## FFFFFFD8
	sw      t1, 0x0008(t8)             ## FFFFFFDC
	lw      t2, 0x0084($sp)            
	sll     t3, t2,  2                 
	sw      t3, 0x002C($sp)            
	lui     a2, 0xBC23                 ## a2 = BC230000
lbl_80A5D444:
	ori     a2, a2, 0xD70A             ## a2 = BC23D70A
	addiu   a0, $sp, 0x00B0            ## a0 = FFFFFFC8
	jal     func_80A5D170              
	addiu   a1, $sp, 0x00D4            ## a1 = FFFFFFEC
	addiu   a3, s0, 0x0164             ## a3 = 00000164
	or      a0, a3, $zero              ## a0 = 00000164
	or      a2, a3, $zero              ## a2 = 00000164
	sw      a3, 0x0028($sp)            
	jal     func_80063D10              ## Vec3f_Add
	addiu   a1, $sp, 0x00BC            ## a1 = FFFFFFD4
	lw      a2, 0x0028($sp)            
	addiu   a1, $sp, 0x00B0            ## a1 = FFFFFFC8
	jal     func_80063D10              ## Vec3f_Add
	or      a0, a2, $zero              ## a0 = 00000000
	lw      a2, 0x0028($sp)            
	addiu   a1, $sp, 0x00A4            ## a1 = FFFFFFBC
	jal     func_80063D10              ## Vec3f_Add
	or      a0, a2, $zero              ## a0 = 00000000
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lw      a1, 0x0028($sp)            
	addiu   a0, s0, 0x0158             ## a0 = 00000158
	swc1    $f4, 0x0168(s0)            ## 00000168
	sw      a0, 0x0024($sp)            
	jal     func_80063D10              ## Vec3f_Add
	addiu   a2, $sp, 0x0098            ## a2 = FFFFFFB0
	lw      t4, 0x002C($sp)            
	lui     $at, %hi(var_80A5DCB4)     ## $at = 80A60000
	lwc1    $f6, 0x0098($sp)           
	addu    $at, $at, t4               
	lwc1    $f0, %lo(var_80A5DCB4)($at) 
	lwc1    $f8, 0x00A0($sp)           
	lw      a0, 0x0024($sp)            
	mul.s   $f10, $f6, $f0             
	addiu   a1, $sp, 0x0098            ## a1 = FFFFFFB0
	mul.s   $f16, $f8, $f0             
	swc1    $f10, 0x0098($sp)          
	jal     func_80A5D218              
	swc1    $f16, 0x00A0($sp)          
	beq     v0, $zero, lbl_80A5D588    
	lw      t0, 0x0024($sp)            
	lwc1    $f12, 0x0160(s0)           ## 00000160
	jal     func_800A5434              
	lwc1    $f14, 0x0158(s0)           ## 00000158
	lw      t5, 0x002C($sp)            
	lui     $at, %hi(var_80A5DCC0)     ## $at = 80A60000
	lui     a1, %hi(var_80A5DC90)      ## a1 = 80A60000
	addu    $at, $at, t5               
	lwc1    $f12, %lo(var_80A5DCC0)($at) 
	addiu   a1, a1, %lo(var_80A5DC90)  ## a1 = 80A5DC90
	addiu   a0, $sp, 0x0098            ## a0 = FFFFFFB0
	c.lt.s  $f12, $f0                  
	nop
	bc1f    lbl_80A5D54C               
	nop
	div.s   $f2, $f12, $f0             
	lwc1    $f18, 0x0158(s0)           ## 00000158
	lwc1    $f10, 0x0160(s0)           ## 00000160
	lui     $at, %hi(var_80A5DCCC)     ## $at = 80A60000
	mul.s   $f4, $f18, $f2             
	swc1    $f4, 0x0158(s0)            ## 00000158
	mul.s   $f8, $f10, $f2             
	lw      t6, 0x002C($sp)            
	addu    $at, $at, t6               
	lwc1    $f6, %lo(var_80A5DCCC)($at) 
	swc1    $f8, 0x0160(s0)            ## 00000160
	swc1    $f6, 0x015C(s0)            ## 0000015C
lbl_80A5D54C:
	jal     func_80A5D1A4              
	lw      a2, 0x0024($sp)            
	addiu   a0, $sp, 0x008C            ## a0 = FFFFFFA4
	jal     func_80A5D218              
	addiu   a1, $sp, 0x0098            ## a1 = FFFFFFB0
	beq     v0, $zero, lbl_80A5D580    
	addiu   t7, $sp, 0x008C            ## t7 = FFFFFFA4
	lw      t9, 0x0000(t7)             ## FFFFFFA4
	sw      t9, 0x0170(s0)             ## 00000170
	lw      t8, 0x0004(t7)             ## FFFFFFA8
	sw      t8, 0x0174(s0)             ## 00000174
	lw      t9, 0x0008(t7)             ## FFFFFFAC
	sw      t9, 0x0178(s0)             ## 00000178
lbl_80A5D580:
	beq     $zero, $zero, lbl_80A5D5AC 
	addiu   a3, s0, 0x0170             ## a3 = 00000170
lbl_80A5D588:
	lui     t1, %hi(var_80A5DC90)      ## t1 = 80A60000
	addiu   t1, t1, %lo(var_80A5DC90)  ## t1 = 80A5DC90
	lw      t3, 0x0000(t1)             ## 80A5DC90
	addiu   a3, s0, 0x0170             ## a3 = 00000170
	sw      t3, 0x0000(t0)             ## 00000000
	lw      t2, 0x0004(t1)             ## 80A5DC94
	sw      t2, 0x0004(t0)             ## 00000004
	lw      t3, 0x0008(t1)             ## 80A5DC98
	sw      t3, 0x0008(t0)             ## 00000008
lbl_80A5D5AC:
	lui     a0, %hi(var_80A5DC90)      ## a0 = 80A60000
	addiu   a0, a0, %lo(var_80A5DC90)  ## a0 = 80A5DC90
	lw      a1, 0x0024($sp)            
	jal     func_800A4EBC              
	sw      a3, 0x002C($sp)            
	jal     func_800CD890              
	mov.s   $f12, $f0                  
	lw      a1, 0x002C($sp)            
	mov.s   $f12, $f0                  
	jal     func_800AC280              
	or      a2, $zero, $zero           ## a2 = 00000000
	lh      t4, 0x00B6(s0)             ## 000000B6
	lui     $at, %hi(var_80A5DD98)     ## $at = 80A60000
	lwc1    $f4, %lo(var_80A5DD98)($at) 
	mtc1    t4, $f16                   ## $f16 = 0.00
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	cvt.s.w $f18, $f16                 
	mul.s   $f12, $f18, $f4            
	jal     func_800AAB94              
	nop
	jal     func_800AA740              
	addiu   a0, $sp, 0x0044            ## a0 = FFFFFF5C
	addiu   a0, $sp, 0x0044            ## a0 = FFFFFF5C
	addiu   a1, s0, 0x00B4             ## a1 = 000000B4
	jal     func_800ABF50              
	or      a2, $zero, $zero           ## a2 = 00000000
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x00E8           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A5D628:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      s0, 0x0038($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x003C($sp)           
	sw      a1, 0x0054($sp)            
	jal     func_800636C4              ## sins?
	lh      a0, 0x0016(s0)             ## 00000016
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f4                   ## $f4 = 100.00
	nop
	mul.s   $f6, $f0, $f4              
	swc1    $f6, 0x0044($sp)           
	jal     func_80063684              ## coss?
	lh      a0, 0x0016(s0)             ## 00000016
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f8                   ## $f8 = 100.00
	lh      t6, 0x001C(s0)             ## 0000001C
	lwc1    $f4, 0x0044($sp)           
	mul.s   $f2, $f0, $f8              
	andi    t7, t6, 0x0100             ## t7 = 00000000
	bne     t7, $zero, lbl_80A5D6F4    
	mov.s   $f12, $f2                  
	lwc1    $f10, 0x0008(s0)           ## 00000008
	lw      a2, 0x0054($sp)            
	addiu   t1, $zero, 0x0123          ## t1 = 00000123
	swc1    $f10, 0x0010($sp)          
	lwc1    $f16, 0x000C(s0)           ## 0000000C
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a3, $zero, 0x00D1          ## a3 = 000000D1
	swc1    $f16, 0x0014($sp)          
	lwc1    $f18, 0x0010(s0)           ## 00000010
	addiu   a0, a2, 0x1C24             ## a0 = 00001C24
	swc1    $f18, 0x0018($sp)          
	lh      t8, 0x0014(s0)             ## 00000014
	sw      t8, 0x001C($sp)            
	lh      t9, 0x0016(s0)             ## 00000016
	sw      t9, 0x0020($sp)            
	lh      t0, 0x0018(s0)             ## 00000018
	swc1    $f12, 0x0040($sp)          
	sw      t1, 0x0028($sp)            
	jal     func_800253F0              
	sw      t0, 0x0024($sp)            
	lwc1    $f12, 0x0040($sp)          
	lwc1    $f4, 0x0024(s0)            ## 00000024
	lwc1    $f6, 0x0044($sp)           
	lwc1    $f10, 0x002C(s0)           ## 0000002C
	add.s   $f8, $f4, $f6              
	add.s   $f16, $f10, $f12           
	swc1    $f8, 0x0024(s0)            ## 00000024
	beq     $zero, $zero, lbl_80A5D70C 
	swc1    $f16, 0x002C(s0)           ## 0000002C
lbl_80A5D6F4:
	lwc1    $f18, 0x0024(s0)           ## 00000024
	lwc1    $f8, 0x002C(s0)            ## 0000002C
	sub.s   $f6, $f18, $f4             
	sub.s   $f10, $f8, $f2             
	swc1    $f6, 0x0024(s0)            ## 00000024
	swc1    $f10, 0x002C(s0)           ## 0000002C
lbl_80A5D70C:
	jal     func_80A5DA4C              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x003C($sp)           
	lw      s0, 0x0038($sp)            
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A5D728:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	jal     func_80A5CFE4              
	or      a0, s0, $zero              ## a0 = 00000000
	lh      v1, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0x0200         ## $at = 00000200
	lui     a2, 0x0600                 ## a2 = 06000000
	andi    v0, v1, 0x0200             ## v0 = 00000000
	beq     v0, $zero, lbl_80A5D76C    
	or      a0, s0, $zero              ## a0 = 00000000
	beq     v0, $at, lbl_80A5D774      
	lui     a2, 0x0600                 ## a2 = 06000000
	beq     $zero, $zero, lbl_80A5D778 
	lw      a2, 0x0020($sp)            
lbl_80A5D76C:
	beq     $zero, $zero, lbl_80A5D778 
	addiu   a2, a2, 0x2FD8             ## a2 = 06002FD8
lbl_80A5D774:
	addiu   a2, a2, 0x1904             ## a2 = 060048DC
lbl_80A5D778:
	andi    v0, v1, 0x000F             ## v0 = 00000000
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     v0, $at, lbl_80A5D794      
	lw      a1, 0x002C($sp)            
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bne     v0, $at, lbl_80A5D7A4      
	or      a3, $zero, $zero           ## a3 = 00000000
lbl_80A5D794:
	jal     func_80A5CF8C              
	addiu   a3, $zero, 0x0003          ## a3 = 00000003
	beq     $zero, $zero, lbl_80A5D7B0 
	nop
lbl_80A5D7A4:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A5CF8C              
	lw      a1, 0x002C($sp)            
lbl_80A5D7B0:
	lui     t6, 0x8012                 ## t6 = 80120000
	lw      t6, -0x5A2C(t6)            ## 8011A5D4
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t6, $zero, lbl_80A5D7D0    
	lui     a1, %hi(var_80A5DCD8)      ## a1 = 80A60000
	beq     $zero, $zero, lbl_80A5D7D4 
	addiu   v0, $zero, 0x0005          ## v0 = 00000005
lbl_80A5D7D0:
	addiu   v0, $zero, 0x0011          ## v0 = 00000011
lbl_80A5D7D4:
	bne     v0, $at, lbl_80A5D7EC      
	nop
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A5D90C 
	lw      $ra, 0x001C($sp)           
lbl_80A5D7EC:
	jal     func_80063F7C              
	addiu   a1, a1, %lo(var_80A5DCD8)  ## a1 = FFFFDCD8
	lh      v0, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0x0010         ## $at = 00000010
	or      a0, s0, $zero              ## a0 = 00000000
	andi    v0, v0, 0x00F0             ## v0 = 00000000
	beq     v0, $zero, lbl_80A5D828    
	lui     a1, 0x3E4C                 ## a1 = 3E4C0000
	beq     v0, $at, lbl_80A5D838      
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   $at, $zero, 0x0020         ## $at = 00000020
	beq     v0, $at, lbl_80A5D84C      
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A5D858 
	nop
lbl_80A5D828:
	jal     func_80020F88              
	ori     a1, a1, 0xCCCD             ## a1 = 3E4CCCCD
	beq     $zero, $zero, lbl_80A5D858 
	nop
lbl_80A5D838:
	lui     a1, 0x3DCC                 ## a1 = 3DCC0000
	jal     func_80020F88              
	ori     a1, a1, 0xCCCD             ## a1 = 3DCCCCCD
	beq     $zero, $zero, lbl_80A5D858 
	nop
lbl_80A5D84C:
	lui     a1, 0x3D4C                 ## a1 = 3D4C0000
	jal     func_80020F88              
	ori     a1, a1, 0xCCCD             ## a1 = 3D4CCCCD
lbl_80A5D858:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_80A5DD9C)     ## $at = 80A60000
	lwc1    $f4, %lo(var_80A5DD9C)($at) 
	mul.s   $f6, $f0, $f4              
	trunc.w.s $f8, $f6                   
	mfc1    t8, $f8                    
	jal     func_800CDCCC              ## Rand.Next() float
	sh      t8, 0x017C(s0)             ## 0000017C
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f2                   ## $f2 = 1.00
	lui     $at, %hi(var_80A5DDA0)     ## $at = 80A60000
	lwc1    $f10, %lo(var_80A5DDA0)($at) 
	lh      t1, 0x001C(s0)             ## 0000001C
	swc1    $f2, 0x015C(s0)            ## 0000015C
	mul.s   $f16, $f0, $f10            
	andi    t2, t1, 0x000F             ## t2 = 00000000
	sltiu   $at, t2, 0x0005            
	sll     t2, t2,  2                 
	swc1    $f2, 0x0170(s0)            ## 00000170
	trunc.w.s $f18, $f16                 
	mfc1    t0, $f18                   
	beq     $at, $zero, lbl_80A5D908   
	sh      t0, 0x017E(s0)             ## 0000017E
	lui     $at, %hi(var_80A5DDA4)     ## $at = 80A60000
	addu    $at, $at, t2               
	lw      t2, %lo(var_80A5DDA4)($at) 
	jr      t2                         
	nop
var_80A5D8CC:
	jal     func_80A5D950              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A5D90C 
	lw      $ra, 0x001C($sp)           
var_80A5D8DC:
	jal     func_80A5D9C8              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A5D90C 
	lw      $ra, 0x001C($sp)           
var_80A5D8EC:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A5D628              
	lw      a1, 0x002C($sp)            
	beq     $zero, $zero, lbl_80A5D90C 
	lw      $ra, 0x001C($sp)           
var_80A5D900:
	jal     func_80A5DB48              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80A5D908:
	lw      $ra, 0x001C($sp)           
lbl_80A5D90C:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A5D91C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	or      a3, a1, $zero              ## a3 = 00000000
	lw      t6, 0x0018($sp)            
	or      a0, a3, $zero              ## a0 = 00000000
	addiu   a1, a3, 0x0810             ## a1 = 00000810
	jal     func_80031638              ## DynaPolyInfo_delReserve
	lw      a2, 0x013C(t6)             ## 0000013C
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A5D950:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lui     a1, %hi(func_80A5D974)     ## a1 = 80A60000
	jal     func_80A5CF80              
	addiu   a1, a1, %lo(func_80A5D974) ## a1 = 80A5D974
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A5D974:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_80A5D044              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A5D0A0              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A5D150              
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t6, 0x0016(s0)             ## 00000016
	or      a0, s0, $zero              ## a0 = 00000000
	sh      t6, 0x00B6(s0)             ## 000000B6
	jal     func_80A5D2B4              
	lw      a1, 0x0024($sp)            
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A5D9C8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lui     a1, %hi(func_80A5D9EC)     ## a1 = 80A60000
	jal     func_80A5CF80              
	addiu   a1, a1, %lo(func_80A5D9EC) ## a1 = 80A5D9EC
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A5D9EC:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_80A5D044              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A5D0A0              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A5D150              
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t6, 0x0032(s0)             ## 00000032
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t7, t6, 0x0190             ## t7 = 00000190
	sh      t7, 0x0032(s0)             ## 00000032
	lh      t8, 0x0032(s0)             ## 00000032
	sh      t8, 0x00B6(s0)             ## 000000B6
	jal     func_80A5D2B4              
	lw      a1, 0x0024($sp)            
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A5DA4C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lui     a1, %hi(func_80A5DA70)     ## a1 = 80A60000
	jal     func_80A5CF80              
	addiu   a1, a1, %lo(func_80A5DA70) ## a1 = 80A5DA70
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A5DA70:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	jal     func_80A5D044              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A5D0A0              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A5D150              
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t6, 0x001C(s0)             ## 0000001C
	andi    t7, t6, 0x0100             ## t7 = 00000000
	bnel    t7, $zero, lbl_80A5DB24    
	lh      t1, 0x0016(s0)             ## 00000016
	lh      t8, 0x0032(s0)             ## 00000032
	addiu   t9, t8, 0x0190             ## t9 = 00000190
	sh      t9, 0x0032(s0)             ## 00000032
	jal     func_800636C4              ## sins?
	lh      a0, 0x0032(s0)             ## 00000032
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f4                   ## $f4 = 100.00
	lh      a0, 0x0032(s0)             ## 00000032
	mul.s   $f2, $f0, $f4              
	jal     func_80063684              ## coss?
	swc1    $f2, 0x0020($sp)           
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f8                   ## $f8 = 100.00
	lwc1    $f2, 0x0020($sp)           
	lwc1    $f14, 0x0008(s0)           ## 00000008
	mul.s   $f12, $f0, $f8             
	lwc1    $f10, 0x0010(s0)           ## 00000010
	add.s   $f6, $f14, $f2             
	lw      v0, 0x011C(s0)             ## 0000011C
	swc1    $f6, 0x0024(s0)            ## 00000024
	add.s   $f16, $f10, $f12           
	beq     v0, $zero, lbl_80A5DB20    
	swc1    $f16, 0x002C(s0)           ## 0000002C
	sub.s   $f18, $f14, $f2            
	swc1    $f18, 0x0024(v0)           ## 00000024
	lwc1    $f4, 0x0010(s0)            ## 00000010
	lw      t0, 0x011C(s0)             ## 0000011C
	sub.s   $f6, $f4, $f12             
	swc1    $f6, 0x002C(t0)            ## 0000002C
lbl_80A5DB20:
	lh      t1, 0x0016(s0)             ## 00000016
lbl_80A5DB24:
	or      a0, s0, $zero              ## a0 = 00000000
	sh      t1, 0x00B6(s0)             ## 000000B6
	jal     func_80A5D2B4              
	lw      a1, 0x002C($sp)            
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A5DB48:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	jal     func_80A5CF80              
	or      a1, $zero, $zero           ## a1 = 00000000
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A5DB68:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_80A5DDB8)     ## $at = 80A60000
	lwc1    $f4, %lo(var_80A5DDB8)($at) 
	addiu   a0, $zero, 0x012C          ## a0 = 0000012C
	c.lt.s  $f0, $f4                   
	nop
	bc1fl   lbl_80A5DBC0               
	lh      t6, 0x017C(s0)             ## 0000017C
	jal     func_80063BF0              
	addiu   a1, $zero, 0x0064          ## a1 = 00000064
	sh      v0, 0x0180(s0)             ## 00000180
	addiu   a0, $zero, 0x0320          ## a0 = 00000320
	jal     func_80063BF0              
	addiu   a1, $zero, 0x0190          ## a1 = 00000190
	sh      v0, 0x0182(s0)             ## 00000182
	lh      t6, 0x017C(s0)             ## 0000017C
lbl_80A5DBC0:
	lh      t7, 0x0180(s0)             ## 00000180
	lh      t9, 0x017E(s0)             ## 0000017E
	lh      t0, 0x0182(s0)             ## 00000182
	lw      v0, 0x0154(s0)             ## 00000154
	addu    t8, t6, t7                 
	addu    t1, t9, t0                 
	sh      t8, 0x017C(s0)             ## 0000017C
	beq     v0, $zero, lbl_80A5DBF0    
	sh      t1, 0x017E(s0)             ## 0000017E
	or      a0, s0, $zero              ## a0 = 00000000
	jalr    $ra, v0                    
	lw      a1, 0x0024($sp)            
lbl_80A5DBF0:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A5DC04:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	or      a2, a1, $zero              ## a2 = 00000000
	lh      v0, 0x001C(a0)             ## 0000001C
	lui     t6, 0x0600                 ## t6 = 06000000
	addiu   t6, t6, 0x2BD0             ## t6 = 06002BD0
	andi    v0, v0, 0x0200             ## v0 = 00000000
	beq     v0, $zero, lbl_80A5DC3C    
	or      a0, a2, $zero              ## a0 = 00000000
	addiu   $at, $zero, 0x0200         ## $at = 00000200
	beq     v0, $at, lbl_80A5DC44      
	lui     t7, 0x0600                 ## t7 = 06000000
	beq     $zero, $zero, lbl_80A5DC4C 
	nop
lbl_80A5DC3C:
	beq     $zero, $zero, lbl_80A5DC4C 
	sw      t6, 0x001C($sp)            
lbl_80A5DC44:
	addiu   t7, t7, 0x0DE0             ## t7 = 06000DE0
	sw      t7, 0x001C($sp)            
lbl_80A5DC4C:
	jal     func_80028048              
	lw      a1, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop
	nop

.section .data

var_80A5DC70: .word 0x00D10100, 0x00000000, 0x00740000, 0x0000018C
.word func_80A5D728
.word func_80A5D91C
.word func_80A5DB68
.word func_80A5DC04
var_80A5DC90: .word 0x00000000, 0x3F800000, 0x00000000
var_80A5DC9C: .word 0x00000000, 0x00000000, 0x00000000
var_80A5DCA8: .word 0x32756D3C, 0x31C45764, 0x30C45764
var_80A5DCB4: .word 0x3F75C28F, 0x3F75C28F, 0x3F7AE148
var_80A5DCC0: .word 0x3E665991, 0x3E665991, 0x3D0EF2BF
var_80A5DCCC: .word 0x3F797051, 0x3F797051, 0x3F7FD814
var_80A5DCD8: .word \
0xB0F40BB8, 0xB0F803E8, 0x30FC0898, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80A5DCF0: .word var_80A5D03C
.word lbl_80A5D034
.word lbl_80A5D034
.word var_80A5D03C
.word lbl_80A5D034
.word lbl_80A5D034
.word lbl_80A5D034
.word lbl_80A5D034
.word lbl_80A5D034
.word lbl_80A5D034
.word lbl_80A5D034
.word lbl_80A5D034
.word lbl_80A5D034
.word lbl_80A5D034
.word lbl_80A5D034
.word var_80A5D03C
.word var_80A5D03C
.word var_80A5D03C
.word lbl_80A5D034
.word var_80A5D03C
.word lbl_80A5D034
.word lbl_80A5D034
.word lbl_80A5D034
.word lbl_80A5D034
.word lbl_80A5D034
.word lbl_80A5D034
.word lbl_80A5D034
.word lbl_80A5D034
.word lbl_80A5D034
.word lbl_80A5D034
.word lbl_80A5D034
.word var_80A5D03C
.word lbl_80A5D034
.word lbl_80A5D034
.word var_80A5D03C
.word var_80A5D03C
var_80A5DD80: .word 0x3E19999A
var_80A5DD84: .word 0x3E4CCCCD
var_80A5DD88: .word 0x3ECCCCCD
var_80A5DD8C: .word 0x3A83126F
var_80A5DD90: .word 0x3AD1B717
var_80A5DD94: .word 0x3AD1B717
var_80A5DD98: .word 0x38C90FDB
var_80A5DD9C: .word 0x477FFF80
var_80A5DDA0: .word 0x477FFF80
var_80A5DDA4: .word var_80A5D8CC
.word var_80A5D8CC
.word var_80A5D8DC
.word var_80A5D8EC
.word var_80A5D900
var_80A5DDB8: .word 0x3D4CCCCD, 0x00000000

