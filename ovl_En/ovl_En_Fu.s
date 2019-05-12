#include <mips.h>
.set noreorder
.set noat

.section .text
func_80AC27B0:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x0044($sp)            
	lui     a2, 0x8002                 ## a2 = 80020000
	addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	jal     func_8001EC20              
	lui     a3, 0x4210                 ## a3 = 42100000
	addiu   a1, s0, 0x0188             ## a1 = 00000188
	lui     a2, 0x0600                 ## a2 = 06000000
	lui     a3, 0x0600                 ## a3 = 06000000
	addiu   t6, s0, 0x01CC             ## t6 = 000001CC
	addiu   t7, s0, 0x022C             ## t7 = 0000022C
	addiu   t8, $zero, 0x0010          ## t8 = 00000010
	sw      t8, 0x0018($sp)            
	sw      t7, 0x0014($sp)            
	sw      t6, 0x0010($sp)            
	addiu   a3, a3, 0x0B04             ## a3 = 06000B04
	addiu   a2, a2, 0x6C90             ## a2 = 06006C90
	sw      a1, 0x0034($sp)            
	jal     func_8008C788              
	lw      a0, 0x0044($sp)            
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x0B04             ## a1 = 06000B04
	jal     func_8008D2D4              
	lw      a0, 0x0034($sp)            
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	sw      a1, 0x0034($sp)            
	jal     func_8004AB7C              
	lw      a0, 0x0044($sp)            
	lui     a3, %hi(var_80AC33B0)      ## a3 = 80AC0000
	lw      a1, 0x0034($sp)            
	addiu   a3, a3, %lo(var_80AC33B0)  ## a3 = 80AC33B0
	lw      a0, 0x0044($sp)            
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
	lui     a1, 0x3C23                 ## a1 = 3C230000
	sb      t9, 0x00AE(s0)             ## 000000AE
	ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
	jal     func_80020F88              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     t0, 0x8012                 ## t0 = 80120000
	lw      t0, -0x5A2C(t0)            ## 8011A5D4
	lui     t2, %hi(func_80AC2DD8)     ## t2 = 80AC0000
	addiu   t2, t2, %lo(func_80AC2DD8) ## t2 = 80AC2DD8
	beq     t0, $zero, lbl_80AC2890    
	addiu   t4, $zero, 0x0006          ## t4 = 00000006
	lui     t1, %hi(func_80AC2A48)     ## t1 = 80AC0000
	addiu   t1, t1, %lo(func_80AC2A48) ## t1 = 80AC2A48
	sw      t1, 0x029C(s0)             ## 0000029C
	beq     $zero, $zero, lbl_80AC28A8 
	sh      $zero, 0x029A(s0)          ## 0000029A
lbl_80AC2890:
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f4                   ## $f4 = 2.00
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	sw      t2, 0x029C(s0)             ## 0000029C
	sh      t3, 0x029A(s0)             ## 0000029A
	swc1    $f4, 0x01A4(s0)            ## 000001A4
lbl_80AC28A8:
	sh      $zero, 0x0298(s0)          ## 00000298
	sb      t4, 0x001F(s0)             ## 0000001F
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AC28C4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	or      a0, a3, $zero              ## a0 = 00000000
	jal     func_8004ABCC              
	addiu   a1, a2, 0x013C             ## a1 = 0000013C
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AC28F0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	sw      a2, 0x0020($sp)            
	sw      a3, 0x0024($sp)            
	lw      a1, 0x001C($sp)            
	jal     func_80022930              
	sw      a0, 0x0018($sp)            
	beq     v0, $zero, lbl_80AC2928    
	lw      a0, 0x0018($sp)            
	lw      t6, 0x0024($sp)            
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	beq     $zero, $zero, lbl_80AC299C 
	sw      t6, 0x029C(a0)             ## 0000029C
lbl_80AC2928:
	lh      t8, 0x008A(a0)             ## 0000008A
	lh      t9, 0x00B6(a0)             ## 000000B6
	lhu     t7, 0x0022($sp)            
	subu    v0, t8, t9                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	bltz    v0, lbl_80AC2950           
	sh      t7, 0x010E(a0)             ## 0000010E
	beq     $zero, $zero, lbl_80AC2954 
	or      v1, v0, $zero              ## v1 = 00000001
lbl_80AC2950:
	subu    v1, $zero, v0              
lbl_80AC2954:
	slti    $at, v1, 0x2301            
	beq     $at, $zero, lbl_80AC298C   
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f0                   ## $f0 = 100.00
	lwc1    $f4, 0x0090(a0)            ## 00000090
	c.lt.s  $f4, $f0                   
	nop
	bc1fl   lbl_80AC2990               
	lhu     t0, 0x0298(a0)             ## 00000298
	mfc1    a2, $f0                    
	jal     func_80022A68              
	lw      a1, 0x001C($sp)            
	beq     $zero, $zero, lbl_80AC299C 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AC298C:
	lhu     t0, 0x0298(a0)             ## 00000298
lbl_80AC2990:
	ori     t1, t0, 0x0001             ## t1 = 00000001
	sh      t1, 0x0298(a0)             ## 00000298
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AC299C:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AC29AC:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	jal     func_80022AD0              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_80AC2A34    
	lui     t8, %hi(func_80AC2A48)     ## t8 = 80AC0000
	lhu     t6, 0x0298(s0)             ## 00000298
	lw      t0, 0x0190(s0)             ## 00000190
	lui     t9, 0x0600                 ## t9 = 06000000
	addiu   t8, t8, %lo(func_80AC2A48) ## t8 = 80AC2A48
	addiu   t9, t9, 0x057C             ## t9 = 0600057C
	andi    t7, t6, 0xFFFD             ## t7 = 00000000
	sh      t7, 0x0298(s0)             ## 00000298
	bne     t9, t0, lbl_80AC2A34       
	sw      t8, 0x029C(s0)             ## 0000029C
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x0B04             ## a0 = 06000B04
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC080                ## $at = C0800000
	mtc1    $at, $f8                   ## $f8 = -4.00
	cvt.s.w $f6, $f4                   
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   t1, $zero, 0x0002          ## t1 = 00000002
	sw      t1, 0x0014($sp)            
	addiu   a1, a1, 0x0B04             ## a1 = 06000B04
	addiu   a0, s0, 0x0188             ## a0 = 00000188
	swc1    $f6, 0x0010($sp)           
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
lbl_80AC2A34:
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AC2A48:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0030($sp)            
	sw      a1, 0x0034($sp)            
	lw      a0, 0x0034($sp)            
	jal     func_800597C0              
	addiu   a1, $zero, 0x000B          ## a1 = 0000000B
	bne     v0, $zero, lbl_80AC2A8C    
	andi    a2, v0, 0xFFFF             ## a2 = 00000000
	lui     t6, 0x8012                 ## t6 = 80120000
	lhu     t6, -0x4B50(t6)            ## 8011B4B0
	addiu   a2, $zero, 0x5032          ## a2 = 00005032
	andi    t7, t6, 0x0080             ## t7 = 00000000
	beq     t7, $zero, lbl_80AC2A8C    
	nop
	beq     $zero, $zero, lbl_80AC2A8C 
	addiu   a2, $zero, 0x5033          ## a2 = 00005033
lbl_80AC2A8C:
	lui     a3, %hi(func_80AC29AC)     ## a3 = 80AC0000
	addiu   a3, a3, %lo(func_80AC29AC) ## a3 = 80AC29AC
	lw      a0, 0x0030($sp)            
	lw      a1, 0x0034($sp)            
	jal     func_80AC28F0              
	sh      a2, 0x002E($sp)            
	beq     v0, $zero, lbl_80AC2AFC    
	lhu     a2, 0x002E($sp)            
	addiu   $at, $zero, 0x5033         ## $at = 00005033
	bne     a2, $at, lbl_80AC2AFC      
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x057C             ## a0 = 0600057C
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC080                ## $at = C0800000
	mtc1    $at, $f8                   ## $f8 = -4.00
	cvt.s.w $f6, $f4                   
	lw      a0, 0x0030($sp)            
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	sw      t8, 0x0014($sp)            
	addiu   a1, a1, 0x057C             ## a1 = 0600057C
	swc1    $f6, 0x0010($sp)           
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f8, 0x0018($sp)           
	jal     func_8008D17C              
	addiu   a0, a0, 0x0188             ## a0 = 00000188
lbl_80AC2AFC:
	lw      $ra, 0x0024($sp)           
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AC2B0C:
	lbu     t6, 0x1D6C(a1)             ## 00001D6C
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	bne     t6, $zero, lbl_80AC2B44    
	lui     t7, %hi(func_80AC2DD8)     ## t7 = 80AC0000
	addiu   t7, t7, %lo(func_80AC2DD8) ## t7 = 80AC2DD8
	sw      t7, 0x029C(a0)             ## 0000029C
	lhu     t8, 0x0EDE(v0)             ## 8011B4AE
	lui     $at, 0x0001                ## $at = 00010000
	addu    $at, $at, a1               
	ori     t9, t8, 0x0800             ## t9 = 00000800
	sh      t9, 0x0EDE(v0)             ## 8011B4AE
	addiu   t0, $zero, 0x0004          ## t0 = 00000004
	sh      t0, 0x04C6($at)            ## 000104C6
lbl_80AC2B44:
	jr      $ra                        
	nop


func_80AC2B4C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	jal     func_80022AD0              
	lw      a0, 0x0018($sp)            
	beq     v0, $zero, lbl_80AC2B74    
	lw      t7, 0x0018($sp)            
	lui     t6, %hi(func_80AC2DD8)     ## t6 = 80AC0000
	addiu   t6, t6, %lo(func_80AC2DD8) ## t6 = 80AC2DD8
	sw      t6, 0x029C(t7)             ## 0000029C
lbl_80AC2B74:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AC2B84:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	lui     v0, 0x0001                 ## v0 = 00010000
	addu    v0, v0, a3                 
	lhu     v0, 0x04C6(v0)             ## 000104C6
	lui     t6, %hi(func_80AC2DD8)     ## t6 = 80AC0000
	lw      v1, 0x1C44(a3)             ## 00001C44
	slti    $at, v0, 0x0004            
	bne     $at, $zero, lbl_80AC2BE0   
	addiu   t6, t6, %lo(func_80AC2DD8) ## t6 = 80AC2DD8
	lui     $at, 0x0001                ## $at = 00010000
	sw      t6, 0x029C(a2)             ## 0000029C
	addu    $at, $at, a3               
	addiu   t7, $zero, 0x0004          ## t7 = 00000004
	sh      t7, 0x04C6($at)            ## 000104C6
	lw      t8, 0x0004(a2)             ## 00000004
	lui     $at, 0xFFFE                ## $at = FFFE0000
	ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
	and     t9, t8, $at                
	beq     $zero, $zero, lbl_80AC2CE4 
	sw      t9, 0x0004(a2)             ## 00000004
lbl_80AC2BE0:
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bne     v0, $at, lbl_80AC2C98      
	addiu   a0, $zero, 0x4802          ## a0 = 00004802
	sw      a2, 0x0018($sp)            
	jal     func_800646F0              
	sw      a3, 0x001C($sp)            
	lw      a2, 0x0018($sp)            
	lui     v0, 0x0201                 ## v0 = 02010000
	lui     $at, 0xFFFE                ## $at = FFFE0000
	lw      t1, 0x0004(a2)             ## 00000004
	addiu   v0, v0, 0xE080             ## v0 = 0200E080
	ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
	sll     t3, v0,  4                 
	lw      a0, 0x001C($sp)            
	lui     t0, %hi(func_80AC2B0C)     ## t0 = 80AC0000
	srl     t4, t3, 28                 
	and     t2, t1, $at                
	addiu   t0, t0, %lo(func_80AC2B0C) ## t0 = 80AC2B0C
	sll     t5, t4,  2                 
	lui     t6, 0x8012                 ## t6 = 80120000
	addu    t6, t6, t5                 
	lui     $at, 0x00FF                ## $at = 00FF0000
	sw      t0, 0x029C(a2)             ## 0000029C
	sw      t2, 0x0004(a2)             ## 00000004
	lw      t6, 0x0C38(t6)             ## 80120C38
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	and     t7, v0, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t8, t6, t7                 
	addu    t9, t8, $at                
	lui     $at, 0x8012                ## $at = 80120000
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	sw      t9, 0x1D68(a0)             ## 00001D68
	sb      t0, -0x461C($at)           ## 8011B9E4
	jal     func_8006FDCC              
	addiu   a1, $zero, 0x0065          ## a1 = 00000065
	lw      a3, 0x001C($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	lui     v0, 0x8012                 ## v0 = 80120000
	addu    $at, $at, a3               
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	sh      $zero, 0x04C6($at)         ## 000104C6
	lhu     t1, 0x0EE0(v0)             ## 8011B4B0
	ori     t2, t1, 0x0020             ## t2 = 00000020
	beq     $zero, $zero, lbl_80AC2CE4 
	sh      t2, 0x0EE0(v0)             ## 8011B4B0
lbl_80AC2C98:
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	bnel    v0, $at, lbl_80AC2CCC      
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lw      t3, 0x0670(v1)             ## 00000670
	lui     $at, 0xFEFF                ## $at = FEFF0000
	ori     $at, $at, 0xFFFF           ## $at = FEFFFFFF
	lui     t5, %hi(func_80AC2DD8)     ## t5 = 80AC0000
	and     t4, t3, $at                
	sw      t4, 0x0670(v1)             ## 00000670
	addiu   t5, t5, %lo(func_80AC2DD8) ## t5 = 80AC2DD8
	beq     $zero, $zero, lbl_80AC2CE4 
	sw      t5, 0x029C(a2)             ## 0000029C
	addiu   $at, $zero, 0x0001         ## $at = 00000001
lbl_80AC2CCC:
	bnel    v0, $at, lbl_80AC2CE8      
	lw      $ra, 0x0014($sp)           
	lw      t6, 0x0670(v1)             ## 00000670
	lui     $at, 0x0080                ## $at = 00800000
	or      t7, t6, $at                ## t7 = 00800000
	sw      t7, 0x0670(v1)             ## 00000670
lbl_80AC2CE4:
	lw      $ra, 0x0014($sp)           
lbl_80AC2CE8:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AC2CF4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	or      a2, a1, $zero              ## a2 = 00000000
	lw      v0, 0x1C44(a2)             ## 00001C44
	lui     $at, 0x0080                ## $at = 00800000
	addiu   a0, a2, 0x20D8             ## a0 = 000020D8
	lw      t6, 0x0670(v0)             ## 00000670
	or      t7, t6, $at                ## t7 = 00800000
	sw      t7, 0x0670(v0)             ## 00000670
	jal     func_800DD464              
	sw      a2, 0x001C($sp)            
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	bne     v0, $at, lbl_80AC2D4C      
	lw      a2, 0x001C($sp)            
	or      a0, a2, $zero              ## a0 = 00000000
	jal     func_800DD400              
	addiu   a1, $zero, 0x001A          ## a1 = 0000001A
	lw      t9, 0x0018($sp)            
	lui     t8, %hi(func_80AC2B84)     ## t8 = 80AC0000
	addiu   t8, t8, %lo(func_80AC2B84) ## t8 = 80AC2B84
	sw      t8, 0x029C(t9)             ## 0000029C
lbl_80AC2D4C:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AC2D5C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	lw      v0, 0x1C44(a1)             ## 00001C44
	lui     $at, 0x0080                ## $at = 00800000
	addiu   a0, a1, 0x20D8             ## a0 = 000020D8
	lw      t6, 0x0670(v0)             ## 00000670
	or      t7, t6, $at                ## t7 = 00800000
	sw      t7, 0x0670(v0)             ## 00000670
	jal     func_800DD464              
	sw      a1, 0x001C($sp)            
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	bnel    v0, $at, lbl_80AC2DCC      
	lw      $ra, 0x0014($sp)           
	lw      v0, 0x0018($sp)            
	addiu   a0, $zero, 0x0004          ## a0 = 00000004
	lhu     t8, 0x0298(v0)             ## 00000298
	andi    t9, t8, 0xFFFD             ## t9 = 00000000
	jal     func_800C2C90              
	sh      t9, 0x0298(v0)             ## 00000298
	lw      a0, 0x001C($sp)            
	jal     func_800DD400              
	addiu   a1, $zero, 0x000D          ## a1 = 0000000D
	lw      t1, 0x0018($sp)            
	lui     t0, %hi(func_80AC2CF4)     ## t0 = 80AC0000
	addiu   t0, t0, %lo(func_80AC2CF4) ## t0 = 80AC2CF4
	sw      t0, 0x029C(t1)             ## 0000029C
	lw      $ra, 0x0014($sp)           
lbl_80AC2DCC:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AC2DD8:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s1, 0x0018($sp)            
	sw      s0, 0x0014($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	lui     t9, 0x8012                 ## t9 = 80120000
	lh      t6, 0x008A(s0)             ## 0000008A
	lh      t7, 0x00B6(s0)             ## 000000B6
	lhu     t9, -0x4B52(t9)            ## 8011B4AE
	lw      v1, 0x1C44(s1)             ## 00001C44
	lui     $at, %hi(var_80AC34F0)     ## $at = 80AC0000
	subu    t8, t6, t7                 
	andi    t0, t9, 0x0800             ## t0 = 00000000
	beq     t0, $zero, lbl_80AC2E38    
	sh      t8, %lo(var_80AC34F0)($at) 
	lui     a3, %hi(func_80AC2B4C)     ## a3 = 80AC0000
	addiu   a3, a3, %lo(func_80AC2B4C) ## a3 = 80AC2B4C
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, s1, $zero              ## a1 = 00000000
	jal     func_80AC28F0              
	addiu   a2, $zero, 0x508E          ## a2 = 0000508E
	beq     $zero, $zero, lbl_80AC2F18 
	lw      $ra, 0x001C($sp)           
lbl_80AC2E38:
	lw      t1, 0x0670(v1)             ## 00000670
	addiu   t3, $zero, 0x5035          ## t3 = 00005035
	or      a0, s0, $zero              ## a0 = 00000000
	sll     t2, t1,  7                 
	bgez    t2, lbl_80AC2E80           
	or      a1, s1, $zero              ## a1 = 00000000
	sh      t3, 0x010E(s0)             ## 0000010E
	or      a0, s1, $zero              ## a0 = 00000000
	andi    a1, t3, 0xFFFF             ## a1 = 00005035
	jal     func_800DCE14              
	or      a2, $zero, $zero           ## a2 = 00000000
	lhu     t5, 0x0298(s0)             ## 00000298
	lui     t4, %hi(func_80AC2D5C)     ## t4 = 80AC0000
	addiu   t4, t4, %lo(func_80AC2D5C) ## t4 = 80AC2D5C
	ori     t6, t5, 0x0002             ## t6 = 00000002
	sw      t4, 0x029C(s0)             ## 0000029C
	beq     $zero, $zero, lbl_80AC2F14 
	sh      t6, 0x0298(s0)             ## 00000298
lbl_80AC2E80:
	jal     func_80022930              
	sw      v1, 0x0024($sp)            
	beq     v0, $zero, lbl_80AC2EA0    
	lw      v1, 0x0024($sp)            
	lui     t7, %hi(func_80AC2B4C)     ## t7 = 80AC0000
	addiu   t7, t7, %lo(func_80AC2B4C) ## t7 = 80AC2B4C
	beq     $zero, $zero, lbl_80AC2F14 
	sw      t7, 0x029C(s0)             ## 0000029C
lbl_80AC2EA0:
	lui     t8, %hi(var_80AC34F0)      ## t8 = 80AC0000
	lh      t8, %lo(var_80AC34F0)(t8)  
	lui     v0, %hi(var_80AC34F0)      ## v0 = 80AC0000
	bltz    t8, lbl_80AC2EBC           
	nop
	beq     $zero, $zero, lbl_80AC2EC4 
	or      v0, t8, $zero              ## v0 = 80AC0000
lbl_80AC2EBC:
	lh      v0, %lo(var_80AC34F0)(v0)  
	subu    v0, $zero, v0              
lbl_80AC2EC4:
	slti    $at, v0, 0x2301            
	beq     $at, $zero, lbl_80AC2F14   
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f0                   ## $f0 = 100.00
	lwc1    $f4, 0x0090(s0)            ## 00000090
	addiu   t9, $zero, 0x5034          ## t9 = 00005034
	or      a0, s0, $zero              ## a0 = 00000000
	c.lt.s  $f4, $f0                   
	or      a1, s1, $zero              ## a1 = 00000000
	bc1fl   lbl_80AC2F18               
	lw      $ra, 0x001C($sp)           
	sh      t9, 0x010E(s0)             ## 0000010E
	mfc1    a2, $f0                    
	jal     func_80022A68              
	sw      v1, 0x0024($sp)            
	lw      v1, 0x0024($sp)            
	lui     $at, 0x0080                ## $at = 00800000
	lw      t0, 0x0670(v1)             ## 00000670
	or      t1, t0, $at                ## t1 = 00800000
	sw      t1, 0x0670(v1)             ## 00000670
lbl_80AC2F14:
	lw      $ra, 0x001C($sp)           
lbl_80AC2F18:
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80AC2F28:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x0044($sp)            
	addiu   a2, s0, 0x013C             ## a2 = 0000013C
	or      a1, a2, $zero              ## a1 = 0000013C
	sw      a2, 0x0030($sp)            
	jal     func_80050B00              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a0, 0x0044($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	lw      a2, 0x0030($sp)            
	jal     func_8004C130              ## CollisionCheck_setOT
	addu    a1, a0, $at                
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	mtc1    $zero, $f0                 ## $f0 = 0.00
	addiu   t6, $zero, 0x0004          ## t6 = 00000004
	sw      t6, 0x0014($sp)            
	mfc1    a2, $f0                    
	mfc1    a3, $f0                    
	lw      a0, 0x0044($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_80021E6C              
	swc1    $f0, 0x0010($sp)           
	lhu     t7, 0x0298(s0)             ## 00000298
	addiu   a0, s0, 0x0188             ## a0 = 00000188
	andi    t8, t7, 0x0002             ## t8 = 00000000
	bnel    t8, $zero, lbl_80AC2FF4    
	lw      t9, 0x029C(s0)             ## 0000029C
	jal     func_8008C9C0              
	sw      a0, 0x0030($sp)            
	beql    v0, $zero, lbl_80AC2FF4    
	lw      t9, 0x029C(s0)             ## 0000029C
	jal     func_8008A194              
	lw      a0, 0x0190(s0)             ## 00000190
	mtc1    v0, $f4                    ## $f4 = 0.00
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lw      a1, 0x0190(s0)             ## 00000190
	cvt.s.w $f6, $f4                   
	addiu   t9, $zero, 0x0002          ## t9 = 00000002
	mfc1    a3, $f0                    
	sw      t9, 0x0014($sp)            
	lw      a0, 0x0030($sp)            
	lui     a2, 0x3F80                 ## a2 = 3F800000
	swc1    $f6, 0x0010($sp)           
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
	lw      t9, 0x029C(s0)             ## 0000029C
lbl_80AC2FF4:
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x0044($sp)            
	jalr    $ra, t9                    
	nop
	lhu     t0, 0x0298(s0)             ## 00000298
	addiu   a0, s0, 0x028C             ## a0 = 0000028C
	or      a1, $zero, $zero           ## a1 = 00000000
	andi    t1, t0, 0x0001             ## t1 = 00000000
	beq     t1, $zero, lbl_80AC3090    
	addiu   a2, $zero, 0x0006          ## a2 = 00000006
	addiu   t2, $zero, 0x0064          ## t2 = 00000064
	sw      t2, 0x0010($sp)            
	jal     func_80064508              
	addiu   a3, $zero, 0x1838          ## a3 = 00001838
	addiu   t3, $zero, 0x0064          ## t3 = 00000064
	sw      t3, 0x0010($sp)            
	addiu   a0, s0, 0x028E             ## a0 = 0000028E
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x0006          ## a2 = 00000006
	jal     func_80064508              
	addiu   a3, $zero, 0x1838          ## a3 = 00001838
	addiu   t4, $zero, 0x0064          ## t4 = 00000064
	sw      t4, 0x0010($sp)            
	addiu   a0, s0, 0x0292             ## a0 = 00000292
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x0006          ## a2 = 00000006
	jal     func_80064508              
	addiu   a3, $zero, 0x1838          ## a3 = 00001838
	addiu   t5, $zero, 0x0064          ## t5 = 00000064
	sw      t5, 0x0010($sp)            
	addiu   a0, s0, 0x0294             ## a0 = 00000294
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x0006          ## a2 = 00000006
	jal     func_80064508              
	addiu   a3, $zero, 0x1838          ## a3 = 00001838
	lhu     t6, 0x0298(s0)             ## 00000298
	andi    t7, t6, 0xFFFE             ## t7 = 00000000
	beq     $zero, $zero, lbl_80AC30BC 
	sh      t7, 0x0298(s0)             ## 00000298
lbl_80AC3090:
	lw      t9, 0x0038(s0)             ## 00000038
	lw      a0, 0x0044($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	sw      t9, 0x0010($sp)            
	lw      t8, 0x003C(s0)             ## 0000003C
	addiu   a2, s0, 0x028C             ## a2 = 0000028C
	addiu   a3, s0, 0x0292             ## a3 = 00000292
	sw      t8, 0x0014($sp)            
	lw      t9, 0x0040(s0)             ## 00000040
	jal     func_8002B024              
	sw      t9, 0x0018($sp)            
lbl_80AC30BC:
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AC30D0:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0030($sp)            
	sw      a2, 0x0038($sp)            
	sw      a3, 0x003C($sp)            
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
	bne     a1, $at, lbl_80AC30F8      
	addiu   a0, $zero, 0x0008          ## a0 = 00000008
	beq     $zero, $zero, lbl_80AC321C 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AC30F8:
	beq     a1, a0, lbl_80AC313C       
	lw      v1, 0x0044($sp)            
	addiu   $at, $zero, 0x000E         ## $at = 0000000E
	beq     a1, $at, lbl_80AC3114      
	lw      v0, 0x0040($sp)            
	beq     $zero, $zero, lbl_80AC313C 
	lw      v1, 0x0044($sp)            
lbl_80AC3114:
	lw      v1, 0x0044($sp)            
	lh      t6, 0x0000(v0)             ## 00000000
	lh      t9, 0x0004(v0)             ## 00000004
	lh      t7, 0x028E(v1)             ## 0000028E
	addu    t8, t6, t7                 
	sh      t8, 0x0000(v0)             ## 00000000
	lh      t0, 0x028C(v1)             ## 0000028C
	addu    t1, t9, t0                 
	beq     $zero, $zero, lbl_80AC313C 
	sh      t1, 0x0004(v0)             ## 00000004
lbl_80AC313C:
	lhu     t2, 0x0298(v1)             ## 00000298
	andi    t3, t2, 0x0002             ## t3 = 00000000
	bne     t3, $zero, lbl_80AC3154    
	nop
	beq     $zero, $zero, lbl_80AC321C 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AC3154:
	bne     a1, a0, lbl_80AC3218       
	sll     v1, a1,  2                 
	lw      t4, 0x0030($sp)            
	subu    v1, v1, a1                 
	sll     v1, v1,  3                 
	lw      t5, 0x009C(t4)             ## 0000009C
	addu    v1, v1, a1                 
	sll     v1, v1,  1                 
	addiu   t6, v1, 0x0814             ## t6 = 00000814
	multu   t5, t6                     
	sw      v1, 0x001C($sp)            
	mflo    a0                         
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	lw      v0, 0x0040($sp)            
	lui     $at, 0x4348                ## $at = 43480000
	mtc1    $at, $f8                   ## $f8 = 200.00
	lh      t7, 0x0002(v0)             ## 00000002
	lw      v1, 0x001C($sp)            
	mul.s   $f10, $f0, $f8             
	mtc1    t7, $f4                    ## $f4 = 0.00
	addiu   t2, v1, 0x0940             ## t2 = 00000940
	cvt.s.w $f6, $f4                   
	add.s   $f16, $f6, $f10            
	trunc.w.s $f18, $f16                 
	mfc1    t9, $f18                   
	nop
	sh      t9, 0x0002(v0)             ## 00000002
	lw      t0, 0x0030($sp)            
	lw      t1, 0x009C(t0)             ## 0000009C
	multu   t1, t2                     
	mflo    a0                         
	sll     a0, a0, 16                 
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	lw      v0, 0x0040($sp)            
	lui     $at, 0x4348                ## $at = 43480000
	mtc1    $at, $f6                   ## $f6 = 200.00
	lh      t3, 0x0004(v0)             ## 00000004
	mul.s   $f10, $f0, $f6             
	mtc1    t3, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f8, $f4                   
	add.s   $f16, $f8, $f10            
	trunc.w.s $f18, $f16                 
	mfc1    t5, $f18                   
	nop
	sh      t5, 0x0004(v0)             ## 00000004
lbl_80AC3218:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80AC321C:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AC322C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a2, 0x0020($sp)            
	sw      a3, 0x0024($sp)            
	addiu   $at, $zero, 0x000E         ## $at = 0000000E
	bne     a1, $at, lbl_80AC325C      
	lui     a0, %hi(var_80AC33DC)      ## a0 = 80AC0000
	lw      a1, 0x0028($sp)            
	addiu   a0, a0, %lo(var_80AC33DC)  ## a0 = 80AC33DC
	jal     func_800AB958              
	addiu   a1, a1, 0x0038             ## a1 = 00000038
lbl_80AC325C:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80AC326C:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x0044($sp)            
	lw      t6, 0x0044($sp)            
	lw      a0, 0x0000(t6)             ## 00000000
	jal     func_8007E56C              
	sw      a0, 0x0034($sp)            
	lui     t4, 0x00FF                 ## t4 = 00FF0000
	lui     t5, 0x8012                 ## t5 = 80120000
	addiu   t5, t5, 0x0C38             ## t5 = 80120C38
	ori     t4, t4, 0xFFFF             ## t4 = 00FFFFFF
	lw      t3, 0x0034($sp)            
	lui     $ra, 0x8000                ## $ra = 80000000
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t8, 0xDB06                 ## t8 = DB060000
	ori     t8, t8, 0x0020             ## t8 = DB060020
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t3)             ## 000002C0
	sw      t8, 0x0000(v0)             ## 00000000
	lhu     t9, 0x029A(s0)             ## 0000029A
	lui     t1, %hi(var_80AC33E8)      ## t1 = 80AC0000
	sll     t6, t9,  2                 
	addu    t1, t1, t6                 
	lw      t1, %lo(var_80AC33E8)(t1)  
	sll     t8, t1,  4                 
	srl     t9, t8, 28                 
	sll     t6, t9,  2                 
	addu    t8, t5, t6                 
	lw      t9, 0x0000(t8)             ## DB060020
	and     t7, t1, t4                 
	addu    t6, t7, t9                 
	addu    t8, t6, $ra                
	sw      t8, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(t3)             ## 000002C0
	lui     t9, 0xDB06                 ## t9 = DB060000
	ori     t9, t9, 0x0024             ## t9 = DB060024
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(t3)             ## 000002C0
	sw      t9, 0x0000(v0)             ## 00000000
	lhu     t6, 0x029A(s0)             ## 0000029A
	lui     t2, %hi(var_80AC33F0)      ## t2 = 80AC0000
	sll     t8, t6,  2                 
	addu    t2, t2, t8                 
	lw      t2, %lo(var_80AC33F0)(t2)  
	sll     t9, t2,  4                 
	srl     t6, t9, 28                 
	sll     t8, t6,  2                 
	addu    t9, t5, t8                 
	lw      t6, 0x0000(t9)             ## DB060024
	and     t7, t2, t4                 
	addu    t8, t7, t6                 
	addu    t9, t8, $ra                
	sw      t9, 0x0004(v0)             ## 00000004
	lw      a1, 0x018C(s0)             ## 0000018C
	lw      a2, 0x01A8(s0)             ## 000001A8
	lbu     a3, 0x018A(s0)             ## 0000018A
	lui     t7, %hi(func_80AC30D0)     ## t7 = 80AC0000
	lui     t6, %hi(func_80AC322C)     ## t6 = 80AC0000
	addiu   t6, t6, %lo(func_80AC322C) ## t6 = 80AC322C
	addiu   t7, t7, %lo(func_80AC30D0) ## t7 = 80AC30D0
	sw      t7, 0x0010($sp)            
	sw      t6, 0x0014($sp)            
	sw      s0, 0x0018($sp)            
	jal     func_80089D8C              
	lw      a0, 0x0044($sp)            
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop
	nop

.section .data

var_80AC3390: .word 0x01530400, 0x02000019, 0x01330000, 0x000002A0
.word func_80AC27B0
.word func_80AC28C4
.word func_80AC2F28
.word func_80AC326C
var_80AC33B0: .word \
0x0A001139, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x001E0028, 0x00000000, 0x00000000
var_80AC33DC: .word 0x442F0000, 0x442F0000, 0x00000000
var_80AC33E8: .word 0x06005F20, 0x06006320
var_80AC33F0: .word 0x06006720, 0x06006920, 0x00000000, 0x00000000

.section .rodata


.bss

var_80AC34F0: .space 0x10
