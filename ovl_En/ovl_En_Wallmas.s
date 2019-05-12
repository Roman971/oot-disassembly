#include <mips.h>
.set noreorder
.set noat

.section .text
func_808718D0:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x003C($sp)            
	lui     a1, %hi(var_808730D4)      ## a1 = 80870000
	addiu   a1, a1, %lo(var_808730D4)  ## a1 = 808730D4
	jal     func_80063F7C              
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	or      a2, $zero, $zero           ## a2 = 00000000
	jal     func_8001EC20              
	lui     a3, 0x3F00                 ## a3 = 3F000000
	lui     a2, 0x0601                 ## a2 = 06010000
	lui     a3, 0x0601                 ## a3 = 06010000
	addiu   t6, s0, 0x0188             ## t6 = 00000188
	addiu   t7, s0, 0x021E             ## t7 = 0000021E
	addiu   t8, $zero, 0x0019          ## t8 = 00000019
	sw      t8, 0x0018($sp)            
	sw      t7, 0x0014($sp)            
	sw      t6, 0x0010($sp)            
	addiu   a3, a3, 0x9DB0             ## a3 = 06009DB0
	addiu   a2, a2, 0x8FB0             ## a2 = 06008FB0
	lw      a0, 0x003C($sp)            
	jal     func_8008C788              
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	addiu   a1, s0, 0x02B8             ## a1 = 000002B8
	sw      a1, 0x0030($sp)            
	jal     func_8004AB7C              
	lw      a0, 0x003C($sp)            
	lui     a3, %hi(var_80873080)      ## a3 = 80870000
	lw      a1, 0x0030($sp)            
	addiu   a3, a3, %lo(var_80873080)  ## a3 = 80873080
	lw      a0, 0x003C($sp)            
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	lui     a1, %hi(var_808730B4)      ## a1 = 80870000
	lui     a2, %hi(var_808730AC)      ## a2 = 80870000
	addiu   a2, a2, %lo(var_808730AC)  ## a2 = 808730AC
	addiu   a1, a1, %lo(var_808730B4)  ## a1 = 808730B4
	jal     func_80050344              
	addiu   a0, s0, 0x0098             ## a0 = 00000098
	lh      t2, 0x001C(s0)             ## 0000001C
	lh      t9, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	andi    t3, t2, 0x00FF             ## t3 = 00000000
	sh      t3, 0x001C(s0)             ## 0000001C
	lh      v0, 0x001C(s0)             ## 0000001C
	sra     t0, t9,  8                 
	andi    t1, t0, 0x00FF             ## t1 = 00000000
	bne     v0, $at, lbl_808719D8      
	sh      t1, 0x0186(s0)             ## 00000186
	lw      a0, 0x003C($sp)            
	jal     func_8002049C              
	lh      a1, 0x0186(s0)             ## 00000186
	beq     v0, $zero, lbl_808719C8    
	nop
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80871A00 
	lw      $ra, 0x002C($sp)           
lbl_808719C8:
	jal     func_80871FDC              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80871A00 
	lw      $ra, 0x002C($sp)           
lbl_808719D8:
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bne     v0, $at, lbl_808719F4      
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80871FDC              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80871A00 
	lw      $ra, 0x002C($sp)           
lbl_808719F4:
	jal     func_80871A3C              
	lw      a1, 0x003C($sp)            
	lw      $ra, 0x002C($sp)           
lbl_80871A00:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_80871A10:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	or      a0, a3, $zero              ## a0 = 00000000
	jal     func_8004ABCC              
	addiu   a1, a2, 0x02B8             ## a1 = 000002B8
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80871A3C:
	lw      t6, 0x0004(a0)             ## 00000004
	lw      v0, 0x1C44(a1)             ## 00001C44
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	mtc1    $zero, $f4                 ## $f4 = 0.00
	and     t7, t6, $at                
	sw      t7, 0x0004(a0)             ## 00000004
	ori     t9, t7, 0x0020             ## t9 = 00000020
	addiu   t0, $zero, 0x0082          ## t0 = 00000082
	sw      t9, 0x0004(a0)             ## 00000004
	sh      t0, 0x0184(a0)             ## 00000184
	swc1    $f4, 0x0060(a0)            ## 00000060
	lwc1    $f6, 0x0028(v0)            ## 00000028
	lui     t1, %hi(func_80872FD4)     ## t1 = 80870000
	lui     t2, %hi(func_808720F4)     ## t2 = 80870000
	swc1    $f6, 0x0028(a0)            ## 00000028
	lwc1    $f8, 0x0080(v0)            ## 00000080
	addiu   t1, t1, %lo(func_80872FD4) ## t1 = 80872FD4
	addiu   t2, t2, %lo(func_808720F4) ## t2 = 808720F4
	sw      t1, 0x0134(a0)             ## 00000134
	sw      t2, 0x0180(a0)             ## 00000180
	swc1    $f8, 0x0080(a0)            ## 00000080
	jr      $ra                        
	nop


func_80871A98:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lw      v1, 0x1C44(a1)             ## 00001C44
	lui     a0, 0x0600                 ## a0 = 06000000
	addiu   a0, a0, 0x299C             ## a0 = 0600299C
	jal     func_8008A194              
	sw      v1, 0x0034($sp)            
	mtc1    v0, $f4                    ## $f4 = 0.00
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     a1, 0x0600                 ## a1 = 06000000
	cvt.s.w $f6, $f4                   
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	mfc1    a2, $f0                    
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0x299C             ## a1 = 0600299C
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	swc1    $f6, 0x0010($sp)           
	lui     a3, 0x41A0                 ## a3 = 41A00000
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
	lw      v1, 0x0034($sp)            
	lui     $at, 0x4396                ## $at = 43960000
	mtc1    $at, $f16                  ## $f16 = 300.00
	lwc1    $f8, 0x0028(v1)            ## 00000028
	lw      t9, 0x0004(s0)             ## 00000004
	ori     $at, $zero, 0x8000         ## $at = 00008000
	swc1    $f8, 0x02B4(s0)            ## 000002B4
	lwc1    $f10, 0x0028(v1)           ## 00000028
	ori     t0, t9, 0x0001             ## t0 = 00000001
	lui     t3, %hi(func_80872200)     ## t3 = 80870000
	add.s   $f18, $f10, $f16           
	addiu   t3, t3, %lo(func_80872200) ## t3 = 80872200
	swc1    $f18, 0x0028(s0)           ## 00000028
	lh      t7, 0x00B6(v1)             ## 000000B6
	addu    t8, t7, $at                
	sh      t8, 0x0032(s0)             ## 00000032
	lwc1    $f4, 0x0080(v1)            ## 00000080
	addiu   $at, $zero, 0xFFDF         ## $at = FFFFFFDF
	sw      t0, 0x0004(s0)             ## 00000004
	and     t2, t0, $at                
	sw      t2, 0x0004(s0)             ## 00000004
	sw      t3, 0x0180(s0)             ## 00000180
	swc1    $f4, 0x0080(s0)            ## 00000080
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80871B5C:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0030($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      a1, 0x003C($sp)            
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x19CC             ## a0 = 060019CC
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC040                ## $at = C0400000
	mtc1    $at, $f8                   ## $f8 = -3.00
	cvt.s.w $f6, $f4                   
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0x19CC             ## a1 = 060019CC
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	swc1    $f6, 0x0010($sp)           
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x4224                 ## a3 = 42240000
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f10                  ## $f10 = 20.00
	addiu   t7, $zero, 0x0006          ## t7 = 00000006
	addiu   t8, $zero, 0x012C          ## t8 = 0000012C
	addiu   t9, $zero, 0x0064          ## t9 = 00000064
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	sw      t0, 0x0020($sp)            
	sw      t9, 0x001C($sp)            
	sw      t8, 0x0018($sp)            
	sw      t7, 0x0010($sp)            
	lw      a0, 0x003C($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a2, s0, 0x0024             ## a2 = 00000024
	lui     a3, 0x4170                 ## a3 = 41700000
	jal     func_800260E8              
	swc1    $f10, 0x0014($sp)          
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3893          ## a1 = 00003893
	lui     t1, %hi(func_808722CC)     ## t1 = 80870000
	addiu   t1, t1, %lo(func_808722CC) ## t1 = 808722CC
	sw      t1, 0x0180(s0)             ## 00000180
	lw      $ra, 0x0034($sp)           
	lw      s0, 0x0030($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_80871C20:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0xA054             ## a1 = 0600A054
	jal     func_8008D1C4              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	lw      t7, 0x0018($sp)            
	lui     t6, %hi(func_80872308)     ## t6 = 80870000
	addiu   t6, t6, %lo(func_80872308) ## t6 = 80872308
	sw      t6, 0x0180(t7)             ## 00000180
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80871C60:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x41F4             ## a1 = 060041F4
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	lui     a2, 0x4040                 ## a2 = 40400000
	jal     func_8008D278              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	lui     $at, 0x4040                ## $at = 40400000
	mtc1    $at, $f4                   ## $f4 = 3.00
	lui     t6, %hi(func_80872368)     ## t6 = 80870000
	addiu   t6, t6, %lo(func_80872368) ## t6 = 80872368
	sw      t6, 0x0180(a3)             ## 00000180
	swc1    $f4, 0x0068(a3)            ## 00000068
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80871CB0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0x9244             ## a1 = 06009244
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	jal     func_8008D1C4              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     t6, %hi(func_8087241C)     ## t6 = 80870000
	addiu   t6, t6, %lo(func_8087241C) ## t6 = 8087241C
	sw      t6, 0x0180(a2)             ## 00000180
	swc1    $f4, 0x0068(a2)            ## 00000068
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80871CF8:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	or      a1, a0, $zero              ## a1 = 00000000
	mtc1    $zero, $f4                 ## $f4 = 0.00
	sh      $zero, 0x0184(a1)          ## 00000184
	lui     a0, 0x0600                 ## a0 = 06000000
	swc1    $f4, 0x0068(a1)            ## 00000068
	sw      a1, 0x0028($sp)            
	jal     func_8008A194              
	addiu   a0, a0, 0x19CC             ## a0 = 060019CC
	mtc1    v0, $f6                    ## $f6 = 0.00
	lui     $at, 0xC040                ## $at = C0400000
	mtc1    $at, $f10                  ## $f10 = -3.00
	cvt.s.w $f8, $f6                   
	lw      a0, 0x0028($sp)            
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0x19CC             ## a1 = 060019CC
	swc1    $f8, 0x0010($sp)           
	lui     a2, 0x4040                 ## a2 = 40400000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f10, 0x0018($sp)          
	jal     func_8008D17C              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	lw      t8, 0x0028($sp)            
	lui     t7, %hi(func_80872458)     ## t7 = 80870000
	addiu   t7, t7, %lo(func_80872458) ## t7 = 80872458
	sw      t7, 0x0180(t8)             ## 00000180
	lw      $ra, 0x0024($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80871D7C:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x0590             ## a1 = 06000590
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008D21C              
	lui     a2, 0xC040                 ## a2 = C0400000
	lw      t6, 0x02F4(s0)             ## 000002F4
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0xF824           ## $at = 0001F824
	lw      t7, 0x0000(t6)             ## 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	and     t8, t7, $at                
	beq     t8, $zero, lbl_80871DD0    
	nop
	lw      t9, 0x02C0(s0)             ## 000002C0
	lh      t0, 0x0032(t9)             ## 00000032
	beq     $zero, $zero, lbl_80871DE4 
	sh      t0, 0x0032(s0)             ## 00000032
lbl_80871DD0:
	jal     func_800213B4              
	lw      a1, 0x02C0(s0)             ## 000002C0
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addu    t1, v0, $at                
	sh      t1, 0x0032(s0)             ## 00000032
lbl_80871DE4:
	addiu   t2, $zero, 0x0014          ## t2 = 00000014
	sw      t2, 0x0010($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x4000          ## a1 = 00004000
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	jal     func_80027090              
	or      a3, $zero, $zero           ## a3 = 00000000
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f4                   ## $f4 = 5.00
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f6                   ## $f6 = 10.00
	lui     t3, %hi(func_80872574)     ## t3 = 80870000
	addiu   t3, t3, %lo(func_80872574) ## t3 = 80872574
	sw      t3, 0x0180(s0)             ## 00000180
	swc1    $f4, 0x0068(s0)            ## 00000068
	swc1    $f6, 0x0060(s0)            ## 00000060
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80871E38:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x0EA4             ## a1 = 06000EA4
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	jal     func_8008D1C4              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     t7, %hi(func_80872608)     ## t7 = 80870000
	lh      t6, 0x00B6(a2)             ## 000000B6
	addiu   t7, t7, %lo(func_80872608) ## t7 = 80872608
	sw      t7, 0x0180(a2)             ## 00000180
	swc1    $f0, 0x0068(a2)            ## 00000068
	swc1    $f0, 0x0060(a2)            ## 00000060
	sh      t6, 0x0032(a2)             ## 00000032
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80871E8C:
	addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
	sw      s0, 0x0048($sp)            
	lui     a2, %hi(var_808730E0)      ## a2 = 80870000
	mtc1    $zero, $f0                 ## $f0 = 0.00
	addiu   a2, a2, %lo(var_808730E0)  ## a2 = 808730E0
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x004C($sp)           
	sw      a1, 0x005C($sp)            
	swc1    $f0, 0x0068(s0)            ## 00000068
	swc1    $f0, 0x0060(s0)            ## 00000060
	addiu   a1, s0, 0x0024             ## a1 = 00000024
	addiu   t6, $zero, 0x00FA          ## t6 = 000000FA
	addiu   t7, $zero, 0xFFF6          ## t7 = FFFFFFF6
	addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
	addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
	addiu   t0, $zero, 0x00FF          ## t0 = 000000FF
	addiu   t1, $zero, 0x00FF          ## t1 = 000000FF
	addiu   t2, $zero, 0x00FF          ## t2 = 000000FF
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	addiu   t4, $zero, 0x0009          ## t4 = 00000009
	addiu   t5, $zero, 0x0001          ## t5 = 00000001
	sw      t5, 0x003C($sp)            
	sw      t4, 0x0038($sp)            
	sw      t3, 0x0034($sp)            
	sw      t2, 0x0030($sp)            
	sw      t1, 0x0024($sp)            
	sw      t0, 0x0020($sp)            
	sw      t9, 0x001C($sp)            
	sw      t8, 0x0018($sp)            
	sw      t7, 0x0014($sp)            
	sw      t6, 0x0010($sp)            
	sw      a1, 0x0054($sp)            
	sw      $zero, 0x002C($sp)         
	sw      $zero, 0x0028($sp)         
	lw      a0, 0x005C($sp)            
	jal     func_8001E1D4              
	or      a3, a2, $zero              ## a3 = 808730E0
	lw      a0, 0x005C($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	lw      a2, 0x0054($sp)            
	jal     func_80013A84              
	addiu   a3, $zero, 0x00C0          ## a3 = 000000C0
	lui     t6, %hi(func_80872644)     ## t6 = 80870000
	addiu   t6, t6, %lo(func_80872644) ## t6 = 80872644
	sw      t6, 0x0180(s0)             ## 00000180
	lw      $ra, 0x004C($sp)           
	lw      s0, 0x0048($sp)            
	addiu   $sp, $sp, 0x0058           ## $sp = 00000000
	jr      $ra                        
	nop


func_80871F54:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0x9520             ## a1 = 06009520
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	lui     a2, 0xC0A0                 ## a2 = C0A00000
	jal     func_8008D21C              
	sw      a3, 0x0020($sp)            
	lw      a1, 0x0020($sp)            
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     t7, %hi(func_808726B8)     ## t7 = 80870000
	lwc1    $f4, 0x0094(a1)            ## 00000094
	addiu   t6, $zero, 0xFFE2          ## t6 = FFFFFFE2
	addiu   t7, t7, %lo(func_808726B8) ## t7 = 808726B8
	sh      t6, 0x0184(a1)             ## 00000184
	sw      t7, 0x0180(a1)             ## 00000180
	swc1    $f0, 0x0068(a1)            ## 00000068
	swc1    $f0, 0x0060(a1)            ## 00000060
	swc1    $f4, 0x02B4(a1)            ## 000002B4
	lw      a0, 0x0024($sp)            
	jal     func_800218C8              
	addiu   a2, $zero, 0x0025          ## a2 = 00000025
	lw      a3, 0x0020($sp)            
	lw      a0, 0x0024($sp)            
	addiu   a1, $zero, 0x251C          ## a1 = 0000251C
	addiu   a2, $zero, 0x270F          ## a2 = 0000270F
	jal     func_8006B6FC              
	sw      $zero, 0x0010($sp)         
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80871FDC:
	lw      t6, 0x0004(a0)             ## 00000004
	lh      t8, 0x001C(a0)             ## 0000001C
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	and     t7, t6, $at                
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	sh      $zero, 0x0184(a0)          ## 00000184
	sw      $zero, 0x0134(a0)          ## 00000134
	bne     t8, $at, lbl_80872010      
	sw      t7, 0x0004(a0)             ## 00000004
	lui     t9, %hi(func_808728DC)     ## t9 = 80870000
	addiu   t9, t9, %lo(func_808728DC) ## t9 = 808728DC
	jr      $ra                        
	sw      t9, 0x0180(a0)             ## 00000180
lbl_80872010:
	lui     t0, %hi(func_80872938)     ## t0 = 80870000
	addiu   t0, t0, %lo(func_80872938) ## t0 = 80872938
	sw      t0, 0x0180(a0)             ## 00000180
	jr      $ra                        
	nop


func_80872024:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f4                   ## $f4 = 20.00
	lui     $at, 0xC040                ## $at = C0400000
	mtc1    $at, $f6                   ## $f6 = -3.00
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0x19CC             ## a1 = 060019CC
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lui     a2, 0x3FC0                 ## a2 = 3FC00000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f4, 0x0010($sp)           
	jal     func_8008D17C              
	swc1    $f6, 0x0018($sp)           
	lbu     t7, 0x00B1(s0)             ## 000000B1
	mtc1    $zero, $f8                 ## $f8 = 0.00
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	bne     t7, $at, lbl_808720A4      
	swc1    $f8, 0x0068(s0)            ## 00000068
	addiu   t8, $zero, 0x0050          ## t8 = 00000050
	sw      t8, 0x0010($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x8000          ## a1 = FFFF8000
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	jal     func_80027090              
	or      a3, $zero, $zero           ## a3 = 00000000
	beq     $zero, $zero, lbl_808720CC 
	nop
lbl_808720A4:
	addiu   t9, $zero, 0x0050          ## t9 = 00000050
	sw      t9, 0x0010($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	jal     func_80027090              
	or      a3, $zero, $zero           ## a3 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x389E          ## a1 = 0000389E
lbl_808720CC:
	lui     t1, %hi(func_80872984)     ## t1 = 80870000
	addiu   t0, $zero, 0x0050          ## t0 = 00000050
	addiu   t1, t1, %lo(func_80872984) ## t1 = 80872984
	sh      t0, 0x0184(s0)             ## 00000184
	sw      t1, 0x0180(s0)             ## 00000180
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_808720F4:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lw      t6, 0x0024($sp)            
	lh      v0, 0x0184(s0)             ## 00000184
	lw      v1, 0x1C44(t6)             ## 00001C44
	addiu   t0, v0, 0xFFFF             ## t0 = FFFFFFFF
	addiu   a2, v1, 0x0024             ## a2 = 00000024
	lw      t8, 0x0000(a2)             ## 00000024
	sw      t8, 0x0024(s0)             ## 00000024
	lw      t7, 0x0004(a2)             ## 00000028
	sw      t7, 0x0028(s0)             ## 00000028
	lw      t8, 0x0008(a2)             ## 0000002C
	sw      t8, 0x002C(s0)             ## 0000002C
	lwc1    $f4, 0x0080(v1)            ## 00000080
	swc1    $f4, 0x0080(s0)            ## 00000080
	lw      t9, 0x0078(v1)             ## 00000078
	beq     v0, $zero, lbl_8087214C    
	sw      t9, 0x0078(s0)             ## 00000078
	sh      t0, 0x0184(s0)             ## 00000184
lbl_8087214C:
	lw      v0, 0x066C(v1)             ## 0000066C
	sll     t1, v0, 11                 
	bltz    t1, lbl_808721AC           
	sll     t2, v0,  4                 
	bltz    t2, lbl_808721AC           
	nop
	lhu     t3, 0x0088(v1)             ## 00000088
	andi    t4, t3, 0x0001             ## t4 = 00000000
	beq     t4, $zero, lbl_808721AC    
	nop
	lh      t5, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	addiu   a0, s0, 0x0008             ## a0 = 00000008
	bnel    t5, $at, lbl_808721C0      
	lh      v0, 0x0184(s0)             ## 00000184
	jal     func_80063EB8              
	or      a1, a2, $zero              ## a1 = 00000024
	lui     $at, 0x43A0                ## $at = 43A00000
	mtc1    $at, $f6                   ## $f6 = 320.00
	nop
	c.lt.s  $f6, $f0                   
	nop
	bc1fl   lbl_808721C0               
	lh      v0, 0x0184(s0)             ## 00000184
lbl_808721AC:
	jal     func_800C9884              
	addiu   a0, $zero, 0x3890          ## a0 = 00003890
	addiu   t6, $zero, 0x0082          ## t6 = 00000082
	sh      t6, 0x0184(s0)             ## 00000184
	lh      v0, 0x0184(s0)             ## 00000184
lbl_808721C0:
	addiu   $at, $zero, 0x0050         ## $at = 00000050
	or      a0, s0, $zero              ## a0 = 00000000
	bne     v0, $at, lbl_808721DC      
	nop
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3890          ## a1 = 00003890
	lh      v0, 0x0184(s0)             ## 00000184
lbl_808721DC:
	bne     v0, $zero, lbl_808721EC    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80871A98              
	lw      a1, 0x0024($sp)            
lbl_808721EC:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80872200:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lw      v1, 0x1C44(a1)             ## 00001C44
	sw      a2, 0x0020($sp)            
	sw      a1, 0x0024($sp)            
	or      a0, a1, $zero              ## a0 = 00000000
	jal     func_8007943C              
	sw      v1, 0x001C($sp)            
	lw      v1, 0x001C($sp)            
	lw      a1, 0x0024($sp)            
	bne     v0, $zero, lbl_808722BC    
	lw      a2, 0x0020($sp)            
	lw      t6, 0x0670(v1)             ## 00000670
	andi    t7, t6, 0x0010             ## t7 = 00000000
	bnel    t7, $zero, lbl_808722C0    
	lw      $ra, 0x0014($sp)           
	lb      t8, 0x0A68(v1)             ## 00000A68
	lui     $at, 0x41F0                ## $at = 41F00000
	bltzl   t8, lbl_808722C0           
	lw      $ra, 0x0014($sp)           
	lwc1    $f4, 0x0090(a2)            ## 00000090
	mtc1    $at, $f6                   ## $f6 = 30.00
	lui     $at, 0xC0A0                ## $at = C0A00000
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_808722C0               
	lw      $ra, 0x0014($sp)           
	lwc1    $f0, 0x0094(a2)            ## 00000094
	mtc1    $at, $f8                   ## $f8 = -5.00
	nop
	c.lt.s  $f0, $f8                   
	nop
	bc1fl   lbl_808722C0               
	lw      $ra, 0x0014($sp)           
	lh      t9, 0x04CA(v1)             ## 000004CA
	addiu   t0, t9, 0x000A             ## t0 = 0000000A
	mtc1    t0, $f10                   ## $f10 = 0.00
	nop
	cvt.s.w $f16, $f10                 
	neg.s   $f18, $f16                 
	c.lt.s  $f18, $f0                  
	nop
	bc1fl   lbl_808722C0               
	lw      $ra, 0x0014($sp)           
	jal     func_80871F54              
	or      a0, a2, $zero              ## a0 = 00000000
lbl_808722BC:
	lw      $ra, 0x0014($sp)           
lbl_808722C0:
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_808722CC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_8008C9C0              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	beql    v0, $zero, lbl_808722FC    
	lw      $ra, 0x0014($sp)           
	jal     func_80871C20              
	lw      a0, 0x0018($sp)            
	lw      $ra, 0x0014($sp)           
lbl_808722FC:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80872308:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_8008C9C0              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	beql    v0, $zero, lbl_80872338    
	lw      t6, 0x0018($sp)            
	jal     func_80871C60              
	lw      a0, 0x0018($sp)            
	lw      t6, 0x0018($sp)            
lbl_80872338:
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addiu   a2, $zero, 0x00B6          ## a2 = 000000B6
	lh      a1, 0x008A(t6)             ## 0000008A
	addiu   a0, t6, 0x0032             ## a0 = 00000032
	addu    a1, a1, $at                
	sll     a1, a1, 16                 
	jal     func_80063704              
	sra     a1, a1, 16                 
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80872368:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s1, 0x0018($sp)            
	or      s1, a0, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      s0, 0x0014($sp)            
	sw      a1, 0x0024($sp)            
	addiu   s0, s1, 0x013C             ## s0 = 0000013C
	jal     func_8008C9C0              
	or      a0, s0, $zero              ## a0 = 0000013C
	beql    v0, $zero, lbl_808723A0    
	lh      a1, 0x008A(s1)             ## 0000008A
	jal     func_80871CB0              
	or      a0, s1, $zero              ## a0 = 00000000
	lh      a1, 0x008A(s1)             ## 0000008A
lbl_808723A0:
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addiu   a0, s1, 0x0032             ## a0 = 00000032
	addu    a1, a1, $at                
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	jal     func_80063704              
	addiu   a2, $zero, 0x00B6          ## a2 = 000000B6
	or      a0, s0, $zero              ## a0 = 0000013C
	jal     func_8008D6A8              
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	bne     v0, $zero, lbl_808723FC    
	or      a0, s0, $zero              ## a0 = 0000013C
	jal     func_8008D6A8              
	lui     a1, 0x4140                 ## a1 = 41400000
	bne     v0, $zero, lbl_808723FC    
	or      a0, s0, $zero              ## a0 = 0000013C
	jal     func_8008D6A8              
	lui     a1, 0x41C0                 ## a1 = 41C00000
	bne     v0, $zero, lbl_808723FC    
	or      a0, s0, $zero              ## a0 = 0000013C
	jal     func_8008D6A8              
	lui     a1, 0x4210                 ## a1 = 42100000
	beq     v0, $zero, lbl_80872408    
lbl_808723FC:
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3894          ## a1 = 00003894
lbl_80872408:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_8087241C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_8008C9C0              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	beql    v0, $zero, lbl_8087244C    
	lw      $ra, 0x0014($sp)           
	jal     func_80871CF8              
	lw      a0, 0x0018($sp)            
	lw      $ra, 0x0014($sp)           
lbl_8087244C:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80872458:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	lw      t6, 0x002C($sp)            
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lw      t7, 0x1C44(t6)             ## 00001C44
	sw      a0, 0x0020($sp)            
	jal     func_8008C9C0              
	sw      t7, 0x0024($sp)            
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f0                   ## $f0 = 20.00
	lwc1    $f4, 0x0154(s0)            ## 00000154
	lw      a0, 0x0020($sp)            
	mfc1    a1, $f0                    
	c.lt.s  $f0, $f4                   
	lui     $at, 0x41F0                ## $at = 41F00000
	bc1f    lbl_808724C4               
	nop
	lwc1    $f6, 0x0028(s0)            ## 00000028
	mtc1    $at, $f8                   ## $f8 = 30.00
	lh      t8, 0x0184(s0)             ## 00000184
	add.s   $f10, $f6, $f8             
	addiu   t9, t8, 0x0009             ## t9 = 00000009
	sh      t9, 0x0184(s0)             ## 00000184
	swc1    $f10, 0x0028(s0)           ## 00000028
lbl_808724C4:
	jal     func_8008D6A8              
	nop
	beq     v0, $zero, lbl_808724DC    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3891          ## a1 = 00003891
lbl_808724DC:
	lui     $at, 0xC461                ## $at = C4610000
	mtc1    $at, $f18                  ## $f18 = -900.00
	lwc1    $f16, 0x0094(s0)           ## 00000094
	c.lt.s  $f16, $f18                 
	nop
	bc1fl   lbl_80872564               
	lw      $ra, 0x001C($sp)           
	lh      v0, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	bne     v0, $at, lbl_80872518      
	nop
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80872564 
	lw      $ra, 0x001C($sp)           
lbl_80872518:
	beq     v0, $zero, lbl_80872544    
	lw      a1, 0x0024($sp)            
	addiu   a0, s0, 0x0008             ## a0 = 00000008
	jal     func_80063EB8              
	addiu   a1, a1, 0x0024             ## a1 = 00000024
	lui     $at, 0x4348                ## $at = 43480000
	mtc1    $at, $f4                   ## $f4 = 200.00
	nop
	c.lt.s  $f0, $f4                   
	nop
	bc1f    lbl_80872558               
lbl_80872544:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80871A3C              
	lw      a1, 0x002C($sp)            
	beq     $zero, $zero, lbl_80872564 
	lw      $ra, 0x001C($sp)           
lbl_80872558:
	jal     func_80871FDC              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x001C($sp)           
lbl_80872564:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80872574:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a0, 0x0024($sp)            
	beql    v0, $zero, lbl_808725C8    
	lw      a0, 0x0024($sp)            
	lbu     t6, 0x00AF(s0)             ## 000000AF
	or      a0, s0, $zero              ## a0 = 00000000
	bne     t6, $zero, lbl_808725BC    
	nop
	jal     func_80871E8C              
	lw      a1, 0x002C($sp)            
	beq     $zero, $zero, lbl_808725C8 
	lw      a0, 0x0024($sp)            
lbl_808725BC:
	jal     func_80871E38              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a0, 0x0024($sp)            
lbl_808725C8:
	jal     func_8008D6A8              
	lui     a1, 0x4150                 ## a1 = 41500000
	beq     v0, $zero, lbl_808725E0    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x387B          ## a1 = 0000387B
lbl_808725E0:
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	jal     func_8006385C              
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80872608:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_8008C9C0              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	beql    v0, $zero, lbl_80872638    
	lw      $ra, 0x0014($sp)           
	jal     func_80871CF8              
	lw      a0, 0x0018($sp)            
	lw      $ra, 0x0014($sp)           
lbl_80872638:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80872644:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lui     a2, 0x3AC4                 ## a2 = 3AC40000
	ori     a2, a2, 0x9BA6             ## a2 = 3AC49BA6
	addiu   a0, s0, 0x0050             ## a0 = 00000050
	jal     func_8006385C              
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	beq     v0, $zero, lbl_8087269C    
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a1, 0x3C23                 ## a1 = 3C230000
	jal     func_80020F88              
	ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
	lw      a0, 0x0024($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a2, s0, 0x0024             ## a2 = 00000024
	jal     func_80013A84              
	addiu   a3, $zero, 0x00C0          ## a3 = 000000C0
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8087269C:
	lwc1    $f0, 0x0050(s0)            ## 00000050
	swc1    $f0, 0x0058(s0)            ## 00000058
	swc1    $f0, 0x0054(s0)            ## 00000054
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_808726B8:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0034($sp)            
	lw      t6, 0x0034($sp)            
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lui     a1, 0x3F80                 ## a1 = 3F800000
	lw      t7, 0x1C44(t6)             ## 00001C44
	sw      a0, 0x0024($sp)            
	jal     func_8008D6A8              
	sw      t7, 0x002C($sp)            
	beq     v0, $zero, lbl_80872728    
	lui     t8, 0x8012                 ## t8 = 80120000
	lw      t8, -0x5A2C(t8)            ## 8011A5D4
	addiu   a1, $zero, 0x6825          ## a1 = 00006825
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t8, $zero, lbl_80872714    
	nop
	jal     func_80022F84              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80872720 
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80872714:
	jal     func_80022F84              
	addiu   a1, $zero, 0x6805          ## a1 = 00006805
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80872720:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3892          ## a1 = 00003892
lbl_80872728:
	jal     func_8008C9C0              
	lw      a0, 0x0024($sp)            
	beq     v0, $zero, lbl_80872838    
	lui     t3, 0x8012                 ## t3 = 80120000
	lw      v1, 0x002C($sp)            
	lwc1    $f4, 0x0024(s0)            ## 00000024
	lui     $at, 0x4120                ## $at = 41200000
	lui     t0, 0x8012                 ## t0 = 80120000
	swc1    $f4, 0x0024(v1)            ## 00000024
	lwc1    $f6, 0x002C(s0)            ## 0000002C
	lui     t1, 0x8012                 ## t1 = 80120000
	swc1    $f6, 0x002C(v1)            ## 0000002C
	lh      t9, 0x0184(s0)             ## 00000184
	bgezl   t9, lbl_80872780           
	lwc1    $f18, 0x0028(s0)           ## 00000028
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f10                  ## $f10 = 2.00
	lwc1    $f8, 0x0028(s0)            ## 00000028
	add.s   $f16, $f8, $f10            
	beq     $zero, $zero, lbl_80872790 
	swc1    $f16, 0x0028(s0)           ## 00000028
	lwc1    $f18, 0x0028(s0)           ## 00000028
lbl_80872780:
	mtc1    $at, $f4                   ## $f4 = 2.00
	nop
	add.s   $f6, $f18, $f4             
	swc1    $f6, 0x0028(s0)            ## 00000028
lbl_80872790:
	lw      t0, -0x5A2C(t0)            ## 8011A5D4
	lui     $at, 0x4248                ## $at = 42480000
	beql    t0, $zero, lbl_808727BC    
	lwc1    $f18, 0x0028(s0)           ## 00000028
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f10                  ## $f10 = 30.00
	lwc1    $f8, 0x0028(s0)            ## 00000028
	sub.s   $f16, $f8, $f10            
	beq     $zero, $zero, lbl_808727CC 
	swc1    $f16, 0x0028(v1)           ## 00000028
	lwc1    $f18, 0x0028(s0)           ## 00000028
lbl_808727BC:
	mtc1    $at, $f4                   ## $f4 = 30.00
	nop
	sub.s   $f6, $f18, $f4             
	swc1    $f6, 0x0028(v1)            ## 00000028
lbl_808727CC:
	lh      v0, 0x0184(s0)             ## 00000184
	addiu   $at, $zero, 0xFFE2         ## $at = FFFFFFE2
	bne     v0, $at, lbl_80872814      
	nop
	lw      t1, -0x5A2C(t1)            ## 8011A5D4
	addiu   a1, $zero, 0x682C          ## a1 = 0000682C
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t1, $zero, lbl_80872804    
	nop
	jal     func_80022F84              
	or      a0, s0, $zero              ## a0 = 00000000
	lh      v0, 0x0184(s0)             ## 00000184
	beq     $zero, $zero, lbl_80872814 
	lw      v1, 0x002C($sp)            
lbl_80872804:
	jal     func_80022F84              
	addiu   a1, $zero, 0x680C          ## a1 = 0000680C
	lh      v0, 0x0184(s0)             ## 00000184
	lw      v1, 0x002C($sp)            
lbl_80872814:
	bne     v0, $zero, lbl_8087282C    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3891          ## a1 = 00003891
	lh      v0, 0x0184(s0)             ## 00000184
	lw      v1, 0x002C($sp)            
lbl_8087282C:
	addiu   t2, v0, 0x0002             ## t2 = 00000002
	beq     $zero, $zero, lbl_80872884 
	sh      t2, 0x0184(s0)             ## 00000184
lbl_80872838:
	lw      t3, -0x5A2C(t3)            ## FFFFA5D4
	lw      t4, 0x002C($sp)            
	lui     $at, 0x4248                ## $at = 42480000
	beql    t3, $zero, lbl_80872860    
	mtc1    $at, $f0                   ## $f0 = 50.00
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f0                   ## $f0 = 30.00
	beq     $zero, $zero, lbl_80872868 
	lwc1    $f8, 0x0028(t4)            ## 00000028
	mtc1    $at, $f0                   ## $f0 = 30.00
lbl_80872860:
	nop
	lwc1    $f8, 0x0028(t4)            ## 00000028
lbl_80872868:
	addiu   a0, s0, 0x0028             ## a0 = 00000028
	lui     a2, 0x40A0                 ## a2 = 40A00000
	add.s   $f10, $f0, $f8             
	mfc1    a1, $f10                   
	jal     func_8006385C              
	nop
	lw      v1, 0x002C($sp)            
lbl_80872884:
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	lw      a1, 0x0024(v1)             ## 00000024
	jal     func_8006385C              
	lui     a2, 0x4040                 ## a2 = 40400000
	lw      t5, 0x002C($sp)            
	addiu   a0, s0, 0x002C             ## a0 = 0000002C
	lui     a2, 0x4040                 ## a2 = 40400000
	jal     func_8006385C              
	lw      a1, 0x002C(t5)             ## 0000002C
	lh      t6, 0x0184(s0)             ## 00000184
	addiu   $at, $zero, 0x001E         ## $at = 0000001E
	bnel    t6, $at, lbl_808728CC      
	lw      $ra, 0x001C($sp)           
	jal     func_800646F0              
	addiu   a0, $zero, 0x5801          ## a0 = 00005801
	jal     func_8009DAB0              
	lw      a0, 0x0034($sp)            
	lw      $ra, 0x001C($sp)           
lbl_808728CC:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_808728DC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      t6, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	lw      v0, 0x1C44(t6)             ## 00001C44
	addiu   a0, a0, 0x0008             ## a0 = 00000008
	jal     func_80063EB8              
	addiu   a1, v0, 0x0024             ## a1 = 00000024
	lui     $at, 0x4348                ## $at = 43480000
	mtc1    $at, $f4                   ## $f4 = 200.00
	lw      a0, 0x0018($sp)            
	c.lt.s  $f0, $f4                   
	nop
	bc1fl   lbl_8087292C               
	lw      $ra, 0x0014($sp)           
	jal     func_80871A3C              
	lw      a1, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
lbl_8087292C:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80872938:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      t6, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_8002049C              
	lh      a1, 0x0186(t6)             ## 00000186
	beq     v0, $zero, lbl_80872974    
	lw      a0, 0x0018($sp)            
	jal     func_80871A3C              
	lw      a1, 0x001C($sp)            
	lw      t8, 0x0018($sp)            
	addiu   t7, $zero, 0x0051          ## t7 = 00000051
	sh      t7, 0x0184(t8)             ## 00000184
lbl_80872974:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80872984:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	lh      v0, 0x0184(a2)             ## 00000184
	beq     v0, $zero, lbl_808729B8    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x0184(a2)             ## 00000184
	lh      v0, 0x0184(a2)             ## 00000184
lbl_808729B8:
	bnel    v0, $zero, lbl_808729EC    
	lw      $ra, 0x0014($sp)           
	lbu     t7, 0x00AF(a2)             ## 000000AF
	or      a0, a2, $zero              ## a0 = 00000000
	bne     t7, $zero, lbl_808729E0    
	nop
	jal     func_80871E8C              
	lw      a1, 0x001C($sp)            
	beq     $zero, $zero, lbl_808729EC 
	lw      $ra, 0x0014($sp)           
lbl_808729E0:
	jal     func_80871CF8              
	or      a0, a2, $zero              ## a0 = 00000000
	lw      $ra, 0x0014($sp)           
lbl_808729EC:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808729F8:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	lbu     v0, 0x02C9(s0)             ## 000002C9
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x02D0             ## a1 = 000002D0
	andi    t6, v0, 0x0002             ## t6 = 00000000
	beq     t6, $zero, lbl_80872B00    
	andi    t7, v0, 0xFFFD             ## t7 = 00000000
	sb      t7, 0x02C9(s0)             ## 000002C9
	jal     func_800283BC              
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	lbu     t8, 0x00B1(s0)             ## 000000B1
	bne     t8, $zero, lbl_80872A48    
	nop
	lbu     t9, 0x00B0(s0)             ## 000000B0
	beql    t9, $zero, lbl_80872B04    
	lw      $ra, 0x0024($sp)           
lbl_80872A48:
	jal     func_80028390              
	or      a0, s0, $zero              ## a0 = 00000000
	bne     v0, $zero, lbl_80872A80    
	lw      a0, 0x002C($sp)            
	jal     func_80025B4C              
	or      a1, s0, $zero              ## a1 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3896          ## a1 = 00003896
	lw      t0, 0x0004(s0)             ## 00000004
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	and     t1, t0, $at                
	beq     $zero, $zero, lbl_80872A98 
	sw      t1, 0x0004(s0)             ## 00000004
lbl_80872A80:
	lbu     t2, 0x00B0(s0)             ## 000000B0
	or      a0, s0, $zero              ## a0 = 00000000
	beql    t2, $zero, lbl_80872A9C    
	lbu     v0, 0x00B1(s0)             ## 000000B1
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3895          ## a1 = 00003895
lbl_80872A98:
	lbu     v0, 0x00B1(s0)             ## 000000B1
lbl_80872A9C:
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	beq     v0, $at, lbl_80872AB0      
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bnel    v0, $at, lbl_80872AD8      
	addiu   $at, $zero, 0x0002         ## $at = 00000002
lbl_80872AB0:
	lw      t4, 0x0180(s0)             ## 00000180
	lui     t3, %hi(func_80872984)     ## t3 = 80870000
	addiu   t3, t3, %lo(func_80872984) ## t3 = 80872984
	beql    t3, t4, lbl_80872B04       
	lw      $ra, 0x0024($sp)           
	jal     func_80872024              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80872B04 
	lw      $ra, 0x0024($sp)           
	addiu   $at, $zero, 0x0002         ## $at = 00000002
lbl_80872AD8:
	bne     v0, $at, lbl_80872AF8      
	lw      a0, 0x002C($sp)            
	addiu   t5, $zero, 0x0028          ## t5 = 00000028
	sw      t5, 0x0010($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a2, s0, 0x0024             ## a2 = 00000024
	jal     func_8001E178              
	addiu   a3, $zero, 0x0028          ## a3 = 00000028
lbl_80872AF8:
	jal     func_80871D7C              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80872B00:
	lw      $ra, 0x0024($sp)           
lbl_80872B04:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80872B14:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x003C($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_808729F8              
	lw      a1, 0x003C($sp)            
	lw      t9, 0x0180(s0)             ## 00000180
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x003C($sp)            
	jalr    $ra, t9                    
	nop
	lw      v0, 0x0180(s0)             ## 00000180
	lui     t6, %hi(func_808720F4)     ## t6 = 80870000
	addiu   t6, t6, %lo(func_808720F4) ## t6 = 808720F4
	beq     t6, v0, lbl_80872CC8       
	lui     t7, %hi(func_808728DC)     ## t7 = 80870000
	addiu   t7, t7, %lo(func_808728DC) ## t7 = 808728DC
	beq     t7, v0, lbl_80872CC8       
	lui     v1, %hi(func_808726B8)     ## v1 = 80870000
	addiu   v1, v1, %lo(func_808726B8) ## v1 = 808726B8
	beq     v1, v0, lbl_80872CC8       
	lui     t8, %hi(func_80872938)     ## t8 = 80870000
	addiu   t8, t8, %lo(func_80872938) ## t8 = 80872938
	beq     t8, v0, lbl_80872CC8       
	lui     t0, %hi(func_80872458)     ## t0 = 80870000
	addiu   t0, t0, %lo(func_80872458) ## t0 = 80872458
	beq     t0, v0, lbl_80872BA0       
	nop
	beq     v1, v0, lbl_80872BA0       
	nop
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      v0, 0x0180(s0)             ## 00000180
lbl_80872BA0:
	lui     v1, %hi(func_80872200)     ## v1 = 80870000
	addiu   v1, v1, %lo(func_80872200) ## v1 = 80872200
	beq     v1, v0, lbl_80872BE0       
	lw      a0, 0x003C($sp)            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   t1, $zero, 0x001D          ## t1 = 0000001D
	sw      t1, 0x0014($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	lui     a2, 0x41A0                 ## a2 = 41A00000
	lui     a3, 0x41C8                 ## a3 = 41C80000
	sw      v1, 0x002C($sp)            
	jal     func_80021E6C              
	swc1    $f4, 0x0010($sp)           
	lw      v1, 0x002C($sp)            
	beq     $zero, $zero, lbl_80872C1C 
	lw      v0, 0x0180(s0)             ## 00000180
lbl_80872BE0:
	lwc1    $f0, 0x02B4(s0)            ## 000002B4
	lwc1    $f6, 0x0028(s0)            ## 00000028
	c.le.s  $f6, $f0                   
	nop
	bc1f    lbl_80872C1C               
	nop
	mtc1    $zero, $f8                 ## $f8 = 0.00
	swc1    $f0, 0x0028(s0)            ## 00000028
	or      a0, s0, $zero              ## a0 = 00000000
	swc1    $f8, 0x0060(s0)            ## 00000060
	sw      v1, 0x002C($sp)            
	jal     func_80871B5C              
	lw      a1, 0x003C($sp)            
	lw      v1, 0x002C($sp)            
	lw      v0, 0x0180(s0)             ## 00000180
lbl_80872C1C:
	lui     t2, %hi(func_80872644)     ## t2 = 80870000
	addiu   t2, t2, %lo(func_80872644) ## t2 = 80872644
	beq     t2, v0, lbl_80872C98       
	nop
	beq     v1, v0, lbl_80872C98       
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x02B8             ## a1 = 000002B8
	jal     func_80050B00              
	sw      a1, 0x0028($sp)            
	lw      a0, 0x003C($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	addu    a1, a0, $at                
	sw      a1, 0x002C($sp)            
	jal     func_8004C130              ## CollisionCheck_setOT
	lw      a2, 0x0028($sp)            
	lw      t4, 0x0180(s0)             ## 00000180
	lui     t3, %hi(func_80872574)     ## t3 = 80870000
	addiu   t3, t3, %lo(func_80872574) ## t3 = 80872574
	beq     t3, t4, lbl_80872C98       
	lw      a1, 0x002C($sp)            
	lhu     t5, 0x0088(s0)             ## 00000088
	andi    t9, t5, 0x0001             ## t9 = 00000000
	beq     t9, $zero, lbl_80872C98    
	nop
	lhu     t6, 0x0110(s0)             ## 00000110
	lw      a0, 0x003C($sp)            
	bne     t6, $zero, lbl_80872C98    
	nop
	jal     func_8004BF40              ## CollisionCheck_setAC
	lw      a2, 0x0028($sp)            
lbl_80872C98:
	lui     t7, %hi(func_80872574)     ## t7 = 80870000
	addiu   t7, t7, %lo(func_80872574) ## t7 = 80872574
	sw      t7, 0x002C($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80020F04              
	lui     a1, 0x41C8                 ## a1 = 41C80000
	lw      t8, 0x002C($sp)            
	lw      t0, 0x0180(s0)             ## 00000180
	beql    t8, t0, lbl_80872CCC       
	lw      $ra, 0x0024($sp)           
	lh      t1, 0x0032(s0)             ## 00000032
	sh      t1, 0x00B6(s0)             ## 000000B6
lbl_80872CC8:
	lw      $ra, 0x0024($sp)           
lbl_80872CCC:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_80872CDC:
	addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
	sw      s0, 0x001C($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      s1, 0x0020($sp)            
	sw      a1, 0x0094($sp)            
	lw      t6, 0x0078(s0)             ## 00000078
	beql    t6, $zero, lbl_80872E60    
	lw      $ra, 0x0024($sp)           
	lh      t7, 0x0184(s0)             ## 00000184
	lw      t0, 0x0094($sp)            
	slti    $at, t7, 0x0051            
	bnel    $at, $zero, lbl_80872D2C   
	lw      a0, 0x0000(t0)             ## 00000000
	lw      t9, 0x0180(s0)             ## 00000180
	lui     t8, %hi(func_80872984)     ## t8 = 80870000
	addiu   t8, t8, %lo(func_80872984) ## t8 = 80872984
	bnel    t8, t9, lbl_80872E60       
	lw      $ra, 0x0024($sp)           
	lw      a0, 0x0000(t0)             ## 00000000
lbl_80872D2C:
	jal     func_8007E404              
	or      s1, a0, $zero              ## s1 = 00000000
	lw      v1, 0x02D0(s1)             ## 000002D0
	lui     t2, 0xFA00                 ## t2 = FA000000
	addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
	addiu   t1, v1, 0x0008             ## t1 = 00000008
	sw      t1, 0x02D0(s1)             ## 000002D0
	sw      t3, 0x0004(v1)             ## 00000004
	sw      t2, 0x0000(v1)             ## 00000000
	lw      a0, 0x0078(s0)             ## 00000078
	lw      a1, 0x0024(s0)             ## 00000024
	lw      a2, 0x0080(s0)             ## 00000080
	lw      a3, 0x002C(s0)             ## 0000002C
	addiu   t4, $sp, 0x0048            ## t4 = FFFFFFB8
	jal     func_8002B668              
	sw      t4, 0x0010($sp)            
	addiu   a0, $sp, 0x0048            ## a0 = FFFFFFB8
	jal     func_800AA79C              
	or      a1, $zero, $zero           ## a1 = 00000000
	lw      v0, 0x0180(s0)             ## 00000180
	lui     t5, %hi(func_808720F4)     ## t5 = 80870000
	addiu   t5, t5, %lo(func_808720F4) ## t5 = 808720F4
	beq     t5, v0, lbl_80872DC8       
	lui     t6, %hi(func_80872458)     ## t6 = 80870000
	addiu   t6, t6, %lo(func_80872458) ## t6 = 80872458
	beq     t6, v0, lbl_80872DC8       
	lui     t7, %hi(func_808726B8)     ## t7 = 80870000
	addiu   t7, t7, %lo(func_808726B8) ## t7 = 808726B8
	beq     t7, v0, lbl_80872DC8       
	lui     t8, %hi(func_80872938)     ## t8 = 80870000
	addiu   t8, t8, %lo(func_80872938) ## t8 = 80872938
	beq     t8, v0, lbl_80872DC8       
	lui     $at, 0x4248                ## $at = 42480000
	lwc1    $f4, 0x0050(s0)            ## 00000050
	mtc1    $at, $f6                   ## $f6 = 50.00
	nop
	mul.s   $f12, $f4, $f6             
	beq     $zero, $zero, lbl_80872E04 
	lui     $at, 0x3F80                ## $at = 3F800000
lbl_80872DC8:
	lh      t9, 0x0184(s0)             ## 00000184
	addiu   t0, $zero, 0x0050          ## t0 = 00000050
	subu    v0, t0, t9                 
	slti    $at, v0, 0x0051            
	bne     $at, $zero, lbl_80872DE8   
	or      v1, v0, $zero              ## v1 = 00000000
	beq     $zero, $zero, lbl_80872DE8 
	addiu   v1, $zero, 0x0050          ## v1 = 00000050
lbl_80872DE8:
	mtc1    v1, $f8                    ## $f8 = 0.00
	lui     $at, %hi(var_808730F0)     ## $at = 80870000
	lwc1    $f16, %lo(var_808730F0)($at) 
	cvt.s.w $f10, $f8                  
	mul.s   $f12, $f10, $f16           
	nop
	lui     $at, 0x3F80                ## $at = 3F800000
lbl_80872E04:
	mtc1    $at, $f14                  ## $f14 = 1.00
	mfc1    a2, $f12                   
	jal     func_800AA8FC              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t2, 0xDA38                 ## t2 = DA380000
	ori     t2, t2, 0x0003             ## t2 = DA380003
	addiu   t1, s0, 0x0008             ## t1 = 00000008
	sw      t1, 0x02D0(s1)             ## 000002D0
	sw      t2, 0x0000(s0)             ## 00000000
	lw      t3, 0x0094($sp)            
	jal     func_800AB900              
	lw      a0, 0x0000(t3)             ## 00000000
	sw      v0, 0x0004(s0)             ## 00000004
	lw      v1, 0x02D0(s1)             ## 000002D0
	lui     t6, 0x0405                 ## t6 = 04050000
	addiu   t6, t6, 0xE740             ## t6 = 0404E740
	addiu   t4, v1, 0x0008             ## t4 = 00000008
	sw      t4, 0x02D0(s1)             ## 000002D0
	lui     t5, 0xDE00                 ## t5 = DE000000
	sw      t5, 0x0000(v1)             ## 00000000
	sw      t6, 0x0004(v1)             ## 00000004
	lw      $ra, 0x0024($sp)           
lbl_80872E60:
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0090           ## $sp = 00000000


func_80872E70:
	sw      a0, 0x0000($sp)            
	sw      a2, 0x0008($sp)            
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bne     a1, $at, lbl_80872ED8      
	lw      v0, 0x0014($sp)            
	lw      t7, 0x0180(v0)             ## 00000180
	lui     t6, %hi(func_808726B8)     ## t6 = 80870000
	addiu   t6, t6, %lo(func_808726B8) ## t6 = 808726B8
	beq     t6, t7, lbl_80872EB0       
	lui     $at, 0x44C8                ## $at = 44C80000
	lwc1    $f4, 0x0008(a3)            ## 00000008
	mtc1    $at, $f6                   ## $f6 = 1600.00
	nop
	sub.s   $f8, $f4, $f6              
	beq     $zero, $zero, lbl_80872ED8 
	swc1    $f8, 0x0008(a3)            ## 00000008
lbl_80872EB0:
	lwc1    $f0, 0x014C(v0)            ## 0000014C
	lwc1    $f16, 0x0154(v0)           ## 00000154
	lui     $at, 0x44C8                ## $at = 44C80000
	mtc1    $at, $f10                  ## $f10 = 1600.00
	sub.s   $f18, $f0, $f16            
	lwc1    $f8, 0x0008(a3)            ## 00000008
	mul.s   $f4, $f10, $f18            
	div.s   $f6, $f4, $f0              
	sub.s   $f16, $f8, $f6             
	swc1    $f16, 0x0008(a3)           ## 00000008
lbl_80872ED8:
	or      v0, $zero, $zero           ## v0 = 00000000
	jr      $ra                        
	nop


func_80872EE4:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      $ra, 0x001C($sp)           
	sw      s0, 0x0018($sp)            
	sw      a0, 0x0030($sp)            
	sw      a2, 0x0038($sp)            
	sw      a3, 0x003C($sp)            
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	bne     a1, $at, lbl_80872FC0      
	lw      t6, 0x0030($sp)            
	jal     func_800AA6EC              
	lw      s0, 0x0000(t6)             ## 00000000
	lui     $at, 0x44C8                ## $at = 44C80000
	mtc1    $at, $f12                  ## $f12 = 1600.00
	lui     $at, 0xC42F                ## $at = C42F0000
	mtc1    $at, $f14                  ## $f14 = -700.00
	lui     a2, 0xC4D4                 ## a2 = C4D40000
	ori     a2, a2, 0x8000             ## a2 = C4D48000
	jal     func_800AA7F4              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lui     $at, %hi(var_808730F4)     ## $at = 80870000
	lwc1    $f12, %lo(var_808730F4)($at) 
	jal     func_800AAB94              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lui     $at, %hi(var_808730F8)     ## $at = 80870000
	lwc1    $f12, %lo(var_808730F8)($at) 
	jal     func_800AAD4C              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f12                  ## $f12 = 2.00
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mfc1    a2, $f12                   
	jal     func_800AA8FC              
	mov.s   $f14, $f12                 
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t8, 0xDA38                 ## t8 = DA380000
	ori     t8, t8, 0x0003             ## t8 = DA380003
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s0)             ## 000002C0
	sw      t8, 0x0000(v1)             ## 00000000
	lw      t9, 0x0030($sp)            
	lw      a0, 0x0000(t9)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x0024($sp)            
	lw      a1, 0x0024($sp)            
	lui     t1, 0xDE00                 ## t1 = DE000000
	sw      v0, 0x0004(a1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t2, 0x0601                 ## t2 = 06010000
	addiu   t2, t2, 0x8688             ## t2 = 06008688
	addiu   t0, v1, 0x0008             ## t0 = 00000008
	sw      t0, 0x02C0(s0)             ## 000002C0
	sw      t2, 0x0004(v1)             ## 00000004
	sw      t1, 0x0000(v1)             ## 00000000
	jal     func_800AA724              
	nop
lbl_80872FC0:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80872FD4:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x0034($sp)            
	lw      t7, 0x0180(s0)             ## 00000180
	lui     t6, %hi(func_808720F4)     ## t6 = 80870000
	addiu   t6, t6, %lo(func_808720F4) ## t6 = 808720F4
	beq     t6, t7, lbl_80873034       
	lw      t8, 0x0034($sp)            
	jal     func_8007E298              
	lw      a0, 0x0000(t8)             ## 00000000
	lw      a1, 0x0140(s0)             ## 00000140
	lw      a2, 0x015C(s0)             ## 0000015C
	lbu     a3, 0x013E(s0)             ## 0000013E
	lui     t9, %hi(func_80872E70)     ## t9 = 80870000
	lui     t0, %hi(func_80872EE4)     ## t0 = 80870000
	addiu   t0, t0, %lo(func_80872EE4) ## t0 = 80872EE4
	addiu   t9, t9, %lo(func_80872E70) ## t9 = 80872E70
	sw      t9, 0x0010($sp)            
	sw      t0, 0x0014($sp)            
	sw      s0, 0x0018($sp)            
	jal     func_80089D8C              
	lw      a0, 0x0034($sp)            
lbl_80873034:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80872CDC              
	lw      a1, 0x0034($sp)            
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop
	nop

.section .data

var_80873060: .word 0x00110500, 0x00000015, 0x000B0000, 0x00000304
.word func_808718D0
.word func_80871A10
.word func_80872B14
.word func_80872FD4
var_80873080: .word \
0x00000939, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x001E0028, 0x00000000, 0x00000000
var_808730AC: .word 0x0400001E, 0x00289600
var_808730B4: .word \
0x10020102, 0x10020210, 0x01020424, 0x02440402, \
0x02240044, 0x00000104, 0x02020804, 0x00000400
var_808730D4: .word 0x89170030, 0xB04C157C, 0x386CFA24
var_808730E0: .word 0x00000000, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_808730F0: .word 0x3BCCCCCD
var_808730F4: .word 0x3F860A92
var_808730F8: .word 0x3E860A92, 0x00000000

