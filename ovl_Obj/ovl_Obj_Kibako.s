#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A64520:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lh      v1, 0x001C(a3)             ## 0000001C
	andi    v0, v1, 0x001F             ## v0 = 00000000
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	bltz    v0, lbl_80A64570           
	slti    $at, v0, 0x001A            
	beq     $at, $zero, lbl_80A64570   
	lw      a0, 0x001C($sp)            
	sra     t6, v1,  8                 
	andi    t7, t6, 0x003F             ## t7 = 00000000
	sll     t8, t7,  8                 
	or      a2, v0, t8                 ## a2 = 00000000
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	jal     func_80013678              
	addiu   a1, a3, 0x0024             ## a1 = 00000024
lbl_80A64570:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A64580:
	lwc1    $f4, 0x0060(a0)            ## 00000060
	lwc1    $f6, 0x006C(a0)            ## 0000006C
	lwc1    $f0, 0x0070(a0)            ## 00000070
	add.s   $f8, $f4, $f6              
	swc1    $f8, 0x0060(a0)            ## 00000060
	lwc1    $f10, 0x0060(a0)           ## 00000060
	c.lt.s  $f10, $f0                  
	nop
	bc1f    lbl_80A645AC               
	nop
	swc1    $f0, 0x0060(a0)            ## 00000060
lbl_80A645AC:
	jr      $ra                        
	nop


func_80A645B4:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x0024($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	addiu   a1, a2, 0x0140             ## a1 = 00000140
	sw      a1, 0x0018($sp)            
	lw      a0, 0x0024($sp)            
	jal     func_8004AB7C              
	sw      a2, 0x0020($sp)            
	lui     a3, %hi(var_80A650E0)      ## a3 = 80A60000
	lw      a2, 0x0020($sp)            
	addiu   a3, a3, %lo(var_80A650E0)  ## a3 = 80A650E0
	lw      a0, 0x0024($sp)            
	jal     func_8004ACEC              
	lw      a1, 0x0018($sp)            
	lw      a0, 0x0020($sp)            
	jal     func_80050B00              
	lw      a1, 0x0018($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6460C:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lui     a1, %hi(var_80A65114)      ## a1 = 80A60000
	addiu   a1, a1, %lo(var_80A65114)  ## a1 = 80A65114
	jal     func_80063F7C              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, %hi(var_80A65130)     ## $at = 80A60000
	lwc1    $f4, %lo(var_80A65130)($at) 
	lui     $at, 0xC150                ## $at = C1500000
	mtc1    $at, $f6                   ## $f6 = -13.00
	swc1    $f4, 0x006C(s0)            ## 0000006C
	or      a0, s0, $zero              ## a0 = 00000000
	swc1    $f6, 0x0070(s0)            ## 00000070
	jal     func_80A645B4              
	lw      a1, 0x0024($sp)            
	lui     a2, %hi(var_80A6510C)      ## a2 = 80A60000
	addiu   a2, a2, %lo(var_80A6510C)  ## a2 = 80A6510C
	addiu   a0, s0, 0x0098             ## a0 = 00000098
	jal     func_80050344              
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_80A64BB0              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A64684:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	or      a2, a1, $zero              ## a2 = 00000000
	or      a0, a2, $zero              ## a0 = 00000000
	jal     func_8004ABCC              
	addiu   a1, a3, 0x0140             ## a1 = 00000140
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A646B0:
	addiu   $sp, $sp, 0xFF20           ## $sp = FFFFFF20
	sw      s8, 0x0098($sp)            
	or      s8, a1, $zero              ## s8 = 00000000
	sw      $ra, 0x009C($sp)           
	sw      s7, 0x0094($sp)            
	sw      s6, 0x0090($sp)            
	sw      s5, 0x008C($sp)            
	sw      s4, 0x0088($sp)            
	sw      s3, 0x0084($sp)            
	sw      s2, 0x0080($sp)            
	sw      s1, 0x007C($sp)            
	sw      s0, 0x0078($sp)            
	sdc1    $f30, 0x0070($sp)          
	sdc1    $f28, 0x0068($sp)          
	sdc1    $f26, 0x0060($sp)          
	sdc1    $f24, 0x0058($sp)          
	sdc1    $f22, 0x0050($sp)          
	sdc1    $f20, 0x0048($sp)          
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f30                  ## $f30 = 5.00
	lui     $at, %hi(var_80A65134)     ## $at = 80A60000
	lwc1    $f28, %lo(var_80A65134)($at) 
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f26                  ## $f26 = 2.00
	lui     $at, 0x4180                ## $at = 41800000
	lui     s6, 0x0500                 ## s6 = 05000000
	mtc1    $at, $f24                  ## $f24 = 16.00
	addiu   s6, s6, 0x5380             ## s6 = 05005380
	or      s3, $zero, $zero           ## s3 = 00000000
	or      s2, $zero, $zero           ## s2 = 00000000
	addiu   s1, a0, 0x0024             ## s1 = 00000024
	addiu   s7, $zero, 0x000C          ## s7 = 0000000C
	addiu   s5, $sp, 0x00BC            ## s5 = FFFFFFDC
	addiu   s4, $sp, 0x00C8            ## s4 = FFFFFFE8
lbl_80A64738:
	sll     a0, s2, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	sll     a0, s2, 16                 
	mov.s   $f20, $f0                  
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	mul.s   $f4, $f20, $f24            
	mov.s   $f22, $f0                  
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f4, 0x00C8($sp)           
	mul.s   $f6, $f0, $f30             
	lwc1    $f16, 0x00C8($sp)          
	mul.s   $f10, $f22, $f24           
	nop
	mul.s   $f18, $f16, $f28           
	add.s   $f8, $f6, $f26             
	swc1    $f10, 0x00D0($sp)          
	swc1    $f8, 0x00CC($sp)           
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f18, 0x00BC($sp)          
	lui     $at, 0x40C0                ## $at = 40C00000
	mtc1    $at, $f4                   ## $f4 = 6.00
	lwc1    $f10, 0x00D0($sp)          
	lwc1    $f18, 0x00C8($sp)          
	mul.s   $f6, $f0, $f4              
	add.s   $f8, $f6, $f26             
	mul.s   $f16, $f10, $f28           
	swc1    $f8, 0x00C0($sp)           
	lwc1    $f8, 0x00CC($sp)           
	swc1    $f16, 0x00C4($sp)          
	lwc1    $f4, 0x0000(s1)            ## 00000024
	add.s   $f6, $f18, $f4             
	swc1    $f6, 0x00C8($sp)           
	lwc1    $f16, 0x0004(s1)           ## 00000028
	add.s   $f18, $f8, $f16            
	swc1    $f18, 0x00CC($sp)          
	lwc1    $f4, 0x0008(s1)            ## 0000002C
	add.s   $f6, $f10, $f4             
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f6, 0x00D0($sp)           
	lui     $at, %hi(var_80A65138)     ## $at = 80A60000
	lwc1    $f8, %lo(var_80A65138)($at) 
	lui     $at, %hi(var_80A6513C)     ## $at = 80A60000
	c.lt.s  $f0, $f8                   
	nop
	bc1f    lbl_80A64800               
	nop
	beq     $zero, $zero, lbl_80A64820 
	addiu   s0, $zero, 0x0060          ## s0 = 00000060
lbl_80A64800:
	lwc1    $f16, %lo(var_80A6513C)($at) 
	addiu   s0, $zero, 0x0020          ## s0 = 00000020
	c.lt.s  $f0, $f16                  
	nop
	bc1f    lbl_80A64820               
	nop
	beq     $zero, $zero, lbl_80A64820 
	addiu   s0, $zero, 0x0040          ## s0 = 00000040
lbl_80A64820:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f18                  ## $f18 = 30.00
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f4                   ## $f4 = 10.00
	mul.s   $f10, $f0, $f18            
	addiu   t6, $zero, 0xFF38          ## t6 = FFFFFF38
	addiu   t7, $zero, 0x000A          ## t7 = 0000000A
	addiu   t8, $zero, 0x000A          ## t8 = 0000000A
	addiu   t1, $zero, 0x0020          ## t1 = 00000020
	addiu   t2, $zero, 0x003C          ## t2 = 0000003C
	addiu   t3, $zero, 0xFFFF          ## t3 = FFFFFFFF
	add.s   $f6, $f10, $f4             
	addiu   t4, $zero, 0x0003          ## t4 = 00000003
	sw      t4, 0x0038($sp)            
	sw      t3, 0x0034($sp)            
	trunc.w.s $f8, $f6                   
	sw      t2, 0x0030($sp)            
	sw      t1, 0x002C($sp)            
	sw      t8, 0x001C($sp)            
	mfc1    t0, $f8                    
	sw      t7, 0x0018($sp)            
	sw      t6, 0x0010($sp)            
	or      a0, s8, $zero              ## a0 = 00000000
	or      a1, s4, $zero              ## a1 = FFFFFFE8
	or      a2, s5, $zero              ## a2 = FFFFFFDC
	or      a3, s1, $zero              ## a3 = 00000024
	sw      s0, 0x0014($sp)            
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x0028($sp)         
	sw      s6, 0x003C($sp)            
	jal     func_8001D998              
	sw      t0, 0x0024($sp)            
	addiu   s2, s2, 0x4E20             ## s2 = 00004E20
	sll     s2, s2, 16                 
	addiu   s3, s3, 0x0001             ## s3 = 00000001
	bne     s3, s7, lbl_80A64738       
	sra     s2, s2, 16                 
	addiu   t5, $zero, 0x0032          ## t5 = 00000032
	addiu   t6, $zero, 0x008C          ## t6 = 0000008C
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	sw      t7, 0x0018($sp)            
	sw      t6, 0x0014($sp)            
	sw      t5, 0x0010($sp)            
	or      a0, s8, $zero              ## a0 = 00000000
	or      a1, s1, $zero              ## a1 = 00000024
	lui     a2, 0x4220                 ## a2 = 42200000
	jal     func_80026308              
	addiu   a3, $zero, 0x0003          ## a3 = 00000003
	lw      $ra, 0x009C($sp)           
	ldc1    $f20, 0x0048($sp)          
	ldc1    $f22, 0x0050($sp)          
	ldc1    $f24, 0x0058($sp)          
	ldc1    $f26, 0x0060($sp)          
	ldc1    $f28, 0x0068($sp)          
	ldc1    $f30, 0x0070($sp)          
	lw      s0, 0x0078($sp)            
	lw      s1, 0x007C($sp)            
	lw      s2, 0x0080($sp)            
	lw      s3, 0x0084($sp)            
	lw      s4, 0x0088($sp)            
	lw      s5, 0x008C($sp)            
	lw      s6, 0x0090($sp)            
	lw      s7, 0x0094($sp)            
	lw      s8, 0x0098($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x00E0           ## $sp = 00000000


func_80A64930:
	addiu   $sp, $sp, 0xFF20           ## $sp = FFFFFF20
	sw      s5, 0x008C($sp)            
	sw      s4, 0x0088($sp)            
	sw      s0, 0x0078($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s4, a1, $zero              ## s4 = 00000000
	addiu   s5, $sp, 0x00C8            ## s5 = FFFFFFE8
	sw      $ra, 0x009C($sp)           
	sw      s8, 0x0098($sp)            
	sw      s7, 0x0094($sp)            
	sw      s6, 0x0090($sp)            
	sw      s3, 0x0084($sp)            
	sw      s2, 0x0080($sp)            
	sw      s1, 0x007C($sp)            
	sdc1    $f30, 0x0070($sp)          
	sdc1    $f28, 0x0068($sp)          
	sdc1    $f26, 0x0060($sp)          
	sdc1    $f24, 0x0058($sp)          
	sdc1    $f22, 0x0050($sp)          
	sdc1    $f20, 0x0048($sp)          
	addiu   s1, s0, 0x0024             ## s1 = 00000024
	lw      t7, 0x0000(s1)             ## 00000024
	addiu   t8, $zero, 0x01F4          ## t8 = 000001F4
	or      a0, s4, $zero              ## a0 = 00000000
	sw      t7, 0x0000(s5)             ## FFFFFFE8
	lw      t6, 0x0004(s1)             ## 00000028
	or      a1, s5, $zero              ## a1 = FFFFFFE8
	or      a2, $zero, $zero           ## a2 = 00000000
	sw      t6, 0x0004(s5)             ## FFFFFFEC
	lw      t7, 0x0008(s1)             ## 0000002C
	or      a3, $zero, $zero           ## a3 = 00000000
	sw      t7, 0x0008(s5)             ## FFFFFFF0
	lwc1    $f4, 0x00CC($sp)           
	lwc1    $f6, 0x0084(s0)            ## 00000084
	sw      t8, 0x0014($sp)            
	sw      $zero, 0x0010($sp)         
	add.s   $f8, $f4, $f6              
	jal     func_8001CF94              
	swc1    $f8, 0x00CC($sp)           
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f30                  ## $f30 = 5.00
	lui     $at, %hi(var_80A65140)     ## $at = 80A60000
	lwc1    $f28, %lo(var_80A65140)($at) 
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f26                  ## $f26 = 2.00
	lui     $at, 0x4180                ## $at = 41800000
	lui     s7, 0x0500                 ## s7 = 05000000
	mtc1    $at, $f24                  ## $f24 = 16.00
	addiu   s7, s7, 0x5380             ## s7 = 05005380
	or      s3, $zero, $zero           ## s3 = 00000000
	or      s2, $zero, $zero           ## s2 = 00000000
	addiu   s8, $zero, 0x000C          ## s8 = 0000000C
	addiu   s6, $sp, 0x00BC            ## s6 = FFFFFFDC
lbl_80A64A04:
	sll     a0, s2, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	sll     a0, s2, 16                 
	mov.s   $f20, $f0                  
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	mul.s   $f10, $f20, $f24           
	mov.s   $f22, $f0                  
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f10, 0x00C8($sp)          
	mul.s   $f16, $f0, $f30            
	lwc1    $f6, 0x00C8($sp)           
	mul.s   $f4, $f22, $f24            
	nop
	mul.s   $f8, $f6, $f28             
	add.s   $f18, $f16, $f26           
	swc1    $f4, 0x00D0($sp)           
	swc1    $f18, 0x00CC($sp)          
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f8, 0x00BC($sp)           
	lui     $at, 0x4080                ## $at = 40800000
	mtc1    $at, $f10                  ## $f10 = 4.00
	lwc1    $f4, 0x00D0($sp)           
	lwc1    $f8, 0x00C8($sp)           
	mul.s   $f16, $f0, $f10            
	add.s   $f18, $f16, $f26           
	mul.s   $f6, $f4, $f28             
	swc1    $f18, 0x00C0($sp)          
	lwc1    $f18, 0x00CC($sp)          
	swc1    $f6, 0x00C4($sp)           
	lwc1    $f10, 0x0000(s1)           ## 00000024
	add.s   $f16, $f8, $f10            
	swc1    $f16, 0x00C8($sp)          
	lwc1    $f6, 0x0004(s1)            ## 00000028
	add.s   $f8, $f18, $f6             
	swc1    $f8, 0x00CC($sp)           
	lwc1    $f10, 0x0008(s1)           ## 0000002C
	add.s   $f16, $f4, $f10            
	jal     func_800CDCCC              ## Rand.Next() float
	swc1    $f16, 0x00D0($sp)          
	lui     $at, %hi(var_80A65144)     ## $at = 80A60000
	lwc1    $f18, %lo(var_80A65144)($at) 
	addiu   s0, $zero, 0x0020          ## s0 = 00000020
	c.lt.s  $f0, $f18                  
	nop
	bc1f    lbl_80A64ACC               
	nop
	beq     $zero, $zero, lbl_80A64ACC 
	addiu   s0, $zero, 0x0040          ## s0 = 00000040
lbl_80A64ACC:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f6                   ## $f6 = 30.00
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f4                   ## $f4 = 10.00
	mul.s   $f8, $f0, $f6              
	addiu   t9, $zero, 0xFF4C          ## t9 = FFFFFF4C
	addiu   t0, $zero, 0x001E          ## t0 = 0000001E
	addiu   t1, $zero, 0x001E          ## t1 = 0000001E
	addiu   t4, $zero, 0x0020          ## t4 = 00000020
	addiu   t5, $zero, 0x0046          ## t5 = 00000046
	addiu   t6, $zero, 0xFFFF          ## t6 = FFFFFFFF
	add.s   $f10, $f8, $f4             
	addiu   t7, $zero, 0x0003          ## t7 = 00000003
	sw      t7, 0x0038($sp)            
	sw      t6, 0x0034($sp)            
	trunc.w.s $f16, $f10                 
	sw      t5, 0x0030($sp)            
	sw      t4, 0x002C($sp)            
	sw      t1, 0x001C($sp)            
	mfc1    t3, $f16                   
	sw      t0, 0x0018($sp)            
	sw      t9, 0x0010($sp)            
	or      a0, s4, $zero              ## a0 = 00000000
	or      a1, s5, $zero              ## a1 = FFFFFFE8
	or      a2, s6, $zero              ## a2 = FFFFFFDC
	or      a3, s1, $zero              ## a3 = 00000024
	sw      s0, 0x0014($sp)            
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x0028($sp)         
	sw      s7, 0x003C($sp)            
	jal     func_8001D998              
	sw      t3, 0x0024($sp)            
	addiu   s2, s2, 0x4E20             ## s2 = 00004E20
	sll     s2, s2, 16                 
	addiu   s3, s3, 0x0001             ## s3 = 00000001
	bne     s3, s8, lbl_80A64A04       
	sra     s2, s2, 16                 
	lw      $ra, 0x009C($sp)           
	ldc1    $f20, 0x0048($sp)          
	ldc1    $f22, 0x0050($sp)          
	ldc1    $f24, 0x0058($sp)          
	ldc1    $f26, 0x0060($sp)          
	ldc1    $f28, 0x0068($sp)          
	ldc1    $f30, 0x0070($sp)          
	lw      s0, 0x0078($sp)            
	lw      s1, 0x007C($sp)            
	lw      s2, 0x0080($sp)            
	lw      s3, 0x0084($sp)            
	lw      s4, 0x0088($sp)            
	lw      s5, 0x008C($sp)            
	lw      s6, 0x0090($sp)            
	lw      s7, 0x0094($sp)            
	lw      s8, 0x0098($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x00E0           ## $sp = 00000000


func_80A64BB0:
	lui     t6, %hi(func_80A64BCC)     ## t6 = 80A60000
	addiu   t6, t6, %lo(func_80A64BCC) ## t6 = 80A64BCC
	addiu   t7, $zero, 0x00FE          ## t7 = 000000FE
	sw      t6, 0x013C(a0)             ## 0000013C
	sb      t7, 0x00AE(a0)             ## 000000AE
	jr      $ra                        
	nop


func_80A64BCC:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s1, 0x0020($sp)            
	sw      s0, 0x001C($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x0024($sp)           
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022BB0              
	or      a1, s1, $zero              ## a1 = 00000000
	beql    v0, $zero, lbl_80A64C0C    
	lhu     t6, 0x0088(s0)             ## 00000088
	jal     func_80A64DC8              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A64DB8 
	lw      $ra, 0x0024($sp)           
	lhu     t6, 0x0088(s0)             ## 00000088
lbl_80A64C0C:
	lui     $at, 0x4198                ## $at = 41980000
	andi    t7, t6, 0x0020             ## t7 = 00000000
	beql    t7, $zero, lbl_80A64C74    
	lbu     t8, 0x0151(s0)             ## 00000151
	mtc1    $at, $f4                   ## $f4 = 19.00
	lwc1    $f6, 0x0084(s0)            ## 00000084
	or      a0, s0, $zero              ## a0 = 00000000
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_80A64C74               
	lbu     t8, 0x0151(s0)             ## 00000151
	jal     func_80A64930              
	or      a1, s1, $zero              ## a1 = 00000000
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x0024             ## a1 = 00000024
	addiu   a2, $zero, 0x0014          ## a2 = 00000014
	jal     func_80058FF8              
	addiu   a3, $zero, 0x28AA          ## a3 = 000028AA
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A64520              
	or      a1, s1, $zero              ## a1 = 00000000
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A64DB8 
	lw      $ra, 0x0024($sp)           
	lbu     t8, 0x0151(s0)             ## 00000151
lbl_80A64C74:
	or      a0, s0, $zero              ## a0 = 00000000
	andi    t9, t8, 0x0002             ## t9 = 00000000
	beq     t9, $zero, lbl_80A64CBC    
	nop
	jal     func_80A646B0              
	or      a1, s1, $zero              ## a1 = 00000000
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x0024             ## a1 = 00000024
	addiu   a2, $zero, 0x0014          ## a2 = 00000014
	jal     func_80058FF8              
	addiu   a3, $zero, 0x28AA          ## a3 = 000028AA
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A64520              
	or      a1, s1, $zero              ## a1 = 00000000
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A64DB8 
	lw      $ra, 0x0024($sp)           
lbl_80A64CBC:
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	mtc1    $zero, $f8                 ## $f8 = 0.00
	addiu   t0, $zero, 0x0005          ## t0 = 00000005
	sw      t0, 0x0014($sp)            
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	lui     a2, 0x4198                 ## a2 = 41980000
	lui     a3, 0x41A0                 ## a3 = 41A00000
	jal     func_80021E6C              
	swc1    $f8, 0x0010($sp)           
	lbu     v0, 0x0152(s0)             ## 00000152
	lui     $at, 0x41E0                ## $at = 41E00000
	or      a0, s0, $zero              ## a0 = 00000000
	andi    t1, v0, 0x0008             ## t1 = 00000000
	bne     t1, $zero, lbl_80A64D20    
	addiu   a1, s0, 0x0140             ## a1 = 00000140
	mtc1    $at, $f10                  ## $f10 = 28.00
	lwc1    $f16, 0x0090(s0)           ## 00000090
	ori     t2, v0, 0x0008             ## t2 = 00000008
	c.lt.s  $f10, $f16                 
	nop
	bc1fl   lbl_80A64D24               
	lui     $at, 0x4416                ## $at = 44160000
	sb      t2, 0x0152(s0)             ## 00000152
lbl_80A64D20:
	lui     $at, 0x4416                ## $at = 44160000
lbl_80A64D24:
	mtc1    $at, $f18                  ## $f18 = 600.00
	lwc1    $f0, 0x0090(s0)            ## 00000090
	c.lt.s  $f0, $f18                  
	nop
	bc1fl   lbl_80A64D94               
	lui     $at, 0x42C8                ## $at = 42C80000
	jal     func_80050B00              
	sw      a1, 0x002C($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	addu    a1, s1, $at                
	sw      a1, 0x0028($sp)            
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8004BF40              ## CollisionCheck_setAC
	lw      a2, 0x002C($sp)            
	lui     $at, 0x4334                ## $at = 43340000
	mtc1    $at, $f4                   ## $f4 = 180.00
	lwc1    $f0, 0x0090(s0)            ## 00000090
	lw      a1, 0x0028($sp)            
	or      a0, s1, $zero              ## a0 = 00000000
	c.lt.s  $f0, $f4                   
	nop
	bc1fl   lbl_80A64D94               
	lui     $at, 0x42C8                ## $at = 42C80000
	jal     func_8004C130              ## CollisionCheck_setOT
	lw      a2, 0x002C($sp)            
	lwc1    $f0, 0x0090(s0)            ## 00000090
	lui     $at, 0x42C8                ## $at = 42C80000
lbl_80A64D94:
	mtc1    $at, $f6                   ## $f6 = 100.00
	or      a0, s0, $zero              ## a0 = 00000000
	c.lt.s  $f0, $f6                   
	nop
	bc1fl   lbl_80A64DB8               
	lw      $ra, 0x0024($sp)           
	jal     func_80022D20              
	or      a1, s1, $zero              ## a1 = 00000000
	lw      $ra, 0x0024($sp)           
lbl_80A64DB8:
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80A64DC8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lui     t6, %hi(func_80A64DFC)     ## t6 = 80A60000
	addiu   t6, t6, %lo(func_80A64DFC) ## t6 = 80A64DFC
	addiu   t7, $zero, 0xFFFF          ## t7 = FFFFFFFF
	sw      t6, 0x013C(a0)             ## 0000013C
	sb      t7, 0x0003(a0)             ## 00000003
	jal     func_80022F84              
	addiu   a1, $zero, 0x0878          ## a1 = 00000878
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A64DFC:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022D40              
	lw      a1, 0x002C($sp)            
	beq     v0, $zero, lbl_80A64EB4    
	lw      t6, 0x002C($sp)            
	lui     t7, 0x0001                 ## t7 = 00010000
	addu    t7, t7, t6                 
	lb      t7, 0x1CBC(t7)             ## 00011CBC
	lwc1    $f0, 0x0068(s0)            ## 00000068
	lui     $at, %hi(var_80A65148)     ## $at = 80A60000
	sb      t7, 0x0003(s0)             ## 00000003
	lwc1    $f4, %lo(var_80A65148)($at) 
	abs.s   $f0, $f0                   
	or      a0, s0, $zero              ## a0 = 00000000
	c.lt.s  $f0, $f4                   
	nop
	bc1f    lbl_80A64E78               
	nop
	jal     func_80022FD0              
	addiu   a1, $zero, 0x28AB          ## a1 = 000028AB
	jal     func_80A64BB0              
	or      a0, s0, $zero              ## a0 = 00000000
	lbu     t8, 0x0152(s0)             ## 00000152
	andi    t9, t8, 0xFFF7             ## t9 = 00000000
	beq     $zero, $zero, lbl_80A64E90 
	sb      t9, 0x0152(s0)             ## 00000152
lbl_80A64E78:
	jal     func_80A64EC8              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A64580              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80021124              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80A64E90:
	mtc1    $zero, $f6                 ## $f6 = 0.00
	addiu   t0, $zero, 0x0005          ## t0 = 00000005
	sw      t0, 0x0014($sp)            
	lw      a0, 0x002C($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	lui     a2, 0x4198                 ## a2 = 41980000
	lui     a3, 0x41A0                 ## a3 = 41A00000
	jal     func_80021E6C              
	swc1    $f6, 0x0010($sp)           
lbl_80A64EB4:
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A64EC8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a1, a0, $zero              ## a1 = 00000000
	lh      a0, 0x0032(a1)             ## 00000032
	jal     func_800636C4              ## sins?
	sw      a1, 0x0018($sp)            
	lw      a1, 0x0018($sp)            
	lwc1    $f4, 0x0068(a1)            ## 00000068
	lh      a0, 0x0032(a1)             ## 00000032
	mul.s   $f6, $f0, $f4              
	jal     func_80063684              ## coss?
	swc1    $f6, 0x005C(a1)            ## 0000005C
	lw      a1, 0x0018($sp)            
	lui     t7, %hi(func_80A64F28)     ## t7 = 80A60000
	addiu   t6, $zero, 0x00F0          ## t6 = 000000F0
	lwc1    $f8, 0x0068(a1)            ## 00000068
	addiu   t7, t7, %lo(func_80A64F28) ## t7 = 80A64F28
	sb      t6, 0x00AE(a1)             ## 000000AE
	mul.s   $f10, $f0, $f8             
	sw      t7, 0x013C(a1)             ## 0000013C
	swc1    $f10, 0x0064(a1)           ## 00000064
	lw      $ra, 0x0014($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80A64F28:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s1, 0x0020($sp)            
	sw      s0, 0x001C($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x0024($sp)           
	lhu     v0, 0x0088(s0)             ## 00000088
	or      a0, s0, $zero              ## a0 = 00000000
	andi    t6, v0, 0x000B             ## t6 = 00000000
	bne     t6, $zero, lbl_80A64F68    
	nop
	lbu     t7, 0x0150(s0)             ## 00000150
	andi    t9, v0, 0x0040             ## t9 = 00000000
	andi    t8, t7, 0x0002             ## t8 = 00000000
	beq     t8, $zero, lbl_80A64FA0    
	nop
lbl_80A64F68:
	jal     func_80A646B0              
	or      a1, s1, $zero              ## a1 = 00000000
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x0024             ## a1 = 00000024
	addiu   a2, $zero, 0x0014          ## a2 = 00000014
	jal     func_80058FF8              
	addiu   a3, $zero, 0x28AA          ## a3 = 000028AA
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A64520              
	or      a1, s1, $zero              ## a1 = 00000000
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A65054 
	lw      $ra, 0x0024($sp)           
lbl_80A64FA0:
	beq     t9, $zero, lbl_80A64FE0    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A64930              
	or      a1, s1, $zero              ## a1 = 00000000
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x0024             ## a1 = 00000024
	addiu   a2, $zero, 0x0014          ## a2 = 00000014
	jal     func_80058FF8              
	addiu   a3, $zero, 0x28AA          ## a3 = 000028AA
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A64520              
	or      a1, s1, $zero              ## a1 = 00000000
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A65054 
	lw      $ra, 0x0024($sp)           
lbl_80A64FE0:
	jal     func_80A64580              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80021124              
	or      a0, s0, $zero              ## a0 = 00000000
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   t0, $zero, 0x0005          ## t0 = 00000005
	sw      t0, 0x0014($sp)            
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	lui     a2, 0x4198                 ## a2 = 41980000
	lui     a3, 0x41A0                 ## a3 = 41A00000
	jal     func_80021E6C              
	swc1    $f4, 0x0010($sp)           
	addiu   a1, s0, 0x0140             ## a1 = 00000140
	sw      a1, 0x002C($sp)            
	jal     func_80050B00              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	addu    s0, s1, $at                
	or      a1, s0, $zero              ## a1 = 00000000
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8004C130              ## CollisionCheck_setOT
	lw      a2, 0x002C($sp)            
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_8004BD50              ## CollisionCheck_setAT
	lw      a2, 0x002C($sp)            
	lw      $ra, 0x0024($sp)           
lbl_80A65054:
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80A65064:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lw      t9, 0x013C(a0)             ## 0000013C
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A65088:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	or      a2, a1, $zero              ## a2 = 00000000
	lui     a1, 0x0500                 ## a1 = 05000000
	addiu   a1, a1, 0x5290             ## a1 = 05005290
	jal     func_80028048              
	or      a0, a2, $zero              ## a0 = 00000000
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop

.section .data

var_80A650C0: .word 0x01100600, 0x04000010, 0x00030000, 0x0000018C
.word func_80A6460C
.word func_80A64684
.word func_80A65064
.word func_80A65088
var_80A650E0: .word \
0x0A090939, 0x20010000, 0x00000000, 0x00000002, \
0x00010000, 0x4FC00748, 0x00000000, 0x01010100, \
0x000C001B, 0x00000000, 0x00000000
var_80A6510C: .word 0x0000000C, 0x003CFE00
var_80A65114: .word \
0xC8500064, 0xB0F403E8, 0xB0F8003C, 0x30FC03E8, \
0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80A65130: .word 0xBF99999A
var_80A65134: .word 0x3E4CCCCD
var_80A65138: .word 0x3DCCCCCD
var_80A6513C: .word 0x3F333333
var_80A65140: .word 0x3E3851EC
var_80A65144: .word 0x3E4CCCCD
var_80A65148: .word 0x3DCCCCCD, 0x00000000

