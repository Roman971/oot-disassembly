#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A929D0:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	sw      s0, 0x0018($sp)            
	lui     s0, 0x0001                 ## s0 = 00010000
	addu    s0, s0, a0                 
	lw      s0, 0x1E10(s0)             ## 00011E10
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80A929EC:
	lbu     t6, 0x0000(s0)             ## 00010000
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	sll     v0, v0, 16                 
	bne     t6, $zero, lbl_80A92AA8    
	sra     v0, v0, 16                 
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	sb      t7, 0x0000(s0)             ## 00010000
	lw      t9, 0x0000(a1)             ## 00000000
	lui     $at, %hi(var_80A9B2D0)     ## $at = 80AA0000
	sw      t9, 0x0004(s0)             ## 00010004
	lw      t8, 0x0004(a1)             ## 00000004
	sw      t8, 0x0008(s0)             ## 00010008
	lw      t9, 0x0008(a1)             ## 00000008
	sw      t9, 0x000C(s0)             ## 0001000C
	lw      t1, 0x0000(a2)             ## 00000000
	sw      t1, 0x0010(s0)             ## 00010010
	lw      t0, 0x0004(a2)             ## 00000004
	sw      t0, 0x0014(s0)             ## 00010014
	lw      t1, 0x0008(a2)             ## 00000008
	sw      t1, 0x0018(s0)             ## 00010018
	lw      t3, 0x0000(a3)             ## 00000000
	sw      t3, 0x001C(s0)             ## 0001001C
	lw      t2, 0x0004(a3)             ## 00000004
	sw      t2, 0x0020(s0)             ## 00010020
	lw      t3, 0x0008(a3)             ## 00000008
	sw      t3, 0x0024(s0)             ## 00010024
	lwc1    $f4, 0x0030($sp)           
	swc1    $f4, 0x004C(s0)            ## 0001004C
	jal     func_80026D64              
	lwc1    $f12, %lo(var_80A9B2D0)($at) 
	swc1    $f0, 0x0054(s0)            ## 00010054
	lui     $at, %hi(var_80A9B2D4)     ## $at = 80AA0000
	jal     func_80026D64              
	lwc1    $f12, %lo(var_80A9B2D4)($at) 
	sh      $zero, 0x0048(s0)          ## 00010048
	lh      t4, 0x0048(s0)             ## 00010048
	swc1    $f0, 0x0058(s0)            ## 00010058
	lui     $at, 0x4120                ## $at = 41200000
	sh      t4, 0x004A(s0)             ## 0001004A
	lwc1    $f6, 0x0034($sp)           
	mtc1    $at, $f12                  ## $f12 = 10.00
	jal     func_80026D64              
	swc1    $f6, 0x005C(s0)            ## 0001005C
	trunc.w.s $f8, $f0                   
	mfc1    t8, $f8                    
	beq     $zero, $zero, lbl_80A92AB4 
	sb      t8, 0x0001(s0)             ## 00010001
lbl_80A92AA8:
	slti    $at, v0, 0x0064            
	bne     $at, $zero, lbl_80A929EC   
	addiu   s0, s0, 0x006C             ## s0 = 0001006C
lbl_80A92AB4:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A92AC8:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x0024($sp)            
	sw      a2, 0x0028($sp)            
	lui     v0, 0x0001                 ## v0 = 00010000
	addu    v0, v0, a0                 
	lw      v0, 0x1E10(v0)             ## 00011E10
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_80A92AE8:
	lbu     t6, 0x0000(v0)             ## 00010000
	bne     t6, $zero, lbl_80A92B90    
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f12                  ## $f12 = 100.00
	jal     func_80026D64              
	sw      v0, 0x0018($sp)            
	trunc.w.s $f4, $f0                   
	lw      v0, 0x0018($sp)            
	addiu   t1, $zero, 0x0002          ## t1 = 00000002
	lui     v1, %hi(var_80A94F64)      ## v1 = 80A90000
	mfc1    t0, $f4                    
	sb      t1, 0x0000(v0)             ## 00000000
	addiu   v1, v1, %lo(var_80A94F64)  ## v1 = 80A94F64
	sb      t0, 0x0001(v0)             ## 00000001
	lw      t2, 0x0024($sp)            
	lui     $at, %hi(var_80A9B2D8)     ## $at = 80AA0000
	lw      t4, 0x0000(t2)             ## 00000000
	sw      t4, 0x0004(v0)             ## 00000004
	lw      t3, 0x0004(t2)             ## 00000004
	sw      t3, 0x0008(v0)             ## 00000008
	lw      t4, 0x0008(t2)             ## 00000008
	sw      t4, 0x000C(v0)             ## 0000000C
	lw      t6, 0x0000(v1)             ## 80A94F64
	sw      t6, 0x0010(v0)             ## 00000010
	lw      t5, 0x0004(v1)             ## 80A94F68
	sw      t5, 0x0014(v0)             ## 00000014
	lw      t6, 0x0008(v1)             ## 80A94F6C
	sw      t6, 0x0018(v0)             ## 00000018
	lw      t8, 0x0000(v1)             ## 80A94F64
	sw      t8, 0x001C(v0)             ## 0000001C
	lw      t7, 0x0004(v1)             ## 80A94F68
	sw      t7, 0x0020(v0)             ## 00000020
	lw      t8, 0x0008(v1)             ## 80A94F6C
	sw      t8, 0x0024(v0)             ## 00000024
	lwc1    $f6, %lo(var_80A9B2D8)($at) 
	lui     $at, 0x4348                ## $at = 43480000
	mtc1    $at, $f10                  ## $f10 = 200.00
	swc1    $f6, 0x0020(v0)            ## 00000020
	lwc1    $f8, 0x0028($sp)           
	swc1    $f10, 0x0034(v0)           ## 00000034
	beq     $zero, $zero, lbl_80A92BA8 
	swc1    $f8, 0x004C(v0)            ## 0000004C
lbl_80A92B90:
	addiu   v1, v1, 0x0001             ## v1 = 80A94F65
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	slti    $at, v1, 0x0064            
	bne     $at, $zero, lbl_80A92AE8   
	addiu   v0, v0, 0x006C             ## v0 = 0000006C
lbl_80A92BA8:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A92BB8:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	mtc1    a2, $f14                   ## $f14 = 0.00
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x0024($sp)            
	lui     v0, 0x0001                 ## v0 = 00010000
	addu    v0, v0, a0                 
	lw      v0, 0x1E10(v0)             ## 00011E10
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_80A92BD8:
	lbu     t6, 0x0000(v0)             ## 00010000
	bne     t6, $zero, lbl_80A92CB4    
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f12                  ## $f12 = 100.00
	sw      v0, 0x0018($sp)            
	jal     func_80026D64              
	swc1    $f14, 0x0028($sp)          
	trunc.w.s $f4, $f0                   
	lw      v0, 0x0018($sp)            
	lwc1    $f14, 0x0028($sp)          
	addiu   t1, $zero, 0x0003          ## t1 = 00000003
	mfc1    t0, $f4                    
	sb      t1, 0x0000(v0)             ## 00000000
	lui     v1, %hi(var_80A94F64)      ## v1 = 80A90000
	sb      t0, 0x0001(v0)             ## 00000001
	lw      t2, 0x0024($sp)            
	addiu   v1, v1, %lo(var_80A94F64)  ## v1 = 80A94F64
	lui     $at, 0x437F                ## $at = 437F0000
	lw      t4, 0x0000(t2)             ## 00000000
	mtc1    $at, $f2                   ## $f2 = 255.00
	lui     $at, 0x4348                ## $at = 43480000
	sw      t4, 0x0004(v0)             ## 00000004
	lw      t3, 0x0004(t2)             ## 00000004
	mtc1    $at, $f8                   ## $f8 = 200.00
	lui     $at, 0x41A0                ## $at = 41A00000
	sw      t3, 0x0008(v0)             ## 00000008
	lw      t4, 0x0008(t2)             ## 00000008
	mtc1    $at, $f10                  ## $f10 = 20.00
	add.s   $f6, $f14, $f14            
	sw      t4, 0x000C(v0)             ## 0000000C
	lw      t6, 0x0000(v1)             ## 80A94F64
	lui     $at, 0x4357                ## $at = 43570000
	mtc1    $zero, $f16                ## $f16 = 0.00
	sw      t6, 0x0010(v0)             ## 00000010
	lw      t5, 0x0004(v1)             ## 80A94F68
	mtc1    $at, $f18                  ## $f18 = 215.00
	sw      t5, 0x0014(v0)             ## 00000014
	lw      t6, 0x0008(v1)             ## 80A94F6C
	sw      t6, 0x0018(v0)             ## 00000018
	lw      t8, 0x0000(v1)             ## 80A94F64
	sw      t8, 0x001C(v0)             ## 0000001C
	lw      t7, 0x0004(v1)             ## 80A94F68
	sw      t7, 0x0020(v0)             ## 00000020
	lw      t8, 0x0008(v1)             ## 80A94F6C
	swc1    $f6, 0x0050(v0)            ## 00000050
	swc1    $f14, 0x004C(v0)           ## 0000004C
	swc1    $f2, 0x0034(v0)            ## 00000034
	swc1    $f2, 0x0038(v0)            ## 00000038
	swc1    $f2, 0x0040(v0)            ## 00000040
	swc1    $f8, 0x0028(v0)            ## 00000028
	swc1    $f10, 0x002C(v0)           ## 0000002C
	swc1    $f16, 0x0030(v0)           ## 00000030
	swc1    $f18, 0x003C(v0)           ## 0000003C
	beq     $zero, $zero, lbl_80A92CCC 
	sw      t8, 0x0024(v0)             ## 00000024
lbl_80A92CB4:
	addiu   v1, v1, 0x0001             ## v1 = 80A94F65
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	slti    $at, v1, 0x0064            
	bne     $at, $zero, lbl_80A92BD8   
	addiu   v0, v0, 0x006C             ## v0 = 0000006C
lbl_80A92CCC:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A92CDC:
	mtc1    a2, $f12                   ## $f12 = 0.00
	mtc1    a3, $f14                   ## $f14 = 0.00
	lui     v0, 0x0001                 ## v0 = 00010000
	addu    v0, v0, a0                 
	lw      v0, 0x1E10(v0)             ## 00011E10
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_80A92CF4:
	lbu     t6, 0x0000(v0)             ## 00010000
	bne     t6, $zero, lbl_80A92D94    
	addiu   t7, $zero, 0x0004          ## t7 = 00000004
	sb      t7, 0x0000(v0)             ## 00010000
	lw      t9, 0x0000(a1)             ## 00000000
	lui     v1, %hi(var_80A94F64)      ## v1 = 80A90000
	addiu   v1, v1, %lo(var_80A94F64)  ## v1 = 80A94F64
	sw      t9, 0x0004(v0)             ## 00010004
	lw      t8, 0x0004(a1)             ## 00000004
	add.s   $f6, $f12, $f12            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	sw      t8, 0x0008(v0)             ## 00010008
	lw      t9, 0x0008(a1)             ## 00000008
	lui     $at, 0x4334                ## $at = 43340000
	mtc1    $at, $f8                   ## $f8 = 180.00
	sw      t9, 0x000C(v0)             ## 0001000C
	lw      t1, 0x0000(v1)             ## 80A94F64
	sw      t1, 0x0010(v0)             ## 00010010
	lw      t0, 0x0004(v1)             ## 80A94F68
	sw      t0, 0x0014(v0)             ## 00010014
	lw      t1, 0x0008(v1)             ## 80A94F6C
	sw      t1, 0x0018(v0)             ## 00010018
	lw      t3, 0x0000(v1)             ## 80A94F64
	sw      t3, 0x001C(v0)             ## 0001001C
	lw      t2, 0x0004(v1)             ## 80A94F68
	sw      t2, 0x0020(v0)             ## 00010020
	lw      t3, 0x0008(v1)             ## 80A94F6C
	swc1    $f6, 0x0050(v0)            ## 00010050
	swc1    $f14, 0x005C(v0)           ## 0001005C
	swc1    $f4, 0x004C(v0)            ## 0001004C
	sw      t3, 0x0024(v0)             ## 00010024
	lw      t4, 0x0010($sp)            
	lw      t6, 0x0000(t4)             ## 00000000
	sw      t6, 0x0060(v0)             ## 00010060
	lw      t5, 0x0004(t4)             ## 00000004
	sw      t5, 0x0064(v0)             ## 00010064
	lw      t6, 0x0008(t4)             ## 00000008
	swc1    $f8, 0x0034(v0)            ## 00010034
	jr      $ra                        
	sw      t6, 0x0068(v0)             ## 00010068
lbl_80A92D94:
	addiu   v1, v1, 0x0001             ## v1 = 80A94F65
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	slti    $at, v1, 0x0064            
	bne     $at, $zero, lbl_80A92CF4   
	addiu   v0, v0, 0x006C             ## v0 = 0001006C
	jr      $ra                        
	nop


func_80A92DB4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	or      a0, a3, $zero              ## a0 = 00000000
	jal     func_8004ABCC              
	addiu   a1, a2, 0x0184             ## a1 = 00000184
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A92DE0:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s1, 0x0018($sp)            
	or      s1, a0, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      s0, 0x0014($sp)            
	sw      a1, 0x0034($sp)            
	addiu   a1, s1, 0x0184             ## a1 = 00000184
	sw      a1, 0x0020($sp)            
	jal     func_8004AB7C              
	lw      a0, 0x0034($sp)            
	lh      t6, 0x001C(s1)             ## 0000001C
	addiu   s0, $zero, 0x0064          ## s0 = 00000064
	addiu   t3, $zero, 0x0005          ## t3 = 00000005
	bne     s0, t6, lbl_80A92EC8       
	or      a2, s1, $zero              ## a2 = 00000000
	lui     $at, 0x420C                ## $at = 420C0000
	mtc1    $at, $f4                   ## $f4 = 35.00
	addiu   t7, $zero, 0x0064          ## t7 = 00000064
	addiu   t8, $zero, 0x0046          ## t8 = 00000046
	sb      t7, 0x013E(s1)             ## 0000013E
	sh      t8, 0x0140(s1)             ## 00000140
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_80021248              
	swc1    $f4, 0x0068(s1)            ## 00000068
	or      s0, $zero, $zero           ## s0 = 00000000
lbl_80A92E44:
	jal     func_80021124              
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   s0, s0, 0x0001             ## s0 = 00000001
	sll     s0, s0, 16                 
	sra     s0, s0, 16                 
	blez    s0, lbl_80A92E44           
	nop
	lui     $at, %hi(var_80A9B2DC)     ## $at = 80AA0000
	lwc1    $f0, %lo(var_80A9B2DC)($at) 
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f6                   ## $f6 = 2.00
	lh      t9, 0x00B4(s1)             ## 000000B4
	lui     $at, 0x428C                ## $at = 428C0000
	mtc1    $at, $f8                   ## $f8 = 70.00
	subu    t0, $zero, t9              
	sh      t0, 0x00B4(s1)             ## 000000B4
	or      a0, s1, $zero              ## a0 = 00000000
	swc1    $f0, 0x0050(s1)            ## 00000050
	swc1    $f0, 0x0054(s1)            ## 00000054
	swc1    $f6, 0x0058(s1)            ## 00000058
	jal     func_80021248              
	swc1    $f8, 0x0068(s1)            ## 00000068
	lui     a3, %hi(var_80A94F9C)      ## a3 = 80A90000
	addiu   a3, a3, %lo(var_80A94F9C)  ## a3 = 80A94F9C
	lw      a0, 0x0034($sp)            
	lw      a1, 0x0020($sp)            
	jal     func_8004ACEC              
	or      a2, s1, $zero              ## a2 = 00000000
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x182A          ## a1 = 0000182A
	beq     $zero, $zero, lbl_80A92F94 
	lw      $ra, 0x001C($sp)           
lbl_80A92EC8:
	lw      t1, 0x0004(s1)             ## 00000004
	sb      t3, 0x001F(s1)             ## 0000001F
	lui     a3, %hi(var_80A94F70)      ## a3 = 80A90000
	ori     t2, t1, 0x0001             ## t2 = 00000001
	sw      t2, 0x0004(s1)             ## 00000004
	lw      a1, 0x0020($sp)            
	lw      a0, 0x0034($sp)            
	jal     func_8004ACEC              
	addiu   a3, a3, %lo(var_80A94F70)  ## a3 = 80A94F70
	lh      t5, 0x001C(s1)             ## 0000001C
	addiu   t4, $zero, 0x0003          ## t4 = 00000003
	sb      t4, 0x00AF(s1)             ## 000000AF
	bne     t5, $zero, lbl_80A92F34    
	lui     v1, %hi(var_80A94F60)      ## v1 = 80A90000
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	addiu   t6, $zero, 0x0046          ## t6 = 00000046
	addiu   t7, $zero, 0x00FA          ## t7 = 000000FA
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	addiu   t9, $zero, 0x4000          ## t9 = 00004000
	addiu   t0, $zero, 0x0014          ## t0 = 00000014
	sh      t6, 0x0140(s1)             ## 00000140
	sh      t7, 0x0142(s1)             ## 00000142
	sb      t8, 0x013E(s1)             ## 0000013E
	sh      t9, 0x0030(s1)             ## 00000030
	sb      a1, 0x01D0(s1)             ## 000001D0
	sh      s0, 0x01EC(s1)             ## 000001EC
	sh      t0, 0x0144(s1)             ## 00000144
lbl_80A92F34:
	addiu   v1, v1, %lo(var_80A94F60)  ## v1 = 80A94F60
	lbu     t1, 0x0000(v1)             ## 80A94F60
	lui     a0, %hi(var_80A9B540)      ## a0 = 80AA0000
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	bne     t1, $zero, lbl_80A92F90    
	addiu   a0, a0, %lo(var_80A9B540)  ## a0 = 80A9B540
	lw      t2, 0x0034($sp)            
	sb      a1, 0x0000(v1)             ## 80A94F60
	lui     $at, 0x0001                ## $at = 00010000
	addu    $at, $at, t2               
	sw      a0, 0x1E10($at)            ## 00011E10
	addiu   v1, $zero, 0x006C          ## v1 = 0000006C
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80A92F68:
	multu   v0, v1                     
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x0064            
	mflo    t3                         
	addu    t4, a0, t3                 
	bne     $at, $zero, lbl_80A92F68   
	sb      $zero, 0x0000(t4)          ## 00000003
	sb      a1, 0x013D(s1)             ## 0000013D
lbl_80A92F90:
	lw      $ra, 0x001C($sp)           
lbl_80A92F94:
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_80A92FA4:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0020($sp)            
	lw      t6, 0x0020($sp)            
	lw      v0, 0x0078(t6)             ## 00000078
	beql    v0, $zero, lbl_80A93054    
	lw      $ra, 0x0014($sp)           
	lh      t7, 0x0008(v0)             ## 00000008
	lui     $at, %hi(var_80A9B2E0)     ## $at = 80AA0000
	lwc1    $f2, %lo(var_80A9B2E0)($at) 
	mtc1    t7, $f4                    ## $f4 = 0.00
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f14                  ## $f14 = 1.00
	cvt.s.w $f6, $f4                   
	mul.s   $f8, $f6, $f2              
	swc1    $f8, 0x001C($sp)           
	lh      t8, 0x000A(v0)             ## 0000000A
	lh      t9, 0x000C(v0)             ## 0000000C
	mtc1    t8, $f10                   ## $f10 = 0.00
	mtc1    t9, $f4                    ## $f4 = 0.00
	cvt.s.w $f18, $f10                 
	cvt.s.w $f6, $f4                   
	mul.s   $f16, $f18, $f2            
	nop
	mul.s   $f0, $f6, $f2              
	swc1    $f16, 0x0018($sp)          
	neg.s   $f8, $f0                   
	mul.s   $f12, $f8, $f16            
	jal     func_800CD76C              
	nop
	lw      t0, 0x0020($sp)            
	neg.s   $f10, $f0                  
	lwc1    $f16, 0x0018($sp)          
	swc1    $f10, 0x0178(t0)           ## 00000178
	lwc1    $f18, 0x001C($sp)          
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f14                  ## $f14 = 1.00
	neg.s   $f4, $f18                  
	mul.s   $f12, $f4, $f16            
	jal     func_800CD76C              
	nop
	lw      t1, 0x0020($sp)            
	swc1    $f0, 0x0180(t1)            ## 00000180
	lw      $ra, 0x0014($sp)           
lbl_80A93054:
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A93060:
	addiu   $sp, $sp, 0xFF38           ## $sp = FFFFFF38
	sw      s1, 0x0030($sp)            
	or      s1, a0, $zero              ## s1 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      s0, 0x002C($sp)            
	sw      a1, 0x00CC($sp)            
	lw      t6, 0x00CC($sp)            
	sb      $zero, 0x00C7($sp)         
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	lw      t7, 0x1C44(t6)             ## 00001C44
	or      s0, $zero, $zero           ## s0 = 00000000
	sw      t7, 0x00B4($sp)            
	lbu     t8, 0x016C(s1)             ## 0000016C
	lbu     t0, 0x013D(s1)             ## 0000013D
	addiu   t9, t8, 0x0001             ## t9 = 00000001
	beq     t0, $at, lbl_80A93C00      
	sb      t9, 0x016C(s1)             ## 0000016C
	sll     t1, s0,  1                 
lbl_80A930A8:
	addu    v0, s1, t1                 
	lh      v1, 0x0140(v0)             ## 00000140
	addiu   s0, s0, 0x0001             ## s0 = 00000001
	sll     s0, s0, 16                 
	beq     v1, $zero, lbl_80A930C8    
	sra     s0, s0, 16                 
	addiu   t2, v1, 0xFFFF             ## t2 = FFFFFFFF
	sh      t2, 0x0140(v0)             ## 00000140
lbl_80A930C8:
	slti    $at, s0, 0x0003            
	bnel    $at, $zero, lbl_80A930A8   
	sll     t1, s0,  1                 
	lh      v0, 0x01EC(s1)             ## 000001EC
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beq     v0, $zero, lbl_80A930E8    
	addiu   t3, v0, 0xFFFF             ## t3 = FFFFFFFF
	sh      t3, 0x01EC(s1)             ## 000001EC
lbl_80A930E8:
	lbu     v1, 0x013E(s1)             ## 0000013E
	beql    v1, $zero, lbl_80A93120    
	lbu     v0, 0x0195(s1)             ## 00000195
	beq     v1, $at, lbl_80A9311C      
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     v1, $at, lbl_80A9311C      
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
	beq     v1, $at, lbl_80A937DC      
	addiu   $at, $zero, 0x0064         ## $at = 00000064
	beq     v1, $at, lbl_80A9393C      
	nop
	beq     $zero, $zero, lbl_80A93A14 
	slti    $at, v1, 0x0064            
lbl_80A9311C:
	lbu     v0, 0x0195(s1)             ## 00000195
lbl_80A93120:
	addiu   t6, $zero, 0x0014          ## t6 = 00000014
	or      a0, s1, $zero              ## a0 = 00000000
	andi    t4, v0, 0x0002             ## t4 = 00000000
	beq     t4, $zero, lbl_80A931C0    
	andi    t5, v0, 0xFFFD             ## t5 = 00000000
	sb      t5, 0x0195(s1)             ## 00000195
	sh      t6, 0x0174(s1)             ## 00000174
	addiu   t7, $zero, 0x0005          ## t7 = 00000005
	sw      t7, 0x0010($sp)            
	addiu   a1, $zero, 0x4000          ## a1 = 00004000
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	jal     func_80027090              
	or      a3, $zero, $zero           ## a3 = 00000000
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f12                  ## $f12 = 15.00
	jal     func_80026D90              
	nop
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f12                  ## $f12 = 15.00
	jal     func_80026D90              
	swc1    $f0, 0x0160(s1)            ## 00000160
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f12                  ## $f12 = 15.00
	jal     func_80026D90              
	swc1    $f0, 0x0164(s1)            ## 00000164
	swc1    $f0, 0x0168(s1)            ## 00000168
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x38AD          ## a1 = 000038AD
	lbu     t8, 0x00AF(s1)             ## 000000AF
	addiu   t1, $zero, 0x000A          ## t1 = 0000000A
	addiu   t9, t8, 0xFFFF             ## t9 = FFFFFFFF
	sb      t9, 0x00AF(s1)             ## 000000AF
	lb      t0, 0x00AF(s1)             ## 000000AF
	bgtzl   t0, lbl_80A931C4           
	lui     a1, 0x3E4C                 ## a1 = 3E4C0000
	mtc1    $zero, $f4                 ## $f4 = 0.00
	sb      t1, 0x013E(s1)             ## 0000013E
	beq     $zero, $zero, lbl_80A937DC 
	swc1    $f4, 0x0060(s1)            ## 00000060
lbl_80A931C0:
	lui     a1, 0x3E4C                 ## a1 = 3E4C0000
lbl_80A931C4:
	ori     a1, a1, 0xCCCD             ## a1 = 3E4CCCCD
	jal     func_80020F88              
	or      a0, s1, $zero              ## a0 = 00000000
	lh      t2, 0x0140(s1)             ## 00000140
	lui     $at, 0x40E0                ## $at = 40E00000
	mtc1    $at, $f6                   ## $f6 = 7.00
	lw      s0, 0x00B4($sp)            
	bne     t2, $zero, lbl_80A9332C    
	swc1    $f6, 0x0068(s1)            ## 00000068
	lh      t3, 0x0142(s1)             ## 00000142
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	addiu   t5, $zero, 0x012C          ## t5 = 0000012C
	bne     t3, $zero, lbl_80A93208    
	lui     $at, 0x4248                ## $at = 42480000
	sb      t4, 0x013E(s1)             ## 0000013E
	beq     $zero, $zero, lbl_80A93314 
	sh      t5, 0x0140(s1)             ## 00000140
lbl_80A93208:
	mtc1    $at, $f12                  ## $f12 = 50.00
	jal     func_80026D64              
	sb      $zero, 0x013E(s1)          ## 0000013E
	trunc.w.s $f8, $f0                   
	lh      t1, 0x001C(s1)             ## 0000001C
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	mfc1    t9, $f8                    
	nop
	addiu   t0, t9, 0x0014             ## t0 = 00000014
	bne     t1, $at, lbl_80A932D4      
	sh      t0, 0x0140(s1)             ## 00000140
	jal     func_800636C4              ## sins?
	lh      a0, 0x00B6(s0)             ## 000000B7
	lui     $at, 0x43C8                ## $at = 43C80000
	mtc1    $at, $f10                  ## $f10 = 400.00
	nop
	mul.s   $f18, $f0, $f10            
	swc1    $f18, 0x0094($sp)          
	jal     func_80063684              ## coss?
	lh      a0, 0x00B6(s0)             ## 000000B7
	lui     $at, 0x43C8                ## $at = 43C80000
	mtc1    $at, $f4                   ## $f4 = 400.00
	lui     $at, 0x442F                ## $at = 442F0000
	mtc1    $at, $f12                  ## $f12 = 700.00
	mul.s   $f6, $f0, $f4              
	jal     func_80026D90              
	swc1    $f6, 0x0090($sp)           
	lwc1    $f8, 0x0024(s0)            ## 00000025
	lwc1    $f10, 0x0094($sp)          
	lui     $at, 0x4348                ## $at = 43480000
	mtc1    $at, $f12                  ## $f12 = 200.00
	add.s   $f18, $f8, $f10            
	add.s   $f4, $f0, $f18             
	jal     func_80026D64              
	swc1    $f4, 0x0148(s1)            ## 00000148
	lwc1    $f6, 0x0028(s0)            ## 00000029
	lui     $at, 0x4316                ## $at = 43160000
	mtc1    $at, $f10                  ## $f10 = 150.00
	add.s   $f8, $f0, $f6              
	lui     $at, 0x442F                ## $at = 442F0000
	mtc1    $at, $f12                  ## $f12 = 700.00
	add.s   $f18, $f8, $f10            
	jal     func_80026D90              
	swc1    $f18, 0x014C(s1)           ## 0000014C
	lwc1    $f4, 0x002C(s0)            ## 0000002D
	lwc1    $f6, 0x0090($sp)           
	add.s   $f8, $f4, $f6              
	add.s   $f10, $f0, $f8             
	swc1    $f10, 0x0150(s1)           ## 00000150
	beq     $zero, $zero, lbl_80A93318 
	mtc1    $zero, $f6                 ## $f6 = 0.00
lbl_80A932D4:
	lui     $at, 0x442F                ## $at = 442F0000
	mtc1    $at, $f12                  ## $f12 = 700.00
	jal     func_80026D90              
	nop
	lui     $at, 0x4348                ## $at = 43480000
	mtc1    $at, $f12                  ## $f12 = 200.00
	jal     func_80026D64              
	swc1    $f0, 0x0148(s1)            ## 00000148
	lui     $at, 0x4316                ## $at = 43160000
	mtc1    $at, $f18                  ## $f18 = 150.00
	lui     $at, 0x442F                ## $at = 442F0000
	mtc1    $at, $f12                  ## $f12 = 700.00
	add.s   $f4, $f0, $f18             
	jal     func_80026D90              
	swc1    $f4, 0x014C(s1)            ## 0000014C
	swc1    $f0, 0x0150(s1)            ## 00000150
lbl_80A93314:
	mtc1    $zero, $f6                 ## $f6 = 0.00
lbl_80A93318:
	mtc1    $zero, $f8                 ## $f8 = 0.00
	mtc1    $zero, $f10                ## $f10 = 0.00
	swc1    $f6, 0x015C(s1)            ## 0000015C
	swc1    $f8, 0x0158(s1)            ## 00000158
	swc1    $f10, 0x0154(s1)           ## 00000154
lbl_80A9332C:
	addiu   t2, $zero, 0x000A          ## t2 = 0000000A
	addiu   t3, $zero, 0x0800          ## t3 = 00000800
	sh      t2, 0x00C0($sp)            
	sh      t3, 0x00C2($sp)            
	lbu     v1, 0x013E(s1)             ## 0000013E
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f12                  ## $f12 = 100.00
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bnel    v1, $at, lbl_80A9339C      
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	lwc1    $f18, 0x0024(s0)           ## 00000025
	lui     $at, 0x4220                ## $at = 42200000
	mtc1    $at, $f6                   ## $f6 = 40.00
	swc1    $f18, 0x0148(s1)           ## 00000148
	lwc1    $f4, 0x0028(s0)            ## 00000029
	addiu   t4, $zero, 0x0007          ## t4 = 00000007
	addiu   t5, $zero, 0x1000          ## t5 = 00001000
	add.s   $f8, $f4, $f6              
	lui     $at, 0x4316                ## $at = 43160000
	mtc1    $at, $f12                  ## $f12 = 150.00
	swc1    $f8, 0x014C(s1)            ## 0000014C
	lwc1    $f10, 0x002C(s0)           ## 0000002D
	swc1    $f10, 0x0150(s1)           ## 00000150
	sh      t4, 0x00C0($sp)            
	sh      t5, 0x00C2($sp)            
	beq     $zero, $zero, lbl_80A933F8 
	lbu     v1, 0x013E(s1)             ## 0000013E
	addiu   $at, $zero, 0x0002         ## $at = 00000002
lbl_80A9339C:
	bne     v1, $at, lbl_80A933F8      
	lui     $at, %hi(var_80A9B2E4)     ## $at = 80AA0000
	lwc1    $f2, %lo(var_80A9B2E4)($at) 
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f4                   ## $f4 = 0.50
	lwc1    $f18, 0x0170(s1)           ## 00000170
	lui     $at, 0x4396                ## $at = 43960000
	mtc1    $zero, $f10                ## $f10 = 0.00
	add.s   $f6, $f18, $f4             
	mtc1    $at, $f18                  ## $f18 = 300.00
	mtc1    $zero, $f4                 ## $f4 = 0.00
	swc1    $f6, 0x0170(s1)            ## 00000170
	lwc1    $f0, 0x0170(s1)            ## 00000170
	c.lt.s  $f2, $f0                   
	nop
	bc1fl   lbl_80A933EC               
	swc1    $f10, 0x0148(s1)           ## 00000148
	sub.s   $f8, $f0, $f2              
	swc1    $f8, 0x0170(s1)            ## 00000170
	swc1    $f10, 0x0148(s1)           ## 00000148
lbl_80A933EC:
	swc1    $f18, 0x014C(s1)           ## 0000014C
	swc1    $f4, 0x0150(s1)            ## 00000150
	lbu     v1, 0x013E(s1)             ## 0000013E
lbl_80A933F8:
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     v1, $at, lbl_80A93420      
	lui     a1, 0x3DCC                 ## a1 = 3DCC0000
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	ori     a1, a1, 0xCCCD             ## a1 = 3DCCCCCD
	addiu   a0, s1, 0x0170             ## a0 = 00000170
	jal     func_800642F0              
	swc1    $f12, 0x00A0($sp)          
	lwc1    $f12, 0x00A0($sp)          
lbl_80A93420:
	lwc1    $f6, 0x0148(s1)            ## 00000148
	lwc1    $f8, 0x0024(s1)            ## 00000024
	sub.s   $f10, $f6, $f8             
	swc1    $f10, 0x00B0($sp)          
	lwc1    $f4, 0x0028(s1)            ## 00000028
	lwc1    $f18, 0x014C(s1)           ## 0000014C
	sub.s   $f6, $f18, $f4             
	lwc1    $f18, 0x00B0($sp)          
	swc1    $f6, 0x00AC($sp)           
	lwc1    $f10, 0x002C(s1)           ## 0000002C
	lwc1    $f8, 0x0150(s1)            ## 00000150
	mul.s   $f2, $f18, $f18            
	lwc1    $f4, 0x00AC($sp)           
	sub.s   $f14, $f8, $f10            
	mul.s   $f16, $f14, $f14           
	nop
	mul.s   $f6, $f4, $f4              
	add.s   $f8, $f2, $f6              
	add.s   $f0, $f8, $f16             
	sqrt.s  $f0, $f0                   
	c.lt.s  $f0, $f12                  
	nop
	bc1f    lbl_80A934CC               
	nop
	lbu     t6, 0x013E(s1)             ## 0000013E
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	sh      $zero, 0x0140(s1)          ## 00000140
	bne     t6, $at, lbl_80A934C8      
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f12                  ## $f12 = 100.00
	swc1    $f2, 0x003C($sp)           
	swc1    $f14, 0x00A8($sp)          
	jal     func_80026D64              
	swc1    $f16, 0x0038($sp)          
	trunc.w.s $f10, $f0                  
	lwc1    $f2, 0x003C($sp)           
	lwc1    $f14, 0x00A8($sp)          
	lwc1    $f16, 0x0038($sp)          
	mfc1    t0, $f10                   
	nop
	addiu   t1, t0, 0x0064             ## t1 = 00000064
	sh      t1, 0x0142(s1)             ## 00000142
lbl_80A934C8:
	sb      $zero, 0x013E(s1)          ## 0000013E
lbl_80A934CC:
	lwc1    $f12, 0x00B0($sp)          
	swc1    $f2, 0x003C($sp)           
	jal     func_800CD76C              
	swc1    $f16, 0x0038($sp)          
	lui     $at, %hi(var_80A9B2E8)     ## $at = 80AA0000
	lwc1    $f18, %lo(var_80A9B2E8)($at) 
	lwc1    $f2, 0x003C($sp)           
	lwc1    $f16, 0x0038($sp)          
	mul.s   $f4, $f0, $f18             
	lwc1    $f12, 0x00AC($sp)          
	add.s   $f0, $f2, $f16             
	sqrt.s  $f14, $f0                  
	trunc.w.s $f6, $f4                   
	mfc1    s0, $f6                    
	nop
	sll     s0, s0, 16                 
	jal     func_800CD76C              
	sra     s0, s0, 16                 
	lui     $at, %hi(var_80A9B2EC)     ## $at = 80AA0000
	lwc1    $f8, %lo(var_80A9B2EC)($at) 
	lui     $at, 0x41A0                ## $at = 41A00000
	mul.s   $f10, $f0, $f8             
	trunc.w.s $f18, $f10                 
	mfc1    v0, $f18                   
	nop
	sll     t4, v0, 16                 
	sra     t5, t4, 16                 
	sll     a1, v0, 16                 
	bgez    t5, lbl_80A93568           
	sra     a1, a1, 16                 
	lwc1    $f6, 0x0080(s1)            ## 00000080
	mtc1    $at, $f8                   ## $f8 = 20.00
	lwc1    $f4, 0x0028(s1)            ## 00000028
	add.s   $f10, $f6, $f8             
	c.lt.s  $f4, $f10                  
	nop
	bc1fl   lbl_80A9356C               
	lwc1    $f18, 0x0154(s1)           ## 00000154
	or      a1, $zero, $zero           ## a1 = 00000000
lbl_80A93568:
	lwc1    $f18, 0x0154(s1)           ## 00000154
lbl_80A9356C:
	addiu   a0, s1, 0x0030             ## a0 = 00000030
	sw      a0, 0x003C($sp)            
	trunc.w.s $f6, $f18                  
	lh      a2, 0x00C0($sp)            
	mfc1    a3, $f6                    
	nop
	sll     a3, a3, 16                 
	jal     func_80064624              
	sra     a3, a3, 16                 
	lwc1    $f8, 0x0158(s1)            ## 00000158
	sll     a1, s0, 16                 
	sra     a1, a1, 16                 
	trunc.w.s $f4, $f8                   
	sw      $zero, 0x0010($sp)         
	addiu   a0, s1, 0x0032             ## a0 = 00000032
	lh      a2, 0x00C0($sp)            
	mfc1    a3, $f4                    
	nop
	sll     a3, a3, 16                 
	jal     func_80064508              
	sra     a3, a3, 16                 
	lh      t8, 0x00C2($sp)            
	sll     s0, v0, 16                 
	sra     s0, s0, 16                 
	mtc1    t8, $f10                   ## $f10 = 0.00
	addiu   a0, s1, 0x0154             ## a0 = 00000154
	lui     a2, 0x3F80                 ## a2 = 3F800000
	cvt.s.w $f10, $f10                 
	lui     a3, 0x4380                 ## a3 = 43800000
	mfc1    a1, $f10                   
	jal     func_80064280              
	nop
	lwc1    $f18, 0x0154(s1)           ## 00000154
	subu    v0, $zero, s0              
	bltz    s0, lbl_80A93604           
	swc1    $f18, 0x0158(s1)           ## 00000158
	beq     $zero, $zero, lbl_80A93604 
	or      v0, s0, $zero              ## v0 = 00000001
lbl_80A93604:
	slti    $at, v0, 0x1000            
	beq     $at, $zero, lbl_80A9369C   
	nop
	lwc1    $f6, 0x015C(s1)            ## 0000015C
	addiu   a0, s1, 0x0034             ## a0 = 00000034
	or      a1, $zero, $zero           ## a1 = 00000000
	trunc.w.s $f8, $f6                   
	addiu   a2, $zero, 0x000F          ## a2 = 0000000F
	mfc1    a3, $f8                    
	nop
	sll     a3, a3, 16                 
	jal     func_80064624              
	sra     a3, a3, 16                 
	addiu   a0, s1, 0x015C             ## a0 = 0000015C
	lui     a1, 0x44A0                 ## a1 = 44A00000
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_80064280              
	lui     a3, 0x4380                 ## a3 = 43800000
	lbu     t0, 0x016C(s1)             ## 0000016C
	andi    t1, t0, 0x0003             ## t1 = 00000000
	bnel    t1, $zero, lbl_80A936F4    
	lw      t5, 0x003C($sp)            
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x3F40                ## $at = 3F400000
	mtc1    $at, $f4                   ## $f4 = 0.75
	nop
	c.lt.s  $f0, $f4                   
	nop
	bc1fl   lbl_80A936F4               
	lw      t5, 0x003C($sp)            
	lbu     t2, 0x013E(s1)             ## 0000013E
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	bnel    t2, $at, lbl_80A936F4      
	lw      t5, 0x003C($sp)            
	beq     $zero, $zero, lbl_80A936F0 
	sb      t3, 0x016D(s1)             ## 0000016D
lbl_80A9369C:
	blezl   s0, lbl_80A936B0           
	addiu   s0, $zero, 0x2500          ## s0 = 00002500
	beq     $zero, $zero, lbl_80A936B0 
	addiu   s0, $zero, 0xDB00          ## s0 = FFFFDB00
	addiu   s0, $zero, 0x2500          ## s0 = 00002500
lbl_80A936B0:
	lwc1    $f10, 0x015C(s1)           ## 0000015C
	sll     a1, s0, 16                 
	sra     a1, a1, 16                 
	trunc.w.s $f18, $f10                 
	addiu   a0, s1, 0x0034             ## a0 = 00000034
	lh      a2, 0x00C0($sp)            
	mfc1    a3, $f18                   
	nop
	sll     a3, a3, 16                 
	jal     func_80064624              
	sra     a3, a3, 16                 
	addiu   a0, s1, 0x015C             ## a0 = 0000015C
	lui     a1, 0x4580                 ## a1 = 45800000
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_80064280              
	lui     a3, 0x4400                 ## a3 = 44000000
lbl_80A936F0:
	lw      t5, 0x003C($sp)            
lbl_80A936F4:
	or      a0, s1, $zero              ## a0 = 00000000
	lwl     t7, 0x0000(t5)             ## 00000000
	lwr     t7, 0x0003(t5)             ## 00000003
	swl     t7, 0x00B4(s1)             ## 000000B4
	swr     t7, 0x00B7(s1)             ## 000000B7
	lh      t8, 0x00B4(s1)             ## 000000B4
	lhu     t7, 0x0004(t5)             ## 00000004
	subu    t9, $zero, t8              
	sh      t9, 0x00B4(s1)             ## 000000B4
	jal     func_80021248              
	sh      t7, 0x00B8(s1)             ## 000000B8
	lwc1    $f6, 0x005C(s1)            ## 0000005C
	lwc1    $f8, 0x0160(s1)            ## 00000160
	lwc1    $f10, 0x0060(s1)           ## 00000060
	lwc1    $f18, 0x0164(s1)           ## 00000164
	add.s   $f4, $f6, $f8              
	lwc1    $f8, 0x0064(s1)            ## 00000064
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f0                   ## $f0 = 1.00
	swc1    $f4, 0x005C(s1)            ## 0000005C
	lwc1    $f4, 0x0168(s1)            ## 00000168
	add.s   $f6, $f10, $f18            
	mfc1    a1, $f0                    
	mfc1    a2, $f0                    
	add.s   $f10, $f8, $f4             
	swc1    $f6, 0x0060(s1)            ## 00000060
	addiu   a0, s1, 0x0160             ## a0 = 00000160
	jal     func_800642F0              
	swc1    $f10, 0x0064(s1)           ## 00000064
	addiu   a0, s1, 0x0164             ## a0 = 00000164
	lui     a1, 0x3F80                 ## a1 = 3F800000
	jal     func_800642F0              
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a0, s1, 0x0168             ## a0 = 00000168
	lui     a1, 0x3F80                 ## a1 = 3F800000
	jal     func_800642F0              
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lbu     t0, 0x016D(s1)             ## 0000016D
	beql    t0, $zero, lbl_80A937E0    
	lh      v0, 0x0174(s1)             ## 00000174
	lwc1    $f18, 0x0028(s1)           ## 00000028
	sb      $zero, 0x016D(s1)          ## 0000016D
	lw      a3, 0x0024(s1)             ## 00000024
	swc1    $f18, 0x0010($sp)          
	lwc1    $f6, 0x002C(s1)            ## 0000002C
	lw      a1, 0x00CC($sp)            
	addiu   t5, $zero, 0x0064          ## t5 = 00000064
	swc1    $f6, 0x0014($sp)           
	lh      t2, 0x0030(s1)             ## 00000030
	addiu   a2, $zero, 0x013B          ## a2 = 0000013B
	addiu   a0, a1, 0x1C24             ## a0 = 00001C24
	sw      t2, 0x0018($sp)            
	lh      t3, 0x0032(s1)             ## 00000032
	sw      t3, 0x001C($sp)            
	lh      t4, 0x0034(s1)             ## 00000034
	sw      t5, 0x0024($sp)            
	jal     func_80025110              ## ActorSpawn
	sw      t4, 0x0020($sp)            
lbl_80A937DC:
	lh      v0, 0x0174(s1)             ## 00000174
lbl_80A937E0:
	beq     v0, $zero, lbl_80A937EC    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x0174(s1)             ## 00000174
lbl_80A937EC:
	jal     func_80021124              
	or      a0, s1, $zero              ## a0 = 00000000
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_80020F04              
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	addiu   t7, $zero, 0x0014          ## t7 = 00000014
	addiu   t8, $zero, 0x000F          ## t8 = 0000000F
	addiu   t9, $zero, 0xFFFB          ## t9 = FFFFFFFB
	addiu   s0, s1, 0x0184             ## s0 = 00000184
	sh      t7, 0x01C4(s1)             ## 000001C4
	sh      t8, 0x01C6(s1)             ## 000001C6
	sh      t9, 0x01C8(s1)             ## 000001C8
	or      a1, s0, $zero              ## a1 = 00000184
	jal     func_80050B00              
	or      a0, s1, $zero              ## a0 = 00000000
	lw      a0, 0x00CC($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	addu    a1, a0, $at                
	sw      a1, 0x003C($sp)            
	jal     func_8004BF40              ## CollisionCheck_setAC
	or      a2, s0, $zero              ## a2 = 00000184
	lw      a1, 0x003C($sp)            
	lw      a0, 0x00CC($sp)            
	jal     func_8004BD50              ## CollisionCheck_setAT
	or      a2, s0, $zero              ## a2 = 00000184
	lh      t1, 0x0144(s1)             ## 00000144
	lw      a0, 0x00CC($sp)            
	or      a1, s1, $zero              ## a1 = 00000000
	bne     t1, $zero, lbl_80A9388C    
	lui     a2, 0x4248                 ## a2 = 42480000
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f8                   ## $f8 = 100.00
	addiu   t2, $zero, 0x0005          ## t2 = 00000005
	sw      t2, 0x0014($sp)            
	lui     a3, 0x41F0                 ## a3 = 41F00000
	jal     func_80021E6C              
	swc1    $f8, 0x0010($sp)           
	jal     func_80A92FA4              
	or      a0, s1, $zero              ## a0 = 00000000
lbl_80A9388C:
	lbu     t3, 0x013E(s1)             ## 0000013E
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
	lw      a0, 0x00CC($sp)            
	bne     t3, $at, lbl_80A93934      
	addiu   a1, s1, 0x0024             ## a1 = 00000024
	jal     func_80A92AC8              
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f10                  ## $f10 = 0.50
	lwc1    $f4, 0x0170(s1)            ## 00000170
	lui     $at, %hi(var_80A9B2F0)     ## $at = 80AA0000
	lwc1    $f6, 0x0060(s1)            ## 00000060
	sub.s   $f18, $f4, $f10            
	lh      t4, 0x00B4(s1)             ## 000000B4
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x304F          ## a1 = 0000304F
	swc1    $f18, 0x0170(s1)           ## 00000170
	lwc1    $f8, %lo(var_80A9B2F0)($at) 
	addiu   t5, t4, 0x0010             ## t5 = 00000010
	sh      t5, 0x00B4(s1)             ## 000000B4
	sub.s   $f4, $f6, $f8              
	jal     func_80022FD0              
	swc1    $f4, 0x0060(s1)            ## 00000060
	lhu     t6, 0x0088(s1)             ## 00000088
	andi    t7, t6, 0x0009             ## t7 = 00000000
	beq     t7, $zero, lbl_80A93934    
	nop
	lbu     t9, 0x013D(s1)             ## 0000013D
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	sb      t8, 0x013C(s1)             ## 0000013C
	beq     t9, $zero, lbl_80A9392C    
	addiu   t0, $zero, 0x0002          ## t0 = 00000002
	lw      t2, 0x0004(s1)             ## 00000004
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	addiu   t1, $zero, 0x0046          ## t1 = 00000046
	and     t3, t2, $at                
	sb      t0, 0x013D(s1)             ## 0000013D
	sh      t1, 0x0176(s1)             ## 00000176
	beq     $zero, $zero, lbl_80A93934 
	sw      t3, 0x0004(s1)             ## 00000004
lbl_80A9392C:
	jal     func_80020EB4              
	or      a0, s1, $zero              ## a0 = 00000000
lbl_80A93934:
	beq     $zero, $zero, lbl_80A93A10 
	lbu     v1, 0x013E(s1)             ## 0000013E
lbl_80A9393C:
	jal     func_80021124              
	or      a0, s1, $zero              ## a0 = 00000000
	lbu     t4, 0x0194(s1)             ## 00000194
	addiu   t7, $zero, 0x0017          ## t7 = 00000017
	addiu   t8, $zero, 0x0019          ## t8 = 00000019
	andi    t5, t4, 0x0002             ## t5 = 00000000
	beq     t5, $zero, lbl_80A93964    
	addiu   t9, $zero, 0xFFF6          ## t9 = FFFFFFF6
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	sb      t6, 0x00C7($sp)            
lbl_80A93964:
	addiu   s0, s1, 0x0184             ## s0 = 00000184
	sh      t7, 0x01C4(s1)             ## 000001C4
	sh      t8, 0x01C6(s1)             ## 000001C6
	sh      t9, 0x01C8(s1)             ## 000001C8
	or      a1, s0, $zero              ## a1 = 00000184
	jal     func_80050B00              
	or      a0, s1, $zero              ## a0 = 00000000
	lw      a0, 0x00CC($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	or      a2, s0, $zero              ## a2 = 00000184
	jal     func_8004BD50              ## CollisionCheck_setAT
	addu    a1, a0, $at                
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f10                  ## $f10 = 100.00
	addiu   t1, $zero, 0x0005          ## t1 = 00000005
	sw      t1, 0x0014($sp)            
	lw      a0, 0x00CC($sp)            
	or      a1, s1, $zero              ## a1 = 00000000
	lui     a2, 0x4248                 ## a2 = 42480000
	lui     a3, 0x42A0                 ## a3 = 42A00000
	jal     func_80021E6C              
	swc1    $f10, 0x0010($sp)          
	lhu     t2, 0x0088(s1)             ## 00000088
	lbu     t4, 0x00C7($sp)            
	andi    t3, t2, 0x0009             ## t3 = 00000000
	bne     t3, $zero, lbl_80A939E8    
	nop
	bne     t4, $zero, lbl_80A939E8    
	nop
	lh      t5, 0x0140(s1)             ## 00000140
	bnel    t5, $zero, lbl_80A93A10    
	lbu     v1, 0x013E(s1)             ## 0000013E
lbl_80A939E8:
	jal     func_80020EB4              
	or      a0, s1, $zero              ## a0 = 00000000
	lh      t6, 0x0140(s1)             ## 00000140
	lw      a0, 0x00CC($sp)            
	addiu   a1, s1, 0x0024             ## a1 = 00000024
	beq     t6, $zero, lbl_80A93A0C    
	addiu   a2, $zero, 0x0014          ## a2 = 00000014
	jal     func_80058FF8              
	addiu   a3, $zero, 0x38AD          ## a3 = 000038AD
lbl_80A93A0C:
	lbu     v1, 0x013E(s1)             ## 0000013E
lbl_80A93A10:
	slti    $at, v1, 0x0064            
lbl_80A93A14:
	beql    $at, $zero, lbl_80A93C04   
	lbu     t8, 0x013C(s1)             ## 0000013C
	lbu     v1, 0x01D0(s1)             ## 000001D0
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beql    v1, $zero, lbl_80A93C04    
	lbu     t8, 0x013C(s1)             ## 0000013C
	beq     v1, $at, lbl_80A93A48      
	addiu   t7, $zero, 0x0002          ## t7 = 00000002
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beql    v1, $at, lbl_80A93A88      
	lbu     s0, 0x016C(s1)             ## 0000016C
	beq     $zero, $zero, lbl_80A93B18 
	lh      t4, 0x01D2(s1)             ## 000001D2
lbl_80A93A48:
	sb      t7, 0x01D0(s1)             ## 000001D0
	lw      a0, 0x00CC($sp)            
	jal     func_80052328              
	addiu   a1, a0, 0x1D64             ## a1 = 00001D64
	jal     func_8009D0F0              
	lw      a0, 0x00CC($sp)            
	sh      v0, 0x01D2(s1)             ## 000001D2
	lw      a0, 0x00CC($sp)            
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_8009D1AC              
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	lw      a0, 0x00CC($sp)            
	lh      a1, 0x01D2(s1)             ## 000001D2
	jal     func_8009D1AC              
	addiu   a2, $zero, 0x0007          ## a2 = 00000007
	lbu     s0, 0x016C(s1)             ## 0000016C
lbl_80A93A88:
	addiu   t9, s1, 0x0024             ## t9 = 00000024
	sw      t9, 0x003C($sp)            
	sll     s0, s0,  7                 
	sll     s0, s0, 16                 
	sra     s0, s0, 16                 
	sll     a0, s0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lui     $at, 0x4348                ## $at = 43480000
	mtc1    $at, $f18                  ## $f18 = 200.00
	sll     a0, s0, 16                 
	sra     a0, a0, 16                 
	mul.s   $f6, $f0, $f18             
	jal     func_80063684              ## coss?
	swc1    $f6, 0x008C($sp)           
	lwc1    $f8, 0x0024(s1)            ## 00000024
	lwc1    $f4, 0x008C($sp)           
	lui     $at, 0x4348                ## $at = 43480000
	mtc1    $at, $f18                  ## $f18 = 200.00
	add.s   $f10, $f8, $f4             
	mtc1    $at, $f8                   ## $f8 = 200.00
	swc1    $f18, 0x007C($sp)          
	lw      t1, 0x003C($sp)            
	mul.s   $f4, $f0, $f8              
	swc1    $f10, 0x0078($sp)          
	lwc1    $f6, 0x002C(s1)            ## 0000002C
	addiu   t0, $sp, 0x006C            ## t0 = FFFFFFA4
	add.s   $f10, $f6, $f4             
	swc1    $f10, 0x0080($sp)          
	lw      t3, 0x0000(t1)             ## 00000000
	sw      t3, 0x0000(t0)             ## FFFFFFA4
	lw      t2, 0x0004(t1)             ## 00000004
	sw      t2, 0x0004(t0)             ## FFFFFFA8
	lw      t3, 0x0008(t1)             ## 00000008
	sw      t3, 0x0008(t0)             ## FFFFFFAC
	lh      t4, 0x01D2(s1)             ## 000001D2
lbl_80A93B18:
	addiu   a0, s1, 0x01D4             ## a0 = 000001D4
	lw      a1, 0x0078($sp)            
	beq     t4, $zero, lbl_80A93BC8    
	lui     a2, 0x3DCC                 ## a2 = 3DCC0000
	ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
	lui     a3, 0x43FA                 ## a3 = 43FA0000
	jal     func_80064280              
	sw      a0, 0x0038($sp)            
	lui     a2, 0x3DCC                 ## a2 = 3DCC0000
	ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
	addiu   a0, s1, 0x01D8             ## a0 = 000001D8
	lw      a1, 0x007C($sp)            
	jal     func_80064280              
	lui     a3, 0x43FA                 ## a3 = 43FA0000
	lui     a2, 0x3DCC                 ## a2 = 3DCC0000
	ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
	addiu   a0, s1, 0x01DC             ## a0 = 000001DC
	lw      a1, 0x0080($sp)            
	jal     func_80064280              
	lui     a3, 0x43FA                 ## a3 = 43FA0000
	addiu   s0, s1, 0x01E0             ## s0 = 000001E0
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	or      a0, s0, $zero              ## a0 = 000001E0
	lw      a1, 0x006C($sp)            
	jal     func_80064280              
	lui     a3, 0x43FA                 ## a3 = 43FA0000
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s1, 0x01E4             ## a0 = 000001E4
	lw      a1, 0x0070($sp)            
	jal     func_80064280              
	lui     a3, 0x43FA                 ## a3 = 43FA0000
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s1, 0x01E8             ## a0 = 000001E8
	lw      a1, 0x0074($sp)            
	jal     func_80064280              
	lui     a3, 0x43FA                 ## a3 = 43FA0000
	lw      a0, 0x00CC($sp)            
	lh      a1, 0x01D2(s1)             ## 000001D2
	or      a2, s0, $zero              ## a2 = 000001E0
	jal     func_8009D328              
	lw      a3, 0x0038($sp)            
lbl_80A93BC8:
	lh      t5, 0x01EC(s1)             ## 000001EC
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lw      a0, 0x00CC($sp)            
	bne     t5, $at, lbl_80A93C00      
	or      a2, $zero, $zero           ## a2 = 00000000
	lh      a1, 0x01D2(s1)             ## 000001D2
	jal     func_8009D718              
	addiu   s0, a0, 0x1D64             ## s0 = 00001D64
	lw      a0, 0x00CC($sp)            
	sh      $zero, 0x01D2(s1)          ## 000001D2
	lh      t7, 0x01D2(s1)             ## 000001D2
	or      a1, s0, $zero              ## a1 = 00001D64
	jal     func_80052340              
	sb      t7, 0x01D0(s1)             ## 000001D0
lbl_80A93C00:
	lbu     t8, 0x013C(s1)             ## 0000013C
lbl_80A93C04:
	addiu   a1, s1, 0x0024             ## a1 = 00000024
	addiu   a2, $zero, 0x0028          ## a2 = 00000028
	beq     t8, $zero, lbl_80A93DB4    
	addiu   a3, $zero, 0x180E          ## a3 = 0000180E
	sb      $zero, 0x013C(s1)          ## 0000013C
	jal     func_80058FF8              
	lw      a0, 0x00CC($sp)            
	lwc1    $f18, 0x0024(s1)           ## 00000024
	lui     $at, 0x4220                ## $at = 42200000
	mtc1    $at, $f6                   ## $f6 = 40.00
	swc1    $f18, 0x0060($sp)          
	lwc1    $f8, 0x0028(s1)            ## 00000028
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f10                  ## $f10 = 30.00
	add.s   $f4, $f8, $f6              
	addiu   t9, s1, 0x0178             ## t9 = 00000178
	lw      a0, 0x00CC($sp)            
	addiu   a1, $sp, 0x0060            ## a1 = FFFFFF98
	sub.s   $f18, $f4, $f10            
	lui     a2, 0x40C0                 ## a2 = 40C00000
	swc1    $f18, 0x0064($sp)          
	lwc1    $f8, 0x002C(s1)            ## 0000002C
	swc1    $f8, 0x0068($sp)           
	lw      a3, 0x0080(s1)             ## 00000080
	jal     func_80A92CDC              
	sw      t9, 0x0010($sp)            
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f4                   ## $f4 = 30.00
	lwc1    $f6, 0x0028(s1)            ## 00000028
	lui     $at, 0x4248                ## $at = 42480000
	mtc1    $at, $f18                  ## $f18 = 50.00
	add.s   $f10, $f6, $f4             
	lw      a0, 0x00CC($sp)            
	addiu   a1, $sp, 0x0060            ## a1 = FFFFFF98
	lui     a2, 0x4040                 ## a2 = 40400000
	sub.s   $f8, $f10, $f18            
	jal     func_80A92BB8              
	swc1    $f8, 0x0064($sp)           
	lwc1    $f6, 0x0028(s1)            ## 00000028
	or      s0, $zero, $zero           ## s0 = 00000000
	swc1    $f6, 0x0064($sp)           
	mtc1    s0, $f4                    ## $f4 = 0.00
lbl_80A93CAC:
	lui     $at, %hi(var_80A9B2F4)     ## $at = 80AA0000
	lwc1    $f10, %lo(var_80A9B2F4)($at) 
	cvt.s.w $f0, $f4                   
	mul.s   $f12, $f0, $f10            
	swc1    $f0, 0x003C($sp)           
	jal     func_800CF470              
	swc1    $f12, 0x0038($sp)          
	lwc1    $f18, 0x003C($sp)          
	lui     $at, %hi(var_80A9B2F8)     ## $at = 80AA0000
	lwc1    $f6, %lo(var_80A9B2F8)($at) 
	mul.s   $f8, $f0, $f18             
	lwc1    $f12, 0x0038($sp)          
	mul.s   $f4, $f8, $f6              
	jal     func_800D2CD0              
	swc1    $f4, 0x0054($sp)           
	lwc1    $f10, 0x003C($sp)          
	lui     $at, %hi(var_80A9B2FC)     ## $at = 80AA0000
	lwc1    $f8, %lo(var_80A9B2FC)($at) 
	mul.s   $f18, $f0, $f10            
	lui     $at, 0x40C0                ## $at = 40C00000
	mtc1    $at, $f12                  ## $f12 = 6.00
	mul.s   $f6, $f18, $f8             
	jal     func_80026D64              
	swc1    $f6, 0x005C($sp)           
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f4                   ## $f4 = 5.00
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f12                  ## $f12 = 0.50
	add.s   $f10, $f0, $f4             
	jal     func_80026D90              
	swc1    $f10, 0x0058($sp)          
	lwc1    $f18, 0x0054($sp)          
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f12                  ## $f12 = 0.50
	add.s   $f8, $f18, $f0             
	jal     func_80026D90              
	swc1    $f8, 0x0054($sp)           
	lwc1    $f6, 0x005C($sp)           
	lui     $at, 0xBF80                ## $at = BF800000
	mtc1    $zero, $f2                 ## $f2 = 0.00
	add.s   $f4, $f6, $f0              
	mtc1    $at, $f10                  ## $f10 = -1.00
	lui     $at, %hi(var_80A9B300)     ## $at = 80AA0000
	lwc1    $f12, %lo(var_80A9B300)($at) 
	swc1    $f4, 0x005C($sp)           
	swc1    $f2, 0x0048($sp)           
	swc1    $f2, 0x0050($sp)           
	jal     func_80026D64              
	swc1    $f10, 0x004C($sp)          
	lui     $at, %hi(var_80A9B304)     ## $at = 80AA0000
	lwc1    $f18, %lo(var_80A9B304)($at) 
	lw      a0, 0x00CC($sp)            
	addiu   a1, $sp, 0x0060            ## a1 = FFFFFF98
	add.s   $f8, $f0, $f18             
	addiu   a2, $sp, 0x0054            ## a2 = FFFFFF8C
	addiu   a3, $sp, 0x0048            ## a3 = FFFFFF80
	swc1    $f8, 0x0010($sp)           
	lwc1    $f6, 0x0080(s1)            ## 00000080
	jal     func_80A929D0              
	swc1    $f6, 0x0014($sp)           
	addiu   s0, s0, 0x0001             ## s0 = 00000001
	sll     s0, s0, 16                 
	sra     s0, s0, 16                 
	slti    $at, s0, 0x000F            
	bnel    $at, $zero, lbl_80A93CAC   
	mtc1    s0, $f4                    ## $f4 = 0.00
lbl_80A93DB4:
	lbu     v0, 0x013D(s1)             ## 0000013D
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beql    v0, $zero, lbl_80A93E04    
	lw      $ra, 0x0034($sp)           
	bne     v0, $at, lbl_80A93DF8      
	nop
	lh      v1, 0x0176(s1)             ## 00000176
	bne     v1, $zero, lbl_80A93DE0    
	addiu   t0, v1, 0xFFFF             ## t0 = FFFFFFFF
	beq     $zero, $zero, lbl_80A93DE8 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80A93DE0:
	sh      t0, 0x0176(s1)             ## 00000176
	lh      v0, 0x0176(s1)             ## 00000176
lbl_80A93DE8:
	bne     v0, $zero, lbl_80A93DF8    
	nop
	jal     func_80020EB4              
	or      a0, s1, $zero              ## a0 = 00000000
lbl_80A93DF8:
	jal     func_80A943A8              
	lw      a0, 0x00CC($sp)            
	lw      $ra, 0x0034($sp)           
lbl_80A93E04:
	lw      s0, 0x002C($sp)            
	lw      s1, 0x0030($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x00C8           ## $sp = 00000000


func_80A93E14:
	addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
	sw      s2, 0x0020($sp)            
	or      s2, a0, $zero              ## s2 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      s1, 0x001C($sp)            
	sw      s0, 0x0018($sp)            
	sw      a1, 0x009C($sp)            
	lw      t6, 0x009C($sp)            
	lbu     a2, 0x013D(s2)             ## 0000013D
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	lw      a3, 0x0000(t6)             ## 00000000
	beq     a2, $at, lbl_80A94380      
	or      s1, a3, $zero              ## s1 = 00000000
	jal     func_8007E2C0              
	or      a0, a3, $zero              ## a0 = 00000000
	lbu     t7, 0x013E(s2)             ## 0000013E
	lw      t4, 0x009C($sp)            
	slti    $at, t7, 0x0064            
	bne     $at, $zero, lbl_80A93F5C   
	nop
	mtc1    $zero, $f14                ## $f14 = 0.00
	lui     t9, 0xFA00                 ## t9 = FA000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t1, 0x00FF                 ## t1 = 00FF0000
	ori     t1, t1, 0x00FF             ## t1 = 00FF00FF
	addiu   t8, s0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s1)             ## 000002D0
	sw      t1, 0x0004(s0)             ## 00000004
	sw      t9, 0x0000(s0)             ## 00000000
	lui     $at, 0x41C8                ## $at = 41C80000
	mtc1    $at, $f12                  ## $f12 = 25.00
	mfc1    a2, $f14                   
	jal     func_800AA7F4              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t3, 0xDA38                 ## t3 = DA380000
	ori     t3, t3, 0x0003             ## t3 = DA380003
	addiu   t2, s0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02D0(s1)             ## 000002D0
	sw      t3, 0x0000(s0)             ## 00000000
	lw      t4, 0x009C($sp)            
	lw      a0, 0x0000(t4)             ## 00000000
	jal     func_800AB900              
	sw      s0, 0x0080($sp)            
	lw      a1, 0x0080($sp)            
	mtc1    $zero, $f14                ## $f14 = 0.00
	lui     t6, 0xDE00                 ## t6 = DE000000
	sw      v0, 0x0004(a1)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     a0, %hi(var_80A98C68)      ## a0 = 80AA0000
	addiu   a0, a0, %lo(var_80A98C68)  ## a0 = 80A98C68
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s1)             ## 000002D0
	sw      a0, 0x0004(s0)             ## 00000004
	sw      t6, 0x0000(s0)             ## 00000000
	lui     $at, 0xC248                ## $at = C2480000
	mtc1    $at, $f12                  ## $f12 = -50.00
	mfc1    a2, $f14                   
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	jal     func_800AA7F4              
	sw      a0, 0x002C($sp)            
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t8, 0xDA38                 ## t8 = DA380000
	ori     t8, t8, 0x0003             ## t8 = DA380003
	addiu   t7, s0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s1)             ## 000002D0
	sw      t8, 0x0000(s0)             ## 00000000
	lw      t9, 0x009C($sp)            
	lw      a0, 0x0000(t9)             ## 00000000
	jal     func_800AB900              
	sw      s0, 0x0078($sp)            
	lw      a1, 0x0078($sp)            
	sw      v0, 0x0004(a1)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t2, 0xDE00                 ## t2 = DE000000
	addiu   t1, s0, 0x0008             ## t1 = 00000008
	sw      t1, 0x02D0(s1)             ## 000002D0
	sw      t2, 0x0000(s0)             ## 00000000
	lw      t3, 0x002C($sp)            
	sw      t3, 0x0004(s0)             ## 00000004
	beq     $zero, $zero, lbl_80A94380 
	lbu     a2, 0x013D(s2)             ## 0000013D
lbl_80A93F5C:
	jal     func_8007E298              
	lw      a0, 0x0000(t4)             ## 00000000
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t6, 0xFA00                 ## t6 = FA000000
	addiu   t7, $zero, 0xFFFF          ## t7 = FFFFFFFF
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s1)             ## 000002C0
	sw      t7, 0x0004(s0)             ## 00000004
	sw      t6, 0x0000(s0)             ## 00000000
	lh      v1, 0x0174(s2)             ## 00000174
	beql    v1, $zero, lbl_80A94020    
	lwc1    $f12, 0x0170(s2)           ## 00000170
	mtc1    v1, $f4                    ## $f4 = 0.00
	lui     $at, %hi(var_80A9B308)     ## $at = 80AA0000
	lwc1    $f8, %lo(var_80A9B308)($at) 
	cvt.s.w $f6, $f4                   
	mul.s   $f10, $f6, $f8             
	swc1    $f10, 0x0064($sp)          
	lbu     a0, 0x016C(s2)             ## 0000016C
	addu    $at, a0, $zero             
	sll     a0, a0,  2                 
	subu    a0, a0, $at                
	sll     a0, a0, 12                 
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lwc1    $f16, 0x0064($sp)          
	mul.s   $f18, $f0, $f16            
	swc1    $f18, 0x006C($sp)          
	lbu     a0, 0x016C(s2)             ## 0000016C
	addu    $at, a0, $zero             
	sll     a0, a0,  3                 
	subu    a0, a0, $at                
	sll     a0, a0,  3                 
	subu    a0, a0, $at                
	sll     a0, a0,  8                 
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lwc1    $f4, 0x0064($sp)           
	lwc1    $f12, 0x006C($sp)          
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	mul.s   $f6, $f0, $f4              
	jal     func_800AA9E0              
	swc1    $f6, 0x0068($sp)           
	lwc1    $f12, 0x0068($sp)          
	jal     func_800AAB94              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lwc1    $f12, 0x0170(s2)           ## 00000170
lbl_80A94020:
	jal     func_800AAD4C              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t9, 0xDA38                 ## t9 = DA380000
	ori     t9, t9, 0x0003             ## t9 = DA380003
	addiu   t8, s0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s1)             ## 000002C0
	sw      t9, 0x0000(s0)             ## 00000000
	lw      t1, 0x009C($sp)            
	lw      a0, 0x0000(t1)             ## 00000000
	jal     func_800AB900              
	sw      s0, 0x0060($sp)            
	lw      a1, 0x0060($sp)            
	mtc1    $zero, $f12                ## $f12 = 0.00
	lui     t3, 0xDE00                 ## t3 = DE000000
	sw      v0, 0x0004(a1)             ## 00000004
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t4, %hi(var_80A94FD0)      ## t4 = 80A90000
	addiu   t4, t4, %lo(var_80A94FD0)  ## t4 = 80A94FD0
	addiu   t2, s0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(s1)             ## 000002C0
	sw      t4, 0x0004(s0)             ## 00000004
	sw      t3, 0x0000(s0)             ## 00000000
	mov.s   $f14, $f12                 
	lui     a2, 0xC270                 ## a2 = C2700000
	jal     func_800AA7F4              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lw      a0, 0x009C($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1DA0           ## $at = 00011DA0
	jal     func_800ABE54              
	addu    a0, a0, $at                
	lui     $at, 0x4020                ## $at = 40200000
	mtc1    $at, $f12                  ## $f12 = 2.50
	lui     $at, %hi(var_80A9B30C)     ## $at = 80AA0000
	lwc1    $f14, %lo(var_80A9B30C)($at) 
	addiu   a2, $zero, 0x0000          ## a2 = 00000000
	jal     func_800AA8FC              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lbu     t5, 0x016C(s2)             ## 0000016C
	andi    t6, t5, 0x0001             ## t6 = 00000000
	beq     t6, $zero, lbl_80A940E0    
	lui     $at, %hi(var_80A9B310)     ## $at = 80AA0000
	lwc1    $f12, %lo(var_80A9B310)($at) 
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mfc1    a2, $f12                   
	jal     func_800AA8FC              
	mov.s   $f14, $f12                 
lbl_80A940E0:
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t8, 0xFA00                 ## t8 = FA000000
	addiu   t9, $zero, 0xC89B          ## t9 = FFFFC89B
	addiu   t7, s0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s1)             ## 000002D0
	sw      t9, 0x0004(s0)             ## 00000004
	sw      t8, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t2, 0xE700                 ## t2 = E7000000
	addiu   t1, s0, 0x0008             ## t1 = 00000008
	sw      t1, 0x02D0(s1)             ## 000002D0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t2, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t4, 0xFB00                 ## t4 = FB000000
	lui     t5, 0xFF32                 ## t5 = FF320000
	addiu   t3, s0, 0x0008             ## t3 = 00000008
	sw      t3, 0x02D0(s1)             ## 000002D0
	sw      t5, 0x0004(s0)             ## 00000004
	sw      t4, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t7, 0xDA38                 ## t7 = DA380000
	ori     t7, t7, 0x0003             ## t7 = DA380003
	addiu   t6, s0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s1)             ## 000002D0
	sw      t7, 0x0000(s0)             ## 00000000
	lw      t8, 0x009C($sp)            
	lw      a0, 0x0000(t8)             ## FA000000
	jal     func_800AB900              
	sw      s0, 0x004C($sp)            
	lw      t0, 0x004C($sp)            
	lui     t1, 0xDE00                 ## t1 = DE000000
	or      a3, $zero, $zero           ## a3 = 00000000
	sw      v0, 0x0004(t0)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t2, %hi(var_80A98F68)      ## t2 = 80AA0000
	addiu   t2, t2, %lo(var_80A98F68)  ## t2 = 80A98F68
	addiu   t9, s0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s1)             ## 000002D0
	sw      t2, 0x0004(s0)             ## 00000004
	sw      t1, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t4, 0xFA00                 ## t4 = FA000000
	addiu   t5, $zero, 0x0082          ## t5 = 00000082
	addiu   t3, s0, 0x0008             ## t3 = 00000008
	sw      t3, 0x02D0(s1)             ## 000002D0
	sw      t5, 0x0004(s0)             ## 00000004
	sw      t4, 0x0000(s0)             ## 00000000
	lwc1    $f12, 0x0024(s2)           ## 00000024
	lwc1    $f14, 0x0080(s2)           ## 00000080
	jal     func_800AA7F4              
	lw      a2, 0x002C(s2)             ## 0000002C
	lwc1    $f12, 0x0178(s2)           ## 00000178
	jal     func_800AA9E0              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lwc1    $f12, 0x0180(s2)           ## 00000180
	jal     func_800AAD4C              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lui     $at, %hi(var_80A9B314)     ## $at = 80AA0000
	lwc1    $f0, %lo(var_80A9B314)($at) 
	lwc1    $f10, 0x0058(s2)           ## 00000058
	lwc1    $f8, 0x0050(s2)            ## 00000050
	mtc1    $zero, $f14                ## $f14 = 0.00
	add.s   $f16, $f10, $f0            
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	add.s   $f12, $f8, $f0             
	mfc1    a2, $f16                   
	jal     func_800AA8FC              
	nop
	lh      t6, 0x00B6(s2)             ## 000000B6
	lui     $at, 0x4700                ## $at = 47000000
	mtc1    $at, $f6                   ## $f6 = 32768.00
	mtc1    t6, $f18                   ## $f18 = 0.00
	lui     $at, %hi(var_80A9B318)     ## $at = 80AA0000
	lwc1    $f10, %lo(var_80A9B318)($at) 
	cvt.s.w $f4, $f18                  
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	div.s   $f8, $f4, $f6              
	mul.s   $f12, $f8, $f10            
	jal     func_800AAB94              
	nop
	lh      t7, 0x00B4(s2)             ## 000000B4
	lui     $at, 0x4700                ## $at = 47000000
	mtc1    $at, $f4                   ## $f4 = 32768.00
	mtc1    t7, $f16                   ## $f16 = 0.00
	lui     $at, %hi(var_80A9B31C)     ## $at = 80AA0000
	lwc1    $f8, %lo(var_80A9B31C)($at) 
	cvt.s.w $f18, $f16                 
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	div.s   $f6, $f18, $f4             
	mul.s   $f12, $f6, $f8             
	jal     func_800AA9E0              
	nop
	lh      t8, 0x00B8(s2)             ## 000000B8
	lui     $at, 0x4700                ## $at = 47000000
	mtc1    $at, $f18                  ## $f18 = 32768.00
	mtc1    t8, $f10                   ## $f10 = 0.00
	lui     $at, %hi(var_80A9B320)     ## $at = 80AA0000
	lwc1    $f6, %lo(var_80A9B320)($at) 
	cvt.s.w $f16, $f10                 
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	div.s   $f4, $f16, $f18            
	mul.s   $f12, $f4, $f6             
	jal     func_800AAD4C              
	nop
	lh      v1, 0x0174(s2)             ## 00000174
	beql    v1, $zero, lbl_80A94324    
	lwc1    $f12, 0x0170(s2)           ## 00000170
	mtc1    v1, $f8                    ## $f8 = 0.00
	lui     $at, %hi(var_80A9B324)     ## $at = 80AA0000
	lwc1    $f16, %lo(var_80A9B324)($at) 
	cvt.s.w $f10, $f8                  
	mul.s   $f18, $f10, $f16           
	swc1    $f18, 0x0038($sp)          
	lbu     a0, 0x016C(s2)             ## 0000016C
	addu    $at, a0, $zero             
	sll     a0, a0,  2                 
	subu    a0, a0, $at                
	sll     a0, a0, 12                 
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lwc1    $f4, 0x0038($sp)           
	mul.s   $f6, $f0, $f4              
	swc1    $f6, 0x0040($sp)           
	lbu     a0, 0x016C(s2)             ## 0000016C
	addu    $at, a0, $zero             
	sll     a0, a0,  3                 
	subu    a0, a0, $at                
	sll     a0, a0,  3                 
	subu    a0, a0, $at                
	sll     a0, a0,  8                 
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lwc1    $f8, 0x0038($sp)           
	lwc1    $f12, 0x0040($sp)          
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	mul.s   $f10, $f0, $f8             
	jal     func_800AA9E0              
	swc1    $f10, 0x003C($sp)          
	lwc1    $f12, 0x003C($sp)          
	jal     func_800AAB94              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lwc1    $f12, 0x0170(s2)           ## 00000170
lbl_80A94324:
	jal     func_800AAD4C              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t1, 0xDA38                 ## t1 = DA380000
	ori     t1, t1, 0x0003             ## t1 = DA380003
	addiu   t9, s0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s1)             ## 000002D0
	sw      t1, 0x0000(s0)             ## 00000000
	lw      t2, 0x009C($sp)            
	lw      a0, 0x0000(t2)             ## 00000000
	jal     func_800AB900              
	sw      s0, 0x0034($sp)            
	lw      a1, 0x0034($sp)            
	lui     t4, 0xDE00                 ## t4 = DE000000
	sw      v0, 0x0004(a1)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t5, %hi(var_80A9B250)      ## t5 = 80AA0000
	addiu   t5, t5, %lo(var_80A9B250)  ## t5 = 80A9B250
	addiu   t3, s0, 0x0008             ## t3 = 00000008
	sw      t3, 0x02D0(s1)             ## 000002D0
	sw      t5, 0x0004(s0)             ## 00000004
	sw      t4, 0x0000(s0)             ## 00000000
	lbu     a2, 0x013D(s2)             ## 0000013D
lbl_80A94380:
	beql    a2, $zero, lbl_80A94394    
	lw      $ra, 0x0024($sp)           
	jal     func_80A94770              
	lw      a0, 0x009C($sp)            
	lw      $ra, 0x0024($sp)           
lbl_80A94394:
	lw      s0, 0x0018($sp)            
	lw      s1, 0x001C($sp)            
	lw      s2, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0098           ## $sp = 00000000


func_80A943A8:
	addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
	sw      s4, 0x0050($sp)            
	or      s4, a0, $zero              ## s4 = 00000000
	sw      $ra, 0x0054($sp)           
	sw      s3, 0x004C($sp)            
	sw      s2, 0x0048($sp)            
	sw      s1, 0x0044($sp)            
	sw      s0, 0x0040($sp)            
	sdc1    $f28, 0x0038($sp)          
	sdc1    $f26, 0x0030($sp)          
	sdc1    $f24, 0x0028($sp)          
	sdc1    $f22, 0x0020($sp)          
	sdc1    $f20, 0x0018($sp)          
	lui     $at, 0x4040                ## $at = 40400000
	mtc1    $at, $f28                  ## $f28 = 3.00
	lui     $at, 0x41CC                ## $at = 41CC0000
	mtc1    $at, $f26                  ## $f26 = 25.50
	lui     $at, 0xC0A0                ## $at = C0A00000
	mtc1    $at, $f24                  ## $f24 = -5.00
	lui     s0, 0x0001                 ## s0 = 00010000
	lui     $at, 0x3F80                ## $at = 3F800000
	addu    s0, s0, s4                 
	mtc1    $at, $f22                  ## $f22 = 1.00
	mtc1    $zero, $f20                ## $f20 = 0.00
	lw      s0, 0x1E10(s0)             ## 00011E10
	or      s1, $zero, $zero           ## s1 = 00000000
	addiu   s3, $sp, 0x0068            ## s3 = FFFFFFE8
	addiu   s2, $zero, 0x0001          ## s2 = 00000001
lbl_80A94418:
	lbu     t6, 0x0000(s0)             ## 00010000
	beql    t6, $zero, lbl_80A94728    
	addiu   s1, s1, 0x0001             ## s1 = 00000001
	lwc1    $f18, 0x0010(s0)           ## 00010010
	lwc1    $f14, 0x0004(s0)           ## 00010004
	lwc1    $f16, 0x0008(s0)           ## 00010008
	lwc1    $f12, 0x0014(s0)           ## 00010014
	add.s   $f14, $f14, $f18           
	lbu     t7, 0x0001(s0)             ## 00010001
	lwc1    $f10, 0x0018(s0)           ## 00010018
	add.s   $f8, $f16, $f12            
	lwc1    $f6, 0x000C(s0)            ## 0001000C
	lwc1    $f4, 0x001C(s0)            ## 0001001C
	lwc1    $f2, 0x0020(s0)            ## 00010020
	add.s   $f6, $f6, $f10             
	lwc1    $f0, 0x0024(s0)            ## 00010024
	lbu     v0, 0x0000(s0)             ## 00010000
	add.s   $f4, $f18, $f4             
	addiu   t8, t7, 0x0001             ## t8 = 00000001
	swc1    $f14, 0x0004(s0)           ## 00010004
	add.s   $f2, $f12, $f2             
	sb      t8, 0x0001(s0)             ## 00010001
	swc1    $f8, 0x0008(s0)            ## 00010008
	add.s   $f0, $f10, $f0             
	swc1    $f6, 0x000C(s0)            ## 0001000C
	swc1    $f4, 0x0010(s0)            ## 00010010
	swc1    $f2, 0x0014(s0)            ## 00010014
	bne     s2, v0, lbl_80A945E8       
	swc1    $f0, 0x0018(s0)            ## 00010018
	lwc1    $f0, 0x0014(s0)            ## 00010014
	c.lt.s  $f0, $f24                  
	nop
	bc1fl   lbl_80A944AC               
	c.lt.s  $f0, $f20                  
	swc1    $f24, 0x0014(s0)           ## 00010014
	lwc1    $f0, 0x0014(s0)            ## 00010014
	c.lt.s  $f0, $f20                  
lbl_80A944AC:
	nop
	bc1fl   lbl_80A94564               
	lwc1    $f10, 0x0020(s0)           ## 00010020
	lw      t0, 0x0004(s0)             ## 00010004
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f8                   ## $f8 = 5.00
	sw      t0, 0x0000(s3)             ## FFFFFFE8
	lw      t9, 0x0008(s0)             ## 00010008
	addiu   a0, s4, 0x07C0             ## a0 = 000007C0
	or      a1, s3, $zero              ## a1 = FFFFFFE8
	sw      t9, 0x0004(s3)             ## FFFFFFEC
	lw      t0, 0x000C(s0)             ## 0001000C
	lui     a2, 0x4130                 ## a2 = 41300000
	sw      t0, 0x0008(s3)             ## FFFFFFF0
	lwc1    $f6, 0x006C($sp)           
	swc1    $f16, 0x0074($sp)          
	add.s   $f10, $f6, $f8             
	jal     func_80030D08              
	swc1    $f10, 0x006C($sp)          
	beq     v0, $zero, lbl_80A94560    
	lwc1    $f16, 0x0074($sp)          
	lh      v0, 0x0048(s0)             ## 00010048
	swc1    $f16, 0x0008(s0)           ## 00010008
	lui     $at, 0xBF00                ## $at = BF000000
	bgtzl   v0, lbl_80A94554           
	swc1    $f20, 0x0014(s0)           ## 00010014
	lwc1    $f18, 0x0014(s0)           ## 00010014
	mtc1    $at, $f4                   ## $f4 = -0.50
	lui     $at, 0x41A0                ## $at = 41A00000
	addiu   t1, v0, 0x0001             ## t1 = 00000001
	mul.s   $f6, $f18, $f4             
	mtc1    $at, $f12                  ## $f12 = 20.00
	sh      t1, 0x0048(s0)             ## 00010048
	jal     func_80026D64              
	swc1    $f6, 0x0014(s0)            ## 00010014
	trunc.w.s $f8, $f0                   
	mfc1    t5, $f8                    
	nop
	addiu   t6, t5, 0x0019             ## t6 = 00000019
	beq     $zero, $zero, lbl_80A94560 
	sh      t6, 0x004A(s0)             ## 0001004A
	swc1    $f20, 0x0014(s0)           ## 00010014
lbl_80A94554:
	swc1    $f20, 0x0020(s0)           ## 00010020
	swc1    $f20, 0x0018(s0)           ## 00010018
	swc1    $f20, 0x0010(s0)           ## 00010010
lbl_80A94560:
	lwc1    $f10, 0x0020(s0)           ## 00010020
lbl_80A94564:
	lui     $at, 0x3F00                ## $at = 3F000000
	c.eq.s  $f20, $f10                 
	nop
	bc1tl   lbl_80A945A0               
	lh      t7, 0x004A(s0)             ## 0001004A
	lwc1    $f18, 0x0054(s0)           ## 00010054
	mtc1    $at, $f4                   ## $f4 = 0.50
	lui     $at, %hi(var_80A9B328)     ## $at = 80AA0000
	lwc1    $f8, 0x0058(s0)            ## 00010058
	add.s   $f6, $f18, $f4             
	swc1    $f6, 0x0054(s0)            ## 00010054
	lwc1    $f10, %lo(var_80A9B328)($at) 
	add.s   $f18, $f8, $f10            
	swc1    $f18, 0x0058(s0)           ## 00010058
	lh      t7, 0x004A(s0)             ## 0001004A
lbl_80A945A0:
	bnel    s2, t7, lbl_80A945B0       
	lbu     t8, 0x0001(s0)             ## 00010001
	sb      $zero, 0x0000(s0)          ## 00010000
	lbu     t8, 0x0001(s0)             ## 00010001
lbl_80A945B0:
	slti    $at, t8, 0x0003            
	bne     $at, $zero, lbl_80A94714   
	lui     $at, 0x4100                ## $at = 41000000
	mtc1    $at, $f6                   ## $f6 = 8.00
	lwc1    $f4, 0x004C(s0)            ## 0001004C
	sb      $zero, 0x0001(s0)          ## 00010001
	or      a0, s4, $zero              ## a0 = 00000000
	mul.s   $f8, $f4, $f6              
	addiu   a1, s0, 0x0004             ## a1 = 00010004
	mfc1    a2, $f8                    
	jal     func_80A92AC8              
	nop
	beq     $zero, $zero, lbl_80A94718 
	lh      v0, 0x004A(s0)             ## 0001004A
lbl_80A945E8:
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	bne     v0, $at, lbl_80A9461C      
	addiu   a0, s0, 0x0034             ## a0 = 00010034
	mfc1    a1, $f22                   
	jal     func_800642F0              
	lui     a2, 0x4170                 ## a2 = 41700000
	lwc1    $f10, 0x0034(s0)           ## 00010034
	c.le.s  $f10, $f20                 
	nop
	bc1fl   lbl_80A94718               
	lh      v0, 0x004A(s0)             ## 0001004A
	beq     $zero, $zero, lbl_80A94714 
	sb      $zero, 0x0000(s0)          ## 00010000
lbl_80A9461C:
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bne     v0, $at, lbl_80A946D0      
	addiu   a0, s0, 0x0028             ## a0 = 00010028
	mfc1    a1, $f22                   
	jal     func_800642F0              
	lui     a2, 0x41A0                 ## a2 = 41A00000
	mfc1    a1, $f22                   
	addiu   a0, s0, 0x002C             ## a0 = 0001002C
	jal     func_800642F0              
	lui     a2, 0x4000                 ## a2 = 40000000
	mfc1    a1, $f22                   
	mfc1    a2, $f26                   
	jal     func_800642F0              
	addiu   a0, s0, 0x0038             ## a0 = 00010038
	mfc1    a1, $f22                   
	addiu   a0, s0, 0x003C             ## a0 = 0001003C
	jal     func_800642F0              
	lui     a2, 0x41AC                 ## a2 = 41AC0000
	mfc1    a1, $f22                   
	mfc1    a2, $f26                   
	jal     func_800642F0              
	addiu   a0, s0, 0x0040             ## a0 = 00010040
	lui     a2, 0x3D4C                 ## a2 = 3D4C0000
	lui     a3, 0x3DCC                 ## a3 = 3DCC0000
	ori     a3, a3, 0xCCCD             ## a3 = 3DCCCCCD
	ori     a2, a2, 0xCCCD             ## a2 = 3D4CCCCD
	addiu   a0, s0, 0x004C             ## a0 = 0001004C
	jal     func_80064280              
	lw      a1, 0x0050(s0)             ## 00010050
	lwc1    $f18, 0x0028(s0)           ## 00010028
	c.eq.s  $f20, $f18                 
	nop
	bc1fl   lbl_80A94718               
	lh      v0, 0x004A(s0)             ## 0001004A
	mfc1    a1, $f22                   
	mfc1    a2, $f28                   
	jal     func_800642F0              
	addiu   a0, s0, 0x0034             ## a0 = 00010034
	lwc1    $f4, 0x0034(s0)            ## 00010034
	c.le.s  $f4, $f20                  
	nop
	bc1fl   lbl_80A94718               
	lh      v0, 0x004A(s0)             ## 0001004A
	beq     $zero, $zero, lbl_80A94714 
	sb      $zero, 0x0000(s0)          ## 00010000
lbl_80A946D0:
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	bne     v0, $at, lbl_80A94714      
	addiu   a0, s0, 0x004C             ## a0 = 0001004C
	mfc1    a2, $f22                   
	mfc1    a3, $f28                   
	jal     func_80064280              
	lw      a1, 0x0050(s0)             ## 00010050
	mfc1    a1, $f22                   
	addiu   a0, s0, 0x0034             ## a0 = 00010034
	jal     func_800642F0              
	lui     a2, 0x4120                 ## a2 = 41200000
	lwc1    $f6, 0x0034(s0)            ## 00010034
	c.le.s  $f6, $f20                  
	nop
	bc1fl   lbl_80A94718               
	lh      v0, 0x004A(s0)             ## 0001004A
	sb      $zero, 0x0000(s0)          ## 00010000
lbl_80A94714:
	lh      v0, 0x004A(s0)             ## 0001004A
lbl_80A94718:
	beq     v0, $zero, lbl_80A94724    
	addiu   t9, v0, 0xFFFF             ## t9 = FFFFFFFF
	sh      t9, 0x004A(s0)             ## 0001004A
lbl_80A94724:
	addiu   s1, s1, 0x0001             ## s1 = 00000002
lbl_80A94728:
	sll     s1, s1, 16                 
	sra     s1, s1, 16                 
	slti    $at, s1, 0x0064            
	bne     $at, $zero, lbl_80A94418   
	addiu   s0, s0, 0x006C             ## s0 = 0001006C
	lw      $ra, 0x0054($sp)           
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
	jr      $ra                        
	addiu   $sp, $sp, 0x0080           ## $sp = 00000000


func_80A94770:
	addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
	sw      $ra, 0x0074($sp)           
	sw      s8, 0x0070($sp)            
	sw      s7, 0x006C($sp)            
	sw      s6, 0x0068($sp)            
	sw      s5, 0x0064($sp)            
	sw      s4, 0x0060($sp)            
	sw      s3, 0x005C($sp)            
	sw      s2, 0x0058($sp)            
	sw      s1, 0x0054($sp)            
	sw      s0, 0x0050($sp)            
	sdc1    $f24, 0x0048($sp)          
	sdc1    $f22, 0x0040($sp)          
	sdc1    $f20, 0x0038($sp)          
	or      a1, a0, $zero              ## a1 = 00000000
	lui     s2, 0x0001                 ## s2 = 00010000
	addu    s2, s2, a1                 
	lw      a0, 0x0000(a1)             ## 00000000
	lw      s2, 0x1E10(s2)             ## 00011E10
	or      s6, $zero, $zero           ## s6 = 00000000
	or      s1, a0, $zero              ## s1 = 00000000
	sw      s2, 0x007C($sp)            
	jal     func_8007E298              
	sw      a1, 0x0090($sp)            
	lw      t6, 0x0090($sp)            
	jal     func_8007E2C0              
	lw      a0, 0x0000(t6)             ## 00000000
	or      s5, $zero, $zero           ## s5 = 00000000
	lui     s8, 0xDE00                 ## s8 = DE000000
	addiu   s7, $zero, 0x0001          ## s7 = 00000001
lbl_80A947E8:
	lbu     t7, 0x0000(s2)             ## 00010000
	lui     s4, %hi(var_80A99398)      ## s4 = 80AA0000
	or      a3, $zero, $zero           ## a3 = 00000000
	bnel    s7, t7, lbl_80A948A4       
	addiu   s5, s5, 0x0001             ## s5 = 00000001
	bne     s6, $zero, lbl_80A94828    
	addiu   s4, s4, %lo(var_80A99398)  ## s4 = 80A99398
	addiu   s6, s6, 0x0001             ## s6 = 00000001
	andi    s6, s6, 0x00FF             ## s6 = 00000001
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t9, %hi(var_80A99318)      ## t9 = 80AA0000
	addiu   t9, t9, %lo(var_80A99318)  ## t9 = 80A99318
	addiu   t8, s0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s1)             ## 000002C0
	sw      t9, 0x0004(s0)             ## 00000004
	sw      s8, 0x0000(s0)             ## 00000000
lbl_80A94828:
	lwc1    $f12, 0x0004(s2)           ## 00010004
	lwc1    $f14, 0x0008(s2)           ## 00010008
	jal     func_800AA7F4              
	lw      a2, 0x000C(s2)             ## 0001000C
	lwc1    $f20, 0x004C(s2)           ## 0001004C
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mfc1    a2, $f20                   
	mov.s   $f12, $f20                 
	jal     func_800AA8FC              
	mov.s   $f14, $f20                 
	lwc1    $f12, 0x0054(s2)           ## 00010054
	jal     func_800AAB94              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lwc1    $f12, 0x0058(s2)           ## 00010058
	jal     func_800AA9E0              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lw      s3, 0x02C0(s1)             ## 000002C0
	lui     t2, 0xDA38                 ## t2 = DA380000
	ori     t2, t2, 0x0003             ## t2 = DA380003
	addiu   t1, s3, 0x0008             ## t1 = 00000008
	sw      t1, 0x02C0(s1)             ## 000002C0
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_800AB900              
	sw      t2, 0x0000(s3)             ## 00000000
	sw      v0, 0x0004(s3)             ## 00000004
	lw      s0, 0x02C0(s1)             ## 000002C0
	addiu   t3, s0, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s1)             ## 000002C0
	sw      s4, 0x0004(s0)             ## 00000004
	sw      s8, 0x0000(s0)             ## 00000000
	addiu   s5, s5, 0x0001             ## s5 = 00000002
lbl_80A948A4:
	sll     s5, s5, 16                 
	sra     s5, s5, 16                 
	slti    $at, s5, 0x0064            
	bne     $at, $zero, lbl_80A947E8   
	addiu   s2, s2, 0x006C             ## s2 = 0001006C
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f24                  ## $f24 = 1.00
	or      s6, $zero, $zero           ## s6 = 00000000
	lw      s2, 0x007C($sp)            
	or      s5, $zero, $zero           ## s5 = 00000000
lbl_80A948CC:
	lbu     t4, 0x0000(s2)             ## 0001006C
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	lui     s4, %hi(var_80A9AD98)      ## s4 = 80AA0000
	bne     t4, $at, lbl_80A949D4      
	or      a3, $zero, $zero           ## a3 = 00000000
	bne     s6, $zero, lbl_80A94924    
	addiu   s4, s4, %lo(var_80A9AD98)  ## s4 = 80A9AD98
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t6, 0xE700                 ## t6 = E7000000
	addiu   s6, s6, 0x0001             ## s6 = 00000001
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s1)             ## 000002D0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t6, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t8, 0xFB00                 ## t8 = FB000000
	addiu   t9, $zero, 0xC800          ## t9 = FFFFC800
	addiu   t7, s0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s1)             ## 000002D0
	sw      t9, 0x0004(s0)             ## 00000004
	sw      t8, 0x0000(s0)             ## 00000000
	andi    s6, s6, 0x00FF             ## s6 = 00000001
lbl_80A94924:
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t2, 0xFA00                 ## t2 = FA000000
	addiu   $at, $zero, 0xC800         ## $at = FFFFC800
	addiu   t1, s0, 0x0008             ## t1 = 00000008
	sw      t1, 0x02D0(s1)             ## 000002D0
	sw      t2, 0x0000(s0)             ## 00000000
	lwc1    $f4, 0x0034(s2)            ## 000100A0
	trunc.w.s $f6, $f4                   
	mfc1    t6, $f6                    
	nop
	andi    t7, t6, 0x00FF             ## t7 = 00000000
	or      t8, t7, $at                ## t8 = FFFFC800
	sw      t8, 0x0004(s0)             ## 00000004
	lwc1    $f12, 0x0004(s2)           ## 00010070
	lwc1    $f14, 0x005C(s2)           ## 000100C8
	jal     func_800AA7F4              
	lw      a2, 0x000C(s2)             ## 00010078
	lwc1    $f12, 0x0060(s2)           ## 000100CC
	jal     func_800AA9E0              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lwc1    $f12, 0x0068(s2)           ## 000100D4
	jal     func_800AAD4C              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lwc1    $f20, 0x004C(s2)           ## 000100B8
	mov.s   $f14, $f24                 
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	add.s   $f12, $f20, $f20           
	mfc1    a2, $f12                   
	jal     func_800AA8FC              
	nop
	lw      s3, 0x02D0(s1)             ## 000002D0
	lui     t1, 0xDA38                 ## t1 = DA380000
	ori     t1, t1, 0x0003             ## t1 = DA380003
	addiu   t9, s3, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s1)             ## 000002D0
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_800AB900              
	sw      t1, 0x0000(s3)             ## 00000000
	sw      v0, 0x0004(s3)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	addiu   t2, s0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02D0(s1)             ## 000002D0
	sw      s4, 0x0004(s0)             ## 00000004
	sw      s8, 0x0000(s0)             ## 00000000
lbl_80A949D4:
	addiu   s5, s5, 0x0001             ## s5 = 00000001
	sll     s5, s5, 16                 
	sra     s5, s5, 16                 
	slti    $at, s5, 0x0064            
	bne     $at, $zero, lbl_80A948CC   
	addiu   s2, s2, 0x006C             ## s2 = 000100D8
	mtc1    $zero, $f22                ## $f22 = 0.00
	or      s6, $zero, $zero           ## s6 = 00000000
	lw      s2, 0x007C($sp)            
	or      s5, $zero, $zero           ## s5 = 00000000
lbl_80A949FC:
	lbu     t3, 0x0000(s2)             ## 000100D8
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	lw      s4, 0x0090($sp)            
	bne     t3, $at, lbl_80A94C1C      
	lui     s7, %hi(var_80A99A88)      ## s7 = 80AA0000
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1DA0           ## $at = 00011DA0
	addu    s4, s4, $at                
	bne     s6, $zero, lbl_80A94A48    
	addiu   s7, s7, %lo(var_80A99A88)  ## s7 = 80A99A88
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t5, %hi(var_80A999E0)      ## t5 = 80AA0000
	addiu   t5, t5, %lo(var_80A999E0)  ## t5 = 80A999E0
	addiu   t4, s0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02D0(s1)             ## 000002D0
	sw      t5, 0x0004(s0)             ## 00000004
	sw      s8, 0x0000(s0)             ## 00000000
	addiu   s6, s6, 0x0001             ## s6 = 00000001
	andi    s6, s6, 0x00FF             ## s6 = 00000001
lbl_80A94A48:
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t7, 0xE700                 ## t7 = E7000000
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   t6, s0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s1)             ## 000002D0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t7, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t9, 0xFB00                 ## t9 = FB000000
	or      a2, $zero, $zero           ## a2 = 00000000
	addiu   t8, s0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s1)             ## 000002D0
	sw      t9, 0x0000(s0)             ## 00000000
	lwc1    $f16, 0x003C(s2)           ## 00010114
	lwc1    $f4, 0x0040(s2)            ## 00010118
	lwc1    $f8, 0x0038(s2)            ## 00010110
	trunc.w.s $f18, $f16                 
	trunc.w.s $f6, $f4                   
	mfc1    t1, $f18                   
	trunc.w.s $f10, $f8                  
	mfc1    t9, $f6                    
	andi    t2, t1, 0x00FF             ## t2 = 00000000
	sll     t3, t2, 16                 
	mfc1    t5, $f10                   
	andi    t1, t9, 0x00FF             ## t1 = 00000000
	sll     t2, t1,  8                 
	sll     t6, t5, 24                 
	or      t4, t6, t3                 ## t4 = 00000008
	or      t6, t4, t2                 ## t6 = 00000008
	ori     t3, t6, 0x0080             ## t3 = 00000088
	sw      t3, 0x0004(s0)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t7, 0xFA00                 ## t7 = FA000000
	addiu   t3, $zero, 0x0040          ## t3 = 00000040
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s1)             ## 000002D0
	sw      t7, 0x0000(s0)             ## 00000000
	lwc1    $f8, 0x0028(s2)            ## 00010100
	lwc1    $f16, 0x002C(s2)           ## 00010104
	lwc1    $f4, 0x0030(s2)            ## 00010108
	trunc.w.s $f10, $f8                  
	lwc1    $f8, 0x0034(s2)            ## 0001010C
	trunc.w.s $f18, $f16                 
	mfc1    t2, $f10                   
	trunc.w.s $f6, $f4                   
	mfc1    t8, $f18                   
	sll     t6, t2, 24                 
	trunc.w.s $f10, $f8                  
	mfc1    t7, $f6                    
	andi    t9, t8, 0x00FF             ## t9 = 00000008
	sll     t1, t9, 16                 
	mfc1    t5, $f10                   
	andi    t8, t7, 0x00FF             ## t8 = 00000000
	sll     t9, t8,  8                 
	or      t4, t6, t1                 ## t4 = 00000008
	or      t6, t4, t9                 ## t6 = 00000008
	andi    t7, t5, 0x00FF             ## t7 = 00000008
	or      t8, t6, t7                 ## t8 = 00000008
	sw      t8, 0x0004(s0)             ## 00000004
	lw      s3, 0x02D0(s1)             ## 000002D0
	lui     t9, 0xDB06                 ## t9 = DB060000
	ori     t9, t9, 0x0020             ## t9 = DB060020
	addiu   t4, s3, 0x0008             ## t4 = 00000008
	sw      t4, 0x02D0(s1)             ## 000002D0
	sw      t9, 0x0000(s3)             ## 00000000
	lw      t1, 0x0090($sp)            
	lbu     a3, 0x0001(s2)             ## 000100D9
	addiu   t2, $zero, 0x0020          ## t2 = 00000020
	lw      a0, 0x0000(t1)             ## 00000000
	subu    $at, $zero, a3             
	sll     a3, $at,  2                
	addiu   t5, $zero, 0x0001          ## t5 = 00000001
	addiu   t6, $zero, 0x0020          ## t6 = 00000020
	addiu   t7, $zero, 0x0020          ## t7 = 00000020
	sw      t7, 0x0028($sp)            
	sw      t6, 0x0024($sp)            
	sw      t5, 0x0018($sp)            
	addu    a3, a3, $at                
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	sw      t3, 0x0014($sp)            
	jal     func_8007EB84              
	sw      t2, 0x0010($sp)            
	sw      v0, 0x0004(s3)             ## 00000004
	lwc1    $f12, 0x0004(s2)           ## 000100DC
	lwc1    $f14, 0x0008(s2)           ## 000100E0
	lw      a2, 0x000C(s2)             ## 000100E4
	jal     func_800AA7F4              
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_800ABE54              
	or      a0, s4, $zero              ## a0 = 80A9AD98
	lwc1    $f20, 0x004C(s2)           ## 00010124
	mfc1    a2, $f24                   
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mov.s   $f12, $f20                 
	jal     func_800AA8FC              
	mov.s   $f14, $f20                 
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f14                  ## $f14 = 20.00
	mfc1    a2, $f22                   
	mov.s   $f12, $f22                 
	jal     func_800AA7F4              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lw      s3, 0x02D0(s1)             ## 000002D0
	lui     t4, 0xDA38                 ## t4 = DA380000
	ori     t4, t4, 0x0003             ## t4 = DA380003
	addiu   t8, s3, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s1)             ## 000002D0
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_800AB900              
	sw      t4, 0x0000(s3)             ## 00000000
	sw      v0, 0x0004(s3)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	addiu   t9, s0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s1)             ## 000002D0
	sw      s7, 0x0004(s0)             ## 00000004
	sw      s8, 0x0000(s0)             ## 00000000
lbl_80A94C1C:
	addiu   s5, s5, 0x0001             ## s5 = 00000001
	sll     s5, s5, 16                 
	sra     s5, s5, 16                 
	slti    $at, s5, 0x0064            
	bne     $at, $zero, lbl_80A949FC   
	addiu   s2, s2, 0x006C             ## s2 = 00010144
	or      s6, $zero, $zero           ## s6 = 00000000
	lw      s2, 0x007C($sp)            
	or      s5, $zero, $zero           ## s5 = 00000000
lbl_80A94C40:
	lbu     t1, 0x0000(s2)             ## 00010144
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	lw      t0, 0x0090($sp)            
	bne     t1, $at, lbl_80A94DB8      
	lui     s7, %hi(var_80A99A88)      ## s7 = 80AA0000
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1DA0           ## $at = 00011DA0
	addu    s4, t0, $at                
	bne     s6, $zero, lbl_80A94CAC    
	addiu   s7, s7, %lo(var_80A99A88)  ## s7 = 80A99A88
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t3, %hi(var_80A999E0)      ## t3 = 80AA0000
	addiu   t3, t3, %lo(var_80A999E0)  ## t3 = 80A999E0
	addiu   t2, s0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02D0(s1)             ## 000002D0
	sw      t3, 0x0004(s0)             ## 00000004
	sw      s8, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t7, 0xFFD7                 ## t7 = FFD70000
	ori     t7, t7, 0xFF80             ## t7 = FFD7FF80
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s1)             ## 000002D0
	lui     t6, 0xFB00                 ## t6 = FB000000
	sw      t6, 0x0000(s0)             ## 00000000
	sw      t7, 0x0004(s0)             ## 00000004
	addiu   s6, s6, 0x0001             ## s6 = 00000001
	andi    s6, s6, 0x00FF             ## s6 = 00000001
lbl_80A94CAC:
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t4, 0xFA00                 ## t4 = FA000000
	lui     $at, 0xC814                ## $at = C8140000
	addiu   t8, s0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s1)             ## 000002D0
	sw      t4, 0x0000(s0)             ## 00000000
	lwc1    $f16, 0x0034(s2)           ## 00010178
	lui     t8, 0xDB06                 ## t8 = DB060000
	ori     t8, t8, 0x0020             ## t8 = DB060020
	trunc.w.s $f18, $f16                 
	addiu   t4, $zero, 0x0020          ## t4 = 00000020
	or      a1, $zero, $zero           ## a1 = 00000000
	or      a2, $zero, $zero           ## a2 = 00000000
	mfc1    t3, $f18                   
	addiu   t9, $zero, 0x0040          ## t9 = 00000040
	addiu   t1, $zero, 0x0001          ## t1 = 00000001
	andi    t5, t3, 0x00FF             ## t5 = 000000E0
	or      t6, t5, $at                ## t6 = C81400E0
	sw      t6, 0x0004(s0)             ## 00000004
	lw      s3, 0x02D0(s1)             ## 000002D0
	addiu   t2, $zero, 0x0020          ## t2 = 00000020
	addiu   t3, $zero, 0x0020          ## t3 = 00000020
	addiu   t7, s3, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s1)             ## 000002D0
	sw      t8, 0x0000(s3)             ## 00000000
	lbu     a3, 0x0001(s2)             ## 00010145
	lw      a0, 0x0000(t0)             ## 00000000
	sw      t3, 0x0028($sp)            
	subu    $at, $zero, a3             
	sll     a3, $at,  4                
	subu    a3, a3, $at                
	andi    a3, a3, 0x00FF             ## a3 = 00000000
	sw      t2, 0x0024($sp)            
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	sw      t1, 0x0018($sp)            
	sw      t9, 0x0014($sp)            
	jal     func_8007EB84              
	sw      t4, 0x0010($sp)            
	sw      v0, 0x0004(s3)             ## 00000004
	lwc1    $f12, 0x0004(s2)           ## 00010148
	lwc1    $f14, 0x0008(s2)           ## 0001014C
	lw      a2, 0x000C(s2)             ## 00010150
	jal     func_800AA7F4              
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_800ABE54              
	or      a0, s4, $zero              ## a0 = 80A9AD98
	lwc1    $f20, 0x004C(s2)           ## 00010190
	mfc1    a2, $f24                   
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mov.s   $f12, $f20                 
	jal     func_800AA8FC              
	mov.s   $f14, $f20                 
	lw      s3, 0x02D0(s1)             ## 000002D0
	lui     t6, 0xDA38                 ## t6 = DA380000
	ori     t6, t6, 0x0003             ## t6 = DA380003
	addiu   t5, s3, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s1)             ## 000002D0
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_800AB900              
	sw      t6, 0x0000(s3)             ## 00000000
	sw      v0, 0x0004(s3)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	addiu   t7, s0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s1)             ## 000002D0
	sw      s7, 0x0004(s0)             ## 00000004
	sw      s8, 0x0000(s0)             ## 00000000
lbl_80A94DB8:
	addiu   s5, s5, 0x0001             ## s5 = 00000001
	sll     s5, s5, 16                 
	sra     s5, s5, 16                 
	slti    $at, s5, 0x0064            
	bne     $at, $zero, lbl_80A94C40   
	addiu   s2, s2, 0x006C             ## s2 = 000101B0
	or      s6, $zero, $zero           ## s6 = 00000000
	lw      s2, 0x007C($sp)            
	or      s5, $zero, $zero           ## s5 = 00000000
lbl_80A94DDC:
	lbu     t8, 0x0000(s2)             ## 000101B0
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	lw      s4, 0x0090($sp)            
	bne     t8, $at, lbl_80A94EE0      
	lui     s7, %hi(var_80A9AAE8)      ## s7 = 80AA0000
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1DA0           ## $at = 00011DA0
	addu    s4, s4, $at                
	bne     s6, $zero, lbl_80A94E40    
	addiu   s7, s7, %lo(var_80A9AAE8)  ## s7 = 80A9AAE8
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t9, 0xE700                 ## t9 = E7000000
	addiu   s6, s6, 0x0001             ## s6 = 00000001
	addiu   t4, s0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02D0(s1)             ## 000002D0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t9, 0x0000(s0)             ## 00000000
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t2, 0xFB00                 ## t2 = FB000000
	addiu   t3, $zero, 0xC800          ## t3 = FFFFC800
	addiu   t1, s0, 0x0008             ## t1 = 00000008
	sw      t1, 0x02D0(s1)             ## 000002D0
	sw      t3, 0x0004(s0)             ## 00000004
	sw      t2, 0x0000(s0)             ## 00000000
	andi    s6, s6, 0x00FF             ## s6 = 00000001
lbl_80A94E40:
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t6, 0xFA00                 ## t6 = FA000000
	addiu   $at, $zero, 0xC800         ## $at = FFFFC800
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s1)             ## 000002D0
	sw      t6, 0x0000(s0)             ## 00000000
	lwc1    $f4, 0x0034(s2)            ## 000101E4
	or      a3, $zero, $zero           ## a3 = 00000000
	trunc.w.s $f6, $f4                   
	mfc1    t9, $f6                    
	nop
	andi    t1, t9, 0x00FF             ## t1 = 00000000
	or      t2, t1, $at                ## t2 = FFFFC800
	sw      t2, 0x0004(s0)             ## 00000004
	lwc1    $f12, 0x0004(s2)           ## 000101B4
	lwc1    $f14, 0x0008(s2)           ## 000101B8
	jal     func_800AA7F4              
	lw      a2, 0x000C(s2)             ## 000101BC
	jal     func_800ABE54              
	or      a0, s4, $zero              ## a0 = 80A9AD98
	lwc1    $f20, 0x004C(s2)           ## 000101FC
	mfc1    a2, $f24                   
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mov.s   $f12, $f20                 
	jal     func_800AA8FC              
	mov.s   $f14, $f20                 
	lw      s3, 0x02D0(s1)             ## 000002D0
	lui     t5, 0xDA38                 ## t5 = DA380000
	ori     t5, t5, 0x0003             ## t5 = DA380003
	addiu   t3, s3, 0x0008             ## t3 = 00000008
	sw      t3, 0x02D0(s1)             ## 000002D0
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_800AB900              
	sw      t5, 0x0000(s3)             ## 00000000
	sw      v0, 0x0004(s3)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	addiu   t6, s0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s1)             ## 000002D0
	sw      s7, 0x0004(s0)             ## 00000004
	sw      s8, 0x0000(s0)             ## 00000000
lbl_80A94EE0:
	addiu   s5, s5, 0x0001             ## s5 = 00000001
	sll     s5, s5, 16                 
	sra     s5, s5, 16                 
	slti    $at, s5, 0x0064            
	bne     $at, $zero, lbl_80A94DDC   
	addiu   s2, s2, 0x006C             ## s2 = 0001021C
	lw      $ra, 0x0074($sp)           
	ldc1    $f20, 0x0038($sp)          
	ldc1    $f22, 0x0040($sp)          
	ldc1    $f24, 0x0048($sp)          
	lw      s0, 0x0050($sp)            
	lw      s1, 0x0054($sp)            
	lw      s2, 0x0058($sp)            
	lw      s3, 0x005C($sp)            
	lw      s4, 0x0060($sp)            
	lw      s5, 0x0064($sp)            
	lw      s6, 0x0068($sp)            
	lw      s7, 0x006C($sp)            
	lw      s8, 0x0070($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0090           ## $sp = 00000000
	nop
	nop
	nop

.section .data

var_80A94F40: .word 0x013B0900, 0x00000035, 0x00010000, 0x000001F4
.word func_80A92DE0
.word func_80A92DB4
.word func_80A93060
.word func_80A93E14
var_80A94F60: .word 0x00000000
var_80A94F64: .word 0x00000000, 0x00000000, 0x00000000
var_80A94F70: .word \
0x03110939, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x00040000, 0xFFDFFFFF, 0x00000000, 0x01010100, \
0x000F001E, 0x000A0000, 0x00000000
var_80A94F9C: .word \
0x09110939, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x00040000, 0xFFDFFFFF, 0x00000000, 0x01010100, \
0x000F001E, 0x000A0000, 0x00000000, 0x00000000, \
0x00000000
var_80A94FD0: .word 0xFD100000
.word var_80A96468
.word \
0xF5100000, 0x07094260, 0xE6000000, 0x00000000, \
0xF3000000, 0x077FF080, 0xE7000000, 0x00000000, \
0xF5102000, 0x00094260, 0xF2000000, 0x000FC07C, \
0x0100500A
.word var_80A952A8
.word 0x06000204, 0x00060408, 0xFD100000
.word var_80A97468
.word \
0xF5100000, 0x07054150, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF100, 0xE7000000, 0x00000000, \
0xF5101000, 0x00054150, 0xF2000000, 0x0007C07C, \
0x01009012
.word var_80A952F8
.word \
0x06000204, 0x0006080A, 0x070C0E10, 0x000C1008, \
0xFD100000
.word var_80A95C68
.word \
0xF5100000, 0x07054150, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF100, 0xE7000000, 0x00000000, \
0xF5101000, 0x00054150, 0xF2000000, 0x0007C07C, \
0x0101F03E
.word var_80A95388
.word \
0x06000204, 0x00020006, 0x06000408, 0x000A0C0E, \
0x06100A0E, 0x00121416, 0x06121618, 0x001A1C1E, \
0x061E201A, 0x00202224, 0x06261228, 0x00281218, \
0x06182A28, 0x00082C2E, 0x06082E30, 0x002E3206, \
0x0606302E, 0x00343638, 0x06383A3C, 0x00383C34, \
0x0101E03C
.word var_80A95578
.word \
0x06000204, 0x00060004, 0x06040806, 0x000A0804, \
0x060C0E10, 0x000C100A, 0x060A1012, 0x00080A12, \
0x06121408, 0x0016181A, 0x061C1E20, 0x00202224, \
0x0626282A, 0x00262C2E, 0x062E2826, 0x00303234, \
0x0536383A, 0x00000000, 0x01013026
.word var_80A95758
.word \
0x06000204, 0x00040608, 0x060A0C0E, 0x000E1012, \
0x06141618, 0x00181A1C, 0x06181C14, 0x001E1C1A, \
0x05202224, 0x00000000, 0xFD100000
.word var_80A97C68
.word \
0xF5100000, 0x07054150, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF100, 0xE7000000, 0x00000000, \
0xF5101000, 0x00054150, 0xF2000000, 0x0007C07C, \
0x01020040
.word var_80A95888
.word \
0x06000204, 0x0006080A, 0x060A0C06, 0x00000E10, \
0x06101200, 0x00141618, 0x0616141A, 0x001C1E20, \
0x060A2224, 0x00220A26, 0x06282A2C, 0x002C2E28, \
0x06303234, 0x00363432, 0x06383A3C, 0x003E3C3A, \
0x0100A014
.word var_80A95A88
.word \
0x06000204, 0x0006080A, 0x060A0C06, 0x000E1012, \
0xFD100000
.word var_80A98468
.word \
0xF5100000, 0x07094250, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF100, 0xE7000000, 0x00000000, \
0xF5101000, 0x00094250, 0xF2000000, 0x0007C07C, \
0x0100600C
.word var_80A95B28
.word 0x06000204, 0x0006080A, 0xFD100000
.word var_80A95BE8
.word \
0xF5100000, 0x0700C030, 0xE6000000, 0x00000000, \
0xF3000000, 0x0703F400, 0xE7000000, 0x00000000, \
0xF5100400, 0x0000C030, 0xF2000000, 0x0001C01C, \
0x0100600C
.word var_80A95B88
.word 0x06000204, 0x0006080A, 0xDF000000, 0x00000000
var_80A952A8: .word \
0xFFF1FFFF, 0xFFE90000, 0x09E0025F, 0x008DE5FF, \
0x00000008, 0xFFC10000, 0x0400FEC2, 0x008DE5FF, \
0x000FFFFF, 0xFFE90000, 0xFE21025F, 0x75ECF1FF, \
0xFFF1FFFF, 0xFFE90000, 0x09E0025F, 0x8D1CFCFF, \
0x0000FFF4, 0xFFE10000, 0x040006B0, 0x003796FF
var_80A952F8: .word \
0xFFFC0002, 0x00060000, 0x000003FF, 0xCE6A12FF, \
0xFFFC0011, 0xFFE60000, 0x04000000, 0xB65D03FF, \
0xFFF90008, 0xFFE70000, 0x040003FF, 0x9C3F00FF, \
0x00070008, 0xFFE70000, 0x04000400, 0x653F00FF, \
0x00040011, 0xFFE60000, 0x04000000, 0x4B5D03FF, \
0x00040002, 0x00060000, 0x000003FF, 0x336A12FF, \
0xFFFC0011, 0xFFE60000, 0x00000000, 0xB65D03FF, \
0xFFFC0002, 0x00060000, 0x00000400, 0xCE6A12FF, \
0x00040002, 0x00060000, 0x04000400, 0x336A12FF
var_80A95388: .word \
0x003CFFEF, 0xFFDB0000, 0x01E903D3, 0xED8DEEFF, \
0x006AFFF2, 0xFFC50000, 0xFF6FF7D0, 0xFA8FDDFF, \
0x0047FFEE, 0xFFE00000, 0x03E1017A, 0x008AFCFF, \
0x003BFFF3, 0xFFD40000, 0x00000400, 0xD7A2C5FF, \
0x003EFFF1, 0xFFE30000, 0x04000400, 0xF09124FF, \
0x0047FFEE, 0xFFE00000, 0x03E1017A, 0x10731AFF, \
0x006AFFF2, 0xFFC50000, 0xFF6FF7D0, 0x0B731EFF, \
0x003BFFF3, 0xFFD40000, 0x00000400, 0x1C740AFF, \
0x003EFFF1, 0xFFE30000, 0x04000400, 0x2C6F02FF, \
0xFFC5FFF3, 0xFFD40000, 0x00000400, 0xE5740AFF, \
0xFF96FFF2, 0xFFC50000, 0xFF6F1030, 0xF6731EFF, \
0xFFB9FFEE, 0xFFE00000, 0x03E10685, 0xF1731AFF, \
0xFFC2FFF1, 0xFFE30000, 0x04000400, 0xD56F02FF, \
0xFFC4FFEF, 0xFFDB0000, 0x01E90433, 0x1B91E2FF, \
0xFFC5FFF3, 0xFFD40000, 0x00000400, 0x239DCAFF, \
0xFFE2FFFD, 0xFFE20000, 0x0174FB55, 0x3FB0C4FF, \
0xFFE7FFF9, 0xFFEA0000, 0x0348F9FA, 0x1C8E0FFF, \
0xFFE6FFFE, 0xFFFC0000, 0x07ABF8AC, 0x128F20FF, \
0xFFC2FFF1, 0xFFE30000, 0x04000400, 0x119124FF, \
0xFFE2FFFD, 0xFFE20000, 0x0174FB55, 0xE372EAFF, \
0xFFE60000, 0xFFEA0000, 0x033BF9BA, 0xD67000FF, \
0xFFE6FFFE, 0xFFFC0000, 0x07ABF8AC, 0xD46E07FF, \
0x001AFFFE, 0xFFFC0000, 0x07AB0F54, 0xEF8F20FF, \
0x0019FFF9, 0xFFEA0000, 0x03480E06, 0xDF8F02FF, \
0x003CFFEF, 0xFFDB0000, 0x01E903CC, 0xED8DEEFF, \
0x001EFFFD, 0xFFE20000, 0x01740CAB, 0xC10E9CFF, \
0x0000FFF3, 0x00000000, 0x0200FE4C, 0x008AFDFF, \
0x0000FFF4, 0xFFE10000, 0x020004CE, 0x008AF9FF, \
0x000AFFF5, 0xFFE50000, 0x04000400, 0x2991FAFF, \
0x000FFFFF, 0xFFE90000, 0x0508034F, 0x75ECF1FF, \
0x000AFFF4, 0xFFF50000, 0x040000BE, 0x57B00BFF
var_80A95578: .word \
0x000FFFFF, 0xFFE90000, 0x0508034F, 0x75ECF1FF, \
0x0000FFFF, 0x00480000, 0x0200EFB9, 0x6BCE0FFF, \
0x0000FFF3, 0x00240000, 0x0200F6F2, 0x5CB60FFF, \
0x000AFFF4, 0xFFF50000, 0x040000BE, 0x57B00BFF, \
0x0000FFF3, 0x00000000, 0x0200FE4C, 0x008AFDFF, \
0xFFF6FFF4, 0xFFF50000, 0x000000BE, 0xAAB00BFF, \
0x0000FFF3, 0x00240000, 0x0200F6F2, 0x93D612FF, \
0x0000FFFF, 0x00480000, 0x0200EFB9, 0x96CE0FFF, \
0xFFF1FFFF, 0xFFE90000, 0xFEF9034F, 0x8D1CFCFF, \
0xFFF6FFF5, 0xFFE50000, 0x00000400, 0xD891FAFF, \
0x0000FFF4, 0xFFE10000, 0x020004CE, 0x008AF9FF, \
0x001A0000, 0xFFEA0000, 0x003C039E, 0x8D1AF0FF, \
0x001EFFFD, 0xFFE20000, 0x00000400, 0xC10E9CFF, \
0x0019FFF9, 0xFFEA0000, 0x005303FE, 0x8D1AF0FF, \
0x000FFFFF, 0xFFE90000, 0x05080643, 0x75ECF1FF, \
0x000AFFF5, 0xFFE50000, 0x040003FF, 0x2C1493FF, \
0x0000FFF4, 0xFFE10000, 0x020003C6, 0x003796FF, \
0xFFF6FFF5, 0xFFE50000, 0x000003FF, 0xD51493FF, \
0xFFF1FFFF, 0xFFE90000, 0xFEF90643, 0x8D1CFCFF, \
0x001A0000, 0xFFEA0000, 0x033B0E46, 0x2B7000FF, \
0x003BFFF3, 0xFFD40000, 0x00000400, 0x1C740AFF, \
0x001EFFFD, 0xFFE20000, 0x01740CAB, 0xC10E9CFF, \
0x001AFFFE, 0xFFFC0000, 0x07AB0F54, 0x2D6E07FF, \
0x003EFFF1, 0xFFE30000, 0x04000400, 0x2C6F02FF, \
0xFFE7FFF9, 0xFFEA0000, 0x03AD03FE, 0x741AF0FF, \
0xFFE2FFFD, 0xFFE20000, 0x04000400, 0x3FB0C4FF, \
0xFFE60000, 0xFFEA0000, 0x03C4039E, 0x741AF0FF, \
0x00070008, 0xFFE70000, 0x00000400, 0x653F00FF, \
0x000FFFFF, 0xFFE90000, 0xFDE70426, 0x75ECF1FF, \
0x00000008, 0xFFC10000, 0x02000E52, 0x663CEDFF
var_80A95758: .word \
0xFFFC0011, 0xFFE60000, 0x030703D9, 0xB65D03FF, \
0x00040011, 0xFFE60000, 0x00F903D9, 0x4B5D03FF, \
0x00000008, 0xFFC10000, 0x02000E52, 0xAE52E9FF, \
0xFFF1FFFF, 0xFFE90000, 0x061A0426, 0x8D1CFCFF, \
0xFFF90008, 0xFFE70000, 0x040003FF, 0x9C3F00FF, \
0xFFFC0002, 0x00060000, 0x014507CF, 0xCE6A12FF, \
0xFFF1FFFF, 0xFFE90000, 0xFFF303CF, 0x8D1CFCFF, \
0x0000FFFF, 0x00480000, 0x015810F8, 0x007707FF, \
0x000FFFFF, 0xFFE90000, 0x04000400, 0x75ECF1FF, \
0x00040002, 0x00060000, 0x024907DB, 0x336A12FF, \
0xFFE7FFF9, 0xFFEA0000, 0x0348F9ED, 0x1C8E0FFF, \
0xFFC2FFF1, 0xFFE30000, 0x04000400, 0x119124FF, \
0xFFB9FFEE, 0xFFE00000, 0x03E10685, 0x068B0EFF, \
0xFF96FFF2, 0xFFC50000, 0xFF6F1030, 0x078FDDFF, \
0xFFC4FFEF, 0xFFDB0000, 0x01E9042C, 0x1B91E2FF, \
0xFFC5FFF3, 0xFFD40000, 0x00000400, 0x239DCAFF, \
0x0000FFFF, 0x00480000, 0x0200F716, 0x007707FF, \
0x00040002, 0x00060000, 0x0180001B, 0x336A12FF, \
0xFFFC0002, 0x00060000, 0x0280001B, 0xCE6A12FF
var_80A95888: .word \
0x001FFFFF, 0xFFEA0000, 0xFCA00400, 0x751709FF, \
0x0015FFF9, 0xFFD70000, 0xFE510220, 0x0072DBFF, \
0x000CFFFF, 0xFFEA0000, 0x00000400, 0x0072DBFF, \
0x0015FFF0, 0xFFF30000, 0xFE51064F, 0x9CC200FF, \
0x0015FFFA, 0x00260000, 0xFE510E01, 0x8B0313FF, \
0x000CFFFF, 0xFFEA0000, 0x000003FF, 0x8CEAF6FF, \
0x0015FFF9, 0xFFD70000, 0xFE51013D, 0xA5B9E8FF, \
0x0015FFFA, 0x00260000, 0xFE510E01, 0x760313FF, \
0x0015FFF0, 0xFFF30000, 0xFE51064F, 0x65C200FF, \
0x0015FFF9, 0xFFD70000, 0xFE51013D, 0x5CB9E8FF, \
0x001FFFFF, 0xFFEA0000, 0xFCA003FF, 0x751709FF, \
0x0015000D, 0xFFEF0000, 0xFE510403, 0x624016FF, \
0x0015FFFA, 0x00260000, 0xFE51FA01, 0x760313FF, \
0x0015001B, 0xFFC80000, 0xFE510B31, 0x624017FF, \
0x000CFFFF, 0xFFEA0000, 0x00000400, 0x8CEAF6FF, \
0x0015001B, 0xFFC80000, 0xFE51FC57, 0x00A4B4FF, \
0x001FFFFF, 0xFFEA0000, 0xFCA00400, 0x00A4B4FF, \
0x0015000D, 0xFFEF0000, 0xFE510403, 0x9F4016FF, \
0x0015001B, 0xFFC80000, 0xFE510B31, 0x9F4017FF, \
0x0015FFFA, 0x00260000, 0xFE51FA01, 0x8B0313FF, \
0xFFEBFFF0, 0xFFF30000, 0x05B0064F, 0x9CC200FF, \
0xFFEBFFFA, 0x00260000, 0x05B00E01, 0x8B0313FF, \
0xFFE1FFFF, 0xFFEA0000, 0x076103FF, 0x8CEAF6FF, \
0xFFEBFFF9, 0xFFD70000, 0x05B0013D, 0xA5B9E8FF, \
0xFFEB001B, 0xFFC80000, 0x05B00B31, 0x624017FF, \
0xFFEB000D, 0xFFEF0000, 0x05B00403, 0x624016FF, \
0xFFF4FFFF, 0xFFEA0000, 0x040003FF, 0x57510CFF, \
0xFFEBFFFA, 0x00260000, 0x05B0FA01, 0x760313FF, \
0xFFEB001B, 0xFFC80000, 0x05B00B31, 0x9F4017FF, \
0xFFE1FFFF, 0xFFEA0000, 0x07610400, 0x8CEAF6FF, \
0xFFEB000D, 0xFFEF0000, 0x05B00403, 0x9F4016FF, \
0xFFEBFFFA, 0x00260000, 0x05B0FA01, 0x8B0313FF
var_80A95A88: .word \
0xFFE1FFFF, 0xFFEA0000, 0x076103FF, 0x8CEAF6FF, \
0xFFEB001B, 0xFFC80000, 0x05B0FC57, 0x00A4B4FF, \
0xFFF4FFFF, 0xFFEA0000, 0x04000400, 0x4AA9DFFF, \
0xFFF4FFFF, 0xFFEA0000, 0x040003FF, 0x4AA9DFFF, \
0xFFEBFFFA, 0x00260000, 0x05B00E01, 0x760313FF, \
0xFFEBFFF0, 0xFFF30000, 0x05B0064F, 0x65C200FF, \
0xFFEBFFF9, 0xFFD70000, 0x05B0013D, 0x5CB9E8FF, \
0xFFF4FFFF, 0xFFEA0000, 0x04000400, 0x57510CFF, \
0xFFEBFFF9, 0xFFD70000, 0x05B00220, 0x0072DBFF, \
0xFFE1FFFF, 0xFFEA0000, 0x076103FF, 0x0072DBFF
var_80A95B28: .word \
0xFFF90008, 0xFFE70000, 0xFF4204B6, 0x9C3F00FF, \
0xFFFC0011, 0xFFE60000, 0xFFBEFECF, 0xB65D03FF, \
0x00000008, 0xFFC10000, 0x0BE60498, 0xAE52E9FF, \
0x00000008, 0xFFC10000, 0x0BE60498, 0x663CEDFF, \
0x00040011, 0xFFE60000, 0xFFBEFECF, 0x4B5D03FF, \
0x00070008, 0xFFE70000, 0xFF4204B6, 0x653F00FF
var_80A95B88: .word \
0xFFF90008, 0xFFE70000, 0x01FA00FF, 0x9C3F00FF, \
0xFFF1FFFF, 0xFFE90000, 0x039C001E, 0x8D1CFCFF, \
0xFFFC0002, 0x00060000, 0x0138FA6C, 0xCE6A12FF, \
0x00040002, 0x00060000, 0xFFA1FA6C, 0x336A12FF, \
0x000FFFFF, 0xFFE90000, 0xFD3D001E, 0x75ECF1FF, \
0x00070008, 0xFFE70000, 0xFEDF0100, 0x653F00FF
var_80A95BE8: .word \
0x6B556B55, 0x6B556B55, 0x6B556B55, 0x6B556B55, \
0x9CDF9CDF, 0x9CDF9CDF, 0x9CDF9CDF, 0x9CDF9CDF, \
0x9CDF9CDF, 0x9CDF9CDF, 0x9CDF9CDF, 0x9CDF9CDF, \
0x6B556B55, 0x6B556B55, 0x6B556B55, 0x6B556B55, \
0x21072107, 0x21072107, 0x21072107, 0x21072107, \
0x21072107, 0x21072107, 0x21072107, 0x21072107, \
0x21072107, 0x21072107, 0x21072107, 0x21072107, \
0x21072107, 0x21072107, 0x21072107, 0x21072107
var_80A95C68: .word \
0xCE29BDA5, 0x9CDF8C1D, 0x945DB563, 0xCE29DEAD, \
0xE6EFE6EF, 0xE6F1E733, 0xE735E735, 0xE735E735, \
0xE735E735, 0xE733E733, 0xE6F1E6EF, 0xDEEDDEAD, \
0xDEABDEAB, 0xD66BD66B, 0xD66BD669, 0xD669D669, \
0xDEADCE29, 0xAD23945D, 0x9C9FBDA5, 0xDEADEF31, \
0xF771F7B3, 0xF7B5FFB7, 0xFFB9FFFB, 0xFFFBFFFB, \
0xFFFBFFF9, 0xFFB9FFB7, 0xF7B5F773, 0xF771EF31, \
0xEF2FEF2F, 0xE6EFE6ED, 0xE6EDE6ED, 0xDEADDEAD, \
0xDEADCE29, 0xAD23949F, 0x9C9FB5A5, 0xDEADEF31, \
0xF771F7B3, 0xFFB5FFF7, 0xFFF9FFF9, 0xFFF9FFF9, \
0xFFF9FFF9, 0xFFF7FFB5, 0xFFB5F773, 0xF771EF31, \
0xEF2FEF2F, 0xE6EFE6ED, 0xE6EDE6ED, 0xE6EDE6ED, \
0xDEABC5E7, 0xAD23945D, 0x949FB565, 0xD66BEF2F, \
0xEF31F771, 0xF773FFB5, 0xFFB5FFB5, 0xFFF5FFF7, \
0xFFB5FFB5, 0xFFB5F7B3, 0xF773F771, 0xEF2FEF2F, \
0xEEEFE6EF, 0xE6EDE6ED, 0xE6ADDEAD, 0xDEADDEAD, \
0xD66BC5E7, 0xA521945D, 0x945DB563, 0xD66BE6ED, \
0xEF2FEF2F, 0xF771F773, 0xF7B3F7B3, 0xF7B3F7B3, \
0xF7B3F773, 0xF771F771, 0xEF31EF2F, 0xE6EFE6EF, \
0xE6EDE6ED, 0xE6EDDEAD, 0xDEADDEAD, 0xDEABDEAB, \
0xD66BC5E7, 0xA4E1945D, 0x945DAD63, 0xCE29DEAD, \
0xE6EDE6EF, 0xEF2FEF31, 0xF771F771, 0xF771F771, \
0xEF31EF31, 0xEF31EF2F, 0xE6EFE6EF, 0xE6EDE6ED, \
0xE6ADDEAD, 0xDEADDEAB, 0xDEABDEAB, 0xDEABDEAB, \
0xD669BDA7, 0xA4E18C5D, 0x945DAD23, 0xCE29DEAD, \
0xDEADE6ED, 0xE6EDE6EF, 0xEF2FEF2F, 0xEF2FEF2F, \
0xEEEFE6EF, 0xE6EFE6ED, 0xE6EDE6AD, 0xDEADDEAD, \
0xDEADDEAB, 0xDEABDEAB, 0xD66BD66B, 0xD66BD66B, \
0xCE29BDA5, 0x9CE18C5D, 0x945DAD21, 0xC5E7D66B, \
0xD66BDEAB, 0xDEADDEAD, 0xE6EDDEAD, 0xDEADDEAD, \
0xDEADDEAD, 0xDEADDEAD, 0xDEABDEAB, 0xDEABDE6B, \
0xD66BD66B, 0xD66BD66B, 0xD66BD66B, 0xD66BD66B, \
0xC5E7B563, 0x9C9F8C5D, 0x945DA4E1, 0xBDA5C5E7, \
0xC5E7CE29, 0xCE29D66B, 0xD66BD669, 0xCE29CE29, \
0xCE29CE29, 0xCE29CE29, 0xCE29CE29, 0xCE29D669, \
0xD669CE29, 0xCE29C627, 0xCE29CE29, 0xCE29CE29, \
0xB563A521, 0x9CDF9C9F, 0x9CDFAD21, 0xB563B5A5, \
0xBDA5BDA5, 0xC5E7CE29, 0xCE29C5E7, 0xB5A5B565, \
0xB565BDA5, 0xBDA5B565, 0xB563BDA5, 0xC5E7C5E7, \
0xCE29C5E7, 0xBDA7BDA5, 0xBDA5C5E7, 0xCE29C5E7, \
0xB563AD23, 0xAD23AD63, 0xB563B565, 0xB565B5A5, \
0xBDA5BDA5, 0xBDA7C5E7, 0xC5E7BDA7, 0xB565B563, \
0xB563B563, 0xB563AD23, 0xAD23B563, 0xBDA7C5E7, \
0xC5E7C5E7, 0xBDA5BDA5, 0xBDA5C5E7, 0xC5E7BDA7, \
0xBDA5B5A5, 0xBDA5BDA7, 0xBDA7BDE7, 0xC5E7C5E7, \
0xC5E7C5E7, 0xC5E7C5E7, 0xC5E9C5E7, 0xBDA7BDA7, \
0xBDA5BDA7, 0xBDA5B565, 0xB565BDA5, 0xC5E7CE29, \
0xCE29CE29, 0xC5E7C5E7, 0xC5E7C5E7, 0xC5E7C5E7, \
0xC5E7BDE7, 0xBDA7C5E7, 0xC5E7C5E7, 0xC5E7C5E7, \
0xC5E7C5E7, 0xC5E7C5E7, 0xC5E9C5E9, 0xC5E9C629, \
0xCE29C627, 0xC5E7BDA5, 0xBDA5C5E7, 0xCE29CE29, \
0xCE29CE29, 0xCE29CE29, 0xCE29CE29, 0xC5E7C5E7, \
0xC5E7BDA5, 0xBDA5BDA5, 0xBDA7C5E7, 0xC5E7C5E7, \
0xC5E7C5E7, 0xC5E7C5E7, 0xC5E7C5E9, 0xC5E9CE29, \
0xCE29CE29, 0xC5E7BDA7, 0xBDE7C5E7, 0xCE29CE29, \
0xCE29CE29, 0xCE29CE29, 0xCE29CE29, 0xC5E7C5E7, \
0xBDA5B565, 0xAD63B565, 0xBDA5BDA7, 0xBDA7BDE7, \
0xC5E7C5E7, 0xC5E7C5E7, 0xC5E7C5E9, 0xC5E7C5E7, \
0xC5E7C5E7, 0xC5E7BDA5, 0xBDA5C5E7, 0xCE29CE29, \
0xCE29CE29, 0xC627CE29, 0xCE29CE29, 0xC5E7C5E7, \
0xBDA5AD63, 0xAD21B563, 0xBDA5BDA5, 0xBDA5BDA5, \
0xBDA5BDA7, 0xBDA7BDA7, 0xC5E7C5E7, 0xC5E7C5E7, \
0xC5E7C5E7, 0xBDA7BDA5, 0xBDA5C5E7, 0xCE29CE29, \
0xCE29C5E7, 0xC5E7C5E7, 0xCE29C5E7, 0xC5E7BDA5, \
0xB565AD23, 0xA521AD23, 0xB565BDA5, 0xBDA5BDA5, \
0xBDA5BDA5, 0xBDA5BDA5, 0xBDA7BDE7, 0xC5E7C5E7, \
0xC5E7C5E7, 0xBDA5BDA5, 0xBDA5C5E7, 0xC5E7CE27, \
0xC5E7C5E7, 0xC5E7C5E7, 0xC627C5E7, 0xBDE7BDA5, \
0xB565AD23, 0xA4E1AD23, 0xB565BDA5, 0xBDA5BDA5, \
0xBDA5BDA5, 0xBDA5BDA5, 0xBDA7BDE7, 0xBDE7BDA7, \
0xBDA7BDA7, 0xBDA5B565, 0xB5A5BDA7, 0xC5E7C5E7, \
0xC5E7C5E7, 0xC5E7C5E7, 0xC5E7C5E7, 0xBDA5BDA5, \
0xB563AD21, 0xA4E1AD23, 0xB563B565, 0xB565B565, \
0xB5A5B5A5, 0xBDA5BDA5, 0xBDA7BDA7, 0xBDA7BDA5, \
0xBDA5BDA5, 0xBDA5B563, 0xB565BDA5, 0xC5E7C5E7, \
0xC5E7BDE7, 0xBDA7C5E7, 0xC5E7C5E7, 0xBDA5BDA5, \
0xB563A521, 0xA4E1AD21, 0xB563B565, 0xB565B565, \
0xB565B565, 0xB565B5A5, 0xBDA5BDA7, 0xBDA7BDA5, \
0xBDA5BDA5, 0xB565B563, 0xB563BDA5, 0xC5E7C5E7, \
0xC5E7BDA5, 0xBDA5BDA7, 0xC5E7BDA7, 0xBDA5B565, \
0xAD63A4E1, 0xA4DFA4E1, 0xAD23B563, 0xB563B563, \
0xB563B563, 0xB563B565, 0xB5A5BDA7, 0xBDA5BDA5, \
0xBDA5B5A5, 0xB563AD63, 0xB563BDA5, 0xC5E7C5E7, \
0xBDA7BDA5, 0xBDA5BDA5, 0xBDA5BDA5, 0xB565B565, \
0xAD23A4E1, 0x9C9F9C9F, 0xA4E1A521, 0xAD21AD21, \
0xAD23AD23, 0xAD23AD23, 0xB565B565, 0xB565B563, \
0xB563AD63, 0xAD23AD21, 0xAD23B565, 0xBDA5BDE7, \
0xBDA5BDA5, 0xBDA5BDA5, 0xB5A5B565, 0xB563B563, \
0xAD239CDF, 0x945D8C1B, 0x945D945D, 0x949F9C9F, \
0x9C9F9C9F, 0x9C9F9C9F, 0xA4E1A4E1, 0xA4E1A4E1, \
0x9CDF9CDF, 0x9C9FA4E1, 0xAD23B565, 0xBDA5BDA7, \
0xBDA5B5A5, 0xB565B565, 0xB563B563, 0xB563B563, \
0xAD219C9F, 0x841B7B99, 0x7B997BD9, 0x83DB841B, \
0x8C1B8C5D, 0x8C5D8C5D, 0x8C5D8C5D, 0x8C5D8C5D, \
0x8C5D8C5D, 0x945D9C9F, 0xAD23B5A5, 0xBDA7BDA7, \
0xBDA5B565, 0xB565B563, 0xB563B563, 0xAD63AD63, \
0xAD219C9F, 0x7BD97357, 0x73577B97, 0x7B9983D9, \
0x8C1B945D, 0x945D945D, 0x8C5D8C1B, 0x8C1B8C1B, \
0x8C1D8C5D, 0x945FA4E1, 0xB565BDA7, 0xBDA7BDA5, \
0xB565B563, 0xB563B563, 0xB563AD23, 0xAD23AD23, \
0xA521945D, 0x7BD97357, 0x73977BD9, 0x7BD9841B, \
0x945D9CDF, 0xA4E1A4DF, 0x9C9F949F, 0x949F9C9F, \
0x9C9F9CDF, 0xA4E1AD23, 0xB5A7BDA7, 0xBDA7B565, \
0xB563B563, 0xB563B563, 0xAD23AD23, 0xAD23AD23, \
0xA4E1945D, 0x7BD97357, 0x7B99841B, 0x8C1B945D, \
0x9CDFAD21, 0xAD23AD21, 0xA521A521, 0xAD23AD23, \
0xAD23AD23, 0xAD23B565, 0xB5A5BDA7, 0xB5A7B565, \
0xAD23AD23, 0xAD63AD23, 0xAD23AD23, 0xAD23AD23, \
0xA4E1945D, 0x7BD97397, 0x7BD98C5D, 0x949F9C9F, \
0xA4E1AD23, 0xAD23AD23, 0xAD23AD63, 0xB565B565, \
0xB563AD63, 0xAD23AD23, 0xB565B565, 0xB565AD23, \
0xA521AD23, 0xAD23AD23, 0xAD23AD21, 0xAD21AD21, \
0xA4E1945D, 0x7BD97397, 0x83D9945D, 0xA4E1A4E1, \
0xAD21AD21, 0xAD23AD23, 0xAD23AD63, 0xB565B563, \
0xB563AD23, 0xAD23AD23, 0xAD23AD23, 0xAD23A4E1, \
0xA4E1AD21, 0xAD23AD23, 0xAD21AD21, 0xA521A521, \
0xA4E1945D, 0x7BD97397, 0x83D9949F, 0xA521AD21, \
0xAD21AD21, 0xAD21AD21, 0xAD23AD23, 0xAD23AD23, \
0xAD23AD23, 0xAD23AD21, 0xAD21AD21, 0xA4E1A4E1, \
0xA4E1A521, 0xAD23AD23, 0xAD21A521, 0xA4E1A4E1, \
0xA4E1945D, 0x83D97397, 0x83DB9C9F, 0xAD23AD23, \
0xAD23AD23, 0xAD23AD23, 0xAD23AD63, 0xB563B565, \
0xB565B563, 0xAD63AD23, 0xAD23AD23, 0xAD21A4E1, \
0xA521AD23, 0xAD23AD23, 0xAD23AD21, 0xAD21AD21, \
0xB565A4E1, 0x8C1D7BD9, 0x8C1BA4E1, 0xBDA5C5E7, \
0xC5E7C5E9, 0xC5E9C5E9, 0xC5EBC5EB, 0xC5EBC62B, \
0xC62BC5EB, 0xC5EBC5E9, 0xC5E9C5E7, 0xBDE7BDA5, \
0xBDA5BDA5, 0xBDA7BDA5, 0xBDA5BDA5, 0xBDA5BDA5
var_80A96468: .word \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x10850001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x18C718C7, \
0x18C718C7, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00011085, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x10850001, 0x00010001, \
0x00010001, 0x00010001, 0x18C718C7, 0x318D318D, \
0x318D318D, 0x18C718C7, 0x00010001, 0x00010001, \
0x00010001, 0x00011085, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x294B294B, 0x294B294B, 0x00010001, \
0x00010001, 0x00010001, 0x10850001, 0x00010001, \
0x00010001, 0x18C718C7, 0x318D318D, 0xFD03FD03, \
0xFD03FD03, 0x318D318D, 0x18C718C7, 0x00010001, \
0x00010001, 0x00011085, 0x00010001, 0x00010001, \
0x00010001, 0x294B294B, 0x294B294B, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x18C718C7, 0x18C718C7, 0x00010001, \
0x00010001, 0x00010001, 0x10850001, 0x00010001, \
0x18C718C7, 0x318D318D, 0xFD03FD03, 0xFE41FE41, \
0xFE41FE41, 0xFD03FD03, 0x318D318D, 0x18C718C7, \
0x00010001, 0x00011085, 0x00010001, 0x00010001, \
0x00010001, 0x18C718C7, 0x18C718C7, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x18C70001, 0x000118C7, 0x00010001, \
0x00010001, 0x00010001, 0x108518C7, 0x18C718C7, \
0x318D318D, 0xFD03FD03, 0xFE41FE41, 0xFFC1FFFF, \
0xFFFFFFC1, 0xFE41FE41, 0xFD03FD03, 0x318D318D, \
0x18C718C7, 0x18C71085, 0x00010001, 0x00010001, \
0x00010001, 0x18C70001, 0x000118C7, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x18C718C7, 0x18C718C7, 0x00010001, \
0x00010001, 0x00010001, 0x0843318D, 0x318D318D, \
0xFD03FD03, 0xFE41FE41, 0xFFC1FFC1, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFC1FFC1, 0xFE41FE41, 0xFD03FD03, \
0x318D318D, 0x318D0843, 0x00010001, 0x00010001, \
0x00010001, 0x18C718C7, 0x18C718C7, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x0843318D, 0xFD03FD03, \
0xFE41FE41, 0xFFC1FFC1, 0xFFC1FFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFC1, 0xFFC1FFC1, 0xFE41FE41, \
0xFD03FD03, 0x318D0843, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x08430843, \
0x08430843, 0x08430843, 0x08430843, 0x08430843, \
0x08430843, 0x00010001, 0x0843318D, 0xFD03FD03, \
0xFE41FE41, 0xFFC1FFC1, 0xFFC1FFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFC1, 0xFFC1FFC1, 0xFE41FE41, \
0xFD03FD03, 0x318D0843, 0x00010001, 0x08430843, \
0x08430843, 0x08430843, 0x08430843, 0x08430843, \
0x08430843, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010843, 0x10851085, \
0x10851085, 0x10851085, 0x10851085, 0x10851085, \
0x10851085, 0x08430001, 0x0843318D, 0x318D318D, \
0xFD03FD03, 0xFE41FE41, 0xFFC1FFC1, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFC1FFC1, 0xFE41FE41, 0xFD03FD03, \
0x318D318D, 0x318D0843, 0x00010001, 0x10851085, \
0x10851085, 0x10851085, 0x10851085, 0x10851085, \
0x10851085, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x000118C7, 0x18C718C7, \
0x18C718C7, 0x18C718C7, 0x18C718C7, 0x18C718C7, \
0x18C718C7, 0x18C70001, 0x00010001, 0x000118C7, \
0x318D318D, 0xFD03FD03, 0xFE41FE41, 0xFFC1FFFF, \
0xFFFFFFC1, 0xFE41FE41, 0xFD03FD03, 0x318D318D, \
0x18C70001, 0x00010001, 0x00010843, 0x18C718C7, \
0x18C718C7, 0x18C718C7, 0x18C718C7, 0x18C718C7, \
0x18C718C7, 0x08430001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x0001318D, 0x294B294B, \
0x294B294B, 0x294B294B, 0x294B294B, 0x294B294B, \
0x294B294B, 0x318D0001, 0xF8011085, 0x10850001, \
0x000118C7, 0x318D318D, 0xFD03FD03, 0xFE41FE41, \
0xFE41FE41, 0xFD03FD03, 0x318D318D, 0x18C70001, \
0x00011085, 0x1085F801, 0x000118C7, 0x294B294B, \
0x294B294B, 0x294B294B, 0x294B294B, 0x294B294B, \
0x294B294B, 0x18C70001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00016319, 0x318D318D, \
0x318D318D, 0x318D318D, 0x318D318D, 0x318D318D, \
0x318D318D, 0x63190001, 0x00011085, 0x10850001, \
0x00010001, 0x000118C7, 0x318D318D, 0xFD03FD03, \
0xFD03FD03, 0x318D318D, 0x18C70001, 0x00010001, \
0x00011085, 0x10850001, 0x0001318D, 0x318D318D, \
0x318D318D, 0x318D318D, 0x318D318D, 0x318D318D, \
0x318D318D, 0x318D0001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x0843FFFF, 0xCE73CE73, \
0xCE73CE73, 0xCE73CE73, 0xCE73CE73, 0xCE73CE73, \
0xCE73CE73, 0xFFFF0001, 0x18C718C7, 0x18C718C7, \
0x00010001, 0x318D0001, 0x000118C7, 0x318D318D, \
0x318D318D, 0x18C70001, 0x0001318D, 0x00010001, \
0x18C718C7, 0x18C718C7, 0x0001CE73, 0xCE73CE73, \
0xCE73CE73, 0xCE73CE73, 0xCE73CE73, 0xCE73CE73, \
0xCE73CE73, 0xCE730843, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x0843318D, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x318D0001, 0x318D318D, 0x318D318D, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x318D318D, 0x318D318D, 0x0001318D, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x318D0843, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x08436B5B, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x6B5B0001, 0x318D6B5B, 0x6B5B318D, \
0x0001318D, 0x318D318D, 0x318D318D, 0x318D318D, \
0x318D318D, 0x318D318D, 0x318D318D, 0x318D0001, \
0x318D6B5B, 0x6B5B318D, 0x00016B5B, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x6B5B0843, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x08436B5B, 0x00010001, \
0xFFC1FFC1, 0xFFC1FFC1, 0xFFC1FFC1, 0xFFC1FFC1, \
0x00010001, 0x6B5B0001, 0x318D6B5B, 0x6B5B318D, \
0x10856B5B, 0x6B5B6B5B, 0x6B5B6B5B, 0x6B5B6B5B, \
0x6B5B6B5B, 0x6B5B6B5B, 0x6B5B6B5B, 0x6B5B1085, \
0x318D6B5B, 0x6B5B318D, 0x00016B5B, 0x00010001, \
0xFFC1FFC1, 0xFFC1FFC1, 0xFFC1FFC1, 0xFFC1FFC1, \
0x00010001, 0x6B5B0843, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x08436B5B, 0x00010001, \
0xFFC1FFC1, 0xFFC1FFC1, 0xFFC1FFC1, 0xFFC1FFC1, \
0x00010001, 0x6B5B0001, 0x318D318D, 0x318D318D, \
0x0001CE73, 0xCE73CE73, 0xCE73FFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFCE73, 0xCE73CE73, 0xCE730001, \
0x318D318D, 0x318D318D, 0x00016B5B, 0x00010001, \
0xFFC1FFC1, 0xFFC1FFC1, 0xFFC1FFC1, 0xFFC1FFC1, \
0x00010001, 0x6B5B0843, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x08436B5B, 0x00010001, \
0xFFC1FFC1, 0xFFC1FFC1, 0xFFC1FFC1, 0xFFC1FFC1, \
0x00010001, 0x6B5B0001, 0x28C128C1, 0x28C128C1, \
0x00019CE7, 0x9CE79CE7, 0x9CE79CE7, 0x9CE79CE7, \
0x9CE79CE7, 0x9CE79CE7, 0x9CE79CE7, 0x9CE70001, \
0x28C128C1, 0x28C128C1, 0x00016B5B, 0x00010001, \
0xFFC1FFC1, 0xFFC1FFC1, 0xFFC1FFC1, 0xFFC1FFC1, \
0x00010001, 0x6B5B0843, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x08436B5B, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x6B5B0001, 0x31033103, 0x31033101, \
0x0001318D, 0x318D318D, 0x318D318D, 0x318D318D, \
0x318D318D, 0x318D318D, 0x318D318D, 0x318D0001, \
0x31013103, 0x31033103, 0x00016B5B, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x6B5B0843, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x0843318D, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x6B5B0001, 0x08430843, 0x08430001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010843, 0x08430843, 0x00016B5B, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x318D0843, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x08436B5B, 0x6B5B6B5B, \
0x6B5B6B5B, 0x6B5B6B5B, 0x6B5B6B5B, 0x18C7318D, \
0x318D318D, 0x318D318D, 0x318D318D, 0x318D318D, \
0x318D318D, 0x318D318D, 0x318D318D, 0x318D318D, \
0x318D318D, 0x318D318D, 0x318D318D, 0x318D318D, \
0x318D318D, 0x318D318D, 0x318D318D, 0x318D318D, \
0x318D18C7, 0x6B5B6B5B, 0x6B5B6B5B, 0x6B5B6B5B, \
0x6B5B6B5B, 0x6B5B0843, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x0001318D, \
0x318D318D, 0x318D0001, 0x00010001, 0x18C76B5B, \
0x6B5B5A4B, 0x5A4BFD03, 0xFD03FD03, 0xFD03FD03, \
0xFD03FD03, 0xFD03FD03, 0xFD03FD03, 0xFD03FD03, \
0xFD03FD03, 0xFD03FD03, 0xFD03FD03, 0xFD03FD03, \
0xFD03FD03, 0xFD03FD03, 0xFD035A4B, 0x5A4B6B5B, \
0x6B5B18C7, 0x00010001, 0x0001318D, 0x318D318D, \
0x318D0001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x0001318D, \
0x6B5B6B5B, 0x318D0001, 0x00010001, 0x18C718C7, \
0x18C76B5B, 0x6B5B5A4B, 0x5A4BFD03, 0xFD03FEC1, \
0xFEC1FEC1, 0xFEC1FEC1, 0xFEC1FEC1, 0xFEC1FEC1, \
0xFEC1FEC1, 0xFEC1FEC1, 0xFEC1FEC1, 0xFEC1FEC1, \
0xFEC1FD03, 0xFD035A4B, 0x5A4B6B5B, 0x6B5B18C7, \
0x18C718C7, 0x00010001, 0x0001318D, 0x6B5B6B5B, \
0x318D0001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x0001318D, \
0x6B5B6B5B, 0x318D0001, 0x08430001, 0x00010001, \
0x000118C7, 0x18C76B5B, 0x6B5B5A4B, 0x5A4BFD03, \
0xFD03FEC1, 0xFEC1FFC1, 0xFFC1FFC1, 0xFFC1FFC1, \
0xFFC1FFC1, 0xFFC1FFC1, 0xFFC1FEC1, 0xFEC1FD03, \
0xFD035A4B, 0x5A4B6B5B, 0x6B5B18C7, 0x18C70001, \
0x00010001, 0x00010843, 0x0001318D, 0x6B5B6B5B, \
0x318D0001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x0001318D, \
0x318D318D, 0x318D0001, 0x10850001, 0x18C718C7, \
0x18C718C7, 0x000118C7, 0x18C76B5B, 0x6B5B5A4B, \
0x5A4BFD03, 0xFD03FEC1, 0xFEC1FFC1, 0xFFC1FFC1, \
0xFFC1FFC1, 0xFFC1FEC1, 0xFEC1FD03, 0xFD035A4B, \
0x5A4B6B5B, 0x6B5B18C7, 0x18C70001, 0x18C718C7, \
0x18C718C7, 0x00011085, 0x0001318D, 0x318D318D, \
0x318D0001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x000118C7, \
0x18C718C7, 0x18C70001, 0x10850001, 0x18C70001, \
0x000118C7, 0x00010001, 0x000118C7, 0x18C76B5B, \
0x6B5B5A4B, 0x5A4BFD03, 0xFD03FEC1, 0xFEC1FFC1, \
0xFFC1FEC1, 0xFEC1FD03, 0xFD035A4B, 0x5A4B6B5B, \
0x6B5B18C7, 0x18C70001, 0x00010001, 0x18C70001, \
0x000118C7, 0x00011085, 0x000118C7, 0x18C718C7, \
0x18C70001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010843, \
0x08430843, 0x08430001, 0x18C70001, 0x18C70001, \
0x000118C7, 0x00010001, 0x00010001, 0x000118C7, \
0x18C76B5B, 0x6B5B5A4B, 0x5A4BFD03, 0xFD03FEC1, \
0xFEC1FD03, 0xFD035A4B, 0x5A4B6B5B, 0x6B5B18C7, \
0x18C70001, 0x00010001, 0x00010001, 0x18C70001, \
0x000118C7, 0x000118C7, 0x00010843, 0x08430843, \
0x08430001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x000118C7, \
0x18C718C7, 0x18C70001, 0x18C70001, 0x18C718C7, \
0x18C718C7, 0x084318C7, 0x18C718C7, 0x18C70843, \
0x084318C7, 0x18C76B5B, 0x6B5B5A4B, 0x5A4BFD03, \
0xFD035A4B, 0x5A4B6B5B, 0x6B5B18C7, 0x18C70843, \
0x084318C7, 0x18C718C7, 0x18C70843, 0x18C718C7, \
0x18C718C7, 0x000118C7, 0x000118C7, 0x18C718C7, \
0x18C70001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x000118C7, \
0x18C718C7, 0x18C70001, 0x00010001, 0x318D318D, \
0x318D318D, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x000118C7, 0x18C76B5B, 0x6B5B5A4B, \
0x5A4B6B5B, 0x6B5B18C7, 0x18C70001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x318D318D, \
0x318D318D, 0x00010001, 0x000118C7, 0x18C718C7, \
0x18C70001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x18C718C7, \
0x18C718C7, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x000118C7, 0x18C76B5B, \
0x6B5B18C7, 0x18C70001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x18C718C7, \
0x18C718C7, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x000118C7, \
0x18C70001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001
var_80A97468: .word \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xCE73CE73, 0xCE73CE73, 0xCE73CE73, 0xCE73CE73, \
0xCE73CE73, 0xCE73CE73, 0xCE73CE73, 0xCE73CE73, \
0xCE73CE73, 0xCE73CE73, 0xCE73CE73, 0xCE73CE73, \
0xCE73CE73, 0xCE73CE73, 0xCE73CE73, 0xCE73CE73, \
0x318D318D, 0x318D318D, 0x318D318D, 0x318D318D, \
0x318D318D, 0x318D318D, 0x318D318D, 0x318D318D, \
0x318D318D, 0x318D318D, 0x318D318D, 0x318D318D, \
0x318D318D, 0x318D318D, 0x318D318D, 0x318D318D, \
0x10851085, 0x10851085, 0x10851085, 0x10851085, \
0x10851085, 0x10851085, 0x10851085, 0x10851085, \
0x10851085, 0x10851085, 0x10851085, 0x10851085, \
0x10851085, 0x10851085, 0x10851085, 0x10851085, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x00010001, 0x00010001, 0x00010001, 0x00010001, \
0x10851085, 0x10851085, 0x10851085, 0x10851085, \
0x10851085, 0x10851085, 0x10851085, 0x10851085, \
0x10851085, 0x10851085, 0x10851085, 0x10851085, \
0x10851085, 0x10851085, 0x10851085, 0x10851085, \
0x318D318D, 0x318D318D, 0x318D318D, 0x318D318D, \
0x318D318D, 0x318D318D, 0x318D318D, 0x318D318D, \
0x318D318D, 0x318D318D, 0x318D318D, 0x318D318D, \
0x318D318D, 0x318D318D, 0x318D318D, 0x318D318D, \
0xCE73CE73, 0xCE73CE73, 0xCE73CE73, 0xCE73CE73, \
0xCE73CE73, 0xCE73CE73, 0xCE73CE73, 0xCE73CE73, \
0xCE73CE73, 0xCE73CE73, 0xCE73CE73, 0xCE73CE73, \
0xCE73CE73, 0xCE73CE73, 0xCE73CE73, 0xCE73CE73, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
var_80A97C68: .word \
0x11571157, 0x11571957, 0x19571959, 0x19591959, \
0x19591959, 0x19591959, 0x19591959, 0x11151115, \
0x11171157, 0x11571157, 0x11171117, 0x11171117, \
0x11151115, 0x11151115, 0x11151115, 0x11150913, \
0x11571957, 0x19571959, 0x19591959, 0x19991999, \
0x19991999, 0x19991957, 0x19571957, 0x11151115, \
0x11571957, 0x11571157, 0x11571117, 0x11171117, \
0x11171115, 0x11151115, 0x11151115, 0x11150913, \
0x19571959, 0x19591999, 0x1999219B, 0x29DB21DB, \
0x219B219B, 0x219B219B, 0x21991999, 0x11151115, \
0x11571959, 0x19571157, 0x19571999, 0x21992199, \
0x19571157, 0x11151115, 0x11151115, 0x11150913, \
0x19591959, 0x19991999, 0x219921DB, 0x2A1D29DB, \
0x21DB21DB, 0x21DB21DB, 0x219B219B, 0x11171115, \
0x11571959, 0x19591957, 0x19591999, 0x21992199, \
0x19591157, 0x11151115, 0x11151115, 0x11150913, \
0x19991999, 0x2199219B, 0x219B21DB, 0x21DB21DB, \
0x21DB21DB, 0x21DB21DB, 0x219B219B, 0x11171117, \
0x11571959, 0x19591157, 0x11571117, 0x11571117, \
0x11171117, 0x11151115, 0x11151115, 0x11151115, \
0x19571959, 0x19991999, 0x21992199, 0x21992199, \
0x21992199, 0x21992199, 0x21991999, 0x11171117, \
0x19571999, 0x19591959, 0x19571157, 0x11571117, \
0x11171117, 0x11151115, 0x11151115, 0x11151115, \
0x219B219B, 0x21DB21DB, 0x29DD29DD, 0x2A1D2A1D, \
0x2A1D2A1D, 0x2A1D29DD, 0x29DD29DB, 0x11571117, \
0x19592199, 0x19991959, 0x19571157, 0x11571157, \
0x11151115, 0x11151115, 0x11151115, 0x11151115, \
0x219B21DB, 0x29DB29DD, 0x2A1D2A1D, 0x321D321D, \
0x321D321D, 0x321D2A1D, 0x2A1D29DD, 0x11571157, \
0x19592199, 0x19991999, 0x19591957, 0x11571157, \
0x11171117, 0x11171115, 0x11151115, 0x11151115, \
0x21DB29DB, 0x29DD2A1D, 0x321D321F, 0x325F325F, \
0x325F325F, 0x321F321F, 0x321D2A1D, 0x11571157, \
0x1959219B, 0x21991999, 0x19591957, 0x11571157, \
0x11571117, 0x11171115, 0x11151115, 0x11151115, \
0x219921DB, 0x29DB29DB, 0x29DB2A1B, 0x321B321B, \
0x321D3A5F, 0x325F325F, 0x321F321F, 0x19571157, \
0x199921DB, 0x219B1999, 0x19591959, 0x11571117, \
0x11151115, 0x11151115, 0x11151115, 0x11151113, \
0x19551955, 0x19551955, 0x19551955, 0x19551955, \
0x21973A5F, 0x3A5F3A5F, 0x325F321F, 0x19571157, \
0x199921DB, 0x219B2199, 0x19991959, 0x11151113, \
0x11131113, 0x11131113, 0x11131115, 0x11151113, \
0x29DD2A1D, 0x321F325F, 0x3A5F3A5F, 0x3A9F3A9F, \
0x3A9F3A9F, 0x3A9F3A5F, 0x3A5F325F, 0x19571157, \
0x199921DB, 0x219B2199, 0x19991959, 0x19571157, \
0x11571117, 0x11171117, 0x11151115, 0x11151115, \
0x2A1D321F, 0x325F3A5F, 0x3A5F3A9F, 0x3A9F429F, \
0x429F429F, 0x3A9F3A9F, 0x3A5F325F, 0x19571157, \
0x199929DB, 0x21DB219B, 0x19991959, 0x19571157, \
0x11571117, 0x11171117, 0x11151115, 0x11151115, \
0x2A1D321F, 0x325F3A5F, 0x3A9F3A9F, 0x429F429F, \
0x429F429F, 0x429F3A9F, 0x3A5F3A5F, 0x19571157, \
0x199929DB, 0x21DB219B, 0x19991959, 0x19591157, \
0x11571117, 0x11171117, 0x11151115, 0x11151115, \
0x21DB29DB, 0x29DB2A1B, 0x321B321B, 0x321B321B, \
0x321B321B, 0x321B321B, 0x2A1B29DB, 0x19571157, \
0x219929DB, 0x21DB219B, 0x19991959, 0x19591157, \
0x11571117, 0x11171117, 0x11171115, 0x11151115, \
0x321D325F, 0x3A5F3A9F, 0x3A9F429F, 0x429F429F, \
0x429F429F, 0x429F3A9F, 0x3A9F3A5F, 0x19571157, \
0x219929DB, 0x21DB219B, 0x19991959, 0x19591157, \
0x11571117, 0x11171117, 0x11171115, 0x11151115, \
0x09131115, 0x11151115, 0x11151115, 0x11151115, \
0x11171117, 0x11171117, 0x11571157, 0x11571117, \
0x11151115, 0x19591959, 0x19591959, 0x19591959, \
0x19591959, 0x19591957, 0x19571157, 0x11571157, \
0x09131115, 0x11151115, 0x11151115, 0x11151117, \
0x11171117, 0x11171157, 0x11571157, 0x19571157, \
0x11151115, 0x19571957, 0x19571999, 0x19991999, \
0x19991999, 0x19591959, 0x19591957, 0x19571157, \
0x09131115, 0x11151115, 0x11151115, 0x11171117, \
0x11171117, 0x11571157, 0x11571957, 0x19591157, \
0x11151115, 0x19992199, 0x219B219B, 0x219B219B, \
0x21991999, 0x19991999, 0x19991959, 0x19591957, \
0x09131115, 0x11151115, 0x11151115, 0x11171117, \
0x11171117, 0x11571157, 0x19571959, 0x19591157, \
0x11151117, 0x219B219B, 0x21DB21DB, 0x21DB21DB, \
0x219B219B, 0x219B2199, 0x19991999, 0x19591959, \
0x11151115, 0x11151115, 0x11151115, 0x11171117, \
0x11171157, 0x11171157, 0x11571959, 0x19591157, \
0x11171117, 0x219B219B, 0x21DB21DB, 0x21DB21DB, \
0x21DB21DB, 0x21DB219B, 0x219B2199, 0x19991999, \
0x11151115, 0x11151115, 0x11151115, 0x11171117, \
0x11171157, 0x11571957, 0x19591959, 0x19991957, \
0x11171117, 0x19992199, 0x21992199, 0x21992199, \
0x21992199, 0x21992199, 0x19991999, 0x19591957, \
0x11151115, 0x11151115, 0x11151115, 0x11151115, \
0x11571157, 0x11571957, 0x19591999, 0x21991959, \
0x11171157, 0x29DB29DD, 0x29DD2A1D, 0x2A1D2A1D, \
0x2A1D2A1D, 0x29DD29DD, 0x21DB21DB, 0x219B219B, \
0x11151115, 0x11151115, 0x11151117, 0x11171117, \
0x11571157, 0x19571959, 0x19991999, 0x21991959, \
0x11571157, 0x29DD2A1D, 0x2A1D321D, 0x321D321D, \
0x321D321D, 0x2A1D2A1D, 0x29DD29DB, 0x21DB219B, \
0x11151115, 0x11151115, 0x11151117, 0x11171157, \
0x11571157, 0x19571959, 0x19992199, 0x219B1959, \
0x11571157, 0x2A1D321D, 0x321F321F, 0x325F325F, \
0x325F325F, 0x321F321D, 0x2A1D29DD, 0x29DB21DB, \
0x11131115, 0x11151115, 0x11151115, 0x11151115, \
0x11171157, 0x19591959, 0x1999219B, 0x21DB1999, \
0x11571957, 0x321F321F, 0x325F325F, 0x3A5F321D, \
0x321B321B, 0x2A1B29DB, 0x29DB29DB, 0x21DB2199, \
0x11131115, 0x11151113, 0x11131113, 0x11131113, \
0x11131115, 0x19591999, 0x2199219B, 0x21DB1999, \
0x11571957, 0x321F325F, 0x3A5F3A5F, 0x3A5F2197, \
0x19551955, 0x19551955, 0x19551955, 0x19551955, \
0x11151115, 0x11151115, 0x11171117, 0x11171157, \
0x11571957, 0x19591999, 0x2199219B, 0x21DB1999, \
0x11571957, 0x325F3A5F, 0x3A5F3A9F, 0x3A9F3A9F, \
0x3A9F3A9F, 0x3A5F3A5F, 0x325F321F, 0x2A1D29DD, \
0x11151115, 0x11151115, 0x11171117, 0x11171157, \
0x11571957, 0x19591999, 0x219B21DB, 0x29DB1999, \
0x11571957, 0x325F3A5F, 0x3A9F3A9F, 0x429F429F, \
0x429F3A9F, 0x3A9F3A5F, 0x3A5F325F, 0x321F2A1D, \
0x11151115, 0x11151115, 0x11171117, 0x11171157, \
0x11571959, 0x19591999, 0x219B21DB, 0x29DB1999, \
0x11571957, 0x3A5F3A5F, 0x3A9F429F, 0x429F429F, \
0x429F429F, 0x3A9F3A9F, 0x3A5F325F, 0x321F2A1D, \
0x11151115, 0x11151117, 0x11171117, 0x11171157, \
0x11571959, 0x19591999, 0x219B21DB, 0x29DB2199, \
0x11571957, 0x29DB2A1B, 0x321B321B, 0x321B321B, \
0x321B321B, 0x321B321B, 0x2A1B29DB, 0x29DB21DB, \
0x11151115, 0x11151117, 0x11171117, 0x11171157, \
0x11571959, 0x19591999, 0x219B21DB, 0x29DB2199, \
0x11571957, 0x3A5F3A9F, 0x3A9F429F, 0x429F429F, \
0x429F429F, 0x429F3A9F, 0x3A9F3A5F, 0x325F321D
var_80A98468: .word \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF7B9F7B9, 0xF7B9F7B9, \
0xF7B9F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F7B9, 0xEF35EEB1, 0xE6B1EEF3, \
0xF7B9F7FB, 0xF7B9F7B9, 0xF7B9F7B9, 0xF7B9F7FB, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F7B9, 0xEF35EEB1, 0xE6B1EEF3, \
0xF7B9F7FB, 0xF7B9F7B9, 0xF7B9F7B9, 0xF7B9F7FB, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF7B9E62F, 0xB909B043, 0xB043B085, \
0xC293D4A1, 0xE62DEF35, 0xF7B9F7B9, 0xEEB1CB9B, \
0xF7B9F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF7B9B085, 0xA801A801, 0xA801A801, \
0xA801A801, 0xB003B0C7, 0xCAD5C295, 0xB085B001, \
0xF7F9F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F7B7, 0xD41FA801, 0xB001B001, 0xB001B001, \
0xB001B001, 0xA801A801, 0xA801A801, 0xA801D3DD, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F7B9, 0xB909B001, 0xB001B001, 0xB001B001, \
0xB001B001, 0xB001B001, 0xB001B001, 0xA801EF35, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F7B9, 0xB001B001, 0xB001B001, 0xB001B001, \
0xB001B001, 0xB001B001, 0xB001B001, 0xB085F7FB, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F7F9, 0xB001B001, 0xB001B001, 0xB001B001, \
0xB001B001, 0xB001B001, 0xB001A801, 0xE5EDF777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F7B9, 0xB043B001, 0xB001B001, 0xB001B001, \
0xB001A801, 0xB001A801, 0xA801CB9B, 0xF7F9F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F7B9, 0xB98DB001, 0xB001B001, 0xB001A801, \
0xA801B043, 0xB001B9CD, 0xD41FF7FB, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF7B9F777, 0xDDA9A801, 0xB001B001, 0xB001B043, \
0xD4A3E62F, 0xDD69F777, 0xF7FBF777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F7B9, \
0xE5EBF777, 0xF7FBA801, 0xB001B001, 0xA801E62D, \
0xF7FBF7B9, 0xF7FBF7B9, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F7FB, \
0xB085F7B9, 0xF7B9B949, 0xB001B001, 0xCB9BF7F9, \
0xF777F777, 0xF777F777, 0xF777F7B9, 0xF7B9F7B9, \
0xF7B9F7B9, 0xF7B9F7B9, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF7B9F7FF, \
0xA801F7B9, 0xF777CB17, 0xB001A801, 0xEEF3F777, \
0xF777F777, 0xF777F777, 0xF7B9F7B9, 0xEEF3EEF3, \
0xEF77F777, 0xF7B9E5ED, 0xF7B9F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF7B9DCA3, \
0xA801EEB1, 0xF7FBE62F, 0xB001A801, 0xEEB1F7B9, \
0xF7B9F7B9, 0xF7B9F7FB, 0xE66FC2D5, 0xB8C7B0C7, \
0xB98DC1CF, 0xC251B9CD, 0xF7B9F777, 0xF777F777, \
0xF777F777, 0xF777F7B7, 0xF7B9F7FB, 0xC251A801, \
0xB001C1CF, 0xDD69EEF3, 0xA801B001, 0xC211E671, \
0xEF35EF35, 0xE671D3DD, 0xB043A801, 0xA801A801, \
0xA801A801, 0xA801E66F, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777EF77, 0xE62DD4A1, 0xA801B001, \
0xB001A801, 0xB001B085, 0xB001B001, 0xA801B043, \
0xB909B909, 0xB043A801, 0xA801B001, 0xB001B001, \
0xB001A801, 0xC293F7FB, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777EEF5, 0xA801A801, 0xB001B001, \
0xB001B001, 0xB001A801, 0xB001B001, 0xB001A801, \
0xA801A801, 0xA801B001, 0xA801A801, 0xA801A801, \
0xA801B94B, 0xF7B9F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F7B9, 0xB9CFA801, 0xA801A801, \
0xA801A801, 0xB001B001, 0xB001B001, 0xB001B001, \
0xB001B001, 0xB001D41F, 0xCB17B907, 0xB043B043, \
0xC293EF77, 0xF7B9F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF7B9D4A1, 0xC251B085, \
0xB085B083, 0xA801B001, 0xB001B001, 0xB001B001, \
0xB001B001, 0xB001D4A3, 0xF7FBEEF3, 0xE62DE66F, \
0xF7B9F7B9, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF7B9F7FB, 0xF7B9E6B1, \
0xEEF3EEF3, 0xB085B001, 0xB001B001, 0xB001B001, \
0xB001B001, 0xB001B949, 0xF7B9F7B9, 0xF7B9F7B9, \
0xF7B9F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF7B9F7B9, \
0xF7B9F7B9, 0xE5EBA801, 0xA801A801, 0xA801B043, \
0xB001B001, 0xB001B043, 0xF7B9F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF7FBB043, 0xB085C251, 0xDD27C253, \
0xB001B001, 0xA801B98D, 0xF7B9F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFF777, 0xF7B9CB19, 0xB98DF7B9, 0xF7FBCB59, \
0xB001B001, 0xB98BE66F, 0xF777F777, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xB5A9B5A9, 0xB5A9B5A9, 0xB5A9B5A9, 0xB5A9B5A9, \
0xB5A9F777, 0xF777E62D, 0xB909F7B9, 0xF777EEB1, \
0xA801A801, 0xF7B9F7B9, 0xF777F777, 0xB5A9B5A9, \
0xB5A9B5A9, 0xB5A9B5A9, 0xB5A9B5A9, 0xB5A9B5A9, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777EEF3, 0xB043F7FB, 0xF777F7F9, \
0xB9CDA801, 0xEF77F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777EF35, 0xA801E62D, 0xF777F777, \
0xEF37A801, 0xCB9BF7B9, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F7F9, 0xB043B0C7, 0xF7B9F7FB, \
0xEEB1A801, 0xD39BF7B9, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F7B9, 0xE62DC20F, 0xF7B9CB9B, \
0xB085B043, 0xEF77F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF7B9EF77, 0xF7B9A001, \
0xA801E5AB, 0xF7B9F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F7B9, 0xF7B9F7B9, \
0xF7B9F7B9, 0xF777F777, 0xF777F777, 0xF777F777, \
0xF777F777, 0xF777F777, 0xF777F777, 0xF777F777
var_80A98C68: .word 0xFD100000
.word var_80A98D38
.word \
0xF5100000, 0x07090240, 0xE6000000, 0x00000000, \
0xF3000000, 0x070FF200, 0xE7000000, 0x00000000, \
0xF5100800, 0x00090240, 0xF2000000, 0x0003C03C, \
0xFC1197FF, 0xFFFFFE38, 0x0100600C
.word var_80A98CD8
.word \
0x06000204, 0x00020006, 0x06020804, 0x00080206, \
0x06080A04, 0x000A0806, 0x060A0004, 0x00000A06, \
0xDF000000, 0x00000000
var_80A98CD8: .word \
0x00050000, 0x00220000, 0x01F80181, 0xFFFFFFFF, \
0x0000FFFD, 0x00220000, 0x01000181, 0xFFFFFFFF, \
0x00000000, 0xFFE50000, 0x01000010, 0xFFFFFFFF, \
0x00000000, 0x00370000, 0x01000201, 0xFFFFFFFF, \
0xFFFB0000, 0x00220000, 0x00080181, 0xFFFFFFFF, \
0x00000003, 0x00220000, 0x01000181, 0xFFFFFFFF
var_80A98D38: .word \
0x03410341, 0x03410341, 0x03410341, 0x03410341, \
0x03410341, 0x03410341, 0x03410341, 0x03410341, \
0x05010501, 0x05010501, 0x05010501, 0x05010501, \
0x05010501, 0x05010501, 0x05010501, 0x05010501, \
0x06810681, 0x06810681, 0x06810681, 0x06810681, \
0x06810681, 0x06810681, 0x06810681, 0x06810681, \
0x07410741, 0x07410741, 0x07410741, 0x07410741, \
0x07410741, 0x07410741, 0x07410741, 0x07410741, \
0x07C107C1, 0x07C107C1, 0x07C107C1, 0x07C107C1, \
0x07C107C1, 0x07C107C1, 0x07C107C1, 0x07C107C1, \
0x17C517C5, 0x17C517C5, 0x17C517C5, 0x17C517C5, \
0x17C517C5, 0x17C517C5, 0x17C517C5, 0x17C517C5, \
0x1FC71FC7, 0x1FC71FC7, 0x1FC71FC7, 0x1FC71FC7, \
0x1FC71FC7, 0x1FC71FC7, 0x1FC71FC7, 0x1FC71FC7, \
0x27C927C9, 0x27C927C9, 0x27C927C9, 0x27C927C9, \
0x27C927C9, 0x27C927C9, 0x27C927C9, 0x27C927C9, \
0x37CD37CD, 0x37CD37CD, 0x37CD37CD, 0x37CD37CD, \
0x37CD37CD, 0x37CD37CD, 0x37CD37CD, 0x37CD37CD, \
0x47D147D1, 0x47D147D1, 0x47D147D1, 0x47D147D1, \
0x47D147D1, 0x47D147D1, 0x47D147D1, 0x47D147D1, \
0x67D967D9, 0x67D967D9, 0x67D967D9, 0x67D967D9, \
0x67D967D9, 0x67D967D9, 0x67D967D9, 0x67D967D9, \
0x97E597E5, 0x97E597E5, 0x97E597E5, 0x97E597E5, \
0x97E597E5, 0x97E597E5, 0x97E597E5, 0x97E597E5, \
0xCFF3CFF3, 0xCFF3CFF3, 0xCFF3CFF3, 0xCFF3CFF3, \
0xCFF3CFF3, 0xCFF3CFF3, 0xCFF3CFF3, 0xCFF3CFF3, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
var_80A98F38: .word \
0x0000003C, 0x00000000, 0x0100FF00, 0xFFFFFFFF, \
0xFFCEFFE2, 0x00000000, 0xFF550200, 0xFFFFFFFF, \
0x0032FFE2, 0x00000000, 0x02AB0200, 0xFFFFFFFF
var_80A98F68: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80A98FE8
.word \
0xF5900000, 0x070D0340, 0xE6000000, 0x00000000, \
0xF3000000, 0x0707F400, 0xE7000000, 0x00000000, \
0xF5880400, 0x000D0340, 0xF2000000, 0x0003C03C, \
0xFC30B3FF, 0x5FFEDA38, 0xE200001C, 0x0C184B50, \
0xD9F0FBFF, 0x00000000, 0x01003006
.word var_80A98F38
.word 0x05000204, 0x00000000, 0xDF000000, 0x00000000
var_80A98FE8: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0000000E, 0x243D453A, 0x19040100, 0x00000000, \
0x0000001E, 0x4B7B776E, 0x4F310109, 0x04000000, \
0x00000930, 0x719ECBC6, 0x8868452D, 0x14000000, \
0x00031545, 0xAEDAF4F2, 0xC0A8805B, 0x2F0D0000, \
0x00082769, 0xD2F6FEFC, 0xF2E8BB8C, 0x4B200800, \
0x000A35B3, 0xF5FEFFFF, 0xFEFAD9A7, 0x66250A00, \
0x00093BBB, 0xFAFFFFFF, 0xFFFFF2B4, 0x6F330A00, \
0x000833B5, 0xF5FEFFFF, 0xFFFDECAE, 0x6E370B00, \
0x000B32AB, 0xEEFCFFFF, 0xFFF2D3A4, 0x752D0C00, \
0x000D2E75, 0xC0F2FEFC, 0xF9ECC192, 0x5C2B0C00, \
0x000C2A65, 0xB0E8EDE7, 0xF1E3A778, 0x4D210900, \
0x00001A3E, 0x6B8393A6, 0xC9C37C55, 0x2B0E0000, \
0x0000011F, 0x35465464, 0x6A644C29, 0x12000000, \
0x00000000, 0x00012029, 0x2E2C2218, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A990E8: .word \
0x00000000, 0x00000000, 0x00000800, 0x18001840, \
0x30404080, 0x28403080, 0x18400000, 0x00000000, \
0x00000000, 0x00001000, 0x20402840, 0x28403841, \
0x48814080, 0x28402040, 0x28400800, 0x00000000, \
0x00001000, 0x28402840, 0x28403041, 0x20413881, \
0x60C13841, 0x28412840, 0x28401840, 0x00000000, \
0x10001000, 0x28404080, 0x30412041, 0x40813841, \
0x30415881, 0x18411841, 0x38803080, 0x10000000, \
0x18401000, 0x18405081, 0x28411841, 0x40813881, \
0x48813881, 0x30814081, 0x28413080, 0x20400800, \
0x18401000, 0x20415081, 0x204158C1, 0x58C12841, \
0x58C140C1, 0x40C12881, 0x28812881, 0x28801840, \
0x10401000, 0x08011001, 0x104170C1, 0x58C18901, \
0x304138C1, 0x40C138C1, 0x20413081, 0x30801840, \
0x10400801, 0x08010801, 0x18412881, 0x40C12881, \
0x510191C1, 0x81C17981, 0x61415901, 0x514020C0, \
0x10000801, 0x20412041, 0x308148C1, 0x38C17181, \
0x61413081, 0x204140C1, 0x28814981, 0x310130C0, \
0x20402881, 0x38C138C1, 0x48C148C1, 0x30817981, \
0x208120C1, 0x28817181, 0x51013101, 0x18812080, \
0x30803081, 0x38C13081, 0x49016941, 0x51015101, \
0x40C14141, 0x49013081, 0x20813901, 0x30C11840, \
0x30802041, 0x18413081, 0x59412081, 0x20812881, \
0x28C15A01, 0x30C12881, 0x30C13901, 0x41012080, \
0x288040C0, 0x28817181, 0x49814141, 0x10413081, \
0x39414181, 0x49853901, 0x41033901, 0x390038C0, \
0x49005140, 0x49015181, 0x61C17243, 0x62475141, \
0x488161C5, 0x49834943, 0x31033902, 0x30C02080, \
0x40C040C0, 0x51405101, 0x514159C3, 0x628D5142, \
0x514148C3, 0x30C14142, 0x414230C0, 0x28C01840, \
0x20803080, 0x49005140, 0x59C259C4, 0x5A064902, \
0x514040C2, 0x38C030C2, 0x414230C2, 0x20801840
var_80A992E8: .word \
0x00230000, 0x00140000, 0x02630200, 0x007800FF, \
0x00000000, 0xFFD80000, 0x0100FF9A, 0x007800FF, \
0xFFDD0000, 0x00140000, 0xFF9D0200, 0x007800FF
var_80A99318: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD100000
.word var_80A990E8
.word \
0xF5100000, 0x070D0340, 0xE6000000, 0x00000000, \
0xF3000000, 0x070FF200, 0xE7000000, 0x00000000, \
0xF5100800, 0x000D0340, 0xF2000000, 0x0003C03C, \
0xFC121603, 0xFFFFFFF8, 0xE200001C, 0xC8113078, \
0xD9F3FBFF, 0x00000000, 0xD9FFFFFF, 0x00020000, \
0xFA000000, 0xFFFFFFFF, 0xDF000000, 0x00000000
var_80A99398: .word 0x01003006
.word var_80A992E8
.word 0x05000204, 0x00000000, 0xDF000000, 0x00000000
var_80A993B0: .word \
0x1113468A, 0xBCB98853, 0x22202452, 0x358ADE85, \
0x1124579B, 0xCB766653, 0x34511444, 0x4679DE84, \
0x422569BC, 0xD8644542, 0x25621454, 0x5569FDA6, \
0x43367ADE, 0xC7433331, 0x13511344, 0x457AEC85, \
0x43579BEF, 0xB6422210, 0x02211334, 0x568ADB75, \
0x4469ADFF, 0xB6322210, 0x01211235, 0x689ADA65, \
0x368ACEFF, 0xD8532221, 0x12432346, 0x79ABC954, \
0x49ACEFFF, 0xFD864445, 0x67876667, 0x8AACB864, \
0x8BCDFFFF, 0xFFEB879B, 0xA9AAAA98, 0x9ABB9788, \
0xCDDFFFFF, 0xFFFECAB9, 0x66667AB9, 0x9BC966AA, \
0xDDDFFFFF, 0xEFFDDBA7, 0x555668CA, 0xABA869BC, \
0xBBDFFFFF, 0xEDECBB96, 0x54788ADB, 0xBCA769CC, \
0xABCDEFFF, 0xEDDBAA95, 0x45ABCDDD, 0xDC98889A, \
0x8AAABDFF, 0xFECBA995, 0x47B9ACDE, 0xEC888779, \
0x9A989ADF, 0xEDBA9896, 0x48A9ACEF, 0xFB878677, \
0x9A9878BE, 0xDCBA8888, 0x6ABBBDEF, 0xFB766567, \
0x8A87669E, 0xBBBA797A, 0xABDDDEFF, 0xFA643457, \
0x7987658C, 0xAAB96979, 0xCBACEFFF, 0xFA632347, \
0x6877658C, 0xA9B959AA, 0xC978DFFF, 0xFA632457, \
0x6555559C, 0xAABA47AB, 0xA635BFFF, 0xFD843455, \
0x432347AC, 0xBBB94356, 0x5214BFFF, 0xFFB75544, \
0x44224ACC, 0xBBA74223, 0x21029FFF, 0xFFFC8655, \
0x74225CBA, 0xBA853212, 0x11106DFF, 0xFFFFCA98, \
0x95228B88, 0x97532212, 0x11312AFF, 0xFFFFFEDC, \
0xA965A976, 0x64332113, 0x315405EF, 0xFFCEFFED, \
0xCA87B865, 0x53432113, 0x216612DF, 0xFD9BEFED, \
0xBA979965, 0x43441211, 0x104630CF, 0xFD77BDDD, \
0x87656999, 0x63331441, 0x001340BF, 0xFF86779B, \
0x52233569, 0xA52239A6, 0x200031AF, 0xFFB64567, \
0x32111236, 0xA7216EFD, 0x6010226F, 0xFFD63354, \
0x43212235, 0xA834AFFF, 0x9131325F, 0xFFF72234, \
0x33222246, 0xBA89EFFF, 0xB131233D, 0xFFF71133, \
0x11254348, 0xCADEFFFF, 0xC1213409, 0xFFF61135, \
0x1158645A, 0x9AEDEFFF, 0xD1112306, 0xEFE41134, \
0x415A856B, 0x8AEEFFFF, 0xF3111203, 0xADA22234, \
0x536BA88C, 0x8AFFFFFF, 0xF3010002, 0x55312135, \
0x546BBBCD, 0xABFFFFDE, 0xF6010002, 0x21243235, \
0x665ABCED, 0xDDEFFEBD, 0xF6010012, 0x11595245, \
0x765ACDEE, 0xFFFFFECE, 0xF4010011, 0x126A8346, \
0x8658BCDE, 0xFFFFFFFF, 0xE3010000, 0x12498457, \
0x76579BCD, 0xEFFFFFFF, 0x81000121, 0x11268577, \
0x77679BCE, 0xEFFFFFFE, 0x61002442, 0x13358687, \
0x7879ABDC, 0xBDFFFFFE, 0x73224653, 0x14449777, \
0x8889BDEB, 0x9CFFFFFF, 0xDA878753, 0x2445A788, \
0x889ACEFA, 0x7AFFFFFF, 0xFFFEB742, 0x2337B888, \
0x88ABDFE8, 0x67EFFFFF, 0xFEDCD743, 0x2349B998, \
0x89BCDEC6, 0x45CFFFFE, 0xDCCBC633, 0x346AAAA8, \
0x7BBA9974, 0x239EFFFF, 0xDCBAB434, 0x57A98BC9, \
0x8A976431, 0x125AFFFF, 0xDBAA9335, 0x9B966ACB, \
0xC9864210, 0x0138EFFF, 0xDA9A8347, 0xA86569DC, \
0xDA653100, 0x0026DFFE, 0xCA8A8448, 0xA74469DE, \
0xEA542100, 0x0024CFFE, 0xC98A8457, 0xA8557CEF, \
0xDA532000, 0x0125BFFD, 0xB978A656, 0x9A77AEFF, \
0xB9641000, 0x0135AEED, 0xA878A866, 0x8B99CFFF, \
0xCA642100, 0x1246ACCB, 0xA878A977, 0x9CBADFFF, \
0xCA642111, 0x2356ABAA, 0x9888AA87, 0x9CCCFFFF, \
0xB8642322, 0x2468AA97, 0x77899B99, 0xADDEFFFF, \
0xA6533543, 0x3579B976, 0x66789BAA, 0xCEEFFFFD, \
0x74433653, 0x568AC975, 0x44579BCC, 0xDDEFFFEB, \
0x42334654, 0x67ABC975, 0x32248AAA, 0xABEFFEC7, \
0x52335555, 0x79BCA765, 0x43127A86, 0x68DFEC95, \
0x53345556, 0x8ACB9765, 0x44216963, 0x37BFFC85, \
0x23445568, 0xACDCA754, 0x43205852, 0x25AEFD73, \
0x12345569, 0xBCCCA753, 0x22104631, 0x249DFE84
var_80A997B0: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000010, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00001100, 0x00000000, \
0x00000010, 0x00001223, 0x20012112, 0x22100000, \
0x00001001, 0x22112454, 0x41232135, 0x65100000, \
0x00001345, 0x42035677, 0x64465578, 0x87420000, \
0x00000476, 0x31147999, 0x768869BB, 0xA8730000, \
0x00000476, 0x32147AAA, 0x87998ACC, 0xCA840000, \
0x00000587, 0x532479AA, 0xA999ACDE, 0xDA740000, \
0x00002588, 0x765568AB, 0xBABBBCDD, 0xB8641000, \
0x00002578, 0x999889BB, 0xCBBBBBBA, 0x86531000, \
0x00002567, 0x9CCBBCCC, 0xDCBBBCA8, 0x78643200, \
0x00013567, 0x9DDCCCDE, 0xDCBBCDCB, 0xA9864310, \
0x00004678, 0xBDDCCDFE, 0xEDCDEDCD, 0xCA965430, \
0x0002799A, 0xBDDBDEFE, 0xFFEEECCD, 0xBA974420, \
0x01149BCA, 0xBEFEDFFF, 0xFFFFECDD, 0xCA975310, \
0x0249CDDD, 0xCEFEFFFF, 0xFFFFFFED, 0xC9775310, \
0x0379DDEE, 0xEFFFFFFF, 0xFFFFFFDC, 0xB8555300, \
0x027BCEFF, 0xFFFFFFFF, 0xFFFFEDCB, 0x97544300, \
0x016ABCEF, 0xFFFFFFFF, 0xFFFFFDCA, 0x87553100, \
0x01478ADF, 0xFFFFFFFF, 0xFFFFFECB, 0xB9642110, \
0x00257ABD, 0xDEFFFFFF, 0xFFFFFECC, 0xDB853100, \
0x001369AB, 0xDFFFFFFF, 0xFFFFFEEE, 0xCA853100, \
0x000159BC, 0xFFFFFFFF, 0xFFFFFFFE, 0xDA853100, \
0x000037AD, 0xFFEFFFFF, 0xFFFFFEDD, 0xDB863000, \
0x0000158B, 0xFECEFFFF, 0xFFFFEA9A, 0xA9863000, \
0x00001579, 0xCCBCEFFF, 0xFFFDB778, 0x66763000, \
0x00000578, 0xA9AACEFF, 0xFEEB7456, 0x55651000, \
0x00000256, 0x77879CDE, 0xEDC74322, 0x33320000, \
0x00000013, 0x33345689, 0xA9511100, 0x01100000, \
0x00000001, 0x00000002, 0x20000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A999B0: .word \
0xFFE2FFEE, 0x00000000, 0xFE000466, 0xFFFFFFFF, \
0x001EFFEE, 0x00000000, 0x06000444, 0xFFFFFFFF, \
0x00000021, 0x00000000, 0x0200FD9A, 0xFFFFFFFF
var_80A999E0: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80A993B0
.word \
0xF5900000, 0x0701BC50, 0xE6000000, 0x00000000, \
0xF3000000, 0x071FF400, 0xE7000000, 0x00000000, \
0xF5800400, 0x0001BC50, 0xF2000000, 0x0007C0FC, \
0xFD900000
.word var_80A997B0
.word \
0xF5900100, 0x07094250, 0xE6000000, 0x00000000, \
0xF3000000, 0x070FF400, 0xE7000000, 0x00000000, \
0xF5800500, 0x01094250, 0xF2000000, 0x0107C07C, \
0xFC161A60, 0xF50D657F, 0xE200001C, 0x0C184B50, \
0xD9F0FFFF, 0x00000000, 0xDF000000, 0x00000000
var_80A99A88: .word 0xDE000000, 0x08000000, 0x01003006
.word var_80A999B0
.word 0x05000204, 0x00000000, 0xDF000000, 0x00000000
var_80A99AA8: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x02000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x02010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x03040200, 0x00000000, 0x00000000, \
0x00000001, 0x00000104, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x04070401, 0x00000001, 0x00010101, \
0x00010102, 0x01000105, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000102, 0x04080703, 0x01010101, 0x01030303, \
0x03030304, 0x01010305, 0x01000100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000103, 0x05080A06, 0x03030303, 0x03040404, \
0x04040405, 0x03020604, 0x01010100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000104, 0x05080C0B, 0x06040404, 0x05060606, \
0x05060707, 0x05060904, 0x02020200, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000101, 0x01000000, 0x00000000, \
0x00000204, 0x07090E11, 0x0A060607, 0x08080908, \
0x08080A09, 0x060A0C05, 0x04050301, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00010407, 0x07040200, 0x00010101, \
0x01010304, 0x07090E13, 0x100A0809, 0x0B0C0D0B, \
0x0B0C0D0C, 0x0A100D07, 0x07070401, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x0001060C, 0x0F0E0A04, 0x01010303, \
0x04030405, 0x080C0F15, 0x17110D0D, 0x0F101110, \
0x0F11120F, 0x0E150C09, 0x0A080403, 0x01010000, \
0x01010102, 0x01010000, 0x00000000, 0x00000000, \
0x00000000, 0x0001040B, 0x1317160F, 0x09040404, \
0x05050607, 0x090C1016, 0x1D191412, 0x14171816, \
0x15171915, 0x15190F0D, 0x0C080504, 0x03030201, \
0x02040404, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000106, 0x101A201E, 0x170D0805, \
0x0708090A, 0x0C0E1318, 0x22241C1A, 0x1A1E1F1D, \
0x1C1E201B, 0x201B1513, 0x0F0B0806, 0x05050505, \
0x06070704, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000002, 0x08121E27, 0x281F140A, \
0x08090B0C, 0x0E11171D, 0x26302823, 0x24282927, \
0x26292A26, 0x32211C1A, 0x130E0B08, 0x07070809, \
0x0A0A0602, 0x00010203, 0x03010000, 0x00000000, \
0x00000000, 0x00000000, 0x0208121F, 0x2C2F281B, \
0x100D0F11, 0x12151A22, 0x2B383930, 0x30333635, \
0x34383633, 0x3D2A261F, 0x19130F0D, 0x0C0C0E0F, \
0x0C080402, 0x03040606, 0x03010000, 0x00000000, \
0x00000000, 0x00000000, 0x0002070F, 0x1D2D3734, \
0x27181316, 0x191C2028, 0x33404C41, 0x3E424646, \
0x45484443, 0x40353126, 0x1F191513, 0x12141411, \
0x0A060507, 0x0A0A0804, 0x02000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010306, 0x0E1C3140, \
0x4133221C, 0x1F25282F, 0x3A495A58, 0x5154595A, \
0x595C575D, 0x4C433A2E, 0x26211D1D, 0x1D1D160E, \
0x0A0A0C0E, 0x0D090502, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010304, 0x070D1B2E, \
0x44504733, 0x2A2E343A, 0x45556875, 0x6B6B7172, \
0x72746D70, 0x5E55473B, 0x312C2A2B, 0x281F1510, \
0x1114130E, 0x09050200, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01020304, 0x07090E19, \
0x2F4C615D, 0x4A3E4149, 0x5362778E, 0x89868C90, \
0x8F918881, 0x75665649, 0x413D3C37, 0x2B1F1A1C, \
0x1D18110A, 0x06030100, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01030405, 0x07090C11, \
0x1B2F5173, 0x7865575B, 0x667489A1, 0xABA6ABB0, \
0xAFB0A99B, 0x8F7B695C, 0x57544B3A, 0x2E2B2B26, \
0x1C120A06, 0x03010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01030505, 0x080B0E12, \
0x17203356, 0x80948A79, 0x7C8B9EB7, 0xCCCACFD5, \
0xD3D1CCBB, 0xA8928278, 0x72655145, 0x423D3020, \
0x140D0704, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x02040506, 0x080C1014, \
0x19202B3C, 0x5D8CB3B0, 0xA2A6B8D0, 0xE9EEF1F6, \
0xF5F4F2DF, 0xC5B0A398, 0x856F625D, 0x4D382619, \
0x100A0603, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000101, 0x03040708, 0x090C1117, \
0x1D242F3C, 0x4D6B9ACA, 0xDBCFD8E9, 0xFAFDFEFF, \
0xFEFEFEF6, 0xE3D4C7B0, 0x9888775E, 0x422E2015, \
0x0F090503, 0x01010000, 0x00000000, 0x00000000, \
0x00000000, 0x01010304, 0x05060809, 0x0C0F1319, \
0x20293442, 0x526783AE, 0xE0F5FAFC, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFBF5E1CA, 0xB3926F52, 0x3A2A1E15, \
0x0F0A0604, 0x03010000, 0x00000000, 0x00000000, \
0x00000001, 0x03040507, 0x08080B0C, 0x0F12161C, \
0x232D3A48, 0x5B708AA8, 0xD0F7FFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFF7D9, 0xAF88684F, 0x3C2C2118, \
0x110C0805, 0x04010100, 0x00000000, 0x00000000, \
0x00000001, 0x03040708, 0x0A0B0D10, 0x14181D24, \
0x2C364250, 0x647A95B3, 0xD5F6FEFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFF7D2, 0xA9886C55, 0x4131251C, \
0x15100C09, 0x07050403, 0x01010000, 0x00000000, \
0x00000001, 0x03040608, 0x0A0C0F12, 0x161B222A, \
0x33404E5F, 0x7389A3C1, 0xE3FBFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFF8D8, 0xB4937760, 0x4C3C3027, \
0x1E18130F, 0x0C0A0806, 0x04030201, 0x00000000, \
0x00000000, 0x01030405, 0x08090D10, 0x14192029, \
0x33405064, 0x7A94B3D3, 0xF3FEFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFCE8, 0xC7A88B72, 0x5C4A3B2F, \
0x241C1510, 0x0C090705, 0x03010100, 0x00000000, \
0x00000001, 0x02030405, 0x080A0D10, 0x14191F28, \
0x323E4E61, 0x7892B1D2, 0xF2FEFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFCE8, 0xC5A28469, 0x52403125, \
0x1B140E0A, 0x07040302, 0x01000000, 0x00000000, \
0x00000103, 0x0407080A, 0x0E101417, 0x1C222931, \
0x3C49596C, 0x819AB6D5, 0xF2FEFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFDE8, 0xC6A4866B, 0x55423327, \
0x1C150E0B, 0x08050301, 0x00000000, 0x00000000, \
0x00000205, 0x06080A0C, 0x0F121417, 0x1A1F242B, \
0x333D4A5A, 0x6D85A1C1, 0xE3FBFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFF6D8, 0xB5967C64, 0x51403227, \
0x1D16100C, 0x09060403, 0x01000000, 0x00000000, \
0x00000103, 0x04050708, 0x090B0C0E, 0x11141921, \
0x28323E4E, 0x627A96B7, 0xDEFBFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFDEDCA, 0xA6876D56, 0x43352920, \
0x19130E0B, 0x08050403, 0x01000000, 0x00000000, \
0x00000001, 0x01030304, 0x0507080A, 0x0C10151B, \
0x222D3A49, 0x5D7798BF, 0xE4FBFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFCEAC1, 0x9A7D644E, 0x3B2D2119, \
0x120D0906, 0x05040201, 0x00000000, 0x00000000, \
0x00000000, 0x00010102, 0x03050708, 0x0B0E1319, \
0x202B384A, 0x6180A3C0, 0xD4EAF7FC, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFBF9EFD2, 0x9E755A46, 0x35281D15, \
0x0F0A0604, 0x03020000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x03040708, 0x0A0C1118, \
0x212D3C52, 0x6E8694A7, 0xC4D5DAE8, 0xFAFFFFFE, \
0xFFFDFEF8, 0xE3D0C8D5, 0xBE87593F, 0x2F231A13, \
0x0D090503, 0x01010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x02040507, 0x0A0D131B, \
0x2635485B, 0x666D7E9A, 0xABADB7CD, 0xEEF7F7F6, \
0xF7F1EEE3, 0xC7B09EA1, 0xAEA27347, 0x2D1F1610, \
0x0B080503, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01030508, 0x0C101722, \
0x303E4849, 0x4E627A84, 0x838A9BB6, 0xE2D7D6D4, \
0xD5CECACA, 0xAF958274, 0x75848565, 0x3C22150E, \
0x09070403, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x0304070A, 0x0E16202C, \
0x3434333B, 0x4D606461, 0x657285A5, 0xD3B0B0AF, \
0xB1AAA5AD, 0x997F6B5D, 0x514F616B, 0x5A371D0F, \
0x08050301, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x03060A0E, 0x161E2527, \
0x25242C3E, 0x4B4C4749, 0x525E7299, 0xB390908F, \
0x908A8387, 0x846E584A, 0x40363646, 0x554D341C, \
0x0C050201, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000103, 0x060A1016, 0x1C1D1B17, \
0x1A24333B, 0x39333339, 0x4350699A, 0x8D737472, \
0x736E6767, 0x6E5E4C3D, 0x322B2424, 0x32424331, \
0x1A0B0401, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000206, 0x0B0F1517, 0x15121013, \
0x1D292E2A, 0x2423282F, 0x37456790, 0x665A5A59, \
0x5A58514F, 0x56504032, 0x27211D18, 0x17233135, \
0x2B1A0B03, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00010409, 0x0F11110E, 0x0B0C0F18, \
0x2123201A, 0x171B1F26, 0x2E3F6975, 0x4A474645, \
0x46443E3C, 0x3F433529, 0x20191512, 0x0E0F1824, \
0x2B26190C, 0x04010000, 0x00000000, 0x00000000, \
0x00000000, 0x0003070A, 0x0C0B0907, 0x080E151B, \
0x1C171311, 0x1115191E, 0x27406A53, 0x36393534, \
0x3534302D, 0x2E352D23, 0x1B140F0D, 0x0B09090F, \
0x1B212017, 0x0C040100, 0x00000000, 0x00000000, \
0x00000000, 0x01030606, 0x06050506, 0x0C121615, \
0x120D0B0B, 0x0D111519, 0x24445C36, 0x282D2827, \
0x28282422, 0x2127271D, 0x15100B09, 0x08070505, \
0x0A121A1A, 0x150C0501, 0x00000000, 0x00000000, \
0x00000000, 0x00010201, 0x01020409, 0x0F12110D, \
0x0A080809, 0x0C0D1116, 0x26494422, 0x1E221D1D, \
0x1E1E1A18, 0x171B2119, 0x120D0906, 0x05050402, \
0x02060D13, 0x15110B04, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x0003080D, 0x0E0C0A07, \
0x05050507, 0x090A0E16, 0x2E482A15, 0x181A1615, \
0x17171411, 0x10121A17, 0x100B0704, 0x03030301, \
0x00010308, 0x0D0F0D07, 0x02000000, 0x00000000, \
0x00000000, 0x00000000, 0x0105080A, 0x09070503, \
0x03030405, 0x06080D19, 0x353E180E, 0x1212100F, \
0x10110F0D, 0x0C0C1114, 0x0E090603, 0x01010000, \
0x00000001, 0x04080A08, 0x04010000, 0x00000000, \
0x00000000, 0x00000000, 0x02050605, 0x04030101, \
0x01010304, 0x05070D1E, 0x392D0E0B, 0x0E0D0B0B, \
0x0C0D0B09, 0x08080A11, 0x0D080503, 0x01000000, \
0x00000000, 0x01020405, 0x03010000, 0x00000000, \
0x00000000, 0x00000000, 0x01020302, 0x01000000, \
0x00000103, 0x04070E23, 0x341B0809, 0x0B090808, \
0x08090705, 0x0505060C, 0x0C070503, 0x00000000, \
0x00000000, 0x00000101, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x03071227, 0x280F0608, 0x09070605, \
0x06070504, 0x03030407, 0x0A070401, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x03091827, 0x19070407, 0x07050404, \
0x04050403, 0x01010104, 0x07070301, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x030B1D23, 0x0D020204, 0x04030303, \
0x03040301, 0x00000001, 0x04060301, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x040F1E1C, 0x07010103, 0x02010001, \
0x01010100, 0x00000000, 0x02040300, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x06121B11, 0x03000001, 0x01000000, \
0x00000000, 0x00000000, 0x00010100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x08131409, 0x01000001, 0x00000000, \
0x00000000, 0x00000000, 0x00000100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x08110D03, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x080D0601, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x06080200, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x02020000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A9AAA8: .word \
0xFFEFFFEF, 0x00000000, 0x00000800, 0xFFFFFFFF, \
0x0011FFEF, 0x00000000, 0x08000800, 0xFFFFFFFF, \
0x00110011, 0x00000000, 0x08000000, 0xFFFFFFFF, \
0xFFEF0011, 0x00000000, 0x00000000, 0xFFFFFFFF
var_80A9AAE8: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80A99AA8
.word \
0xF5900000, 0x07098260, 0xE6000000, 0x00000000, \
0xF3000000, 0x077FF100, 0xE7000000, 0x00000000, \
0xF5881000, 0x00098260, 0xF2000000, 0x000FC0FC, \
0xFC3097FF, 0x5FFEFE38, 0xE200001C, 0x0C184B50, \
0xD9F0FBFF, 0x00000000, 0x01004008
.word var_80A9AAA8
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000
var_80A9AB68: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000111, 0x11100000, 0x00000000, \
0x00000000, 0x00111222, 0x22211100, 0x00000000, \
0x00000000, 0x11223444, 0x44432211, 0x00000000, \
0x00000001, 0x22345566, 0x66554322, 0x10000000, \
0x00000012, 0x34566778, 0x87766543, 0x21000000, \
0x00000123, 0x45678999, 0x99987654, 0x32100000, \
0x00001234, 0x6789AABB, 0xBBAA9876, 0x43210000, \
0x00001345, 0x789BBCDD, 0xDDCBB987, 0x54310000, \
0x00012356, 0x89BCDEEE, 0xEEEDCB98, 0x65321000, \
0x00013467, 0x9BCDEFFF, 0xFFFEDCB9, 0x76431000, \
0x00023568, 0xABDEFFFF, 0xFFFFEDBA, 0x86532000, \
0x00124579, 0xBCEFFFFF, 0xFFFFFECB, 0x97542100, \
0x00124679, 0xBDEFFFFF, 0xFFFFFEDB, 0x97642100, \
0x00134689, 0xBDEFFFFF, 0xFFFFFEDB, 0x98643100, \
0x00134689, 0xBDEFFFFF, 0xFFFFFEDB, 0x98643100, \
0x00124679, 0xBDEFFFFF, 0xFFFFFEDB, 0x97642100, \
0x00124579, 0xBCEFFFFF, 0xFFFFFECB, 0x97542100, \
0x00023568, 0xACDEFFFF, 0xFFFFEDCA, 0x86532000, \
0x00012467, 0x9BCDEFFF, 0xFFFEDCB9, 0x76421000, \
0x00012356, 0x89BCDEEE, 0xEEEDCB98, 0x65321000, \
0x00001345, 0x789BBCDD, 0xDDCBB987, 0x54310000, \
0x00001234, 0x6789ABBB, 0xBBBA9876, 0x43210000, \
0x00000123, 0x45678999, 0x99987654, 0x32100000, \
0x00000012, 0x34566778, 0x87766543, 0x21000000, \
0x00000001, 0x23345566, 0x66554332, 0x10000000, \
0x00000000, 0x11233444, 0x44433211, 0x00000000, \
0x00000000, 0x00112223, 0x32221100, 0x00000000, \
0x00000000, 0x00000111, 0x11100000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A9AD68: .word \
0xFFEC0000, 0x000A0000, 0xFE000400, 0xFFFFFFFF, \
0x00140000, 0x000A0000, 0x06000400, 0xFFFFFFFF, \
0x00000000, 0xFFE40000, 0x0200FC66, 0xFFFFFFFF
var_80A9AD98: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80A9AB68
.word \
0xF5900000, 0x07094250, 0xE6000000, 0x00000000, \
0xF3000000, 0x070FF400, 0xE7000000, 0x00000000, \
0xF5800400, 0x00094250, 0xF2000000, 0x0007C07C, \
0xFC1197FF, 0xFFFFFE38, 0xE200001C, 0x0C184F50, \
0xD9F0FFFF, 0x00000000, 0xD9FFFFFF, 0x00000400, \
0x01003006
.word var_80A9AD68
.word 0x05000204, 0x00000000, 0xDF000000, 0x00000000
var_80A9AE20: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00001050, \
0x50100000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00003080, \
0x80300000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00106090, \
0x90601000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x002080A0, \
0xA0802000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00001000, 0x003090C0, \
0xC0903000, 0x00100000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00103020, 0x1050A0C0, \
0xC0A05010, 0x20301000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x10304040, 0x3060A0D0, \
0xD0A06030, 0x40403010, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x20405060, 0x6070B0E0, \
0xE0B07060, 0x60504020, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x30407060, 0x6080C0F0, \
0xF0C08060, 0x60704030, 0x00000000, 0x00000000, \
0x00000000, 0x00000010, 0x30509070, 0x6080C0F0, \
0xF0C08060, 0x70905030, 0x10000000, 0x00000000, \
0x00000000, 0x00000010, 0x3070B090, 0x7080D0F0, \
0xF0D08070, 0x90B07030, 0x10000000, 0x00000000, \
0x00000000, 0x00000010, 0x4080C0A0, 0x7090E0F0, \
0xF0E09070, 0xA0C08040, 0x10000000, 0x00000000, \
0x00000000, 0x00000020, 0x50A0C0A0, 0x80A0F0F0, \
0xF0F0A080, 0xA0C0A050, 0x20000000, 0x00000000, \
0x00000000, 0x00000030, 0x60B0C0C0, 0x90B0F0F0, \
0xF0F0B090, 0xC0C0B060, 0x30000000, 0x00000000, \
0x00000000, 0x00001040, 0x70B0D0E0, 0xC0E0F0F0, \
0xF0F0E0C0, 0xE0D0B070, 0x40100000, 0x00000000, \
0x00000000, 0x00001040, 0x80C0E0E0, 0xE0F0F0F0, \
0xF0F0F0E0, 0xE0E0C080, 0x40100000, 0x00000000, \
0x00000000, 0x00002040, 0x80C0E0E0, 0xF0F0F0F0, \
0xF0F0F0F0, 0xE0E0C080, 0x40200000, 0x00000000, \
0x00000000, 0x00104070, 0xA0D0E0F0, 0xF0F0F0F0, \
0xF0F0F0F0, 0xF0E0D0A0, 0x70401000, 0x00000000, \
0x00000000, 0x10305080, 0xC0E0F0F0, 0xF0F0F0F0, \
0xF0F0F0F0, 0xF0F0E0C0, 0x80503010, 0x00000000, \
0x00000000, 0x204060B0, 0xE0F0F0F0, 0xF0F0F0F0, \
0xF0F0F0F0, 0xF0F0F0E0, 0xB0604020, 0x00000000, \
0x00000010, 0x305090E0, 0xF0E0F0F0, 0xF0E0F0F0, \
0xF0F0E0F0, 0xF0F0E0F0, 0xE0905030, 0x10000000, \
0x00000020, 0x4070C0F0, 0xD0C0E0F0, 0xD0D0E0F0, \
0xF0E0D0D0, 0xF0E0C0D0, 0xF0C07040, 0x20000000, \
0x00000030, 0x50A0E0D0, 0xB0A0D0E0, 0xC0B0E0E0, \
0xE0E0B0C0, 0xE0D0A0B0, 0xD0E0A050, 0x30000000, \
0x00001030, 0x70D0E0B0, 0xA0A0D0D0, 0xA090D0E0, \
0xE0D090A0, 0xD0D0A0A0, 0xB0E0D070, 0x30100000, \
0x00002040, 0xA0E0C080, 0x7090C0C0, 0x8070B0E0, \
0xE0B07080, 0xC0C09070, 0x80C0E0A0, 0x40200000, \
0x00003070, 0xD0C08050, 0x4070B0B0, 0x705080B0, \
0xB0805070, 0xB0B07040, 0x5080C0D0, 0x70300000, \
0x001050A0, 0xB0704020, 0x305090A0, 0x60406090, \
0x90604060, 0xA0905030, 0x204070B0, 0xA0501000, \
0x002070A0, 0x70402000, 0x10407090, 0x50203070, \
0x70302050, 0x90704010, 0x00204070, 0xA0702000, \
0x00309060, 0x30100000, 0x00206070, 0x40102030, \
0x30201040, 0x70602000, 0x00001030, 0x60903000, \
0x00406020, 0x10100000, 0x00002040, 0x10001010, \
0x10100010, 0x40200000, 0x00001010, 0x20604000, \
0x00100000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00001000
var_80A9B220: .word \
0x00000000, 0x00140000, 0x0200FF34, 0x007800FF, \
0xFFCE0000, 0xFFA80000, 0xFF800400, 0x007800FF, \
0x00320000, 0xFFA80000, 0x04800400, 0x007800FF
var_80A9B250: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80A9AE20
.word \
0xF5900000, 0x07098260, 0xE6000000, 0x00000000, \
0xF3000000, 0x071FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x00098260, 0xF2000000, 0x0007C07C, \
0xFC3097FF, 0xFFFFFE38, 0xE200001C, 0x0C184F50, \
0xD9F0FBFF, 0x00000000, 0x01003006
.word var_80A9B220
.word 0x05000204, 0x00000000, 0xDF000000, 0x00000000

.section .rodata

var_80A9B2D0: .word 0x40C90FDB
var_80A9B2D4: .word 0x40C90FDB
var_80A9B2D8: .word 0x3E19999A
var_80A9B2DC: .word 0x3ECCCCCD
var_80A9B2E0: .word 0x38000100
var_80A9B2E4: .word 0x40C90FDB
var_80A9B2E8: .word 0x4622F983
var_80A9B2EC: .word 0x4622F983
var_80A9B2F0: .word 0x3E4CCCCD
var_80A9B2F4: .word 0x3FD33333
var_80A9B2F8: .word 0x3E99999A
var_80A9B2FC: .word 0x3E99999A
var_80A9B300: .word 0x3E19999A
var_80A9B304: .word 0x3D99999A
var_80A9B308: .word 0x3D4CCCCD
var_80A9B30C: .word 0x3FA66666
var_80A9B310: .word 0x3F933333
var_80A9B314: .word 0x3EB33333
var_80A9B318: .word 0x40490FDB
var_80A9B31C: .word 0x40490FDB
var_80A9B320: .word 0x40490FDB
var_80A9B324: .word 0x3D4CCCCD
var_80A9B328: .word 0x3EB33333, 0x00000000

.bss

var_80A9B540: .space 0x2A30
