#include <mips.h>
.set noreorder
.set noat

.section .text
func_808009C0:
	sw      $zero, 0x0098(a0)          ## 00000098
	lui     t6, 0x8080                 ## t6 = 80800000
	addiu   t6, t6, 0x07B0             ## t6 = 808007B0
	addiu   t7, $zero, 0x01E8          ## t7 = 000001E8
	sw      t7, 0x0010(a0)             ## 00000010
	sw      t6, 0x000C(a0)             ## 0000000C
	jr      $ra                        
	nop


func_808009E0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	lw      t6, 0x1354(v0)             ## 8011B924
	addiu   $at, $zero, 0x00FF         ## $at = 000000FF
	bnel    t6, $at, lbl_80800A38      
	lui     a0, 0x1000                 ## a0 = 10000000
	jal     func_800900EC              
	sw      a2, 0x0018($sp)            
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	lb      t7, 0x0033(v0)             ## 8011A603
	sb      $zero, 0x0033(v0)          ## 8011A603
	lb      t8, 0x0033(v0)             ## 8011A603
	lw      a2, 0x0018($sp)            
	sh      $zero, 0x13F4(v0)          ## 8011B9C4
	sh      t7, 0x13F6(v0)             ## 8011B9C6
	sb      t8, 0x0032(v0)             ## 8011A602
	lui     a0, 0x1000                 ## a0 = 10000000
lbl_80800A38:
	sb      $zero, 0x13E6(v0)          ## 8011B9B6
	sb      $zero, 0x13E5(v0)          ## 8011B9B5
	sb      $zero, 0x13E4(v0)          ## 8011B9B4
	sb      $zero, 0x13E3(v0)          ## 8011B9B3
	sb      $zero, 0x13E2(v0)          ## 8011B9B2
	sh      $zero, 0x13EC(v0)          ## 8011B9BC
	sh      $zero, 0x13EA(v0)          ## 8011B9BA
	sh      $zero, 0x13E8(v0)          ## 8011B9B8
	sb      $zero, 0x13E7(v0)          ## 8011B9B7
	ori     a0, a0, 0x00FF             ## a0 = 100000FF
	jal     func_800CAA70              
	sw      a2, 0x0018($sp)            
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	lw      t2, 0x001C($sp)            
	addiu   v1, $zero, 0x00FF          ## v1 = 000000FF
	lw      a2, 0x0018($sp)            
	addiu   t3, $zero, 0xFFFF          ## t3 = FFFFFFFF
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	sw      $zero, 0x1364(v0)          ## 8011B934
	sh      t3, 0x1378(v0)             ## 8011B948
	sb      v1, 0x13E0(v0)             ## 8011B9B0
	sb      v1, 0x13E1(v0)             ## 8011B9B1
	sb      t4, 0x13C7(v0)             ## 8011B997
	lui     $at, 0x800F                ## $at = 800F0000
	sw      t2, 0x0000(v0)             ## 8011A5D0
	sb      $zero, 0x1640($at)         ## 800F1640
	sw      $zero, 0x0098(a2)          ## 00000098
	lui     t5, 0x800A                 ## t5 = 800A0000
	lui     t6, 0x0001                 ## t6 = 00010000
	ori     t6, t6, 0x2518             ## t6 = 00012518
	addiu   t5, t5, 0xA750             ## t5 = 8009A750
	sw      t5, 0x000C(a2)             ## 0000000C
	sw      t6, 0x0010(a2)             ## 00000010
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80800AD0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lui     t6, 0x8012                 ## t6 = 80120000
	lbu     t6, 0x1212(t6)             ## 80121212
	beql    t6, $zero, lbl_80800AFC    
	lw      $ra, 0x0014($sp)           
	jal     func_801C7F90              
	addiu   a0, $zero, 0x0001          ## a0 = 00000001
	lw      $ra, 0x0014($sp)           
lbl_80800AFC:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80800B08:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lui     t6, 0x8012                 ## t6 = 80120000
	lbu     t6, 0x1212(t6)             ## 80121212
	beql    t6, $zero, lbl_80800B34    
	lw      $ra, 0x0014($sp)           
	jal     func_801C7F90              
	or      a0, $zero, $zero           ## a0 = 00000000
	lw      $ra, 0x0014($sp)           
lbl_80800B34:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80800B40:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	lw      t6, 0x021C(s0)             ## 0000021C
	bnel    t6, $zero, lbl_8080114C    
	lhu     t8, 0x0020(s0)             ## 00000020
	addiu   t1, s0, 0x0014             ## t1 = 00000014
	lhu     v0, 0x000C(t1)             ## 00000020
	ori     a3, $zero, 0x8000          ## a3 = 00008000
	andi    t7, v0, 0x8000             ## t7 = 00000000
	beq     a3, t7, lbl_80800B80       
	andi    t8, v0, 0x1000             ## t8 = 00000000
	addiu   $at, $zero, 0x1000         ## $at = 00001000
	bnel    t8, $at, lbl_80800BC4      
	andi    t5, v0, 0x4000             ## t5 = 00000000
lbl_80800B80:
	lw      t3, 0x01D8(s0)             ## 000001D8
	lw      t9, 0x01D4(s0)             ## 000001D4
	sll     t4, t3,  2                 
	subu    t4, t4, t3                 
	sll     t4, t4,  2                 
	addu    v1, t9, t4                 
	lw      a2, 0x0004(v1)             ## 00000004
	beql    a2, $zero, lbl_80800BC4    
	andi    t5, v0, 0x4000             ## t5 = 00000000
	lw      a1, 0x0008(v1)             ## 00000008
	sw      t1, 0x002C($sp)            
	jalr    $ra, a2                    
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t1, 0x002C($sp)            
	ori     a3, $zero, 0x8000          ## a3 = 00008000
	lhu     v0, 0x000C(t1)             ## 0000000C
	andi    t5, v0, 0x4000             ## t5 = 00000000
lbl_80800BC4:
	addiu   $at, $zero, 0x4000         ## $at = 00004000
	bne     t5, $at, lbl_80800C0C      
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	lw      t6, 0x0004(v1)             ## 8011A5D4
	addiu   $at, $zero, 0x0011         ## $at = 00000011
	addiu   v0, $zero, 0x0011          ## v0 = 00000011
	beq     t6, $zero, lbl_80800BF0    
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	beq     $zero, $zero, lbl_80800BF0 
	addiu   v0, $zero, 0x0005          ## v0 = 00000005
lbl_80800BF0:
	bnel    v0, $at, lbl_80800C08      
	sw      $zero, 0x0004(v1)          ## 8011A5D4
	sw      t2, 0x0004(v1)             ## 8011A5D4
	beq     $zero, $zero, lbl_80800C0C 
	lhu     v0, 0x000C(t1)             ## 0000000C
	sw      $zero, 0x0004(v1)          ## 8011A5D4
lbl_80800C08:
	lhu     v0, 0x000C(t1)             ## 0000000C
lbl_80800C0C:
	lui     v1, 0x8012                 ## v1 = 80120000
	andi    t7, v0, 0x2000             ## t7 = 00000000
	addiu   $at, $zero, 0x2000         ## $at = 00002000
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	bne     t7, $at, lbl_80800D24      
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	lw      v0, 0x0008(v1)             ## 8011A5D8
	bne     a3, v0, lbl_80800C38       
	nop
	beq     $zero, $zero, lbl_80800E30 
	sw      $zero, 0x0008(v1)          ## 8011A5D8
lbl_80800C38:
	bne     v0, $zero, lbl_80800C4C    
	ori     a0, $zero, 0xFFF0          ## a0 = 0000FFF0
	ori     a0, $zero, 0xFFF0          ## a0 = 0000FFF0
	beq     $zero, $zero, lbl_80800E30 
	sw      a0, 0x0008(v1)             ## 8011A5D8
lbl_80800C4C:
	bne     a0, v0, lbl_80800C60       
	ori     a1, $zero, 0xFFF1          ## a1 = 0000FFF1
	ori     a1, $zero, 0xFFF1          ## a1 = 0000FFF1
	beq     $zero, $zero, lbl_80800E30 
	sw      a1, 0x0008(v1)             ## 8011A5D8
lbl_80800C60:
	bne     a1, v0, lbl_80800C74       
	ori     a0, $zero, 0xFFF2          ## a0 = 0000FFF2
	ori     a0, $zero, 0xFFF2          ## a0 = 0000FFF2
	beq     $zero, $zero, lbl_80800E30 
	sw      a0, 0x0008(v1)             ## 8011A5D8
lbl_80800C74:
	bne     a0, v0, lbl_80800C88       
	ori     a1, $zero, 0xFFF3          ## a1 = 0000FFF3
	ori     a1, $zero, 0xFFF3          ## a1 = 0000FFF3
	beq     $zero, $zero, lbl_80800E30 
	sw      a1, 0x0008(v1)             ## 8011A5D8
lbl_80800C88:
	bne     a1, v0, lbl_80800C9C       
	ori     a0, $zero, 0xFFF4          ## a0 = 0000FFF4
	ori     a0, $zero, 0xFFF4          ## a0 = 0000FFF4
	beq     $zero, $zero, lbl_80800E30 
	sw      a0, 0x0008(v1)             ## 8011A5D8
lbl_80800C9C:
	bne     a0, v0, lbl_80800CB0       
	ori     a1, $zero, 0xFFF5          ## a1 = 0000FFF5
	ori     a1, $zero, 0xFFF5          ## a1 = 0000FFF5
	beq     $zero, $zero, lbl_80800E30 
	sw      a1, 0x0008(v1)             ## 8011A5D8
lbl_80800CB0:
	bne     a1, v0, lbl_80800CC4       
	ori     a0, $zero, 0xFFF6          ## a0 = 0000FFF6
	ori     a0, $zero, 0xFFF6          ## a0 = 0000FFF6
	beq     $zero, $zero, lbl_80800E30 
	sw      a0, 0x0008(v1)             ## 8011A5D8
lbl_80800CC4:
	bne     a0, v0, lbl_80800CD8       
	ori     a1, $zero, 0xFFF7          ## a1 = 0000FFF7
	ori     a1, $zero, 0xFFF7          ## a1 = 0000FFF7
	beq     $zero, $zero, lbl_80800E30 
	sw      a1, 0x0008(v1)             ## 8011A5D8
lbl_80800CD8:
	bne     a1, v0, lbl_80800CEC       
	ori     a0, $zero, 0xFFF8          ## a0 = 0000FFF8
	ori     a0, $zero, 0xFFF8          ## a0 = 0000FFF8
	beq     $zero, $zero, lbl_80800E30 
	sw      a0, 0x0008(v1)             ## 8011A5D8
lbl_80800CEC:
	bne     a0, v0, lbl_80800D00       
	ori     a1, $zero, 0xFFF9          ## a1 = 0000FFF9
	ori     a1, $zero, 0xFFF9          ## a1 = 0000FFF9
	beq     $zero, $zero, lbl_80800E30 
	sw      a1, 0x0008(v1)             ## 8011A5D8
lbl_80800D00:
	bne     a1, v0, lbl_80800D14       
	ori     $at, $zero, 0xFFFA         ## $at = 0000FFFA
	ori     t8, $zero, 0xFFFA          ## t8 = 0000FFFA
	beq     $zero, $zero, lbl_80800E30 
	sw      t8, 0x0008(v1)             ## 8011A5D8
lbl_80800D14:
	bnel    v0, $at, lbl_80800E34      
	lw      t4, 0x0008(v1)             ## 8011A5D8
	beq     $zero, $zero, lbl_80800E30 
	sw      a3, 0x0008(v1)             ## 8011A5D8
lbl_80800D24:
	andi    t3, v0, 0x0010             ## t3 = 00000000
	addiu   $at, $zero, 0x0010         ## $at = 00000010
	bnel    t3, $at, lbl_80800E34      
	lw      t4, 0x0008(v1)             ## 8011A5D8
	lw      v0, 0x0008(v1)             ## 8011A5D8
	bne     a3, v0, lbl_80800D4C       
	nop
	ori     t9, $zero, 0xFFFA          ## t9 = 0000FFFA
	beq     $zero, $zero, lbl_80800E30 
	sw      t9, 0x0008(v1)             ## 8011A5D8
lbl_80800D4C:
	bnel    v0, $zero, lbl_80800D60    
	ori     a0, $zero, 0xFFF0          ## a0 = 0000FFF0
	beq     $zero, $zero, lbl_80800E30 
	sw      a3, 0x0008(v1)             ## 8011A5D8
	ori     a0, $zero, 0xFFF0          ## a0 = 0000FFF0
lbl_80800D60:
	bnel    a0, v0, lbl_80800D74       
	ori     a1, $zero, 0xFFF1          ## a1 = 0000FFF1
	beq     $zero, $zero, lbl_80800E30 
	sw      $zero, 0x0008(v1)          ## 8011A5D8
	ori     a1, $zero, 0xFFF1          ## a1 = 0000FFF1
lbl_80800D74:
	bnel    a1, v0, lbl_80800D88       
	ori     a0, $zero, 0xFFF2          ## a0 = 0000FFF2
	beq     $zero, $zero, lbl_80800E30 
	sw      a0, 0x0008(v1)             ## 8011A5D8
	ori     a0, $zero, 0xFFF2          ## a0 = 0000FFF2
lbl_80800D88:
	bnel    a0, v0, lbl_80800D9C       
	ori     a1, $zero, 0xFFF3          ## a1 = 0000FFF3
	beq     $zero, $zero, lbl_80800E30 
	sw      a1, 0x0008(v1)             ## 8011A5D8
	ori     a1, $zero, 0xFFF3          ## a1 = 0000FFF3
lbl_80800D9C:
	bnel    a1, v0, lbl_80800DB0       
	ori     a0, $zero, 0xFFF4          ## a0 = 0000FFF4
	beq     $zero, $zero, lbl_80800E30 
	sw      a0, 0x0008(v1)             ## 8011A5D8
	ori     a0, $zero, 0xFFF4          ## a0 = 0000FFF4
lbl_80800DB0:
	bnel    a0, v0, lbl_80800DC4       
	ori     a1, $zero, 0xFFF5          ## a1 = 0000FFF5
	beq     $zero, $zero, lbl_80800E30 
	sw      a1, 0x0008(v1)             ## 8011A5D8
	ori     a1, $zero, 0xFFF5          ## a1 = 0000FFF5
lbl_80800DC4:
	bnel    a1, v0, lbl_80800DD8       
	ori     a0, $zero, 0xFFF6          ## a0 = 0000FFF6
	beq     $zero, $zero, lbl_80800E30 
	sw      a0, 0x0008(v1)             ## 8011A5D8
	ori     a0, $zero, 0xFFF6          ## a0 = 0000FFF6
lbl_80800DD8:
	bnel    a0, v0, lbl_80800DEC       
	ori     a1, $zero, 0xFFF7          ## a1 = 0000FFF7
	beq     $zero, $zero, lbl_80800E30 
	sw      a1, 0x0008(v1)             ## 8011A5D8
	ori     a1, $zero, 0xFFF7          ## a1 = 0000FFF7
lbl_80800DEC:
	bnel    a1, v0, lbl_80800E00       
	ori     a0, $zero, 0xFFF8          ## a0 = 0000FFF8
	beq     $zero, $zero, lbl_80800E30 
	sw      a0, 0x0008(v1)             ## 8011A5D8
	ori     a0, $zero, 0xFFF8          ## a0 = 0000FFF8
lbl_80800E00:
	bnel    a0, v0, lbl_80800E14       
	ori     a1, $zero, 0xFFF9          ## a1 = 0000FFF9
	beq     $zero, $zero, lbl_80800E30 
	sw      a1, 0x0008(v1)             ## 8011A5D8
	ori     a1, $zero, 0xFFF9          ## a1 = 0000FFF9
lbl_80800E14:
	bne     a1, v0, lbl_80800E24       
	ori     $at, $zero, 0xFFFA         ## $at = 0000FFFA
	beq     $zero, $zero, lbl_80800E30 
	sw      a0, 0x0008(v1)             ## 8011A5D8
lbl_80800E24:
	bnel    v0, $at, lbl_80800E34      
	lw      t4, 0x0008(v1)             ## 8011A5D8
	sw      a1, 0x0008(v1)             ## 8011A5D8
lbl_80800E30:
	lw      t4, 0x0008(v1)             ## 8011A5D8
lbl_80800E34:
	sw      $zero, 0x0010(v1)          ## 8011A5E0
	bnel    t4, $zero, lbl_80800E48    
	lhu     v0, 0x000C(t1)             ## 0000000C
	sw      t2, 0x0010(v1)             ## 8011A5E0
	lhu     v0, 0x000C(t1)             ## 0000000C
lbl_80800E48:
	addiu   $at, $zero, 0x0008         ## $at = 00000008
	andi    t5, v0, 0x0008             ## t5 = 00000000
	bnel    t5, $at, lbl_80800E6C      
	andi    t8, v0, 0x0004             ## t8 = 00000004
	lw      t6, 0x0208(s0)             ## 00000208
	addiu   t7, t6, 0xFFFF             ## t7 = FFFFFFFF
	sw      t7, 0x0208(s0)             ## 00000208
	lhu     v0, 0x000C(t1)             ## 0000000C
	andi    t8, v0, 0x0004             ## t8 = 00000004
lbl_80800E6C:
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	bnel    t8, $at, lbl_80800E8C      
	andi    t4, v0, 0x0800             ## t4 = 00000000
	lw      t3, 0x0208(s0)             ## 00000208
	addiu   t9, t3, 0x0001             ## t9 = 00000001
	sw      t9, 0x0208(s0)             ## 00000208
	lhu     v0, 0x000C(t1)             ## 0000000C
	andi    t4, v0, 0x0800             ## t4 = 00000000
lbl_80800E8C:
	addiu   $at, $zero, 0x0800         ## $at = 00000800
	bnel    t4, $at, lbl_80800F0C      
	lhu     t4, 0x0000(t1)             ## 00000000
	lw      t5, 0x022C(s0)             ## 0000022C
	lui     t8, 0x8010                 ## t8 = 80100000
	addiu   t7, $zero, 0x0014          ## t7 = 00000014
	bne     t2, t5, lbl_80800EB0       
	addiu   t8, t8, 0x43A8             ## t8 = 801043A8
	sw      $zero, 0x0224(s0)          ## 00000224
lbl_80800EB0:
	lw      t6, 0x0224(s0)             ## 00000224
	bnel    t6, $zero, lbl_80800F0C    
	lhu     t4, 0x0000(t1)             ## 00000000
	lui     a3, 0x8010                 ## a3 = 80100000
	sw      t7, 0x0224(s0)             ## 00000224
	sw      t2, 0x022C(s0)             ## 0000022C
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      a3, 0x0010($sp)            
	sw      t1, 0x002C($sp)            
	sw      t8, 0x0014($sp)            
	addiu   a0, $zero, 0x1800          ## a0 = 00001800
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	lui     t0, 0x8012                 ## t0 = 80120000
	addiu   t0, t0, 0xBA00             ## t0 = 8011BA00
	lw      t3, 0x0000(t0)             ## 8011BA00
	lw      t1, 0x002C($sp)            
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	lh      t9, 0x0110(t3)             ## 00000110
	sw      t9, 0x0220(s0)             ## 00000220
	lhu     t4, 0x0000(t1)             ## 00000000
lbl_80800F0C:
	addiu   $at, $zero, 0x0800         ## $at = 00000800
	andi    t5, t4, 0x0800             ## t5 = 00000000
	bnel    t5, $at, lbl_80800F80      
	lhu     t4, 0x000C(t1)             ## 0000000C
	lw      t6, 0x0224(s0)             ## 00000224
	lui     t7, 0x8010                 ## t7 = 80100000
	addiu   t7, t7, 0x43A8             ## t7 = 801043A8
	bnel    t6, $zero, lbl_80800F80    
	lhu     t4, 0x000C(t1)             ## 0000000C
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x1800          ## a0 = 00001800
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      t7, 0x0014($sp)            
	jal     func_800C806C              
	sw      t1, 0x002C($sp)            
	lui     t0, 0x8012                 ## t0 = 80120000
	addiu   t0, t0, 0xBA00             ## t0 = 8011BA00
	lw      t8, 0x0000(t0)             ## 8011BA00
	lw      t1, 0x002C($sp)            
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	lh      t3, 0x0110(t8)             ## 00000110
	sll     t9, t3,  2                 
	subu    t9, t9, t3                 
	sw      t9, 0x0220(s0)             ## 00000220
	lhu     t4, 0x000C(t1)             ## 0000000C
lbl_80800F80:
	addiu   $at, $zero, 0x0400         ## $at = 00000400
	andi    t5, t4, 0x0400             ## t5 = 00000000
	bnel    t5, $at, lbl_80801004      
	lhu     t6, 0x0000(t1)             ## 00000000
	lw      t6, 0x0230(s0)             ## 00000230
	lui     t3, 0x8010                 ## t3 = 80100000
	addiu   t8, $zero, 0x0014          ## t8 = 00000014
	bne     t2, t6, lbl_80800FA8       
	addiu   t3, t3, 0x43A8             ## t3 = 801043A8
	sw      $zero, 0x0228(s0)          ## 00000228
lbl_80800FA8:
	lw      t7, 0x0228(s0)             ## 00000228
	bnel    t7, $zero, lbl_80801004    
	lhu     t6, 0x0000(t1)             ## 00000000
	lui     a3, 0x8010                 ## a3 = 80100000
	sw      t8, 0x0228(s0)             ## 00000228
	sw      t2, 0x0230(s0)             ## 00000230
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      a3, 0x0010($sp)            
	sw      t1, 0x002C($sp)            
	sw      t3, 0x0014($sp)            
	addiu   a0, $zero, 0x1800          ## a0 = 00001800
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	lui     t0, 0x8012                 ## t0 = 80120000
	addiu   t0, t0, 0xBA00             ## t0 = 8011BA00
	lw      t9, 0x0000(t0)             ## 8011BA00
	lw      t1, 0x002C($sp)            
	lh      t4, 0x0110(t9)             ## 00000110
	subu    t5, $zero, t4              
	sw      t5, 0x0220(s0)             ## 00000220
	lhu     t6, 0x0000(t1)             ## 00000000
lbl_80801004:
	addiu   $at, $zero, 0x0400         ## $at = 00000400
	andi    t7, t6, 0x0400             ## t7 = 00000000
	bnel    t7, $at, lbl_80801078      
	lhu     v0, 0x000C(t1)             ## 0000000C
	lw      t8, 0x0228(s0)             ## 00000228
	lui     t3, 0x8010                 ## t3 = 80100000
	addiu   t3, t3, 0x43A8             ## t3 = 801043A8
	bnel    t8, $zero, lbl_80801078    
	lhu     v0, 0x000C(t1)             ## 0000000C
	lui     a3, 0x8010                 ## a3 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x1800          ## a0 = 00001800
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      t3, 0x0014($sp)            
	jal     func_800C806C              
	sw      t1, 0x002C($sp)            
	lui     t0, 0x8012                 ## t0 = 80120000
	addiu   t0, t0, 0xBA00             ## t0 = 8011BA00
	lw      t9, 0x0000(t0)             ## 8011BA00
	lw      t1, 0x002C($sp)            
	lh      t4, 0x0110(t9)             ## 00000110
	subu    t5, $zero, t4              
	sll     t6, t5,  2                 
	subu    t6, t6, t5                 
	sw      t6, 0x0220(s0)             ## 00000220
	lhu     v0, 0x000C(t1)             ## 0000000C
lbl_80801078:
	addiu   v1, $zero, 0x0200          ## v1 = 00000200
	lui     t4, 0x8010                 ## t4 = 80100000
	andi    t7, v0, 0x0200             ## t7 = 00000000
	beq     v1, t7, lbl_8080109C       
	addiu   t4, t4, 0x43A8             ## t4 = 801043A8
	lhu     t8, 0x0000(t1)             ## 00000000
	andi    t3, t8, 0x0200             ## t3 = 00000000
	bnel    v1, t3, lbl_808010E8       
	addiu   v1, $zero, 0x0100          ## v1 = 00000100
lbl_8080109C:
	lui     t9, 0x8010                 ## t9 = 80100000
	addiu   t9, t9, 0x43A0             ## t9 = 801043A0
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	or      a3, t9, $zero              ## a3 = 801043A0
	sw      t9, 0x0010($sp)            
	addiu   a0, $zero, 0x1800          ## a0 = 00001800
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	sw      t4, 0x0014($sp)            
	jal     func_800C806C              
	sw      t1, 0x002C($sp)            
	lui     t0, 0x8012                 ## t0 = 80120000
	addiu   t0, t0, 0xBA00             ## t0 = 8011BA00
	lw      t5, 0x0000(t0)             ## 8011BA00
	lw      t1, 0x002C($sp)            
	lh      t6, 0x0110(t5)             ## 00000110
	sw      t6, 0x0220(s0)             ## 00000220
	lhu     v0, 0x000C(t1)             ## 0000000C
	addiu   v1, $zero, 0x0100          ## v1 = 00000100
lbl_808010E8:
	andi    t7, v0, 0x0100             ## t7 = 00000000
	beq     v1, t7, lbl_80801104       
	lui     t4, 0x8010                 ## t4 = 80100000
	lhu     t8, 0x0000(t1)             ## 00000000
	andi    t3, t8, 0x0100             ## t3 = 00000000
	bnel    v1, t3, lbl_8080114C       
	lhu     t8, 0x0020(s0)             ## 00000020
lbl_80801104:
	lui     t9, 0x8010                 ## t9 = 80100000
	addiu   t9, t9, 0x43A0             ## t9 = 801043A0
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   t4, t4, 0x43A8             ## t4 = 801043A8
	sw      t4, 0x0014($sp)            
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	or      a3, t9, $zero              ## a3 = 801043A0
	sw      t9, 0x0010($sp)            
	addiu   a0, $zero, 0x1800          ## a0 = 00001800
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	lui     t0, 0x8012                 ## t0 = 80120000
	addiu   t0, t0, 0xBA00             ## t0 = 8011BA00
	lw      t5, 0x0000(t0)             ## 8011BA00
	lh      t6, 0x0110(t5)             ## 00000110
	subu    t7, $zero, t6              
	sw      t7, 0x0220(s0)             ## 00000220
	lhu     t8, 0x0020(s0)             ## 00000020
lbl_8080114C:
	lui     t0, 0x8012                 ## t0 = 80120000
	addiu   $at, $zero, 0x0020         ## $at = 00000020
	andi    t3, t8, 0x0020             ## t3 = 00000000
	bne     t3, $at, lbl_80801194      
	addiu   t0, t0, 0xBA00             ## t0 = 8011BA00
	lw      t9, 0x01DC(s0)             ## 000001DC
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	addiu   t4, t9, 0x0001             ## t4 = 00000001
	addiu   t6, t4, 0x0007             ## t6 = 00000008
	div     $zero, t6, $at             
	mfhi    t8                         
	sw      t4, 0x01DC(s0)             ## 000001DC
	sll     t3, t8,  2                 
	sw      t8, 0x01DC(s0)             ## 000001DC
	addu    t9, s0, t3                 
	lw      v0, 0x01E0(t9)             ## 000001E0
	sw      v0, 0x020C(s0)             ## 0000020C
	sw      v0, 0x01D8(s0)             ## 000001D8
lbl_80801194:
	lw      t4, 0x021C(s0)             ## 0000021C
	lw      t5, 0x0220(s0)             ## 00000220
	addu    t6, t4, t5                 
	slti    $at, t6, 0xFFF9            
	sw      t6, 0x021C(s0)             ## 0000021C
	beq     $at, $zero, lbl_80801284   
	or      t7, t6, $zero              ## t7 = 00000008
	lw      v0, 0x01D0(s0)             ## 000001D0
	lw      t8, 0x01D8(s0)             ## 000001D8
	lw      v1, 0x020C(s0)             ## 0000020C
	sw      $zero, 0x0220(s0)          ## 00000220
	addiu   t3, t8, 0x0001             ## t3 = 00000001
	addu    t4, t3, v0                 
	div     $zero, t4, v0              
	addu    t6, v1, v0                 
	addiu   t7, t6, 0x0013             ## t7 = 0000001B
	mfhi    t5                         
	sw      t3, 0x01D8(s0)             ## 000001D8
	sw      t5, 0x01D8(s0)             ## 000001D8
	div     $zero, t7, v0              
	or      t9, t3, $zero              ## t9 = 00000001
	lw      t3, 0x01D8(s0)             ## 000001D8
	mfhi    t8                         
	sw      $zero, 0x021C(s0)          ## 0000021C
	bne     v0, $zero, lbl_80801200    
	nop
	break	## 0x01C00
lbl_80801200:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     v0, $at, lbl_80801218      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t4, $at, lbl_80801218      
	nop
	break	## 0x01800
lbl_80801218:
	bne     v0, $zero, lbl_80801224    
	nop
	break	## 0x01C00
lbl_80801224:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     v0, $at, lbl_8080123C      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t7, $at, lbl_8080123C      
	nop
	break	## 0x01800
lbl_8080123C:
	bnel    t8, t3, lbl_80801288       
	lw      t7, 0x021C(s0)             ## 0000021C
	addiu   t9, v1, 0x0001             ## t9 = 00000001
	addu    t5, t9, v0                 
	div     $zero, t5, v0              
	mfhi    t6                         
	sw      t9, 0x020C(s0)             ## 0000020C
	sw      t6, 0x020C(s0)             ## 0000020C
	or      t4, t9, $zero              ## t4 = 00000001
	bne     v0, $zero, lbl_8080126C    
	nop
	break	## 0x01C00
lbl_8080126C:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     v0, $at, lbl_80801284      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t5, $at, lbl_80801284      
	nop
	break	## 0x01800
lbl_80801284:
	lw      t7, 0x021C(s0)             ## 0000021C
lbl_80801288:
	lw      a0, 0x01D8(s0)             ## 000001D8
	lw      v1, 0x020C(s0)             ## 0000020C
	slti    $at, t7, 0x0008            
	bnel    $at, $zero, lbl_808013C0   
	lw      v0, 0x01D0(s0)             ## 000001D0
	sw      $zero, 0x0220(s0)          ## 00000220
	bne     v1, a0, lbl_808012F4       
	sw      $zero, 0x021C(s0)          ## 0000021C
	lw      v0, 0x01D0(s0)             ## 000001D0
	addiu   t8, v1, 0xFFFE             ## t8 = FFFFFFFE
	sw      t8, 0x020C(s0)             ## 0000020C
	addu    t9, t8, v0                 
	div     $zero, t9, v0              
	mfhi    t4                         
	sw      t4, 0x020C(s0)             ## 0000020C
	or      v1, t4, $zero              ## v1 = 00000001
	or      t3, t8, $zero              ## t3 = FFFFFFFE
	lw      a0, 0x01D8(s0)             ## 000001D8
	bne     v0, $zero, lbl_808012DC    
	nop
	break	## 0x01C00
lbl_808012DC:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     v0, $at, lbl_808012F4      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t9, $at, lbl_808012F4      
	nop
	break	## 0x01800
lbl_808012F4:
	lw      v0, 0x01D0(s0)             ## 000001D0
	addiu   t5, a0, 0xFFFF             ## t5 = FFFFFFFF
	sw      t5, 0x01D8(s0)             ## 000001D8
	addu    t7, t5, v0                 
	div     $zero, t7, v0              
	addu    t3, v1, v0                 
	mfhi    t8                         
	or      a0, t8, $zero              ## a0 = FFFFFFFE
	sw      t8, 0x01D8(s0)             ## 000001D8
	div     $zero, t3, v0              
	mfhi    t9                         
	or      t6, t5, $zero              ## t6 = FFFFFFFF
	bne     v0, $zero, lbl_80801330    
	nop
	break	## 0x01C00
lbl_80801330:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     v0, $at, lbl_80801348      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t7, $at, lbl_80801348      
	nop
	break	## 0x01800
lbl_80801348:
	bne     v0, $zero, lbl_80801354    
	nop
	break	## 0x01C00
lbl_80801354:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     v0, $at, lbl_8080136C      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t3, $at, lbl_8080136C      
	nop
	break	## 0x01800
lbl_8080136C:
	bnel    t9, a0, lbl_808013C0       
	lw      v0, 0x01D0(s0)             ## 000001D0
	addiu   t4, v1, 0xFFFF             ## t4 = 00000000
	addu    t6, t4, v0                 
	div     $zero, t6, v0              
	mfhi    t7                         
	sw      t4, 0x020C(s0)             ## 0000020C
	sw      t7, 0x020C(s0)             ## 0000020C
	or      v1, t7, $zero              ## v1 = 0000001B
	or      t5, t4, $zero              ## t5 = 00000000
	bne     v0, $zero, lbl_808013A0    
	nop
	break	## 0x01C00
lbl_808013A0:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     v0, $at, lbl_808013B8      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t6, $at, lbl_808013B8      
	nop
	break	## 0x01800
lbl_808013B8:
	lw      a0, 0x01D8(s0)             ## 000001D8
	lw      v0, 0x01D0(s0)             ## 000001D0
lbl_808013C0:
	addu    t8, a0, v0                 
	div     $zero, t8, v0              
	mfhi    t3                         
	addu    t9, v1, v0                 
	sw      t3, 0x01D8(s0)             ## 000001D8
	div     $zero, t9, v0              
	mfhi    t4                         
	sw      t4, 0x020C(s0)             ## 0000020C
	lw      t6, 0x0000(t0)             ## 8011BA00
	lw      t5, 0x01D8(s0)             ## 000001D8
	bne     v0, $zero, lbl_808013F4    
	nop
	break	## 0x01C00
lbl_808013F4:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     v0, $at, lbl_8080140C      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t8, $at, lbl_8080140C      
	nop
	break	## 0x01800
lbl_8080140C:
	sh      t5, 0x1434(t6)             ## 00001433
	lw      t8, 0x0000(t0)             ## 8011BA00
	lw      t7, 0x020C(s0)             ## 0000020C
	bne     v0, $zero, lbl_80801424    
	nop
	break	## 0x01C00
lbl_80801424:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     v0, $at, lbl_8080143C      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t9, $at, lbl_8080143C      
	nop
	break	## 0x01800
lbl_8080143C:
	sh      t7, 0x1436(t8)             ## 00001434
	lw      t9, 0x0000(t0)             ## 8011BA00
	lw      t3, 0x01DC(s0)             ## 000001DC
	sh      t3, 0x1438(t9)             ## 00001439
	lw      a1, 0x0224(s0)             ## 00000224
	beq     a1, $zero, lbl_80801460    
	addiu   t4, a1, 0xFFFF             ## t4 = FFFFFFFF
	sw      t4, 0x0224(s0)             ## 00000224
	or      a1, t4, $zero              ## a1 = FFFFFFFF
lbl_80801460:
	bnel    a1, $zero, lbl_80801470    
	lw      v0, 0x0228(s0)             ## 00000228
	sw      $zero, 0x022C(s0)          ## 0000022C
	lw      v0, 0x0228(s0)             ## 00000228
lbl_80801470:
	beq     v0, $zero, lbl_80801480    
	addiu   t5, v0, 0xFFFF             ## t5 = FFFFFFFF
	sw      t5, 0x0228(s0)             ## 00000228
	or      v0, t5, $zero              ## v0 = FFFFFFFF
lbl_80801480:
	bnel    v0, $zero, lbl_80801490    
	lw      $ra, 0x0024($sp)           
	sw      $zero, 0x0230(s0)          ## 00000230
	lw      $ra, 0x0024($sp)           
lbl_80801490:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_808014A0:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s3, 0x0028($sp)            
	sw      s2, 0x0024($sp)            
	or      s2, a1, $zero              ## s2 = 00000000
	or      s3, a0, $zero              ## s3 = 00000000
	sw      $ra, 0x003C($sp)           
	sw      s7, 0x0038($sp)            
	sw      s6, 0x0034($sp)            
	sw      s5, 0x0030($sp)            
	sw      s4, 0x002C($sp)            
	sw      s1, 0x0020($sp)            
	sw      s0, 0x001C($sp)            
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	sw      t6, 0x0010($sp)            
	or      a0, s2, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x00FF          ## a1 = 000000FF
	addiu   a2, $zero, 0x009B          ## a2 = 0000009B
	jal     func_800CBE58              
	addiu   a3, $zero, 0x0096          ## a3 = 00000096
	or      a0, s2, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x000C          ## a1 = 0000000C
	jal     func_800CBEC8              
	addiu   a2, $zero, 0x0002          ## a2 = 00000002
	lui     a1, %hi(var_80802F74)      ## a1 = 80800000
	addiu   a1, a1, %lo(var_80802F74)  ## a1 = 80802F74
	jal     func_800CC588              
	or      a0, s2, $zero              ## a0 = 00000000
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	sw      t7, 0x0010($sp)            
	or      a0, s2, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x00FF          ## a1 = 000000FF
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	jal     func_800CBE58              
	addiu   a3, $zero, 0x00FF          ## a3 = 000000FF
	lui     s6, %hi(var_80802F94)      ## s6 = 80800000
	lui     s5, %hi(var_80802F88)      ## s5 = 80800000
	addiu   s5, s5, %lo(var_80802F88)  ## s5 = 80802F88
	addiu   s6, s6, %lo(var_80802F94)  ## s6 = 80802F94
	or      s0, $zero, $zero           ## s0 = 00000000
	addiu   s7, $zero, 0x0014          ## s7 = 00000014
	addiu   s4, $zero, 0x000C          ## s4 = 0000000C
	or      a0, s2, $zero              ## a0 = 00000000
lbl_80801548:
	addiu   a1, $zero, 0x0009          ## a1 = 00000009
	jal     func_800CBEC8              
	addiu   a2, s0, 0x0004             ## a2 = 00000004
	lw      t8, 0x020C(s3)             ## 0000020C
	lw      v0, 0x01D0(s3)             ## 000001D0
	lw      t1, 0x01D8(s3)             ## 000001D8
	addu    t9, t8, s0                 
	addu    t0, t9, v0                 
	div     $zero, t0, v0              
	mfhi    s1                         
	or      a0, s2, $zero              ## a0 = 00000000
	bne     v0, $zero, lbl_80801580    
	nop
	break	## 0x01C00
lbl_80801580:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     v0, $at, lbl_80801598      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t0, $at, lbl_80801598      
	nop
	break	## 0x01800
lbl_80801598:
	addiu   a1, $zero, 0x00C8          ## a1 = 000000C8
	bne     s1, t1, lbl_808015C8       
	addiu   a2, $zero, 0x00C8          ## a2 = 000000C8
	addiu   t2, $zero, 0x00FF          ## t2 = 000000FF
	sw      t2, 0x0010($sp)            
	or      a0, s2, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x00FF          ## a1 = 000000FF
	addiu   a2, $zero, 0x0014          ## a2 = 00000014
	jal     func_800CBE58              
	addiu   a3, $zero, 0x0014          ## a3 = 00000014
	beq     $zero, $zero, lbl_808015D8 
	nop
lbl_808015C8:
	addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
	sw      t3, 0x0010($sp)            
	jal     func_800CBE58              
	addiu   a3, $zero, 0x0037          ## a3 = 00000037
lbl_808015D8:
	multu   s1, s4                     
	lw      t4, 0x01D4(s3)             ## 000001D4
	or      a0, s2, $zero              ## a0 = 00000000
	mflo    t5                         
	addu    t6, t4, t5                 
	lw      a2, 0x0000(t6)             ## 00000000
	bne     a2, $zero, lbl_808015FC    
	nop
	or      a2, s5, $zero              ## a2 = 80802F88
lbl_808015FC:
	jal     func_800CC588              
	or      a1, s6, $zero              ## a1 = 80802F94
	addiu   s0, s0, 0x0001             ## s0 = 00000001
	bnel    s0, s7, lbl_80801548       
	or      a0, s2, $zero              ## a0 = 00000000
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	sw      t7, 0x0010($sp)            
	or      a0, s2, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x009B          ## a1 = 0000009B
	addiu   a2, $zero, 0x0037          ## a2 = 00000037
	jal     func_800CBE58              
	addiu   a3, $zero, 0x0096          ## a3 = 00000096
	or      a0, s2, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x0014          ## a1 = 00000014
	jal     func_800CBEC8              
	addiu   a2, $zero, 0x001A          ## a2 = 0000001A
	lui     a1, %hi(var_80802F98)      ## a1 = 80800000
	addiu   a1, a1, %lo(var_80802F98)  ## a1 = 80802F98
	or      a0, s2, $zero              ## a0 = 00000000
	jal     func_800CC588              
	lw      a2, 0x0208(s3)             ## 00000208
	lw      $ra, 0x003C($sp)           
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	lw      s2, 0x0024($sp)            
	lw      s3, 0x0028($sp)            
	lw      s4, 0x002C($sp)            
	lw      s5, 0x0030($sp)            
	lw      s6, 0x0034($sp)            
	lw      s7, 0x0038($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_8080167C:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0020($sp)            
	sw      a1, 0x0024($sp)            
	lw      a0, 0x0024($sp)            
	addiu   a1, $zero, 0x000A          ## a1 = 0000000A
	jal     func_800CBEC8              
	addiu   a2, $zero, 0x000F          ## a2 = 0000000F
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	sw      t6, 0x0010($sp)            
	lw      a0, 0x0024($sp)            
	addiu   a1, $zero, 0x00FF          ## a1 = 000000FF
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	jal     func_800CBE58              
	addiu   a3, $zero, 0x00FF          ## a3 = 000000FF
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x4140                ## $at = 41400000
	mtc1    $at, $f4                   ## $f4 = 12.00
	lui     a2, %hi(var_80802318)      ## a2 = 80800000
	lui     a1, %hi(var_808030E8)      ## a1 = 80800000
	mul.s   $f6, $f0, $f4              
	addiu   a1, a1, %lo(var_808030E8)  ## a1 = 808030E8
	lw      a0, 0x0024($sp)            
	trunc.w.s $f8, $f6                   
	mfc1    t8, $f8                    
	nop
	sll     t9, t8,  2                 
	addu    a2, a2, t9                 
	jal     func_800CC588              
	lw      a2, %lo(var_80802318)(a2)  
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80801708:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0020($sp)            
	sw      a1, 0x0024($sp)            
	sw      a2, 0x0028($sp)            
	lw      a0, 0x0024($sp)            
	addiu   a1, $zero, 0x0004          ## a1 = 00000004
	jal     func_800CBEC8              
	addiu   a2, $zero, 0x001A          ## a2 = 0000001A
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	sw      t6, 0x0010($sp)            
	lw      a0, 0x0024($sp)            
	addiu   a1, $zero, 0x00FF          ## a1 = 000000FF
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	jal     func_800CBE58              
	addiu   a3, $zero, 0x0037          ## a3 = 00000037
	lw      t7, 0x0028($sp)            
	lui     a2, %hi(var_80802348)      ## a2 = 80800000
	lui     a1, %hi(var_8080310C)      ## a1 = 80800000
	sll     t8, t7,  2                 
	addu    a2, a2, t8                 
	lw      a2, %lo(var_80802348)(a2)  
	addiu   a1, a1, %lo(var_8080310C)  ## a1 = 8080310C
	jal     func_800CC588              
	lw      a0, 0x0024($sp)            
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8080177C:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	sw      a2, 0x0030($sp)            
	lw      a0, 0x002C($sp)            
	addiu   a1, $zero, 0x0004          ## a1 = 00000004
	jal     func_800CBEC8              
	addiu   a2, $zero, 0x0019          ## a2 = 00000019
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	sw      t6, 0x0010($sp)            
	lw      a0, 0x002C($sp)            
	addiu   a1, $zero, 0x00FF          ## a1 = 000000FF
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	jal     func_800CBE58              
	addiu   a3, $zero, 0x0037          ## a3 = 00000037
	lhu     v0, 0x0032($sp)            
	ori     $at, $zero, 0x8001         ## $at = 00008001
	slt     $at, v0, $at               
	bne     $at, $zero, lbl_808017F8   
	lui     $at, 0xFFFF                ## $at = FFFF0000
	ori     $at, $at, 0x0010           ## $at = FFFF0010
	addu    t7, v0, $at                
	sltiu   $at, t7, 0x000B            
	beq     $at, $zero, lbl_80801904   
	sll     t7, t7,  2                 
	lui     $at, %hi(var_808031CC)     ## $at = 80800000
	addu    $at, $at, t7               
	lw      t7, %lo(var_808031CC)($at) 
	jr      t7                         
	nop
lbl_808017F8:
	beq     v0, $zero, lbl_80801814    
	lui     t8, %hi(var_80803114)      ## t8 = 80800000
	ori     $at, $zero, 0x8000         ## $at = 00008000
	beq     v0, $at, lbl_8080182C      
	ori     t9, $zero, 0x8000          ## t9 = 00008000
	beq     $zero, $zero, lbl_80801904 
	nop
lbl_80801814:
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	addiu   t8, t8, %lo(var_80803114)  ## t8 = 80803114
	sw      t8, 0x0024($sp)            
	beq     $zero, $zero, lbl_80801904 
	sh      $zero, 0x000C(v0)          ## 8011A5DC
lbl_8080182C:
	lui     v0, 0x8012                 ## v0 = 80120000
	lui     t0, %hi(var_80803128)      ## t0 = 80800000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	addiu   t0, t0, %lo(var_80803128)  ## t0 = 80803128
	sw      t0, 0x0024($sp)            
	beq     $zero, $zero, lbl_80801904 
	sh      t9, 0x000C(v0)             ## 8011A5DC
var_80801848:
	lui     v0, 0x8012                 ## v0 = 80120000
	lui     t2, %hi(var_8080313C)      ## t2 = 80800000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	addiu   t2, t2, %lo(var_8080313C)  ## t2 = 8080313C
	ori     t1, $zero, 0x8000          ## t1 = 00008000
	sh      t1, 0x000C(v0)             ## 8011A5DC
	beq     $zero, $zero, lbl_80801904 
	sw      t2, 0x0024($sp)            
var_80801868:
	lui     t3, %hi(var_80803148)      ## t3 = 80800000
	addiu   t3, t3, %lo(var_80803148)  ## t3 = 80803148
	beq     $zero, $zero, lbl_80801904 
	sw      t3, 0x0024($sp)            
var_80801878:
	lui     t4, %hi(var_80803154)      ## t4 = 80800000
	addiu   t4, t4, %lo(var_80803154)  ## t4 = 80803154
	beq     $zero, $zero, lbl_80801904 
	sw      t4, 0x0024($sp)            
var_80801888:
	lui     t5, %hi(var_80803160)      ## t5 = 80800000
	addiu   t5, t5, %lo(var_80803160)  ## t5 = 80803160
	beq     $zero, $zero, lbl_80801904 
	sw      t5, 0x0024($sp)            
var_80801898:
	lui     t6, %hi(var_8080316C)      ## t6 = 80800000
	addiu   t6, t6, %lo(var_8080316C)  ## t6 = 8080316C
	beq     $zero, $zero, lbl_80801904 
	sw      t6, 0x0024($sp)            
var_808018A8:
	lui     t7, %hi(var_80803178)      ## t7 = 80800000
	addiu   t7, t7, %lo(var_80803178)  ## t7 = 80803178
	beq     $zero, $zero, lbl_80801904 
	sw      t7, 0x0024($sp)            
var_808018B8:
	lui     t8, %hi(var_80803184)      ## t8 = 80800000
	addiu   t8, t8, %lo(var_80803184)  ## t8 = 80803184
	beq     $zero, $zero, lbl_80801904 
	sw      t8, 0x0024($sp)            
var_808018C8:
	lui     t9, %hi(var_80803190)      ## t9 = 80800000
	addiu   t9, t9, %lo(var_80803190)  ## t9 = 80803190
	beq     $zero, $zero, lbl_80801904 
	sw      t9, 0x0024($sp)            
var_808018D8:
	lui     t0, %hi(var_8080319C)      ## t0 = 80800000
	addiu   t0, t0, %lo(var_8080319C)  ## t0 = 8080319C
	beq     $zero, $zero, lbl_80801904 
	sw      t0, 0x0024($sp)            
var_808018E8:
	lui     t1, %hi(var_808031A8)      ## t1 = 80800000
	addiu   t1, t1, %lo(var_808031A8)  ## t1 = 808031A8
	beq     $zero, $zero, lbl_80801904 
	sw      t1, 0x0024($sp)            
var_808018F8:
	lui     t2, %hi(var_808031B4)      ## t2 = 80800000
	addiu   t2, t2, %lo(var_808031B4)  ## t2 = 808031B4
	sw      t2, 0x0024($sp)            
lbl_80801904:
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	lhu     t3, 0x000C(v0)             ## 8011A5DC
	lui     a1, %hi(var_808031C0)      ## a1 = 80800000
	addiu   a1, a1, %lo(var_808031C0)  ## a1 = 808031C0
	lw      a0, 0x002C($sp)            
	lw      a2, 0x0024($sp)            
	jal     func_800CC588              
	sh      t3, 0x141A(v0)             ## 8011B9EA
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80801938:
	addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
	sw      s8, 0x0030($sp)            
	sw      s2, 0x002C($sp)            
	or      s2, a0, $zero              ## s2 = 00000000
	or      s8, $sp, $zero             ## s8 = FFFFFF98
	sw      $ra, 0x0034($sp)           
	sw      s1, 0x0028($sp)            
	sw      s0, 0x0024($sp)            
	lw      s1, 0x0000(s2)             ## 00000000
	lw      v1, 0x02C0(s1)             ## 000002C0
	lui     t7, 0xDB06                 ## t7 = DB060000
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s1)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t7, 0x0000(v1)             ## 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	or      a2, $zero, $zero           ## a2 = 00000000
	jal     func_8007EE5C              
	or      a3, $zero, $zero           ## a3 = 00000000
	addiu   t8, $zero, 0x00F0          ## t8 = 000000F0
	addiu   t9, $zero, 0x0140          ## t9 = 00000140
	addiu   s0, s2, 0x00A8             ## s0 = 000000A8
	or      a0, s0, $zero              ## a0 = 000000A8
	sw      t9, 0x0050(s8)             ## FFFFFFE8
	sw      t8, 0x0048(s8)             ## FFFFFFE0
	sw      $zero, 0x0044(s8)          ## FFFFFFDC
	sw      $zero, 0x004C(s8)          ## FFFFFFE4
	jal     func_80091AE0              
	addiu   a1, s8, 0x0044             ## a1 = FFFFFFDC
	or      a0, s0, $zero              ## a0 = 000000A8
	jal     func_80091F94              
	addiu   a1, $zero, 0x000F          ## a1 = 0000000F
	jal     func_8007E47C              
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFF68
	addiu   s0, $sp, 0x0010            ## s0 = FFFFFF78
	jal     func_800CC4AC              
	or      a0, s0, $zero              ## a0 = FFFFFF78
	or      a0, s0, $zero              ## a0 = FFFFFF78
	jal     func_800CC508              
	lw      a1, 0x02C0(s1)             ## 000002C0
	or      a0, s2, $zero              ## a0 = 00000000
	jal     func_808014A0              
	or      a1, s0, $zero              ## a1 = FFFFFF78
	lui     a3, 0x8012                 ## a3 = 80120000
	lw      a2, -0x5A2C(a3)            ## 8011A5D4
	or      a0, s2, $zero              ## a0 = 00000000
	jal     func_80801708              
	or      a1, s0, $zero              ## a1 = FFFFFF78
	lui     a3, 0x8012                 ## a3 = 80120000
	lw      a3, -0x5A28(a3)            ## 8011A5D8
	or      a0, s2, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = FFFFFF78
	jal     func_8080177C              
	andi    a2, a3, 0xFFFF             ## a2 = 00000000
	jal     func_800CC550              
	or      a0, s0, $zero              ## a0 = FFFFFF78
	sw      v0, 0x02C0(s1)             ## 000002C0
	jal     func_800CC500              
	or      a0, s0, $zero              ## a0 = FFFFFF78
	lw      $ra, 0x0034(s8)            ## FFFFFFCC
	or      $sp, s8, $zero             ## $sp = FFFFFF98
	lw      s0, 0x0024(s8)             ## FFFFFFBC
	lw      s1, 0x0028(s8)             ## FFFFFFC0
	lw      s2, 0x002C(s8)             ## FFFFFFC4
	lw      s8, 0x0030(s8)             ## FFFFFFC8
	jr      $ra                        
	addiu   $sp, $sp, 0x0068           ## $sp = 00000000


func_80801A4C:
	addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
	sw      s8, 0x0030($sp)            
	or      s8, $sp, $zero             ## s8 = FFFFFFA0
	sw      $ra, 0x0034($sp)           
	sw      s1, 0x002C($sp)            
	sw      s0, 0x0028($sp)            
	sw      a0, 0x0060($sp)            
	lw      t6, 0x0060(s8)             ## 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	or      a2, $zero, $zero           ## a2 = 00000000
	lw      s1, 0x0000(t6)             ## 00000000
	lw      v1, 0x02C0(s1)             ## 000002C0
	lui     t8, 0xDB06                 ## t8 = DB060000
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s1)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t8, 0x0000(v1)             ## 00000000
	jal     func_8007EE5C              
	or      a3, $zero, $zero           ## a3 = 00000000
	lw      s0, 0x0060(s8)             ## 00000000
	addiu   t9, $zero, 0x00F0          ## t9 = 000000F0
	addiu   t0, $zero, 0x0140          ## t0 = 00000140
	addiu   s0, s0, 0x00A8             ## s0 = 000000A8
	or      a0, s0, $zero              ## a0 = 000000A8
	sw      t0, 0x0048(s8)             ## FFFFFFE8
	sw      t9, 0x0040(s8)             ## FFFFFFE0
	sw      $zero, 0x003C(s8)          ## FFFFFFDC
	sw      $zero, 0x0044(s8)          ## FFFFFFE4
	jal     func_80091AE0              
	addiu   a1, s8, 0x003C             ## a1 = FFFFFFDC
	or      a0, s0, $zero              ## a0 = 000000A8
	jal     func_80091F94              
	addiu   a1, $zero, 0x000F          ## a1 = 0000000F
	jal     func_8007E47C              
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFF70
	addiu   s0, $sp, 0x0010            ## s0 = FFFFFF80
	jal     func_800CC4AC              
	or      a0, s0, $zero              ## a0 = FFFFFF80
	or      a0, s0, $zero              ## a0 = FFFFFF80
	jal     func_800CC508              
	lw      a1, 0x02C0(s1)             ## 000002C0
	lw      a0, 0x0060(s8)             ## 00000000
	jal     func_8080167C              
	or      a1, s0, $zero              ## a1 = FFFFFF80
	jal     func_800CC550              
	or      a0, s0, $zero              ## a0 = FFFFFF80
	sw      v0, 0x02C0(s1)             ## 000002C0
	jal     func_800CC500              
	or      a0, s0, $zero              ## a0 = FFFFFF80
	lw      $ra, 0x0034(s8)            ## FFFFFFD4
	or      $sp, s8, $zero             ## $sp = FFFFFFA0
	lw      s0, 0x0028(s8)             ## FFFFFFC8
	lw      s1, 0x002C(s8)             ## FFFFFFCC
	lw      s8, 0x0030(s8)             ## FFFFFFD0
	jr      $ra                        
	addiu   $sp, $sp, 0x0060           ## $sp = 00000000


func_80801B34:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lw      a0, 0x0000(s0)             ## 00000000
	lw      v1, 0x02C0(a0)             ## 000002C0
	lui     t7, 0xDB06                 ## t7 = DB060000
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(a0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t7, 0x0000(v1)             ## 00000000
	or      a2, $zero, $zero           ## a2 = 00000000
	jal     func_8007EE5C              
	or      a3, $zero, $zero           ## a3 = 00000000
	addiu   t8, $zero, 0x00F0          ## t8 = 000000F0
	addiu   t9, $zero, 0x0140          ## t9 = 00000140
	addiu   a0, s0, 0x00A8             ## a0 = 000000A8
	sw      a0, 0x0024($sp)            
	sw      t9, 0x0034($sp)            
	sw      t8, 0x002C($sp)            
	sw      $zero, 0x0028($sp)         
	sw      $zero, 0x0030($sp)         
	jal     func_80091AE0              
	addiu   a1, $sp, 0x0028            ## a1 = FFFFFFE0
	lw      a0, 0x0024($sp)            
	jal     func_80091F94              
	addiu   a1, $zero, 0x000F          ## a1 = 0000000F
	lw      t0, 0x0098(s0)             ## 00000098
	bne     t0, $zero, lbl_80801BC0    
	nop
	jal     func_80801A4C              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80801BCC 
	lw      $ra, 0x001C($sp)           
lbl_80801BC0:
	jal     func_80801938              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x001C($sp)           
lbl_80801BCC:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000
	jr      $ra                        
	nop


func_80801BDC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	jal     func_80800B40              
	lw      a0, 0x0018($sp)            
	jal     func_80801B34              
	lw      a0, 0x0018($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80801C08:
	sw      a0, 0x0000($sp)            
	jr      $ra                        
	nop


func_80801C14:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	lui     t6, %hi(func_80801BDC)     ## t6 = 80800000
	lui     t7, %hi(func_80801C08)     ## t7 = 80800000
	lui     t8, %hi(var_80801D90)      ## t8 = 80800000
	addiu   t6, t6, %lo(func_80801BDC) ## t6 = 80801BDC
	addiu   t7, t7, %lo(func_80801C08) ## t7 = 80801C08
	addiu   t8, t8, %lo(var_80801D90)  ## t8 = 80801D90
	addiu   t9, $zero, 0x0013          ## t9 = 00000013
	addiu   t0, $zero, 0x0025          ## t0 = 00000025
	addiu   t1, $zero, 0x0033          ## t1 = 00000033
	addiu   t2, $zero, 0x003B          ## t2 = 0000003B
	addiu   t3, $zero, 0x0049          ## t3 = 00000049
	addiu   t4, $zero, 0x005B          ## t4 = 0000005B
	addiu   t5, $zero, 0x0076          ## t5 = 00000076
	sw      t6, 0x0004(a3)             ## 00000004
	sw      t7, 0x0008(a3)             ## 00000008
	sw      t8, 0x01D4(a3)             ## 000001D4
	sw      $zero, 0x020C(a3)          ## 0000020C
	sw      $zero, 0x01D8(a3)          ## 000001D8
	sw      $zero, 0x01E0(a3)          ## 000001E0
	sw      t9, 0x01E4(a3)             ## 000001E4
	sw      t0, 0x01E8(a3)             ## 000001E8
	sw      t1, 0x01EC(a3)             ## 000001EC
	sw      t2, 0x01F0(a3)             ## 000001F0
	sw      t3, 0x01F4(a3)             ## 000001F4
	sw      t4, 0x01F8(a3)             ## 000001F8
	sw      $zero, 0x01DC(a3)          ## 000001DC
	sw      $zero, 0x0208(a3)          ## 00000208
	sw      t5, 0x01D0(a3)             ## 000001D0
	lw      a1, 0x0000(a3)             ## 00000000
	sw      a3, 0x0030($sp)            
	jal     func_80091858              
	addiu   a0, a3, 0x00A8             ## a0 = 000000A8
	lw      a3, 0x0030($sp)            
	lui     a0, 0x8012                 ## a0 = 80120000
	addiu   t6, $zero, 0x000A          ## t6 = 0000000A
	addiu   a0, a0, 0xBA00             ## a0 = 8011BA00
	sw      t6, 0x01C8(a3)             ## 000001C8
	sw      $zero, 0x021C(a3)          ## 0000021C
	sw      $zero, 0x0220(a3)          ## 00000220
	sw      $zero, 0x0224(a3)          ## 00000224
	sw      $zero, 0x0228(a3)          ## 00000228
	sw      $zero, 0x022C(a3)          ## 0000022C
	sw      $zero, 0x0230(a3)          ## 00000230
	sw      $zero, 0x0234(a3)          ## 00000234
	lw      v0, 0x0000(a0)             ## 8011BA00
	lui     t3, 0x01A0                 ## t3 = 01A00000
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	lh      v1, 0x1434(v0)             ## 00001434
	addiu   t3, t3, 0xE200             ## t3 = 019FE200
	bltzl   v1, lbl_80801D20           
	sh      t2, 0x0110(v0)             ## 00000110
	lw      t7, 0x01D0(a3)             ## 000001D0
	slt     $at, v1, t7                
	beql    $at, $zero, lbl_80801D20   
	sh      t2, 0x0110(v0)             ## 00000110
	sw      v1, 0x01D8(a3)             ## 000001D8
	lw      t8, 0x0000(a0)             ## 8011BA00
	lh      t9, 0x1436(t8)             ## 00001436
	sw      t9, 0x020C(a3)             ## 0000020C
	lw      t0, 0x0000(a0)             ## 8011BA00
	lh      t1, 0x1438(t0)             ## 00001438
	sw      t1, 0x01DC(a3)             ## 000001DC
	lw      v0, 0x0000(a0)             ## 8011BA00
	sh      t2, 0x0110(v0)             ## 00000110
lbl_80801D20:
	lui     v1, 0x01A0                 ## v1 = 01A00000
	addiu   v1, v1, 0xC000             ## v1 = 019FC000
	subu    a2, t3, v1                 
	or      a1, a2, $zero              ## a1 = 00000000
	sw      a2, 0x001C($sp)            
	sw      v1, 0x0020($sp)            
	addiu   a0, a3, 0x0074             ## a0 = 00000074
	jal     func_800A01B8              
	sw      a3, 0x0030($sp)            
	lw      a3, 0x0030($sp)            
	lw      a2, 0x001C($sp)            
	or      a0, v0, $zero              ## a0 = 00000000
	sw      v0, 0x0238(a3)             ## 00000238
	jal     func_80000DF0              
	lw      a1, 0x0020($sp)            
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	ori     t4, $zero, 0x8000          ## t4 = 00008000
	addiu   t5, $zero, 0x0001          ## t5 = 00000001
	sw      t4, 0x0008(v1)             ## 8011A5D8
	sw      t5, 0x0004(v1)             ## 8011A5D4
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop
	nop

.section .data

var_80801D90: .word var_80802350
.word func_808009E0
.word 0x000000CD
.word var_8080235C
.word func_808009E0
.word 0x000000DB
.word var_80802368
.word func_808009E0
.word 0x000000E4
.word var_80802374
.word func_808009E0
.word 0x000000EA
.word var_80802380
.word func_808009E0
.word 0x000000EE
.word var_8080238C
.word func_808009E0
.word 0x000000FC
.word var_80802398
.word func_808009E0
.word 0x00000102
.word var_808023A4
.word func_808009E0
.word 0x00000108
.word var_808023B0
.word func_808009E0
.word 0x0000010E
.word var_808023BC
.word func_808009E0
.word 0x00000117
.word var_808023C8
.word func_808009E0
.word 0x0000011E
.word var_808023D4
.word func_808009E0
.word 0x00000123
.word var_808023E0
.word func_808009E0
.word 0x00000129
.word var_808023EC
.word func_808009E0
.word 0x00000130
.word var_808023F8
.word func_808009E0
.word 0x00000138
.word var_80802404
.word func_808009E0
.word 0x0000013D
.word var_80802410
.word func_808009E0
.word 0x00000147
.word var_8080241C
.word func_808009E0
.word 0x0000014D
.word var_80802428
.word func_808009E0
.word 0x00000157
.word var_80802434
.word func_808009E0
.word 0x00000053
.word var_80802444
.word func_808009E0
.word 0x0000006B
.word var_80802458
.word func_808009E0
.word 0x0000003B
.word var_80802470
.word func_808009E0
.word 0x0000007A
.word var_8080248C
.word func_808009E0
.word 0x0000031C
.word var_808024A8
.word func_808009E0
.word 0x0000004B
.word var_808024C8
.word func_808009E0
.word 0x0000002D
.word var_808024E0
.word func_808009E0
.word 0x00000315
.word var_80802500
.word func_808009E0
.word 0x0000036D
.word var_80802520
.word func_808009E0
.word 0x00000371
.word var_80802544
.word func_808009E0
.word 0x0000043F
.word var_80802560
.word func_808009E0
.word 0x00000400
.word var_80802578
.word func_808009E0
.word 0x0000045F
.word var_80802588
.word func_808009E0
.word 0x00000507
.word var_808025A8
.word func_808009E0
.word 0x0000004F
.word var_808025D0
.word func_808009E0
.word 0x000005D0
.word var_808025F8
.word func_808009E0
.word 0x0000007E
.word var_8080260C
.word func_808009E0
.word 0x00000072
.word var_80802624
.word func_808009E0
.word 0x00000063
.word var_80802638
.word func_808009E0
.word 0x00000550
.word var_80802658
.word func_808009E0
.word 0x00000033
.word var_80802678
.word func_808009E0
.word 0x000000B1
.word var_8080268C
.word func_808009E0
.word 0x000000AD
.word var_8080269C
.word func_808009E0
.word 0x00000171
.word var_808026B8
.word func_808009E0
.word 0x000000BB
.word var_808026CC
.word func_808009E0
.word 0x000002FD
.word var_808026E8
.word func_808009E0
.word 0x0000043B
.word var_80802700
.word func_808009E0
.word 0x000000C9
.word var_8080272C
.word func_808009E0
.word 0x0000009C
.word var_8080274C
.word func_808009E0
.word 0x00000433
.word var_8080276C
.word func_808009E0
.word 0x00000437
.word var_8080278C
.word func_808009E0
.word 0x000002F9
.word var_8080279C
.word func_808009E0
.word 0x0000030D
.word var_808027B0
.word func_808009E0
.word 0x00000398
.word var_808027D4
.word func_808009E0
.word 0x0000039C
.word var_808027F8
.word func_808009E0
.word 0x00000043
.word var_80802818
.word func_808009E0
.word 0x000003A0
.word var_80802824
.word func_808009E0
.word 0x000000B7
.word var_80802834
.word func_808009E0
.word 0x000000C1
.word var_8080284C
.word func_808009E0
.word 0x0000037C
.word var_80802860
.word func_808009E0
.word 0x00000380
.word var_80802874
.word func_808009E0
.word 0x00000384
.word var_80802890
.word func_808009E0
.word 0x00000388
.word var_808028AC
.word func_808009E0
.word 0x00000390
.word var_808028C8
.word func_808009E0
.word 0x00000530
.word var_808028D8
.word func_808009E0
.word 0x00000008
.word var_808028FC
.word func_808009E0
.word 0x00000000
.word var_80802920
.word func_808009E0
.word 0x0000040F
.word var_8080294C
.word func_808009E0
.word 0x00000004
.word var_80802970
.word func_808009E0
.word 0x0000040B
.word var_8080299C
.word func_808009E0
.word 0x00000028
.word var_808029C4
.word func_808009E0
.word 0x00000301
.word var_808029F0
.word func_808009E0
.word 0x00000169
.word var_80802A08
.word func_808009E0
.word 0x0000000C
.word var_80802A28
.word func_808009E0
.word 0x00000098
.word var_80802A48
.word func_808009E0
.word 0x00000037
.word var_80802A68
.word func_808009E0
.word 0x00000413
.word var_80802A8C
.word func_808009E0
.word 0x00000165
.word var_80802AA0
.word func_808009E0
.word 0x00000305
.word var_80802ABC
.word func_808009E0
.word 0x00000010
.word var_80802AD4
.word func_808009E0
.word 0x00000417
.word var_80802AF4
.word func_808009E0
.word 0x00000082
.word var_80802B1C
.word func_808009E0
.word 0x0000008D
.word var_80802B50
.word func_808009E0
.word 0x000005EC
.word var_80802B7C
.word func_808009E0
.word 0x0000041B
.word var_80802B90
.word func_808009E0
.word 0x0000041F
.word var_80802BAC
.word func_808009E0
.word 0x00000088
.word var_80802BC4
.word func_808009E0
.word 0x0000044F
.word var_80802BD8
.word func_808009E0
.word 0x00000467
.word var_80802BFC
.word func_808009E0
.word 0x00000517
.word var_80802C2C
.word func_808009E0
.word 0x00000179
.word var_80802C4C
.word func_808009E0
.word 0x000001B5
.word var_80802C6C
.word func_808009E0
.word 0x000003DC
.word var_80802C8C
.word func_808009E0
.word 0x000003E4
.word var_80802CAC
.word func_808009E0
.word 0x0000056C
.word var_80802CC8
.word func_808009E0
.word 0x00000486
.word var_80802CE4
.word func_808009E0
.word 0x0000048E
.word var_80802D04
.word func_808009E0
.word 0x00000496
.word var_80802D20
.word func_808009E0
.word 0x0000049E
.word var_80802D3C
.word func_808009E0
.word 0x000004AE
.word var_80802D58
.word func_808009E0
.word 0x00000570
.word var_80802D74
.word func_808009E0
.word 0x0000003F
.word var_80802D90
.word func_808009E0
.word 0x00000598
.word var_80802DAC
.word func_808009E0
.word 0x0000059C
.word var_80802DC8
.word func_808009E0
.word 0x000005A0
.word var_80802DE4
.word func_808009E0
.word 0x000005A4
.word var_80802E00
.word func_808009E0
.word 0x000005A8
.word var_80802E1C
.word func_808009E0
.word 0x000005AC
.word var_80802E38
.word func_808009E0
.word 0x000005B0
.word var_80802E54
.word func_808009E0
.word 0x000005B4
.word var_80802E70
.word func_808009E0
.word 0x000005B8
.word var_80802E8C
.word func_808009E0
.word 0x000005BC
.word var_80802EAC
.word func_808009E0
.word 0x000005C0
.word var_80802ECC
.word func_808009E0
.word 0x000005C4
.word var_80802EEC
.word func_808009E0
.word 0x000005FC
.word var_80802F0C
.word func_808009E0
.word 0x000000A0
.word var_80802F24
.word func_808009C0
.word 0x00000000
.word var_80802F2C
.word func_80800AD0
.word 0x00000000
.word var_80802F50
.word func_80800B08
.word 0x00000000
var_80802318: .word var_80802FA0
.word var_80802FBC
.word var_80802FD0
.word var_80802FE8
.word var_80802FFC
.word var_80803010
.word var_80803024
.word var_8080303C
.word var_80803054
.word var_80803074
.word var_80803098
.word var_808030B8
var_80802348: .word var_808030EC
.word var_808030FC

.section .rodata

var_80802350: .word 0x20313A53, 0x504F5430, 0x30000000
var_8080235C: .word 0x20323A53, 0x504F5430, 0x31000000
var_80802368: .word 0x20333A53, 0x504F5430, 0x32000000
var_80802374: .word 0x20343A53, 0x504F5430, 0x33000000
var_80802380: .word 0x20353A53, 0x504F5430, 0x34000000
var_8080238C: .word 0x20363A53, 0x504F5430, 0x35000000
var_80802398: .word 0x20373A53, 0x504F5430, 0x36000000
var_808023A4: .word 0x20383A53, 0x504F5430, 0x37000000
var_808023B0: .word 0x20393A53, 0x504F5430, 0x38000000
var_808023BC: .word 0x31303A53, 0x504F5430, 0x39000000
var_808023C8: .word 0x31313A53, 0x504F5431, 0x30000000
var_808023D4: .word 0x31323A53, 0x504F5431, 0x31000000
var_808023E0: .word 0x31333A53, 0x504F5431, 0x32000000
var_808023EC: .word 0x31343A53, 0x504F5431, 0x33000000
var_808023F8: .word 0x31353A53, 0x504F5431, 0x35000000
var_80802404: .word 0x31363A53, 0x504F5431, 0x36000000
var_80802410: .word 0x31373A53, 0x504F5431, 0x37000000
var_8080241C: .word 0x31383A53, 0x504F5431, 0x38000000
var_80802428: .word 0x31393A53, 0x504F5432, 0x30000000
var_80802434: .word 0x32303A8D, 0x8EC48EB7, 0x8EC98ECF, 0x00000000
var_80802444: .word \
0x32313A8D, 0x8EB98EDD, 0x8EBC8EDE, 0x8EAC8EC9, \
0x8ECF0000
var_80802458: .word \
0x32323A8D, 0x8EBC8EAC, 0x8EC38EB7, 0x8EBC8EDE, \
0x8EAE8EB3, 0x00000000
var_80802470: .word \
0x32333A8C, 0x8ECA8EB2, 0x8ED78ED9, 0x8D8EC68E, \
0xDC8C8EB9, 0x8EDE8EB0, 0x8ED10000
var_8080248C: .word \
0x32343A8D, 0x8ECA8EB6, 0x8EBC8EC0, 0x8EC48ECB, \
0x8EDE8EBA, 0x8ED08EB1, 0x8EC50000
var_808024A8: .word \
0x32353A8D, 0x8ECA8EB6, 0x8EBC8EC0, 0x8EC48ECB, \
0x8EDE8EBA, 0x8ED08EB1, 0x8EC52032, 0x00000000
var_808024C8: .word \
0x32363A8D, 0x8EB58EB3, 0x8EB9208E, 0xC9208ECA, \
0x8EB68EB1, 0x8EC50000
var_808024E0: .word \
0x32373A8D, 0x8EC08EDE, 0x8EB28ED6, 0x8EB38EBE, \
0x8EB28EC9, 0x8EB28EBD, 0x8EDE8ED0, 0x00000000
var_80802500: .word \
0x32383A8D, 0x8EC48ECB, 0x8EDE8EBA, 0x8ED0208E, \
0xD68EB38E, 0xBE8EB220, 0x8EB18EC5, 0x00000000
var_80802520: .word \
0x32393A8D, 0x8ECF8ECE, 0x8EB38EBE, 0x8EB7208E, \
0xD68EB38E, 0xBE8EB28E, 0xC98EB28E, 0xBD8EDE8E, \
0xD0000000
var_80802544: .word \
0x33303A8C, 0x8EB68EDE, 0x8EC98EDD, 0x8D8EBB8E, \
0xB28EBC8E, 0xAD8EB38E, 0xBE8EDD00
var_80802560: .word \
0x33313A8C, 0x8ECA8EB2, 0x8ED78ED9, 0x8D8EC58E, \
0xB68EC68E, 0xDC000000
var_80802578: .word 0x33323A8D, 0x8EC28ED8, 0x8ECE8EDE, 0x8ED80000
var_80802588: .word \
0x33333A8C, 0x8ECE8EDE, 0x8ED18EC1, 0x8EAD8EB3, \
0x8ECE8EDE, 0x8EB08ED8, 0x8EDD8EB8, 0x8EDE0000
var_808025A8: .word \
0x33343A8C, 0x8EDB8EDD, 0x8EDB8EDD, 0x8D8ECE8E, \
0xDE8EB88E, 0xBC8EDE8E, 0xAE8EB320, 0x8EBF8EB3, \
0x8EBA2031, 0x00000000
var_808025D0: .word \
0x33353A8C, 0x8EDB8EDD, 0x8EDB8EDD, 0x8D8ECE8E, \
0xDE8EB88E, 0xBC8EDE8E, 0xAE8EB320, 0x8EBF8EB3, \
0x8EBA2032, 0x00000000
var_808025F8: .word \
0x33363A8D, 0x8ED08ECA, 0x8ED8208E, 0xBA8EDE8E, \
0xD4000000
var_8080260C: .word \
0x33373A8D, 0x8ECF8ECE, 0x8EB3208E, 0xC9208EB8, \
0x8EBD8ED8, 0x8ED40000
var_80802624: .word \
0x33383A8D, 0x8EC08EB6, 0x8ED78ECA, 0x8EDE8EBA, \
0x8ED40000
var_80802638: .word \
0x33393A8D, 0x8EB78EDD, 0x208C8EBD, 0x8EC08ED9, \
0x8EC18EAD, 0x8ED7208E, 0xCA8EB38E, 0xBD000000
var_80802658: .word \
0x34303A8D, 0x8EBC8EDE, 0x8EAE8EB3, 0x8EB68ECF, \
0x8EC1208E, 0xB28ED88E, 0xB88EDE8E, 0xC1000000
var_80802678: .word \
0x34313A8D, 0x8EBC8EDE, 0x8EAE8EB3, 0x8EB68ECF, \
0x8EC10000
var_8080268C: .word 0x34323A8D, 0x8EB38ED7, 0x8EDB8EBC, 0x8EDE0000
var_8080269C: .word \
0x34333A8D, 0x8EC48EB7, 0x8EC98EBC, 0x8EDD8EC3, \
0x8EDE8EDD, 0x208ECF8E, 0xB4000000
var_808026B8: .word \
0x34343A8D, 0x8ED88EDD, 0x8EB88EC9, 0x8EB28EB4, \
0x00000000
var_808026CC: .word \
0x34353A8C, 0x8EB68EB6, 0x8ED88EBA, 0x8D8ED18E, \
0xD78EC98E, 0xC58EB68E, 0xDE8ED400
var_808026E8: .word \
0x34363A8D, 0x8EB38ED7, 0x8EDB8EBC, 0x8EDE8EC9, \
0x208EB28E, 0xB4000000
var_80802700: .word \
0x34373A8D, 0x8EBA8EB7, 0x8ED88EC9, 0x8ED18ED7, \
0x208ED38E, 0xC98EBC8E, 0xD88EB78E, 0xAE8EB38E, \
0xC08EDE8E, 0xB28EC98E, 0xB28EB400
var_8080272C: .word \
0x34383A8D, 0x8EBA8EB7, 0x8ED88EC9, 0x8ED18ED7, \
0x208ECC8E, 0xC08EBA8E, 0xDE8EC98E, 0xB28EB400
var_8080274C: .word \
0x34393A8D, 0x8EBA8EB7, 0x8ED88EC9, 0x8ED18ED7, \
0x208C8ED0, 0x8EC48EDE, 0x8D8EC98E, 0xB28EB400
var_8080276C: .word \
0x35303A8D, 0x8EBA8EB7, 0x8ED88EC9, 0x8ED18ED7, \
0x208C8EBB, 0x8ED88EB1, 0x8D8EC98E, 0xB28EB400
var_8080278C: .word 0x35313A8D, 0x8EB38ECF, 0x8EBA8EDE, 0x8ED40000
var_8080279C: .word \
0x35323A8D, 0x8ECA8EB6, 0x8ED38ED8, 0x8EC98EB2, \
0x8EB40000
var_808027B0: .word \
0x35333A8D, 0x8EB38ED7, 0x8EDB8EBC, 0x8EDE208E, \
0xB28EC78E, 0xB58ECA8E, 0xDE8EBB8E, 0xDD8EC98E, \
0xB28EB400
var_808027D4: .word \
0x35343A8D, 0x8EB68EB6, 0x8ED88EBA, 0x8ED18ED7, \
0x208C8EB2, 0x8EDD8ECA, 0x8EDF8D8E, 0xC98EB28E, \
0xB4000000
var_808027F8: .word \
0x35353A8C, 0x8ECA8EB2, 0x8ED88EB1, 0x8D208EB9, \
0x8EDD8EB7, 0x8EAD8EB3, 0x8EBC8EDE, 0x8EAE0000
var_80802818: .word 0x35363A8C, 0x8EC38EDD, 0x8EC40000
var_80802824: .word 0x35373A8D, 0x8EC08EC3, 0x8EC98ED0, 0x8EBE0000
var_80802834: .word \
0x35383A8D, 0x8EBA8EB7, 0x8ED88EBF, 0x8EDE8EB8, \
0x8EC98ED0, 0x8EBE0000
var_8080284C: .word \
0x35393A8C, 0x8EBA8EDE, 0x8EDB8EDD, 0x8D8EC98E, \
0xD08EBE00
var_80802860: .word \
0x36303A8C, 0x8EBF8EDE, 0x8EB08ED7, 0x8D8EC98E, \
0xD08EBE00
var_80802874: .word \
0x36313A8C, 0x8EB68EB6, 0x8ED88EBA, 0x8D8ED18E, \
0xD720208E, 0xB88EBD8E, 0xD88ED400
var_80802890: .word \
0x36323A8D, 0x8EBC8EDE, 0x8EAE8EB3, 0x8EB68ECF, \
0x8EC1208E, 0xB88EBD8E, 0xD88ED400
var_808028AC: .word \
0x36333A8D, 0x8EB38ED7, 0x8EDB8EBC, 0x8EDE208E, \
0xD68ED98E, 0xC98ED08E, 0xBE000000
var_808028C8: .word 0x36343A8D, 0x8EB58ED2, 0x8EDD8ED4, 0x00000000
var_808028D8: .word \
0x36353A8C, 0x8EB98EDE, 0x8ED98EC4, 0x8EDE8D8E, \
0xC98EBC8E, 0xAD8EB38E, 0xDA8EDD8E, 0xBC8EDE8E, \
0xAE8EB300
var_808028FC: .word \
0x36363A8D, 0x8ED68EB3, 0x8EBE8EB2, 0x8EC98EB7, \
0x8EC9208C, 0x8EC08EDE, 0x8EDD8EBC, 0x8EDE8EAE, \
0x8EDD0000
var_80802920: .word \
0x36373A8D, 0x8ED68EB3, 0x8EBE8EB2, 0x8EC98EB7, \
0x8EC9208C, 0x8EC08EDE, 0x8EDD8EBC, 0x8EDE8EAE, \
0x8EDD208E, 0xCE8EDE8E, 0xBD000000
var_8080294C: .word \
0x36383A8C, 0x8EC48EDE, 0x8EC48EDE, 0x8EDD8EBA, \
0x8EDE208E, 0xC08EDE8E, 0xDD8EBC8E, 0xDE8EAE8E, \
0xDD000000
var_80802970: .word \
0x36393A8C, 0x8EC48EDE, 0x8EC48EDE, 0x8EDD8EBA, \
0x8EDE208E, 0xC08EDE8E, 0xDD8EBC8E, 0xDE8EAE8E, \
0xDD208ECE, 0x8EDE8EBD, 0x00000000
var_8080299C: .word \
0x37303A8D, 0x8EB78EAE, 0x8EC08EDE, 0x8EB28EB7, \
0x8EDE8EAE, 0x208C8EC0, 0x8EDE8EDD, 0x8EBC8EDE, \
0x8EAE8EDD, 0x00000000
var_808029C4: .word \
0x37313A8D, 0x8EB78EAE, 0x8EC08EDE, 0x8EB28EB7, \
0x8EDE8EAE, 0x208C8EC0, 0x8EDE8EDD, 0x8EBC8EDE, \
0x8EAE8EDD, 0x208ECE8E, 0xDE8EBD00
var_808029F0: .word \
0x37323A8D, 0x8ED38ED8, 0x8EC98EBC, 0x8EDD8EC3, \
0x8EDE8EDD, 0x00000000
var_80802A08: .word \
0x37333A8D, 0x8ED38ED8, 0x8EC98EBC, 0x8EDD8EC3, \
0x8EDE8EDD, 0x208C8ECE, 0x8EDE8EBD, 0x00000000
var_80802A28: .word \
0x37343A8D, 0x8EB28EC4, 0x8EDE8EBC, 0x8EC0208C, \
0x8EC08EDE, 0x8EDD8EBC, 0x8EDE8EAE, 0x8EDD0000
var_80802A48: .word \
0x37353A8D, 0x8ECA8EB6, 0x8EBC8EC0, 0x208C8EC0, \
0x8EDE8EDD, 0x8EBC8EDE, 0x8EAE8EDD, 0x00000000
var_80802A68: .word \
0x37363A8D, 0x8ECA8EB6, 0x8EBC8EC0, 0x208C8EC0, \
0x8EDE8EDD, 0x8EBC8EDE, 0x8EAE8EDD, 0x208ECE8E, \
0xDE8EBD00
var_80802A8C: .word \
0x37373A8D, 0x8ECB8EC9, 0x8EBC8EDD, 0x8EC38EDE, \
0x8EDD0000
var_80802AA0: .word \
0x37383A8D, 0x8ECB8EC9, 0x8EBC8EDD, 0x8EC38EDE, \
0x8EDD208C, 0x8ECE8EDE, 0x8EBD0000
var_80802ABC: .word \
0x37393A8D, 0x8ED08EBD, 0x8EDE8EC9, 0x8EBC8EDD, \
0x8EC38EDE, 0x8EDD0000
var_80802AD4: .word \
0x38303A8D, 0x8ED08EBD, 0x8EDE8EC9, 0x8EBC8EDD, \
0x8EC38EDE, 0x8EDD208C, 0x8ECE8EDE, 0x8EBD0000
var_80802AF4: .word \
0x38313A8D, 0x8EBC8EDE, 0x8EAC8EBC, 0x8EDD8EBF, \
0x8EDE8EB3, 0x208C8EC0, 0x8EDE8EDD, 0x8EBC8EDE, \
0x8EAE8EDD, 0x00000000
var_80802B1C: .word \
0x38323A8D, 0x8EBC8EDE, 0x8EAC8EBC, 0x8EDD8EBF, \
0x8EDE8EB3, 0x208C8EC0, 0x8EDE8EDD, 0x8EBC8EDE, \
0x8EAE8EDD, 0x208EB18E, 0xB28EB18E, 0xDD8EC58E, \
0xAF8EB800
var_80802B50: .word \
0x38333A8D, 0x8EBC8EDE, 0x8EAC8EBC, 0x8EDD8EBF, \
0x8EDE8EB3, 0x208C8EC0, 0x8EDE8EDD, 0x8EBC8EDE, \
0x8EAE8EDD, 0x208ECE8E, 0xDE8EBD00
var_80802B7C: .word \
0x38343A8C, 0x8EB68EDE, 0x8EC98EDD, 0x8D8EC98E, \
0xC48EB300
var_80802B90: .word \
0x38353A8C, 0x8EB68EDE, 0x8EC98EDD, 0x8D8EC98E, \
0xC48EB38C, 0x8ECE8EDE, 0x8EBD0000
var_80802BAC: .word \
0x38363A8D, 0x8EBA8EB5, 0x8ED88EC9, 0x8EC48EDE, \
0x8EB38EB8, 0x8EC20000
var_80802BC4: .word \
0x38373A8D, 0x8ECA8EB6, 0x8EBC8EC0, 0x8C8ED88E, \
0xDA8EB000
var_80802BD8: .word \
0x38383A8C, 0x8EB68EDE, 0x8EC98EDD, 0x8D8EC18E, \
0xB6208C8E, 0xC08EDE8E, 0xDD8EBC8E, 0xDE8EAE8E, \
0xDD000000
var_80802BFC: .word \
0x38393A8C, 0x8EB68EDE, 0x8EC98EDD, 0x8D8EBB8E, \
0xB28EBC8E, 0xAD8EB38E, 0xBE8EDD20, 0x8C8EC38E, \
0xDE8ED320, 0x26208ECA, 0x8EDE8EC4, 0x8ED90000
var_80802C2C: .word \
0x39303A8C, 0x8EB68EDE, 0x8EC98EDD, 0x8D8EC98E, \
0xC48EB320, 0x8EBF8EC9, 0x8EBA8EDE, 0x20310000
var_80802C4C: .word \
0x39313A8C, 0x8EB68EDE, 0x8EC98EDD, 0x8D8EC98E, \
0xC48EB320, 0x8EBF8EC9, 0x8EBA8EDE, 0x20320000
var_80802C6C: .word \
0x39323A8C, 0x8EB68EDE, 0x8EC98EDD, 0x8D8EC98E, \
0xC48EB320, 0x8EBF8EC9, 0x8EBA8EDE, 0x20330000
var_80802C8C: .word \
0x39333A8C, 0x8EB68EDE, 0x8EC98EDD, 0x8D8EC98E, \
0xC48EB320, 0x8EBF8EC9, 0x8EBA8EDE, 0x20340000
var_80802CAC: .word \
0x39343A8C, 0x8EB68EDE, 0x8EC98EDD, 0x8D8EC18E, \
0xB6208EBF, 0x8EC98EBA, 0x8EDE0000
var_80802CC8: .word \
0x39353A8C, 0x8EB98EDE, 0x8ED98EC4, 0x8EDE8D8E, \
0xC28EB38E, 0xDB20312D, 0x32000000
var_80802CE4: .word \
0x39363A8C, 0x8EB98EDE, 0x8ED98EC4, 0x8EDE8D8E, \
0xC28EB38E, 0xDB20332D, 0x3420392D, 0x31300000
var_80802D04: .word \
0x39373A8C, 0x8EB98EDE, 0x8ED98EC4, 0x8EDE8D8E, \
0xC28EB38E, 0xDB20352D, 0x36000000
var_80802D20: .word \
0x39383A8C, 0x8EB98EDE, 0x8ED98EC4, 0x8EDE8D8E, \
0xC28EB38E, 0xDB20372D, 0x38000000
var_80802D3C: .word \
0x39393A8C, 0x8EB98EDE, 0x8ED98EC4, 0x8EDE8D8E, \
0xC28EB38E, 0xDB203131, 0x2D313200
var_80802D58: .word \
0x3130303A, 0x8C8EB98E, 0xDE8ED98E, 0xC48EDE8D, \
0x8EC28EB3, 0x8EDB2031, 0x33000000
var_80802D74: .word \
0x3130313A, 0x8D8EB68E, 0xB88EBC8E, 0xC48ECB8E, \
0xDE8EBA8E, 0xD08EB18E, 0xC5203000
var_80802D90: .word \
0x3130323A, 0x8D8EB68E, 0xB88EBC8E, 0xC48ECB8E, \
0xDE8EBA8E, 0xD08EB18E, 0xC5203100
var_80802DAC: .word \
0x3130333A, 0x8D8EB68E, 0xB88EBC8E, 0xC48ECB8E, \
0xDE8EBA8E, 0xD08EB18E, 0xC5203200
var_80802DC8: .word \
0x3130343A, 0x8D8EB68E, 0xB88EBC8E, 0xC48ECB8E, \
0xDE8EBA8E, 0xD08EB18E, 0xC5203300
var_80802DE4: .word \
0x3130353A, 0x8D8EB68E, 0xB88EBC8E, 0xC48ECB8E, \
0xDE8EBA8E, 0xD08EB18E, 0xC5203400
var_80802E00: .word \
0x3130363A, 0x8D8EB68E, 0xB88EBC8E, 0xC48ECB8E, \
0xDE8EBA8E, 0xD08EB18E, 0xC5203500
var_80802E1C: .word \
0x3130373A, 0x8D8EB68E, 0xB88EBC8E, 0xC48ECB8E, \
0xDE8EBA8E, 0xD08EB18E, 0xC5203600
var_80802E38: .word \
0x3130383A, 0x8D8EB68E, 0xB88EBC8E, 0xC48ECB8E, \
0xDE8EBA8E, 0xD08EB18E, 0xC5203700
var_80802E54: .word \
0x3130393A, 0x8D8EB68E, 0xB88EBC8E, 0xC48ECB8E, \
0xDE8EBA8E, 0xD08EB18E, 0xC5203800
var_80802E70: .word \
0x3131303A, 0x8D8EB68E, 0xB88EBC8E, 0xC48ECB8E, \
0xDE8EBA8E, 0xD08EB18E, 0xC5203900
var_80802E8C: .word \
0x3131313A, 0x8D8EB68E, 0xB88EBC8E, 0xC48ECB8E, \
0xDE8EBA8E, 0xD08EB18E, 0xC5203130, 0x00000000
var_80802EAC: .word \
0x3131323A, 0x8D8EB68E, 0xB88EBC8E, 0xC48ECB8E, \
0xDE8EBA8E, 0xD08EB18E, 0xC5203131, 0x00000000
var_80802ECC: .word \
0x3131333A, 0x8D8EB68E, 0xB88EBC8E, 0xC48ECB8E, \
0xDE8EBA8E, 0xD08EB18E, 0xC5203132, 0x00000000
var_80802EEC: .word \
0x3131343A, 0x8D8EB68E, 0xB88EBC8E, 0xC48ECB8E, \
0xDE8EBA8E, 0xD08EB18E, 0xC5203133, 0x00000000
var_80802F0C: .word \
0x3131353A, 0x8C8ECA8E, 0xB28ED78E, 0xD9208EC3, \
0x8EDE8ED3, 0x00000000
var_80802F24: .word 0x7469746C, 0x65000000
var_80802F2C: .word \
0x36344444, 0x20544553, 0x5420206E, 0x36346464, \
0x5F536574, 0x4469736B, 0x56657273, 0x696F6E28, \
0x31290000
var_80802F50: .word \
0x36344444, 0x20544553, 0x5432206E, 0x36346464, \
0x5F536574, 0x4469736B, 0x56657273, 0x696F6E28, \
0x30290000
var_80802F74: .word \
0x5A454C44, 0x41204D41, 0x50205345, 0x4C454354, \
0x00000000
var_80802F88: .word 0x2A2A4E75, 0x6C6C2A2A, 0x00000000
var_80802F94: .word 0x25730000
var_80802F98: .word 0x4F50543D, 0x25640000
var_80802FA0: .word \
0x8D8EBC8E, 0xCA8EDE8E, 0xD78EB88E, 0xB58ECF8E, \
0xC18EB88E, 0xC08EDE8E, 0xBB8EB200
var_80802FBC: .word \
0x8D8EC18E, 0xAE8EAF8E, 0xC4208ECF, 0x8EAF8EC3, \
0x8EC80000
var_80802FD0: .word \
0x8C8EB38E, 0xAA8EB28E, 0xC4208EB1, 0x208ED38E, \
0xB08ED28E, 0xDD8EC400
var_80802FE8: .word \
0x8C8EDB8E, 0xB08EC48E, 0xDE8D8EC1, 0x8EAD8EB3, \
0x00000000
var_80802FFC: .word \
0x8D8EC58E, 0xB3208EDC, 0x8EB08EB7, 0x8EDD8EB8, \
0x8EDE0000
var_80803010: .word \
0x8D8EB28E, 0xCF208EC2, 0x8EB88EAF, 0x8EC38ECF, \
0x8EBD0000
var_80803024: .word \
0x8D8EBA8E, 0xBC8EAE8E, 0xB38EBC8E, 0xDE8EAC8E, \
0xC58EB28E, 0xD6000000
var_8080303C: .word \
0x8C8EBA8E, 0xB08ECB8E, 0xB0208ECC, 0x8EDE8EDA, \
0x8EB28EB8, 0x00000000
var_80803054: .word \
0x8C428ED2, 0x8EDD8EA6, 0x8EBE8EAF, 0x8EC48EBC, \
0x8EC38EB8, 0x8EC08EDE, 0x8EBB8EB2, 0x00000000
var_80803074: .word \
0x8D8EBC8E, 0xDE8EAF8E, 0xC48C8EB6, 0x8EDE8ECF, \
0x8EDD8D8E, 0xC98C8EBA, 0x8D8EC38E, 0xDE8EB18E, \
0xAF8EC000
var_80803098: .word \
0x8D8EB28E, 0xCF8EBC8E, 0xCA8EDE8E, 0xD78EB88E, \
0xB58ECF8E, 0xC18EB88E, 0xC08EDE8E, 0xBB8EB200
var_808030B8: .word \
0x8D8EB18E, 0xDC8EC38E, 0xC58EB28E, 0xB18EDC8E, \
0xC38EC58E, 0xB28EA18E, 0xCB8EC48E, 0xD48EBD8E, \
0xD08ECB8E, 0xC48ED48E, 0xBD8ED08E, 0xA1000000
var_808030E8: .word 0x25730000
var_808030EC: .word 0x8D313728, 0x8EDC8EB6, 0x8ED38EC9, 0x29000000
var_808030FC: .word 0x8D35288E, 0xDC8EB68E, 0xBD8EB78E, 0xDE290000
var_8080310C: .word 0x4167653A, 0x25730000
var_80803114: .word \
0x8D208ED6, 0x8ED9208C, 0x8EBA8EDE, 0x8EDB8EDD, \
0x00000000
var_80803128: .word \
0x8D8EB58E, 0xCB8ED920, 0x8C8EBC8E, 0xDE8EAC8E, \
0xD7000000
var_8080313C: .word 0x8EC38EDE, 0x8ED33030, 0x00000000
var_80803148: .word 0x8EC38EDE, 0x8ED33031, 0x00000000
var_80803154: .word 0x8EC38EDE, 0x8ED33032, 0x00000000
var_80803160: .word 0x8EC38EDE, 0x8ED33033, 0x00000000
var_8080316C: .word 0x8EC38EDE, 0x8ED33034, 0x00000000
var_80803178: .word 0x8EC38EDE, 0x8ED33035, 0x00000000
var_80803184: .word 0x8EC38EDE, 0x8ED33036, 0x00000000
var_80803190: .word 0x8EC38EDE, 0x8ED33037, 0x00000000
var_8080319C: .word 0x8EC38EDE, 0x8ED33038, 0x00000000
var_808031A8: .word 0x8EC38EDE, 0x8ED33039, 0x00000000
var_808031B4: .word 0x8EC38EDE, 0x8ED33041, 0x00000000
var_808031C0: .word 0x53746167, 0x653A8C25, 0x73000000
var_808031CC: .word var_80801848
.word var_80801868
.word var_80801878
.word var_80801888
.word var_80801898
.word var_808018A8
.word var_808018B8
.word var_808018C8
.word var_808018D8
.word var_808018E8
.word var_808018F8
.word 0x00000000, 0x00000000

