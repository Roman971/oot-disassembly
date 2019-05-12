#include <mips.h>
.set noreorder
.set noat

.section .text
func_808BA5F0:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x0044($sp)            
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	or      a2, $zero, $zero           ## a2 = 00000000
	jal     func_8001EC20              
	lui     a3, 0x4190                 ## a3 = 41900000
	lui     a2, 0x0600                 ## a2 = 06000000
	lui     a3, 0x0600                 ## a3 = 06000000
	addiu   t6, s0, 0x01FC             ## t6 = 000001FC
	addiu   t7, s0, 0x0256             ## t7 = 00000256
	addiu   t8, $zero, 0x000F          ## t8 = 0000000F
	sw      t8, 0x0018($sp)            
	sw      t7, 0x0014($sp)            
	sw      t6, 0x0010($sp)            
	addiu   a3, a3, 0x09D4             ## a3 = 060009D4
	addiu   a2, a2, 0x20E0             ## a2 = 060020E0
	lw      a0, 0x0044($sp)            
	jal     func_8008C684              
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	addiu   a1, s0, 0x0184             ## a1 = 00000184
	sw      a1, 0x0034($sp)            
	jal     func_8004AB7C              
	lw      a0, 0x0044($sp)            
	lui     a3, %hi(var_808BC0F0)      ## a3 = 808C0000
	lw      a1, 0x0034($sp)            
	addiu   a3, a3, %lo(var_808BC0F0)  ## a3 = 808BC0F0
	lw      a0, 0x0044($sp)            
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	jal     func_80049E10              
	addiu   a0, $zero, 0x0004          ## a0 = 00000004
	lui     a2, %hi(var_808BC11C)      ## a2 = 808C0000
	addiu   a2, a2, %lo(var_808BC11C)  ## a2 = 808BC11C
	addiu   a0, s0, 0x0098             ## a0 = 00000098
	jal     func_80050370              
	or      a1, v0, $zero              ## a1 = 00000000
	lw      t0, 0x0004(s0)             ## 00000004
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	addiu   t9, $zero, 0x000E          ## t9 = 0000000E
	lui     a1, 0x3CA3                 ## a1 = 3CA30000
	and     t1, t0, $at                
	sb      t9, 0x0117(s0)             ## 00000117
	sw      t1, 0x0004(s0)             ## 00000004
	ori     a1, a1, 0xD70A             ## a1 = 3CA3D70A
	jal     func_80020F88              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     t2, %hi(func_808BB5E0)     ## t2 = 808C0000
	addiu   t2, t2, %lo(func_808BB5E0) ## t2 = 808BB5E0
	sw      t2, 0x0180(s0)             ## 00000180
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BA6D8:
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


func_808BA704:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0020($sp)            
	lw      a0, 0x0020($sp)            
	jal     func_80022FD0              
	addiu   a1, $zero, 0x180E          ## a1 = 0000180E
	addiu   t6, $zero, 0x0008          ## t6 = 00000008
	sw      t6, 0x0010($sp)            
	lw      a0, 0x0020($sp)            
	addiu   a1, $zero, 0x4000          ## a1 = 00004000
	addiu   a2, $zero, 0x00C8          ## a2 = 000000C8
	jal     func_80027090              
	or      a3, $zero, $zero           ## a3 = 00000000
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BA748:
	addiu   $sp, $sp, 0xFF58           ## $sp = FFFFFF58
	sw      s8, 0x0068($sp)            
	sw      s7, 0x0064($sp)            
	sw      s6, 0x0060($sp)            
	sw      s5, 0x005C($sp)            
	sw      s4, 0x0058($sp)            
	sw      s2, 0x0050($sp)            
	or      s2, a0, $zero              ## s2 = 00000000
	or      s4, a1, $zero              ## s4 = 00000000
	addiu   s5, $sp, 0x00A4            ## s5 = FFFFFFFC
	addiu   s6, $sp, 0x00A0            ## s6 = FFFFFFF8
	addiu   s7, $sp, 0x0094            ## s7 = FFFFFFEC
	addiu   s8, $sp, 0x0088            ## s8 = FFFFFFE0
	sw      $ra, 0x006C($sp)           
	sw      s3, 0x0054($sp)            
	sw      s1, 0x004C($sp)            
	sw      s0, 0x0048($sp)            
	sdc1    $f24, 0x0040($sp)          
	sdc1    $f22, 0x0038($sp)          
	sdc1    $f20, 0x0030($sp)          
	lui     t6, %hi(var_808BC128)      ## t6 = 808C0000
	addiu   t6, t6, %lo(var_808BC128)  ## t6 = 808BC128
	lw      t8, 0x0000(t6)             ## 808BC128
	lui     t9, %hi(var_808BC12C)      ## t9 = 808C0000
	addiu   t9, t9, %lo(var_808BC12C)  ## t9 = 808BC12C
	sw      t8, 0x0000(s5)             ## FFFFFFFC
	lw      t1, 0x0000(t9)             ## 808BC12C
	lui     t2, %hi(var_808BC130)      ## t2 = 808C0000
	addiu   t2, t2, %lo(var_808BC130)  ## t2 = 808BC130
	sw      t1, 0x0000(s6)             ## FFFFFFF8
	lw      t4, 0x0000(t2)             ## 808BC130
	lui     t5, %hi(var_808BC13C)      ## t5 = 808C0000
	addiu   t5, t5, %lo(var_808BC13C)  ## t5 = 808BC13C
	sw      t4, 0x0000(s7)             ## FFFFFFEC
	lw      t3, 0x0004(t2)             ## 808BC134
	sw      t3, 0x0004(s7)             ## FFFFFFF0
	lw      t4, 0x0008(t2)             ## 808BC138
	sw      t4, 0x0008(s7)             ## FFFFFFF4
	lw      t7, 0x0000(t5)             ## 808BC13C
	sw      t7, 0x0000(s8)             ## FFFFFFE0
	lw      t6, 0x0004(t5)             ## 808BC140
	sw      t6, 0x0004(s8)             ## FFFFFFE4
	lw      t7, 0x0008(t5)             ## 808BC144
	sw      t7, 0x0008(s8)             ## FFFFFFE8
	jal     func_800CDCCC              ## Rand.Next() float
	sw      a2, 0x00B0($sp)            
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f20                  ## $f20 = 0.50
	lui     $at, 0x4780                ## $at = 47800000
	mtc1    $at, $f6                   ## $f6 = 65536.00
	sub.s   $f4, $f0, $f20             
	lw      a2, 0x00B0($sp)            
	lwc1    $f16, 0x01E4(s2)           ## 000001E4
	lui     t9, 0x0001                 ## t9 = 00010000
	mul.s   $f8, $f4, $f6              
	or      s1, a2, $zero              ## s1 = 00000000
	swc1    $f16, 0x0080($sp)          
	trunc.w.s $f10, $f8                  
	mfc1    s0, $f10                   
	nop
	sll     s0, s0, 16                 
	bltz    a2, lbl_808BA92C           
	sra     s0, s0, 16                 
	div     $zero, t9, a2              
	bne     a2, $zero, lbl_808BA854    
	nop
	break	## 0x01C00
lbl_808BA854:
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     a2, $at, lbl_808BA86C      
	lui     $at, 0x8000                ## $at = 80000000
	bne     t9, $at, lbl_808BA86C      
	nop
	break	## 0x01800
lbl_808BA86C:
	lui     $at, 0x41B0                ## $at = 41B00000
	mtc1    $at, $f24                  ## $f24 = 22.00
	lui     $at, 0x4080                ## $at = 40800000
	mflo    s3                         
	sll     s3, s3, 16                 
	mtc1    $at, $f22                  ## $f22 = 4.00
	sra     s3, s3, 16                 
lbl_808BA888:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	sub.s   $f18, $f0, $f20            
	mul.s   $f4, $f18, $f22            
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f4, 0x0088($sp)           
	sub.s   $f6, $f0, $f20             
	sll     a0, s0, 16                 
	sra     a0, a0, 16                 
	mul.s   $f8, $f6, $f22             
	jal     func_800636C4              ## sins?
	swc1    $f8, 0x0090($sp)           
	mul.s   $f10, $f0, $f24            
	lwc1    $f16, 0x01E0(s2)           ## 000001E0
	sll     a0, s0, 16                 
	sra     a0, a0, 16                 
	add.s   $f18, $f10, $f16           
	jal     func_80063684              ## coss?
	swc1    $f18, 0x007C($sp)          
	mul.s   $f4, $f0, $f24             
	lwc1    $f6, 0x01E8(s2)            ## 000001E8
	addiu   t0, $zero, 0x0078          ## t0 = 00000078
	addiu   t1, $zero, 0x0028          ## t1 = 00000028
	addiu   t2, $zero, 0x000A          ## t2 = 0000000A
	sw      t2, 0x0020($sp)            
	sw      t1, 0x001C($sp)            
	add.s   $f8, $f4, $f6              
	sw      t0, 0x0018($sp)            
	sw      s6, 0x0014($sp)            
	sw      s5, 0x0010($sp)            
	swc1    $f8, 0x0084($sp)           
	or      a0, s4, $zero              ## a0 = 00000000
	addiu   a1, $sp, 0x007C            ## a1 = FFFFFFD4
	or      a2, s7, $zero              ## a2 = FFFFFFEC
	jal     func_8001BE64              
	or      a3, s8, $zero              ## a3 = FFFFFFE0
	addu    s0, s0, s3                 
	sll     s0, s0, 16                 
	addiu   s1, s1, 0xFFFF             ## s1 = FFFFFFFF
	bgez    s1, lbl_808BA888           
	sra     s0, s0, 16                 
lbl_808BA92C:
	lw      $ra, 0x006C($sp)           
	ldc1    $f20, 0x0030($sp)          
	ldc1    $f22, 0x0038($sp)          
	ldc1    $f24, 0x0040($sp)          
	lw      s0, 0x0048($sp)            
	lw      s1, 0x004C($sp)            
	lw      s2, 0x0050($sp)            
	lw      s3, 0x0054($sp)            
	lw      s4, 0x0058($sp)            
	lw      s5, 0x005C($sp)            
	lw      s6, 0x0060($sp)            
	lw      s7, 0x0064($sp)            
	lw      s8, 0x0068($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x00A8           ## $sp = 00000000


func_808BA968:
	addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
	sw      $ra, 0x002C($sp)           
	sw      a0, 0x0060($sp)            
	sw      a1, 0x0064($sp)            
	sw      a2, 0x0068($sp)            
	lui     t6, %hi(var_808BC148)      ## t6 = 808C0000
	lui     t7, %hi(var_808BC14C)      ## t7 = 808C0000
	lw      t6, %lo(var_808BC148)(t6)  
	lw      t7, %lo(var_808BC14C)(t7)  
	lui     t9, %hi(var_808BC150)      ## t9 = 808C0000
	addiu   t9, t9, %lo(var_808BC150)  ## t9 = 808BC150
	sw      t6, 0x005C($sp)            
	sw      t7, 0x0058($sp)            
	lw      t1, 0x0000(t9)             ## 808BC150
	addiu   t8, $sp, 0x004C            ## t8 = FFFFFFEC
	lw      t0, 0x0004(t9)             ## 808BC154
	sw      t1, 0x0000(t8)             ## FFFFFFEC
	lw      t1, 0x0008(t9)             ## 808BC158
	lui     t3, %hi(var_808BC15C)      ## t3 = 808C0000
	addiu   t3, t3, %lo(var_808BC15C)  ## t3 = 808BC15C
	sw      t0, 0x0004(t8)             ## FFFFFFF0
	sw      t1, 0x0008(t8)             ## FFFFFFF4
	lw      t5, 0x0000(t3)             ## 808BC15C
	addiu   t2, $sp, 0x0040            ## t2 = FFFFFFE0
	lw      t4, 0x0004(t3)             ## 808BC160
	sw      t5, 0x0000(t2)             ## FFFFFFE0
	lw      t5, 0x0008(t3)             ## 808BC164
	sw      t4, 0x0004(t2)             ## FFFFFFE4
	jal     func_800CDCCC              ## Rand.Next() float
	sw      t5, 0x0008(t2)             ## FFFFFFE8
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f4                   ## $f4 = 0.50
	lui     $at, 0x4780                ## $at = 47800000
	mtc1    $at, $f8                   ## $f8 = 65536.00
	sub.s   $f6, $f0, $f4              
	lw      t8, 0x0060($sp)            
	mul.s   $f10, $f6, $f8             
	trunc.w.s $f16, $f10                 
	mfc1    t7, $f16                   
	nop
	sh      t7, 0x0032($sp)            
	lwc1    $f18, 0x0080(t8)           ## 00000080
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f18, 0x0038($sp)          
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f4                   ## $f4 = 0.50
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f8                   ## $f8 = 2.00
	sub.s   $f6, $f0, $f4              
	mul.s   $f10, $f6, $f8             
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f10, 0x0040($sp)          
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f16                  ## $f16 = 0.50
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f4                   ## $f4 = 2.00
	sub.s   $f18, $f0, $f16            
	lh      a0, 0x0032($sp)            
	mul.s   $f6, $f18, $f4             
	jal     func_800636C4              ## sins?
	swc1    $f6, 0x0048($sp)           
	lui     $at, 0x4130                ## $at = 41300000
	mtc1    $at, $f8                   ## $f8 = 11.00
	lw      t9, 0x0068($sp)            
	lh      a0, 0x0032($sp)            
	mul.s   $f10, $f0, $f8             
	lwc1    $f16, 0x0000(t9)           ## 00000000
	add.s   $f18, $f10, $f16           
	jal     func_80063684              ## coss?
	swc1    $f18, 0x0034($sp)          
	lui     $at, 0x4130                ## $at = 41300000
	mtc1    $at, $f4                   ## $f4 = 11.00
	lw      t0, 0x0068($sp)            
	addiu   t1, $sp, 0x005C            ## t1 = FFFFFFFC
	mul.s   $f6, $f0, $f4              
	lwc1    $f8, 0x0008(t0)            ## 00000008
	addiu   t2, $sp, 0x0058            ## t2 = FFFFFFF8
	addiu   t3, $zero, 0x0064          ## t3 = 00000064
	addiu   t4, $zero, 0x003C          ## t4 = 0000003C
	addiu   t5, $zero, 0x0008          ## t5 = 00000008
	sw      t5, 0x0020($sp)            
	add.s   $f10, $f6, $f8             
	sw      t4, 0x001C($sp)            
	sw      t3, 0x0018($sp)            
	sw      t2, 0x0014($sp)            
	swc1    $f10, 0x003C($sp)          
	sw      t1, 0x0010($sp)            
	lw      a0, 0x0064($sp)            
	addiu   a1, $sp, 0x0034            ## a1 = FFFFFFD4
	addiu   a2, $sp, 0x004C            ## a2 = FFFFFFEC
	jal     func_8001BE64              
	addiu   a3, $sp, 0x0040            ## a3 = FFFFFFE0
	lw      $ra, 0x002C($sp)           
	addiu   $sp, $sp, 0x0060           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BAAE8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lwc1    $f4, 0x0060(a0)            ## 00000060
	mtc1    $zero, $f6                 ## $f6 = 0.00
	nop
	c.le.s  $f6, $f4                   
	nop
	bc1fl   lbl_808BAB1C               
	lh      t6, 0x01EC(a0)             ## 000001EC
	beq     $zero, $zero, lbl_808BABBC 
	or      v0, $zero, $zero           ## v0 = 00000000
	lh      t6, 0x01EC(a0)             ## 000001EC
lbl_808BAB1C:
	bnel    t6, $zero, lbl_808BAB30    
	lhu     t7, 0x0088(a0)             ## 00000088
	beq     $zero, $zero, lbl_808BABBC 
	or      v0, $zero, $zero           ## v0 = 00000000
	lhu     t7, 0x0088(a0)             ## 00000088
lbl_808BAB30:
	addiu   a1, $zero, 0x387B          ## a1 = 0000387B
	andi    t8, t7, 0x0001             ## t8 = 00000000
	beql    t8, $zero, lbl_808BABBC    
	or      v0, $zero, $zero           ## v0 = 00000000
	jal     func_80022FD0              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	addiu   a2, $zero, 0x000A          ## a2 = 0000000A
	lw      t0, 0x0024(a0)             ## 00000024
	lw      t9, 0x0028(a0)             ## 00000028
	sw      t0, 0x01E0(a0)             ## 000001E0
	lw      t0, 0x002C(a0)             ## 0000002C
	sw      t9, 0x01E4(a0)             ## 000001E4
	sw      t0, 0x01E8(a0)             ## 000001E8
	jal     func_808BA748              
	lw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	addiu   t1, $zero, 0x0004          ## t1 = 00000004
	lui     $at, 0x4120                ## $at = 41200000
	lh      v0, 0x01EC(a0)             ## 000001EC
	mtc1    $at, $f8                   ## $f8 = 10.00
	subu    t2, t1, v0                 
	mtc1    t2, $f10                   ## $f10 = 0.00
	addiu   t3, v0, 0xFFFF             ## t3 = FFFFFFFF
	sh      t3, 0x01EC(a0)             ## 000001EC
	cvt.s.w $f16, $f10                 
	lh      t4, 0x01EC(a0)             ## 000001EC
	div.s   $f18, $f8, $f16            
	bne     t4, $zero, lbl_808BABB8    
	swc1    $f18, 0x0060(a0)           ## 00000060
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	beq     $zero, $zero, lbl_808BABBC 
	swc1    $f4, 0x0060(a0)            ## 00000060
lbl_808BABB8:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808BABBC:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BABCC:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x0860             ## a0 = 06000860
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC120                ## $at = C1200000
	lw      v1, 0x0028($sp)            
	cvt.s.w $f6, $f4                   
	mtc1    $at, $f8                   ## $f8 = -10.00
	lui     a1, 0x0600                 ## a1 = 06000000
	lui     a2, 0x3FE6                 ## a2 = 3FE60000
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	sw      t6, 0x0014($sp)            
	ori     a2, a2, 0x6666             ## a2 = 3FE66666
	addiu   a1, a1, 0x0860             ## a1 = 06000860
	swc1    $f6, 0x0010($sp)           
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	addiu   a0, v1, 0x013C             ## a0 = 0000013C
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
	lw      v1, 0x0028($sp)            
	mtc1    $zero, $f10                ## $f10 = 0.00
	lui     $at, %hi(var_808BC1B0)     ## $at = 808C0000
	swc1    $f10, 0x0060(v1)           ## 00000060
	lwc1    $f16, %lo(var_808BC1B0)($at) 
	lui     $at, %hi(var_808BC1B4)     ## $at = 808C0000
	swc1    $f16, 0x0068(v1)           ## 00000068
	lwc1    $f18, %lo(var_808BC1B4)($at) 
	swc1    $f18, 0x006C(v1)           ## 0000006C
	lw      $ra, 0x0024($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_808BAC54:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x04A0             ## a0 = 060004A0
	mtc1    v0, $f4                    ## $f4 = 0.00
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     $at, 0xC120                ## $at = C1200000
	cvt.s.w $f6, $f4                   
	mtc1    $at, $f8                   ## $f8 = -10.00
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	mfc1    a3, $f0                    
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0x04A0             ## a1 = 060004A0
	swc1    $f6, 0x0010($sp)           
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lh      t7, 0x01EC(s0)             ## 000001EC
	lui     $at, %hi(var_808BC1B8)     ## $at = 808C0000
	swc1    $f0, 0x0068(s0)            ## 00000068
	swc1    $f0, 0x005C(s0)            ## 0000005C
	swc1    $f0, 0x0064(s0)            ## 00000064
	lwc1    $f10, %lo(var_808BC1B8)($at) 
	lui     $at, 0x4120                ## $at = 41200000
	bne     t7, $zero, lbl_808BACE4    
	swc1    $f10, 0x006C(s0)           ## 0000006C
	mtc1    $at, $f16                  ## $f16 = 10.00
	addiu   t8, $zero, 0x0003          ## t8 = 00000003
	sh      t8, 0x01EC(s0)             ## 000001EC
	swc1    $f16, 0x0060(s0)           ## 00000060
lbl_808BACE4:
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BACF8:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x05F0             ## a0 = 060005F0
	mtc1    v0, $f4                    ## $f4 = 0.00
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lw      a0, 0x0028($sp)            
	cvt.s.w $f6, $f4                   
	lui     a1, 0x0600                 ## a1 = 06000000
	mfc1    a3, $f0                    
	addiu   a1, a1, 0x05F0             ## a1 = 060005F0
	lui     a2, 0x3F80                 ## a2 = 3F800000
	sw      $zero, 0x0014($sp)         
	swc1    $f6, 0x0010($sp)           
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
	lw      v0, 0x0028($sp)            
	mtc1    $zero, $f8                 ## $f8 = 0.00
	lui     $at, %hi(var_808BC1BC)     ## $at = 808C0000
	swc1    $f8, 0x0060(v0)            ## 00000060
	lwc1    $f10, %lo(var_808BC1BC)($at) 
	swc1    $f10, 0x006C(v0)           ## 0000006C
	lw      $ra, 0x0024($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_808BAD68:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x0724             ## a0 = 06000724
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC120                ## $at = C1200000
	lw      v1, 0x0028($sp)            
	cvt.s.w $f6, $f4                   
	mtc1    $at, $f8                   ## $f8 = -10.00
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x0724             ## a1 = 06000724
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f6, 0x0010($sp)           
	sw      $zero, 0x0014($sp)         
	addiu   a0, v1, 0x013C             ## a0 = 0000013C
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
	lui     $at, %hi(var_808BC1C0)     ## $at = 808C0000
	lw      v1, 0x0028($sp)            
	lwc1    $f10, %lo(var_808BC1C0)($at) 
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f16                  ## $f16 = 10.00
	addiu   t6, $zero, 0x0003          ## t6 = 00000003
	sh      t6, 0x01EC(v1)             ## 000001EC
	swc1    $f10, 0x006C(v1)           ## 0000006C
	swc1    $f16, 0x0060(v1)           ## 00000060
	lw      $ra, 0x0024($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BADEC:
	lw      t6, 0x0004(a0)             ## 00000004
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	sw      $zero, 0x00C0(a0)          ## 000000C0
	and     t7, t6, $at                
	sw      t7, 0x0004(a0)             ## 00000004
	addiu   v0, a0, 0x0024             ## v0 = 00000024
	lw      t9, 0x0000(v0)             ## 00000024
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     $at, %hi(var_808BC1C4)     ## $at = 808C0000
	sw      t9, 0x0008(a0)             ## 00000008
	lw      t8, 0x0004(v0)             ## 00000028
	addiu   t0, $zero, 0x001E          ## t0 = 0000001E
	sw      t8, 0x000C(a0)             ## 0000000C
	lw      t9, 0x0008(v0)             ## 0000002C
	swc1    $f4, 0x0068(a0)            ## 00000068
	sw      t9, 0x0010(a0)             ## 00000010
	lwc1    $f6, %lo(var_808BC1C4)($at) 
	sh      t0, 0x01F2(a0)             ## 000001F2
	swc1    $f6, 0x006C(a0)            ## 0000006C
	lw      t2, 0x0000(v0)             ## 00000024
	sw      t2, 0x01E0(a0)             ## 000001E0
	lw      t1, 0x0004(v0)             ## 00000028
	sw      t1, 0x01E4(a0)             ## 000001E4
	lw      t2, 0x0008(v0)             ## 0000002C
	sw      t2, 0x01E8(a0)             ## 000001E8
	jr      $ra                        
	nop


func_808BAE58:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lui     $at, 0x4140                ## $at = 41400000
	mtc1    $at, $f4                   ## $f4 = 12.00
	mtc1    $zero, $f6                 ## $f6 = 0.00
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0x0724             ## a1 = 06000724
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x4100                 ## a3 = 41000000
	swc1    $f4, 0x0010($sp)           
	jal     func_8008D17C              
	swc1    $f6, 0x0018($sp)           
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3826          ## a1 = 00003826
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     $at, %hi(var_808BC1C8)     ## $at = 808C0000
	swc1    $f0, 0x0068(s0)            ## 00000068
	swc1    $f0, 0x005C(s0)            ## 0000005C
	swc1    $f0, 0x0064(s0)            ## 00000064
	lwc1    $f8, %lo(var_808BC1C8)($at) 
	swc1    $f8, 0x006C(s0)            ## 0000006C
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_808BAED4:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	addiu   a2, $sp, 0x0020            ## a2 = FFFFFFF0
	lui     t6, %hi(var_808BC168)      ## t6 = 808C0000
	addiu   t6, t6, %lo(var_808BC168)  ## t6 = 808BC168
	lw      t8, 0x0000(t6)             ## 808BC168
	or      v1, $zero, $zero           ## v1 = 00000000
	sw      t8, 0x0000(a2)             ## FFFFFFF0
	lw      t7, 0x0004(t6)             ## 808BC16C
	sw      t7, 0x0004(a2)             ## FFFFFFF4
	lw      t8, 0x0008(t6)             ## 808BC170
	sw      t8, 0x0008(a2)             ## FFFFFFF8
	lw      v0, 0x1C4C(a1)             ## 00001C4C
	sw      $zero, 0x01D0(a0)          ## 000001D0
	addiu   a1, $zero, 0x0010          ## a1 = 00000010
	beql    v0, $zero, lbl_808BAFF8    
	or      v0, v1, $zero              ## v0 = 00000000
	lh      t9, 0x001C(v0)             ## 0000001C
lbl_808BAF18:
	bne     t9, $zero, lbl_808BAF38    
	nop
	lw      t0, 0x0118(v0)             ## 00000118
	bne     t0, $zero, lbl_808BAF38    
	nop
	lw      t1, 0x0130(v0)             ## 00000130
	bnel    t1, $zero, lbl_808BAF44    
	lh      t2, 0x0000(v0)             ## 00000000
lbl_808BAF38:
	beq     $zero, $zero, lbl_808BAFEC 
	lw      v0, 0x0124(v0)             ## 00000124
	lh      t2, 0x0000(v0)             ## 00000000
lbl_808BAF44:
	beql    a1, t2, lbl_808BAF58       
	lwc1    $f4, 0x0024(v0)            ## 00000024
	beq     $zero, $zero, lbl_808BAFEC 
	lw      v0, 0x0124(v0)             ## 00000124
	lwc1    $f4, 0x0024(v0)            ## 00000024
lbl_808BAF58:
	lwc1    $f6, 0x0024(a0)            ## 00000024
	lwc1    $f0, 0x0020($sp)           
	lwc1    $f8, 0x0028(v0)            ## 00000028
	sub.s   $f2, $f4, $f6              
	lwc1    $f10, 0x0028(a0)           ## 00000028
	lwc1    $f4, 0x002C(a0)            ## 0000002C
	abs.s   $f0, $f0                   
	abs.s   $f16, $f2                  
	lwc1    $f18, 0x002C(v0)           ## 0000002C
	c.le.s  $f0, $f16                  
	lwc1    $f0, 0x0024($sp)           
	sub.s   $f12, $f8, $f10            
	bc1t    lbl_808BAFC0               
	sub.s   $f14, $f18, $f4            
	abs.s   $f2, $f12                  
	abs.s   $f0, $f0                   
	c.le.s  $f0, $f2                   
	lwc1    $f0, 0x0028($sp)           
	bc1t    lbl_808BAFC0               
	nop
	abs.s   $f2, $f14                  
	abs.s   $f0, $f0                   
	c.le.s  $f0, $f2                   
	nop
	bc1fl   lbl_808BAFCC               
	sw      v0, 0x01D0(a0)             ## 000001D0
lbl_808BAFC0:
	beq     $zero, $zero, lbl_808BAFEC 
	lw      v0, 0x0124(v0)             ## 00000124
	sw      v0, 0x01D0(a0)             ## 000001D0
lbl_808BAFCC:
	lw      t4, 0x0024(v0)             ## 00000024
	addiu   v1, $zero, 0x0001          ## v1 = 00000001
	sw      t4, 0x0000(a2)             ## FFFFFFF0
	lw      t3, 0x0028(v0)             ## 00000028
	sw      t3, 0x0004(a2)             ## FFFFFFF4
	lw      t4, 0x002C(v0)             ## 0000002C
	sw      t4, 0x0008(a2)             ## FFFFFFF8
	lw      v0, 0x0124(v0)             ## 00000124
lbl_808BAFEC:
	bnel    v0, $zero, lbl_808BAF18    
	lh      t9, 0x001C(v0)             ## 0000001C
	or      v0, v1, $zero              ## v0 = 00000001
lbl_808BAFF8:
	jr      $ra                        
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_808BB000:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lw      v0, 0x01D0(a2)             ## 000001D0
	bnel    v0, $zero, lbl_808BB024    
	lw      t6, 0x0118(v0)             ## 00000118
	beq     $zero, $zero, lbl_808BB074 
	or      v0, $zero, $zero           ## v0 = 00000000
	lw      t6, 0x0118(v0)             ## 00000118
lbl_808BB024:
	addiu   a0, a2, 0x0024             ## a0 = 00000024
	addiu   a1, v0, 0x0024             ## a1 = 00000024
	beq     t6, $zero, lbl_808BB03C    
	nop
	beq     $zero, $zero, lbl_808BB074 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808BB03C:
	jal     func_80063E18              
	sw      a2, 0x0018($sp)            
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f4                   ## $f4 = 30.00
	lw      a2, 0x0018($sp)            
	c.lt.s  $f4, $f0                   
	nop
	bc1fl   lbl_808BB06C               
	lw      t7, 0x01D0(a2)             ## 000001D0
	beq     $zero, $zero, lbl_808BB074 
	or      v0, $zero, $zero           ## v0 = 00000000
	lw      t7, 0x01D0(a2)             ## 000001D0
lbl_808BB06C:
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	sw      a2, 0x0118(t7)             ## 00000118
lbl_808BB074:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BB084:
	addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x0084($sp)            
	lui     t7, %hi(var_808BC174)      ## t7 = 808C0000
	addiu   t7, t7, %lo(var_808BC174)  ## t7 = 808BC174
	addiu   t0, t7, 0x0030             ## t0 = 808BC1A4
	addiu   t6, $sp, 0x0050            ## t6 = FFFFFFD0
lbl_808BB0A8:
	lw      t9, 0x0000(t7)             ## 808BC174
	addiu   t7, t7, 0x000C             ## t7 = 808BC180
	addiu   t6, t6, 0x000C             ## t6 = FFFFFFDC
	sw      t9, -0x000C(t6)            ## FFFFFFD0
	lw      t8, -0x0008(t7)            ## 808BC178
	sw      t8, -0x0008(t6)            ## FFFFFFD4
	lw      t9, -0x0004(t7)            ## 808BC17C
	bne     t7, t0, lbl_808BB0A8       
	sw      t9, -0x0004(t6)            ## FFFFFFD8
	lw      v1, 0x01D0(s0)             ## 000001D0
	lw      t1, 0x0084($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	beq     v1, $zero, lbl_808BB100    
	lw      a2, 0x1C44(t1)             ## 00001C44
	lw      t2, 0x0130(v1)             ## 00000130
	beql    t2, $zero, lbl_808BB104    
	lw      a1, 0x0084($sp)            
	beq     v1, $zero, lbl_808BB114    
	nop
	lw      t3, 0x0118(v1)             ## 00000118
	beq     t3, $zero, lbl_808BB114    
	nop
lbl_808BB100:
	lw      a1, 0x0084($sp)            
lbl_808BB104:
	jal     func_808BAED4              
	sw      a2, 0x0048($sp)            
	lw      a2, 0x0048($sp)            
	lw      v1, 0x01D0(s0)             ## 000001D0
lbl_808BB114:
	beq     v1, $zero, lbl_808BB13C    
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	lw      t0, 0x0024(v1)             ## 00000024
	addiu   t4, $sp, 0x003C            ## t4 = FFFFFFBC
	sw      t0, 0x0000(t4)             ## FFFFFFBC
	lw      t5, 0x0028(v1)             ## 00000028
	sw      t5, 0x0004(t4)             ## FFFFFFC0
	lw      t0, 0x002C(v1)             ## 0000002C
	beq     $zero, $zero, lbl_808BB158 
	sw      t0, 0x0008(t4)             ## FFFFFFC4
lbl_808BB13C:
	lw      t8, 0x0024(a2)             ## 00000024
	addiu   t7, $sp, 0x003C            ## t7 = FFFFFFBC
	sw      t8, 0x0000(t7)             ## FFFFFFBC
	lw      t6, 0x0028(a2)             ## 00000028
	sw      t6, 0x0004(t7)             ## FFFFFFC0
	lw      t8, 0x002C(a2)             ## 0000002C
	sw      t8, 0x0008(t7)             ## FFFFFFC4
lbl_808BB158:
	addiu   a1, $sp, 0x003C            ## a1 = FFFFFFBC
	jal     func_80063E18              
	sw      a0, 0x002C($sp)            
	lui     $at, 0x42A0                ## $at = 42A00000
	mtc1    $at, $f4                   ## $f4 = 80.00
	addiu   $at, $zero, 0x001E         ## $at = 0000001E
	addiu   t5, $sp, 0x0050            ## t5 = FFFFFFD0
	c.lt.s  $f4, $f0                   
	nop
	bc1fl   lbl_808BB258               
	lw      a0, 0x002C($sp)            
	lw      t9, 0x0084($sp)            
	lwc1    $f6, 0x0008(s0)            ## 00000008
	lwc1    $f8, 0x000C(s0)            ## 0000000C
	lw      t1, 0x009C(t9)             ## 0000009C
	lwc1    $f16, 0x0010(s0)           ## 00000010
	add.s   $f10, $f6, $f8             
	divu    $zero, t1, $at             
	mflo    t2                         
	mtc1    t2, $f4                    ## $f4 = 0.00
	add.s   $f18, $f10, $f16           
	bgez    t2, lbl_808BB1C4           
	cvt.s.w $f6, $f4                   
	lui     $at, 0x4F80                ## $at = 4F800000
	mtc1    $at, $f8                   ## $f8 = 4294967000.00
	nop
	add.s   $f6, $f6, $f8              
lbl_808BB1C4:
	add.s   $f10, $f18, $f6            
	addiu   $at, $zero, 0x000C         ## $at = 0000000C
	trunc.w.s $f16, $f10                 
	mfc1    v0, $f16                   
	nop
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	div     $zero, v0, $at             
	mfhi    v0                         
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	bgezl   v0, lbl_808BB208           
	sll     t4, v0,  2                 
	subu    v0, $zero, v0              
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	sll     t4, v0,  2                 
lbl_808BB208:
	addu    v1, t4, t5                 
	lwc1    $f12, 0x0000(v1)           ## 00000000
	jal     func_800CF470              
	sw      v1, 0x0028($sp)            
	lui     $at, 0x42A0                ## $at = 42A00000
	mtc1    $at, $f8                   ## $f8 = 80.00
	lwc1    $f4, 0x003C($sp)           
	lw      v1, 0x0028($sp)            
	mul.s   $f18, $f8, $f0             
	add.s   $f6, $f4, $f18             
	swc1    $f6, 0x003C($sp)           
	jal     func_800D2CD0              
	lwc1    $f12, 0x0000(v1)           ## 00000000
	lui     $at, 0x42A0                ## $at = 42A00000
	mtc1    $at, $f16                  ## $f16 = 80.00
	lwc1    $f10, 0x0044($sp)          
	mul.s   $f8, $f16, $f0             
	add.s   $f4, $f10, $f8             
	swc1    $f4, 0x0044($sp)           
	lw      a0, 0x002C($sp)            
lbl_808BB258:
	jal     func_80063F00              
	addiu   a1, $sp, 0x003C            ## a1 = FFFFFFBC
	sll     a1, v0, 16                 
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	sw      t0, 0x0010($sp)            
	sra     a1, a1, 16                 
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	addiu   a2, $zero, 0x000A          ## a2 = 0000000A
	jal     func_80064508              
	addiu   a3, $zero, 0x03E8          ## a3 = 000003E8
	lh      t7, 0x0032(s0)             ## 00000032
	sh      t7, 0x00B6(s0)             ## 000000B6
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0080           ## $sp = 00000000


func_808BB298:
	lui     $at, 0x4220                ## $at = 42200000
	mtc1    $at, $f4                   ## $f4 = 40.00
	lwc1    $f6, 0x0090(a0)            ## 00000090
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	c.lt.s  $f4, $f6                   
	nop
	bc1f    lbl_808BB2C0               
	nop
	jr      $ra                        
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808BB2C0:
	jr      $ra                        
	nop


func_808BB2C8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	addiu   a1, $zero, 0x3821          ## a1 = 00003821
	jal     func_80022FD0              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	lw      t6, 0x0004(a0)             ## 00000004
	and     t7, t6, $at                
	jal     func_808BAC54              
	sw      t7, 0x0004(a0)             ## 00000004
	lw      a0, 0x0018($sp)            
	lui     t8, %hi(func_808BBCF4)     ## t8 = 808C0000
	addiu   t8, t8, %lo(func_808BBCF4) ## t8 = 808BBCF4
	sw      t8, 0x0180(a0)             ## 00000180
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BB314:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	or      a2, a1, $zero              ## a2 = 00000000
	lw      v0, 0x0180(s0)             ## 00000180
	lui     t6, %hi(func_808BB974)     ## t6 = 808C0000
	addiu   t6, t6, %lo(func_808BB974) ## t6 = 808BB974
	beq     t6, v0, lbl_808BB384       
	lui     t7, %hi(func_808BB9E4)     ## t7 = 808C0000
	addiu   t7, t7, %lo(func_808BB9E4) ## t7 = 808BB9E4
	beq     t7, v0, lbl_808BB384       
	lui     t8, %hi(func_808BBA84)     ## t8 = 808C0000
	addiu   t8, t8, %lo(func_808BBA84) ## t8 = 808BBA84
	beq     t8, v0, lbl_808BB384       
	lui     t9, %hi(func_808BBC3C)     ## t9 = 808C0000
	addiu   t9, t9, %lo(func_808BBC3C) ## t9 = 808BBC3C
	beq     t9, v0, lbl_808BB384       
	lui     t0, %hi(func_808BBCF4)     ## t0 = 808C0000
	addiu   t0, t0, %lo(func_808BBCF4) ## t0 = 808BBCF4
	beq     t0, v0, lbl_808BB384       
	lui     t1, %hi(func_808BBD7C)     ## t1 = 808C0000
	addiu   t1, t1, %lo(func_808BBD7C) ## t1 = 808BBD7C
	beq     t1, v0, lbl_808BB384       
	lui     t2, %hi(func_808BBE28)     ## t2 = 808C0000
	addiu   t2, t2, %lo(func_808BBE28) ## t2 = 808BBE28
	bnel    t2, v0, lbl_808BB390       
	lbu     t3, 0x1C26(a2)             ## 00001C26
lbl_808BB384:
	beq     $zero, $zero, lbl_808BB4BC 
	or      v0, $zero, $zero           ## v0 = 00000000
	lbu     t3, 0x1C26(a2)             ## 00001C26
lbl_808BB390:
	lui     t4, %hi(func_808BB5E0)     ## t4 = 808C0000
	addiu   t4, t4, %lo(func_808BB5E0) ## t4 = 808BB5E0
	beql    t3, $zero, lbl_808BB3D0    
	lbu     v1, 0x0195(s0)             ## 00000195
	beq     t4, v0, lbl_808BB3C4       
	lui     t5, %hi(func_808BB6F8)     ## t5 = 808C0000
	addiu   t5, t5, %lo(func_808BB6F8) ## t5 = 808BB6F8
	bne     t5, v0, lbl_808BB3BC       
	lui     t6, 0x8002                 ## t6 = 80020000
	addiu   t6, t6, 0xEFF4             ## t6 = 8001EFF4
	sw      t6, 0x00C0(s0)             ## 000000C0
lbl_808BB3BC:
	jal     func_808BB2C8              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_808BB3C4:
	beq     $zero, $zero, lbl_808BB4BC 
	or      v0, $zero, $zero           ## v0 = 00000000
	lbu     v1, 0x0195(s0)             ## 00000195
lbl_808BB3D0:
	lui     t9, %hi(func_808BB5E0)     ## t9 = 808C0000
	addiu   t9, t9, %lo(func_808BB5E0) ## t9 = 808BB5E0
	andi    t7, v1, 0x0002             ## t7 = 00000000
	bne     t7, $zero, lbl_808BB3EC    
	andi    t8, v1, 0xFFFD             ## t8 = 00000000
	beq     $zero, $zero, lbl_808BB4BC 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808BB3EC:
	beq     t9, v0, lbl_808BB400       
	sb      t8, 0x0195(s0)             ## 00000195
	lui     t0, %hi(func_808BB6F8)     ## t0 = 808C0000
	addiu   t0, t0, %lo(func_808BB6F8) ## t0 = 808BB6F8
	bne     t0, v0, lbl_808BB40C       
lbl_808BB400:
	lui     t1, 0x8002                 ## t1 = 80020000
	addiu   t1, t1, 0xEFF4             ## t1 = 8001EFF4
	sw      t1, 0x00C0(s0)             ## 000000C0
lbl_808BB40C:
	lbu     v0, 0x00B1(s0)             ## 000000B1
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bne     v0, $zero, lbl_808BB450    
	nop
	lbu     t2, 0x00B0(s0)             ## 000000B0
	or      a0, a2, $zero              ## a0 = 00000000
	beq     t2, $zero, lbl_808BB450    
	nop
	jal     func_80025B4C              
	or      a1, s0, $zero              ## a1 = 00000000
	lui     t4, %hi(func_808BBE8C)     ## t4 = 808C0000
	addiu   t3, $zero, 0x0002          ## t3 = 00000002
	addiu   t4, t4, %lo(func_808BBE8C) ## t4 = 808BBE8C
	sh      t3, 0x01F0(s0)             ## 000001F0
	sw      t4, 0x0180(s0)             ## 00000180
	beq     $zero, $zero, lbl_808BB4BC 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_808BB450:
	bnel    v0, $at, lbl_808BB4BC      
	or      v0, $zero, $zero           ## v0 = 00000000
	lw      v0, 0x0180(s0)             ## 00000180
	lui     t5, %hi(func_808BBB24)     ## t5 = 808C0000
	addiu   t5, t5, %lo(func_808BBB24) ## t5 = 808BBB24
	beq     t5, v0, lbl_808BB4B8       
	lui     v1, %hi(func_808BBAA4)     ## v1 = 808C0000
	addiu   v1, v1, %lo(func_808BBAA4) ## v1 = 808BBAA4
	beq     v1, v0, lbl_808BB4B8       
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x389E          ## a1 = 0000389E
	jal     func_80022FD0              
	sw      v1, 0x0028($sp)            
	addiu   t6, $zero, 0x0078          ## t6 = 00000078
	sh      t6, 0x01EE(s0)             ## 000001EE
	addiu   t7, $zero, 0x0078          ## t7 = 00000078
	sw      t7, 0x0010($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x00C8          ## a2 = 000000C8
	jal     func_80027090              
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_808BAC54              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t8, 0x0028($sp)            
	sw      t8, 0x0180(s0)             ## 00000180
lbl_808BB4B8:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808BB4BC:
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BB4D0:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x002C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	addiu   a1, a3, 0x0184             ## a1 = 00000184
	sw      a1, 0x0024($sp)            
	or      a0, a3, $zero              ## a0 = 00000000
	jal     func_80050B00              
	sw      a3, 0x0028($sp)            
	lw      a3, 0x0028($sp)            
	lui     t6, %hi(func_808BB5E0)     ## t6 = 808C0000
	addiu   t6, t6, %lo(func_808BB5E0) ## t6 = 808BB5E0
	lw      v0, 0x0180(a3)             ## 00000180
	lui     t7, %hi(func_808BBE28)     ## t7 = 808C0000
	addiu   t7, t7, %lo(func_808BBE28) ## t7 = 808BBE28
	beql    t6, v0, lbl_808BB5D4       
	lw      $ra, 0x0014($sp)           
	beq     t7, v0, lbl_808BB5D0       
	lui     v1, %hi(func_808BB6F8)     ## v1 = 808C0000
	addiu   v1, v1, %lo(func_808BB6F8) ## v1 = 808BB6F8
	beq     v1, v0, lbl_808BB540       
	lui     t8, %hi(func_808BB7C0)     ## t8 = 808C0000
	addiu   t8, t8, %lo(func_808BB7C0) ## t8 = 808BB7C0
	beq     t8, v0, lbl_808BB540       
	lui     t9, %hi(func_808BBBD4)     ## t9 = 808C0000
	addiu   t9, t9, %lo(func_808BBBD4) ## t9 = 808BBBD4
	bnel    t9, v0, lbl_808BB570       
	lw      a0, 0x002C($sp)            
lbl_808BB540:
	lw      a0, 0x002C($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	lw      a2, 0x0024($sp)            
	sw      v1, 0x001C($sp)            
	sw      a3, 0x0028($sp)            
	jal     func_8004BD50              ## CollisionCheck_setAT
	addu    a1, a0, $at                
	lw      a3, 0x0028($sp)            
	lw      v1, 0x001C($sp)            
	lw      v0, 0x0180(a3)             ## 00000180
	lw      a0, 0x002C($sp)            
lbl_808BB570:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	beq     v1, v0, lbl_808BB5B4       
	addu    a1, a0, $at                
	lui     t0, %hi(func_808BB7C0)     ## t0 = 808C0000
	addiu   t0, t0, %lo(func_808BB7C0) ## t0 = 808BB7C0
	beq     t0, v0, lbl_808BB5B4       
	lui     t1, %hi(func_808BBAA4)     ## t1 = 808C0000
	addiu   t1, t1, %lo(func_808BBAA4) ## t1 = 808BBAA4
	beq     t1, v0, lbl_808BB5B4       
	lui     t2, %hi(func_808BBB24)     ## t2 = 808C0000
	addiu   t2, t2, %lo(func_808BBB24) ## t2 = 808BBB24
	beq     t2, v0, lbl_808BB5B4       
	lui     t3, %hi(func_808BBBD4)     ## t3 = 808C0000
	addiu   t3, t3, %lo(func_808BBBD4) ## t3 = 808BBBD4
	bne     t3, v0, lbl_808BB5C8       
	nop
lbl_808BB5B4:
	lw      a2, 0x0024($sp)            
	jal     func_8004BF40              ## CollisionCheck_setAC
	sw      a1, 0x0018($sp)            
	lw      a1, 0x0018($sp)            
	lw      a0, 0x002C($sp)            
lbl_808BB5C8:
	jal     func_8004C130              ## CollisionCheck_setOT
	lw      a2, 0x0024($sp)            
lbl_808BB5D0:
	lw      $ra, 0x0014($sp)           
lbl_808BB5D4:
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BB5E0:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x0034($sp)            
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x0860             ## a0 = 06000860
	lui     $at, 0x43A0                ## $at = 43A00000
	mtc1    $at, $f8                   ## $f8 = 320.00
	lwc1    $f6, 0x0090(s0)            ## 00000090
	mtc1    v0, $f4                    ## $f4 = 0.00
	lw      t6, 0x0034($sp)            
	c.le.s  $f8, $f6                   
	cvt.s.w $f2, $f4                   
	lw      v1, 0x1C44(t6)             ## 00001C44
	bc1tl   lbl_808BB6E8               
	lw      $ra, 0x002C($sp)           
	lwc1    $f10, 0x0028(s0)           ## 00000028
	lwc1    $f16, 0x0028(v1)           ## 00000028
	lui     $at, 0x4220                ## $at = 42200000
	mtc1    $at, $f18                  ## $f18 = 40.00
	sub.s   $f0, $f10, $f16            
	lui     a1, 0x0600                 ## a1 = 06000000
	lui     a2, 0x3FE6                 ## a2 = 3FE60000
	ori     a2, a2, 0x6666             ## a2 = 3FE66666
	c.le.s  $f18, $f0                  
	addiu   a1, a1, 0x0860             ## a1 = 06000860
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	bc1t    lbl_808BB6E4               
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	lui     $at, 0xC120                ## $at = C1200000
	mtc1    $at, $f4                   ## $f4 = -10.00
	swc1    $f2, 0x0010($sp)           
	sw      t7, 0x0014($sp)            
	jal     func_8008D17C              
	swc1    $f4, 0x0018($sp)           
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3824          ## a1 = 00003824
	lui     $at, 0x4270                ## $at = 42700000
	mtc1    $at, $f8                   ## $f8 = 60.00
	lwc1    $f6, 0x0028(s0)            ## 00000028
	lh      t0, 0x0030(s0)             ## 00000030
	lw      t4, 0x0024(s0)             ## 00000024
	sub.s   $f10, $f6, $f8             
	addiu   t1, t0, 0xC000             ## t1 = FFFFC000
	lw      t8, 0x0004(s0)             ## 00000004
	sh      t1, 0x0030(s0)             ## 00000030
	swc1    $f10, 0x0028(s0)           ## 00000028
	lw      t3, 0x0028(s0)             ## 00000028
	sw      t4, 0x01E0(s0)             ## 000001E0
	lh      t2, 0x0030(s0)             ## 00000030
	lw      t4, 0x002C(s0)             ## 0000002C
	lwc1    $f16, 0x0080(s0)           ## 00000080
	lui     t5, %hi(func_808BB6F8)     ## t5 = 808C0000
	addiu   t5, t5, %lo(func_808BB6F8) ## t5 = 808BB6F8
	ori     t9, t8, 0x0001             ## t9 = 00000001
	sw      t3, 0x01E4(s0)             ## 000001E4
	sw      t9, 0x0004(s0)             ## 00000004
	sw      t5, 0x0180(s0)             ## 00000180
	sh      t2, 0x00B4(s0)             ## 000000B4
	sw      t4, 0x01E8(s0)             ## 000001E8
	swc1    $f16, 0x01E4(s0)           ## 000001E4
lbl_808BB6E4:
	lw      $ra, 0x002C($sp)           
lbl_808BB6E8:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BB6F8:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x0034($sp)            
	addiu   t6, $zero, 0x0064          ## t6 = 00000064
	sw      t6, 0x0010($sp)            
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_80064508              
	addiu   a3, $zero, 0x03E8          ## a3 = 000003E8
	lh      t7, 0x00B4(s0)             ## 000000B4
	lui     $at, 0x4680                ## $at = 46800000
	mtc1    $at, $f6                   ## $f6 = 16384.00
	mtc1    t7, $f4                    ## $f4 = 0.00
	lui     $at, 0x4270                ## $at = 42700000
	mtc1    $at, $f10                  ## $f10 = 60.00
	cvt.s.w $f0, $f4                   
	lwc1    $f8, 0x000C(s0)            ## 0000000C
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a2, $zero, 0x0003          ## a2 = 00000003
	div.s   $f0, $f0, $f6              
	mul.s   $f16, $f10, $f0            
	add.s   $f18, $f8, $f16            
	swc1    $f18, 0x0028(s0)           ## 00000028
	swc1    $f0, 0x002C($sp)           
	jal     func_808BA748              
	lw      a1, 0x0034($sp)            
	lwc1    $f0, 0x002C($sp)           
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     t8, 0x8002                 ## t8 = 80020000
	addiu   t8, t8, 0xEFF4             ## t8 = 8001EFF4
	c.eq.s  $f0, $f4                   
	lui     $at, %hi(var_808BC1CC)     ## $at = 808C0000
	bc1fl   lbl_808BB7B0               
	lw      $ra, 0x0024($sp)           
	lh      t9, 0x00B4(s0)             ## 000000B4
	sw      t8, 0x00C0(s0)             ## 000000C0
	lui     t0, %hi(func_808BB7C0)     ## t0 = 808C0000
	sh      t9, 0x0030(s0)             ## 00000030
	lwc1    $f6, %lo(var_808BC1CC)($at) 
	addiu   t0, t0, %lo(func_808BB7C0) ## t0 = 808BB7C0
	sw      t0, 0x0180(s0)             ## 00000180
	swc1    $f6, 0x0068(s0)            ## 00000068
	lw      $ra, 0x0024($sp)           
lbl_808BB7B0:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BB7C0:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_800211A4              
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x0024($sp)            
	jal     func_808BA968              
	addiu   a2, s0, 0x0024             ## a2 = 00000024
	lh      v0, 0x01F4(s0)             ## 000001F4
	or      a0, s0, $zero              ## a0 = 00000000
	bne     v0, $zero, lbl_808BB804    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	beq     $zero, $zero, lbl_808BB80C 
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_808BB804:
	sh      t6, 0x01F4(s0)             ## 000001F4
	lh      v1, 0x01F4(s0)             ## 000001F4
lbl_808BB80C:
	bne     v1, $zero, lbl_808BB824    
	nop
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3822          ## a1 = 00003822
	addiu   t7, $zero, 0x0005          ## t7 = 00000005
	sh      t7, 0x01F4(s0)             ## 000001F4
lbl_808BB824:
	jal     func_808BB000              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_808BB84C    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_808BAE58              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     t8, %hi(func_808BB8C4)     ## t8 = 808C0000
	addiu   t8, t8, %lo(func_808BB8C4) ## t8 = 808BB8C4
	beq     $zero, $zero, lbl_808BB8B0 
	sw      t8, 0x0180(s0)             ## 00000180
lbl_808BB84C:
	jal     func_808BB084              
	lw      a1, 0x0024($sp)            
	jal     func_808BB298              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_808BB880    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3820          ## a1 = 00003820
	jal     func_808BAD68              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     t9, %hi(func_808BBBD4)     ## t9 = 808C0000
	addiu   t9, t9, %lo(func_808BBBD4) ## t9 = 808BBBD4
	sw      t9, 0x0180(s0)             ## 00000180
lbl_808BB880:
	lhu     t0, 0x0088(s0)             ## 00000088
	or      a0, s0, $zero              ## a0 = 00000000
	andi    t1, t0, 0x0008             ## t1 = 00000000
	beql    t1, $zero, lbl_808BB8B4    
	lw      $ra, 0x001C($sp)           
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3823          ## a1 = 00003823
	jal     func_808BADEC              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     t2, %hi(func_808BBC3C)     ## t2 = 808C0000
	addiu   t2, t2, %lo(func_808BBC3C) ## t2 = 808BBC3C
	sw      t2, 0x0180(s0)             ## 00000180
lbl_808BB8B0:
	lw      $ra, 0x001C($sp)           
lbl_808BB8B4:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BB8C4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	lwc1    $f4, 0x0154(a2)            ## 00000154
	or      a0, a2, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x3850          ## a1 = 00003850
	trunc.w.s $f6, $f4                   
	mfc1    t7, $f6                    
	nop
	sll     t8, t7, 16                 
	sra     t9, t8, 16                 
	addiu   t0, t9, 0xFFF8             ## t0 = FFFFFFF8
	slti    $at, t0, 0x0004            
	beq     $at, $zero, lbl_808BB934   
	nop
	lw      v0, 0x01D0(a2)             ## 000001D0
	lh      t1, 0x01E8(v0)             ## 000001E8
	addiu   t2, t1, 0x0001             ## t2 = 00000001
	sh      t2, 0x01E8(v0)             ## 000001E8
	lw      t5, 0x01D4(a2)             ## 000001D4
	lw      t3, 0x01D0(a2)             ## 000001D0
	sw      t5, 0x0024(t3)             ## 00000024
	lw      t4, 0x01D8(a2)             ## 000001D8
	sw      t4, 0x0028(t3)             ## 00000028
	lw      t5, 0x01DC(a2)             ## 000001DC
	beq     $zero, $zero, lbl_808BB964 
	sw      t5, 0x002C(t3)             ## 0000002C
lbl_808BB934:
	jal     func_80022FD0              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	jal     func_80020EB4              
	lw      a0, 0x01D0(a2)             ## 000001D0
	lw      a2, 0x0018($sp)            
	lui     t7, %hi(func_808BB974)     ## t7 = 808C0000
	addiu   t6, $zero, 0x0018          ## t6 = 00000018
	addiu   t7, t7, %lo(func_808BB974) ## t7 = 808BB974
	sh      t6, 0x01F2(a2)             ## 000001F2
	sh      $zero, 0x01EC(a2)          ## 000001EC
	sw      t7, 0x0180(a2)             ## 00000180
lbl_808BB964:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BB974:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lh      v0, 0x01F2(a0)             ## 000001F2
	bne     v0, $zero, lbl_808BB994    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	beq     $zero, $zero, lbl_808BB99C 
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_808BB994:
	sh      t6, 0x01F2(a0)             ## 000001F2
	lh      v1, 0x01F2(a0)             ## 000001F2
lbl_808BB99C:
	bnel    v1, $zero, lbl_808BB9D8    
	lw      $ra, 0x0014($sp)           
	jal     func_808BA704              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	lw      t7, 0x0004(a0)             ## 00000004
	and     t8, t7, $at                
	jal     func_808BAC54              
	sw      t8, 0x0004(a0)             ## 00000004
	lw      a0, 0x0018($sp)            
	lui     t9, %hi(func_808BB9E4)     ## t9 = 808C0000
	addiu   t9, t9, %lo(func_808BB9E4) ## t9 = 808BB9E4
	sw      t9, 0x0180(a0)             ## 00000180
	lw      $ra, 0x0014($sp)           
lbl_808BB9D8:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BB9E4:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lbu     t6, 0x0114(s0)             ## 00000114
	lui     $at, 0x4F80                ## $at = 4F800000
	mtc1    t6, $f4                    ## $f4 = 0.00
	bgez    t6, lbl_808BBA18           
	cvt.s.w $f6, $f4                   
	mtc1    $at, $f8                   ## $f8 = 4294967000.00
	nop
	add.s   $f6, $f6, $f8              
lbl_808BBA18:
	lui     $at, 0x4100                ## $at = 41000000
	mtc1    $at, $f10                  ## $f10 = 8.00
	lui     $at, %hi(var_808BC1D0)     ## $at = 808C0000
	lwc1    $f18, %lo(var_808BC1D0)($at) 
	div.s   $f16, $f6, $f10            
	or      a0, s0, $zero              ## a0 = 00000000
	mul.s   $f4, $f18, $f16            
	jal     func_800211A4              
	swc1    $f4, 0x01F8(s0)            ## 000001F8
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_808BAAE8              
	lw      a1, 0x0024($sp)            
	beq     v0, $zero, lbl_808BBA70    
	addiu   t7, $zero, 0x003C          ## t7 = 0000003C
	sh      t7, 0x01F2(s0)             ## 000001F2
	jal     func_808BACF8              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     t9, %hi(func_808BBA84)     ## t9 = 808C0000
	addiu   t8, $zero, 0x0007          ## t8 = 00000007
	addiu   t9, t9, %lo(func_808BBA84) ## t9 = 808BBA84
	sh      t8, 0x01EC(s0)             ## 000001EC
	sw      t9, 0x0180(s0)             ## 00000180
lbl_808BBA70:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BBA84:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	jal     func_808BBD7C              
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BBAA4:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	jal     func_800211A4              
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_808BAAE8              
	lw      a1, 0x002C($sp)            
	beql    v0, $zero, lbl_808BBAEC    
	addiu   t7, $zero, 0x000A          ## t7 = 0000000A
	jal     func_808BACF8              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     t6, %hi(func_808BBB24)     ## t6 = 808C0000
	addiu   t6, t6, %lo(func_808BBB24) ## t6 = 808BBB24
	sw      t6, 0x0180(s0)             ## 00000180
	addiu   t7, $zero, 0x000A          ## t7 = 0000000A
lbl_808BBAEC:
	sw      t7, 0x0010($sp)            
	addiu   a0, s0, 0x00B6             ## a0 = 000000B6
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_80064508              
	addiu   a3, $zero, 0x03E8          ## a3 = 000003E8
	lh      t8, 0x00B4(s0)             ## 000000B4
	lh      t9, 0x01EE(s0)             ## 000001EE
	sh      t8, 0x0030(s0)             ## 00000030
	sb      t9, 0x0114(s0)             ## 00000114
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_808BBB24:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lh      v0, 0x01EE(a0)             ## 000001EE
	bne     v0, $zero, lbl_808BBB44    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	beq     $zero, $zero, lbl_808BBB50 
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_808BBB44:
	sh      t6, 0x01EE(a0)             ## 000001EE
	lh      v0, 0x01EE(a0)             ## 000001EE
	or      v1, v0, $zero              ## v1 = 00000000
lbl_808BBB50:
	beq     v1, $zero, lbl_808BBBAC    
	slti    $at, v0, 0x001E            
	beq     $at, $zero, lbl_808BBBC4   
	andi    t7, v0, 0x0001             ## t7 = 00000000
	beq     t7, $zero, lbl_808BBB8C    
	lui     $at, 0x3FC0                ## $at = 3FC00000
	lui     $at, 0x3FC0                ## $at = 3FC00000
	mtc1    $at, $f0                   ## $f0 = 1.50
	lwc1    $f4, 0x0024(a0)            ## 00000024
	lwc1    $f8, 0x002C(a0)            ## 0000002C
	add.s   $f6, $f4, $f0              
	add.s   $f10, $f8, $f0             
	swc1    $f6, 0x0024(a0)            ## 00000024
	beq     $zero, $zero, lbl_808BBBC4 
	swc1    $f10, 0x002C(a0)           ## 0000002C
lbl_808BBB8C:
	mtc1    $at, $f0                   ## $f0 = 1.50
	lwc1    $f16, 0x0024(a0)           ## 00000024
	lwc1    $f4, 0x002C(a0)            ## 0000002C
	sub.s   $f18, $f16, $f0            
	sub.s   $f6, $f4, $f0              
	swc1    $f18, 0x0024(a0)           ## 00000024
	beq     $zero, $zero, lbl_808BBBC4 
	swc1    $f6, 0x002C(a0)            ## 0000002C
lbl_808BBBAC:
	jal     func_808BABCC              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	lui     t8, %hi(func_808BB7C0)     ## t8 = 808C0000
	addiu   t8, t8, %lo(func_808BB7C0) ## t8 = 808BB7C0
	sw      t8, 0x0180(a0)             ## 00000180
lbl_808BBBC4:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BBBD4:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lw      t6, 0x0004(s0)             ## 00000004
	lui     $at, 0x0100                ## $at = 01000000
	or      a0, s0, $zero              ## a0 = 00000000
	or      t7, t6, $at                ## t7 = 01000000
	jal     func_800211A4              
	sw      t7, 0x0004(s0)             ## 00000004
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_808BAAE8              
	lw      a1, 0x0024($sp)            
	beql    v0, $zero, lbl_808BBC2C    
	lw      $ra, 0x001C($sp)           
	jal     func_808BABCC              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     t8, %hi(func_808BB7C0)     ## t8 = 808C0000
	addiu   t8, t8, %lo(func_808BB7C0) ## t8 = 808BB7C0
	sw      t8, 0x0180(s0)             ## 00000180
	lw      $ra, 0x001C($sp)           
lbl_808BBC2C:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BBC3C:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	addiu   t6, $zero, 0x0064          ## t6 = 00000064
	sw      t6, 0x0010($sp)            
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	addiu   a1, $zero, 0x4000          ## a1 = 00004000
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_80064508              
	addiu   a3, $zero, 0x03E8          ## a3 = 000003E8
	lh      v0, 0x01F2(s0)             ## 000001F2
	addiu   t8, $zero, 0x001E          ## t8 = 0000001E
	bne     v0, $zero, lbl_808BBC84    
	addiu   t7, v0, 0xFFFF             ## t7 = FFFFFFFF
	beq     $zero, $zero, lbl_808BBC90 
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_808BBC84:
	sh      t7, 0x01F2(s0)             ## 000001F2
	lh      v0, 0x01F2(s0)             ## 000001F2
	or      v1, v0, $zero              ## v1 = 00000000
lbl_808BBC90:
	beq     v1, $zero, lbl_808BBCC8    
	subu    t9, t8, v0                 
	mtc1    t9, $f4                    ## $f4 = 0.00
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f8                   ## $f8 = 30.00
	cvt.s.w $f6, $f4                   
	lui     $at, 0x4270                ## $at = 42700000
	mtc1    $at, $f16                  ## $f16 = 60.00
	lwc1    $f10, 0x000C(s0)           ## 0000000C
	div.s   $f0, $f6, $f8              
	mul.s   $f18, $f16, $f0            
	sub.s   $f4, $f10, $f18            
	beq     $zero, $zero, lbl_808BBCD0 
	swc1    $f4, 0x0028(s0)            ## 00000028
lbl_808BBCC8:
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_808BBCD0:
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x002C($sp)            
	jal     func_808BA748              
	addiu   a2, $zero, 0x0003          ## a2 = 00000003
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BBCF4:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	jal     func_800211A4              
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t6, $zero, 0x000A          ## t6 = 0000000A
	sw      t6, 0x0010($sp)            
	addiu   a0, s0, 0x00B6             ## a0 = 000000B6
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_80064508              
	addiu   a3, $zero, 0x03E8          ## a3 = 000003E8
	lh      t7, 0x00B4(s0)             ## 000000B4
	or      a0, s0, $zero              ## a0 = 00000000
	sh      t7, 0x0030(s0)             ## 00000030
	jal     func_808BAAE8              
	lw      a1, 0x002C($sp)            
	beq     v0, $zero, lbl_808BBD68    
	addiu   t8, $zero, 0x003C          ## t8 = 0000003C
	sh      t8, 0x01F2(s0)             ## 000001F2
	jal     func_808BACF8              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     t0, %hi(func_808BBD7C)     ## t0 = 808C0000
	addiu   t9, $zero, 0x0007          ## t9 = 00000007
	addiu   t0, t0, %lo(func_808BBD7C) ## t0 = 808BBD7C
	sh      t9, 0x01EC(s0)             ## 000001EC
	sw      t0, 0x0180(s0)             ## 00000180
lbl_808BBD68:
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BBD7C:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0030($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0034($sp)           
	lh      v0, 0x01EC(s0)             ## 000001EC
	addiu   a0, a1, 0x1C24             ## a0 = 00001C24
	beql    v0, $zero, lbl_808BBDD0    
	lwc1    $f4, 0x0028(s0)            ## 00000028
	lbu     t6, 0x0114(s0)             ## 00000114
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x4000          ## a1 = 00004000
	bne     t6, $zero, lbl_808BBE14    
	addiu   a2, $zero, 0x00C8          ## a2 = 000000C8
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_80027090              
	sw      v0, 0x0010($sp)            
	lh      t7, 0x01EC(s0)             ## 000001EC
	addiu   t8, t7, 0xFFFF             ## t8 = FFFFFFFF
	beq     $zero, $zero, lbl_808BBE14 
	sh      t8, 0x01EC(s0)             ## 000001EC
	lwc1    $f4, 0x0028(s0)            ## 00000028
lbl_808BBDD0:
	lw      a3, 0x0024(s0)             ## 00000024
	addiu   a2, $zero, 0x0010          ## a2 = 00000010
	swc1    $f4, 0x0010($sp)           
	lwc1    $f6, 0x002C(s0)            ## 0000002C
	sw      $zero, 0x0024($sp)         
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0018($sp)         
	jal     func_80025110              ## ActorSpawn
	swc1    $f6, 0x0014($sp)           
	beq     v0, $zero, lbl_808BBE04    
	addiu   t9, $zero, 0x0008          ## t9 = 00000008
	sh      $zero, 0x01E8(v0)          ## 000001E8
lbl_808BBE04:
	lui     t0, %hi(func_808BBE28)     ## t0 = 808C0000
	addiu   t0, t0, %lo(func_808BBE28) ## t0 = 808BBE28
	sh      t9, 0x01F2(s0)             ## 000001F2
	sw      t0, 0x0180(s0)             ## 00000180
lbl_808BBE14:
	lw      $ra, 0x0034($sp)           
	lw      s0, 0x0030($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BBE28:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lh      v0, 0x01F2(s0)             ## 000001F2
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, s0, 0x0024             ## a2 = 00000024
	bne     v0, $zero, lbl_808BBE58    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	beq     $zero, $zero, lbl_808BBE60 
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_808BBE58:
	sh      t6, 0x01F2(s0)             ## 000001F2
	lh      v1, 0x01F2(s0)             ## 000001F2
lbl_808BBE60:
	bne     v1, $zero, lbl_808BBE78    
	lw      a0, 0x0024($sp)            
	jal     func_80013A84              
	addiu   a3, $zero, 0x0040          ## a3 = 00000040
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_808BBE78:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BBE8C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lh      v0, 0x01F0(a0)             ## 000001F0
	bne     v0, $zero, lbl_808BBEAC    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	beq     $zero, $zero, lbl_808BBEB4 
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_808BBEAC:
	sh      t6, 0x01F0(a0)             ## 000001F0
	lh      v1, 0x01F0(a0)             ## 000001F0
lbl_808BBEB4:
	bnel    v1, $zero, lbl_808BBEC8    
	lw      $ra, 0x0014($sp)           
	jal     func_808BB2C8              
	nop
	lw      $ra, 0x0014($sp)           
lbl_808BBEC8:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BBED4:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_808BB314              
	lw      a1, 0x002C($sp)            
	lw      v0, 0x0180(s0)             ## 00000180
	lui     t6, %hi(func_808BB5E0)     ## t6 = 808C0000
	addiu   t6, t6, %lo(func_808BB5E0) ## t6 = 808BB5E0
	beql    t6, v0, lbl_808BBF60       
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t7, 0x01C4(s0)             ## 000001C4
	lh      t8, 0x01C6(s0)             ## 000001C6
	mtc1    $zero, $f8                 ## $f8 = 0.00
	mtc1    t7, $f4                    ## $f4 = 0.00
	mtc1    t8, $f6                    ## $f6 = 0.00
	addiu   t9, $zero, 0x0005          ## t9 = 00000005
	cvt.s.w $f4, $f4                   
	sw      t9, 0x0014($sp)            
	lw      a0, 0x002C($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	swc1    $f8, 0x0010($sp)           
	cvt.s.w $f6, $f6                   
	mfc1    a2, $f4                    
	mfc1    a3, $f6                    
	jal     func_80021E6C              
	nop
	lw      v0, 0x0180(s0)             ## 00000180
	or      a0, s0, $zero              ## a0 = 00000000
lbl_808BBF60:
	jalr    $ra, v0                    
	lw      a1, 0x002C($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80020F04              
	lui     a1, 0x4120                 ## a1 = 41200000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_808BB4D0              
	lw      a1, 0x002C($sp)            
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BBF94:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0030($sp)            
	sw      a2, 0x0038($sp)            
	sw      a3, 0x003C($sp)            
	lui     t7, %hi(var_808BC1A4)      ## t7 = 808C0000
	addiu   t7, t7, %lo(var_808BC1A4)  ## t7 = 808BC1A4
	lw      t9, 0x0000(t7)             ## 808BC1A4
	addiu   t6, $sp, 0x0020            ## t6 = FFFFFFF0
	lw      t8, 0x0004(t7)             ## 808BC1A8
	sw      t9, 0x0000(t6)             ## FFFFFFF0
	lw      t9, 0x0008(t7)             ## 808BC1AC
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	sw      t8, 0x0004(t6)             ## FFFFFFF4
	bne     a1, $at, lbl_808BC010      
	sw      t9, 0x0008(t6)             ## FFFFFFF8
	lw      t0, 0x0044($sp)            
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f2                   ## $f2 = 1.00
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f4                   ## $f4 = 0.50
	lwc1    $f0, 0x01F8(t0)            ## 000001F8
	sw      a1, 0x0034($sp)            
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mul.s   $f6, $f0, $f4              
	add.s   $f14, $f0, $f2             
	add.s   $f12, $f6, $f2             
	mfc1    a2, $f12                   
	jal     func_800AA8FC              
	nop
	lw      a1, 0x0034($sp)            
lbl_808BC010:
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	bnel    a1, $at, lbl_808BC030      
	or      v0, $zero, $zero           ## v0 = 00000000
	lw      a1, 0x0044($sp)            
	addiu   a0, $sp, 0x0020            ## a0 = FFFFFFF0
	jal     func_800AB958              
	addiu   a1, a1, 0x01D4             ## a1 = 000001D4
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808BC030:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_808BC040:
	sw      a0, 0x0000($sp)            
	sw      a1, 0x0004($sp)            
	sw      a2, 0x0008($sp)            
	sw      a3, 0x000C($sp)            
	jr      $ra                        
	nop


func_808BC058:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	lw      v0, 0x0180(s0)             ## 00000180
	lui     t6, %hi(func_808BB5E0)     ## t6 = 808C0000
	addiu   t6, t6, %lo(func_808BB5E0) ## t6 = 808BB5E0
	beq     t6, v0, lbl_808BC0BC       
	lui     t7, %hi(func_808BBE28)     ## t7 = 808C0000
	addiu   t7, t7, %lo(func_808BBE28) ## t7 = 808BBE28
	beq     t7, v0, lbl_808BC0BC       
	lw      t8, 0x002C($sp)            
	jal     func_8007E298              
	lw      a0, 0x0000(t8)             ## 00000000
	lui     t9, %hi(func_808BC040)     ## t9 = 808C0000
	addiu   t9, t9, %lo(func_808BC040) ## t9 = 808BC040
	lw      a1, 0x0140(s0)             ## 00000140
	lw      a2, 0x015C(s0)             ## 0000015C
	lui     a3, %hi(func_808BBF94)     ## a3 = 808C0000
	addiu   a3, a3, %lo(func_808BBF94) ## a3 = 808BBF94
	sw      s0, 0x0014($sp)            
	sw      t9, 0x0010($sp)            
	jal     func_8008993C              
	lw      a0, 0x002C($sp)            
lbl_808BC0BC:
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop

.section .data

var_808BC0D0: .word 0x002F0500, 0x00000005, 0x001F0000, 0x000002B0
.word func_808BA5F0
.word func_808BA6D8
.word func_808BBED4
.word func_808BC058
var_808BC0F0: .word \
0x06110939, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x00080000, 0xFFC5FFFF, 0x00000000, 0x01010100, \
0x00120014, 0x00000000, 0x00000000
var_808BC11C: .word 0x01000002, 0x00190019, 0xFF000000
var_808BC128: .word 0xAA825AFF
var_808BC12C: .word 0x643C1400
var_808BC130: .word 0x00000000, 0x00000000, 0x00000000
var_808BC13C: .word 0x00000000, 0x3E99999A, 0x00000000
var_808BC148: .word 0xAA825AFF
var_808BC14C: .word 0x643C1400
var_808BC150: .word 0x00000000, 0x00000000, 0x00000000
var_808BC15C: .word 0x00000000, 0x3E99999A, 0x00000000
var_808BC168: .word 0x47C34F80, 0x47C34F80, 0x47C34F80
var_808BC174: .word \
0x00000000, 0x43520000, 0x42700000, 0x43870000, \
0x42F00000, 0x43A50000, 0x43340000, 0x41F00000, \
0x43700000, 0x42B40000, 0x43960000, 0x43160000
var_808BC1A4: .word 0x43F00000, 0x441B0000, 0x00000000

.section .rodata

var_808BC1B0: .word 0x40266666
var_808BC1B4: .word 0xBF4CCCCD
var_808BC1B8: .word 0xBF4CCCCD
var_808BC1BC: .word 0xBF4CCCCD
var_808BC1C0: .word 0xBF4CCCCD
var_808BC1C4: .word 0xBF4CCCCD
var_808BC1C8: .word 0xBF4CCCCD
var_808BC1CC: .word 0x40266666
var_808BC1D0: .word 0x3F99999A, 0x00000000, 0x00000000, 0x00000000

