#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B77570:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	jal     func_80063684              ## coss?
	lh      a0, 0x002E($sp)            
	swc1    $f0, 0x0020($sp)           
	jal     func_800636C4              ## sins?
	lh      a0, 0x002E($sp)            
	lwc1    $f4, 0x0020($sp)           
	lwc1    $f6, 0x0000(s0)            ## 00000000
	lwc1    $f10, 0x0008(s0)           ## 00000008
	lh      a0, 0x002E($sp)            
	mul.s   $f8, $f4, $f6              
	nop
	mul.s   $f16, $f0, $f10            
	add.s   $f18, $f16, $f8            
	jal     func_800636C4              ## sins?
	swc1    $f18, 0x0024($sp)          
	swc1    $f0, 0x0020($sp)           
	jal     func_80063684              ## coss?
	lh      a0, 0x002E($sp)            
	lwc1    $f4, 0x0020($sp)           
	lwc1    $f10, 0x0000(s0)           ## 00000000
	lwc1    $f8, 0x0008(s0)            ## 00000008
	neg.s   $f6, $f4                   
	mul.s   $f16, $f6, $f10            
	nop
	mul.s   $f18, $f0, $f8             
	add.s   $f4, $f18, $f16            
	swc1    $f4, 0x0008(s0)            ## 00000008
	lwc1    $f6, 0x0024($sp)           
	swc1    $f6, 0x0000(s0)            ## 00000000
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80B77608:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	mtc1    $zero, $f0                 ## $f0 = 0.00
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f4                   ## $f4 = 30.00
	swc1    $f0, 0x0020($sp)           
	swc1    $f0, 0x001C($sp)           
	swc1    $f4, 0x0024($sp)           
	lh      a1, 0x00B6(a2)             ## 000000B6
	sw      a2, 0x0028($sp)            
	jal     func_80B77570              
	addiu   a0, $sp, 0x001C            ## a0 = FFFFFFF4
	lw      a2, 0x0028($sp)            
	lwc1    $f8, 0x001C($sp)           
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lwc1    $f6, 0x0024(a2)            ## 00000024
	lwc1    $f18, 0x0028(a2)           ## 00000028
	lui     $at, 0xC1A0                ## $at = C1A00000
	add.s   $f10, $f6, $f8             
	lwc1    $f6, 0x002C(a2)            ## 0000002C
	addiu   a0, $sp, 0x001C            ## a0 = FFFFFFF4
	trunc.w.s $f4, $f18                  
	mtc1    $at, $f18                  ## $f18 = -20.00
	trunc.w.s $f16, $f10                 
	mfc1    t9, $f4                    
	mfc1    t7, $f16                   
	sh      t9, 0x0184(a2)             ## 00000184
	sh      t7, 0x0182(a2)             ## 00000182
	lwc1    $f8, 0x0024($sp)           
	add.s   $f10, $f6, $f8             
	trunc.w.s $f16, $f10                 
	mfc1    t1, $f16                   
	nop
	sh      t1, 0x0186(a2)             ## 00000186
	swc1    $f0, 0x001C($sp)           
	swc1    $f0, 0x0020($sp)           
	swc1    $f18, 0x0024($sp)          
	jal     func_80B77570              
	lh      a1, 0x00B6(a2)             ## 000000B6
	lw      a2, 0x0028($sp)            
	lwc1    $f6, 0x001C($sp)           
	lwc1    $f4, 0x0024(a2)            ## 00000024
	lwc1    $f16, 0x0028(a2)           ## 00000028
	add.s   $f8, $f4, $f6              
	lwc1    $f4, 0x002C(a2)            ## 0000002C
	trunc.w.s $f18, $f16                 
	trunc.w.s $f10, $f8                  
	mfc1    t5, $f18                   
	mfc1    t3, $f10                   
	sh      t5, 0x01D0(a2)             ## 000001D0
	sh      t3, 0x01CE(a2)             ## 000001CE
	lwc1    $f6, 0x0024($sp)           
	add.s   $f8, $f4, $f6              
	trunc.w.s $f10, $f8                  
	mfc1    t7, $f10                   
	nop
	sh      t7, 0x01D2(a2)             ## 000001D2
	lw      $ra, 0x0014($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80B776FC:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lui     $at, 0x4264                ## $at = 42640000
	mtc1    $at, $f6                   ## $f6 = 57.00
	lui     $at, 0xC210                ## $at = C2100000
	mtc1    $at, $f8                   ## $f8 = -36.00
	mtc1    $zero, $f4                 ## $f4 = 0.00
	swc1    $f6, 0x0020($sp)           
	swc1    $f8, 0x0024($sp)           
	swc1    $f4, 0x001C($sp)           
	lh      a1, 0x00B6(a2)             ## 000000B6
	sw      a2, 0x0028($sp)            
	jal     func_80B77570              
	addiu   a0, $sp, 0x001C            ## a0 = FFFFFFF4
	lw      a2, 0x0028($sp)            
	lwc1    $f16, 0x001C($sp)          
	lwc1    $f10, 0x0024(a2)           ## 00000024
	lwc1    $f4, 0x0028(a2)            ## 00000028
	add.s   $f18, $f10, $f16           
	lwc1    $f10, 0x002C(a2)           ## 0000002C
	swc1    $f18, 0x0024(a2)           ## 00000024
	lwc1    $f6, 0x0020($sp)           
	add.s   $f8, $f4, $f6              
	swc1    $f8, 0x0028(a2)            ## 00000028
	lwc1    $f16, 0x0024($sp)          
	add.s   $f18, $f10, $f16           
	swc1    $f18, 0x002C(a2)           ## 0000002C
	lw      $ra, 0x0014($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80B77778:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      s1, 0x0038($sp)            
	sw      s0, 0x0034($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x003C($sp)           
	lui     a2, 0x8002                 ## a2 = 80020000
	addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	jal     func_8001EC20              
	lui     a3, 0x4290                 ## a3 = 42900000
	lh      v0, 0x001C(s0)             ## 0000001C
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x01D4             ## a1 = 000001D4
	beq     v0, $zero, lbl_80B777D0    
	lui     a2, 0x0600                 ## a2 = 06000000
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beq     v0, $at, lbl_80B779C0      
	or      a0, s1, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B77B84 
	addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
lbl_80B777D0:
	addiu   t6, s0, 0x0218             ## t6 = 00000218
	addiu   t7, s0, 0x023C             ## t7 = 0000023C
	addiu   t8, $zero, 0x0006          ## t8 = 00000006
	sw      t8, 0x0018($sp)            
	sw      t7, 0x0014($sp)            
	sw      t6, 0x0010($sp)            
	addiu   a2, a2, 0x4010             ## a2 = 06004010
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_8008C788              
	sw      a1, 0x0040($sp)            
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x01CC             ## a1 = 060001CC
	jal     func_8008D2D4              
	lw      a0, 0x0040($sp)            
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	sw      a1, 0x0040($sp)            
	jal     func_8004AB7C              
	or      a0, s1, $zero              ## a0 = 00000000
	lui     a3, %hi(var_80B78870)      ## a3 = 80B80000
	lw      a1, 0x0040($sp)            
	addiu   a3, a3, %lo(var_80B78870)  ## a3 = 80B78870
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	addiu   a1, s0, 0x0188             ## a1 = 00000188
	sw      a1, 0x0040($sp)            
	jal     func_8004AB7C              
	or      a0, s1, $zero              ## a0 = 00000000
	lui     a3, %hi(var_80B78870)      ## a3 = 80B80000
	lw      a1, 0x0040($sp)            
	addiu   a3, a3, %lo(var_80B78870)  ## a3 = 80B78870
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	jal     func_80B77608              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     t9, %hi(func_80B780E8)     ## t9 = 80B80000
	addiu   t9, t9, %lo(func_80B780E8) ## t9 = 80B780E8
	sw      t9, 0x026C(s0)             ## 0000026C
	lh      t0, 0x00A4(s1)             ## 000000A4
	addiu   $at, $zero, 0x0034         ## $at = 00000034
	lui     v0, 0x8012                 ## v0 = 80120000
	bne     t0, $at, lbl_80B778BC      
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	lw      t1, 0x0004(v0)             ## 8011A5D4
	beql    t1, $zero, lbl_80B778A0    
	lhu     t2, 0x0ED6(v0)             ## 8011B4A6
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B77BA0 
	lw      $ra, 0x003C($sp)           
	lhu     t2, 0x0ED6(v0)             ## 00000ED6
lbl_80B778A0:
	andi    t3, t2, 0x4000             ## t3 = 00000000
	bnel    t3, $zero, lbl_80B778C0    
	lwc1    $f4, 0x0024(s0)            ## 00000024
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B77BA0 
	lw      $ra, 0x003C($sp)           
lbl_80B778BC:
	lwc1    $f4, 0x0024(s0)            ## 00000024
lbl_80B778C0:
	addiu   t5, $zero, 0x0001          ## t5 = 00000001
	addiu   a0, s1, 0x1C24             ## a0 = 00001C24
	swc1    $f4, 0x0010($sp)           
	lwc1    $f6, 0x0028(s0)            ## 00000028
	or      a1, s0, $zero              ## a1 = 00000000
	or      a2, s1, $zero              ## a2 = 00000000
	swc1    $f6, 0x0014($sp)           
	lwc1    $f8, 0x002C(s0)            ## 0000002C
	sw      $zero, 0x001C($sp)         
	addiu   a3, $zero, 0x01C6          ## a3 = 000001C6
	swc1    $f8, 0x0018($sp)           
	lh      t4, 0x00B6(s0)             ## 000000B6
	sw      t5, 0x0028($sp)            
	sw      $zero, 0x0024($sp)         
	jal     func_800253F0              
	sw      t4, 0x0020($sp)            
	lui     $at, 0x447A                ## $at = 447A0000
	mtc1    $at, $f12                  ## $f12 = 1000.00
	jal     func_80026D64              
	nop
	lui     $at, 0x4220                ## $at = 42200000
	mtc1    $at, $f10                  ## $f10 = 40.00
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	lui     $at, 0x4F00                ## $at = 4F000000
	add.s   $f16, $f0, $f10            
	addiu   t8, $zero, 0x0006          ## t8 = 00000006
	lui     t9, 0x8012                 ## t9 = 80120000
	cfc1    t6, $f31                   
	ctc1    t7, $f31                   
	nop
	cvt.w.s $f18, $f16                 
	cfc1    t7, $f31                   
	nop
	andi    t7, t7, 0x0078             ## t7 = 00000000
	beql    t7, $zero, lbl_80B77998    
	mfc1    t7, $f18                   
	mtc1    $at, $f18                  ## $f18 = 2147484000.00
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	sub.s   $f18, $f16, $f18           
	ctc1    t7, $f31                   
	nop
	cvt.w.s $f18, $f18                 
	cfc1    t7, $f31                   
	nop
	andi    t7, t7, 0x0078             ## t7 = 00000000
	bne     t7, $zero, lbl_80B7798C    
	nop
	mfc1    t7, $f18                   
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_80B779A4 
	or      t7, t7, $at                ## t7 = 80000000
lbl_80B7798C:
	beq     $zero, $zero, lbl_80B779A4 
	addiu   t7, $zero, 0xFFFF          ## t7 = FFFFFFFF
	mfc1    t7, $f18                   
lbl_80B77998:
	nop
	bltz    t7, lbl_80B7798C           
	nop
lbl_80B779A4:
	sh      t7, 0x0268(s0)             ## 00000268
	sh      $zero, 0x026A(s0)          ## 0000026A
	sb      t8, 0x001F(s0)             ## 0000001F
	lw      t9, -0x4600(t9)            ## 8011BA00
	ctc1    t6, $f31                   
	beq     $zero, $zero, lbl_80B77B80 
	sh      $zero, 0x05BE(t9)          ## 801205BE
lbl_80B779C0:
	addiu   a1, s0, 0x01D4             ## a1 = 000001D4
	lui     a2, 0x0600                 ## a2 = 06000000
	addiu   t0, s0, 0x0218             ## t0 = 00000218
	addiu   t1, s0, 0x023C             ## t1 = 0000023C
	addiu   t2, $zero, 0x0006          ## t2 = 00000006
	sw      t2, 0x0018($sp)            
	sw      t1, 0x0014($sp)            
	sw      t0, 0x0010($sp)            
	addiu   a2, a2, 0x4C30             ## a2 = 06004C30
	sw      a1, 0x0040($sp)            
	jal     func_8008C788              
	or      a3, $zero, $zero           ## a3 = 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x4348             ## a1 = 06004348
	jal     func_8008D2D4              
	lw      a0, 0x0040($sp)            
	lui     t3, %hi(func_80B78618)     ## t3 = 80B80000
	lui     t4, %hi(func_80B787F4)     ## t4 = 80B80000
	lui     t5, %hi(func_80B78204)     ## t5 = 80B80000
	addiu   t3, t3, %lo(func_80B78618) ## t3 = 80B78618
	addiu   t4, t4, %lo(func_80B787F4) ## t4 = 80B787F4
	addiu   t5, t5, %lo(func_80B78204) ## t5 = 80B78204
	sw      t3, 0x0130(s0)             ## 00000130
	sw      t4, 0x0134(s0)             ## 00000134
	sw      t5, 0x026C(s0)             ## 0000026C
	jal     func_80B776FC              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t6, 0x0004(s0)             ## 00000004
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	and     t7, t6, $at                
	lui     $at, 0x447A                ## $at = 447A0000
	mtc1    $at, $f12                  ## $f12 = 1000.00
	jal     func_80026D64              
	sw      t7, 0x0004(s0)             ## 00000004
	cfc1    t8, $f31                   
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	ctc1    t9, $f31                   
	lui     $at, 0x4F00                ## $at = 4F000000
	cvt.w.s $f4, $f0                   
	cfc1    t9, $f31                   
	nop
	andi    t9, t9, 0x0078             ## t9 = 00000000
	beql    t9, $zero, lbl_80B77AB8    
	mfc1    t9, $f4                    
	mtc1    $at, $f4                   ## $f4 = 2147484000.00
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	sub.s   $f4, $f0, $f4              
	ctc1    t9, $f31                   
	nop
	cvt.w.s $f4, $f4                   
	cfc1    t9, $f31                   
	nop
	andi    t9, t9, 0x0078             ## t9 = 00000000
	bne     t9, $zero, lbl_80B77AAC    
	nop
	mfc1    t9, $f4                    
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_80B77AC4 
	or      t9, t9, $at                ## t9 = 80000000
lbl_80B77AAC:
	beq     $zero, $zero, lbl_80B77AC4 
	addiu   t9, $zero, 0xFFFF          ## t9 = FFFFFFFF
	mfc1    t9, $f4                    
lbl_80B77AB8:
	nop
	bltz    t9, lbl_80B77AAC           
	nop
lbl_80B77AC4:
	andi    t0, t9, 0xFFFF             ## t0 = 0000FFFF
	mtc1    t0, $f6                    ## $f6 = 0.00
	ctc1    t8, $f31                   
	lui     $at, 0x4F80                ## $at = 4F800000
	bgez    t0, lbl_80B77AE8           
	cvt.s.w $f8, $f6                   
	mtc1    $at, $f10                  ## $f10 = 4294967000.00
	nop
	add.s   $f8, $f8, $f10             
lbl_80B77AE8:
	lui     $at, 0x4220                ## $at = 42200000
	mtc1    $at, $f16                  ## $f16 = 40.00
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	lui     $at, 0x4F00                ## $at = 4F000000
	add.s   $f18, $f8, $f16            
	cfc1    t1, $f31                   
	ctc1    t2, $f31                   
	nop
	cvt.w.s $f4, $f18                  
	cfc1    t2, $f31                   
	nop
	andi    t2, t2, 0x0078             ## t2 = 00000000
	beql    t2, $zero, lbl_80B77B68    
	mfc1    t2, $f4                    
	mtc1    $at, $f4                   ## $f4 = 2147484000.00
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	sub.s   $f4, $f18, $f4             
	ctc1    t2, $f31                   
	nop
	cvt.w.s $f4, $f4                   
	cfc1    t2, $f31                   
	nop
	andi    t2, t2, 0x0078             ## t2 = 00000000
	bne     t2, $zero, lbl_80B77B5C    
	nop
	mfc1    t2, $f4                    
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_80B77B74 
	or      t2, t2, $at                ## t2 = 80000000
lbl_80B77B5C:
	beq     $zero, $zero, lbl_80B77B74 
	addiu   t2, $zero, 0xFFFF          ## t2 = FFFFFFFF
	mfc1    t2, $f4                    
lbl_80B77B68:
	nop
	bltz    t2, lbl_80B77B5C           
	nop
lbl_80B77B74:
	ctc1    t1, $f31                   
	sh      t2, 0x0268(s0)             ## 00000268
	nop
lbl_80B77B80:
	addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
lbl_80B77B84:
	lui     a1, 0x3C23                 ## a1 = 3C230000
	sb      t3, 0x00AE(s0)             ## 000000AE
	ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
	jal     func_80020F88              
	or      a0, s0, $zero              ## a0 = 00000000
	sh      $zero, 0x0266(s0)          ## 00000266
	lw      $ra, 0x003C($sp)           
lbl_80B77BA0:
	lw      s0, 0x0034($sp)            
	lw      s1, 0x0038($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000


func_80B77BB0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	lh      t6, 0x001C(a2)             ## 0000001C
	lw      a0, 0x001C($sp)            
	addiu   a1, a2, 0x013C             ## a1 = 0000013C
	bnel    t6, $zero, lbl_80B77BF0    
	lw      $ra, 0x0014($sp)           
	jal     func_8004ABCC              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_8004ABCC              
	addiu   a1, a2, 0x0188             ## a1 = 00000188
	lw      $ra, 0x0014($sp)           
lbl_80B77BF0:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B77BFC:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x0034($sp)            
	lhu     v0, 0x0268(s0)             ## 00000268
	lui     $at, 0x43FA                ## $at = 43FA0000
	blez    v0, lbl_80B77C28           
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	beq     $zero, $zero, lbl_80B77D0C 
	sh      t6, 0x0268(s0)             ## 00000268
lbl_80B77C28:
	mtc1    $at, $f12                  ## $f12 = 500.00
	jal     func_80026D64              
	nop
	lui     $at, 0x4220                ## $at = 42200000
	mtc1    $at, $f4                   ## $f4 = 40.00
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	lui     a0, 0x0600                 ## a0 = 06000000
	add.s   $f6, $f0, $f4              
	lui     $at, 0x4F00                ## $at = 4F000000
	addiu   a0, a0, 0x01CC             ## a0 = 060001CC
	cfc1    t7, $f31                   
	ctc1    t8, $f31                   
	nop
	cvt.w.s $f8, $f6                   
	cfc1    t8, $f31                   
	nop
	andi    t8, t8, 0x0078             ## t8 = 00000000
	beql    t8, $zero, lbl_80B77CBC    
	mfc1    t8, $f8                    
	mtc1    $at, $f8                   ## $f8 = 2147484000.00
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	sub.s   $f8, $f6, $f8              
	ctc1    t8, $f31                   
	nop
	cvt.w.s $f8, $f8                   
	cfc1    t8, $f31                   
	nop
	andi    t8, t8, 0x0078             ## t8 = 00000000
	bne     t8, $zero, lbl_80B77CB0    
	nop
	mfc1    t8, $f8                    
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_80B77CC8 
	or      t8, t8, $at                ## t8 = 80000000
lbl_80B77CB0:
	beq     $zero, $zero, lbl_80B77CC8 
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	mfc1    t8, $f8                    
lbl_80B77CBC:
	nop
	bltz    t8, lbl_80B77CB0           
	nop
lbl_80B77CC8:
	ctc1    t7, $f31                   
	jal     func_8008A194              
	sh      t8, 0x0268(s0)             ## 00000268
	mtc1    v0, $f10                   ## $f10 = 0.00
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f18                  ## $f18 = 1.00
	cvt.s.w $f16, $f10                 
	lw      a3, 0x01EC(s0)             ## 000001EC
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   t9, $zero, 0x0002          ## t9 = 00000002
	sw      t9, 0x0014($sp)            
	addiu   a1, a1, 0x01CC             ## a1 = 060001CC
	swc1    $f16, 0x0010($sp)          
	addiu   a0, s0, 0x01D4             ## a0 = 000001D4
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_8008D17C              
	swc1    $f18, 0x0018($sp)          
lbl_80B77D0C:
	lui     $at, 0x4316                ## $at = 43160000
	mtc1    $at, $f6                   ## $f6 = 150.00
	lwc1    $f4, 0x0090(s0)            ## 00000090
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_80B77D54               
	lhu     t4, 0x026A(s0)             ## 0000026A
	lhu     v0, 0x0266(s0)             ## 00000266
	andi    t0, v0, 0x0002             ## t0 = 00000000
	bne     t0, $zero, lbl_80B77D50    
	ori     t1, v0, 0x0002             ## t1 = 00000002
	lw      t3, 0x01DC(s0)             ## 000001DC
	lui     t2, 0x0600                 ## t2 = 06000000
	addiu   t2, t2, 0x01CC             ## t2 = 060001CC
	bne     t2, t3, lbl_80B77D50       
	sh      t1, 0x0266(s0)             ## 00000266
	sh      $zero, 0x0268(s0)          ## 00000268
lbl_80B77D50:
	lhu     t4, 0x026A(s0)             ## 0000026A
lbl_80B77D54:
	addiu   t5, t4, 0x0001             ## t5 = 00000001
	andi    v0, t5, 0xFFFF             ## v0 = 00000001
	slti    $at, v0, 0x0031            
	bne     $at, $zero, lbl_80B77D70   
	sh      t5, 0x026A(s0)             ## 0000026A
	sh      $zero, 0x026A(s0)          ## 0000026A
	andi    v0, $zero, 0xFFFF          ## v0 = 00000000
lbl_80B77D70:
	slti    $at, v0, 0x0020            
	beq     $at, $zero, lbl_80B77DB4   
	or      a0, v0, $zero              ## a0 = 00000000
	sll     a0, a0, 26                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lui     $at, %hi(var_80B788B0)     ## $at = 80B80000
	lwc1    $f2, %lo(var_80B788B0)($at) 
	lui     $at, %hi(var_80B788B4)     ## $at = 80B80000
	lwc1    $f8, %lo(var_80B788B4)($at) 
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f16                  ## $f16 = 1.00
	mul.s   $f10, $f0, $f8             
	add.s   $f18, $f10, $f16           
	mul.s   $f4, $f18, $f2             
	beq     $zero, $zero, lbl_80B77DC0 
	swc1    $f4, 0x0050(s0)            ## 00000050
lbl_80B77DB4:
	lui     $at, %hi(var_80B788B8)     ## $at = 80B80000
	lwc1    $f2, %lo(var_80B788B8)($at) 
	swc1    $f2, 0x0050(s0)            ## 00000050
lbl_80B77DC0:
	lhu     v0, 0x026A(s0)             ## 0000026A
	slti    $at, v0, 0x0011            
	bne     $at, $zero, lbl_80B77E0C   
	sll     a0, v0, 10                 
	addiu   a0, a0, 0xC000             ## a0 = FFFFC000
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lui     $at, %hi(var_80B788BC)     ## $at = 80B80000
	lwc1    $f2, %lo(var_80B788BC)($at) 
	lui     $at, %hi(var_80B788C0)     ## $at = 80B80000
	lwc1    $f6, %lo(var_80B788C0)($at) 
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f10                  ## $f10 = 1.00
	mul.s   $f8, $f0, $f6              
	add.s   $f16, $f8, $f10            
	mul.s   $f18, $f16, $f2            
	beq     $zero, $zero, lbl_80B77E10 
	swc1    $f18, 0x0054(s0)           ## 00000054
lbl_80B77E0C:
	swc1    $f2, 0x0054(s0)            ## 00000054
lbl_80B77E10:
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B77E24:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_800DD464              
	addiu   a0, a0, 0x20D8             ## a0 = 000020D8
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bnel    v0, $at, lbl_80B77E90      
	lw      $ra, 0x0014($sp)           
	jal     func_800D6110              
	lw      a0, 0x001C($sp)            
	beql    v0, $zero, lbl_80B77E90    
	lw      $ra, 0x0014($sp)           
	lw      v0, 0x0018($sp)            
	lui     $at, 0xFFFE                ## $at = FFFE0000
	ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
	lw      t6, 0x0004(v0)             ## 00000004
	and     t7, t6, $at                
	sw      t7, 0x0004(v0)             ## 00000004
	jal     func_800D6218              
	lw      a0, 0x001C($sp)            
	lw      t9, 0x0018($sp)            
	lui     t8, %hi(func_80B780E8)     ## t8 = 80B80000
	addiu   t8, t8, %lo(func_80B780E8) ## t8 = 80B780E8
	sw      t8, 0x026C(t9)             ## 0000026C
	lw      $ra, 0x0014($sp)           
lbl_80B77E90:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B77E9C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	jal     func_80022AD0              
	sw      a0, 0x0018($sp)            
	beq     v0, $zero, lbl_80B77ED4    
	lw      a0, 0x0018($sp)            
	lw      t6, 0x0004(a0)             ## 00000004
	lui     $at, 0xFFFE                ## $at = FFFE0000
	ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
	lui     t8, %hi(func_80B780E8)     ## t8 = 80B80000
	addiu   t8, t8, %lo(func_80B780E8) ## t8 = 80B780E8
	and     t7, t6, $at                
	sw      t7, 0x0004(a0)             ## 00000004
	sw      t8, 0x026C(a0)             ## 0000026C
lbl_80B77ED4:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B77EE4:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lw      a1, 0x0024($sp)            
	jal     func_80022BB0              
	sw      a0, 0x0020($sp)            
	beq     v0, $zero, lbl_80B77F18    
	lw      a0, 0x0020($sp)            
	lui     t6, %hi(func_80B77E9C)     ## t6 = 80B70000
	addiu   t6, t6, %lo(func_80B77E9C) ## t6 = 80B77E9C
	sw      $zero, 0x0118(a0)          ## 00000118
	beq     $zero, $zero, lbl_80B77F38 
	sw      t6, 0x026C(a0)             ## 0000026C
lbl_80B77F18:
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f4                   ## $f4 = 100.00
	lui     a3, 0x461C                 ## a3 = 461C0000
	ori     a3, a3, 0x4000             ## a3 = 461C4000
	lw      a1, 0x0024($sp)            
	addiu   a2, $zero, 0x0050          ## a2 = 00000050
	jal     func_80022BD4              
	swc1    $f4, 0x0010($sp)           
lbl_80B77F38:
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B77F48:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0020($sp)            
	sw      a1, 0x0024($sp)            
	lw      a0, 0x0024($sp)            
	jal     func_800DD464              
	addiu   a0, a0, 0x20D8             ## a0 = 000020D8
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bnel    v0, $at, lbl_80B77FD8      
	lw      $ra, 0x001C($sp)           
	jal     func_800D6110              
	lw      a0, 0x0024($sp)            
	beql    v0, $zero, lbl_80B77FD8    
	lw      $ra, 0x001C($sp)           
	lw      v0, 0x0020($sp)            
	lui     $at, 0xFFFE                ## $at = FFFE0000
	ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
	lw      t6, 0x0004(v0)             ## 00000004
	and     t7, t6, $at                
	sw      t7, 0x0004(v0)             ## 00000004
	jal     func_800D6218              
	lw      a0, 0x0024($sp)            
	lw      t9, 0x0020($sp)            
	lui     t8, %hi(func_80B77EE4)     ## t8 = 80B70000
	addiu   t8, t8, %lo(func_80B77EE4) ## t8 = 80B77EE4
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f4                   ## $f4 = 100.00
	sw      t8, 0x026C(t9)             ## 0000026C
	lui     a3, 0x461C                 ## a3 = 461C0000
	ori     a3, a3, 0x4000             ## a3 = 461C4000
	lw      a1, 0x0024($sp)            
	lw      a0, 0x0020($sp)            
	addiu   a2, $zero, 0x0050          ## a2 = 00000050
	jal     func_80022BD4              
	swc1    $f4, 0x0010($sp)           
	lw      $ra, 0x001C($sp)           
lbl_80B77FD8:
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B77FE4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_800DD464              
	addiu   a0, a0, 0x20D8             ## a0 = 000020D8
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bnel    v0, $at, lbl_80B78068      
	lw      $ra, 0x0014($sp)           
	jal     func_800D6110              
	lw      a0, 0x001C($sp)            
	beql    v0, $zero, lbl_80B78068    
	lw      $ra, 0x0014($sp)           
	jal     func_80071A94              
	nop
	beq     v0, $zero, lbl_80B7804C    
	lw      a0, 0x001C($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_800DCE80              
	addiu   a1, $zero, 0x2007          ## a1 = 00002007
	lw      t7, 0x0018($sp)            
	lui     t6, %hi(func_80B77F48)     ## t6 = 80B70000
	addiu   t6, t6, %lo(func_80B77F48) ## t6 = 80B77F48
	beq     $zero, $zero, lbl_80B78064 
	sw      t6, 0x026C(t7)             ## 0000026C
lbl_80B7804C:
	jal     func_800DCE80              
	addiu   a1, $zero, 0x2013          ## a1 = 00002013
	lw      t9, 0x0018($sp)            
	lui     t8, %hi(func_80B77E24)     ## t8 = 80B70000
	addiu   t8, t8, %lo(func_80B77E24) ## t8 = 80B77E24
	sw      t8, 0x026C(t9)             ## 0000026C
lbl_80B78064:
	lw      $ra, 0x0014($sp)           
lbl_80B78068:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B78074:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lw      a1, 0x001C($sp)            
	jal     func_80022930              
	sw      a0, 0x0018($sp)            
	beq     v0, $zero, lbl_80B780A4    
	lw      a0, 0x0018($sp)            
	lui     t6, %hi(func_80B77FE4)     ## t6 = 80B70000
	addiu   t6, t6, %lo(func_80B77FE4) ## t6 = 80B77FE4
	beq     $zero, $zero, lbl_80B780D0 
	sw      t6, 0x026C(a0)             ## 0000026C
lbl_80B780A4:
	lw      t7, 0x0004(a0)             ## 00000004
	lui     $at, 0x0001                ## $at = 00010000
	lui     a2, 0x432A                 ## a2 = 432A0000
	or      t8, t7, $at                ## t8 = 00010000
	sw      t8, 0x0004(a0)             ## 00000004
	sw      a0, 0x0018($sp)            
	jal     func_80022A68              
	lw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	addiu   t9, $zero, 0x2006          ## t9 = 00002006
	sh      t9, 0x010E(a0)             ## 0000010E
lbl_80B780D0:
	jal     func_80B77BFC              
	lw      a1, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B780E8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lw      t6, 0x001C($sp)            
	lui     v0, 0x0001                 ## v0 = 00010000
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	addu    v0, v0, t6                 
	lhu     v0, 0x04C6(v0)             ## 000104C6
	beq     v0, $zero, lbl_80B78114    
	nop
	bne     v0, $at, lbl_80B781EC      
lbl_80B78114:
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xBA00             ## v0 = 8011BA00
	lw      a3, 0x0000(v0)             ## 8011BA00
	lh      t7, 0x05BE(a3)             ## 000005BE
	beql    t7, $zero, lbl_80B781E4    
	lhu     t8, 0x0266(a0)             ## 00000266
	lhu     a1, 0x0266(a0)             ## 00000266
	andi    t8, a1, 0x0004             ## t8 = 00000000
	beq     t8, $zero, lbl_80B7814C    
	andi    t9, a1, 0xFFFB             ## t9 = 00000000
	sh      t9, 0x0266(a0)             ## 00000266
	lw      t0, 0x0000(v0)             ## 8011BA00
	beq     $zero, $zero, lbl_80B781EC 
	sh      $zero, 0x05BE(t0)          ## 000005BE
lbl_80B7814C:
	lui     $at, 0x4316                ## $at = 43160000
	mtc1    $at, $f6                   ## $f6 = 150.00
	lwc1    $f4, 0x0090(a0)            ## 00000090
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_80B781D8               
	ori     t7, a1, 0x0004             ## t7 = 00000004
	lh      t1, 0x008A(a0)             ## 0000008A
	lh      t2, 0x00B6(a0)             ## 000000B6
	lui     t3, %hi(func_80B78074)     ## t3 = 80B80000
	addiu   t3, t3, %lo(func_80B78074) ## t3 = 80B78074
	subu    v0, t1, t2                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	bltz    v0, lbl_80B78194           
	subu    v1, $zero, v0              
	beq     $zero, $zero, lbl_80B78194 
	or      v1, v0, $zero              ## v1 = 8011BA00
lbl_80B78194:
	slti    $at, v1, 0x61A8            
	beq     $at, $zero, lbl_80B781D4   
	lui     a2, 0x432A                 ## a2 = 432A0000
	sh      $zero, 0x05BE(a3)          ## 000005BE
	lw      t4, 0x0004(a0)             ## 00000004
	lui     $at, 0x0001                ## $at = 00010000
	sw      t3, 0x026C(a0)             ## 0000026C
	or      t5, t4, $at                ## t5 = 00010000
	sw      t5, 0x0004(a0)             ## 00000004
	sw      a0, 0x0018($sp)            
	jal     func_80022A68              
	lw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	addiu   t6, $zero, 0x2006          ## t6 = 00002006
	beq     $zero, $zero, lbl_80B781EC 
	sh      t6, 0x010E(a0)             ## 0000010E
lbl_80B781D4:
	ori     t7, a1, 0x0004             ## t7 = 00000004
lbl_80B781D8:
	beq     $zero, $zero, lbl_80B781EC 
	sh      t7, 0x0266(a0)             ## 00000266
	lhu     t8, 0x0266(a0)             ## 00000266
lbl_80B781E4:
	andi    t9, t8, 0xFFFB             ## t9 = 00000000
	sh      t9, 0x0266(a0)             ## 00000266
lbl_80B781EC:
	jal     func_80B77BFC              
	lw      a1, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B78204:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x0034($sp)            
	lhu     v0, 0x0268(s0)             ## 00000268
	lui     $at, 0x4348                ## $at = 43480000
	blez    v0, lbl_80B78230           
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	beq     $zero, $zero, lbl_80B78314 
	sh      t6, 0x0268(s0)             ## 00000268
lbl_80B78230:
	mtc1    $at, $f12                  ## $f12 = 200.00
	jal     func_80026D64              
	nop
	lui     $at, 0x4220                ## $at = 42200000
	mtc1    $at, $f4                   ## $f4 = 40.00
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	lui     a0, 0x0600                 ## a0 = 06000000
	add.s   $f6, $f0, $f4              
	lui     $at, 0x4F00                ## $at = 4F000000
	addiu   a0, a0, 0x4348             ## a0 = 06004348
	cfc1    t7, $f31                   
	ctc1    t8, $f31                   
	nop
	cvt.w.s $f8, $f6                   
	cfc1    t8, $f31                   
	nop
	andi    t8, t8, 0x0078             ## t8 = 00000000
	beql    t8, $zero, lbl_80B782C4    
	mfc1    t8, $f8                    
	mtc1    $at, $f8                   ## $f8 = 2147484000.00
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	sub.s   $f8, $f6, $f8              
	ctc1    t8, $f31                   
	nop
	cvt.w.s $f8, $f8                   
	cfc1    t8, $f31                   
	nop
	andi    t8, t8, 0x0078             ## t8 = 00000000
	bne     t8, $zero, lbl_80B782B8    
	nop
	mfc1    t8, $f8                    
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_80B782D0 
	or      t8, t8, $at                ## t8 = 80000000
lbl_80B782B8:
	beq     $zero, $zero, lbl_80B782D0 
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	mfc1    t8, $f8                    
lbl_80B782C4:
	nop
	bltz    t8, lbl_80B782B8           
	nop
lbl_80B782D0:
	ctc1    t7, $f31                   
	jal     func_8008A194              
	sh      t8, 0x0268(s0)             ## 00000268
	mtc1    v0, $f10                   ## $f10 = 0.00
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f0                   ## $f0 = 1.00
	cvt.s.w $f16, $f10                 
	lw      a3, 0x01EC(s0)             ## 000001EC
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   t9, $zero, 0x0002          ## t9 = 00000002
	mfc1    a2, $f0                    
	sw      t9, 0x0014($sp)            
	addiu   a1, a1, 0x4348             ## a1 = 06004348
	swc1    $f16, 0x0010($sp)          
	addiu   a0, s0, 0x01D4             ## a0 = 000001D4
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
lbl_80B78314:
	lui     $at, 0x4316                ## $at = 43160000
	mtc1    $at, $f4                   ## $f4 = 150.00
	lwc1    $f18, 0x0090(s0)           ## 00000090
	c.lt.s  $f18, $f4                  
	nop
	bc1fl   lbl_80B7838C               
	lw      $ra, 0x002C($sp)           
	lh      t0, 0x008A(s0)             ## 0000008A
	lh      t1, 0x00B6(s0)             ## 000000B6
	subu    v0, t0, t1                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	bltz    v0, lbl_80B78354           
	subu    v1, $zero, v0              
	beq     $zero, $zero, lbl_80B78354 
	or      v1, v0, $zero              ## v1 = 00000000
lbl_80B78354:
	slti    $at, v1, 0x61A9            
	bnel    $at, $zero, lbl_80B7838C   
	lw      $ra, 0x002C($sp)           
	lhu     v0, 0x0266(s0)             ## 00000266
	andi    t2, v0, 0x0002             ## t2 = 00000000
	bne     t2, $zero, lbl_80B78388    
	ori     t3, v0, 0x0002             ## t3 = 00000002
	lw      t5, 0x01DC(s0)             ## 000001DC
	lui     t4, 0x0600                 ## t4 = 06000000
	addiu   t4, t4, 0x4348             ## t4 = 06004348
	bne     t4, t5, lbl_80B78388       
	sh      t3, 0x0266(s0)             ## 00000266
	sh      $zero, 0x0268(s0)          ## 00000268
lbl_80B78388:
	lw      $ra, 0x002C($sp)           
lbl_80B7838C:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B7839C:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	or      a3, a1, $zero              ## a3 = 00000000
	lui     $at, 0x0001                ## $at = 00010000
	lw      t6, 0x1C44(a3)             ## 00001C44
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	addu    a1, a3, $at                
	sw      a1, 0x0034($sp)            
	sw      a3, 0x0054($sp)            
	or      a0, a3, $zero              ## a0 = 00000000
	addiu   a2, s0, 0x013C             ## a2 = 0000013C
	jal     func_8004C130              ## CollisionCheck_setOT
	sw      t6, 0x0040($sp)            
	lw      a0, 0x0054($sp)            
	lw      a1, 0x0034($sp)            
	jal     func_8004C130              ## CollisionCheck_setOT
	addiu   a2, s0, 0x0188             ## a2 = 00000188
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	mtc1    $zero, $f0                 ## $f0 = 0.00
	addiu   t7, $zero, 0x0004          ## t7 = 00000004
	sw      t7, 0x0014($sp)            
	mfc1    a2, $f0                    
	mfc1    a3, $f0                    
	lw      a0, 0x0054($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_80021E6C              
	swc1    $f0, 0x0010($sp)           
	addiu   a0, s0, 0x01D4             ## a0 = 000001D4
	jal     func_8008C9C0              
	sw      a0, 0x0034($sp)            
	beql    v0, $zero, lbl_80B784D0    
	lw      t9, 0x026C(s0)             ## 0000026C
	lw      t8, 0x01DC(s0)             ## 000001DC
	lui     a0, 0x0600                 ## a0 = 06000000
	addiu   a0, a0, 0x01CC             ## a0 = 060001CC
	bne     a0, t8, lbl_80B78490       
	addiu   a1, $zero, 0x28DF          ## a1 = 000028DF
	jal     func_80022FD0              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x4264             ## a0 = 06004264
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f0                   ## $f0 = 1.00
	cvt.s.w $f6, $f4                   
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   t9, $zero, 0x0002          ## t9 = 00000002
	mfc1    a2, $f0                    
	sw      t9, 0x0014($sp)            
	addiu   a1, a1, 0x4264             ## a1 = 06004264
	swc1    $f6, 0x0010($sp)           
	lw      a0, 0x0034($sp)            
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
	beq     $zero, $zero, lbl_80B784D0 
	lw      t9, 0x026C(s0)             ## 0000026C
lbl_80B78490:
	jal     func_8008A194              
	nop
	mtc1    v0, $f8                    ## $f8 = 0.00
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f0                   ## $f0 = 1.00
	cvt.s.w $f10, $f8                  
	lui     a1, 0x0600                 ## a1 = 06000000
	mfc1    a2, $f0                    
	addiu   a1, a1, 0x01CC             ## a1 = 060001CC
	lw      a0, 0x0034($sp)            
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f10, 0x0010($sp)          
	sw      $zero, 0x0014($sp)         
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
	lw      t9, 0x026C(s0)             ## 0000026C
lbl_80B784D0:
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x0054($sp)            
	jalr    $ra, t9                    
	nop
	lui     $at, 0x4316                ## $at = 43160000
	mtc1    $at, $f18                  ## $f18 = 150.00
	lwc1    $f16, 0x0090(s0)           ## 00000090
	lw      a1, 0x0040($sp)            
	c.lt.s  $f16, $f18                 
	addiu   a1, a1, 0x0024             ## a1 = 00000024
	bc1f    lbl_80B785C8               
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	sw      a0, 0x0034($sp)            
	jal     func_80063F00              
	sw      a1, 0x0030($sp)            
	lw      a0, 0x0034($sp)            
	bltz    v0, lbl_80B78528           
	lw      a1, 0x0030($sp)            
	jal     func_80063F00              
	nop
	beq     $zero, $zero, lbl_80B78534 
	or      v1, v0, $zero              ## v1 = 00000000
lbl_80B78528:
	jal     func_80063F00              
	nop
	subu    v1, $zero, v0              
lbl_80B78534:
	ori     $at, $zero, 0xC000         ## $at = 0000C000
	slt     $at, v1, $at               
	beq     $at, $zero, lbl_80B785C8   
	lw      a1, 0x0040($sp)            
	addiu   a0, s0, 0x0038             ## a0 = 00000038
	addiu   a1, a1, 0x0038             ## a1 = 00000038
	sw      a1, 0x0030($sp)            
	jal     func_80063F34              
	sw      a0, 0x0034($sp)            
	lw      a0, 0x0034($sp)            
	lw      a1, 0x0030($sp)            
	jal     func_80063F00              
	sh      v0, 0x0046($sp)            
	lh      t0, 0x00B6(s0)             ## 000000B6
	lh      a1, 0x0046($sp)            
	subu    v1, v0, t0                 
	sll     v1, v1, 16                 
	slti    $at, a1, 0x1001            
	bne     $at, $zero, lbl_80B7858C   
	sra     v1, v1, 16                 
	beq     $zero, $zero, lbl_80B7859C 
	addiu   a1, $zero, 0x1000          ## a1 = 00001000
lbl_80B7858C:
	slti    $at, a1, 0xF000            
	beql    $at, $zero, lbl_80B785A0   
	slti    $at, v1, 0x2501            
	addiu   a1, $zero, 0xF000          ## a1 = FFFFF000
lbl_80B7859C:
	slti    $at, v1, 0x2501            
lbl_80B785A0:
	bnel    $at, $zero, lbl_80B785B4   
	slti    $at, v1, 0xDB00            
	beq     $zero, $zero, lbl_80B785C0 
	addiu   v1, $zero, 0x2500          ## v1 = 00002500
	slti    $at, v1, 0xDB00            
lbl_80B785B4:
	beq     $at, $zero, lbl_80B785C0   
	nop
	addiu   v1, $zero, 0xDB00          ## v1 = FFFFDB00
lbl_80B785C0:
	beq     $zero, $zero, lbl_80B785D0 
	sh      v1, 0x0044($sp)            
lbl_80B785C8:
	sh      $zero, 0x0044($sp)         
	or      a1, $zero, $zero           ## a1 = 00000000
lbl_80B785D0:
	addiu   t1, $zero, 0x000A          ## t1 = 0000000A
	sw      t1, 0x0010($sp)            
	addiu   a0, s0, 0x0260             ## a0 = 00000260
	addiu   a2, $zero, 0x000A          ## a2 = 0000000A
	jal     func_80064508              
	addiu   a3, $zero, 0x00C8          ## a3 = 000000C8
	addiu   t2, $zero, 0x000A          ## t2 = 0000000A
	sw      t2, 0x0010($sp)            
	addiu   a0, s0, 0x0262             ## a0 = 00000262
	lh      a1, 0x0044($sp)            
	addiu   a2, $zero, 0x000A          ## a2 = 0000000A
	jal     func_80064508              
	addiu   a3, $zero, 0x00C8          ## a3 = 000000C8
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B78618:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x0044($sp)            
	addiu   a0, s0, 0x01D4             ## a0 = 000001D4
	jal     func_8008C9C0              
	sw      a0, 0x0030($sp)            
	beql    v0, $zero, lbl_80B786E0    
	lw      t9, 0x026C(s0)             ## 0000026C
	lw      t6, 0x01DC(s0)             ## 000001DC
	lui     a0, 0x0600                 ## a0 = 06000000
	addiu   a0, a0, 0x4348             ## a0 = 06004348
	bne     a0, t6, lbl_80B786A0       
	nop
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x4E98             ## a0 = 06004E98
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f0                   ## $f0 = 1.00
	cvt.s.w $f6, $f4                   
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   t7, $zero, 0x0002          ## t7 = 00000002
	mfc1    a2, $f0                    
	sw      t7, 0x0014($sp)            
	addiu   a1, a1, 0x4E98             ## a1 = 06004E98
	swc1    $f6, 0x0010($sp)           
	lw      a0, 0x0030($sp)            
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
	beq     $zero, $zero, lbl_80B786E0 
	lw      t9, 0x026C(s0)             ## 0000026C
lbl_80B786A0:
	jal     func_8008A194              
	nop
	mtc1    v0, $f8                    ## $f8 = 0.00
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f0                   ## $f0 = 1.00
	cvt.s.w $f10, $f8                  
	lui     a1, 0x0600                 ## a1 = 06000000
	mfc1    a2, $f0                    
	addiu   a1, a1, 0x4348             ## a1 = 06004348
	lw      a0, 0x0030($sp)            
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f10, 0x0010($sp)          
	sw      $zero, 0x0014($sp)         
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
	lw      t9, 0x026C(s0)             ## 0000026C
lbl_80B786E0:
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x0044($sp)            
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B78704:
	sw      a0, 0x0000($sp)            
	sw      a3, 0x000C($sp)            
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	bne     a1, $at, lbl_80B7873C      
	lw      v0, 0x0014($sp)            
	lw      v1, 0x0010($sp)            
	lh      t7, 0x0262(v0)             ## 00000262
	lh      t6, 0x0002(v1)             ## 00000002
	lh      t9, 0x0000(v1)             ## 00000000
	addu    t8, t6, t7                 
	sh      t8, 0x0002(v1)             ## 00000002
	lh      t0, 0x0260(v0)             ## 00000260
	addu    t1, t9, t0                 
	sh      t1, 0x0000(v1)             ## 00000000
lbl_80B7873C:
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bne     a1, $at, lbl_80B7874C      
	or      v0, $zero, $zero           ## v0 = 00000000
	sw      $zero, 0x0000(a2)          ## 00000000
lbl_80B7874C:
	jr      $ra                        
	nop


func_80B78754:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a2, 0x0020($sp)            
	sw      a3, 0x0024($sp)            
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	bne     a1, $at, lbl_80B78784      
	lui     a0, %hi(var_80B7889C)      ## a0 = 80B80000
	lw      a1, 0x0028($sp)            
	addiu   a0, a0, %lo(var_80B7889C)  ## a0 = 80B7889C
	jal     func_800AB958              
	addiu   a1, a1, 0x0038             ## a1 = 00000038
lbl_80B78784:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B78794:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	lw      t6, 0x002C($sp)            
	jal     func_8007E56C              
	lw      a0, 0x0000(t6)             ## 00000000
	lw      v0, 0x0028($sp)            
	lui     t7, %hi(func_80B78704)     ## t7 = 80B80000
	lui     t8, %hi(func_80B78754)     ## t8 = 80B80000
	lw      a1, 0x01D8(v0)             ## 000001D8
	lw      a2, 0x01F4(v0)             ## 000001F4
	lbu     a3, 0x01D6(v0)             ## 000001D6
	addiu   t8, t8, %lo(func_80B78754) ## t8 = 80B78754
	addiu   t7, t7, %lo(func_80B78704) ## t7 = 80B78704
	sw      t7, 0x0010($sp)            
	sw      t8, 0x0014($sp)            
	lw      a0, 0x002C($sp)            
	jal     func_80089D8C              
	sw      v0, 0x0018($sp)            
	lw      $ra, 0x0024($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B787F4:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	lw      t6, 0x002C($sp)            
	jal     func_8007E56C              
	lw      a0, 0x0000(t6)             ## 00000000
	lw      v0, 0x0028($sp)            
	lw      a0, 0x002C($sp)            
	lw      a1, 0x01D8(v0)             ## 000001D8
	lw      a2, 0x01F4(v0)             ## 000001F4
	lbu     a3, 0x01D6(v0)             ## 000001D6
	sw      $zero, 0x0014($sp)         
	sw      $zero, 0x0010($sp)         
	jal     func_80089D8C              
	sw      v0, 0x0018($sp)            
	lw      $ra, 0x0024($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop
	nop

.section .data

var_80B78850: .word 0x01C60400, 0x00000009, 0x018B0000, 0x00000270
.word func_80B77778
.word func_80B77BB0
.word func_80B7839C
.word func_80B78794
var_80B78870: .word \
0x0A001139, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x001E0028, 0x00000000, 0x00000000
var_80B7889C: .word \
0x00000000, 0xC4A28000, 0x44898000, 0x00000000, \
0x00000000

.section .rodata

var_80B788B0: .word 0x3C23D70A
var_80B788B4: .word 0x3C23D70A
var_80B788B8: .word 0x3C23D70A
var_80B788BC: .word 0x3C23D70A
var_80B788C0: .word 0x3C23D70A, 0x00000000, 0x00000000, 0x00000000

