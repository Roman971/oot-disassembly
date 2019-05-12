#include <mips.h>
.set noreorder
.set noat

.section .text
func_808F3C30:
	addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
	sw      s0, 0x001C($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      s1, 0x0020($sp)            
	sw      a1, 0x007C($sp)            
	lui     a1, %hi(var_808F4288)      ## a1 = 808F0000
	sw      $zero, 0x003C($sp)         
	addiu   a1, a1, %lo(var_808F4288)  ## a1 = 808F4288
	jal     func_80063F7C              
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x015C             ## a1 = 0000015C
	sw      a1, 0x002C($sp)            
	jal     func_8004B064              
	lw      a0, 0x007C($sp)            
	lui     a3, %hi(var_808F4278)      ## a3 = 808F0000
	addiu   t6, s0, 0x017C             ## t6 = 0000017C
	sw      t6, 0x0010($sp)            
	addiu   a3, a3, %lo(var_808F4278)  ## a3 = 808F4278
	lw      a0, 0x007C($sp)            
	lw      a1, 0x002C($sp)            
	jal     func_8004B3EC              
	or      a2, s0, $zero              ## a2 = 00000000
	lh      t9, 0x001C(s0)             ## 0000001C
	lh      t8, 0x001C(s0)             ## 0000001C
	lui     s1, %hi(var_808F423C)      ## s1 = 808F0000
	sra     t0, t9,  8                 
	andi    t1, t0, 0x00FF             ## t1 = 00000000
	sh      t1, 0x001C(s0)             ## 0000001C
	lh      t2, 0x001C(s0)             ## 0000001C
	addiu   s1, s1, %lo(var_808F423C)  ## s1 = 808F423C
	or      a0, s0, $zero              ## a0 = 00000000
	bne     t2, $zero, lbl_808F3CD0    
	sb      t8, 0x0158(s0)             ## 00000158
	lui     t3, %hi(func_808F3EE8)     ## t3 = 808F0000
	lui     s1, %hi(var_808F4200)      ## s1 = 808F0000
	addiu   t3, t3, %lo(func_808F3EE8) ## t3 = 808F3EE8
	addiu   s1, s1, %lo(var_808F4200)  ## s1 = 808F4200
	beq     $zero, $zero, lbl_808F3D48 
	sw      t3, 0x0154(s0)             ## 00000154
lbl_808F3CD0:
	jal     func_80035260              
	or      a1, $zero, $zero           ## a1 = 00000000
	lui     a0, 0x0600                 ## a0 = 06000000
	addiu   a0, a0, 0x66A8             ## a0 = 060066A8
	jal     func_80033EF4              
	addiu   a1, $sp, 0x003C            ## a1 = FFFFFFC4
	lw      a0, 0x007C($sp)            
	or      a2, s0, $zero              ## a2 = 00000000
	lw      a3, 0x003C($sp)            
	jal     func_800313A4              ## DynaPolyInfo_setActor
	addiu   a1, a0, 0x0810             ## a1 = 00000810
	lui     $at, 0xC38C                ## $at = C38C0000
	mtc1    $at, $f6                   ## $f6 = -280.00
	lwc1    $f4, 0x000C(s0)            ## 0000000C
	sw      v0, 0x013C(s0)             ## 0000013C
	lbu     a1, 0x0158(s0)             ## 00000158
	add.s   $f8, $f4, $f6              
	swc1    $f8, 0x000C(s0)            ## 0000000C
	jal     func_8002049C              
	lw      a0, 0x007C($sp)            
	beq     v0, $zero, lbl_808F3D40    
	lui     t5, %hi(func_808F3F6C)     ## t5 = 808F0000
	lwc1    $f10, 0x000C(s0)           ## 0000000C
	lui     t4, %hi(func_808F4150)     ## t4 = 808F0000
	addiu   t4, t4, %lo(func_808F4150) ## t4 = 808F4150
	sw      t4, 0x0154(s0)             ## 00000154
	beq     $zero, $zero, lbl_808F3D48 
	swc1    $f10, 0x0028(s0)           ## 00000028
lbl_808F3D40:
	addiu   t5, t5, %lo(func_808F3F6C) ## t5 = 808F3F6C
	sw      t5, 0x0154(s0)             ## 00000154
lbl_808F3D48:
	jal     func_800636C4              ## sins?
	lh      a0, 0x00B6(s0)             ## 000000B6
	lh      a0, 0x00B6(s0)             ## 000000B6
	jal     func_80063684              ## coss?
	swc1    $f0, 0x0044($sp)           
	lwc1    $f2, 0x0044($sp)           
	mov.s   $f12, $f0                  
	addiu   v0, $sp, 0x004C            ## v0 = FFFFFFD4
	or      v1, s1, $zero              ## v1 = 808F4200
	addiu   a0, $sp, 0x0070            ## a0 = FFFFFFF8
	lwc1    $f10, 0x0018(v1)           ## 808F4218
	addiu   v0, v0, 0x000C             ## v0 = FFFFFFE0
	lwc1    $f18, 0x0024(s0)           ## 00000024
	mul.s   $f16, $f10, $f0            
	beql    v0, a0, lbl_808F3DD4       
	add.s   $f14, $f16, $f18           
	add.s   $f14, $f16, $f18           
lbl_808F3D8C:
	addiu   v0, v0, 0x000C             ## v0 = FFFFFFEC
	addiu   v1, v1, 0x000C             ## v1 = 808F420C
	swc1    $f14, -0x0018(v0)          ## FFFFFFD4
	lwc1    $f14, 0x0010(v1)           ## 808F421C
	lwc1    $f10, 0x0028(s0)           ## 00000028
	add.s   $f10, $f14, $f10           
	swc1    $f10, -0x0014(v0)          ## FFFFFFD8
	lwc1    $f10, 0x000C(v1)           ## 808F4218
	lwc1    $f14, 0x002C(s0)           ## 0000002C
	mul.s   $f10, $f10, $f2            
	sub.s   $f10, $f14, $f10           
	swc1    $f10, -0x0010(v0)          ## FFFFFFDC
	lwc1    $f10, 0x0018(v1)           ## 808F4224
	lwc1    $f18, 0x0024(s0)           ## 00000024
	mul.s   $f16, $f10, $f0            
	bnel    v0, a0, lbl_808F3D8C       
	add.s   $f14, $f16, $f18           
	add.s   $f14, $f16, $f18           
lbl_808F3DD4:
	addiu   v1, v1, 0x000C             ## v1 = 808F4218
	swc1    $f14, -0x000C(v0)          ## FFFFFFE0
	lwc1    $f10, 0x0028(s0)           ## 00000028
	lwc1    $f14, 0x0010(v1)           ## 808F4228
	add.s   $f10, $f14, $f10           
	swc1    $f10, -0x0008(v0)          ## FFFFFFE4
	lwc1    $f10, 0x000C(v1)           ## 808F4224
	lwc1    $f14, 0x002C(s0)           ## 0000002C
	mul.s   $f10, $f10, $f2            
	sub.s   $f10, $f14, $f10           
	swc1    $f10, -0x0004(v0)          ## FFFFFFE8
	addiu   t6, $sp, 0x0064            ## t6 = FFFFFFEC
	sw      t6, 0x0010($sp)            
	lw      a0, 0x002C($sp)            
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $sp, 0x004C            ## a2 = FFFFFFD4
	addiu   a3, $sp, 0x0058            ## a3 = FFFFFFE0
	swc1    $f2, 0x0044($sp)           
	jal     func_80050BD4              
	swc1    $f12, 0x0040($sp)          
	lwc1    $f12, 0x0040($sp)          
	lwc1    $f10, 0x0030(s1)           ## 808F4230
	lwc1    $f4, 0x0024(s0)            ## 00000024
	lwc1    $f2, 0x0044($sp)           
	mul.s   $f16, $f10, $f12           
	addiu   t7, $sp, 0x0058            ## t7 = FFFFFFE0
	lw      a0, 0x002C($sp)            
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	addiu   a2, $sp, 0x004C            ## a2 = FFFFFFD4
	addiu   a3, $sp, 0x0064            ## a3 = FFFFFFEC
	add.s   $f18, $f16, $f4            
	swc1    $f18, 0x0058($sp)          
	lwc1    $f8, 0x0028(s0)            ## 00000028
	lwc1    $f6, 0x001C(s1)            ## 808F421C
	add.s   $f10, $f6, $f8             
	swc1    $f10, 0x005C($sp)          
	lwc1    $f4, 0x0030(s1)            ## 808F4230
	lwc1    $f16, 0x002C(s0)           ## 0000002C
	sw      t7, 0x0010($sp)            
	mul.s   $f18, $f4, $f2             
	sub.s   $f6, $f16, $f18            
	jal     func_80050BD4              
	swc1    $f6, 0x0060($sp)           
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0078           ## $sp = 00000000


func_808F3E94:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lw      a0, 0x001C($sp)            
	addiu   a1, a3, 0x015C             ## a1 = 0000015C
	jal     func_8004B148              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lh      t6, 0x001C(a3)             ## 0000001C
	addiu   a1, a0, 0x0810             ## a1 = 00000810
	bnel    t6, $at, lbl_808F3EDC      
	lw      $ra, 0x0014($sp)           
	jal     func_80031638              ## DynaPolyInfo_delReserve
	lw      a2, 0x013C(a3)             ## 0000013C
	lw      $ra, 0x0014($sp)           
lbl_808F3EDC:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808F3EE8:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	lbu     t6, 0x016C(s0)             ## 0000016C
	lw      a0, 0x002C($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	andi    t7, t6, 0x0002             ## t7 = 00000000
	beq     t7, $zero, lbl_808F3F28    
	lui     a2, 0x40E0                 ## a2 = 40E00000
	lui     $at, 0x40C0                ## $at = 40C00000
	mtc1    $at, $f4                   ## $f4 = 6.00
	lh      a3, 0x00B6(s0)             ## 000000B6
	jal     func_80022EC4              
	swc1    $f4, 0x0010($sp)           
lbl_808F3F28:
	lh      t8, 0x00B4(s0)             ## 000000B4
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	addiu   t9, t8, 0x0360             ## t9 = 00000360
	sh      t9, 0x00B4(s0)             ## 000000B4
	lw      a0, 0x002C($sp)            
	addiu   a2, s0, 0x015C             ## a2 = 0000015C
	jal     func_8004BD50              ## CollisionCheck_setAT
	addu    a1, a0, $at                
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8002313C              
	addiu   a1, $zero, 0x20EC          ## a1 = 000020EC
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_808F3F6C:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lbu     t6, 0x016D(a3)             ## 0000016D
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	andi    t7, t6, 0x0002             ## t7 = 00000000
	beq     t7, $zero, lbl_808F3FE0    
	lw      a0, 0x0024($sp)            
	addiu   t8, $zero, 0x0014          ## t8 = 00000014
	sh      t8, 0x015A(a3)             ## 0000015A
	lbu     a1, 0x0158(a3)             ## 00000158
	sw      a3, 0x0020($sp)            
	jal     func_800204D0              
	lw      a0, 0x0024($sp)            
	jal     func_800646F0              
	addiu   a0, $zero, 0x4802          ## a0 = 00004802
	lw      a3, 0x0020($sp)            
	lui     t9, %hi(func_808F3FFC)     ## t9 = 808F0000
	addiu   t9, t9, %lo(func_808F3FFC) ## t9 = 808F3FFC
	sw      t9, 0x0154(a3)             ## 00000154
	sw      $zero, 0x0010($sp)         
	lw      a0, 0x0024($sp)            
	addiu   a1, $zero, 0x0BC2          ## a1 = 00000BC2
	jal     func_8006B6FC              
	addiu   a2, $zero, 0x0032          ## a2 = 00000032
	beq     $zero, $zero, lbl_808F3FF0 
	lw      $ra, 0x001C($sp)           
lbl_808F3FE0:
	addu    a1, a0, $at                
	jal     func_8004BF40              ## CollisionCheck_setAC
	addiu   a2, a3, 0x015C             ## a2 = 0000015C
	lw      $ra, 0x001C($sp)           
lbl_808F3FF0:
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_808F3FFC:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x0024($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	lh      v1, 0x015A(a2)             ## 0000015A
	lui     t7, %hi(func_808F40E0)     ## t7 = 808F0000
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	beq     v1, $zero, lbl_808F4028    
	addiu   t6, v1, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x015A(a2)             ## 0000015A
	lh      v1, 0x015A(a2)             ## 0000015A
lbl_808F4028:
	bne     v1, $zero, lbl_808F4038    
	addiu   t7, t7, %lo(func_808F40E0) ## t7 = 808F40E0
	sw      t7, 0x0154(a2)             ## 00000154
	lh      v1, 0x015A(a2)             ## 0000015A
lbl_808F4038:
	bgez    v1, lbl_808F404C           
	andi    v0, v1, 0x0003             ## v0 = 00000000
	beq     v0, $zero, lbl_808F404C    
	nop
	addiu   v0, v0, 0xFFFC             ## v0 = FFFFFFFC
lbl_808F404C:
	addiu   v0, v0, 0xFFFE             ## v0 = FFFFFFFA
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	bnel    v0, $at, lbl_808F406C      
	sll     v0, v0,  1                 
	beq     $zero, $zero, lbl_808F4074 
	or      v0, $zero, $zero           ## v0 = 00000000
	sll     v0, v0,  1                 
lbl_808F406C:
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
lbl_808F4074:
	lh      a0, 0x00B6(a2)             ## 000000B6
	sw      a2, 0x0020($sp)            
	jal     func_80063684              ## coss?
	sh      v0, 0x001E($sp)            
	lh      v0, 0x001E($sp)            
	lw      a2, 0x0020($sp)            
	mtc1    v0, $f4                    ## $f4 = 0.00
	lwc1    $f8, 0x0008(a2)            ## 00000008
	lh      a0, 0x00B6(a2)             ## 000000B6
	cvt.s.w $f2, $f4                   
	mul.s   $f6, $f0, $f2              
	add.s   $f10, $f6, $f8             
	swc1    $f10, 0x0024(a2)           ## 00000024
	jal     func_800636C4              ## sins?
	swc1    $f2, 0x0018($sp)           
	lwc1    $f2, 0x0018($sp)           
	lw      a0, 0x0020($sp)            
	addiu   a1, $zero, 0x2058          ## a1 = 00002058
	mul.s   $f16, $f0, $f2             
	lwc1    $f18, 0x0010(a0)           ## 00000010
	add.s   $f4, $f16, $f18            
	jal     func_8002313C              
	swc1    $f4, 0x002C(a0)            ## 0000002C
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_808F40E0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f6                   ## $f6 = 1.00
	lwc1    $f4, 0x0060(a3)            ## 00000060
	lw      a1, 0x000C(a3)             ## 0000000C
	addiu   a0, a3, 0x0028             ## a0 = 00000028
	add.s   $f8, $f4, $f6              
	swc1    $f8, 0x0060(a3)            ## 00000060
	lw      a2, 0x0060(a3)             ## 00000060
	jal     func_8006385C              
	sw      a3, 0x0018($sp)            
	beq     v0, $zero, lbl_808F4140    
	lw      a3, 0x0018($sp)            
	or      a0, a3, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x2860          ## a1 = 00002860
	jal     func_80022FD0              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	lui     t6, %hi(func_808F4150)     ## t6 = 808F0000
	addiu   t6, t6, %lo(func_808F4150) ## t6 = 808F4150
	sw      t6, 0x0154(a3)             ## 00000154
lbl_808F4140:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808F4150:
	sw      a0, 0x0000($sp)            
	sw      a1, 0x0004($sp)            
	jr      $ra                        
	nop


func_808F4160:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lw      t9, 0x0154(a0)             ## 00000154
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808F4184:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a1, $zero              ## a2 = 00000000
	lh      t6, 0x001C(a0)             ## 0000001C
	or      a0, a2, $zero              ## a0 = 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	bne     t6, $zero, lbl_808F41BC    
	nop
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0x8D88             ## a1 = 06008D88
	jal     func_80028048              
	or      a0, a2, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_808F41C8 
	lw      $ra, 0x0014($sp)           
lbl_808F41BC:
	jal     func_80028048              
	addiu   a1, a1, 0x6570             ## a1 = 00006570
	lw      $ra, 0x0014($sp)           
lbl_808F41C8:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop
	nop

.section .data

var_808F41E0: .word 0x00510600, 0x00000000, 0x00360000, 0x00000234
.word func_808F3C30
.word func_808F3E94
.word func_808F4160
.word func_808F4184
var_808F4200: .word \
0x00000000, 0x20000000, 0x00040000, 0x00000004, \
0x00000000, 0x11010000, 0x435C0000, 0xC1200000, \
0x00000000, 0x435C0000, 0x41200000, 0x00000000, \
0xC35C0000, 0x41200000, 0x00000000
var_808F423C: .word \
0x00000000, 0x20000000, 0x00040000, 0x00000004, \
0x00000000, 0x11010000, 0x41800000, 0x00000000, \
0x00000000, 0x41800000, 0x43070000, 0x00000000, \
0xC1800000, 0x43070000, 0x00000000
var_808F4278: .word 0x0A110900, 0x20020000, 0x00000002
.word var_808F4200
var_808F4288: .word 0x48500064, 0x00000000

.section .rodata


