#include <mips.h>
.set noreorder
.set noat

.section .text
func_80803880:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	lui     t3, %hi(var_80812BB0)      ## t3 = 80810000
	addiu   t3, t3, %lo(var_80812BB0)  ## t3 = 80812BB0
	addu    t1, a0, $at                
	addu    t2, $at, $zero             
	or      v0, $zero, $zero           ## v0 = 00000000
	sll     v1, v0,  1                 
lbl_808038A0:
	addu    t6, a0, v1                 
	addu    a3, t6, t2                 
	addu    t7, t3, v1                 
	lh      a1, 0x0000(t7)             ## 00000000
	lh      t0, 0x4A44(a3)             ## 00004A44
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	sll     v0, v0, 16                 
	subu    a2, t0, a1                 
	bltz    a2, lbl_808038D0           
	sra     v0, v0, 16                 
	beq     $zero, $zero, lbl_808038D4 
	or      v1, a2, $zero              ## v1 = 00000000
lbl_808038D0:
	subu    v1, $zero, a2              
lbl_808038D4:
	lh      t8, 0x4A42(t1)             ## 00004A42
	div     $zero, v1, t8              
	bne     t8, $zero, lbl_808038E8    
	nop
	break	## 0x01C00
lbl_808038E8:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t8, $at, lbl_80803900      
	lui     $at, 0x8000                ## $at = 80000000
	bne     v1, $at, lbl_80803900      
	nop
	break	## 0x01800
lbl_80803900:
	mflo    a2                         
	sll     a2, a2, 16                 
	slt     $at, t0, a1                
	bne     $at, $zero, lbl_80803920   
	sra     a2, a2, 16                 
	subu    t9, t0, a2                 
	beq     $zero, $zero, lbl_80803928 
	sh      t9, 0x4A44(a3)             ## 00004A44
lbl_80803920:
	addu    t4, t0, a2                 
	sh      t4, 0x4A44(a3)             ## 00004A44
lbl_80803928:
	slti    $at, v0, 0x0005            
	bnel    $at, $zero, lbl_808038A0   
	sll     v1, v0,  1                 
	lh      t5, 0x4A84(t1)             ## 00004A84
	lh      t7, 0x4A86(t1)             ## 00004A86
	lh      t9, 0x4A8C(t1)             ## 00004A8C
	lui     $at, 0x0002                ## $at = 00020000
	addiu   t6, t5, 0xFFE7             ## t6 = FFFFFFE7
	addiu   t8, t7, 0xFFE7             ## t8 = FFFFFFE7
	sh      t6, 0x4A84(t1)             ## 00004A84
	sh      t8, 0x4A86(t1)             ## 00004A86
	addu    $at, $at, a0               
	addiu   t4, t9, 0xFFE7             ## t4 = FFFFFFE7
	sh      t4, -0x3574($at)           ## 0001CA8C
	lh      t5, 0x4A8A(t1)             ## 00004A8A
	lh      t7, 0x4A60(t1)             ## 00004A60
	lh      t9, 0x4A62(t1)             ## 00004A62
	addiu   t6, t5, 0x0019             ## t6 = 00000019
	lh      t5, 0x4A42(t1)             ## 00004A42
	sh      t6, 0x4A8A(t1)             ## 00004A8A
	lui     $at, 0x0002                ## $at = 00020000
	addiu   t8, t7, 0xFFE1             ## t8 = FFFFFFE1
	addiu   t4, t9, 0x001F             ## t4 = 0000001F
	sh      t8, 0x4A60(t1)             ## 00004A60
	sh      t4, 0x4A62(t1)             ## 00004A62
	addu    $at, $at, a0               
	addiu   t6, t5, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, -0x35BE($at)           ## 0001CA42
	lh      t7, 0x4A42(t1)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	bne     t7, $zero, lbl_80803A10    
	addiu   t8, $zero, 0x0008          ## t8 = 00000008
	sh      t8, -0x35BE($at)           ## 0001CA42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      $zero, -0x3574($at)        ## 0001CA8C
	lh      v0, 0x4A8C(t1)             ## 00004A8C
	lh      t4, 0x4A58(t1)             ## 00004A58
	addiu   t9, $zero, 0x00C8          ## t9 = 000000C8
	lui     $at, 0x0002                ## $at = 00020000
	sh      t9, 0x4A8A(t1)             ## 00004A8A
	addu    $at, $at, a0               
	sh      v0, 0x4A86(t1)             ## 00004A86
	sh      v0, 0x4A84(t1)             ## 00004A84
	sh      t4, -0x35AA($at)           ## 0001CA56
	addiu   t5, $zero, 0x00FF          ## t5 = 000000FF
	lui     $at, 0x0002                ## $at = 00020000
	sh      t5, 0x4A60(t1)             ## 00004A60
	sh      $zero, 0x4A62(t1)          ## 00004A62
	addu    $at, $at, a0               
	addiu   t6, $zero, 0x0003          ## t6 = 00000003
	sh      t6, -0x35D6($at)           ## 0001CA2A
	lh      t7, 0x4A30(t1)             ## 00004A30
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t8, t7, 0x0001             ## t8 = 00000001
	sh      t8, -0x35D0($at)           ## 0001CA30
lbl_80803A10:
	jr      $ra                        
	nop


func_80803A18:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	addiu   t1, $zero, 0x0003          ## t1 = 00000003
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    t0, s0, $at                
	lh      v1, 0x4A2A(t0)             ## 00004A2A
	bnel    t1, v1, lbl_80803A58       
	lhu     v0, 0x0020(s0)             ## 00000020
	lhu     t6, 0x0020(s0)             ## 00000020
	andi    t7, t6, 0x9000             ## t7 = 00000000
	bnel    t7, $zero, lbl_80803A6C    
	lui     $at, 0x0002                ## $at = 00020000
	lhu     v0, 0x0020(s0)             ## 00000020
lbl_80803A58:
	addiu   $at, $zero, 0x4000         ## $at = 00004000
	andi    t8, v0, 0x4000             ## t8 = 00000000
	bne     t8, $at, lbl_80803AE4      
	andi    t5, v0, 0x9000             ## t5 = 00000000
	lui     $at, 0x0002                ## $at = 00020000
lbl_80803A6C:
	addu    $at, $at, s0               
	addiu   t9, $zero, 0x0008          ## t9 = 00000008
	sh      t9, -0x35BE($at)           ## 0001CA42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t1, -0x35D6($at)           ## 0001CA2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x35A8($at)        ## 0001CA58
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t2, $zero, 0x0013          ## t2 = 00000013
	sh      t2, -0x35D0($at)           ## 0001CA30
	lui     $at, 0x0002                ## $at = 00020000
	lui     a3, 0x8010                 ## a3 = 80100000
	addu    $at, $at, s0               
	addiu   t3, $zero, 0xFFFF          ## t3 = FFFFFFFF
	lui     t4, 0x8010                 ## t4 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	sh      t3, -0x35AE($at)           ## 0001CA52
	addiu   t4, t4, 0x43A8             ## t4 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t4, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483C          ## a0 = 0000483C
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_80803D78 
	lw      $ra, 0x0024($sp)           
lbl_80803AE4:
	beq     t5, $zero, lbl_80803BF8    
	sll     t6, v1,  1                 
	lui     t7, 0x8010                 ## t7 = 80100000
	addu    t7, t7, t6                 
	lhu     t7, -0x4100(t7)            ## 800FBF00
	lw      t8, 0x01D8(s0)             ## 000001D8
	addiu   a0, $zero, 0x005A          ## a0 = 0000005A
	lui     a3, 0x8010                 ## a3 = 80100000
	addu    v0, t7, t8                 
	lbu     t9, 0x001C(v0)             ## 0000001C
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t7, $zero, 0x0008          ## t7 = 00000008
	beq     a0, t9, lbl_80803B70       
	lui     a1, 0x8010                 ## a1 = 80100000
	lbu     t2, 0x001D(v0)             ## 0000001D
	addiu   $at, $zero, 0x0045         ## $at = 00000045
	beql    t2, $at, lbl_80803B74      
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t3, 0x001E(v0)             ## 0000001E
	addiu   $at, $zero, 0x004C         ## $at = 0000004C
	beql    t3, $at, lbl_80803B74      
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t4, 0x001F(v0)             ## 0000001F
	addiu   $at, $zero, 0x0044         ## $at = 00000044
	beql    t4, $at, lbl_80803B74      
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t5, 0x0020(v0)             ## 00000020
	addiu   $at, $zero, 0x0041         ## $at = 00000041
	beql    t5, $at, lbl_80803B74      
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t6, 0x0021(v0)             ## 00000021
	lui     t3, 0x8010                 ## t3 = 80100000
	addiu   t3, t3, 0x43A8             ## t3 = 801043A8
	bne     a0, t6, lbl_80803BD0       
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
lbl_80803B70:
	lui     $at, 0x0002                ## $at = 00020000
lbl_80803B74:
	addu    $at, $at, s0               
	sh      t7, -0x35BE($at)           ## 0001CA42
	lh      t8, 0x4A2A(t0)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t8, -0x35C8($at)           ## 0001CA38
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t9, $zero, 0x0005          ## t9 = 00000005
	sh      t9, -0x35D0($at)           ## 0001CA30
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	lui     t2, 0x8010                 ## t2 = 80100000
	sh      t1, -0x35A8($at)           ## 0001CA58
	addiu   t2, t2, 0x43A8             ## t2 = 801043A8
	sw      t2, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483B          ## a0 = 0000483B
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_80803D78 
	lw      $ra, 0x0024($sp)           
lbl_80803BD0:
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483D          ## a0 = 0000483D
	jal     func_800C806C              
	sw      t3, 0x0014($sp)            
	beq     $zero, $zero, lbl_80803D78 
	lw      $ra, 0x0024($sp)           
lbl_80803BF8:
	lh      v0, 0x4AAE(t0)             ## 00004AAE
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	bltz    v0, lbl_80803C14           
	subu    a0, $zero, v0              
	beq     $zero, $zero, lbl_80803C14 
	or      a0, v0, $zero              ## a0 = 00000000
lbl_80803C14:
	slti    $at, a0, 0x001E            
	bne     $at, $zero, lbl_80803CC0   
	addiu   a0, $zero, 0x4839          ## a0 = 00004839
	lui     t4, 0x8010                 ## t4 = 80100000
	addiu   t4, t4, 0x43A8             ## t4 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t4, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      a3, 0x0010($sp)            
	jal     func_800C806C              
	sw      t0, 0x002C($sp)            
	lw      t0, 0x002C($sp)            
	addiu   t1, $zero, 0x0003          ## t1 = 00000003
	lh      t5, 0x4AAE(t0)             ## 00004AAE
	slti    $at, t5, 0x001E            
	bnel    $at, $zero, lbl_80803C94   
	lh      t8, 0x4A2A(t0)             ## 00004A2A
	lh      t6, 0x4A2A(t0)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t7, t6, 0xFFFF             ## t7 = FFFFFFFF
	sh      t7, -0x35D6($at)           ## 0001CA2A
	lh      v1, 0x4A2A(t0)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	bgez    v1, lbl_80803CC0           
	nop
	sh      t1, -0x35D6($at)           ## 0001CA2A
	beq     $zero, $zero, lbl_80803CC0 
	lh      v1, 0x4A2A(t0)             ## 00004A2A
	lh      t8, 0x4A2A(t0)             ## 00004A2A
lbl_80803C94:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t9, t8, 0x0001             ## t9 = 00000001
	sh      t9, -0x35D6($at)           ## 0001CA2A
	lh      v1, 0x4A2A(t0)             ## 00004A2A
	slti    $at, v1, 0x0004            
	bne     $at, $zero, lbl_80803CC0   
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x35D6($at)        ## 0001CA2A
	lh      v1, 0x4A2A(t0)             ## 00004A2A
lbl_80803CC0:
	beq     t1, v1, lbl_80803D74       
	sll     t2, v1,  1                 
	lui     t3, 0x8010                 ## t3 = 80100000
	addu    t3, t3, t2                 
	lhu     t3, -0x4100(t3)            ## 800FBF00
	lw      t4, 0x01D8(s0)             ## 000001D8
	addiu   a0, $zero, 0x005A          ## a0 = 0000005A
	addu    v0, t3, t4                 
	lbu     t5, 0x001C(v0)             ## 0000001C
	beql    a0, t5, lbl_80803D68       
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t6, 0x001D(v0)             ## 0000001D
	addiu   $at, $zero, 0x0045         ## $at = 00000045
	beql    t6, $at, lbl_80803D68      
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t7, 0x001E(v0)             ## 0000001E
	addiu   $at, $zero, 0x004C         ## $at = 0000004C
	beql    t7, $at, lbl_80803D68      
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t8, 0x001F(v0)             ## 0000001F
	addiu   $at, $zero, 0x0044         ## $at = 00000044
	beql    t8, $at, lbl_80803D68      
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t9, 0x0020(v0)             ## 00000020
	addiu   $at, $zero, 0x0041         ## $at = 00000041
	beql    t9, $at, lbl_80803D68      
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t2, 0x0021(v0)             ## 00000021
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     a0, t2, lbl_80803D64       
	addiu   t4, $zero, 0x00FF          ## t4 = 000000FF
	sh      t1, -0x35AE($at)           ## 0001CA52
	lh      t3, 0x4A2A(t0)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t3, -0x35AC($at)           ## 0001CA54
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     $zero, $zero, lbl_80803D74 
	sh      t4, -0x356E($at)           ## 0001CA92
lbl_80803D64:
	lui     $at, 0x0002                ## $at = 00020000
lbl_80803D68:
	addu    $at, $at, s0               
	addiu   t5, $zero, 0xFFFF          ## t5 = FFFFFFFF
	sh      t5, -0x35AE($at)           ## 0001CA52
lbl_80803D74:
	lw      $ra, 0x0024($sp)           
lbl_80803D78:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_80803D88:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	lui     t3, %hi(var_80812BBC)      ## t3 = 80810000
	addiu   t3, t3, %lo(var_80812BBC)  ## t3 = 80812BBC
	addu    t0, a0, $at                
	addu    t2, $at, $zero             
	or      v0, $zero, $zero           ## v0 = 00000000
	lh      t7, 0x4A2A(t0)             ## 00004A2A
lbl_80803DA8:
	sll     v1, v0,  1                 
	addu    t6, a0, v1                 
	sll     t8, t7,  2                 
	subu    t8, t8, t7                 
	sll     t8, t8,  1                 
	addu    t9, t3, t8                 
	addu    t4, t9, v1                 
	addu    a2, t6, t2                 
	lh      a3, 0x4A44(a2)             ## 00004A44
	lh      t1, 0x0000(t4)             ## 00000000
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	sll     v0, v0, 16                 
	subu    a1, a3, t1                 
	bltz    a1, lbl_80803DEC           
	sra     v0, v0, 16                 
	beq     $zero, $zero, lbl_80803DF0 
	or      v1, a1, $zero              ## v1 = 00000000
lbl_80803DEC:
	subu    v1, $zero, a1              
lbl_80803DF0:
	lh      t5, 0x4A42(t0)             ## 00004A42
	div     $zero, v1, t5              
	bne     t5, $zero, lbl_80803E04    
	nop
	break	## 0x01C00
lbl_80803E04:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t5, $at, lbl_80803E1C      
	lui     $at, 0x8000                ## $at = 80000000
	bne     v1, $at, lbl_80803E1C      
	nop
	break	## 0x01800
lbl_80803E1C:
	mflo    a1                         
	sll     a1, a1, 16                 
	slt     $at, t1, a3                
	bne     $at, $zero, lbl_80803E3C   
	sra     a1, a1, 16                 
	addu    t6, a3, a1                 
	beq     $zero, $zero, lbl_80803E44 
	sh      t6, 0x4A44(a2)             ## 00004A44
lbl_80803E3C:
	subu    t7, a3, a1                 
	sh      t7, 0x4A44(a2)             ## 00004A44
lbl_80803E44:
	slti    $at, v0, 0x0003            
	bnel    $at, $zero, lbl_80803DA8   
	lh      t7, 0x4A2A(t0)             ## 00004A2A
	lh      t8, 0x4A60(t0)             ## 00004A60
	lh      t6, 0x4A2A(t0)             ## 00004A2A
	lh      t4, 0x4A62(t0)             ## 00004A62
	addiu   t9, t8, 0xFFE1             ## t9 = FFFFFFE1
	sll     t7, t6,  1                 
	addu    t8, a0, t7                 
	addiu   t5, t4, 0x001F             ## t5 = 0000001F
	sh      t9, 0x4A60(t0)             ## 00004A60
	sh      t5, 0x4A62(t0)             ## 00004A62
	addu    v0, t8, t2                 
	lh      t9, 0x4A6C(v0)             ## 00004A6D
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t4, t9, 0xFFE7             ## t4 = FFFFFFC8
	sh      t4, 0x4A6C(v0)             ## 00004A6D
	lh      t5, 0x4A42(t0)             ## 00004A42
	addiu   t6, t5, 0xFFFF             ## t6 = 0000001E
	sh      t6, -0x35BE($at)           ## 0001CA42
	lh      t7, 0x4A42(t0)             ## 00004A42
	bne     t7, $zero, lbl_80803F10    
	nop
	lh      v0, 0x4A2A(t0)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sll     t8, v0,  2                 
	subu    t8, t8, v0                 
	sll     t8, t8,  1                 
	addu    t9, t3, t8                 
	sll     v1, v0,  1                 
	addu    t4, t9, v1                 
	lh      t5, 0x0000(t4)             ## FFFFFFC8
	addu    t6, a0, v1                 
	addu    t7, t6, t2                 
	sh      t5, 0x4A44(t7)             ## 00004A44
	lh      t8, 0x4A58(t0)             ## 00004A58
	addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
	addiu   t4, $zero, 0x0008          ## t4 = 00000008
	sh      t8, -0x35AA($at)           ## 0001CA56
	lui     $at, 0x0002                ## $at = 00020000
	sh      t9, 0x4A60(t0)             ## 00004A60
	sh      $zero, 0x4A62(t0)          ## 00004A62
	addu    $at, $at, a0               
	sh      t4, -0x35BE($at)           ## 0001CA42
	lh      t6, 0x4A30(t0)             ## 00004A30
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t5, t6, 0x0001             ## t5 = 0000001F
	sh      t5, -0x35D0($at)           ## 0001CA30
lbl_80803F10:
	jr      $ra                        
	nop


func_80803F18:
	lui     a1, 0x0001                 ## a1 = 00010000
	ori     a1, a1, 0x8000             ## a1 = 00018000
	addu    v0, a0, a1                 
	lh      t6, 0x4A2A(v0)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sll     t7, t6,  1                 
	addu    t8, a0, t7                 
	addu    v1, t8, a1                 
	lh      t9, 0x4A6C(v1)             ## 00004A6C
	addiu   t0, t9, 0xFFE7             ## t0 = FFFFFFE7
	sh      t0, 0x4A6C(v1)             ## 00004A6C
	lh      t1, 0x4A2A(v0)             ## 00004A2A
	sll     t2, t1,  1                 
	addu    t3, a0, t2                 
	addu    v1, t3, a1                 
	lh      t4, 0x4A7E(v1)             ## 00004A7E
	addiu   t3, $zero, 0x00C8          ## t3 = 000000C8
	addiu   t5, t4, 0x0019             ## t5 = 00000019
	sh      t5, 0x4A7E(v1)             ## 00004A7E
	lh      t6, 0x4A42(v0)             ## 00004A42
	addiu   t7, t6, 0xFFFF             ## t7 = FFFFFFFF
	sh      t7, -0x35BE($at)           ## 0001CA42
	lh      t8, 0x4A42(v0)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	bne     t8, $zero, lbl_80803FD8    
	nop
	lh      t9, 0x4A2A(v0)             ## 00004A2A
	addiu   t8, $zero, 0x0003          ## t8 = 00000003
	addu    $at, $at, a0               
	sll     t0, t9,  1                 
	addu    t1, a0, t0                 
	addu    t2, t1, a1                 
	sh      $zero, 0x4A6C(t2)          ## 00004A6C
	lh      t4, 0x4A2A(v0)             ## 00004A2A
	addiu   t9, $zero, 0x0008          ## t9 = 00000008
	addiu   t0, $zero, 0x0007          ## t0 = 00000007
	sll     t5, t4,  1                 
	addu    t6, a0, t5                 
	addu    t7, t6, a1                 
	sh      t3, 0x4A7E(t7)             ## 00004A7D
	sh      t8, -0x35D6($at)           ## 0001CA2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t9, -0x35BE($at)           ## 0001CA42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t0, -0x35D0($at)           ## 0001CA30
lbl_80803FD8:
	jr      $ra                        
	nop


func_80803FE0:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	addiu   t1, $zero, 0x0003          ## t1 = 00000003
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    t0, s0, $at                
	lh      v1, 0x4A2A(t0)             ## 00004A2A
	bnel    t1, v1, lbl_80804020       
	lhu     v0, 0x0020(s0)             ## 00000020
	lhu     t6, 0x0020(s0)             ## 00000020
	andi    t7, t6, 0x9000             ## t7 = 00000000
	bnel    t7, $zero, lbl_80804034    
	lh      t9, 0x4A38(t0)             ## 00004A38
	lhu     v0, 0x0020(s0)             ## 00000020
lbl_80804020:
	addiu   $at, $zero, 0x4000         ## $at = 00004000
	andi    t8, v0, 0x4000             ## t8 = 00000000
	bne     t8, $at, lbl_808040A0      
	andi    t4, v0, 0x9000             ## t4 = 00000000
	lh      t9, 0x4A38(t0)             ## 00004A38
lbl_80804034:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t9, -0x35D6($at)           ## 0001CA2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t2, $zero, 0x0002          ## t2 = 00000002
	sh      t2, -0x35A8($at)           ## 0001CA58
	lui     $at, 0x0002                ## $at = 00020000
	addiu   v0, $zero, 0x0008          ## v0 = 00000008
	addu    $at, $at, s0               
	sh      v0, -0x35BE($at)           ## 0001CA42
	lui     $at, 0x0002                ## $at = 00020000
	lui     a3, 0x8010                 ## a3 = 80100000
	addu    $at, $at, s0               
	lui     t3, 0x8010                 ## t3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	sh      v0, -0x35D0($at)           ## 0001CA30
	addiu   t3, t3, 0x43A8             ## t3 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t3, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483C          ## a0 = 0000483C
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_80804388 
	lw      $ra, 0x0024($sp)           
lbl_808040A0:
	beq     t4, $zero, lbl_808041B4    
	sll     t5, v1,  1                 
	lui     t6, 0x8010                 ## t6 = 80100000
	addu    t6, t6, t5                 
	lhu     t6, -0x4100(t6)            ## 800FBF00
	lw      t7, 0x01D8(s0)             ## 000001D8
	addiu   a0, $zero, 0x005A          ## a0 = 0000005A
	lui     a3, 0x8010                 ## a3 = 80100000
	addu    v0, t6, t7                 
	lbu     t8, 0x001C(v0)             ## 0000001C
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	beq     a0, t8, lbl_80804190       
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	lbu     t9, 0x001D(v0)             ## 0000001D
	addiu   $at, $zero, 0x0045         ## $at = 00000045
	beq     t9, $at, lbl_80804190      
	nop
	lbu     t2, 0x001E(v0)             ## 0000001E
	addiu   $at, $zero, 0x004C         ## $at = 0000004C
	beq     t2, $at, lbl_80804190      
	nop
	lbu     t3, 0x001F(v0)             ## 0000001F
	addiu   $at, $zero, 0x0044         ## $at = 00000044
	beq     t3, $at, lbl_80804190      
	nop
	lbu     t4, 0x0020(v0)             ## 00000020
	addiu   $at, $zero, 0x0041         ## $at = 00000041
	beq     t4, $at, lbl_80804190      
	nop
	lbu     t5, 0x0021(v0)             ## 00000021
	lui     $at, 0x0002                ## $at = 00020000
	addiu   v0, $zero, 0x0008          ## v0 = 00000008
	beq     a0, t5, lbl_80804190       
	addu    $at, $at, s0               
	sh      v1, -0x35B0($at)           ## 0001CA50
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t6, $zero, 0x0004          ## t6 = 00000004
	sh      t6, -0x35A8($at)           ## 0001CA58
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      v0, -0x35BE($at)           ## 0001CA42
	lui     $at, 0x0002                ## $at = 00020000
	lui     a3, 0x8010                 ## a3 = 80100000
	addu    $at, $at, s0               
	addiu   t7, $zero, 0x000A          ## t7 = 0000000A
	lui     t8, 0x8010                 ## t8 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	sh      t7, -0x35D0($at)           ## 0001CA30
	addiu   t8, t8, 0x43A8             ## t8 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t8, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483B          ## a0 = 0000483B
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_80804388 
	lw      $ra, 0x0024($sp)           
lbl_80804190:
	lui     t9, 0x8010                 ## t9 = 80100000
	addiu   t9, t9, 0x43A8             ## t9 = 801043A8
	sw      t9, 0x0014($sp)            
	addiu   a0, $zero, 0x483D          ## a0 = 0000483D
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_800C806C              
	sw      a3, 0x0010($sp)            
	beq     $zero, $zero, lbl_80804388 
	lw      $ra, 0x0024($sp)           
lbl_808041B4:
	lh      v0, 0x4AAE(t0)             ## 00004AAE
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	bltz    v0, lbl_808041D0           
	subu    a0, $zero, v0              
	beq     $zero, $zero, lbl_808041D0 
	or      a0, v0, $zero              ## a0 = 00000000
lbl_808041D0:
	slti    $at, a0, 0x001E            
	bne     $at, $zero, lbl_808042CC   
	addiu   a0, $zero, 0x4839          ## a0 = 00004839
	lui     t2, 0x8010                 ## t2 = 80100000
	addiu   t2, t2, 0x43A8             ## t2 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t2, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      a3, 0x0010($sp)            
	jal     func_800C806C              
	sw      t0, 0x002C($sp)            
	lw      t0, 0x002C($sp)            
	addiu   t1, $zero, 0x0003          ## t1 = 00000003
	lh      t3, 0x4AAE(t0)             ## 00004AAE
	slti    $at, t3, 0x001E            
	bnel    $at, $zero, lbl_80804284   
	lh      t8, 0x4A2A(t0)             ## 00004A2A
	lh      t4, 0x4A2A(t0)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t5, t4, 0xFFFF             ## t5 = FFFFFFFF
	sh      t5, -0x35D6($at)           ## 0001CA2A
	lh      t6, 0x4A38(t0)             ## 00004A38
	lh      v1, 0x4A2A(t0)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	bne     t6, v1, lbl_80804268       
	addiu   t7, v1, 0xFFFF             ## t7 = FFFFFFFF
	sh      t7, -0x35D6($at)           ## 0001CA2A
	lh      v1, 0x4A2A(t0)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	bgez    v1, lbl_808042CC           
	nop
	sh      t1, -0x35D6($at)           ## 0001CA2A
	beq     $zero, $zero, lbl_808042CC 
	lh      v1, 0x4A2A(t0)             ## 00004A2A
lbl_80804268:
	bgez    v1, lbl_808042CC           
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t1, -0x35D6($at)           ## 0001CA2A
	beq     $zero, $zero, lbl_808042CC 
	lh      v1, 0x4A2A(t0)             ## 00004A2A
	lh      t8, 0x4A2A(t0)             ## 00004A2A
lbl_80804284:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t9, t8, 0x0001             ## t9 = 00000001
	sh      t9, -0x35D6($at)           ## 0001CA2A
	lh      v1, 0x4A2A(t0)             ## 00004A2A
	slti    $at, v1, 0x0004            
	bne     $at, $zero, lbl_808042B0   
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x35D6($at)        ## 0001CA2A
	lh      v1, 0x4A2A(t0)             ## 00004A2A
lbl_808042B0:
	lh      t2, 0x4A38(t0)             ## 00004A38
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	bne     t2, v1, lbl_808042CC       
	addiu   t3, v1, 0x0001             ## t3 = 00000001
	sh      t3, -0x35D6($at)           ## 0001CA2A
	lh      v1, 0x4A2A(t0)             ## 00004A2A
lbl_808042CC:
	beq     t1, v1, lbl_80804384       
	sll     t4, v1,  1                 
	lui     t5, 0x8010                 ## t5 = 80100000
	addu    t5, t5, t4                 
	lhu     t5, -0x4100(t5)            ## 800FBF00
	lw      t6, 0x01D8(s0)             ## 000001D8
	addiu   a0, $zero, 0x005A          ## a0 = 0000005A
	addu    v0, t5, t6                 
	lbu     t7, 0x001C(v0)             ## 0000001C
	addiu   t5, $zero, 0x0004          ## t5 = 00000004
	beql    a0, t7, lbl_80804354       
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t8, 0x001D(v0)             ## 0000001D
	addiu   $at, $zero, 0x0045         ## $at = 00000045
	beql    t8, $at, lbl_80804354      
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t9, 0x001E(v0)             ## 0000001E
	addiu   $at, $zero, 0x004C         ## $at = 0000004C
	beql    t9, $at, lbl_80804354      
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t2, 0x001F(v0)             ## 0000001F
	addiu   $at, $zero, 0x0044         ## $at = 00000044
	beql    t2, $at, lbl_80804354      
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t3, 0x0020(v0)             ## 00000020
	addiu   $at, $zero, 0x0041         ## $at = 00000041
	beql    t3, $at, lbl_80804354      
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t4, 0x0021(v0)             ## 00000021
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	bne     a0, t4, lbl_80804380       
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	lui     $at, 0x0002                ## $at = 00020000
lbl_80804354:
	addu    $at, $at, s0               
	sh      t5, -0x35AE($at)           ## 0001CA52
	lh      t6, 0x4A2A(t0)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t6, -0x35AC($at)           ## 0001CA54
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	beq     $zero, $zero, lbl_80804384 
	sh      t7, -0x356E($at)           ## 0001CA92
lbl_80804380:
	sh      t8, -0x35AE($at)           ## 0001CA52
lbl_80804384:
	lw      $ra, 0x0024($sp)           
lbl_80804388:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_80804398:
	lui     a1, 0x0001                 ## a1 = 00010000
	ori     a1, a1, 0x8000             ## a1 = 00018000
	addu    v0, a0, a1                 
	lh      t6, 0x4A2A(v0)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sll     t7, t6,  1                 
	addu    t8, a0, t7                 
	addu    v1, t8, a1                 
	lh      t9, 0x4A7E(v1)             ## 00004A7E
	addiu   t0, t9, 0xFFE7             ## t0 = FFFFFFE7
	sh      t0, 0x4A7E(v1)             ## 00004A7E
	lh      t1, 0x4A2A(v0)             ## 00004A2A
	addiu   t9, $zero, 0x0002          ## t9 = 00000002
	sll     t2, t1,  1                 
	addu    t3, a0, t2                 
	addu    v1, t3, a1                 
	lh      t4, 0x4A6C(v1)             ## 00004A6C
	addiu   t5, t4, 0x0019             ## t5 = 00000019
	sh      t5, 0x4A6C(v1)             ## 00004A6C
	lh      t6, 0x4A42(v0)             ## 00004A42
	addiu   t7, t6, 0xFFFF             ## t7 = FFFFFFFF
	sh      t7, -0x35BE($at)           ## 0001CA42
	lh      t8, 0x4A42(v0)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	bne     t8, $zero, lbl_8080445C    
	nop
	sh      t9, -0x35A8($at)           ## 0001CA58
	lh      t1, 0x4A2A(v0)             ## 00004A2A
	addiu   t0, $zero, 0x00C8          ## t0 = 000000C8
	lui     $at, 0x0002                ## $at = 00020000
	sll     t2, t1,  1                 
	addu    t3, a0, t2                 
	addu    t4, t3, a1                 
	sh      t0, 0x4A6C(t4)             ## 00004A6C
	lh      t5, 0x4A2A(v0)             ## 00004A2A
	addu    $at, $at, a0               
	addiu   t9, $zero, 0x0008          ## t9 = 00000008
	sll     t6, t5,  1                 
	addu    t7, a0, t6                 
	addu    t8, t7, a1                 
	sh      $zero, 0x4A7E(t8)          ## 00004A7E
	sh      t9, -0x35BE($at)           ## 0001CA42
	lh      t1, 0x4A30(v0)             ## 00004A30
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t2, t1, 0x0001             ## t2 = 00000001
	sh      t2, -0x35D0($at)           ## 0001CA30
lbl_8080445C:
	jr      $ra                        
	nop


func_80804464:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	lui     t3, %hi(var_80812BB0)      ## t3 = 80810000
	addiu   t3, t3, %lo(var_80812BB0)  ## t3 = 80812BB0
	addu    t1, a0, $at                
	addu    t2, $at, $zero             
	or      v0, $zero, $zero           ## v0 = 00000000
	sll     v1, v0,  1                 
lbl_80804484:
	addu    t6, a0, v1                 
	addu    a3, t6, t2                 
	addu    t7, t3, v1                 
	lh      a1, 0x0000(t7)             ## 00000000
	lh      t0, 0x4A44(a3)             ## 00004A44
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	sll     v0, v0, 16                 
	subu    a2, t0, a1                 
	bltz    a2, lbl_808044B4           
	sra     v0, v0, 16                 
	beq     $zero, $zero, lbl_808044B8 
	or      v1, a2, $zero              ## v1 = 00000000
lbl_808044B4:
	subu    v1, $zero, a2              
lbl_808044B8:
	lh      t8, 0x4A42(t1)             ## 00004A42
	div     $zero, v1, t8              
	bne     t8, $zero, lbl_808044CC    
	nop
	break	## 0x01C00
lbl_808044CC:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t8, $at, lbl_808044E4      
	lui     $at, 0x8000                ## $at = 80000000
	bne     v1, $at, lbl_808044E4      
	nop
	break	## 0x01800
lbl_808044E4:
	mflo    a2                         
	sll     a2, a2, 16                 
	slt     $at, t0, a1                
	bne     $at, $zero, lbl_80804504   
	sra     a2, a2, 16                 
	subu    t9, t0, a2                 
	beq     $zero, $zero, lbl_8080450C 
	sh      t9, 0x4A44(a3)             ## 00004A44
lbl_80804504:
	addu    t4, t0, a2                 
	sh      t4, 0x4A44(a3)             ## 00004A44
lbl_8080450C:
	slti    $at, v0, 0x0003            
	bnel    $at, $zero, lbl_80804484   
	sll     v1, v0,  1                 
	lh      t5, 0x4A60(t1)             ## 00004A60
	lh      t7, 0x4A62(t1)             ## 00004A62
	lh      t9, 0x4A42(t1)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addiu   t6, t5, 0xFFE1             ## t6 = FFFFFFE1
	addiu   t8, t7, 0x001F             ## t8 = 0000001F
	sh      t6, 0x4A60(t1)             ## 00004A60
	sh      t8, 0x4A62(t1)             ## 00004A62
	addu    $at, $at, a0               
	addiu   t4, t9, 0xFFFF             ## t4 = FFFFFFFF
	sh      t4, -0x35BE($at)           ## 0001CA42
	lh      t5, 0x4A42(t1)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	bne     t5, $zero, lbl_80804588    
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	lh      t6, 0x4A58(t1)             ## 00004A58
	addiu   t8, $zero, 0x0003          ## t8 = 00000003
	addiu   t9, $zero, 0x0004          ## t9 = 00000004
	sh      t6, -0x35AA($at)           ## 0001CA56
	lui     $at, 0x0002                ## $at = 00020000
	sh      t7, 0x4A60(t1)             ## 00004A60
	sh      $zero, 0x4A62(t1)          ## 00004A62
	addu    $at, $at, a0               
	sh      t8, -0x35D6($at)           ## 0001CA2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t9, -0x35D0($at)           ## 0001CA30
lbl_80804588:
	jr      $ra                        
	nop


func_80804590:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	lui     t3, 0x0001                 ## t3 = 00010000
	ori     t3, t3, 0x8000             ## t3 = 00018000
	sw      s4, 0x0014($sp)            
	sw      s3, 0x0010($sp)            
	sw      s2, 0x000C($sp)            
	sw      s1, 0x0008($sp)            
	sw      s0, 0x0004($sp)            
	addu    v0, a0, t3                 
	lh      t6, 0x4A60(v0)             ## 00004A60
	lh      t8, 0x4A62(v0)             ## 00004A62
	lui     s4, %hi(var_80812BD4)      ## s4 = 80810000
	lui     t5, 0x8010                 ## t5 = 80100000
	addiu   t7, t6, 0xFFE1             ## t7 = FFFFFFE1
	addiu   t9, t8, 0x001F             ## t9 = 0000001F
	sh      t7, 0x4A60(v0)             ## 00004A60
	sh      t9, 0x4A62(v0)             ## 00004A62
	addiu   t5, t5, 0xBF00             ## t5 = 800FBF00
	addiu   s4, s4, %lo(var_80812BD4)  ## s4 = 80812BD4
	or      v1, $zero, $zero           ## v1 = 00000000
	addiu   s3, $zero, 0x0041          ## s3 = 00000041
	addiu   s2, $zero, 0x0044          ## s2 = 00000044
	addiu   s1, $zero, 0x004C          ## s1 = 0000004C
	addiu   s0, $zero, 0x0045          ## s0 = 00000045
	addiu   t4, $zero, 0x005A          ## t4 = 0000005A
	lh      a1, 0x4A50(v0)             ## 00004A50
lbl_808045F8:
	beq     v1, a1, lbl_80804698       
	nop
	lh      t6, 0x4A38(v0)             ## 00004A38
	beq     v1, t6, lbl_80804698       
	nop
	sll     a1, v1,  1                 
	addu    t7, a0, a1                 
	addu    t1, t7, t3                 
	lh      t8, 0x4A66(t1)             ## 00004A66
	addu    t6, t5, a1                 
	addiu   t9, t8, 0xFFE7             ## t9 = FFFFFFE7
	sh      t9, 0x4A66(t1)             ## 00004A66
	lw      t8, 0x01D8(a0)             ## 000001D8
	lhu     t7, 0x0000(t6)             ## 00000000
	addu    a2, t7, t8                 
	lbu     t9, 0x001C(a2)             ## 0000001C
	beql    t4, t9, lbl_80804680       
	lh      t7, 0x4A78(t1)             ## 00004A78
	lbu     t6, 0x001D(a2)             ## 0000001D
	beql    s0, t6, lbl_80804680       
	lh      t7, 0x4A78(t1)             ## 00004A78
	lbu     t7, 0x001E(a2)             ## 0000001E
	beql    s1, t7, lbl_80804680       
	lh      t7, 0x4A78(t1)             ## 00004A78
	lbu     t8, 0x001F(a2)             ## 0000001F
	beql    s2, t8, lbl_80804680       
	lh      t7, 0x4A78(t1)             ## 00004A78
	lbu     t9, 0x0020(a2)             ## 00000020
	beql    s3, t9, lbl_80804680       
	lh      t7, 0x4A78(t1)             ## 00004A78
	lbu     t6, 0x0021(a2)             ## 00000021
	bnel    t4, t6, lbl_80804724       
	addiu   v1, v1, 0x0001             ## v1 = 00000001
	lh      t7, 0x4A78(t1)             ## 00004A78
lbl_80804680:
	lh      a1, 0x4A66(t1)             ## 00004A66
	addiu   t8, t7, 0xFFE1             ## t8 = FFFFFFC2
	sh      t8, 0x4A78(t1)             ## 00004A78
	sh      a1, 0x4A72(t1)             ## 00004A72
	beq     $zero, $zero, lbl_80804720 
	sh      a1, 0x4A6C(t1)             ## 00004A6C
lbl_80804698:
	bne     v1, a1, lbl_80804720       
	sll     a1, v1,  1                 
	addu    t9, a0, a1                 
	addu    t1, t9, t3                 
	addu    a2, s4, a1                 
	lh      t6, 0x0000(a2)             ## 00000000
	lh      t2, 0x4A44(t1)             ## 00004A44
	subu    t0, t2, t6                 
	bltz    t0, lbl_808046C8           
	subu    a3, $zero, t0              
	beq     $zero, $zero, lbl_808046C8 
	or      a3, t0, $zero              ## a3 = 00000000
lbl_808046C8:
	lh      t7, 0x4A42(v0)             ## 00004A42
	div     $zero, a3, t7              
	mflo    t0                         
	sll     t0, t0, 16                 
	sra     t0, t0, 16                 
	addu    t8, t2, t0                 
	sh      t8, 0x4A44(t1)             ## 00004A44
	bne     t7, $zero, lbl_808046F0    
	nop
	break	## 0x01C00
lbl_808046F0:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t7, $at, lbl_80804708      
	lui     $at, 0x8000                ## $at = 80000000
	bne     a3, $at, lbl_80804708      
	nop
	break	## 0x01800
lbl_80804708:
	lh      t9, 0x4A44(t1)             ## 00004A44
	lh      a1, 0x0000(a2)             ## 00000000
	slt     $at, t9, a1                
	bnel    $at, $zero, lbl_80804724   
	addiu   v1, v1, 0x0001             ## v1 = 00000002
	sh      a1, 0x4A44(t1)             ## 00004A44
lbl_80804720:
	addiu   v1, v1, 0x0001             ## v1 = 00000003
lbl_80804724:
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	slti    $at, v1, 0x0003            
	bnel    $at, $zero, lbl_808045F8   
	lh      a1, 0x4A50(v0)             ## 00004A50
	lh      t6, 0x4A42(v0)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t7, t6, 0xFFFF             ## t7 = FFFFFFFF
	sh      t7, -0x35BE($at)           ## 0001CA42
	lh      t8, 0x4A42(v0)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	bnel    t8, $zero, lbl_8080479C    
	lw      s0, 0x0004($sp)            
	lh      t9, 0x4A58(v0)             ## 00004A58
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	addiu   t7, $zero, 0x0008          ## t7 = 00000008
	sh      t9, -0x35AA($at)           ## 0001CA56
	lui     $at, 0x0002                ## $at = 00020000
	sh      t6, 0x4A60(v0)             ## 00004A60
	sh      $zero, 0x4A62(v0)          ## 00004A62
	addu    $at, $at, a0               
	sh      t7, -0x35BE($at)           ## 0001CA42
	lh      t8, 0x4A30(v0)             ## 00004A30
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t9, t8, 0x0001             ## t9 = FFFFFFC3
	sh      t9, -0x35D0($at)           ## 0001CA30
	lw      s0, 0x0004($sp)            
lbl_8080479C:
	lw      s1, 0x0008($sp)            
	lw      s2, 0x000C($sp)            
	lw      s3, 0x0010($sp)            
	lw      s4, 0x0014($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_808047B4:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    v0, a0, $at                
	lh      t6, 0x4A88(v0)             ## 00004A88
	lh      t8, 0x4A42(v0)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addiu   t7, t6, 0x0019             ## t7 = 00000019
	sh      t7, 0x4A88(v0)             ## 00004A88
	addu    $at, $at, a0               
	addiu   t9, t8, 0xFFFF             ## t9 = FFFFFFFF
	sh      t9, -0x35BE($at)           ## 0001CA42
	lh      t0, 0x4A42(v0)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	bne     t0, $zero, lbl_80804808    
	addiu   t1, $zero, 0x000C          ## t1 = 0000000C
	sh      t1, -0x35D0($at)           ## 0001CA30
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	sh      t2, -0x35D6($at)           ## 0001CA2A
lbl_80804808:
	jr      $ra                        
	nop


func_80804810:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0020($sp)            
	lui     t0, 0x0001                 ## t0 = 00010000
	ori     t0, t0, 0x8000             ## t0 = 00018000
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	addu    v1, s0, t0                 
	lh      t6, 0x4A2A(v1)             ## 00004A2A
	beql    t6, $zero, lbl_8080484C    
	lhu     v0, 0x0020(s0)             ## 00000020
	lhu     t7, 0x0020(s0)             ## 00000020
	andi    t8, t7, 0x9000             ## t8 = 00000000
	bnel    t8, $zero, lbl_80804860    
	lui     $at, 0x0002                ## $at = 00020000
	lhu     v0, 0x0020(s0)             ## 00000020
lbl_8080484C:
	addiu   $at, $zero, 0x4000         ## $at = 00004000
	andi    t9, v0, 0x4000             ## t9 = 00000000
	bne     t9, $at, lbl_808048C0      
	andi    t5, v0, 0x9000             ## t5 = 00000000
	lui     $at, 0x0002                ## $at = 00020000
lbl_80804860:
	addu    $at, $at, s0               
	addiu   t1, $zero, 0x0008          ## t1 = 00000008
	sh      t1, -0x35BE($at)           ## 0001CA42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t2, $zero, 0x0003          ## t2 = 00000003
	sh      t2, -0x35A8($at)           ## 0001CA58
	lui     $at, 0x0002                ## $at = 00020000
	lui     a3, 0x8010                 ## a3 = 80100000
	addu    $at, $at, s0               
	addiu   t3, $zero, 0x000D          ## t3 = 0000000D
	lui     t4, 0x8010                 ## t4 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	sh      t3, -0x35D0($at)           ## 0001CA30
	addiu   t4, t4, 0x43A8             ## t4 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t4, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483C          ## a0 = 0000483C
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_80804A08 
	lw      $ra, 0x0024($sp)           
lbl_808048C0:
	beq     t5, $zero, lbl_808049A0    
	lui     t6, 0x8012                 ## t6 = 80120000
	lhu     t6, -0x5A24(t6)            ## 8011A5DC
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x01D8             ## a1 = 000001D8
	sw      v1, 0x0028($sp)            
	jal     func_80090FD0              
	sh      t6, 0x0032($sp)            
	lhu     t7, 0x0032($sp)            
	lw      v1, 0x0028($sp)            
	lui     $at, 0x8012                ## $at = 80120000
	sh      t7, -0x5A24($at)           ## 8011A5DC
	lh      t8, 0x4A50(v1)             ## 00004A50
	lui     t0, 0x0001                 ## t0 = 00010000
	ori     t0, t0, 0x8000             ## t0 = 00018000
	sll     t9, t8,  1                 
	addu    t1, s0, t9                 
	addu    t2, t1, t0                 
	sh      $zero, 0x4A72(t2)          ## 00004A72
	lh      t3, 0x4A50(v1)             ## 00004A50
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sll     t4, t3,  1                 
	addu    t5, s0, t4                 
	addu    v0, t5, t0                 
	lh      t6, 0x4A72(v0)             ## 00004A72
	addiu   t7, $zero, 0x0005          ## t7 = 00000005
	addiu   t8, $zero, 0x0008          ## t8 = 00000008
	sh      t6, 0x4A7E(v0)             ## 00004A7E
	sh      t7, -0x35A8($at)           ## 0001CA58
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t8, -0x35BE($at)           ## 0001CA42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t9, $zero, 0x000E          ## t9 = 0000000E
	sh      t9, -0x35D0($at)           ## 0001CA30
	lui     $at, 0x4396                ## $at = 43960000
	mtc1    $at, $f12                  ## $f12 = 300.00
	addiu   a1, $zero, 0x00B4          ## a1 = 000000B4
	addiu   a2, $zero, 0x0014          ## a2 = 00000014
	jal     func_800915CC              
	addiu   a3, $zero, 0x0064          ## a3 = 00000064
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t1, 0x8010                 ## t1 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t1, t1, 0x43A8             ## t1 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t1, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483B          ## a0 = 0000483B
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_80804A08 
	lw      $ra, 0x0024($sp)           
lbl_808049A0:
	lh      v0, 0x4AAE(v1)             ## 00004AAE
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	bltz    v0, lbl_808049BC           
	subu    a0, $zero, v0              
	beq     $zero, $zero, lbl_808049BC 
	or      a0, v0, $zero              ## a0 = 00000000
lbl_808049BC:
	slti    $at, a0, 0x001E            
	bne     $at, $zero, lbl_80804A04   
	addiu   a0, $zero, 0x4839          ## a0 = 00004839
	lui     t2, 0x8010                 ## t2 = 80100000
	addiu   t2, t2, 0x43A8             ## t2 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t2, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      a3, 0x0010($sp)            
	jal     func_800C806C              
	sw      v1, 0x0028($sp)            
	lw      v1, 0x0028($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	lh      t3, 0x4A2A(v1)             ## 00004A2A
	xori    t4, t3, 0x0001             ## t4 = 00000001
	sh      t4, -0x35D6($at)           ## 0001CA2A
lbl_80804A04:
	lw      $ra, 0x0024($sp)           
lbl_80804A08:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_80804A18:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	lui     t2, 0x0001                 ## t2 = 00010000
	ori     t2, t2, 0x8000             ## t2 = 00018000
	sw      s3, 0x0014($sp)            
	sw      s2, 0x0010($sp)            
	sw      s1, 0x000C($sp)            
	sw      s0, 0x0008($sp)            
	addu    v0, a0, t2                 
	lh      t6, 0x4A60(v0)             ## 00004A60
	lh      t8, 0x4A62(v0)             ## 00004A62
	lui     s3, %hi(var_80812BBC)      ## s3 = 80810000
	addiu   t7, t6, 0xFFE1             ## t7 = FFFFFFE1
	lh      t6, 0x4A88(v0)             ## 00004A88
	sh      t7, 0x4A60(v0)             ## 00004A60
	lui     t4, 0x8010                 ## t4 = 80100000
	addiu   t9, t8, 0x001F             ## t9 = 0000001F
	addiu   t7, t6, 0xFFE7             ## t7 = FFFFFFE7
	sh      t9, 0x4A62(v0)             ## 00004A62
	sh      t7, 0x4A88(v0)             ## 00004A88
	addiu   t4, t4, 0xBF00             ## t4 = 800FBF00
	addiu   s3, s3, %lo(var_80812BBC)  ## s3 = 80812BBC
	or      v1, $zero, $zero           ## v1 = 00000000
	addiu   s2, $zero, 0x0041          ## s2 = 00000041
	addiu   s1, $zero, 0x0044          ## s1 = 00000044
	addiu   s0, $zero, 0x004C          ## s0 = 0000004C
	addiu   t5, $zero, 0x0045          ## t5 = 00000045
	addiu   t3, $zero, 0x005A          ## t3 = 0000005A
	lh      t8, 0x4A50(v0)             ## 00004A50
lbl_80804A88:
	beql    v1, t8, lbl_80804B24       
	lh      t9, 0x4A38(v0)             ## 00004A38
	lh      t9, 0x4A38(v0)             ## 00004A38
	sll     a1, v1,  1                 
	addu    t6, a0, a1                 
	beq     v1, t9, lbl_80804B20       
	addu    a3, t6, t2                 
	lh      t7, 0x4A66(a3)             ## 00004A66
	addu    t9, t4, a1                 
	addiu   t8, t7, 0x0019             ## t8 = 00000000
	sh      t8, 0x4A66(a3)             ## 00004A66
	lw      t7, 0x01D8(a0)             ## 000001D8
	lhu     t6, 0x0000(t9)             ## 0000001F
	addu    a2, t6, t7                 
	lbu     t8, 0x001C(a2)             ## 0000001C
	beql    t3, t8, lbl_80804B0C       
	lh      a1, 0x4A66(a3)             ## 00004A66
	lbu     t9, 0x001D(a2)             ## 0000001D
	beql    t5, t9, lbl_80804B0C       
	lh      a1, 0x4A66(a3)             ## 00004A66
	lbu     t6, 0x001E(a2)             ## 0000001E
	beql    s0, t6, lbl_80804B0C       
	lh      a1, 0x4A66(a3)             ## 00004A66
	lbu     t7, 0x001F(a2)             ## 0000001F
	beql    s1, t7, lbl_80804B0C       
	lh      a1, 0x4A66(a3)             ## 00004A66
	lbu     t8, 0x0020(a2)             ## 00000020
	beql    s2, t8, lbl_80804B0C       
	lh      a1, 0x4A66(a3)             ## 00004A66
	lbu     t9, 0x0021(a2)             ## 00000021
	bnel    t3, t9, lbl_80804B24       
	lh      t9, 0x4A38(v0)             ## 00004A38
	lh      a1, 0x4A66(a3)             ## 00004A66
lbl_80804B0C:
	lh      t6, 0x4A78(a3)             ## 00004A78
	sh      a1, 0x4A72(a3)             ## 00004A72
	addiu   t7, t6, 0x001F             ## t7 = 0000001F
	sh      t7, 0x4A78(a3)             ## 00004A78
	sh      a1, 0x4A6C(a3)             ## 00004A6C
lbl_80804B20:
	lh      t9, 0x4A38(v0)             ## 00004A38
lbl_80804B24:
	sll     a1, v1,  1                 
	addu    t8, a0, a1                 
	sll     t6, t9,  2                 
	subu    t6, t6, t9                 
	sll     t6, t6,  1                 
	addu    t7, s3, t6                 
	addu    a3, t8, t2                 
	addu    t8, t7, a1                 
	lh      t1, 0x0000(t8)             ## 00000000
	lh      t0, 0x4A44(a3)             ## 00004A44
	addiu   v1, v1, 0x0001             ## v1 = 00000001
	sll     v1, v1, 16                 
	subu    a2, t0, t1                 
	bltz    a2, lbl_80804B68           
	sra     v1, v1, 16                 
	beq     $zero, $zero, lbl_80804B6C 
	or      a1, a2, $zero              ## a1 = 00000000
lbl_80804B68:
	subu    a1, $zero, a2              
lbl_80804B6C:
	lh      t9, 0x4A42(v0)             ## 00004A42
	div     $zero, a1, t9              
	bne     t9, $zero, lbl_80804B80    
	nop
	break	## 0x01C00
lbl_80804B80:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t9, $at, lbl_80804B98      
	lui     $at, 0x8000                ## $at = 80000000
	bne     a1, $at, lbl_80804B98      
	nop
	break	## 0x01800
lbl_80804B98:
	mflo    a2                         
	sll     a2, a2, 16                 
	slt     $at, t1, t0                
	bne     $at, $zero, lbl_80804BB8   
	sra     a2, a2, 16                 
	addu    t6, t0, a2                 
	beq     $zero, $zero, lbl_80804BC0 
	sh      t6, 0x4A44(a3)             ## 00004A44
lbl_80804BB8:
	subu    t7, t0, a2                 
	sh      t7, 0x4A44(a3)             ## 00004A44
lbl_80804BC0:
	slti    $at, v1, 0x0003            
	bnel    $at, $zero, lbl_80804A88   
	lh      t8, 0x4A50(v0)             ## 00004A50
	lh      t8, 0x4A42(v0)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t9, t8, 0xFFFF             ## t9 = FFFFFFFF
	sh      t9, -0x35BE($at)           ## 0001CA42
	lh      t6, 0x4A42(v0)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	bne     t6, $zero, lbl_80804C34    
	addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
	lh      t7, 0x4A58(v0)             ## 00004A58
	addiu   t9, $zero, 0x0008          ## t9 = 00000008
	addiu   t6, $zero, 0x0003          ## t6 = 00000003
	sh      t7, -0x35AA($at)           ## 0001CA56
	lui     $at, 0x0002                ## $at = 00020000
	sh      t8, 0x4A60(v0)             ## 00004A60
	sh      $zero, 0x4A62(v0)          ## 00004A62
	addu    $at, $at, a0               
	sh      t9, -0x35BE($at)           ## 0001CA42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t6, -0x35D6($at)           ## 0001CA2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t7, $zero, 0x0007          ## t7 = 00000007
	sh      t7, -0x35D0($at)           ## 0001CA30
lbl_80804C34:
	lw      s0, 0x0008($sp)            
	lw      s1, 0x000C($sp)            
	lw      s2, 0x0010($sp)            
	lw      s3, 0x0014($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80804C4C:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    v0, a0, $at                
	lh      t6, 0x4A60(v0)             ## 00004A60
	lh      t8, 0x4A88(v0)             ## 00004A88
	lh      t0, 0x4A8A(v0)             ## 00004A8A
	lh      t2, 0x4A42(v0)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addiu   t7, t6, 0xFFE1             ## t7 = FFFFFFE1
	addiu   t9, t8, 0xFFE7             ## t9 = FFFFFFE7
	addiu   t1, t0, 0xFFE7             ## t1 = FFFFFFE7
	sh      t7, 0x4A60(v0)             ## 00004A60
	sh      t9, 0x4A88(v0)             ## 00004A88
	sh      t1, 0x4A8A(v0)             ## 00004A8A
	addu    $at, $at, a0               
	addiu   t3, t2, 0xFFFF             ## t3 = FFFFFFFF
	sh      t3, -0x35BE($at)           ## 0001CA42
	lh      t4, 0x4A42(v0)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	bne     t4, $zero, lbl_80804CC0    
	addiu   t5, $zero, 0x0008          ## t5 = 00000008
	sh      $zero, 0x4A60(v0)          ## 00004A60
	sh      t5, -0x35BE($at)           ## 0001CA42
	lh      t6, 0x4A30(v0)             ## 00004A30
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	sh      t7, -0x35D0($at)           ## 0001CA30
lbl_80804CC0:
	jr      $ra                        
	nop


func_80804CC8:
	lui     t0, 0x0001                 ## t0 = 00010000
	ori     t0, t0, 0x8000             ## t0 = 00018000
	addu    v0, a0, t0                 
	lh      t6, 0x4A50(v0)             ## 00004A50
	sll     t7, t6,  1                 
	addu    t8, a0, t7                 
	addu    v1, t8, t0                 
	lh      t9, 0x4A7E(v1)             ## 00004A7E
	addiu   t1, t9, 0x0019             ## t1 = 00000019
	sh      t1, 0x4A7E(v1)             ## 00004A7E
	lh      t2, 0x4A50(v0)             ## 00004A50
	sll     t3, t2,  1                 
	addu    t4, a0, t3                 
	addu    v1, t4, t0                 
	lh      t5, 0x4A72(v1)             ## 00004A72
	addiu   t6, t5, 0x0019             ## t6 = 00000019
	sh      t6, 0x4A72(v1)             ## 00004A72
	lh      t9, 0x4A50(v0)             ## 00004A50
	lh      t7, 0x4A62(v0)             ## 00004A62
	sll     t1, t9,  1                 
	addu    t2, a0, t1                 
	addiu   t8, t7, 0x001F             ## t8 = 0000001F
	sh      t8, 0x4A62(v0)             ## 00004A62
	addu    v1, t2, t0                 
	lh      a1, 0x4A3C(v1)             ## 00004A3C
	addiu   t1, $zero, 0xFFC8          ## t1 = FFFFFFC8
	addiu   a2, a1, 0x0038             ## a2 = 00000038
	bltzl   a2, lbl_80804D48           
	addiu   t3, $zero, 0xFFC8          ## t3 = FFFFFFC8
	beq     $zero, $zero, lbl_80804D4C 
	or      a3, a2, $zero              ## a3 = 00000038
	addiu   t3, $zero, 0xFFC8          ## t3 = FFFFFFC8
lbl_80804D48:
	subu    a3, t3, a1                 
lbl_80804D4C:
	lh      t4, 0x4A42(v0)             ## 00004A42
	div     $zero, a3, t4              
	mflo    a2                         
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	subu    t5, a1, a2                 
	sh      t5, 0x4A3C(v1)             ## 00004A3C
	lh      t6, 0x4A50(v0)             ## 00004A50
	bne     t4, $zero, lbl_80804D78    
	nop
	break	## 0x01C00
lbl_80804D78:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t4, $at, lbl_80804D90      
	lui     $at, 0x8000                ## $at = 80000000
	bne     a3, $at, lbl_80804D90      
	nop
	break	## 0x01800
lbl_80804D90:
	sll     t7, t6,  1                 
	addu    t8, a0, t7                 
	addu    v1, t8, t0                 
	lh      t9, 0x4A3C(v1)             ## 00004A3C
	addiu   t5, $zero, 0x005A          ## t5 = 0000005A
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	slti    $at, t9, 0xFFC9            
	beql    $at, $zero, lbl_80804DBC   
	lh      t2, 0x4A42(v0)             ## 00004A42
	sh      t1, 0x4A3C(v1)             ## 00004A3C
	lh      t2, 0x4A42(v0)             ## 00004A42
lbl_80804DBC:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t3, t2, 0xFFFF             ## t3 = FFFFFFFF
	sh      t3, -0x35BE($at)           ## 0001CA42
	lh      t4, 0x4A42(v0)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	bne     t4, $zero, lbl_80804E10    
	nop
	sh      t5, -0x35BE($at)           ## 0001CA42
	lh      t6, 0x4A58(v0)             ## 00004A58
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t6, -0x35AA($at)           ## 0001CA56
	lh      t8, 0x4A30(v0)             ## 00004A30
	lui     $at, 0x0002                ## $at = 00020000
	sh      t7, 0x4A60(v0)             ## 00004A60
	sh      $zero, 0x4A62(v0)          ## 00004A62
	addu    $at, $at, a0               
	addiu   t9, t8, 0x0001             ## t9 = 00000020
	sh      t9, -0x35D0($at)           ## 0001CA30
lbl_80804E10:
	jr      $ra                        
	nop


func_80804E18:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0020($sp)            
	lui     t0, 0x0001                 ## t0 = 00010000
	ori     t0, t0, 0x8000             ## t0 = 00018000
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	addu    v1, s0, t0                 
	lh      v0, 0x4A42(v1)             ## 00004A42
	addiu   $at, $zero, 0x004B         ## $at = 0000004B
	lui     a3, 0x8010                 ## a3 = 80100000
	bne     v0, $at, lbl_80804E90      
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	lh      t7, 0x4A50(v1)             ## 00004A50
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	lui     t2, 0x8010                 ## t2 = 80100000
	sll     t8, t7,  1                 
	addu    t9, s0, t8                 
	addu    t1, t9, t0                 
	sh      t6, 0x4A78(t1)             ## 00004A78
	addiu   t2, t2, 0x43A8             ## t2 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t2, 0x0014($sp)            
	sw      v1, 0x002C($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x28BA          ## a0 = 000028BA
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	lw      v1, 0x002C($sp)            
	lh      v0, 0x4A42(v1)             ## 00004A42
lbl_80804E90:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t3, v0, 0xFFFF             ## t3 = FFFFFFFF
	sh      t3, -0x35BE($at)           ## 0001CA42
	lh      v0, 0x4A42(v1)             ## 00004A42
	slti    $at, v0, 0x004A            
	beql    $at, $zero, lbl_80804F24   
	lw      $ra, 0x0024($sp)           
	lhu     t4, 0x0020(s0)             ## 00000020
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	andi    t5, t4, 0xD000             ## t5 = 00000000
	bne     t5, $zero, lbl_80804ED0    
	addiu   t7, $zero, 0x0008          ## t7 = 00000008
	bnel    v0, $zero, lbl_80804F24    
	lw      $ra, 0x0024($sp)           
lbl_80804ED0:
	sh      t7, -0x35BE($at)           ## 0001CA42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x35A8($at)        ## 0001CA58
	lh      t8, 0x4A30(v1)             ## 00004A30
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	lui     t6, 0x8010                 ## t6 = 80100000
	lui     t1, 0x8010                 ## t1 = 80100000
	addiu   t9, t8, 0x0001             ## t9 = 00000001
	sh      t9, -0x35D0($at)           ## 0001CA30
	addiu   t1, t1, 0x43A8             ## t1 = 801043A8
	addiu   a3, t6, 0x43A0             ## a3 = 801043A0
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      a3, 0x0010($sp)            
	sw      t1, 0x0014($sp)            
	addiu   a0, $zero, 0x483B          ## a0 = 0000483B
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	lw      $ra, 0x0024($sp)           
lbl_80804F24:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_80804F34:
	lui     a2, 0x0001                 ## a2 = 00010000
	ori     a2, a2, 0x8000             ## a2 = 00018000
	addu    v0, a0, a2                 
	lh      t6, 0x4A38(v0)             ## 00004A38
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sll     t7, t6,  1                 
	addu    t8, a0, t7                 
	addu    v1, t8, a2                 
	lh      t9, 0x4A7E(v1)             ## 00004A7E
	addiu   t0, t9, 0xFFE7             ## t0 = FFFFFFE7
	sh      t0, 0x4A7E(v1)             ## 00004A7E
	lh      t1, 0x4A50(v0)             ## 00004A50
	sll     t2, t1,  1                 
	addu    t3, a0, t2                 
	addu    a1, t3, a2                 
	lh      t4, 0x4A7E(a1)             ## 00004A7E
	addiu   t5, t4, 0xFFE7             ## t5 = FFFFFFE7
	sh      t5, 0x4A7E(a1)             ## 00004A7E
	lh      t6, 0x4A38(v0)             ## 00004A38
	sll     t7, t6,  1                 
	addu    t8, a0, t7                 
	addu    v1, t8, a2                 
	lh      t9, 0x4A6C(v1)             ## 00004A6C
	addiu   t0, t9, 0x0019             ## t0 = 00000019
	sh      t0, 0x4A6C(v1)             ## 00004A6C
	lh      t1, 0x4A50(v0)             ## 00004A50
	sll     t2, t1,  1                 
	addu    t3, a0, t2                 
	addu    a1, t3, a2                 
	lh      t4, 0x4A6C(a1)             ## 00004A6C
	addiu   t5, t4, 0x0019             ## t5 = 00000019
	sh      t5, 0x4A6C(a1)             ## 00004A6C
	lh      t6, 0x4A60(v0)             ## 00004A60
	lh      t8, 0x4A42(v0)             ## 00004A42
	addiu   t7, t6, 0xFFE1             ## t7 = FFFFFFE1
	sh      t7, 0x4A60(v0)             ## 00004A60
	addiu   t9, t8, 0xFFFF             ## t9 = FFFFFFFF
	sh      t9, -0x35BE($at)           ## 0001CA42
	lh      t0, 0x4A42(v0)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	bne     t0, $zero, lbl_8080501C    
	addiu   t6, $zero, 0x0008          ## t6 = 00000008
	lh      t2, 0x4A50(v0)             ## 00004A50
	sh      $zero, 0x4A4A(v0)          ## 00004A4A
	lh      t1, 0x4A4A(v0)             ## 00004A4A
	sll     t3, t2,  1                 
	addu    t4, a0, t3                 
	addu    t5, t4, a2                 
	sh      t1, 0x4A3C(t5)             ## 00004A55
	sh      t6, -0x35BE($at)           ## 0001CA42
	lh      t7, 0x4A30(v0)             ## 00004A30
	lui     $at, 0x0002                ## $at = 00020000
	sh      $zero, 0x4A60(v0)          ## 00004A60
	addu    $at, $at, a0               
	addiu   t8, t7, 0x0001             ## t8 = FFFFFFE2
	sh      t8, -0x35D0($at)           ## 0001CA30
lbl_8080501C:
	jr      $ra                        
	nop


func_80805024:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      s4, 0x0014($sp)            
	sw      s3, 0x0010($sp)            
	sw      s2, 0x000C($sp)            
	sw      s1, 0x0008($sp)            
	sw      s0, 0x0004($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    v0, a0, $at                
	addu    v1, $at, $zero             
	or      a2, $zero, $zero           ## a2 = 00000000
	sll     t6, a2,  1                 
lbl_80805054:
	addu    t7, a0, t6                 
	addu    t1, t7, v1                 
	lh      t0, 0x4A44(t1)             ## 00004A44
	addiu   a2, a2, 0x0001             ## a2 = 00000001
	sll     a2, a2, 16                 
	bltz    t0, lbl_80805078           
	sra     a2, a2, 16                 
	beq     $zero, $zero, lbl_8080507C 
	or      a1, t0, $zero              ## a1 = 00000000
lbl_80805078:
	subu    a1, $zero, t0              
lbl_8080507C:
	lh      t8, 0x4A42(v0)             ## 00004A42
	div     $zero, a1, t8              
	bne     t8, $zero, lbl_80805090    
	nop
	break	## 0x01C00
lbl_80805090:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t8, $at, lbl_808050A8      
	lui     $at, 0x8000                ## $at = 80000000
	bne     a1, $at, lbl_808050A8      
	nop
	break	## 0x01800
lbl_808050A8:
	mflo    a3                         
	sll     a3, a3, 16                 
	slti    $at, a2, 0x0005            
	bltz    t0, lbl_808050C8           
	sra     a3, a3, 16                 
	subu    t9, t0, a3                 
	beq     $zero, $zero, lbl_808050D0 
	sh      t9, 0x4A44(t1)             ## 00004A44
lbl_808050C8:
	addu    t6, t0, a3                 
	sh      t6, 0x4A44(t1)             ## 00004A44
lbl_808050D0:
	bnel    $at, $zero, lbl_80805054   
	sll     t6, a2,  1                 
	lui     t4, 0x8010                 ## t4 = 80100000
	addiu   t4, t4, 0xBF00             ## t4 = 800FBF00
	or      a2, $zero, $zero           ## a2 = 00000000
	addiu   s2, $zero, 0x0041          ## s2 = 00000041
	addiu   s1, $zero, 0x0044          ## s1 = 00000044
	addiu   s0, $zero, 0x004C          ## s0 = 0000004C
	addiu   t5, $zero, 0x0045          ## t5 = 00000045
	addiu   t3, $zero, 0x005A          ## t3 = 0000005A
	lh      t7, 0x4A2A(v0)             ## 00004A2A
lbl_808050FC:
	sll     a3, a2,  1                 
	addu    t8, a0, a3                 
	beq     a2, t7, lbl_80805188       
	addu    t1, t8, v1                 
	lh      t9, 0x4A66(t1)             ## 00004A66
	addu    t7, t4, a3                 
	addiu   t6, t9, 0x0019             ## t6 = 00000019
	sh      t6, 0x4A66(t1)             ## 00004A66
	lw      t9, 0x01D8(a0)             ## 000001D8
	lhu     t8, 0x0000(t7)             ## 00000000
	addu    t2, t8, t9                 
	lbu     t6, 0x001C(t2)             ## 0000001C
	beql    t3, t6, lbl_80805174       
	lh      t0, 0x4A66(t1)             ## 00004A66
	lbu     t7, 0x001D(t2)             ## 0000001D
	beql    t5, t7, lbl_80805174       
	lh      t0, 0x4A66(t1)             ## 00004A66
	lbu     t8, 0x001E(t2)             ## 0000001E
	beql    s0, t8, lbl_80805174       
	lh      t0, 0x4A66(t1)             ## 00004A66
	lbu     t9, 0x001F(t2)             ## 0000001F
	beql    s1, t9, lbl_80805174       
	lh      t0, 0x4A66(t1)             ## 00004A66
	lbu     t6, 0x0020(t2)             ## 00000020
	beql    s2, t6, lbl_80805174       
	lh      t0, 0x4A66(t1)             ## 00004A66
	lbu     t7, 0x0021(t2)             ## 00000021
	bnel    t3, t7, lbl_8080518C       
	addiu   a2, a2, 0x0001             ## a2 = 00000001
	lh      t0, 0x4A66(t1)             ## 00004A66
lbl_80805174:
	lh      t8, 0x4A78(t1)             ## 00004A78
	sh      t0, 0x4A72(t1)             ## 00004A72
	addiu   t9, t8, 0x001F             ## t9 = 0000001F
	sh      t9, 0x4A78(t1)             ## 00004A78
	sh      t0, 0x4A6C(t1)             ## 00004A6C
lbl_80805188:
	addiu   a2, a2, 0x0001             ## a2 = 00000002
lbl_8080518C:
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	slti    $at, a2, 0x0003            
	bnel    $at, $zero, lbl_808050FC   
	lh      t7, 0x4A2A(v0)             ## 00004A2A
	lh      t6, 0x4A84(v0)             ## 00004A84
	lh      t8, 0x4A86(v0)             ## 00004A86
	lui     $at, 0x0002                ## $at = 00020000
	addiu   t7, t6, 0x0019             ## t7 = 00000032
	lh      t6, 0x4A8C(v0)             ## 00004A8C
	sh      t7, 0x4A84(v0)             ## 00004A84
	addiu   t9, t8, 0x0019             ## t9 = 00000019
	sh      t9, 0x4A86(v0)             ## 00004A86
	addu    $at, $at, a0               
	addiu   t7, t6, 0x0019             ## t7 = 00000032
	sh      t7, -0x3574($at)           ## 0001CA8C
	lh      t8, 0x4A62(v0)             ## 00004A62
	lh      t6, 0x4A42(v0)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addiu   t9, t8, 0x001F             ## t9 = 0000001F
	sh      t9, 0x4A62(v0)             ## 00004A62
	addu    $at, $at, a0               
	addiu   t7, t6, 0xFFFF             ## t7 = 00000018
	sh      t7, -0x35BE($at)           ## 0001CA42
	lh      t8, 0x4A42(v0)             ## 00004A42
	or      a2, $zero, $zero           ## a2 = 00000000
	addiu   a1, a0, 0x01D8             ## a1 = 000001D8
	bne     t8, $zero, lbl_80805308    
	addiu   s4, $zero, 0x00FF          ## s4 = 000000FF
	addiu   s3, $zero, 0x00C8          ## s3 = 000000C8
	sll     a3, a2,  1                 
lbl_80805208:
	addu    t9, a0, a3                 
	addu    t1, t9, v1                 
	sh      $zero, 0x4A78(t1)          ## 00004A78
	lh      t0, 0x4A78(t1)             ## 00004A78
	sh      s3, 0x4A66(t1)             ## 00004A66
	addu    t6, t4, a3                 
	sh      t0, 0x4A72(t1)             ## 00004A72
	sh      t0, 0x4A6C(t1)             ## 00004A6C
	lw      t8, 0x0000(a1)             ## 000001D8
	lhu     t7, 0x0000(t6)             ## 00000019
	addiu   a2, a2, 0x0001             ## a2 = 00000001
	sll     a2, a2, 16                 
	addu    t2, t7, t8                 
	lbu     t9, 0x001C(t2)             ## 0000001C
	sra     a2, a2, 16                 
	slti    $at, a2, 0x0003            
	beql    t3, t9, lbl_80805290       
	lh      t0, 0x4A66(t1)             ## 00004A66
	lbu     t6, 0x001D(t2)             ## 0000001D
	beql    t5, t6, lbl_80805290       
	lh      t0, 0x4A66(t1)             ## 00004A66
	lbu     t7, 0x001E(t2)             ## 0000001E
	beql    s0, t7, lbl_80805290       
	lh      t0, 0x4A66(t1)             ## 00004A66
	lbu     t8, 0x001F(t2)             ## 0000001F
	beql    s1, t8, lbl_80805290       
	lh      t0, 0x4A66(t1)             ## 00004A66
	lbu     t9, 0x0020(t2)             ## 00000020
	beql    s2, t9, lbl_80805290       
	lh      t0, 0x4A66(t1)             ## 00004A66
	lbu     t6, 0x0021(t2)             ## 00000021
	bne     t3, t6, lbl_8080529C       
	nop
	lh      t0, 0x4A66(t1)             ## 00004A66
lbl_80805290:
	sh      s4, 0x4A78(t1)             ## 00004A78
	sh      t0, 0x4A72(t1)             ## 00004A72
	sh      t0, 0x4A6C(t1)             ## 00004A6C
lbl_8080529C:
	bnel    $at, $zero, lbl_80805208   
	sll     a3, a2,  1                 
	lh      t7, 0x4A38(v0)             ## 00004A38
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sll     t8, t7,  1                 
	addu    t9, a0, t8                 
	addu    t6, t9, v1                 
	sh      $zero, 0x4A3C(t6)          ## 00004A55
	addiu   t7, $zero, 0x0046          ## t7 = 00000046
	sh      t7, 0x4A9A(v0)             ## 00004A9A
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	sh      t8, -0x3564($at)           ## 0001CA9C
	lui     a1, 0x8012                 ## a1 = 80120000
	lw      a1, -0x4600(a1)            ## 8011BA00
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	lh      t9, 0x0ADC(a1)             ## 80120ADC
	addiu   t7, $zero, 0x0002          ## t7 = 00000002
	sh      t9, 0x0ADA(a1)             ## 80120ADA
	lh      t6, 0x4A58(v0)             ## 00004A58
	sh      t6, -0x35AA($at)           ## 0001CA56
	lui     $at, 0x0002                ## $at = 00020000
	sh      s4, 0x4A60(v0)             ## 00004A60
	sh      $zero, 0x4A62(v0)          ## 00004A62
	addu    $at, $at, a0               
	sh      t7, -0x35D0($at)           ## 0001CA30
lbl_80805308:
	lw      s0, 0x0004($sp)            
	lw      s1, 0x0008($sp)            
	lw      s2, 0x000C($sp)            
	lw      s3, 0x0010($sp)            
	lw      s4, 0x0014($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80805324:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    t0, a0, $at                
	addu    t1, $at, $zero             
	or      v0, $zero, $zero           ## v0 = 00000000
	sll     t6, v0,  1                 
lbl_8080533C:
	addu    t7, a0, t6                 
	addu    a2, t7, t1                 
	lh      a3, 0x4A44(a2)             ## 00004A44
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	sll     v0, v0, 16                 
	bltz    a3, lbl_80805360           
	sra     v0, v0, 16                 
	beq     $zero, $zero, lbl_80805364 
	or      v1, a3, $zero              ## v1 = 00000000
lbl_80805360:
	subu    v1, $zero, a3              
lbl_80805364:
	lh      t8, 0x4A42(t0)             ## 00004A42
	div     $zero, v1, t8              
	bne     t8, $zero, lbl_80805378    
	nop
	break	## 0x01C00
lbl_80805378:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t8, $at, lbl_80805390      
	lui     $at, 0x8000                ## $at = 80000000
	bne     v1, $at, lbl_80805390      
	nop
	break	## 0x01800
lbl_80805390:
	mflo    a1                         
	sll     a1, a1, 16                 
	slti    $at, v0, 0x0005            
	bltz    a3, lbl_808053B0           
	sra     a1, a1, 16                 
	subu    t9, a3, a1                 
	beq     $zero, $zero, lbl_808053B8 
	sh      t9, 0x4A44(a2)             ## 00004A44
lbl_808053B0:
	addu    t2, a3, a1                 
	sh      t2, 0x4A44(a2)             ## 00004A44
lbl_808053B8:
	bnel    $at, $zero, lbl_8080533C   
	sll     t6, v0,  1                 
	lh      t3, 0x4A84(t0)             ## 00004A84
	lh      t5, 0x4A8A(t0)             ## 00004A8A
	lh      t7, 0x4A60(t0)             ## 00004A60
	lh      t9, 0x4A62(t0)             ## 00004A62
	addiu   t4, t3, 0x0019             ## t4 = 00000019
	lh      t3, 0x4A42(t0)             ## 00004A42
	sh      t4, 0x4A84(t0)             ## 00004A84
	lui     $at, 0x0002                ## $at = 00020000
	addiu   t6, t5, 0xFFE7             ## t6 = FFFFFFE7
	addiu   t8, t7, 0xFFE1             ## t8 = FFFFFFE1
	addiu   t2, t9, 0x001F             ## t2 = 0000001F
	sh      t6, 0x4A8A(t0)             ## 00004A8A
	sh      t8, 0x4A60(t0)             ## 00004A60
	sh      t2, 0x4A62(t0)             ## 00004A62
	addu    $at, $at, a0               
	addiu   t4, t3, 0xFFFF             ## t4 = FFFFFFFF
	sh      t4, -0x35BE($at)           ## 0001CA42
	lh      t5, 0x4A42(t0)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addiu   t6, $zero, 0x00C8          ## t6 = 000000C8
	bne     t5, $zero, lbl_80805444    
	addu    $at, $at, a0               
	lh      t7, 0x4A58(t0)             ## 00004A58
	sh      t6, 0x4A84(t0)             ## 00004A84
	sh      $zero, 0x4A8A(t0)          ## 00004A8A
	sh      t7, -0x35AA($at)           ## 0001CA56
	addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
	lui     $at, 0x0002                ## $at = 00020000
	sh      t8, 0x4A60(t0)             ## 00004A60
	sh      $zero, 0x4A62(t0)          ## 00004A62
	addu    $at, $at, a0               
	addiu   t9, $zero, 0x0002          ## t9 = 00000002
	sh      t9, -0x35D0($at)           ## 0001CA30
lbl_80805444:
	lh      v0, 0x4A84(t0)             ## 00004A84
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      v0, 0x4A86(t0)             ## 00004A86
	sh      v0, -0x3574($at)           ## 0001CA8C
	jr      $ra                        
	nop


func_80805460:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	lui     t3, %hi(var_80812BB0)      ## t3 = 80810000
	addiu   t3, t3, %lo(var_80812BB0)  ## t3 = 80812BB0
	addu    t1, a0, $at                
	addu    t2, $at, $zero             
	or      v0, $zero, $zero           ## v0 = 00000000
	sll     v1, v0,  1                 
lbl_80805480:
	addu    t6, a0, v1                 
	addu    a3, t6, t2                 
	addu    t7, t3, v1                 
	lh      a1, 0x0000(t7)             ## 00000000
	lh      t0, 0x4A44(a3)             ## 00004A44
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	sll     v0, v0, 16                 
	subu    a2, t0, a1                 
	bltz    a2, lbl_808054B0           
	sra     v0, v0, 16                 
	beq     $zero, $zero, lbl_808054B4 
	or      v1, a2, $zero              ## v1 = 00000000
lbl_808054B0:
	subu    v1, $zero, a2              
lbl_808054B4:
	lh      t8, 0x4A42(t1)             ## 00004A42
	div     $zero, v1, t8              
	bne     t8, $zero, lbl_808054C8    
	nop
	break	## 0x01C00
lbl_808054C8:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t8, $at, lbl_808054E0      
	lui     $at, 0x8000                ## $at = 80000000
	bne     v1, $at, lbl_808054E0      
	nop
	break	## 0x01800
lbl_808054E0:
	mflo    a2                         
	sll     a2, a2, 16                 
	slt     $at, t0, a1                
	bne     $at, $zero, lbl_80805500   
	sra     a2, a2, 16                 
	subu    t9, t0, a2                 
	beq     $zero, $zero, lbl_80805508 
	sh      t9, 0x4A44(a3)             ## 00004A44
lbl_80805500:
	addu    t4, t0, a2                 
	sh      t4, 0x4A44(a3)             ## 00004A44
lbl_80805508:
	slti    $at, v0, 0x0005            
	bnel    $at, $zero, lbl_80805480   
	sll     v1, v0,  1                 
	lh      t5, 0x4A84(t1)             ## 00004A84
	lh      t7, 0x4A86(t1)             ## 00004A86
	lh      t9, 0x4A8C(t1)             ## 00004A8C
	lui     $at, 0x0002                ## $at = 00020000
	addiu   t6, t5, 0xFFCE             ## t6 = FFFFFFCE
	addiu   t8, t7, 0xFFCE             ## t8 = FFFFFFCE
	sh      t6, 0x4A84(t1)             ## 00004A84
	sh      t8, 0x4A86(t1)             ## 00004A86
	addu    $at, $at, a0               
	addiu   t4, t9, 0xFFCE             ## t4 = FFFFFFCE
	sh      t4, -0x3574($at)           ## 0001CA8C
	lh      t5, 0x4A8A(t1)             ## 00004A8A
	lh      t7, 0x4A84(t1)             ## 00004A84
	lui     $at, 0x0002                ## $at = 00020000
	addiu   t6, t5, 0x0019             ## t6 = 00000019
	bgtz    t7, lbl_8080556C           
	sh      t6, 0x4A8A(t1)             ## 00004A8A
	addu    $at, $at, a0               
	sh      $zero, -0x3574($at)        ## 0001CA8C
	lh      v0, 0x4A8C(t1)             ## 00004A8C
	sh      v0, 0x4A86(t1)             ## 00004A86
	sh      v0, 0x4A84(t1)             ## 00004A84
lbl_8080556C:
	lh      t8, 0x4A60(t1)             ## 00004A60
	lh      t4, 0x4A62(t1)             ## 00004A62
	lh      t6, 0x4A42(t1)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addiu   t9, t8, 0xFFE1             ## t9 = FFFFFFAF
	addiu   t5, t4, 0x001F             ## t5 = FFFFFFED
	sh      t9, 0x4A60(t1)             ## 00004A60
	sh      t5, 0x4A62(t1)             ## 00004A62
	addu    $at, $at, a0               
	addiu   t7, t6, 0xFFFF             ## t7 = 00000018
	sh      t7, -0x35BE($at)           ## 0001CA42
	lh      t8, 0x4A42(t1)             ## 00004A42
	addiu   t9, $zero, 0x0046          ## t9 = 00000046
	lui     $at, 0x0002                ## $at = 00020000
	bne     t8, $zero, lbl_80805628    
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	sh      t9, 0x4A9A(t1)             ## 00004A9A
	addu    $at, $at, a0               
	sh      t4, -0x3564($at)           ## 0001CA9C
	lui     v1, 0x8012                 ## v1 = 80120000
	lw      v1, -0x4600(v1)            ## 8011BA00
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	lh      t5, 0x0ADC(v1)             ## 80120ADC
	addiu   t6, $zero, 0x00C8          ## t6 = 000000C8
	addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
	sh      t5, 0x0ADA(v1)             ## 80120ADA
	sh      $zero, -0x3574($at)        ## 0001CA8C
	lh      v0, 0x4A8C(t1)             ## 00004A8C
	lh      t7, 0x4A58(t1)             ## 00004A58
	lui     $at, 0x0002                ## $at = 00020000
	sh      t6, 0x4A8A(t1)             ## 00004A8A
	addu    $at, $at, a0               
	sh      v0, 0x4A86(t1)             ## 00004A86
	sh      v0, 0x4A84(t1)             ## 00004A84
	sh      t7, -0x35AA($at)           ## 0001CA56
	lui     $at, 0x0002                ## $at = 00020000
	sh      t8, 0x4A60(t1)             ## 00004A60
	sh      $zero, 0x4A62(t1)          ## 00004A62
	addu    $at, $at, a0               
	addiu   t9, $zero, 0x0003          ## t9 = 00000003
	sh      t9, -0x35D6($at)           ## 0001CA2A
	lh      t4, 0x4A30(t1)             ## 00004A30
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t5, t4, 0x0001             ## t5 = 00000002
	sh      t5, -0x35D0($at)           ## 0001CA30
lbl_80805628:
	jr      $ra                        
	nop


func_80805630:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	addiu   t1, $zero, 0x0003          ## t1 = 00000003
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    t0, s0, $at                
	lh      v1, 0x4A2A(t0)             ## 00004A2A
	bnel    t1, v1, lbl_80805670       
	lhu     v0, 0x0020(s0)             ## 00000020
	lhu     t6, 0x0020(s0)             ## 00000020
	andi    t7, t6, 0x9000             ## t7 = 00000000
	bnel    t7, $zero, lbl_80805684    
	lui     $at, 0x0002                ## $at = 00020000
	lhu     v0, 0x0020(s0)             ## 00000020
lbl_80805670:
	addiu   $at, $zero, 0x4000         ## $at = 00004000
	andi    t8, v0, 0x4000             ## t8 = 00000000
	bne     t8, $at, lbl_80805700      
	andi    t6, v0, 0x9000             ## t6 = 00000000
	lui     $at, 0x0002                ## $at = 00020000
lbl_80805684:
	addu    $at, $at, s0               
	addiu   t9, $zero, 0x0004          ## t9 = 00000004
	sh      t9, -0x35D6($at)           ## 0001CA2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t2, $zero, 0x0008          ## t2 = 00000008
	sh      t2, -0x35BE($at)           ## 0001CA42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x35A8($at)        ## 0001CA58
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t3, $zero, 0x001E          ## t3 = 0000001E
	sh      t3, -0x35D0($at)           ## 0001CA30
	lui     $at, 0x0002                ## $at = 00020000
	lui     a3, 0x8010                 ## a3 = 80100000
	addu    $at, $at, s0               
	addiu   t4, $zero, 0xFFFF          ## t4 = FFFFFFFF
	lui     t5, 0x8010                 ## t5 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	sh      t4, -0x35AE($at)           ## 0001CA52
	addiu   t5, t5, 0x43A8             ## t5 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t5, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483C          ## a0 = 0000483C
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_808059AC 
	lw      $ra, 0x0024($sp)           
lbl_80805700:
	beq     t6, $zero, lbl_80805818    
	sll     t7, v1,  1                 
	lui     t8, 0x8010                 ## t8 = 80100000
	addu    t8, t8, t7                 
	lhu     t8, -0x4100(t8)            ## 800FBF00
	lw      t9, 0x01D8(s0)             ## 000001D8
	addiu   a0, $zero, 0x005A          ## a0 = 0000005A
	lui     a3, 0x8010                 ## a3 = 80100000
	addu    v0, t8, t9                 
	lbu     t2, 0x001C(v0)             ## 0000001C
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t8, $zero, 0x0008          ## t8 = 00000008
	beq     a0, t2, lbl_8080578C       
	lui     a1, 0x8010                 ## a1 = 80100000
	lbu     t3, 0x001D(v0)             ## 0000001D
	addiu   $at, $zero, 0x0045         ## $at = 00000045
	beql    t3, $at, lbl_80805790      
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t4, 0x001E(v0)             ## 0000001E
	addiu   $at, $zero, 0x004C         ## $at = 0000004C
	beql    t4, $at, lbl_80805790      
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t5, 0x001F(v0)             ## 0000001F
	addiu   $at, $zero, 0x0044         ## $at = 00000044
	beql    t5, $at, lbl_80805790      
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t6, 0x0020(v0)             ## 00000020
	addiu   $at, $zero, 0x0041         ## $at = 00000041
	beql    t6, $at, lbl_80805790      
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t7, 0x0021(v0)             ## 00000021
	lui     t5, 0x8010                 ## t5 = 80100000
	addiu   t5, t5, 0x43A8             ## t5 = 801043A8
	bne     a0, t7, lbl_808057F0       
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
lbl_8080578C:
	lui     $at, 0x0002                ## $at = 00020000
lbl_80805790:
	addu    $at, $at, s0               
	sh      t8, -0x35BE($at)           ## 0001CA42
	lh      t9, 0x4A2A(t0)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t9, -0x35C8($at)           ## 0001CA38
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t2, $zero, 0x0016          ## t2 = 00000016
	sh      t2, -0x35D0($at)           ## 0001CA30
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t3, $zero, 0x0007          ## t3 = 00000007
	lui     t4, 0x8010                 ## t4 = 80100000
	sh      t3, -0x35A8($at)           ## 0001CA58
	addiu   t4, t4, 0x43A8             ## t4 = 801043A8
	sw      t4, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483B          ## a0 = 0000483B
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_808059AC 
	lw      $ra, 0x0024($sp)           
lbl_808057F0:
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483D          ## a0 = 0000483D
	jal     func_800C806C              
	sw      t5, 0x0014($sp)            
	beq     $zero, $zero, lbl_808059AC 
	lw      $ra, 0x0024($sp)           
lbl_80805818:
	lh      v0, 0x4AAE(t0)             ## 00004AAE
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	bltz    v0, lbl_80805834           
	subu    a0, $zero, v0              
	beq     $zero, $zero, lbl_80805834 
	or      a0, v0, $zero              ## a0 = 00000000
lbl_80805834:
	slti    $at, a0, 0x001E            
	bne     $at, $zero, lbl_808058E0   
	addiu   a0, $zero, 0x4839          ## a0 = 00004839
	lui     t6, 0x8010                 ## t6 = 80100000
	addiu   t6, t6, 0x43A8             ## t6 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t6, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      a3, 0x0010($sp)            
	jal     func_800C806C              
	sw      t0, 0x002C($sp)            
	lw      t0, 0x002C($sp)            
	addiu   t1, $zero, 0x0003          ## t1 = 00000003
	lh      t7, 0x4AAE(t0)             ## 00004AAE
	slti    $at, t7, 0x001E            
	bnel    $at, $zero, lbl_808058B4   
	lh      t2, 0x4A2A(t0)             ## 00004A2A
	lh      t8, 0x4A2A(t0)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t9, t8, 0xFFFF             ## t9 = FFFFFFFF
	sh      t9, -0x35D6($at)           ## 0001CA2A
	lh      v1, 0x4A2A(t0)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	bgez    v1, lbl_808058E0           
	nop
	sh      t1, -0x35D6($at)           ## 0001CA2A
	beq     $zero, $zero, lbl_808058E0 
	lh      v1, 0x4A2A(t0)             ## 00004A2A
	lh      t2, 0x4A2A(t0)             ## 00004A2A
lbl_808058B4:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t3, t2, 0x0001             ## t3 = 00000001
	sh      t3, -0x35D6($at)           ## 0001CA2A
	lh      v1, 0x4A2A(t0)             ## 00004A2A
	slti    $at, v1, 0x0004            
	bne     $at, $zero, lbl_808058E0   
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x35D6($at)        ## 0001CA2A
	lh      v1, 0x4A2A(t0)             ## 00004A2A
lbl_808058E0:
	beq     t1, v1, lbl_8080599C       
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	sll     t4, v1,  1                 
	lui     t5, 0x8010                 ## t5 = 80100000
	addu    t5, t5, t4                 
	lhu     t5, -0x4100(t5)            ## 800FBF00
	lw      t6, 0x01D8(s0)             ## 000001D8
	addiu   a0, $zero, 0x005A          ## a0 = 0000005A
	addu    v0, t5, t6                 
	lbu     t7, 0x001C(v0)             ## 0000001C
	beql    a0, t7, lbl_8080598C       
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t8, 0x001D(v0)             ## 0000001D
	addiu   $at, $zero, 0x0045         ## $at = 00000045
	beql    t8, $at, lbl_8080598C      
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t9, 0x001E(v0)             ## 0000001E
	addiu   $at, $zero, 0x004C         ## $at = 0000004C
	beql    t9, $at, lbl_8080598C      
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t2, 0x001F(v0)             ## 0000001F
	addiu   $at, $zero, 0x0044         ## $at = 00000044
	beql    t2, $at, lbl_8080598C      
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t3, 0x0020(v0)             ## 00000020
	addiu   $at, $zero, 0x0041         ## $at = 00000041
	beql    t3, $at, lbl_8080598C      
	lui     $at, 0x0002                ## $at = 00020000
	lbu     t4, 0x0021(v0)             ## 00000021
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     a0, t4, lbl_80805988       
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	sh      t1, -0x35AE($at)           ## 0001CA52
	lh      t5, 0x4A2A(t0)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t5, -0x35AC($at)           ## 0001CA54
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     $zero, $zero, lbl_808059A8 
	sh      t6, -0x356E($at)           ## 0001CA92
lbl_80805988:
	lui     $at, 0x0002                ## $at = 00020000
lbl_8080598C:
	addu    $at, $at, s0               
	addiu   t7, $zero, 0xFFFF          ## t7 = FFFFFFFF
	beq     $zero, $zero, lbl_808059A8 
	sh      t7, -0x35AE($at)           ## 0001CA52
lbl_8080599C:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t8, -0x35AE($at)           ## 0001CA52
lbl_808059A8:
	lw      $ra, 0x0024($sp)           
lbl_808059AC:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_808059BC:
	addiu   $sp, $sp, 0xFFF0           ## $sp = FFFFFFF0
	sw      s2, 0x000C($sp)            
	sw      s1, 0x0008($sp)            
	sw      s0, 0x0004($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     v0, $at, 0x8000            ## v0 = 00018000
	lui     t4, 0x8010                 ## t4 = 80100000
	addiu   t4, t4, 0xBF00             ## t4 = 800FBF00
	addu    v1, a0, v0                 
	or      a2, $zero, $zero           ## a2 = 00000000
	addiu   s2, $zero, 0x0041          ## s2 = 00000041
	addiu   s1, $zero, 0x0044          ## s1 = 00000044
	addiu   s0, $zero, 0x004C          ## s0 = 0000004C
	addiu   t5, $zero, 0x0045          ## t5 = 00000045
	addiu   t3, $zero, 0x005A          ## t3 = 0000005A
	lh      t6, 0x4A2A(v1)             ## 00004A2A
lbl_808059FC:
	sll     a3, a2,  1                 
	addu    t7, a0, a3                 
	beq     a2, t6, lbl_80805A90       
	sll     t9, a2,  1                 
	addu    t0, t7, v0                 
	lh      t8, 0x4A66(t0)             ## 00004A66
	addu    t6, t4, a3                 
	addiu   t9, t8, 0xFFE7             ## t9 = FFFFFFE7
	sh      t9, 0x4A66(t0)             ## 00004A66
	lw      t8, 0x01D8(a0)             ## 000001D8
	lhu     t7, 0x0000(t6)             ## 00000000
	addu    t1, t7, t8                 
	lbu     t9, 0x001C(t1)             ## 0000001C
	beql    t3, t9, lbl_80805A78       
	lh      t7, 0x4A78(t0)             ## 00004A78
	lbu     t6, 0x001D(t1)             ## 0000001D
	beql    t5, t6, lbl_80805A78       
	lh      t7, 0x4A78(t0)             ## 00004A78
	lbu     t7, 0x001E(t1)             ## 0000001E
	beql    s0, t7, lbl_80805A78       
	lh      t7, 0x4A78(t0)             ## 00004A78
	lbu     t8, 0x001F(t1)             ## 0000001F
	beql    s1, t8, lbl_80805A78       
	lh      t7, 0x4A78(t0)             ## 00004A78
	lbu     t9, 0x0020(t1)             ## 00000020
	beql    s2, t9, lbl_80805A78       
	lh      t7, 0x4A78(t0)             ## 00004A78
	lbu     t6, 0x0021(t1)             ## 00000021
	bnel    t3, t6, lbl_80805AA8       
	addiu   a2, a2, 0x0001             ## a2 = 00000001
	lh      t7, 0x4A78(t0)             ## 00004A78
lbl_80805A78:
	lh      a3, 0x4A66(t0)             ## 00004A66
	addiu   t8, t7, 0xFFE1             ## t8 = FFFFFFE1
	sh      t8, 0x4A78(t0)             ## 00004A78
	sh      a3, 0x4A72(t0)             ## 00004A72
	beq     $zero, $zero, lbl_80805AA4 
	sh      a3, 0x4A6C(t0)             ## 00004A6C
lbl_80805A90:
	addu    t6, a0, t9                 
	addu    t0, t6, v0                 
	lh      t7, 0x4A6C(t0)             ## 00004A6C
	addiu   t8, t7, 0xFFE7             ## t8 = FFFFFFE7
	sh      t8, 0x4A6C(t0)             ## 00004A6C
lbl_80805AA4:
	addiu   a2, a2, 0x0001             ## a2 = 00000002
lbl_80805AA8:
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	slti    $at, a2, 0x0003            
	bnel    $at, $zero, lbl_808059FC   
	lh      t6, 0x4A2A(v1)             ## 00004A2A
	lh      t9, 0x4A60(v1)             ## 00004A60
	lh      t7, 0x4A62(v1)             ## 00004A62
	lh      a2, 0x4A2A(v1)             ## 00004A2A
	addiu   t6, t9, 0xFFF1             ## t6 = FFFFFFD8
	lui     a1, %hi(var_80812BDC)      ## a1 = 80810000
	sh      t6, 0x4A60(v1)             ## 00004A60
	addiu   t8, t7, 0x000F             ## t8 = 0000000F
	sll     a2, a2,  1                 
	addiu   a1, a1, %lo(var_80812BDC)  ## a1 = 80812BDC
	sh      t8, 0x4A62(v1)             ## 00004A62
	addu    t9, a0, a2                 
	addu    t0, t9, v0                 
	addu    t6, a1, a2                 
	lh      t2, 0x0000(t6)             ## FFFFFFD8
	lh      t1, 0x4A44(t0)             ## 00004A44
	subu    a3, t1, t2                 
	bltz    a3, lbl_80805B0C           
	subu    a2, $zero, a3              
	beq     $zero, $zero, lbl_80805B0C 
	or      a2, a3, $zero              ## a2 = 00000000
lbl_80805B0C:
	lh      t7, 0x4A42(v1)             ## 00004A42
	div     $zero, a2, t7              
	bne     t7, $zero, lbl_80805B20    
	nop
	break	## 0x01C00
lbl_80805B20:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t7, $at, lbl_80805B38      
	lui     $at, 0x8000                ## $at = 80000000
	bne     a2, $at, lbl_80805B38      
	nop
	break	## 0x01800
lbl_80805B38:
	mflo    a3                         
	sll     a3, a3, 16                 
	slt     $at, t1, t2                
	bne     $at, $zero, lbl_80805B58   
	sra     a3, a3, 16                 
	subu    t8, t1, a3                 
	beq     $zero, $zero, lbl_80805B60 
	sh      t8, 0x4A44(t0)             ## 00004A44
lbl_80805B58:
	addu    t9, t1, a3                 
	sh      t9, 0x4A44(t0)             ## 00004A44
lbl_80805B60:
	lh      t6, 0x4A42(v1)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t7, t6, 0xFFFF             ## t7 = FFFFFFD7
	sh      t7, -0x35BE($at)           ## 0001CA42
	lh      t8, 0x4A42(v1)             ## 00004A42
	or      a2, $zero, $zero           ## a2 = 00000000
	bnel    t8, $zero, lbl_80805C74    
	lw      s0, 0x0004($sp)            
	lh      t9, 0x4A2A(v1)             ## 00004A2A
lbl_80805B88:
	sll     a3, a2,  1                 
	addu    t6, a0, a3                 
	beq     a2, t9, lbl_80805C0C       
	sll     t8, a2,  1                 
	addu    t0, t6, v0                 
	sh      $zero, 0x4A66(t0)          ## 00004A66
	addu    t7, t4, a3                 
	lhu     t8, 0x0000(t7)             ## FFFFFFD7
	lw      t9, 0x01D8(a0)             ## 000001D8
	addu    t1, t8, t9                 
	lbu     t6, 0x001C(t1)             ## 0000001C
	beql    t3, t6, lbl_80805BFC       
	lh      a3, 0x4A66(t0)             ## 00004A66
	lbu     t7, 0x001D(t1)             ## 0000001D
	beql    t5, t7, lbl_80805BFC       
	lh      a3, 0x4A66(t0)             ## 00004A66
	lbu     t8, 0x001E(t1)             ## 0000001E
	beql    s0, t8, lbl_80805BFC       
	lh      a3, 0x4A66(t0)             ## 00004A66
	lbu     t9, 0x001F(t1)             ## 0000001F
	beql    s1, t9, lbl_80805BFC       
	lh      a3, 0x4A66(t0)             ## 00004A66
	lbu     t6, 0x0020(t1)             ## 00000020
	beql    s2, t6, lbl_80805BFC       
	lh      a3, 0x4A66(t0)             ## 00004A66
	lbu     t7, 0x0021(t1)             ## 00000021
	bnel    t3, t7, lbl_80805C1C       
	addiu   a2, a2, 0x0001             ## a2 = 00000001
	lh      a3, 0x4A66(t0)             ## 00004A66
lbl_80805BFC:
	sh      $zero, 0x4A78(t0)          ## 00004A78
	sh      a3, 0x4A72(t0)             ## 00004A72
	beq     $zero, $zero, lbl_80805C18 
	sh      a3, 0x4A6C(t0)             ## 00004A6C
lbl_80805C0C:
	addu    t9, a0, t8                 
	addu    t6, t9, v0                 
	sh      $zero, 0x4A6C(t6)          ## 00004A44
lbl_80805C18:
	addiu   a2, a2, 0x0001             ## a2 = 00000002
lbl_80805C1C:
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	slti    $at, a2, 0x0003            
	bnel    $at, $zero, lbl_80805B88   
	lh      t9, 0x4A2A(v1)             ## 00004A2A
	lh      a2, 0x4A2A(v1)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sll     a2, a2,  1                 
	addu    t7, a1, a2                 
	lh      t8, 0x0000(t7)             ## FFFFFFD7
	addu    t9, a0, a2                 
	addu    t6, t9, v0                 
	addiu   t7, $zero, 0x0008          ## t7 = 00000008
	sh      t8, 0x4A44(t6)             ## 00004A1C
	sh      t7, -0x35BE($at)           ## 0001CA42
	lh      t9, 0x4A30(v1)             ## 00004A30
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t8, t9, 0x0001             ## t8 = FFFFFFE8
	sh      t8, -0x35D0($at)           ## 0001CA30
	lw      s0, 0x0004($sp)            
lbl_80805C74:
	lw      s1, 0x0008($sp)            
	lw      s2, 0x000C($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0010           ## $sp = 00000000


func_80805C84:
	lui     a1, 0x0001                 ## a1 = 00010000
	ori     a1, a1, 0x8000             ## a1 = 00018000
	addu    v0, a0, a1                 
	lh      t2, 0x4A2A(v0)             ## 00004A2A
	lh      t6, 0x4A88(v0)             ## 00004A88
	lh      t8, 0x4A60(v0)             ## 00004A60
	lh      t0, 0x4A62(v0)             ## 00004A62
	sll     t3, t2,  1                 
	addu    t4, a0, t3                 
	addiu   t7, t6, 0x0019             ## t7 = 00000019
	addiu   t9, t8, 0xFFF1             ## t9 = FFFFFFF1
	addiu   t1, t0, 0x000F             ## t1 = 0000000F
	sh      t7, 0x4A88(v0)             ## 00004A88
	sh      t9, 0x4A60(v0)             ## 00004A60
	sh      t1, 0x4A62(v0)             ## 00004A62
	addu    v1, t4, a1                 
	lh      t5, 0x4A7E(v1)             ## 00004A7E
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t6, t5, 0x0019             ## t6 = 00000019
	sh      t6, 0x4A7E(v1)             ## 00004A7E
	lh      t7, 0x4A42(v0)             ## 00004A42
	addiu   t0, $zero, 0x0008          ## t0 = 00000008
	addiu   t2, $zero, 0x00FF          ## t2 = 000000FF
	addiu   t8, t7, 0xFFFF             ## t8 = 00000018
	sh      t8, -0x35BE($at)           ## 0001CA42
	lh      t9, 0x4A42(v0)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	bne     t9, $zero, lbl_80805D58    
	addiu   t8, $zero, 0x00C8          ## t8 = 000000C8
	sh      t0, -0x35BE($at)           ## 0001CA42
	lh      t1, 0x4A58(v0)             ## 00004A58
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t1, -0x35AA($at)           ## 0001CA56
	lh      t4, 0x4A2A(v0)             ## 00004A2A
	sh      t2, 0x4A60(v0)             ## 00004A60
	lh      t3, 0x4A60(v0)             ## 00004A60
	sll     t5, t4,  1                 
	addu    t6, a0, t5                 
	addu    t7, t6, a1                 
	sh      t3, 0x4A7E(t7)             ## 00004A97
	lui     $at, 0x0002                ## $at = 00020000
	sh      $zero, 0x4A62(v0)          ## 00004A62
	sh      t8, 0x4A88(v0)             ## 00004A88
	addu    $at, $at, a0               
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	sh      t9, -0x35D6($at)           ## 0001CA2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t0, $zero, 0x0018          ## t0 = 00000018
	sh      t0, -0x35D0($at)           ## 0001CA30
lbl_80805D58:
	jr      $ra                        
	nop


func_80805D60:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0020($sp)            
	lui     v1, 0x0001                 ## v1 = 00010000
	ori     v1, v1, 0x8000             ## v1 = 00018000
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	addu    t0, s0, v1                 
	lh      t6, 0x4A2A(t0)             ## 00004A2A
	beql    t6, $zero, lbl_80805D9C    
	lhu     v0, 0x0020(s0)             ## 00000020
	lhu     t7, 0x0020(s0)             ## 00000020
	andi    t8, t7, 0x9000             ## t8 = 00000000
	bnel    t8, $zero, lbl_80805DB0    
	lh      t1, 0x4A38(t0)             ## 00004A38
	lhu     v0, 0x0020(s0)             ## 00000020
lbl_80805D9C:
	addiu   $at, $zero, 0x4000         ## $at = 00004000
	andi    t9, v0, 0x4000             ## t9 = 00000000
	bne     t9, $at, lbl_80805E20      
	andi    t5, v0, 0x9000             ## t5 = 00000000
	lh      t1, 0x4A38(t0)             ## 00004A38
lbl_80805DB0:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t1, -0x35D6($at)           ## 0001CA2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t2, $zero, 0x0006          ## t2 = 00000006
	sh      t2, -0x35A8($at)           ## 0001CA58
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t3, $zero, 0x0019          ## t3 = 00000019
	sh      t3, -0x35D0($at)           ## 0001CA30
	lui     $at, 0x0002                ## $at = 00020000
	addiu   v0, $zero, 0x0008          ## v0 = 00000008
	lui     a3, 0x8010                 ## a3 = 80100000
	addu    $at, $at, s0               
	lui     t4, 0x8010                 ## t4 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	sh      v0, -0x35BE($at)           ## 0001CA42
	addiu   t4, t4, 0x43A8             ## t4 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t4, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483C          ## a0 = 0000483C
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_80805F38 
	lw      $ra, 0x0024($sp)           
lbl_80805E20:
	beq     t5, $zero, lbl_80805ED0    
	lui     a3, 0x8010                 ## a3 = 80100000
	lh      t6, 0x4A38(t0)             ## 00004A38
	lui     t5, 0x8010                 ## t5 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	sll     t7, t6,  1                 
	addu    t8, s0, t7                 
	addu    t9, t8, v1                 
	sh      $zero, 0x4A78(t9)          ## 00004A78
	lh      t1, 0x4A38(t0)             ## 00004A38
	addiu   t5, t5, 0x43A8             ## t5 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	sll     t2, t1,  1                 
	addu    t3, s0, t2                 
	addu    v0, t3, v1                 
	lh      t4, 0x4A78(v0)             ## 00004A78
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	addiu   a0, $zero, 0x28BA          ## a0 = 000028BA
	sh      t4, 0x4A20(v0)             ## 00004A20
	sw      t5, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	lui     $at, 0x0002                ## $at = 00020000
	addiu   v0, $zero, 0x0008          ## v0 = 00000008
	addu    $at, $at, s0               
	sh      v0, -0x35BE($at)           ## 0001CA42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t6, $zero, 0x001B          ## t6 = 0000001B
	sh      t6, -0x35D0($at)           ## 0001CA30
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      v0, -0x35A8($at)           ## 0001CA58
	lui     $at, 0x4348                ## $at = 43480000
	mtc1    $at, $f12                  ## $f12 = 200.00
	addiu   a1, $zero, 0x00FF          ## a1 = 000000FF
	addiu   a2, $zero, 0x0014          ## a2 = 00000014
	jal     func_800915CC              
	addiu   a3, $zero, 0x0096          ## a3 = 00000096
	addiu   t7, $zero, 0x000F          ## t7 = 0000000F
	lui     $at, %hi(var_80812BD0)     ## $at = 80810000
	beq     $zero, $zero, lbl_80805F34 
	sh      t7, %lo(var_80812BD0)($at) 
lbl_80805ED0:
	lh      v0, 0x4AAE(t0)             ## 00004AAE
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	bltz    v0, lbl_80805EEC           
	subu    v1, $zero, v0              
	beq     $zero, $zero, lbl_80805EEC 
	or      v1, v0, $zero              ## v1 = 00000000
lbl_80805EEC:
	slti    $at, v1, 0x001E            
	bne     $at, $zero, lbl_80805F34   
	addiu   a0, $zero, 0x4839          ## a0 = 00004839
	lui     t8, 0x8010                 ## t8 = 80100000
	addiu   t8, t8, 0x43A8             ## t8 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t8, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      a3, 0x0010($sp)            
	jal     func_800C806C              
	sw      t0, 0x0028($sp)            
	lw      t0, 0x0028($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	lh      t9, 0x4A2A(t0)             ## 00004A2A
	xori    t1, t9, 0x0001             ## t1 = 00000001
	sh      t1, -0x35D6($at)           ## 0001CA2A
lbl_80805F34:
	lw      $ra, 0x0024($sp)           
lbl_80805F38:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_80805F48:
	lui     a1, 0x0001                 ## a1 = 00010000
	ori     a1, a1, 0x8000             ## a1 = 00018000
	addu    v0, a0, a1                 
	lh      t6, 0x4A2A(v0)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sll     t7, t6,  1                 
	addu    t8, a0, t7                 
	addu    v1, t8, a1                 
	lh      t9, 0x4A7E(v1)             ## 00004A7E
	addiu   t0, t9, 0xFFE7             ## t0 = FFFFFFE7
	sh      t0, 0x4A7E(v1)             ## 00004A7E
	lh      t1, 0x4A2A(v0)             ## 00004A2A
	sll     t2, t1,  1                 
	addu    t3, a0, t2                 
	addu    v1, t3, a1                 
	lh      t4, 0x4A6C(v1)             ## 00004A6C
	addiu   t1, $zero, 0x0008          ## t1 = 00000008
	addiu   t5, t4, 0x0019             ## t5 = 00000019
	sh      t5, 0x4A6C(v1)             ## 00004A6C
	lh      t6, 0x4A88(v0)             ## 00004A88
	lh      t8, 0x4A42(v0)             ## 00004A42
	addiu   t7, t6, 0xFFE7             ## t7 = FFFFFFE7
	sh      t7, 0x4A88(v0)             ## 00004A88
	addiu   t9, t8, 0xFFFF             ## t9 = FFFFFFFF
	sh      t9, -0x35BE($at)           ## 0001CA42
	lh      t0, 0x4A42(v0)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	bne     t0, $zero, lbl_80805FF0    
	nop
	sh      t1, -0x35BE($at)           ## 0001CA42
	lh      t2, 0x4A2A(v0)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sll     t3, t2,  1                 
	addu    t4, a0, t3                 
	addu    t5, t4, a1                 
	sh      $zero, 0x4A7E(t5)          ## 00004A97
	lh      t6, 0x4A30(v0)             ## 00004A30
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	sh      t7, -0x35D0($at)           ## 0001CA30
lbl_80805FF0:
	jr      $ra                        
	nop


func_80805FF8:
	addiu   $sp, $sp, 0xFFF0           ## $sp = FFFFFFF0
	lui     v1, 0x0001                 ## v1 = 00010000
	lui     a1, %hi(var_80812BB0)      ## a1 = 80810000
	addiu   a1, a1, %lo(var_80812BB0)  ## a1 = 80812BB0
	ori     v1, v1, 0x8000             ## v1 = 00018000
	sw      s1, 0x000C($sp)            
	sw      s0, 0x0008($sp)            
	addu    v0, a0, v1                 
	lh      a2, 0x4A2A(v0)             ## 00004A2A
	addiu   s1, $zero, 0x0041          ## s1 = 00000041
	addiu   s0, $zero, 0x0044          ## s0 = 00000044
	sll     a2, a2,  1                 
	addu    t6, a0, a2                 
	addu    a3, t6, v1                 
	addu    t7, a1, a2                 
	lh      t1, 0x0000(t7)             ## 00000000
	lh      t0, 0x4A44(a3)             ## 00004A44
	addiu   t5, $zero, 0x004C          ## t5 = 0000004C
	addiu   t4, $zero, 0x0045          ## t4 = 00000045
	subu    t2, t0, t1                 
	bltz    t2, lbl_80806058           
	lui     t3, 0x8010                 ## t3 = 80100000
	beq     $zero, $zero, lbl_8080605C 
	or      a2, t2, $zero              ## a2 = 00000000
lbl_80806058:
	subu    a2, $zero, t2              
lbl_8080605C:
	lh      t8, 0x4A42(v0)             ## 00004A42
	addiu   t3, t3, 0xBF00             ## t3 = 800FBF00
	div     $zero, a2, t8              
	bne     t8, $zero, lbl_80806074    
	nop
	break	## 0x01C00
lbl_80806074:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t8, $at, lbl_8080608C      
	lui     $at, 0x8000                ## $at = 80000000
	bne     a2, $at, lbl_8080608C      
	nop
	break	## 0x01800
lbl_8080608C:
	mflo    t2                         
	sll     t2, t2, 16                 
	slt     $at, t0, t1                
	bne     $at, $zero, lbl_808060AC   
	sra     t2, t2, 16                 
	subu    t9, t0, t2                 
	beq     $zero, $zero, lbl_808060B4 
	sh      t9, 0x4A44(a3)             ## 00004A44
lbl_808060AC:
	addu    t6, t0, t2                 
	sh      t6, 0x4A44(a3)             ## 00004A44
lbl_808060B4:
	or      a2, $zero, $zero           ## a2 = 00000000
	addiu   t2, $zero, 0x005A          ## t2 = 0000005A
	lh      t7, 0x4A2A(v0)             ## 00004A2A
lbl_808060C0:
	sll     a3, a2,  1                 
	addu    t8, a0, a3                 
	beq     a2, t7, lbl_8080614C       
	addu    t0, t8, v1                 
	lh      t9, 0x4A66(t0)             ## 00004A66
	addu    t7, t3, a3                 
	addiu   t6, t9, 0x0019             ## t6 = 00000019
	sh      t6, 0x4A66(t0)             ## 00004A66
	lw      t9, 0x01D8(a0)             ## 000001D8
	lhu     t8, 0x0000(t7)             ## 00000000
	addu    t1, t8, t9                 
	lbu     t6, 0x001C(t1)             ## 0000001C
	beql    t2, t6, lbl_80806138       
	lh      a3, 0x4A66(t0)             ## 00004A66
	lbu     t7, 0x001D(t1)             ## 0000001D
	beql    t4, t7, lbl_80806138       
	lh      a3, 0x4A66(t0)             ## 00004A66
	lbu     t8, 0x001E(t1)             ## 0000001E
	beql    t5, t8, lbl_80806138       
	lh      a3, 0x4A66(t0)             ## 00004A66
	lbu     t9, 0x001F(t1)             ## 0000001F
	beql    s0, t9, lbl_80806138       
	lh      a3, 0x4A66(t0)             ## 00004A66
	lbu     t6, 0x0020(t1)             ## 00000020
	beql    s1, t6, lbl_80806138       
	lh      a3, 0x4A66(t0)             ## 00004A66
	lbu     t7, 0x0021(t1)             ## 00000021
	bnel    t2, t7, lbl_80806150       
	addiu   a2, a2, 0x0001             ## a2 = 00000001
	lh      a3, 0x4A66(t0)             ## 00004A66
lbl_80806138:
	lh      t8, 0x4A78(t0)             ## 00004A78
	sh      a3, 0x4A72(t0)             ## 00004A72
	addiu   t9, t8, 0x001F             ## t9 = 0000001F
	sh      t9, 0x4A78(t0)             ## 00004A78
	sh      a3, 0x4A6C(t0)             ## 00004A6C
lbl_8080614C:
	addiu   a2, a2, 0x0001             ## a2 = 00000002
lbl_80806150:
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	slti    $at, a2, 0x0003            
	bnel    $at, $zero, lbl_808060C0   
	lh      t7, 0x4A2A(v0)             ## 00004A2A
	lh      t6, 0x4A60(v0)             ## 00004A60
	lh      t8, 0x4A62(v0)             ## 00004A62
	lui     $at, 0x0002                ## $at = 00020000
	addiu   t7, t6, 0xFFE1             ## t7 = FFFFFFFA
	lh      t6, 0x4A42(v0)             ## 00004A42
	sh      t7, 0x4A60(v0)             ## 00004A60
	addiu   t9, t8, 0x001F             ## t9 = 0000001F
	sh      t9, 0x4A62(v0)             ## 00004A62
	addu    $at, $at, a0               
	addiu   t7, t6, 0xFFFF             ## t7 = 00000018
	sh      t7, -0x35BE($at)           ## 0001CA42
	lh      t8, 0x4A42(v0)             ## 00004A42
	bnel    t8, $zero, lbl_80806208    
	lw      s0, 0x0008($sp)            
	lh      a2, 0x4A2A(v0)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sll     a2, a2,  1                 
	addu    t9, a1, a2                 
	lh      t6, 0x0000(t9)             ## 0000001F
	addu    t7, a0, a2                 
	addu    t8, t7, v1                 
	addiu   t9, $zero, 0x0008          ## t9 = 00000008
	sh      t6, 0x4A44(t8)             ## 00004A44
	sh      t9, -0x35BE($at)           ## 0001CA42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t7, $zero, 0x0003          ## t7 = 00000003
	sh      t7, -0x35D6($at)           ## 0001CA2A
	lh      t6, 0x4A58(v0)             ## 00004A58
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t6, -0x35AA($at)           ## 0001CA56
	addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
	lui     $at, 0x0002                ## $at = 00020000
	sh      t8, 0x4A60(v0)             ## 00004A60
	sh      $zero, 0x4A62(v0)          ## 00004A62
	addu    $at, $at, a0               
	addiu   t9, $zero, 0x0015          ## t9 = 00000015
	sh      t9, -0x35D0($at)           ## 0001CA30
	lw      s0, 0x0008($sp)            
lbl_80806208:
	lw      s1, 0x000C($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0010           ## $sp = 00000000


func_80806214:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	lui     v1, %hi(var_80812BD0)      ## v1 = 80810000
	addiu   v1, v1, %lo(var_80812BD0)  ## v1 = 80812BD0
	sw      $ra, 0x001C($sp)           
	lh      v0, 0x0000(v1)             ## 80812BD0
	lui     a2, 0x0001                 ## a2 = 00010000
	ori     a2, a2, 0x8000             ## a2 = 00018000
	bne     v0, $zero, lbl_808063AC    
	addiu   t4, v0, 0xFFFF             ## t4 = FFFFFFFF
	addu    v0, a0, a2                 
	lh      v1, 0x4A42(v0)             ## 00004A42
	addiu   $at, $zero, 0x0008         ## $at = 00000008
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	bne     v1, $at, lbl_80806254      
	lui     $at, %hi(var_808137A0)     ## $at = 80810000
	sh      a1, %lo(var_808137A0)($at) 
lbl_80806254:
	lui     a1, %hi(var_808137A0)      ## a1 = 80810000
	beq     v1, $zero, lbl_808062AC    
	lh      a1, %lo(var_808137A0)(a1)  
	lh      t0, 0x4A38(v0)             ## 00004A38
	lh      t6, 0x4A60(v0)             ## 00004A60
	lh      t8, 0x4A62(v0)             ## 00004A62
	sll     t1, t0,  1                 
	addu    t2, a0, t1                 
	addiu   t7, t6, 0xFFE1             ## t7 = FFFFFFE1
	addiu   t9, t8, 0x001F             ## t9 = 0000001F
	sh      t7, 0x4A60(v0)             ## 00004A60
	sh      t9, 0x4A62(v0)             ## 00004A62
	addu    v1, t2, a2                 
	lh      t3, 0x4A7E(v1)             ## 8081764E
	addiu   t4, t3, 0xFFE7             ## t4 = FFFFFFE7
	sh      t4, 0x4A7E(v1)             ## 8081764E
	lh      t5, 0x4A88(v0)             ## 00004A88
	lh      t7, 0x4A8A(v0)             ## 00004A8A
	addiu   t6, t5, 0xFFE7             ## t6 = FFFFFFE7
	addiu   t8, t7, 0xFFE7             ## t8 = FFFFFFC8
	sh      t6, 0x4A88(v0)             ## 00004A88
	sh      t8, 0x4A8A(v0)             ## 00004A8A
lbl_808062AC:
	lh      t9, 0x4A38(v0)             ## 00004A38
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sll     t0, t9,  1                 
	addu    t1, a0, t0                 
	addu    v1, t1, a2                 
	lh      t2, 0x4A3C(v1)             ## 8081760C
	subu    t3, t2, a1                 
	sh      t3, 0x4A3C(v1)             ## 8081760C
	lh      t4, 0x4A42(v0)             ## 00004A42
	addiu   a1, a1, 0x0002             ## a1 = 80810002
	sll     a1, a1, 16                 
	addiu   t5, t4, 0xFFFF             ## t5 = FFFFFFE6
	sh      t5, -0x35BE($at)           ## 0001CA42
	sra     a1, a1, 16                 
	lui     $at, %hi(var_808137A0)     ## $at = 80810000
	sh      a1, %lo(var_808137A0)($at) 
	lh      t6, 0x4A42(v0)             ## 00004A42
	addiu   a1, a0, 0x01D8             ## a1 = 000001D8
	bnel    t6, $zero, lbl_808063E8    
	lw      $ra, 0x001C($sp)           
	sw      v0, 0x0020($sp)            
	jal     func_80090EB8              
	sw      a0, 0x0030($sp)            
	lw      v0, 0x0020($sp)            
	lw      a0, 0x0030($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	lh      t7, 0x4A58(v0)             ## 00004A58
	addu    $at, $at, a0               
	lui     a2, 0x0001                 ## a2 = 00010000
	sh      t7, -0x35AA($at)           ## 0001CA56
	lh      t9, 0x4A38(v0)             ## 00004A38
	ori     a2, a2, 0x8000             ## a2 = 00018000
	addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
	sll     t0, t9,  1                 
	addu    t1, a0, t0                 
	addu    t2, t1, a2                 
	sh      t8, 0x4A60(v0)             ## 00004A60
	sh      $zero, 0x4A78(t2)          ## 00004A78
	lh      t3, 0x4A38(v0)             ## 00004A38
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sll     t4, t3,  1                 
	addu    t5, a0, t4                 
	addu    v1, t5, a2                 
	lh      t6, 0x4A78(v1)             ## 00004A78
	sh      $zero, 0x4A8A(v0)          ## 00004A8A
	lh      a1, 0x4A8A(v0)             ## 00004A8A
	sh      t6, 0x4A62(v0)             ## 00004A62
	addiu   t3, $zero, 0x005A          ## t3 = 0000005A
	sh      a1, 0x4A88(v0)             ## 00004A88
	sh      a1, 0x4A6C(v1)             ## 00004A6C
	lh      t7, 0x4A38(v0)             ## 00004A38
	sll     t8, t7,  1                 
	addu    t9, a0, t8                 
	addu    t0, t9, a2                 
	sh      a1, 0x4A7E(t0)             ## 00004A7E
	lh      t1, 0x4A30(v0)             ## 00004A30
	addiu   t2, t1, 0x0001             ## t2 = 00000001
	sh      t2, -0x35D0($at)           ## 0001CA30
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	beq     $zero, $zero, lbl_808063E4 
	sh      t3, -0x35BE($at)           ## 0001CA42
lbl_808063AC:
	sh      t4, 0x0000(v1)             ## 00000000
	lh      t5, 0x0000(v1)             ## 00000000
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	bne     t5, $zero, lbl_808063E4    
	addiu   a0, $zero, 0x5801          ## a0 = 00005801
	lui     t6, 0x8010                 ## t6 = 80100000
	addiu   t6, t6, 0x43A8             ## t6 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t6, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_800C806C              
	sw      a3, 0x0010($sp)            
lbl_808063E4:
	lw      $ra, 0x001C($sp)           
lbl_808063E8:
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_808063F4:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	lhu     t6, 0x0020(s0)             ## 00000020
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	andi    t7, t6, 0xD000             ## t7 = 00000000
	bne     t7, $zero, lbl_80806438    
	addu    v0, s0, $at                
	lh      t8, 0x4A42(v0)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t9, t8, 0xFFFF             ## t9 = FFFFFFFF
	sh      t9, -0x35BE($at)           ## 0001CA42
	lh      t0, 0x4A42(v0)             ## 00004A42
	bne     t0, $zero, lbl_808064A4    
lbl_80806438:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    v0, s0, $at                
	lui     $at, 0x0002                ## $at = 00020000
	sh      $zero, 0x4A4A(v0)          ## 00004A4A
	addu    $at, $at, s0               
	addiu   t1, $zero, 0x0008          ## t1 = 00000008
	sh      t1, -0x35BE($at)           ## 0001CA42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x35A8($at)        ## 0001CA58
	lh      t2, 0x4A30(v0)             ## 00004A30
	lui     $at, 0x0002                ## $at = 00020000
	lui     a3, 0x8010                 ## a3 = 80100000
	addu    $at, $at, s0               
	lui     t4, 0x8010                 ## t4 = 80100000
	addiu   t3, t2, 0x0001             ## t3 = 00000001
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	sh      t3, -0x35D0($at)           ## 0001CA30
	addiu   t4, t4, 0x43A8             ## t4 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t4, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483C          ## a0 = 0000483C
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
lbl_808064A4:
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_808064B8:
	addiu   $sp, $sp, 0xFFF0           ## $sp = FFFFFFF0
	sw      s1, 0x000C($sp)            
	sw      s0, 0x0008($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    v0, a0, $at                
	addu    v1, $at, $zero             
	or      a2, $zero, $zero           ## a2 = 00000000
	sll     t6, a2,  1                 
lbl_808064DC:
	addu    t7, a0, t6                 
	addu    t0, t7, v1                 
	lh      t1, 0x4A44(t0)             ## 00004A44
	addiu   a2, a2, 0x0001             ## a2 = 00000001
	sll     a2, a2, 16                 
	bltz    t1, lbl_80806500           
	sra     a2, a2, 16                 
	beq     $zero, $zero, lbl_80806504 
	or      a1, t1, $zero              ## a1 = 00000000
lbl_80806500:
	subu    a1, $zero, t1              
lbl_80806504:
	lh      t8, 0x4A42(v0)             ## 00004A42
	div     $zero, a1, t8              
	bne     t8, $zero, lbl_80806518    
	nop
	break	## 0x01C00
lbl_80806518:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t8, $at, lbl_80806530      
	lui     $at, 0x8000                ## $at = 80000000
	bne     a1, $at, lbl_80806530      
	nop
	break	## 0x01800
lbl_80806530:
	mflo    a3                         
	sll     a3, a3, 16                 
	slti    $at, a2, 0x0005            
	bltz    t1, lbl_80806550           
	sra     a3, a3, 16                 
	subu    t9, t1, a3                 
	beq     $zero, $zero, lbl_80806558 
	sh      t9, 0x4A44(t0)             ## 00004A44
lbl_80806550:
	addu    t6, t1, a3                 
	sh      t6, 0x4A44(t0)             ## 00004A44
lbl_80806558:
	bnel    $at, $zero, lbl_808064DC   
	sll     t6, a2,  1                 
	lui     t3, 0x8010                 ## t3 = 80100000
	addiu   t3, t3, 0xBF00             ## t3 = 800FBF00
	or      a2, $zero, $zero           ## a2 = 00000000
	addiu   a1, a0, 0x01D8             ## a1 = 000001D8
	addiu   s1, $zero, 0x0041          ## s1 = 00000041
	addiu   s0, $zero, 0x0044          ## s0 = 00000044
	addiu   t5, $zero, 0x004C          ## t5 = 0000004C
	addiu   t4, $zero, 0x0045          ## t4 = 00000045
	addiu   t2, $zero, 0x005A          ## t2 = 0000005A
	sll     a3, a2,  1                 
lbl_80806588:
	addu    t7, a0, a3                 
	addu    t0, t7, v1                 
	lh      t8, 0x4A66(t0)             ## 00004A66
	addu    t6, t3, a3                 
	addiu   a2, a2, 0x0001             ## a2 = 00000001
	addiu   t9, t8, 0x0019             ## t9 = 00000019
	sh      t9, 0x4A66(t0)             ## 00004A66
	lw      t8, 0x0000(a1)             ## 000001D8
	lhu     t7, 0x0000(t6)             ## 00000000
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	addu    t1, t7, t8                 
	lbu     t9, 0x001C(t1)             ## 0000001C
	slti    $at, a2, 0x0003            
	beql    t2, t9, lbl_80806608       
	lh      a3, 0x4A66(t0)             ## 00004A66
	lbu     t6, 0x001D(t1)             ## 0000001D
	beql    t4, t6, lbl_80806608       
	lh      a3, 0x4A66(t0)             ## 00004A66
	lbu     t7, 0x001E(t1)             ## 0000001E
	beql    t5, t7, lbl_80806608       
	lh      a3, 0x4A66(t0)             ## 00004A66
	lbu     t8, 0x001F(t1)             ## 0000001F
	beql    s0, t8, lbl_80806608       
	lh      a3, 0x4A66(t0)             ## 00004A66
	lbu     t9, 0x0020(t1)             ## 00000020
	beql    s1, t9, lbl_80806608       
	lh      a3, 0x4A66(t0)             ## 00004A66
	lbu     t6, 0x0021(t1)             ## 00000021
	bne     t2, t6, lbl_8080661C       
	nop
	lh      a3, 0x4A66(t0)             ## 00004A66
lbl_80806608:
	lh      t7, 0x4A78(t0)             ## 00004A78
	sh      a3, 0x4A72(t0)             ## 00004A72
	addiu   t8, t7, 0x001F             ## t8 = 0000001F
	sh      t8, 0x4A78(t0)             ## 00004A78
	sh      a3, 0x4A6C(t0)             ## 00004A6C
lbl_8080661C:
	bnel    $at, $zero, lbl_80806588   
	sll     a3, a2,  1                 
	lh      t9, 0x4A38(v0)             ## 00004A38
	sll     t6, t9,  1                 
	addu    t7, a0, t6                 
	addu    a1, t7, v1                 
	lh      t8, 0x4A66(a1)             ## 00004C3E
	addiu   t9, $zero, 0x00C8          ## t9 = 000000C8
	slti    $at, t8, 0x00C8            
	bnel    $at, $zero, lbl_80806650   
	lh      t6, 0x4A60(v0)             ## 00004A60
	sh      t9, 0x4A66(a1)             ## 00004C3E
	lh      t6, 0x4A60(v0)             ## 00004A60
lbl_80806650:
	lh      t8, 0x4A62(v0)             ## 00004A62
	lui     $at, 0x0002                ## $at = 00020000
	addiu   t7, t6, 0xFFE1             ## t7 = FFFFFFE1
	lh      t6, 0x4A42(v0)             ## 00004A42
	sh      t7, 0x4A60(v0)             ## 00004A60
	addiu   t9, t8, 0x001F             ## t9 = 0000003E
	sh      t9, 0x4A62(v0)             ## 00004A62
	addu    $at, $at, a0               
	addiu   t7, t6, 0xFFFF             ## t7 = FFFFFFFF
	sh      t7, -0x35BE($at)           ## 0001CA42
	lh      t8, 0x4A42(v0)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	bnel    t8, $zero, lbl_80806704    
	lh      a3, 0x4A84(v0)             ## 00004A84
	lh      t9, 0x4A38(v0)             ## 00004A38
	addu    $at, $at, a0               
	lui     a1, 0x8012                 ## a1 = 80120000
	sll     t6, t9,  1                 
	addu    t7, a0, t6                 
	addu    t8, t7, v1                 
	sh      $zero, 0x4A3C(t8)          ## 00004A5B
	addiu   t9, $zero, 0x0046          ## t9 = 00000046
	sh      t9, 0x4A9A(v0)             ## 00004A9A
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	sh      t6, -0x3564($at)           ## 0001CA9C
	lw      a1, -0x4600(a1)            ## 8011BA00
	addiu   t8, $zero, 0x00C8          ## t8 = 000000C8
	lui     $at, 0x0002                ## $at = 00020000
	lh      t7, 0x0ADC(a1)             ## 80120ADC
	addu    $at, $at, a0               
	sh      t7, 0x0ADA(a1)             ## 80120ADA
	sh      $zero, 0x4A8A(v0)          ## 00004A8A
	lh      t9, 0x4A8A(v0)             ## 00004A8A
	lh      t6, 0x4A58(v0)             ## 00004A58
	sh      t8, 0x4A84(v0)             ## 00004A84
	sh      t9, 0x4A88(v0)             ## 00004A88
	sh      t6, -0x35AA($at)           ## 0001CA56
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	lui     $at, 0x0002                ## $at = 00020000
	sh      t7, 0x4A60(v0)             ## 00004A60
	sh      $zero, 0x4A62(v0)          ## 00004A62
	addu    $at, $at, a0               
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	sh      t8, -0x35D0($at)           ## 0001CA30
	lh      a3, 0x4A84(v0)             ## 00004A84
lbl_80806704:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      a3, 0x4A86(v0)             ## 00004A86
	sh      a3, -0x3574($at)           ## 0001CA8C
	lw      s0, 0x0008($sp)            
	lw      s1, 0x000C($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0010           ## $sp = 00000000


func_80806724:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    t0, a0, $at                
	addu    t1, $at, $zero             
	or      v0, $zero, $zero           ## v0 = 00000000
	sll     t6, v0,  1                 
lbl_8080673C:
	addu    t7, a0, t6                 
	addu    a2, t7, t1                 
	lh      a3, 0x4A44(a2)             ## 00004A44
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	sll     v0, v0, 16                 
	bltz    a3, lbl_80806760           
	sra     v0, v0, 16                 
	beq     $zero, $zero, lbl_80806764 
	or      v1, a3, $zero              ## v1 = 00000000
lbl_80806760:
	subu    v1, $zero, a3              
lbl_80806764:
	lh      t8, 0x4A42(t0)             ## 00004A42
	div     $zero, v1, t8              
	bne     t8, $zero, lbl_80806778    
	nop
	break	## 0x01C00
lbl_80806778:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t8, $at, lbl_80806790      
	lui     $at, 0x8000                ## $at = 80000000
	bne     v1, $at, lbl_80806790      
	nop
	break	## 0x01800
lbl_80806790:
	mflo    a1                         
	sll     a1, a1, 16                 
	slti    $at, v0, 0x0005            
	bltz    a3, lbl_808067B0           
	sra     a1, a1, 16                 
	subu    t9, a3, a1                 
	beq     $zero, $zero, lbl_808067B8 
	sh      t9, 0x4A44(a2)             ## 00004A44
lbl_808067B0:
	addu    t2, a3, a1                 
	sh      t2, 0x4A44(a2)             ## 00004A44
lbl_808067B8:
	bnel    $at, $zero, lbl_8080673C   
	sll     t6, v0,  1                 
	lh      t3, 0x4A84(t0)             ## 00004A84
	lh      t5, 0x4A86(t0)             ## 00004A86
	lh      t7, 0x4A8C(t0)             ## 00004A8C
	lui     $at, 0x0002                ## $at = 00020000
	addiu   t4, t3, 0x0019             ## t4 = 00000019
	addiu   t6, t5, 0x0019             ## t6 = 00000019
	sh      t4, 0x4A84(t0)             ## 00004A84
	sh      t6, 0x4A86(t0)             ## 00004A86
	addu    $at, $at, a0               
	addiu   t8, t7, 0x0019             ## t8 = 00000019
	sh      t8, -0x3574($at)           ## 0001CA8C
	lh      t9, 0x4A8A(t0)             ## 00004A8A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t2, t9, 0xFFCE             ## t2 = FFFFFFCE
	sh      t2, 0x4A8A(t0)             ## 00004A8A
	lh      t3, 0x4A8A(t0)             ## 00004A8A
	lui     v0, 0x8012                 ## v0 = 80120000
	bgtzl   t3, lbl_80806818           
	lh      t4, 0x4A60(t0)             ## 00004A60
	sh      $zero, 0x4A8A(t0)          ## 00004A8A
	lh      t4, 0x4A60(t0)             ## 00004A60
lbl_80806818:
	lh      t6, 0x4A62(t0)             ## 00004A62
	lh      t8, 0x4A42(t0)             ## 00004A42
	addiu   t5, t4, 0xFFE1             ## t5 = FFFFFFFA
	addiu   t7, t6, 0x001F             ## t7 = 00000038
	sh      t5, 0x4A60(t0)             ## 00004A60
	sh      t7, 0x4A62(t0)             ## 00004A62
	addiu   t9, t8, 0xFFFF             ## t9 = 00000018
	sh      t9, -0x35BE($at)           ## 0001CA42
	lh      t2, 0x4A42(t0)             ## 00004A42
	addiu   t3, $zero, 0x0046          ## t3 = 00000046
	lui     $at, 0x0002                ## $at = 00020000
	bne     t2, $zero, lbl_8080689C    
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	sh      t3, 0x4A9A(t0)             ## 00004A9A
	addu    $at, $at, a0               
	sh      t4, -0x3564($at)           ## 0001CA9C
	lw      v0, -0x4600(v0)            ## 8011BA00
	addiu   t6, $zero, 0x00C8          ## t6 = 000000C8
	lui     $at, 0x0002                ## $at = 00020000
	lh      t5, 0x0ADC(v0)             ## 80120ADC
	addu    $at, $at, a0               
	addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
	sh      t5, 0x0ADA(v0)             ## 80120ADA
	lh      t7, 0x4A58(t0)             ## 00004A58
	sh      t6, 0x4A84(t0)             ## 00004A84
	sh      $zero, 0x4A8A(t0)          ## 00004A8A
	sh      t7, -0x35AA($at)           ## 0001CA56
	lui     $at, 0x0002                ## $at = 00020000
	sh      t8, 0x4A60(t0)             ## 00004A60
	sh      $zero, 0x4A62(t0)          ## 00004A62
	addu    $at, $at, a0               
	addiu   t9, $zero, 0x0002          ## t9 = 00000002
	sh      t9, -0x35D0($at)           ## 0001CA30
lbl_8080689C:
	lh      v0, 0x4A84(t0)             ## 00004A84
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      v0, 0x4A86(t0)             ## 00004A86
	sh      v0, -0x3574($at)           ## 0001CA8C
	jr      $ra                        
	nop
	nop
	nop


func_808068C0:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      a2, 0x0040($sp)            
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	lw      v0, 0x02C0(a0)             ## 000002C0
	lui     t7, 0xFD90                 ## t7 = FD900000
	lui     t9, 0xF590                 ## t9 = F5900000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a0)             ## 000002C0
	sw      a1, 0x0004(v0)             ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a0)             ## 000002C0
	lui     t6, 0x0708                 ## t6 = 07080000
	ori     t6, t6, 0x0200             ## t6 = 07080200
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a0)             ## 000002C0
	sw      t6, 0x0004(v0)             ## 00000004
	sw      t9, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a0)             ## 000002C0
	lui     t8, 0xE600                 ## t8 = E6000000
	lui     t6, 0xF300                 ## t6 = F3000000
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a0)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a0)             ## 000002C0
	lui     t7, 0x0703                 ## t7 = 07030000
	ori     t7, t7, 0xF800             ## t7 = 0703F800
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a0)             ## 000002C0
	sw      t7, 0x0004(v0)             ## 00000004
	sw      t6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a0)             ## 000002C0
	lui     t9, 0xE700                 ## t9 = E7000000
	lui     t7, 0xF580                 ## t7 = F5800000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a0)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t9, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a0)             ## 000002C0
	lui     t8, 0x0008                 ## t8 = 00080000
	ori     t8, t8, 0x0200             ## t8 = 00080200
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a0)             ## 000002C0
	ori     t7, t7, 0x0200             ## t7 = F5800200
	sw      t7, 0x0000(v0)             ## 00000000
	sw      t8, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a0)             ## 000002C0
	lui     t7, 0x0003                 ## t7 = 00030000
	ori     t7, t7, 0xC03C             ## t7 = 0003C03C
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a0)             ## 000002C0
	lui     t6, 0xF200                 ## t6 = F2000000
	sw      t6, 0x0000(v0)             ## 00000000
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a0)             ## 000002C0
	sll     t5, a2,  1                 
	andi    t9, t5, 0x00FF             ## t9 = 00000000
	sw      v0, 0x0010($sp)            
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a0)             ## 000002C0
	sll     t6, t9, 16                 
	addiu   t7, t5, 0x0006             ## t7 = 00000006
	andi    t8, t7, 0x00FF             ## t8 = 00000006
	addiu   t9, t5, 0x0004             ## t9 = 00000004
	andi    t7, t9, 0x00FF             ## t7 = 00000004
	sll     t9, t7,  8                 
	or      t7, t6, t9                 ## t7 = F2000004
	sw      t6, 0x0008($sp)            
	or      t6, t7, t8                 ## t6 = F2000006
	lw      t7, 0x0010($sp)            
	lui     $at, 0x0700                ## $at = 07000000
	or      t9, t6, $at                ## t9 = F7000006
	sw      t8, 0x0004($sp)            
	sw      t9, 0x0000(t7)             ## F2000004
	lw      t6, 0x0004($sp)            
	lw      t8, 0x0008($sp)            
	sll     t9, t6,  8                 
	addiu   t6, t5, 0x0002             ## t6 = 00000002
	or      t7, t8, t9                 ## t7 = F7000006
	andi    t8, t6, 0x00FF             ## t8 = 00000002
	lw      t6, 0x0010($sp)            
	or      t9, t7, t8                 ## t9 = F7000006
	sw      t9, 0x0004(t6)             ## 00000006
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80806A18:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      a3, 0x003C($sp)            
	sll     a3, a3, 16                 
	sra     a3, a3, 16                 
	lw      v0, 0x02C0(a0)             ## 000002C0
	lui     t7, 0xFD90                 ## t7 = FD900000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a0)             ## 000002C0
	sw      a1, 0x0004(v0)             ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a0)             ## 000002C0
	lui     t9, 0xF590                 ## t9 = F5900000
	lui     t6, 0x0700                 ## t6 = 07000000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a0)             ## 000002C0
	sw      t6, 0x0004(v0)             ## 00000004
	sw      t9, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a0)             ## 000002C0
	lui     t8, 0xE600                 ## t8 = E6000000
	lui     t6, 0xF300                 ## t6 = F3000000
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a0)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a0)             ## 000002C0
	lui     t7, 0x0703                 ## t7 = 07030000
	ori     t7, t7, 0xF800             ## t7 = 0703F800
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a0)             ## 000002C0
	sw      t7, 0x0004(v0)             ## 00000004
	sw      t6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a0)             ## 000002C0
	lui     t9, 0xE700                 ## t9 = E7000000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a0)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t9, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a0)             ## 000002C0
	lui     t7, 0xF580                 ## t7 = F5800000
	ori     t7, t7, 0x0200             ## t7 = F5800200
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a0)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a0)             ## 000002C0
	lui     t6, 0x0003                 ## t6 = 00030000
	ori     t6, t6, 0xC03C             ## t6 = 0003C03C
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a0)             ## 000002C0
	lui     t9, 0xF200                 ## t9 = F2000000
	sw      t9, 0x0000(v0)             ## 00000000
	sw      t6, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a0)             ## 000002C0
	lui     t8, 0xFD90                 ## t8 = FD900000
	sw      v0, 0x0008($sp)            
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a0)             ## 000002C0
	lw      t9, 0x0008($sp)            
	sw      t8, 0x0000(t9)             ## F2000000
	lw      t6, 0x0008($sp)            
	sw      a2, 0x0004(t6)             ## 0003C040
	lw      v0, 0x02C0(a0)             ## 000002C0
	lui     t8, 0xF590                 ## t8 = F5900000
	ori     t8, t8, 0x0080             ## t8 = F5900080
	sw      v0, 0x0004($sp)            
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a0)             ## 000002C0
	lw      t9, 0x0004($sp)            
	sll     a2, a3,  1                 
	lui     t3, 0x0700                 ## t3 = 07000000
	sw      t8, 0x0000(t9)             ## F2000000
	lw      t6, 0x0004($sp)            
	andi    t1, a2, 0x00FF             ## t1 = 00000000
	sll     t1, t1, 16                 
	sw      t3, 0x0004(t6)             ## 0003C040
	lw      v0, 0x02C0(a0)             ## 000002C0
	lui     t8, 0xE600                 ## t8 = E6000000
	lui     t6, 0xF300                 ## t6 = F3000000
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a0)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a0)             ## 000002C0
	lui     t7, 0x0703                 ## t7 = 07030000
	ori     t7, t7, 0xF800             ## t7 = 0703F800
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a0)             ## 000002C0
	sw      t7, 0x0004(v0)             ## 00000004
	sw      t6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a0)             ## 000002C0
	lui     t9, 0xE700                 ## t9 = E7000000
	lui     t7, 0xF580                 ## t7 = F5800000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a0)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t9, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a0)             ## 000002C0
	ori     t7, t7, 0x0280             ## t7 = F5800280
	lui     t8, 0x0100                 ## t8 = 01000000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a0)             ## 000002C0
	sw      t8, 0x0004(v0)             ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a0)             ## 000002C0
	lui     t7, 0x0103                 ## t7 = 01030000
	ori     t7, t7, 0xC03C             ## t7 = 0103C03C
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a0)             ## 000002C0
	lui     t6, 0xF200                 ## t6 = F2000000
	sw      t6, 0x0000(v0)             ## 00000000
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a0)             ## 000002C0
	addiu   t9, a2, 0x0004             ## t9 = 00000004
	andi    t6, t9, 0x00FF             ## t6 = 00000004
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a0)             ## 000002C0
	sll     t7, t6,  8                 
	addiu   t2, a2, 0x0006             ## t2 = 00000006
	andi    t2, t2, 0x00FF             ## t2 = 00000006
	or      t8, t1, t7                 ## t8 = 0103C03C
	or      t9, t8, t2                 ## t9 = 0103C03E
	or      t6, t9, t3                 ## t6 = 0703C03E
	addiu   t9, a2, 0x0002             ## t9 = 00000002
	sll     t7, t2,  8                 
	sw      t6, 0x0000(v0)             ## 00000000
	andi    t6, t9, 0x00FF             ## t6 = 00000002
	or      t8, t1, t7                 ## t8 = 0103C03C
	or      t7, t8, t6                 ## t7 = 0103C03E
	sw      t7, 0x0004(v0)             ## 00000004
	jr      $ra                        
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_80806C24:
	addiu   $sp, $sp, 0xFFF0           ## $sp = FFFFFFF0
	sw      s2, 0x000C($sp)            
	sw      s1, 0x0008($sp)            
	sw      s0, 0x0004($sp)            
	lw      v1, 0x0000(a0)             ## 00000000
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	lw      v0, 0x02C4(v1)             ## 000002C4
	addiu   a1, $zero, 0x0026          ## a1 = 00000026
	or      a2, $zero, $zero           ## a2 = 00000000
	addiu   v0, v0, 0xEFC0             ## v0 = FFFFEFC0
	sw      v0, 0x02C4(v1)             ## 000002C4
	sw      v0, -0x361C($at)           ## 0001C9E4
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    t4, a0, $at                
	or      a3, $zero, $zero           ## a3 = 00000000
	addiu   s2, $zero, 0x00FF          ## s2 = 000000FF
	addiu   s1, $zero, 0x0200          ## s1 = 00000200
lbl_80806C70:
	addiu   s0, a1, 0xFFF4             ## s0 = 0000001A
	sll     s0, s0, 16                 
	sra     s0, s0, 16                 
	addiu   v0, $zero, 0xFFA0          ## v0 = FFFFFFA0
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_80806C84:
	lw      t6, 0x49E4(t4)             ## 000049E4
	sll     t0, a3,  4                 
	addiu   t1, v0, 0x000C             ## t1 = FFFFFFAC
	addu    t7, t6, t0                 
	sh      v0, 0x0020(t7)             ## 00000020
	lw      t8, 0x49E4(t4)             ## 000049E4
	addiu   v1, v1, 0x0001             ## v1 = 00000001
	sll     v1, v1, 16                 
	addu    t5, t8, t0                 
	lh      t9, 0x0020(t5)             ## 00000020
	sra     v1, v1, 16                 
	addiu   a3, a3, 0x0004             ## a3 = 00000004
	sh      t9, 0x0000(t5)             ## 00000000
	lw      t6, 0x49E4(t4)             ## 000049E4
	addiu   v0, v0, 0x0010             ## v0 = FFFFFFB0
	sll     a3, a3, 16                 
	addu    t7, t6, t0                 
	sh      t1, 0x0030(t7)             ## 00000030
	lw      t8, 0x49E4(t4)             ## 000049E4
	slti    $at, v1, 0x000D            
	sll     v0, v0, 16                 
	addu    t9, t8, t0                 
	sh      t1, 0x0010(t9)             ## 00000010
	lw      t6, 0x49E4(t4)             ## 000049E4
	sra     a3, a3, 16                 
	sra     v0, v0, 16                 
	addu    t7, t6, t0                 
	sh      a1, 0x0012(t7)             ## 00000012
	lw      t8, 0x49E4(t4)             ## 000049E4
	addu    t5, t8, t0                 
	lh      t9, 0x0012(t5)             ## 00000012
	sh      t9, 0x0002(t5)             ## 00000002
	lw      t6, 0x49E4(t4)             ## 000049E4
	addu    t7, t6, t0                 
	sh      s0, 0x0032(t7)             ## 00000032
	lw      t8, 0x49E4(t4)             ## 000049E4
	addu    t9, t8, t0                 
	sh      s0, 0x0022(t9)             ## 00000022
	lw      t6, 0x49E4(t4)             ## 000049E4
	addu    t7, t6, t0                 
	sh      $zero, 0x0034(t7)          ## 00000034
	lw      t8, 0x49E4(t4)             ## 000049E4
	addu    t5, t8, t0                 
	lh      t2, 0x0034(t5)             ## 00000034
	sh      t2, 0x0024(t5)             ## 00000024
	lw      t9, 0x49E4(t4)             ## 000049E4
	addu    t6, t9, t0                 
	sh      t2, 0x0014(t6)             ## 00000014
	lw      t7, 0x49E4(t4)             ## 000049E4
	addu    t8, t7, t0                 
	sh      t2, 0x0004(t8)             ## 00000004
	lw      t9, 0x49E4(t4)             ## 000049E4
	addu    t6, t9, t0                 
	sh      $zero, 0x0036(t6)          ## 00000036
	lw      t7, 0x49E4(t4)             ## 000049E4
	addu    t5, t7, t0                 
	lhu     t2, 0x0036(t5)             ## 00000036
	sh      t2, 0x0026(t5)             ## 00000026
	lw      t8, 0x49E4(t4)             ## 000049E4
	addu    t9, t8, t0                 
	sh      t2, 0x0016(t9)             ## 00000016
	lw      t6, 0x49E4(t4)             ## 000049E4
	addu    t7, t6, t0                 
	sh      t2, 0x0006(t7)             ## 00000006
	lw      t8, 0x49E4(t4)             ## 000049E4
	addu    t9, t8, t0                 
	sh      $zero, 0x0028(t9)          ## 00000028
	lw      t6, 0x49E4(t4)             ## 000049E4
	addu    t5, t6, t0                 
	lh      t1, 0x0028(t5)             ## 00000028
	sh      t1, 0x001A(t5)             ## 0000001A
	lw      t7, 0x49E4(t4)             ## 000049E4
	addu    t8, t7, t0                 
	sh      t1, 0x000A(t8)             ## 0000000A
	lw      t9, 0x49E4(t4)             ## 000049E4
	addu    t6, t9, t0                 
	sh      t1, 0x0008(t6)             ## 00000008
	lw      t7, 0x49E4(t4)             ## 000049E4
	addu    t8, t7, t0                 
	sh      s1, 0x003A(t8)             ## 0000003A
	lw      t9, 0x49E4(t4)             ## 000049E4
	addu    t5, t9, t0                 
	lh      t2, 0x003A(t5)             ## 0000003A
	sh      t2, 0x0038(t5)             ## 00000038
	lw      t6, 0x49E4(t4)             ## 000049E4
	addu    t7, t6, t0                 
	sh      t2, 0x002A(t7)             ## 0000002A
	lw      t8, 0x49E4(t4)             ## 000049E4
	addu    t9, t8, t0                 
	sh      t2, 0x0018(t9)             ## 00000018
	lw      t6, 0x49E4(t4)             ## 000049E4
	addu    t7, t6, t0                 
	sb      s2, 0x003F(t7)             ## 0000003F
	lw      t8, 0x49E4(t4)             ## 000049E4
	addu    t5, t8, t0                 
	lbu     t3, 0x003F(t5)             ## 0000003F
	sb      t3, 0x002F(t5)             ## 0000002F
	lw      t9, 0x49E4(t4)             ## 000049E4
	addu    t6, t9, t0                 
	sb      t3, 0x001F(t6)             ## 0000001F
	lw      t7, 0x49E4(t4)             ## 000049E4
	addu    t8, t7, t0                 
	sb      t3, 0x000F(t8)             ## 0000000F
	lw      t9, 0x49E4(t4)             ## 000049E4
	addu    t6, t9, t0                 
	sb      t3, 0x003E(t6)             ## 0000003E
	lw      t7, 0x49E4(t4)             ## 000049E4
	addu    t8, t7, t0                 
	sb      t3, 0x002E(t8)             ## 0000002E
	lw      t9, 0x49E4(t4)             ## 000049E4
	addu    t6, t9, t0                 
	sb      t3, 0x001E(t6)             ## 0000001E
	lw      t7, 0x49E4(t4)             ## 000049E4
	addu    t8, t7, t0                 
	sb      t3, 0x000E(t8)             ## 0000000E
	lw      t9, 0x49E4(t4)             ## 000049E4
	addu    t6, t9, t0                 
	sb      t3, 0x003D(t6)             ## 0000003D
	lw      t7, 0x49E4(t4)             ## 000049E4
	addu    t8, t7, t0                 
	sb      t3, 0x002D(t8)             ## 0000002D
	lw      t9, 0x49E4(t4)             ## 000049E4
	addu    t6, t9, t0                 
	sb      t3, 0x001D(t6)             ## 0000001D
	lw      t7, 0x49E4(t4)             ## 000049E4
	addu    t8, t7, t0                 
	sb      t3, 0x000D(t8)             ## 0000000D
	lw      t9, 0x49E4(t4)             ## 000049E4
	addu    t6, t9, t0                 
	sb      t3, 0x003C(t6)             ## 0000003C
	lw      t7, 0x49E4(t4)             ## 000049E4
	addu    t8, t7, t0                 
	sb      t3, 0x002C(t8)             ## 0000002C
	lw      t9, 0x49E4(t4)             ## 000049E4
	addu    t6, t9, t0                 
	sb      t3, 0x001C(t6)             ## 0000001C
	lw      t7, 0x49E4(t4)             ## 000049E4
	addu    t8, t7, t0                 
	bne     $at, $zero, lbl_80806C84   
	sb      t3, 0x000C(t8)             ## 0000000C
	addiu   a2, a2, 0x0001             ## a2 = 00000001
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	addiu   a1, a1, 0xFFF0             ## a1 = 00000016
	slti    $at, a2, 0x0005            
	sll     a1, a1, 16                 
	bne     $at, $zero, lbl_80806C70   
	sra     a1, a1, 16                 
	lw      s0, 0x0004($sp)            
	lw      s1, 0x0008($sp)            
	lw      s2, 0x000C($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0010           ## $sp = 00000000


func_80806EE8:
	addiu   $sp, $sp, 0xFEB0           ## $sp = FFFFFEB0
	sw      s8, 0x0038($sp)            
	sw      s6, 0x0030($sp)            
	sw      s4, 0x0028($sp)            
	sw      s3, 0x0024($sp)            
	or      s3, a0, $zero              ## s3 = 00000000
	lui     s4, 0xE700                 ## s4 = E7000000
	lui     s6, 0xFB00                 ## s6 = FB000000
	lui     s8, 0xFA00                 ## s8 = FA000000
	sw      $ra, 0x003C($sp)           
	sw      s7, 0x0034($sp)            
	sw      s5, 0x002C($sp)            
	sw      s2, 0x0020($sp)            
	sw      s1, 0x001C($sp)            
	sw      s0, 0x0018($sp)            
	lw      a2, 0x0000(s3)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t8, 0xFC30                 ## t8 = FC300000
	ori     t8, t8, 0x9661             ## t8 = FC309661
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t9, 0x552E                 ## t9 = 552E0000
	ori     t9, t9, 0xFF7F             ## t9 = 552EFF7F
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a2)             ## 000002C0
	sw      t9, 0x0004(v0)             ## 00000004
	sw      t8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a2)             ## 000002C0
	addu    s0, s3, $at                
	sw      s8, 0x0000(v0)             ## 00000000
	lh      t7, 0x4A60(s0)             ## 00004A60
	addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
	andi    t8, t7, 0x00FF             ## t8 = 00000008
	or      t9, t8, $at                ## t9 = FFFFFF08
	sw      t9, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t5, 0x0700                 ## t5 = 07000000
	lui     $ra, 0xF570                ## $ra = F5700000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t8, 0x0101                 ## t8 = 01010000
	lui     t9, %hi(var_808124D0)      ## t9 = 80810000
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a2)             ## 000002C0
	addiu   t9, t9, %lo(var_808124D0)  ## t9 = 808124D0
	ori     t8, t8, 0x8030             ## t8 = 01018030
	sw      t8, 0x0000(v0)             ## 00000000
	sw      t9, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t7, 0xFD70                 ## t7 = FD700000
	lui     t8, 0x8012                 ## t8 = 80120000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a2)             ## 000002C0
	sw      t7, 0x0000(v0)             ## 00000000
	lbu     t8, -0x4627(t8)            ## 8011B9D9
	lui     t6, %hi(var_80812BF0)      ## t6 = 80810000
	or      t2, $zero, $zero           ## t2 = 00000000
	sll     t9, t8,  2                 
	addu    t6, t6, t9                 
	lw      t6, %lo(var_80812BF0)(t6)  
	addiu   s2, $zero, 0x0004          ## s2 = 00000004
	lui     s5, %hi(var_80812C0C)      ## s5 = 80810000
	sw      t6, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a2)             ## 000002C0
	addiu   s5, s5, %lo(var_80812C0C)  ## s5 = 80812C0C
	lui     s1, %hi(var_80812BF8)      ## s1 = 80810000
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a2)             ## 000002C0
	sw      t5, 0x0004(v0)             ## 00000004
	sw      $ra, 0x0000(v0)            ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t9, 0xE600                 ## t9 = E6000000
	lui     s7, 0xF300                 ## s7 = F3000000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t9, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t7, 0x071B                 ## t7 = 071B0000
	ori     t7, t7, 0xF125             ## t7 = 071BF125
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a2)             ## 000002C0
	sw      t7, 0x0004(v0)             ## 00000004
	sw      s7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	addiu   s1, s1, %lo(var_80812BF8)  ## s1 = 80812BF8
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t6, 0xF568                 ## t6 = F5680000
	ori     t6, t6, 0x0E00             ## t6 = F5680E00
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t9, 0x000D                 ## t9 = 000D0000
	ori     t9, t9, 0xC03C             ## t9 = 000DC03C
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a2)             ## 000002C0
	lui     t8, 0xF200                 ## t8 = F2000000
	sw      t8, 0x0000(v0)             ## 00000000
	sw      t9, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t7, 0x0700                 ## t7 = 07000000
	ori     t7, t7, 0x0406             ## t7 = 07000406
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a2)             ## 000002C0
	addiu   t8, $zero, 0x0602          ## t8 = 00000602
	sw      t8, 0x0004(v0)             ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s4, 0x0000(v0)             ## 00000000
lbl_808070E8:
	lui     t6, 0x8012                 ## t6 = 80120000
	lbu     t6, -0x4627(t6)            ## 8011B9D9
	slti    $at, t2, 0x0003            
	bne     t6, $zero, lbl_80807338    
	nop
	lw      v0, 0x02C0(a2)             ## 000002C0
	addiu   t3, $zero, 0x07FF          ## t3 = 000007FF
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a2)             ## 000002C0
	sw      s8, 0x0000(v0)             ## 00000000
	lh      t9, 0x4A5E(s0)             ## 00004A5E
	andi    t6, t9, 0x00FF             ## t6 = 00000008
	lh      t9, 0x4A5A(s0)             ## 00004A5A
	sll     t7, t6,  8                 
	sll     t6, t9, 24                 
	lh      t9, 0x4A5C(s0)             ## 00004A5C
	or      t8, t7, t6                 ## t8 = 00000008
	andi    t7, t9, 0x00FF             ## t7 = 00000008
	sll     t6, t7, 16                 
	or      t9, t8, t6                 ## t9 = 00000008
	ori     t7, t9, 0x00FF             ## t7 = 000000FF
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t9, 0xFD70                 ## t9 = FD700000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	sll     t7, t2,  2                 
	addu    t8, s1, t7                 
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a2)             ## 000002C0
	sw      t9, 0x0000(v0)             ## 00000000
	lw      t6, 0x0000(t8)             ## 00000008
	sw      t6, 0x0004(v0)             ## 00000004
	lw      v1, 0x02C0(a2)             ## 000002C0
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a2)             ## 000002C0
	sw      t5, 0x0004(v1)             ## 00000004
	sw      $ra, 0x0000(v1)            ## 00000000
	lw      a0, 0x02C0(a2)             ## 000002C0
	lui     t8, 0xE600                 ## t8 = E6000000
	addiu   t7, a0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a2)             ## 000002C0
	sw      $zero, 0x0004(a0)          ## 00000004
	sw      t8, 0x0000(a0)             ## 00000000
	lw      t4, 0x02C0(a2)             ## 000002C0
	sll     t9, t2,  1                 
	addu    t1, s5, t9                 
	addiu   t6, t4, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a2)             ## 000002C0
	sw      s7, 0x0000(t4)             ## 00000000
	lhu     a3, 0x0000(t1)             ## 00000000
	sll     a0, s2,  1                 
	sll     a1, a3,  4                 
	addiu   a1, a1, 0xFFFF             ## a1 = FFFFFFFF
	slti    $at, a1, 0x07FF            
	beq     $at, $zero, lbl_808071F4   
	sll     v0, a3,  1                 
	beq     $zero, $zero, lbl_808071F4 
	or      t3, a1, $zero              ## t3 = FFFFFFFF
lbl_808071F4:
	bgez    v0, lbl_80807200           
	addu    $at, v0, $zero             
	addiu   $at, v0, 0x0007            ## $at = 00000007
lbl_80807200:
	sra     v0, $at,  3                
	bgtz    v0, lbl_80807214           
	andi    a1, a0, 0x00FF             ## a1 = 00000000
	beq     $zero, $zero, lbl_80807218 
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
lbl_80807214:
	or      t0, v0, $zero              ## t0 = 00000000
lbl_80807218:
	bgtz    v0, lbl_80807228           
	addiu   t7, t0, 0x07FF             ## t7 = 000007FF
	beq     $zero, $zero, lbl_8080722C 
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
lbl_80807228:
	or      a3, v0, $zero              ## a3 = 00000000
lbl_8080722C:
	div     $zero, t7, a3              
	mflo    t8                         
	andi    t6, t8, 0x0FFF             ## t6 = 00000000
	bne     a3, $zero, lbl_80807244    
	nop
	break	## 0x01C00
lbl_80807244:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     a3, $at, lbl_8080725C      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t7, $at, lbl_8080725C      
	nop
	break	## 0x01800
lbl_8080725C:
	andi    t7, t3, 0x0FFF             ## t7 = 00000FFF
	sll     t8, t7, 12                 
	or      t9, t6, t5                 ## t9 = 07000000
	or      t6, t9, t8                 ## t6 = E7000000
	sw      t6, 0x0004(t4)             ## 00000004
	lw      v0, 0x02C0(a2)             ## 000002C0
	sll     a1, a1, 16                 
	addiu   a3, a0, 0x0006             ## a3 = 00000006
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	andi    a3, a3, 0x00FF             ## a3 = 00000006
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a2)             ## 000002C0
	lhu     t8, 0x0000(t1)             ## 00000000
	sw      $zero, 0x0004(v0)          ## 00000004
	sll     t6, t8,  1                 
	addiu   t7, t6, 0x0007             ## t7 = E7000007
	sra     t9, t7,  3                 
	andi    t8, t9, 0x01FF             ## t8 = 00000008
	sll     t6, t8,  9                 
	or      t7, t6, $ra                ## t7 = F7700000
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t8, 0xF200                 ## t8 = F2000000
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a2)             ## 000002C0
	sw      t8, 0x0000(v0)             ## 00000000
	lhu     t6, 0x0000(t1)             ## 00000000
	addiu   t7, t6, 0xFFFF             ## t7 = E6FFFFFF
	sll     t9, t7,  2                 
	andi    t8, t9, 0x0FFF             ## t8 = 00000008
	sll     t6, t8, 12                 
	ori     t7, t6, 0x003C             ## t7 = E700003C
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a2)             ## 000002C0
	addiu   t8, a0, 0x0004             ## t8 = 00000004
	andi    t6, t8, 0x00FF             ## t6 = 00000004
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a2)             ## 000002C0
	sll     t7, t6,  8                 
	or      t9, a1, t7                 ## t9 = E700003C
	or      t8, t9, a3                 ## t8 = E700003E
	or      t6, t8, t5                 ## t6 = E700003E
	addiu   t8, a0, 0x0002             ## t8 = 00000002
	sll     t7, a3,  8                 
	sw      t6, 0x0000(v0)             ## 00000000
	andi    t6, t8, 0x00FF             ## t6 = 00000002
	or      t9, a1, t7                 ## t9 = E700003C
	or      t7, t9, t6                 ## t7 = E700003E
	sw      t7, 0x0004(v0)             ## 00000004
	beq     $zero, $zero, lbl_80807564 
	addiu   t2, t2, 0x0001             ## t2 = 00000001
lbl_80807338:
	bnel    $at, $zero, lbl_80807564   
	addiu   t2, t2, 0x0001             ## t2 = 00000002
	lw      v0, 0x02C0(a2)             ## 000002C0
	addiu   t3, $zero, 0x07FF          ## t3 = 000007FF
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a2)             ## 000002C0
	sw      s8, 0x0000(v0)             ## 00000000
	lh      t9, 0x4A5E(s0)             ## 00004A5E
	andi    t6, t9, 0x00FF             ## t6 = 0000003C
	lh      t9, 0x4A5A(s0)             ## 00004A5A
	sll     t7, t6,  8                 
	sll     t6, t9, 24                 
	lh      t9, 0x4A5C(s0)             ## 00004A5C
	or      t8, t7, t6                 ## t8 = E700003E
	andi    t7, t9, 0x00FF             ## t7 = 0000003C
	sll     t6, t7, 16                 
	or      t9, t8, t6                 ## t9 = E700003E
	ori     t7, t9, 0x00FF             ## t7 = E70000FF
	sw      t7, 0x0004(v0)             ## 00000004
	lw      a0, 0x02C0(a2)             ## 000002C0
	lui     t9, 0xFD70                 ## t9 = FD700000
	addiu   t8, a0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a2)             ## 000002C0
	sw      $zero, 0x0004(a0)          ## 00000004
	sw      s6, 0x0000(a0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	sll     t7, t2,  2                 
	addu    t8, s1, t7                 
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a2)             ## 000002C0
	sw      t9, 0x0000(v0)             ## 00000000
	lw      t6, 0x0000(t8)             ## 00000008
	sll     a0, s2,  1                 
	sw      t6, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a2)             ## 000002C0
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a2)             ## 000002C0
	sw      t5, 0x0004(v0)             ## 00000004
	sw      $ra, 0x0000(v0)            ## 00000000
	lw      v1, 0x02C0(a2)             ## 000002C0
	lui     t8, 0xE600                 ## t8 = E6000000
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a2)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t8, 0x0000(v1)             ## 00000000
	lw      t4, 0x02C0(a2)             ## 000002C0
	sll     t9, t2,  1                 
	addu    t1, s5, t9                 
	addiu   t6, t4, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a2)             ## 000002C0
	sw      s7, 0x0000(t4)             ## 00000000
	lhu     a3, 0x0000(t1)             ## 00000000
	sll     a1, a3,  4                 
	addiu   a1, a1, 0xFFFF             ## a1 = FFFFFFFF
	slti    $at, a1, 0x07FF            
	beq     $at, $zero, lbl_80807424   
	sll     v0, a3,  1                 
	beq     $zero, $zero, lbl_80807424 
	or      t3, a1, $zero              ## t3 = FFFFFFFF
lbl_80807424:
	bgez    v0, lbl_80807430           
	addu    $at, v0, $zero             
	addiu   $at, v0, 0x0007            ## $at = 00000007
lbl_80807430:
	sra     v0, $at,  3                
	bgtz    v0, lbl_80807444           
	andi    a1, a0, 0x00FF             ## a1 = 00000000
	beq     $zero, $zero, lbl_80807448 
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
lbl_80807444:
	or      t0, v0, $zero              ## t0 = 00000000
lbl_80807448:
	bgtz    v0, lbl_80807458           
	addiu   t7, t0, 0x07FF             ## t7 = 000007FF
	beq     $zero, $zero, lbl_8080745C 
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
lbl_80807458:
	or      a3, v0, $zero              ## a3 = 00000000
lbl_8080745C:
	div     $zero, t7, a3              
	mflo    t8                         
	andi    t6, t8, 0x0FFF             ## t6 = 00000000
	bne     a3, $zero, lbl_80807474    
	nop
	break	## 0x01C00
lbl_80807474:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     a3, $at, lbl_8080748C      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t7, $at, lbl_8080748C      
	nop
	break	## 0x01800
lbl_8080748C:
	andi    t7, t3, 0x0FFF             ## t7 = 00000FFF
	sll     t8, t7, 12                 
	or      t9, t6, t5                 ## t9 = 07000000
	or      t6, t9, t8                 ## t6 = E7000000
	sw      t6, 0x0004(t4)             ## 00000004
	lw      v0, 0x02C0(a2)             ## 000002C0
	sll     a1, a1, 16                 
	addiu   a3, a0, 0x0006             ## a3 = 00000006
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	andi    a3, a3, 0x00FF             ## a3 = 00000006
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a2)             ## 000002C0
	lhu     t8, 0x0000(t1)             ## 00000000
	sw      $zero, 0x0004(v0)          ## 00000004
	sll     t6, t8,  1                 
	addiu   t7, t6, 0x0007             ## t7 = E7000007
	sra     t9, t7,  3                 
	andi    t8, t9, 0x01FF             ## t8 = 00000008
	sll     t6, t8,  9                 
	or      t7, t6, $ra                ## t7 = F7700000
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t8, 0xF200                 ## t8 = F2000000
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a2)             ## 000002C0
	sw      t8, 0x0000(v0)             ## 00000000
	lhu     t6, 0x0000(t1)             ## 00000000
	addiu   t7, t6, 0xFFFF             ## t7 = E6FFFFFF
	sll     t9, t7,  2                 
	andi    t8, t9, 0x0FFF             ## t8 = 00000008
	sll     t6, t8, 12                 
	ori     t7, t6, 0x003C             ## t7 = E700003C
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a2)             ## 000002C0
	addiu   t8, a0, 0x0004             ## t8 = 00000004
	andi    t6, t8, 0x00FF             ## t6 = 00000004
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a2)             ## 000002C0
	sll     t7, t6,  8                 
	or      t9, a1, t7                 ## t9 = E700003C
	or      t8, t9, a3                 ## t8 = E700003E
	or      t6, t8, t5                 ## t6 = E700003E
	addiu   t8, a0, 0x0002             ## t8 = 00000002
	sll     t7, a3,  8                 
	sw      t6, 0x0000(v0)             ## 00000000
	andi    t6, t8, 0x00FF             ## t6 = 00000002
	or      t9, a1, t7                 ## t9 = E700003C
	or      t7, t9, t6                 ## t7 = E700003E
	sw      t7, 0x0004(v0)             ## 00000004
	addiu   t2, t2, 0x0001             ## t2 = 00000003
lbl_80807564:
	sll     t2, t2, 16                 
	sra     t2, t2, 16                 
	addiu   s2, s2, 0x0004             ## s2 = 00000008
	sll     s2, s2, 16                 
	slti    $at, t2, 0x0005            
	bne     $at, $zero, lbl_808070E8   
	sra     s2, s2, 16                 
	lw      v0, 0x0000(s3)             ## 00000000
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s3               
	lw      a3, 0x02C4(v0)             ## 000002C4
	lui     t0, %hi(var_80812C30)      ## t0 = 80810000
	addiu   t0, t0, %lo(var_80812C30)  ## t0 = 80812C30
	addiu   a3, a3, 0xFD40             ## a3 = FFFFFD46
	sw      a3, 0x02C4(v0)             ## 000002C4
	sw      a3, -0x3618($at)           ## 0001C9E8
	lui     a3, %hi(var_80812C18)      ## a3 = 80810000
	addiu   a3, a3, %lo(var_80812C18)  ## a3 = 80812C18
	or      s2, $zero, $zero           ## s2 = 00000000
	or      t2, $zero, $zero           ## t2 = 00000000
	addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
	addiu   t1, $zero, 0x0200          ## t1 = 00000200
lbl_808075BC:
	sll     a0, s2,  1                 
	addu    t8, a3, a0                 
	lh      t9, 0x0000(t8)             ## 00000002
	lh      t6, 0x4AB0(s0)             ## 00004AB0
	lw      t7, 0x49E8(s0)             ## 000049E8
	sll     v0, t2,  4                 
	addu    a1, t9, t6                 
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	addu    t8, t7, v0                 
	sh      a1, 0x0020(t8)             ## 00000022
	lw      t9, 0x49E8(s0)             ## 000049E8
	addiu   t2, t2, 0x0004             ## t2 = 00000004
	sll     t2, t2, 16                 
	addu    t6, t9, v0                 
	sh      a1, 0x0000(t6)             ## 00000002
	lw      t7, 0x49E8(s0)             ## 000049E8
	addu    t6, t0, a0                 
	sra     t2, t2, 16                 
	addu    v1, t7, v0                 
	lh      a1, 0x0000(v1)             ## 00000000
	addiu   s2, s2, 0x0001             ## s2 = 00000001
	sll     s2, s2, 16                 
	addiu   a1, a1, 0x000A             ## a1 = 0000000A
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	sh      a1, 0x0030(v1)             ## 00000030
	lw      t8, 0x49E8(s0)             ## 000049E8
	slti    $at, t2, 0x002C            
	sra     s2, s2, 16                 
	addu    t9, t8, v0                 
	sh      a1, 0x0010(t9)             ## E700004C
	lw      t7, 0x49E8(s0)             ## 000049E8
	lh      a1, 0x0000(t6)             ## 00000002
	addu    t8, t7, v0                 
	sh      a1, 0x0012(t8)             ## 00000014
	lw      t9, 0x49E8(s0)             ## 000049E8
	addu    t6, t9, v0                 
	sh      a1, 0x0002(t6)             ## 00000004
	lw      t7, 0x49E8(s0)             ## 000049E8
	addu    v1, t7, v0                 
	lh      a1, 0x0002(v1)             ## 00000002
	addiu   a1, a1, 0xFFF6             ## a1 = 00000000
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	sh      a1, 0x0032(v1)             ## 00000032
	lw      t8, 0x49E8(s0)             ## 000049E8
	addu    t9, t8, v0                 
	sh      a1, 0x0022(t9)             ## E700005E
	lw      t6, 0x49E8(s0)             ## 000049E8
	addu    t7, t6, v0                 
	sh      $zero, 0x0034(t7)          ## E7000072
	lw      t8, 0x49E8(s0)             ## 000049E8
	addu    v1, t8, v0                 
	lh      a1, 0x0034(v1)             ## 00000034
	sh      a1, 0x0024(v1)             ## 00000024
	lw      t9, 0x49E8(s0)             ## 000049E8
	addu    t6, t9, v0                 
	sh      a1, 0x0014(t6)             ## 00000016
	lw      t7, 0x49E8(s0)             ## 000049E8
	addu    t8, t7, v0                 
	sh      a1, 0x0004(t8)             ## 00000006
	lw      t9, 0x49E8(s0)             ## 000049E8
	addu    t6, t9, v0                 
	sh      $zero, 0x0036(t6)          ## 00000038
	lw      t7, 0x49E8(s0)             ## 000049E8
	addu    v1, t7, v0                 
	lhu     a0, 0x0036(v1)             ## 00000036
	sh      a0, 0x0026(v1)             ## 00000026
	lw      t8, 0x49E8(s0)             ## 000049E8
	addu    t9, t8, v0                 
	sh      a0, 0x0016(t9)             ## E7000052
	lw      t6, 0x49E8(s0)             ## 000049E8
	addu    t7, t6, v0                 
	sh      a0, 0x0006(t7)             ## E7000044
	lw      t8, 0x49E8(s0)             ## 000049E8
	addu    t9, t8, v0                 
	sh      $zero, 0x0028(t9)          ## E7000064
	lw      t6, 0x49E8(s0)             ## 000049E8
	addu    v1, t6, v0                 
	lh      a0, 0x0028(v1)             ## 00000028
	sh      a0, 0x001A(v1)             ## 0000001A
	lw      t7, 0x49E8(s0)             ## 000049E8
	addu    t8, t7, v0                 
	sh      a0, 0x000A(t8)             ## 0000000C
	lw      t9, 0x49E8(s0)             ## 000049E8
	addu    t6, t9, v0                 
	sh      a0, 0x0008(t6)             ## 0000000A
	lw      t7, 0x49E8(s0)             ## 000049E8
	addu    t8, t7, v0                 
	sh      t1, 0x003A(t8)             ## 0000003C
	lw      t9, 0x49E8(s0)             ## 000049E8
	addu    v1, t9, v0                 
	lh      a0, 0x003A(v1)             ## 0000003A
	sh      a0, 0x0038(v1)             ## 00000038
	lw      t6, 0x49E8(s0)             ## 000049E8
	addu    t7, t6, v0                 
	sh      a0, 0x002A(t7)             ## E7000068
	lw      t8, 0x49E8(s0)             ## 000049E8
	addu    t9, t8, v0                 
	sh      a0, 0x0018(t9)             ## E7000054
	lw      t6, 0x49E8(s0)             ## 000049E8
	addu    t7, t6, v0                 
	sb      t3, 0x003F(t7)             ## E700007D
	lw      t8, 0x49E8(s0)             ## 000049E8
	addu    v1, t8, v0                 
	lbu     a1, 0x003F(v1)             ## 0000003F
	sb      a1, 0x002F(v1)             ## 0000002F
	lw      t9, 0x49E8(s0)             ## 000049E8
	addu    t6, t9, v0                 
	sb      a1, 0x001F(t6)             ## 00000021
	lw      t7, 0x49E8(s0)             ## 000049E8
	addu    t8, t7, v0                 
	sb      a1, 0x000F(t8)             ## 00000011
	lw      t9, 0x49E8(s0)             ## 000049E8
	addu    t6, t9, v0                 
	sb      a1, 0x003E(t6)             ## 00000040
	lw      t7, 0x49E8(s0)             ## 000049E8
	addu    t8, t7, v0                 
	sb      a1, 0x002E(t8)             ## 00000030
	lw      t9, 0x49E8(s0)             ## 000049E8
	addu    t6, t9, v0                 
	sb      a1, 0x001E(t6)             ## 00000020
	lw      t7, 0x49E8(s0)             ## 000049E8
	addu    t8, t7, v0                 
	sb      a1, 0x000E(t8)             ## 00000010
	lw      t9, 0x49E8(s0)             ## 000049E8
	addu    t6, t9, v0                 
	sb      a1, 0x003D(t6)             ## 0000003F
	lw      t7, 0x49E8(s0)             ## 000049E8
	addu    t8, t7, v0                 
	sb      a1, 0x002D(t8)             ## 0000002F
	lw      t9, 0x49E8(s0)             ## 000049E8
	addu    t6, t9, v0                 
	sb      a1, 0x001D(t6)             ## 0000001F
	lw      t7, 0x49E8(s0)             ## 000049E8
	addu    t8, t7, v0                 
	sb      a1, 0x000D(t8)             ## 0000000F
	lw      t9, 0x49E8(s0)             ## 000049E8
	addu    t6, t9, v0                 
	sb      a1, 0x003C(t6)             ## 0000003E
	lw      t7, 0x49E8(s0)             ## 000049E8
	addu    t8, t7, v0                 
	sb      a1, 0x002C(t8)             ## 0000002E
	lw      t9, 0x49E8(s0)             ## 000049E8
	addu    t6, t9, v0                 
	sb      a1, 0x001C(t6)             ## 0000001E
	lw      t7, 0x49E8(s0)             ## 000049E8
	addu    t8, t7, v0                 
	bne     $at, $zero, lbl_808075BC   
	sb      a1, 0x000C(t8)             ## 0000000E
	lw      v1, 0x49E8(s0)             ## 000049E8
	addiu   t7, $zero, 0x0D80          ## t7 = 00000D80
	lh      a1, 0x0000(v1)             ## 00000000
	addiu   a1, a1, 0x006C             ## a1 = 0000006C
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	sh      a1, 0x0030(v1)             ## 00000030
	lw      t9, 0x49E8(s0)             ## 000049E8
	sh      a1, 0x0010(t9)             ## E700004C
	lw      v1, 0x49E8(s0)             ## 000049E8
	lh      a1, 0x0002(v1)             ## 00000002
	addiu   a1, a1, 0xFFF0             ## a1 = 0000005C
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	sh      a1, 0x0032(v1)             ## 00000032
	lw      t6, 0x49E8(s0)             ## 000049E8
	sh      a1, 0x0022(t6)             ## 00000024
	lw      t8, 0x49E8(s0)             ## 000049E8
	sh      t7, 0x0038(t8)             ## 0000003A
	lw      v1, 0x49E8(s0)             ## 000049E8
	lui     t8, 0xFC30                 ## t8 = FC300000
	ori     t8, t8, 0x9661             ## t8 = FC309661
	lh      t9, 0x0038(v1)             ## 00000038
	sh      t9, 0x0018(v1)             ## 00000018
	lw      v0, 0x02C0(a2)             ## 000002C0
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t9, 0x552E                 ## t9 = 552E0000
	ori     t9, t9, 0xFF7F             ## t9 = 552EFF7F
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a2)             ## 000002C0
	sw      t9, 0x0004(v0)             ## 00000004
	sw      t8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a2)             ## 000002C0
	sw      s8, 0x0000(v0)             ## 00000000
	lh      t7, 0x4A5E(s0)             ## 00004A5E
	andi    t8, t7, 0x00FF             ## t8 = 00000008
	lh      t7, 0x4A5A(s0)             ## 00004A5A
	sll     t9, t8,  8                 
	sll     t8, t7, 24                 
	lh      t7, 0x4A5C(s0)             ## 00004A5C
	or      t6, t9, t8                 ## t6 = 552EFF7F
	andi    t9, t7, 0x00FF             ## t9 = 00000008
	sll     t8, t9, 16                 
	lh      t9, 0x4A8E(s0)             ## 00004A8E
	or      t7, t6, t8                 ## t7 = 552EFF7F
	andi    t6, t9, 0x00FF             ## t6 = 00000008
	or      t8, t7, t6                 ## t8 = 552EFF7F
	sw      t8, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t7, 0x0100                 ## t7 = 01000000
	ori     t7, t7, 0x4008             ## t7 = 01004008
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a2)             ## 000002C0
	sw      t7, 0x0000(v0)             ## 00000000
	lw      t6, 0x49E8(s0)             ## 000049E8
	lui     t9, 0xFD70                 ## t9 = FD700000
	sw      t6, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t7, 0x0102                 ## t7 = 01020000
	addiu   t7, t7, 0x1F80             ## t7 = 01021F80
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a2)             ## 000002C0
	sw      t7, 0x0004(v0)             ## 00000004
	sw      t9, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	or      s2, $zero, $zero           ## s2 = 00000000
	or      s1, $zero, $zero           ## s1 = 00000000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a2)             ## 000002C0
	sw      t5, 0x0004(v0)             ## 00000004
	sw      $ra, 0x0000(v0)            ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t9, 0xE600                 ## t9 = E6000000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t9, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t6, 0x076B                 ## t6 = 076B0000
	ori     t6, t6, 0xF04C             ## t6 = 076BF04C
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a2)             ## 000002C0
	sw      t6, 0x0004(v0)             ## 00000004
	sw      s7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t7, 0xF570                 ## t7 = F5700000
	ori     t7, t7, 0x3600             ## t7 = F5703600
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t9, 0x001A                 ## t9 = 001A0000
	ori     t9, t9, 0xC03C             ## t9 = 001AC03C
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a2)             ## 000002C0
	lui     t8, 0xF200                 ## t8 = F2000000
	sw      t8, 0x0000(v0)             ## 00000000
	sw      t9, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t6, 0x0700                 ## t6 = 07000000
	ori     t6, t6, 0x0406             ## t6 = 07000406
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a2)             ## 000002C0
	addiu   t8, $zero, 0x0602          ## t8 = 00000602
	sw      t8, 0x0004(v0)             ## 00000004
	sw      t6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t6, 0xFCFF                 ## t6 = FCFF0000
	ori     t6, t6, 0x97FF             ## t6 = FCFF97FF
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t8, 0xFF2D                 ## t8 = FF2D0000
	ori     t8, t8, 0xFEFF             ## t8 = FF2DFEFF
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a2)             ## 000002C0
	sw      t8, 0x0004(v0)             ## 00000004
	sw      t6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a2)             ## 000002C0
	lui     t7, 0x0102                 ## t7 = 01020000
	ori     t7, t7, 0x0040             ## t7 = 01020040
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a2)             ## 000002C0
	sw      t7, 0x0000(v0)             ## 00000000
	lw      t6, 0x49E8(s0)             ## 000049E8
	lui     s4, 0x0001                 ## s4 = 00010000
	ori     s4, s4, 0x8000             ## s4 = 00018000
	addiu   t8, t6, 0x0040             ## t8 = FCFF983F
	sw      t8, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a2)             ## 000002C0
	addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a2)             ## 000002C0
	sw      s8, 0x0000(v0)             ## 00000000
	lh      t7, 0x4A8E(s0)             ## 00004A8E
	andi    t6, t7, 0x00FF             ## t6 = 00000040
	or      t8, t6, $at                ## t8 = FFFFFF40
	sw      t8, 0x0004(v0)             ## 00000004
	ori     $at, $zero, 0xE758         ## $at = 0000E758
	addu    v1, s3, $at                
	sw      v1, 0x0040($sp)            
lbl_80807A84:
	lh      t9, 0x4A2A(s0)             ## 00004A2A
	lw      v1, 0x0040($sp)            
	sll     a2, s2, 16                 
	sll     t7, t9,  3                 
	addu    t6, s3, t7                 
	addu    t8, t6, s1                 
	addu    t9, t8, s4                 
	lbu     t7, 0x49F4(t9)             ## 000049FC
	sra     a2, a2, 16                 
	lw      a0, 0x0000(s3)             ## 00000000
	sll     t6, t7,  7                 
	addu    a1, t6, v1                 
	jal     func_808068C0              
	addiu   a1, a1, 0x3C88             ## a1 = 00003CE4
	addiu   s2, s2, 0x0004             ## s2 = 00000004
	sll     s2, s2, 16                 
	sra     s2, s2, 16                 
	addiu   s1, s1, 0x0001             ## s1 = 00000001
	sll     s1, s1, 16                 
	slti    $at, s2, 0x0020            
	bne     $at, $zero, lbl_80807A84   
	sra     s1, s1, 16                 
	lw      t9, 0x49E8(s0)             ## 000049E8
	addiu   t8, $zero, 0x0300          ## t8 = 00000300
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	sh      t8, 0x02BA(t9)             ## 000002BA
	lw      v1, 0x49E8(s0)             ## 000049E8
	lh      v0, 0x02BA(v1)             ## 000002BA
	sh      v0, 0x02B8(v1)             ## 000002B8
	lw      t7, 0x49E8(s0)             ## 000049E8
	sh      v0, 0x02AA(t7)             ## 000002AA
	lw      t6, 0x49E8(s0)             ## 000049E8
	sh      v0, 0x0298(t6)             ## 00000298
	lw      t8, 0x49E8(s0)             ## 000049E8
	sh      v0, 0x027A(t8)             ## 0000057A
	lw      t9, 0x49E8(s0)             ## 000049E8
	sh      v0, 0x0278(t9)             ## 00000278
	lw      t7, 0x49E8(s0)             ## 000049E8
	sh      v0, 0x026A(t7)             ## 0000026A
	lw      t6, 0x49E8(s0)             ## 000049E8
	sh      v0, 0x0258(t6)             ## 00000258
	lh      a0, 0x4AB8(s0)             ## 00004AB8
	beql    a0, $zero, lbl_80807B48    
	lw      t9, 0x49E8(s0)             ## 000049E8
	beq     a0, $at, lbl_80807B44      
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	bnel    a0, $at, lbl_80807B64      
	addiu   $at, $zero, 0x0002         ## $at = 00000002
lbl_80807B44:
	lw      t9, 0x49E8(s0)             ## 000049E8
lbl_80807B48:
	addiu   t8, $zero, 0x0700          ## t8 = 00000700
	sh      t8, 0x02B8(t9)             ## 000002B8
	lw      v1, 0x49E8(s0)             ## 000049E8
	lh      t7, 0x02B8(v1)             ## 000002B8
	beq     $zero, $zero, lbl_80807B8C 
	sh      t7, 0x0298(v1)             ## 00000298
	addiu   $at, $zero, 0x0002         ## $at = 00000002
lbl_80807B64:
	beq     a0, $at, lbl_80807B74      
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bnel    a0, $at, lbl_80807B90      
	lw      $ra, 0x003C($sp)           
lbl_80807B74:
	lw      t8, 0x49E8(s0)             ## 000049E8
	addiu   t6, $zero, 0x0500          ## t6 = 00000500
	sh      t6, 0x02B8(t8)             ## 000009B8
	lw      v1, 0x49E8(s0)             ## 000049E8
	lh      t9, 0x02B8(v1)             ## 000002B8
	sh      t9, 0x0298(v1)             ## 00000298
lbl_80807B8C:
	lw      $ra, 0x003C($sp)           
lbl_80807B90:
	lw      s0, 0x0018($sp)            
	lw      s1, 0x001C($sp)            
	lw      s2, 0x0020($sp)            
	lw      s3, 0x0024($sp)            
	lw      s4, 0x0028($sp)            
	lw      s5, 0x002C($sp)            
	lw      s6, 0x0030($sp)            
	lw      s7, 0x0034($sp)            
	lw      s8, 0x0038($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0150           ## $sp = 00000000


func_80807BBC:
	addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
	sw      s6, 0x0030($sp)            
	or      s6, a0, $zero              ## s6 = 00000000
	sw      $ra, 0x003C($sp)           
	sw      s8, 0x0038($sp)            
	sw      s7, 0x0034($sp)            
	sw      s5, 0x002C($sp)            
	sw      s4, 0x0028($sp)            
	sw      s3, 0x0024($sp)            
	sw      s2, 0x0020($sp)            
	sw      s1, 0x001C($sp)            
	sw      s0, 0x0018($sp)            
	or      s7, $zero, $zero           ## s7 = 00000000
	or      s2, $zero, $zero           ## s2 = 00000000
	lw      a0, 0x0000(s6)             ## 00000000
	jal     func_8007E868              
	or      s8, a0, $zero              ## s8 = 00000000
	lw      v1, 0x02C0(s8)             ## 000002C0
	lui     t7, 0xE300                 ## t7 = E3000000
	ori     t7, t7, 0x0A01             ## t7 = E3000A01
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s8)             ## 000002C0
	lui     t8, 0x0010                 ## t8 = 00100000
	sw      t8, 0x0004(v1)             ## 00000004
	sw      t7, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(s8)             ## 000002C0
	lui     t1, 0xE200                 ## t1 = E2000000
	lui     t2, 0x0C18                 ## t2 = 0C180000
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(s8)             ## 000002C0
	ori     t2, t2, 0x4240             ## t2 = 0C184240
	ori     t1, t1, 0x001C             ## t1 = E200001C
	sw      t1, 0x0000(v1)             ## 00000000
	sw      t2, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s8)             ## 000002C0
	lui     t4, 0xFCFF                 ## t4 = FCFF0000
	lui     t5, 0xFFFD                 ## t5 = FFFD0000
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s8)             ## 000002C0
	ori     t5, t5, 0x9238             ## t5 = FFFD9238
	ori     t4, t4, 0xADFF             ## t4 = FCFFADFF
	sw      t4, 0x0000(v1)             ## 00000000
	sw      t5, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s8)             ## 000002C0
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s8)             ## 000002C0
	addu    t7, s6, $at                
	sw      t7, 0x0040($sp)            
	lh      t9, 0x4ABC(t7)             ## E30054BD
	lui     $at, 0xFA00                ## $at = FA000000
	addiu   t3, $zero, 0xFFFF          ## t3 = FFFFFFFF
	andi    t1, t9, 0x00FF             ## t1 = 00000008
	or      t2, t1, $at                ## t2 = FA000008
	sw      t2, 0x0000(v1)             ## 00000000
	sw      t3, 0x0004(v1)             ## 00000004
	lw      t4, 0x0040($sp)            
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	lh      v0, 0x4ABA(t4)             ## FCFFF8B9
	beql    v0, $zero, lbl_80807CC4    
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	beq     v0, $at, lbl_80807CC0      
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bne     v0, $at, lbl_80807F40      
lbl_80807CC0:
	addiu   $at, $zero, 0x0005         ## $at = 00000005
lbl_80807CC4:
	beq     v0, $at, lbl_80807E08      
	lui     s5, %hi(var_80812758)      ## s5 = 80810000
	ori     $at, $zero, 0xE758         ## $at = 0000E758
	lui     s4, %hi(var_808126D4)      ## s4 = 80810000
	lui     s3, %hi(var_80812650)      ## s3 = 80810000
	addiu   s3, s3, %lo(var_80812650)  ## s3 = 80812650
	addiu   s4, s4, %lo(var_808126D4)  ## s4 = 808126D4
	addu    s1, s6, $at                
	lw      v1, 0x02C0(s8)             ## 000002C0
lbl_80807CE8:
	lui     t6, 0x0102                 ## t6 = 01020000
	ori     t6, t6, 0x0040             ## t6 = 01020040
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s8)             ## 000002C0
	sw      t6, 0x0000(v1)             ## 00000000
	lw      t7, 0x0040($sp)            
	sll     t9, s7,  4                 
	or      s0, $zero, $zero           ## s0 = 00000000
	lw      t8, 0x49E4(t7)             ## E30053E5
	addu    t1, t8, t9                 
	sw      t1, 0x0004(v1)             ## 00000004
lbl_80807D14:
	sll     v0, s2,  1                 
	addu    t2, s3, v0                 
	addu    t5, s4, v0                 
	lh      t6, 0x0000(t5)             ## 00000008
	lh      t3, 0x0000(t2)             ## FA000008
	sll     a3, s0, 16                 
	sll     t7, t6,  7                 
	sll     t4, t3,  7                 
	addu    a1, t4, s1                 
	addu    a2, t7, s1                 
	addiu   a2, a2, 0x3C88             ## a2 = 00003C88
	addiu   a1, a1, 0x3C88             ## a1 = 00003C88
	sra     a3, a3, 16                 
	jal     func_80806A18              
	lw      a0, 0x0000(s6)             ## 00000000
	addiu   s0, s0, 0x0004             ## s0 = 00000004
	sll     s0, s0, 16                 
	sra     s0, s0, 16                 
	addiu   s2, s2, 0x0001             ## s2 = 00000001
	sll     s2, s2, 16                 
	slti    $at, s0, 0x0020            
	bne     $at, $zero, lbl_80807D14   
	sra     s2, s2, 16                 
	addiu   s7, s7, 0x0020             ## s7 = 00000020
	sll     s7, s7, 16                 
	sra     s7, s7, 16                 
	slti    $at, s7, 0x0100            
	bnel    $at, $zero, lbl_80807CE8   
	lw      v1, 0x02C0(s8)             ## 000002C0
	lui     s3, %hi(var_80812650)      ## s3 = 80810000
	lui     s4, %hi(var_808126D4)      ## s4 = 80810000
	addiu   s4, s4, %lo(var_808126D4)  ## s4 = 808126D4
	addiu   s3, s3, %lo(var_80812650)  ## s3 = 80812650
	lw      v1, 0x02C0(s8)             ## 000002C0
	lui     t9, 0x0100                 ## t9 = 01000000
	ori     t9, t9, 0x4008             ## t9 = 01004008
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s8)             ## 000002C0
	sw      t9, 0x0000(v1)             ## 00000000
	lw      t1, 0x0040($sp)            
	sll     v0, s2,  1                 
	ori     $at, $zero, 0xE758         ## $at = 0000E758
	lw      t2, 0x49E4(t1)             ## 000049E4
	addu    s1, s6, $at                
	addu    t4, s3, v0                 
	addiu   t3, t2, 0x1000             ## t3 = 00001000
	sw      t3, 0x0004(v1)             ## 00000004
	addu    t7, s4, v0                 
	lh      t8, 0x0000(t7)             ## 00000000
	lh      t5, 0x0000(t4)             ## 00000000
	lw      a0, 0x0000(s6)             ## 00000000
	sll     t9, t8,  7                 
	sll     t6, t5,  7                 
	addu    a1, t6, s1                 
	addu    a2, t9, s1                 
	addiu   a2, a2, 0x3C88             ## a2 = 00003C88
	addiu   a1, a1, 0x3C88             ## a1 = 00003C88
	jal     func_80806A18              
	or      a3, $zero, $zero           ## a3 = 00000000
	beq     $zero, $zero, lbl_80808454 
	lw      $ra, 0x003C($sp)           
lbl_80807E08:
	ori     $at, $zero, 0xE758         ## $at = 0000E758
	lui     s3, %hi(var_80812650)      ## s3 = 80810000
	addiu   s3, s3, %lo(var_80812650)  ## s3 = 80812650
	addu    s1, s6, $at                
	addiu   s5, s5, %lo(var_80812758)  ## s5 = 80812758
	lw      v1, 0x02C0(s8)             ## 000002C0
lbl_80807E20:
	lui     t2, 0x0102                 ## t2 = 01020000
	ori     t2, t2, 0x0040             ## t2 = 01020040
	addiu   t1, v1, 0x0008             ## t1 = 00000008
	sw      t1, 0x02C0(s8)             ## 000002C0
	sw      t2, 0x0000(v1)             ## 00000000
	lw      t3, 0x0040($sp)            
	sll     t5, s7,  4                 
	or      s0, $zero, $zero           ## s0 = 00000000
	lw      t4, 0x49E4(t3)             ## 000049E4
	addu    t6, t4, t5                 
	sw      t6, 0x0004(v1)             ## 00000004
lbl_80807E4C:
	sll     v0, s2,  1                 
	addu    t7, s3, v0                 
	addu    t1, s5, v0                 
	lh      t2, 0x0000(t1)             ## 00000008
	lh      t8, 0x0000(t7)             ## 00000000
	sll     a3, s0, 16                 
	sll     t3, t2,  7                 
	sll     t9, t8,  7                 
	addu    a1, t9, s1                 
	addu    a2, t3, s1                 
	addiu   a2, a2, 0x3C88             ## a2 = 00003C88
	addiu   a1, a1, 0x3C88             ## a1 = 00003C88
	sra     a3, a3, 16                 
	jal     func_80806A18              
	lw      a0, 0x0000(s6)             ## 00000000
	addiu   s0, s0, 0x0004             ## s0 = 00000004
	sll     s0, s0, 16                 
	sra     s0, s0, 16                 
	addiu   s2, s2, 0x0001             ## s2 = 00000002
	sll     s2, s2, 16                 
	slti    $at, s0, 0x0020            
	bne     $at, $zero, lbl_80807E4C   
	sra     s2, s2, 16                 
	addiu   s7, s7, 0x0020             ## s7 = 00000040
	sll     s7, s7, 16                 
	sra     s7, s7, 16                 
	slti    $at, s7, 0x0100            
	bnel    $at, $zero, lbl_80807E20   
	lw      v1, 0x02C0(s8)             ## 000002C0
	lui     s3, %hi(var_80812650)      ## s3 = 80810000
	lui     s5, %hi(var_80812758)      ## s5 = 80810000
	addiu   s5, s5, %lo(var_80812758)  ## s5 = 80812758
	addiu   s3, s3, %lo(var_80812650)  ## s3 = 80812650
	lw      v1, 0x02C0(s8)             ## 000002C0
	lui     t5, 0x0100                 ## t5 = 01000000
	ori     t5, t5, 0x4008             ## t5 = 01004008
	addiu   t4, v1, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(s8)             ## 000002C0
	sw      t5, 0x0000(v1)             ## 00000000
	lw      t6, 0x0040($sp)            
	sll     v0, s2,  1                 
	ori     $at, $zero, 0xE758         ## $at = 0000E758
	lw      t7, 0x49E4(t6)             ## 000049E4
	addu    s1, s6, $at                
	addu    t9, s3, v0                 
	addiu   t8, t7, 0x1000             ## t8 = 00001000
	sw      t8, 0x0004(v1)             ## 00000004
	addu    t3, s5, v0                 
	lh      t4, 0x0000(t3)             ## 00000000
	lh      t1, 0x0000(t9)             ## 00000000
	lw      a0, 0x0000(s6)             ## 00000000
	sll     t5, t4,  7                 
	sll     t2, t1,  7                 
	addu    a1, t2, s1                 
	addu    a2, t5, s1                 
	addiu   a2, a2, 0x3C88             ## a2 = 00003C88
	addiu   a1, a1, 0x3C88             ## a1 = 00003C88
	jal     func_80806A18              
	or      a3, $zero, $zero           ## a3 = 00000000
	beq     $zero, $zero, lbl_80808454 
	lw      $ra, 0x003C($sp)           
lbl_80807F40:
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beq     v0, $at, lbl_80807F58      
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	beq     v0, $at, lbl_80807F58      
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	bne     v0, $at, lbl_808081D8      
lbl_80807F58:
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	beq     v0, $at, lbl_808080A0      
	lui     s5, %hi(var_80812758)      ## s5 = 80810000
	ori     $at, $zero, 0xE758         ## $at = 0000E758
	lui     s4, %hi(var_808126D4)      ## s4 = 80810000
	lui     s3, %hi(var_80812650)      ## s3 = 80810000
	addiu   s3, s3, %lo(var_80812650)  ## s3 = 80812650
	addiu   s4, s4, %lo(var_808126D4)  ## s4 = 808126D4
	addu    s1, s6, $at                
	lw      v1, 0x02C0(s8)             ## 000002C0
lbl_80807F80:
	lui     t7, 0x0102                 ## t7 = 01020000
	ori     t7, t7, 0x0040             ## t7 = 01020040
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s8)             ## 000002C0
	sw      t7, 0x0000(v1)             ## 00000000
	lw      t8, 0x0040($sp)            
	sll     t1, s7,  4                 
	or      s0, $zero, $zero           ## s0 = 00000000
	lw      t9, 0x49E4(t8)             ## 000049E4
	addu    t2, t9, t1                 
	sw      t2, 0x0004(v1)             ## 00000004
lbl_80807FAC:
	sll     v0, s2,  1                 
	addu    t3, s4, v0                 
	addu    t6, s3, v0                 
	lh      t7, 0x0000(t6)             ## 00000008
	lh      t4, 0x0000(t3)             ## 00000000
	sll     a3, s0, 16                 
	sll     t8, t7,  7                 
	sll     t5, t4,  7                 
	addu    a1, t5, s1                 
	addu    a2, t8, s1                 
	addiu   a2, a2, 0x3C88             ## a2 = 00003C88
	addiu   a1, a1, 0x3C88             ## a1 = 00003C88
	sra     a3, a3, 16                 
	jal     func_80806A18              
	lw      a0, 0x0000(s6)             ## 00000000
	addiu   s0, s0, 0x0004             ## s0 = 00000004
	sll     s0, s0, 16                 
	sra     s0, s0, 16                 
	addiu   s2, s2, 0x0001             ## s2 = 00000003
	sll     s2, s2, 16                 
	slti    $at, s0, 0x0020            
	bne     $at, $zero, lbl_80807FAC   
	sra     s2, s2, 16                 
	addiu   s7, s7, 0x0020             ## s7 = 00000060
	sll     s7, s7, 16                 
	sra     s7, s7, 16                 
	slti    $at, s7, 0x0100            
	bnel    $at, $zero, lbl_80807F80   
	lw      v1, 0x02C0(s8)             ## 000002C0
	lui     s3, %hi(var_80812650)      ## s3 = 80810000
	lui     s4, %hi(var_808126D4)      ## s4 = 80810000
	addiu   s4, s4, %lo(var_808126D4)  ## s4 = 808126D4
	addiu   s3, s3, %lo(var_80812650)  ## s3 = 80812650
	lw      v1, 0x02C0(s8)             ## 000002C0
	lui     t1, 0x0100                 ## t1 = 01000000
	ori     t1, t1, 0x4008             ## t1 = 01004008
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(s8)             ## 000002C0
	sw      t1, 0x0000(v1)             ## 00000000
	lw      t2, 0x0040($sp)            
	sll     v0, s2,  1                 
	ori     $at, $zero, 0xE758         ## $at = 0000E758
	lw      t3, 0x49E4(t2)             ## 000049E4
	addu    s1, s6, $at                
	addu    t5, s4, v0                 
	addiu   t4, t3, 0x1000             ## t4 = 00001000
	sw      t4, 0x0004(v1)             ## 00000004
	addu    t8, s3, v0                 
	lh      t9, 0x0000(t8)             ## 00000000
	lh      t6, 0x0000(t5)             ## 00000000
	lw      a0, 0x0000(s6)             ## 00000000
	sll     t1, t9,  7                 
	sll     t7, t6,  7                 
	addu    a1, t7, s1                 
	addu    a2, t1, s1                 
	addiu   a2, a2, 0x3C88             ## a2 = 00003C88
	addiu   a1, a1, 0x3C88             ## a1 = 00003C88
	jal     func_80806A18              
	or      a3, $zero, $zero           ## a3 = 00000000
	beq     $zero, $zero, lbl_80808454 
	lw      $ra, 0x003C($sp)           
lbl_808080A0:
	ori     $at, $zero, 0xE758         ## $at = 0000E758
	lui     s4, %hi(var_808126D4)      ## s4 = 80810000
	addiu   s4, s4, %lo(var_808126D4)  ## s4 = 808126D4
	addu    s1, s6, $at                
	addiu   s5, s5, %lo(var_80812758)  ## s5 = 80812758
	lw      v1, 0x02C0(s8)             ## 000002C0
lbl_808080B8:
	lui     t3, 0x0102                 ## t3 = 01020000
	ori     t3, t3, 0x0040             ## t3 = 01020040
	addiu   t2, v1, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(s8)             ## 000002C0
	sw      t3, 0x0000(v1)             ## 00000000
	lw      t4, 0x0040($sp)            
	sll     t6, s7,  4                 
	or      s0, $zero, $zero           ## s0 = 00000000
	lw      t5, 0x49E4(t4)             ## 000049E4
	addu    t7, t5, t6                 
	sw      t7, 0x0004(v1)             ## 00000004
lbl_808080E4:
	sll     v0, s2,  1                 
	addu    t8, s4, v0                 
	addu    t2, s5, v0                 
	lh      t3, 0x0000(t2)             ## 00000008
	lh      t9, 0x0000(t8)             ## 00000000
	sll     a3, s0, 16                 
	sll     t4, t3,  7                 
	sll     t1, t9,  7                 
	addu    a1, t1, s1                 
	addu    a2, t4, s1                 
	addiu   a2, a2, 0x3C88             ## a2 = 00003C88
	addiu   a1, a1, 0x3C88             ## a1 = 00003C88
	sra     a3, a3, 16                 
	jal     func_80806A18              
	lw      a0, 0x0000(s6)             ## 00000000
	addiu   s0, s0, 0x0004             ## s0 = 00000004
	sll     s0, s0, 16                 
	sra     s0, s0, 16                 
	addiu   s2, s2, 0x0001             ## s2 = 00000004
	sll     s2, s2, 16                 
	slti    $at, s0, 0x0020            
	bne     $at, $zero, lbl_808080E4   
	sra     s2, s2, 16                 
	addiu   s7, s7, 0x0020             ## s7 = 00000080
	sll     s7, s7, 16                 
	sra     s7, s7, 16                 
	slti    $at, s7, 0x0100            
	bnel    $at, $zero, lbl_808080B8   
	lw      v1, 0x02C0(s8)             ## 000002C0
	lui     s4, %hi(var_808126D4)      ## s4 = 80810000
	lui     s5, %hi(var_80812758)      ## s5 = 80810000
	addiu   s5, s5, %lo(var_80812758)  ## s5 = 80812758
	addiu   s4, s4, %lo(var_808126D4)  ## s4 = 808126D4
	lw      v1, 0x02C0(s8)             ## 000002C0
	lui     t6, 0x0100                 ## t6 = 01000000
	ori     t6, t6, 0x4008             ## t6 = 01004008
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s8)             ## 000002C0
	sw      t6, 0x0000(v1)             ## 00000000
	lw      t7, 0x0040($sp)            
	sll     v0, s2,  1                 
	ori     $at, $zero, 0xE758         ## $at = 0000E758
	lw      t8, 0x49E4(t7)             ## 000049E4
	addu    s1, s6, $at                
	addu    t1, s4, v0                 
	addiu   t9, t8, 0x1000             ## t9 = 00001000
	sw      t9, 0x0004(v1)             ## 00000004
	addu    t4, s5, v0                 
	lh      t5, 0x0000(t4)             ## 00000000
	lh      t2, 0x0000(t1)             ## 00000000
	lw      a0, 0x0000(s6)             ## 00000000
	sll     t6, t5,  7                 
	sll     t3, t2,  7                 
	addu    a1, t3, s1                 
	addu    a2, t6, s1                 
	addiu   a2, a2, 0x3C88             ## a2 = 00003C88
	addiu   a1, a1, 0x3C88             ## a1 = 00003C88
	jal     func_80806A18              
	or      a3, $zero, $zero           ## a3 = 00000000
	beq     $zero, $zero, lbl_80808454 
	lw      $ra, 0x003C($sp)           
lbl_808081D8:
	addiu   $at, $zero, 0x0008         ## $at = 00000008
	beq     v0, $at, lbl_80808320      
	lui     s5, %hi(var_80812758)      ## s5 = 80810000
	ori     $at, $zero, 0xE758         ## $at = 0000E758
	lui     s5, %hi(var_80812758)      ## s5 = 80810000
	lui     s3, %hi(var_80812650)      ## s3 = 80810000
	addiu   s3, s3, %lo(var_80812650)  ## s3 = 80812650
	addiu   s5, s5, %lo(var_80812758)  ## s5 = 80812758
	addu    s1, s6, $at                
	lw      v1, 0x02C0(s8)             ## 000002C0
lbl_80808200:
	lui     t8, 0x0102                 ## t8 = 01020000
	ori     t8, t8, 0x0040             ## t8 = 01020040
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s8)             ## 000002C0
	sw      t8, 0x0000(v1)             ## 00000000
	lw      t9, 0x0040($sp)            
	sll     t2, s7,  4                 
	or      s0, $zero, $zero           ## s0 = 00000000
	lw      t1, 0x49E4(t9)             ## 000049E4
	addu    t3, t1, t2                 
	sw      t3, 0x0004(v1)             ## 00000004
lbl_8080822C:
	sll     v0, s2,  1                 
	addu    t4, s5, v0                 
	addu    t7, s3, v0                 
	lh      t8, 0x0000(t7)             ## 00000008
	lh      t5, 0x0000(t4)             ## 00000000
	sll     a3, s0, 16                 
	sll     t9, t8,  7                 
	sll     t6, t5,  7                 
	addu    a1, t6, s1                 
	addu    a2, t9, s1                 
	addiu   a2, a2, 0x3C88             ## a2 = 00003C88
	addiu   a1, a1, 0x3C88             ## a1 = 00003C88
	sra     a3, a3, 16                 
	jal     func_80806A18              
	lw      a0, 0x0000(s6)             ## 00000000
	addiu   s0, s0, 0x0004             ## s0 = 00000004
	sll     s0, s0, 16                 
	sra     s0, s0, 16                 
	addiu   s2, s2, 0x0001             ## s2 = 00000005
	sll     s2, s2, 16                 
	slti    $at, s0, 0x0020            
	bne     $at, $zero, lbl_8080822C   
	sra     s2, s2, 16                 
	addiu   s7, s7, 0x0020             ## s7 = 000000A0
	sll     s7, s7, 16                 
	sra     s7, s7, 16                 
	slti    $at, s7, 0x0100            
	bnel    $at, $zero, lbl_80808200   
	lw      v1, 0x02C0(s8)             ## 000002C0
	lui     s3, %hi(var_80812650)      ## s3 = 80810000
	lui     s5, %hi(var_80812758)      ## s5 = 80810000
	addiu   s5, s5, %lo(var_80812758)  ## s5 = 80812758
	addiu   s3, s3, %lo(var_80812650)  ## s3 = 80812650
	lw      v1, 0x02C0(s8)             ## 000002C0
	lui     t2, 0x0100                 ## t2 = 01000000
	ori     t2, t2, 0x4008             ## t2 = 01004008
	addiu   t1, v1, 0x0008             ## t1 = 00000008
	sw      t1, 0x02C0(s8)             ## 000002C0
	sw      t2, 0x0000(v1)             ## 00000000
	lw      t3, 0x0040($sp)            
	sll     v0, s2,  1                 
	ori     $at, $zero, 0xE758         ## $at = 0000E758
	lw      t4, 0x49E4(t3)             ## 000049E4
	addu    s1, s6, $at                
	addu    t6, s5, v0                 
	addiu   t5, t4, 0x1000             ## t5 = 00001000
	sw      t5, 0x0004(v1)             ## 00000004
	addu    t9, s3, v0                 
	lh      t1, 0x0000(t9)             ## 00000000
	lh      t7, 0x0000(t6)             ## 00000000
	lw      a0, 0x0000(s6)             ## 00000000
	sll     t2, t1,  7                 
	sll     t8, t7,  7                 
	addu    a1, t8, s1                 
	addu    a2, t2, s1                 
	addiu   a2, a2, 0x3C88             ## a2 = 00003C88
	addiu   a1, a1, 0x3C88             ## a1 = 00003C88
	jal     func_80806A18              
	or      a3, $zero, $zero           ## a3 = 00000000
	beq     $zero, $zero, lbl_80808454 
	lw      $ra, 0x003C($sp)           
lbl_80808320:
	ori     $at, $zero, 0xE758         ## $at = 0000E758
	lui     s4, %hi(var_808126D4)      ## s4 = 80810000
	addiu   s4, s4, %lo(var_808126D4)  ## s4 = 808126D4
	addu    s1, s6, $at                
	addiu   s5, s5, %lo(var_80812758)  ## s5 = 80814EB0
	lw      v1, 0x02C0(s8)             ## 000002C0
lbl_80808338:
	lui     t4, 0x0102                 ## t4 = 01020000
	ori     t4, t4, 0x0040             ## t4 = 01020040
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s8)             ## 000002C0
	sw      t4, 0x0000(v1)             ## 00000000
	lw      t5, 0x0040($sp)            
	sll     t7, s7,  4                 
	or      s0, $zero, $zero           ## s0 = 00000000
	lw      t6, 0x49E4(t5)             ## 000049E4
	addu    t8, t6, t7                 
	sw      t8, 0x0004(v1)             ## 00000004
lbl_80808364:
	sll     v0, s2,  1                 
	addu    t9, s5, v0                 
	addu    t3, s4, v0                 
	lh      t4, 0x0000(t3)             ## 00000008
	lh      t1, 0x0000(t9)             ## 00000000
	sll     a3, s0, 16                 
	sll     t5, t4,  7                 
	sll     t2, t1,  7                 
	addu    a1, t2, s1                 
	addu    a2, t5, s1                 
	addiu   a2, a2, 0x3C88             ## a2 = 00003C88
	addiu   a1, a1, 0x3C88             ## a1 = 00003C88
	sra     a3, a3, 16                 
	jal     func_80806A18              
	lw      a0, 0x0000(s6)             ## 00000000
	addiu   s0, s0, 0x0004             ## s0 = 00000004
	sll     s0, s0, 16                 
	sra     s0, s0, 16                 
	addiu   s2, s2, 0x0001             ## s2 = 00000006
	sll     s2, s2, 16                 
	slti    $at, s0, 0x0020            
	bne     $at, $zero, lbl_80808364   
	sra     s2, s2, 16                 
	addiu   s7, s7, 0x0020             ## s7 = 000000C0
	sll     s7, s7, 16                 
	sra     s7, s7, 16                 
	slti    $at, s7, 0x0100            
	bnel    $at, $zero, lbl_80808338   
	lw      v1, 0x02C0(s8)             ## 000002C0
	lui     s4, %hi(var_808126D4)      ## s4 = 80810000
	lui     s5, %hi(var_80812758)      ## s5 = 80810000
	addiu   s5, s5, %lo(var_80812758)  ## s5 = 80812758
	addiu   s4, s4, %lo(var_808126D4)  ## s4 = 808126D4
	lw      v1, 0x02C0(s8)             ## 000002C0
	lui     t7, 0x0100                 ## t7 = 01000000
	ori     t7, t7, 0x4008             ## t7 = 01004008
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s8)             ## 000002C0
	sw      t7, 0x0000(v1)             ## 00000000
	lw      t8, 0x0040($sp)            
	sll     v0, s2,  1                 
	ori     $at, $zero, 0xE758         ## $at = 0000E758
	lw      t9, 0x49E4(t8)             ## 000049E4
	addu    s1, s6, $at                
	addu    t2, s5, v0                 
	addiu   t1, t9, 0x1000             ## t1 = 00001000
	sw      t1, 0x0004(v1)             ## 00000004
	addu    t5, s4, v0                 
	lh      t6, 0x0000(t5)             ## 00000000
	lh      t3, 0x0000(t2)             ## 00000000
	lw      a0, 0x0000(s6)             ## 00000000
	sll     t7, t6,  7                 
	sll     t4, t3,  7                 
	addu    a1, t4, s1                 
	addu    a2, t7, s1                 
	addiu   a2, a2, 0x3C88             ## a2 = 00003C88
	addiu   a1, a1, 0x3C88             ## a1 = 00003C88
	jal     func_80806A18              
	or      a3, $zero, $zero           ## a3 = 00000000
	lw      $ra, 0x003C($sp)           
lbl_80808454:
	lw      s0, 0x0018($sp)            
	lw      s1, 0x001C($sp)            
	lw      s2, 0x0020($sp)            
	lw      s3, 0x0024($sp)            
	lw      s4, 0x0028($sp)            
	lw      s5, 0x002C($sp)            
	lw      s6, 0x0030($sp)            
	lw      s7, 0x0034($sp)            
	lw      s8, 0x0038($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x00A0           ## $sp = 00000000


func_80808480:
	sw      a1, 0x0004($sp)            
	sw      a2, 0x0008($sp)            
	sll     a2, a2, 16                 
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	sra     a2, a2, 16                 
	addiu   $at, $zero, 0x00DF         ## $at = 000000DF
	bne     a1, $at, lbl_8080853C      
	or      v0, $zero, $zero           ## v0 = 00000000
	lui     t6, 0x0002                 ## t6 = 00020000
	addu    t6, t6, a0                 
	lh      t6, -0x35D6(t6)            ## 0001CA2A
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	sll     t7, t6,  3                 
	addu    t8, a0, t7                 
	addu    a1, t8, a2                 
	addu    a1, a1, $at                
	lui     a2, %hi(var_80812C48)      ## a2 = 80810000
	lui     t0, %hi(var_80812C60)      ## t0 = 80810000
	addiu   t0, t0, %lo(var_80812C60)  ## t0 = 80812C60
	addiu   a2, a2, %lo(var_80812C48)  ## a2 = 80812C48
	lbu     a3, 0x49F4(a1)             ## 000049F4
	sll     v1, v0,  1                 
lbl_808084E0:
	addu    t9, a2, v1                 
	lh      t1, 0x0000(t9)             ## 00000000
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	sll     v0, v0, 16                 
	slt     $at, a3, t1                
	bne     $at, $zero, lbl_80808524   
	addu    t2, t0, v1                 
	lh      t3, 0x0000(t2)             ## 00000000
	slt     $at, t3, a3                
	bne     $at, $zero, lbl_80808524   
	lui     t4, %hi(var_80812C78)      ## t4 = 80810000
	addu    t4, t4, v1                 
	lh      t4, %lo(var_80812C78)(t4)  
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	addu    t5, a3, t4                 
	jr      $ra                        
	sb      t5, 0x49F4(a1)             ## 000049F4
lbl_80808524:
	sra     v0, v0, 16                 
	sltiu   $at, v0, 0x000C            
	bnel    $at, $zero, lbl_808084E0   
	sll     v1, v0,  1                 
	beq     $zero, $zero, lbl_80808680 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_8080853C:
	addiu   $at, $zero, 0x00E7         ## $at = 000000E7
	bne     a1, $at, lbl_808085E0      
	or      v0, $zero, $zero           ## v0 = 00000000
	lui     t6, 0x0002                 ## t6 = 00020000
	addu    t6, t6, a0                 
	lh      t6, -0x35D6(t6)            ## 0001CA2A
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	sll     t7, t6,  3                 
	addu    t8, a0, t7                 
	addu    a1, t8, a2                 
	addu    a1, a1, $at                
	lui     a2, %hi(var_80812C90)      ## a2 = 80810000
	lui     t0, %hi(var_80812CA0)      ## t0 = 80810000
	addiu   t0, t0, %lo(var_80812CA0)  ## t0 = 80812CA0
	addiu   a2, a2, %lo(var_80812C90)  ## a2 = 80812C90
	lbu     a3, 0x49F4(a1)             ## 000049F4
	sll     v1, v0,  1                 
lbl_80808584:
	addu    t9, a2, v1                 
	lh      t1, 0x0000(t9)             ## 00000000
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	sll     v0, v0, 16                 
	slt     $at, a3, t1                
	bne     $at, $zero, lbl_808085C8   
	addu    t2, t0, v1                 
	lh      t3, 0x0000(t2)             ## 00000000
	slt     $at, t3, a3                
	bne     $at, $zero, lbl_808085C8   
	lui     t4, %hi(var_80812CB0)      ## t4 = 80810000
	addu    t4, t4, v1                 
	lh      t4, %lo(var_80812CB0)(t4)  
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	addu    t5, a3, t4                 
	jr      $ra                        
	sb      t5, 0x49F4(a1)             ## 000049F4
lbl_808085C8:
	sra     v0, v0, 16                 
	sltiu   $at, v0, 0x0008            
	bnel    $at, $zero, lbl_80808584   
	sll     v1, v0,  1                 
	beq     $zero, $zero, lbl_80808680 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808085E0:
	addiu   $at, $zero, 0x00E8         ## $at = 000000E8
	bne     a1, $at, lbl_8080867C      
	or      v0, $zero, $zero           ## v0 = 00000000
	lui     t6, 0x0002                 ## t6 = 00020000
	addu    t6, t6, a0                 
	lh      t6, -0x35D6(t6)            ## 0001CA2A
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	sll     t7, t6,  3                 
	addu    t8, a0, t7                 
	addu    a1, t8, a2                 
	addu    a1, a1, $at                
	lui     a2, %hi(var_80812CC0)      ## a2 = 80810000
	lui     t0, %hi(var_80812CC8)      ## t0 = 80810000
	addiu   t0, t0, %lo(var_80812CC8)  ## t0 = 80812CC8
	addiu   a2, a2, %lo(var_80812CC0)  ## a2 = 80812CC0
	lbu     a3, 0x49F4(a1)             ## 000049F4
	sll     v1, v0,  1                 
lbl_80808628:
	addu    t9, a2, v1                 
	lh      t1, 0x0000(t9)             ## 00000000
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	sll     v0, v0, 16                 
	slt     $at, a3, t1                
	bne     $at, $zero, lbl_8080866C   
	addu    t2, t0, v1                 
	lh      t3, 0x0000(t2)             ## 00000000
	slt     $at, t3, a3                
	bne     $at, $zero, lbl_8080866C   
	lui     t4, %hi(var_80812CD0)      ## t4 = 80810000
	addu    t4, t4, v1                 
	lh      t4, %lo(var_80812CD0)(t4)  
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	addu    t5, a3, t4                 
	jr      $ra                        
	sb      t5, 0x49F4(a1)             ## 000049F4
lbl_8080866C:
	sra     v0, v0, 16                 
	sltiu   $at, v0, 0x0004            
	bnel    $at, $zero, lbl_80808628   
	sll     v1, v0,  1                 
lbl_8080867C:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80808680:
	jr      $ra                        
	nop


func_80808688:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x002C($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    v1, a0, $at                
	lh      a2, 0x4AC4(v1)             ## 00004AC4
	sw      a0, 0x0028($sp)            
	sw      v1, 0x001C($sp)            
	jal     func_80808480              
	lh      a1, 0x002E($sp)            
	lw      v1, 0x001C($sp)            
	bne     v0, $zero, lbl_808086F4    
	lw      a0, 0x0028($sp)            
	lh      v0, 0x4AC4(v1)             ## 00004AC4
	lh      a1, 0x002E($sp)            
	beq     v0, $zero, lbl_808086EC    
	addiu   a2, v0, 0xFFFF             ## a2 = FFFFFFFF
	sll     a2, a2, 16                 
	jal     func_80808480              
	sra     a2, a2, 16                 
	bnel    v0, $zero, lbl_808086F8    
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	beq     $zero, $zero, lbl_808086F8 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808086EC:
	beq     $zero, $zero, lbl_808086F8 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808086F4:
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_808086F8:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80808708:
	addiu   $sp, $sp, 0xFF20           ## $sp = FFFFFF20
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	lw      t3, 0x0000(s0)             ## 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80806C24              
	sw      t3, 0x00C8($sp)            
	jal     func_80806EE8              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8080CD2C              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     t2, 0x0001                 ## t2 = 00010000
	ori     t2, t2, 0x8000             ## t2 = 00018000
	addu    t0, s0, t2                 
	lh      a1, 0x4AC4(t0)             ## 00004AC4
	lw      a0, 0x49E8(t0)             ## 000049E8
	lw      t3, 0x00C8($sp)            
	sll     a1, a1,  2                 
	addiu   a1, a1, 0x0004             ## a1 = 00000004
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	sll     v0, a1,  4                 
	addu    t6, a0, v0                 
	lh      v1, 0x0000(t6)             ## 00000000
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	addiu   v1, v1, 0xFFFA             ## v1 = FFFFFFFA
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0260(a0)             ## 00000260
	lw      t7, 0x49E8(t0)             ## 000049E8
	sh      v1, 0x0240(t7)             ## 00000240
	lw      a0, 0x49E8(t0)             ## 000049E8
	lh      v1, 0x0240(a0)             ## 00000240
	addiu   v1, v1, 0x0018             ## v1 = 00000012
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0270(a0)             ## 00000270
	lw      t8, 0x49E8(t0)             ## 000049E8
	sh      v1, 0x0250(t8)             ## 00000250
	lw      a0, 0x49E8(t0)             ## 000049E8
	addu    t9, a0, v0                 
	lh      v1, 0x0002(t9)             ## 00000002
	addiu   v1, v1, 0x0007             ## v1 = 00000019
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0252(a0)             ## 00000252
	lw      t6, 0x49E8(t0)             ## 000049E8
	sh      v1, 0x0242(t6)             ## 00000242
	lw      a0, 0x49E8(t0)             ## 000049E8
	lh      v1, 0x0242(a0)             ## 00000242
	addiu   v1, v1, 0xFFE8             ## v1 = 00000001
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0272(a0)             ## 00000272
	lw      t7, 0x49E8(t0)             ## 000049E8
	sh      v1, 0x0262(t7)             ## 00000262
	lh      a0, 0x4AB8(t0)             ## 00004AB8
	beql    a0, $zero, lbl_8080880C    
	lh      t8, 0x4AC0(t0)             ## 00004AC0
	beq     a0, $at, lbl_80808808      
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	bnel    a0, $at, lbl_80808890      
	addiu   $at, $zero, 0x0002         ## $at = 00000002
lbl_80808808:
	lh      t8, 0x4AC0(t0)             ## 00004AC0
lbl_8080880C:
	lui     a1, %hi(var_808124D0)      ## a1 = 80810000
	addiu   a1, a1, %lo(var_808124D0)  ## a1 = 808124D0
	sll     t9, t8,  6                 
	addu    t6, a1, t9                 
	lh      v1, 0x0040(t6)             ## 00000040
	lw      t7, 0x49E8(t0)             ## 000049E8
	addiu   v1, v1, 0xFFFC             ## v1 = FFFFFFFD
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x02A0(t7)             ## 000002A0
	lw      t8, 0x49E8(t0)             ## 000049E8
	sh      v1, 0x0280(t8)             ## 00000280
	lw      a0, 0x49E8(t0)             ## 000049E8
	lh      v1, 0x0280(a0)             ## 00000280
	addiu   v1, v1, 0x0034             ## v1 = 00000031
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x02B0(a0)             ## 000002B0
	lw      t9, 0x49E8(t0)             ## 000049E8
	sh      v1, 0x0290(t9)             ## 00000290
	lh      t7, 0x4AC0(t0)             ## 00004AC0
	lw      t6, 0x49E8(t0)             ## 000049E8
	sll     t8, t7,  6                 
	addu    t9, a1, t8                 
	lh      v1, 0x0042(t9)             ## 00000042
	addiu   v1, v1, 0x0004             ## v1 = 00000035
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0292(t6)             ## 00000292
	lw      t7, 0x49E8(t0)             ## 000049E8
	beq     $zero, $zero, lbl_808089A4 
	sh      v1, 0x0282(t7)             ## 00000282
	addiu   $at, $zero, 0x0002         ## $at = 00000002
lbl_80808890:
	beq     a0, $at, lbl_808088A0      
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bnel    a0, $at, lbl_80808928      
	lh      t9, 0x4ABE(t0)             ## 00004ABE
lbl_808088A0:
	lh      t8, 0x4AC0(t0)             ## 00004AC0
	lui     a1, %hi(var_808124D0)      ## a1 = 80810000
	addiu   a1, a1, %lo(var_808124D0)  ## a1 = 808124D0
	sll     t9, t8,  6                 
	addu    t6, a1, t9                 
	lh      v1, 0x0040(t6)             ## 00000040
	lw      t7, 0x49E8(t0)             ## 000049E8
	addiu   v1, v1, 0xFFFC             ## v1 = 00000031
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x02A0(t7)             ## 000002A0
	lw      t8, 0x49E8(t0)             ## 000049E8
	sh      v1, 0x0280(t8)             ## 00000280
	lw      a0, 0x49E8(t0)             ## 000049E8
	lh      v1, 0x0280(a0)             ## 00000280
	addiu   v1, v1, 0x0028             ## v1 = 00000059
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x02B0(a0)             ## 000002B0
	lw      t9, 0x49E8(t0)             ## 000049E8
	sh      v1, 0x0290(t9)             ## 00000290
	lh      t7, 0x4AC0(t0)             ## 00004AC0
	lw      t6, 0x49E8(t0)             ## 000049E8
	sll     t8, t7,  6                 
	addu    t9, a1, t8                 
	lh      v1, 0x0042(t9)             ## 00000042
	addiu   v1, v1, 0x0004             ## v1 = 0000005D
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0292(t6)             ## 00000292
	lw      t7, 0x49E8(t0)             ## 000049E8
	beq     $zero, $zero, lbl_808089A4 
	sh      v1, 0x0282(t7)             ## 00000282
	lh      t9, 0x4ABE(t0)             ## 00004ABE
lbl_80808928:
	lw      t8, 0x49E4(t0)             ## 000049E4
	sll     t6, t9,  6                 
	addu    t7, t8, t6                 
	lh      v1, 0x0000(t7)             ## 00000000
	lw      t9, 0x49E8(t0)             ## 000049E8
	addiu   v1, v1, 0xFFFA             ## v1 = 00000057
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x02A0(t9)             ## 000002A0
	lw      t8, 0x49E8(t0)             ## 000049E8
	sh      v1, 0x0280(t8)             ## 00000280
	lw      a0, 0x49E8(t0)             ## 000049E8
	lh      v1, 0x0280(a0)             ## 00000280
	addiu   v1, v1, 0x0018             ## v1 = 0000006F
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x02B0(a0)             ## 000002B0
	lw      t6, 0x49E8(t0)             ## 000049E8
	sh      v1, 0x0290(t6)             ## 00000290
	lh      t8, 0x4ABE(t0)             ## 00004ABE
	lw      t7, 0x49E4(t0)             ## 000049E4
	sll     t6, t8,  6                 
	addu    t9, t7, t6                 
	lh      v1, 0x0002(t9)             ## 00000002
	lw      t8, 0x49E8(t0)             ## 000049E8
	addiu   v1, v1, 0x0006             ## v1 = 00000075
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0292(t8)             ## 00000292
	lw      t7, 0x49E8(t0)             ## 000049E8
	sh      v1, 0x0282(t7)             ## 00000282
lbl_808089A4:
	lw      a0, 0x49E8(t0)             ## 000049E8
	lui     t1, 0xFD90                 ## t1 = FD900000
	lui     t4, 0xF590                 ## t4 = F5900000
	lh      v1, 0x0282(a0)             ## 00000282
	lui     t5, 0x0700                 ## t5 = 07000000
	addiu   v1, v1, 0xFFE8             ## v1 = 0000005D
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x02B2(a0)             ## 000002B2
	lw      t6, 0x49E8(t0)             ## 000049E8
	sh      v1, 0x02A2(t6)             ## 000002A2
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t8, 0x0100                 ## t8 = 01000000
	ori     t8, t8, 0x8010             ## t8 = 01008010
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t3)             ## 000002C0
	sw      t8, 0x0000(v0)             ## 00000000
	lw      t7, 0x49E8(t0)             ## 000049E8
	addiu   t6, t7, 0x0240             ## t6 = 00000240
	sw      t6, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t8, 0xE700                 ## t8 = E7000000
	lui     t6, 0xFC61                 ## t6 = FC610000
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t9, 0xFF2F                 ## t9 = FF2F0000
	ori     t9, t9, 0xFFFF             ## t9 = FF2FFFFF
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t3)             ## 000002C0
	ori     t6, t6, 0x96C3             ## t6 = FC6196C3
	sw      t6, 0x0000(v0)             ## 00000000
	sw      t9, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t7, 0xFA00                 ## t7 = FA000000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t3)             ## 000002C0
	sw      t7, 0x0000(v0)             ## 00000000
	lh      t6, 0x4A9A(t0)             ## 00004A9A
	lh      t7, 0x4A94(t0)             ## 00004A94
	andi    t9, t6, 0x00FF             ## t9 = 000000C3
	sll     t6, t7, 24                 
	lh      t7, 0x4A96(t0)             ## 00004A96
	or      t8, t9, t6                 ## t8 = FC6196C3
	andi    t9, t7, 0x00FF             ## t9 = 00000000
	sll     t6, t9, 16                 
	lh      t9, 0x4A98(t0)             ## 00004A98
	or      t7, t8, t6                 ## t7 = FC6196C3
	andi    t8, t9, 0x00FF             ## t8 = 00000000
	sll     t6, t8,  8                 
	or      t9, t7, t6                 ## t9 = FC6196C3
	sw      t9, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t7, 0x0103                 ## t7 = 01030000
	addiu   t7, t7, 0x97C0             ## t7 = 010297C0
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t3)             ## 000002C0
	sw      t7, 0x0004(v0)             ## 00000004
	sw      t1, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     a3, 0xE600                 ## a3 = E6000000
	lui     $ra, 0xF300                ## $ra = F3000000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t3)             ## 000002C0
	sw      t5, 0x0004(v0)             ## 00000004
	sw      t4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      a3, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t7, 0x0711                 ## t7 = 07110000
	ori     t7, t7, 0xF2AB             ## t7 = 0711F2AB
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t3)             ## 000002C0
	sw      t7, 0x0004(v0)             ## 00000004
	sw      $ra, 0x0000(v0)            ## 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t9, 0xE700                 ## t9 = E7000000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t9, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t7, 0xF588                 ## t7 = F5880000
	ori     t7, t7, 0x0600             ## t7 = F5880600
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t8, 0x0005                 ## t8 = 00050000
	ori     t8, t8, 0xC05C             ## t8 = 0005C05C
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t3)             ## 000002C0
	lui     t9, 0xF200                 ## t9 = F2000000
	sw      t9, 0x0000(v0)             ## 00000000
	sw      t8, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t6, 0x0700                 ## t6 = 07000000
	ori     t6, t6, 0x0406             ## t6 = 07000406
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t3)             ## 000002C0
	addiu   t9, $zero, 0x0602          ## t9 = 00000602
	sw      t9, 0x0004(v0)             ## 00000004
	sw      t6, 0x0000(v0)             ## 00000000
	lh      a0, 0x4AB8(t0)             ## 00004AB8
	beq     a0, $zero, lbl_80808B74    
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beq     a0, $at, lbl_80808B74      
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	bnel    a0, $at, lbl_80808C34      
	addiu   $at, $zero, 0x0002         ## $at = 00000002
lbl_80808B74:
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t7, 0x0103                 ## t7 = 01030000
	addiu   t7, t7, 0x9A00             ## t7 = 01029A00
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t3)             ## 000002C0
	sw      t7, 0x0004(v0)             ## 00000004
	sw      t1, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t3)             ## 000002C0
	sw      t5, 0x0004(v0)             ## 00000004
	sw      t4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      a3, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t7, 0x0729                 ## t7 = 07290000
	ori     t7, t7, 0xF125             ## t7 = 0729F125
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t3)             ## 000002C0
	sw      t7, 0x0004(v0)             ## 00000004
	sw      $ra, 0x0000(v0)            ## 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t9, 0xE700                 ## t9 = E7000000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t9, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t7, 0xF588                 ## t7 = F5880000
	ori     t7, t7, 0x0E00             ## t7 = F5880E00
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t8, 0x000D                 ## t8 = 000D0000
	ori     t8, t8, 0xC05C             ## t8 = 000DC05C
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t3)             ## 000002C0
	lui     t9, 0xF200                 ## t9 = F2000000
	sw      t9, 0x0000(v0)             ## 00000000
	sw      t8, 0x0004(v0)             ## 00000004
	beq     $zero, $zero, lbl_80808CFC 
	lw      v0, 0x02C0(t3)             ## 000002C0
	addiu   $at, $zero, 0x0002         ## $at = 00000002
lbl_80808C34:
	beq     a0, $at, lbl_80808C44      
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bnel    a0, $at, lbl_80808CFC      
	lw      v0, 0x02C0(t3)             ## 000002C0
lbl_80808C44:
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t6, 0x0103                 ## t6 = 01030000
	addiu   t6, t6, 0x9F40             ## t6 = 01029F40
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t3)             ## 000002C0
	sw      t6, 0x0004(v0)             ## 00000004
	sw      t1, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t3)             ## 000002C0
	sw      t5, 0x0004(v0)             ## 00000004
	sw      t4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      a3, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t6, 0x071D                 ## t6 = 071D0000
	ori     t6, t6, 0xF19A             ## t6 = 071DF19A
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t3)             ## 000002C0
	sw      t6, 0x0004(v0)             ## 00000004
	sw      $ra, 0x0000(v0)            ## 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t8, 0xE700                 ## t8 = E7000000
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t6, 0xF588                 ## t6 = F5880000
	ori     t6, t6, 0x0A00             ## t6 = F5880A00
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t7, 0x0009                 ## t7 = 00090000
	ori     t7, t7, 0xC05C             ## t7 = 0009C05C
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t3)             ## 000002C0
	lui     t8, 0xF200                 ## t8 = F2000000
	sw      t8, 0x0000(v0)             ## 00000000
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(t3)             ## 000002C0
lbl_80808CFC:
	lui     t9, 0x0708                 ## t9 = 07080000
	lui     t8, 0x0008                 ## t8 = 00080000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t3)             ## 000002C0
	ori     t8, t8, 0x0E0A             ## t8 = 00080E0A
	ori     t9, t9, 0x0C0E             ## t9 = 07080C0E
	sw      t9, 0x0000(v0)             ## 00000000
	sw      t8, 0x0004(v0)             ## 00000004
	or      a0, s0, $zero              ## a0 = 00000000
	sw      t0, 0x0028($sp)            
	jal     func_80807BBC              
	sw      t3, 0x00C8($sp)            
	lw      t3, 0x00C8($sp)            
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t6, 0xE700                 ## t6 = E7000000
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t6, 0x0000(v0)             ## 00000000
	jal     func_8007E868              
	lw      a0, 0x0000(s0)             ## 00000000
	lui     t2, 0x0001                 ## t2 = 00010000
	ori     t2, t2, 0x8000             ## t2 = 00018000
	lui     a2, 0xFA00                 ## a2 = FA000000
	lw      t0, 0x0028($sp)            
	lw      t3, 0x00C8($sp)            
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t8, 0xFCFF                 ## t8 = FCFF0000
	lui     t7, 0xFF2D                 ## t7 = FF2D0000
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t3)             ## 000002C0
	ori     t7, t7, 0xFEFF             ## t7 = FF2DFEFF
	ori     t8, t8, 0x97FF             ## t8 = FCFF97FF
	sw      t8, 0x0000(v0)             ## 00000000
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(t3)             ## 000002C0
	addiu   t9, $zero, 0xFFFF          ## t9 = FFFFFFFF
	addiu   t7, s0, 0x0014             ## t7 = 00000014
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t3)             ## 000002C0
	sw      t9, 0x0004(v0)             ## 00000004
	sw      a2, 0x0000(v0)             ## 00000000
	lh      t8, 0x4A30(t0)             ## 00004A30
	addiu   $at, $zero, 0x0021         ## $at = 00000021
	bnel    t8, $at, lbl_80809B1C      
	lw      v0, 0x02C0(t3)             ## 000002C0
	sw      t7, 0x002C($sp)            
	lhu     v0, 0x000C(t7)             ## 00000020
	addiu   $at, $zero, 0x1000         ## $at = 00001000
	lui     a3, 0x8010                 ## a3 = 80100000
	andi    t9, v0, 0x1000             ## t9 = 00000000
	bne     t9, $at, lbl_80808E24      
	andi    t6, v0, 0x4000             ## t6 = 00000000
	lui     t8, 0x8010                 ## t8 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t8, t8, 0x43A8             ## t8 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t8, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483B          ## a0 = 0000483B
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_800C806C              
	sw      t3, 0x00C8($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	addiu   v1, $zero, 0x0005          ## v1 = 00000005
	lw      t3, 0x00C8($sp)            
	addu    $at, $at, s0               
	sh      v1, -0x353E($at)           ## 0001CAC2
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t7, $zero, 0x0004          ## t7 = 00000004
	beq     $zero, $zero, lbl_80809B18 
	sh      t7, -0x3540($at)           ## 0001CAC0
lbl_80808E24:
	addiu   $at, $zero, 0x4000         ## $at = 00004000
	bnel    t6, $at, lbl_80808FC0      
	lh      a1, 0x4ABA(t0)             ## 00004ABA
	lh      v0, 0x4AC4(t0)             ## 00004AC4
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	bnel    v0, $at, lbl_80808EF4      
	lui     $at, 0x0002                ## $at = 00020000
	lh      t1, 0x4A2A(t0)             ## 00004A2A
	sll     v1, v0, 16                 
	addiu   a0, $zero, 0x00DF          ## a0 = 000000DF
	sll     t9, t1,  3                 
	addu    t8, s0, t9                 
	addu    t7, t8, t2                 
	lbu     t6, 0x49FB(t7)             ## 000049FF
	sra     v1, v1, 16                 
	slti    $at, v1, 0x0007            
	beq     a0, t6, lbl_80808EF0       
	lui     a3, 0x8010                 ## a3 = 80100000
	beq     $at, $zero, lbl_80808EA8   
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
lbl_80808E74:
	lh      t9, 0x4A2A(t0)             ## 00004A2A
	sll     t8, t9,  3                 
	addu    t7, s0, t8                 
	addu    t6, t7, v1                 
	addiu   v1, v1, 0x0001             ## v1 = 00000006
	sll     v1, v1, 16                 
	addu    v0, t6, t2                 
	lbu     t9, 0x49F5(v0)             ## 000049F5
	sra     v1, v1, 16                 
	slti    $at, v1, 0x0007            
	bne     $at, $zero, lbl_80808E74   
	sb      t9, 0x49F4(v0)             ## 000049F4
	lh      t1, 0x4A2A(t0)             ## 00004A2A
lbl_80808EA8:
	sll     t7, t1,  3                 
	addu    t6, s0, t7                 
	addu    t9, t6, v1                 
	addu    t7, t9, t2                 
	addiu   t8, $zero, 0x00DF          ## t8 = 000000DF
	sb      t8, 0x49F4(t7)             ## 000049F8
	lui     t6, 0x8010                 ## t6 = 80100000
	addiu   t6, t6, 0x43A8             ## t6 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t6, 0x0014($sp)            
	sw      t3, 0x00C8($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483A          ## a0 = 0000483A
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_80809B18 
	lw      t3, 0x00C8($sp)            
lbl_80808EF0:
	lui     $at, 0x0002                ## $at = 00020000
lbl_80808EF4:
	addu    $at, $at, s0               
	addiu   t9, v0, 0xFFFF             ## t9 = FFFFFFFF
	sh      t9, -0x353C($at)           ## 0001CAC4
	lh      v0, 0x4AC4(t0)             ## 00004AC4
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	bgez    v0, lbl_80808F34           
	sll     v1, v0, 16                 
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x353C($at)        ## 0001CAC4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t8, $zero, 0x0023          ## t8 = 00000023
	beq     $zero, $zero, lbl_80809B18 
	sh      t8, -0x35D0($at)           ## 0001CA30
lbl_80808F34:
	sra     v1, v1, 16                 
	slti    $at, v1, 0x0007            
	beq     $at, $zero, lbl_80808F74   
	addiu   a0, $zero, 0x483A          ## a0 = 0000483A
lbl_80808F44:
	lh      t7, 0x4A2A(t0)             ## 00004A2A
	sll     t6, t7,  3                 
	addu    t9, s0, t6                 
	addu    t8, t9, v1                 
	addiu   v1, v1, 0x0001             ## v1 = 00000001
	sll     v1, v1, 16                 
	addu    v0, t8, t2                 
	lbu     t7, 0x49F5(v0)             ## 000049F5
	sra     v1, v1, 16                 
	slti    $at, v1, 0x0007            
	bne     $at, $zero, lbl_80808F44   
	sb      t7, 0x49F4(v0)             ## 000049F4
lbl_80808F74:
	lh      t9, 0x4A2A(t0)             ## 00004A2A
	addiu   t6, $zero, 0x00DF          ## t6 = 000000DF
	lui     a1, 0x8010                 ## a1 = 80100000
	sll     t8, t9,  3                 
	addu    t7, s0, t8                 
	addu    t9, t7, v1                 
	addu    t8, t9, t2                 
	sb      t6, 0x49F4(t8)             ## 00004A17
	lui     t7, 0x8010                 ## t7 = 80100000
	addiu   t7, t7, 0x43A8             ## t7 = 801043A8
	sw      t7, 0x0014($sp)            
	sw      t3, 0x00C8($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_80809B18 
	lw      t3, 0x00C8($sp)            
	lh      a1, 0x4ABA(t0)             ## 00004ABA
lbl_80808FC0:
	slti    $at, a1, 0x0003            
	beql    $at, $zero, lbl_80809B1C   
	lw      v0, 0x02C0(t3)             ## 000002C0
	lh      t9, 0x4AC2(t0)             ## 00004AC2
	addiu   v1, $zero, 0x0005          ## v1 = 00000005
	andi    t8, v0, 0x8000             ## t8 = 00000000
	beq     v1, t9, lbl_80809524       
	ori     $at, $zero, 0x8000         ## $at = 00008000
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t8, 0xFFFF                 ## t8 = FFFF0000
	ori     t8, t8, 0x00FF             ## t8 = FFFF00FF
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t3)             ## 000002C0
	sw      t8, 0x0004(v0)             ## 00000004
	sw      a2, 0x0000(v0)             ## 00000000
	lh      a1, 0x4ABA(t0)             ## 00004ABA
	or      a2, $zero, $zero           ## a2 = 00000000
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bne     a1, $zero, lbl_808091FC    
	nop
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t9, 0x0100                 ## t9 = 01000000
	ori     t9, t9, 0x4008             ## t9 = 01004008
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t3)             ## 000002C0
	sw      t9, 0x0000(v0)             ## 00000000
	lh      t8, 0x4ABE(t0)             ## 00004ABE
	lw      t6, 0x49E4(t0)             ## 000049E4
	lui     $at, 0x0001                ## $at = 00010000
	sll     t7, t8,  6                 
	addu    t9, t6, t7                 
	sw      t9, 0x0004(v0)             ## 00000004
	lh      t8, 0x4ABE(t0)             ## 00004ABE
	lui     t7, %hi(var_80812650)      ## t7 = 80810000
	lw      a0, 0x0000(s0)             ## 00000000
	sll     t6, t8,  1                 
	addu    t7, t7, t6                 
	lh      t7, %lo(var_80812650)(t7)  
	ori     $at, $at, 0x23E0           ## $at = 000123E0
	sw      t3, 0x00C8($sp)            
	sll     t9, t7,  7                 
	addu    a1, t9, s0                 
	addu    a1, a1, $at                
	jal     func_808068C0              
	sw      t0, 0x0028($sp)            
	lw      t8, 0x002C($sp)            
	ori     $at, $zero, 0x8000         ## $at = 00008000
	lw      t0, 0x0028($sp)            
	lhu     t6, 0x000C(t8)             ## 0000000C
	lw      t3, 0x00C8($sp)            
	andi    t7, t6, 0x8000             ## t7 = 00000000
	bnel    t7, $at, lbl_8080951C      
	lw      t9, 0x002C($sp)            
	lh      t9, 0x4ABE(t0)             ## 00004ABE
	lui     a1, %hi(var_80812650)      ## a1 = 80810000
	addiu   $at, $zero, 0x00E7         ## $at = 000000E7
	sll     t8, t9,  1                 
	addu    a1, a1, t8                 
	lh      a1, %lo(var_80812650)(a1)  
	or      a0, s0, $zero              ## a0 = 00000000
	beq     a1, $at, lbl_808090C0      
	addiu   $at, $zero, 0x00E8         ## $at = 000000E8
	bne     a1, $at, lbl_80809158      
	lui     a3, 0x8010                 ## a3 = 80100000
lbl_808090C0:
	sw      t0, 0x0028($sp)            
	jal     func_80808688              
	sw      t3, 0x00C8($sp)            
	lw      t0, 0x0028($sp)            
	bne     v0, $zero, lbl_80809118    
	lw      t3, 0x00C8($sp)            
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t6, 0x8010                 ## t6 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t6, t6, 0x43A8             ## t6 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t6, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483D          ## a0 = 0000483D
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      t0, 0x0028($sp)            
	jal     func_800C806C              
	sw      t3, 0x00C8($sp)            
	lw      t0, 0x0028($sp)            
	beq     $zero, $zero, lbl_80809518 
	lw      t3, 0x00C8($sp)            
lbl_80809118:
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t7, 0x8010                 ## t7 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t7, t7, 0x43A8             ## t7 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t7, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483A          ## a0 = 0000483A
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      t0, 0x0028($sp)            
	jal     func_800C806C              
	sw      t3, 0x00C8($sp)            
	lw      t0, 0x0028($sp)            
	beq     $zero, $zero, lbl_80809518 
	lw      t3, 0x00C8($sp)            
lbl_80809158:
	lui     t9, 0x8010                 ## t9 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 000043A0
	addiu   t9, t9, 0x43A8             ## t9 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t9, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483A          ## a0 = 0000483A
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      t0, 0x0028($sp)            
	jal     func_800C806C              
	sw      t3, 0x00C8($sp)            
	lw      t0, 0x0028($sp)            
	lui     t7, %hi(var_80812650)      ## t7 = 80810000
	lui     t2, 0x0001                 ## t2 = 00010000
	lh      t8, 0x4ABE(t0)             ## 00004ABE
	lh      t9, 0x4A2A(t0)             ## 00004A2A
	ori     t2, t2, 0x8000             ## t2 = 00018000
	sll     t6, t8,  1                 
	sll     t8, t9,  3                 
	lh      t9, 0x4AC4(t0)             ## 00004AC4
	addu    t7, t7, t6                 
	lh      t7, %lo(var_80812650)(t7)  
	addu    t6, s0, t8                 
	addu    t8, t6, t9                 
	lw      t3, 0x00C8($sp)            
	addu    t6, t8, t2                 
	sb      t7, 0x49F4(t6)             ## 000049F4
	lh      t9, 0x4AC4(t0)             ## 00004AC4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t8, t9, 0x0001             ## t8 = 00000001
	sh      t8, -0x353C($at)           ## 0001CAC4
	lh      t7, 0x4AC4(t0)             ## 00004AC4
	addiu   t6, $zero, 0x0007          ## t6 = 00000007
	slti    $at, t7, 0x0008            
	bne     $at, $zero, lbl_80809518   
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     $zero, $zero, lbl_80809518 
	sh      t6, -0x353C($at)           ## 0001CAC4
lbl_808091FC:
	bne     a1, $at, lbl_808093F4      
	or      a2, $zero, $zero           ## a2 = 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t8, 0x0100                 ## t8 = 01000000
	ori     t8, t8, 0x4008             ## t8 = 01004008
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t3)             ## 000002C0
	sw      t8, 0x0000(v0)             ## 00000000
	lh      t6, 0x4ABE(t0)             ## 00004ABE
	lw      t7, 0x49E4(t0)             ## 000049E4
	lui     $at, 0x0001                ## $at = 00010000
	sll     t9, t6,  6                 
	addu    t8, t7, t9                 
	sw      t8, 0x0004(v0)             ## 00000004
	lh      t6, 0x4ABE(t0)             ## 00004ABE
	lui     t9, %hi(var_808126D4)      ## t9 = 80810000
	lw      a0, 0x0000(s0)             ## 00000000
	sll     t7, t6,  1                 
	addu    t9, t9, t7                 
	lh      t9, %lo(var_808126D4)(t9)  
	ori     $at, $at, 0x23E0           ## $at = 000123E0
	sw      t3, 0x00C8($sp)            
	sll     t8, t9,  7                 
	addu    a1, t8, s0                 
	addu    a1, a1, $at                
	sw      t0, 0x0028($sp)            
	jal     func_808068C0              
	or      a2, $zero, $zero           ## a2 = 00000000
	lw      t6, 0x002C($sp)            
	ori     $at, $zero, 0x8000         ## $at = 00008000
	lw      t0, 0x0028($sp)            
	lhu     t7, 0x000C(t6)             ## 0000000C
	lw      t3, 0x00C8($sp)            
	andi    t9, t7, 0x8000             ## t9 = 00000000
	bnel    t9, $at, lbl_8080951C      
	lw      t9, 0x002C($sp)            
	lh      t8, 0x4ABE(t0)             ## 00004ABE
	lui     a1, %hi(var_80812650)      ## a1 = 80810000
	addiu   $at, $zero, 0x00E7         ## $at = 000000E7
	sll     t6, t8,  1                 
	addu    a1, a1, t6                 
	lh      a1, %lo(var_80812650)(a1)  
	or      a0, s0, $zero              ## a0 = 00000000
	beq     a1, $at, lbl_808092B8      
	addiu   $at, $zero, 0x00E8         ## $at = 000000E8
	bne     a1, $at, lbl_80809350      
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
lbl_808092B8:
	sw      t0, 0x0028($sp)            
	jal     func_80808688              
	sw      t3, 0x00C8($sp)            
	lw      t0, 0x0028($sp)            
	bne     v0, $zero, lbl_80809310    
	lw      t3, 0x00C8($sp)            
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t7, 0x8010                 ## t7 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t7, t7, 0x43A8             ## t7 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t7, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483D          ## a0 = 0000483D
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      t0, 0x0028($sp)            
	jal     func_800C806C              
	sw      t3, 0x00C8($sp)            
	lw      t0, 0x0028($sp)            
	beq     $zero, $zero, lbl_80809518 
	lw      t3, 0x00C8($sp)            
lbl_80809310:
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t9, 0x8010                 ## t9 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t9, t9, 0x43A8             ## t9 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t9, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483A          ## a0 = 0000483A
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      t0, 0x0028($sp)            
	jal     func_800C806C              
	sw      t3, 0x00C8($sp)            
	lw      t0, 0x0028($sp)            
	beq     $zero, $zero, lbl_80809518 
	lw      t3, 0x00C8($sp)            
lbl_80809350:
	lui     t8, 0x8010                 ## t8 = 80100000
	lui     t6, 0x8010                 ## t6 = 80100000
	addiu   t6, t6, 0x43A8             ## t6 = 801043A8
	addiu   a3, t8, 0x43A0             ## a3 = 801043A0
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      a3, 0x0010($sp)            
	sw      t6, 0x0014($sp)            
	addiu   a0, $zero, 0x483A          ## a0 = 0000483A
	sw      t0, 0x0028($sp)            
	jal     func_800C806C              
	sw      t3, 0x00C8($sp)            
	lw      t0, 0x0028($sp)            
	lui     t8, %hi(var_808126D4)      ## t8 = 80810000
	lui     t2, 0x0001                 ## t2 = 00010000
	lh      t7, 0x4ABE(t0)             ## 00004ABE
	lh      t6, 0x4A2A(t0)             ## 00004A2A
	ori     t2, t2, 0x8000             ## t2 = 00018000
	sll     t9, t7,  1                 
	sll     t7, t6,  3                 
	lh      t6, 0x4AC4(t0)             ## 00004AC4
	addu    t8, t8, t9                 
	lh      t8, %lo(var_808126D4)(t8)  
	addu    t9, s0, t7                 
	addu    t7, t9, t6                 
	lw      t3, 0x00C8($sp)            
	addu    t9, t7, t2                 
	sb      t8, 0x49F4(t9)             ## 000049F4
	lh      t6, 0x4AC4(t0)             ## 00004AC4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	sh      t7, -0x353C($at)           ## 0001CAC4
	lh      t8, 0x4AC4(t0)             ## 00004AC4
	addiu   t9, $zero, 0x0007          ## t9 = 00000007
	slti    $at, t8, 0x0008            
	bne     $at, $zero, lbl_80809518   
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     $zero, $zero, lbl_80809518 
	sh      t9, -0x353C($at)           ## 0001CAC4
lbl_808093F4:
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t7, 0x0100                 ## t7 = 01000000
	ori     t7, t7, 0x4008             ## t7 = 01004008
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t3)             ## 000002C0
	sw      t7, 0x0000(v0)             ## 00000000
	lh      t9, 0x4ABE(t0)             ## 00004ABE
	lw      t8, 0x49E4(t0)             ## 000049E4
	lui     $at, 0x0001                ## $at = 00010000
	sll     t6, t9,  6                 
	addu    t7, t8, t6                 
	sw      t7, 0x0004(v0)             ## 00000004
	lh      t9, 0x4ABE(t0)             ## 00004ABE
	lui     t6, %hi(var_80812758)      ## t6 = 80810000
	lw      a0, 0x0000(s0)             ## 00000000
	sll     t8, t9,  1                 
	addu    t6, t6, t8                 
	lh      t6, %lo(var_80812758)(t6)  
	ori     $at, $at, 0x23E0           ## $at = 000123E0
	sw      t3, 0x00C8($sp)            
	sll     t7, t6,  7                 
	addu    a1, t7, s0                 
	addu    a1, a1, $at                
	jal     func_808068C0              
	sw      t0, 0x0028($sp)            
	lw      t9, 0x002C($sp)            
	ori     $at, $zero, 0x8000         ## $at = 00008000
	lw      t0, 0x0028($sp)            
	lhu     t8, 0x000C(t9)             ## 0000000C
	lw      t3, 0x00C8($sp)            
	addiu   a0, $zero, 0x483A          ## a0 = 0000483A
	andi    t6, t8, 0x8000             ## t6 = 00000000
	bne     t6, $at, lbl_80809518      
	lui     a1, 0x8010                 ## a1 = 80100000
	lui     t7, 0x8010                 ## t7 = 80100000
	lui     t9, 0x8010                 ## t9 = 80100000
	addiu   t9, t9, 0x43A8             ## t9 = 801043A8
	addiu   a3, t7, 0x43A0             ## a3 = 801043A0
	sw      a3, 0x0010($sp)            
	sw      t9, 0x0014($sp)            
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      t0, 0x0028($sp)            
	jal     func_800C806C              
	sw      t3, 0x00C8($sp)            
	lw      t0, 0x0028($sp)            
	lui     t7, %hi(var_80812758)      ## t7 = 80810000
	lui     t2, 0x0001                 ## t2 = 00010000
	lh      t8, 0x4ABE(t0)             ## 00004ABE
	lh      t9, 0x4A2A(t0)             ## 00004A2A
	ori     t2, t2, 0x8000             ## t2 = 00018000
	sll     t6, t8,  1                 
	sll     t8, t9,  3                 
	lh      t9, 0x4AC4(t0)             ## 00004AC4
	addu    t7, t7, t6                 
	lh      t7, %lo(var_80812758)(t7)  
	addu    t6, s0, t8                 
	addu    t8, t6, t9                 
	lw      t3, 0x00C8($sp)            
	addu    t6, t8, t2                 
	sb      t7, 0x49F4(t6)             ## 000049F4
	lh      t9, 0x4AC4(t0)             ## 00004AC4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t8, t9, 0x0001             ## t8 = 00000001
	sh      t8, -0x353C($at)           ## 0001CAC4
	lh      t7, 0x4AC4(t0)             ## 00004AC4
	addiu   t6, $zero, 0x0007          ## t6 = 00000007
	slti    $at, t7, 0x0008            
	bne     $at, $zero, lbl_80809518   
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t6, -0x353C($at)           ## 0001CAC4
lbl_80809518:
	lw      t9, 0x002C($sp)            
lbl_8080951C:
	beq     $zero, $zero, lbl_808099CC 
	lhu     v0, 0x000C(t9)             ## 0000000C
lbl_80809524:
	bnel    t8, $at, lbl_808099D0      
	andi    t6, v0, 0x0001             ## t6 = 00000000
	lh      a0, 0x4AB8(t0)             ## 00004AB8
	beql    a0, a1, lbl_808099D0       
	andi    t6, v0, 0x0001             ## t6 = 00000000
	bne     a0, $zero, lbl_808095B4    
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bne     a1, $at, lbl_80809560      
	addiu   a0, $zero, 0x4800          ## a0 = 00004800
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t7, $zero, 0x0004          ## t7 = 00000004
	beq     $zero, $zero, lbl_80809570 
	sh      t7, -0x3546($at)           ## 0001CABA
lbl_80809560:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t6, $zero, 0x0006          ## t6 = 00000006
	sh      t6, -0x3546($at)           ## 0001CABA
lbl_80809570:
	lui     t9, 0x8010                 ## t9 = 80100000
	lui     t8, 0x8010                 ## t8 = 80100000
	addiu   t8, t8, 0x43A8             ## t8 = 801043A8
	addiu   a3, t9, 0x43A0             ## a3 = 801043A0
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      a3, 0x0010($sp)            
	sw      t8, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      t0, 0x0028($sp)            
	jal     func_800C806C              
	sw      t3, 0x00C8($sp)            
	lw      t7, 0x002C($sp)            
	lw      t0, 0x0028($sp)            
	lw      t3, 0x00C8($sp)            
	beq     $zero, $zero, lbl_808099CC 
	lhu     v0, 0x000C(t7)             ## 0000000C
lbl_808095B4:
	bne     a0, $at, lbl_80809628      
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	bne     a1, $zero, lbl_808095D8    
	addiu   a0, $zero, 0x4800          ## a0 = 00004800
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t6, $zero, 0x0003          ## t6 = 00000003
	beq     $zero, $zero, lbl_808095E8 
	sh      t6, -0x3546($at)           ## 0001CABA
lbl_808095D8:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t9, $zero, 0x0008          ## t9 = 00000008
	sh      t9, -0x3546($at)           ## 0001CABA
lbl_808095E8:
	lui     t8, 0x8010                 ## t8 = 80100000
	lui     t7, 0x8010                 ## t7 = 80100000
	addiu   t7, t7, 0x43A8             ## t7 = 801043A8
	addiu   a3, t8, 0x43A0             ## a3 = 801043A0
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      a3, 0x0010($sp)            
	sw      t7, 0x0014($sp)            
	sw      t0, 0x0028($sp)            
	jal     func_800C806C              
	sw      t3, 0x00C8($sp)            
	lw      t6, 0x002C($sp)            
	lw      t0, 0x0028($sp)            
	lw      t3, 0x00C8($sp)            
	beq     $zero, $zero, lbl_808099CC 
	lhu     v0, 0x000C(t6)             ## 0000000C
lbl_80809628:
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	bne     a0, $at, lbl_8080969C      
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	bne     a1, $zero, lbl_8080964C    
	addiu   a0, $zero, 0x4800          ## a0 = 00004800
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     $zero, $zero, lbl_8080965C 
	sh      v1, -0x3546($at)           ## 0001CABA
lbl_8080964C:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t9, $zero, 0x0007          ## t9 = 00000007
	sh      t9, -0x3546($at)           ## 0001CABA
lbl_8080965C:
	lui     t8, 0x8010                 ## t8 = 80100000
	lui     t7, 0x8010                 ## t7 = 80100000
	addiu   t7, t7, 0x43A8             ## t7 = 801043A8
	addiu   a3, t8, 0x43A0             ## a3 = 801043A0
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      a3, 0x0010($sp)            
	sw      t7, 0x0014($sp)            
	sw      t0, 0x0028($sp)            
	jal     func_800C806C              
	sw      t3, 0x00C8($sp)            
	lw      t6, 0x002C($sp)            
	lw      t0, 0x0028($sp)            
	lw      t3, 0x00C8($sp)            
	beq     $zero, $zero, lbl_808099CC 
	lhu     v0, 0x000C(t6)             ## 0000000C
lbl_8080969C:
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bnel    a0, $at, lbl_80809840      
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	lh      v0, 0x4AC4(t0)             ## 00004AC4
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	lui     a1, 0x8010                 ## a1 = 80100000
	bne     v0, $at, lbl_80809774      
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	lh      t1, 0x4A2A(t0)             ## 00004A2A
	sll     v1, v0, 16                 
	addiu   a0, $zero, 0x00DF          ## a0 = 000000DF
	sll     t9, t1,  3                 
	addu    t8, s0, t9                 
	addu    t7, t8, t2                 
	lbu     t6, 0x49FB(t7)             ## 000049FB
	sra     v1, v1, 16                 
	slti    $at, v1, 0x0007            
	beq     a0, t6, lbl_80809774       
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $at, $zero, lbl_80809724   
	addiu   a0, $zero, 0x483A          ## a0 = 0000483A
lbl_808096F0:
	lh      t9, 0x4A2A(t0)             ## 00004A2A
	sll     t8, t9,  3                 
	addu    t7, s0, t8                 
	addu    t6, t7, v1                 
	addiu   v1, v1, 0x0001             ## v1 = 00000001
	sll     v1, v1, 16                 
	addu    v0, t6, t2                 
	lbu     t9, 0x49F5(v0)             ## 000049F5
	sra     v1, v1, 16                 
	slti    $at, v1, 0x0007            
	bne     $at, $zero, lbl_808096F0   
	sb      t9, 0x49F4(v0)             ## 000049F4
	lh      t1, 0x4A2A(t0)             ## 00004A2A
lbl_80809724:
	sll     t7, t1,  3                 
	addu    t6, s0, t7                 
	addu    t9, t6, v1                 
	addu    t7, t9, t2                 
	addiu   t8, $zero, 0x00DF          ## t8 = 000000DF
	sb      t8, 0x49F4(t7)             ## 000049F4
	lui     t9, 0x8010                 ## t9 = 80100000
	lui     t6, 0x8010                 ## t6 = 80100000
	addiu   a3, t6, 0x43A0             ## a3 = 801043A0
	addiu   t9, t9, 0x43A8             ## t9 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t9, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	sw      t3, 0x00C8($sp)            
	jal     func_800C806C              
	sw      t0, 0x0028($sp)            
	lw      t0, 0x0028($sp)            
	beq     $zero, $zero, lbl_80809830 
	lw      t3, 0x00C8($sp)            
lbl_80809774:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t8, v0, 0xFFFF             ## t8 = FFFFFFFF
	sh      t8, -0x353C($at)           ## 0001CAC4
	lh      v0, 0x4AC4(t0)             ## 00004AC4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	bgez    v0, lbl_808097A0           
	addiu   a0, $zero, 0x483A          ## a0 = 0000483A
	sh      $zero, -0x353C($at)        ## 0001CAC4
	lh      v0, 0x4AC4(t0)             ## 00004AC4
lbl_808097A0:
	sll     v1, v0, 16                 
	sra     v1, v1, 16                 
	slti    $at, v1, 0x0007            
	beql    $at, $zero, lbl_808097E8   
	lh      t9, 0x4A2A(t0)             ## 00004A2A
lbl_808097B4:
	lh      t7, 0x4A2A(t0)             ## 00004A2A
	sll     t6, t7,  3                 
	addu    t9, s0, t6                 
	addu    t8, t9, v1                 
	addiu   v1, v1, 0x0001             ## v1 = 00000001
	sll     v1, v1, 16                 
	addu    v0, t8, t2                 
	lbu     t7, 0x49F5(v0)             ## 000049F5
	sra     v1, v1, 16                 
	slti    $at, v1, 0x0007            
	bne     $at, $zero, lbl_808097B4   
	sb      t7, 0x49F4(v0)             ## 000049F4
	lh      t9, 0x4A2A(t0)             ## 00004A2A
lbl_808097E8:
	addiu   t6, $zero, 0x00DF          ## t6 = 000000DF
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sll     t8, t9,  3                 
	addu    t7, s0, t8                 
	addu    t9, t7, v1                 
	addu    t8, t9, t2                 
	sb      t6, 0x49F4(t8)             ## 000049F3
	lui     t9, 0x8010                 ## t9 = 80100000
	lui     t7, 0x8010                 ## t7 = 80100000
	addiu   a3, t7, 0x43A0             ## a3 = 801043A0
	addiu   t9, t9, 0x43A8             ## t9 = 801043A8
	sw      t9, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	sw      t3, 0x00C8($sp)            
	jal     func_800C806C              
	sw      t0, 0x0028($sp)            
	lw      t0, 0x0028($sp)            
	lw      t3, 0x00C8($sp)            
lbl_80809830:
	lw      t6, 0x002C($sp)            
	beq     $zero, $zero, lbl_808099CC 
	lhu     v0, 0x000C(t6)             ## 0000000C
	addiu   $at, $zero, 0x0004         ## $at = 00000004
lbl_80809840:
	bne     a0, $at, lbl_808099CC      
	or      a1, $zero, $zero           ## a1 = 00000000
	lh      t8, 0x4A2A(t0)             ## 00004A2A
	or      v1, $zero, $zero           ## v1 = 00000000
	addiu   a0, $zero, 0x00DF          ## a0 = 000000DF
	sll     t7, t8,  3                 
	addu    v0, s0, t7                 
	addu    t9, v0, v1                 
lbl_80809860:
	addu    t6, t9, t2                 
	lbu     t8, 0x49F4(t6)             ## 000049F4
	addiu   v1, v1, 0x0001             ## v1 = 00000001
	sll     v1, v1, 16                 
	beq     a0, t8, lbl_80809880       
	sra     v1, v1, 16                 
	beq     $zero, $zero, lbl_8080988C 
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
lbl_80809880:
	slti    $at, v1, 0x0008            
	bnel    $at, $zero, lbl_80809860   
	addu    t9, v0, v1                 
lbl_8080988C:
	beq     a1, $zero, lbl_8080998C    
	addiu   a0, $zero, 0x483D          ## a0 = 0000483D
	lui     t7, 0x8010                 ## t7 = 80100000
	lui     t9, 0x8010                 ## t9 = 80100000
	addiu   t9, t9, 0x43A8             ## t9 = 801043A8
	addiu   a3, t7, 0x43A0             ## a3 = 801043A0
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      a3, 0x0010($sp)            
	sw      t9, 0x0014($sp)            
	addiu   a0, $zero, 0x483B          ## a0 = 0000483B
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      t0, 0x0028($sp)            
	jal     func_800C806C              
	sw      t3, 0x00C8($sp)            
	lw      t0, 0x0028($sp)            
	lui     $at, 0x8012                ## $at = 80120000
	lui     t8, 0x8012                 ## t8 = 80120000
	lh      t6, 0x4A2A(t0)             ## 00004A2A
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x01D8             ## a1 = 000001D8
	sw      t6, -0x46DC($at)           ## 8011B924
	lhu     t8, -0x5A24(t8)            ## 8011A5DC
	jal     func_80090C18              
	sh      t8, 0x00CE($sp)            
	lhu     t7, 0x00CE($sp)            
	lui     $at, 0x8012                ## $at = 80120000
	lw      t0, 0x0028($sp)            
	sh      t7, -0x5A24($at)           ## 8011A5DC
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t9, $zero, 0x0023          ## t9 = 00000023
	sh      t9, -0x35D0($at)           ## 0001CA30
	lh      t8, 0x4A2A(t0)             ## 00004A2A
	lui     t2, 0x0001                 ## t2 = 00010000
	ori     t2, t2, 0x8000             ## t2 = 00018000
	sll     t7, t8,  1                 
	addu    t9, s0, t7                 
	addu    t8, t9, t2                 
	addiu   t6, $zero, 0x00C8          ## t6 = 000000C8
	sh      t6, 0x4A72(t8)             ## 00004A72
	lh      t7, 0x4A2A(t0)             ## 00004A2A
	lui     $at, 0x4396                ## $at = 43960000
	mtc1    $at, $f12                  ## $f12 = 300.00
	sll     t9, t7,  1                 
	addu    t6, s0, t9                 
	addu    v0, t6, t2                 
	lh      t8, 0x4A72(v0)             ## 00004A72
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	addiu   a1, $zero, 0x00B4          ## a1 = 000000B4
	sh      t8, 0x4A6C(v0)             ## 00004A6C
	lh      t9, 0x4A2A(t0)             ## 00004A2A
	addiu   a2, $zero, 0x0014          ## a2 = 00000014
	addiu   a3, $zero, 0x0064          ## a3 = 00000064
	sll     t6, t9,  1                 
	addu    t8, s0, t6                 
	addu    t9, t8, t2                 
	jal     func_800915CC              
	sh      t7, 0x4A78(t9)             ## 00004A9B
	lw      t6, 0x002C($sp)            
	lw      t0, 0x0028($sp)            
	lw      t3, 0x00C8($sp)            
	beq     $zero, $zero, lbl_808099CC 
	lhu     v0, 0x000C(t6)             ## 0000000C
lbl_8080998C:
	lui     t8, 0x8010                 ## t8 = 80100000
	lui     t7, 0x8010                 ## t7 = 80100000
	addiu   t7, t7, 0x43A8             ## t7 = 801043A8
	addiu   a3, t8, 0x43A0             ## a3 = 801043A0
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      a3, 0x0010($sp)            
	sw      t7, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      t0, 0x0028($sp)            
	jal     func_800C806C              
	sw      t3, 0x00C8($sp)            
	lw      t9, 0x002C($sp)            
	lw      t0, 0x0028($sp)            
	lw      t3, 0x00C8($sp)            
	lhu     v0, 0x000C(t9)             ## 0000000C
lbl_808099CC:
	andi    t6, v0, 0x0001             ## t6 = 00000000
lbl_808099D0:
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bne     t6, $at, lbl_80809A4C      
	andi    t7, v0, 0x0002             ## t7 = 00000000
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t8, 0x8010                 ## t8 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t8, t8, 0x43A8             ## t8 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t8, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x4839          ## a0 = 00004839
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      t0, 0x0028($sp)            
	jal     func_800C806C              
	sw      t3, 0x00C8($sp)            
	lw      t0, 0x0028($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	lw      t3, 0x00C8($sp)            
	lh      t7, 0x4AC4(t0)             ## 00004AC4
	addu    $at, $at, s0               
	addiu   t8, $zero, 0x0007          ## t8 = 00000007
	addiu   t9, t7, 0x0001             ## t9 = 00000001
	sh      t9, -0x353C($at)           ## 0001CAC4
	lh      t6, 0x4AC4(t0)             ## 00004AC4
	slti    $at, t6, 0x0008            
	bne     $at, $zero, lbl_80809B18   
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     $zero, $zero, lbl_80809B18 
	sh      t8, -0x353C($at)           ## 0001CAC4
lbl_80809A4C:
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	bne     t7, $at, lbl_80809AC4      
	andi    t9, v0, 0x2000             ## t9 = 00000000
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t9, 0x8010                 ## t9 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t9, t9, 0x43A8             ## t9 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t9, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x4839          ## a0 = 00004839
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      t0, 0x0028($sp)            
	jal     func_800C806C              
	sw      t3, 0x00C8($sp)            
	lw      t0, 0x0028($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	lw      t3, 0x00C8($sp)            
	lh      t6, 0x4AC4(t0)             ## 00004AC4
	addu    $at, $at, s0               
	addiu   t8, t6, 0xFFFF             ## t8 = FFFFFFFF
	sh      t8, -0x353C($at)           ## 0001CAC4
	lh      t7, 0x4AC4(t0)             ## 00004AC4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	bgezl   t7, lbl_80809B1C           
	lw      v0, 0x02C0(t3)             ## 000002C0
	beq     $zero, $zero, lbl_80809B18 
	sh      $zero, -0x353C($at)        ## 0001CAC4
lbl_80809AC4:
	addiu   $at, $zero, 0x2000         ## $at = 00002000
	bne     t9, $at, lbl_80809B18      
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x00DF          ## a1 = 000000DF
	jal     func_80808688              
	sw      t3, 0x00C8($sp)            
	beq     v0, $zero, lbl_80809B18    
	lw      t3, 0x00C8($sp)            
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t6, 0x8010                 ## t6 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t6, t6, 0x43A8             ## t6 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t6, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483A          ## a0 = 0000483A
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_800C806C              
	sw      t3, 0x00C8($sp)            
	lw      t3, 0x00C8($sp)            
lbl_80809B18:
	lw      v0, 0x02C0(t3)             ## 000002C0
lbl_80809B1C:
	lui     t7, 0xE700                 ## t7 = E7000000
	lui     t6, 0xFC12                 ## t6 = FC120000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	ori     t6, t6, 0x7E24             ## t6 = FC127E24
	addiu   t8, $zero, 0xF3F9          ## t8 = FFFFF3F9
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t3)             ## 000002C0
	sw      t8, 0x0004(v0)             ## 00000004
	sw      t6, 0x0000(v0)             ## 00000000
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x00E0           ## $sp = 00000000
	jr      $ra                        
	nop


func_80809B64:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    v0, a0, $at                
	lh      t6, 0x4A8E(v0)             ## 00004A8E
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t7, t6, 0x0019             ## t7 = 00000019
	sh      t7, -0x3572($at)           ## 0001CA8E
	lh      t8, 0x4A8E(v0)             ## 00004A8E
	addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
	addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
	slti    $at, t8, 0x00FF            
	bne     $at, $zero, lbl_80809BA8   
	addiu   t4, $zero, 0x0063          ## t4 = 00000063
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t9, -0x3572($at)           ## 0001CA8E
lbl_80809BA8:
	lh      t0, 0x4AB0(v0)             ## 00004AB0
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t1, t0, 0xFFE2             ## t1 = FFFFFFE2
	sh      t1, -0x3550($at)           ## 0001CAB0
	lh      t2, 0x4AB0(v0)             ## 00004AB0
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	bgtz    t2, lbl_80809C10           
	addiu   t5, $zero, 0x0021          ## t5 = 00000021
	sh      $zero, -0x3550($at)        ## 0001CAB0
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t3, -0x3572($at)           ## 0001CA8E
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      $zero, -0x3540($at)        ## 0001CAC0
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      $zero, -0x353E($at)        ## 0001CAC2
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t4, -0x3548($at)           ## 0001CAB8
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t5, -0x35D0($at)           ## 0001CA30
lbl_80809C10:
	jr      $ra                        
	nop


func_80809C18:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    v1, s0, $at                
	lh      v0, 0x4ABA(v1)             ## 00004ABA
	lui     t4, 0x8012                 ## t4 = 80120000
	slti    $at, v0, 0x0003            
	beq     $at, $zero, lbl_8080A590   
	nop
	lhu     t6, 0x0020(s0)             ## 00000020
	addiu   $at, $zero, 0x0010         ## $at = 00000010
	lui     t8, 0x8012                 ## t8 = 80120000
	andi    t7, t6, 0x0010             ## t7 = 00000000
	bne     t7, $at, lbl_80809D4C      
	addiu   t5, $zero, 0x0063          ## t5 = 00000063
	lbu     t8, -0x4627(t8)            ## 8011B9D9
	bnel    t8, $zero, lbl_8080A5E8    
	lw      $ra, 0x0024($sp)           
	bne     v0, $zero, lbl_80809CB8    
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lui     $at, 0x0002                ## $at = 00020000
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   t0, $zero, 0x0003          ## t0 = 00000003
	addu    $at, $at, s0               
	lui     t9, 0x8010                 ## t9 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	sh      t0, -0x3546($at)           ## 0001CABA
	addiu   t9, t9, 0x43A8             ## t9 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t9, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x4800          ## a0 = 00004800
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_8080A5E8 
	lw      $ra, 0x0024($sp)           
lbl_80809CB8:
	bne     v0, $at, lbl_80809D00      
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t1, $zero, 0x0007          ## t1 = 00000007
	lui     t2, 0x8010                 ## t2 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	sh      t1, -0x3546($at)           ## 0001CABA
	addiu   t2, t2, 0x43A8             ## t2 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t2, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x4800          ## a0 = 00004800
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_8080A5E8 
	lw      $ra, 0x0024($sp)           
lbl_80809D00:
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	bne     v0, $at, lbl_8080A5E4      
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t3, $zero, 0x0006          ## t3 = 00000006
	lui     t4, 0x8010                 ## t4 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	sh      t3, -0x3546($at)           ## 0001CABA
	addiu   t4, t4, 0x43A8             ## t4 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t4, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x4800          ## a0 = 00004800
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_8080A5E8 
	lw      $ra, 0x0024($sp)           
lbl_80809D4C:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t5, -0x3548($at)           ## 0001CAB8
	lh      t6, 0x4AC2(v1)             ## 00004AC2
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	lui     t1, 0x8012                 ## t1 = 80120000
	beq     t6, $at, lbl_80809EC4      
	nop
	lh      v0, 0x4AAC(v1)             ## 00004AAC
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	slti    $at, v0, 0xFFE2            
	beq     $at, $zero, lbl_80809E1C   
	addiu   a0, $zero, 0x4839          ## a0 = 00004839
	lui     t7, 0x8010                 ## t7 = 80100000
	addiu   t7, t7, 0x43A8             ## t7 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t7, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      a3, 0x0010($sp)            
	jal     func_800C806C              
	sw      v1, 0x002C($sp)            
	lw      v1, 0x002C($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	lh      t8, 0x4ABE(v1)             ## 00004ABE
	addiu   t4, $zero, 0x000C          ## t4 = 0000000C
	addiu   t9, t8, 0xFFFF             ## t9 = FFFFFFFF
	sh      t9, -0x3542($at)           ## 0001CABE
	lh      t1, 0x4AC0(v1)             ## 00004AC0
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t2, t1, 0xFFFF             ## t2 = FFFFFFFF
	sh      t2, -0x3540($at)           ## 0001CAC0
	lh      t3, 0x4AC0(v1)             ## 00004AC0
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	bgezl   t3, lbl_8080A094           
	lh      v0, 0x4AAE(v1)             ## 00004AAE
	sh      t4, -0x3540($at)           ## 0001CAC0
	lh      t5, 0x4AC2(v1)             ## 00004AC2
	lh      t7, 0x4AC0(v1)             ## 00004AC0
	lui     $at, 0x0002                ## $at = 00020000
	sll     t6, t5,  2                 
	subu    t6, t6, t5                 
	sll     t6, t6,  2                 
	addu    t6, t6, t5                 
	addu    $at, $at, s0               
	addu    t8, t6, t7                 
	beq     $zero, $zero, lbl_8080A090 
	sh      t8, -0x3542($at)           ## 0001CABE
lbl_80809E1C:
	slti    $at, v0, 0x001F            
	bne     $at, $zero, lbl_8080A090   
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t9, 0x8010                 ## t9 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t9, t9, 0x43A8             ## t9 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t9, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x4839          ## a0 = 00004839
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_800C806C              
	sw      v1, 0x002C($sp)            
	lw      v1, 0x002C($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	lh      t1, 0x4ABE(v1)             ## 00004ABE
	addiu   t2, t1, 0x0001             ## t2 = 00000001
	sh      t2, -0x3542($at)           ## 0001CABE
	lh      t3, 0x4AC0(v1)             ## 00004AC0
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t4, t3, 0x0001             ## t4 = 00000001
	sh      t4, -0x3540($at)           ## 0001CAC0
	lh      t5, 0x4AC0(v1)             ## 00004AC0
	slti    $at, t5, 0x000D            
	bne     $at, $zero, lbl_8080A090   
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x3540($at)        ## 0001CAC0
	lh      t6, 0x4AC2(v1)             ## 00004AC2
	lh      t8, 0x4AC0(v1)             ## 00004AC0
	lui     $at, 0x0002                ## $at = 00020000
	sll     t7, t6,  2                 
	subu    t7, t7, t6                 
	sll     t7, t7,  2                 
	addu    t7, t7, t6                 
	addu    $at, $at, s0               
	addu    t9, t7, t8                 
	beq     $zero, $zero, lbl_8080A090 
	sh      t9, -0x3542($at)           ## 0001CABE
lbl_80809EC4:
	lbu     t1, -0x4627(t1)            ## FFFFB9D9
	bnel    t1, $zero, lbl_80809FB4    
	lh      v0, 0x4AAC(v1)             ## 00004AAC
	lh      v0, 0x4AAC(v1)             ## 00004AAC
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	slti    $at, v0, 0xFFE2            
	beq     $at, $zero, lbl_80809F44   
	addiu   a0, $zero, 0x4839          ## a0 = 00004839
	lui     t2, 0x8010                 ## t2 = 80100000
	lui     t3, 0x8010                 ## t3 = 80100000
	addiu   t3, t3, 0x43A8             ## t3 = 801043A8
	addiu   a3, t2, 0x43A0             ## a3 = 801043A0
	sw      a3, 0x0010($sp)            
	sw      t3, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_800C806C              
	sw      v1, 0x002C($sp)            
	lw      v1, 0x002C($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	lh      t4, 0x4AC0(v1)             ## 00004AC0
	addiu   t7, $zero, 0x0004          ## t7 = 00000004
	addiu   t5, t4, 0xFFFF             ## t5 = FFFFFFFF
	sh      t5, -0x3540($at)           ## 0001CAC0
	lh      t6, 0x4AC0(v1)             ## 00004AC0
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	bgezl   t6, lbl_8080A094           
	lh      v0, 0x4AAE(v1)             ## 00004AAE
	beq     $zero, $zero, lbl_8080A090 
	sh      t7, -0x3540($at)           ## 0001CAC0
lbl_80809F44:
	slti    $at, v0, 0x001F            
	bne     $at, $zero, lbl_8080A090   
	addiu   a0, $zero, 0x4839          ## a0 = 00004839
	lui     t8, 0x8010                 ## t8 = 80100000
	lui     t9, 0x8010                 ## t9 = 80100000
	addiu   t9, t9, 0x43A8             ## t9 = 801043A8
	addiu   a3, t8, 0x43A0             ## a3 = 801043A0
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      a3, 0x0010($sp)            
	sw      t9, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_800C806C              
	sw      v1, 0x002C($sp)            
	lw      v1, 0x002C($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	lh      t1, 0x4AC0(v1)             ## 00004AC0
	addiu   t2, t1, 0x0001             ## t2 = 00000001
	sh      t2, -0x3540($at)           ## 0001CAC0
	lh      t3, 0x4AC0(v1)             ## 00004AC0
	slti    $at, t3, 0x0005            
	bne     $at, $zero, lbl_8080A090   
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     $zero, $zero, lbl_8080A090 
	sh      $zero, -0x3540($at)        ## 0001CAC0
	lh      v0, 0x4AAC(v1)             ## 00004AAC
lbl_80809FB4:
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	slti    $at, v0, 0xFFE2            
	beq     $at, $zero, lbl_8080A024   
	addiu   a0, $zero, 0x4839          ## a0 = 00004839
	lui     t4, 0x8010                 ## t4 = 80100000
	lui     t5, 0x8010                 ## t5 = 80100000
	addiu   t5, t5, 0x43A8             ## t5 = 801043A8
	addiu   a3, t4, 0x43A0             ## a3 = 801043A0
	sw      a3, 0x0010($sp)            
	sw      t5, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_800C806C              
	sw      v1, 0x002C($sp)            
	lw      v1, 0x002C($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	lh      t6, 0x4AC0(v1)             ## 00004AC0
	addiu   t9, $zero, 0x0004          ## t9 = 00000004
	addiu   t7, t6, 0xFFFF             ## t7 = FFFFFFFF
	sh      t7, -0x3540($at)           ## 0001CAC0
	lh      t8, 0x4AC0(v1)             ## 00004AC0
	slti    $at, t8, 0x0003            
	beq     $at, $zero, lbl_8080A090   
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     $zero, $zero, lbl_8080A090 
	sh      t9, -0x3540($at)           ## 0001CAC0
lbl_8080A024:
	slti    $at, v0, 0x001F            
	bne     $at, $zero, lbl_8080A090   
	addiu   a0, $zero, 0x4839          ## a0 = 00004839
	lui     t1, 0x8010                 ## t1 = 80100000
	lui     t2, 0x8010                 ## t2 = 80100000
	addiu   t2, t2, 0x43A8             ## t2 = 801043A8
	addiu   a3, t1, 0x43A0             ## a3 = 801043A0
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      a3, 0x0010($sp)            
	sw      t2, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_800C806C              
	sw      v1, 0x002C($sp)            
	lw      v1, 0x002C($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	lh      t3, 0x4AC0(v1)             ## 00004AC0
	addiu   t0, $zero, 0x0003          ## t0 = 00000003
	addiu   t4, t3, 0x0001             ## t4 = 00000001
	sh      t4, -0x3540($at)           ## 0001CAC0
	lh      t5, 0x4AC0(v1)             ## 00004AC0
	slti    $at, t5, 0x0005            
	bne     $at, $zero, lbl_8080A090   
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t0, -0x3540($at)           ## 0001CAC0
lbl_8080A090:
	lh      v0, 0x4AAE(v1)             ## 00004AAE
lbl_8080A094:
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	slti    $at, v0, 0x001F            
	bne     $at, $zero, lbl_8080A300   
	addiu   a0, $zero, 0x4839          ## a0 = 00004839
	lui     t6, 0x8010                 ## t6 = 80100000
	addiu   t6, t6, 0x43A8             ## t6 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t6, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      a3, 0x0010($sp)            
	jal     func_800C806C              
	sw      v1, 0x002C($sp)            
	lw      v1, 0x002C($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	lh      t7, 0x4AC2(v1)             ## 00004AC2
	addiu   t0, $zero, 0x0003          ## t0 = 00000003
	lui     t1, 0x8012                 ## t1 = 80120000
	addiu   t8, t7, 0xFFFF             ## t8 = FFFFFFFF
	sh      t8, -0x353E($at)           ## 0001CAC2
	lh      t9, 0x4AC2(v1)             ## 00004AC2
	bgezl   t9, lbl_8080A294           
	lh      t2, 0x4ABE(v1)             ## 00004ABE
	lbu     t1, -0x4627(t1)            ## 8011B9D9
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	bne     t1, $zero, lbl_8080A1DC    
	addiu   t2, $zero, 0x0005          ## t2 = 00000005
	sh      t2, -0x353E($at)           ## 0001CAC2
	lh      t3, 0x4ABE(v1)             ## 00004ABE
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t4, t3, 0x0034             ## t4 = 00000034
	sh      t4, -0x3542($at)           ## 0001CABE
	lh      v0, 0x4AC0(v1)             ## 00004AC0
	sll     a0, v0, 16                 
	slti    $at, v0, 0x0003            
	beq     $at, $zero, lbl_8080A14C   
	sra     a0, a0, 16                 
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x3540($at)        ## 0001CAC0
	beq     $zero, $zero, lbl_8080A1C4 
	lh      v0, 0x4AC0(v1)             ## 00004AC0
lbl_8080A14C:
	slti    $at, v0, 0x0006            
	beq     $at, $zero, lbl_8080A16C   
	addiu   t5, $zero, 0x0001          ## t5 = 00000001
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t5, -0x3540($at)           ## 0001CAC0
	beq     $zero, $zero, lbl_8080A1C4 
	lh      v0, 0x4AC0(v1)             ## 00004AC0
lbl_8080A16C:
	slti    $at, v0, 0x0008            
	beq     $at, $zero, lbl_8080A18C   
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t6, -0x3540($at)           ## 0001CAC0
	beq     $zero, $zero, lbl_8080A1C4 
	lh      v0, 0x4AC0(v1)             ## 00004AC0
lbl_8080A18C:
	slti    $at, v0, 0x000A            
	beq     $at, $zero, lbl_8080A1A8   
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t0, -0x3540($at)           ## 0001CAC0
	beq     $zero, $zero, lbl_8080A1C4 
	lh      v0, 0x4AC0(v1)             ## 00004AC0
lbl_8080A1A8:
	slti    $at, v0, 0x000D            
	beq     $at, $zero, lbl_8080A1C4   
	addiu   t7, $zero, 0x0004          ## t7 = 00000004
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t7, -0x3540($at)           ## 0001CAC0
	lh      v0, 0x4AC0(v1)             ## 00004AC0
lbl_8080A1C4:
	sll     t8, v0,  1                 
	addu    t9, s0, t8                 
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, t9               
	beq     $zero, $zero, lbl_8080A56C 
	sh      a0, -0x353A($at)           ## 0001CAC6
lbl_8080A1DC:
	lh      t1, 0x4AC0(v1)             ## 00004AC0
	addiu   t2, $zero, 0x0004          ## t2 = 00000004
	addiu   t5, $zero, 0x0005          ## t5 = 00000005
	slti    $at, t1, 0x0008            
	beq     $at, $zero, lbl_8080A214   
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t2, -0x353E($at)           ## 0001CAC2
	lh      t3, 0x4AC0(v1)             ## 00004AC0
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t4, t3, 0x0034             ## t4 = 00000034
	beq     $zero, $zero, lbl_8080A56C 
	sh      t4, -0x3542($at)           ## 0001CABE
lbl_8080A214:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t5, -0x353E($at)           ## 0001CAC2
	lh      t6, 0x4ABE(v1)             ## 00004ABE
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t7, t6, 0x0034             ## t7 = 00000036
	sh      t7, -0x3542($at)           ## 0001CABE
	lh      v0, 0x4AC0(v1)             ## 00004AC0
	sll     a0, v0, 16                 
	slti    $at, v0, 0x000A            
	beq     $at, $zero, lbl_8080A25C   
	sra     a0, a0, 16                 
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t0, -0x3540($at)           ## 0001CAC0
	beq     $zero, $zero, lbl_8080A278 
	lh      v0, 0x4AC0(v1)             ## 00004AC0
lbl_8080A25C:
	slti    $at, v0, 0x000D            
	beq     $at, $zero, lbl_8080A278   
	addiu   t8, $zero, 0x0004          ## t8 = 00000004
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t8, -0x3540($at)           ## 0001CAC0
	lh      v0, 0x4AC0(v1)             ## 00004AC0
lbl_8080A278:
	sll     t9, v0,  1                 
	addu    t1, s0, t9                 
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, t1               
	beq     $zero, $zero, lbl_8080A56C 
	sh      a0, -0x353A($at)           ## 0001CAC6
	lh      t2, 0x4ABE(v1)             ## 00004ABE
lbl_8080A294:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t3, t2, 0xFFF3             ## t3 = FFFFFFF7
	sh      t3, -0x3542($at)           ## 0001CABE
	lh      t4, 0x4AC2(v1)             ## 00004AC2
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	addiu   t5, $zero, 0x0034          ## t5 = 00000034
	bne     t4, $at, lbl_8080A56C      
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t5, -0x3542($at)           ## 0001CABE
	lh      t6, 0x4AC0(v1)             ## 00004AC0
	lui     t9, 0x0002                 ## t9 = 00020000
	lui     $at, 0x0002                ## $at = 00020000
	sll     t7, t6,  1                 
	addu    t8, s0, t7                 
	addu    t9, t9, t8                 
	lh      t9, -0x353A(t9)            ## 0001CAC6
	addu    $at, $at, s0               
	sh      t9, -0x3540($at)           ## 0001CAC0
	lh      t2, 0x4AC0(v1)             ## 00004AC0
	lh      t1, 0x4ABE(v1)             ## 00004ABE
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addu    t3, t1, t2                 
	beq     $zero, $zero, lbl_8080A56C 
	sh      t3, -0x3542($at)           ## 0001CABE
lbl_8080A300:
	slti    $at, v0, 0xFFE2            
	beq     $at, $zero, lbl_8080A56C   
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t4, 0x8010                 ## t4 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t4, t4, 0x43A8             ## t4 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t4, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x4839          ## a0 = 00004839
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_800C806C              
	sw      v1, 0x002C($sp)            
	lw      v1, 0x002C($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	lh      t5, 0x4AC2(v1)             ## 00004AC2
	addiu   t0, $zero, 0x0003          ## t0 = 00000003
	addiu   t6, t5, 0x0001             ## t6 = 00000001
	sh      t6, -0x353E($at)           ## 0001CAC2
	lh      t7, 0x4AC2(v1)             ## 00004AC2
	slti    $at, t7, 0x0006            
	bne     $at, $zero, lbl_8080A3A4   
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x353E($at)        ## 0001CAC2
	lh      t8, 0x4AC0(v1)             ## 00004AC0
	lui     t2, 0x0002                 ## t2 = 00020000
	lui     $at, 0x0002                ## $at = 00020000
	sll     t9, t8,  1                 
	addu    t1, s0, t9                 
	addu    t2, t2, t1                 
	lh      t2, -0x353A(t2)            ## 0001CAC6
	addu    $at, $at, s0               
	sh      t2, -0x3540($at)           ## 0001CAC0
	lh      t3, 0x4AC0(v1)             ## 00004AC0
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     $zero, $zero, lbl_8080A56C 
	sh      t3, -0x3542($at)           ## 0001CABE
lbl_8080A3A4:
	lh      t4, 0x4ABE(v1)             ## 00004ABE
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t5, t4, 0x000D             ## t5 = 0000000D
	sh      t5, -0x3542($at)           ## 0001CABE
	lh      t6, 0x4AC2(v1)             ## 00004AC2
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	lui     t7, 0x8012                 ## t7 = 80120000
	bnel    t6, $at, lbl_8080A570      
	lh      t1, 0x4AC2(v1)             ## 00004AC2
	lbu     t7, -0x4627(t7)            ## 8011B9D9
	beql    t7, $zero, lbl_8080A4BC    
	lh      v0, 0x4AC0(v1)             ## 00004AC0
	lh      v0, 0x4AC0(v1)             ## 00004AC0
	slti    $at, v0, 0x0008            
	beq     $at, $zero, lbl_8080A408   
	sll     a0, v0, 16                 
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x353E($at)        ## 0001CAC2
	lh      t8, 0x4AC0(v1)             ## 00004AC0
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     $zero, $zero, lbl_8080A56C 
	sh      t8, -0x3542($at)           ## 0001CABE
lbl_8080A408:
	slti    $at, v0, 0x0003            
	beq     $at, $zero, lbl_8080A428   
	sra     a0, a0, 16                 
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x3540($at)        ## 0001CAC0
	beq     $zero, $zero, lbl_8080A4A0 
	lh      v0, 0x4AC0(v1)             ## 00004AC0
lbl_8080A428:
	slti    $at, v0, 0x0006            
	beq     $at, $zero, lbl_8080A448   
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t9, -0x3540($at)           ## 0001CAC0
	beq     $zero, $zero, lbl_8080A4A0 
	lh      v0, 0x4AC0(v1)             ## 00004AC0
lbl_8080A448:
	slti    $at, v0, 0x0008            
	beq     $at, $zero, lbl_8080A468   
	addiu   t1, $zero, 0x0002          ## t1 = 00000002
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t1, -0x3540($at)           ## 0001CAC0
	beq     $zero, $zero, lbl_8080A4A0 
	lh      v0, 0x4AC0(v1)             ## 00004AC0
lbl_8080A468:
	slti    $at, v0, 0x000A            
	beq     $at, $zero, lbl_8080A484   
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t0, -0x3540($at)           ## 0001CAC0
	beq     $zero, $zero, lbl_8080A4A0 
	lh      v0, 0x4AC0(v1)             ## 00004AC0
lbl_8080A484:
	slti    $at, v0, 0x000D            
	beq     $at, $zero, lbl_8080A4A0   
	addiu   t2, $zero, 0x0004          ## t2 = 00000004
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t2, -0x3540($at)           ## 0001CAC0
	lh      v0, 0x4AC0(v1)             ## 00004AC0
lbl_8080A4A0:
	sll     t3, v0,  1                 
	addu    t4, s0, t3                 
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, t4               
	beq     $zero, $zero, lbl_8080A56C 
	sh      a0, -0x353A($at)           ## 0001CAC6
	lh      v0, 0x4AC0(v1)             ## 00004AC0
lbl_8080A4BC:
	sll     a0, v0, 16                 
	slti    $at, v0, 0x0003            
	beq     $at, $zero, lbl_8080A4E0   
	sra     a0, a0, 16                 
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x3540($at)        ## 0001CAC0
	beq     $zero, $zero, lbl_8080A558 
	lh      v0, 0x4AC0(v1)             ## 00004AC0
lbl_8080A4E0:
	slti    $at, v0, 0x0006            
	beq     $at, $zero, lbl_8080A500   
	addiu   t5, $zero, 0x0001          ## t5 = 00000001
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t5, -0x3540($at)           ## 0001CAC0
	beq     $zero, $zero, lbl_8080A558 
	lh      v0, 0x4AC0(v1)             ## 00004AC0
lbl_8080A500:
	slti    $at, v0, 0x0008            
	beq     $at, $zero, lbl_8080A520   
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t6, -0x3540($at)           ## 0001CAC0
	beq     $zero, $zero, lbl_8080A558 
	lh      v0, 0x4AC0(v1)             ## 00004AC0
lbl_8080A520:
	slti    $at, v0, 0x000A            
	beq     $at, $zero, lbl_8080A53C   
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t0, -0x3540($at)           ## 0001CAC0
	beq     $zero, $zero, lbl_8080A558 
	lh      v0, 0x4AC0(v1)             ## 00004AC0
lbl_8080A53C:
	slti    $at, v0, 0x000D            
	beq     $at, $zero, lbl_8080A558   
	addiu   t7, $zero, 0x0004          ## t7 = 00000004
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t7, -0x3540($at)           ## 0001CAC0
	lh      v0, 0x4AC0(v1)             ## 00004AC0
lbl_8080A558:
	sll     t8, v0,  1                 
	addu    t9, s0, t8                 
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, t9               
	sh      a0, -0x353A($at)           ## 0001CAC6
lbl_8080A56C:
	lh      t1, 0x4AC2(v1)             ## 00004AC2
lbl_8080A570:
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bnel    t1, $at, lbl_8080A5E8      
	lw      $ra, 0x0024($sp)           
	lh      t2, 0x4AC0(v1)             ## 00004AC0
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     $zero, $zero, lbl_8080A5E4 
	sh      t2, -0x3548($at)           ## 0001CAB8
lbl_8080A590:
	lw      t4, -0x4600(t4)            ## FFFFBA00
	lh      t3, 0x4ABC(v1)             ## 00004ABC
	lui     $at, 0x0002                ## $at = 00020000
	lh      t5, 0x07A6(t4)             ## 000007A6
	addu    $at, $at, s0               
	addu    t6, t3, t5                 
	sh      t6, -0x3544($at)           ## 0001CABC
	lh      t7, 0x4ABC(v1)             ## 00004ABC
	slti    $at, t7, 0x00FF            
	bne     $at, $zero, lbl_8080A5E4   
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x3544($at)        ## 0001CABC
	lh      t8, 0x4ABA(v1)             ## 00004ABA
	lui     t1, %hi(var_808127DC)      ## t1 = 80810000
	lui     $at, 0x0002                ## $at = 00020000
	sll     t9, t8,  1                 
	addu    t1, t1, t9                 
	lh      t1, %lo(var_808127DC)(t1)  
	addu    $at, $at, s0               
	sh      t1, -0x3546($at)           ## 0001CABA
lbl_8080A5E4:
	lw      $ra, 0x0024($sp)           
lbl_8080A5E8:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_8080A5F8:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    v0, a0, $at                
	lh      t6, 0x4A8E(v0)             ## 00004A8E
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t7, t6, 0x0019             ## t7 = 00000019
	sh      t7, -0x3572($at)           ## 0001CA8E
	lh      t8, 0x4A8E(v0)             ## 00004A8E
	addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
	addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
	slti    $at, t8, 0x00FF            
	bne     $at, $zero, lbl_8080A63C   
	addiu   t4, $zero, 0x0025          ## t4 = 00000025
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t9, -0x3572($at)           ## 0001CA8E
lbl_8080A63C:
	lh      t0, 0x4AB0(v0)             ## 00004AB0
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t1, t0, 0xFFE2             ## t1 = FFFFFFE2
	sh      t1, -0x3550($at)           ## 0001CAB0
	lh      t2, 0x4AB0(v0)             ## 00004AB0
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	bgtz    t2, lbl_8080A680           
	nop
	sh      $zero, -0x3550($at)        ## 0001CAB0
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t3, -0x3572($at)           ## 0001CA8E
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t4, -0x35D0($at)           ## 0001CA30
lbl_8080A680:
	jr      $ra                        
	nop


func_8080A688:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	lhu     t6, 0x0020(s0)             ## 00000020
	addiu   $at, $zero, 0x4000         ## $at = 00004000
	lui     a3, 0x8010                 ## a3 = 80100000
	andi    t7, t6, 0x4000             ## t7 = 00000000
	bne     t7, $at, lbl_8080A724      
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	lui     t8, 0x8010                 ## t8 = 80100000
	addiu   t8, t8, 0x43A8             ## t8 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t8, 0x0014($sp)            
	addiu   a0, $zero, 0x483B          ## a0 = 0000483B
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_800C806C              
	sw      a3, 0x0010($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t9, $zero, 0x0027          ## t9 = 00000027
	lui     v0, 0x8012                 ## v0 = 80120000
	sh      t9, -0x35D0($at)           ## 0001CA30
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	addiu   a0, s0, 0x01D8             ## a0 = 000001D8
	lw      t2, 0x0000(a0)             ## 000001D8
	lbu     t1, 0x140A(v0)             ## 8011B9DA
	sb      t1, 0x0000(t2)             ## 00000000
	lw      t4, 0x0000(a0)             ## 000001D8
	lbu     t3, 0x140C(v0)             ## 8011B9DC
	jal     func_800911C0              
	sb      t3, 0x0001(t4)             ## 00000001
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	jal     func_800C7420              
	lb      a0, 0x140A(v0)             ## 8011B9DA
	beq     $zero, $zero, lbl_8080A8F0 
	lw      $ra, 0x0024($sp)           
lbl_8080A724:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    v1, s0, $at                
	lh      v0, 0x4AAC(v1)             ## 00004AAC
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	slti    $at, v0, 0xFFE2            
	beq     $at, $zero, lbl_8080A7C4   
	addiu   a0, $zero, 0x4839          ## a0 = 00004839
	lui     t5, 0x8010                 ## t5 = 80100000
	addiu   t5, t5, 0x43A8             ## t5 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t5, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      a3, 0x0010($sp)            
	jal     func_800C806C              
	sw      v1, 0x0028($sp)            
	lui     t0, %hi(var_808137B0)      ## t0 = 80810000
	addiu   t0, t0, %lo(var_808137B0)  ## t0 = 808137B0
	lbu     t6, 0x0000(t0)             ## 808137B0
	lui     v0, 0x8012                 ## v0 = 80120000
	lw      v1, 0x0028($sp)            
	bne     t6, $zero, lbl_8080A7B4    
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	lbu     t7, 0x140A(v0)             ## 8011B9DA
	addiu   t1, $zero, 0x0003          ## t1 = 00000003
	addiu   t8, t7, 0xFFFF             ## t8 = FFFFFFFF
	andi    t9, t8, 0x00FF             ## t9 = 000000FF
	slti    $at, t9, 0x00F1            
	bne     $at, $zero, lbl_8080A84C   
	sb      t8, 0x140A(v0)             ## 8011B9DA
	beq     $zero, $zero, lbl_8080A84C 
	sb      t1, 0x140A(v0)             ## 8011B9DA
lbl_8080A7B4:
	lbu     t2, 0x140C(v0)             ## 8011B9DC
	xori    t3, t2, 0x0001             ## t3 = 00000001
	beq     $zero, $zero, lbl_8080A84C 
	sb      t3, 0x140C(v0)             ## 8011B9DC
lbl_8080A7C4:
	slti    $at, v0, 0x001F            
	bne     $at, $zero, lbl_8080A84C   
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t4, 0x8010                 ## t4 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t4, t4, 0x43A8             ## t4 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t4, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x4839          ## a0 = 00004839
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_800C806C              
	sw      v1, 0x0028($sp)            
	lui     t0, %hi(var_808137B0)      ## t0 = 80810000
	addiu   t0, t0, %lo(var_808137B0)  ## t0 = 808137B0
	lbu     t5, 0x0000(t0)             ## 808137B0
	lui     v0, 0x8012                 ## v0 = 80120000
	lw      v1, 0x0028($sp)            
	bne     t5, $zero, lbl_8080A840    
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	lbu     t6, 0x140A(v0)             ## 8011B9DA
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	andi    t8, t7, 0x00FF             ## t8 = 00000001
	slti    $at, t8, 0x0004            
	bne     $at, $zero, lbl_8080A84C   
	sb      t7, 0x140A(v0)             ## 8011B9DA
	beq     $zero, $zero, lbl_8080A84C 
	sb      $zero, 0x140A(v0)          ## 8011B9DA
lbl_8080A840:
	lbu     t9, 0x140C(v0)             ## 8011B9DC
	xori    t1, t9, 0x0001             ## t1 = 00000001
	sb      t1, 0x140C(v0)             ## 8011B9DC
lbl_8080A84C:
	lh      v0, 0x4AAE(v1)             ## 00004AAE
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	slti    $at, v0, 0xFFE2            
	bne     $at, $zero, lbl_8080A86C   
	addiu   a0, $zero, 0x4839          ## a0 = 00004839
	slti    $at, v0, 0x001F            
	bne     $at, $zero, lbl_8080A8A4   
lbl_8080A86C:
	lui     t2, 0x8010                 ## t2 = 80100000
	addiu   t2, t2, 0x43A8             ## t2 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t2, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_800C806C              
	sw      a3, 0x0010($sp)            
	lui     t0, %hi(var_808137B0)      ## t0 = 80810000
	addiu   t0, t0, %lo(var_808137B0)  ## t0 = 808137B0
	lbu     t3, 0x0000(t0)             ## 808137B0
	xori    t4, t3, 0x0001             ## t4 = 00000001
	beq     $zero, $zero, lbl_8080A8EC 
	sb      t4, 0x0000(t0)             ## 808137B0
lbl_8080A8A4:
	lhu     t5, 0x0020(s0)             ## 00000020
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addiu   a0, $zero, 0x483B          ## a0 = 0000483B
	andi    t6, t5, 0x8000             ## t6 = 00000000
	bne     t6, $at, lbl_8080A8EC      
	lui     a1, 0x8010                 ## a1 = 80100000
	lui     t7, 0x8010                 ## t7 = 80100000
	addiu   t7, t7, 0x43A8             ## t7 = 801043A8
	sw      t7, 0x0014($sp)            
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_800C806C              
	sw      a3, 0x0010($sp)            
	lui     t0, %hi(var_808137B0)      ## t0 = 80810000
	addiu   t0, t0, %lo(var_808137B0)  ## t0 = 808137B0
	lbu     t8, 0x0000(t0)             ## 808137B0
	xori    t9, t8, 0x0001             ## t9 = 00000001
	sb      t9, 0x0000(t0)             ## 808137B0
lbl_8080A8EC:
	lw      $ra, 0x0024($sp)           
lbl_8080A8F0:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_8080A900:
	addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
	sw      s6, 0x0030($sp)            
	sw      s4, 0x0028($sp)            
	lui     s4, %hi(var_80812D50)      ## s4 = 80810000
	lui     s6, %hi(var_80812D68)      ## s6 = 80810000
	lh      s6, %lo(var_80812D68)(s6)  
	lh      s4, %lo(var_80812D50)(s4)  
	sw      $ra, 0x003C($sp)           
	sw      s8, 0x0038($sp)            
	sw      s7, 0x0034($sp)            
	sw      s5, 0x002C($sp)            
	sw      s3, 0x0024($sp)            
	sw      s2, 0x0020($sp)            
	sw      s1, 0x001C($sp)            
	sw      s0, 0x0018($sp)            
	sw      a0, 0x0058($sp)            
	sll     a2, s6,  2                 
	subu    a2, a2, s6                 
	lui     t7, %hi(var_80812D70)      ## t7 = 80810000
	addiu   t7, t7, %lo(var_80812D70)  ## t7 = 80812D70
	sll     a2, a2,  1                 
	addu    v1, a2, t7                 
	lh      s5, 0x0000(v1)             ## 00000000
	lw      t6, 0x0058($sp)            
	lui     a3, %hi(var_80812D6C)      ## a3 = 80810000
	subu    v0, s4, s5                 
	bltz    v0, lbl_8080A978           
	lw      t0, 0x0000(t6)             ## 00000000
	beq     $zero, $zero, lbl_8080A97C 
	or      t4, v0, $zero              ## t4 = 00000000
lbl_8080A978:
	subu    t4, $zero, v0              
lbl_8080A97C:
	lh      a3, %lo(var_80812D6C)(a3)  
	lui     s3, %hi(var_80812D54)      ## s3 = 80810000
	lh      s3, %lo(var_80812D54)(s3)  
	div     $zero, t4, a3              
	lh      s2, 0x0002(v1)             ## 00000002
	mflo    a0                         
	sll     a0, a0, 16                 
	bne     a3, $zero, lbl_8080A9A4    
	nop
	break	## 0x01C00
lbl_8080A9A4:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     a3, $at, lbl_8080A9BC      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t4, $at, lbl_8080A9BC      
	nop
	break	## 0x01800
lbl_8080A9BC:
	subu    v0, s3, s2                 
	bltz    v0, lbl_8080A9D0           
	sra     a0, a0, 16                 
	beq     $zero, $zero, lbl_8080A9D4 
	or      t4, v0, $zero              ## t4 = 00000000
lbl_8080A9D0:
	subu    t4, $zero, v0              
lbl_8080A9D4:
	div     $zero, t4, a3              
	lui     s1, %hi(var_80812D58)      ## s1 = 80810000
	lh      s1, %lo(var_80812D58)(s1)  
	lh      s0, 0x0004(v1)             ## 00000004
	mflo    a1                         
	sll     a1, a1, 16                 
	bne     a3, $zero, lbl_8080A9F8    
	nop
	break	## 0x01C00
lbl_8080A9F8:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     a3, $at, lbl_8080AA10      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t4, $at, lbl_8080AA10      
	nop
	break	## 0x01800
lbl_8080AA10:
	subu    v0, s1, s0                 
	bltz    v0, lbl_8080AA24           
	sra     a1, a1, 16                 
	beq     $zero, $zero, lbl_8080AA28 
	or      t4, v0, $zero              ## t4 = 00000000
lbl_8080AA24:
	subu    t4, $zero, v0              
lbl_8080AA28:
	slt     $at, s4, s5                
	bne     $at, $zero, lbl_8080AA44   
	lui     $ra, %hi(var_80812D5C)     ## $ra = 80810000
	subu    s4, s4, a0                 
	sll     s4, s4, 16                 
	beq     $zero, $zero, lbl_8080AA50 
	sra     s4, s4, 16                 
lbl_8080AA44:
	addu    s4, s4, a0                 
	sll     s4, s4, 16                 
	sra     s4, s4, 16                 
lbl_8080AA50:
	slt     $at, s3, s2                
	bne     $at, $zero, lbl_8080AA6C   
	lui     t3, %hi(var_80812D60)      ## t3 = 80810000
	subu    s3, s3, a1                 
	sll     s3, s3, 16                 
	beq     $zero, $zero, lbl_8080AA78 
	sra     s3, s3, 16                 
lbl_8080AA6C:
	addu    s3, s3, a1                 
	sll     s3, s3, 16                 
	sra     s3, s3, 16                 
lbl_8080AA78:
	slt     $at, s1, s0                
	bne     $at, $zero, lbl_8080AACC   
	nop
	div     $zero, t4, a3              
	mflo    t8                         
	sll     t9, t8, 16                 
	sra     t6, t9, 16                 
	subu    s1, s1, t6                 
	sll     s1, s1, 16                 
	bne     a3, $zero, lbl_8080AAA8    
	nop
	break	## 0x01C00
lbl_8080AAA8:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     a3, $at, lbl_8080AAC0      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t4, $at, lbl_8080AAC0      
	nop
	break	## 0x01800
lbl_8080AAC0:
	sra     s1, s1, 16                 
	beq     $zero, $zero, lbl_8080AB0C 
	nop
lbl_8080AACC:
	div     $zero, t4, a3              
	mflo    t7                         
	sll     t8, t7, 16                 
	sra     t9, t8, 16                 
	addu    s1, s1, t9                 
	sll     s1, s1, 16                 
	sra     s1, s1, 16                 
	bne     a3, $zero, lbl_8080AAF4    
	nop
	break	## 0x01C00
lbl_8080AAF4:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     a3, $at, lbl_8080AB0C      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t4, $at, lbl_8080AB0C      
	nop
	break	## 0x01800
lbl_8080AB0C:
	lui     t6, %hi(var_80812D7C)      ## t6 = 80810000
	addiu   t6, t6, %lo(var_80812D7C)  ## t6 = 80812D7C
	addu    v1, a2, t6                 
	lh      $ra, %lo(var_80812D5C)($ra) 
	lh      t5, 0x0000(v1)             ## 00000000
	lui     a2, %hi(var_80812D64)      ## a2 = 80810000
	subu    v0, $ra, t5                
	bltzl   v0, lbl_8080AB3C           
	subu    t4, $zero, v0              
	beq     $zero, $zero, lbl_8080AB3C 
	or      t4, v0, $zero              ## t4 = 00000000
	subu    t4, $zero, v0              
lbl_8080AB3C:
	div     $zero, t4, a3              
	lh      t3, %lo(var_80812D60)(t3)  
	lh      t1, 0x0002(v1)             ## 00000002
	mflo    a0                         
	sll     a0, a0, 16                 
	bne     a3, $zero, lbl_8080AB5C    
	nop
	break	## 0x01C00
lbl_8080AB5C:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     a3, $at, lbl_8080AB74      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t4, $at, lbl_8080AB74      
	nop
	break	## 0x01800
lbl_8080AB74:
	subu    v0, t3, t1                 
	bltz    v0, lbl_8080AB88           
	sra     a0, a0, 16                 
	beq     $zero, $zero, lbl_8080AB8C 
	or      t4, v0, $zero              ## t4 = 00000000
lbl_8080AB88:
	subu    t4, $zero, v0              
lbl_8080AB8C:
	div     $zero, t4, a3              
	lh      a2, %lo(var_80812D64)(a2)  
	lh      t2, 0x0004(v1)             ## 00000004
	mflo    a1                         
	sll     a1, a1, 16                 
	bne     a3, $zero, lbl_8080ABAC    
	nop
	break	## 0x01C00
lbl_8080ABAC:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     a3, $at, lbl_8080ABC4      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t4, $at, lbl_8080ABC4      
	nop
	break	## 0x01800
lbl_8080ABC4:
	subu    v0, a2, t2                 
	bltz    v0, lbl_8080ABD8           
	sra     a1, a1, 16                 
	beq     $zero, $zero, lbl_8080ABDC 
	or      t4, v0, $zero              ## t4 = 00000000
lbl_8080ABD8:
	subu    t4, $zero, v0              
lbl_8080ABDC:
	slt     $at, $ra, t5               
	bne     $at, $zero, lbl_8080ABF8   
	lui     s7, %hi(var_80812CD8)      ## s7 = 80810000
	subu    $ra, $ra, a0               
	sll     $ra, $ra, 16               
	beq     $zero, $zero, lbl_8080AC04 
	sra     $ra, $ra, 16               
lbl_8080ABF8:
	addu    $ra, $ra, a0               
	sll     $ra, $ra, 16               
	sra     $ra, $ra, 16               
lbl_8080AC04:
	slt     $at, t3, t1                
	bne     $at, $zero, lbl_8080AC20   
	addiu   s7, s7, %lo(var_80812CD8)  ## s7 = 80812CD8
	subu    t3, t3, a1                 
	sll     t3, t3, 16                 
	beq     $zero, $zero, lbl_8080AC2C 
	sra     t3, t3, 16                 
lbl_8080AC20:
	addu    t3, t3, a1                 
	sll     t3, t3, 16                 
	sra     t3, t3, 16                 
lbl_8080AC2C:
	slt     $at, a2, t2                
	bne     $at, $zero, lbl_8080AC80   
	nop
	div     $zero, t4, a3              
	mflo    t7                         
	sll     t8, t7, 16                 
	sra     t9, t8, 16                 
	subu    a2, a2, t9                 
	sll     a2, a2, 16                 
	bne     a3, $zero, lbl_8080AC5C    
	nop
	break	## 0x01C00
lbl_8080AC5C:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     a3, $at, lbl_8080AC74      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t4, $at, lbl_8080AC74      
	nop
	break	## 0x01800
lbl_8080AC74:
	sra     a2, a2, 16                 
	beq     $zero, $zero, lbl_8080ACC4 
	addiu   a3, a3, 0xFFFF             ## a3 = 8080FFFF
lbl_8080AC80:
	div     $zero, t4, a3              
	mflo    t6                         
	sll     t7, t6, 16                 
	sra     t8, t7, 16                 
	addu    a2, a2, t8                 
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	bne     a3, $zero, lbl_8080ACA8    
	nop
	break	## 0x01C00
lbl_8080ACA8:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     a3, $at, lbl_8080ACC0      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t4, $at, lbl_8080ACC0      
	nop
	break	## 0x01800
lbl_8080ACC0:
	addiu   a3, a3, 0xFFFF             ## a3 = 8080FFFE
lbl_8080ACC4:
	lui     $at, %hi(var_80812D64)     ## $at = 80810000
	sh      a2, %lo(var_80812D64)($at) 
	sll     a3, a3, 16                 
	sra     a3, a3, 16                 
	lui     $at, %hi(var_80812D6C)     ## $at = 80810000
	sh      a3, %lo(var_80812D6C)($at) 
	lui     $at, %hi(var_80812D60)     ## $at = 80810000
	sh      t3, %lo(var_80812D60)($at) 
	lui     $at, %hi(var_80812D5C)     ## $at = 80810000
	sh      $ra, %lo(var_80812D5C)($at) 
	lui     $at, %hi(var_80812D58)     ## $at = 80810000
	sh      s1, %lo(var_80812D58)($at) 
	lui     $at, %hi(var_80812D54)     ## $at = 80810000
	sh      s3, %lo(var_80812D54)($at) 
	lui     $at, %hi(var_80812D50)     ## $at = 80810000
	bne     a3, $zero, lbl_8080AD68    
	sh      s4, %lo(var_80812D50)($at) 
	lui     $at, %hi(var_80812D50)     ## $at = 80810000
	sh      s5, %lo(var_80812D50)($at) 
	lui     $at, %hi(var_80812D54)     ## $at = 80810000
	sh      s2, %lo(var_80812D54)($at) 
	lui     $at, %hi(var_80812D58)     ## $at = 80810000
	sh      s0, %lo(var_80812D58)($at) 
	lui     $at, %hi(var_80812D5C)     ## $at = 80810000
	sh      t5, %lo(var_80812D5C)($at) 
	lui     $at, %hi(var_80812D60)     ## $at = 80810000
	sh      t1, %lo(var_80812D60)($at) 
	lui     $at, %hi(var_80812D64)     ## $at = 80810000
	sh      t2, %lo(var_80812D64)($at) 
	addiu   a3, $zero, 0x0014          ## a3 = 00000014
	lui     $at, %hi(var_80812D6C)     ## $at = 80810000
	addiu   s6, s6, 0x0001             ## s6 = 80810001
	sll     s6, s6, 16                 
	sh      a3, %lo(var_80812D6C)($at) 
	lui     $at, %hi(var_80812D68)     ## $at = 80810000
	sra     s6, s6, 16                 
	sh      s6, %lo(var_80812D68)($at) 
	slti    $at, s6, 0x0002            
	bne     $at, $zero, lbl_8080AD68   
	lui     $at, %hi(var_80812D68)     ## $at = 80810000
	sh      $zero, %lo(var_80812D68)($at) 
lbl_8080AD68:
	lui     t5, 0x0102                 ## t5 = 01020000
	ori     t5, t5, 0x0040             ## t5 = 01020040
	lui     s2, 0xFA00                 ## s2 = FA000000
	lui     s6, 0xE700                 ## s6 = E7000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t6, %hi(var_808127F0)      ## t6 = 80810000
	addiu   t6, t6, %lo(var_808127F0)  ## t6 = 808127F0
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t0)             ## 000002C0
	sw      t6, 0x0004(v1)             ## 00000004
	sw      t5, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t9, 0xFC30                 ## t9 = FC300000
	ori     t9, t9, 0x9661             ## t9 = FC309661
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      s6, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t6, 0x552E                 ## t6 = 552E0000
	ori     t6, t6, 0xFF7F             ## t6 = 552EFF7F
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	sw      t6, 0x0004(v1)             ## 00000004
	sw      t9, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t0)             ## 000002C0
	sw      s2, 0x0000(v1)             ## 00000000
	lw      s1, 0x0058($sp)            
	lui     s3, 0xFB00                 ## s3 = FB000000
	addiu   s8, $zero, 0x00FF          ## s8 = 000000FF
	addu    s1, s1, $at                
	lh      t8, 0x4A60(s1)             ## 80814A60
	addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
	or      t2, $zero, $zero           ## t2 = 00000000
	andi    t9, t8, 0x00FF             ## t9 = 00000008
	or      t6, t9, $at                ## t6 = FFFFFF08
	sw      t6, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	or      $ra, $zero, $zero          ## $ra = 00000000
	lui     s5, 0x8012                 ## s5 = 80120000
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t0)             ## 000002C0
	sw      s8, 0x0004(v1)             ## 00000004
	sw      s3, 0x0000(v1)             ## 00000000
	addiu   s5, s5, 0xA5D0             ## s5 = 8011A5D0
	lui     s0, 0x0700                 ## s0 = 07000000
lbl_8080AE30:
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t9, 0xFD70                 ## t9 = FD700000
	sll     t6, t2,  2                 
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	sw      t9, 0x0000(v1)             ## 00000000
	lbu     t8, 0x1409(s5)             ## 8011B9D9
	subu    t6, t6, t2                 
	sll     t6, t6,  2                 
	addu    t7, s7, t6                 
	sll     t9, t8,  2                 
	addu    t6, t7, t9                 
	lw      t8, 0x0000(t6)             ## FFFFFF08
	addiu   t3, $zero, 0x07FF          ## t3 = 000007FF
	sw      t8, 0x0004(v1)             ## 00000004
	lw      a0, 0x02C0(t0)             ## 000002C0
	lui     t9, 0xF570                 ## t9 = F5700000
	addiu   t7, a0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t0)             ## 000002C0
	sw      s0, 0x0004(a0)             ## 00000004
	sw      t9, 0x0000(a0)             ## 00000000
	lw      a1, 0x02C0(t0)             ## 000002C0
	lui     t8, 0xE600                 ## t8 = E6000000
	lui     t9, 0xF300                 ## t9 = F3000000
	addiu   t6, a1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      $zero, 0x0004(a1)          ## 00000004
	sw      t8, 0x0000(a1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	sll     t6, t2,  2                 
	subu    t6, t6, t2                 
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t0)             ## 000002C0
	sll     t6, t6,  2                 
	addu    a3, s7, t6                 
	sw      t9, 0x0000(v1)             ## 00000000
	or      t1, v1, $zero              ## t1 = 00000000
	lhu     v1, 0x0008(a3)             ## 0000001C
	lhu     t8, 0x000A(a3)             ## 0000001E
	addiu   t2, t2, 0x0001             ## t2 = 00000001
	sll     t2, t2, 16                 
	multu   t8, v1                     
	sra     t2, t2, 16                 
	mflo    v0                         
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	sra     v0, v0,  1                 
	addiu   v0, v0, 0xFFFF             ## v0 = 00000000
	slti    $at, v0, 0x07FF            
	beq     $at, $zero, lbl_8080AF00   
	nop
	beq     $zero, $zero, lbl_8080AF00 
	or      t3, v0, $zero              ## t3 = 00000000
lbl_8080AF00:
	bgez    v1, lbl_8080AF10           
	sra     v0, v1,  3                 
	addiu   $at, v1, 0x0007            ## $at = 00000007
	sra     v0, $at,  3                
lbl_8080AF10:
	bgtz    v0, lbl_8080AF20           
	or      a2, v0, $zero              ## a2 = 00000000
	beq     $zero, $zero, lbl_8080AF20 
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
lbl_8080AF20:
	bgtz    v0, lbl_8080AF30           
	addiu   t7, a2, 0x07FF             ## t7 = 00000800
	beq     $zero, $zero, lbl_8080AF34 
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
lbl_8080AF30:
	or      t4, v0, $zero              ## t4 = 00000000
lbl_8080AF34:
	div     $zero, t7, t4              
	mflo    t9                         
	andi    t6, t9, 0x0FFF             ## t6 = 00000000
	bne     t4, $zero, lbl_8080AF4C    
	nop
	break	## 0x01C00
lbl_8080AF4C:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t4, $at, lbl_8080AF64      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t7, $at, lbl_8080AF64      
	nop
	break	## 0x01800
lbl_8080AF64:
	andi    t7, t3, 0x0FFF             ## t7 = 00000000
	sll     t9, t7, 12                 
	or      t8, t6, s0                 ## t8 = 07000000
	or      t6, t8, t9                 ## t6 = F7000000
	sw      t6, 0x0004(t1)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	sll     v0, $ra,  1                
	andi    a0, v0, 0x00FF             ## a0 = 00000000
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      s6, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     $at, 0xF568                ## $at = F5680000
	sll     a0, a0, 16                 
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	lhu     t9, 0x0008(a3)             ## 0000001C
	addiu   a1, v0, 0x0006             ## a1 = 00000006
	sw      $zero, 0x0004(v1)          ## 00000004
	addiu   t6, t9, 0x0007             ## t6 = F3000007
	sra     t7, t6,  3                 
	andi    t8, t7, 0x01FF             ## t8 = 00000008
	sll     t9, t8,  9                 
	or      t6, t9, $at                ## t6 = F7680000
	sw      t6, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t8, 0xF200                 ## t8 = F2000000
	addiu   $ra, $ra, 0x0004           ## $ra = 00000004
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t0)             ## 000002C0
	sw      t8, 0x0000(v1)             ## 00000000
	lhu     t9, 0x000A(a3)             ## 0000001E
	sll     $ra, $ra, 16               
	andi    a1, a1, 0x00FF             ## a1 = 00000006
	addiu   t6, t9, 0xFFFF             ## t6 = F2FFFFFF
	lhu     t9, 0x0008(a3)             ## 0000001C
	sll     t7, t6,  2                 
	andi    t8, t7, 0x0FFF             ## t8 = 00000008
	addiu   t6, t9, 0xFFFF             ## t6 = F2FFFFFF
	sll     t7, t6,  2                 
	andi    t9, t7, 0x0FFF             ## t9 = 00000008
	sll     t6, t9, 12                 
	or      t7, t8, t6                 ## t7 = F2FFFFFF
	sw      t7, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	addiu   t8, v0, 0x0004             ## t8 = 00000004
	andi    t6, t8, 0x00FF             ## t6 = 00000004
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t0)             ## 000002C0
	sll     t7, t6,  8                 
	or      t9, a0, t7                 ## t9 = F2FFFFFF
	or      t8, t9, a1                 ## t8 = F2FFFFFF
	or      t6, t8, s0                 ## t6 = F7FFFFFF
	addiu   t8, v0, 0x0002             ## t8 = 00000002
	sll     t7, a1,  8                 
	sw      t6, 0x0000(v1)             ## 00000000
	andi    t6, t8, 0x00FF             ## t6 = 00000002
	or      t9, a0, t7                 ## t9 = F2FFFFFF
	or      t7, t9, t6                 ## t7 = F2FFFFFF
	sw      t7, 0x0004(v1)             ## 00000004
	slti    $at, t2, 0x0004            
	bne     $at, $zero, lbl_8080AE30   
	sra     $ra, $ra, 16               
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t9, %hi(var_808128F0)      ## t9 = 80810000
	addiu   t9, t9, %lo(var_808128F0)  ## t9 = 808128F0
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	sw      t9, 0x0004(v1)             ## 00000004
	sw      t5, 0x0000(v1)             ## 00000000
	lui     s4, %hi(var_80812D08)      ## s4 = 80810000
	addiu   s4, s4, %lo(var_80812D08)  ## s4 = 80812D08
	or      t2, $zero, $zero           ## t2 = 00000000
	or      $ra, $zero, $zero          ## $ra = 00000000
lbl_8080B090:
	lw      v1, 0x02C0(t0)             ## 000002C0
	sll     v0, t2,  2                 
	subu    v0, v0, t2                 
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      s6, 0x0000(v1)             ## 00000000
	lbu     t7, 0x140A(s5)             ## 8011B9DA
	sll     v0, v0,  2                 
	lui     t8, %hi(var_808137B0)      ## t8 = 80810000
	bne     t2, t7, lbl_8080B1B4       
	addu    a3, s7, v0                 
	lbu     t8, %lo(var_808137B0)(t8)  
	bnel    t8, $zero, lbl_8080B178    
	lw      v1, 0x02C0(t0)             ## 000002C0
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t8, %hi(var_80812D50)      ## t8 = 80810000
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t0)             ## 000002C0
	sw      s2, 0x0000(v1)             ## 00000000
	lh      t6, 0x4A60(s1)             ## 80814A60
	lh      t9, %lo(var_80812D50)(t8)  
	andi    t7, t6, 0x00FF             ## t7 = 00000008
	sll     t6, t9, 24                 
	lui     t9, %hi(var_80812D54)      ## t9 = 80810000
	lh      t9, %lo(var_80812D54)(t9)  
	or      t8, t7, t6                 ## t8 = 00000008
	andi    t7, t9, 0x00FF             ## t7 = 00000000
	sll     t6, t7, 16                 
	lui     t7, %hi(var_80812D58)      ## t7 = 80810000
	lh      t7, %lo(var_80812D58)(t7)  
	or      t9, t8, t6                 ## t9 = 00000008
	andi    t8, t7, 0x00FF             ## t8 = 00000000
	sll     t6, t8,  8                 
	or      t7, t9, t6                 ## t7 = 00000008
	sw      t7, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t9, %hi(var_80812D5C)      ## t9 = 80810000
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	sw      s3, 0x0000(v1)             ## 00000000
	lui     t8, %hi(var_80812D60)      ## t8 = 80810000
	lh      t8, %lo(var_80812D60)(t8)  
	lh      t6, %lo(var_80812D5C)(t9)  
	andi    t9, t8, 0x00FF             ## t9 = 00000000
	sll     t7, t6, 24                 
	sll     t6, t9, 16                 
	lui     t9, %hi(var_80812D64)      ## t9 = 80810000
	lh      t9, %lo(var_80812D64)(t9)  
	or      t8, t7, t6                 ## t8 = 00000008
	andi    t7, t9, 0x00FF             ## t7 = 00000000
	sll     t6, t7,  8                 
	or      t9, t8, t6                 ## t9 = 00000008
	ori     t7, t9, 0x00FF             ## t7 = 000000FF
	sw      t7, 0x0004(v1)             ## 00000004
	beq     $zero, $zero, lbl_8080B1F4 
	lw      v1, 0x02C0(t0)             ## 000002C0
	lw      v1, 0x02C0(t0)             ## 000002C0
lbl_8080B178:
	addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	sw      s2, 0x0000(v1)             ## 00000000
	lh      t6, 0x4A60(s1)             ## 80814A60
	andi    t9, t6, 0x00FF             ## t9 = 00000008
	or      t7, t9, $at                ## t7 = FFFFFF08
	sw      t7, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	sw      s8, 0x0004(v1)             ## 00000004
	sw      s3, 0x0000(v1)             ## 00000000
	beq     $zero, $zero, lbl_8080B1F4 
	lw      v1, 0x02C0(t0)             ## 000002C0
lbl_8080B1B4:
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     $at, 0x7878                ## $at = 78780000
	ori     $at, $at, 0x7800           ## $at = 78787800
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      s2, 0x0000(v1)             ## 00000000
	lh      t9, 0x4A60(s1)             ## 80814A60
	andi    t7, t9, 0x00FF             ## t7 = 00000008
	or      t8, t7, $at                ## t8 = 78787808
	sw      t8, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      s8, 0x0004(v1)             ## 00000004
	sw      s3, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
lbl_8080B1F4:
	lui     t7, 0xFD70                 ## t7 = FD700000
	sll     t8, t2,  2                 
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t0)             ## 000002C0
	sw      t7, 0x0000(v1)             ## 00000000
	lbu     t9, 0x1409(s5)             ## 8011B9D9
	subu    t8, t8, t2                 
	sll     t8, t8,  2                 
	addu    t6, s4, t8                 
	sll     t7, t9,  2                 
	addu    t8, t6, t7                 
	lw      t9, 0x0000(t8)             ## 78787808
	addiu   t2, t2, 0x0001             ## t2 = 00000001
	sll     t2, t2, 16                 
	sw      t9, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t7, 0xF570                 ## t7 = F5700000
	sra     t2, t2, 16                 
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      s0, 0x0004(v1)             ## 00000004
	sw      t7, 0x0000(v1)             ## 00000000
	lw      a1, 0x02C0(t0)             ## 000002C0
	lui     t9, 0xE600                 ## t9 = E6000000
	addiu   t3, $zero, 0x07FF          ## t3 = 000007FF
	addiu   t8, a1, 0x0008             ## t8 = 0000000E
	sw      t8, 0x02C0(t0)             ## 000002C0
	sw      $zero, 0x0004(a1)          ## 0000000A
	sw      t9, 0x0000(a1)             ## 00000006
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t7, 0xF300                 ## t7 = F3000000
	addu    t1, s4, v0                 
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      t7, 0x0000(v1)             ## 00000000
	lhu     t8, 0x000A(a3)             ## 0000001E
	lhu     a0, 0x0008(t1)             ## 00000008
	or      t5, v1, $zero              ## t5 = 00000000
	multu   t8, a0                     
	mflo    v1                         
	addiu   v1, v1, 0x0001             ## v1 = 00000001
	sra     v1, v1,  1                 
	addiu   v1, v1, 0xFFFF             ## v1 = 00000000
	slti    $at, v1, 0x07FF            
	beq     $at, $zero, lbl_8080B2B4   
	nop
	beq     $zero, $zero, lbl_8080B2B4 
	or      t3, v1, $zero              ## t3 = 00000000
lbl_8080B2B4:
	bgez    a0, lbl_8080B2C4           
	sra     v0, a0,  3                 
	addiu   $at, a0, 0x0007            ## $at = 00000007
	sra     v0, $at,  3                
lbl_8080B2C4:
	bgtz    v0, lbl_8080B2D4           
	or      a2, v0, $zero              ## a2 = 00000000
	beq     $zero, $zero, lbl_8080B2D4 
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
lbl_8080B2D4:
	bgtz    v0, lbl_8080B2E4           
	addiu   t9, a2, 0x07FF             ## t9 = 00000800
	beq     $zero, $zero, lbl_8080B2E8 
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
lbl_8080B2E4:
	or      t4, v0, $zero              ## t4 = 00000000
lbl_8080B2E8:
	div     $zero, t9, t4              
	mflo    t6                         
	andi    t7, t6, 0x0FFF             ## t7 = 00000008
	bne     t4, $zero, lbl_8080B300    
	nop
	break	## 0x01C00
lbl_8080B300:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t4, $at, lbl_8080B318      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t9, $at, lbl_8080B318      
	nop
	break	## 0x01800
lbl_8080B318:
	andi    t9, t3, 0x0FFF             ## t9 = 00000000
	sll     t6, t9, 12                 
	or      t8, t7, s0                 ## t8 = 07000008
	or      t7, t8, t6                 ## t7 = 07000008
	sw      t7, 0x0004(t5)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	sll     v0, $ra,  1                
	andi    a0, v0, 0x00FF             ## a0 = 00000000
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      s6, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     $at, 0xF568                ## $at = F5680000
	sll     a0, a0, 16                 
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	lhu     t6, 0x0008(t1)             ## 00000008
	addiu   a1, v0, 0x0006             ## a1 = 00000006
	sw      $zero, 0x0004(v1)          ## 00000004
	addiu   t7, t6, 0x0007             ## t7 = 0000000F
	sra     t9, t7,  3                 
	andi    t8, t9, 0x01FF             ## t8 = 00000008
	sll     t6, t8,  9                 
	or      t7, t6, $at                ## t7 = F5680008
	sw      t7, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t8, 0xF200                 ## t8 = F2000000
	addiu   $ra, $ra, 0x0004           ## $ra = 00000004
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t0)             ## 000002C0
	sw      t8, 0x0000(v1)             ## 00000000
	lhu     t6, 0x000A(a3)             ## 0000001E
	sll     $ra, $ra, 16               
	andi    a1, a1, 0x00FF             ## a1 = 00000006
	addiu   t7, t6, 0xFFFF             ## t7 = 00000007
	lhu     t6, 0x0008(t1)             ## 00000008
	sll     t9, t7,  2                 
	andi    t8, t9, 0x0FFF             ## t8 = 00000008
	addiu   t7, t6, 0xFFFF             ## t7 = 00000007
	sll     t9, t7,  2                 
	andi    t6, t9, 0x0FFF             ## t6 = 00000008
	sll     t7, t6, 12                 
	or      t9, t8, t7                 ## t9 = 0000000F
	sw      t9, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	addiu   t8, v0, 0x0004             ## t8 = 00000004
	andi    t7, t8, 0x00FF             ## t7 = 00000004
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sll     t9, t7,  8                 
	or      t6, a0, t9                 ## t6 = 0000000F
	or      t8, t6, a1                 ## t8 = 0000000F
	or      t7, t8, s0                 ## t7 = 0700000F
	addiu   t8, v0, 0x0002             ## t8 = 00000002
	sll     t9, a1,  8                 
	sw      t7, 0x0000(v1)             ## 00000000
	andi    t7, t8, 0x00FF             ## t7 = 00000002
	or      t6, a0, t9                 ## t6 = 0000000F
	or      t9, t6, t7                 ## t9 = 0000000F
	sw      t9, 0x0004(v1)             ## 00000004
	slti    $at, t2, 0x0004            
	bne     $at, $zero, lbl_8080B090   
	sra     $ra, $ra, 16               
	slti    $at, t2, 0x0006            
	beql    $at, $zero, lbl_8080B7B4   
	lw      v1, 0x02C0(t0)             ## 000002C0
lbl_8080B424:
	lw      v1, 0x02C0(t0)             ## 000002C0
	sll     v0, t2,  2                 
	subu    v0, v0, t2                 
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      s6, 0x0000(v1)             ## 00000000
	lbu     t6, 0x140C(s5)             ## 8011B9DC
	sll     v0, v0,  2                 
	lui     t9, %hi(var_808137B0)      ## t9 = 80810000
	addiu   t7, t6, 0x0004             ## t7 = 00000013
	bne     t2, t7, lbl_8080B54C       
	addu    a3, s7, v0                 
	lbu     t9, %lo(var_808137B0)(t9)  
	beql    t9, $zero, lbl_8080B510    
	lw      v1, 0x02C0(t0)             ## 000002C0
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t9, %hi(var_80812D50)      ## t9 = 80810000
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	sw      s2, 0x0000(v1)             ## 00000000
	lh      t6, 0x4A60(s1)             ## 80814A60
	lh      t8, %lo(var_80812D50)(t9)  
	andi    t7, t6, 0x00FF             ## t7 = 0000000F
	sll     t6, t8, 24                 
	lui     t8, %hi(var_80812D54)      ## t8 = 80810000
	lh      t8, %lo(var_80812D54)(t8)  
	or      t9, t7, t6                 ## t9 = 0000000F
	andi    t7, t8, 0x00FF             ## t7 = 00000000
	sll     t6, t7, 16                 
	lui     t7, %hi(var_80812D58)      ## t7 = 80810000
	lh      t7, %lo(var_80812D58)(t7)  
	or      t8, t9, t6                 ## t8 = 0000000F
	andi    t9, t7, 0x00FF             ## t9 = 00000000
	sll     t6, t9,  8                 
	or      t7, t8, t6                 ## t7 = 0000000F
	sw      t7, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t8, %hi(var_80812D5C)      ## t8 = 80810000
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t0)             ## 000002C0
	sw      s3, 0x0000(v1)             ## 00000000
	lui     t9, %hi(var_80812D60)      ## t9 = 80810000
	lh      t9, %lo(var_80812D60)(t9)  
	lh      t6, %lo(var_80812D5C)(t8)  
	andi    t8, t9, 0x00FF             ## t8 = 00000000
	sll     t7, t6, 24                 
	sll     t6, t8, 16                 
	lui     t8, %hi(var_80812D64)      ## t8 = 80810000
	lh      t8, %lo(var_80812D64)(t8)  
	or      t9, t7, t6                 ## t9 = 0000000F
	andi    t7, t8, 0x00FF             ## t7 = 00000000
	sll     t6, t7,  8                 
	or      t8, t9, t6                 ## t8 = 0000000F
	ori     t7, t8, 0x00FF             ## t7 = 000000FF
	sw      t7, 0x0004(v1)             ## 00000004
	beq     $zero, $zero, lbl_8080B58C 
	lw      v1, 0x02C0(t0)             ## 000002C0
	lw      v1, 0x02C0(t0)             ## 000002C0
lbl_8080B510:
	addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t0)             ## 000002C0
	sw      s2, 0x0000(v1)             ## 00000000
	lh      t6, 0x4A60(s1)             ## 80814A60
	andi    t8, t6, 0x00FF             ## t8 = 0000000F
	or      t7, t8, $at                ## t7 = FFFFFF0F
	sw      t7, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t0)             ## 000002C0
	sw      s8, 0x0004(v1)             ## 00000004
	sw      s3, 0x0000(v1)             ## 00000000
	beq     $zero, $zero, lbl_8080B58C 
	lw      v1, 0x02C0(t0)             ## 000002C0
lbl_8080B54C:
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     $at, 0x7878                ## $at = 78780000
	ori     $at, $at, 0x7800           ## $at = 78787800
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      s2, 0x0000(v1)             ## 00000000
	lh      t8, 0x4A60(s1)             ## 80814A60
	andi    t7, t8, 0x00FF             ## t7 = 0000000F
	or      t9, t7, $at                ## t9 = 7878780F
	sw      t9, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      s8, 0x0004(v1)             ## 00000004
	sw      s3, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
lbl_8080B58C:
	lui     t7, 0xFD70                 ## t7 = FD700000
	sll     t9, t2,  2                 
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	sw      t7, 0x0000(v1)             ## 00000000
	lbu     t8, 0x1409(s5)             ## 8011B9D9
	subu    t9, t9, t2                 
	sll     t9, t9,  2                 
	addu    t6, s4, t9                 
	sll     t7, t8,  2                 
	addu    t9, t6, t7                 
	lw      t8, 0x0000(t9)             ## 7878780F
	addiu   t2, t2, 0x0001             ## t2 = 00000002
	sll     t2, t2, 16                 
	sw      t8, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t7, 0xF570                 ## t7 = F5700000
	sra     t2, t2, 16                 
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      s0, 0x0004(v1)             ## 00000004
	sw      t7, 0x0000(v1)             ## 00000000
	lw      a1, 0x02C0(t0)             ## 000002C0
	lui     t8, 0xE600                 ## t8 = E6000000
	addiu   t3, $zero, 0x07FF          ## t3 = 000007FF
	addiu   t9, a1, 0x0008             ## t9 = 0000000E
	sw      t9, 0x02C0(t0)             ## 000002C0
	sw      $zero, 0x0004(a1)          ## 0000000A
	sw      t8, 0x0000(a1)             ## 00000006
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t7, 0xF300                 ## t7 = F3000000
	addu    t1, s4, v0                 
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      t7, 0x0000(v1)             ## 00000000
	lhu     t9, 0x000A(a3)             ## 0000001E
	lhu     a0, 0x0008(t1)             ## 00000008
	or      t5, v1, $zero              ## t5 = 00000000
	multu   t9, a0                     
	mflo    v1                         
	addiu   v1, v1, 0x0001             ## v1 = 00000001
	sra     v1, v1,  1                 
	addiu   v1, v1, 0xFFFF             ## v1 = 00000000
	slti    $at, v1, 0x07FF            
	beq     $at, $zero, lbl_8080B64C   
	nop
	beq     $zero, $zero, lbl_8080B64C 
	or      t3, v1, $zero              ## t3 = 00000000
lbl_8080B64C:
	bgez    a0, lbl_8080B65C           
	sra     v0, a0,  3                 
	addiu   $at, a0, 0x0007            ## $at = 00000007
	sra     v0, $at,  3                
lbl_8080B65C:
	bgtz    v0, lbl_8080B66C           
	or      a2, v0, $zero              ## a2 = 00000000
	beq     $zero, $zero, lbl_8080B66C 
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
lbl_8080B66C:
	bgtz    v0, lbl_8080B67C           
	addiu   t8, a2, 0x07FF             ## t8 = 00000800
	beq     $zero, $zero, lbl_8080B680 
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
lbl_8080B67C:
	or      t4, v0, $zero              ## t4 = 00000000
lbl_8080B680:
	div     $zero, t8, t4              
	mflo    t6                         
	andi    t7, t6, 0x0FFF             ## t7 = 00000008
	bne     t4, $zero, lbl_8080B698    
	nop
	break	## 0x01C00
lbl_8080B698:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t4, $at, lbl_8080B6B0      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t8, $at, lbl_8080B6B0      
	nop
	break	## 0x01800
lbl_8080B6B0:
	andi    t8, t3, 0x0FFF             ## t8 = 00000000
	sll     t6, t8, 12                 
	or      t9, t7, s0                 ## t9 = 07000008
	or      t7, t9, t6                 ## t7 = 07000008
	sw      t7, 0x0004(t5)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	sll     v0, $ra,  1                
	andi    a0, v0, 0x00FF             ## a0 = 00000000
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      s6, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     $at, 0xF568                ## $at = F5680000
	sll     a0, a0, 16                 
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t0)             ## 000002C0
	lhu     t6, 0x0008(t1)             ## 00000008
	addiu   a1, v0, 0x0006             ## a1 = 00000006
	sw      $zero, 0x0004(v1)          ## 00000004
	addiu   t7, t6, 0x0007             ## t7 = 0000000F
	sra     t8, t7,  3                 
	andi    t9, t8, 0x01FF             ## t9 = 00000008
	sll     t6, t9,  9                 
	or      t7, t6, $at                ## t7 = F5680008
	sw      t7, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t9, 0xF200                 ## t9 = F2000000
	addiu   $ra, $ra, 0x0004           ## $ra = 00000008
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	sw      t9, 0x0000(v1)             ## 00000000
	lhu     t6, 0x000A(a3)             ## 0000001E
	sll     $ra, $ra, 16               
	andi    a1, a1, 0x00FF             ## a1 = 00000006
	addiu   t7, t6, 0xFFFF             ## t7 = 00000007
	lhu     t6, 0x0008(t1)             ## 00000008
	sll     t8, t7,  2                 
	andi    t9, t8, 0x0FFF             ## t9 = 00000008
	addiu   t7, t6, 0xFFFF             ## t7 = 00000007
	sll     t8, t7,  2                 
	andi    t6, t8, 0x0FFF             ## t6 = 00000008
	sll     t7, t6, 12                 
	or      t8, t9, t7                 ## t8 = 0000000F
	sw      t8, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	addiu   t9, v0, 0x0004             ## t9 = 00000004
	andi    t7, t9, 0x00FF             ## t7 = 00000004
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sll     t8, t7,  8                 
	or      t6, a0, t8                 ## t6 = 0000000F
	or      t9, t6, a1                 ## t9 = 0000000F
	or      t7, t9, s0                 ## t7 = 0700000F
	addiu   t9, v0, 0x0002             ## t9 = 00000002
	sll     t8, a1,  8                 
	sw      t7, 0x0000(v1)             ## 00000000
	andi    t7, t9, 0x00FF             ## t7 = 00000002
	or      t6, a0, t8                 ## t6 = 0000000F
	or      t8, t6, t7                 ## t8 = 0000000F
	sw      t8, 0x0004(v1)             ## 00000004
	slti    $at, t2, 0x0006            
	bne     $at, $zero, lbl_8080B424   
	sra     $ra, $ra, 16               
	lw      v1, 0x02C0(t0)             ## 000002C0
lbl_8080B7B4:
	lui     t7, 0xFD70                 ## t7 = FD700000
	sll     v0, $ra,  1                
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      s6, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t8, 0x0103                 ## t8 = 01030000
	addiu   t8, t8, 0x8D00             ## t8 = 01028D00
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      t8, 0x0004(v1)             ## 00000004
	sw      t7, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t6, 0xF570                 ## t6 = F5700000
	andi    a0, v0, 0x00FF             ## a0 = 00000000
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t0)             ## 000002C0
	sw      s0, 0x0004(v1)             ## 00000004
	sw      t6, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t8, 0xE600                 ## t8 = E6000000
	lui     t6, 0xF300                 ## t6 = F3000000
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t8, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t7, 0x0717                 ## t7 = 07170000
	ori     t7, t7, 0xF156             ## t7 = 0717F156
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t0)             ## 000002C0
	sw      t7, 0x0004(v1)             ## 00000004
	sw      t6, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	sll     a0, a0, 16                 
	addiu   a1, v0, 0x0006             ## a1 = 00000006
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      s6, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t6, 0xF560                 ## t6 = F5600000
	ori     t6, t6, 0x0C00             ## t6 = F5600C00
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t6, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t9, 0x0017                 ## t9 = 00170000
	ori     t9, t9, 0xC03C             ## t9 = 0017C03C
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t0)             ## 000002C0
	lui     t8, 0xF200                 ## t8 = F2000000
	sw      t8, 0x0000(v1)             ## 00000000
	sw      t9, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     $at, 0x3737                ## $at = 37370000
	ori     $at, $at, 0x3700           ## $at = 37373700
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      s2, 0x0000(v1)             ## 00000000
	lh      t7, 0x4A60(s1)             ## 80814A60
	andi    a1, a1, 0x00FF             ## a1 = 00000006
	addiu   $ra, $ra, 0x0004           ## $ra = 0000000C
	andi    t8, t7, 0x00FF             ## t8 = 00000008
	or      t9, t8, $at                ## t9 = 37373708
	sw      t9, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t7, 0x2828                 ## t7 = 28280000
	ori     t7, t7, 0x28FF             ## t7 = 282828FF
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      t7, 0x0004(v1)             ## 00000004
	sw      s3, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	addiu   t9, v0, 0x0004             ## t9 = 00000004
	andi    t6, t9, 0x00FF             ## t6 = 00000004
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	sll     t7, t6,  8                 
	or      t8, a0, t7                 ## t8 = 282828FF
	or      t9, t8, a1                 ## t9 = 282828FF
	or      t6, t9, s0                 ## t6 = 2F2828FF
	addiu   t9, v0, 0x0002             ## t9 = 00000002
	sll     t7, a1,  8                 
	sw      t6, 0x0000(v1)             ## 00000000
	andi    t6, t9, 0x00FF             ## t6 = 00000002
	or      t8, a0, t7                 ## t8 = 282828FF
	or      t7, t8, t6                 ## t7 = 282828FF
	sw      t7, 0x0004(v1)             ## 00000004
	sll     $ra, $ra, 16               
	sra     $ra, $ra, 16               
	lw      v1, 0x02C0(t0)             ## 000002C0
	sll     v0, $ra,  1                
	andi    a0, v0, 0x00FF             ## a0 = 00000000
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      s6, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     $at, 0x1E1E                ## $at = 1E1E0000
	ori     $at, $at, 0x1E00           ## $at = 1E1E1E00
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	sw      s2, 0x0000(v1)             ## 00000000
	lh      t6, 0x4A60(s1)             ## 80814A60
	sll     a0, a0, 16                 
	addiu   a1, v0, 0x0006             ## a1 = 00000006
	andi    t7, t6, 0x00FF             ## t7 = 00000002
	or      t9, t7, $at                ## t9 = 1E1E1E02
	sw      t9, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	andi    a1, a1, 0x00FF             ## a1 = 00000006
	addiu   t7, v0, 0x0004             ## t7 = 00000004
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	sw      s8, 0x0004(v1)             ## 00000004
	sw      s3, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	andi    t9, t7, 0x00FF             ## t9 = 00000004
	sll     t8, t9,  8                 
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	or      t6, a0, t8                 ## t6 = 00000008
	or      t7, t6, a1                 ## t7 = 0000000E
	or      t9, t7, s0                 ## t9 = 0700000E
	addiu   t7, v0, 0x0002             ## t7 = 00000002
	sll     t8, a1,  8                 
	sw      t9, 0x0000(v1)             ## 00000000
	andi    t9, t7, 0x00FF             ## t9 = 00000002
	or      t6, a0, t8                 ## t6 = 00000008
	or      t8, t6, t9                 ## t8 = 0000000A
	sw      t8, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      s6, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     $at, 0x00FF                ## $at = 00FF0000
	ori     $at, $at, 0xFF00           ## $at = 00FFFF00
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      s2, 0x0000(v1)             ## 00000000
	lh      t9, 0x4A60(s1)             ## 80814A60
	andi    t8, t9, 0x00FF             ## t8 = 00000002
	or      t7, t8, $at                ## t7 = 00FFFF02
	sw      t7, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t8, 0xFD70                 ## t8 = FD700000
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      s3, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t7, 0x0103                 ## t7 = 01030000
	addiu   t7, t7, 0x8C00             ## t7 = 01028C00
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t0)             ## 000002C0
	sw      t7, 0x0004(v1)             ## 00000004
	sw      t8, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t9, 0xF570                 ## t9 = F5700000
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      s0, 0x0004(v1)             ## 00000004
	sw      t9, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t7, 0xE600                 ## t7 = E6000000
	lui     t9, 0xF300                 ## t9 = F3000000
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t7, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t8, 0x0707                 ## t8 = 07070000
	ori     t8, t8, 0xF080             ## t8 = 0707F080
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      t8, 0x0004(v1)             ## 00000004
	sw      t9, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      s6, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t9, 0xF560                 ## t9 = F5600000
	ori     t9, t9, 0x2000             ## t9 = F5602000
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t9, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t6, 0x003F                 ## t6 = 003F0000
	ori     t6, t6, 0xC004             ## t6 = 003FC004
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	lui     t7, 0xF200                 ## t7 = F2000000
	sw      t7, 0x0000(v1)             ## 00000000
	sw      t6, 0x0004(v1)             ## 00000004
	jal     func_800AA6EC              
	sw      t0, 0x0044($sp)            
	mtc1    $zero, $f12                ## $f12 = 0.00
	lui     $at, %hi(var_80813080)     ## $at = 80810000
	lwc1    $f14, %lo(var_80813080)($at) 
	mfc1    a2, $f12                   
	jal     func_800AA7F4              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lui     s1, 0xDA38                 ## s1 = DA380000
	ori     s1, s1, 0x0003             ## s1 = DA380003
	lw      t0, 0x0044($sp)            
	lw      s5, 0x0058($sp)            
	lw      s0, 0x02C0(t0)             ## 000002C0
	addiu   t9, s0, 0x0008             ## t9 = 07000008
	sw      t9, 0x02C0(t0)             ## 000002C0
	sw      s1, 0x0000(s0)             ## 07000000
	jal     func_800AB900              
	lw      a0, 0x0000(s5)             ## 8011A5D0
	lw      t0, 0x0044($sp)            
	lui     s2, 0x0100                 ## s2 = 01000000
	lui     s3, 0x0700                 ## s3 = 07000000
	ori     s3, s3, 0x0406             ## s3 = 07000406
	ori     s2, s2, 0x4008             ## s2 = 01004008
	sw      v0, 0x0004(s0)             ## 07000004
	addiu   s4, $zero, 0x0602          ## s4 = 00000602
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t7, %hi(var_80812AF0)      ## t7 = 80810000
	addiu   t7, t7, %lo(var_80812AF0)  ## t7 = 80812AF0
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	sw      t7, 0x0004(v1)             ## 00000004
	sw      s2, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      s4, 0x0004(v1)             ## 00000004
	sw      s3, 0x0000(v1)             ## 00000000
	jal     func_800AA724              
	nop
	jal     func_800AA6EC              
	nop
	mtc1    $zero, $f12                ## $f12 = 0.00
	lui     $at, %hi(var_80813084)     ## $at = 80810000
	lwc1    $f14, %lo(var_80813084)($at) 
	mfc1    a2, $f12                   
	jal     func_800AA7F4              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lw      t0, 0x0044($sp)            
	lw      s0, 0x02C0(t0)             ## 000002C0
	addiu   t9, s0, 0x0008             ## t9 = 07000008
	sw      t9, 0x02C0(t0)             ## 000002C0
	sw      s1, 0x0000(s0)             ## 07000000
	jal     func_800AB900              
	lw      a0, 0x0000(s5)             ## 8011A5D0
	lw      t0, 0x0044($sp)            
	sw      v0, 0x0004(s0)             ## 07000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t7, %hi(var_80812B30)      ## t7 = 80810000
	addiu   t7, t7, %lo(var_80812B30)  ## t7 = 80812B30
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	sw      t7, 0x0004(v1)             ## 00000004
	sw      s2, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      s4, 0x0004(v1)             ## 00000004
	sw      s3, 0x0000(v1)             ## 00000000
	jal     func_800AA724              
	nop
	jal     func_800AA6EC              
	nop
	mtc1    $zero, $f12                ## $f12 = 0.00
	lui     $at, %hi(var_80813088)     ## $at = 80810000
	lwc1    $f14, %lo(var_80813088)($at) 
	addiu   a2, $zero, 0x0000          ## a2 = 00000000
	jal     func_800AA7F4              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lw      t0, 0x0044($sp)            
	lw      s0, 0x02C0(t0)             ## 000002C0
	addiu   t9, s0, 0x0008             ## t9 = 07000008
	sw      t9, 0x02C0(t0)             ## 000002C0
	sw      s1, 0x0000(s0)             ## 07000000
	jal     func_800AB900              
	lw      a0, 0x0000(s5)             ## 8011A5D0
	lw      t0, 0x0044($sp)            
	sw      v0, 0x0004(s0)             ## 07000004
	lw      v1, 0x02C0(t0)             ## 000002C0
	lui     t7, %hi(var_80812B70)      ## t7 = 80810000
	addiu   t7, t7, %lo(var_80812B70)  ## t7 = 80812B70
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t0)             ## 000002C0
	sw      t7, 0x0004(v1)             ## 00000004
	sw      s2, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(t0)             ## 000002C0
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t0)             ## 000002C0
	sw      s4, 0x0004(v1)             ## 00000004
	sw      s3, 0x0000(v1)             ## 00000000
	jal     func_800AA724              
	nop
	lw      $ra, 0x003C($sp)           
	lw      s0, 0x0018($sp)            
	lw      s1, 0x001C($sp)            
	lw      s2, 0x0020($sp)            
	lw      s3, 0x0024($sp)            
	lw      s4, 0x0028($sp)            
	lw      s5, 0x002C($sp)            
	lw      s6, 0x0030($sp)            
	lw      s7, 0x0034($sp)            
	lw      s8, 0x0038($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0058           ## $sp = 00000000


func_8080BCA0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	jal     func_8080A900              
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8080BCC0:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	mtc1    a1, $f12                   ## $f12 = 0.00
	mtc1    a2, $f14                   ## $f14 = 0.00
	mtc1    $zero, $f0                 ## $f0 = 0.00
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0040($sp)            
	sw      a3, 0x004C($sp)            
	lw      a0, 0x0040($sp)            
	lui     $at, 0x3F80                ## $at = 3F800000
	lwc1    $f4, 0x004C($sp)           
	mtc1    $at, $f6                   ## $f6 = 1.00
	addiu   a0, a0, 0x00B0             ## a0 = 000000B0
	swc1    $f12, 0x0034($sp)          
	swc1    $f14, 0x0038($sp)          
	swc1    $f0, 0x0030($sp)           
	swc1    $f0, 0x002C($sp)           
	swc1    $f0, 0x0028($sp)           
	swc1    $f0, 0x0024($sp)           
	swc1    $f0, 0x001C($sp)           
	sw      a0, 0x0018($sp)            
	addiu   a1, $sp, 0x0034            ## a1 = FFFFFFF4
	addiu   a2, $sp, 0x0028            ## a2 = FFFFFFE8
	addiu   a3, $sp, 0x001C            ## a3 = FFFFFFDC
	swc1    $f4, 0x003C($sp)           
	jal     func_80091918              
	swc1    $f6, 0x0020($sp)           
	lw      a0, 0x0018($sp)            
	jal     func_80091F94              
	addiu   a1, $zero, 0x007F          ## a1 = 0000007F
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_8080BD44:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      a2, 0x0028($sp)            
	sw      a3, 0x002C($sp)            
	sll     a3, a3, 16                 
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	sra     a3, a3, 16                 
	lui     v1, 0x0700                 ## v1 = 07000000
	or      t0, a0, $zero              ## t0 = 00000000
	lui     t6, 0xFD70                 ## t6 = FD700000
	sw      t6, 0x0000(t0)             ## 00000000
	sw      a1, 0x0004(t0)             ## 00000004
	addiu   a0, a0, 0x0008             ## a0 = 00000008
	or      t1, a0, $zero              ## t1 = 00000008
	lui     t7, 0xF570                 ## t7 = F5700000
	sw      t7, 0x0000(t1)             ## 00000008
	sw      v1, 0x0004(t1)             ## 0000000C
	addiu   a0, a0, 0x0008             ## a0 = 00000010
	or      t2, a0, $zero              ## t2 = 00000010
	lui     t8, 0xE600                 ## t8 = E6000000
	sw      t8, 0x0000(t2)             ## 00000010
	sw      $zero, 0x0004(t2)          ## 00000014
	addiu   a0, a0, 0x0008             ## a0 = 00000018
	multu   a2, a3                     
	or      v0, a0, $zero              ## v0 = 00000018
	lui     t9, 0xF300                 ## t9 = F3000000
	sw      t9, 0x0000(v0)             ## 00000018
	addiu   a0, a0, 0x0008             ## a0 = 00000020
	or      t0, a2, $zero              ## t0 = 00000000
	addiu   a1, $zero, 0x07FF          ## a1 = 000007FF
	mflo    t3                         
	addiu   t3, t3, 0x0001             ## t3 = 00000001
	sra     t3, t3,  1                 
	addiu   t3, t3, 0xFFFF             ## t3 = 00000000
	slti    $at, t3, 0x07FF            
	beq     $at, $zero, lbl_8080BDE0   
	nop
	beq     $zero, $zero, lbl_8080BDE0 
	or      a1, t3, $zero              ## a1 = 00000000
lbl_8080BDE0:
	bgez    t0, lbl_8080BDF0           
	sra     t1, t0,  3                 
	addiu   $at, t0, 0x0007            ## $at = 00000007
	sra     t1, $at,  3                
lbl_8080BDF0:
	bgtz    t1, lbl_8080BE00           
	or      t2, t1, $zero              ## t2 = 00000008
	beq     $zero, $zero, lbl_8080BE00 
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
lbl_8080BE00:
	bgtz    t1, lbl_8080BE10           
	addiu   t6, t2, 0x07FF             ## t6 = 00000800
	beq     $zero, $zero, lbl_8080BE14 
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
lbl_8080BE10:
	or      t3, t1, $zero              ## t3 = 00000008
lbl_8080BE14:
	div     $zero, t6, t3              
	mflo    t7                         
	andi    t8, t7, 0x0FFF             ## t8 = 00000000
	bne     t3, $zero, lbl_8080BE2C    
	nop
	break	## 0x01C00
lbl_8080BE2C:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t3, $at, lbl_8080BE44      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t6, $at, lbl_8080BE44      
	nop
	break	## 0x01800
lbl_8080BE44:
	andi    t6, a1, 0x0FFF             ## t6 = 00000000
	sll     t7, t6, 12                 
	or      t9, t8, v1                 ## t9 = 07000000
	or      t8, t9, t7                 ## t8 = F7700000
	sw      t8, 0x0004(v0)             ## 0000001C
	or      t1, a0, $zero              ## t1 = 00000020
	lui     t6, 0xE700                 ## t6 = E7000000
	sw      t6, 0x0000(t1)             ## 00000020
	sw      $zero, 0x0004(t1)          ## 00000024
	addiu   a0, a0, 0x0008             ## a0 = 00000028
	addiu   t9, t0, 0x0007             ## t9 = 00000007
	sra     t7, t9,  3                 
	andi    t8, t7, 0x01FF             ## t8 = 00000000
	or      t4, a0, $zero              ## t4 = 00000028
	sll     t6, t8,  9                 
	lui     $at, 0xF568                ## $at = F5680000
	or      t9, t6, $at                ## t9 = F7680000
	sw      t9, 0x0000(t4)             ## 00000028
	sw      $zero, 0x0004(t4)          ## 0000002C
	addiu   a0, a0, 0x0008             ## a0 = 00000030
	addiu   t8, a2, 0xFFFF             ## t8 = FFFFFFFF
	sll     t6, t8,  2                 
	andi    t9, t6, 0x0FFF             ## t9 = 00000000
	or      t5, a0, $zero              ## t5 = 00000030
	lui     t7, 0xF200                 ## t7 = F2000000
	sw      t7, 0x0000(t5)             ## 00000030
	addiu   t8, a3, 0xFFFF             ## t8 = FFFFFFFF
	sll     t6, t8,  2                 
	sll     t7, t9, 12                 
	andi    t9, t6, 0x0FFF             ## t9 = 00000000
	or      t8, t7, t9                 ## t8 = F2000000
	sw      t8, 0x0004(t5)             ## 00000034
	addiu   a0, a0, 0x0008             ## a0 = 00000038
	lh      a1, 0x0032($sp)            
	sw      a0, 0x0000($sp)            
	addiu   a0, a0, 0x0008             ## a0 = 00000040
	sll     a1, a1,  1                 
	addiu   t6, a1, 0x0004             ## t6 = 00000004
	andi    t7, t6, 0x00FF             ## t7 = 00000004
	andi    a2, a1, 0x00FF             ## a2 = 00000000
	sll     a2, a2, 16                 
	sll     t9, t7,  8                 
	or      t8, a2, t9                 ## t8 = 00000000
	addiu   a3, a1, 0x0006             ## a3 = 00000006
	lw      t9, 0x0000($sp)            
	andi    a3, a3, 0x00FF             ## a3 = 00000006
	or      t6, t8, a3                 ## t6 = 00000006
	or      t7, t6, v1                 ## t7 = 07000006
	sw      t7, 0x0000(t9)             ## 00000000
	addiu   t7, a1, 0x0002             ## t7 = 00000002
	andi    t9, t7, 0x00FF             ## t9 = 00000002
	lw      t7, 0x0000($sp)            
	sll     t8, a3,  8                 
	or      t6, a2, t8                 ## t6 = 00000000
	or      t8, t6, t9                 ## t8 = 00000002
	sw      t8, 0x0004(t7)             ## 00000006
	or      v0, a0, $zero              ## v0 = 00000040
	jr      $ra                        
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_8080BF30:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lui     t6, 0x0002                 ## t6 = 00020000
	addu    t6, t6, a0                 
	lh      t6, -0x35D2(t6)            ## 0001CA2E
	lui     $at, 0x0002                ## $at = 00020000
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	bne     t6, $zero, lbl_8080BF78    
	addu    $at, $at, a0               
	sh      v0, -0x35D2($at)           ## 0001CA2E
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      $zero, -0x35D0($at)        ## 0001CA30
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      v0, -0x35A8($at)           ## 0001CA58
	jal     func_80090720              
	addiu   a1, a0, 0x01D8             ## a1 = 000001D8
lbl_8080BF78:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8080BF88:
	sw      a0, 0x0000($sp)            
	jr      $ra                        
	nop


func_8080BF94:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	lui     t1, 0x0001                 ## t1 = 00010000
	lui     t2, 0x8012                 ## t2 = 80120000
	addiu   t2, t2, 0xBA00             ## t2 = 8011BA00
	ori     t1, t1, 0x8000             ## t1 = 00018000
	sw      s3, 0x0014($sp)            
	sw      s2, 0x0010($sp)            
	sw      s1, 0x000C($sp)            
	sw      s0, 0x0008($sp)            
	lw      t7, 0x0000(t2)             ## 8011BA00
	addu    v1, a0, t1                 
	lh      t6, 0x4A60(v1)             ## 00004A60
	lh      t8, 0x0F16(t7)             ## 00000F16
	lh      t7, 0x4A64(v1)             ## 00004A64
	lui     $at, 0x0002                ## $at = 00020000
	addu    t9, t6, t8                 
	sh      t9, 0x4A60(v1)             ## 00004A60
	lw      t6, 0x0000(t2)             ## 8011BA00
	addu    $at, $at, a0               
	lui     t4, 0x8010                 ## t4 = 80100000
	lh      t8, 0x0F18(t6)             ## 00000F18
	addiu   t4, t4, 0xBF00             ## t4 = 800FBF00
	or      a1, $zero, $zero           ## a1 = 00000000
	addu    t9, t7, t8                 
	sh      t9, -0x359C($at)           ## 0001CA64
	addiu   v0, a0, 0x01D8             ## v0 = 000001D8
	addiu   s3, $zero, 0x00FF          ## s3 = 000000FF
	addiu   s2, $zero, 0x0041          ## s2 = 00000041
	addiu   s1, $zero, 0x0044          ## s1 = 00000044
	addiu   s0, $zero, 0x004C          ## s0 = 0000004C
	addiu   t5, $zero, 0x0045          ## t5 = 00000045
	addiu   t3, $zero, 0x005A          ## t3 = 0000005A
	lh      t7, 0x4A64(v1)             ## 00004A64
lbl_8080C018:
	sll     a2, a1,  1                 
	addu    t6, a0, a2                 
	addu    a3, t6, t1                 
	sh      t7, 0x4A66(a3)             ## 00004A66
	addu    t8, t4, a2                 
	lhu     t9, 0x0000(t8)             ## 00000000
	lw      t6, 0x0000(v0)             ## 000001D8
	addiu   a1, a1, 0x0001             ## a1 = 00000001
	sll     a1, a1, 16                 
	addu    t0, t9, t6                 
	lbu     t7, 0x001C(t0)             ## 0000001C
	sra     a1, a1, 16                 
	beql    t3, t7, lbl_8080C090       
	lh      a2, 0x4A64(v1)             ## 00004A64
	lbu     t8, 0x001D(t0)             ## 0000001D
	beql    t5, t8, lbl_8080C090       
	lh      a2, 0x4A64(v1)             ## 00004A64
	lbu     t9, 0x001E(t0)             ## 0000001E
	beql    s0, t9, lbl_8080C090       
	lh      a2, 0x4A64(v1)             ## 00004A64
	lbu     t6, 0x001F(t0)             ## 0000001F
	beql    s1, t6, lbl_8080C090       
	lh      a2, 0x4A64(v1)             ## 00004A64
	lbu     t7, 0x0020(t0)             ## 00000020
	beql    s2, t7, lbl_8080C090       
	lh      a2, 0x4A64(v1)             ## 00004A64
	lbu     t8, 0x0021(t0)             ## 00000021
	bnel    t3, t8, lbl_8080C0C4       
	slti    $at, a1, 0x0003            
	lh      a2, 0x4A64(v1)             ## 00004A64
lbl_8080C090:
	lh      t9, 0x4A78(a3)             ## 00004A78
	sh      a2, 0x4A72(a3)             ## 00004A72
	sh      a2, 0x4A6C(a3)             ## 00004A6C
	lw      t6, 0x0000(t2)             ## 8011BA00
	lh      t7, 0x0F16(t6)             ## 00000F16
	addu    t8, t9, t7                 
	sh      t8, 0x4A78(a3)             ## 00004A78
	lh      t6, 0x4A78(a3)             ## 00004A78
	slti    $at, t6, 0x00FF            
	bnel    $at, $zero, lbl_8080C0C4   
	slti    $at, a1, 0x0003            
	sh      s3, 0x4A78(a3)             ## 00004A78
	slti    $at, a1, 0x0003            
lbl_8080C0C4:
	bnel    $at, $zero, lbl_8080C018   
	lh      t7, 0x4A64(v1)             ## 00004A64
	lh      v0, 0x4A64(v1)             ## 00004A64
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      v0, -0x3574($at)           ## 0001CA8C
	sh      v0, 0x4A84(v1)             ## 00004A84
	sh      v0, 0x4A86(v1)             ## 00004A86
	lw      s0, 0x0008($sp)            
	lw      s1, 0x000C($sp)            
	lw      s2, 0x0010($sp)            
	lw      s3, 0x0014($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_8080C0FC:
	sw      a0, 0x0000($sp)            
	andi    a0, a0, 0xFFFF             ## a0 = 00000000
	sh      $zero, 0x0000(a1)          ## 00000000
	sh      $zero, 0x0000(a2)          ## 00000000
	sh      a0, 0x0000(a3)             ## 00000000
lbl_8080C110:
	lh      v0, 0x0000(a3)             ## 00000000
	addiu   t6, v0, 0xFF9C             ## t6 = FFFFFF9C
	bltzl   t6, lbl_8080C140           
	addiu   t1, v0, 0xFFF6             ## t1 = FFFFFFF6
	lh      t7, 0x0000(a1)             ## 00000000
	addiu   t8, t7, 0x0001             ## t8 = 00000001
	sh      t8, 0x0000(a1)             ## 00000000
	lh      t9, 0x0000(a3)             ## 00000000
	addiu   t0, t9, 0xFF9C             ## t0 = FFFFFF9C
	beq     $zero, $zero, lbl_8080C110 
	sh      t0, 0x0000(a3)             ## 00000000
lbl_8080C13C:
	addiu   t1, v0, 0xFFF6             ## t1 = FFFFFFF6
lbl_8080C140:
	bltz    t1, lbl_8080C168           
	nop
	lh      t2, 0x0000(a2)             ## 00000000
	addiu   t3, t2, 0x0001             ## t3 = 00000001
	sh      t3, 0x0000(a2)             ## 00000000
	lh      t4, 0x0000(a3)             ## 00000000
	addiu   t5, t4, 0xFFF6             ## t5 = FFFFFFF6
	sh      t5, 0x0000(a3)             ## 00000000
	beq     $zero, $zero, lbl_8080C13C 
	lh      v0, 0x0000(a3)             ## 00000000
lbl_8080C168:
	jr      $ra                        
	nop


func_8080C170:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	jal     func_8080BF94              
	sw      a0, 0x0018($sp)            
	lui     v1, %hi(var_80812D94)      ## v1 = 80810000
	addiu   v1, v1, %lo(var_80812D94)  ## v1 = 80812D94
	lh      t6, 0x0000(v1)             ## 80812D94
	lw      a0, 0x0018($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addiu   t7, t6, 0xFFD8             ## t7 = FFFFFFD8
	sh      t7, 0x0000(v1)             ## 80812D94
	addu    v0, a0, $at                
	lh      t8, 0x4AB2(v0)             ## 00004AB2
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t9, t8, 0xFFEC             ## t9 = FFFFFFEC
	sh      t9, -0x354E($at)           ## 0001CAB2
	lh      t0, 0x4AB2(v0)             ## 00004AB2
	addiu   t1, $zero, 0xFFA2          ## t1 = FFFFFFA2
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	slti    $at, t0, 0xFFA3            
	beq     $at, $zero, lbl_8080C1E8   
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t1, -0x354E($at)           ## 0001CAB2
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t2, -0x35D0($at)           ## 0001CA30
	sh      $zero, 0x0000(v1)          ## 80812D94
lbl_8080C1E8:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8080C1F8:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	lui     t7, 0x8012                 ## t7 = 80120000
	lw      t7, -0x4600(t7)            ## 8011BA00
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    v0, a0, $at                
	lh      t6, 0x4A90(v0)             ## 00004A90
	lh      t8, 0x0F16(t7)             ## 80120F16
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addu    t9, t6, t8                 
	sh      t9, -0x3570($at)           ## 0001CA90
	sw      a0, 0x0020($sp)            
	jal     func_8080BF94              
	sw      v0, 0x0018($sp)            
	lw      v0, 0x0018($sp)            
	lw      a0, 0x0020($sp)            
	addiu   v1, $zero, 0x00FF          ## v1 = 000000FF
	lh      t0, 0x4A60(v0)             ## 00004A60
	addiu   t1, $zero, 0x00C8          ## t1 = 000000C8
	addiu   t2, $zero, 0x0002          ## t2 = 00000002
	slti    $at, t0, 0x00FF            
	bne     $at, $zero, lbl_8080C280   
	lui     $at, 0x0002                ## $at = 00020000
	sh      v1, 0x4A60(v0)             ## 00004A60
	addu    $at, $at, a0               
	sh      v1, -0x3570($at)           ## 0001CA90
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t1, -0x359C($at)           ## 0001CA64
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t2, -0x35D0($at)           ## 0001CA30
lbl_8080C280:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8080C290:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	lhu     t6, 0x0020(s0)             ## 00000020
	addiu   $at, $zero, 0x1000         ## $at = 00001000
	lui     a3, 0x0001                 ## a3 = 00010000
	andi    t7, t6, 0x1000             ## t7 = 00000000
	beq     t7, $at, lbl_8080C2C8      
	ori     a3, a3, 0x8000             ## a3 = 00018000
	lhu     t8, 0x0020(s0)             ## 00000020
	ori     $at, $zero, 0x8000         ## $at = 00008000
	andi    t9, t8, 0x8000             ## t9 = 00000000
	bne     t9, $at, lbl_8080C6AC      
lbl_8080C2C8:
	addu    v1, s0, a3                 
	lh      a2, 0x4A2A(v1)             ## 00004A2A
	lui     t0, 0x8010                 ## t0 = 80100000
	addiu   t0, t0, 0xBF00             ## t0 = 800FBF00
	slti    $at, a2, 0x0003            
	beq     $at, $zero, lbl_8080C55C   
	sll     a0, a2,  1                 
	addu    t5, t0, a0                 
	lhu     t6, 0x0000(t5)             ## 00000000
	lw      t7, 0x01D8(s0)             ## 000001D8
	addiu   a1, $zero, 0x005A          ## a1 = 0000005A
	addu    v0, t6, t7                 
	lbu     t8, 0x001C(v0)             ## 0000001C
	beql    a1, t8, lbl_8080C454       
	addu    t7, s0, a0                 
	lbu     t9, 0x001D(v0)             ## 0000001D
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
	beql    t1, t9, lbl_8080C454       
	addu    t7, s0, a0                 
	lbu     t5, 0x001E(v0)             ## 0000001E
	addiu   t2, $zero, 0x004C          ## t2 = 0000004C
	beql    t2, t5, lbl_8080C454       
	addu    t7, s0, a0                 
	lbu     t6, 0x001F(v0)             ## 0000001F
	addiu   t3, $zero, 0x0044          ## t3 = 00000044
	beql    t3, t6, lbl_8080C454       
	addu    t7, s0, a0                 
	lbu     t7, 0x0020(v0)             ## 00000020
	addiu   t4, $zero, 0x0041          ## t4 = 00000041
	beql    t4, t7, lbl_8080C454       
	addu    t7, s0, a0                 
	lbu     t8, 0x0021(v0)             ## 00000021
	lui     t9, 0x8010                 ## t9 = 80100000
	addiu   t9, t9, 0x43A8             ## t9 = 801043A8
	beq     a1, t8, lbl_8080C450       
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483B          ## a0 = 0000483B
	sw      t9, 0x0014($sp)            
	jal     func_800C806C              
	sw      v1, 0x002C($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	lw      v1, 0x002C($sp)            
	addu    $at, $at, s0               
	addiu   t5, $zero, 0x0020          ## t5 = 00000020
	sh      t5, -0x35D0($at)           ## 0001CA30
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t6, $zero, 0x0063          ## t6 = 00000063
	sh      t6, -0x3548($at)           ## 0001CAB8
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x3546($at)        ## 0001CABA
	lui     t7, 0x8012                 ## t7 = 80120000
	lbu     t7, -0x4627(t7)            ## 8011B9D9
	lui     a1, %hi(var_80812DD8)      ## a1 = 80810000
	addiu   t9, $zero, 0x0078          ## t9 = 00000078
	beq     t7, $zero, lbl_8080C3D4    
	addiu   a1, a1, %lo(var_80812DD8)  ## a1 = 80812DD8
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	sh      t8, -0x3546($at)           ## 0001CABA
lbl_8080C3D4:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x3540($at)        ## 0001CAC0
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x353E($at)        ## 0001CAC2
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x3542($at)        ## 0001CABE
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x3544($at)        ## 0001CABC
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x353C($at)        ## 0001CAC4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t9, -0x3550($at)           ## 0001CAB0
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x3572($at)        ## 0001CA8E
	lh      t5, 0x4A2A(v1)             ## 00004A2A
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0xC9F4           ## $at = 0001C9F4
	sll     t6, t5,  3                 
	addu    a0, s0, t6                 
	addu    a0, a0, $at                
	jal     func_80057030              
	addiu   a2, $zero, 0x0008          ## a2 = 00000008
	beq     $zero, $zero, lbl_8080CB5C 
	lw      $ra, 0x0024($sp)           
lbl_8080C450:
	addu    t7, s0, a0                 
lbl_8080C454:
	addu    t8, t7, a3                 
	lh      v0, 0x4A20(t8)             ## 00004A20
	lbu     t9, 0x49EC(v1)             ## 000049EC
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	bne     t9, v0, lbl_8080C4E8       
	addiu   a0, $zero, 0x483B          ## a0 = 0000483B
	lui     t5, 0x8010                 ## t5 = 80100000
	addiu   t5, t5, 0x43A8             ## t5 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t5, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      a3, 0x0010($sp)            
	jal     func_800C806C              
	sw      v1, 0x002C($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	lw      v1, 0x002C($sp)            
	addu    $at, $at, s0               
	addiu   t6, $zero, 0x0008          ## t6 = 00000008
	sh      t6, -0x35BE($at)           ## 0001CA42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x35CA($at)        ## 0001CA36
	lh      t7, 0x4A2A(v1)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t7, -0x35C8($at)           ## 0001CA38
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	sh      t8, -0x35D2($at)           ## 0001CA2E
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	beq     $zero, $zero, lbl_8080CB58 
	sh      t9, -0x35A8($at)           ## 0001CA58
lbl_8080C4E8:
	bne     v0, $zero, lbl_8080C524    
	lui     t6, 0x8012                 ## t6 = 80120000
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t5, 0x8010                 ## t5 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t5, t5, 0x43A8             ## t5 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t5, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483D          ## a0 = 0000483D
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_8080CB5C 
	lw      $ra, 0x0024($sp)           
lbl_8080C524:
	lbu     t6, 0x1212(t6)             ## 00001212
	beql    t6, $zero, lbl_8080CB5C    
	lw      $ra, 0x0024($sp)           
	jal     func_801C7268              
	nop
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	sw      t7, 0x0010($sp)            
	or      a0, $zero, $zero           ## a0 = 00000000
	addiu   a1, $zero, 0x0057          ## a1 = 00000057
	or      a2, $zero, $zero           ## a2 = 00000000
	jal     func_800C6B54              
	addiu   a3, $zero, 0x0007          ## a3 = 00000007
	beq     $zero, $zero, lbl_8080CB5C 
	lw      $ra, 0x0024($sp)           
lbl_8080C55C:
	lh      t8, 0x4A52(v1)             ## 00004A52
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	lui     a3, 0x8010                 ## a3 = 80100000
	bne     t8, $at, lbl_8080C680      
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t9, 0x8010                 ## t9 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t9, t9, 0x43A8             ## t9 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t9, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483B          ## a0 = 0000483B
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_800C806C              
	sw      v1, 0x002C($sp)            
	lw      v1, 0x002C($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	lh      t5, 0x4A30(v1)             ## 00004A30
	addiu   v0, $zero, 0x0003          ## v0 = 00000003
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sh      t5, -0x35CE($at)           ## 0001CA32
	lh      a2, 0x4A2A(v1)             ## 00004A2A
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	bne     v0, a2, lbl_8080C5E8       
	nop
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      v0, -0x35D0($at)           ## 0001CA30
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     $zero, $zero, lbl_8080C66C 
	sh      t6, -0x35A8($at)           ## 0001CA58
lbl_8080C5E8:
	bne     a2, $at, lbl_8080C614      
	addiu   t9, $zero, 0x0024          ## t9 = 00000024
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t7, $zero, 0x0014          ## t7 = 00000014
	sh      t7, -0x35D0($at)           ## 0001CA30
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t8, $zero, 0x0006          ## t8 = 00000006
	beq     $zero, $zero, lbl_8080C66C 
	sh      t8, -0x35A8($at)           ## 0001CA58
lbl_8080C614:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t9, -0x35D0($at)           ## 0001CA30
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x3548($at)        ## 0001CAB8
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x3540($at)        ## 0001CAC0
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x353E($at)        ## 0001CAC2
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x3544($at)        ## 0001CABC
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x353C($at)        ## 0001CAC4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t5, $zero, 0x0078          ## t5 = 00000078
	sh      t5, -0x3550($at)           ## 0001CAB0
lbl_8080C66C:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t6, $zero, 0x0008          ## t6 = 00000008
	beq     $zero, $zero, lbl_8080CB58 
	sh      t6, -0x35BE($at)           ## 0001CA42
lbl_8080C680:
	lui     t7, 0x8010                 ## t7 = 80100000
	addiu   t7, t7, 0x43A8             ## t7 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t7, 0x0014($sp)            
	addiu   a0, $zero, 0x483D          ## a0 = 0000483D
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_800C806C              
	sw      a3, 0x0010($sp)            
	beq     $zero, $zero, lbl_8080CB5C 
	lw      $ra, 0x0024($sp)           
lbl_8080C6AC:
	lui     a3, 0x0001                 ## a3 = 00010000
	ori     a3, a3, 0x8000             ## a3 = 00018000
	addu    v1, s0, a3                 
	lh      v0, 0x4AAE(v1)             ## 00004AAE
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	bltz    v0, lbl_8080C6D4           
	subu    a0, $zero, v0              
	beq     $zero, $zero, lbl_8080C6D4 
	or      a0, v0, $zero              ## a0 = 00000000
lbl_8080C6D4:
	slti    $at, a0, 0x001F            
	bne     $at, $zero, lbl_8080C774   
	addiu   a0, $zero, 0x4839          ## a0 = 00004839
	lui     t8, 0x8010                 ## t8 = 80100000
	addiu   t8, t8, 0x43A8             ## t8 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t8, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      a3, 0x0010($sp)            
	jal     func_800C806C              
	sw      v1, 0x002C($sp)            
	lw      v1, 0x002C($sp)            
	lh      t9, 0x4AAE(v1)             ## 00004AAE
	slti    $at, t9, 0x001F            
	bnel    $at, $zero, lbl_8080C74C   
	lh      t9, 0x4A2A(v1)             ## 00004A2A
	lh      t5, 0x4A2A(v1)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t6, t5, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, -0x35D6($at)           ## 0001CA2A
	lh      t7, 0x4A2A(v1)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	bgez    t7, lbl_8080C774           
	addiu   t8, $zero, 0x0005          ## t8 = 00000005
	beq     $zero, $zero, lbl_8080C774 
	sh      t8, -0x35D6($at)           ## 0001CA2A
	lh      t9, 0x4A2A(v1)             ## 00004A2A
lbl_8080C74C:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t5, t9, 0x0001             ## t5 = 00000001
	sh      t5, -0x35D6($at)           ## 0001CA2A
	lh      t6, 0x4A2A(v1)             ## 00004A2A
	slti    $at, t6, 0x0006            
	bne     $at, $zero, lbl_8080C774   
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x35D6($at)        ## 0001CA2A
lbl_8080C774:
	lh      a2, 0x4A2A(v1)             ## 00004A2A
	addiu   v0, $zero, 0x0003          ## v0 = 00000003
	lui     t0, 0x8010                 ## t0 = 80100000
	bne     v0, a2, lbl_8080C9F0       
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	addiu   t0, t0, 0xBF00             ## t0 = 800FBF00
	lhu     t7, 0x0000(t0)             ## 800FBF00
	lw      a0, 0x01D8(s0)             ## 000001D8
	addiu   a1, $zero, 0x005A          ## a1 = 0000005A
	addu    v1, t7, a0                 
	lbu     a3, 0x001C(v1)             ## 0000001C
	beql    a1, a3, lbl_8080C8C0       
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
	lbu     t8, 0x001D(v1)             ## 0000001D
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
	beql    t1, t8, lbl_8080C8C0       
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
	lbu     t9, 0x001E(v1)             ## 0000001E
	addiu   t2, $zero, 0x004C          ## t2 = 0000004C
	beql    t2, t9, lbl_8080C8C0       
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
	lbu     t5, 0x001F(v1)             ## 0000001F
	addiu   t3, $zero, 0x0044          ## t3 = 00000044
	beql    t3, t5, lbl_8080C8C0       
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
	lbu     t6, 0x0020(v1)             ## 00000020
	addiu   t4, $zero, 0x0041          ## t4 = 00000041
	beql    t4, t6, lbl_8080C8C0       
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
	lbu     t7, 0x0021(v1)             ## 00000021
	beql    a1, t7, lbl_8080C8C0       
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
	lhu     t8, 0x0002(t0)             ## 800FBF02
	addu    v0, t8, a0                 
	lbu     t9, 0x001C(v0)             ## 0000001F
	beql    a1, t9, lbl_8080C8C0       
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
	lbu     t5, 0x001D(v0)             ## 00000020
	beql    t1, t5, lbl_8080C8C0       
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
	lbu     t6, 0x001E(v0)             ## 00000021
	beql    t2, t6, lbl_8080C8C0       
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
	lbu     t7, 0x001F(v0)             ## 00000022
	beql    t3, t7, lbl_8080C8C0       
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
	lbu     t8, 0x0020(v0)             ## 00000023
	beql    t4, t8, lbl_8080C8C0       
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
	lbu     t9, 0x0021(v0)             ## 00000024
	beql    a1, t9, lbl_8080C8C0       
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
	lhu     t5, 0x0004(t0)             ## 800FBF04
	addu    v0, t5, a0                 
	lbu     t6, 0x001C(v0)             ## 0000001F
	beql    a1, t6, lbl_8080C8C0       
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
	lbu     t7, 0x001D(v0)             ## 00000020
	beql    t1, t7, lbl_8080C8C0       
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
	lbu     t8, 0x001E(v0)             ## 00000021
	beql    t2, t8, lbl_8080C8C0       
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
	lbu     t9, 0x001F(v0)             ## 00000022
	beql    t3, t9, lbl_8080C8C0       
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
	lbu     t5, 0x0020(v0)             ## 00000023
	beql    t4, t5, lbl_8080C8C0       
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
	lbu     t6, 0x0021(v0)             ## 00000024
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     a1, t6, lbl_8080C8BC       
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	sh      a2, -0x35AC($at)           ## 0001CA54
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x35AE($at)        ## 0001CA52
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     $zero, $zero, lbl_8080CB58 
	sh      t7, -0x356E($at)           ## 0001CA92
lbl_8080C8BC:
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
lbl_8080C8C0:
	addiu   t2, $zero, 0x004C          ## t2 = 0000004C
	addiu   t3, $zero, 0x0044          ## t3 = 00000044
	beq     a1, a3, lbl_8080C90C       
	addiu   t4, $zero, 0x0041          ## t4 = 00000041
	lbu     t8, 0x001D(v1)             ## 0000001D
	beql    t1, t8, lbl_8080C910       
	lhu     t8, 0x0002(t0)             ## 800FBF02
	lbu     t9, 0x001E(v1)             ## 0000001E
	beql    t2, t9, lbl_8080C910       
	lhu     t8, 0x0002(t0)             ## 800FBF02
	lbu     t5, 0x001F(v1)             ## 0000001F
	beql    t3, t5, lbl_8080C910       
	lhu     t8, 0x0002(t0)             ## 800FBF02
	lbu     t6, 0x0020(v1)             ## 00000020
	beql    t4, t6, lbl_8080C910       
	lhu     t8, 0x0002(t0)             ## 800FBF02
	lbu     t7, 0x0021(v1)             ## 00000021
	bnel    a1, t7, lbl_8080C9E0       
	lui     $at, 0x0002                ## $at = 00020000
lbl_8080C90C:
	lhu     t8, 0x0002(t0)             ## 800FBF02
lbl_8080C910:
	addu    v0, t8, a0                 
	lbu     t9, 0x001C(v0)             ## 0000001F
	beql    a1, t9, lbl_8080C960       
	lhu     t5, 0x0004(t0)             ## 800FBF04
	lbu     t5, 0x001D(v0)             ## 00000020
	beql    t1, t5, lbl_8080C960       
	lhu     t5, 0x0004(t0)             ## 800FBF04
	lbu     t6, 0x001E(v0)             ## 00000021
	beql    t2, t6, lbl_8080C960       
	lhu     t5, 0x0004(t0)             ## 800FBF04
	lbu     t7, 0x001F(v0)             ## 00000022
	beql    t3, t7, lbl_8080C960       
	lhu     t5, 0x0004(t0)             ## 800FBF04
	lbu     t8, 0x0020(v0)             ## 00000023
	beql    t4, t8, lbl_8080C960       
	lhu     t5, 0x0004(t0)             ## 800FBF04
	lbu     t9, 0x0021(v0)             ## 00000024
	bnel    a1, t9, lbl_8080C9E0       
	lui     $at, 0x0002                ## $at = 00020000
	lhu     t5, 0x0004(t0)             ## 800FBF04
lbl_8080C960:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addu    v0, t5, a0                 
	lbu     t6, 0x001C(v0)             ## 0000001F
	beql    a1, t6, lbl_8080C9B8       
	sh      a2, -0x35AC($at)           ## 0001CA54
	lbu     t7, 0x001D(v0)             ## 00000020
	beql    t1, t7, lbl_8080C9B8       
	sh      a2, -0x35AC($at)           ## 0001CA54
	lbu     t8, 0x001E(v0)             ## 00000021
	beql    t2, t8, lbl_8080C9B8       
	sh      a2, -0x35AC($at)           ## 0001CA54
	lbu     t9, 0x001F(v0)             ## 00000022
	beql    t3, t9, lbl_8080C9B8       
	sh      a2, -0x35AC($at)           ## 0001CA54
	lbu     t5, 0x0020(v0)             ## 00000023
	beql    t4, t5, lbl_8080C9B8       
	sh      a2, -0x35AC($at)           ## 0001CA54
	lbu     t6, 0x0021(v0)             ## 00000024
	bnel    a1, t6, lbl_8080C9E0       
	lui     $at, 0x0002                ## $at = 00020000
	sh      a2, -0x35AC($at)           ## 0001CA54
lbl_8080C9B8:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t7, $zero, 0x0002          ## t7 = 00000002
	sh      t7, -0x35AE($at)           ## 0001CA52
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
	beq     $zero, $zero, lbl_8080CB58 
	sh      t8, -0x356E($at)           ## 0001CA92
	lui     $at, 0x0002                ## $at = 00020000
lbl_8080C9E0:
	addu    $at, $at, s0               
	addiu   t9, $zero, 0xFFFF          ## t9 = FFFFFFFF
	beq     $zero, $zero, lbl_8080CB58 
	sh      t9, -0x35AE($at)           ## 0001CA52
lbl_8080C9F0:
	bne     a2, $at, lbl_8080CB4C      
	addiu   t9, $zero, 0xFFFF          ## t9 = FFFFFFFF
	lui     t0, 0x8010                 ## t0 = 80100000
	addiu   t0, t0, 0xBF00             ## t0 = 800FBF00
	lhu     t5, 0x0000(t0)             ## 800FBF00
	lw      a0, 0x01D8(s0)             ## 000001D8
	addiu   a1, $zero, 0x005A          ## a1 = 0000005A
	lui     $at, 0x0002                ## $at = 00020000
	addu    v1, t5, a0                 
	lbu     t6, 0x001C(v1)             ## 0000001C
	addu    $at, $at, s0               
	beql    a1, t6, lbl_8080CB44       
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	lbu     t7, 0x001D(v1)             ## 0000001D
	addiu   t1, $zero, 0x0045          ## t1 = 00000045
	beql    t1, t7, lbl_8080CB44       
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	lbu     t8, 0x001E(v1)             ## 0000001E
	addiu   t2, $zero, 0x004C          ## t2 = 0000004C
	beql    t2, t8, lbl_8080CB44       
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	lbu     t9, 0x001F(v1)             ## 0000001F
	addiu   t3, $zero, 0x0044          ## t3 = 00000044
	beql    t3, t9, lbl_8080CB44       
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	lbu     t5, 0x0020(v1)             ## 00000020
	addiu   t4, $zero, 0x0041          ## t4 = 00000041
	beql    t4, t5, lbl_8080CB44       
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	lbu     t6, 0x0021(v1)             ## 00000021
	beql    a1, t6, lbl_8080CB44       
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	lhu     t7, 0x0002(t0)             ## 800FBF02
	addu    v0, t7, a0                 
	lbu     t8, 0x001C(v0)             ## 0000001F
	beql    a1, t8, lbl_8080CB44       
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	lbu     t9, 0x001D(v0)             ## 00000020
	beql    t1, t9, lbl_8080CB44       
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	lbu     t5, 0x001E(v0)             ## 00000021
	beql    t2, t5, lbl_8080CB44       
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	lbu     t6, 0x001F(v0)             ## 00000022
	beql    t3, t6, lbl_8080CB44       
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	lbu     t7, 0x0020(v0)             ## 00000023
	beql    t4, t7, lbl_8080CB44       
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	lbu     t8, 0x0021(v0)             ## 00000024
	beql    a1, t8, lbl_8080CB44       
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	lhu     t9, 0x0004(t0)             ## 800FBF04
	addu    v0, t9, a0                 
	lbu     t5, 0x001C(v0)             ## 0000001F
	beql    a1, t5, lbl_8080CB44       
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	lbu     t6, 0x001D(v0)             ## 00000020
	beql    t1, t6, lbl_8080CB44       
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	lbu     t7, 0x001E(v0)             ## 00000021
	beql    t2, t7, lbl_8080CB44       
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	lbu     t8, 0x001F(v0)             ## 00000022
	beql    t3, t8, lbl_8080CB44       
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	lbu     t9, 0x0020(v0)             ## 00000023
	beql    t4, t9, lbl_8080CB44       
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	lbu     t5, 0x0021(v0)             ## 00000024
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	beql    a1, t5, lbl_8080CB44       
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      a2, -0x35AC($at)           ## 0001CA54
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t6, -0x35AE($at)           ## 0001CA52
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     $zero, $zero, lbl_8080CB58 
	sh      t7, -0x356E($at)           ## 0001CA92
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
lbl_8080CB44:
	beq     $zero, $zero, lbl_8080CB58 
	sh      t8, -0x35AE($at)           ## 0001CA52
lbl_8080CB4C:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t9, -0x35AE($at)           ## 0001CA52
lbl_8080CB58:
	lw      $ra, 0x0024($sp)           
lbl_8080CB5C:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_8080CB6C:
	sw      a0, 0x0000($sp)            
	jr      $ra                        
	nop


func_8080CB78:
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   v1, v1, 0xBA00             ## v1 = 8011BA00
	lw      v0, 0x0000(v1)             ## 8011BA00
	addiu   $at, $zero, 0x00FE         ## $at = 000000FE
	lui     t0, 0x0002                 ## t0 = 00020000
	lh      t6, 0x0B26(v0)             ## 00000B26
	addu    t0, t0, a0                 
	addiu   t7, t6, 0x0002             ## t7 = 00000002
	sh      t7, 0x0B26(v0)             ## 00000B26
	lw      t8, 0x0000(v1)             ## 8011BA00
	lh      t9, 0x0B26(t8)             ## 00000B26
	bne     t9, $at, lbl_8080CBC4      
	nop
	lh      t0, -0x35CC(t0)            ## 0001CA34
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t0, -0x35D0($at)           ## 0001CA30
	lw      t1, 0x0000(v1)             ## 8011BA00
	sh      $zero, 0x0B26(t1)          ## 00000B26
lbl_8080CBC4:
	jr      $ra                        
	nop


func_8080CBCC:
	lui     $at, 0x439D                ## $at = 439D0000
	mtc1    $at, $f0                   ## $f0 = 314.00
	lui     t6, 0x8012                 ## t6 = 80120000
	lw      t6, -0x4600(t6)            ## 8011BA00
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	lh      t7, 0x0F34(t6)             ## 80120F34
	addu    v0, a0, $at                
	lwc1    $f4, 0x4AB4(v0)            ## 00004AB4
	mtc1    t7, $f6                    ## $f6 = 0.00
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	cvt.s.w $f8, $f6                   
	addiu   t8, $zero, 0x0022          ## t8 = 00000022
	add.s   $f10, $f4, $f8             
	swc1    $f10, -0x354C($at)         ## 0001CAB4
	lwc1    $f16, 0x4AB4(v0)           ## 00004AB4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	c.le.s  $f0, $f16                  
	nop
	bc1f    lbl_8080CC38               
	nop
	swc1    $f0, -0x354C($at)          ## 0001CAB4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t8, -0x35D0($at)           ## 0001CA30
lbl_8080CC38:
	jr      $ra                        
	nop


func_8080CC40:
	lui     $at, 0x439D                ## $at = 439D0000
	mtc1    $at, $f0                   ## $f0 = 314.00
	lui     t6, 0x8012                 ## t6 = 80120000
	lw      t6, -0x4600(t6)            ## 8011BA00
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	lh      t7, 0x0F34(t6)             ## 80120F34
	addu    v0, a0, $at                
	lwc1    $f4, 0x4AB4(v0)            ## 00004AB4
	mtc1    t7, $f6                    ## $f6 = 0.00
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	cvt.s.w $f8, $f6                   
	addiu   t8, $zero, 0x0026          ## t8 = 00000026
	add.s   $f10, $f4, $f8             
	swc1    $f10, -0x354C($at)         ## 0001CAB4
	lwc1    $f16, 0x4AB4(v0)           ## 00004AB4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	c.le.s  $f0, $f16                  
	nop
	bc1f    lbl_8080CCAC               
	nop
	swc1    $f0, -0x354C($at)          ## 0001CAB4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t8, -0x35D0($at)           ## 0001CA30
lbl_8080CCAC:
	jr      $ra                        
	nop


func_8080CCB4:
	lui     t6, 0x8012                 ## t6 = 80120000
	lw      t6, -0x4600(t6)            ## 8011BA00
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	lh      t7, 0x0F34(t6)             ## 80120F34
	addu    v0, a0, $at                
	lwc1    $f4, 0x4AB4(v0)            ## 00004AB4
	mtc1    t7, $f6                    ## $f6 = 0.00
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	cvt.s.w $f8, $f6                   
	add.s   $f10, $f4, $f8             
	swc1    $f10, -0x354C($at)         ## 0001CAB4
	lui     $at, 0x441D                ## $at = 441D0000
	mtc1    $at, $f18                  ## $f18 = 628.00
	lwc1    $f16, 0x4AB4(v0)           ## 00004AB4
	lui     $at, 0x0002                ## $at = 00020000
	c.le.s  $f18, $f16                 
	nop
	bc1f    lbl_8080CD24               
	nop
	mtc1    $zero, $f6                 ## $f6 = 0.00
	addu    $at, $at, a0               
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	swc1    $f6, -0x354C($at)          ## 0001CAB4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t8, -0x35D0($at)           ## 0001CA30
lbl_8080CD24:
	jr      $ra                        
	nop


func_8080CD2C:
	lui     t0, %hi(var_80812E84)      ## t0 = 80810000
	addiu   t0, t0, %lo(var_80812E84)  ## t0 = 80812E84
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    v0, a0, $at                
	lh      t6, 0x4A9C(v0)             ## 00004A9C
	lh      v1, 0x4A9A(v0)             ## 00004A9A
	lui     t1, 0x8012                 ## t1 = 80120000
	sll     t7, t6,  1                 
	addu    t8, t0, t7                 
	lh      a1, 0x0000(t8)             ## 00000000
	addiu   t1, t1, 0xBA00             ## t1 = 8011BA00
	subu    a2, v1, a1                 
	bltz    a2, lbl_8080CD70           
	subu    a3, $zero, a2              
	beq     $zero, $zero, lbl_8080CD70 
	or      a3, a2, $zero              ## a3 = 00000000
lbl_8080CD70:
	lw      t9, 0x0000(t1)             ## 8011BA00
	lh      t2, 0x0ADA(t9)             ## 00000ADA
	div     $zero, a3, t2              
	bne     t2, $zero, lbl_8080CD88    
	nop
	break	## 0x01C00
lbl_8080CD88:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t2, $at, lbl_8080CDA0      
	lui     $at, 0x8000                ## $at = 80000000
	bne     a3, $at, lbl_8080CDA0      
	nop
	break	## 0x01800
lbl_8080CDA0:
	mflo    a2                         
	sll     a2, a2, 16                 
	slt     $at, v1, a1                
	bne     $at, $zero, lbl_8080CDC0   
	sra     a2, a2, 16                 
	subu    t3, v1, a2                 
	beq     $zero, $zero, lbl_8080CDC8 
	sh      t3, 0x4A9A(v0)             ## 00004A9A
lbl_8080CDC0:
	addu    t4, v1, a2                 
	sh      t4, 0x4A9A(v0)             ## 00004A9A
lbl_8080CDC8:
	lw      a1, 0x0000(t1)             ## 8011BA00
	lh      t5, 0x0ADA(a1)             ## 00000ADA
	addiu   t6, t5, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x0ADA(a1)             ## 00000ADA
	lw      t7, 0x0000(t1)             ## 8011BA00
	lh      t8, 0x0ADA(t7)             ## 00000ADA
	bne     t8, $zero, lbl_8080CE20    
	nop
	lh      v1, 0x4A9C(v0)             ## 00004A9C
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sll     v1, v1,  1                 
	addu    t9, t0, v1                 
	lh      t2, 0x0000(t9)             ## 00000000
	sh      t2, 0x4A9A(v0)             ## 00004A9A
	lw      a1, 0x0000(t1)             ## 8011BA00
	addu    t3, a1, v1                 
	lh      t4, 0x0ADC(t3)             ## 00000ADC
	sh      t4, 0x0ADA(a1)             ## 00000ADA
	lh      t5, 0x4A9C(v0)             ## 00004A9C
	xori    t6, t5, 0x0001             ## t6 = 00000001
	sh      t6, -0x3564($at)           ## 0001CA9C
lbl_8080CE20:
	jr      $ra                        
	nop


func_8080CE28:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lui     t6, 0x0002                 ## t6 = 00020000
	addu    t6, t6, a0                 
	lh      t6, -0x35D0(t6)            ## 0001CA30
	lui     t9, %hi(var_80812DE0)      ## t9 = 80810000
	sll     t7, t6,  2                 
	addu    t9, t9, t7                 
	lw      t9, %lo(var_80812DE0)(t9)  
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8080CE64:
	addiu   $sp, $sp, 0xFFF0           ## $sp = FFFFFFF0
	sw      s2, 0x000C($sp)            
	sw      s1, 0x0008($sp)            
	sw      s0, 0x0004($sp)            
	lw      v1, 0x0000(a0)             ## 00000000
	lui     a1, 0x0002                 ## a1 = 00020000
	addu    a1, a1, a0                 
	lw      v0, 0x02C4(v1)             ## 000002C4
	or      a2, $zero, $zero           ## a2 = 00000000
	or      a3, $zero, $zero           ## a3 = 00000000
	addiu   v0, v0, 0xFB00             ## v0 = FFFFFB00
	sw      v0, 0x02C4(v1)             ## 000002C4
	sw      v0, 0x00A4(a0)             ## 000000A4
	lh      a1, -0x354E(a1)            ## 0001CAB2
	addiu   s2, $zero, 0x00FF          ## s2 = 000000FF
	addiu   s1, $zero, 0x0400          ## s1 = 00000400
	addiu   a1, a1, 0xFFA6             ## a1 = 0001FFA6
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	addiu   s0, $zero, 0x0003          ## s0 = 00000003
	addiu   a1, a1, 0x0040             ## a1 = 0001FFE6
lbl_8080CEB8:
	sll     a1, a1, 16                 
	bne     a3, s0, lbl_8080CECC       
	sra     a1, a1, 16                 
	beq     $zero, $zero, lbl_8080CED0 
	addiu   v0, $zero, 0x0030          ## v0 = 00000030
lbl_8080CECC:
	addiu   v0, $zero, 0x0040          ## v0 = 00000040
lbl_8080CED0:
	or      v1, $zero, $zero           ## v1 = 00000000
	addiu   t0, $zero, 0x0050          ## t0 = 00000050
	addu    t1, a1, v0                 
	sll     t4, v0,  5                 
lbl_8080CEE0:
	lw      t6, 0x00A4(a0)             ## 000000A4
	sll     v0, a2,  4                 
	addiu   t2, t0, 0xFFE0             ## t2 = 00000030
	addu    t7, t6, v0                 
	sh      a1, 0x0020(t7)             ## 00000020
	lw      t8, 0x00A4(a0)             ## 000000A4
	addiu   v1, v1, 0x0001             ## v1 = 00000001
	sll     v1, v1, 16                 
	addu    t5, t8, v0                 
	lh      t9, 0x0020(t5)             ## 00000020
	sra     v1, v1, 16                 
	addiu   a2, a2, 0x0004             ## a2 = 00000004
	sh      t9, 0x0000(t5)             ## 00000000
	lw      t6, 0x00A4(a0)             ## 000000A4
	sll     a2, a2, 16                 
	slti    $at, v1, 0x0005            
	addu    t7, t6, v0                 
	sh      t1, 0x0030(t7)             ## 00000030
	lw      t8, 0x00A4(a0)             ## 000000A4
	sra     a2, a2, 16                 
	addu    t9, t8, v0                 
	sh      t1, 0x0010(t9)             ## 00000010
	lw      t6, 0x00A4(a0)             ## 000000A4
	addu    t7, t6, v0                 
	sh      t0, 0x0012(t7)             ## 00000012
	lw      t8, 0x00A4(a0)             ## 000000A4
	sll     t0, t2, 16                 
	sra     t0, t0, 16                 
	addu    t5, t8, v0                 
	lh      t9, 0x0012(t5)             ## 00000012
	sh      t9, 0x0002(t5)             ## 00000002
	lw      t6, 0x00A4(a0)             ## 000000A4
	addu    t7, t6, v0                 
	sh      t2, 0x0032(t7)             ## 00000032
	lw      t8, 0x00A4(a0)             ## 000000A4
	addu    t9, t8, v0                 
	sh      t2, 0x0022(t9)             ## 00000022
	lw      t6, 0x00A4(a0)             ## 000000A4
	addu    t7, t6, v0                 
	sh      $zero, 0x0034(t7)          ## 00000034
	lw      t8, 0x00A4(a0)             ## 000000A4
	addu    t5, t8, v0                 
	lh      t3, 0x0034(t5)             ## 00000034
	sh      t3, 0x0024(t5)             ## 00000024
	lw      t9, 0x00A4(a0)             ## 000000A4
	addu    t6, t9, v0                 
	sh      t3, 0x0014(t6)             ## 00000014
	lw      t7, 0x00A4(a0)             ## 000000A4
	addu    t8, t7, v0                 
	sh      t3, 0x0004(t8)             ## 00000004
	lw      t9, 0x00A4(a0)             ## 000000A4
	addu    t6, t9, v0                 
	sh      $zero, 0x0036(t6)          ## 00000036
	lw      t7, 0x00A4(a0)             ## 000000A4
	addu    t5, t7, v0                 
	lhu     t3, 0x0036(t5)             ## 00000036
	sh      t3, 0x0026(t5)             ## 00000026
	lw      t8, 0x00A4(a0)             ## 000000A4
	addu    t9, t8, v0                 
	sh      t3, 0x0016(t9)             ## 00000016
	lw      t6, 0x00A4(a0)             ## 000000A4
	addu    t7, t6, v0                 
	sh      t3, 0x0006(t7)             ## 00000006
	lw      t8, 0x00A4(a0)             ## 000000A4
	addu    t9, t8, v0                 
	sh      $zero, 0x0028(t9)          ## 00000028
	lw      t6, 0x00A4(a0)             ## 000000A4
	addu    t5, t6, v0                 
	lh      t3, 0x0028(t5)             ## 00000028
	sh      t3, 0x001A(t5)             ## 0000001A
	lw      t7, 0x00A4(a0)             ## 000000A4
	addu    t8, t7, v0                 
	sh      t3, 0x000A(t8)             ## 0000000A
	lw      t9, 0x00A4(a0)             ## 000000A4
	addu    t6, t9, v0                 
	sh      t3, 0x0008(t6)             ## 00000008
	lw      t7, 0x00A4(a0)             ## 000000A4
	addu    t8, t7, v0                 
	sh      t4, 0x0038(t8)             ## 00000038
	lw      t9, 0x00A4(a0)             ## 000000A4
	addu    t6, t9, v0                 
	sh      t4, 0x0018(t6)             ## 00000018
	lw      t7, 0x00A4(a0)             ## 000000A4
	addu    t8, t7, v0                 
	sh      s1, 0x003A(t8)             ## 0000003A
	lw      t9, 0x00A4(a0)             ## 000000A4
	addu    t5, t9, v0                 
	lh      t6, 0x003A(t5)             ## 0000003A
	sh      t6, 0x002A(t5)             ## 0000002A
	lw      t7, 0x00A4(a0)             ## 000000A4
	addu    t8, t7, v0                 
	sb      s2, 0x003F(t8)             ## 0000003F
	lw      t9, 0x00A4(a0)             ## 000000A4
	addu    t5, t9, v0                 
	lbu     t3, 0x003F(t5)             ## 0000003F
	sb      t3, 0x001F(t5)             ## 0000001F
	lw      t6, 0x00A4(a0)             ## 000000A4
	addu    t7, t6, v0                 
	sb      t3, 0x002F(t7)             ## 0000002F
	lw      t8, 0x00A4(a0)             ## 000000A4
	addu    t9, t8, v0                 
	sb      t3, 0x000F(t9)             ## 0000000F
	lw      t6, 0x00A4(a0)             ## 000000A4
	addu    t7, t6, v0                 
	sb      t3, 0x003E(t7)             ## 0000003E
	lw      t8, 0x00A4(a0)             ## 000000A4
	addu    t9, t8, v0                 
	sb      t3, 0x001E(t9)             ## 0000001E
	lw      t6, 0x00A4(a0)             ## 000000A4
	addu    t7, t6, v0                 
	sb      t3, 0x003D(t7)             ## 0000003D
	lw      t8, 0x00A4(a0)             ## 000000A4
	addu    t9, t8, v0                 
	sb      t3, 0x001D(t9)             ## 0000001D
	lw      t6, 0x00A4(a0)             ## 000000A4
	addu    t7, t6, v0                 
	sb      t3, 0x003C(t7)             ## 0000003C
	lw      t8, 0x00A4(a0)             ## 000000A4
	addu    t9, t8, v0                 
	sb      t3, 0x001C(t9)             ## 0000001C
	lw      t6, 0x00A4(a0)             ## 000000A4
	addu    t7, t6, v0                 
	sb      t3, 0x002E(t7)             ## 0000002E
	lw      t8, 0x00A4(a0)             ## 000000A4
	addu    t9, t8, v0                 
	sb      t3, 0x000E(t9)             ## 0000000E
	lw      t6, 0x00A4(a0)             ## 000000A4
	addu    t7, t6, v0                 
	sb      t3, 0x002D(t7)             ## 0000002D
	lw      t8, 0x00A4(a0)             ## 000000A4
	addu    t9, t8, v0                 
	sb      t3, 0x000D(t9)             ## 0000000D
	lw      t6, 0x00A4(a0)             ## 000000A4
	addu    t7, t6, v0                 
	sb      t3, 0x002C(t7)             ## 0000002C
	lw      t8, 0x00A4(a0)             ## 000000A4
	addu    t9, t8, v0                 
	bne     $at, $zero, lbl_8080CEE0   
	sb      t3, 0x000C(t9)             ## 0000000C
	addiu   a3, a3, 0x0001             ## a3 = 00000001
	sll     a3, a3, 16                 
	sra     a3, a3, 16                 
	slti    $at, a3, 0x0004            
	bnel    $at, $zero, lbl_8080CEB8   
	addiu   a1, a1, 0x0040             ## a1 = 00020026
	lw      s0, 0x0004($sp)            
	lw      s1, 0x0008($sp)            
	lw      s2, 0x000C($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0010           ## $sp = 00000000


func_8080D138:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      s0, 0x0004($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      s6, 0x001C($sp)            
	sw      s5, 0x0018($sp)            
	sw      s4, 0x0014($sp)            
	sw      s3, 0x0010($sp)            
	sw      s2, 0x000C($sp)            
	sw      s1, 0x0008($sp)            
	lw      v1, 0x0000(s0)             ## 00000000
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	lw      v0, 0x02C4(v1)             ## 000002C4
	or      t2, $zero, $zero           ## t2 = 00000000
	addiu   t1, $zero, 0x00FF          ## t1 = 000000FF
	addiu   v0, v0, 0xD780             ## v0 = FFFFD780
	sw      v0, 0x02C4(v1)             ## 000002C4
	sw      v0, -0x3620($at)           ## 0001C9E0
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    a2, s0, $at                
	addiu   t0, $zero, 0x0200          ## t0 = 00000200
	addiu   a3, $zero, 0x012C          ## a3 = 0000012C
lbl_8080D194:
	lw      t6, 0x49E0(a2)             ## 000049E0
	sll     a0, t2,  4                 
	addiu   t2, t2, 0x0004             ## t2 = 00000004
	addu    t7, t6, a0                 
	sh      a3, 0x0020(t7)             ## 00000020
	lw      t8, 0x49E0(a2)             ## 000049E0
	sll     t2, t2, 16                 
	sra     t2, t2, 16                 
	addu    v0, t8, a0                 
	lh      t9, 0x0020(v0)             ## FFFFD7A0
	slti    $at, t2, 0x0288            
	sh      t9, 0x0000(v0)             ## FFFFD780
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    v0, t6, a0                 
	lh      v1, 0x0000(v0)             ## FFFFD780
	addiu   v1, v1, 0x0010             ## v1 = 00000010
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0030(v0)             ## FFFFD7B0
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sh      v1, 0x0010(t8)             ## 00000010
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t6, t9, a0                 
	sh      $zero, 0x0012(t6)          ## 00000012
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    v0, t7, a0                 
	lh      t8, 0x0012(v0)             ## FFFFD792
	sh      t8, 0x0002(v0)             ## FFFFD782
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    v0, t9, a0                 
	lh      v1, 0x0002(v0)             ## FFFFD782
	addiu   v1, v1, 0xFFF0             ## v1 = 00000000
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0032(v0)             ## FFFFD7B2
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    t7, t6, a0                 
	sh      v1, 0x0022(t7)             ## 00000022
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    t9, t8, a0                 
	sh      $zero, 0x0034(t9)          ## 00000034
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    v0, t6, a0                 
	lh      a1, 0x0034(v0)             ## FFFFD7B4
	sh      a1, 0x0024(v0)             ## FFFFD7A4
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sh      a1, 0x0014(t8)             ## 00000014
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t6, t9, a0                 
	sh      a1, 0x0004(t6)             ## 00000004
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sh      $zero, 0x0036(t8)          ## 00000036
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    v0, t9, a0                 
	lhu     a1, 0x0036(v0)             ## FFFFD7B6
	sh      a1, 0x0026(v0)             ## FFFFD7A6
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    t7, t6, a0                 
	sh      a1, 0x0016(t7)             ## 00000016
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    t9, t8, a0                 
	sh      a1, 0x0006(t9)             ## 00000006
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    t7, t6, a0                 
	sh      $zero, 0x0028(t7)          ## 00000028
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    v0, t8, a0                 
	lh      v1, 0x0028(v0)             ## FFFFD7A8
	sh      v1, 0x001A(v0)             ## FFFFD79A
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t6, t9, a0                 
	sh      v1, 0x000A(t6)             ## 0000000A
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sh      v1, 0x0008(t8)             ## 00000008
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t6, t9, a0                 
	sh      t0, 0x003A(t6)             ## 0000003A
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    v0, t7, a0                 
	lh      a1, 0x003A(v0)             ## FFFFD7BA
	sh      a1, 0x0038(v0)             ## FFFFD7B8
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    t9, t8, a0                 
	sh      a1, 0x002A(t9)             ## 0000002A
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    t7, t6, a0                 
	sh      a1, 0x0018(t7)             ## 00000018
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    t9, t8, a0                 
	sb      t1, 0x003F(t9)             ## 0000003F
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    v0, t6, a0                 
	lbu     v1, 0x003F(v0)             ## FFFFD7BF
	sb      v1, 0x002F(v0)             ## FFFFD7AF
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sb      v1, 0x001F(t8)             ## 0000001F
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t6, t9, a0                 
	sb      v1, 0x000F(t6)             ## 0000000F
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sb      v1, 0x003E(t8)             ## 0000003E
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t6, t9, a0                 
	sb      v1, 0x002E(t6)             ## 0000002E
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sb      v1, 0x001E(t8)             ## 0000001E
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t6, t9, a0                 
	sb      v1, 0x000E(t6)             ## 0000000E
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sb      v1, 0x003D(t8)             ## 0000003D
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t6, t9, a0                 
	sb      v1, 0x002D(t6)             ## 0000002D
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sb      v1, 0x001D(t8)             ## 0000001D
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t6, t9, a0                 
	sb      v1, 0x000D(t6)             ## 0000000D
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sb      v1, 0x003C(t8)             ## 0000003C
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t6, t9, a0                 
	sb      v1, 0x002C(t6)             ## 0000002C
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sb      v1, 0x001C(t8)             ## 0000001C
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t6, t9, a0                 
	bne     $at, $zero, lbl_8080D194   
	sb      v1, 0x000C(t6)             ## 0000000C
	lh      v1, 0x4AB2(a2)             ## 00004AB2
	lw      t7, 0x49E0(a2)             ## 000049E0
	addiu   t6, $zero, 0x0048          ## t6 = 00000048
	lui     t3, %hi(var_80812DC0)      ## t3 = 80810000
	sh      v1, 0x0020(t7)             ## 00000020
	lw      t8, 0x49E0(a2)             ## 000049E0
	lui     s6, 0x0001                 ## s6 = 00010000
	addiu   t3, t3, %lo(var_80812DC0)  ## t3 = 80812DC0
	sh      v1, 0x0000(t8)             ## 00000000
	lw      a1, 0x49E0(a2)             ## 000049E0
	addiu   t2, $zero, 0x0004          ## t2 = 00000004
	addiu   t5, $zero, 0x0700          ## t5 = 00000700
	lh      v1, 0x0000(a1)             ## 00000000
	addiu   s1, $zero, 0x002C          ## s1 = 0000002C
	ori     s6, s6, 0x8000             ## s6 = 00018000
	addiu   v1, v1, 0x0080             ## v1 = 00000080
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0030(a1)             ## 00000030
	lw      t9, 0x49E0(a2)             ## 000049E0
	sh      v1, 0x0010(t9)             ## 00000010
	lw      t7, 0x49E0(a2)             ## 000049E0
	sh      t6, 0x0012(t7)             ## 00000012
	lw      a1, 0x49E0(a2)             ## 000049E0
	addiu   t6, $zero, 0x1000          ## t6 = 00001000
	lh      t8, 0x0012(a1)             ## 00000012
	sh      t8, 0x0002(a1)             ## 00000002
	lw      a1, 0x49E0(a2)             ## 000049E0
	lh      v1, 0x0002(a1)             ## 00000002
	addiu   v1, v1, 0xFFF0             ## v1 = 00000070
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0032(a1)             ## 00000032
	lw      t9, 0x49E0(a2)             ## 000049E0
	sh      v1, 0x0022(t9)             ## 00000022
	lw      t7, 0x49E0(a2)             ## 000049E0
	sh      t6, 0x0038(t7)             ## 00000038
	lw      a1, 0x49E0(a2)             ## 000049E0
	lh      t8, 0x0038(a1)             ## 00000038
	sh      t8, 0x0018(a1)             ## 00000018
	or      a1, $zero, $zero           ## a1 = 00000000
	lh      t0, 0x4AB2(a2)             ## 00004AB2
lbl_8080D470:
	sll     t9, a1,  1                 
	lui     $at, 0x0001                ## $at = 00010000
	addiu   t0, t0, 0xFFFA             ## t0 = 000001FA
	sll     t0, t0, 16                 
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    t1, s0, t9                 
	sra     t0, t0, 16                 
	addu    t1, t1, $at                
	or      t4, $zero, $zero           ## t4 = 00000000
lbl_8080D494:
	lw      t6, 0x49E0(a2)             ## 000049E0
	sll     a0, t2,  4                 
	addiu   t2, t2, 0x0004             ## t2 = 00000008
	addu    t7, t6, a0                 
	sh      t0, 0x0020(t7)             ## 00000020
	lw      t8, 0x49E0(a2)             ## 000049E0
	sll     t6, t4,  1                 
	addu    a3, t3, t6                 
	addu    v0, t8, a0                 
	lh      t9, 0x0020(v0)             ## FFFFD7A0
	addiu   t4, t4, 0x0001             ## t4 = 00000001
	sll     t4, t4, 16                 
	sh      t9, 0x0000(v0)             ## FFFFD780
	lw      t7, 0x49E0(a2)             ## 000049E0
	lh      t8, 0x0000(a3)             ## 0000012C
	sra     t4, t4, 16                 
	addu    v0, t7, a0                 
	lh      t9, 0x0000(v0)             ## FFFFD780
	slti    $at, t4, 0x0005            
	sll     t2, t2, 16                 
	addu    v1, t8, t9                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0030(v0)             ## FFFFD7B0
	lw      t6, 0x49E0(a2)             ## 000049E0
	sra     t2, t2, 16                 
	addu    t7, t6, a0                 
	sh      v1, 0x0010(t7)             ## 00000010
	lh      v1, 0x4A3C(t1)             ## 00004B3B
	lw      t8, 0x49E0(a2)             ## 000049E0
	addiu   v1, v1, 0x002C             ## v1 = 0000009C
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	addu    t9, t8, a0                 
	sh      v1, 0x0012(t9)             ## 00000012
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    t7, t6, a0                 
	sh      v1, 0x0002(t7)             ## 00000002
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    v0, t8, a0                 
	lh      v1, 0x0002(v0)             ## FFFFD782
	addiu   v1, v1, 0xFFC8             ## v1 = 00000064
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0032(v0)             ## FFFFD7B2
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t6, t9, a0                 
	sh      v1, 0x0022(t6)             ## 00001022
	lh      v1, 0x0000(a3)             ## 0000012C
	lw      t7, 0x49E0(a2)             ## 000049E0
	sll     v1, v1,  5                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	addu    t8, t7, a0                 
	sh      v1, 0x0038(t8)             ## 00000038
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t6, t9, a0                 
	sh      v1, 0x0018(t6)             ## 00001018
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sh      t5, 0x003A(t8)             ## 0000003A
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    v0, t9, a0                 
	lh      t6, 0x003A(v0)             ## FFFFD7BA
	sh      t6, 0x002A(v0)             ## FFFFD7AA
	lh      t7, 0x0000(a3)             ## 0000012C
	addu    t0, t0, t7                 
	sll     t0, t0, 16                 
	bne     $at, $zero, lbl_8080D494   
	sra     t0, t0, 16                 
	addiu   a1, a1, 0x0001             ## a1 = 00000001
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	slti    $at, a1, 0x0003            
	bnel    $at, $zero, lbl_8080D470   
	lh      t0, 0x4AB2(a2)             ## 00004AB2
	lh      t0, 0x4AB2(a2)             ## 00004AB2
	or      t4, $zero, $zero           ## t4 = 00000000
	addiu   s5, $zero, 0x0D80          ## s5 = 00000D80
	addiu   t0, t0, 0xFFFA             ## t0 = 000001F4
	sll     t0, t0, 16                 
	sra     t0, t0, 16                 
	addiu   t3, t0, 0x0040             ## t3 = 00000234
	sll     s4, t3, 16                 
	sra     s4, s4, 16                 
	addiu   t5, t0, 0x00A8             ## t5 = 0000029C
	addiu   s2, t0, 0x0034             ## s2 = 00000228
	addiu   s3, t0, 0x009C             ## s3 = 00000290
lbl_8080D5F4:
	lw      t8, 0x49E0(a2)             ## 000049E0
	sll     a0, t2,  4                 
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	addu    t9, t8, a0                 
	sh      t0, 0x0020(t9)             ## 00000020
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    v0, t6, a0                 
	lh      t7, 0x0020(v0)             ## FFFFD7A0
	sh      t7, 0x0000(v0)             ## FFFFD780
	lw      t8, 0x49E0(a2)             ## 000049E0
	sll     t7, t4,  1                 
	addu    v0, t8, a0                 
	lh      v1, 0x0000(v0)             ## FFFFD780
	addu    t8, s0, t7                 
	addu    a3, t8, s6                 
	addiu   v1, v1, 0x0040             ## v1 = 000000A4
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0030(v0)             ## FFFFD7B0
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t6, t9, a0                 
	sh      v1, 0x0010(t6)             ## 00001010
	lh      t9, 0x4A44(a3)             ## 00004B70
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    v1, t9, s1                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	addu    t7, t6, a0                 
	sh      v1, 0x0012(t7)             ## 00000012
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    t9, t8, a0                 
	sh      v1, 0x0002(t9)             ## 00000002
	lw      t6, 0x49E0(a2)             ## 000049E0
	addiu   t9, $zero, 0x0800          ## t9 = 00000800
	addu    v0, t6, a0                 
	lh      v1, 0x0002(v0)             ## FFFFD782
	addiu   v1, v1, 0xFFF0             ## v1 = 00000094
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0032(v0)             ## FFFFD7B2
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sh      v1, 0x0022(t8)             ## 00000022
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    t7, t6, a0                 
	sh      t9, 0x0038(t7)             ## 00000038
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    v0, t8, a0                 
	lh      t6, 0x0038(v0)             ## FFFFD7B8
	sh      t6, 0x0018(v0)             ## FFFFD798
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t7, t9, a0                 
	sh      t3, 0x0060(t7)             ## 00000060
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    t6, t8, a0                 
	sh      s4, 0x0040(t6)             ## 00001040
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    v0, t9, a0                 
	lh      v1, 0x0040(v0)             ## FFFFD7C0
	addiu   v1, v1, 0x006C             ## v1 = 00000100
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0070(v0)             ## FFFFD7F0
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sh      v1, 0x0050(t8)             ## 00000050
	lh      t6, 0x4A44(a3)             ## 00004B70
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    v1, t6, s1                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	addu    t7, t9, a0                 
	sh      v1, 0x0052(t7)             ## 00000052
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    t6, t8, a0                 
	sh      v1, 0x0042(t6)             ## 00001042
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    v0, t9, a0                 
	lh      v1, 0x0042(v0)             ## FFFFD7C2
	addiu   v1, v1, 0xFFF0             ## v1 = 000000F0
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0072(v0)             ## FFFFD7F2
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sh      v1, 0x0062(t8)             ## 00000062
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    t9, t6, a0                 
	sh      s5, 0x0078(t9)             ## 00000878
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    v0, t7, a0                 
	lh      t8, 0x0078(v0)             ## FFFFD7F8
	sh      t8, 0x0058(v0)             ## FFFFD7D8
	lh      a1, 0x4A30(a2)             ## 00004A30
	bnel    a1, $at, lbl_8080D798      
	addiu   $at, $zero, 0x0010         ## $at = 00000010
	lh      t6, 0x4A50(a2)             ## 00004A50
	bnel    t4, t6, lbl_8080D798       
	addiu   $at, $zero, 0x0010         ## $at = 00000010
	lh      t1, 0x4A3C(a3)             ## 00004B68
	addiu   t1, t1, 0x002C             ## t1 = 0000012B
	sll     t1, t1, 16                 
	beq     $zero, $zero, lbl_8080D7E0 
	sra     t1, t1, 16                 
	addiu   $at, $zero, 0x0010         ## $at = 00000010
lbl_8080D798:
	beq     a1, $at, lbl_8080D7A8      
	addiu   $at, $zero, 0x0011         ## $at = 00000011
	bnel    a1, $at, lbl_8080D7CC      
	lh      t8, 0x4A3C(a3)             ## 00004B68
lbl_8080D7A8:
	lh      t9, 0x4A50(a2)             ## 00004A50
	bnel    t4, t9, lbl_8080D7CC       
	lh      t8, 0x4A3C(a3)             ## 00004B68
	lh      t7, 0x4A44(a3)             ## 00004B70
	addu    t1, t7, s1                 
	sll     t1, t1, 16                 
	beq     $zero, $zero, lbl_8080D7E0 
	sra     t1, t1, 16                 
	lh      t8, 0x4A3C(a3)             ## 00004B68
lbl_8080D7CC:
	lh      t9, 0x4A44(a3)             ## 00004B70
	addu    t6, t8, s1                 
	addu    t1, t6, t9                 
	sll     t1, t1, 16                 
	sra     t1, t1, 16                 
lbl_8080D7E0:
	lw      t7, 0x49E0(a2)             ## 000049E0
	addiu   t4, t4, 0x0001             ## t4 = 00000001
	sll     t4, t4, 16                 
	addu    t8, t7, a0                 
	sh      t5, 0x00A0(t8)             ## 000000A0
	lw      t6, 0x49E0(a2)             ## 000049E0
	sra     t4, t4, 16                 
	addiu   t2, t2, 0x0014             ## t2 = 0000001C
	addu    t9, t6, a0                 
	sh      t5, 0x0080(t9)             ## 00000880
	lw      t7, 0x49E0(a2)             ## 000049E0
	sll     t2, t2, 16                 
	slti    $at, t4, 0x0003            
	addu    v0, t7, a0                 
	lh      v1, 0x0080(v0)             ## FFFFD800
	sra     t2, t2, 16                 
	addiu   v1, v1, 0x002C             ## v1 = 0000011C
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x00B0(v0)             ## FFFFD830
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    t6, t8, a0                 
	sh      v1, 0x0090(t6)             ## 00001090
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t7, t9, a0                 
	sh      t1, 0x0092(t7)             ## 00000092
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    v0, t8, a0                 
	lh      t6, 0x0092(v0)             ## FFFFD812
	sh      t6, 0x0082(v0)             ## FFFFD802
	lw      t9, 0x49E0(a2)             ## 000049E0
	addiu   t6, $zero, 0x0580          ## t6 = 00000580
	addu    v0, t9, a0                 
	lh      v1, 0x0082(v0)             ## FFFFD802
	addiu   v1, v1, 0xFFF0             ## v1 = 0000010C
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x00B2(v0)             ## FFFFD832
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sh      v1, 0x00A2(t8)             ## 000000A2
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t7, t9, a0                 
	sh      t6, 0x00B8(t7)             ## 000000B8
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    v0, t8, a0                 
	lh      t9, 0x00B8(v0)             ## FFFFD838
	sh      t9, 0x0098(v0)             ## FFFFD818
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    t7, t6, a0                 
	sh      s2, 0x00E0(t7)             ## 000000E0
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    t9, t8, a0                 
	sh      s2, 0x00C0(t9)             ## 000008C0
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    v0, t6, a0                 
	lh      v1, 0x00C0(v0)             ## FFFFD840
	addiu   v1, v1, 0x0018             ## v1 = 00000124
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x00F0(v0)             ## FFFFD870
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sh      v1, 0x00D0(t8)             ## 000000D0
	lh      t9, 0x4A44(a3)             ## 00004B70
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    v1, t9, s1                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	addu    t7, t6, a0                 
	sh      v1, 0x00D2(t7)             ## 000000D2
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    t9, t8, a0                 
	sh      v1, 0x00C2(t9)             ## 000008C2
	lw      t6, 0x49E0(a2)             ## 000049E0
	addiu   t9, $zero, 0x0300          ## t9 = 00000300
	addu    v0, t6, a0                 
	lh      v1, 0x00C2(v0)             ## FFFFD842
	addiu   v1, v1, 0xFFF0             ## v1 = 00000114
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x00F2(v0)             ## FFFFD872
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sh      v1, 0x00E2(t8)             ## 000000E2
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    t7, t6, a0                 
	sh      t9, 0x00F8(t7)             ## 000000F8
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    v0, t8, a0                 
	lh      t6, 0x00F8(v0)             ## FFFFD878
	sh      t6, 0x00D8(v0)             ## FFFFD858
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t7, t9, a0                 
	sh      s3, 0x0120(t7)             ## 00000120
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    t6, t8, a0                 
	sh      s3, 0x0100(t6)             ## 00000680
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    v0, t9, a0                 
	lh      v1, 0x0100(v0)             ## FFFFD880
	addiu   v1, v1, 0x0018             ## v1 = 0000012C
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0130(v0)             ## FFFFD8B0
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sh      v1, 0x0110(t8)             ## 00000110
	lh      t6, 0x4A44(a3)             ## 00004B70
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    v1, t6, s1                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	addu    t7, t9, a0                 
	sh      v1, 0x0112(t7)             ## 00000112
	lw      t8, 0x49E0(a2)             ## 000049E0
	addiu   s1, s1, 0xFFF0             ## s1 = 0000001C
	sll     s1, s1, 16                 
	addu    t6, t8, a0                 
	sh      v1, 0x0102(t6)             ## 00000682
	lw      t9, 0x49E0(a2)             ## 000049E0
	addiu   t6, $zero, 0x0300          ## t6 = 00000300
	sra     s1, s1, 16                 
	addu    v0, t9, a0                 
	lh      v1, 0x0102(v0)             ## FFFFD882
	addiu   v1, v1, 0xFFF0             ## v1 = 0000011C
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0132(v0)             ## FFFFD8B2
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sh      v1, 0x0122(t8)             ## 00000122
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t7, t9, a0                 
	sh      t6, 0x0138(t7)             ## 00000138
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    v0, t8, a0                 
	lh      t9, 0x0138(v0)             ## FFFFD8B8
	bne     $at, $zero, lbl_8080D5F4   
	sh      t9, 0x0118(v0)             ## FFFFD898
	addiu   t6, s0, 0x01D8             ## t6 = 000001D8
	lui     t3, 0x8012                 ## t3 = 80120000
	lui     s4, %hi(var_80812E88)      ## s4 = 80810000
	lui     s3, %hi(var_80812E98)      ## s3 = 80810000
	lui     s2, %hi(var_80812E90)      ## s2 = 80810000
	lui     t5, 0x8012                 ## t5 = 80120000
	addiu   s1, $zero, 0x002C          ## s1 = 0000002C
	addiu   t5, t5, 0xBA00             ## t5 = 8011BA00
	addiu   s2, s2, %lo(var_80812E90)  ## s2 = 80812E90
	addiu   s3, s3, %lo(var_80812E98)  ## s3 = 80812E98
	addiu   s4, s4, %lo(var_80812E88)  ## s4 = 80812E88
	lw      t3, -0x4600(t3)            ## 8011BA00
	sw      t6, 0x0020($sp)            
	or      t4, $zero, $zero           ## t4 = 00000000
	addiu   s5, $zero, 0x0009          ## s5 = 00000009
lbl_8080DA4C:
	lw      t8, 0x0020($sp)            
	sll     v1, t4,  1                 
	lui     t7, 0x8010                 ## t7 = 80100000
	addu    t7, t7, v1                 
	lhu     t7, -0x4100(t7)            ## 800FBF00
	lw      t9, 0x0000(t8)             ## 00000000
	addiu   $at, $zero, 0x005A         ## $at = 0000005A
	addu    v0, t7, t9                 
	lbu     t6, 0x001C(v0)             ## FFFFD79C
	beql    t6, $at, lbl_8080DACC      
	lh      t7, 0x4AB2(a2)             ## 00004AB2
	lbu     t8, 0x001D(v0)             ## FFFFD79D
	addiu   $at, $zero, 0x0045         ## $at = 00000045
	beql    t8, $at, lbl_8080DACC      
	lh      t7, 0x4AB2(a2)             ## 00004AB2
	lbu     t7, 0x001E(v0)             ## FFFFD79E
	addiu   $at, $zero, 0x004C         ## $at = 0000004C
	beql    t7, $at, lbl_8080DACC      
	lh      t7, 0x4AB2(a2)             ## 00004AB2
	lbu     t9, 0x001F(v0)             ## FFFFD79F
	addiu   $at, $zero, 0x0044         ## $at = 00000044
	beql    t9, $at, lbl_8080DACC      
	lh      t7, 0x4AB2(a2)             ## 00004AB2
	lbu     t6, 0x0020(v0)             ## FFFFD7A0
	addiu   $at, $zero, 0x0041         ## $at = 00000041
	beql    t6, $at, lbl_8080DACC      
	lh      t7, 0x4AB2(a2)             ## 00004AB2
	lbu     t8, 0x0021(v0)             ## FFFFD7A1
	addiu   $at, $zero, 0x005A         ## $at = 0000005A
	bnel    t8, $at, lbl_8080DF54      
	addiu   t2, t2, 0x00A8             ## t2 = 000000C4
	lh      t7, 0x4AB2(a2)             ## 00004AB2
lbl_8080DACC:
	lh      t9, 0x0DE2(t3)             ## 80120DE2
	lh      a1, 0x4A30(a2)             ## 00004A30
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	subu    t0, t7, t9                 
	sll     t0, t0, 16                 
	bne     a1, $at, lbl_8080DB10      
	sra     t0, t0, 16                 
	lh      t6, 0x4A50(a2)             ## 00004A50
	addu    t8, s0, v1                 
	addu    t7, t8, s6                 
	bnel    t4, t6, lbl_8080DB14       
	addiu   $at, $zero, 0x0010         ## $at = 00000010
	lh      t1, 0x4A3C(t7)             ## 80104A3C
	addiu   t1, t1, 0x002C             ## t1 = 00000157
	sll     t1, t1, 16                 
	beq     $zero, $zero, lbl_8080DB6C 
	sra     t1, t1, 16                 
lbl_8080DB10:
	addiu   $at, $zero, 0x0010         ## $at = 00000010
lbl_8080DB14:
	beq     a1, $at, lbl_8080DB24      
	addiu   $at, $zero, 0x0011         ## $at = 00000011
	bnel    a1, $at, lbl_8080DB50      
	addu    t9, s0, v1                 
lbl_8080DB24:
	lh      t9, 0x4A50(a2)             ## 00004A50
	addu    t6, s0, v1                 
	addu    t8, t6, s6                 
	bnel    t4, t9, lbl_8080DB50       
	addu    t9, s0, v1                 
	lh      t7, 0x4A44(t8)             ## 00004A44
	addu    t1, t7, s1                 
	sll     t1, t1, 16                 
	beq     $zero, $zero, lbl_8080DB6C 
	sra     t1, t1, 16                 
	addu    t9, s0, v1                 
lbl_8080DB50:
	addu    a3, t9, s6                 
	lh      t6, 0x4A3C(a3)             ## 00004B68
	lh      t7, 0x4A44(a3)             ## 00004B70
	addu    t8, t6, s1                 
	addu    t1, t8, t7                 
	sll     t1, t1, 16                 
	sra     t1, t1, 16                 
lbl_8080DB6C:
	addiu   t1, t1, 0x0002             ## t1 = 00000159
	sll     t1, t1, 16                 
	sra     t1, t1, 16                 
	addiu   a3, t1, 0xFFFD             ## a3 = 00000156
	or      a1, $zero, $zero           ## a1 = 00000000
lbl_8080DB80:
	lh      t9, 0x0DE6(t3)             ## 80120DE6
	lw      t6, 0x49E0(a2)             ## 000049E0
	sll     a0, t2,  4                 
	addu    v1, t9, t0                 
	addiu   v1, v1, 0x0040             ## v1 = 0000015C
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	addu    t8, t6, a0                 
	sh      v1, 0x0020(t8)             ## 00000020
	lw      t7, 0x49E0(a2)             ## 000049E0
	addiu   a1, a1, 0x0001             ## a1 = 00000001
	sll     a1, a1, 16                 
	addu    t9, t7, a0                 
	sh      v1, 0x0000(t9)             ## 00000300
	lw      t6, 0x49E0(a2)             ## 000049E0
	lw      t8, 0x0000(t5)             ## 8011BA00
	sra     a1, a1, 16                 
	addu    v0, t6, a0                 
	lh      t9, 0x0000(v0)             ## FFFFD780
	lh      t7, 0x0DE8(t8)             ## 00000DE8
	addiu   t2, t2, 0x0004             ## t2 = 000000C8
	sll     t2, t2, 16                 
	addu    v1, t7, t9                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0030(v0)             ## FFFFD7B0
	lw      t6, 0x49E0(a2)             ## 000049E0
	slti    $at, a1, 0x0008            
	sra     t2, t2, 16                 
	addu    t8, t6, a0                 
	sh      v1, 0x0010(t8)             ## 00000010
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t9, t7, a0                 
	sh      a3, 0x0012(t9)             ## 00000312
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    t8, t6, a0                 
	sh      a3, 0x0002(t8)             ## 00000002
	lw      t7, 0x49E0(a2)             ## 000049E0
	lw      t6, 0x0000(t5)             ## 8011BA00
	addu    v0, t7, a0                 
	lh      t9, 0x0002(v0)             ## FFFFD782
	lh      t8, 0x0DEA(t6)             ## 00000FC2
	subu    v1, t9, t8                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0032(v0)             ## FFFFD7B2
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t6, t7, a0                 
	sh      v1, 0x0022(t6)             ## 000001FA
	lw      t3, 0x0000(t5)             ## 8011BA00
	lh      t9, 0x0DE4(t3)             ## 80120DE4
	addu    t0, t0, t9                 
	sll     t0, t0, 16                 
	bne     $at, $zero, lbl_8080DB80   
	sra     t0, t0, 16                 
	lh      t0, 0x4AB2(a2)             ## 00004AB2
	addiu   t1, t1, 0xFFEA             ## t1 = 00000143
	sll     t1, t1, 16                 
	addiu   t0, t0, 0xFFF2             ## t0 = 000001E6
	sll     t0, t0, 16                 
	sra     t0, t0, 16                 
	sra     t1, t1, 16                 
	or      a1, $zero, $zero           ## a1 = 00000000
lbl_8080DC7C:
	lw      t8, 0x49E0(a2)             ## 000049E0
	sll     a0, t2,  4                 
	sll     a3, a1,  1                 
	addu    t7, t8, a0                 
	sh      t0, 0x0020(t7)             ## 80100020
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    t7, s2, a3                 
	addiu   a1, a1, 0x0001             ## a1 = 00000001
	addu    v0, t6, a0                 
	lh      t9, 0x0020(v0)             ## FFFFD7A0
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	sh      t9, 0x0000(v0)             ## FFFFD780
	lw      t8, 0x49E0(a2)             ## 000049E0
	lh      t6, 0x0000(t7)             ## 80100000
	addiu   t2, t2, 0x0004             ## t2 = 000000CC
	addu    v0, t8, a0                 
	lh      t9, 0x0000(v0)             ## FFFFD780
	sll     t2, t2, 16                 
	slti    $at, a1, 0x0004            
	addu    v1, t6, t9                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0030(v0)             ## FFFFD7B0
	lw      t8, 0x49E0(a2)             ## 000049E0
	sra     t2, t2, 16                 
	addu    t7, t8, a0                 
	sh      v1, 0x0010(t7)             ## 80100010
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    t9, t6, a0                 
	sh      t1, 0x0012(t9)             ## 00000312
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    v0, t8, a0                 
	lh      t7, 0x0012(v0)             ## FFFFD792
	addu    t8, s3, a3                 
	sh      t7, 0x0002(v0)             ## FFFFD782
	lw      t6, 0x49E0(a2)             ## 000049E0
	lh      t7, 0x0000(t8)             ## 00000000
	addu    v0, t6, a0                 
	lh      t9, 0x0002(v0)             ## FFFFD782
	subu    v1, t9, t7                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0032(v0)             ## FFFFD7B2
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    t9, s4, a3                 
	addu    t8, t6, a0                 
	sh      v1, 0x0022(t8)             ## 00000022
	lh      t7, 0x0000(t9)             ## 00000300
	addu    t0, t0, t7                 
	sll     t0, t0, 16                 
	bne     $at, $zero, lbl_8080DC7C   
	sra     t0, t0, 16                 
	lw      t8, 0x49E0(a2)             ## 000049E0
	sll     a0, t2,  4                 
	addiu   t6, $zero, 0x0400          ## t6 = 00000400
	addu    t9, t8, a0                 
	sh      t6, -0x00C8(t9)            ## 00000238
	lw      t7, 0x49E0(a2)             ## 000049E0
	addiu   t1, t1, 0x0004             ## t1 = 00000147
	sll     t1, t1, 16                 
	addu    v0, t7, a0                 
	lh      t8, -0x00C8(v0)            ## FFFFD6B8
	sra     t1, t1, 16                 
	or      a1, $zero, $zero           ## a1 = 00000000
	sh      t8, -0x00E8(v0)            ## FFFFD698
	lh      t0, 0x4AB2(a2)             ## 00004AB2
	addiu   t0, t0, 0x003F             ## t0 = 00000225
	sll     t0, t0, 16                 
	sra     t0, t0, 16                 
lbl_8080DD94:
	lw      t6, 0x49E0(a2)             ## 000049E0
	sll     a0, t2,  4                 
	addiu   t2, t2, 0x0004             ## t2 = 000000D0
	addu    t9, t6, a0                 
	sh      t0, 0x0020(t9)             ## 00000320
	lw      t7, 0x49E0(a2)             ## 000049E0
	sll     t2, t2, 16                 
	sra     t2, t2, 16                 
	addu    v0, t7, a0                 
	lh      t8, 0x0020(v0)             ## FFFFD7A0
	sh      t8, 0x0000(v0)             ## FFFFD780
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    v0, t6, a0                 
	lh      v1, 0x0000(v0)             ## FFFFD780
	addiu   v1, v1, 0x000A             ## v1 = 00000166
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0030(v0)             ## FFFFD7B0
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t7, t9, a0                 
	sh      v1, 0x0010(t7)             ## 80100010
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    t6, t8, a0                 
	sh      t1, 0x0012(t6)             ## 00000412
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    v0, t9, a0                 
	lh      t7, 0x0012(v0)             ## FFFFD792
	sh      t7, 0x0002(v0)             ## FFFFD782
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    v0, t8, a0                 
	lh      v1, 0x0002(v0)             ## FFFFD782
	addiu   v1, v1, 0xFFF6             ## v1 = 0000015C
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0032(v0)             ## FFFFD7B2
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    t9, t6, a0                 
	bne     a1, s5, lbl_8080DE4C       
	sh      v1, 0x0022(t9)             ## 00000322
	lh      t0, 0x4AB2(a2)             ## 00004AB2
	addiu   t1, t1, 0xFFF8             ## t1 = 0000013F
	sll     t1, t1, 16                 
	addiu   t0, t0, 0x0036             ## t0 = 0000025B
	sll     t0, t0, 16                 
	sra     t0, t0, 16                 
	sra     t1, t1, 16                 
lbl_8080DE4C:
	addiu   a1, a1, 0x0001             ## a1 = 00000001
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	addiu   t0, t0, 0x0009             ## t0 = 00000264
	sll     t0, t0, 16                 
	slti    $at, a1, 0x0014            
	bne     $at, $zero, lbl_8080DD94   
	sra     t0, t0, 16                 
	lh      v0, 0x4AB2(a2)             ## 00004AB2
	addiu   t1, t1, 0xFFF6             ## t1 = 00000135
	sll     t1, t1, 16                 
	addiu   t0, v0, 0x0004             ## t0 = FFFFD784
	sll     t0, t0, 16                 
	sra     t0, t0, 16                 
	sra     t1, t1, 16                 
	or      a1, $zero, $zero           ## a1 = 00000000
lbl_8080DE8C:
	lw      t7, 0x49E0(a2)             ## 000049E0
	sll     a0, t2,  4                 
	addiu   a1, a1, 0x0001             ## a1 = 00000001
	addu    t8, t7, a0                 
	sh      t0, 0x0020(t8)             ## 00000020
	lw      t6, 0x49E0(a2)             ## 000049E0
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	addu    v0, t6, a0                 
	lh      t9, 0x0020(v0)             ## FFFFD7A0
	addiu   t0, t0, 0x0010             ## t0 = FFFFD794
	addiu   t2, t2, 0x0004             ## t2 = 000000D4
	sh      t9, 0x0000(v0)             ## FFFFD780
	lw      t7, 0x49E0(a2)             ## 000049E0
	sll     t2, t2, 16                 
	sll     t0, t0, 16                 
	addu    v0, t7, a0                 
	lh      v1, 0x0000(v0)             ## FFFFD780
	slti    $at, a1, 0x000A            
	sra     t0, t0, 16                 
	addiu   v1, v1, 0x0010             ## v1 = 0000016C
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0030(v0)             ## FFFFD7B0
	lw      t8, 0x49E0(a2)             ## 000049E0
	sra     t2, t2, 16                 
	addu    t6, t8, a0                 
	sh      v1, 0x0010(t6)             ## 00000410
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t7, t9, a0                 
	sh      t1, 0x0012(t7)             ## 80100012
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    v0, t8, a0                 
	lh      t6, 0x0012(v0)             ## FFFFD792
	sh      t6, 0x0002(v0)             ## FFFFD782
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    v0, t9, a0                 
	lh      v1, 0x0002(v0)             ## FFFFD782
	addiu   v1, v1, 0xFFF0             ## v1 = 0000015C
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0032(v0)             ## FFFFD7B2
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	bne     $at, $zero, lbl_8080DE8C   
	sh      v1, 0x0022(t8)             ## 00000022
	lw      t3, 0x0000(t5)             ## 8011BA00
	beq     $zero, $zero, lbl_8080DF60 
	lh      v0, 0x0DE0(t3)             ## 80120DE0
	addiu   t2, t2, 0x00A8             ## t2 = 0000017C
lbl_8080DF54:
	sll     t2, t2, 16                 
	sra     t2, t2, 16                 
	lh      v0, 0x0DE0(t3)             ## 80120DE0
lbl_8080DF60:
	addiu   t4, t4, 0x0001             ## t4 = 00000001
	sll     t4, t4, 16                 
	sra     t4, t4, 16                 
	subu    s1, s1, v0                 
	sll     s1, s1, 16                 
	slti    $at, t4, 0x0003            
	bne     $at, $zero, lbl_8080DA4C   
	sra     s1, s1, 16                 
	lh      t0, 0x4AB2(a2)             ## 00004AB2
	addiu   s1, $zero, 0xFFF4          ## s1 = FFFFFFF4
	or      t4, $zero, $zero           ## t4 = 00000000
	addiu   t0, t0, 0xFFFA             ## t0 = FFFFD78E
	sll     t0, t0, 16                 
	sra     t0, t0, 16                 
	addiu   t1, $zero, 0x0800          ## t1 = 00000800
lbl_8080DF9C:
	lw      t6, 0x49E0(a2)             ## 000049E0
	sll     a0, t2,  4                 
	addiu   t2, t2, 0x0004             ## t2 = 00000180
	addu    t9, t6, a0                 
	sh      t0, 0x0020(t9)             ## 00000320
	lw      t7, 0x49E0(a2)             ## 000049E0
	sll     t2, t2, 16                 
	sra     t2, t2, 16                 
	addu    v0, t7, a0                 
	lh      t8, 0x0020(v0)             ## FFFFD7A0
	sh      t8, 0x0000(v0)             ## FFFFD780
	lw      t6, 0x49E0(a2)             ## 000049E0
	sll     t8, t4,  1                 
	addiu   t4, t4, 0x0001             ## t4 = 00000001
	addu    v0, t6, a0                 
	lh      v1, 0x0000(v0)             ## FFFFD780
	addu    t6, s0, t8                 
	sll     t4, t4, 16                 
	addiu   v1, v1, 0x0040             ## v1 = 0000019C
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0030(v0)             ## FFFFD7B0
	lw      t9, 0x49E0(a2)             ## 000049E0
	sra     t4, t4, 16                 
	slti    $at, t4, 0x0002            
	addu    t7, t9, a0                 
	sh      v1, 0x0010(t7)             ## 80100010
	addu    t9, t6, s6                 
	lh      t7, 0x4A4A(t9)             ## 00004D4A
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    v1, t7, s1                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	addu    t6, t8, a0                 
	sh      v1, 0x0012(t6)             ## 00000412
	lw      t9, 0x49E0(a2)             ## 000049E0
	addiu   s1, s1, 0xFFF0             ## s1 = FFFFFFE4
	sll     s1, s1, 16                 
	addu    t7, t9, a0                 
	sh      v1, 0x0002(t7)             ## 80100002
	lw      t8, 0x49E0(a2)             ## 000049E0
	sra     s1, s1, 16                 
	addu    v0, t8, a0                 
	lh      v1, 0x0002(v0)             ## FFFFD782
	addiu   v1, v1, 0xFFF0             ## v1 = 0000018C
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0032(v0)             ## FFFFD7B2
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    t9, t6, a0                 
	sh      v1, 0x0022(t9)             ## 00000322
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sh      t1, 0x0038(t8)             ## 00000038
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    v0, t6, a0                 
	lh      t9, 0x0038(v0)             ## FFFFD7B8
	bne     $at, $zero, lbl_8080DF9C   
	sh      t9, 0x0018(v0)             ## FFFFD798
	lw      t7, 0x49E0(a2)             ## 000049E0
	sll     a0, t2,  4                 
	addiu   t2, t2, 0x0004             ## t2 = 00000184
	addu    t8, t7, a0                 
	sh      t0, 0x0020(t8)             ## 00000020
	lw      t6, 0x49E0(a2)             ## 000049E0
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	sll     t2, t2, 16                 
	addu    v0, t6, a0                 
	lh      t9, 0x0020(v0)             ## FFFFD7A0
	sra     t2, t2, 16                 
	sh      t9, 0x0000(v0)             ## FFFFD780
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    v0, t7, a0                 
	lh      v1, 0x0000(v0)             ## FFFFD780
	addiu   v1, v1, 0x0040             ## v1 = 000001CC
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0030(v0)             ## FFFFD7B0
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    t6, t8, a0                 
	sh      v1, 0x0010(t6)             ## 00000410
	lh      v1, 0x4A4E(a2)             ## 00004A4E
	lw      t9, 0x49E0(a2)             ## 000049E0
	addiu   v1, v1, 0xFFCC             ## v1 = 00000198
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	addu    t7, t9, a0                 
	sh      v1, 0x0012(t7)             ## 80100012
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    t6, t8, a0                 
	sh      v1, 0x0002(t6)             ## 00000402
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    v0, t9, a0                 
	lh      v1, 0x0002(v0)             ## FFFFD782
	addiu   v1, v1, 0xFFF0             ## v1 = 00000188
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0032(v0)             ## FFFFD7B2
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sh      v1, 0x0022(t8)             ## 00000022
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    t9, t6, a0                 
	sh      t1, 0x0038(t9)             ## 00000338
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    v0, t7, a0                 
	lh      t8, 0x0038(v0)             ## FFFFD7B8
	sh      t8, 0x0018(v0)             ## FFFFD798
	lh      a1, 0x4A2E(a2)             ## 00004A2E
	bnel    a3, a1, lbl_8080E168       
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	lh      t6, 0x4A30(a2)             ## 00004A30
	slti    $at, t6, 0x0002            
	beq     $at, $zero, lbl_8080E180   
	addiu   $at, $zero, 0x0002         ## $at = 00000002
lbl_8080E168:
	bnel    a1, $at, lbl_8080E308      
	lh      v1, 0x4AB2(a2)             ## 00004AB2
	lh      t9, 0x4A36(a2)             ## 00004A36
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bnel    t9, $at, lbl_8080E308      
	lh      v1, 0x4AB2(a2)             ## 00004AB2
lbl_8080E180:
	bnel    a3, a1, lbl_8080E208       
	lh      t6, 0x4A2C(a2)             ## 00004A2C
	lh      a1, 0x4A30(a2)             ## 00004A30
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	beq     a1, $at, lbl_8080E1A8      
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	beq     a1, $at, lbl_8080E1A8      
	addiu   $at, $zero, 0x0015         ## $at = 00000015
	bnel    a1, $at, lbl_8080E1C4      
	addiu   $at, $zero, 0x0018         ## $at = 00000018
lbl_8080E1A8:
	lh      t7, 0x4A2A(a2)             ## 00004A2A
	lui     t4, %hi(var_80812EAC)      ## t4 = 80810000
	sll     t8, t7,  1                 
	addu    t4, t4, t8                 
	beq     $zero, $zero, lbl_8080E218 
	lh      t4, %lo(var_80812EAC)(t4)  
	addiu   $at, $zero, 0x0018         ## $at = 00000018
lbl_8080E1C4:
	beq     a1, $at, lbl_8080E1D4      
	addiu   $at, $zero, 0x000C         ## $at = 0000000C
	bnel    a1, $at, lbl_8080E1F0      
	lh      t7, 0x4A2A(a2)             ## 00004A2A
lbl_8080E1D4:
	lh      t6, 0x4A2A(a2)             ## 00004A2A
	lui     t4, %hi(var_80812EB4)      ## t4 = 80810000
	sll     t9, t6,  1                 
	addu    t4, t4, t9                 
	beq     $zero, $zero, lbl_8080E218 
	lh      t4, %lo(var_80812EB4)(t4)  
	lh      t7, 0x4A2A(a2)             ## 00004A2A
lbl_8080E1F0:
	lui     t4, %hi(var_80812EA0)      ## t4 = 80810000
	sll     t8, t7,  1                 
	addu    t4, t4, t8                 
	beq     $zero, $zero, lbl_8080E218 
	lh      t4, %lo(var_80812EA0)(t4)  
	lh      t6, 0x4A2C(a2)             ## 00004A2C
lbl_8080E208:
	lui     t4, %hi(var_80812EB8)      ## t4 = 80810000
	sll     t9, t6,  1                 
	addu    t4, t4, t9                 
	lh      t4, %lo(var_80812EB8)(t4)  
lbl_8080E218:
	lh      v1, 0x4AB2(a2)             ## 00004AB2
	lw      t7, 0x49E0(a2)             ## 000049E0
	sll     a0, t2,  4                 
	addiu   v1, v1, 0xFFF6             ## v1 = 0000017E
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	addu    t8, t7, a0                 
	sh      v1, 0x0020(t8)             ## 00000020
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    t9, t6, a0                 
	sh      v1, 0x0000(t9)             ## 00000300
	lw      t7, 0x49E0(a2)             ## 000049E0
	sll     t9, t4,  4                 
	addu    v0, t7, a0                 
	lh      v1, 0x0000(v0)             ## FFFFD780
	addiu   v1, v1, 0x0048             ## v1 = 000001C6
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0030(v0)             ## FFFFD7B0
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    t6, t8, a0                 
	sh      v1, 0x0010(t6)             ## 00000410
	lw      a1, 0x49E0(a2)             ## 000049E0
	addu    t7, a1, t9                 
	lh      v1, 0x0002(t7)             ## 80100002
	addu    t8, a1, a0                 
	addiu   v1, v1, 0x0004             ## v1 = 000001CA
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0012(t8)             ## 00000012
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    t9, t6, a0                 
	sh      v1, 0x0002(t9)             ## 00000302
	lw      t7, 0x49E0(a2)             ## 000049E0
	addiu   t9, $zero, 0x0900          ## t9 = 00000900
	addu    v0, t7, a0                 
	lh      v1, 0x0002(v0)             ## FFFFD782
	addiu   v1, v1, 0xFFE8             ## v1 = 000001B2
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0032(v0)             ## FFFFD7B2
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    t6, t8, a0                 
	sh      v1, 0x0022(t6)             ## 00000422
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sh      t9, 0x0038(t8)             ## 00000038
	lw      t6, 0x49E0(a2)             ## 000049E0
	addiu   t9, $zero, 0x0300          ## t9 = 00000300
	addu    v0, t6, a0                 
	lh      t7, 0x0038(v0)             ## FFFFD7B8
	sh      t7, 0x0018(v0)             ## FFFFD798
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    t6, t8, a0                 
	sh      t9, 0x003A(t6)             ## 0000043A
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    v0, t7, a0                 
	lh      t8, 0x003A(v0)             ## FFFFD7BA
	sh      t8, 0x002A(v0)             ## FFFFD7AA
	lh      v1, 0x4AB2(a2)             ## 00004AB2
lbl_8080E308:
	lw      t9, 0x49E0(a2)             ## 000049E0
	sll     a0, t2,  4                 
	addiu   v1, v1, 0x003A             ## v1 = 000001EC
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	addu    t6, t9, a0                 
	sh      v1, 0x0060(t6)             ## 00000460
	lw      t7, 0x49E0(a2)             ## 000049E0
	addu    t8, t7, a0                 
	sh      v1, 0x0040(t8)             ## 00000040
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    v0, t9, a0                 
	lh      v1, 0x0040(v0)             ## FFFFD7C0
	addiu   v1, v1, 0x0080             ## v1 = 0000026C
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0070(v0)             ## FFFFD7F0
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    t7, t6, a0                 
	sh      v1, 0x0050(t7)             ## 80100050
	lh      t8, 0x4A54(a2)             ## 00004A54
	lui     t6, %hi(var_80812EA0)      ## t6 = 80810000
	lw      a1, 0x49E0(a2)             ## 000049E0
	sll     t9, t8,  1                 
	addu    t6, t6, t9                 
	lh      t6, %lo(var_80812EA0)(t6)  
	addu    t9, a1, a0                 
	sll     t7, t6,  4                 
	addu    t8, a1, t7                 
	lh      v1, 0x0002(t8)             ## 00000002
	sh      v1, 0x0052(t9)             ## 00000352
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    t7, t6, a0                 
	sh      v1, 0x0042(t7)             ## 80100042
	lw      t8, 0x49E0(a2)             ## 000049E0
	addiu   t7, $zero, 0x1000          ## t7 = 00001000
	addu    v0, t8, a0                 
	lh      v1, 0x0042(v0)             ## FFFFD7C2
	addiu   v1, v1, 0xFFF0             ## v1 = 0000025C
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	sh      v1, 0x0072(v0)             ## FFFFD7F2
	lw      t9, 0x49E0(a2)             ## 000049E0
	addu    t6, t9, a0                 
	sh      v1, 0x0062(t6)             ## 80810062
	lw      t8, 0x49E0(a2)             ## 000049E0
	addu    t9, t8, a0                 
	sh      t7, 0x0078(t9)             ## 00000378
	lw      t6, 0x49E0(a2)             ## 000049E0
	addu    v0, t6, a0                 
	lh      t8, 0x0078(v0)             ## FFFFD7F8
	sh      t8, 0x0058(v0)             ## FFFFD7D8
	lw      s0, 0x0004($sp)            
	lw      s1, 0x0008($sp)            
	lw      s2, 0x000C($sp)            
	lw      s3, 0x0010($sp)            
	lw      s4, 0x0014($sp)            
	lw      s5, 0x0018($sp)            
	lw      s6, 0x001C($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000


func_8080E3FC:
	addiu   $sp, $sp, 0xFF10           ## $sp = FFFFFF10
	sw      s8, 0x0040($sp)            
	sw      s6, 0x0038($sp)            
	sw      a2, 0x00F8($sp)            
	sll     a2, a2, 16                 
	lui     s6, 0x0001                 ## s6 = 00010000
	sll     s8, a1, 16                 
	sw      s4, 0x0030($sp)            
	or      s4, a0, $zero              ## s4 = 00000000
	sra     s8, s8, 16                 
	ori     s6, s6, 0x8000             ## s6 = 00018000
	sra     a2, a2, 16                 
	sw      $ra, 0x0044($sp)           
	sw      s7, 0x003C($sp)            
	sw      s5, 0x0034($sp)            
	sw      s3, 0x002C($sp)            
	sw      s2, 0x0028($sp)            
	sw      s1, 0x0024($sp)            
	sw      s0, 0x0020($sp)            
	sw      a1, 0x00F4($sp)            
	lw      s0, 0x0000(s4)             ## 00000000
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t7, 0xE700                 ## t7 = E7000000
	lui     t9, 0xFCFF                 ## t9 = FCFF0000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t3, 0xFF2D                 ## t3 = FF2D0000
	ori     t3, t3, 0xFEFF             ## t3 = FF2DFEFF
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s0)             ## 000002C0
	ori     t9, t9, 0x97FF             ## t9 = FCFF97FF
	sw      t9, 0x0000(v0)             ## 00000000
	sw      t3, 0x0004(v0)             ## 00000004
	sll     s7, s8,  1                 
	addu    t4, s4, s7                 
	addu    t5, t4, s6                 
	sw      t5, 0x0058($sp)            
	lh      t6, 0x4A72(t5)             ## 00004A72
	lui     t8, 0x0102                 ## t8 = 01020000
	ori     t8, t8, 0x0040             ## t8 = 01020040
	beq     t6, $zero, lbl_8080E5A4    
	lui     t9, %hi(var_80812EBC)      ## t9 = 80810000
	lw      v0, 0x02C0(s0)             ## 000002C0
	addu    t9, t9, s7                 
	addu    t4, s4, s6                 
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s0)             ## 000002C0
	sw      t8, 0x0000(v0)             ## 00000000
	lhu     t9, %lo(var_80812EBC)(t9)  
	lw      t5, 0x49E0(t4)             ## 000049E0
	lui     t8, 0xFA00                 ## t8 = FA000000
	sll     t3, t9,  4                 
	addu    t6, t3, t5                 
	sw      t6, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(s0)             ## 000002C0
	sll     t9, a2,  2                 
	subu    t9, t9, a2                 
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s0)             ## 000002C0
	sw      t8, 0x0000(v0)             ## 00000000
	lw      t3, 0x0058($sp)            
	lui     t4, %hi(var_80812F40)      ## t4 = 80810000
	addiu   t4, t4, %lo(var_80812F40)  ## t4 = 80812F40
	sll     t9, t9,  1                 
	addu    v1, t9, t4                 
	lh      t8, 0x0000(v1)             ## 00000000
	lh      t5, 0x4A72(t3)             ## FF2E4971
	lh      t3, 0x0002(v1)             ## 00000002
	sll     t9, t8, 24                 
	andi    t6, t5, 0x00FF             ## t6 = 00000000
	or      t4, t6, t9                 ## t4 = 80810000
	lh      t6, 0x0004(v1)             ## 00000004
	andi    t5, t3, 0x00FF             ## t5 = 000000FF
	sll     t7, t5, 16                 
	andi    t9, t6, 0x00FF             ## t9 = 00000000
	sll     t3, t9,  8                 
	or      t8, t4, t7                 ## t8 = 80810008
	or      t5, t8, t3                 ## t5 = FFADFEFF
	sw      t5, 0x0004(v0)             ## 00000004
	ori     $at, $zero, 0xE758         ## $at = 0000E758
	sll     t4, s8,  3                 
	addu    s3, s4, t4                 
	addu    s5, s4, $at                
	or      s1, $zero, $zero           ## s1 = 00000000
	or      s2, $zero, $zero           ## s2 = 00000000
lbl_8080E55C:
	addu    t7, s3, s2                 
	addu    t6, t7, s6                 
	lbu     t9, 0x49F4(t6)             ## 000049F4
	sll     a2, s1, 16                 
	sra     a2, a2, 16                 
	sll     t8, t9,  7                 
	addu    a1, t8, s5                 
	addiu   a1, a1, 0x3C88             ## a1 = 00003C88
	jal     func_808068C0              
	lw      a0, 0x0000(s4)             ## 00000000
	addiu   s1, s1, 0x0004             ## s1 = 00000004
	sll     s1, s1, 16                 
	sra     s1, s1, 16                 
	addiu   s2, s2, 0x0001             ## s2 = 00000001
	sll     s2, s2, 16                 
	slti    $at, s1, 0x0020            
	bne     $at, $zero, lbl_8080E55C   
	sra     s2, s2, 16                 
lbl_8080E5A4:
	addu    t1, s4, s6                 
	lh      t3, 0x4A38(t1)             ## 00004A38
	lui     t9, 0xFC61                 ## t9 = FC610000
	ori     t9, t9, 0x96C3             ## t9 = FC6196C3
	beq     s8, t3, lbl_8080E5C8       
	addiu   s2, $sp, 0x00D8            ## s2 = FFFFFFE8
	lh      t5, 0x4A50(t1)             ## 00004A50
	bnel    s8, t5, lbl_8080EB4C       
	lw      $ra, 0x0044($sp)           
lbl_8080E5C8:
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t7, 0xE700                 ## t7 = E7000000
	or      a1, s2, $zero              ## a1 = FFFFFFE8
	addiu   t4, v0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t8, 0xFF2F                 ## t8 = FF2F0000
	ori     t8, t8, 0xFFFF             ## t8 = FF2FFFFF
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s0)             ## 000002C0
	sw      t8, 0x0004(v0)             ## 00000004
	sw      t9, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t5, 0xFA00                 ## t5 = FA000000
	addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
	addiu   t3, v0, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s0)             ## 000002C0
	sw      t5, 0x0000(v0)             ## 00000000
	lw      t4, 0x0058($sp)            
	lui     t3, %hi(var_80812EBC)      ## t3 = 80810000
	addiu   t3, t3, %lo(var_80812EBC)  ## t3 = 80812EBC
	lh      t7, 0x4A7E(t4)             ## 00004A86
	addu    t2, s7, t3                 
	lui     t5, 0x0100                 ## t5 = 01000000
	andi    t6, t7, 0x00FF             ## t6 = 00000000
	or      t9, t6, $at                ## t9 = FFFFFF00
	sw      t9, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(s0)             ## 000002C0
	ori     t5, t5, 0xC018             ## t5 = 0100C018
	ori     $at, $zero, 0xE758         ## $at = 0000E758
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s0)             ## 000002C0
	sw      t5, 0x0000(v0)             ## 00000000
	lhu     t4, 0x0000(t2)             ## 00000000
	lw      t6, 0x49E0(t1)             ## 000049E0
	addu    s5, s4, $at                
	sll     t7, t4,  4                 
	addu    t9, t7, t6                 
	addiu   t8, t9, 0x0240             ## t8 = 00000140
	sw      t8, 0x0004(v0)             ## 00000004
	lw      t3, 0x0058($sp)            
	addiu   a2, $sp, 0x00DA            ## a2 = FFFFFFEA
	addiu   a3, $sp, 0x00DC            ## a3 = FFFFFFEC
	lhu     a0, 0x49EE(t3)             ## 808178AA
	sw      t2, 0x0054($sp)            
	jal     func_8080C0FC              
	sw      t1, 0x0050($sp)            
	or      s3, $zero, $zero           ## s3 = 00000000
	or      s1, $zero, $zero           ## s1 = 00000000
lbl_8080E694:
	sll     t5, s3,  1                 
	addu    t4, s2, t5                 
	lh      t7, 0x0000(t4)             ## 00000000
	sll     a2, s1, 16                 
	sra     a2, a2, 16                 
	sll     t6, t7,  7                 
	addu    a1, t6, s5                 
	addiu   a1, a1, 0x3C88             ## a1 = 00003C88
	jal     func_808068C0              
	lw      a0, 0x0000(s4)             ## 00000000
	addiu   s3, s3, 0x0001             ## s3 = 00000001
	sll     s3, s3, 16                 
	sra     s3, s3, 16                 
	addiu   s1, s1, 0x0004             ## s1 = 00000004
	sll     s1, s1, 16                 
	slti    $at, s3, 0x0003            
	bne     $at, $zero, lbl_8080E694   
	sra     s1, s1, 16                 
	lui     t1, 0xE700                 ## t1 = E7000000
	lw      v0, 0x02C0(s0)             ## 000002C0
	addu    t8, s4, s8                 
	addu    t3, t8, s6                 
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t1, 0x0000(v0)             ## 00000000
	lb      t5, 0x4A26(t3)             ## 00004A26
	lui     t6, 0xFC30                 ## t6 = FC300000
	ori     t6, t6, 0x9661             ## t6 = FC309661
	bne     t5, $zero, lbl_8080E718    
	lui     t3, 0xFA00                 ## t3 = FA000000
	beq     $zero, $zero, lbl_8080E71C 
	or      a3, $zero, $zero           ## a3 = 00000000
lbl_8080E718:
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
lbl_8080E71C:
	lw      v0, 0x02C0(s0)             ## 000002C0
	sll     t0, a3,  2                 
	subu    t0, t0, a3                 
	addiu   t4, v0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t1, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t9, 0x552E                 ## t9 = 552E0000
	ori     t9, t9, 0xFF7F             ## t9 = 552EFF7F
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s0)             ## 000002C0
	sw      t9, 0x0004(v0)             ## 00000004
	sw      t6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t5, %hi(var_80812F54)      ## t5 = 80810000
	addiu   t5, t5, %lo(var_80812F54)  ## t5 = 80812F54
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s0)             ## 000002C0
	sw      t3, 0x0000(v0)             ## 00000000
	lw      t4, 0x0058($sp)            
	sll     t0, t0,  1                 
	addu    v1, t0, t5                 
	lh      t8, 0x0000(v1)             ## 00000000
	lh      t7, 0x4A7E(t4)             ## 00004A86
	lh      t4, 0x0002(v1)             ## 00000002
	sll     t3, t8, 24                 
	andi    t6, t7, 0x00FF             ## t6 = 00000008
	or      t5, t6, t3                 ## t5 = FA000008
	lh      t6, 0x0004(v1)             ## 00000004
	andi    t7, t4, 0x00FF             ## t7 = 00000008
	sll     t9, t7, 16                 
	andi    t3, t6, 0x00FF             ## t3 = 00000008
	sll     t4, t3,  8                 
	or      t8, t5, t9                 ## t8 = FF2EFF7F
	or      t7, t8, t4                 ## t7 = FF2EFF7F
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t6, %hi(var_80812F60)      ## t6 = 80810000
	addiu   t6, t6, %lo(var_80812F60)  ## t6 = 80812F60
	addiu   t5, v0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s0)             ## 000002C0
	lui     t9, 0xFB00                 ## t9 = FB000000
	addu    v1, t0, t6                 
	sw      t9, 0x0000(v0)             ## 00000000
	lh      t3, 0x0004(v1)             ## 00000004
	lh      t5, 0x0000(v1)             ## 00000000
	lui     s6, 0x0100                 ## s6 = 01000000
	andi    t8, t3, 0x00FF             ## t8 = 00000008
	lh      t3, 0x0002(v1)             ## 00000002
	sll     t4, t8,  8                 
	sll     t9, t5, 24                 
	andi    t8, t3, 0x00FF             ## t8 = 00000008
	sll     t7, t8, 16                 
	or      t6, t4, t9                 ## t6 = FB000008
	or      t5, t6, t7                 ## t5 = FF2EFF7F
	ori     t4, t5, 0x00FF             ## t4 = FF2EFFFF
	sw      t4, 0x0004(v0)             ## 00000004
	lw      t9, 0x0058($sp)            
	lhu     s3, 0x4A0C(t9)             ## FB004A0C
	or      s1, $zero, $zero           ## s1 = 00000000
	or      s2, $zero, $zero           ## s2 = 00000000
	bgez    s3, lbl_8080E820           
	addu    $at, s3, $zero             
	addiu   $at, s3, 0x000F            ## $at = 00000010
lbl_8080E820:
	sra     s3, $at,  4                
	sll     s3, s3, 16                 
	sra     s3, s3, 16                 
	blez    s3, lbl_8080E8BC           
	sll     t3, a3,  2                 
	lui     t8, %hi(var_80812F4C)      ## t8 = 80810000
	addiu   t8, t8, %lo(var_80812F4C)  ## t8 = 80812F4C
	addu    s5, t3, t8                 
	ori     s6, s6, 0x4008             ## s6 = 01004008
lbl_8080E844:
	lw      v0, 0x02C0(s0)             ## 000002C0
	addiu   a2, $zero, 0x0010          ## a2 = 00000010
	addiu   a3, $zero, 0x0010          ## a3 = 00000010
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s0)             ## 000002C0
	sw      s6, 0x0000(v0)             ## 00000000
	lw      t7, 0x0054($sp)            
	lw      t3, 0x0050($sp)            
	lhu     t5, 0x0000(t7)             ## FF2EFF7F
	lw      t8, 0x49E0(t3)             ## 000049E8
	addu    t4, t5, s1                 
	sll     t9, t4,  4                 
	addu    t6, t9, t8                 
	addiu   t7, t6, 0x0300             ## t7 = 00000308
	sw      t7, 0x0004(v0)             ## 00000004
	lw      a0, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0010($sp)         
	jal     func_8080BD44              
	lw      a1, 0x0000(s5)             ## 00000000
	addiu   s2, s2, 0x0001             ## s2 = 00000001
	sll     s2, s2, 16                 
	sra     s2, s2, 16                 
	addiu   s1, s1, 0x0004             ## s1 = 00000004
	sll     s1, s1, 16                 
	slt     $at, s2, s3                
	sra     s1, s1, 16                 
	bne     $at, $zero, lbl_8080E844   
	sw      v0, 0x02C0(s0)             ## 000002C0
	or      s1, $zero, $zero           ## s1 = 00000000
	or      s2, $zero, $zero           ## s2 = 00000000
lbl_8080E8BC:
	lui     s6, 0x0100                 ## s6 = 01000000
	ori     s6, s6, 0x4008             ## s6 = 01004008
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t4, 0xE700                 ## t4 = E7000000
	sll     t3, s8,  2                 
	addiu   t5, v0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t4, 0x0000(v0)             ## 00000000
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    t0, s4, t3                 
	lui     s8, %hi(var_80812EE8)      ## s8 = 80810000
	lui     s7, %hi(var_80812F24)      ## s7 = 80810000
	lui     s5, 0x8010                 ## s5 = 80100000
	lui     s3, %hi(var_80812EC4)      ## s3 = 80810000
	addiu   s3, s3, %lo(var_80812EC4)  ## s3 = 80812EC4
	addiu   s5, s5, 0x8BF0             ## s5 = 800F8BF0
	addiu   s7, s7, %lo(var_80812F24)  ## s7 = 80812F24
	addiu   s8, s8, %lo(var_80812EE8)  ## s8 = 80812EE8
	addu    t0, t0, $at                
lbl_8080E910:
	sll     a2, s2,  1                 
	addu    t9, s7, a2                 
	lh      t8, 0x0000(t9)             ## 00000000
	lw      t4, 0x4A14(t0)             ## 00004A14
	slti    $at, s2, 0x0003            
	sll     t6, t8,  2                 
	addu    t7, s5, t6                 
	lw      t5, 0x0000(t7)             ## 00000000
	and     t3, t5, t4                 
	beql    t3, $zero, lbl_8080EB2C    
	addiu   s2, s2, 0x0001             ## s2 = 00000001
	lw      v0, 0x02C0(s0)             ## 000002C0
	addiu   a3, $zero, 0x0010          ## a3 = 00000010
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(s0)             ## 000002C0
	sw      s6, 0x0000(v0)             ## 00000000
	lw      t8, 0x0054($sp)            
	lw      t4, 0x0050($sp)            
	lhu     t6, 0x0000(t8)             ## 00000000
	lw      t3, 0x49E0(t4)             ## E70049E0
	addu    t7, t6, s1                 
	sll     t5, t7,  4                 
	addu    t9, t5, t3                 
	addiu   t8, t9, 0x0800             ## t8 = 00000808
	sw      t8, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t7, 0xE700                 ## t7 = E7000000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t5, 0xFA00                 ## t5 = FA000000
	addu    t6, s8, a2                 
	addiu   t4, v0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(s0)             ## 000002C0
	sw      t5, 0x0000(v0)             ## 00000000
	lw      t3, 0x0058($sp)            
	lh      t4, 0x0000(t6)             ## 00000008
	lh      t9, 0x4A7E(t3)             ## 00004A7E
	sll     t5, t4, 24                 
	andi    t8, t9, 0x00FF             ## t8 = 00000008
	or      t3, t8, t5                 ## t3 = FA000008
	lui     t9, %hi(var_80812EFC)      ## t9 = 80810000
	addu    t9, t9, a2                 
	lui     t8, %hi(var_80812F10)      ## t8 = 80810000
	lh      t9, %lo(var_80812EFC)(t9)  
	addu    t8, t8, a2                 
	lh      t8, %lo(var_80812F10)(t8)  
	andi    t6, t9, 0x00FF             ## t6 = 00000000
	sll     t7, t6, 16                 
	andi    t5, t8, 0x00FF             ## t5 = 00000000
	sll     t9, t5,  8                 
	or      t4, t3, t7                 ## t4 = FF000008
	or      t6, t4, t9                 ## t6 = FF810008
	sw      t6, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t7, 0xFB00                 ## t7 = FB000000
	sll     t4, s2,  2                 
	addiu   t3, v0, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	beq     $at, $zero, lbl_8080EB08   
	addu    t9, s3, t4                 
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t5, 0xFD18                 ## t5 = FD180000
	sll     t4, s2,  2                 
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s0)             ## 000002C0
	addu    t9, s3, t4                 
	sw      t5, 0x0000(v0)             ## 00000000
	lw      t6, 0x0000(t9)             ## 80810000
	sw      t6, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t7, 0xF518                 ## t7 = F5180000
	lui     t8, 0x0700                 ## t8 = 07000000
	addiu   t3, v0, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s0)             ## 000002C0
	sw      t8, 0x0004(v0)             ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t4, 0xE600                 ## t4 = E6000000
	lui     t6, 0xF300                 ## t6 = F3000000
	addiu   t5, v0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t3, 0x070F                 ## t3 = 070F0000
	ori     t3, t3, 0xF100             ## t3 = 070FF100
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(s0)             ## 000002C0
	sw      t3, 0x0004(v0)             ## 00000004
	sw      t6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t8, 0xE700                 ## t8 = E7000000
	lui     t6, 0xF200                 ## t6 = F2000000
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t4, 0xF518                 ## t4 = F5180000
	ori     t4, t4, 0x0800             ## t4 = F5180800
	addiu   t5, v0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t3, 0x0003                 ## t3 = 00030000
	ori     t3, t3, 0xC03C             ## t3 = 0003C03C
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(s0)             ## 000002C0
	sw      t3, 0x0004(v0)             ## 00000004
	sw      t6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     t8, 0x0700                 ## t8 = 07000000
	ori     t8, t8, 0x0406             ## t8 = 07000406
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s0)             ## 000002C0
	addiu   t5, $zero, 0x0602          ## t5 = 00000602
	sw      t5, 0x0004(v0)             ## 00000004
	sw      t8, 0x0000(v0)             ## 00000000
	beq     $zero, $zero, lbl_8080EB2C 
	addiu   s2, s2, 0x0001             ## s2 = 00000002
lbl_8080EB08:
	lw      a0, 0x02C0(s0)             ## 000002C0
	lw      a1, 0x0000(t9)             ## 00000008
	sw      t0, 0x005C($sp)            
	sw      $zero, 0x0010($sp)         
	jal     func_8080BD44              
	addiu   a2, $zero, 0x0010          ## a2 = 00000010
	lw      t0, 0x005C($sp)            
	sw      v0, 0x02C0(s0)             ## 000002C0
	addiu   s2, s2, 0x0001             ## s2 = 00000003
lbl_8080EB2C:
	sll     s2, s2, 16                 
	sra     s2, s2, 16                 
	addiu   s1, s1, 0x0004             ## s1 = 00000004
	sll     s1, s1, 16                 
	slti    $at, s2, 0x0009            
	bne     $at, $zero, lbl_8080E910   
	sra     s1, s1, 16                 
	lw      $ra, 0x0044($sp)           
lbl_8080EB4C:
	lw      s0, 0x0020($sp)            
	lw      s1, 0x0024($sp)            
	lw      s2, 0x0028($sp)            
	lw      s3, 0x002C($sp)            
	lw      s4, 0x0030($sp)            
	lw      s5, 0x0034($sp)            
	lw      s6, 0x0038($sp)            
	lw      s7, 0x003C($sp)            
	lw      s8, 0x0040($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x00F0           ## $sp = 00000000


func_8080EB78:
	addiu   $sp, $sp, 0xFD80           ## $sp = FFFFFD80
	sw      s6, 0x0030($sp)            
	sw      s5, 0x002C($sp)            
	or      s5, a0, $zero              ## s5 = 00000000
	lui     s6, 0xE700                 ## s6 = E7000000
	sw      $ra, 0x003C($sp)           
	sw      s8, 0x0038($sp)            
	sw      s7, 0x0034($sp)            
	sw      s4, 0x0028($sp)            
	sw      s3, 0x0024($sp)            
	sw      s2, 0x0020($sp)            
	sw      s1, 0x001C($sp)            
	sw      s0, 0x0018($sp)            
	lw      a3, 0x0000(s5)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t8, 0xFC30                 ## t8 = FC300000
	ori     t8, t8, 0x9661             ## t8 = FC309661
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0x552E                 ## t9 = 552E0000
	ori     t9, t9, 0xFF7F             ## t9 = 552EFF7F
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      t9, 0x0004(v0)             ## 00000004
	sw      t8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	lui     t7, 0xFA00                 ## t7 = FA000000
	addu    t0, s5, $at                
	sw      t7, 0x0000(v0)             ## 00000000
	lh      t8, 0x4A60(t0)             ## 00004A60
	addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
	lui     t2, %hi(var_80812F80)      ## t2 = 80810000
	andi    t9, t8, 0x00FF             ## t9 = 00000061
	or      t6, t9, $at                ## t6 = FFFFFF61
	sw      t6, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t8, 0xFB00                 ## t8 = FB000000
	addiu   t2, t2, %lo(var_80812F80)  ## t2 = 80812F80
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	lui     s2, 0x0700                 ## s2 = 07000000
	lui     s4, 0xF570                 ## s4 = F5700000
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t6, 0x0100                 ## t6 = 01000000
	ori     t6, t6, 0x4008             ## t6 = 01004008
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      t6, 0x0000(v0)             ## 00000000
	lw      t7, 0x49E0(t0)             ## 000049E0
	or      t3, t0, $zero              ## t3 = 00000000
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0xFD70                 ## t9 = FD700000
	lui     t6, 0x8012                 ## t6 = 80120000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      t9, 0x0000(v0)             ## 00000000
	lbu     t6, -0x4627(t6)            ## 8011B9D9
	lh      t9, 0x4A56(t0)             ## 00004A56
	sll     t7, t6,  3                 
	addu    t7, t7, t6                 
	sll     t7, t7,  2                 
	addu    t8, t2, t7                 
	sll     t6, t9,  2                 
	addu    t7, t8, t6                 
	lw      t9, 0x0000(t7)             ## 00000008
	sw      t9, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      s2, 0x0004(v0)             ## 00000004
	sw      s4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     s7, 0xE600                 ## s7 = E6000000
	lui     s8, 0xF300                 ## s8 = F3000000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0x073F                 ## t9 = 073F0000
	ori     t9, t9, 0xF080             ## t9 = 073FF080
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      t9, 0x0004(v0)             ## 00000004
	sw      s8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t7, 0xF568                 ## t7 = F5680000
	ori     t7, t7, 0x2000             ## t7 = F5682000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t6, 0x001F                 ## t6 = 001F0000
	ori     t6, t6, 0xC03C             ## t6 = 001FC03C
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      t0, 0x0044($sp)            
	lui     t8, 0xF200                 ## t8 = F2000000
	sw      t8, 0x0000(v0)             ## 00000000
	sw      t6, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0x0700                 ## t9 = 07000000
	ori     t9, t9, 0x0406             ## t9 = 07000406
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	addiu   t8, $zero, 0x0602          ## t8 = 00000602
	sw      t8, 0x0004(v0)             ## 00000004
	sw      t9, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0xFA00                 ## t9 = FA000000
	addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      t9, 0x0000(v0)             ## 00000000
	lh      t8, 0x4A62(t3)             ## 00004A62
	or      s3, $zero, $zero           ## s3 = 00000000
	addiu   s1, $zero, 0x0038          ## s1 = 00000038
	andi    t6, t8, 0x00FF             ## t6 = 00000002
	or      t7, t6, $at                ## t7 = FFFFFF02
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t8, 0xFD70                 ## t8 = FD700000
	lui     t6, 0x8012                 ## t6 = 80120000
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      t8, 0x0000(v0)             ## 00000000
	lbu     t6, -0x4627(t6)            ## 8011B9D9
	lh      t8, 0x4A58(t3)             ## 00004A58
	lui     s0, %hi(var_80812DC0)      ## s0 = 80810000
	sll     t7, t6,  3                 
	addu    t7, t7, t6                 
	sll     t7, t7,  2                 
	addu    t9, t2, t7                 
	sll     t6, t8,  2                 
	addu    t7, t9, t6                 
	lw      t8, 0x0000(t7)             ## FFFFFF02
	addiu   s0, s0, %lo(var_80812DC0)  ## s0 = 80812DC0
	lui     $ra, %hi(var_80812F6C)     ## $ra = 80810000
	sw      t8, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   $ra, $ra, %lo(var_80812F6C) ## $ra = 80812F6C
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      s2, 0x0004(v0)             ## 00000004
	sw      s4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t8, 0x073F                 ## t8 = 073F0000
	ori     t8, t8, 0xF080             ## t8 = 073FF080
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      t8, 0x0004(v0)             ## 00000004
	sw      s8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t7, 0xF568                 ## t7 = F5680000
	ori     t7, t7, 0x2000             ## t7 = F5682000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t6, 0x001F                 ## t6 = 001F0000
	ori     t6, t6, 0xC03C             ## t6 = 001FC03C
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a3)             ## 000002C0
	lui     t9, 0xF200                 ## t9 = F2000000
	sw      t9, 0x0000(v0)             ## 00000000
	sw      t6, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t8, 0x0700                 ## t8 = 07000000
	ori     t8, t8, 0x0406             ## t8 = 07000406
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	addiu   t9, $zero, 0x0602          ## t9 = 00000602
	sw      t9, 0x0004(v0)             ## 00000004
	sw      t8, 0x0000(v0)             ## 00000000
	addiu   t6, $zero, 0x0004          ## t6 = 00000004
	sh      t6, 0x0274($sp)            
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s6, 0x0000(v0)             ## 00000000
lbl_8080EECC:
	lw      a2, 0x0044($sp)            
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t6, 0xFA00                 ## t6 = FA000000
	or      t5, $zero, $zero           ## t5 = 00000000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	sll     t7, s3,  1                 
	addu    t8, s5, t7                 
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a3)             ## 000002C0
	lui     t9, 0x0002                 ## t9 = 00020000
	addu    t9, t9, t8                 
	sw      t6, 0x0000(v0)             ## 00000000
	lh      t9, -0x3582(t9)            ## 0001CA7E
	lh      t8, 0x4A5A(a2)             ## 00004A5A
	addiu   s3, s3, 0x0001             ## s3 = 00000001
	andi    t6, t9, 0x00FF             ## t6 = 00000000
	sll     t9, t8, 24                 
	lh      t8, 0x4A5C(a2)             ## 00004A5C
	or      t7, t6, t9                 ## t7 = 00020000
	sll     s3, s3, 16                 
	andi    t6, t8, 0x00FF             ## t6 = 00000008
	sll     t9, t6, 16                 
	lh      t6, 0x4A5E(a2)             ## 00004A5E
	or      t8, t7, t9                 ## t8 = 00020000
	or      t4, $zero, $zero           ## t4 = 00000000
	andi    t7, t6, 0x00FF             ## t7 = 00000008
	sll     t9, t7,  8                 
	or      t6, t8, t9                 ## t6 = 00020000
	sw      t6, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t8, 0x0101                 ## t8 = 01010000
	ori     t8, t8, 0x4028             ## t8 = 01014028
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      t8, 0x0000(v0)             ## 00000000
	lh      t6, 0x0274($sp)            
	lw      t9, 0x49E0(a2)             ## 000049E0
	sll     t7, t6,  4                 
	addu    t8, t9, t7                 
	sw      t8, 0x0004(v0)             ## 00000004
lbl_8080EF7C:
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0xFD70                 ## t9 = FD700000
	sll     t7, t4,  2                 
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	addu    t8, $ra, t7                
	sw      t9, 0x0000(v0)             ## 00000000
	lw      t6, 0x0000(t8)             ## 01014028
	addiu   t1, $zero, 0x07FF          ## t1 = 000007FF
	sw      t6, 0x0004(v0)             ## 00000004
	lw      a0, 0x02C0(a3)             ## 000002C0
	addiu   t9, a0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      s2, 0x0004(a0)             ## 00000004
	sw      s4, 0x0000(a0)             ## 00000000
	lw      a1, 0x02C0(a3)             ## 000002C0
	sll     a0, t5,  1                 
	addiu   t5, t5, 0x0004             ## t5 = 00000004
	addiu   t7, a1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(a1)          ## 00000004
	sw      s7, 0x0000(a1)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	sll     t6, t4,  1                 
	addu    t0, s0, t6                 
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      s8, 0x0000(v0)             ## 00000000
	lh      v1, 0x0000(t0)             ## 00000000
	or      t3, v0, $zero              ## t3 = 00000000
	addiu   t4, t4, 0x0001             ## t4 = 00000001
	multu   v1, s1                     
	sll     t4, t4, 16                 
	andi    a1, a0, 0x00FF             ## a1 = 00000000
	sra     t4, t4, 16                 
	sll     t5, t5, 16                 
	sll     a1, a1, 16                 
	mflo    v0                         
	addiu   v0, v0, 0xFFFF             ## v0 = FFFFFFFF
	slti    $at, v0, 0x07FF            
	beq     $at, $zero, lbl_8080F02C   
	nop
	beq     $zero, $zero, lbl_8080F02C 
	or      t1, v0, $zero              ## t1 = FFFFFFFF
lbl_8080F02C:
	sll     v0, v1,  1                 
	bgez    v0, lbl_8080F03C           
	addu    $at, v0, $zero             
	addiu   $at, v0, 0x0007            ## $at = 00000006
lbl_8080F03C:
	sra     v0, $at,  3                
	bgtz    v0, lbl_8080F050           
	or      t2, v0, $zero              ## t2 = FFFFFFFF
	beq     $zero, $zero, lbl_8080F050 
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
lbl_8080F050:
	bgtz    v0, lbl_8080F060           
	addiu   t9, t2, 0x07FF             ## t9 = 00000800
	beq     $zero, $zero, lbl_8080F064 
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
lbl_8080F060:
	or      a2, v0, $zero              ## a2 = FFFFFFFF
lbl_8080F064:
	div     $zero, t9, a2              
	mflo    t7                         
	andi    t8, t7, 0x0FFF             ## t8 = 00000008
	bne     a2, $zero, lbl_8080F07C    
	nop
	break	## 0x01C00
lbl_8080F07C:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     a2, $at, lbl_8080F094      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t9, $at, lbl_8080F094      
	nop
	break	## 0x01800
lbl_8080F094:
	andi    t9, t1, 0x0FFF             ## t9 = 00000FFF
	sll     t7, t9, 12                 
	or      t6, t8, s2                 ## t6 = 07000008
	or      t8, t6, t7                 ## t8 = 07000008
	sw      t8, 0x0004(t3)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   a2, a0, 0x0006             ## a2 = 00000006
	andi    a2, a2, 0x00FF             ## a2 = 00000006
	addiu   t9, v0, 0x0008             ## t9 = 00000007
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000003
	sw      s6, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	slti    $at, t4, 0x0005            
	addiu   t6, v0, 0x0008             ## t6 = 00000007
	sw      t6, 0x02C0(a3)             ## 000002C0
	lh      t7, 0x0000(t0)             ## 00000000
	sw      $zero, 0x0004(v0)          ## 00000003
	sll     t8, t7,  1                 
	addiu   t9, t8, 0x0007             ## t9 = 0700000F
	sra     t6, t9,  3                 
	andi    t7, t6, 0x01FF             ## t7 = 00000007
	sll     t8, t7,  9                 
	or      t9, t8, s4                 ## t9 = F7700008
	sw      t9, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t7, 0xF200                 ## t7 = F2000000
	addiu   t6, v0, 0x0008             ## t6 = 00000007
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      t7, 0x0000(v0)             ## FFFFFFFF
	lh      t8, 0x0000(t0)             ## 00000000
	addiu   t9, t8, 0xFFFF             ## t9 = 07000007
	sll     t6, t9,  2                 
	andi    t7, t6, 0x0FFF             ## t7 = 00000007
	sll     t8, t7, 12                 
	ori     t9, t8, 0x00DC             ## t9 = 070000DC
	sw      t9, 0x0004(v0)             ## 00000003
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t7, a0, 0x0004             ## t7 = 00000004
	andi    t8, t7, 0x00FF             ## t8 = 00000004
	addiu   t6, v0, 0x0008             ## t6 = 00000007
	sw      t6, 0x02C0(a3)             ## 000002C0
	sll     t9, t8,  8                 
	or      t6, a1, t9                 ## t6 = 070000DC
	or      t7, t6, a2                 ## t7 = 070000DE
	or      t8, t7, s2                 ## t8 = 070000DE
	addiu   t7, a0, 0x0002             ## t7 = 00000002
	sll     t9, a2,  8                 
	sw      t8, 0x0000(v0)             ## FFFFFFFF
	andi    t8, t7, 0x00FF             ## t8 = 00000002
	or      t6, a1, t9                 ## t6 = 070000DC
	or      t9, t6, t8                 ## t9 = 070000DE
	sw      t9, 0x0004(v0)             ## 00000003
	bne     $at, $zero, lbl_8080EF7C   
	sra     t5, t5, 16                 
	lh      t7, 0x0274($sp)            
	sra     s3, s3, 16                 
	slti    $at, s3, 0x0003            
	addiu   t6, t7, 0x0014             ## t6 = 00000016
	bne     $at, $zero, lbl_8080EECC   
	sh      t6, 0x0274($sp)            
	lui     t3, 0x0102                 ## t3 = 01020000
	lui     t5, 0x0100                 ## t5 = 01000000
	lui     s1, 0xF570                 ## s1 = F5700000
	lui     s0, %hi(var_80812DCC)      ## s0 = 80810000
	lui     $ra, 0x000F                ## $ra = 000F0000
	ori     $ra, $ra, 0xC03C           ## $ra = 000FC03C
	addiu   s0, s0, %lo(var_80812DCC)  ## s0 = 80812DCC
	ori     s1, s1, 0x2000             ## s1 = F5702000
	addiu   t5, t5, 0x2800             ## t5 = 01002800
	addiu   t3, t3, 0x1F80             ## t3 = 01021F80
	or      t4, $zero, $zero           ## t4 = 00000000
	addiu   s3, $zero, 0x0006          ## s3 = 00000006
lbl_8080F1B8:
	lw      a0, 0x0044($sp)            
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0x0101                 ## t9 = 01010000
	ori     t9, t9, 0x4028             ## t9 = 01014028
	addiu   t8, v0, 0x0008             ## t8 = 00000007
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      t9, 0x0000(v0)             ## FFFFFFFF
	lh      t6, 0x0274($sp)            
	lw      t7, 0x49E0(a0)             ## 000049E0
	lui     $at, 0x0001                ## $at = 00010000
	sll     t8, t6,  4                 
	addu    t9, t7, t8                 
	sw      t9, 0x0004(v0)             ## 00000003
	sll     t6, t4,  1                 
	addu    t1, s5, t6                 
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    t1, t1, $at                
	lh      t8, 0x4A20(t1)             ## 00004A1F
	lbu     t7, 0x49EC(a0)             ## 000049EC
	beq     t7, t8, lbl_8080F21C       
	nop
	lh      t9, 0x4A6C(t1)             ## 00004A6B
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	bne     t9, $zero, lbl_8080F224    
	nop
lbl_8080F21C:
	beq     $zero, $zero, lbl_8080F224 
	or      a2, $zero, $zero           ## a2 = 00000000
lbl_8080F224:
	multu   a2, s3                     
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t7, 0xFA00                 ## t7 = FA000000
	addiu   t6, v0, 0x0008             ## t6 = 00000007
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      t7, 0x0000(v0)             ## FFFFFFFF
	lh      t9, 0x4A66(t1)             ## 00004A65
	mflo    t8                         
	addu    v1, s0, t8                 
	lh      t8, 0x0000(v1)             ## 00000000
	andi    t6, t9, 0x00FF             ## t6 = 00000028
	sll     t9, t8, 24                 
	lh      t8, 0x0002(v1)             ## 00000002
	or      t7, t6, t9                 ## t7 = 01014028
	andi    t6, t8, 0x00FF             ## t6 = 00000007
	sll     t9, t6, 16                 
	lh      t6, 0x0004(v1)             ## 00000004
	or      t8, t7, t9                 ## t8 = 01014028
	andi    t7, t6, 0x00FF             ## t7 = 00000007
	sll     t9, t7,  8                 
	or      t6, t8, t9                 ## t6 = 01014028
	sw      t6, 0x0004(v0)             ## 00000003
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t8, 0xFD70                 ## t8 = FD700000
	lui     t9, 0x8012                 ## t9 = 80120000
	addiu   t7, v0, 0x0008             ## t7 = 00000007
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      t8, 0x0000(v0)             ## FFFFFFFF
	lbu     t9, -0x4627(t9)            ## 8011B9D9
	sll     t7, t4,  2                 
	addiu   t4, t4, 0x0001             ## t4 = 00000001
	sll     t6, t9,  2                 
	subu    t6, t6, t9                 
	sll     t6, t6,  2                 
	addu    t8, t6, t7                 
	lui     t9, %hi(var_80812FF0)      ## t9 = 80810000
	addu    t9, t9, t8                 
	lw      t9, %lo(var_80812FF0)(t9)  
	sll     t4, t4, 16                 
	sw      t9, 0x0004(v0)             ## 00000003
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t6, v0, 0x0008             ## t6 = 00000007
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      s2, 0x0004(v0)             ## 00000003
	sw      s4, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t7, v0, 0x0008             ## t7 = 00000007
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000003
	sw      s7, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0x073F                 ## t9 = 073F0000
	ori     t9, t9, 0xF080             ## t9 = 073FF080
	addiu   t8, v0, 0x0008             ## t8 = 00000007
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      t9, 0x0004(v0)             ## 00000003
	sw      s8, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t6, v0, 0x0008             ## t6 = 00000007
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000003
	sw      s6, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t7, v0, 0x0008             ## t7 = 00000007
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000003
	sw      s1, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0xF200                 ## t9 = F2000000
	lui     t7, 0x0700                 ## t7 = 07000000
	addiu   t8, v0, 0x0008             ## t8 = 00000007
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      $ra, 0x0004(v0)            ## 00000003
	sw      t9, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	ori     t7, t7, 0x0406             ## t7 = 07000406
	addiu   t8, $zero, 0x0602          ## t8 = 00000602
	addiu   t6, v0, 0x0008             ## t6 = 00000007
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      t8, 0x0004(v0)             ## 00000003
	sw      t7, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t6, 0xFA00                 ## t6 = FA000000
	addiu   t9, v0, 0x0008             ## t9 = 00000007
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      t6, 0x0000(v0)             ## FFFFFFFF
	lh      t7, 0x4A6C(t1)             ## 00004A6B
	lh      t6, 0x0000(v1)             ## 00000000
	andi    t8, t7, 0x00FF             ## t8 = 00000006
	sll     t7, t6, 24                 
	lh      t6, 0x0002(v1)             ## 00000002
	or      t9, t8, t7                 ## t9 = 07000406
	andi    t8, t6, 0x00FF             ## t8 = 00000000
	sll     t7, t8, 16                 
	lh      t8, 0x0004(v1)             ## 00000004
	or      t6, t9, t7                 ## t6 = 07000406
	andi    t9, t8, 0x00FF             ## t9 = 00000000
	sll     t7, t9,  8                 
	or      t8, t6, t7                 ## t8 = 07000406
	sw      t8, 0x0004(v0)             ## 00000003
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t6, 0xFD70                 ## t6 = FD700000
	addiu   t9, v0, 0x0008             ## t9 = 00000007
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      t3, 0x0004(v0)             ## 00000003
	sw      t6, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t7, v0, 0x0008             ## t7 = 00000007
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      s2, 0x0004(v0)             ## 00000003
	sw      s4, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t8, v0, 0x0008             ## t8 = 00000007
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000003
	sw      s7, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t6, 0x076B                 ## t6 = 076B0000
	ori     t6, t6, 0xF04C             ## t6 = 076BF04C
	addiu   t9, v0, 0x0008             ## t9 = 00000007
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      t6, 0x0004(v0)             ## 00000003
	sw      s8, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t7, v0, 0x0008             ## t7 = 00000007
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000003
	sw      s6, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0xF570                 ## t9 = F5700000
	ori     t9, t9, 0x3600             ## t9 = F5703600
	addiu   t8, v0, 0x0008             ## t8 = 00000007
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000003
	sw      t9, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t8, 0x001A                 ## t8 = 001A0000
	ori     t8, t8, 0xC03C             ## t8 = 001AC03C
	addiu   t6, v0, 0x0008             ## t6 = 00000007
	sw      t6, 0x02C0(a3)             ## 000002C0
	lui     t7, 0xF200                 ## t7 = F2000000
	sw      t7, 0x0000(v0)             ## FFFFFFFF
	sw      t8, 0x0004(v0)             ## 00000003
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t6, 0x0708                 ## t6 = 07080000
	lui     t7, 0x0008                 ## t7 = 00080000
	addiu   t9, v0, 0x0008             ## t9 = 00000007
	sw      t9, 0x02C0(a3)             ## 000002C0
	ori     t7, t7, 0x0E0A             ## t7 = 00080E0A
	ori     t6, t6, 0x0C0E             ## t6 = 07080C0E
	sw      t6, 0x0000(v0)             ## FFFFFFFF
	sw      t7, 0x0004(v0)             ## 00000003
	lh      t8, 0x4A20(t1)             ## 00004A1F
	beql    t8, $zero, lbl_8080F5B8    
	lw      v0, 0x02C0(a3)             ## 000002C0
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t6, 0xFA00                 ## t6 = FA000000
	addiu   t9, v0, 0x0008             ## t9 = 00000007
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      t6, 0x0000(v0)             ## FFFFFFFF
	lh      t7, 0x4A72(t1)             ## 00004A71
	lh      t6, 0x0000(v1)             ## 00000000
	andi    t8, t7, 0x00FF             ## t8 = 0000000A
	sll     t7, t6, 24                 
	lh      t6, 0x0002(v1)             ## 00000002
	or      t9, t8, t7                 ## t9 = 00080E0A
	andi    t8, t6, 0x00FF             ## t8 = 00000000
	sll     t7, t8, 16                 
	lh      t8, 0x0004(v1)             ## 00000004
	or      t6, t9, t7                 ## t6 = 00080E0A
	andi    t9, t8, 0x00FF             ## t9 = 00000000
	sll     t7, t9,  8                 
	or      t8, t6, t7                 ## t8 = 00080E0A
	sw      t8, 0x0004(v0)             ## 00000003
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t7, 0x0103                 ## t7 = 01030000
	addiu   t7, t7, 0x8680             ## t7 = 01028680
	addiu   t9, v0, 0x0008             ## t9 = 00000007
	sw      t9, 0x02C0(a3)             ## 000002C0
	lui     t6, 0xFD70                 ## t6 = FD700000
	sw      t6, 0x0000(v0)             ## FFFFFFFF
	sw      t7, 0x0004(v0)             ## 00000003
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t8, v0, 0x0008             ## t8 = 00000007
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      s2, 0x0004(v0)             ## 00000003
	sw      s4, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t9, v0, 0x0008             ## t9 = 00000007
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000003
	sw      s7, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t7, 0x072B                 ## t7 = 072B0000
	ori     t7, t7, 0xF0BB             ## t7 = 072BF0BB
	addiu   t6, v0, 0x0008             ## t6 = 00000007
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      t7, 0x0004(v0)             ## 00000003
	sw      s8, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t8, v0, 0x0008             ## t8 = 00000007
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000003
	sw      s6, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t6, 0xF570                 ## t6 = F5700000
	ori     t6, t6, 0x1600             ## t6 = F5701600
	addiu   t9, v0, 0x0008             ## t9 = 00000007
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000003
	sw      t6, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0x000A                 ## t9 = 000A0000
	ori     t9, t9, 0xC03C             ## t9 = 000AC03C
	addiu   t7, v0, 0x0008             ## t7 = 00000007
	sw      t7, 0x02C0(a3)             ## 000002C0
	lui     t8, 0xF200                 ## t8 = F2000000
	sw      t8, 0x0000(v0)             ## FFFFFFFF
	sw      t9, 0x0004(v0)             ## 00000003
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t7, 0x0710                 ## t7 = 07100000
	lui     t8, 0x0010                 ## t8 = 00100000
	addiu   t6, v0, 0x0008             ## t6 = 00000007
	sw      t6, 0x02C0(a3)             ## 000002C0
	ori     t8, t8, 0x1612             ## t8 = 00101612
	ori     t7, t7, 0x1416             ## t7 = 07101416
	sw      t7, 0x0000(v0)             ## FFFFFFFF
	sw      t8, 0x0004(v0)             ## 00000003
	lw      v0, 0x02C0(a3)             ## 000002C0
lbl_8080F5B8:
	lui     t6, 0xFA00                 ## t6 = FA000000
	addiu   t9, v0, 0x0008             ## t9 = 00000007
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      t6, 0x0000(v0)             ## FFFFFFFF
	lh      t7, 0x4A78(t1)             ## 00004A77
	lh      t6, 0x0000(v1)             ## 00000000
	andi    t8, t7, 0x00FF             ## t8 = 00000016
	sll     t7, t6, 24                 
	lh      t6, 0x0002(v1)             ## 00000002
	or      t9, t8, t7                 ## t9 = 07101416
	andi    t8, t6, 0x00FF             ## t8 = 00000000
	sll     t7, t8, 16                 
	lh      t8, 0x0004(v1)             ## 00000004
	or      t6, t9, t7                 ## t6 = 07101416
	andi    t9, t8, 0x00FF             ## t9 = 00000000
	sll     t7, t9,  8                 
	or      t8, t6, t7                 ## t8 = 07101416
	sw      t8, 0x0004(v0)             ## 00000003
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t6, 0xFD70                 ## t6 = FD700000
	addiu   t9, v0, 0x0008             ## t9 = 00000007
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      t5, 0x0004(v0)             ## 00000003
	sw      t6, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t7, v0, 0x0008             ## t7 = 00000007
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      s2, 0x0004(v0)             ## 00000003
	sw      s4, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t8, v0, 0x0008             ## t8 = 00000007
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000003
	sw      s7, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t6, 0x070B                 ## t6 = 070B0000
	ori     t6, t6, 0xF2AB             ## t6 = 070BF2AB
	addiu   t9, v0, 0x0008             ## t9 = 00000007
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      t6, 0x0004(v0)             ## 00000003
	sw      s8, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t7, v0, 0x0008             ## t7 = 00000007
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000003
	sw      s6, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0xF568                 ## t9 = F5680000
	ori     t9, t9, 0x0600             ## t9 = F5680600
	addiu   t8, v0, 0x0008             ## t8 = 00000007
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000003
	sw      t9, 0x0000(v0)             ## FFFFFFFF
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t8, 0x0005                 ## t8 = 00050000
	ori     t8, t8, 0xC03C             ## t8 = 0005C03C
	addiu   t6, v0, 0x0008             ## t6 = 00000007
	sw      t6, 0x02C0(a3)             ## 000002C0
	lui     t7, 0xF200                 ## t7 = F2000000
	sw      t7, 0x0000(v0)             ## FFFFFFFF
	sw      t8, 0x0004(v0)             ## 00000003
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t6, 0x0718                 ## t6 = 07180000
	lui     t7, 0x0018                 ## t7 = 00180000
	addiu   t9, v0, 0x0008             ## t9 = 00000007
	sw      t9, 0x02C0(a3)             ## 000002C0
	ori     t7, t7, 0x1E1A             ## t7 = 00181E1A
	ori     t6, t6, 0x1C1E             ## t6 = 07181C1E
	sw      t6, 0x0000(v0)             ## FFFFFFFF
	sw      t7, 0x0004(v0)             ## 00000003
	lh      t8, 0x4A20(t1)             ## 00004A1F
	lui     t6, 0x0720                 ## t6 = 07200000
	ori     t6, t6, 0x2426             ## t6 = 07202426
	beql    t8, $zero, lbl_8080F704    
	lh      t8, 0x0274($sp)            
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t7, 0x0020                 ## t7 = 00200000
	ori     t7, t7, 0x2622             ## t7 = 00202622
	addiu   t9, v0, 0x0008             ## t9 = 00000007
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      t7, 0x0004(v0)             ## 00000003
	sw      t6, 0x0000(v0)             ## FFFFFFFF
	lh      t8, 0x0274($sp)            
lbl_8080F704:
	sra     t4, t4, 16                 
	slti    $at, t4, 0x0003            
	addiu   t9, t8, 0x0014             ## t9 = 0005C050
	bne     $at, $zero, lbl_8080F1B8   
	sh      t9, 0x0274($sp)            
	or      s3, $zero, $zero           ## s3 = 00000000
	lw      s0, 0x0044($sp)            
lbl_8080F720:
	sll     t6, s3,  1                 
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    v0, s5, t6                 
	addu    v0, v0, $at                
	lh      t8, 0x4A20(v0)             ## 00004A1F
	lbu     t7, 0x49EC(s0)             ## 808177B8
	sll     a1, s3, 16                 
	sra     a1, a1, 16                 
	beq     t7, t8, lbl_8080F75C       
	or      a0, s5, $zero              ## a0 = 00000000
	lh      t9, 0x4A6C(v0)             ## 00004A6B
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	bne     t9, $zero, lbl_8080F764    
	nop
lbl_8080F75C:
	beq     $zero, $zero, lbl_8080F764 
	or      a2, $zero, $zero           ## a2 = 00000000
lbl_8080F764:
	jal     func_8080E3FC              
	sw      a3, 0x026C($sp)            
	addiu   s3, s3, 0x0001             ## s3 = 00000001
	sll     s3, s3, 16                 
	sra     s3, s3, 16                 
	slti    $at, s3, 0x0003            
	lui     $ra, 0x000F                ## $ra = 000F0000
	ori     $ra, $ra, 0xC03C           ## $ra = 000FC03C
	bne     $at, $zero, lbl_8080F720   
	lw      a3, 0x026C($sp)            
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t8, 0xFC30                 ## t8 = FC300000
	ori     t8, t8, 0x9661             ## t8 = FC309661
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0x552E                 ## t9 = 552E0000
	ori     t9, t9, 0xFF7F             ## t9 = 552EFF7F
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      t9, 0x0004(v0)             ## 00000004
	sw      t8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t7, 0xFB00                 ## t7 = FB000000
	or      t5, $zero, $zero           ## t5 = 00000000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0x0101                 ## t9 = 01010000
	ori     t9, t9, 0x4028             ## t9 = 01014028
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      t9, 0x0000(v0)             ## 00000000
	lw      t6, 0x0044($sp)            
	lui     t2, %hi(var_80813008)      ## t2 = 80810000
	addiu   t2, t2, %lo(var_80813008)  ## t2 = 80813008
	lw      t7, 0x49E0(t6)             ## 000049E8
	or      t4, $zero, $zero           ## t4 = 00000000
	addiu   t8, t7, 0x2740             ## t8 = FB002740
	sw      t8, 0x0004(v0)             ## 00000004
lbl_8080F814:
	lw      a2, 0x0044($sp)            
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t7, 0xFA00                 ## t7 = FA000000
	sll     a0, t5,  1                 
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	sll     t8, t4,  1                 
	addu    t9, s5, t8                 
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	lui     t6, 0x0002                 ## t6 = 00020000
	addu    t6, t6, t9                 
	sw      t7, 0x0000(v0)             ## 00000000
	lh      t6, -0x357C(t6)            ## 0001CA84
	lh      t9, 0x4A5A(a2)             ## 00004A5A
	andi    a1, a0, 0x00FF             ## a1 = 00000000
	andi    t7, t6, 0x00FF             ## t7 = 00000000
	sll     t6, t9, 24                 
	lh      t9, 0x4A5C(a2)             ## 00004A5C
	or      t8, t7, t6                 ## t8 = 00020000
	sll     a1, a1, 16                 
	andi    t7, t9, 0x00FF             ## t7 = 00000008
	sll     t6, t7, 16                 
	lh      t7, 0x4A5E(a2)             ## 00004A5E
	or      t9, t8, t6                 ## t9 = 00020000
	addiu   a2, a0, 0x0006             ## a2 = 00000006
	andi    t8, t7, 0x00FF             ## t8 = 00000008
	sll     t6, t8,  8                 
	or      t7, t9, t6                 ## t7 = 00020000
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0xFD70                 ## t9 = FD700000
	lui     t6, 0x8012                 ## t6 = 80120000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      t9, 0x0000(v0)             ## 00000000
	lbu     t6, -0x4627(t6)            ## 8011B9D9
	sll     t9, t4,  2                 
	addiu   t4, t4, 0x0001             ## t4 = 00000001
	sll     t7, t6,  4                 
	addu    t8, t2, t7                 
	addu    t6, t8, t9                 
	lw      t7, 0x0000(t6)             ## 80120000
	sll     t4, t4, 16                 
	andi    a2, a2, 0x00FF             ## a2 = 00000006
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	sra     t4, t4, 16                 
	addiu   t5, t5, 0x0004             ## t5 = 00000004
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      s2, 0x0004(v0)             ## 00000004
	sw      s4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	sll     t5, t5, 16                 
	slti    $at, t4, 0x0002            
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t7, 0x073F                 ## t7 = 073F0000
	ori     t7, t7, 0xF080             ## t7 = 073FF080
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      t7, 0x0004(v0)             ## 00000004
	sw      s8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s1, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t7, 0xF200                 ## t7 = F2000000
	addiu   t9, a0, 0x0004             ## t9 = 00000004
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      $ra, 0x0004(v0)            ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	andi    t6, t9, 0x00FF             ## t6 = 00000004
	sll     t7, t6,  8                 
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a3)             ## 000002C0
	or      t8, a1, t7                 ## t8 = F2000000
	or      t9, t8, a2                 ## t9 = F2000006
	or      t6, t9, s2                 ## t6 = F7000006
	addiu   t9, a0, 0x0002             ## t9 = 00000002
	sll     t7, a2,  8                 
	sw      t6, 0x0000(v0)             ## 00000000
	andi    t6, t9, 0x00FF             ## t6 = 00000002
	or      t8, a1, t7                 ## t8 = F2000000
	or      t7, t8, t6                 ## t7 = F2000002
	sw      t7, 0x0004(v0)             ## 00000004
	bne     $at, $zero, lbl_8080F814   
	sra     t5, t5, 16                 
	lw      v0, 0x02C0(a3)             ## 000002C0
	or      t5, $zero, $zero           ## t5 = 00000000
	or      t4, $zero, $zero           ## t4 = 00000000
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s6, 0x0000(v0)             ## 00000000
lbl_8080F9D0:
	sll     t8, t4,  1                 
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    t1, s5, t8                 
	addu    t1, t1, $at                
	lw      t0, 0x0044($sp)            
	lh      a1, 0x4AA0(t1)             ## 00004AA0
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t7, 0xFA00                 ## t7 = FA000000
	sll     a0, t5,  1                 
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      t7, 0x0000(v0)             ## 00000000
	lh      t9, 0x4A88(t1)             ## 00004A88
	lh      t7, 0x4A5A(t0)             ## 00004A5A
	addiu   a2, a0, 0x0006             ## a2 = 00000006
	andi    t8, t9, 0x00FF             ## t8 = 00000008
	sll     t9, t7, 24                 
	lh      t7, 0x4A5C(t0)             ## 00004A5C
	or      t6, t8, t9                 ## t6 = 00000008
	addiu   t4, t4, 0x0001             ## t4 = 00000001
	andi    t8, t7, 0x00FF             ## t8 = 00000000
	sll     t9, t8, 16                 
	lh      t8, 0x4A5E(t0)             ## 00004A5E
	or      t7, t6, t9                 ## t7 = 00000008
	andi    a2, a2, 0x00FF             ## a2 = 00000006
	andi    t6, t8, 0x00FF             ## t6 = 00000000
	sll     t9, t6,  8                 
	or      t8, t7, t9                 ## t8 = 00000008
	sw      t8, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t7, 0xFD70                 ## t7 = FD700000
	lui     t9, 0x8012                 ## t9 = 80120000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      t7, 0x0000(v0)             ## 00000000
	lbu     t9, -0x4627(t9)            ## 8011B9D9
	sll     t7, a1,  2                 
	andi    a1, a0, 0x00FF             ## a1 = 00000000
	sll     t8, t9,  4                 
	addu    t6, t2, t8                 
	addu    t9, t6, t7                 
	lw      t8, 0x0000(t9)             ## 80120000
	sll     t4, t4, 16                 
	sll     a1, a1, 16                 
	sw      t8, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	sra     t4, t4, 16                 
	addiu   t5, t5, 0x0004             ## t5 = 00000004
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      s2, 0x0004(v0)             ## 00000004
	sw      s4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	sll     t5, t5, 16                 
	slti    $at, t4, 0x0002            
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t8, 0x073F                 ## t8 = 073F0000
	ori     t8, t8, 0xF080             ## t8 = 073FF080
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      t8, 0x0004(v0)             ## 00000004
	sw      s8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s1, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t8, 0xF200                 ## t8 = F2000000
	addiu   t7, a0, 0x0004             ## t7 = 00000004
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      $ra, 0x0004(v0)            ## 00000004
	sw      t8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	andi    t9, t7, 0x00FF             ## t9 = 00000004
	sll     t8, t9,  8                 
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	or      t6, a1, t8                 ## t6 = F2000000
	or      t7, t6, a2                 ## t7 = F2000006
	or      t9, t7, s2                 ## t9 = F7000006
	addiu   t7, a0, 0x0002             ## t7 = 00000002
	sll     t8, a2,  8                 
	sw      t9, 0x0000(v0)             ## 00000000
	andi    t9, t7, 0x00FF             ## t9 = 00000002
	or      t6, a1, t8                 ## t6 = F2000000
	or      t8, t6, t9                 ## t8 = F2000002
	sw      t8, 0x0004(v0)             ## 00000004
	bne     $at, $zero, lbl_8080F9D0   
	sra     t5, t5, 16                 
	lw      t1, 0x0044($sp)            
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0xFA00                 ## t9 = FA000000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      t9, 0x0000(v0)             ## 00000000
	lh      t8, 0x4A5E(t1)             ## 00004A5E
	andi    t7, t8, 0x00FF             ## t7 = 00000002
	lh      t8, 0x4A5A(t1)             ## 00004A5A
	sll     t6, t7,  8                 
	sll     t7, t8, 24                 
	lh      t8, 0x4A5C(t1)             ## 00004A5C
	or      t9, t6, t7                 ## t9 = 0000000A
	andi    t6, t8, 0x00FF             ## t6 = 00000002
	sll     t7, t6, 16                 
	lh      t6, 0x4A8C(t1)             ## 00004A8C
	or      t8, t9, t7                 ## t8 = 0000000A
	andi    t9, t6, 0x00FF             ## t9 = 00000002
	or      t7, t8, t9                 ## t7 = 0000000A
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t8, 0xFD70                 ## t8 = FD700000
	lui     t9, 0x8012                 ## t9 = 80120000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      t8, 0x0000(v0)             ## 00000000
	lbu     t9, -0x4627(t9)            ## 8011B9D9
	lui     t6, %hi(var_80813028)      ## t6 = 80810000
	sll     t7, t9,  2                 
	addu    t6, t6, t7                 
	lw      t6, %lo(var_80813028)(t6)  
	sw      t6, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      s2, 0x0004(v0)             ## 00000004
	sw      s4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t6, 0x073F                 ## t6 = 073F0000
	ori     t6, t6, 0xF080             ## t6 = 073FF080
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      t6, 0x0004(v0)             ## 00000004
	sw      s8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lw      t1, 0x0044($sp)            
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s1, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t6, 0xF200                 ## t6 = F2000000
	lui     t9, 0x0710                 ## t9 = 07100000
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      $ra, 0x0004(v0)            ## 00000004
	sw      t6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t7, 0x0010                 ## t7 = 00100000
	ori     t7, t7, 0x1612             ## t7 = 00101612
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a3)             ## 000002C0
	ori     t9, t9, 0x1416             ## t9 = 07101416
	sw      t9, 0x0000(v0)             ## 00000000
	sw      t7, 0x0004(v0)             ## 00000004
	lh      a1, 0x4A2E(t1)             ## 00004A2E
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bnel    a1, $at, lbl_8080FCEC      
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	lh      v0, 0x4A30(t1)             ## 00004A30
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     v0, $at, lbl_8080FD04      
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	beq     v0, $at, lbl_8080FD04      
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	beq     v0, $at, lbl_8080FD04      
	addiu   $at, $zero, 0x000C         ## $at = 0000000C
	beq     v0, $at, lbl_8080FD04      
	addiu   $at, $zero, 0x0015         ## $at = 00000015
	beq     v0, $at, lbl_8080FD04      
	addiu   $at, $zero, 0x0018         ## $at = 00000018
	beq     v0, $at, lbl_8080FD04      
	addiu   $at, $zero, 0x0002         ## $at = 00000002
lbl_8080FCEC:
	bnel    a1, $at, lbl_8080FE6C      
	lh      t9, 0x4A52(t1)             ## 00004A52
	lh      t6, 0x4A36(t1)             ## 00004A36
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bnel    t6, $at, lbl_8080FE6C      
	lh      t9, 0x4A52(t1)             ## 00004A52
lbl_8080FD04:
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t7, 0xFC61                 ## t7 = FC610000
	ori     t7, t7, 0x96C3             ## t7 = FC6196C3
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t6, 0xFF2F                 ## t6 = FF2F0000
	ori     t6, t6, 0xFFFF             ## t6 = FF2FFFFF
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      t6, 0x0004(v0)             ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0xFA00                 ## t9 = FA000000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      t9, 0x0000(v0)             ## 00000000
	lh      t7, 0x4A9A(t1)             ## 00004A9A
	lh      t9, 0x4A94(t1)             ## 00004A94
	andi    t6, t7, 0x00FF             ## t6 = 000000C3
	sll     t7, t9, 24                 
	lh      t9, 0x4A96(t1)             ## 00004A96
	or      t8, t6, t7                 ## t8 = FC6196C3
	andi    t6, t9, 0x00FF             ## t6 = 00000000
	sll     t7, t6, 16                 
	lh      t6, 0x4A98(t1)             ## 00004A98
	or      t9, t8, t7                 ## t9 = FC6196C3
	andi    t8, t6, 0x00FF             ## t8 = 00000000
	sll     t7, t8,  8                 
	or      t6, t9, t7                 ## t6 = FC6196C3
	sw      t6, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t7, 0x0103                 ## t7 = 01030000
	addiu   t7, t7, 0x9100             ## t7 = 01029100
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a3)             ## 000002C0
	lui     t9, 0xFD90                 ## t9 = FD900000
	sw      t9, 0x0000(v0)             ## 00000000
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t8, 0xF590                 ## t8 = F5900000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      s2, 0x0004(v0)             ## 00000004
	sw      t8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t6, 0x0735                 ## t6 = 07350000
	ori     t6, t6, 0xF0E4             ## t6 = 0735F0E4
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      t6, 0x0004(v0)             ## 00000004
	sw      s8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t7, 0xF588                 ## t7 = F5880000
	ori     t7, t7, 0x1200             ## t7 = F5881200
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0x0011                 ## t9 = 00110000
	ori     t9, t9, 0xC05C             ## t9 = 0011C05C
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	lui     t8, 0xF200                 ## t8 = F2000000
	sw      t8, 0x0000(v0)             ## 00000000
	sw      t9, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t6, 0x0718                 ## t6 = 07180000
	lui     t8, 0x0018                 ## t8 = 00180000
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	ori     t8, t8, 0x1E1A             ## t8 = 00181E1A
	ori     t6, t6, 0x1C1E             ## t6 = 07181C1E
	sw      t6, 0x0000(v0)             ## 00000000
	sw      t8, 0x0004(v0)             ## 00000004
	lw      t1, 0x0044($sp)            
	lh      t9, 0x4A52(t1)             ## 00004A52
lbl_8080FE6C:
	lui     t8, 0xFC30                 ## t8 = FC300000
	lw      t1, 0x0044($sp)            
	bltz    t9, lbl_8080FFE8           
	ori     t8, t8, 0x9661             ## t8 = FC309661
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0x552E                 ## t9 = 552E0000
	ori     t9, t9, 0xFF7F             ## t9 = 552EFF7F
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      t9, 0x0004(v0)             ## 00000004
	sw      t8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t6, 0xFA00                 ## t6 = FA000000
	addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      t6, 0x0000(v0)             ## 00000000
	lh      t8, 0x4A92(t1)             ## 00004A92
	andi    t9, t8, 0x00FF             ## t9 = 00000061
	or      t7, t9, $at                ## t7 = FFFFFF61
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t8, 0xFB00                 ## t8 = FB000000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t7, 0xFD70                 ## t7 = FD700000
	lui     t6, 0x8012                 ## t6 = 80120000
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a3)             ## 000002C0
	sw      t7, 0x0000(v0)             ## 00000000
	lbu     t6, -0x4627(t6)            ## 8011B9D9
	lh      t9, 0x4A52(t1)             ## 00004A52
	sll     t8, t6,  2                 
	addu    t8, t8, t6                 
	sll     t7, t9,  2                 
	sll     t8, t8,  2                 
	addu    t6, t8, t7                 
	lui     t9, %hi(var_80812FC8)      ## t9 = 80810000
	addu    t9, t9, t6                 
	lw      t9, %lo(var_80812FC8)(t9)  
	sw      t9, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      s2, 0x0004(v0)             ## 00000004
	sw      s4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0x073F                 ## t9 = 073F0000
	ori     t9, t9, 0xF080             ## t9 = 073FF080
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      t9, 0x0004(v0)             ## 00000004
	sw      s8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t6, 0xF568                 ## t6 = F5680000
	ori     t6, t6, 0x2000             ## t6 = F5682000
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t7, 0x001F                 ## t7 = 001F0000
	ori     t7, t7, 0xC03C             ## t7 = 001FC03C
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(a3)             ## 000002C0
	lui     t8, 0xF200                 ## t8 = F2000000
	sw      t8, 0x0000(v0)             ## 00000000
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0x0720                 ## t9 = 07200000
	lui     t8, 0x0020                 ## t8 = 00200000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	ori     t8, t8, 0x2622             ## t8 = 00202622
	ori     t9, t9, 0x2426             ## t9 = 07202426
	sw      t9, 0x0000(v0)             ## 00000000
	sw      t8, 0x0004(v0)             ## 00000004
lbl_8080FFE8:
	lw      v0, 0x02C0(a3)             ## 000002C0
	lui     t9, 0xFC12                 ## t9 = FC120000
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(a3)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      s6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(a3)             ## 000002C0
	ori     t9, t9, 0x7E24             ## t9 = FC127E24
	addiu   t8, $zero, 0xF3F9          ## t8 = FFFFF3F9
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a3)             ## 000002C0
	sw      t8, 0x0004(v0)             ## 00000004
	sw      t9, 0x0000(v0)             ## 00000000
	lw      $ra, 0x003C($sp)           
	lw      s0, 0x0018($sp)            
	lw      s1, 0x001C($sp)            
	lw      s2, 0x0020($sp)            
	lw      s3, 0x0024($sp)            
	lw      s4, 0x0028($sp)            
	lw      s5, 0x002C($sp)            
	lw      s6, 0x0030($sp)            
	lw      s7, 0x0034($sp)            
	lw      s8, 0x0038($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0280           ## $sp = 00000000


func_8081004C:
	addiu   $sp, $sp, 0xFEF8           ## $sp = FFFFFEF8
	sw      s1, 0x002C($sp)            
	or      s1, a0, $zero              ## s1 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      s2, 0x0030($sp)            
	sw      s0, 0x0028($sp)            
	lw      s0, 0x0000(s1)             ## 00000000
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t7, 0xE700                 ## t7 = E7000000
	lui     t8, 0x8012                 ## t8 = 80120000
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t7, 0x0000(v1)             ## 00000000
	lw      t8, -0x4600(t8)            ## 8011BA00
	jal     func_80063684              ## coss?
	lh      a0, 0x07AA(t8)             ## 801207AA
	lui     t9, 0x8012                 ## t9 = 80120000
	lw      t9, -0x4600(t9)            ## 8011BA00
	swc1    $f0, 0x004C($sp)           
	jal     func_800636C4              ## sins?
	lh      a0, 0x07AA(t9)             ## 801207AA
	lui     $at, 0x447A                ## $at = 447A0000
	mtc1    $at, $f2                   ## $f2 = 1000.00
	lwc1    $f4, 0x004C($sp)           
	lui     v0, 0x8012                 ## v0 = 80120000
	lw      v0, -0x4600(v0)            ## 8011BA00
	mul.s   $f6, $f2, $f4              
	nop
	mul.s   $f8, $f0, $f2              
	sub.s   $f10, $f6, $f8             
	swc1    $f10, 0x0100($sp)          
	lh      t3, 0x07AE(v0)             ## 801207AE
	mtc1    t3, $f16                   ## $f16 = 0.00
	nop
	cvt.s.w $f18, $f16                 
	swc1    $f18, 0x00FC($sp)          
	jal     func_800636C4              ## sins?
	lh      a0, 0x07AA(v0)             ## 801207AA
	lui     t4, 0x8012                 ## t4 = 80120000
	lw      t4, -0x4600(t4)            ## 8011BA00
	swc1    $f0, 0x004C($sp)           
	jal     func_80063684              ## coss?
	lh      a0, 0x07AA(t4)             ## 801207AA
	lui     $at, 0x447A                ## $at = 447A0000
	mtc1    $at, $f12                  ## $f12 = 1000.00
	lwc1    $f6, 0x004C($sp)           
	or      a0, s1, $zero              ## a0 = 00000000
	mul.s   $f4, $f0, $f12             
	lw      a1, 0x0100($sp)            
	lw      a2, 0x00FC($sp)            
	mul.s   $f8, $f12, $f6             
	add.s   $f2, $f4, $f8              
	mfc1    a3, $f2                    
	jal     func_8080BCC0              
	swc1    $f2, 0x00F8($sp)           
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    s2, s1, $at                
	lbu     a3, 0x48F3(s2)             ## 000048F3
	lw      a1, 0x0000(s1)             ## 00000000
	lwc1    $f10, 0x0100($sp)          
	lwc1    $f16, 0x00FC($sp)          
	lwc1    $f18, 0x00F8($sp)          
	addiu   a0, s1, 0x01E0             ## a0 = 000001E0
	sw      a0, 0x0048($sp)            
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	swc1    $f10, 0x0010($sp)          
	swc1    $f16, 0x0014($sp)          
	jal     func_80096FD8              
	swc1    $f18, 0x0018($sp)          
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t6, 0xE300                 ## t6 = E3000000
	ori     t6, t6, 0x1001             ## t6 = E3001001
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t6, 0x0000(v1)             ## 00000000
	lui     v0, 0x8012                 ## v0 = 80120000
	lw      v0, -0x4600(v0)            ## 8011BA00
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0xC8E0           ## $at = 0001C8E0
	lh      t7, 0x07AA(v0)             ## 801207AA
	lh      t8, 0x07A8(v0)             ## 801207A8
	addu    a1, s1, $at                
	addiu   a0, $zero, 0x0001          ## a0 = 00000001
	addu    t9, t7, t8                 
	sh      t9, 0x07AA(v0)             ## 801207AA
	jal     func_8005C9C8              
	lw      a2, 0x0048($sp)            
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t4, 0xE700                 ## t4 = E7000000
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t4, 0x0000(v1)             ## 00000000
	jal     func_8007E868              
	lw      a0, 0x0000(s1)             ## 00000000
	mtc1    $zero, $f0                 ## $f0 = 0.00
	or      a0, s1, $zero              ## a0 = 00000000
	lui     a3, 0x4280                 ## a3 = 42800000
	mfc1    a1, $f0                    
	mfc1    a2, $f0                    
	jal     func_8080BCC0              
	nop
	jal     func_8080CE64              
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8080D138              
	or      a0, s1, $zero              ## a0 = 00000000
	lh      v0, 0x4A30(s2)             ## 00004A30
	addiu   $at, $zero, 0x0021         ## $at = 00000021
	beq     v0, $at, lbl_80810418      
	addiu   $at, $zero, 0x0022         ## $at = 00000022
	beq     v0, $at, lbl_80810418      
	lui     t8, 0xFC11                 ## t8 = FC110000
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t6, 0xE700                 ## t6 = E7000000
	ori     t8, t8, 0x9623             ## t8 = FC119623
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t6, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t9, 0xFF2F                 ## t9 = FF2F0000
	ori     t9, t9, 0xFFFF             ## t9 = FF2FFFFF
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s0)             ## 000002C0
	sw      t9, 0x0004(v1)             ## 00000004
	sw      t8, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t4, 0xFA00                 ## t4 = FA000000
	lui     a2, 0xC2BB                 ## a2 = C2BB0000
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s0)             ## 000002C0
	sw      t4, 0x0000(v1)             ## 00000000
	lh      t5, 0x4A5E(s2)             ## 00004A5E
	lh      t9, 0x4A5A(s2)             ## 00004A5A
	ori     a2, a2, 0x3333             ## a2 = C2BB3333
	andi    t6, t5, 0x00FF             ## t6 = 00000008
	lh      t5, 0x4A5C(s2)             ## 00004A5C
	sll     t7, t6,  8                 
	sll     t3, t9, 24                 
	or      t4, t7, t3                 ## t4 = 00000008
	lh      t7, 0x4A64(s2)             ## 00004A64
	andi    t6, t5, 0x00FF             ## t6 = 00000008
	sll     t8, t6, 16                 
	or      t9, t4, t8                 ## t9 = FC11962B
	andi    t3, t7, 0x00FF             ## t3 = 00000008
	or      t5, t9, t3                 ## t5 = FC11962B
	sw      t5, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t4, 0xFB00                 ## t4 = FB000000
	mtc1    $zero, $f12                ## $f12 = 0.00
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t4, 0x0000(v1)             ## 00000000
	mov.s   $f14, $f12                 
	jal     func_800AA7F4              
	or      a3, $zero, $zero           ## a3 = 00000000
	lui     $at, %hi(var_80813090)     ## $at = 80810000
	lwc1    $f12, %lo(var_80813090)($at) 
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mfc1    a2, $f12                   
	jal     func_800AA8FC              
	mov.s   $f14, $f12                 
	lwc1    $f0, 0x4AB4(s2)            ## 00004AB4
	mtc1    $zero, $f6                 ## $f6 = 0.00
	nop
	c.eq.s  $f6, $f0                   
	nop
	bc1t    lbl_80810310               
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f4                   ## $f4 = 100.00
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	jal     func_800AA9E0              
	div.s   $f12, $f0, $f4             
lbl_80810310:
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t7, 0xDA38                 ## t7 = DA380000
	ori     t7, t7, 0x0003             ## t7 = DA380003
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s0)             ## 000002C0
	sw      t7, 0x0000(v1)             ## 00000000
	lw      a0, 0x0000(s1)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x00D0($sp)            
	lw      a3, 0x00D0($sp)            
	lui     t2, 0x0102                 ## t2 = 01020000
	ori     t2, t2, 0x0040             ## t2 = 01020040
	lui     t1, 0xDE00                 ## t1 = DE000000
	sw      v0, 0x0004(a3)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(s0)             ## 000002C0
	sw      t2, 0x0000(v1)             ## 00000000
	lw      t3, 0x00A4(s1)             ## 000000A4
	sw      t3, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t6, 0x0104                 ## t6 = 01040000
	addiu   t6, t6, 0x9080             ## t6 = 01039080
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s0)             ## 000002C0
	sw      t6, 0x0004(v1)             ## 00000004
	sw      t1, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(s0)             ## 000002C0
	addiu   t4, v1, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(s0)             ## 000002C0
	sw      t2, 0x0000(v1)             ## 00000000
	lw      t8, 0x00A4(s1)             ## 000000A4
	addiu   t7, t8, 0x0200             ## t7 = 00000200
	sw      t7, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t3, 0x0104                 ## t3 = 01040000
	addiu   t3, t3, 0x9298             ## t3 = 01039298
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(s0)             ## 000002C0
	sw      t3, 0x0004(v1)             ## 00000004
	sw      t1, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t6, 0x0101                 ## t6 = 01010000
	ori     t6, t6, 0x0020             ## t6 = 01010020
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s0)             ## 000002C0
	sw      t6, 0x0000(v1)             ## 00000000
	lw      t4, 0x00A4(s1)             ## 000000A4
	addiu   t8, t4, 0x0400             ## t8 = 00000408
	sw      t8, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t9, 0x0104                 ## t9 = 01040000
	addiu   t9, t9, 0x94A8             ## t9 = 010394A8
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s0)             ## 000002C0
	sw      t9, 0x0004(v1)             ## 00000004
	sw      t1, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t5, 0xE700                 ## t5 = E7000000
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t5, 0x0000(v1)             ## 00000000
	jal     func_8080EB78              
	or      a0, s1, $zero              ## a0 = 00000000
	lh      v0, 0x4A30(s2)             ## 00004A30
lbl_80810418:
	slti    $at, v0, 0x0020            
	bne     $at, $zero, lbl_8081063C   
	slti    $at, v0, 0x0024            
	beq     $at, $zero, lbl_8081063C   
	lui     t7, 0xFC11                 ## t7 = FC110000
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t4, 0xE700                 ## t4 = E7000000
	ori     t7, t7, 0x9623             ## t7 = FC119623
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t4, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t9, 0xFF2F                 ## t9 = FF2F0000
	ori     t9, t9, 0xFFFF             ## t9 = FF2FFFFF
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s0)             ## 000002C0
	sw      t9, 0x0004(v1)             ## 00000004
	sw      t7, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t5, 0xFA00                 ## t5 = FA000000
	mtc1    $zero, $f12                ## $f12 = 0.00
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s0)             ## 000002C0
	sw      t5, 0x0000(v1)             ## 00000000
	lh      t6, 0x4A5E(s2)             ## 00004A5E
	lh      t9, 0x4A5A(s2)             ## 00004A5A
	mov.s   $f14, $f12                 
	andi    t4, t6, 0x00FF             ## t4 = 00000008
	lh      t6, 0x4A5C(s2)             ## 00004A5C
	sll     t8, t4,  8                 
	sll     t3, t9, 24                 
	or      t5, t8, t3                 ## t5 = 00000008
	lh      t8, 0x4A64(s2)             ## 00004A64
	andi    t4, t6, 0x00FF             ## t4 = 00000008
	sll     t7, t4, 16                 
	or      t9, t5, t7                 ## t9 = FC11962B
	andi    t3, t8, 0x00FF             ## t3 = 00000008
	or      t6, t9, t3                 ## t6 = FC11962B
	sw      t6, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t4, 0x0104                 ## t4 = 01040000
	lui     t5, 0x0104                 ## t5 = 01040000
	lui     t7, 0x0104                 ## t7 = 01040000
	addiu   t7, t7, 0x94A8             ## t7 = 010394A8
	addiu   t5, t5, 0x9298             ## t5 = 01039298
	addiu   t4, t4, 0x9080             ## t4 = 01039080
	sw      t4, 0x0044($sp)            
	sw      t5, 0x0040($sp)            
	sw      t7, 0x003C($sp)            
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s0)             ## 000002C0
	lui     t9, 0xFB00                 ## t9 = FB000000
	sw      t9, 0x0000(v1)             ## 00000000
	sw      $zero, 0x0004(v1)          ## 00000004
	lui     a2, 0xC2BB                 ## a2 = C2BB0000
	ori     a2, a2, 0x3333             ## a2 = C2BB3333
	jal     func_800AA7F4              
	or      a3, $zero, $zero           ## a3 = 00000000
	lui     $at, %hi(var_80813094)     ## $at = 80810000
	lwc1    $f12, %lo(var_80813094)($at) 
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mfc1    a2, $f12                   
	jal     func_800AA8FC              
	mov.s   $f14, $f12                 
	lui     $at, 0x439D                ## $at = 439D0000
	mtc1    $at, $f10                  ## $f10 = 314.00
	lwc1    $f8, 0x4AB4(s2)            ## 00004AB4
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f18                  ## $f18 = 100.00
	sub.s   $f16, $f8, $f10            
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	jal     func_800AA9E0              
	div.s   $f12, $f16, $f18           
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t6, 0xDA38                 ## t6 = DA380000
	ori     t6, t6, 0x0003             ## t6 = DA380003
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s0)             ## 000002C0
	sw      t6, 0x0000(v1)             ## 00000000
	lw      a0, 0x0000(s1)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x00A0($sp)            
	lw      a3, 0x00A0($sp)            
	lui     t2, 0x0102                 ## t2 = 01020000
	ori     t2, t2, 0x0040             ## t2 = 01020040
	lui     t1, 0xDE00                 ## t1 = DE000000
	sw      v0, 0x0004(a3)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	addiu   t4, v1, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(s0)             ## 000002C0
	sw      t2, 0x0000(v1)             ## 00000000
	lw      t5, 0x00A4(s1)             ## 000000A4
	sw      t5, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s0)             ## 000002C0
	sw      t1, 0x0000(v1)             ## 00000000
	lw      t8, 0x0044($sp)            
	sw      t8, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(s0)             ## 000002C0
	sw      t2, 0x0000(v1)             ## 00000000
	lw      t3, 0x00A4(s1)             ## 000000A4
	addiu   t6, t3, 0x0200             ## t6 = 00000200
	sw      t6, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	addiu   t4, v1, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(s0)             ## 000002C0
	sw      t1, 0x0000(v1)             ## 00000000
	lw      t5, 0x0040($sp)            
	sw      t5, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t8, 0x0101                 ## t8 = 01010000
	ori     t8, t8, 0x0020             ## t8 = 01010020
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s0)             ## 000002C0
	sw      t8, 0x0000(v1)             ## 00000000
	lw      t9, 0x00A4(s1)             ## 000000A4
	addiu   t3, t9, 0x0400             ## t3 = 00000408
	sw      t3, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s0)             ## 000002C0
	sw      t1, 0x0000(v1)             ## 00000000
	lw      t4, 0x003C($sp)            
	sw      t4, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t7, 0xE700                 ## t7 = E7000000
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t7, 0x0000(v1)             ## 00000000
	jal     func_80808708              
	or      a0, s1, $zero              ## a0 = 00000000
	lh      v0, 0x4A30(s2)             ## 00004A30
lbl_8081063C:
	slti    $at, v0, 0x0024            
	bne     $at, $zero, lbl_8081086C   
	slti    $at, v0, 0x0028            
	beq     $at, $zero, lbl_8081086C   
	lui     t6, 0xFC11                 ## t6 = FC110000
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t9, 0xE700                 ## t9 = E7000000
	ori     t6, t6, 0x9623             ## t6 = FC119623
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t9, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t4, 0xFF2F                 ## t4 = FF2F0000
	ori     t4, t4, 0xFFFF             ## t4 = FF2FFFFF
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s0)             ## 000002C0
	sw      t4, 0x0004(v1)             ## 00000004
	sw      t6, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t7, 0xFA00                 ## t7 = FA000000
	mtc1    $zero, $f12                ## $f12 = 0.00
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s0)             ## 000002C0
	sw      t7, 0x0000(v1)             ## 00000000
	lh      t8, 0x4A5E(s2)             ## 00004A5E
	lh      t4, 0x4A5A(s2)             ## 00004A5A
	mov.s   $f14, $f12                 
	andi    t9, t8, 0x00FF             ## t9 = 00000008
	lh      t8, 0x4A5C(s2)             ## 00004A5C
	sll     t3, t9,  8                 
	sll     t5, t4, 24                 
	or      t7, t3, t5                 ## t7 = 00000008
	lh      t3, 0x4A64(s2)             ## 00004A64
	andi    t9, t8, 0x00FF             ## t9 = 00000008
	sll     t6, t9, 16                 
	or      t4, t7, t6                 ## t4 = FC11962B
	andi    t5, t3, 0x00FF             ## t5 = 00000008
	or      t8, t4, t5                 ## t8 = FC11962B
	sw      t8, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t9, 0x0104                 ## t9 = 01040000
	lui     t7, 0x0104                 ## t7 = 01040000
	lui     t6, 0x0104                 ## t6 = 01040000
	addiu   t6, t6, 0x94A8             ## t6 = 010394A8
	addiu   t7, t7, 0x9298             ## t7 = 01039298
	addiu   t9, t9, 0x9080             ## t9 = 01039080
	sw      t9, 0x0044($sp)            
	sw      t7, 0x0040($sp)            
	sw      t6, 0x003C($sp)            
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s0)             ## 000002C0
	lui     t4, 0xFB00                 ## t4 = FB000000
	sw      t4, 0x0000(v1)             ## 00000000
	sw      $zero, 0x0004(v1)          ## 00000004
	lui     a2, 0xC2BB                 ## a2 = C2BB0000
	ori     a2, a2, 0x3333             ## a2 = C2BB3333
	jal     func_800AA7F4              
	or      a3, $zero, $zero           ## a3 = 00000000
	lui     $at, %hi(var_80813098)     ## $at = 80810000
	lwc1    $f12, %lo(var_80813098)($at) 
	lui     $at, %hi(var_8081309C)     ## $at = 80810000
	lui     a2, 0x3F47                 ## a2 = 3F470000
	ori     a2, a2, 0xAE14             ## a2 = 3F47AE14
	lwc1    $f14, %lo(var_8081309C)($at) 
	jal     func_800AA8FC              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lui     $at, 0x439D                ## $at = 439D0000
	mtc1    $at, $f4                   ## $f4 = 314.00
	lwc1    $f6, 0x4AB4(s2)            ## 00004AB4
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f10                  ## $f10 = 100.00
	sub.s   $f8, $f6, $f4              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	jal     func_800AA9E0              
	div.s   $f12, $f8, $f10            
	lw      s2, 0x02C0(s0)             ## 000002C0
	lui     t8, 0xDA38                 ## t8 = DA380000
	ori     t8, t8, 0x0003             ## t8 = DA380003
	addiu   t5, s2, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s0)             ## 000002C0
	sw      t8, 0x0000(s2)             ## 00000000
	jal     func_800AB900              
	lw      a0, 0x0000(s1)             ## 00000000
	sw      v0, 0x0004(s2)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t7, 0x0102                 ## t7 = 01020000
	ori     t7, t7, 0x0040             ## t7 = 01020040
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(s0)             ## 000002C0
	sw      t7, 0x0000(v1)             ## 00000000
	lw      t6, 0x00A4(s1)             ## 000000A4
	sw      t6, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t4, 0xDE00                 ## t4 = DE000000
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s0)             ## 000002C0
	sw      t4, 0x0000(v1)             ## 00000000
	lw      t5, 0x0044($sp)            
	sw      t5, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t9, 0x0102                 ## t9 = 01020000
	ori     t9, t9, 0x0040             ## t9 = 01020040
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s0)             ## 000002C0
	sw      t9, 0x0000(v1)             ## 00000000
	lw      t7, 0x00A4(s1)             ## 000000A4
	addiu   t6, t7, 0x0200             ## t6 = 01020240
	sw      t6, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t4, 0xDE00                 ## t4 = DE000000
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s0)             ## 000002C0
	sw      t4, 0x0000(v1)             ## 00000000
	lw      t5, 0x0040($sp)            
	sw      t5, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t9, 0x0101                 ## t9 = 01010000
	ori     t9, t9, 0x0020             ## t9 = 01010020
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s0)             ## 000002C0
	sw      t9, 0x0000(v1)             ## 00000000
	lw      t7, 0x00A4(s1)             ## 000000A4
	addiu   t6, t7, 0x0400             ## t6 = 01020440
	sw      t6, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t4, 0xDE00                 ## t4 = DE000000
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s0)             ## 000002C0
	sw      t4, 0x0000(v1)             ## 00000000
	lw      t5, 0x003C($sp)            
	sw      t5, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t9, 0xE700                 ## t9 = E7000000
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t9, 0x0000(v1)             ## 00000000
	jal     func_8080BCA0              
	or      a0, s1, $zero              ## a0 = 00000000
lbl_8081086C:
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t6, 0xE700                 ## t6 = E7000000
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t6, 0x0000(v1)             ## 00000000
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	addiu   a2, $zero, 0x0000          ## a2 = 00000000
	jal     func_8080BCC0              
	lui     a3, 0x4280                 ## a3 = 42800000
	lw      $ra, 0x0034($sp)           
	lw      s0, 0x0028($sp)            
	lw      s1, 0x002C($sp)            
	lw      s2, 0x0030($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0108           ## $sp = 00000000


func_808108B0:
	addiu   $sp, $sp, 0xFFF0           ## $sp = FFFFFFF0
	sw      s1, 0x000C($sp)            
	sw      s0, 0x0008($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     t1, $at, 0x8000            ## t1 = 00018000
	lui     t3, 0x8010                 ## t3 = 80100000
	addiu   t3, t3, 0xBF00             ## t3 = 800FBF00
	addu    a2, a0, t1                 
	or      v0, $zero, $zero           ## v0 = 00000000
	addiu   s1, $zero, 0x0041          ## s1 = 00000041
	addiu   s0, $zero, 0x0044          ## s0 = 00000044
	addiu   t5, $zero, 0x004C          ## t5 = 0000004C
	addiu   t4, $zero, 0x0045          ## t4 = 00000045
	addiu   t2, $zero, 0x005A          ## t2 = 0000005A
	lh      t6, 0x4A2A(a2)             ## 00004A2A
lbl_808108EC:
	sll     v1, v0,  1                 
	addu    t7, a0, v1                 
	beq     v0, t6, lbl_80810990       
	addu    a3, t7, t1                 
	lh      t8, 0x4A66(a3)             ## 00004A66
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t9, t8, 0xFFE7             ## t9 = FFFFFFE7
	sh      t9, 0x4A66(a3)             ## 00004A66
	lh      a1, 0x4A66(a3)             ## 00004A66
	addu    t6, t3, v1                 
	sh      a1, -0x3574($at)           ## 0001CA8C
	sh      a1, 0x4A84(a2)             ## 00004A84
	sh      a1, 0x4A86(a2)             ## 00004A86
	lw      t8, 0x01D8(a0)             ## 000001D8
	lhu     t7, 0x0000(t6)             ## 00000000
	addu    t0, t7, t8                 
	lbu     t9, 0x001C(t0)             ## 0000001C
	beql    t2, t9, lbl_8081097C       
	lh      v1, 0x4A66(a3)             ## 00004A66
	lbu     t6, 0x001D(t0)             ## 0000001D
	beql    t4, t6, lbl_8081097C       
	lh      v1, 0x4A66(a3)             ## 00004A66
	lbu     t7, 0x001E(t0)             ## 0000001E
	beql    t5, t7, lbl_8081097C       
	lh      v1, 0x4A66(a3)             ## 00004A66
	lbu     t8, 0x001F(t0)             ## 0000001F
	beql    s0, t8, lbl_8081097C       
	lh      v1, 0x4A66(a3)             ## 00004A66
	lbu     t9, 0x0020(t0)             ## 00000020
	beql    s1, t9, lbl_8081097C       
	lh      v1, 0x4A66(a3)             ## 00004A66
	lbu     t6, 0x0021(t0)             ## 00000021
	bnel    t2, t6, lbl_80810994       
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	lh      v1, 0x4A66(a3)             ## 00004A66
lbl_8081097C:
	lh      t7, 0x4A78(a3)             ## 00004A78
	sh      v1, 0x4A6C(a3)             ## 00004A6C
	addiu   t8, t7, 0xFFE1             ## t8 = FFFFFFE1
	sh      t8, 0x4A78(a3)             ## 00004A78
	sh      v1, 0x4A72(a3)             ## 00004A72
lbl_80810990:
	addiu   v0, v0, 0x0001             ## v0 = 00000002
lbl_80810994:
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x0003            
	bnel    $at, $zero, lbl_808108EC   
	lh      t6, 0x4A2A(a2)             ## 00004A2A
	lh      t9, 0x4A60(a2)             ## 00004A60
	lh      t7, 0x4A62(a2)             ## 00004A62
	lui     $at, 0x0002                ## $at = 00020000
	addiu   t6, t9, 0xFFE1             ## t6 = FFFFFFC8
	lh      t9, 0x4A42(a2)             ## 00004A42
	sh      t6, 0x4A60(a2)             ## 00004A60
	addiu   t8, t7, 0x001F             ## t8 = 0000001F
	sh      t8, 0x4A62(a2)             ## 00004A62
	addu    $at, $at, a0               
	addiu   t6, t9, 0xFFFF             ## t6 = FFFFFFE6
	sh      t6, -0x35BE($at)           ## 0001CA42
	lh      t7, 0x4A42(a2)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	bne     t7, $zero, lbl_80810A0C    
	addiu   t8, $zero, 0x0008          ## t8 = 00000008
	sh      t8, -0x35BE($at)           ## 0001CA42
	lh      t9, 0x4A36(a2)             ## 00004A36
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t6, t9, 0x0001             ## t6 = FFFFFFE8
	sh      t6, -0x35CA($at)           ## 0001CA36
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      $zero, -0x35D4($at)        ## 0001CA2C
lbl_80810A0C:
	lw      s0, 0x0008($sp)            
	lw      s1, 0x000C($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0010           ## $sp = 00000000


func_80810A1C:
	lui     t0, 0x0001                 ## t0 = 00010000
	lui     t1, %hi(var_80813030)      ## t1 = 80810000
	addiu   t1, t1, %lo(var_80813030)  ## t1 = 80813030
	ori     t0, t0, 0x8000             ## t0 = 00018000
	addu    v0, a0, t0                 
	lh      v1, 0x4A2A(v0)             ## 00004A2A
	sll     v1, v1,  1                 
	addu    t6, a0, v1                 
	addu    a1, t6, t0                 
	addu    t7, t1, v1                 
	lh      t8, 0x0000(t7)             ## 00000000
	lh      a2, 0x4A44(a1)             ## 00004A44
	subu    a3, a2, t8                 
	bltz    a3, lbl_80810A60           
	subu    v1, $zero, a3              
	beq     $zero, $zero, lbl_80810A60 
	or      v1, a3, $zero              ## v1 = 00000000
lbl_80810A60:
	lh      t9, 0x4A42(v0)             ## 00004A42
	div     $zero, v1, t9              
	mflo    a3                         
	sll     a3, a3, 16                 
	sra     a3, a3, 16                 
	bne     t9, $zero, lbl_80810A80    
	nop
	break	## 0x01C00
lbl_80810A80:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t9, $at, lbl_80810A98      
	lui     $at, 0x8000                ## $at = 80000000
	bne     v1, $at, lbl_80810A98      
	nop
	break	## 0x01800
lbl_80810A98:
	addu    t2, a2, a3                 
	sh      t2, 0x4A44(a1)             ## 00004A44
	lh      t3, 0x4A42(v0)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t4, t3, 0xFFFF             ## t4 = FFFFFFFF
	sh      t4, -0x35BE($at)           ## 0001CA42
	lh      t5, 0x4A42(v0)             ## 00004A42
	addiu   t3, $zero, 0xFFE8          ## t3 = FFFFFFE8
	lui     $at, 0x0002                ## $at = 00020000
	beql    t5, $zero, lbl_80810AF0    
	sh      t3, 0x4A4C(v0)             ## 00004A4C
	lh      v1, 0x4A2A(v0)             ## 00004A2A
	sll     v1, v1,  1                 
	addu    t6, a0, v1                 
	addu    t7, t6, t0                 
	addu    t9, t1, v1                 
	lh      t2, 0x0000(t9)             ## 00000000
	lh      t8, 0x4A44(t7)             ## 00004A44
	bne     t8, t2, lbl_80810B18       
	nop
	sh      t3, 0x4A4C(v0)             ## 00004A4C
lbl_80810AF0:
	lh      t4, 0x4A4C(v0)             ## 00004A4C
	addiu   t5, $zero, 0x0008          ## t5 = 00000008
	addu    $at, $at, a0               
	sh      t4, 0x4A4A(v0)             ## 00004A4A
	sh      t5, -0x35BE($at)           ## 0001CA42
	lh      t6, 0x4A36(v0)             ## 00004A36
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	sh      t7, -0x35CA($at)           ## 0001CA36
lbl_80810B18:
	jr      $ra                        
	nop


func_80810B20:
	lui     a1, 0x0001                 ## a1 = 00010000
	ori     a1, a1, 0x8000             ## a1 = 00018000
	addu    v0, a0, a1                 
	lh      t6, 0x4A2A(v0)             ## 00004A2A
	sll     t7, t6,  1                 
	addu    t8, a0, t7                 
	addu    v1, t8, a1                 
	lh      t9, 0x4A7E(v1)             ## 00004A7E
	addiu   t0, t9, 0x0019             ## t0 = 00000019
	sh      t0, 0x4A7E(v1)             ## 00004A7E
	lh      t1, 0x4A2A(v0)             ## 00004A2A
	sll     t2, t1,  1                 
	addu    t3, a0, t2                 
	addu    v1, t3, a1                 
	lh      t4, 0x4A6C(v1)             ## 00004A6C
	addiu   t3, $zero, 0x00C8          ## t3 = 000000C8
	addiu   t5, t4, 0xFFCE             ## t5 = FFFFFFCE
	sh      t5, 0x4A6C(v1)             ## 00004A6C
	lh      t6, 0x4A2A(v0)             ## 00004A2A
	sll     t7, t6,  1                 
	addu    t8, a0, t7                 
	addu    v1, t8, a1                 
	lh      t9, 0x4A6C(v1)             ## 00004A6C
	addiu   t8, $zero, 0x0008          ## t8 = 00000008
	bgtzl   t9, lbl_80810B90           
	lh      t0, 0x4A42(v0)             ## 00004A42
	sh      $zero, 0x4A6C(v1)          ## 00004A6C
	lh      t0, 0x4A42(v0)             ## 00004A42
lbl_80810B90:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t1, t0, 0xFFFF             ## t1 = 00000018
	sh      t1, -0x35BE($at)           ## 0001CA42
	lh      t2, 0x4A42(v0)             ## 00004A42
	bnel    t2, $zero, lbl_80810BE4    
	lh      t1, 0x4A2A(v0)             ## 00004A2A
	lh      t4, 0x4A2A(v0)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sll     t5, t4,  1                 
	addu    t6, a0, t5                 
	addu    t7, t6, a1                 
	sh      t3, 0x4A7E(t7)             ## 00004A7E
	sh      t8, -0x35BE($at)           ## 0001CA42
	lh      t9, 0x4A36(v0)             ## 00004A36
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t0, t9, 0x0001             ## t0 = 00000001
	sh      t0, -0x35CA($at)           ## 0001CA36
	lh      t1, 0x4A2A(v0)             ## 00004A2A
lbl_80810BE4:
	sll     t2, t1,  1                 
	addu    t4, a0, t2                 
	addu    t5, t4, a1                 
	lh      v1, 0x4A7E(t5)             ## 00004A4C
	sh      v1, 0x4A8A(v0)             ## 00004A8A
	sh      v1, 0x4A88(v0)             ## 00004A88
	jr      $ra                        
	nop


func_80810C04:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	lhu     t6, 0x0020(s0)             ## 00000020
	addiu   $at, $zero, 0x1000         ## $at = 00001000
	andi    t7, t6, 0x1000             ## t7 = 00000000
	beql    t7, $at, lbl_80810C40      
	lui     $at, 0x0001                ## $at = 00010000
	lhu     v0, 0x0020(s0)             ## 00000020
	ori     $at, $zero, 0x8000         ## $at = 00008000
	andi    t8, v0, 0x8000             ## t8 = 00000000
	bne     t8, $at, lbl_80810D00      
	andi    t5, v0, 0x4000             ## t5 = 00000000
	lui     $at, 0x0001                ## $at = 00010000
lbl_80810C40:
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    v0, s0, $at                
	lh      t9, 0x4A2C(v0)             ## 00004A2C
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	bne     t9, $zero, lbl_80810CC0    
	addiu   a0, $zero, 0x483C          ## a0 = 0000483C
	lui     $at, 0x4396                ## $at = 43960000
	mtc1    $at, $f12                  ## $f12 = 300.00
	addiu   a1, $zero, 0x00B4          ## a1 = 000000B4
	addiu   a2, $zero, 0x0014          ## a2 = 00000014
	jal     func_800915CC              
	addiu   a3, $zero, 0x0064          ## a3 = 00000064
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t0, 0x8010                 ## t0 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t0, t0, 0x43A8             ## t0 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t0, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483B          ## a0 = 0000483B
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t1, $zero, 0x0006          ## t1 = 00000006
	sh      t1, -0x35CA($at)           ## 0001CA36
	jal     func_800C7684              
	addiu   a0, $zero, 0x000F          ## a0 = 0000000F
	beq     $zero, $zero, lbl_80810DC8 
	lw      $ra, 0x0024($sp)           
lbl_80810CC0:
	lui     t2, 0x8010                 ## t2 = 80100000
	addiu   t2, t2, 0x43A8             ## t2 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t2, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      a3, 0x0010($sp)            
	jal     func_800C806C              
	sw      v0, 0x0028($sp)            
	lw      v0, 0x0028($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	lh      t3, 0x4A36(v0)             ## 00004A36
	addiu   t4, t3, 0x0001             ## t4 = 00000001
	beq     $zero, $zero, lbl_80810DC4 
	sh      t4, -0x35CA($at)           ## 0001CA36
lbl_80810D00:
	addiu   $at, $zero, 0x4000         ## $at = 00004000
	bne     t5, $at, lbl_80810D54      
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t6, 0x8010                 ## t6 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t6, t6, 0x43A8             ## t6 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t6, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x483C          ## a0 = 0000483C
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	lui     t7, 0x0002                 ## t7 = 00020000
	addu    t7, t7, s0                 
	lh      t7, -0x35CA(t7)            ## 0001CA36
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t8, t7, 0x0001             ## t8 = 00020001
	beq     $zero, $zero, lbl_80810DC4 
	sh      t8, -0x35CA($at)           ## 0001CA36
lbl_80810D54:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    v0, s0, $at                
	lh      v1, 0x4AAE(v0)             ## 00004AAE
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	bltz    v1, lbl_80810D7C           
	subu    a0, $zero, v1              
	beq     $zero, $zero, lbl_80810D7C 
	or      a0, v1, $zero              ## a0 = 00000000
lbl_80810D7C:
	slti    $at, a0, 0x001E            
	bne     $at, $zero, lbl_80810DC4   
	addiu   a0, $zero, 0x4839          ## a0 = 00004839
	lui     t9, 0x8010                 ## t9 = 80100000
	addiu   t9, t9, 0x43A8             ## t9 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t9, 0x0014($sp)            
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      a3, 0x0010($sp)            
	jal     func_800C806C              
	sw      v0, 0x0028($sp)            
	lw      v0, 0x0028($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	lh      t0, 0x4A2C(v0)             ## 00004A2C
	xori    t1, t0, 0x0001             ## t1 = 00000001
	sh      t1, -0x35D4($at)           ## 0001CA2C
lbl_80810DC4:
	lw      $ra, 0x0024($sp)           
lbl_80810DC8:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_80810DD8:
	lui     a1, 0x0001                 ## a1 = 00010000
	ori     a1, a1, 0x8000             ## a1 = 00018000
	addu    v0, a0, a1                 
	lh      t6, 0x4A2A(v0)             ## 00004A2A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sll     t7, t6,  1                 
	addu    t8, a0, t7                 
	addu    v1, t8, a1                 
	lh      t9, 0x4A7E(v1)             ## 00004A7E
	addiu   t0, t9, 0xFFE7             ## t0 = FFFFFFE7
	sh      t0, 0x4A7E(v1)             ## 00004A7E
	lh      t1, 0x4A2A(v0)             ## 00004A2A
	addiu   t0, $zero, 0x00C8          ## t0 = 000000C8
	sll     t2, t1,  1                 
	addu    t3, a0, t2                 
	addu    v1, t3, a1                 
	lh      t4, 0x4A6C(v1)             ## 00004A6C
	addiu   t5, t4, 0x0019             ## t5 = 00000019
	sh      t5, 0x4A6C(v1)             ## 00004A6C
	lh      t6, 0x4A42(v0)             ## 00004A42
	addiu   t7, t6, 0xFFFF             ## t7 = FFFFFFFF
	sh      t7, -0x35BE($at)           ## 0001CA42
	lh      t8, 0x4A42(v0)             ## 00004A42
	lui     $at, 0x0002                ## $at = 00020000
	bnel    t8, $zero, lbl_80810EA8    
	lh      t3, 0x4A2A(v0)             ## 00004A2A
	lh      t1, 0x4A2A(v0)             ## 00004A2A
	sh      $zero, 0x4A4C(v0)          ## 00004A4C
	lh      t9, 0x4A4C(v0)             ## 00004A4C
	sll     t2, t1,  1                 
	addu    t3, a0, t2                 
	addu    t4, t3, a1                 
	sh      t9, 0x4A4A(v0)             ## 00004A4A
	sh      t0, 0x4A6C(t4)             ## 00004A6C
	lh      t5, 0x4A2A(v0)             ## 00004A2A
	addu    $at, $at, a0               
	addiu   t9, $zero, 0x0008          ## t9 = 00000008
	sll     t6, t5,  1                 
	addu    t7, a0, t6                 
	addu    t8, t7, a1                 
	sh      $zero, 0x4A7E(t8)          ## 00004A7E
	sh      $zero, -0x35A8($at)        ## 0001CA58
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      t9, -0x35BE($at)           ## 0001CA42
	lh      t1, 0x4A36(v0)             ## 00004A36
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t2, t1, 0x0001             ## t2 = 00000001
	sh      t2, -0x35CA($at)           ## 0001CA36
	lh      t3, 0x4A2A(v0)             ## 00004A2A
lbl_80810EA8:
	sll     t0, t3,  1                 
	addu    t4, a0, t0                 
	addu    t5, t4, a1                 
	lh      v1, 0x4A7E(t5)             ## 00004A97
	sh      v1, 0x4A8A(v0)             ## 00004A8A
	sh      v1, 0x4A88(v0)             ## 00004A88
	jr      $ra                        
	nop


func_80810EC8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	lui     t3, 0x0001                 ## t3 = 00010000
	ori     t3, t3, 0x8000             ## t3 = 00018000
	sw      s4, 0x0014($sp)            
	sw      s3, 0x0010($sp)            
	sw      s2, 0x000C($sp)            
	sw      s1, 0x0008($sp)            
	sw      s0, 0x0004($sp)            
	addu    v0, a0, t3                 
	lh      t6, 0x4A2A(v0)             ## 00004A2A
	addiu   s4, $zero, 0x0041          ## s4 = 00000041
	addiu   s3, $zero, 0x0044          ## s3 = 00000044
	sll     t7, t6,  1                 
	addu    t8, a0, t7                 
	addu    v1, t8, t3                 
	lh      a1, 0x4A44(v1)             ## 00004A44
	addiu   s2, $zero, 0x004C          ## s2 = 0000004C
	addiu   s1, $zero, 0x0045          ## s1 = 00000045
	bltz    a1, lbl_80810F20           
	lui     s0, 0x8010                 ## s0 = 80100000
	beq     $zero, $zero, lbl_80810F24 
	or      a2, a1, $zero              ## a2 = 00000000
lbl_80810F20:
	subu    a2, $zero, a1              
lbl_80810F24:
	lh      t9, 0x4A42(v0)             ## 00004A42
	addiu   s0, s0, 0xBF00             ## s0 = 800FBF00
	addiu   t5, $zero, 0x005A          ## t5 = 0000005A
	div     $zero, a2, t9              
	mflo    a3                         
	sll     a3, a3, 16                 
	sra     a3, a3, 16                 
	subu    t6, a1, a3                 
	sh      t6, 0x4A44(v1)             ## 00004A44
	lh      t7, 0x4A2A(v0)             ## 00004A2A
	bne     t9, $zero, lbl_80810F58    
	nop
	break	## 0x01C00
lbl_80810F58:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     t9, $at, lbl_80810F70      
	lui     $at, 0x8000                ## $at = 80000000
	bne     a2, $at, lbl_80810F70      
	nop
	break	## 0x01800
lbl_80810F70:
	sll     t8, t7,  1                 
	addu    t9, a0, t8                 
	addu    v1, t9, t3                 
	lh      t6, 0x4A44(v1)             ## 00004A44
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   t4, $zero, 0x00C8          ## t4 = 000000C8
	bgtz    t6, lbl_80810F94           
	nop
	sh      $zero, 0x4A44(v1)          ## 00004A44
lbl_80810F94:
	lh      t7, 0x4A2A(v0)             ## 00004A2A
lbl_80810F98:
	sll     a2, a1,  1                 
	addu    t8, a0, a2                 
	beq     a1, t7, lbl_80811054       
	addu    t0, t8, t3                 
	lh      t9, 0x4A66(t0)             ## 00004A66
	addiu   v1, a0, 0x01D8             ## v1 = 000001D8
	addu    t7, s0, a2                 
	addiu   t6, t9, 0x0019             ## t6 = 00000019
	sh      t6, 0x4A66(t0)             ## 00004A66
	lh      t1, 0x4A66(t0)             ## 00004A66
	slti    $at, t1, 0x00C8            
	bnel    $at, $zero, lbl_80810FD8   
	lui     $at, 0x0002                ## $at = 00020000
	sh      t4, 0x4A66(t0)             ## 00004A66
	lh      t1, 0x4A66(t0)             ## 00004A66
	lui     $at, 0x0002                ## $at = 00020000
lbl_80810FD8:
	addu    $at, $at, a0               
	sh      t1, -0x3574($at)           ## 0001CA8C
	sh      t1, 0x4A84(v0)             ## 00004A84
	sh      t1, 0x4A86(v0)             ## 00004A86
	lw      t9, 0x0000(v1)             ## 000001D8
	lhu     t8, 0x0000(t7)             ## 00000000
	addu    t2, t8, t9                 
	lbu     t6, 0x001C(t2)             ## 0000001C
	beql    t5, t6, lbl_80811040       
	lh      v1, 0x4A66(t0)             ## 00004A66
	lbu     t7, 0x001D(t2)             ## 0000001D
	beql    s1, t7, lbl_80811040       
	lh      v1, 0x4A66(t0)             ## 00004A66
	lbu     t8, 0x001E(t2)             ## 0000001E
	beql    s2, t8, lbl_80811040       
	lh      v1, 0x4A66(t0)             ## 00004A66
	lbu     t9, 0x001F(t2)             ## 0000001F
	beql    s3, t9, lbl_80811040       
	lh      v1, 0x4A66(t0)             ## 00004A66
	lbu     t6, 0x0020(t2)             ## 00000020
	beql    s4, t6, lbl_80811040       
	lh      v1, 0x4A66(t0)             ## 00004A66
	lbu     t7, 0x0021(t2)             ## 00000021
	bnel    t5, t7, lbl_80811058       
	addiu   a1, a1, 0x0001             ## a1 = 00000001
	lh      v1, 0x4A66(t0)             ## 00004A66
lbl_80811040:
	lh      t8, 0x4A78(t0)             ## 00004A78
	sh      v1, 0x4A72(t0)             ## 00004A72
	addiu   t9, t8, 0x001F             ## t9 = 0000001F
	sh      t9, 0x4A78(t0)             ## 00004A78
	sh      v1, 0x4A6C(t0)             ## 00004A6C
lbl_80811054:
	addiu   a1, a1, 0x0001             ## a1 = 00000002
lbl_80811058:
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	slti    $at, a1, 0x0003            
	bnel    $at, $zero, lbl_80810F98   
	lh      t7, 0x4A2A(v0)             ## 00004A2A
	lh      t6, 0x4A60(v0)             ## 00004A60
	lh      t8, 0x4A62(v0)             ## 00004A62
	lui     $at, 0x0002                ## $at = 00020000
	addiu   t7, t6, 0xFFE1             ## t7 = FFFFFFFA
	lh      t6, 0x4A42(v0)             ## 00004A42
	sh      t7, 0x4A60(v0)             ## 00004A60
	addiu   t9, t8, 0x001F             ## t9 = 0000001F
	sh      t9, 0x4A62(v0)             ## 00004A62
	addu    $at, $at, a0               
	addiu   t7, t6, 0xFFFF             ## t7 = 00000018
	sh      t7, -0x35BE($at)           ## 0001CA42
	lh      t8, 0x4A42(v0)             ## 00004A42
	addiu   v1, $zero, 0x0002          ## v1 = 00000002
	addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
	bne     t8, $zero, lbl_80811104    
	lui     $at, 0x0002                ## $at = 00020000
	lh      t6, 0x4A58(v0)             ## 00004A58
	sh      t9, 0x4A60(v0)             ## 00004A60
	sh      $zero, 0x4A62(v0)          ## 00004A62
	addu    $at, $at, a0               
	sh      t6, -0x35AA($at)           ## 0001CA56
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t7, $zero, 0x0008          ## t7 = 00000008
	sh      t7, -0x35BE($at)           ## 0001CA42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	sh      t8, -0x35D2($at)           ## 0001CA2E
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      v1, -0x35D0($at)           ## 0001CA30
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      v1, -0x35CC($at)           ## 0001CA34
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	sh      $zero, -0x35CA($at)        ## 0001CA36
lbl_80811104:
	lw      s0, 0x0004($sp)            
	lw      s1, 0x0008($sp)            
	lw      s2, 0x000C($sp)            
	lw      s3, 0x0010($sp)            
	lw      s4, 0x0014($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80811120:
	lui     v0, %hi(var_80812D94)      ## v0 = 80810000
	addiu   v0, v0, %lo(var_80812D94)  ## v0 = 80812D94
	lui     t7, 0x8012                 ## t7 = 80120000
	lw      t7, -0x4600(t7)            ## 8011BA00
	lh      t6, 0x0000(v0)             ## 80812D94
	lui     t2, 0x0002                 ## t2 = 00020000
	lh      t8, 0x0F28(t7)             ## 80120F28
	addiu   t1, $zero, 0x00FF          ## t1 = 000000FF
	addu    t2, t2, a0                 
	addu    t9, t6, t8                 
	sh      t9, 0x0000(v0)             ## 80812D94
	lh      t0, 0x0000(v0)             ## 80812D94
	slti    $at, t0, 0x00FF            
	bne     $at, $zero, lbl_80811174   
	nop
	sh      t1, 0x0000(v0)             ## 80812D94
	lh      t2, -0x35CA(t2)            ## 0001CA36
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, a0               
	addiu   t3, t2, 0x0001             ## t3 = 00020001
	sh      t3, -0x35CA($at)           ## 0001CA36
lbl_80811174:
	jr      $ra                        
	nop


func_8081117C:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	lui     t6, 0x8010                 ## t6 = 80100000
	addiu   t6, t6, 0x43A8             ## t6 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t6, 0x0014($sp)            
	addiu   a0, $zero, 0x483B          ## a0 = 0000483B
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_800C806C              
	sw      a3, 0x0010($sp)            
	lui     t7, 0x0002                 ## t7 = 00020000
	addu    t7, t7, s0                 
	lh      t7, -0x35D6(t7)            ## 0001CA2A
	lui     $at, 0x8012                ## $at = 80120000
	addiu   a0, s0, 0x01D8             ## a0 = 000001D8
	jal     func_800902AC              
	sw      t7, -0x46DC($at)           ## 8011B924
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	sw      $zero, 0x135C(v0)          ## 8011B92C
	lui     t8, 0x800A                 ## t8 = 800A0000
	lui     t9, 0x0001                 ## t9 = 00010000
	ori     t9, t9, 0x2518             ## t9 = 00012518
	addiu   t8, t8, 0xA750             ## t8 = 8009A750
	sw      t8, 0x000C(s0)             ## 0000000C
	sw      t9, 0x0010(s0)             ## 00000010
	sw      $zero, 0x0098(s0)          ## 00000098
	sh      $zero, 0x13F4(v0)          ## 8011B9C4
	lh      t8, 0x13F4(v0)             ## 8011B9C4
	lb      t9, 0x0033(v0)             ## 8011A603
	addiu   t0, $zero, 0xFFFF          ## t0 = FFFFFFFF
	lbu     a0, 0x0068(v0)             ## 8011A638
	sh      t0, 0x1378(v0)             ## 8011B948
	sb      $zero, 0x0033(v0)          ## 8011A603
	lb      t0, 0x0033(v0)             ## 8011A603
	addiu   a1, $zero, 0x00FF          ## a1 = 000000FF
	addiu   t1, $zero, 0x0001          ## t1 = 00000001
	addiu   t2, $zero, 0x0032          ## t2 = 00000032
	ori     t3, $zero, 0xFFEF          ## t3 = 0000FFEF
	ori     t4, $zero, 0xFFFF          ## t4 = 0000FFFF
	addiu   $at, $zero, 0x003B         ## $at = 0000003B
	sw      $zero, 0x1364(v0)          ## 8011B934
	sb      a1, 0x13E0(v0)             ## 8011B9B0
	sb      a1, 0x13E1(v0)             ## 8011B9B1
	sb      t1, 0x13C7(v0)             ## 8011B997
	sh      $zero, 0x13C4(v0)          ## 8011B994
	sh      $zero, 0x13CE(v0)          ## 8011B99E
	sh      $zero, 0x13D2(v0)          ## 8011B9A2
	sh      $zero, 0x13FA(v0)          ## 8011B9CA
	sh      $zero, 0x13FC(v0)          ## 8011B9CC
	sh      $zero, 0x13FE(v0)          ## 8011B9CE
	sh      $zero, 0x1400(v0)          ## 8011B9D0
	sh      t2, 0x13EE(v0)             ## 8011B9BE
	sh      $zero, 0x13C8(v0)          ## 8011B998
	sh      $zero, 0x1424(v0)          ## 8011B9F4
	sh      $zero, 0x13F0(v0)          ## 8011B9C0
	sh      $zero, 0x13F2(v0)          ## 8011B9C2
	sh      $zero, 0x140E(v0)          ## 8011B9DE
	sh      $zero, 0x141A(v0)          ## 8011B9EA
	sb      a1, 0x141D(v0)             ## 8011B9ED
	sh      t3, 0x1412(v0)             ## 8011B9E2
	sb      $zero, 0x1414(v0)          ## 8011B9E4
	sb      $zero, 0x1415(v0)          ## 8011B9E5
	sh      t4, 0x1416(v0)             ## 8011B9E6
	sb      $zero, 0x13C3(v0)          ## 8011B993
	sb      $zero, 0x13E2(v0)          ## 8011B9B2
	sb      $zero, 0x13E3(v0)          ## 8011B9B3
	sb      $zero, 0x13E4(v0)          ## 8011B9B4
	sb      $zero, 0x13E5(v0)          ## 8011B9B5
	sb      $zero, 0x13E6(v0)          ## 8011B9B6
	sh      $zero, 0x0038(v0)          ## 8011A608
	sh      t8, 0x13EC(v0)             ## 8011B9BC
	sh      t8, 0x13EA(v0)             ## 8011B9BA
	sh      t8, 0x13E8(v0)             ## 8011B9B8
	sb      t8, 0x13E7(v0)             ## 8011B9B7
	sh      t9, 0x13F6(v0)             ## 8011B9C6
	beq     a0, $at, lbl_80811330      
	sb      t0, 0x0032(v0)             ## 8011A602
	addiu   $at, $zero, 0x003C         ## $at = 0000003C
	beq     a0, $at, lbl_80811330      
	addiu   $at, $zero, 0x003D         ## $at = 0000003D
	beq     a0, $at, lbl_80811330      
	addiu   $at, $zero, 0x0055         ## $at = 00000055
	beq     a0, $at, lbl_80811330      
	lui     t1, 0x8010                 ## t1 = 80100000
	sb      a1, 0x0068(v0)             ## 8011A638
	lhu     t1, -0x7390(t1)            ## 800F8C70
	lhu     v1, 0x0070(v0)             ## 8011A640
	lui     t2, 0x8010                 ## t2 = 80100000
	lhu     t2, -0x7388(t2)            ## 800F8C78
	and     a0, t1, v1                 
	andi    a0, a0, 0xFFFF             ## a0 = 00000000
	and     t3, v1, t2                 
	sh      t3, 0x0070(v0)             ## 8011A640
	sll     t4, a0,  2                 
	lui     t5, 0x8010                 ## t5 = 80100000
	addu    t5, t5, t4                 
	lui     t6, 0x8010                 ## t6 = 80100000
	lbu     t6, -0x7340(t6)            ## 800F8CC0
	lw      t5, -0x7414(t5)            ## 800F8BEC
	lhu     t8, 0x009C(v0)             ## 8011A66C
	sllv    t7, t5, t6                 
	xor     t9, t8, t7                 
	sh      t9, 0x009C(v0)             ## 8011A66C
lbl_80811330:
	lui     t0, 0x8012                 ## t0 = 80120000
	lbu     t0, 0x1212(t0)             ## 80121212
	beql    t0, $zero, lbl_80811360    
	lw      $ra, 0x0024($sp)           
	lw      v1, 0x1354(v0)             ## 8011B924
	lui     a0, 0x0002                 ## a0 = 00020000
	sll     t1, v1,  1                 
	addu    t2, s0, t1                 
	addu    a0, a0, t2                 
	jal     func_801C7F90              
	lh      a0, -0x35E0(a0)            ## 0001CA20
	lw      $ra, 0x0024($sp)           
lbl_80811360:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80811370:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lui     t6, 0x0002                 ## t6 = 00020000
	addu    t6, t6, a0                 
	lh      t6, -0x35CA(t6)            ## 0001CA36
	lui     t9, %hi(var_80813038)      ## t9 = 80810000
	sll     t7, t6,  2                 
	addu    t9, t9, t7                 
	lw      t9, %lo(var_80813038)(t9)  
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808113AC:
	addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
	sw      s2, 0x002C($sp)            
	or      s2, a0, $zero              ## s2 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      s3, 0x0030($sp)            
	sw      s1, 0x0028($sp)            
	sw      s0, 0x0024($sp)            
	lw      s1, 0x0000(s2)             ## 00000000
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t7, 0xE700                 ## t7 = E7000000
	lui     t8, 0x8012                 ## t8 = 80120000
	addiu   t6, s0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s1)             ## 000002C0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t7, 0x0000(s0)             ## 00000000
	lw      t8, -0x4600(t8)            ## 8011BA00
	jal     func_80063684              ## coss?
	lh      a0, 0x07AA(t8)             ## 801207AA
	lui     t9, 0x8012                 ## t9 = 80120000
	lw      t9, -0x4600(t9)            ## 8011BA00
	swc1    $f0, 0x0044($sp)           
	jal     func_800636C4              ## sins?
	lh      a0, 0x07AA(t9)             ## 801207AA
	lui     $at, 0x447A                ## $at = 447A0000
	mtc1    $at, $f2                   ## $f2 = 1000.00
	lwc1    $f4, 0x0044($sp)           
	lui     v0, 0x8012                 ## v0 = 80120000
	lw      v0, -0x4600(v0)            ## 8011BA00
	mul.s   $f6, $f2, $f4              
	nop
	mul.s   $f8, $f0, $f2              
	sub.s   $f10, $f6, $f8             
	swc1    $f10, 0x0090($sp)          
	lh      t1, 0x07AE(v0)             ## 801207AE
	mtc1    t1, $f16                   ## $f16 = 0.00
	nop
	cvt.s.w $f18, $f16                 
	swc1    $f18, 0x008C($sp)          
	jal     func_800636C4              ## sins?
	lh      a0, 0x07AA(v0)             ## 801207AA
	lui     t2, 0x8012                 ## t2 = 80120000
	lw      t2, -0x4600(t2)            ## 8011BA00
	swc1    $f0, 0x0044($sp)           
	jal     func_80063684              ## coss?
	lh      a0, 0x07AA(t2)             ## 801207AA
	lui     $at, 0x447A                ## $at = 447A0000
	mtc1    $at, $f12                  ## $f12 = 1000.00
	lwc1    $f6, 0x0044($sp)           
	or      a0, s2, $zero              ## a0 = 00000000
	mul.s   $f4, $f0, $f12             
	lw      a1, 0x0090($sp)            
	lw      a2, 0x008C($sp)            
	mul.s   $f8, $f12, $f6             
	add.s   $f2, $f4, $f8              
	mfc1    a3, $f2                    
	jal     func_8080BCC0              
	swc1    $f2, 0x0088($sp)           
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    s3, s2, $at                
	lbu     a3, 0x48F3(s3)             ## 000048F3
	lw      a1, 0x0000(s2)             ## 00000000
	lwc1    $f10, 0x0090($sp)          
	lwc1    $f16, 0x008C($sp)          
	lwc1    $f18, 0x0088($sp)          
	addiu   a0, s2, 0x01E0             ## a0 = 000001E0
	sw      a0, 0x003C($sp)            
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	swc1    $f10, 0x0010($sp)          
	swc1    $f16, 0x0014($sp)          
	jal     func_80096FD8              
	swc1    $f18, 0x0018($sp)          
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t4, 0xE300                 ## t4 = E3000000
	ori     t4, t4, 0x1001             ## t4 = E3001001
	addiu   t3, s0, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s1)             ## 000002C0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t4, 0x0000(s0)             ## 00000000
	lui     v0, 0x8012                 ## v0 = 80120000
	lw      v0, -0x4600(v0)            ## 8011BA00
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0xC8E0           ## $at = 0001C8E0
	lh      t5, 0x07AA(v0)             ## 801207AA
	lh      t6, 0x07A8(v0)             ## 801207A8
	addu    a1, s2, $at                
	addiu   a0, $zero, 0x0001          ## a0 = 00000001
	addu    t7, t5, t6                 
	sh      t7, 0x07AA(v0)             ## 801207AA
	jal     func_8005C9C8              
	lw      a2, 0x003C($sp)            
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t9, 0xE700                 ## t9 = E7000000
	addiu   t8, s0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s1)             ## 000002C0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t9, 0x0000(s0)             ## 00000000
	jal     func_8007E868              
	lw      a0, 0x0000(s2)             ## 00000000
	mtc1    $zero, $f0                 ## $f0 = 0.00
	or      a0, s2, $zero              ## a0 = 00000000
	lui     a3, 0x4280                 ## a3 = 42800000
	mfc1    a1, $f0                    
	mfc1    a2, $f0                    
	jal     func_8080BCC0              
	nop
	jal     func_8080CE64              
	or      a0, s2, $zero              ## a0 = 00000000
	jal     func_8080D138              
	or      a0, s2, $zero              ## a0 = 00000000
	mtc1    $zero, $f12                ## $f12 = 0.00
	lui     t2, 0xFC11                 ## t2 = FC110000
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t3, 0xFF2F                 ## t3 = FF2F0000
	ori     t3, t3, 0xFFFF             ## t3 = FF2FFFFF
	addiu   t1, s0, 0x0008             ## t1 = 00000008
	sw      t1, 0x02C0(s1)             ## 000002C0
	ori     t2, t2, 0x9623             ## t2 = FC119623
	sw      t2, 0x0000(s0)             ## 00000000
	sw      t3, 0x0004(s0)             ## 00000004
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t5, 0xFA00                 ## t5 = FA000000
	mov.s   $f14, $f12                 
	addiu   t4, s0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(s1)             ## 000002C0
	sw      t5, 0x0000(s0)             ## 00000000
	lh      t6, 0x4A5E(s3)             ## 00004A5E
	lh      t4, 0x4A5C(s3)             ## 00004A5C
	lh      t1, 0x4A5A(s3)             ## 00004A5A
	lh      t9, 0x4A64(s3)             ## 00004A64
	andi    t7, t6, 0x00FF             ## t7 = 00000000
	sll     t8, t7,  8                 
	andi    t5, t4, 0x00FF             ## t5 = 00000008
	sll     t2, t1, 24                 
	or      t3, t8, t2                 ## t3 = FC119623
	sll     t6, t5, 16                 
	or      t7, t3, t6                 ## t7 = FC119623
	andi    t1, t9, 0x00FF             ## t1 = 00000000
	or      t8, t7, t1                 ## t8 = FC119623
	sw      t8, 0x0004(s0)             ## 00000004
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t4, 0xFB00                 ## t4 = FB000000
	lui     a2, 0xC2BB                 ## a2 = C2BB0000
	addiu   t2, s0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(s1)             ## 000002C0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t4, 0x0000(s0)             ## 00000000
	ori     a2, a2, 0x3333             ## a2 = C2BB3333
	jal     func_800AA7F4              
	or      a3, $zero, $zero           ## a3 = 00000000
	lui     $at, %hi(var_808130A0)     ## $at = 80810000
	lwc1    $f12, %lo(var_808130A0)($at) 
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mfc1    a2, $f12                   
	jal     func_800AA8FC              
	mov.s   $f14, $f12                 
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f4                   ## $f4 = 100.00
	lwc1    $f6, 0x4AB4(s3)            ## 00004AB4
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	jal     func_800AA9E0              
	div.s   $f12, $f6, $f4             
	lw      s3, 0x02C0(s1)             ## 000002C0
	lui     t3, 0xDA38                 ## t3 = DA380000
	ori     t3, t3, 0x0003             ## t3 = DA380003
	addiu   t5, s3, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s1)             ## 000002C0
	sw      t3, 0x0000(s3)             ## 00000000
	jal     func_800AB900              
	lw      a0, 0x0000(s2)             ## 00000000
	lui     a3, 0x0102                 ## a3 = 01020000
	ori     a3, a3, 0x0040             ## a3 = 01020040
	lui     t0, 0xDE00                 ## t0 = DE000000
	sw      v0, 0x0004(s3)             ## 00000004
	lw      s0, 0x02C0(s1)             ## 000002C0
	addiu   t6, s0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s1)             ## 000002C0
	sw      a3, 0x0000(s0)             ## 00000000
	lw      t9, 0x00A4(s2)             ## 000000A4
	sw      t9, 0x0004(s0)             ## 00000004
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t1, 0x0104                 ## t1 = 01040000
	addiu   t1, t1, 0x9080             ## t1 = 01039080
	addiu   t7, s0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s1)             ## 000002C0
	sw      t1, 0x0004(s0)             ## 00000004
	sw      t0, 0x0000(s0)             ## 00000000
	lw      s0, 0x02C0(s1)             ## 000002C0
	addiu   t8, s0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s1)             ## 000002C0
	sw      a3, 0x0000(s0)             ## 00000000
	lw      t2, 0x00A4(s2)             ## 000000A4
	addiu   t4, t2, 0x0200             ## t4 = 00000200
	sw      t4, 0x0004(s0)             ## 00000004
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t3, 0x0104                 ## t3 = 01040000
	addiu   t3, t3, 0x9298             ## t3 = 01039298
	addiu   t5, s0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s1)             ## 000002C0
	sw      t3, 0x0004(s0)             ## 00000004
	sw      t0, 0x0000(s0)             ## 00000000
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t9, 0x0101                 ## t9 = 01010000
	ori     t9, t9, 0x0020             ## t9 = 01010020
	addiu   t6, s0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s1)             ## 000002C0
	sw      t9, 0x0000(s0)             ## 00000000
	lw      t7, 0x00A4(s2)             ## 000000A4
	addiu   t1, t7, 0x0400             ## t1 = 00000408
	sw      t1, 0x0004(s0)             ## 00000004
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t2, 0x0104                 ## t2 = 01040000
	addiu   t2, t2, 0x94A8             ## t2 = 010394A8
	addiu   t8, s0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s1)             ## 000002C0
	sw      t2, 0x0004(s0)             ## 00000004
	sw      t0, 0x0000(s0)             ## 00000000
	jal     func_8080EB78              
	or      a0, s2, $zero              ## a0 = 00000000
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t5, 0xE700                 ## t5 = E7000000
	or      a0, s2, $zero              ## a0 = 00000000
	addiu   t4, s0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(s1)             ## 000002C0
	sw      $zero, 0x0004(s0)          ## 00000004
	sw      t5, 0x0000(s0)             ## 00000000
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	addiu   a2, $zero, 0x0000          ## a2 = 00000000
	jal     func_8080BCC0              
	lui     a3, 0x4280                 ## a3 = 42800000
	lw      $ra, 0x0034($sp)           
	lw      s0, 0x0024($sp)            
	lw      s1, 0x0028($sp)            
	lw      s2, 0x002C($sp)            
	lw      s3, 0x0030($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0098           ## $sp = 00000000


func_80811760:
	addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lui     t6, 0x8012                 ## t6 = 80120000
	lbu     t6, 0x1212(t6)             ## 80121212
	lw      t2, 0x0000(s0)             ## 00000000
	beql    t6, $zero, lbl_808117AC    
	lui     $at, 0x0002                ## $at = 00020000
	jal     func_801C70FC              
	sw      t2, 0x007C($sp)            
	beq     v0, $zero, lbl_808117A8    
	lw      t2, 0x007C($sp)            
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	beq     $zero, $zero, lbl_808117B4 
	sb      t7, -0x3614($at)           ## 0001C9EC
lbl_808117A8:
	lui     $at, 0x0002                ## $at = 00020000
lbl_808117AC:
	addu    $at, $at, s0               
	sb      $zero, -0x3614($at)        ## 0001C9EC
lbl_808117B4:
	lw      v0, 0x02C0(t2)             ## 000002C0
	lui     t9, 0xDB06                 ## t9 = DB060000
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t9, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t2)             ## 000002C0
	lui     t4, 0xDB06                 ## t4 = DB060000
	ori     t4, t4, 0x0004             ## t4 = DB060004
	addiu   t3, v0, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(t2)             ## 000002C0
	sw      t4, 0x0000(v0)             ## 00000000
	lw      t5, 0x00A8(s0)             ## 000000A8
	or      a2, $zero, $zero           ## a2 = 00000000
	or      a3, $zero, $zero           ## a3 = 00000000
	sw      t5, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(t2)             ## 000002C0
	lui     t7, 0xDB06                 ## t7 = DB060000
	ori     t7, t7, 0x0008             ## t7 = DB060008
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t2)             ## 000002C0
	sw      t7, 0x0000(v0)             ## 00000000
	lw      t8, 0x00AC(s0)             ## 000000AC
	sw      t8, 0x0004(v0)             ## 00000004
	lw      a0, 0x0000(s0)             ## 00000000
	jal     func_8007EE5C              
	sw      t2, 0x007C($sp)            
	addiu   v0, s0, 0x0014             ## v0 = 00000014
	lb      t9, 0x0014(v0)             ## 00000028
	lui     $at, 0x0002                ## $at = 00020000
	lw      t2, 0x007C($sp)            
	addu    $at, $at, s0               
	sh      t9, -0x3554($at)           ## 0001CAAC
	lb      t3, 0x0015(v0)             ## 00000029
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t3, -0x3552($at)           ## 0001CAAE
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    a2, s0, $at                
	lh      v1, 0x4AAC(a2)             ## 00004AAC
	slti    $at, v1, 0xFFE2            
	beql    $at, $zero, lbl_808118E4   
	slti    $at, v1, 0x001F            
	lh      t4, 0x4AA8(a2)             ## 00004AA8
	addiu   v1, $zero, 0xFFFF          ## v1 = FFFFFFFF
	addiu   t9, $zero, 0x000A          ## t9 = 0000000A
	bne     v1, t4, lbl_808118C4       
	lui     $at, 0x0002                ## $at = 00020000
	lh      t5, 0x4AA4(a2)             ## 00004AA4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t6, t5, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, -0x355C($at)           ## 0001CAA4
	lh      t7, 0x4AA4(a2)             ## 00004AA4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	bgez    t7, lbl_808118BC           
	addiu   a0, $zero, 0x0001          ## a0 = 00000001
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	sh      t8, -0x355C($at)           ## 0001CAA4
	beq     $zero, $zero, lbl_80811974 
	addiu   a0, $zero, 0x0001          ## a0 = 00000001
lbl_808118BC:
	beq     $zero, $zero, lbl_80811974 
	sh      $zero, -0x3554($at)        ## 0001CAAC
lbl_808118C4:
	addu    $at, $at, s0               
	sh      t9, -0x355C($at)           ## 0001CAA4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      v1, -0x3558($at)           ## 0001CAA8
	beq     $zero, $zero, lbl_80811974 
	addiu   a0, $zero, 0x0001          ## a0 = 00000001
	slti    $at, v1, 0x001F            
lbl_808118E4:
	bne     $at, $zero, lbl_80811964   
	addiu   a0, $zero, 0x0001          ## a0 = 00000001
	lh      t3, 0x4AA8(a2)             ## 00004AA8
	addiu   a0, $zero, 0x0001          ## a0 = 00000001
	addiu   t8, $zero, 0x000A          ## t8 = 0000000A
	bne     a0, t3, lbl_80811948       
	lui     $at, 0x0002                ## $at = 00020000
	lh      t4, 0x4AA4(a2)             ## 00004AA4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t5, t4, 0xFFFF             ## t5 = FFFFFFFF
	sh      t5, -0x355C($at)           ## 0001CAA4
	lh      t6, 0x4AA4(a2)             ## 00004AA4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	bgez    t6, lbl_80811940           
	addiu   v1, $zero, 0xFFFF          ## v1 = FFFFFFFF
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t7, $zero, 0x0002          ## t7 = 00000002
	sh      t7, -0x355C($at)           ## 0001CAA4
	beq     $zero, $zero, lbl_80811974 
	addiu   v1, $zero, 0xFFFF          ## v1 = FFFFFFFF
lbl_80811940:
	beq     $zero, $zero, lbl_80811974 
	sh      $zero, -0x3554($at)        ## 0001CAAC
lbl_80811948:
	addu    $at, $at, s0               
	sh      t8, -0x355C($at)           ## 0001CAA4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      a0, -0x3558($at)           ## 0001CAA8
	beq     $zero, $zero, lbl_80811974 
	addiu   v1, $zero, 0xFFFF          ## v1 = FFFFFFFF
lbl_80811964:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x3558($at)        ## 0001CAA8
	addiu   v1, $zero, 0xFFFF          ## v1 = FFFFFFFF
lbl_80811974:
	lh      v0, 0x4AAE(a2)             ## 00004AAE
	slti    $at, v0, 0xFFE2            
	beql    $at, $zero, lbl_808119F0   
	slti    $at, v0, 0x001F            
	lh      t9, 0x4AAA(a2)             ## 00004AAA
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	bne     v1, t9, lbl_808119D8       
	addiu   t7, $zero, 0x000A          ## t7 = 0000000A
	lh      t3, 0x4AA6(a2)             ## 00004AA6
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t4, t3, 0xFFFF             ## t4 = FFFFFFFF
	sh      t4, -0x355A($at)           ## 0001CAA6
	lh      t5, 0x4AA6(a2)             ## 00004AA6
	lui     $at, 0x0002                ## $at = 00020000
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	bgez    t5, lbl_808119D0           
	addu    $at, $at, s0               
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     $zero, $zero, lbl_80811A6C 
	sh      t6, -0x355A($at)           ## 0001CAA6
lbl_808119D0:
	beq     $zero, $zero, lbl_80811A6C 
	sh      $zero, -0x3552($at)        ## 0001CAAE
lbl_808119D8:
	sh      t7, -0x355A($at)           ## 0001CAA6
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     $zero, $zero, lbl_80811A6C 
	sh      v1, -0x3556($at)           ## 0001CAAA
	slti    $at, v0, 0x001F            
lbl_808119F0:
	bnel    $at, $zero, lbl_80811A64   
	lui     $at, 0x0002                ## $at = 00020000
	lh      t8, 0x4AAA(a2)             ## 00004AAA
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	bne     a0, t8, lbl_80811A4C       
	addiu   t6, $zero, 0x000A          ## t6 = 0000000A
	lh      t9, 0x4AA6(a2)             ## 00004AA6
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t3, t9, 0xFFFF             ## t3 = 00000009
	sh      t3, -0x355A($at)           ## 0001CAA6
	lh      t4, 0x4AA6(a2)             ## 00004AA6
	lui     $at, 0x0002                ## $at = 00020000
	addiu   t5, $zero, 0x0002          ## t5 = 00000002
	bgez    t4, lbl_80811A44           
	addu    $at, $at, s0               
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     $zero, $zero, lbl_80811A6C 
	sh      t5, -0x355A($at)           ## 0001CAA6
lbl_80811A44:
	beq     $zero, $zero, lbl_80811A6C 
	sh      $zero, -0x3552($at)        ## 0001CAAE
lbl_80811A4C:
	sh      t6, -0x355A($at)           ## 0001CAA6
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	beq     $zero, $zero, lbl_80811A6C 
	sh      a0, -0x3556($at)           ## 0001CAAA
	lui     $at, 0x0002                ## $at = 00020000
lbl_80811A64:
	addu    $at, $at, s0               
	sh      $zero, -0x3556($at)        ## 0001CAAA
lbl_80811A6C:
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x356E($at)        ## 0001CA92
	sw      t2, 0x007C($sp)            
	sw      a2, 0x0024($sp)            
	jal     func_8080CD2C              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a2, 0x0024($sp)            
	lui     t9, %hi(var_80813064)      ## t9 = 80810000
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t7, 0x4A2E(a2)             ## 00004A2E
	sll     t8, t7,  2                 
	addu    t9, t9, t8                 
	lw      t9, %lo(var_80813064)(t9)  
	jalr    $ra, t9                    
	nop
	lw      a2, 0x0024($sp)            
	lui     t9, %hi(var_80813058)      ## t9 = 80810000
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t3, 0x4A2E(a2)             ## 00004A2E
	sll     t4, t3,  2                 
	addu    t9, t9, t4                 
	lw      t9, %lo(var_80813058)(t9)  
	jalr    $ra, t9                    
	nop
	lw      a2, 0x0024($sp)            
	lw      t2, 0x007C($sp)            
	lh      v0, 0x4A30(a2)             ## 00004A30
	slti    $at, v0, 0x0024            
	bne     $at, $zero, lbl_80811AF0   
	slti    $at, v0, 0x0028            
	bnel    $at, $zero, lbl_80811CA8   
	lw      v0, 0x02C0(t2)             ## 000002C0
lbl_80811AF0:
	lw      a0, 0x0000(s0)             ## 00000000
	sw      t2, 0x007C($sp)            
	jal     func_8007E5E4              
	sw      a2, 0x0024($sp)            
	lw      a2, 0x0024($sp)            
	lw      t2, 0x007C($sp)            
	lw      v0, 0x02C0(t2)             ## 000002C0
	lui     t6, 0xFC30                 ## t6 = FC300000
	lui     t7, 0x552E                 ## t7 = 552E0000
	addiu   t5, v0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(t2)             ## 000002C0
	ori     t7, t7, 0xFF7F             ## t7 = 552EFF7F
	ori     t6, t6, 0x9661             ## t6 = FC309661
	sw      t6, 0x0000(v0)             ## 00000000
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(t2)             ## 000002C0
	lui     t3, 0xFA00                 ## t3 = FA000000
	lui     $at, 0x64FF                ## $at = 64FF0000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t2)             ## 000002C0
	sw      t3, 0x0000(v0)             ## 00000000
	lh      t4, 0x4A90(a2)             ## 00004A90
	ori     $at, $at, 0xFF00           ## $at = 64FFFF00
	andi    t9, t4, 0x00FF             ## t9 = 00000000
	or      t5, t9, $at                ## t5 = 64FFFF00
	sw      t5, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(t2)             ## 000002C0
	lui     t7, 0xFB00                 ## t7 = FB000000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t2)             ## 000002C0
	lui     t3, 0xFD70                 ## t3 = FD700000
	lui     t4, 0x8012                 ## t4 = 80120000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t2)             ## 000002C0
	sw      t3, 0x0000(v0)             ## 00000000
	lbu     t4, -0x4627(t4)            ## 8011B9D9
	lui     t5, %hi(var_80813070)      ## t5 = 80810000
	sll     t9, t4,  2                 
	addu    t5, t5, t9                 
	lw      t5, %lo(var_80813070)(t5)  
	sw      t5, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(t2)             ## 000002C0
	lui     t7, 0xF570                 ## t7 = F5700000
	lui     t8, 0x0700                 ## t8 = 07000000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t2)             ## 000002C0
	sw      t8, 0x0004(v0)             ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t2)             ## 000002C0
	lui     t4, 0xE600                 ## t4 = E6000000
	lui     t5, 0xF300                 ## t5 = F3000000
	addiu   t3, v0, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(t2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t2)             ## 000002C0
	lui     t6, 0x0747                 ## t6 = 07470000
	ori     t6, t6, 0xF072             ## t6 = 0747F072
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t2)             ## 000002C0
	sw      t6, 0x0004(v0)             ## 00000004
	sw      t5, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t2)             ## 000002C0
	lui     t8, 0xE700                 ## t8 = E7000000
	lui     t5, 0xF200                 ## t5 = F2000000
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t8, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t2)             ## 000002C0
	lui     t4, 0xF568                 ## t4 = F5680000
	ori     t4, t4, 0x2400             ## t4 = F5682400
	addiu   t3, v0, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(t2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t4, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t2)             ## 000002C0
	lui     t6, 0x0023                 ## t6 = 00230000
	ori     t6, t6, 0xC03C             ## t6 = 0023C03C
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(t2)             ## 000002C0
	sw      t6, 0x0004(v0)             ## 00000004
	sw      t5, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t2)             ## 000002C0
	lui     t8, 0xE43A                 ## t8 = E43A0000
	lui     t3, 0x0016                 ## t3 = 00160000
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t2)             ## 000002C0
	ori     t3, t3, 0x8330             ## t3 = 00168330
	ori     t8, t8, 0x8370             ## t8 = E43A8370
	sw      t8, 0x0000(v0)             ## 00000000
	sw      t3, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(t2)             ## 000002C0
	lui     t9, 0xE100                 ## t9 = E1000000
	lui     t6, 0xF100                 ## t6 = F1000000
	addiu   t4, v0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(t2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t9, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t2)             ## 000002C0
	lui     t7, 0x0400                 ## t7 = 04000000
	ori     t7, t7, 0x0400             ## t7 = 04000400
	addiu   t5, v0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(t2)             ## 000002C0
	sw      t7, 0x0004(v0)             ## 00000004
	sw      t6, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t2)             ## 000002C0
lbl_80811CA8:
	lui     t3, 0xE700                 ## t3 = E7000000
	lui     t9, 0xDE00                 ## t9 = DE000000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(t2)             ## 000002C0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t3, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t2)             ## 000002C0
	lui     t5, %hi(var_80812D98)      ## t5 = 80810000
	addiu   t5, t5, %lo(var_80812D98)  ## t5 = 80812D98
	addiu   t4, v0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(t2)             ## 000002C0
	sw      t5, 0x0004(v0)             ## 00000004
	sw      t9, 0x0000(v0)             ## 00000000
	lw      v0, 0x02C0(t2)             ## 000002C0
	lui     t7, 0xFA00                 ## t7 = FA000000
	lui     t8, %hi(var_80812D94)      ## t8 = 80810000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(t2)             ## 000002C0
	sw      t7, 0x0000(v0)             ## 00000000
	lh      t8, %lo(var_80812D94)(t8)  
	lui     t9, 0x8010                 ## t9 = 80100000
	andi    t3, t8, 0x00FF             ## t3 = 00000000
	sw      t3, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(t2)             ## 000002C0
	lui     t3, 0x8010                 ## t3 = 80100000
	lui     $at, 0xF600                ## $at = F6000000
	addiu   t4, v0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(t2)             ## 000002C0
	lw      t9, -0x1B00(t9)            ## 800FE500
	lw      t3, -0x1AFC(t3)            ## 800FE504
	sw      $zero, 0x0004(v0)          ## 00000004
	addiu   t5, t9, 0xFFFF             ## t5 = 800FFFFF
	andi    t6, t5, 0x03FF             ## t6 = 000003FF
	addiu   t4, t3, 0xFFFF             ## t4 = 800FFFFF
	andi    t9, t4, 0x03FF             ## t9 = 000003FF
	sll     t7, t6, 14                 
	or      t8, t7, $at                ## t8 = FE000000
	sll     t5, t9,  2                 
	or      t6, t8, t5                 ## t6 = FE0FFFFF
	sw      t6, 0x0000(v0)             ## 00000000
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0088           ## $sp = 00000000
	jr      $ra                        
	nop


func_80811D5C:
	addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_800912C4              
	addiu   a1, s0, 0x01D8             ## a1 = 000001D8
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xBA00             ## v0 = 8011BA00
	lw      t7, 0x0000(v0)             ## 8011BA00
	addiu   t6, $zero, 0x0020          ## t6 = 00000020
	addiu   t8, $zero, 0x0016          ## t8 = 00000016
	sh      t6, 0x07A2(t7)             ## 000007A2
	lw      t9, 0x0000(v0)             ## 8011BA00
	addiu   a2, $zero, 0x0014          ## a2 = 00000014
	addiu   t7, $zero, 0xFFF6          ## t7 = FFFFFFF6
	sh      t8, 0x07A4(t9)             ## 000007A4
	lw      t6, 0x0000(v0)             ## 8011BA00
	addiu   t4, $zero, 0x00A0          ## t4 = 000000A0
	addiu   t5, $zero, 0x0098          ## t5 = 00000098
	sh      a2, 0x07A6(t6)             ## 000007C6
	lw      t8, 0x0000(v0)             ## 8011BA00
	addiu   t6, $zero, 0x03E8          ## t6 = 000003E8
	addiu   a3, $zero, 0x0008          ## a3 = 00000008
	sh      t7, 0x07A8(t8)             ## 000007BE
	lw      t9, 0x0000(v0)             ## 8011BA00
	addiu   t8, $zero, 0xFD44          ## t8 = FFFFFD44
	addiu   $ra, $zero, 0x0003         ## $ra = 00000003
	sh      $zero, 0x07AA(t9)          ## 000007AA
	lw      t7, 0x0000(v0)             ## 8011BA00
	addiu   t0, $zero, 0x000A          ## t0 = 0000000A
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	sh      t6, 0x07AC(t7)             ## 000007A2
	lw      t9, 0x0000(v0)             ## 8011BA00
	addiu   t6, $zero, 0x00A4          ## t6 = 000000A4
	addiu   t2, $zero, 0x0006          ## t2 = 00000006
	sh      t8, 0x07AE(t9)             ## 000007AE
	lw      t7, 0x0000(v0)             ## 8011BA00
	addiu   t8, $zero, 0x0068          ## t8 = 00000068
	addiu   t1, $zero, 0x0002          ## t1 = 00000002
	sh      t6, 0x07B0(t7)             ## 000007A6
	lw      t9, 0x0000(v0)             ## 8011BA00
	addiu   t7, $zero, 0x0064          ## t7 = 00000064
	addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
	sh      t8, 0x07B2(t9)             ## 000007B2
	lw      t6, 0x0000(v0)             ## 8011BA00
	addiu   t9, $zero, 0x00A2          ## t9 = 000000A2
	lui     $at, %hi(var_80812D94)     ## $at = 80810000
	sh      t4, 0x07B4(t6)             ## 00000858
	lw      t8, 0x0000(v0)             ## 8011BA00
	mtc1    $zero, $f4                 ## $f4 = 0.00
	sh      t7, 0x07B6(t8)             ## 0000081E
	lw      t6, 0x0000(v0)             ## 8011BA00
	addiu   t8, $zero, 0x00D6          ## t8 = 000000D6
	sh      t9, 0x07B8(t6)             ## 0000085C
	lw      t7, 0x0000(v0)             ## 8011BA00
	addiu   t6, $zero, 0x0244          ## t6 = 00000244
	sh      t5, 0x07BA(t7)             ## 0000081E
	lw      t9, 0x0000(v0)             ## 8011BA00
	sh      t8, 0x07BC(t9)             ## 0000085E
	lw      t7, 0x0000(v0)             ## 8011BA00
	addiu   t8, $zero, 0x0190          ## t8 = 00000190
	sh      t6, 0x0AAE(t7)             ## 00000B12
	lw      t9, 0x0000(v0)             ## 8011BA00
	sh      t8, 0x0AB0(t9)             ## 00000B52
	lw      t6, 0x0000(v0)             ## 8011BA00
	sh      a2, 0x0ADA(t6)             ## 00000D1E
	lw      t7, 0x0000(v0)             ## 8011BA00
	addiu   t6, $zero, 0xFFB2          ## t6 = FFFFFFB2
	sh      a2, 0x0ADC(t7)             ## 00000B40
	lw      t8, 0x0000(v0)             ## 8011BA00
	sh      a2, 0x0ADE(t8)             ## 00000C6E
	lw      t9, 0x0000(v0)             ## 8011BA00
	sh      a3, 0x0AEA(t9)             ## 00000B8C
	lw      t7, 0x0000(v0)             ## 8011BA00
	sh      t6, 0x0AEC(t7)             ## 00000B50
	lw      t8, 0x0000(v0)             ## 8011BA00
	sh      $zero, 0x0AEE(t8)          ## 00000C7E
	lw      t9, 0x0000(v0)             ## 8011BA00
	sh      $zero, 0x0AF0(t9)          ## 00000B92
	lw      t6, 0x0000(v0)             ## 8011BA00
	sh      $zero, 0x0AF2(t6)          ## 00000AA4
	lw      t7, 0x0000(v0)             ## 8011BA00
	sh      $zero, 0x0AF4(t7)          ## 00000B58
	lw      t8, 0x0000(v0)             ## 8011BA00
	sh      $ra, 0x0AF6(t8)            ## 00000C86
	lw      t9, 0x0000(v0)             ## 8011BA00
	sh      a3, 0x0AF8(t9)             ## 00000B9A
	lw      t6, 0x0000(v0)             ## 8011BA00
	addiu   t9, $zero, 0x000E          ## t9 = 0000000E
	sh      a3, 0x0AFA(t6)             ## 00000AAC
	lw      t7, 0x0000(v0)             ## 8011BA00
	sh      t0, 0x0AFC(t7)             ## 00000B60
	lw      t8, 0x0000(v0)             ## 8011BA00
	addiu   t7, $zero, 0x0005          ## t7 = 00000005
	sh      $zero, 0x0B26(t8)          ## 00000CB6
	lw      t6, 0x0000(v0)             ## 8011BA00
	sh      t9, 0x0F14(t6)             ## 00000EC6
	lw      t8, 0x0000(v0)             ## 8011BA00
	addiu   t9, $zero, 0x0004          ## t9 = 00000004
	sh      t7, 0x0F16(t8)             ## 000010A6
	lw      t6, 0x0000(v0)             ## 8011BA00
	sh      t9, 0x0F18(t6)             ## 00000ECA
	lw      t7, 0x0000(v0)             ## 8011BA00
	sh      a1, 0x0F1C(t7)             ## 00000F21
	lw      t8, 0x0000(v0)             ## 8011BA00
	addiu   t7, $zero, 0x0050          ## t7 = 00000050
	sh      t2, 0x0F1E(t8)             ## 000010AE
	lw      t9, 0x0000(v0)             ## 8011BA00
	sh      t1, 0x0F20(t9)             ## 00000F24
	lw      t6, 0x0000(v0)             ## 8011BA00
	sh      t2, 0x0F22(t6)             ## 00000ED4
	lw      t8, 0x0000(v0)             ## 8011BA00
	addiu   t6, $zero, 0x001E          ## t6 = 0000001E
	sh      t7, 0x0F24(t8)             ## 000010B4
	sh      t3, %lo(var_80812D94)($at) 
	lw      t9, 0x0000(v0)             ## 8011BA00
	addiu   t8, $zero, 0xFF9C          ## t8 = FFFFFF9C
	lui     $at, 0x0002                ## $at = 00020000
	sh      t0, 0x0F28(t9)             ## 00000F2C
	lw      t7, 0x0000(v0)             ## 8011BA00
	addu    $at, $at, s0               
	sh      t6, 0x0F2A(t7)             ## 00000F7A
	lw      t9, 0x0000(v0)             ## 8011BA00
	addiu   t6, $zero, 0xFFAB          ## t6 = FFFFFFAB
	sh      t8, 0x0F2C(t9)             ## 00000F30
	lw      t7, 0x0000(v0)             ## 8011BA00
	addiu   t8, $zero, 0x0004          ## t8 = 00000004
	sh      t6, 0x0F2E(t7)             ## 00000F7E
	lw      t9, 0x0000(v0)             ## 8011BA00
	addiu   t6, $zero, 0x0019          ## t6 = 00000019
	sh      t8, 0x0F30(t9)             ## 00000F34
	lw      t7, 0x0000(v0)             ## 8011BA00
	sh      t6, 0x0F34(t7)             ## 00000F84
	lw      t8, 0x0000(v0)             ## 8011BA00
	addiu   t6, $zero, 0x005C          ## t6 = 0000005C
	sh      a1, 0x0F36(t8)             ## 00000F3A
	lw      t9, 0x0000(v0)             ## 8011BA00
	addiu   t8, $zero, 0x00AB          ## t8 = 000000AB
	sh      a1, 0x0F38(t9)             ## 00000F3C
	lw      t7, 0x0000(v0)             ## 8011BA00
	sh      t6, 0x0F3C(t7)             ## 00000F8C
	lw      t9, 0x0000(v0)             ## 8011BA00
	addiu   t6, $zero, 0x000B          ## t6 = 0000000B
	sh      t8, 0x0F3E(t9)             ## 00000F42
	lw      t7, 0x0000(v0)             ## 8011BA00
	addiu   t9, $zero, 0x001A          ## t9 = 0000001A
	sh      t6, 0x0F40(t7)             ## 00000F90
	lw      t8, 0x0000(v0)             ## 8011BA00
	sh      t0, 0x0F42(t8)             ## 00000FED
	lw      t6, 0x0000(v0)             ## 8011BA00
	sh      t9, 0x0F44(t6)             ## 00000F4F
	lw      t7, 0x0000(v0)             ## 8011BA00
	sh      t1, 0x0F46(t7)             ## 00000F96
	lw      t8, 0x0000(v0)             ## 8011BA00
	sh      a1, 0x0F48(t8)             ## 00000FF3
	lw      t9, 0x0000(v0)             ## 8011BA00
	addiu   t8, $zero, 0x0040          ## t8 = 00000040
	sh      $zero, 0x0F4A(t9)          ## 00000F64
	lw      t6, 0x0000(v0)             ## 8011BA00
	sh      $zero, 0x0F4C(t6)          ## 00000F57
	lw      t7, 0x0000(v0)             ## 8011BA00
	addiu   t6, $zero, 0x009A          ## t6 = 0000009A
	sh      t4, 0x0F4E(t7)             ## 00000F9E
	lw      t9, 0x0000(v0)             ## 8011BA00
	sh      t8, 0x0F50(t9)             ## 00000F6A
	lw      t7, 0x0000(v0)             ## 8011BA00
	addiu   t9, $zero, 0x006A          ## t9 = 0000006A
	sh      t6, 0x0F52(t7)             ## 00000FA2
	lw      t8, 0x0000(v0)             ## 8011BA00
	addiu   t7, $zero, 0x0010          ## t7 = 00000010
	sh      t5, 0x0F54(t8)             ## 00000F94
	lw      t6, 0x0000(v0)             ## 8011BA00
	sh      t9, 0x0F56(t6)             ## 00000FF0
	lw      t8, 0x0000(v0)             ## 8011BA00
	addiu   t9, $zero, 0x0009          ## t9 = 00000009
	sh      t7, 0x0DE0(t8)             ## 00000E20
	lw      t6, 0x0000(v0)             ## 8011BA00
	addiu   t8, $zero, 0x000E          ## t8 = 0000000E
	sh      t9, 0x0DE2(t6)             ## 00000E7C
	lw      t7, 0x0000(v0)             ## 8011BA00
	addiu   t6, $zero, 0x000B          ## t6 = 0000000B
	sh      t0, 0x0DE4(t7)             ## 00000DF4
	lw      t9, 0x0000(v0)             ## 8011BA00
	sh      t8, 0x0DE6(t9)             ## 00000DEF
	lw      t7, 0x0000(v0)             ## 8011BA00
	addiu   t8, $zero, 0x000C          ## t8 = 0000000C
	sh      t6, 0x0DE8(t7)             ## 00000DF8
	lw      t9, 0x0000(v0)             ## 8011BA00
	addiu   t6, $zero, 0x000C          ## t6 = 0000000C
	addiu   t7, $zero, 0x009B          ## t7 = 0000009B
	sh      t8, 0x0DEA(t9)             ## 00000DF3
	sh      $zero, -0x35D2($at)        ## 0001CA2E
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x35D4($at)        ## 0001CA2C
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x8000           ## $at = 00018000
	addu    v1, s0, $at                
	lh      a0, 0x4A2C(v1)             ## 00004A2C
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      a0, -0x35B0($at)           ## 0001CA50
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      a0, -0x35C8($at)           ## 0001CA38
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      a0, -0x35CA($at)           ## 0001CA36
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      a0, -0x35D6($at)           ## 0001CA2A
	lui     $at, 0x0002                ## $at = 00020000
	sh      t1, 0x4AA0(v1)             ## 00004AA0
	sh      $ra, 0x4AA2(v1)            ## 00004AA2
	addu    $at, $at, s0               
	sh      $zero, -0x35AA($at)        ## 0001CA56
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      a1, -0x35A8($at)           ## 0001CA58
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      a1, -0x3564($at)           ## 0001CA9C
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t6, -0x3562($at)           ## 0001CA9E
	addiu   t8, $zero, 0x0046          ## t8 = 00000046
	lui     $at, 0x0002                ## $at = 00020000
	sh      t7, 0x4A94(v1)             ## 00004A94
	sh      t3, 0x4A96(v1)             ## 00004A96
	sh      t3, 0x4A98(v1)             ## 00004A98
	sh      t8, 0x4A9A(v1)             ## 00004A9A
	addu    $at, $at, s0               
	sh      $zero, -0x35D0($at)        ## 0001CA30
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	swc1    $f4, -0x354C($at)          ## 0001CAB4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x355C($at)        ## 0001CAA4
	lh      t9, 0x4AA4(v1)             ## 00004AA4
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t9, -0x3558($at)           ## 0001CAA8
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x355A($at)        ## 0001CAA6
	lh      t6, 0x4AA6(v1)             ## 00004AA6
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t6, -0x3556($at)           ## 0001CAAA
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      $zero, -0x3542($at)        ## 0001CABE
	lh      a0, 0x4ABE(v1)             ## 00004ABE
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      a0, -0x353E($at)           ## 0001CAC2
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      a0, -0x3540($at)           ## 0001CAC0
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t7, $zero, 0x0063          ## t7 = 00000063
	sh      t7, -0x3548($at)           ## 0001CAB8
	addiu   t8, $zero, 0x0064          ## t8 = 00000064
	addiu   t9, $zero, 0x0096          ## t9 = 00000096
	lui     $at, 0x0002                ## $at = 00020000
	sh      t8, 0x4A5A(v1)             ## 00004A5A
	sh      t9, 0x4A5C(v1)             ## 00004A5C
	sh      t3, 0x4A5E(v1)             ## 00004A5E
	addu    $at, $at, s0               
	sh      $zero, -0x356E($at)        ## 0001CA92
	lh      v0, 0x4A92(v1)             ## 00004A92
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      v0, -0x3570($at)           ## 0001CA90
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      v0, -0x3572($at)           ## 0001CA8E
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      v0, -0x3574($at)           ## 0001CA8C
	sh      v0, 0x4A82(v1)             ## 00004A82
	sh      v0, 0x4A84(v1)             ## 00004A84
	sh      v0, 0x4A86(v1)             ## 00004A86
	sh      v0, 0x4A88(v1)             ## 00004A88
	sh      v0, 0x4A8A(v1)             ## 00004A8A
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      v0, 0x4A80(v1)             ## 00004A80
	sh      v0, 0x4A7E(v1)             ## 00004A7E
	sh      v0, 0x4A7C(v1)             ## 00004A7C
	sh      v0, 0x4A7A(v1)             ## 00004A7A
	sh      v0, 0x4A78(v1)             ## 00004A78
	sh      v0, 0x4A76(v1)             ## 00004A76
	sh      v0, 0x4A74(v1)             ## 00004A74
	sh      v0, 0x4A72(v1)             ## 00004A72
	sh      v0, 0x4A70(v1)             ## 00004A70
	sh      v0, 0x4A6E(v1)             ## 00004A6E
	sh      v0, 0x4A6C(v1)             ## 00004A6C
	sh      v0, 0x4A6A(v1)             ## 00004A6A
	sh      v0, 0x4A68(v1)             ## 00004A68
	sh      v0, 0x4A66(v1)             ## 00004A66
	sh      v0, 0x4A62(v1)             ## 00004A62
	sh      v0, 0x4A60(v1)             ## 00004A60
	sh      v0, -0x359C($at)           ## 0001CA64
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      t2, -0x354E($at)           ## 0001CAB2
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      a3, -0x35BE($at)           ## 0001CA42
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	addiu   t6, $zero, 0xFFFF          ## t6 = FFFFFFFF
	sh      t6, -0x35AE($at)           ## 0001CA52
	sh      $zero, 0x4A40(v1)          ## 00004A40
	lh      a1, 0x4A40(v1)             ## 00004A40
	lui     $at, 0x0002                ## $at = 00020000
	addu    $at, $at, s0               
	sh      a1, 0x4A3E(v1)             ## 00004A3E
	sh      a1, 0x4A3C(v1)             ## 00004A3C
	sh      a1, 0x4A4E(v1)             ## 00004A4E
	sh      a1, 0x4A4C(v1)             ## 00004A4C
	sh      a1, 0x4A4A(v1)             ## 00004A4A
	sh      a1, 0x4A48(v1)             ## 00004A48
	sh      a1, 0x4A46(v1)             ## 00004A46
	sh      a1, 0x4A44(v1)             ## 00004A44
	sh      a1, -0x35AC($at)           ## 0001CA54
	sh      $zero, 0x4AC6(v1)          ## 00004AC6
	sh      $ra, 0x4AC8(v1)            ## 00004AC8
	sh      t2, 0x4ACA(v1)             ## 00004ACA
	sh      a3, 0x4ACC(v1)             ## 00004ACC
	sh      t0, 0x4ACE(v1)             ## 00004ACE
	sw      v1, 0x0028($sp)            
	jal     func_80099620              
	or      a0, $zero, $zero           ## a0 = 00000000
	lui     a3, 0x8012                 ## a3 = 80120000
	addiu   a3, a3, 0xA5D0             ## a3 = 8011A5D0
	addiu   a1, s0, 0x01E0             ## a1 = 000001E0
	sh      $zero, 0x141A(a3)          ## 8011B9EA
	sh      $zero, 0x000C(a3)          ## 8011A5DC
	sw      a1, 0x0024($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80096E40              
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	lui     t0, 0x0001                 ## t0 = 00010000
	ori     t0, t0, 0xC8E0             ## t0 = 0001C8E0
	addiu   t7, $zero, 0x000A          ## t7 = 0000000A
	lui     $at, 0x800F                ## $at = 800F0000
	sh      t7, 0x1650($at)            ## 800F1650
	addu    v0, s0, t0                 
	mtc1    $zero, $f0                 ## $f0 = 0.00
	addiu   t1, $zero, 0x0063          ## t1 = 00000063
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	sb      $zero, 0x0019(v0)          ## 00000019
	sh      $zero, 0x001A(v0)          ## 0000001A
	sb      $zero, 0x0021(v0)          ## 00000021
	sh      $zero, 0x0022(v0)          ## 00000022
	sb      $zero, 0x0044(v0)          ## 00000044
	sb      t1, 0x0010(v0)             ## 00000010
	sb      t1, 0x0011(v0)             ## 00000011
	sb      $zero, 0x001F(v0)          ## 0000001F
	sb      $zero, 0x0020(v0)          ## 00000020
	sb      $zero, 0x00BD(v0)          ## 000000BD
	sb      t8, 0x0017(v0)             ## 00000017
	sb      $zero, 0x0015(v0)          ## 00000015
	sb      $zero, 0x0013(v0)          ## 00000013
	swc1    $f0, 0x0084(v0)            ## 00000084
	swc1    $f0, 0x0088(v0)            ## 00000088
	lw      a2, 0x0024($sp)            
	addu    a1, s0, t0                 
	jal     func_8005C9C8              
	addiu   a0, $zero, 0x0001          ## a0 = 00000001
	lui     a3, 0x8012                 ## a3 = 80120000
	addiu   a3, a3, 0xA5D0             ## a3 = 8011A5D0
	lw      v1, 0x0028($sp)            
	sb      $zero, 0x13E6(a3)          ## 8011B9B6
	sb      $zero, 0x13E5(a3)          ## 8011B9B5
	sb      $zero, 0x13E4(a3)          ## 8011B9B4
	sb      $zero, 0x13E3(a3)          ## 8011B9B3
	sb      $zero, 0x13E2(a3)          ## 8011B9B2
	andi    v0, $zero, 0x00FF          ## v0 = 00000000
	sb      v0, 0x4A27(v1)             ## 00004A27
	sb      v0, 0x4A26(v1)             ## 00004A26
	sh      v0, 0x4A24(v1)             ## 00004A24
	sh      v0, 0x4A22(v1)             ## 00004A22
	sh      v0, 0x4A20(v1)             ## 00004A20
	sb      $zero, 0x4A28(v1)          ## 00004A28
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0068           ## $sp = 00000000
	jr      $ra                        
	nop


func_80812388:
	sw      a0, 0x0000($sp)            
	jr      $ra                        
	nop


func_80812394:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	lui     t6, 0x8012                 ## t6 = 80120000
	lbu     t6, 0x1212(t6)             ## 80121212
	beq     t6, $zero, lbl_808123BC    
	nop
	jal     func_801C7268              
	nop
lbl_808123BC:
	lui     t8, 0x8012                 ## t8 = 80120000
	lw      t8, -0x4600(t8)            ## 8011BA00
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	lui     a3, 0x01A0                 ## a3 = 01A00000
	lui     t9, 0x01A4                 ## t9 = 01A40000
	addiu   t9, t9, 0xB5C0             ## t9 = 01A3B5C0
	addiu   a3, a3, 0x2000             ## a3 = 01A02000
	sh      t7, 0x0110(t8)             ## 80120110
	subu    a2, t9, a3                 
	addiu   a0, s0, 0x0074             ## a0 = 00000074
	sw      a0, 0x0028($sp)            
	or      a1, a2, $zero              ## a1 = 00000000
	sw      a2, 0x002C($sp)            
	jal     func_800A01B8              
	sw      a3, 0x0030($sp)            
	lw      a2, 0x002C($sp)            
	lw      a1, 0x0030($sp)            
	sw      v0, 0x00A8(s0)             ## 000000A8
	jal     func_80000DF0              
	or      a0, v0, $zero              ## a0 = 00000000
	lui     a3, 0x01A4                 ## a3 = 01A40000
	lui     t0, 0x01A4                 ## t0 = 01A40000
	addiu   t0, t0, 0xFB00             ## t0 = 01A3FB00
	addiu   a3, a3, 0xC000             ## a3 = 01A3C000
	subu    a2, t0, a3                 
	or      a1, a2, $zero              ## a1 = 00000000
	sw      a2, 0x002C($sp)            
	sw      a3, 0x0030($sp)            
	jal     func_800A01B8              
	lw      a0, 0x0028($sp)            
	lw      a2, 0x002C($sp)            
	lw      a1, 0x0030($sp)            
	sw      v0, 0x00AC(s0)             ## 000000AC
	jal     func_80000DF0              
	or      a0, v0, $zero              ## a0 = 00000000
	jal     func_800AA6B0              
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a0, s0, 0x00B0             ## a0 = 000000B0
	jal     func_80091858              
	lw      a1, 0x0000(s0)             ## 00000000
	lui     t1, %hi(func_80811760)     ## t1 = 80810000
	lui     t2, %hi(func_80812388)     ## t2 = 80810000
	addiu   t1, t1, %lo(func_80811760) ## t1 = 80811760
	addiu   t2, t2, %lo(func_80812388) ## t2 = 80812388
	sw      t1, 0x0004(s0)             ## 00000004
	sw      t2, 0x0008(s0)             ## 00000008
	jal     func_80811D5C              
	or      a0, s0, $zero              ## a0 = 00000000
	ori     $at, $zero, 0xE758         ## $at = 0000E758
	jal     func_8005BD78              
	addu    a0, s0, $at                
	lui     a0, 0xF000                 ## a0 = F0000000
	jal     func_800CAA70              
	ori     a0, a0, 0x000A             ## a0 = F000000A
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	sw      t3, 0x0010($sp)            
	or      a0, $zero, $zero           ## a0 = 00000000
	addiu   a1, $zero, 0x0057          ## a1 = 00000057
	or      a2, $zero, $zero           ## a2 = 00000000
	jal     func_800C6B54              
	addiu   a3, $zero, 0x0007          ## a3 = 00000007
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop
	nop

.section .data

var_808124D0: .word \
0xFFA20048, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0xFFDA0048, 0x00000000, 0x07000000, 0xFFFFFFFF, \
0xFFA20038, 0x00000000, 0x00000200, 0xFFFFFFFF, \
0xFFDA0038, 0x00000000, 0x07000200, 0xFFFFFFFF, \
0xFFA0FFD0, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0xFFCCFFD0, 0x00000000, 0x05800000, 0xFFFFFFFF, \
0xFFA0FFC0, 0x00000000, 0x00000200, 0xFFFFFFFF, \
0xFFCCFFC0, 0x00000000, 0x05800200, 0xFFFFFFFF, \
0xFFD0FFD0, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0xFFFCFFD0, 0x00000000, 0x05800000, 0xFFFFFFFF, \
0xFFD0FFC0, 0x00000000, 0x00000200, 0xFFFFFFFF, \
0xFFFCFFC0, 0x00000000, 0x05800200, 0xFFFFFFFF, \
0x0000FFD0, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0x001CFFD0, 0x00000000, 0x03800000, 0xFFFFFFFF, \
0x0000FFC0, 0x00000000, 0x00000200, 0xFFFFFFFF, \
0x001CFFC0, 0x00000000, 0x03800200, 0xFFFFFFFF, \
0x0020FFD0, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0x003CFFD0, 0x00000000, 0x03800000, 0xFFFFFFFF, \
0x0020FFC0, 0x00000000, 0x00000200, 0xFFFFFFFF, \
0x003CFFC0, 0x00000000, 0x03800200, 0xFFFFFFFF, \
0x0040FFD0, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0x006CFFD0, 0x00000000, 0x05800000, 0xFFFFFFFF, \
0x0040FFC0, 0x00000000, 0x00000200, 0xFFFFFFFF, \
0x006CFFC0, 0x00000000, 0x05800200, 0xFFFFFFFF
var_80812650: .word \
0x000A000F, 0x00140019, 0x001E0023, 0x0028002D, \
0x00300035, 0x0038003E, 0x003D000B, 0x00100015, \
0x001A001F, 0x00240029, 0x00DF0031, 0x00DF0039, \
0x00DF00DF, 0x000C0011, 0x0016001B, 0x00200025, \
0x002A002E, 0x00320036, 0x003A003F, 0x00E4000D, \
0x00120017, 0x001C0021, 0x0026002B, 0x00DF0033, \
0x00DF003B, 0x00DF00E7, 0x000E0013, 0x0018001D, \
0x00220027, 0x002C002F, 0x00340037, 0x003C0040, \
0x00E80000
var_808126D4: .word \
0x005A005F, 0x00640069, 0x006E0073, 0x0078007D, \
0x00800085, 0x0088008E, 0x008D005B, 0x00600065, \
0x006A006F, 0x00740079, 0x00DF0081, 0x00DF0089, \
0x00DF00DF, 0x005C0061, 0x0066006B, 0x00700075, \
0x007A007E, 0x00820086, 0x008A008F, 0x00E4005D, \
0x00620067, 0x006C0071, 0x0076007B, 0x00DF0083, \
0x00DF008B, 0x00DF00E7, 0x005E0063, 0x0068006D, \
0x00720077, 0x007C007F, 0x00840087, 0x008C0090, \
0x00E80000
var_80812758: .word \
0x00AB00AC, 0x00AD00AE, 0x00AF00B0, 0x00B100B2, \
0x00B300B4, 0x00B500B6, 0x00B700B8, 0x00B900BA, \
0x00BB00BC, 0x00BD00BE, 0x00BF00C0, 0x00C100C2, \
0x00C300C4, 0x00C500C6, 0x00C700C8, 0x00C900CA, \
0x00CB00CC, 0x00CD00CE, 0x00CF00D0, 0x00D100D2, \
0x00D300D4, 0x00D500D6, 0x00D700D8, 0x00D900DA, \
0x00DB00DC, 0x00DD00DE, 0x00010002, 0x00030004, \
0x00050006, 0x00070008, 0x00090000, 0x00EA00E4, \
0x00DF0000
var_808127DC: .word \
0x00000001, 0x00020001, 0x00000002, 0x00000002, \
0x00010000
var_808127F0: .word \
0xFFA20048, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0x00220048, 0x00000000, 0x10000000, 0xFFFFFFFF, \
0xFFA20038, 0x00000000, 0x00000200, 0xFFFFFFFF, \
0x00220038, 0x00000000, 0x10000200, 0xFFFFFFFF, \
0xFF9C002C, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0xFFDC002C, 0x00000000, 0x08000000, 0xFFFFFFFF, \
0xFF9C001C, 0x00000000, 0x00000200, 0xFFFFFFFF, \
0xFFDC001C, 0x00000000, 0x08000200, 0xFFFFFFFF, \
0xFF9C0004, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0xFFDC0004, 0x00000000, 0x08000000, 0xFFFFFFFF, \
0xFF9CFFF4, 0x00000000, 0x00000200, 0xFFFFFFFF, \
0xFFDCFFF4, 0x00000000, 0x08000200, 0xFFFFFFFF, \
0xFF9CFFDC, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0xFFFCFFDC, 0x00000000, 0x0C000000, 0xFFFFFFFF, \
0xFF9CFFCC, 0x00000000, 0x00000200, 0xFFFFFFFF, \
0xFFFCFFCC, 0x00000000, 0x0C000200, 0xFFFFFFFF
var_808128F0: .word \
0xFF9C001A, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0xFFCC001A, 0x00000000, 0x06000000, 0xFFFFFFFF, \
0xFF9C000A, 0x00000000, 0x00000200, 0xFFFFFFFF, \
0xFFCC000A, 0x00000000, 0x06000200, 0xFFFFFFFF, \
0xFFD0001A, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0x0000001A, 0x00000000, 0x06000000, 0xFFFFFFFF, \
0xFFD0000A, 0x00000000, 0x00000200, 0xFFFFFFFF, \
0x0000000A, 0x00000000, 0x06000200, 0xFFFFFFFF, \
0x0004001A, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0x0034001A, 0x00000000, 0x06000000, 0xFFFFFFFF, \
0x0004000A, 0x00000000, 0x00000200, 0xFFFFFFFF, \
0x0034000A, 0x00000000, 0x06000200, 0xFFFFFFFF, \
0x0038001A, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0x0068001A, 0x00000000, 0x06000000, 0xFFFFFFFF, \
0x0038000A, 0x00000000, 0x00000200, 0xFFFFFFFF, \
0x0068000A, 0x00000000, 0x06000200, 0xFFFFFFFF, \
0xFF9CFFF2, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0xFFCCFFF2, 0x00000000, 0x06000000, 0xFFFFFFFF, \
0xFF9CFFE2, 0x00000000, 0x00000200, 0xFFFFFFFF, \
0xFFCCFFE2, 0x00000000, 0x06000200, 0xFFFFFFFF, \
0xFFD0FFF2, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0x0000FFF2, 0x00000000, 0x06000000, 0xFFFFFFFF, \
0xFFD0FFE2, 0x00000000, 0x00000200, 0xFFFFFFFF, \
0x0000FFE2, 0x00000000, 0x06000200, 0xFFFFFFFF, \
0xFF9CFFCA, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0xFFFCFFCA, 0x00000000, 0x0C000000, 0xFFFFFFFF, \
0xFF9CFFBA, 0x00000000, 0x00000200, 0xFFFFFFFF, \
0xFFFCFFBA, 0x00000000, 0x0C000200, 0xFFFFFFFF, \
0xFFFCFFCA, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0x005CFFCA, 0x00000000, 0x0C000000, 0xFFFFFFFF, \
0xFFFCFFBA, 0x00000000, 0x00000200, 0xFFFFFFFF, \
0x005CFFBA, 0x00000000, 0x0C000200, 0xFFFFFFFF
var_80812AF0: .word \
0xFF9C001C, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0x009C001C, 0x00000000, 0x20000000, 0xFFFFFFFF, \
0xFF9C001A, 0x00000000, 0x00000040, 0xFFFFFFFF, \
0x009C001A, 0x00000000, 0x20000040, 0xFFFFFFFF
var_80812B30: .word \
0xFF9CFFF4, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0x009CFFF4, 0x00000000, 0x20000000, 0xFFFFFFFF, \
0xFF9CFFF2, 0x00000000, 0x00000040, 0xFFFFFFFF, \
0x009CFFF2, 0x00000000, 0x20000040, 0xFFFFFFFF
var_80812B70: .word \
0xFF9CFFCC, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0x009CFFCC, 0x00000000, 0x20000000, 0xFFFFFFFF, \
0xFF9CFFCA, 0x00000000, 0x00000040, 0xFFFFFFFF, \
0x009CFFCA, 0x00000000, 0x20000040, 0xFFFFFFFF
var_80812BB0: .word 0xFFD0FFD0, 0xFFD0FFE8, 0xFFE80000
var_80812BBC: .word \
0x0000FFD0, 0xFFD0FFC0, 0x0010FFD0, 0xFFC0FFC0, \
0x00200000
var_80812BD0: .word 0x000F0000
var_80812BD4: .word 0xFFC8FFD8, 0xFFE80000
var_80812BDC: .word \
0x00000010, 0x00200000, 0x00000000, 0x00000000, \
0x00000000
var_80812BF0: .word 0x01007F80, 0x01032700
var_80812BF8: .word \
0x01020B80, 0x01021100, 0x01020800, 0x01021C00, \
0x01021680
var_80812C0C: .word 0x002C002C, 0x001C001C, 0x002C0000
var_80812C18: .word \
0xFFE2FFF0, 0xFFFA0004, 0x000E0018, 0x0022002C, \
0x0036FFF0, 0xFFF00000
var_80812C30: .word \
0x00480045, 0x00450045, 0x00450045, 0x00450045, \
0x00450045, 0x00450000
var_80812C48: .word \
0x000F0023, 0x00410050, 0x0055005F, 0x00730091, \
0x00A000A5, 0x005C00AA
var_80812C60: .word \
0x001D0027, 0x004F0054, 0x0059006D, 0x0077009F, \
0x00A400A9, 0x005C00AA
var_80812C78: .word \
0x0032002D, 0xFFCE0005, 0xFFCE0032, 0x002DFFCE, \
0x0005FFCE, 0x004EFFB2
var_80812C90: .word 0x000F0023, 0x0055005F, 0x007300A5, 0x005C00AA
var_80812CA0: .word 0x001D0027, 0x0059006D, 0x007700A9, 0x005C00AA
var_80812CB0: .word 0x0032002D, 0xFFFB0032, 0x002DFFFB, 0x004EFFB2
var_80812CC0: .word 0x00230050, 0x007300A0
var_80812CC8: .word 0x00270054, 0x007700A4
var_80812CD0: .word 0x00320005, 0x00320005
var_80812CD8: .word \
0x01007780, 0x01031F00, 0x00800010, 0x01008C00, \
0x01008C00, 0x00400010, 0x01009300, 0x01033680, \
0x00400010, 0x0100A600, 0x01034980, 0x00600010
var_80812D08: .word \
0x01009000, 0x01033380, 0x00300010, 0x01008900, \
0x01033080, 0x00300010, 0x01008600, 0x01032D80, \
0x00300010, 0x01008300, 0x01032A80, 0x00300010, \
0x01009700, 0x01033A80, 0x00300010, 0x01009A00, \
0x01033D80, 0x00300010
var_80812D50: .word 0x00FF0000
var_80812D54: .word 0x00FF0000
var_80812D58: .word 0x00FF0000
var_80812D5C: .word 0x00000000
var_80812D60: .word 0x00000000
var_80812D64: .word 0x00000000
var_80812D68: .word 0x00010000
var_80812D6C: .word 0x00140000
var_80812D70: .word 0x00FF00FF, 0x00FF0000, 0x00FF00FF
var_80812D7C: .word \
0x00000000, 0x00000000, 0x00960096, 0x00000000, \
0x00000000, 0x006A0000
var_80812D94: .word 0x00FF0000
var_80812D98: .word \
0xE7000000, 0x00000000, 0xD9C0F9FA, 0x00000000, \
0xEF802C30, 0x00504340, 0xFCFFFFFF, 0xFFFDF6FB, \
0xDF000000, 0x00000000
var_80812DC0: .word 0x00240024, 0x00240024, 0x00180000
var_80812DCC: .word 0x00640096, 0x00FF0064, 0x00640064
var_80812DD8: .word 0xDFDFDFDF, 0xDFDFDFDF
var_80812DE0: .word func_8080C170
.word func_8080C1F8
.word func_8080C290
.word func_80803880
.word func_80803A18
.word func_80803D88
.word func_80803F18
.word func_80803FE0
.word func_80804398
.word func_80804464
.word func_80804590
.word func_808047B4
.word func_80804810
.word func_80804A18
.word func_80804C4C
.word func_80804CC8
.word func_80804E18
.word func_80804F34
.word func_80805024
.word func_80805324
.word func_80805460
.word func_80805630
.word func_808059BC
.word func_80805C84
.word func_80805D60
.word func_80805F48
.word func_80805FF8
.word func_80806214
.word func_808063F4
.word func_808064B8
.word func_80806724
.word func_8080CB6C
.word func_8080CBCC
.word func_80809C18
.word func_80809B64
.word func_8080CCB4
.word func_8080CC40
.word func_8080A688
.word func_8080A5F8
.word func_8080CCB4
.word func_8080CB78
var_80812E84: .word 0x004600C8
var_80812E88: .word 0x001A000A, 0x000A000A
var_80812E90: .word 0x0020000C, 0x000C000C
var_80812E98: .word 0x0010000C, 0x000C000C
var_80812EA0: .word 0x00400054, 0x00680274, 0x0278027C
var_80812EAC: .word 0x00400054, 0x00680278
var_80812EB4: .word 0x02740278
var_80812EB8: .word 0x02740278
var_80812EBC: .word 0x007C0124, 0x01CC0000
var_80812EC4: .word \
0x0102A300, 0x0102A700, 0x0102AB00, 0x01002980, \
0x01002A80, 0x01002B80, 0x01002C80, 0x01002D80, \
0x01002E80
var_80812EE8: .word \
0x00FF00FF, 0x00FF0000, 0x00FF0000, 0x00FF00C8, \
0x00C80000
var_80812EFC: .word \
0x00FF00FF, 0x00FF00FF, 0x003C0064, 0x00820032, \
0x00C80000
var_80812F10: .word \
0x00FF00FF, 0x00FF0000, 0x000000FF, 0x000000FF, \
0x00000000
var_80812F24: .word \
0x00120013, 0x00140000, 0x00010002, 0x00030004, \
0x00050000, 0x01029000, 0x01038F80
var_80812F40: .word 0x00FF00FF, 0x00FF0064, 0x00640064
var_80812F4C: .word 0x02000400, 0x02000900
var_80812F54: .word 0x00FF0046, 0x003200C8, 0x00000000
var_80812F60: .word 0x00320028, 0x003C00FF, 0x00FF00FF
var_80812F6C: .word \
0x01022D00, 0x01023CC0, 0x01024C80, 0x01025C40, \
0x01026C00
var_80812F80: .word \
0x01004F80, 0x01005780, 0x01002F80, 0x01003780, \
0x01003F80, 0x01004780, 0x01005F80, 0x01006780, \
0x01006F80, 0x0102F700, 0x0102FF00, 0x0102D700, \
0x0102DF00, 0x0102E700, 0x0102EF00, 0x01030700, \
0x01030F00, 0x01031700
var_80812FC8: .word \
0x01000000, 0x01000800, 0x01001000, 0x01001800, \
0x01002000, 0x0102AF00, 0x0102B700, 0x0102BF00, \
0x0102C700, 0x0102CF00
var_80812FF0: .word \
0x0101E000, 0x0101E800, 0x0101F000, 0x01035780, \
0x01035F80, 0x01036780
var_80813008: .word \
0x0101D800, 0x01020000, 0x0101F800, 0x01027E80, \
0x01034F80, 0x01037780, 0x01036F80, 0x01038780
var_80813028: .word 0x01027680, 0x01037F80
var_80813030: .word 0x00000010, 0x00200000
var_80813038: .word func_808108B0
.word func_80810A1C
.word func_80810B20
.word func_80810C04
.word func_80810DD8
.word func_80810EC8
.word func_80811120
.word func_8081117C
var_80813058: .word func_8080BF88
.word func_8081004C
.word func_808113AC
var_80813064: .word func_8080BF30
.word func_8080CE28
.word func_80811370
var_80813070: .word 0x01009D00, 0x01034080, 0x00000000, 0x00000000

.section .rodata

var_80813080: .word 0x3DCCCCCD
var_80813084: .word 0x3E4CCCCD
var_80813088: .word 0x3ECCCCCD, 0x00000000
var_80813090: .word 0x3F47AE14
var_80813094: .word 0x3F47AE14
var_80813098: .word 0x3F47AE14
var_8081309C: .word 0x3F47AE14
var_808130A0: .word 0x3F47AE14, 0x00000000, 0x00000000, 0x00000000

.bss

var_808137A0: .space 0x10
var_808137B0: .space 0x10
