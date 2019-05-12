#include <mips.h>
.set noreorder
.set noat

.section .text
func_80AA8BC0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	addiu   a0, a1, 0x20D8             ## a0 = 000020D8
	jal     func_800DD464              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	sll     a0, v0, 16                 
	sra     a0, a0, 16                 
	lbu     v1, 0x01F9(a2)             ## 000001F9
	or      a1, v0, $zero              ## a1 = 00000000
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
	beq     v1, $at, lbl_80AA8C10      
	or      v0, a0, $zero              ## v0 = 00000000
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	beq     v1, $at, lbl_80AA8C10      
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     v1, $at, lbl_80AA8C10      
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bne     v1, $at, lbl_80AA8C2C      
lbl_80AA8C10:
	sll     t6, a1, 16                 
	sra     t7, t6, 16                 
	beql    t7, v1, lbl_80AA8C30       
	sb      a0, 0x01F9(a2)             ## 000001F9
	lbu     t8, 0x01F8(a2)             ## 000001F8
	addiu   t9, t8, 0x0001             ## t9 = 00000001
	sb      t9, 0x01F8(a2)             ## 000001F8
lbl_80AA8C2C:
	sb      a0, 0x01F9(a2)             ## 000001F9
lbl_80AA8C30:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AA8C40:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a1, $zero              ## a2 = 00000000
	addiu   a1, $zero, 0x0010          ## a1 = 00000010
	jal     func_800597C0              
	sw      a2, 0x001C($sp)            
	lw      a2, 0x001C($sp)            
	beq     v0, $zero, lbl_80AA8C6C    
	andi    v1, v0, 0xFFFF             ## v1 = 00000000
	beq     $zero, $zero, lbl_80AA8D44 
	or      v0, v1, $zero              ## v0 = 00000000
lbl_80AA8C6C:
	lui     v0, 0x8012                 ## v0 = 80120000
	lui     a0, 0x8010                 ## a0 = 80100000
	addiu   a0, a0, 0x8BF0             ## a0 = 800F8BF0
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	lw      v1, 0x00A4(v0)             ## 8011A674
	lw      t6, 0x0038(a0)             ## 800F8C28
	and     t7, t6, v1                 
	beql    t7, $zero, lbl_80AA8C9C    
	lw      t8, 0x0048(a0)             ## 800F8C38
	beq     $zero, $zero, lbl_80AA8D44 
	addiu   v0, $zero, 0x10AD          ## v0 = 000010AD
	lw      t8, 0x0048(a0)             ## 800F8C38
lbl_80AA8C9C:
	and     t9, t8, v1                 
	beql    t9, $zero, lbl_80AA8CD4    
	lhu     t2, 0x0ED4(v0)             ## 00001F81
	sb      $zero, 0x01F8(a2)          ## 000001F8
	sb      $zero, 0x01F9(a2)          ## 000001F9
	lhu     t0, 0x0EF8(v0)             ## 00001FA5
	andi    t1, t0, 0x0020             ## t1 = 00000000
	beq     t1, $zero, lbl_80AA8CC8    
	nop
	beq     $zero, $zero, lbl_80AA8D44 
	addiu   v0, $zero, 0x1048          ## v0 = 00001048
lbl_80AA8CC8:
	beq     $zero, $zero, lbl_80AA8D44 
	addiu   v0, $zero, 0x1047          ## v0 = 00001047
	lhu     t2, 0x0ED4(v0)             ## 00001F1B
lbl_80AA8CD4:
	andi    t3, t2, 0x0004             ## t3 = 00000000
	beql    t3, $zero, lbl_80AA8D0C    
	lhu     t6, 0x0EF8(v0)             ## 00001F3F
	sb      $zero, 0x01F8(a2)          ## 000001F8
	sb      $zero, 0x01F9(a2)          ## 000001F9
	lhu     t4, 0x0EF8(v0)             ## 00001F3F
	andi    t5, t4, 0x0008             ## t5 = 00000000
	beq     t5, $zero, lbl_80AA8D00    
	nop
	beq     $zero, $zero, lbl_80AA8D44 
	addiu   v0, $zero, 0x1032          ## v0 = 00001032
lbl_80AA8D00:
	beq     $zero, $zero, lbl_80AA8D44 
	addiu   v0, $zero, 0x1031          ## v0 = 00001031
	lhu     t6, 0x0EF8(v0)             ## 00001F29
lbl_80AA8D0C:
	andi    t7, t6, 0x0001             ## t7 = 00000000
	beql    t7, $zero, lbl_80AA8D44    
	addiu   v0, $zero, 0x1001          ## v0 = 00001001
	sb      $zero, 0x01F8(a2)          ## 000001F8
	sb      $zero, 0x01F9(a2)          ## 000001F9
	lhu     t8, 0x0EF8(v0)             ## 00001EF9
	andi    t9, t8, 0x0002             ## t9 = 00000000
	beq     t9, $zero, lbl_80AA8D38    
	nop
	beq     $zero, $zero, lbl_80AA8D44 
	addiu   v0, $zero, 0x1003          ## v0 = 00001003
lbl_80AA8D38:
	beq     $zero, $zero, lbl_80AA8D44 
	addiu   v0, $zero, 0x1002          ## v0 = 00001002
	addiu   v0, $zero, 0x1001          ## v0 = 00001001
lbl_80AA8D44:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AA8D54:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      a1, 0x0024($sp)            
	or      a1, a0, $zero              ## a1 = 00000000
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0020($sp)            
	addiu   v1, $zero, 0x0001          ## v1 = 00000001
	sh      v1, 0x001E($sp)            
	jal     func_80AA8BC0              
	lw      a0, 0x0024($sp)            
	sltiu   $at, v0, 0x000A            
	beq     $at, $zero, lbl_80AA8E24   
	lh      v1, 0x001E($sp)            
	sll     t6, v0,  2                 
	lui     $at, %hi(var_80AAAB00)     ## $at = 80AB0000
	addu    $at, $at, t6               
	lw      t6, %lo(var_80AAAB00)($at) 
	jr      t6                         
	nop
var_80AA8D9C:
	lw      t7, 0x0024($sp)            
	addiu   $at, $zero, 0x1002         ## $at = 00001002
	lhu     v0, 0x010E(t7)             ## 0000010E
	beq     v0, $at, lbl_80AA8DC8      
	addiu   $at, $zero, 0x1031         ## $at = 00001031
	beq     v0, $at, lbl_80AA8DE4      
	addiu   $at, $zero, 0x1047         ## $at = 00001047
	beq     v0, $at, lbl_80AA8E0C      
	nop
	beq     $zero, $zero, lbl_80AA8E24 
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_80AA8DC8:
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	lhu     t8, 0x0EF8(v0)             ## 8011B4C8
	or      v1, $zero, $zero           ## v1 = 00000000
	ori     t9, t8, 0x0002             ## t9 = 00000002
	beq     $zero, $zero, lbl_80AA8E24 
	sh      t9, 0x0EF8(v0)             ## 8011B4C8
lbl_80AA8DE4:
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	lhu     t0, 0x0ED4(v0)             ## 8011B4A4
	lhu     t2, 0x0EF8(v0)             ## 8011B4C8
	or      v1, $zero, $zero           ## v1 = 00000000
	ori     t1, t0, 0x0008             ## t1 = 00000008
	ori     t3, t2, 0x0008             ## t3 = 00000008
	sh      t1, 0x0ED4(v0)             ## 8011B4A4
	beq     $zero, $zero, lbl_80AA8E24 
	sh      t3, 0x0EF8(v0)             ## 8011B4C8
lbl_80AA8E0C:
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	lhu     t4, 0x0EF8(v0)             ## 8011B4C8
	or      v1, $zero, $zero           ## v1 = 00000000
	ori     t5, t4, 0x0020             ## t5 = 00000020
	sh      t5, 0x0EF8(v0)             ## 8011B4C8
lbl_80AA8E24:
	or      v0, v1, $zero              ## v0 = 00000000
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AA8E38:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	lw      t6, 0x002C($sp)            
	addiu   $at, $zero, 0x0056         ## $at = 00000056
	lh      t7, 0x00A4(t6)             ## 000000A4
	bnel    t7, $at, lbl_80AA8EA0      
	lh      t1, 0x01C4(s0)             ## 000001C4
	lh      t8, 0x008A(s0)             ## 0000008A
	lh      t9, 0x00B6(s0)             ## 000000B6
	subu    v0, t8, t9                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	bltz    v0, lbl_80AA8E84           
	subu    v1, $zero, v0              
	beq     $zero, $zero, lbl_80AA8E84 
	or      v1, v0, $zero              ## v1 = 00000000
lbl_80AA8E84:
	slti    $at, v1, 0x1555            
	bnel    $at, $zero, lbl_80AA8EA0   
	lh      t1, 0x01C4(s0)             ## 000001C4
	lh      t0, 0x01D0(s0)             ## 000001D0
	beql    t0, $zero, lbl_80AA8EE8    
	lw      $ra, 0x0024($sp)           
	lh      t1, 0x01C4(s0)             ## 000001C4
lbl_80AA8EA0:
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f8                   ## $f8 = 30.00
	mtc1    t1, $f4                    ## $f4 = 0.00
	lui     t2, %hi(func_80AA8C40)     ## t2 = 80AB0000
	lui     t3, %hi(func_80AA8D54)     ## t3 = 80AB0000
	cvt.s.w $f6, $f4                   
	addiu   t3, t3, %lo(func_80AA8D54) ## t3 = 80AA8D54
	addiu   t2, t2, %lo(func_80AA8C40) ## t2 = 80AA8C40
	sw      t2, 0x0010($sp)            
	sw      t3, 0x0014($sp)            
	lw      a0, 0x002C($sp)            
	add.s   $f10, $f6, $f8             
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a2, s0, 0x01D0             ## a2 = 000001D0
	mfc1    a3, $f10                   
	jal     func_800271FC              
	nop
	lw      $ra, 0x0024($sp)           
lbl_80AA8EE8:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AA8EF8:
	lwc1    $f2, 0x014C(a0)            ## 0000014C
	lui     $at, 0xBF80                ## $at = BF800000
	lwc1    $f0, 0x0148(a0)            ## 00000148
	mtc1    $at, $f4                   ## $f4 = -1.00
	swc1    $f2, 0x0148(a0)            ## 00000148
	swc1    $f2, 0x0154(a0)            ## 00000154
	swc1    $f0, 0x014C(a0)            ## 0000014C
	swc1    $f4, 0x0158(a0)            ## 00000158
	jr      $ra                        
	nop


func_80AA8F20:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lbu     v0, 0x01FA(s0)             ## 000001FA
	lui     a1, %hi(var_80AAA9C8)      ## a1 = 80AB0000
	addiu   a1, a1, %lo(var_80AAA9C8)  ## a1 = 80AAA9C8
	beq     v0, $zero, lbl_80AA8F58    
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beql    v0, $at, lbl_80AA8F70      
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beq     $zero, $zero, lbl_80AA8FA4 
	lw      $ra, 0x001C($sp)           
lbl_80AA8F58:
	jal     func_80027C98              
	addiu   a2, $zero, 0x0003          ## a2 = 00000003
	lbu     t6, 0x01FA(s0)             ## 000001FA
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	sb      t7, 0x01FA(s0)             ## 000001FA
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
lbl_80AA8F70:
	lw      a1, 0x014C(s0)             ## 0000014C
	jal     func_8008D6A8              
	sw      a0, 0x0020($sp)            
	beq     v0, $zero, lbl_80AA8FA0    
	lw      a0, 0x0020($sp)            
	lui     a1, %hi(var_80AAA9C8)      ## a1 = 80AB0000
	addiu   a1, a1, %lo(var_80AAA9C8)  ## a1 = 80AAA9C8
	jal     func_80027C98              
	addiu   a2, $zero, 0x0002          ## a2 = 00000002
	lbu     t8, 0x01FA(s0)             ## 000001FA
	addiu   t9, t8, 0x0001             ## t9 = 00000001
	sb      t9, 0x01FA(s0)             ## 000001FA
lbl_80AA8FA0:
	lw      $ra, 0x001C($sp)           
lbl_80AA8FA4:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AA8FB4:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lbu     v0, 0x01FA(s0)             ## 000001FA
	lui     a1, %hi(var_80AAA9C8)      ## a1 = 80AB0000
	addiu   a1, a1, %lo(var_80AAA9C8)  ## a1 = 80AAA9C8
	beq     v0, $zero, lbl_80AA8FEC    
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beql    v0, $at, lbl_80AA9004      
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beq     $zero, $zero, lbl_80AA9038 
	lw      $ra, 0x001C($sp)           
lbl_80AA8FEC:
	jal     func_80027C98              
	addiu   a2, $zero, 0x0008          ## a2 = 00000008
	lbu     t6, 0x01FA(s0)             ## 000001FA
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	sb      t7, 0x01FA(s0)             ## 000001FA
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
lbl_80AA9004:
	lw      a1, 0x014C(s0)             ## 0000014C
	jal     func_8008D6A8              
	sw      a0, 0x0020($sp)            
	beq     v0, $zero, lbl_80AA9034    
	lw      a0, 0x0020($sp)            
	lui     a1, %hi(var_80AAA9C8)      ## a1 = 80AB0000
	addiu   a1, a1, %lo(var_80AAA9C8)  ## a1 = 80AAA9C8
	jal     func_80027C98              
	addiu   a2, $zero, 0x0009          ## a2 = 00000009
	lbu     t8, 0x01FA(s0)             ## 000001FA
	addiu   t9, t8, 0x0001             ## t9 = 00000001
	sb      t9, 0x01FA(s0)             ## 000001FA
lbl_80AA9034:
	lw      $ra, 0x001C($sp)           
lbl_80AA9038:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AA9048:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lbu     v0, 0x01FA(s0)             ## 000001FA
	lui     a1, %hi(var_80AAA9C8)      ## a1 = 80AB0000
	addiu   a1, a1, %lo(var_80AAA9C8)  ## a1 = 80AAA9C8
	beq     v0, $zero, lbl_80AA9080    
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beql    v0, $at, lbl_80AA9098      
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beq     $zero, $zero, lbl_80AA90CC 
	lw      $ra, 0x001C($sp)           
lbl_80AA9080:
	jal     func_80027C98              
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	lbu     t6, 0x01FA(s0)             ## 000001FA
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	sb      t7, 0x01FA(s0)             ## 000001FA
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
lbl_80AA9098:
	lw      a1, 0x014C(s0)             ## 0000014C
	jal     func_8008D6A8              
	sw      a0, 0x0020($sp)            
	beq     v0, $zero, lbl_80AA90C8    
	lw      a0, 0x0020($sp)            
	lui     a1, %hi(var_80AAA9C8)      ## a1 = 80AB0000
	addiu   a1, a1, %lo(var_80AAA9C8)  ## a1 = 80AAA9C8
	jal     func_80027C98              
	addiu   a2, $zero, 0x0007          ## a2 = 00000007
	lbu     t8, 0x01FA(s0)             ## 000001FA
	addiu   t9, t8, 0x0001             ## t9 = 00000001
	sb      t9, 0x01FA(s0)             ## 000001FA
lbl_80AA90C8:
	lw      $ra, 0x001C($sp)           
lbl_80AA90CC:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AA90DC:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lbu     v0, 0x01FA(s0)             ## 000001FA
	lui     a1, %hi(var_80AAA9C8)      ## a1 = 80AB0000
	addiu   a1, a1, %lo(var_80AAA9C8)  ## a1 = 80AAA9C8
	beq     v0, $zero, lbl_80AA9114    
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beql    v0, $at, lbl_80AA9134      
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beq     $zero, $zero, lbl_80AA9168 
	lw      $ra, 0x001C($sp)           
lbl_80AA9114:
	jal     func_80027C98              
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	jal     func_80AA8EF8              
	or      a0, s0, $zero              ## a0 = 00000000
	lbu     t6, 0x01FA(s0)             ## 000001FA
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	sb      t7, 0x01FA(s0)             ## 000001FA
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
lbl_80AA9134:
	lw      a1, 0x014C(s0)             ## 0000014C
	jal     func_8008D6A8              
	sw      a0, 0x0020($sp)            
	beq     v0, $zero, lbl_80AA9164    
	lw      a0, 0x0020($sp)            
	lui     a1, %hi(var_80AAA9C8)      ## a1 = 80AB0000
	addiu   a1, a1, %lo(var_80AAA9C8)  ## a1 = 80AAA9C8
	jal     func_80027C98              
	addiu   a2, $zero, 0x0009          ## a2 = 00000009
	lbu     t8, 0x01FA(s0)             ## 000001FA
	addiu   t9, t8, 0x0001             ## t9 = 00000001
	sb      t9, 0x01FA(s0)             ## 000001FA
lbl_80AA9164:
	lw      $ra, 0x001C($sp)           
lbl_80AA9168:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AA9178:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lbu     v0, 0x01FA(s0)             ## 000001FA
	lui     a1, %hi(var_80AAA9C8)      ## a1 = 80AB0000
	addiu   a1, a1, %lo(var_80AAA9C8)  ## a1 = 80AAA9C8
	beq     v0, $zero, lbl_80AA91B0    
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beql    v0, $at, lbl_80AA91C8      
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beq     $zero, $zero, lbl_80AA91FC 
	lw      $ra, 0x001C($sp)           
lbl_80AA91B0:
	jal     func_80027C98              
	addiu   a2, $zero, 0x0006          ## a2 = 00000006
	lbu     t6, 0x01FA(s0)             ## 000001FA
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	sb      t7, 0x01FA(s0)             ## 000001FA
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
lbl_80AA91C8:
	lw      a1, 0x014C(s0)             ## 0000014C
	jal     func_8008D6A8              
	sw      a0, 0x0020($sp)            
	beq     v0, $zero, lbl_80AA91F8    
	lw      a0, 0x0020($sp)            
	lui     a1, %hi(var_80AAA9C8)      ## a1 = 80AB0000
	addiu   a1, a1, %lo(var_80AAA9C8)  ## a1 = 80AAA9C8
	jal     func_80027C98              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	lbu     t8, 0x01FA(s0)             ## 000001FA
	addiu   t9, t8, 0x0001             ## t9 = 00000001
	sb      t9, 0x01FA(s0)             ## 000001FA
lbl_80AA91F8:
	lw      $ra, 0x001C($sp)           
lbl_80AA91FC:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AA920C:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lbu     v0, 0x01FA(s0)             ## 000001FA
	lui     a1, %hi(var_80AAA9C8)      ## a1 = 80AB0000
	addiu   a1, a1, %lo(var_80AAA9C8)  ## a1 = 80AAA9C8
	beq     v0, $zero, lbl_80AA9244    
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beql    v0, $at, lbl_80AA9264      
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beq     $zero, $zero, lbl_80AA9298 
	lw      $ra, 0x001C($sp)           
lbl_80AA9244:
	jal     func_80027C98              
	addiu   a2, $zero, 0x0006          ## a2 = 00000006
	jal     func_80AA8EF8              
	or      a0, s0, $zero              ## a0 = 00000000
	lbu     t6, 0x01FA(s0)             ## 000001FA
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	sb      t7, 0x01FA(s0)             ## 000001FA
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
lbl_80AA9264:
	lw      a1, 0x014C(s0)             ## 0000014C
	jal     func_8008D6A8              
	sw      a0, 0x0020($sp)            
	beq     v0, $zero, lbl_80AA9294    
	lw      a0, 0x0020($sp)            
	lui     a1, %hi(var_80AAA9C8)      ## a1 = 80AB0000
	addiu   a1, a1, %lo(var_80AAA9C8)  ## a1 = 80AAA9C8
	jal     func_80027C98              
	addiu   a2, $zero, 0x0009          ## a2 = 00000009
	lbu     t8, 0x01FA(s0)             ## 000001FA
	addiu   t9, t8, 0x0001             ## t9 = 00000001
	sb      t9, 0x01FA(s0)             ## 000001FA
lbl_80AA9294:
	lw      $ra, 0x001C($sp)           
lbl_80AA9298:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AA92A8:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lbu     v0, 0x01FA(s0)             ## 000001FA
	lui     a1, %hi(var_80AAA9C8)      ## a1 = 80AB0000
	addiu   a1, a1, %lo(var_80AAA9C8)  ## a1 = 80AAA9C8
	beq     v0, $zero, lbl_80AA92E0    
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beql    v0, $at, lbl_80AA92F8      
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beq     $zero, $zero, lbl_80AA932C 
	lw      $ra, 0x001C($sp)           
lbl_80AA92E0:
	jal     func_80027C98              
	addiu   a2, $zero, 0x0005          ## a2 = 00000005
	lbu     t6, 0x01FA(s0)             ## 000001FA
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	sb      t7, 0x01FA(s0)             ## 000001FA
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
lbl_80AA92F8:
	lw      a1, 0x014C(s0)             ## 0000014C
	jal     func_8008D6A8              
	sw      a0, 0x0020($sp)            
	beq     v0, $zero, lbl_80AA9328    
	lw      a0, 0x0020($sp)            
	lui     a1, %hi(var_80AAA9C8)      ## a1 = 80AB0000
	addiu   a1, a1, %lo(var_80AAA9C8)  ## a1 = 80AAA9C8
	jal     func_80027C98              
	or      a2, $zero, $zero           ## a2 = 00000000
	lbu     t8, 0x01FA(s0)             ## 000001FA
	addiu   t9, t8, 0x0001             ## t9 = 00000001
	sb      t9, 0x01FA(s0)             ## 000001FA
lbl_80AA9328:
	lw      $ra, 0x001C($sp)           
lbl_80AA932C:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AA933C:
	sw      a1, 0x0004($sp)            
	andi    a1, a1, 0x00FF             ## a1 = 00000000
	sb      a1, 0x01FB(a0)             ## 000001FB
	sb      $zero, 0x01FA(a0)          ## 000001FA
	jr      $ra                        
	nop


func_80AA9354:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lbu     t6, 0x01FB(a0)             ## 000001FB
	addiu   t7, t6, 0xFFFF             ## t7 = FFFFFFFF
	sltiu   $at, t7, 0x0007            
	beq     $at, $zero, lbl_80AA93EC   
	sll     t7, t7,  2                 
	lui     $at, %hi(var_80AAAB28)     ## $at = 80AB0000
	addu    $at, $at, t7               
	lw      t7, %lo(var_80AAAB28)($at) 
	jr      t7                         
	nop
var_80AA9384:
	jal     func_80AA8F20              
	nop
	beq     $zero, $zero, lbl_80AA93F0 
	lw      $ra, 0x0014($sp)           
var_80AA9394:
	jal     func_80AA8FB4              
	nop
	beq     $zero, $zero, lbl_80AA93F0 
	lw      $ra, 0x0014($sp)           
var_80AA93A4:
	jal     func_80AA9048              
	nop
	beq     $zero, $zero, lbl_80AA93F0 
	lw      $ra, 0x0014($sp)           
var_80AA93B4:
	jal     func_80AA90DC              
	nop
	beq     $zero, $zero, lbl_80AA93F0 
	lw      $ra, 0x0014($sp)           
var_80AA93C4:
	jal     func_80AA9178              
	nop
	beq     $zero, $zero, lbl_80AA93F0 
	lw      $ra, 0x0014($sp)           
var_80AA93D4:
	jal     func_80AA920C              
	nop
	beq     $zero, $zero, lbl_80AA93F0 
	lw      $ra, 0x0014($sp)           
var_80AA93E4:
	jal     func_80AA92A8              
	nop
lbl_80AA93EC:
	lw      $ra, 0x0014($sp)           
lbl_80AA93F0:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AA93FC:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0030($sp)            
	lui     t7, %hi(var_80AAA908)      ## t7 = 80AB0000
	addiu   t7, t7, %lo(var_80AAA908)  ## t7 = 80AAA908
	sll     t6, a1,  4                 
	addu    v1, t6, t7                 
	lw      a0, 0x0000(v1)             ## 00000000
	jal     func_8008A194              
	sw      v1, 0x0028($sp)            
	mtc1    v0, $f4                    ## $f4 = 0.00
	lw      v1, 0x0028($sp)            
	lw      a0, 0x0030($sp)            
	cvt.s.w $f6, $f4                   
	lbu     t8, 0x0008(v1)             ## 00000008
	lwc1    $f8, 0x000C(v1)            ## 0000000C
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	lw      a1, 0x0000(v1)             ## 00000000
	swc1    $f6, 0x0010($sp)           
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	sw      t8, 0x0014($sp)            
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
	lw      $ra, 0x0024($sp)           
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AA946C:
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	sw      a0, 0x0000($sp)            
	lw      v0, 0x0008(v1)             ## 8011A5D8
	ori     $at, $zero, 0xFFF0         ## $at = 0000FFF0
	slt     $at, v0, $at               
	bne     $at, $zero, lbl_80AA94C0   
	ori     $at, $zero, 0xFFFD         ## $at = 0000FFFD
	beql    v0, $at, lbl_80AA94C4      
	lh      v0, 0x00A4(a1)             ## 000000A4
	lh      v0, 0x00A4(a1)             ## 000000A4
	addiu   $at, $zero, 0x0055         ## $at = 00000055
	bnel    v0, $at, lbl_80AA94B0      
	addiu   $at, $zero, 0x0056         ## $at = 00000056
	jr      $ra                        
	addiu   v0, $zero, 0x0004          ## v0 = 00000004
lbl_80AA94AC:
	addiu   $at, $zero, 0x0056         ## $at = 00000056
lbl_80AA94B0:
	bnel    v0, $at, lbl_80AA94C4      
	lh      v0, 0x00A4(a1)             ## 000000A4
	jr      $ra                        
	addiu   v0, $zero, 0x0005          ## v0 = 00000005
lbl_80AA94C0:
	lh      v0, 0x00A4(a1)             ## 000000A4
lbl_80AA94C4:
	addiu   $at, $zero, 0x0029         ## $at = 00000029
	bnel    v0, $at, lbl_80AA9514      
	addiu   $at, $zero, 0x0056         ## $at = 00000056
	lw      t6, 0x0004(v1)             ## 8011A5D4
	lui     t7, 0x8010                 ## t7 = 80100000
	beql    t6, $zero, lbl_80AA9514    
	addiu   $at, $zero, 0x0056         ## $at = 00000056
	lbu     t7, -0x70C5(t7)            ## 800F8F3B
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	addu    t8, v1, t7                 
	lbu     t9, 0x0074(t8)             ## 00000074
	bnel    t9, $at, lbl_80AA9514      
	addiu   $at, $zero, 0x0056         ## $at = 00000056
	lhu     t0, 0x0EDC(v1)             ## 8011B4AC
	andi    t1, t0, 0x0001             ## t1 = 00000000
	bnel    t1, $zero, lbl_80AA9514    
	addiu   $at, $zero, 0x0056         ## $at = 00000056
	jr      $ra                        
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AA9510:
	addiu   $at, $zero, 0x0056         ## $at = 00000056
lbl_80AA9514:
	bnel    v0, $at, lbl_80AA955C      
	addiu   $at, $zero, 0x0055         ## $at = 00000055
	lhu     t2, 0x0EDC(v1)             ## 8011B4AC
	lui     t4, 0x8010                 ## t4 = 80100000
	andi    t3, t2, 0x0001             ## t3 = 00000000
	beql    t3, $zero, lbl_80AA955C    
	addiu   $at, $zero, 0x0055         ## $at = 00000055
	lw      t4, -0x73D8(t4)            ## 800F8C28
	lw      t5, 0x00A4(v1)             ## 8011A674
	addiu   v1, $zero, 0x0005          ## v1 = 00000005
	and     t6, t4, t5                 
	beq     t6, $zero, lbl_80AA9550    
	nop
	jr      $ra                        
	addiu   v0, $zero, 0x0002          ## v0 = 00000002
lbl_80AA9550:
	jr      $ra                        
	or      v0, v1, $zero              ## v0 = 00000005
lbl_80AA9558:
	addiu   $at, $zero, 0x0055         ## $at = 00000055
lbl_80AA955C:
	bne     v0, $at, lbl_80AA9598      
	lui     t7, 0x8010                 ## t7 = 80100000
	lw      t7, -0x73C8(t7)            ## 800F8C38
	lw      t8, 0x00A4(v1)             ## 000000A9
	and     t9, t7, t8                 
	bnel    t9, $zero, lbl_80AA959C    
	or      v0, $zero, $zero           ## v0 = 00000000
	lhu     t0, 0x0EF8(v1)             ## 00000EFD
	andi    t1, t0, 0x0001             ## t1 = 00000000
	beq     t1, $zero, lbl_80AA9590    
	nop
	jr      $ra                        
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80AA9590:
	jr      $ra                        
	addiu   v0, $zero, 0x0004          ## v0 = 00000004
lbl_80AA9598:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AA959C:
	jr      $ra                        
	nop


func_80AA95A4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lh      v0, 0x00A4(a1)             ## 000000A4
	addiu   $at, $zero, 0x0055         ## $at = 00000055
	lw      t0, 0x1C44(a1)             ## 00001C44
	bne     v0, $at, lbl_80AA95DC      
	or      a3, $zero, $zero           ## a3 = 00000000
	lw      t7, 0x0180(a0)             ## 00000180
	lui     t6, %hi(func_80AA9F74)     ## t6 = 80AB0000
	addiu   t6, t6, %lo(func_80AA9F74) ## t6 = 80AA9F74
	bne     t6, t7, lbl_80AA95DC       
	addiu   a3, $zero, 0x0004          ## a3 = 00000004
	beq     $zero, $zero, lbl_80AA95DC 
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
lbl_80AA95DC:
	addiu   v1, $zero, 0x0056          ## v1 = 00000056
	bne     v1, v0, lbl_80AA9604       
	nop
	lw      t9, 0x0144(a0)             ## 00000144
	lui     t8, 0x0601                 ## t8 = 06010000
	addiu   t8, t8, 0xBAEC             ## t8 = 0600BAEC
	bne     t8, t9, lbl_80AA9604       
	addiu   a3, $zero, 0x0003          ## a3 = 00000003
	beq     $zero, $zero, lbl_80AA9604 
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
lbl_80AA9604:
	bne     v1, v0, lbl_80AA9638       
	nop
	lw      t2, 0x0180(a0)             ## 00000180
	lui     t1, %hi(func_80AA9ACC)     ## t1 = 80AB0000
	addiu   t1, t1, %lo(func_80AA9ACC) ## t1 = 80AA9ACC
	bne     t1, t2, lbl_80AA9638       
	nop
	lw      t4, 0x0144(a0)             ## 00000144
	lui     t3, 0x0601                 ## t3 = 06010000
	addiu   t3, t3, 0xC500             ## t3 = 0600C500
	bne     t3, t4, lbl_80AA9638       
	nop
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
lbl_80AA9638:
	bnel    v1, v0, lbl_80AA9670       
	lw      t1, 0x0024(t0)             ## 00000024
	lw      t6, 0x0180(a0)             ## 00000180
	lui     t5, %hi(func_80AA9F74)     ## t5 = 80AB0000
	addiu   t5, t5, %lo(func_80AA9F74) ## t5 = 80AA9F74
	bnel    t5, t6, lbl_80AA9670       
	lw      t1, 0x0024(t0)             ## 00000024
	lw      t8, 0x0144(a0)             ## 00000144
	lui     t7, 0x0600                 ## t7 = 06000000
	addiu   t7, t7, 0x1D50             ## t7 = 06001D50
	bnel    t7, t8, lbl_80AA9670       
	lw      t1, 0x0024(t0)             ## 00000024
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lw      t1, 0x0024(t0)             ## 00000024
lbl_80AA9670:
	lui     $at, 0x4080                ## $at = 40800000
	mtc1    $at, $f4                   ## $f4 = 4.00
	sw      t1, 0x01E8(a0)             ## 000001E8
	lw      t9, 0x0028(t0)             ## 00000028
	addiu   a1, a0, 0x01D0             ## a1 = 000001D0
	addiu   a2, $zero, 0x0002          ## a2 = 00000002
	sw      t9, 0x01EC(a0)             ## 000001EC
	lw      t1, 0x002C(t0)             ## 0000002C
	swc1    $f4, 0x01E4(a0)            ## 000001E4
	jal     func_80027854              
	sw      t1, 0x01F0(a0)             ## 000001F0
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AA96AC:
	lw      v0, 0x0144(a0)             ## 00000144
	lui     t6, 0x0601                 ## t6 = 06010000
	addiu   t6, t6, 0xBAEC             ## t6 = 0600BAEC
	beq     t6, v0, lbl_80AA96D4       
	lui     t7, 0x0600                 ## t7 = 06000000
	addiu   t7, t7, 0x1D50             ## t7 = 06001D50
	beql    t7, v0, lbl_80AA96D8       
	lh      t8, 0x01D0(a0)             ## 000001D0
	jr      $ra                        
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AA96D4:
	lh      t8, 0x01D0(a0)             ## 000001D0
lbl_80AA96D8:
	beql    t8, $zero, lbl_80AA96EC    
	lh      t9, 0x0202(a0)             ## 00000202
	jr      $ra                        
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AA96E8:
	lh      t9, 0x0202(a0)             ## 00000202
lbl_80AA96EC:
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	sh      $zero, 0x01FE(a0)          ## 000001FE
	beq     t9, $at, lbl_80AA9704      
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	jr      $ra                        
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AA9704:
	jr      $ra                        
	nop


func_80AA970C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a0, a2, $zero              ## a0 = 00000000
	jal     func_80AA96AC              
	sw      a2, 0x0018($sp)            
	bne     v0, $zero, lbl_80AA9798    
	lw      a2, 0x0018($sp)            
	lh      v0, 0x01FE(a2)             ## 000001FE
	bne     v0, $zero, lbl_80AA9740    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	beq     $zero, $zero, lbl_80AA9748 
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_80AA9740:
	sh      t6, 0x01FE(a2)             ## 000001FE
	lh      v1, 0x01FE(a2)             ## 000001FE
lbl_80AA9748:
	bnel    v1, $zero, lbl_80AA979C    
	lw      $ra, 0x0014($sp)           
	lh      t7, 0x0202(a2)             ## 00000202
	addiu   a0, $zero, 0x001E          ## a0 = 0000001E
	addiu   a1, $zero, 0x001E          ## a1 = 0000001E
	addiu   t8, t7, 0x0001             ## t8 = 00000001
	sh      t8, 0x0202(a2)             ## 00000202
	lh      v0, 0x0202(a2)             ## 00000202
	slti    $at, v0, 0x0003            
	beq     $at, $zero, lbl_80AA977C   
	nop
	beq     $zero, $zero, lbl_80AA9798 
	sh      v0, 0x0204(a2)             ## 00000204
lbl_80AA977C:
	jal     func_80063BF0              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	sh      $zero, 0x0204(a2)          ## 00000204
	lh      t9, 0x0204(a2)             ## 00000204
	sh      v0, 0x01FE(a2)             ## 000001FE
	sh      t9, 0x0202(a2)             ## 00000202
lbl_80AA9798:
	lw      $ra, 0x0014($sp)           
lbl_80AA979C:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AA97A8:
	lw      t6, 0x000C(a0)             ## 0000000C
	mtc1    t6, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	swc1    $f6, 0x0000(a1)            ## 00000000
	lw      t7, 0x0010(a0)             ## 00000010
	mtc1    t7, $f8                    ## $f8 = 0.00
	nop
	cvt.s.w $f10, $f8                  
	swc1    $f10, 0x0004(a1)           ## 00000004
	lw      t8, 0x0014(a0)             ## 00000014
	mtc1    t8, $f16                   ## $f16 = 0.00
	nop
	cvt.s.w $f18, $f16                 
	swc1    $f18, 0x0008(a1)           ## 00000008
	jr      $ra                        
	nop


func_80AA97EC:
	lw      t6, 0x0018(a0)             ## 00000018
	mtc1    t6, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	swc1    $f6, 0x0000(a1)            ## 00000000
	lw      t7, 0x001C(a0)             ## 0000001C
	mtc1    t7, $f8                    ## $f8 = 0.00
	nop
	cvt.s.w $f10, $f8                  
	swc1    $f10, 0x0004(a1)           ## 00000004
	lw      t8, 0x0020(a0)             ## 00000020
	mtc1    t8, $f16                   ## $f16 = 0.00
	nop
	cvt.s.w $f18, $f16                 
	swc1    $f18, 0x0008(a1)           ## 00000008
	jr      $ra                        
	nop


func_80AA9830:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      s1, 0x0038($sp)            
	sw      s0, 0x0034($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x003C($sp)           
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	lui     a2, 0x8002                 ## a2 = 80020000
	addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
	sw      a0, 0x0044($sp)            
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	jal     func_8001EC20              
	lui     a3, 0x4140                 ## a3 = 41400000
	lui     a2, 0x0601                 ## a2 = 06010000
	addiu   t6, s0, 0x0210             ## t6 = 00000210
	addiu   t7, s0, 0x0276             ## t7 = 00000276
	addiu   t8, $zero, 0x0011          ## t8 = 00000011
	sw      t8, 0x0018($sp)            
	sw      t7, 0x0014($sp)            
	sw      t6, 0x0010($sp)            
	addiu   a2, a2, 0xB1A0             ## a2 = 0600B1A0
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	jal     func_8008C788              
	or      a3, $zero, $zero           ## a3 = 00000000
	addiu   a1, s0, 0x0184             ## a1 = 00000184
	sw      a1, 0x0040($sp)            
	jal     func_8004AB7C              
	or      a0, s1, $zero              ## a0 = 00000000
	lui     a3, %hi(var_80AAA8D0)      ## a3 = 80AB0000
	lw      a1, 0x0040($sp)            
	addiu   a3, a3, %lo(var_80AAA8D0)  ## a3 = 80AAA8D0
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	lui     a2, %hi(var_80AAA8FC)      ## a2 = 80AB0000
	addiu   a2, a2, %lo(var_80AAA8FC)  ## a2 = 80AAA8FC
	addiu   a0, s0, 0x0098             ## a0 = 00000098
	jal     func_80050370              
	or      a1, $zero, $zero           ## a1 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80AA946C              
	or      a1, s1, $zero              ## a1 = 00000000
	sltiu   $at, v0, 0x0006            
	beq     $at, $zero, lbl_80AA9A0C   
	sll     t9, v0,  2                 
	lui     $at, %hi(var_80AAAB44)     ## $at = 80AB0000
	addu    $at, $at, t9               
	lw      t9, %lo(var_80AAAB44)($at) 
	jr      t9                         
	nop
var_80AA98FC:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80AA93FC              
	addiu   a1, $zero, 0x000B          ## a1 = 0000000B
	lui     t0, %hi(func_80AA9ACC)     ## t0 = 80AB0000
	addiu   t0, t0, %lo(func_80AA9ACC) ## t0 = 80AA9ACC
	beq     $zero, $zero, lbl_80AA9A0C 
	sw      t0, 0x0180(s0)             ## 00000180
var_80AA9918:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80AA93FC              
	addiu   a1, $zero, 0x000B          ## a1 = 0000000B
	lui     t1, %hi(func_80AA9ECC)     ## t1 = 80AB0000
	addiu   t1, t1, %lo(func_80AA9ECC) ## t1 = 80AA9ECC
	beq     $zero, $zero, lbl_80AA9A0C 
	sw      t1, 0x0180(s0)             ## 00000180
var_80AA9934:
	lui     $at, 0xBF80                ## $at = BF800000
	mtc1    $at, $f4                   ## $f4 = -1.00
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_80AA93FC              
	swc1    $f4, 0x006C(s0)            ## 0000006C
	lui     t2, %hi(func_80AA9ACC)     ## t2 = 80AB0000
	addiu   t2, t2, %lo(func_80AA9ACC) ## t2 = 80AA9ACC
	beq     $zero, $zero, lbl_80AA9A0C 
	sw      t2, 0x0180(s0)             ## 00000180
var_80AA995C:
	lui     v0, 0x0201                 ## v0 = 02010000
	lui     $at, 0xBF80                ## $at = BF800000
	addiu   v0, v0, 0x0E20             ## v0 = 02010E20
	mtc1    $at, $f6                   ## $f6 = -1.00
	sll     t3, v0,  4                 
	srl     t4, t3, 28                 
	sll     t5, t4,  2                 
	lui     t6, 0x8012                 ## t6 = 80120000
	sh      $zero, 0x0200(s0)          ## 00000200
	addu    t6, t6, t5                 
	lui     $at, 0x00FF                ## $at = 00FF0000
	swc1    $f6, 0x006C(s0)            ## 0000006C
	lw      t6, 0x0C38(t6)             ## 80120C38
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	and     t7, v0, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t8, t6, t7                 
	addu    t9, t8, $at                
	sw      t9, 0x1D68(s1)             ## 00001D68
	lui     $at, 0x8012                ## $at = 80120000
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	sb      t0, -0x461C($at)           ## 8011B9E4
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80AA93FC              
	addiu   a1, $zero, 0x0004          ## a1 = 00000004
	lui     t1, %hi(func_80AA9F74)     ## t1 = 80AB0000
	addiu   t1, t1, %lo(func_80AA9F74) ## t1 = 80AA9F74
	beq     $zero, $zero, lbl_80AA9A0C 
	sw      t1, 0x0180(s0)             ## 00000180
var_80AA99D0:
	lui     $at, 0xBF80                ## $at = BF800000
	mtc1    $at, $f8                   ## $f8 = -1.00
	sh      $zero, 0x0200(s0)          ## 00000200
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_80AA93FC              
	swc1    $f8, 0x006C(s0)            ## 0000006C
	lui     t2, %hi(func_80AA9F74)     ## t2 = 80AB0000
	addiu   t2, t2, %lo(func_80AA9F74) ## t2 = 80AA9F74
	beq     $zero, $zero, lbl_80AA9A0C 
	sw      t2, 0x0180(s0)             ## 00000180
var_80AA99FC:
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80AA9A90 
	lw      $ra, 0x003C($sp)           
lbl_80AA9A0C:
	lui     a1, 0x3C23                 ## a1 = 3C230000
	ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
	jal     func_80020F88              
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t3, $zero, 0x0006          ## t3 = 00000006
	addiu   t4, $zero, 0x00FF          ## t4 = 000000FF
	sb      t3, 0x001F(s0)             ## 0000001F
	sh      $zero, 0x01D0(s0)          ## 000001D0
	sh      t4, 0x0208(s0)             ## 00000208
	lw      t5, 0x0044($sp)            
	lwc1    $f10, 0x0024(s0)           ## 00000024
	addiu   t8, $zero, 0x0003          ## t8 = 00000003
	lwl     t7, 0x0000(t5)             ## 00000000
	lwr     t7, 0x0003(t5)             ## 00000003
	addiu   a0, s1, 0x1C24             ## a0 = 00001C24
	or      a1, s0, $zero              ## a1 = 00000000
	swl     t7, 0x020A(s0)             ## 0000020A
	swr     t7, 0x020D(s0)             ## 0000020D
	lhu     t7, 0x0004(t5)             ## 00000004
	or      a2, s1, $zero              ## a2 = 00000000
	addiu   a3, $zero, 0x0018          ## a3 = 00000018
	sh      t7, 0x020E(s0)             ## 0000020E
	swc1    $f10, 0x0010($sp)          
	lwc1    $f16, 0x0028(s0)           ## 00000028
	swc1    $f16, 0x0014($sp)          
	lwc1    $f18, 0x002C(s0)           ## 0000002C
	sw      t8, 0x0028($sp)            
	sw      $zero, 0x0024($sp)         
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	jal     func_800253F0              
	swc1    $f18, 0x0018($sp)          
	lw      $ra, 0x003C($sp)           
lbl_80AA9A90:
	lw      s0, 0x0034($sp)            
	lw      s1, 0x0038($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000


func_80AA9AA0:
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


func_80AA9ACC:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x0034($sp)            
	lw      t6, 0x0034($sp)            
	addiu   $at, $zero, 0x0055         ## $at = 00000055
	lh      t7, 0x00A4(t6)             ## 000000A4
	bnel    t7, $at, lbl_80AA9DA4      
	lw      t6, 0x0144(s0)             ## 00000144
	lh      t8, 0x01D0(s0)             ## 000001D0
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	beq     t8, $zero, lbl_80AA9D3C    
	lui     t9, 0x8010                 ## t9 = 80100000
	lhu     v0, 0x010E(s0)             ## 0000010E
	addiu   $at, $zero, 0x1002         ## $at = 00001002
	beq     v0, $at, lbl_80AA9B48      
	addiu   $at, $zero, 0x1003         ## $at = 00001003
	beq     v0, $at, lbl_80AA9BC0      
	addiu   $at, $zero, 0x1031         ## $at = 00001031
	beq     v0, $at, lbl_80AA9BF0      
	addiu   $at, $zero, 0x1032         ## $at = 00001032
	beq     v0, $at, lbl_80AA9C98      
	addiu   $at, $zero, 0x1047         ## $at = 00001047
	beq     v0, $at, lbl_80AA9CD8      
	addiu   $at, $zero, 0x1048         ## $at = 00001048
	beql    v0, $at, lbl_80AA9D10      
	lbu     t7, 0x01F8(s0)             ## 000001F8
	beq     $zero, $zero, lbl_80AA9D98 
	nop
lbl_80AA9B48:
	lbu     v0, 0x01F8(s0)             ## 000001F8
	bnel    v0, $zero, lbl_80AA9B80    
	addiu   v1, $zero, 0x0002          ## v1 = 00000002
	lbu     t9, 0x01FB(s0)             ## 000001FB
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	or      a0, s0, $zero              ## a0 = 00000000
	beql    t9, $at, lbl_80AA9B80      
	addiu   v1, $zero, 0x0002          ## v1 = 00000002
	jal     func_80AA933C              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	sh      t0, 0x0206(s0)             ## 00000206
	lbu     v0, 0x01F8(s0)             ## 000001F8
	addiu   v1, $zero, 0x0002          ## v1 = 00000002
lbl_80AA9B80:
	bnel    v1, v0, lbl_80AA9BB0       
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	lbu     t1, 0x01FB(s0)             ## 000001FB
	or      a0, s0, $zero              ## a0 = 00000000
	beql    v1, t1, lbl_80AA9BB0       
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	jal     func_80AA933C              
	addiu   a1, $zero, 0x0002          ## a1 = 00000002
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	sh      t2, 0x0206(s0)             ## 00000206
	lbu     v0, 0x01F8(s0)             ## 000001F8
	addiu   $at, $zero, 0x0005         ## $at = 00000005
lbl_80AA9BB0:
	bne     v0, $at, lbl_80AA9D98      
	nop
	beq     $zero, $zero, lbl_80AA9D98 
	sh      $zero, 0x0206(s0)          ## 00000206
lbl_80AA9BC0:
	lbu     t3, 0x01F8(s0)             ## 000001F8
	bne     t3, $zero, lbl_80AA9D98    
	nop
	lbu     t4, 0x01FB(s0)             ## 000001FB
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t4, $at, lbl_80AA9D98      
	nop
	jal     func_80AA933C              
	addiu   a1, $zero, 0x0004          ## a1 = 00000004
	beq     $zero, $zero, lbl_80AA9D98 
	nop
lbl_80AA9BF0:
	lbu     v0, 0x01F8(s0)             ## 000001F8
	bnel    v0, $zero, lbl_80AA9C38    
	addiu   v1, $zero, 0x0002          ## v1 = 00000002
	lbu     t5, 0x01FB(s0)             ## 000001FB
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	beql    t5, $at, lbl_80AA9C38      
	addiu   v1, $zero, 0x0002          ## v1 = 00000002
	lw      t7, 0x0144(s0)             ## 00000144
	lui     t6, 0x0601                 ## t6 = 06010000
	addiu   t6, t6, 0x2100             ## t6 = 06012100
	bne     t6, t7, lbl_80AA9C34       
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80AA933C              
	addiu   a1, $zero, 0x0004          ## a1 = 00000004
	addiu   t8, $zero, 0x0003          ## t8 = 00000003
	sh      t8, 0x0206(s0)             ## 00000206
	lbu     v0, 0x01F8(s0)             ## 000001F8
lbl_80AA9C34:
	addiu   v1, $zero, 0x0002          ## v1 = 00000002
lbl_80AA9C38:
	bnel    v1, v0, lbl_80AA9C6C       
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	lbu     t9, 0x01FB(s0)             ## 000001FB
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	or      a0, s0, $zero              ## a0 = 00000000
	beql    t9, $at, lbl_80AA9C6C      
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	jal     func_80AA933C              
	addiu   a1, $zero, 0x0005          ## a1 = 00000005
	addiu   v1, $zero, 0x0002          ## v1 = 00000002
	sh      v1, 0x0206(s0)             ## 00000206
	lbu     v0, 0x01F8(s0)             ## 000001F8
	addiu   $at, $zero, 0x0004         ## $at = 00000004
lbl_80AA9C6C:
	bne     v0, $at, lbl_80AA9D98      
	nop
	lbu     t0, 0x01FB(s0)             ## 000001FB
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t0, $at, lbl_80AA9D98      
	nop
	jal     func_80AA933C              
	addiu   a1, $zero, 0x0006          ## a1 = 00000006
	beq     $zero, $zero, lbl_80AA9D98 
	sh      $zero, 0x0206(s0)          ## 00000206
lbl_80AA9C98:
	lbu     t1, 0x01F8(s0)             ## 000001F8
	bne     t1, $zero, lbl_80AA9D98    
	nop
	lbu     t2, 0x01FB(s0)             ## 000001FB
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	beq     t2, $at, lbl_80AA9D98      
	nop
	lw      t4, 0x0144(s0)             ## 00000144
	lui     t3, 0x0601                 ## t3 = 06010000
	addiu   t3, t3, 0x2100             ## t3 = 06012100
	bne     t3, t4, lbl_80AA9D98       
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80AA933C              
	addiu   a1, $zero, 0x0004          ## a1 = 00000004
	beq     $zero, $zero, lbl_80AA9D98 
	nop
lbl_80AA9CD8:
	lbu     t5, 0x01F8(s0)             ## 000001F8
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bne     t5, $at, lbl_80AA9D98      
	nop
	lbu     t6, 0x01FB(s0)             ## 000001FB
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t6, $at, lbl_80AA9D98      
	nop
	jal     func_80AA933C              
	addiu   a1, $zero, 0x0007          ## a1 = 00000007
	beq     $zero, $zero, lbl_80AA9D98 
	nop
	lbu     t7, 0x01F8(s0)             ## 000001F8
lbl_80AA9D10:
	bne     t7, $zero, lbl_80AA9D98    
	nop
	lbu     t8, 0x01FB(s0)             ## 000001FB
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t8, $at, lbl_80AA9D98      
	nop
	jal     func_80AA933C              
	addiu   a1, $zero, 0x0007          ## a1 = 00000007
	beq     $zero, $zero, lbl_80AA9D98 
	nop
lbl_80AA9D3C:
	lw      t9, -0x73C8(t9)            ## FFFF8C38
	lw      t0, 0x00A4(v1)             ## 000000A4
	or      a0, s0, $zero              ## a0 = 00000000
	and     t1, t9, t0                 
	bne     t1, $zero, lbl_80AA9D90    
	nop
	lhu     v0, 0x0EF8(v1)             ## 00000EF8
	andi    t2, v0, 0x0002             ## t2 = 00000000
	bne     t2, $zero, lbl_80AA9D6C    
	andi    t3, v0, 0x0008             ## t3 = 00000000
	beq     t3, $zero, lbl_80AA9D90    
	nop
lbl_80AA9D6C:
	lbu     t4, 0x01FB(s0)             ## 000001FB
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t4, $at, lbl_80AA9D98      
	nop
	jal     func_80AA933C              
	addiu   a1, $zero, 0x0003          ## a1 = 00000003
	beq     $zero, $zero, lbl_80AA9D98 
	nop
lbl_80AA9D90:
	jal     func_80AA933C              
	or      a1, $zero, $zero           ## a1 = 00000000
lbl_80AA9D98:
	jal     func_80AA9354              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t6, 0x0144(s0)             ## 00000144
lbl_80AA9DA4:
	lui     t5, 0x0601                 ## t5 = 06010000
	addiu   t5, t5, 0xC500             ## t5 = 0600C500
	bnel    t5, t6, lbl_80AA9DE8       
	lh      t9, 0x01D0(s0)             ## 000001D0
	lwc1    $f6, 0x0154(s0)            ## 00000154
	lui     $at, 0xBF80                ## $at = BF800000
	mtc1    $at, $f4                   ## $f4 = -1.00
	trunc.w.s $f8, $f6                   
	or      a0, s0, $zero              ## a0 = 00000000
	swc1    $f4, 0x0158(s0)            ## 00000158
	mfc1    t8, $f8                    
	nop
	bnel    t8, $zero, lbl_80AA9DE8    
	lh      t9, 0x01D0(s0)             ## 000001D0
	jal     func_80AA93FC              
	addiu   a1, $zero, 0x0006          ## a1 = 00000006
	lh      t9, 0x01D0(s0)             ## 000001D0
lbl_80AA9DE8:
	lw      t0, 0x0034($sp)            
	beql    t9, $zero, lbl_80AA9E48    
	lw      $ra, 0x002C($sp)           
	lh      t1, 0x00A4(t0)             ## 000000A4
	addiu   $at, $zero, 0x0056         ## $at = 00000056
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	bne     t1, $at, lbl_80AA9E44      
	lui     a1, 0x0601                 ## a1 = 06010000
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f10                  ## $f10 = 10.00
	lui     $at, 0xC120                ## $at = C1200000
	mtc1    $at, $f16                  ## $f16 = -10.00
	addiu   t2, $zero, 0x0002          ## t2 = 00000002
	sw      t2, 0x0014($sp)            
	addiu   a1, a1, 0xC500             ## a1 = 0600C500
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f10, 0x0010($sp)          
	jal     func_8008D17C              
	swc1    $f16, 0x0018($sp)          
	lui     t3, %hi(func_80AA9E58)     ## t3 = 80AB0000
	addiu   t3, t3, %lo(func_80AA9E58) ## t3 = 80AA9E58
	sw      t3, 0x0180(s0)             ## 00000180
lbl_80AA9E44:
	lw      $ra, 0x002C($sp)           
lbl_80AA9E48:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AA9E58:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	lw      t6, 0x0028($sp)            
	lw      a0, 0x0028($sp)            
	lui     a1, 0x0601                 ## a1 = 06010000
	lh      t7, 0x01D0(t6)             ## 000001D0
	addiu   a1, a1, 0xC500             ## a1 = 0600C500
	lui     a3, 0x4120                 ## a3 = 41200000
	bne     t7, $zero, lbl_80AA9EBC    
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     $at, 0xC120                ## $at = C1200000
	mtc1    $at, $f4                   ## $f4 = -10.00
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	mfc1    a2, $f0                    
	sw      t8, 0x0014($sp)            
	swc1    $f0, 0x0010($sp)           
	jal     func_8008D17C              
	swc1    $f4, 0x0018($sp)           
	lw      t0, 0x0028($sp)            
	lui     t9, %hi(func_80AA9ACC)     ## t9 = 80AB0000
	addiu   t9, t9, %lo(func_80AA9ACC) ## t9 = 80AA9ACC
	sw      t9, 0x0180(t0)             ## 00000180
lbl_80AA9EBC:
	lw      $ra, 0x0024($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AA9ECC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	lw      v0, 0x1C44(a1)             ## 00001C44
	lui     $at, %hi(var_80AAAB5C)     ## $at = 80AB0000
	lwc1    $f6, %lo(var_80AAAB5C)($at) 
	lwc1    $f4, 0x002C(v0)            ## 0000002C
	or      a0, a1, $zero              ## a0 = 00000000
	c.le.s  $f6, $f4                   
	nop
	bc1tl   lbl_80AA9F68               
	lw      $ra, 0x0014($sp)           
	jal     func_8009CB08              
	sw      a1, 0x001C($sp)            
	bne     v0, $zero, lbl_80AA9F64    
	lw      a1, 0x001C($sp)            
	lui     v0, 0x0200                 ## v0 = 02000000
	addiu   v0, v0, 0x5730             ## v0 = 02005730
	sll     t6, v0,  4                 
	srl     t7, t6, 28                 
	sll     t8, t7,  2                 
	lui     t9, 0x8012                 ## t9 = 80120000
	addu    t9, t9, t8                 
	lui     $at, 0x00FF                ## $at = 00FF0000
	lw      t9, 0x0C38(t9)             ## 80120C38
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	and     t0, v0, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t1, t9, t0                 
	addu    t2, t1, $at                
	sw      t2, 0x1D68(a1)             ## 00001D68
	lw      t5, 0x0018($sp)            
	lui     $at, 0x8012                ## $at = 80120000
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	lui     t4, %hi(func_80AA9F74)     ## t4 = 80AB0000
	sb      t3, -0x461C($at)           ## 8011B9E4
	addiu   t4, t4, %lo(func_80AA9F74) ## t4 = 80AA9F74
	sw      t4, 0x0180(t5)             ## 00000180
lbl_80AA9F64:
	lw      $ra, 0x0014($sp)           
lbl_80AA9F68:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AA9F74:
	addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
	sw      s0, 0x001C($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      s1, 0x0020($sp)            
	or      a2, a1, $zero              ## a2 = 00000000
	lui     t7, %hi(var_80AAAAB8)      ## t7 = 80AB0000
	addiu   t7, t7, %lo(var_80AAAAB8)  ## t7 = 80AAAAB8
	lw      t9, 0x0000(t7)             ## 80AAAAB8
	addiu   t6, $sp, 0x0040            ## t6 = FFFFFFD8
	lw      t8, 0x0004(t7)             ## 80AAAABC
	sw      t9, 0x0000(t6)             ## FFFFFFD8
	lw      t9, 0x0008(t7)             ## 80AAAAC0
	sw      t8, 0x0004(t6)             ## FFFFFFDC
	lui     t1, %hi(func_80AAA1B4)     ## t1 = 80AB0000
	sw      t9, 0x0008(t6)             ## FFFFFFE0
	lbu     t0, 0x1D6C(a2)             ## 00001D6C
	addiu   t1, t1, %lo(func_80AAA1B4) ## t1 = 80AAA1B4
	bnel    t0, $zero, lbl_80AA9FD0    
	lw      s1, 0x1D90(a2)             ## 00001D90
	beq     $zero, $zero, lbl_80AAA1A0 
	sw      t1, 0x0180(s0)             ## 00000180
	lw      s1, 0x1D90(a2)             ## 00001D90
lbl_80AA9FD0:
	addiu   a1, $sp, 0x0058            ## a1 = FFFFFFF0
	beq     s1, $zero, lbl_80AAA1A0    
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_80AA97A8              
	sw      a2, 0x006C($sp)            
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_80AA97EC              
	addiu   a1, $sp, 0x004C            ## a1 = FFFFFFE4
	lh      v0, 0x0200(s0)             ## 00000200
	addiu   t2, $sp, 0x0058            ## t2 = FFFFFFF0
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	bne     v0, $zero, lbl_80AAA020    
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t4, 0x0000(t2)             ## FFFFFFF0
	lh      v0, 0x0200(s0)             ## 00000200
	sw      t4, 0x0024(s0)             ## 00000024
	lw      t3, 0x0004(t2)             ## FFFFFFF4
	sw      t3, 0x0028(s0)             ## 00000028
	lw      t4, 0x0008(t2)             ## FFFFFFF8
	sw      t4, 0x002C(s0)             ## 0000002C
lbl_80AAA020:
	lhu     v1, 0x0000(s1)             ## 00000000
	beql    v1, v0, lbl_80AAA06C       
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	beq     v1, $at, lbl_80AAA048      
	addiu   t5, $zero, 0x0001          ## t5 = 00000001
	addiu   $at, $zero, 0x0009         ## $at = 00000009
	beq     v1, $at, lbl_80AAA050      
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	beq     $zero, $zero, lbl_80AAA054 
	sh      $zero, 0x0206(s0)          ## 00000206
lbl_80AAA048:
	beq     $zero, $zero, lbl_80AAA054 
	sh      t5, 0x0206(s0)             ## 00000206
lbl_80AAA050:
	sh      t6, 0x0206(s0)             ## 00000206
lbl_80AAA054:
	jal     func_80AA93FC              
	lhu     a1, 0x0000(s1)             ## 00000000
	lhu     t7, 0x0000(s1)             ## 00000000
	sh      t7, 0x0200(s0)             ## 00000200
	lhu     v1, 0x0000(s1)             ## 00000000
	addiu   $at, $zero, 0x0003         ## $at = 00000003
lbl_80AAA06C:
	bnel    v1, $at, lbl_80AAA0C8      
	lhu     t1, 0x0006(s1)             ## 00000006
	lh      v1, 0x01FC(s0)             ## 000001FC
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	bne     v1, $zero, lbl_80AAA090    
	addiu   t8, v1, 0xFFFF             ## t8 = FFFFFFFF
	beq     $zero, $zero, lbl_80AAA098 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AAA090:
	sh      t8, 0x01FC(s0)             ## 000001FC
	lh      v0, 0x01FC(s0)             ## 000001FC
lbl_80AAA098:
	bne     v0, $zero, lbl_80AAA0C4    
	addiu   a0, $zero, 0x0800          ## a0 = 00000800
	lui     t9, 0x8010                 ## t9 = 80100000
	addiu   t9, t9, 0x43A8             ## t9 = 801043A8
	sw      t9, 0x0014($sp)            
	addiu   a1, s0, 0x00E4             ## a1 = 000000E4
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_800C806C              
	sw      a3, 0x0010($sp)            
	addiu   t0, $zero, 0x0008          ## t0 = 00000008
	sh      t0, 0x01FC(s0)             ## 000001FC
lbl_80AAA0C4:
	lhu     t1, 0x0006(s1)             ## 00000006
lbl_80AAA0C8:
	lw      v1, 0x006C($sp)            
	addiu   t4, $sp, 0x0040            ## t4 = FFFFFFD8
	sh      t1, 0x00B4(s0)             ## 000000B4
	lhu     t2, 0x0008(s1)             ## 00000008
	sh      t2, 0x00B6(s0)             ## 000000B6
	lhu     t3, 0x000A(s1)             ## 0000000A
	sh      t3, 0x00B8(s0)             ## 000000B8
	lw      t6, 0x0000(t4)             ## FFFFFFD8
	sw      t6, 0x005C(s0)             ## 0000005C
	lw      t5, 0x0004(t4)             ## FFFFFFDC
	sw      t5, 0x0060(s0)             ## 00000060
	lw      t6, 0x0008(t4)             ## FFFFFFE0
	sw      t6, 0x0064(s0)             ## 00000064
	lhu     v0, 0x0004(s1)             ## 00000004
	lhu     t7, 0x1D74(v1)             ## 00001D74
	slt     $at, t7, v0                
	beql    $at, $zero, lbl_80AAA1A4   
	lw      $ra, 0x0024($sp)           
	lhu     t8, 0x0002(s1)             ## 00000002
	lwc1    $f6, 0x004C($sp)           
	lwc1    $f8, 0x0058($sp)           
	subu    t9, v0, t8                 
	mtc1    t9, $f4                    ## $f4 = 0.00
	sub.s   $f10, $f6, $f8             
	addiu   $at, $zero, 0x0056         ## $at = 00000056
	lwc1    $f2, 0x006C(s0)            ## 0000006C
	cvt.s.w $f0, $f4                   
	div.s   $f16, $f10, $f0            
	swc1    $f16, 0x005C(s0)           ## 0000005C
	lwc1    $f4, 0x005C($sp)           
	lwc1    $f18, 0x0050($sp)          
	sub.s   $f6, $f18, $f4             
	div.s   $f8, $f6, $f0              
	swc1    $f8, 0x0060(s0)            ## 00000060
	lh      t0, 0x00A4(v1)             ## 000000A4
	bnel    t0, $at, lbl_80AAA168      
	lwc1    $f10, 0x0060(s0)           ## 00000060
	mtc1    $zero, $f2                 ## $f2 = 0.00
	nop
	lwc1    $f10, 0x0060(s0)           ## 00000060
lbl_80AAA168:
	lwc1    $f12, 0x0070(s0)           ## 00000070
	add.s   $f16, $f10, $f2            
	swc1    $f16, 0x0060(s0)           ## 00000060
	lwc1    $f18, 0x0060(s0)           ## 00000060
	c.lt.s  $f18, $f12                 
	nop
	bc1fl   lbl_80AAA190               
	lwc1    $f4, 0x0054($sp)           
	swc1    $f12, 0x0060(s0)           ## 00000060
	lwc1    $f4, 0x0054($sp)           
lbl_80AAA190:
	lwc1    $f6, 0x0060($sp)           
	sub.s   $f8, $f4, $f6              
	div.s   $f10, $f8, $f0             
	swc1    $f10, 0x0064(s0)           ## 00000064
lbl_80AAA1A0:
	lw      $ra, 0x0024($sp)           
lbl_80AAA1A4:
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0068           ## $sp = 00000000


func_80AAA1B4:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	or      a2, a1, $zero              ## a2 = 00000000
	lh      v0, 0x00A4(a2)             ## 000000A4
	addiu   $at, $zero, 0x0056         ## $at = 00000056
	or      a0, a2, $zero              ## a0 = 00000000
	bne     v0, $at, lbl_80AAA1F8      
	addiu   a1, $zero, 0x0062          ## a1 = 00000062
	jal     func_8006FDCC              
	sw      a2, 0x0024($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80AA93FC              
	addiu   a1, $zero, 0x0006          ## a1 = 00000006
	lw      t6, 0x0024($sp)            
	lh      v0, 0x00A4(t6)             ## 000000A4
lbl_80AAA1F8:
	addiu   $at, $zero, 0x0055         ## $at = 00000055
	bne     v0, $at, lbl_80AAA254      
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80AA93FC              
	addiu   a1, $zero, 0x0004          ## a1 = 00000004
	lwl     t0, 0x020A(s0)             ## 0000020A
	lwr     t0, 0x020D(s0)             ## 0000020D
	lw      t8, 0x0008(s0)             ## 00000008
	lw      t7, 0x000C(s0)             ## 0000000C
	swl     t0, 0x0030(s0)             ## 00000030
	swr     t0, 0x0033(s0)             ## 00000033
	sw      t8, 0x0024(s0)             ## 00000024
	lw      t8, 0x0010(s0)             ## 00000010
	lhu     t0, 0x020E(s0)             ## 0000020E
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	sh      $zero, 0x0206(s0)          ## 00000206
	sw      t7, 0x0028(s0)             ## 00000028
	sw      t8, 0x002C(s0)             ## 0000002C
	sh      t0, 0x0034(s0)             ## 00000034
	lhu     t1, 0x0EF8(v0)             ## 8011B4C8
	ori     t2, t1, 0x0001             ## t2 = 00000001
	sh      t2, 0x0EF8(v0)             ## 8011B4C8
lbl_80AAA254:
	lui     t3, %hi(func_80AA9ACC)     ## t3 = 80AB0000
	addiu   t3, t3, %lo(func_80AA9ACC) ## t3 = 80AA9ACC
	sw      t3, 0x0180(s0)             ## 00000180
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AAA274:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s1, 0x0020($sp)            
	sw      s0, 0x001C($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x0024($sp)           
	addiu   a2, s0, 0x0184             ## a2 = 00000184
	or      a1, a2, $zero              ## a1 = 00000184
	sw      a2, 0x002C($sp)            
	jal     func_80050B00              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	lw      a2, 0x002C($sp)            
	addu    a1, s1, $at                
	jal     func_8004C130              ## CollisionCheck_setOT
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lw      t6, 0x0144(s0)             ## 00000144
	lui     a0, 0x0600                 ## a0 = 06000000
	addiu   a0, a0, 0x1D50             ## a0 = 06001D50
	bnel    a0, t6, lbl_80AAA308       
	lw      t7, 0x0180(s0)             ## 00000180
	jal     func_8008A194              
	nop
	mtc1    v0, $f6                    ## $f6 = 0.00
	lwc1    $f4, 0x0154(s0)            ## 00000154
	or      a0, s0, $zero              ## a0 = 00000000
	cvt.s.w $f8, $f6                   
	c.le.s  $f8, $f4                   
	nop
	bc1fl   lbl_80AAA308               
	lw      t7, 0x0180(s0)             ## 00000180
	jal     func_80AA93FC              
	addiu   a1, $zero, 0x0006          ## a1 = 00000006
	lw      t7, 0x0180(s0)             ## 00000180
lbl_80AAA308:
	lui     v1, %hi(func_80AA9F74)     ## v1 = 80AB0000
	addiu   v1, v1, %lo(func_80AA9F74) ## v1 = 80AA9F74
	beq     v1, t7, lbl_80AAA33C       
	addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
	lh      a2, 0x0208(s0)             ## 00000208
	sw      v1, 0x002C($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, s1, $zero              ## a1 = 00000000
	jal     func_80027BA8              
	lui     a3, 0x43C8                 ## a3 = 43C80000
	lw      v1, 0x002C($sp)            
	beq     $zero, $zero, lbl_80AAA340 
	sh      v0, 0x0208(s0)             ## 00000208
lbl_80AAA33C:
	sh      t8, 0x0208(s0)             ## 00000208
lbl_80AAA340:
	lw      t0, 0x0180(s0)             ## 00000180
	lh      t9, 0x0208(s0)             ## 00000208
	bne     v1, t0, lbl_80AAA384       
	sb      t9, 0x00C8(s0)             ## 000000C8
	lwc1    $f10, 0x0024(s0)           ## 00000024
	lwc1    $f16, 0x005C(s0)           ## 0000005C
	lwc1    $f6, 0x0028(s0)            ## 00000028
	lwc1    $f4, 0x0060(s0)            ## 00000060
	add.s   $f18, $f10, $f16           
	lwc1    $f16, 0x0064(s0)           ## 00000064
	lwc1    $f10, 0x002C(s0)           ## 0000002C
	add.s   $f8, $f6, $f4              
	swc1    $f18, 0x0024(s0)           ## 00000024
	add.s   $f18, $f10, $f16           
	swc1    $f8, 0x0028(s0)            ## 00000028
	beq     $zero, $zero, lbl_80AAA38C 
	swc1    $f18, 0x002C(s0)           ## 0000002C
lbl_80AAA384:
	jal     func_80021124              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80AAA38C:
	lh      t1, 0x00A4(s1)             ## 000000A4
	addiu   $at, $zero, 0x0056         ## $at = 00000056
	or      a0, s1, $zero              ## a0 = 00000000
	beq     t1, $at, lbl_80AAA3BC      
	or      a1, s0, $zero              ## a1 = 00000000
	mtc1    $zero, $f0                 ## $f0 = 0.00
	addiu   t2, $zero, 0x0004          ## t2 = 00000004
	sw      t2, 0x0014($sp)            
	mfc1    a2, $f0                    
	mfc1    a3, $f0                    
	jal     func_80021E6C              
	swc1    $f0, 0x0010($sp)           
lbl_80AAA3BC:
	jal     func_80AA970C              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t9, 0x0180(s0)             ## 00000180
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, s1, $zero              ## a1 = 00000000
	jalr    $ra, t9                    
	nop
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80AA8E38              
	or      a1, s1, $zero              ## a1 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80AA95A4              
	or      a1, s1, $zero              ## a1 = 00000000
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80AAA404:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	sw      a2, 0x0030($sp)            
	sw      a3, 0x0034($sp)            
	lw      t6, 0x002C($sp)            
	addiu   $at, $zero, 0x0010         ## $at = 00000010
	bnel    t6, $at, lbl_80AAA4E0      
	lw      t3, 0x002C($sp)            
	mtc1    $zero, $f14                ## $f14 = 0.00
	lui     $at, 0x4461                ## $at = 44610000
	mtc1    $at, $f12                  ## $f12 = 900.00
	mfc1    a2, $f14                   
	jal     func_800AA7F4              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lw      t8, 0x003C($sp)            
	addiu   t7, $sp, 0x0018            ## t7 = FFFFFFF0
	lui     $at, 0x4700                ## $at = 47000000
	lwl     t0, 0x01D8(t8)             ## 000001D8
	lwr     t0, 0x01DB(t8)             ## 000001DB
	mtc1    $at, $f8                   ## $f8 = 32768.00
	lui     $at, %hi(var_80AAAB60)     ## $at = 80AB0000
	sw      t0, 0x0000(t7)             ## FFFFFFF0
	lhu     t0, 0x01DC(t8)             ## 000001DC
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	sh      t0, 0x0004(t7)             ## FFFFFFF4
	lh      t1, 0x001A($sp)            
	lwc1    $f16, %lo(var_80AAAB60)($at) 
	mtc1    t1, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	div.s   $f10, $f6, $f8             
	mul.s   $f12, $f10, $f16           
	jal     func_800AA9E0              
	nop
	lh      t2, 0x0018($sp)            
	lui     $at, 0x4700                ## $at = 47000000
	mtc1    $at, $f6                   ## $f6 = 32768.00
	mtc1    t2, $f18                   ## $f18 = 0.00
	lui     $at, %hi(var_80AAAB64)     ## $at = 80AB0000
	lwc1    $f10, %lo(var_80AAAB64)($at) 
	cvt.s.w $f4, $f18                  
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	div.s   $f8, $f4, $f6              
	mul.s   $f12, $f8, $f10            
	jal     func_800AAD4C              
	nop
	mtc1    $zero, $f14                ## $f14 = 0.00
	lui     $at, 0xC461                ## $at = C4610000
	mtc1    $at, $f12                  ## $f12 = -900.00
	mfc1    a2, $f14                   
	jal     func_800AA7F4              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lw      t3, 0x002C($sp)            
lbl_80AAA4E0:
	addiu   $at, $zero, 0x0009         ## $at = 00000009
	lw      t5, 0x003C($sp)            
	bnel    t3, $at, lbl_80AAA570      
	lw      t0, 0x0028($sp)            
	lwl     t7, 0x01DE(t5)             ## 000001DE
	lwr     t7, 0x01E1(t5)             ## 000001E1
	addiu   t4, $sp, 0x0018            ## t4 = FFFFFFF0
	lui     $at, 0x4700                ## $at = 47000000
	sw      t7, 0x0000(t4)             ## FFFFFFF0
	lhu     t7, 0x01E2(t5)             ## 000001E2
	mtc1    $at, $f4                   ## $f4 = 32768.00
	lui     $at, %hi(var_80AAAB68)     ## $at = 80AB0000
	sh      t7, 0x0004(t4)             ## FFFFFFF4
	lh      t8, 0x001A($sp)            
	lwc1    $f8, %lo(var_80AAAB68)($at) 
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	mtc1    t8, $f16                   ## $f16 = 0.00
	nop
	cvt.s.w $f18, $f16                 
	div.s   $f6, $f18, $f4             
	mul.s   $f12, $f6, $f8             
	jal     func_800AAB94              
	nop
	lh      t9, 0x0018($sp)            
	lui     $at, 0x4700                ## $at = 47000000
	mtc1    $at, $f18                  ## $f18 = 32768.00
	mtc1    t9, $f10                   ## $f10 = 0.00
	lui     $at, %hi(var_80AAAB6C)     ## $at = 80AB0000
	lwc1    $f6, %lo(var_80AAAB6C)($at) 
	cvt.s.w $f16, $f10                 
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	div.s   $f4, $f16, $f18            
	mul.s   $f12, $f4, $f6             
	jal     func_800AA9E0              
	nop
	lw      t0, 0x0028($sp)            
lbl_80AAA570:
	addiu   $at, $zero, 0x0056         ## $at = 00000056
	lw      t2, 0x002C($sp)            
	lh      t1, 0x00A4(t0)             ## 000000A4
	or      v0, $zero, $zero           ## v0 = 00000000
	bne     t1, $at, lbl_80AAA59C      
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	bne     t2, $at, lbl_80AAA59C      
	lw      t4, 0x0030($sp)            
	lui     t3, 0x0600                 ## t3 = 06000000
	addiu   t3, t3, 0x7B80             ## t3 = 06007B80
	sw      t3, 0x0000(t4)             ## 00000000
lbl_80AAA59C:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AAA5AC:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      a0, 0x0028($sp)            
	addiu   a0, $sp, 0x0018            ## a0 = FFFFFFF0
	sw      $ra, 0x0014($sp)           
	sw      a2, 0x0030($sp)            
	sw      a3, 0x0034($sp)            
	lui     t6, %hi(var_80AAAAC4)      ## t6 = 80AB0000
	addiu   t6, t6, %lo(var_80AAAAC4)  ## t6 = 80AAAAC4
	lw      t8, 0x0000(t6)             ## 80AAAAC4
	addiu   $at, $zero, 0x0010         ## $at = 00000010
	sw      t8, 0x0000(a0)             ## FFFFFFF0
	lw      t7, 0x0004(t6)             ## 80AAAAC8
	sw      t7, 0x0004(a0)             ## FFFFFFF4
	lw      t8, 0x0008(t6)             ## 80AAAACC
	bne     a1, $at, lbl_80AAA5F8      
	sw      t8, 0x0008(a0)             ## FFFFFFF8
	lw      a1, 0x0038($sp)            
	jal     func_800AB958              
	addiu   a1, a1, 0x0038             ## a1 = 00000038
lbl_80AAA5F8:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AAA608:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	lh      v0, 0x0208(s0)             ## 00000208
	lw      t6, 0x002C($sp)            
	addiu   $at, $zero, 0x00FF         ## $at = 000000FF
	bne     v0, $at, lbl_80AAA764      
	lw      v1, 0x0000(t6)             ## 00000000
	lui     t2, 0x00FF                 ## t2 = 00FF0000
	lui     t3, 0x8012                 ## t3 = 80120000
	lui     t5, %hi(var_80AAAAE4)      ## t5 = 80AB0000
	addiu   t5, t5, %lo(var_80AAAAE4)  ## t5 = 80AAAAE4
	addiu   t3, t3, 0x0C38             ## t3 = 80120C38
	ori     t2, t2, 0xFFFF             ## t2 = 00FFFFFF
	lui     t4, 0x8000                 ## t4 = 80000000
	lw      v0, 0x02C0(v1)             ## 000002C0
	lui     t8, 0xDB06                 ## t8 = DB060000
	ori     t8, t8, 0x0020             ## t8 = DB060020
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(v1)             ## 000002C0
	sw      t8, 0x0000(v0)             ## 00000000
	lh      t9, 0x0202(s0)             ## 00000202
	lui     a2, %hi(func_80AAA404)     ## a2 = 80AB0000
	addiu   a2, a2, %lo(func_80AAA404) ## a2 = 80AAA404
	sll     t6, t9,  2                 
	addu    t7, t5, t6                 
	lw      a3, 0x0000(t7)             ## 00000008
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	sll     t9, a3,  4                 
	srl     t6, t9, 28                 
	sll     t7, t6,  2                 
	addu    t9, t3, t7                 
	lw      t6, 0x0000(t9)             ## 00000000
	and     t8, a3, t2                 
	lui     a3, %hi(func_80AAA5AC)     ## a3 = 80AB0000
	addu    t7, t8, t6                 
	addu    t9, t7, t4                 
	sw      t9, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(v1)             ## 000002C0
	lui     t6, 0xDB06                 ## t6 = DB060000
	ori     t6, t6, 0x0024             ## t6 = DB060024
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(v1)             ## 000002C0
	sw      t6, 0x0000(v0)             ## 00000000
	lh      t7, 0x0204(s0)             ## 00000204
	addiu   a3, a3, %lo(func_80AAA5AC) ## a3 = 80AAA5AC
	sll     t9, t7,  2                 
	addu    t8, t5, t9                 
	lw      t0, 0x0000(t8)             ## 00000008
	sll     t7, t0,  4                 
	srl     t9, t7, 28                 
	sll     t8, t9,  2                 
	addu    t7, t3, t8                 
	lw      t9, 0x0000(t7)             ## 00000008
	and     t6, t0, t2                 
	addu    t8, t6, t9                 
	addu    t7, t8, t4                 
	sw      t7, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(v1)             ## 000002C0
	lui     t9, 0xDB06                 ## t9 = DB060000
	ori     t9, t9, 0x0028             ## t9 = DB060028
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(v1)             ## 000002C0
	sw      t9, 0x0000(v0)             ## 00000000
	lh      t8, 0x0206(s0)             ## 00000206
	lui     t1, %hi(var_80AAAAD0)      ## t1 = 80AB0000
	sll     t7, t8,  2                 
	addu    t1, t1, t7                 
	lw      t1, %lo(var_80AAAAD0)(t1)  
	sll     t9, t1,  4                 
	srl     t8, t9, 28                 
	sll     t7, t8,  2                 
	addu    t9, t3, t7                 
	lw      t8, 0x0000(t9)             ## DB060028
	and     t6, t1, t2                 
	addu    t7, t6, t8                 
	addu    t9, t7, t4                 
	sw      t9, 0x0004(v0)             ## 00000004
	sw      s0, 0x0010($sp)            
	lh      t6, 0x0208(s0)             ## 00000208
	lw      a0, 0x002C($sp)            
	jal     func_800279CC              
	sw      t6, 0x0014($sp)            
	beq     $zero, $zero, lbl_80AAA898 
	lw      $ra, 0x0024($sp)           
lbl_80AAA764:
	beq     v0, $zero, lbl_80AAA894    
	lui     t2, 0x00FF                 ## t2 = 00FF0000
	lui     t3, 0x8012                 ## t3 = 80120000
	lui     t5, %hi(var_80AAAAE4)      ## t5 = 80AB0000
	addiu   t5, t5, %lo(var_80AAAAE4)  ## t5 = 80AAAAE4
	addiu   t3, t3, 0x0C38             ## t3 = 80120C38
	ori     t2, t2, 0xFFFF             ## t2 = 00FFFFFF
	lui     t4, 0x8000                 ## t4 = 80000000
	lw      v0, 0x02D0(v1)             ## 000002D0
	lui     t7, 0xDB06                 ## t7 = DB060000
	ori     t7, t7, 0x0020             ## t7 = DB060020
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(v1)             ## 000002D0
	sw      t7, 0x0000(v0)             ## 00000000
	lh      t9, 0x0202(s0)             ## 00000202
	lui     a2, %hi(func_80AAA404)     ## a2 = 80AB0000
	addiu   a2, a2, %lo(func_80AAA404) ## a2 = 80AAA404
	sll     t6, t9,  2                 
	addu    t8, t5, t6                 
	lw      a3, 0x0000(t8)             ## 00000008
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	sll     t9, a3,  4                 
	srl     t6, t9, 28                 
	sll     t8, t6,  2                 
	addu    t9, t3, t8                 
	lw      t6, 0x0000(t9)             ## 00000000
	and     t7, a3, t2                 
	lui     a3, %hi(func_80AAA5AC)     ## a3 = 80AB0000
	addu    t8, t7, t6                 
	addu    t9, t8, t4                 
	sw      t9, 0x0004(v0)             ## 00000004
	lw      v0, 0x02D0(v1)             ## 000002D0
	lui     t6, 0xDB06                 ## t6 = DB060000
	ori     t6, t6, 0x0024             ## t6 = DB060024
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(v1)             ## 000002D0
	sw      t6, 0x0000(v0)             ## 00000000
	lh      t8, 0x0204(s0)             ## 00000204
	addiu   a3, a3, %lo(func_80AAA5AC) ## a3 = 80AAA5AC
	sll     t9, t8,  2                 
	addu    t7, t5, t9                 
	lw      t0, 0x0000(t7)             ## 00000008
	sll     t8, t0,  4                 
	srl     t9, t8, 28                 
	sll     t7, t9,  2                 
	addu    t8, t3, t7                 
	lw      t9, 0x0000(t8)             ## 00000008
	and     t6, t0, t2                 
	addu    t7, t6, t9                 
	addu    t8, t7, t4                 
	sw      t8, 0x0004(v0)             ## 00000004
	lw      v0, 0x02D0(v1)             ## 000002D0
	lui     t9, 0xDB06                 ## t9 = DB060000
	ori     t9, t9, 0x0028             ## t9 = DB060028
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(v1)             ## 000002D0
	sw      t9, 0x0000(v0)             ## 00000000
	lh      t7, 0x0206(s0)             ## 00000206
	lui     t1, %hi(var_80AAAAD0)      ## t1 = 80AB0000
	sll     t8, t7,  2                 
	addu    t1, t1, t8                 
	lw      t1, %lo(var_80AAAAD0)(t1)  
	sll     t9, t1,  4                 
	srl     t7, t9, 28                 
	sll     t8, t7,  2                 
	addu    t9, t3, t8                 
	lw      t7, 0x0000(t9)             ## DB060028
	and     t6, t1, t2                 
	addu    t8, t6, t7                 
	addu    t9, t8, t4                 
	sw      t9, 0x0004(v0)             ## 00000004
	sw      s0, 0x0010($sp)            
	lh      t6, 0x0208(s0)             ## 00000208
	lw      a0, 0x002C($sp)            
	jal     func_80027AC4              
	sw      t6, 0x0014($sp)            
lbl_80AAA894:
	lw      $ra, 0x0024($sp)           
lbl_80AAA898:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop

.section .data

var_80AAA8B0: .word 0x01460400, 0x02000019, 0x00BC0000, 0x000002DC
.word func_80AA9830
.word func_80AA9AA0
.word func_80AAA274
.word func_80AAA608
var_80AAA8D0: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0014002E, 0x00000000, 0x00000000
var_80AAA8FC: .word 0x00000000, 0x00000000, 0xFF000000
var_80AAA908: .word \
0x060021D8, 0x3F800000, 0x00000000, 0x00000000, \
0x0600E908, 0x3F800000, 0x02000000, 0xC1200000, \
0x0600F1D4, 0x3F800000, 0x00000000, 0xC1200000, \
0x0600EBB0, 0x3F800000, 0x00000000, 0xC1200000, \
0x060021D8, 0x3F800000, 0x00000000, 0xC1200000, \
0x06010C44, 0x3F800000, 0x00000000, 0xC1200000, \
0x0600BAEC, 0x3F800000, 0x00000000, 0xC1200000, \
0x0600C500, 0x3F800000, 0x02000000, 0xC1200000, \
0x06001D50, 0x3F800000, 0x02000000, 0xC1200000, \
0x0600CFD8, 0x3F800000, 0x02000000, 0xC1200000, \
0x0600D7E8, 0x3F800000, 0x02000000, 0xC1200000, \
0x0600BAEC, 0x3F800000, 0x00000000, 0x00000000
var_80AAA9C8: .word \
0x0601291C, 0x3F800000, 0x00000000, 0xBF800000, \
0x02000000, 0xBF800000, 0x06011580, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC0800000, \
0x06013008, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xBF800000, 0x0601186C, 0x3F800000, \
0x00000000, 0xBF800000, 0x02000000, 0xBF800000, \
0x06014470, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xBF800000, 0x06014850, 0x3F800000, \
0x00000000, 0xBF800000, 0x02000000, 0xBF800000, \
0x06011C38, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xBF800000, 0x06012100, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xBF800000, \
0x06015220, 0x3F800000, 0x00000000, 0xBF800000, \
0x02000000, 0xBF800000, 0x060021D8, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1000000
var_80AAAAB8: .word 0x00000000, 0x00000000, 0x00000000
var_80AAAAC4: .word 0x43C80000, 0x00000000, 0x00000000
var_80AAAAD0: .word \
0x06003588, 0x06004448, 0x06004648, 0x06004C48, \
0x06003348
var_80AAAAE4: .word \
0x06002F48, 0x06003C48, 0x06003848, 0x06004848, \
0x06004E48, 0x00000000, 0x00000000

.section .rodata

var_80AAAB00: .word lbl_80AA8E24
.word lbl_80AA8E24
.word var_80AA8D9C
.word lbl_80AA8E24
.word lbl_80AA8E24
.word lbl_80AA8E24
.word lbl_80AA8E24
.word lbl_80AA8E24
.word lbl_80AA8E24
.word lbl_80AA8E24
var_80AAAB28: .word var_80AA9384
.word var_80AA9394
.word var_80AA93A4
.word var_80AA93B4
.word var_80AA93C4
.word var_80AA93D4
.word var_80AA93E4
var_80AAAB44: .word var_80AA99FC
.word var_80AA9934
.word var_80AA98FC
.word var_80AA99D0
.word var_80AA995C
.word var_80AA9918
var_80AAAB5C: .word 0xC50AC000
var_80AAAB60: .word 0x40490FDB
var_80AAAB64: .word 0x40490FDB
var_80AAAB68: .word 0x40490FDB
var_80AAAB6C: .word 0x40490FDB

