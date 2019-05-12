#include <mips.h>
.set noreorder
.set noat

.section .text
func_80984400:
	sw      a1, 0x0004($sp)            
	lui     v0, 0x8012                 ## v0 = 80120000
	lw      v0, -0x5A2C(v0)            ## 8011A5D4
	addiu   $at, $zero, 0x0011         ## $at = 00000011
	addiu   v1, $zero, 0x0011          ## v1 = 00000011
	beq     v0, $zero, lbl_80984424    
	nop
	beq     $zero, $zero, lbl_80984424 
	addiu   v1, $zero, 0x0005          ## v1 = 00000005
lbl_80984424:
	bne     v1, $at, lbl_80984434      
	nop
	beq     $zero, $zero, lbl_80984460 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80984434:
	beq     v0, $zero, lbl_80984444    
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	beq     $zero, $zero, lbl_80984448 
	addiu   v1, $zero, 0x0005          ## v1 = 00000005
lbl_80984444:
	addiu   v1, $zero, 0x0011          ## v1 = 00000011
lbl_80984448:
	bne     v1, $at, lbl_80984458      
	nop
	beq     $zero, $zero, lbl_80984460 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80984458:
	jr      $ra                        
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80984460:
	lh      t6, 0x001C(a0)             ## 0000001C
	lui     a1, %hi(var_80984B70)      ## a1 = 80980000
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	andi    t7, t6, 0x000F             ## t7 = 00000000
	sll     t8, t7,  1                 
	addu    t9, t8, v0                 
	addu    a1, a1, t9                 
	lbu     a1, %lo(var_80984B70)(a1)  
	beq     a1, $zero, lbl_809844A0    
	or      v1, a1, $zero              ## v1 = 80980000
	beq     v1, $at, lbl_809844A0      
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     v1, $at, lbl_809844A8      
	or      v0, $zero, $zero           ## v0 = 00000000
	beq     $zero, $zero, lbl_809844B0 
	nop
lbl_809844A0:
	jr      $ra                        
	or      v0, a1, $zero              ## v0 = 80980000
lbl_809844A8:
	jr      $ra                        
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_809844B0:
	jr      $ra                        
	nop


func_809844B8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lh      t6, 0x001C(a0)             ## 0000001C
	lui     a1, %hi(var_80984B74)      ## a1 = 80980000
	andi    t7, t6, 0x000F             ## t7 = 00000000
	sll     t8, t7,  2                 
	addu    a1, a1, t8                 
	jal     func_80020F88              
	lw      a1, %lo(var_80984B74)(a1)  
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809844F4:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	sw      $zero, 0x001C($sp)         
	lw      a0, 0x0028($sp)            
	jal     func_80035260              
	or      a1, $zero, $zero           ## a1 = 00000000
	lw      t6, 0x0028($sp)            
	lui     a0, %hi(var_80984B7C)      ## a0 = 80980000
	addiu   a1, $sp, 0x001C            ## a1 = FFFFFFF4
	lh      t7, 0x001C(t6)             ## 0000001C
	andi    t8, t7, 0x000F             ## t8 = 00000000
	sll     t9, t8,  2                 
	addu    a0, a0, t9                 
	jal     func_80033EF4              
	lw      a0, %lo(var_80984B7C)(a0)  
	lw      a0, 0x002C($sp)            
	lw      a2, 0x0028($sp)            
	lw      a3, 0x001C($sp)            
	jal     func_800313A4              ## DynaPolyInfo_setActor
	addiu   a1, a0, 0x0810             ## a1 = 00000810
	lw      t0, 0x0028($sp)            
	sw      v0, 0x013C(t0)             ## 0000013C
	lw      $ra, 0x0014($sp)           
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	jr      $ra                        
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80984564:
	sw      a1, 0x0004($sp)            
	lh      t7, 0x001C(a0)             ## 0000001C
	lui     t0, %hi(var_80984B84)      ## t0 = 80980000
	lw      t6, 0x0004(a0)             ## 00000004
	andi    t8, t7, 0x000F             ## t8 = 00000000
	sll     t9, t8,  2                 
	addu    t0, t0, t9                 
	lw      t0, %lo(var_80984B84)(t0)  
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	or      t1, t6, t0                 ## t1 = 80980000
	sw      t1, 0x0004(a0)             ## 00000004
	jr      $ra                        
	nop


func_80984598:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s2, 0x001C($sp)            
	sw      s1, 0x0018($sp)            
	or      s1, a0, $zero              ## s1 = 00000000
	or      s2, a1, $zero              ## s2 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      s3, 0x0020($sp)            
	sw      s0, 0x0014($sp)            
	lui     s0, %hi(var_80984B8C)      ## s0 = 80980000
	lui     s3, %hi(var_80984B9C)      ## s3 = 80980000
	addiu   s3, s3, %lo(var_80984B9C)  ## s3 = 80984B9C
	addiu   s0, s0, %lo(var_80984B8C)  ## s0 = 80984B8C
	lw      t9, 0x0000(s0)             ## 80984B8C
lbl_809845CC:
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, s2, $zero              ## a1 = 00000000
	jalr    $ra, t9                    
	nop
	bne     v0, $zero, lbl_809845EC    
	addiu   s0, s0, 0x0004             ## s0 = 80984B90
	beq     $zero, $zero, lbl_809845F8 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_809845EC:
	bnel    s0, s3, lbl_809845CC       
	lw      t9, 0x0000(s0)             ## 80984B90
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_809845F8:
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	lw      s2, 0x001C($sp)            
	lw      s3, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_80984614:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lui     a1, %hi(var_80984B9C)      ## a1 = 80980000
	addiu   a1, a1, %lo(var_80984B9C)  ## a1 = 80984B9C
	jal     func_80063F7C              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     t6, 0x8012                 ## t6 = 80120000
	lw      t6, -0x5A2C(t6)            ## 8011A5D4
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	addiu   v0, $zero, 0x0011          ## v0 = 00000011
	beq     t6, $zero, lbl_80984658    
	nop
	beq     $zero, $zero, lbl_80984658 
	addiu   v0, $zero, 0x0005          ## v0 = 00000005
lbl_80984658:
	bnel    v0, $at, lbl_80984674      
	lh      a1, 0x001C(s0)             ## 0000001C
	jal     func_80984A9C              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_809846E4 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	lh      a1, 0x001C(s0)             ## 0000001C
lbl_80984674:
	lw      a0, 0x0024($sp)            
	sra     a1, a1,  8                 
	jal     func_8002049C              
	andi    a1, a1, 0x003F             ## a1 = 00000000
	beq     v0, $zero, lbl_809846D8    
	nop
	jal     func_80984A9C              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_800636C4              ## sins?
	lh      a0, 0x0032(s0)             ## 00000032
	lui     $at, 0x42A0                ## $at = 42A00000
	mtc1    $at, $f4                   ## $f4 = 80.00
	lwc1    $f8, 0x0008(s0)            ## 00000008
	lh      a0, 0x0032(s0)             ## 00000032
	mul.s   $f6, $f0, $f4              
	add.s   $f10, $f6, $f8             
	jal     func_80063684              ## coss?
	swc1    $f10, 0x0024(s0)           ## 00000024
	lui     $at, 0x42A0                ## $at = 42A00000
	mtc1    $at, $f16                  ## $f16 = 80.00
	lwc1    $f4, 0x0010(s0)            ## 00000010
	mul.s   $f18, $f0, $f16            
	add.s   $f6, $f18, $f4             
	beq     $zero, $zero, lbl_809846E0 
	swc1    $f6, 0x002C(s0)            ## 0000002C
lbl_809846D8:
	jal     func_809848C4              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_809846E0:
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_809846E4:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_809846F8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lui     a1, %hi(var_80984BB0)      ## a1 = 80980000
	addiu   a1, a1, %lo(var_80984BB0)  ## a1 = 80984BB0
	jal     func_80063F7C              
	lw      a0, 0x0018($sp)            
	jal     func_80984818              
	lw      a0, 0x0018($sp)            
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80984734:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lh      t6, 0x001C(a0)             ## 0000001C
	lui     v0, %hi(var_80984BBC)      ## v0 = 80980000
	andi    t7, t6, 0x000F             ## t7 = 00000000
	sll     t8, t7,  2                 
	addu    v0, v0, t8                 
	lw      v0, %lo(var_80984BBC)(v0)  
	beql    v0, $zero, lbl_80984778    
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	jalr    $ra, v0                    
	nop
	bnel    v0, $zero, lbl_80984778    
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	beq     $zero, $zero, lbl_80984778 
	or      v0, $zero, $zero           ## v0 = 00000000
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80984778:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80984788:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_80984598              
	lw      a1, 0x001C($sp)            
	bne     v0, $zero, lbl_809847BC    
	lw      a0, 0x0018($sp)            
	jal     func_80020EB4              
	lw      a0, 0x0018($sp)            
	beq     $zero, $zero, lbl_809847D8 
	lw      $ra, 0x0014($sp)           
lbl_809847BC:
	jal     func_80984734              
	lw      a1, 0x001C($sp)            
	bnel    v0, $zero, lbl_809847D8    
	lw      $ra, 0x0014($sp)           
	jal     func_80020EB4              
	lw      a0, 0x0018($sp)            
	lw      $ra, 0x0014($sp)           
lbl_809847D8:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809847E4:
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


func_80984818:
	lui     t6, %hi(func_8098482C)     ## t6 = 80980000
	addiu   t6, t6, %lo(func_8098482C) ## t6 = 8098482C
	sw      t6, 0x0154(a0)             ## 00000154
	jr      $ra                        
	nop


func_8098482C:
	sw      a0, 0x0000($sp)            
	sw      a1, 0x0004($sp)            
	jr      $ra                        
	nop


func_8098483C:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      a1, 0x0024($sp)            
	or      a1, a0, $zero              ## a1 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0020($sp)            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   t6, $zero, 0x001C          ## t6 = 0000001C
	sw      t6, 0x0014($sp)            
	lw      a0, 0x0024($sp)            
	lui     a2, 0x41A0                 ## a2 = 41A00000
	lui     a3, 0x4238                 ## a3 = 42380000
	jal     func_80021E6C              
	swc1    $f4, 0x0010($sp)           
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80984880:
	lwc1    $f0, 0x0140(a0)            ## 00000140
	lui     $at, %hi(var_80984BD0)     ## $at = 80980000
	lwc1    $f4, %lo(var_80984BD0)($at) 
	abs.s   $f0, $f0                   
	lw      v0, 0x1C44(a1)             ## 00001C44
	c.lt.s  $f4, $f0                   
	nop
	bc1f    lbl_809848BC               
	nop
	mtc1    $zero, $f6                 ## $f6 = 0.00
	addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
	swc1    $f6, 0x0140(a0)            ## 00000140
	lw      t6, 0x0670(v0)             ## 00000670
	and     t7, t6, $at                
	sw      t7, 0x0670(v0)             ## 00000670
lbl_809848BC:
	jr      $ra                        
	nop


func_809848C4:
	lui     t7, %hi(func_809848E0)     ## t7 = 80980000
	addiu   t6, $zero, 0x0014          ## t6 = 00000014
	addiu   t7, t7, %lo(func_809848E0) ## t7 = 809848E0
	sh      t6, 0x0158(a0)             ## 00000158
	sw      t7, 0x0154(a0)             ## 00000154
	jr      $ra                        
	nop


func_809848E0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lui     $at, %hi(var_80984BD4)     ## $at = 80980000
	lwc1    $f6, %lo(var_80984BD4)($at) 
	lwc1    $f4, 0x0140(a0)            ## 00000140
	addiu   t7, $zero, 0x0014          ## t7 = 00000014
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_8098492C               
	sh      t7, 0x0158(a0)             ## 00000158
	lh      t6, 0x0158(a0)             ## 00000158
	bgtz    t6, lbl_8098492C           
	nop
	jal     func_80984944              
	sw      a0, 0x0018($sp)            
	beq     $zero, $zero, lbl_8098492C 
	lw      a0, 0x0018($sp)            
	sh      t7, 0x0158(a0)             ## 00000158
lbl_8098492C:
	jal     func_80984880              
	lw      a1, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80984944:
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     t6, %hi(func_80984970)     ## t6 = 80980000
	addiu   t6, t6, %lo(func_80984970) ## t6 = 80984970
	sw      t6, 0x0154(a0)             ## 00000154
	swc1    $f0, 0x0068(a0)            ## 00000068
	swc1    $f0, 0x0064(a0)            ## 00000064
	swc1    $f0, 0x0060(a0)            ## 00000060
	swc1    $f0, 0x005C(a0)            ## 0000005C
	sh      $zero, 0x0032(a0)          ## 00000032
	jr      $ra                        
	nop


func_80984970:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	lw      t6, 0x002C($sp)            
	lui     a1, 0x3F99                 ## a1 = 3F990000
	lui     a2, 0x3DCC                 ## a2 = 3DCC0000
	lw      t7, 0x1C44(t6)             ## 00001C44
	ori     a2, a2, 0xCCCD             ## a2 = 3DCCCCCD
	ori     a1, a1, 0x999A             ## a1 = 3F99999A
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	jal     func_8006385C              
	sw      t7, 0x0020($sp)            
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8098483C              
	lw      a1, 0x002C($sp)            
	lwc1    $f12, 0x0024(s0)           ## 00000024
	lwc1    $f14, 0x002C(s0)           ## 0000002C
	lw      a2, 0x0008(s0)             ## 00000008
	jal     func_800A5470              
	lw      a3, 0x0010(s0)             ## 00000010
	lui     $at, 0x45C8                ## $at = 45C80000
	mtc1    $at, $f4                   ## $f4 = 6400.00
	or      a0, s0, $zero              ## a0 = 00000000
	c.le.s  $f4, $f0                   
	nop
	bc1f    lbl_80984A80               
	nop
	jal     func_80984A9C              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_800636C4              ## sins?
	lh      a0, 0x0032(s0)             ## 00000032
	lui     $at, 0x42A0                ## $at = 42A00000
	mtc1    $at, $f6                   ## $f6 = 80.00
	lwc1    $f10, 0x0008(s0)           ## 00000008
	lh      a0, 0x0032(s0)             ## 00000032
	mul.s   $f8, $f0, $f6              
	add.s   $f16, $f8, $f10            
	jal     func_80063684              ## coss?
	swc1    $f16, 0x0024(s0)           ## 00000024
	lui     $at, 0x42A0                ## $at = 42A00000
	mtc1    $at, $f18                  ## $f18 = 80.00
	lwc1    $f6, 0x0010(s0)            ## 00000010
	lw      v0, 0x0020($sp)            
	mul.s   $f4, $f0, $f18             
	mtc1    $zero, $f10                ## $f10 = 0.00
	addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
	swc1    $f10, 0x0140(s0)           ## 00000140
	add.s   $f8, $f4, $f6              
	swc1    $f8, 0x002C(s0)            ## 0000002C
	lw      t8, 0x0670(v0)             ## 00000670
	and     t9, t8, $at                
	sw      t9, 0x0670(v0)             ## 00000670
	lh      a1, 0x001C(s0)             ## 0000001C
	lw      a0, 0x002C($sp)            
	sra     a1, a1,  8                 
	jal     func_800204D0              
	andi    a1, a1, 0x003F             ## a1 = 00000000
	jal     func_800646F0              
	addiu   a0, $zero, 0x4802          ## a0 = 00004802
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x2835          ## a1 = 00002835
	beq     $zero, $zero, lbl_80984A8C 
	lw      $ra, 0x001C($sp)           
lbl_80984A80:
	jal     func_8002313C              
	addiu   a1, $zero, 0x200A          ## a1 = 0000200A
	lw      $ra, 0x001C($sp)           
lbl_80984A8C:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80984A9C:
	lui     t6, %hi(func_80984AB0)     ## t6 = 80980000
	addiu   t6, t6, %lo(func_80984AB0) ## t6 = 80984AB0
	sw      t6, 0x0154(a0)             ## 00000154
	jr      $ra                        
	nop


func_80984AB0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	jal     func_80984880              
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80984AD0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lh      v0, 0x0158(a0)             ## 00000158
	blez    v0, lbl_80984AE8           
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x0158(a0)             ## 00000158
lbl_80984AE8:
	lw      t9, 0x0154(a0)             ## 00000154
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80984B04:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	or      a2, a1, $zero              ## a2 = 00000000
	lh      t6, 0x001C(a3)             ## 0000001C
	lui     a1, %hi(var_80984BC4)      ## a1 = 80980000
	or      a0, a2, $zero              ## a0 = 00000000
	andi    t7, t6, 0x000F             ## t7 = 00000000
	sll     t8, t7,  2                 
	addu    a1, a1, t8                 
	jal     func_80028048              
	lw      a1, %lo(var_80984BC4)(a1)  
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop
	nop

.section .data

var_80984B50: .word 0x00B90100, 0x00000000, 0x00AF0000, 0x0000015C
.word func_80984788
.word func_809847E4
.word func_80984AD0
.word func_80984B04
var_80984B70: .word 0x01010100
var_80984B74: .word 0x3DCCCCCD, 0x3DCCCCCD
var_80984B7C: .word 0x06002FE4, 0x0600261C
var_80984B84: .word 0x00000000, 0x00000000
var_80984B8C: .word func_809844F4
.word func_80984400
.word func_809844B8
.word func_80984564
var_80984B9C: .word \
0xB070FFF6, 0xB06CFFFC, 0xB0F40578, 0xB0F801F4, \
0x30FC0320
var_80984BB0: .word 0xB0F404B0, 0xB0F801F4, 0x30FC02BC
var_80984BBC: .word func_80984614
.word func_809846F8
var_80984BC4: .word 0x06002BC0, 0x06002370, 0x00000000

.section .rodata

var_80984BD0: .word 0x3A83126F
var_80984BD4: .word 0xBA83126F, 0x00000000, 0x00000000

