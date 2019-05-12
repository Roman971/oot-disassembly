#include <mips.h>
.set noreorder
.set noat

.section .text
func_809534B0:
	sw      a1, 0x0180(a0)             ## 00000180
	jr      $ra                        
	nop


func_809534BC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	jal     func_800597C0              
	addiu   a1, $zero, 0x0021          ## a1 = 00000021
	beq     v0, $zero, lbl_809534E0    
	andi    v1, v0, 0xFFFF             ## v1 = 00000000
	beq     $zero, $zero, lbl_80953550 
	or      v0, v1, $zero              ## v0 = 00000000
lbl_809534E0:
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	lui     t7, 0x8010                 ## t7 = 80100000
	lw      t7, -0x7378(t7)            ## 800F8C88
	lw      t6, 0x00A0(v0)             ## 8011A670
	lui     t9, 0x8010                 ## t9 = 80100000
	lbu     t9, -0x733A(t9)            ## 800F8CC6
	and     t8, t6, t7                 
	lui     t1, 0x8010                 ## t1 = 80100000
	srav    t0, t8, t9                 
	beql    t0, $zero, lbl_80953538    
	lhu     t4, 0x0F1A(v0)             ## 8011B4EA
	lw      t1, -0x73C4(t1)            ## 800F8C3C
	lw      t2, 0x00A4(v0)             ## 8011A674
	and     t3, t1, t2                 
	beq     t3, $zero, lbl_8095352C    
	nop
	beq     $zero, $zero, lbl_80953550 
	addiu   v0, $zero, 0x301E          ## v0 = 0000301E
lbl_8095352C:
	beq     $zero, $zero, lbl_80953550 
	addiu   v0, $zero, 0x301D          ## v0 = 0000301D
	lhu     t4, 0x0F1A(v0)             ## 00003F37
lbl_80953538:
	addiu   v0, $zero, 0x301A          ## v0 = 0000301A
	andi    t5, t4, 0x0008             ## t5 = 00000000
	beq     t5, $zero, lbl_80953550    
	nop
	beq     $zero, $zero, lbl_80953550 
	addiu   v0, $zero, 0x301B          ## v0 = 0000301B
lbl_80953550:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80953560:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_800DD464              
	addiu   a0, a0, 0x20D8             ## a0 = 000020D8
	sltiu   $at, v0, 0x000A            
	beq     $at, $zero, lbl_80953628   
	sll     t6, v0,  2                 
	lui     $at, %hi(var_80954CD0)     ## $at = 80950000
	addu    $at, $at, t6               
	lw      t6, %lo(var_80954CD0)($at) 
	jr      t6                         
	nop
var_8095359C:
	lw      t7, 0x001C($sp)            
	addiu   $at, $zero, 0x301A         ## $at = 0000301A
	lhu     v0, 0x010E(t7)             ## 0000010E
	beq     v0, $at, lbl_809535D0      
	addiu   $at, $zero, 0x301C         ## $at = 0000301C
	beq     v0, $at, lbl_809535EC      
	addiu   $at, $zero, 0x301F         ## $at = 0000301F
	beq     v0, $at, lbl_809535EC      
	addiu   $at, $zero, 0x3020         ## $at = 00003020
	beq     v0, $at, lbl_809535F4      
	nop
	beq     $zero, $zero, lbl_8095362C 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_809535D0:
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	lhu     t8, 0x0F1A(v0)             ## 8011B4EA
	ori     t9, t8, 0x0008             ## t9 = 00000008
	sh      t9, 0x0F1A(v0)             ## 8011B4EA
	beq     $zero, $zero, lbl_8095362C 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_809535EC:
	beq     $zero, $zero, lbl_8095362C 
	addiu   v0, $zero, 0x0002          ## v0 = 00000002
lbl_809535F4:
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	lhu     t0, 0x0ED8(v0)             ## 8011B4A8
	ori     t1, t0, 0x0004             ## t1 = 00000004
	sh      t1, 0x0ED8(v0)             ## 8011B4A8
	beq     $zero, $zero, lbl_8095362C 
	or      v0, $zero, $zero           ## v0 = 00000000
var_80953610:
	jal     func_800D6110              
	lw      a0, 0x0018($sp)            
	beql    v0, $zero, lbl_8095362C    
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	beq     $zero, $zero, lbl_8095362C 
	addiu   v0, $zero, 0x0003          ## v0 = 00000003
lbl_80953628:
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_8095362C:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8095363C:
	sw      a0, 0x0000($sp)            
	lh      v0, 0x00A4(a1)             ## 000000A4
	addiu   $at, $zero, 0x0062         ## $at = 00000062
	lui     v1, 0x8012                 ## v1 = 80120000
	bne     v0, $at, lbl_8095366C      
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	lw      t6, 0x0004(v1)             ## 8011A5D4
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bne     t6, $at, lbl_8095366C      
	nop
	jr      $ra                        
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_8095366C:
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	bne     v0, $at, lbl_809536A0      
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	lhu     t7, 0x0F1A(v1)             ## 8011B4EA
	andi    t8, t7, 0x0400             ## t8 = 00000000
	bnel    t8, $zero, lbl_809536A4    
	or      v0, $zero, $zero           ## v0 = 00000000
	lw      t9, 0x0004(v1)             ## 8011A5D4
	bnel    t9, $zero, lbl_809536A4    
	or      v0, $zero, $zero           ## v0 = 00000000
	jr      $ra                        
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_809536A0:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_809536A4:
	jr      $ra                        
	nop


func_809536AC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lh      t6, 0x01E4(a0)             ## 000001E4
	lw      v0, 0x1C44(a1)             ## 00001C44
	or      a3, $zero, $zero           ## a3 = 00000000
	bnel    t6, $zero, lbl_809536D0    
	lw      t8, 0x0180(a0)             ## 00000180
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lw      t8, 0x0180(a0)             ## 00000180
lbl_809536D0:
	lui     t7, %hi(func_80954138)     ## t7 = 80950000
	addiu   t7, t7, %lo(func_80954138) ## t7 = 80954138
	bnel    t7, t8, lbl_809536E8       
	lw      t0, 0x0024(v0)             ## 00000024
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lw      t0, 0x0024(v0)             ## 00000024
lbl_809536E8:
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f4                   ## $f4 = 10.00
	sw      t0, 0x01FC(a0)             ## 000001FC
	lw      t9, 0x0028(v0)             ## 00000028
	addiu   a1, a0, 0x01E4             ## a1 = 000001E4
	addiu   a2, $zero, 0x0003          ## a2 = 00000003
	sw      t9, 0x0200(a0)             ## 00000200
	lw      t0, 0x002C(v0)             ## 0000002C
	swc1    $f4, 0x01F8(a0)            ## 000001F8
	jal     func_80027854              
	sw      t0, 0x0204(a0)             ## 00000204
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80953724:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lh      v1, 0x01E2(a2)             ## 000001E2
	addiu   a0, $zero, 0x0001          ## a0 = 00000001
	blez    v1, lbl_80953748           
	addiu   t6, v1, 0xFFFF             ## t6 = FFFFFFFF
	beq     $zero, $zero, lbl_8095374C 
	sh      t6, 0x01E2(a2)             ## 000001E2
lbl_80953748:
	sh      $zero, 0x01E2(a2)          ## 000001E2
lbl_8095374C:
	lh      v1, 0x01E2(a2)             ## 000001E2
	slti    $at, v1, 0x0003            
	beql    $at, $zero, lbl_80953764   
	lbu     v0, 0x01DC(a2)             ## 000001DC
	sb      v1, 0x01DF(a2)             ## 000001DF
	lbu     v0, 0x01DC(a2)             ## 000001DC
lbl_80953764:
	beq     v0, $zero, lbl_8095378C    
	nop
	beq     v0, a0, lbl_809537B0       
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     v0, $at, lbl_809537C0      
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	beq     v0, $at, lbl_809537D0      
	nop
	beq     $zero, $zero, lbl_809537E0 
	lbu     v0, 0x01DD(a2)             ## 000001DD
lbl_8095378C:
	bne     v1, $zero, lbl_809537A8    
	addiu   a0, $zero, 0x001E          ## a0 = 0000001E
	addiu   a1, $zero, 0x001E          ## a1 = 0000001E
	jal     func_80063BF0              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	sh      v0, 0x01E2(a2)             ## 000001E2
lbl_809537A8:
	beq     $zero, $zero, lbl_809537DC 
	addiu   a0, $zero, 0x0001          ## a0 = 00000001
lbl_809537B0:
	bne     v1, $zero, lbl_809537DC    
	addiu   t7, $zero, 0x0002          ## t7 = 00000002
	beq     $zero, $zero, lbl_809537DC 
	sb      t7, 0x01DF(a2)             ## 000001DF
lbl_809537C0:
	bne     v1, $zero, lbl_809537DC    
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	beq     $zero, $zero, lbl_809537DC 
	sb      t8, 0x01DF(a2)             ## 000001DF
lbl_809537D0:
	bnel    v1, $zero, lbl_809537E0    
	lbu     v0, 0x01DD(a2)             ## 000001DD
	sb      $zero, 0x01DF(a2)          ## 000001DF
lbl_809537DC:
	lbu     v0, 0x01DD(a2)             ## 000001DD
lbl_809537E0:
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	beq     v0, a0, lbl_8095380C       
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	beq     v0, $at, lbl_80953814      
	addiu   t0, $zero, 0x0002          ## t0 = 00000002
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	beq     v0, $at, lbl_8095381C      
	addiu   t1, $zero, 0x0003          ## t1 = 00000003
	beq     $zero, $zero, lbl_80953820 
	sb      $zero, 0x01E0(a2)          ## 000001E0
lbl_8095380C:
	beq     $zero, $zero, lbl_80953820 
	sb      t9, 0x01E0(a2)             ## 000001E0
lbl_80953814:
	beq     $zero, $zero, lbl_80953820 
	sb      t0, 0x01E0(a2)             ## 000001E0
lbl_8095381C:
	sb      t1, 0x01E0(a2)             ## 000001E0
lbl_80953820:
	lbu     t2, 0x01DE(a2)             ## 000001DE
	bnel    a0, t2, lbl_80953838       
	sb      $zero, 0x01E1(a2)          ## 000001E1
	beq     $zero, $zero, lbl_80953838 
	sb      t3, 0x01E1(a2)             ## 000001E1
	sb      $zero, 0x01E1(a2)          ## 000001E1
lbl_80953838:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80953848:
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


func_8095388C:
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


func_809538D0:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lui     t7, %hi(var_80954C60)      ## t7 = 80950000
	addiu   t7, t7, %lo(var_80954C60)  ## t7 = 80954C60
	lw      t9, 0x0000(t7)             ## 80954C60
	lw      t8, 0x0004(t7)             ## 80954C64
	addiu   t6, $sp, 0x0020            ## t6 = FFFFFFE0
	sw      t9, 0x0000(t6)             ## FFFFFFE0
	sw      t8, 0x0004(t6)             ## FFFFFFE4
	lw      t8, 0x000C(t7)             ## 80954C6C
	lw      t9, 0x0008(t7)             ## 80954C68
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	sw      t8, 0x000C(t6)             ## FFFFFFEC
	sw      t9, 0x0008(t6)             ## FFFFFFE8
	lw      t9, 0x0010(t7)             ## 80954C70
	lw      t8, 0x0014(t7)             ## 80954C74
	sw      t9, 0x0010(t6)             ## FFFFFFF0
	sw      t8, 0x0014(t6)             ## FFFFFFF4
	lw      t8, 0x001C(t7)             ## 80954C7C
	lw      t9, 0x0018(t7)             ## 80954C78
	sw      t8, 0x001C(t6)             ## FFFFFFFC
	sw      t9, 0x0018(t6)             ## FFFFFFF8
	lw      a1, 0x014C(a2)             ## 0000014C
	sw      a2, 0x0040($sp)            
	jal     func_8008D6A8              
	sw      a0, 0x001C($sp)            
	lw      a0, 0x001C($sp)            
	beq     v0, $zero, lbl_80953984    
	lw      a2, 0x0040($sp)            
	lh      t0, 0x01D6(a2)             ## 000001D6
	lui     a1, %hi(var_80954AF8)      ## a1 = 80950000
	addiu   a1, a1, %lo(var_80954AF8)  ## a1 = 80954AF8
	addiu   t1, t0, 0x0001             ## t1 = 00000001
	sh      t1, 0x01D6(a2)             ## 000001D6
	lh      v0, 0x01D6(a2)             ## 000001D6
	slti    $at, v0, 0x0008            
	bnel    $at, $zero, lbl_80953978   
	sll     t2, v0,  2                 
	sh      $zero, 0x01D6(a2)          ## 000001D6
	lh      v0, 0x01D6(a2)             ## 000001D6
	sll     t2, v0,  2                 
lbl_80953978:
	addu    a2, $sp, t2                
	jal     func_80027C98              
	lw      a2, 0x0020(a2)             ## 00000020
lbl_80953984:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_80953994:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lui     t7, %hi(var_80954C80)      ## t7 = 80950000
	addiu   t7, t7, %lo(var_80954C80)  ## t7 = 80954C80
	lw      t9, 0x0000(t7)             ## 80954C80
	lw      t8, 0x0004(t7)             ## 80954C84
	addiu   t6, $sp, 0x0020            ## t6 = FFFFFFF0
	sw      t9, 0x0000(t6)             ## FFFFFFF0
	sw      t8, 0x0004(t6)             ## FFFFFFF4
	lw      t8, 0x000C(t7)             ## 80954C8C
	lw      t9, 0x0008(t7)             ## 80954C88
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	sw      t8, 0x000C(t6)             ## FFFFFFFC
	sw      t9, 0x0008(t6)             ## FFFFFFF8
	lh      t0, 0x01D6(a2)             ## 000001D6
	slti    $at, t0, 0x0004            
	beql    $at, $zero, lbl_80953A30   
	lw      $ra, 0x0014($sp)           
	lw      a1, 0x014C(a2)             ## 0000014C
	sw      a2, 0x0030($sp)            
	jal     func_8008D6A8              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	beq     v0, $zero, lbl_80953A2C    
	lw      a2, 0x0030($sp)            
	lh      t1, 0x01D6(a2)             ## 000001D6
	lui     a1, %hi(var_80954AF8)      ## a1 = 80950000
	addiu   a1, a1, %lo(var_80954AF8)  ## a1 = 80954AF8
	addiu   t2, t1, 0x0001             ## t2 = 00000001
	sh      t2, 0x01D6(a2)             ## 000001D6
	lh      v0, 0x01D6(a2)             ## 000001D6
	slti    $at, v0, 0x0004            
	beq     $at, $zero, lbl_80953A2C   
	sll     t3, v0,  2                 
	addu    a2, $sp, t3                
	jal     func_80027C98              
	lw      a2, 0x0020(a2)             ## 00000020
lbl_80953A2C:
	lw      $ra, 0x0014($sp)           
lbl_80953A30:
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80953A3C:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x004C($sp)            
	lui     a2, 0x8002                 ## a2 = 80020000
	addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	jal     func_8001EC20              
	lui     a3, 0x41F0                 ## a3 = 41F00000
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	lui     a2, 0x0601                 ## a2 = 06010000
	addiu   a2, a2, 0x22A8             ## a2 = 060122A8
	sw      a1, 0x0038($sp)            
	lw      a0, 0x004C($sp)            
	or      a3, $zero, $zero           ## a3 = 00000000
	sw      $zero, 0x0010($sp)         
	sw      $zero, 0x0014($sp)         
	jal     func_8008C788              
	sw      $zero, 0x0018($sp)         
	addiu   a1, s0, 0x0184             ## a1 = 00000184
	sw      a1, 0x0034($sp)            
	jal     func_8004AB7C              
	lw      a0, 0x004C($sp)            
	lui     a3, %hi(var_80954AC0)      ## a3 = 80950000
	lw      a1, 0x0034($sp)            
	addiu   a3, a3, %lo(var_80954AC0)  ## a3 = 80954AC0
	lw      a0, 0x004C($sp)            
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	jal     func_80049E10              
	addiu   a0, $zero, 0x0016          ## a0 = 00000016
	lui     a2, %hi(var_80954AEC)      ## a2 = 80950000
	addiu   a2, a2, %lo(var_80954AEC)  ## a2 = 80954AEC
	addiu   a0, s0, 0x0098             ## a0 = 00000098
	jal     func_80050370              
	or      a1, v0, $zero              ## a1 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8095363C              
	lw      a1, 0x004C($sp)            
	bne     v0, $zero, lbl_80953AF8    
	lw      a0, 0x0038($sp)            
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80953BFC 
	lw      $ra, 0x002C($sp)           
lbl_80953AF8:
	lui     a1, %hi(var_80954AF8)      ## a1 = 80950000
	addiu   a1, a1, %lo(var_80954AF8)  ## a1 = 80954AF8
	jal     func_80027C98              
	or      a2, $zero, $zero           ## a2 = 00000000
	lui     a1, 0x3C23                 ## a1 = 3C230000
	ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
	jal     func_80020F88              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	sb      t6, 0x001F(s0)             ## 0000001F
	sh      $zero, 0x01E4(s0)          ## 000001E4
	lw      t7, 0x0008(v1)             ## 8011A5D8
	ori     $at, $zero, 0xFFF0         ## $at = 0000FFF0
	lui     v0, 0x0200                 ## v0 = 02000000
	slt     $at, t7, $at               
	bne     $at, $zero, lbl_80953BA0   
	lw      t7, 0x004C($sp)            
	addiu   v0, v0, 0x6930             ## v0 = 02006930
	sll     t8, v0,  4                 
	srl     t9, t8, 28                 
	sll     t0, t9,  2                 
	lui     t1, 0x8012                 ## t1 = 80120000
	addu    t1, t1, t0                 
	lui     $at, 0x00FF                ## $at = 00FF0000
	lw      t1, 0x0C38(t1)             ## 80120C38
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	and     t2, v0, $at                
	lw      t5, 0x004C($sp)            
	lui     $at, 0x8000                ## $at = 80000000
	addu    t3, t1, t2                 
	addu    t4, t3, $at                
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	lui     a1, %hi(func_80954138)     ## a1 = 80950000
	sw      t4, 0x1D68(t5)             ## 00001D68
	sb      t6, 0x1414(v1)             ## 8011B9E4
	addiu   a1, a1, %lo(func_80954138) ## a1 = 80954138
	jal     func_809534B0              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80953BFC 
	lw      $ra, 0x002C($sp)           
lbl_80953BA0:
	lh      t8, 0x00A4(t7)             ## 000000A4
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	or      a0, s0, $zero              ## a0 = 00000000
	bne     t8, $at, lbl_80953BC4      
	lui     a1, %hi(func_80953EDC)     ## a1 = 80950000
	jal     func_809534B0              
	addiu   a1, a1, %lo(func_80953EDC) ## a1 = 80953EDC
	beq     $zero, $zero, lbl_80953BFC 
	lw      $ra, 0x002C($sp)           
lbl_80953BC4:
	lw      t9, 0x0004(v1)             ## 00000004
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a1, %hi(func_80953C4C)     ## a1 = 80950000
	beq     t9, $zero, lbl_80953BF0    
	nop
	lui     a1, %hi(func_80953C5C)     ## a1 = 80950000
	addiu   a1, a1, %lo(func_80953C5C) ## a1 = 80953C5C
	jal     func_809534B0              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80953BFC 
	lw      $ra, 0x002C($sp)           
lbl_80953BF0:
	jal     func_809534B0              
	addiu   a1, a1, %lo(func_80953C4C) ## a1 = 00003C4C
	lw      $ra, 0x002C($sp)           
lbl_80953BFC:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000
	jr      $ra                        
	nop


func_80953C0C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	lw      a1, 0x001C($sp)            
	jal     func_8008D6D0              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	lw      a1, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_8004ABCC              
	addiu   a1, a1, 0x0184             ## a1 = 00000184
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80953C4C:
	sw      a0, 0x0000($sp)            
	sw      a1, 0x0004($sp)            
	jr      $ra                        
	nop


func_80953C5C:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x0024($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lw      t6, 0x0024($sp)            
	addiu   a1, $zero, 0x0022          ## a1 = 00000022
	lw      v0, 0x1C44(t6)             ## 00001C44
	or      a0, t6, $zero              ## a0 = 00000000
	lw      t7, 0x0670(v0)             ## 00000670
	sll     t8, t7,  7                 
	bgezl   t8, lbl_80953CCC           
	lh      t1, 0x01E4(a3)             ## 000001E4
	sw      v0, 0x001C($sp)            
	jal     func_800DD430              
	sw      a3, 0x0020($sp)            
	lw      v0, 0x001C($sp)            
	lw      a0, 0x0020($sp)            
	lui     $at, 0x0200                ## $at = 02000000
	lw      t9, 0x0670(v0)             ## 00000670
	lui     a1, %hi(func_80953D44)     ## a1 = 80950000
	addiu   a1, a1, %lo(func_80953D44) ## a1 = 80953D44
	or      t0, t9, $at                ## t0 = 02000000
	sw      t0, 0x0670(v0)             ## 00000670
	jal     func_809534B0              
	sw      a0, 0x0698(v0)             ## 00000698
	beq     $zero, $zero, lbl_80953D38 
	lw      $ra, 0x0014($sp)           
	lh      t1, 0x01E4(a3)             ## 000001E4
lbl_80953CCC:
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	lw      a0, 0x0024($sp)            
	bne     t1, $at, lbl_80953CF8      
	or      a1, a3, $zero              ## a1 = 00000000
	addiu   a2, $zero, 0x0007          ## a2 = 00000007
	sw      v0, 0x001C($sp)            
	jal     func_800218EC              
	sw      a3, 0x0020($sp)            
	lw      a3, 0x0020($sp)            
	lw      v0, 0x001C($sp)            
	sh      $zero, 0x01E4(a3)          ## 000001E4
lbl_80953CF8:
	lh      t2, 0x01C4(a3)             ## 000001C4
	lui     $at, 0x42E8                ## $at = 42E80000
	mtc1    $at, $f6                   ## $f6 = 116.00
	mtc1    t2, $f8                    ## $f8 = 0.00
	lwc1    $f4, 0x0090(a3)            ## 00000090
	cvt.s.w $f10, $f8                  
	add.s   $f16, $f6, $f10            
	c.lt.s  $f4, $f16                  
	nop
	bc1fl   lbl_80953D38               
	lw      $ra, 0x0014($sp)           
	lw      t3, 0x0670(v0)             ## 00000670
	lui     $at, 0x0080                ## $at = 00800000
	or      t4, t3, $at                ## t4 = 00800000
	sw      t4, 0x0670(v0)             ## 00000670
	lw      $ra, 0x0014($sp)           
lbl_80953D38:
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80953D44:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s1, 0x0020($sp)            
	sw      s0, 0x001C($sp)            
	or      s0, a1, $zero              ## s0 = 00000000
	or      s1, a0, $zero              ## s1 = 00000000
	sw      $ra, 0x0024($sp)           
	lui     v0, 0x0001                 ## v0 = 00010000
	addu    v0, v0, s0                 
	lhu     v0, 0x04C6(v0)             ## 000104C6
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	lw      v1, 0x1C44(s0)             ## 00001C44
	bne     v0, $at, lbl_80953D98      
	or      a0, s1, $zero              ## a0 = 00000000
	lui     $at, 0x0001                ## $at = 00010000
	addu    $at, $at, s0               
	lui     a1, %hi(func_80953C5C)     ## a1 = 80950000
	sh      $zero, 0x04C6($at)         ## 000104C6
	jal     func_809534B0              
	addiu   a1, a1, %lo(func_80953C5C) ## a1 = 80953C5C
	beq     $zero, $zero, lbl_80953ECC 
	lw      $ra, 0x0024($sp)           
lbl_80953D98:
	slti    $at, v0, 0x0006            
	bne     $at, $zero, lbl_80953E14   
	lui     t9, 0x8012                 ## t9 = 80120000
	lui     v0, 0x0200                 ## v0 = 02000000
	addiu   v0, v0, 0x7DE0             ## v0 = 02007DE0
	sll     t6, v0,  4                 
	srl     t7, t6, 28                 
	sll     t8, t7,  2                 
	addu    t9, t9, t8                 
	lui     $at, 0x00FF                ## $at = 00FF0000
	lw      t9, 0x0C38(t9)             ## 80120C38
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	and     t0, v0, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t1, t9, t0                 
	addu    t2, t1, $at                
	sw      t2, 0x1D68(s0)             ## 00001D68
	lui     $at, 0x8012                ## $at = 80120000
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	sb      t3, -0x461C($at)           ## 8011B9E4
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	lui     a1, %hi(func_80954138)     ## a1 = 80950000
	sh      t4, 0x01D8(s1)             ## 000001D8
	addiu   a1, a1, %lo(func_80954138) ## a1 = 80954138
	jal     func_809534B0              
	or      a0, s1, $zero              ## a0 = 00000000
	lui     $at, 0x0001                ## $at = 00010000
	addu    $at, $at, s0               
	addiu   t5, $zero, 0x0004          ## t5 = 00000004
	beq     $zero, $zero, lbl_80953EC8 
	sh      t5, 0x04C6($at)            ## 000104C6
lbl_80953E14:
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bne     v0, $at, lbl_80953EB8      
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t6, 0x8010                 ## t6 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t6, t6, 0x43A8             ## t6 = 801043A8
	lui     a1, 0x8010                 ## a1 = 80100000
	addiu   a1, a1, 0x4394             ## a1 = 80104394
	sw      t6, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x4802          ## a0 = 00004802
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	lui     v0, 0x0200                 ## v0 = 02000000
	addiu   v0, v0, 0x59E0             ## v0 = 020059E0
	sll     t7, v0,  4                 
	srl     t8, t7, 28                 
	sll     t9, t8,  2                 
	lui     t0, 0x8012                 ## t0 = 80120000
	addu    t0, t0, t9                 
	lui     $at, 0x00FF                ## $at = 00FF0000
	lw      t0, 0x0C38(t0)             ## 80120C38
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	and     t1, v0, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t2, t0, t1                 
	addu    t3, t2, $at                
	sw      t3, 0x1D68(s0)             ## 00001D68
	lui     $at, 0x8012                ## $at = 80120000
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	sb      t4, -0x461C($at)           ## 8011B9E4
	lui     a1, %hi(func_80954138)     ## a1 = 80950000
	sh      $zero, 0x01D8(s1)          ## 000001D8
	addiu   a1, a1, %lo(func_80954138) ## a1 = 80954138
	jal     func_809534B0              
	or      a0, s1, $zero              ## a0 = 00000000
	lui     $at, 0x0001                ## $at = 00010000
	addu    $at, $at, s0               
	addiu   t5, $zero, 0x0004          ## t5 = 00000004
	beq     $zero, $zero, lbl_80953EC8 
	sh      t5, 0x04C6($at)            ## 000104C6
lbl_80953EB8:
	lw      t6, 0x0670(v1)             ## 00000670
	lui     $at, 0x0080                ## $at = 00800000
	or      t7, t6, $at                ## t7 = 00800000
	sw      t7, 0x0670(v1)             ## 00000670
lbl_80953EC8:
	lw      $ra, 0x0024($sp)           
lbl_80953ECC:
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80953EDC:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	lw      t6, 0x002C($sp)            
	lw      a0, 0x002C($sp)            
	addiu   a1, $zero, 0x0D02          ## a1 = 00000D02
	lw      v1, 0x1C44(t6)             ## 00001C44
	addiu   a2, $zero, 0xFF9D          ## a2 = FFFFFF9D
	lw      a3, 0x0028($sp)            
	lw      t7, 0x066C(v1)             ## 0000066C
	sll     t8, t7,  2                 
	bltzl   t8, lbl_80953F68           
	lw      $ra, 0x001C($sp)           
	sw      $zero, 0x0010($sp)         
	jal     func_8006B6FC              
	sw      v1, 0x0024($sp)            
	lw      t9, 0x0028($sp)            
	lw      v1, 0x0024($sp)            
	addiu   a0, $zero, 0x0051          ## a0 = 00000051
	lh      v0, 0x0032(t9)             ## 00000032
	addiu   v0, v0, 0x7FFF             ## v0 = 00007FFF
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	sh      v0, 0x0032(v1)             ## 00000032
	jal     func_800C69A0              
	sh      v0, 0x00B6(v1)             ## 000000B6
	lui     a1, %hi(func_80953F74)     ## a1 = 80950000
	addiu   a1, a1, %lo(func_80953F74) ## a1 = 80953F74
	jal     func_809534B0              
	lw      a0, 0x0028($sp)            
	lw      t1, 0x0028($sp)            
	addiu   t0, $zero, 0x0032          ## t0 = 00000032
	sh      t0, 0x01D2(t1)             ## 000001D2
	lw      $ra, 0x001C($sp)           
lbl_80953F68:
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80953F74:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lh      v0, 0x01D2(a3)             ## 000001D2
	addiu   t7, $zero, 0x3039          ## t7 = 00003039
	andi    a1, t7, 0xFFFF             ## a1 = 00003039
	bne     v0, $zero, lbl_80953FA0    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	beq     $zero, $zero, lbl_80953FA8 
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_80953FA0:
	sh      t6, 0x01D2(a3)             ## 000001D2
	lh      v1, 0x01D2(a3)             ## 000001D2
lbl_80953FA8:
	bne     v1, $zero, lbl_80953FD8    
	or      a2, $zero, $zero           ## a2 = 00000000
	sh      t7, 0x010E(a3)             ## 0000010E
	sw      a3, 0x0018($sp)            
	jal     func_800DCE14              
	lw      a0, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	lui     a1, %hi(func_80953FE8)     ## a1 = 80950000
	addiu   a1, a1, %lo(func_80953FE8) ## a1 = 80953FE8
	jal     func_809534B0              
	sh      t8, 0x01E4(a0)             ## 000001E4
lbl_80953FD8:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80953FE8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lh      t6, 0x01E4(a2)             ## 000001E4
	bnel    t6, $zero, lbl_80954034    
	lw      $ra, 0x0014($sp)           
	lh      t7, 0x07A0(a1)             ## 000007A0
	sll     t8, t7,  2                 
	addu    t9, a1, t8                 
	lw      a0, 0x0790(t9)             ## 00000790
	jal     func_80049DB4              
	sw      a2, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	addiu   t0, $zero, 0x005A          ## t0 = 0000005A
	lui     a1, %hi(func_80954040)     ## a1 = 80950000
	addiu   a1, a1, %lo(func_80954040) ## a1 = 80954040
	jal     func_809534B0              
	sh      t0, 0x01D2(a0)             ## 000001D2
	lw      $ra, 0x0014($sp)           
lbl_80954034:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80954040:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lh      v1, 0x01D2(s0)             ## 000001D2
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bne     v1, $zero, lbl_8095406C    
	addiu   t6, v1, 0xFFFF             ## t6 = FFFFFFFF
	beq     $zero, $zero, lbl_80954078 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_8095406C:
	sh      t6, 0x01D2(s0)             ## 000001D2
	lh      v1, 0x01D2(s0)             ## 000001D2
	or      v0, v1, $zero              ## v0 = 00000000
lbl_80954078:
	beq     v0, $zero, lbl_80954108    
	nop
	beq     v1, $at, lbl_809540DC      
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	beq     v1, $at, lbl_809540CC      
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   $at, $zero, 0x003C         ## $at = 0000003C
	beq     v1, $at, lbl_809540BC      
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   $at, $zero, 0x0050         ## $at = 00000050
	bne     v1, $at, lbl_809540E8      
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x28A9          ## a1 = 000028A9
	beq     $zero, $zero, lbl_809540E8 
	lh      v1, 0x01D2(s0)             ## 000001D2
lbl_809540BC:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x2814          ## a1 = 00002814
	beq     $zero, $zero, lbl_809540E8 
	lh      v1, 0x01D2(s0)             ## 000001D2
lbl_809540CC:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x281C          ## a1 = 0000281C
	beq     $zero, $zero, lbl_809540E8 
	lh      v1, 0x01D2(s0)             ## 000001D2
lbl_809540DC:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x281D          ## a1 = 0000281D
	lh      v1, 0x01D2(s0)             ## 000001D2
lbl_809540E8:
	slti    $at, v1, 0x003D            
	bne     $at, $zero, lbl_80954124   
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f6                   ## $f6 = 10.00
	lwc1    $f4, 0x0024(s0)            ## 00000024
	sub.s   $f8, $f4, $f6              
	beq     $zero, $zero, lbl_80954124 
	swc1    $f8, 0x0024(s0)            ## 00000024
lbl_80954108:
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     v0, 0x8012                 ## v0 = 80120000
	addiu   v0, v0, 0xA5D0             ## v0 = 8011A5D0
	lhu     t7, 0x0F1A(v0)             ## 8011B4EA
	ori     t8, t7, 0x0400             ## t8 = 00000400
	sh      t8, 0x0F1A(v0)             ## 8011B4EA
lbl_80954124:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80954138:
	addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
	sw      s0, 0x0014($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      s1, 0x0018($sp)            
	or      a3, a1, $zero              ## a3 = 00000000
	lui     t7, %hi(var_80954C90)      ## t7 = 80950000
	addiu   t7, t7, %lo(var_80954C90)  ## t7 = 80954C90
	lw      t9, 0x0000(t7)             ## 80954C90
	addiu   t6, $sp, 0x0030            ## t6 = FFFFFFD8
	lw      t8, 0x0004(t7)             ## 80954C94
	sw      t9, 0x0000(t6)             ## FFFFFFD8
	lw      t9, 0x0008(t7)             ## 80954C98
	sw      t8, 0x0004(t6)             ## FFFFFFDC
	or      a0, a3, $zero              ## a0 = 00000000
	sw      t9, 0x0008(t6)             ## FFFFFFE0
	lbu     t0, 0x1D6C(a3)             ## 00001D6C
	or      a1, s0, $zero              ## a1 = 00000000
	bnel    t0, $zero, lbl_809541AC    
	lw      s1, 0x1D94(a3)             ## 00001D94
	jal     func_800218EC              
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	lui     a1, %hi(func_809543B4)     ## a1 = 80950000
	addiu   a1, a1, %lo(func_809543B4) ## a1 = 809543B4
	jal     func_809534B0              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_809543A4 
	lw      $ra, 0x001C($sp)           
	lw      s1, 0x1D94(a3)             ## 00001D94
lbl_809541AC:
	addiu   a1, $sp, 0x0048            ## a1 = FFFFFFF0
	beq     s1, $zero, lbl_809543A0    
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_80953848              
	sw      a3, 0x005C($sp)            
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8095388C              
	addiu   a1, $sp, 0x003C            ## a1 = FFFFFFE4
	lh      v0, 0x01DA(s0)             ## 000001DA
	or      a0, s1, $zero              ## a0 = 00000000
	bnel    v0, $zero, lbl_80954208    
	lhu     v1, 0x0000(s1)             ## 00000000
	jal     func_80953848              
	addiu   a1, $sp, 0x0048            ## a1 = FFFFFFF0
	addiu   t1, $sp, 0x0048            ## t1 = FFFFFFF0
	lw      t3, 0x0000(t1)             ## FFFFFFF0
	lh      v0, 0x01DA(s0)             ## 000001DA
	sw      t3, 0x0024(s0)             ## 00000024
	lw      t2, 0x0004(t1)             ## FFFFFFF4
	sw      t2, 0x0028(s0)             ## 00000028
	lw      t3, 0x0008(t1)             ## FFFFFFF8
	sw      t3, 0x002C(s0)             ## 0000002C
	lhu     v1, 0x0000(s1)             ## 00000000
lbl_80954208:
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beql    v1, v0, lbl_809542B4       
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	bne     v1, $at, lbl_80954230      
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lui     a1, %hi(var_80954AF8)      ## a1 = 80950000
	addiu   a1, a1, %lo(var_80954AF8)  ## a1 = 80954AF8
	jal     func_80027C98              
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	lhu     v1, 0x0000(s1)             ## 00000000
lbl_80954230:
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	beq     v1, $at, lbl_80954244      
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	addiu   $at, $zero, 0x0008         ## $at = 00000008
	bne     v1, $at, lbl_8095425C      
lbl_80954244:
	lui     a1, %hi(var_80954AF8)      ## a1 = 80950000
	sh      $zero, 0x01D6(s0)          ## 000001D6
	addiu   a1, a1, %lo(var_80954AF8)  ## a1 = 80954AF8
	jal     func_80027C98              
	addiu   a2, $zero, 0x0007          ## a2 = 00000007
	lhu     v1, 0x0000(s1)             ## 00000000
lbl_8095425C:
	sh      v1, 0x01DA(s0)             ## 000001DA
	lh      v0, 0x01DA(s0)             ## 000001DA
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	addiu   v1, $zero, 0x0002          ## v1 = 00000002
	bne     v0, $at, lbl_8095428C      
	addiu   t4, $zero, 0x000B          ## t4 = 0000000B
	addiu   t5, $zero, 0x0001          ## t5 = 00000001
	sh      t4, 0x01E2(s0)             ## 000001E2
	sb      v1, 0x01DC(s0)             ## 000001DC
	sb      v1, 0x01DD(s0)             ## 000001DD
	sb      t5, 0x01DE(s0)             ## 000001DE
	lh      v0, 0x01DA(s0)             ## 000001DA
lbl_8095428C:
	addiu   $at, $zero, 0x0008         ## $at = 00000008
	bne     v0, $at, lbl_809542B0      
	addiu   v1, $zero, 0x0003          ## v1 = 00000003
	addiu   t6, $zero, 0x000B          ## t6 = 0000000B
	sh      t6, 0x01E2(s0)             ## 000001E2
	sb      v1, 0x01DC(s0)             ## 000001DC
	sb      v1, 0x01DD(s0)             ## 000001DD
	sb      $zero, 0x01DE(s0)          ## 000001DE
	lh      v0, 0x01DA(s0)             ## 000001DA
lbl_809542B0:
	addiu   $at, $zero, 0x0007         ## $at = 00000007
lbl_809542B4:
	bnel    v0, $at, lbl_809542CC      
	addiu   $at, $zero, 0x0008         ## $at = 00000008
	jal     func_809538D0              
	or      a0, s0, $zero              ## a0 = 00000000
	lh      v0, 0x01DA(s0)             ## 000001DA
	addiu   $at, $zero, 0x0008         ## $at = 00000008
lbl_809542CC:
	bnel    v0, $at, lbl_809542E0      
	lhu     t7, 0x0006(s1)             ## 00000006
	jal     func_80953994              
	or      a0, s0, $zero              ## a0 = 00000000
	lhu     t7, 0x0006(s1)             ## 00000006
lbl_809542E0:
	addiu   t0, $sp, 0x0030            ## t0 = FFFFFFD8
	sh      t7, 0x00B4(s0)             ## 000000B4
	lhu     t8, 0x0008(s1)             ## 00000008
	sh      t8, 0x00B6(s0)             ## 000000B6
	lhu     t9, 0x000A(s1)             ## 0000000A
	sh      t9, 0x00B8(s0)             ## 000000B8
	lw      t2, 0x0000(t0)             ## FFFFFFD8
	sw      t2, 0x005C(s0)             ## 0000005C
	lw      t1, 0x0004(t0)             ## FFFFFFDC
	sw      t1, 0x0060(s0)             ## 00000060
	lw      t2, 0x0008(t0)             ## FFFFFFE0
	sw      t2, 0x0064(s0)             ## 00000064
	lw      t3, 0x005C($sp)            
	lhu     v0, 0x0004(s1)             ## 00000004
	lhu     t4, 0x1D74(t3)             ## 00001D74
	slt     $at, t4, v0                
	beql    $at, $zero, lbl_809543A4   
	lw      $ra, 0x001C($sp)           
	lhu     t5, 0x0002(s1)             ## 00000002
	lwc1    $f6, 0x003C($sp)           
	lwc1    $f8, 0x0048($sp)           
	subu    t6, v0, t5                 
	mtc1    t6, $f4                    ## $f4 = 0.00
	sub.s   $f10, $f6, $f8             
	lwc1    $f2, 0x0070(s0)            ## 00000070
	cvt.s.w $f0, $f4                   
	div.s   $f16, $f10, $f0            
	swc1    $f16, 0x005C(s0)           ## 0000005C
	lwc1    $f4, 0x004C($sp)           
	lwc1    $f18, 0x0040($sp)          
	lwc1    $f16, 0x006C(s0)           ## 0000006C
	sub.s   $f6, $f18, $f4             
	div.s   $f8, $f6, $f0              
	swc1    $f8, 0x0060(s0)            ## 00000060
	lwc1    $f10, 0x0060(s0)           ## 00000060
	add.s   $f18, $f10, $f16           
	swc1    $f18, 0x0060(s0)           ## 00000060
	lwc1    $f4, 0x0060(s0)            ## 00000060
	c.lt.s  $f4, $f2                   
	nop
	bc1fl   lbl_80954390               
	lwc1    $f6, 0x0044($sp)           
	swc1    $f2, 0x0060(s0)            ## 00000060
	lwc1    $f6, 0x0044($sp)           
lbl_80954390:
	lwc1    $f8, 0x0050($sp)           
	sub.s   $f10, $f6, $f8             
	div.s   $f16, $f10, $f0            
	swc1    $f16, 0x0064(s0)           ## 00000064
lbl_809543A0:
	lw      $ra, 0x001C($sp)           
lbl_809543A4:
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0058           ## $sp = 00000000


func_809543B4:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lh      t7, 0x01D8(s0)             ## 000001D8
	addiu   t6, $zero, 0x000B          ## t6 = 0000000B
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	sh      t6, 0x01E2(s0)             ## 000001E2
	sb      $zero, 0x01DC(s0)          ## 000001DC
	sb      $zero, 0x01DD(s0)          ## 000001DD
	bne     t7, $at, lbl_80954424      
	sb      $zero, 0x01DE(s0)          ## 000001DE
	lw      a0, 0x0024($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_800218EC              
	addiu   a2, $zero, 0x0007          ## a2 = 00000007
	lui     a1, %hi(var_80954AF8)      ## a1 = 80950000
	addiu   a1, a1, %lo(var_80954AF8)  ## a1 = 80954AF8
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_80027C98              
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	lui     a1, %hi(func_80953C5C)     ## a1 = 80950000
	addiu   a1, a1, %lo(func_80953C5C) ## a1 = 80953C5C
	jal     func_809534B0              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_809544B0 
	lw      $ra, 0x001C($sp)           
lbl_80954424:
	lui     t8, 0x8012                 ## t8 = 80120000
	lui     t9, 0x8010                 ## t9 = 80100000
	lw      t9, -0x7378(t9)            ## 800F8C88
	lw      t8, -0x5990(t8)            ## 8011A670
	lui     t1, 0x8010                 ## t1 = 80100000
	lbu     t1, -0x733A(t1)            ## 800F8CC6
	and     t0, t8, t9                 
	addiu   t4, $zero, 0x301F          ## t4 = 0000301F
	srav    t2, t0, t1                 
	bgtz    t2, lbl_80954470           
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t3, $zero, 0x301C          ## t3 = 0000301C
	lui     a1, %hi(func_809544C0)     ## a1 = 80950000
	sh      t3, 0x010E(s0)             ## 0000010E
	addiu   a1, a1, %lo(func_809544C0) ## a1 = 809544C0
	jal     func_809534B0              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80954484 
	lw      a0, 0x0024($sp)            
lbl_80954470:
	lui     a1, %hi(func_80953C5C)     ## a1 = 80950000
	sh      t4, 0x010E(s0)             ## 0000010E
	jal     func_809534B0              
	addiu   a1, a1, %lo(func_80953C5C) ## a1 = 80953C5C
	lw      a0, 0x0024($sp)            
lbl_80954484:
	lhu     a1, 0x010E(s0)             ## 0000010E
	jal     func_800DCE14              
	or      a2, $zero, $zero           ## a2 = 00000000
	lui     a1, %hi(var_80954AF8)      ## a1 = 80950000
	addiu   a1, a1, %lo(var_80954AF8)  ## a1 = 80954AF8
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_80027C98              
	addiu   a2, $zero, 0x000E          ## a2 = 0000000E
	addiu   t5, $zero, 0x0001          ## t5 = 00000001
	sh      t5, 0x01E4(s0)             ## 000001E4
	lw      $ra, 0x001C($sp)           
lbl_809544B0:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_809544C0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lh      t6, 0x01E4(a3)             ## 000001E4
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	lw      a0, 0x001C($sp)            
	bne     t6, $at, lbl_8095450C      
	or      a1, a3, $zero              ## a1 = 00000000
	addiu   a2, $zero, 0x0007          ## a2 = 00000007
	jal     func_800218EC              
	sw      a3, 0x0018($sp)            
	lui     a1, %hi(func_8095451C)     ## a1 = 80950000
	addiu   a1, a1, %lo(func_8095451C) ## a1 = 8095451C
	jal     func_809534B0              
	lw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_8095451C              
	lw      a1, 0x001C($sp)            
lbl_8095450C:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8095451C:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lw      a1, 0x0024($sp)            
	jal     func_80022BB0              
	sw      a0, 0x0020($sp)            
	beq     v0, $zero, lbl_80954554    
	lw      a0, 0x0020($sp)            
	lui     a1, %hi(func_80954594)     ## a1 = 80950000
	sw      $zero, 0x0118(a0)          ## 00000118
	jal     func_809534B0              
	addiu   a1, a1, %lo(func_80954594) ## a1 = 80954594
	beq     $zero, $zero, lbl_80954588 
	lw      $ra, 0x001C($sp)           
lbl_80954554:
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f12                  ## $f12 = 1.00
	lwc1    $f4, 0x0090(a0)            ## 00000090
	lwc1    $f0, 0x0094(a0)            ## 00000094
	lw      a1, 0x0024($sp)            
	add.s   $f2, $f4, $f12             
	addiu   a2, $zero, 0x0054          ## a2 = 00000054
	abs.s   $f0, $f0                   
	mfc1    a3, $f2                    
	add.s   $f6, $f0, $f12             
	jal     func_80022BD4              
	swc1    $f6, 0x0010($sp)           
	lw      $ra, 0x001C($sp)           
lbl_80954588:
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80954594:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lh      t6, 0x01E4(a0)             ## 000001E4
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	lui     a1, %hi(func_80953C5C)     ## a1 = 80950000
	bne     t6, $at, lbl_809545BC      
	addiu   a1, a1, %lo(func_80953C5C) ## a1 = 80953C5C
	jal     func_809534B0              
	sh      $zero, 0x01E4(a0)          ## 000001E4
lbl_809545BC:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809545CC:
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
	lw      t7, 0x0144(s0)             ## 00000144
	lui     t6, 0x0600                 ## t6 = 06000000
	addiu   t6, t6, 0x45A4             ## t6 = 060045A4
	bne     t6, t7, lbl_80954648       
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lw      a1, 0x014C(s0)             ## 0000014C
	jal     func_8008D6A8              
	sw      a0, 0x002C($sp)            
	beq     v0, $zero, lbl_80954648    
	lw      a0, 0x002C($sp)            
	lui     a1, %hi(var_80954AF8)      ## a1 = 80950000
	addiu   a1, a1, %lo(var_80954AF8)  ## a1 = 80954AF8
	jal     func_80027C98              
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
lbl_80954648:
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_80953724              
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_809536AC              
	or      a1, s1, $zero              ## a1 = 00000000
	lw      t9, 0x0180(s0)             ## 00000180
	lui     t8, %hi(func_80954138)     ## t8 = 80950000
	addiu   t8, t8, %lo(func_80954138) ## t8 = 80954138
	bne     t8, t9, lbl_809546AC       
	nop
	lwc1    $f4, 0x0024(s0)            ## 00000024
	lwc1    $f6, 0x005C(s0)            ## 0000005C
	lwc1    $f10, 0x0028(s0)           ## 00000028
	lwc1    $f16, 0x0060(s0)           ## 00000060
	add.s   $f8, $f4, $f6              
	lwc1    $f6, 0x0064(s0)            ## 00000064
	lwc1    $f4, 0x002C(s0)            ## 0000002C
	add.s   $f18, $f10, $f16           
	swc1    $f8, 0x0024(s0)            ## 00000024
	add.s   $f8, $f4, $f6              
	swc1    $f18, 0x0028(s0)           ## 00000028
	beq     $zero, $zero, lbl_809546B4 
	swc1    $f8, 0x002C(s0)            ## 0000002C
lbl_809546AC:
	jal     func_80021124              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_809546B4:
	mtc1    $zero, $f0                 ## $f0 = 0.00
	addiu   t0, $zero, 0x0004          ## t0 = 00000004
	sw      t0, 0x0014($sp)            
	mfc1    a2, $f0                    
	mfc1    a3, $f0                    
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_80021E6C              
	swc1    $f0, 0x0010($sp)           
	lw      v1, 0x0180(s0)             ## 00000180
	lui     t1, %hi(func_80953D44)     ## t1 = 80950000
	addiu   t1, t1, %lo(func_80953D44) ## t1 = 80953D44
	beql    t1, v1, lbl_8095473C       
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t2, 0x01C4(s0)             ## 000001C4
	lui     $at, 0x42E8                ## $at = 42E80000
	mtc1    $at, $f18                  ## $f18 = 116.00
	mtc1    t2, $f10                   ## $f10 = 0.00
	lui     t3, %hi(func_809534BC)     ## t3 = 80950000
	lui     t4, %hi(func_80953560)     ## t4 = 80950000
	cvt.s.w $f16, $f10                 
	addiu   t4, t4, %lo(func_80953560) ## t4 = 80953560
	addiu   t3, t3, %lo(func_809534BC) ## t3 = 809534BC
	sw      t3, 0x0010($sp)            
	sw      t4, 0x0014($sp)            
	or      a0, s1, $zero              ## a0 = 00000000
	add.s   $f4, $f16, $f18            
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a2, s0, 0x01E4             ## a2 = 000001E4
	mfc1    a3, $f4                    
	jal     func_800271FC              
	nop
	lw      v1, 0x0180(s0)             ## 00000180
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8095473C:
	jalr    $ra, v1                    
	or      a1, s1, $zero              ## a1 = 00000000
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80954758:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	sw      a2, 0x0030($sp)            
	sw      a3, 0x0034($sp)            
	lw      t6, 0x002C($sp)            
	addiu   $at, $zero, 0x0010         ## $at = 00000010
	bnel    t6, $at, lbl_80954834      
	lw      t3, 0x002C($sp)            
	mtc1    $zero, $f14                ## $f14 = 0.00
	lui     $at, 0x4516                ## $at = 45160000
	mtc1    $at, $f12                  ## $f12 = 2400.00
	mfc1    a2, $f14                   
	jal     func_800AA7F4              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lw      t8, 0x003C($sp)            
	addiu   t7, $sp, 0x001C            ## t7 = FFFFFFF4
	lui     $at, 0x4700                ## $at = 47000000
	lwl     t0, 0x01EC(t8)             ## 000001EC
	lwr     t0, 0x01EF(t8)             ## 000001EF
	mtc1    $at, $f8                   ## $f8 = 32768.00
	lui     $at, %hi(var_80954CF8)     ## $at = 80950000
	sw      t0, 0x0000(t7)             ## FFFFFFF4
	lhu     t0, 0x01F0(t8)             ## 000001F0
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	sh      t0, 0x0004(t7)             ## FFFFFFF8
	lh      t1, 0x001E($sp)            
	lwc1    $f16, %lo(var_80954CF8)($at) 
	mtc1    t1, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	div.s   $f10, $f6, $f8             
	mul.s   $f12, $f10, $f16           
	jal     func_800AA9E0              
	nop
	lh      t2, 0x001C($sp)            
	lui     $at, 0x4700                ## $at = 47000000
	mtc1    $at, $f6                   ## $f6 = 32768.00
	mtc1    t2, $f18                   ## $f18 = 0.00
	lui     $at, %hi(var_80954CFC)     ## $at = 80950000
	lwc1    $f10, %lo(var_80954CFC)($at) 
	cvt.s.w $f4, $f18                  
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	div.s   $f8, $f4, $f6              
	mul.s   $f12, $f8, $f10            
	jal     func_800AAD4C              
	nop
	mtc1    $zero, $f14                ## $f14 = 0.00
	lui     $at, 0xC516                ## $at = C5160000
	mtc1    $at, $f12                  ## $f12 = -2400.00
	mfc1    a2, $f14                   
	jal     func_800AA7F4              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lw      t3, 0x002C($sp)            
lbl_80954834:
	addiu   $at, $zero, 0x0008         ## $at = 00000008
	lw      t5, 0x003C($sp)            
	bnel    t3, $at, lbl_809548C4      
	or      v0, $zero, $zero           ## v0 = 00000000
	lwl     t7, 0x01F2(t5)             ## 000001F2
	lwr     t7, 0x01F5(t5)             ## 000001F5
	addiu   t4, $sp, 0x001C            ## t4 = FFFFFFF4
	lui     $at, 0x4700                ## $at = 47000000
	sw      t7, 0x0000(t4)             ## FFFFFFF4
	lhu     t7, 0x01F6(t5)             ## 000001F6
	mtc1    $at, $f4                   ## $f4 = 32768.00
	lui     $at, %hi(var_80954D00)     ## $at = 80950000
	sh      t7, 0x0004(t4)             ## FFFFFFF8
	lh      t8, 0x001E($sp)            
	lwc1    $f8, %lo(var_80954D00)($at) 
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	mtc1    t8, $f16                   ## $f16 = 0.00
	nop
	cvt.s.w $f18, $f16                 
	div.s   $f6, $f18, $f4             
	mul.s   $f12, $f6, $f8             
	jal     func_800AAB94              
	nop
	lh      t9, 0x001C($sp)            
	lui     $at, 0x4700                ## $at = 47000000
	mtc1    $at, $f18                  ## $f18 = 32768.00
	mtc1    t9, $f10                   ## $f10 = 0.00
	lui     $at, %hi(var_80954D04)     ## $at = 80950000
	lwc1    $f6, %lo(var_80954D04)($at) 
	cvt.s.w $f16, $f10                 
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	div.s   $f4, $f16, $f18            
	mul.s   $f12, $f4, $f6             
	jal     func_800AA9E0              
	nop
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_809548C4:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_809548D4:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      a0, 0x0028($sp)            
	addiu   a0, $sp, 0x0018            ## a0 = FFFFFFF0
	sw      $ra, 0x0014($sp)           
	sw      a2, 0x0030($sp)            
	sw      a3, 0x0034($sp)            
	lui     t6, %hi(var_80954C9C)      ## t6 = 80950000
	addiu   t6, t6, %lo(var_80954C9C)  ## t6 = 80954C9C
	lw      t8, 0x0000(t6)             ## 80954C9C
	addiu   $at, $zero, 0x0010         ## $at = 00000010
	sw      t8, 0x0000(a0)             ## FFFFFFF0
	lw      t7, 0x0004(t6)             ## 80954CA0
	sw      t7, 0x0004(a0)             ## FFFFFFF4
	lw      t8, 0x0008(t6)             ## 80954CA4
	bne     a1, $at, lbl_80954920      
	sw      t8, 0x0008(a0)             ## FFFFFFF8
	lw      a1, 0x0038($sp)            
	jal     func_800AB958              
	addiu   a1, a1, 0x0038             ## a1 = 00000038
lbl_80954920:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80954930:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	lui     $ra, 0x00FF                ## $ra = 00FF0000
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	ori     $ra, $ra, 0xFFFF           ## $ra = 00FFFFFF
	sw      a1, 0x002C($sp)            
	lw      t6, 0x002C($sp)            
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	lui     a2, %hi(func_80954758)     ## a2 = 80950000
	lw      v1, 0x0000(t6)             ## 00000000
	lw      v0, 0x02C0(v1)             ## 000002C0
	lui     t8, 0xDB06                 ## t8 = DB060000
	ori     t8, t8, 0x0020             ## t8 = DB060020
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(v1)             ## 000002C0
	sw      t8, 0x0000(v0)             ## 00000000
	lbu     t9, 0x01DF(s0)             ## 000001DF
	lui     t1, %hi(var_80954CA8)      ## t1 = 80950000
	lui     $at, 0x8000                ## $at = 80000000
	sll     t6, t9,  2                 
	addu    t1, t1, t6                 
	lw      t1, %lo(var_80954CA8)(t1)  
	lui     a3, %hi(func_809548D4)     ## a3 = 80950000
	addiu   a3, a3, %lo(func_809548D4) ## a3 = 809548D4
	sll     t8, t1,  4                 
	srl     t9, t8, 28                 
	sll     t6, t9,  2                 
	lui     t8, 0x8012                 ## t8 = 80120000
	addu    t8, t8, t6                 
	lw      t8, 0x0C38(t8)             ## 80120C38
	and     t7, t1, $ra                
	addiu   a2, a2, %lo(func_80954758) ## a2 = 80954758
	addu    t9, t7, t8                 
	addu    t6, t9, $at                
	sw      t6, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(v1)             ## 000002C0
	lui     t8, 0xDB06                 ## t8 = DB060000
	ori     t8, t8, 0x0024             ## t8 = DB060024
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(v1)             ## 000002C0
	sw      t8, 0x0000(v0)             ## 00000000
	lbu     t9, 0x01E0(s0)             ## 000001E0
	lui     t3, %hi(var_80954CB8)      ## t3 = 80950000
	lui     $at, 0x8000                ## $at = 80000000
	sll     t6, t9,  2                 
	addu    t3, t3, t6                 
	lw      t3, %lo(var_80954CB8)(t3)  
	sll     t8, t3,  4                 
	srl     t9, t8, 28                 
	sll     t6, t9,  2                 
	lui     t8, 0x8012                 ## t8 = 80120000
	addu    t8, t8, t6                 
	lw      t8, 0x0C38(t8)             ## 80120C38
	and     t7, t3, $ra                
	addu    t9, t7, t8                 
	addu    t6, t9, $at                
	sw      t6, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(v1)             ## 000002C0
	lui     t8, 0xDB06                 ## t8 = DB060000
	ori     t8, t8, 0x0028             ## t8 = DB060028
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(v1)             ## 000002C0
	sw      t8, 0x0000(v0)             ## 00000000
	lbu     t9, 0x01E1(s0)             ## 000001E1
	lui     t5, %hi(var_80954CC8)      ## t5 = 80950000
	lui     $at, 0x8000                ## $at = 80000000
	sll     t6, t9,  2                 
	addu    t5, t5, t6                 
	lw      t5, %lo(var_80954CC8)(t5)  
	sll     t8, t5,  4                 
	srl     t9, t8, 28                 
	sll     t6, t9,  2                 
	lui     t8, 0x8012                 ## t8 = 80120000
	addu    t8, t8, t6                 
	lw      t8, 0x0C38(t8)             ## 80120C38
	and     t7, t5, $ra                
	addu    t9, t7, t8                 
	addu    t6, t9, $at                
	sw      t6, 0x0004(v0)             ## 00000004
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	sw      t7, 0x0014($sp)            
	lw      a0, 0x002C($sp)            
	jal     func_800279CC              
	sw      s0, 0x0010($sp)            
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop

.section .data

var_80954AA0: .word 0x00980400, 0x02000009, 0x009D0000, 0x0000020C
.word func_80953A3C
.word func_80953C0C
.word func_809545CC
.word func_80954930
var_80954AC0: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0014002E, 0x00000000, 0x00000000
var_80954AEC: .word 0x00000000, 0x00000000, 0xFF000000
var_80954AF8: .word \
0x060074B0, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x060074B0, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1200000, \
0x06000800, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xC1200000, 0x06000D00, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1200000, \
0x06001D70, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xC1200000, 0x06002374, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1200000, \
0x0600288C, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xC1200000, 0x06002E8C, 0x3F800000, \
0x00000000, 0xBF800000, 0x02000000, 0xC1200000, \
0x06002E8C, 0x3F800000, 0x00000000, 0xBF800000, \
0x02000000, 0x00000000, 0x060040FC, 0x3F800000, \
0x00000000, 0xBF800000, 0x02000000, 0x00000000, \
0x0600516C, 0x3F800000, 0x00000000, 0xBF800000, \
0x02000000, 0x00000000, 0x06003D88, 0x3F800000, \
0x00000000, 0xBF800000, 0x02000000, 0x00000000, \
0x06004B6C, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x060054DC, 0x3F800000, \
0x00000000, 0xBF800000, 0x02000000, 0x00000000, \
0x060045A4, 0x3F800000, 0x00000000, 0xBF800000, \
0x02000000, 0xC0C00000
var_80954C60: .word \
0x00000008, 0x00000008, 0x00000008, 0x00000008, \
0x00000009, 0x0000000A, 0x0000000A, 0x0000000D
var_80954C80: .word 0x00000008, 0x00000008, 0x0000000B, 0x0000000C
var_80954C90: .word 0x00000000, 0x00000000, 0x00000000
var_80954C9C: .word 0x00000000, 0xC47A0000, 0x00000000
var_80954CA8: .word 0x06008680, 0x06008A80, 0x06008E80, 0x0600AB40
var_80954CB8: .word 0x06009280, 0x0600A340, 0x0600AF40, 0x0600B780
var_80954CC8: .word 0x060085C0, 0x0600B740

.section .rodata

var_80954CD0: .word lbl_80953628
.word lbl_80953628
.word var_8095359C
.word lbl_80953628
.word lbl_80953628
.word lbl_80953628
.word var_80953610
.word lbl_80953628
.word lbl_80953628
.word lbl_80953628
var_80954CF8: .word 0x40490FDB
var_80954CFC: .word 0x40490FDB
var_80954D00: .word 0x40490FDB
var_80954D04: .word 0x40490FDB, 0x00000000, 0x00000000

