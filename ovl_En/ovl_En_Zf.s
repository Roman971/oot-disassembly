#include <mips.h>
.set noreorder
.set noat

.section .text
func_80896800:
	sw      a1, 0x03D8(a0)             ## 000003D8
	jr      $ra                        
	nop


func_8089680C:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s0, 0x0020($sp)            
	mtc1    a2, $f12                   ## $f12 = 0.00
	mtc1    $zero, $f2                 ## $f2 = 0.00
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x004C($sp)            
	c.eq.s  $f12, $f2                  
	addiu   v0, s0, 0x0024             ## v0 = 00000024
	bc1fl   lbl_808968A4               
	lw      t9, 0x0000(v0)             ## 00000024
	lwc1    $f4, 0x0068(s0)            ## 00000068
	lui     $at, 0xBF80                ## $at = BF800000
	c.le.s  $f2, $f4                   
	nop
	bc1fl   lbl_80896864               
	mtc1    $at, $f12                  ## $f12 = -1.00
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f12                  ## $f12 = 1.00
	beq     $zero, $zero, lbl_8089686C 
	lh      t6, 0x001C(s0)             ## 0000001C
	mtc1    $at, $f12                  ## $f12 = 1.00
lbl_80896864:
	nop
	lh      t6, 0x001C(s0)             ## 0000001C
lbl_8089686C:
	lui     $at, 0x41F0                ## $at = 41F00000
	bltzl   t6, lbl_80896894           
	mtc1    $at, $f8                   ## $f8 = 30.00
	lui     $at, 0x4234                ## $at = 42340000
	mtc1    $at, $f6                   ## $f6 = 45.00
	nop
	mul.s   $f12, $f12, $f6            
	beq     $zero, $zero, lbl_808968A4 
	lw      t9, 0x0000(v0)             ## 00000024
	mtc1    $at, $f8                   ## $f8 = 45.00
lbl_80896894:
	nop
	mul.s   $f12, $f12, $f8            
	nop
	lw      t9, 0x0000(v0)             ## 00000024
lbl_808968A4:
	addiu   t7, $sp, 0x0030            ## t7 = FFFFFFE8
	sw      t9, 0x0000(t7)             ## FFFFFFE8
	lw      t8, 0x0004(v0)             ## 00000028
	sw      t8, 0x0004(t7)             ## FFFFFFEC
	lw      t9, 0x0008(v0)             ## 0000002C
	sw      t9, 0x0008(t7)             ## FFFFFFF0
	lhu     t0, 0x0088(s0)             ## 00000088
	sh      t0, 0x0044($sp)            
	lh      a0, 0x0032(s0)             ## 00000032
	swc1    $f12, 0x0050($sp)          
	jal     func_800636C4              ## sins?
	sw      v0, 0x0028($sp)            
	lwc1    $f12, 0x0050($sp)          
	mul.s   $f10, $f0, $f12            
	swc1    $f10, 0x0040($sp)          
	jal     func_80063684              ## coss?
	lh      a0, 0x0032(s0)             ## 00000032
	lwc1    $f12, 0x0050($sp)          
	lwc1    $f16, 0x0024(s0)           ## 00000024
	lwc1    $f18, 0x0040($sp)          
	mul.s   $f8, $f0, $f12             
	lwc1    $f6, 0x002C(s0)            ## 0000002C
	add.s   $f4, $f16, $f18            
	mtc1    $zero, $f2                 ## $f2 = 0.00
	addiu   t1, $zero, 0x001C          ## t1 = 0000001C
	or      a1, s0, $zero              ## a1 = 00000000
	swc1    $f4, 0x0024(s0)            ## 00000024
	add.s   $f10, $f6, $f8             
	mfc1    a2, $f2                    
	mfc1    a3, $f2                    
	swc1    $f10, 0x002C(s0)           ## 0000002C
	sw      t1, 0x0014($sp)            
	lw      a0, 0x004C($sp)            
	jal     func_80021E6C              
	swc1    $f2, 0x0010($sp)           
	addiu   t3, $sp, 0x0030            ## t3 = FFFFFFE8
	lw      t5, 0x0000(t3)             ## FFFFFFE8
	lw      t2, 0x0028($sp)            
	sw      t5, 0x0000(t2)             ## 00000000
	lw      t4, 0x0004(t3)             ## FFFFFFEC
	sw      t4, 0x0004(t2)             ## 00000004
	lw      t5, 0x0008(t3)             ## FFFFFFF0
	sw      t5, 0x0008(t2)             ## 00000008
	lhu     v1, 0x0088(s0)             ## 00000088
	lh      t6, 0x0044($sp)            
	andi    v1, v1, 0x0001             ## v1 = 00000000
	sltiu   v1, v1, 0x0001             
	sll     v0, v1, 16                 
	sh      t6, 0x0088(s0)             ## 00000088
	lw      $ra, 0x0024($sp)           
	sra     v0, v0, 16                 
	lw      s0, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000


func_8089697C:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x004C($sp)            
	sw      a2, 0x0050($sp)            
	lwc1    $f0, 0x0068(s0)            ## 00000068
	mtc1    $zero, $f4                 ## $f4 = 0.00
	or      a0, s0, $zero              ## a0 = 00000000
	c.eq.s  $f4, $f0                   
	nop
	bc1tl   lbl_808969D0               
	addiu   v0, s0, 0x0024             ## v0 = 00000024
	mfc1    a2, $f0                    
	jal     func_8089680C              
	lw      a1, 0x004C($sp)            
	beql    v0, $zero, lbl_808969D0    
	addiu   v0, s0, 0x0024             ## v0 = 00000024
	beq     $zero, $zero, lbl_80896A98 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	addiu   v0, s0, 0x0024             ## v0 = 00000024
lbl_808969D0:
	lw      t8, 0x0000(v0)             ## 00000024
	addiu   t6, $sp, 0x0030            ## t6 = FFFFFFE8
	sw      t8, 0x0000(t6)             ## FFFFFFE8
	lw      t7, 0x0004(v0)             ## 00000028
	sw      t7, 0x0004(t6)             ## FFFFFFEC
	lw      t8, 0x0008(v0)             ## 0000002C
	sw      t8, 0x0008(t6)             ## FFFFFFF0
	lhu     t9, 0x0088(s0)             ## 00000088
	sh      t9, 0x0044($sp)            
	lh      a0, 0x00B6(s0)             ## 000000B6
	jal     func_800636C4              ## sins?
	sw      v0, 0x0028($sp)            
	lwc1    $f6, 0x0050($sp)           
	mul.s   $f8, $f0, $f6              
	swc1    $f8, 0x0040($sp)           
	jal     func_80063684              ## coss?
	lh      a0, 0x00B6(s0)             ## 000000B6
	lwc1    $f10, 0x0024(s0)           ## 00000024
	lwc1    $f16, 0x0040($sp)          
	lwc1    $f4, 0x002C(s0)            ## 0000002C
	mtc1    $zero, $f2                 ## $f2 = 0.00
	add.s   $f18, $f10, $f16           
	addiu   t0, $zero, 0x001C          ## t0 = 0000001C
	mfc1    a2, $f2                    
	mfc1    a3, $f2                    
	swc1    $f18, 0x0024(s0)           ## 00000024
	lwc1    $f6, 0x0050($sp)           
	or      a1, s0, $zero              ## a1 = 00000000
	mul.s   $f8, $f0, $f6              
	add.s   $f10, $f4, $f8             
	swc1    $f10, 0x002C(s0)           ## 0000002C
	sw      t0, 0x0014($sp)            
	lw      a0, 0x004C($sp)            
	jal     func_80021E6C              
	swc1    $f2, 0x0010($sp)           
	addiu   t2, $sp, 0x0030            ## t2 = FFFFFFE8
	lw      t4, 0x0000(t2)             ## FFFFFFE8
	lw      t1, 0x0028($sp)            
	sw      t4, 0x0000(t1)             ## 00000000
	lw      t3, 0x0004(t2)             ## FFFFFFEC
	sw      t3, 0x0004(t1)             ## 00000004
	lw      t4, 0x0008(t2)             ## FFFFFFF0
	sw      t4, 0x0008(t1)             ## 00000008
	lhu     v1, 0x0088(s0)             ## 00000088
	lh      t5, 0x0044($sp)            
	andi    v1, v1, 0x0001             ## v1 = 00000000
	sltiu   v1, v1, 0x0001             
	sll     v0, v1, 16                 
	sra     v0, v0, 16                 
	sh      t5, 0x0088(s0)             ## 00000088
lbl_80896A98:
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000
	jr      $ra                        
	nop


func_80896AAC:
	addiu   $sp, $sp, 0xFE08           ## $sp = FFFFFE08
	sw      s1, 0x0028($sp)            
	sw      s0, 0x0024($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x002C($sp)           
	lw      t6, 0x1C44(s1)             ## 00001C44
	lui     a1, %hi(var_8089CA64)      ## a1 = 808A0000
	addiu   a1, a1, %lo(var_8089CA64)  ## a1 = 8089CA64
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80063F7C              
	sw      t6, 0x01EC($sp)            
	lh      t1, 0x001C(s0)             ## 0000001C
	lh      t8, 0x001C(s0)             ## 0000001C
	addiu   t7, $zero, 0x0003          ## t7 = 00000003
	andi    t2, t1, 0x00FF             ## t2 = 00000000
	sh      t2, 0x001C(s0)             ## 0000001C
	lh      v0, 0x001C(s0)             ## 0000001C
	andi    t9, t8, 0xFF00             ## t9 = 00000000
	sra     t0, t9,  8                 
	andi    t3, v0, 0x0080             ## t3 = 00000000
	sb      t7, 0x001F(s0)             ## 0000001F
	beq     t3, $zero, lbl_80896B14    
	sh      t0, 0x03EC(s0)             ## 000003EC
	ori     t4, v0, 0xFF00             ## t4 = 0000FF00
	sh      t4, 0x001C(s0)             ## 0000001C
lbl_80896B14:
	lui     a2, 0x8002                 ## a2 = 80020000
	addiu   a2, a2, 0xF280             ## a2 = 8001F280
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	jal     func_8001EC20              
	lui     a3, 0x42B4                 ## a3 = 42B40000
	lui     t6, %hi(var_8089CA44)      ## t6 = 808A0000
	addiu   t5, $zero, 0x00FE          ## t5 = 000000FE
	addiu   t6, t6, %lo(var_8089CA44)  ## t6 = 8089CA44
	sw      $zero, 0x03D0(s0)          ## 000003D0
	sb      t5, 0x00AE(s0)             ## 000000AE
	sw      t6, 0x0098(s0)             ## 00000098
	addiu   v0, $zero, 0x00FF          ## v0 = 000000FF
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	addiu   t8, $zero, 0x0040          ## t8 = 00000040
	addiu   t9, $zero, 0x0008          ## t9 = 00000008
	addiu   t0, $zero, 0x0002          ## t0 = 00000002
	addiu   t1, $sp, 0x004C            ## t1 = FFFFFE54
	sb      t7, 0x01DE($sp)            
	sb      v0, 0x01DD($sp)            
	sb      v0, 0x01DC($sp)            
	sb      v0, 0x01DA($sp)            
	sb      v0, 0x01D9($sp)            
	sb      v0, 0x01D8($sp)            
	sb      v0, 0x01D6($sp)            
	sb      v0, 0x01D5($sp)            
	sb      v0, 0x01D4($sp)            
	sb      v0, 0x01D3($sp)            
	sb      v0, 0x01D2($sp)            
	sb      v0, 0x01D1($sp)            
	sb      v0, 0x01D0($sp)            
	sb      t8, 0x01D7($sp)            
	sb      $zero, 0x01DB($sp)         
	sb      $zero, 0x01DF($sp)         
	sw      t9, 0x01E0($sp)            
	sw      $zero, 0x01E4($sp)         
	sw      t0, 0x01E8($sp)            
	sw      t1, 0x0014($sp)            
	sw      $zero, 0x0010($sp)         
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x0404             ## a1 = 00000404
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	jal     func_8001AA5C              
	or      a3, $zero, $zero           ## a3 = 00000000
	lui     $at, 0x4234                ## $at = 42340000
	mtc1    $at, $f0                   ## $f0 = 45.00
	addiu   t2, $zero, 0x001D          ## t2 = 0000001D
	sw      t2, 0x0014($sp)            
	mfc1    a3, $f0                    
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	lui     a2, 0x4296                 ## a2 = 42960000
	jal     func_80021E6C              
	swc1    $f0, 0x0010($sp)           
	addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
	addiu   t4, $zero, 0x0028          ## t4 = 00000028
	addiu   t5, $zero, 0x0064          ## t5 = 00000064
	sb      t3, 0x03F4(s0)             ## 000003F4
	sh      t4, 0x00A8(s0)             ## 000000A8
	sh      t5, 0x00AA(s0)             ## 000000AA
	addiu   a1, s0, 0x0408             ## a1 = 00000408
	sw      a1, 0x0030($sp)            
	jal     func_8004AB7C              
	or      a0, s1, $zero              ## a0 = 00000000
	lui     a3, %hi(var_8089C9C8)      ## a3 = 808A0000
	lw      a1, 0x0030($sp)            
	addiu   a3, a3, %lo(var_8089C9C8)  ## a3 = 8089C9C8
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	addiu   a1, s0, 0x0454             ## a1 = 00000454
	sw      a1, 0x0030($sp)            
	jal     func_8004B858              
	or      a0, s1, $zero              ## a0 = 00000000
	lui     a3, %hi(var_8089C9F4)      ## a3 = 808A0000
	lw      a1, 0x0030($sp)            
	addiu   a3, a3, %lo(var_8089C9F4)  ## a3 = 8089C9F4
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8004B960              
	or      a2, s0, $zero              ## a2 = 00000000
	lh      t6, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	addiu   t2, $zero, 0x0006          ## t2 = 00000006
	bne     t6, $at, lbl_80896CB4      
	addiu   t3, $zero, 0x000F          ## t3 = 0000000F
	addiu   t7, $zero, 0x000C          ## t7 = 0000000C
	addiu   t8, $zero, 0x0010          ## t8 = 00000010
	sb      t7, 0x00AF(s0)             ## 000000AF
	sb      t8, 0x0117(s0)             ## 00000117
	lui     a2, 0x0600                 ## a2 = 06000000
	lui     a3, 0x0601                 ## a3 = 06010000
	addiu   t9, s0, 0x0180             ## t9 = 00000180
	addiu   t0, s0, 0x02A6             ## t0 = 000002A6
	addiu   t1, $zero, 0x0031          ## t1 = 00000031
	sw      t1, 0x0018($sp)            
	sw      t0, 0x0014($sp)            
	sw      t9, 0x0010($sp)            
	addiu   a3, a3, 0xB10C             ## a3 = 0600B10C
	addiu   a2, a2, 0x6690             ## a2 = 06006690
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8008C684              
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	beq     $zero, $zero, lbl_80896CF4 
	lh      t7, 0x001C(s0)             ## 0000001C
lbl_80896CB4:
	sb      t2, 0x00AF(s0)             ## 000000AF
	sb      t3, 0x0117(s0)             ## 00000117
	lui     a2, 0x0601                 ## a2 = 06010000
	lui     a3, 0x0601                 ## a3 = 06010000
	addiu   t4, s0, 0x0180             ## t4 = 00000180
	addiu   t5, s0, 0x02A6             ## t5 = 000002A6
	addiu   t6, $zero, 0x0031          ## t6 = 00000031
	sw      t6, 0x0018($sp)            
	sw      t5, 0x0014($sp)            
	sw      t4, 0x0010($sp)            
	addiu   a3, a3, 0xB10C             ## a3 = 0600B10C
	addiu   a2, a2, 0x04B8             ## a2 = 060104B8
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8008C684              
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	lh      t7, 0x001C(s0)             ## 0000001C
lbl_80896CF4:
	addiu   v0, $zero, 0xFFFF          ## v0 = FFFFFFFF
	lw      t1, 0x01EC($sp)            
	bgez    t7, lbl_80896D4C           
	lui     $at, 0x42C8                ## $at = 42C80000
	sh      v0, 0x03EE(s0)             ## 000003EE
	lh      t8, 0x03EE(s0)             ## 000003EE
	lui     $at, %hi(var_8089C9A4)     ## $at = 808A0000
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	sh      t8, 0x03F0(s0)             ## 000003F0
	sh      v0, %lo(var_8089C9A4)($at) 
	lh      t0, 0x001C(s0)             ## 0000001C
	sw      t9, 0x03D4(s0)             ## 000003D4
	bne     v0, t0, lbl_80896D3C       
	nop
	jal     func_80897870              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80896DD4 
	lw      $ra, 0x002C($sp)           
lbl_80896D3C:
	jal     func_80897B48              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80896DD4 
	lw      $ra, 0x002C($sp)           
lbl_80896D4C:
	lwc1    $f4, 0x0028(t1)            ## 00000028
	lwc1    $f6, 0x0028(s0)            ## 00000028
	mtc1    $zero, $f8                 ## $f8 = 0.00
	mtc1    $at, $f10                  ## $f10 = 0.00
	sub.s   $f0, $f4, $f6              
	or      a0, s1, $zero              ## a0 = 00000000
	c.le.s  $f8, $f0                   
	nop
	bc1fl   lbl_80896D80               
	neg.s   $f2, $f0                   
	beq     $zero, $zero, lbl_80896D80 
	mov.s   $f2, $f0                   
	neg.s   $f2, $f0                   
lbl_80896D80:
	c.le.s  $f2, $f10                  
	nop
	bc1f    lbl_80896DC8               
	nop
	jal     func_8002049C              
	lh      a1, 0x03EC(s0)             ## 000003EC
	bne     v0, $zero, lbl_80896DC8    
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	jal     func_80896E68              
	or      a1, $zero, $zero           ## a1 = 00000000
	sh      v0, 0x03EE(s0)             ## 000003EE
	sh      v0, 0x03F0(s0)             ## 000003F0
	jal     func_80897870              
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	lui     $at, %hi(var_8089C9A4)     ## $at = 808A0000
	beq     $zero, $zero, lbl_80896DD0 
	sh      t2, %lo(var_8089C9A4)($at) 
lbl_80896DC8:
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80896DD0:
	lw      $ra, 0x002C($sp)           
lbl_80896DD4:
	lw      s0, 0x0024($sp)            
	lw      s1, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x01F8           ## $sp = 00000000


func_80896DE4:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	lh      t6, 0x001C(s0)             ## 0000001C
	lw      a0, 0x002C($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	bltz    t6, lbl_80896E30           
	addiu   a2, $zero, 0x0025          ## a2 = 00000025
	lui     $at, %hi(var_8089CB00)     ## $at = 808A0000
	lwc1    $f4, %lo(var_8089CB00)($at) 
	addiu   a3, $zero, 0x0005          ## a3 = 00000005
	jal     func_80028158              
	swc1    $f4, 0x0010($sp)           
	bnel    v0, $zero, lbl_80896E34    
	lw      a0, 0x002C($sp)            
	jal     func_800C6894              
	nop
lbl_80896E30:
	lw      a0, 0x002C($sp)            
lbl_80896E34:
	jal     func_8001AE04              
	lw      a1, 0x0404(s0)             ## 00000404
	lw      a0, 0x002C($sp)            
	jal     func_8004ABCC              
	addiu   a1, s0, 0x0408             ## a1 = 00000408
	lw      a0, 0x002C($sp)            
	jal     func_8004B8A8              
	addiu   a1, s0, 0x0454             ## a1 = 00000454
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80896E68:
	sw      a1, 0x0004($sp)            
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	lui     $at, 0x4352                ## $at = 43520000
	mtc1    $at, $f0                   ## $f0 = 210.00
	lui     $at, 0x43D2                ## $at = 43D20000
	mtc1    $at, $f4                   ## $f4 = 420.00
	lwc1    $f2, 0x0004(a0)            ## 00000004
	lui     $at, 0x42DC                ## $at = 42DC0000
	addiu   a3, $zero, 0x000C          ## a3 = 0000000C
	c.le.s  $f4, $f2                   
	addiu   v1, $zero, 0x0017          ## v1 = 00000017
	bc1fl   lbl_80896EAC               
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	mtc1    $at, $f0                   ## $f0 = NaN
	nop
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
lbl_80896EAC:
	beql    a1, $at, lbl_80896F68      
	lui     $at, 0x4316                ## $at = 43160000
	multu   a1, a3                     
	lui     a2, %hi(var_8089C880)      ## a2 = 808A0000
	addiu   a2, a2, %lo(var_8089C880)  ## a2 = 8089C880
	lui     $at, 0x4316                ## $at = 43160000
	mtc1    $at, $f16                  ## $f16 = 150.00
	mflo    t6                         
	addu    v0, a2, t6                 
	lwc1    $f12, 0x0004(v0)           ## 00000004
	sub.s   $f6, $f12, $f16            
	c.le.s  $f6, $f2                   
	nop
	bc1fl   lbl_80896F68               
	lui     $at, 0x4316                ## $at = 43160000
	add.s   $f8, $f12, $f16            
	c.le.s  $f2, $f8                   
	nop
	bc1fl   lbl_80896F68               
	lui     $at, 0x4316                ## $at = 43160000
	lwc1    $f14, 0x0000(v0)           ## 00000000
	lwc1    $f12, 0x0000(a0)           ## 00000000
	sub.s   $f10, $f14, $f0            
	c.le.s  $f10, $f12                 
	nop
	bc1fl   lbl_80896F68               
	lui     $at, 0x4316                ## $at = 43160000
	add.s   $f18, $f14, $f0            
	c.le.s  $f12, $f18                 
	nop
	bc1fl   lbl_80896F68               
	lui     $at, 0x4316                ## $at = 43160000
	lwc1    $f14, 0x0008(v0)           ## 00000008
	lwc1    $f12, 0x0008(a0)           ## 00000008
	sub.s   $f4, $f14, $f0             
	c.le.s  $f4, $f12                  
	nop
	bc1fl   lbl_80896F68               
	lui     $at, 0x4316                ## $at = 43160000
	add.s   $f6, $f14, $f0             
	c.le.s  $f12, $f6                  
	nop
	bc1fl   lbl_80896F68               
	lui     $at, 0x4316                ## $at = 43160000
	jr      $ra                        
	or      v0, a1, $zero              ## v0 = 00000000
lbl_80896F64:
	lui     $at, 0x4316                ## $at = 43160000
lbl_80896F68:
	lui     a2, %hi(var_8089C880)      ## a2 = 808A0000
	mtc1    $at, $f16                  ## $f16 = 150.00
	addiu   a2, a2, %lo(var_8089C880)  ## a2 = 8089C880
	addiu   a3, $zero, 0x000C          ## a3 = 0000000C
lbl_80896F78:
	multu   v1, a3                     
	mflo    t7                         
	addu    v0, a2, t7                 
	lwc1    $f12, 0x0004(v0)           ## 00000004
	sub.s   $f8, $f12, $f16            
	c.le.s  $f8, $f2                   
	nop
	bc1fl   lbl_80897014               
	addiu   v1, v1, 0xFFFF             ## v1 = 00000016
	add.s   $f10, $f12, $f16           
	c.le.s  $f2, $f10                  
	nop
	bc1fl   lbl_80897014               
	addiu   v1, v1, 0xFFFF             ## v1 = 00000015
	lwc1    $f14, 0x0000(v0)           ## 00000000
	lwc1    $f12, 0x0000(a0)           ## 00000000
	sub.s   $f18, $f14, $f0            
	c.le.s  $f18, $f12                 
	nop
	bc1fl   lbl_80897014               
	addiu   v1, v1, 0xFFFF             ## v1 = 00000014
	add.s   $f4, $f14, $f0             
	c.le.s  $f12, $f4                  
	nop
	bc1fl   lbl_80897014               
	addiu   v1, v1, 0xFFFF             ## v1 = 00000013
	lwc1    $f14, 0x0008(v0)           ## 00000008
	lwc1    $f12, 0x0008(a0)           ## 00000008
	sub.s   $f6, $f14, $f0             
	c.le.s  $f6, $f12                  
	nop
	bc1fl   lbl_80897014               
	addiu   v1, v1, 0xFFFF             ## v1 = 00000012
	add.s   $f8, $f14, $f0             
	c.le.s  $f12, $f8                  
	nop
	bc1tl   lbl_80897028               
	or      v0, v1, $zero              ## v0 = 00000012
	addiu   v1, v1, 0xFFFF             ## v1 = 00000011
lbl_80897014:
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	bgez    v1, lbl_80896F78           
	nop
	or      v0, v1, $zero              ## v0 = 00000011
lbl_80897028:
	jr      $ra                        
	nop


func_80897030:
	addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
	sw      s7, 0x0054($sp)            
	sll     s7, a1, 16                 
	sra     s7, s7, 16                 
	sw      $ra, 0x005C($sp)           
	sw      s8, 0x0058($sp)            
	sw      s6, 0x0050($sp)            
	sw      s5, 0x004C($sp)            
	sw      s4, 0x0048($sp)            
	sw      s3, 0x0044($sp)            
	sw      s2, 0x0040($sp)            
	sw      s1, 0x003C($sp)            
	sw      s0, 0x0038($sp)            
	sdc1    $f26, 0x0030($sp)          
	sdc1    $f24, 0x0028($sp)          
	sdc1    $f22, 0x0020($sp)          
	sdc1    $f20, 0x0018($sp)          
	sw      a0, 0x0060($sp)            
	sw      a1, 0x0064($sp)            
	sw      a2, 0x0068($sp)            
	lui     $at, %hi(var_8089CB04)     ## $at = 808A0000
	lwc1    $f24, %lo(var_8089CB04)($at) 
	lui     $at, 0x43C8                ## $at = 43C80000
	lw      v0, 0x1C44(a3)             ## 00001C44
	mtc1    $at, $f26                  ## $f26 = 400.00
	lui     $at, %hi(var_8089CB08)     ## $at = 808A0000
	lwc1    $f20, %lo(var_8089CB08)($at) 
	lui     $at, %hi(var_8089CB0C)     ## $at = 808A0000
	sll     a1, s7, 16                 
	addiu   s8, v0, 0x0024             ## s8 = 00000024
	addiu   s0, $zero, 0x0005          ## s0 = 00000005
	or      s6, $zero, $zero           ## s6 = 00000000
	lwc1    $f22, %lo(var_8089CB0C)($at) 
	addiu   s5, $zero, 0xFFFF          ## s5 = FFFFFFFF
	addiu   s4, $zero, 0xFFFF          ## s4 = FFFFFFFF
	or      a0, s8, $zero              ## a0 = 00000024
	jal     func_80896E68              
	sra     a1, a1, 16                 
	lw      t6, 0x0060($sp)            
	lui     $at, 0x43D2                ## $at = 43D20000
	mtc1    $at, $f4                   ## $f4 = 420.00
	lwc1    $f6, 0x0004(t6)            ## 00000004
	sll     s3, v0, 16                 
	lui     s1, %hi(var_8089C880)      ## s1 = 808A0000
	c.lt.s  $f4, $f6                   
	sra     s3, s3, 16                 
	lui     $at, 0x4248                ## $at = 42480000
	addiu   s1, s1, %lo(var_8089C880)  ## s1 = 8089C880
	bc1f    lbl_80897124               
	addiu   s2, $zero, 0x000C          ## s2 = 0000000C
	mtc1    $at, $f26                  ## $f26 = 50.00
	slti    $at, s7, 0x000F            
	bne     $at, $zero, lbl_80897118   
	addiu   s6, $zero, 0x0008          ## s6 = 00000008
	lui     $at, 0x43C8                ## $at = 43C80000
	mtc1    $at, $f24                  ## $f24 = 400.00
	beq     $zero, $zero, lbl_80897124 
	addiu   s0, $zero, 0x0017          ## s0 = 00000017
lbl_80897118:
	lui     $at, 0x43BE                ## $at = 43BE0000
	mtc1    $at, $f24                  ## $f24 = 380.00
	addiu   s0, $zero, 0x000E          ## s0 = 0000000E
lbl_80897124:
	slt     $at, s0, s6                
	bnel    $at, $zero, lbl_808971FC   
	addiu   s2, $zero, 0x000C          ## s2 = 0000000C
lbl_80897130:
	beql    s0, s7, lbl_808971E4       
	addiu   s0, s0, 0xFFFF             ## s0 = 0000000D
	beq     s0, s3, lbl_808971E0       
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	bne     s3, $at, lbl_80897170      
	nop
	multu   s0, s2                     
	or      a0, s8, $zero              ## a0 = 00000024
	mflo    t7                         
	addu    a1, s1, t7                 
	jal     func_80063E18              
	nop
	c.lt.s  $f0, $f26                  
	nop
	bc1tl   lbl_808971E4               
	addiu   s0, s0, 0xFFFF             ## s0 = 0000000C
lbl_80897170:
	multu   s0, s2                     
	lw      a0, 0x0060($sp)            
	mflo    t8                         
	addu    a1, s1, t8                 
	jal     func_80063E18              
	nop
	c.lt.s  $f24, $f0                  
	nop
	bc1tl   lbl_808971E4               
	addiu   s0, s0, 0xFFFF             ## s0 = 0000000B
	c.lt.s  $f0, $f20                  
	nop
	bc1fl   lbl_808971C8               
	c.lt.s  $f0, $f22                  
	sll     s4, s5, 16                 
	mov.s   $f22, $f20                 
	sll     s5, s0, 16                 
	sra     s4, s4, 16                 
	mov.s   $f20, $f0                  
	beq     $zero, $zero, lbl_808971E0 
	sra     s5, s5, 16                 
	c.lt.s  $f0, $f22                  
lbl_808971C8:
	nop
	bc1fl   lbl_808971E4               
	addiu   s0, s0, 0xFFFF             ## s0 = 0000000A
	sll     s4, s0, 16                 
	mov.s   $f22, $f0                  
	sra     s4, s4, 16                 
lbl_808971E0:
	addiu   s0, s0, 0xFFFF             ## s0 = 00000009
lbl_808971E4:
	sll     s0, s0, 16                 
	sra     s0, s0, 16                 
	slt     $at, s0, s6                
	beq     $at, $zero, lbl_80897130   
	nop
	addiu   s2, $zero, 0x000C          ## s2 = 0000000C
lbl_808971FC:
	multu   s5, s2                     
	lui     s1, %hi(var_8089C880)      ## s1 = 808A0000
	addiu   s1, s1, %lo(var_8089C880)  ## s1 = 8089C880
	or      a0, s8, $zero              ## a0 = 00000024
	mflo    t9                         
	addu    s0, s1, t9                 
	jal     func_80063E18              
	or      a1, s0, $zero              ## a1 = 00000009
	multu   s4, s2                     
	or      a0, s8, $zero              ## a0 = 00000024
	mflo    t0                         
	addu    a1, s1, t0                 
	jal     func_80063E18              
	nop
	blez    s4, lbl_80897288           
	lw      a0, 0x0060($sp)            
	jal     func_80063F00              
	or      a1, s0, $zero              ## a1 = 00000009
	sll     s0, v0, 16                 
	sra     s0, s0, 16                 
	lw      a0, 0x0060($sp)            
	jal     func_80063F00              
	or      a1, s8, $zero              ## a1 = 00000024
	subu    v1, s0, v0                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	bltz    v1, lbl_80897274           
	subu    v0, $zero, v1              
	beq     $zero, $zero, lbl_80897274 
	or      v0, v1, $zero              ## v0 = 00000000
lbl_80897274:
	slti    $at, v0, 0x36B0            
	beq     $at, $zero, lbl_80897288   
	nop
	sll     s5, s4, 16                 
	sra     s5, s5, 16                 
lbl_80897288:
	bgez    s5, lbl_80897294           
	ldc1    $f20, 0x0018($sp)          
	lh      s5, 0x006A($sp)            
lbl_80897294:
	or      v0, s5, $zero              ## v0 = FFFFFFFF
	lw      $ra, 0x005C($sp)           
	ldc1    $f22, 0x0020($sp)          
	ldc1    $f24, 0x0028($sp)          
	ldc1    $f26, 0x0030($sp)          
	lw      s0, 0x0038($sp)            
	lw      s1, 0x003C($sp)            
	lw      s2, 0x0040($sp)            
	lw      s3, 0x0044($sp)            
	lw      s4, 0x0048($sp)            
	lw      s5, 0x004C($sp)            
	lw      s6, 0x0050($sp)            
	lw      s7, 0x0054($sp)            
	lw      s8, 0x0058($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0060           ## $sp = 00000000


func_808972D4:
	addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
	sw      s5, 0x0044($sp)            
	sw      s0, 0x0030($sp)            
	sll     s0, a1, 16                 
	sll     s5, a2, 16                 
	sra     s5, s5, 16                 
	sra     s0, s0, 16                 
	sw      $ra, 0x0054($sp)           
	sw      s8, 0x0050($sp)            
	sw      s7, 0x004C($sp)            
	sw      s6, 0x0048($sp)            
	sw      s4, 0x0040($sp)            
	sw      s3, 0x003C($sp)            
	sw      s2, 0x0038($sp)            
	sw      s1, 0x0034($sp)            
	sdc1    $f24, 0x0028($sp)          
	sdc1    $f22, 0x0020($sp)          
	sdc1    $f20, 0x0018($sp)          
	sw      a0, 0x0058($sp)            
	sw      a1, 0x005C($sp)            
	sw      a2, 0x0060($sp)            
	lw      v0, 0x1C44(a3)             ## 00001C44
	addiu   s1, $zero, 0x0007          ## s1 = 00000007
	or      s4, $zero, $zero           ## s4 = 00000000
	addiu   s7, v0, 0x0024             ## s7 = 00000024
	or      a0, s7, $zero              ## a0 = 00000024
	jal     func_80896E68              
	addiu   a1, $zero, 0xFFFF          ## a1 = FFFFFFFF
	lui     $at, 0x43FA                ## $at = 43FA0000
	mtc1    $at, $f24                  ## $f24 = 500.00
	lui     $at, %hi(var_8089CB10)     ## $at = 808A0000
	lwc1    $f20, %lo(var_8089CB10)($at) 
	lw      a0, 0x0058($sp)            
	lui     $at, %hi(var_8089CB14)     ## $at = 808A0000
	lwc1    $f22, %lo(var_8089CB14)($at) 
	lui     $at, 0x4348                ## $at = 43480000
	mtc1    $at, $f4                   ## $f4 = 200.00
	lwc1    $f6, 0x0004(a0)            ## 00000004
	sll     s8, v0, 16                 
	sll     s2, s0, 16                 
	c.lt.s  $f4, $f6                   
	sll     s3, s5, 16                 
	sra     s8, s8, 16                 
	sra     s2, s2, 16                 
	bc1f    lbl_8089739C               
	sra     s3, s3, 16                 
	lui     $at, 0x4391                ## $at = 43910000
	mtc1    $at, $f24                  ## $f24 = 290.00
	addiu   s1, $zero, 0x0017          ## s1 = 00000017
	addiu   s4, $zero, 0x0008          ## s4 = 00000008
lbl_8089739C:
	slt     $at, s1, s4                
	bne     $at, $zero, lbl_80897458   
	addiu   s6, $zero, 0x000C          ## s6 = 0000000C
	lui     s5, %hi(var_8089C880)      ## s5 = 808A0000
	addiu   s5, s5, %lo(var_8089C880)  ## s5 = 8089C880
lbl_808973B0:
	multu   s1, s6                     
	lw      a0, 0x0058($sp)            
	mflo    t6                         
	addu    s0, s5, t6                 
	jal     func_80063E18              
	or      a1, s0, $zero              ## a1 = 00000000
	c.lt.s  $f24, $f0                  
	or      a0, s7, $zero              ## a0 = 00000024
	bc1tl   lbl_80897444               
	addiu   s1, s1, 0xFFFF             ## s1 = 00000016
	beql    s1, s8, lbl_80897438       
	sll     s2, s8, 16                 
	jal     func_80063E18              
	or      a1, s0, $zero              ## a1 = 00000000
	c.lt.s  $f0, $f20                  
	nop
	bc1fl   lbl_80897418               
	c.lt.s  $f0, $f22                  
	sll     s3, s2, 16                 
	mov.s   $f22, $f20                 
	sll     s2, s1, 16                 
	sra     s3, s3, 16                 
	mov.s   $f20, $f0                  
	beq     $zero, $zero, lbl_80897440 
	sra     s2, s2, 16                 
	c.lt.s  $f0, $f22                  
lbl_80897418:
	nop
	bc1fl   lbl_80897444               
	addiu   s1, s1, 0xFFFF             ## s1 = 00000015
	sll     s3, s1, 16                 
	mov.s   $f22, $f0                  
	beq     $zero, $zero, lbl_80897440 
	sra     s3, s3, 16                 
	sll     s2, s8, 16                 
lbl_80897438:
	beq     $zero, $zero, lbl_80897458 
	sra     s2, s2, 16                 
lbl_80897440:
	addiu   s1, s1, 0xFFFF             ## s1 = 00000014
lbl_80897444:
	sll     s1, s1, 16                 
	sra     s1, s1, 16                 
	slt     $at, s1, s4                
	beq     $at, $zero, lbl_808973B0   
	nop
lbl_80897458:
	beq     s3, s8, lbl_8089746C       
	ldc1    $f20, 0x0018($sp)          
	sll     s8, s2, 16                 
	beq     $zero, $zero, lbl_80897474 
	sra     s8, s8, 16                 
lbl_8089746C:
	sll     s8, s3, 16                 
	sra     s8, s8, 16                 
lbl_80897474:
	or      v0, s8, $zero              ## v0 = 00000000
	lw      $ra, 0x0054($sp)           
	ldc1    $f22, 0x0020($sp)          
	ldc1    $f24, 0x0028($sp)          
	lw      s0, 0x0030($sp)            
	lw      s1, 0x0034($sp)            
	lw      s2, 0x0038($sp)            
	lw      s3, 0x003C($sp)            
	lw      s4, 0x0040($sp)            
	lw      s5, 0x0044($sp)            
	lw      s6, 0x0048($sp)            
	lw      s7, 0x004C($sp)            
	lw      s8, 0x0050($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0058           ## $sp = 00000000


func_808974B0:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	lh      t6, 0x001C(a1)             ## 0000001C
	lw      v1, 0x1C44(a0)             ## 00001C44
	bltzl   t6, lbl_808974EC           
	sw      v1, 0x0018($sp)            
	lw      t7, 0x066C(v1)             ## 0000066C
	andi    t8, t7, 0x6000             ## t8 = 00000000
	beq     t8, $zero, lbl_808974E0    
	nop
	beq     $zero, $zero, lbl_80897574 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808974E0:
	beq     $zero, $zero, lbl_80897574 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	sw      v1, 0x0018($sp)            
lbl_808974EC:
	jal     func_80026950              
	sw      a1, 0x0024($sp)            
	lw      v1, 0x0018($sp)            
	bne     v0, $zero, lbl_80897508    
	lw      a1, 0x0024($sp)            
	beq     $zero, $zero, lbl_80897574 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80897508:
	lh      t9, 0x001C(a1)             ## 0000001C
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	bnel    t9, $at, lbl_80897574      
	or      v0, $zero, $zero           ## v0 = 00000000
	lw      v0, 0x0654(v1)             ## 00000654
	bnel    v0, $zero, lbl_80897530    
	lbu     t0, 0x0002(v0)             ## 00000002
	beq     $zero, $zero, lbl_80897574 
	or      v0, $zero, $zero           ## v0 = 00000000
	lbu     t0, 0x0002(v0)             ## 00000002
lbl_80897530:
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	beql    t0, $at, lbl_80897548      
	lh      t1, 0x0000(v0)             ## 00000000
	beq     $zero, $zero, lbl_80897574 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	lh      t1, 0x0000(v0)             ## 00000001
lbl_80897548:
	addiu   $at, $zero, 0x0025         ## $at = 00000025
	beql    t1, $at, lbl_80897560      
	lbu     t2, 0x0114(v0)             ## 00000115
	beq     $zero, $zero, lbl_80897574 
	or      v0, $zero, $zero           ## v0 = 00000000
	lbu     t2, 0x0114(v0)             ## 00000114
lbl_80897560:
	beql    t2, $zero, lbl_80897574    
	or      v0, $zero, $zero           ## v0 = 00000000
	beq     $zero, $zero, lbl_80897574 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80897574:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80897584:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	lh      t6, 0x008A(a2)             ## 0000008A
	lh      t7, 0x00B6(a2)             ## 000000B6
	or      a0, a2, $zero              ## a0 = 00000000
	subu    v0, t6, t7                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	bgezl   v0, lbl_808975C4           
	slti    $at, v0, 0x1B58            
	subu    v0, $zero, v0              
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x1B58            
lbl_808975C4:
	bnel    $at, $zero, lbl_808975E0   
	lui     $at, 0x42C8                ## $at = 42C80000
	jal     func_8089ABD4              
	or      a1, a3, $zero              ## a1 = 00000000
	beq     $zero, $zero, lbl_80897644 
	lw      $ra, 0x0014($sp)           
	lui     $at, 0x42C8                ## $at = 42C80000
lbl_808975E0:
	mtc1    $at, $f4                   ## $f4 = 100.00
	lwc1    $f6, 0x0090(a2)            ## 00000090
	lui     t8, 0x0001                 ## t8 = 00010000
	addu    t8, t8, a3                 
	c.le.s  $f6, $f4                   
	nop
	bc1f    lbl_80897638               
	nop
	lw      t8, 0x1DE4(t8)             ## 00011DE4
	or      a0, a3, $zero              ## a0 = 00000000
	or      a1, a2, $zero              ## a1 = 00000000
	andi    t9, t8, 0x0007             ## t9 = 00000000
	beq     t9, $zero, lbl_80897638    
	nop
	jal     func_808974B0              
	sw      a2, 0x0018($sp)            
	beq     v0, $zero, lbl_80897638    
	lw      a2, 0x0018($sp)            
	jal     func_808991FC              
	or      a0, a2, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80897644 
	lw      $ra, 0x0014($sp)           
lbl_80897638:
	jal     func_80897B48              
	or      a0, a2, $zero              ## a0 = 00000000
	lw      $ra, 0x0014($sp)           
lbl_80897644:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80897650:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0020($sp)            
	or      s0, a1, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	lh      v0, 0x00B6(s0)             ## 000000B6
	lh      t6, 0x007E(s0)             ## 0000007E
	or      a1, s0, $zero              ## a1 = 00000000
	lui     a2, 0x42C8                 ## a2 = 42C80000
	subu    t0, t6, v0                 
	sll     t0, t0, 16                 
	sra     t0, t0, 16                 
	bgez    t0, lbl_80897690           
	addiu   a3, $zero, 0x5DC0          ## a3 = 00005DC0
	subu    t0, $zero, t0              
	sll     t0, t0, 16                 
	sra     t0, t0, 16                 
lbl_80897690:
	addiu   t7, $zero, 0x2AA8          ## t7 = 00002AA8
	sw      t7, 0x0010($sp)            
	sw      v0, 0x0014($sp)            
	sw      a0, 0x0030($sp)            
	jal     func_8002821C              
	sh      t0, 0x002E($sp)            
	lw      a0, 0x0030($sp)            
	beq     v0, $zero, lbl_80897764    
	lh      t0, 0x002E($sp)            
	lhu     t8, 0x0088(s0)             ## 00000088
	lh      v1, 0x008A(s0)             ## 0000008A
	andi    t9, t8, 0x0008             ## t9 = 00000000
	sh      v1, 0x0032(s0)             ## 00000032
	beq     t9, $zero, lbl_80897710    
	sh      v1, 0x00B6(s0)             ## 000000B6
	bltz    t0, lbl_808976DC           
	subu    v0, $zero, t0              
	beq     $zero, $zero, lbl_808976DC 
	or      v0, t0, $zero              ## v0 = 00000000
lbl_808976DC:
	slti    $at, v0, 0x2EE0            
	beq     $at, $zero, lbl_80897710   
	lui     $at, 0x42A0                ## $at = 42A00000
	mtc1    $at, $f6                   ## $f6 = 80.00
	lwc1    $f4, 0x0090(s0)            ## 00000090
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_80897714               
	lui     $at, 0x42B4                ## $at = 42B40000
	jal     func_8089AA00              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089785C 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80897710:
	lui     $at, 0x42B4                ## $at = 42B40000
lbl_80897714:
	mtc1    $at, $f10                  ## $f10 = 90.00
	lwc1    $f8, 0x0090(s0)            ## 00000090
	lui     t1, 0x0001                 ## t1 = 00010000
	addu    t1, t1, a0                 
	c.lt.s  $f8, $f10                  
	nop
	bc1f    lbl_80897754               
	nop
	lw      t1, 0x1DE4(t1)             ## 00011DE4
	andi    t2, t1, 0x0001             ## t2 = 00000000
	beq     t2, $zero, lbl_80897754    
	nop
	jal     func_8089AA00              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089785C 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80897754:
	jal     func_80899670              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089785C 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80897764:
	lui     $at, 0x42A0                ## $at = 42A00000
	mtc1    $at, $f16                  ## $f16 = 80.00
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a2, $zero, 0xFFFF          ## a2 = FFFFFFFF
	addiu   a3, $zero, 0x0003          ## a3 = 00000003
	sh      t0, 0x002E($sp)            
	jal     func_80028158              
	swc1    $f16, 0x0010($sp)          
	lh      t0, 0x002E($sp)            
	beq     v0, $zero, lbl_80897858    
	or      a1, v0, $zero              ## a1 = 00000000
	lhu     t3, 0x0088(s0)             ## 00000088
	lh      v1, 0x008A(s0)             ## 0000008A
	slti    $at, t0, 0x2EE0            
	andi    t4, t3, 0x0008             ## t4 = 00000000
	sh      v1, 0x0032(s0)             ## 00000032
	beq     t4, $zero, lbl_808977B4    
	sh      v1, 0x00B6(s0)             ## 000000B6
	bnel    $at, $zero, lbl_808977C8   
	lh      t6, 0x0000(v0)             ## 00000000
lbl_808977B4:
	lh      t5, 0x0000(v0)             ## 00000000
	addiu   $at, $zero, 0x00DA         ## $at = 000000DA
	bne     t5, $at, lbl_80897848      
	nop
	lh      t6, 0x0000(v0)             ## 00000000
lbl_808977C8:
	addiu   $at, $zero, 0x00DA         ## $at = 000000DA
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    t6, $at, lbl_80897838      
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_800214AC              
	sw      a1, 0x0028($sp)            
	lui     $at, 0x42A0                ## $at = 42A00000
	mtc1    $at, $f18                  ## $f18 = 80.00
	lw      a1, 0x0028($sp)            
	c.lt.s  $f0, $f18                  
	nop
	bc1fl   lbl_80897838               
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t7, 0x00B6(s0)             ## 000000B6
	lh      t8, 0x0032(a1)             ## 00000032
	ori     $at, $zero, 0x8000         ## $at = 00008000
	subu    t9, t7, t8                 
	addu    t1, t9, $at                
	sll     t2, t1, 16                 
	sra     t3, t2, 16                 
	slti    $at, t3, 0x3E80            
	beql    $at, $zero, lbl_80897838   
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8089AA00              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089785C 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80897838:
	jal     func_8089C33C              
	lui     a1, 0x4080                 ## a1 = 40800000
	beq     $zero, $zero, lbl_8089785C 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80897848:
	jal     func_80899670              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089785C 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80897858:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_8089785C:
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80897870:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lui     a0, 0x0601                 ## a0 = 06010000
	jal     func_8008A194              
	addiu   a0, a0, 0x9530             ## a0 = 06009530
	mtc1    v0, $f4                    ## $f4 = 0.00
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     a1, 0x0601                 ## a1 = 06010000
	cvt.s.w $f6, $f4                   
	mfc1    a2, $f0                    
	addiu   a1, a1, 0x9530             ## a1 = 06009530
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lui     a3, 0x4110                 ## a3 = 41100000
	sw      $zero, 0x0014($sp)         
	swc1    $f6, 0x0010($sp)           
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
	lui     $at, 0x4396                ## $at = 43960000
	mtc1    $at, $f10                  ## $f10 = 300.00
	lwc1    $f8, 0x0080(s0)            ## 00000080
	lhu     t9, 0x0088(s0)             ## 00000088
	lw      t1, 0x0004(s0)             ## 00000004
	add.s   $f16, $f8, $f10            
	lh      v0, 0x008A(s0)             ## 0000008A
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	addiu   t7, $zero, 0x000A          ## t7 = 0000000A
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	lui     a1, %hi(func_80897938)     ## a1 = 80890000
	andi    t0, t9, 0xFFFD             ## t0 = 00000000
	and     t2, t1, $at                
	swc1    $f16, 0x0028(s0)           ## 00000028
	sb      $zero, 0x00C8(s0)          ## 000000C8
	sb      $zero, 0x03F4(s0)          ## 000003F4
	sw      t7, 0x03E0(s0)             ## 000003E0
	sw      t8, 0x03D4(s0)             ## 000003D4
	sw      $zero, 0x03CC(s0)          ## 000003CC
	sh      t0, 0x0088(s0)             ## 00000088
	sw      t2, 0x0004(s0)             ## 00000004
	addiu   a1, a1, %lo(func_80897938) ## a1 = 80897938
	or      a0, s0, $zero              ## a0 = 00000000
	sh      v0, 0x0032(s0)             ## 00000032
	jal     func_80896800              
	sh      v0, 0x00B6(s0)             ## 000000B6
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80897938:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0030($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      a1, 0x003C($sp)            
	lw      t6, 0x03E0(s0)             ## 000003E0
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    t6, $at, lbl_80897988      
	lw      v0, 0x03E0(s0)             ## 000003E0
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3829          ## a1 = 00003829
	lw      t7, 0x0004(s0)             ## 00000004
	lh      t9, 0x001C(s0)             ## 0000001C
	ori     t8, t7, 0x0001             ## t8 = 00000001
	bne     t9, $zero, lbl_80897984    
	sw      t8, 0x0004(s0)             ## 00000004
	jal     func_800C6820              
	addiu   a0, $zero, 0x0038          ## a0 = 00000038
lbl_80897984:
	lw      v0, 0x03E0(s0)             ## 000003E0
lbl_80897988:
	beql    v0, $zero, lbl_80897A00    
	lbu     v0, 0x03F4(s0)             ## 000003F4
	lh      t0, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	addiu   t1, v0, 0xFFFF             ## t1 = FFFFFFFF
	beql    t0, $at, lbl_808979B0      
	lui     $at, 0x4320                ## $at = 43200000
	beq     $zero, $zero, lbl_808979E4 
	sw      t1, 0x03E0(s0)             ## 000003E0
	lui     $at, 0x4320                ## $at = 43200000
lbl_808979B0:
	mtc1    $at, $f4                   ## $f4 = 160.00
	lwc1    $f6, 0x0090(s0)            ## 00000090
	or      a0, s0, $zero              ## a0 = 00000000
	c.le.s  $f6, $f4                   
	nop
	bc1fl   lbl_808979E8               
	lui     $at, 0x4396                ## $at = 43960000
	lw      t2, 0x0004(s0)             ## 00000004
	sw      $zero, 0x03E0(s0)          ## 000003E0
	addiu   a1, $zero, 0x3829          ## a1 = 00003829
	ori     t3, t2, 0x0001             ## t3 = 00000001
	jal     func_80022FD0              
	sw      t3, 0x0004(s0)             ## 00000004
lbl_808979E4:
	lui     $at, 0x4396                ## $at = 43960000
lbl_808979E8:
	mtc1    $at, $f10                  ## $f10 = 300.00
	lwc1    $f8, 0x0080(s0)            ## 00000080
	add.s   $f16, $f8, $f10            
	beq     $zero, $zero, lbl_80897A10 
	swc1    $f16, 0x0028(s0)           ## 00000028
	lbu     v0, 0x03F4(s0)             ## 000003F4
lbl_80897A00:
	slti    $at, v0, 0x00FF            
	beq     $at, $zero, lbl_80897A10   
	addiu   t4, v0, 0x0033             ## t4 = 00000033
	sb      t4, 0x03F4(s0)             ## 000003F4
lbl_80897A10:
	lhu     t5, 0x0088(s0)             ## 00000088
	andi    t6, t5, 0x0003             ## t6 = 00000000
	beq     t6, $zero, lbl_80897AF4    
	nop
	lw      t7, 0x03D4(s0)             ## 000003D4
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t7, $zero, lbl_80897AF4    
	nop
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3828          ## a1 = 00003828
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     $at, 0x4188                ## $at = 41880000
	mtc1    $at, $f18                  ## $f18 = 17.00
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	mfc1    a3, $f0                    
	sw      t8, 0x0014($sp)            
	addiu   a1, a1, 0x8C6C             ## a1 = 06008C6C
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lui     a2, 0x3F80                 ## a2 = 3F800000
	swc1    $f0, 0x0018($sp)           
	jal     func_8008D17C              
	swc1    $f18, 0x0010($sp)          
	lhu     t9, 0x0088(s0)             ## 00000088
	lwc1    $f4, 0x0080(s0)            ## 00000080
	mtc1    $zero, $f6                 ## $f6 = 0.00
	andi    t0, t9, 0xFFFD             ## t0 = 00000000
	sw      $zero, 0x03D4(s0)          ## 000003D4
	sh      t0, 0x0088(s0)             ## 00000088
	swc1    $f4, 0x0028(s0)            ## 00000028
	swc1    $f6, 0x0060(s0)            ## 00000060
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f8                   ## $f8 = 2.00
	addiu   t1, $zero, 0x0002          ## t1 = 00000002
	sw      t1, 0x0010($sp)            
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0018($sp)         
	lw      a0, 0x003C($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a2, s0, 0x04E0             ## a2 = 000004E0
	lui     a3, 0x4040                 ## a3 = 40400000
	jal     func_800260E8              
	swc1    $f8, 0x0014($sp)           
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f10                  ## $f10 = 2.00
	addiu   t2, $zero, 0x0002          ## t2 = 00000002
	sw      t2, 0x0010($sp)            
	lw      a0, 0x003C($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a2, s0, 0x04D4             ## a2 = 000004D4
	lui     a3, 0x4040                 ## a3 = 40400000
	sw      $zero, 0x0018($sp)         
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0020($sp)         
	jal     func_800260E8              
	swc1    $f10, 0x0014($sp)          
lbl_80897AF4:
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beql    v0, $zero, lbl_80897B34    
	lbu     t5, 0x03F4(s0)             ## 000003F4
	lh      t4, 0x001C(s0)             ## 0000001C
	addiu   t3, $zero, 0x00FF          ## t3 = 000000FF
	sb      t3, 0x03F4(s0)             ## 000003F4
	blez    t4, lbl_80897B28           
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80899B44              
	lw      a1, 0x003C($sp)            
	beq     $zero, $zero, lbl_80897B34 
	lbu     t5, 0x03F4(s0)             ## 000003F4
lbl_80897B28:
	jal     func_80897B48              
	or      a0, s0, $zero              ## a0 = 00000000
	lbu     t5, 0x03F4(s0)             ## 000003F4
lbl_80897B34:
	sb      t5, 0x00C8(s0)             ## 000000C8
	lw      $ra, 0x0034($sp)           
	lw      s0, 0x0030($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80897B48:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lui     a0, 0x0601                 ## a0 = 06010000
	jal     func_8008A194              
	addiu   a0, a0, 0xB10C             ## a0 = 0600B10C
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC080                ## $at = C0800000
	mtc1    $at, $f8                   ## $f8 = -4.00
	cvt.s.w $f6, $f4                   
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0xB10C             ## a1 = 0600B10C
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	swc1    $f6, 0x0010($sp)           
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
	addiu   t7, $zero, 0x0003          ## t7 = 00000003
	jal     func_800CDCCC              ## Rand.Next() float
	sw      t7, 0x03CC(s0)             ## 000003CC
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f10                  ## $f10 = 10.00
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f18                  ## $f18 = 5.00
	mul.s   $f16, $f0, $f10            
	mtc1    $zero, $f8                 ## $f8 = 0.00
	lh      t0, 0x00B6(s0)             ## 000000B6
	lui     a1, %hi(func_80897C00)     ## a1 = 80890000
	addiu   a1, a1, %lo(func_80897C00) ## a1 = 80897C00
	or      a0, s0, $zero              ## a0 = 00000000
	swc1    $f8, 0x0068(s0)            ## 00000068
	add.s   $f4, $f16, $f18            
	sh      t0, 0x0032(s0)             ## 00000032
	trunc.w.s $f6, $f4                   
	mfc1    t9, $f6                    
	jal     func_80896800              
	sw      t9, 0x03E0(s0)             ## 000003E0
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80897C00:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0034($sp)            
	lw      t6, 0x0034($sp)            
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lw      t7, 0x1C44(t6)             ## 00001C44
	sw      t7, 0x002C($sp)            
	lh      t9, 0x03DC(s0)             ## 000003DC
	lh      t8, 0x008A(s0)             ## 0000008A
	lh      t1, 0x00B6(s0)             ## 000000B6
	subu    t0, t8, t9                 
	subu    v1, t0, t1                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	bgez    v1, lbl_80897C54           
	nop
	subu    v1, $zero, v1              
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
lbl_80897C54:
	jal     func_8008C9C0              
	sh      v1, 0x0026($sp)            
	lw      a0, 0x0034($sp)            
	jal     func_8089C408              
	or      a1, s0, $zero              ## a1 = 00000000
	bne     v0, $zero, lbl_80897E68    
	lh      v1, 0x0026($sp)            
	lh      t2, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	bnel    t2, $at, lbl_80897CB8      
	lw      v0, 0x002C($sp)            
	lh      v0, 0x03E4(s0)             ## 000003E4
	slti    $at, v1, 0x1FFE            
	lw      a0, 0x0034($sp)            
	beq     v0, $zero, lbl_80897CA4    
	addiu   t3, v0, 0xFFFF             ## t3 = FFFFFFFF
	beq     $at, $zero, lbl_80897E68   
	sh      t3, 0x03E4(s0)             ## 000003E4
	beq     $zero, $zero, lbl_80897CB4 
	sh      $zero, 0x03E4(s0)          ## 000003E4
lbl_80897CA4:
	jal     func_80897650              
	or      a1, s0, $zero              ## a1 = 00000000
	bnel    v0, $zero, lbl_80897E6C    
	lw      $ra, 0x001C($sp)           
lbl_80897CB4:
	lw      v0, 0x002C($sp)            
lbl_80897CB8:
	lh      t5, 0x00B6(s0)             ## 000000B6
	lui     $at, 0x42C8                ## $at = 42C80000
	lh      t4, 0x00B6(v0)             ## 000000B6
	mtc1    $at, $f6                   ## $f6 = 100.00
	subu    v1, t4, t5                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	bgezl   v1, lbl_80897CEC           
	lwc1    $f4, 0x0090(s0)            ## 00000090
	subu    v1, $zero, v1              
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	lwc1    $f4, 0x0090(s0)            ## 00000090
lbl_80897CEC:
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_80897D38               
	lw      v0, 0x03E0(s0)             ## 000003E0
	lb      t6, 0x0833(v0)             ## 00000833
	slti    $at, v1, 0x1F40            
	beql    t6, $zero, lbl_80897D38    
	lw      v0, 0x03E0(s0)             ## 000003E0
	bnel    $at, $zero, lbl_80897D38   
	lw      v0, 0x03E0(s0)             ## 000003E0
	lh      v0, 0x008A(s0)             ## 0000008A
	or      a0, s0, $zero              ## a0 = 00000000
	sh      v0, 0x0032(s0)             ## 00000032
	sh      v0, 0x00B6(s0)             ## 000000B6
	jal     func_8089ABD4              
	lw      a1, 0x0034($sp)            
	beq     $zero, $zero, lbl_80897E6C 
	lw      $ra, 0x001C($sp)           
	lw      v0, 0x03E0(s0)             ## 000003E0
lbl_80897D38:
	or      a0, s0, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_80897D4C    
	addiu   t7, v0, 0xFFFF             ## t7 = FFFFFFFF
	beq     $zero, $zero, lbl_80897E68 
	sw      t7, 0x03E0(s0)             ## 000003E0
lbl_80897D4C:
	jal     func_80021A28              
	addiu   a1, $zero, 0x1555          ## a1 = 00001555
	beq     v0, $zero, lbl_80897E38    
	lui     $at, 0x4348                ## $at = 43480000
	lwc1    $f0, 0x0090(s0)            ## 00000090
	mtc1    $at, $f8                   ## $f8 = 200.00
	lui     $at, 0x42C8                ## $at = 42C80000
	c.lt.s  $f0, $f8                   
	nop
	bc1f    lbl_80897DF0               
	nop
	mtc1    $at, $f10                  ## $f10 = 100.00
	nop
	c.lt.s  $f10, $f0                  
	nop
	bc1f    lbl_80897DF0               
	nop
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_8089CB18)     ## $at = 808A0000
	lwc1    $f16, %lo(var_8089CB18)($at) 
	c.lt.s  $f0, $f16                  
	nop
	bc1f    lbl_80897DF0               
	nop
	lh      t8, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	or      a0, s0, $zero              ## a0 = 00000000
	bne     t8, $at, lbl_80897DE0      
	nop
	lh      v0, 0x008A(s0)             ## 0000008A
	or      a0, s0, $zero              ## a0 = 00000000
	sh      v0, 0x00B6(s0)             ## 000000B6
	jal     func_808985FC              
	sh      v0, 0x0032(s0)             ## 00000032
	beq     $zero, $zero, lbl_80897E44 
	lw      t9, 0x0034($sp)            
lbl_80897DE0:
	jal     func_8089ABD4              
	lw      a1, 0x0034($sp)            
	beq     $zero, $zero, lbl_80897E44 
	lw      t9, 0x0034($sp)            
lbl_80897DF0:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_8089CB1C)     ## $at = 808A0000
	lwc1    $f18, %lo(var_8089CB1C)($at) 
	lw      a1, 0x0034($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	c.lt.s  $f18, $f0                  
	nop
	bc1f    lbl_80897E28               
	nop
	jal     func_80897E7C              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80897E44 
	lw      t9, 0x0034($sp)            
lbl_80897E28:
	jal     func_8089ABD4              
	lw      a1, 0x0034($sp)            
	beq     $zero, $zero, lbl_80897E44 
	lw      t9, 0x0034($sp)            
lbl_80897E38:
	jal     func_80898818              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t9, 0x0034($sp)            
lbl_80897E44:
	lui     t0, 0x0001                 ## t0 = 00010000
	or      a0, s0, $zero              ## a0 = 00000000
	addu    t0, t0, t9                 
	lw      t0, 0x1DE4(t0)             ## 00011DE4
	andi    t1, t0, 0x005F             ## t1 = 00000000
	bnel    t1, $zero, lbl_80897E6C    
	lw      $ra, 0x001C($sp)           
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3829          ## a1 = 00003829
lbl_80897E68:
	lw      $ra, 0x001C($sp)           
lbl_80897E6C:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80897E7C:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0x8138             ## a1 = 06008138
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008D328              
	lui     a2, 0xC080                 ## a2 = C0800000
	lh      t7, 0x001C(s0)             ## 0000001C
	addiu   t6, $zero, 0x0005          ## t6 = 00000005
	sw      t6, 0x03CC(s0)             ## 000003CC
	bltz    t7, lbl_80897EE4           
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	lh      a1, 0x03EE(s0)             ## 000003EE
	jal     func_80896E68              
	sw      a0, 0x0024($sp)            
	lw      a0, 0x0024($sp)            
	sh      v0, 0x03EE(s0)             ## 000003EE
	lw      a3, 0x002C($sp)            
	lh      a1, 0x03EE(s0)             ## 000003EE
	jal     func_808972D4              
	lh      a2, 0x03F0(s0)             ## 000003F0
	sh      v0, 0x03F2(s0)             ## 000003F2
	sw      $zero, 0x03D4(s0)          ## 000003D4
lbl_80897EE4:
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     a1, %hi(func_80897F10)     ## a1 = 80890000
	addiu   a1, a1, %lo(func_80897F10) ## a1 = 80897F10
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80896800              
	swc1    $f4, 0x0068(s0)            ## 00000068
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80897F10:
	addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x005C($sp)            
	lui     $at, 0x43AF                ## $at = 43AF0000
	mtc1    $at, $f4                   ## $f4 = 350.00
	mtc1    $zero, $f6                 ## $f6 = 0.00
	lw      t7, 0x005C($sp)            
	addiu   t6, $zero, 0xFFFF          ## t6 = FFFFFFFF
	sh      t6, 0x0048($sp)            
	swc1    $f4, 0x0044($sp)           
	swc1    $f6, 0x0040($sp)           
	lw      t8, 0x1C44(t7)             ## 00001C44
	sw      t8, 0x003C($sp)            
	lh      t9, 0x001C(s0)             ## 0000001C
	addiu   a0, t8, 0x0024             ## a0 = 00000024
	bltzl   t9, lbl_80897FAC           
	lw      a0, 0x005C($sp)            
	jal     func_80896E68              
	addiu   a1, $zero, 0xFFFF          ## a1 = FFFFFFFF
	sll     a1, v0, 16                 
	sh      v0, 0x0048($sp)            
	sra     a1, a1, 16                 
	jal     func_80896E68              
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	lui     $at, 0x43D2                ## $at = 43D20000
	mtc1    $at, $f10                  ## $f10 = 420.00
	lwc1    $f8, 0x0028(s0)            ## 00000028
	sh      v0, 0x03EE(s0)             ## 000003EE
	lui     $at, 0x4387                ## $at = 43870000
	c.le.s  $f10, $f8                  
	nop
	bc1fl   lbl_80897FAC               
	lw      a0, 0x005C($sp)            
	mtc1    $at, $f16                  ## $f16 = 270.00
	nop
	swc1    $f16, 0x0044($sp)          
	lw      a0, 0x005C($sp)            
lbl_80897FAC:
	jal     func_8089C408              
	or      a1, s0, $zero              ## a1 = 00000000
	bne     v0, $zero, lbl_808985E8    
	lh      t0, 0x0048($sp)            
	lh      a1, 0x03EE(s0)             ## 000003EE
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	lw      a3, 0x005C($sp)            
	beql    t0, a1, lbl_80898170       
	addiu   t8, s0, 0x0068             ## t8 = 00000068
	jal     func_808972D4              
	lh      a2, 0x03F0(s0)             ## 000003F0
	sh      v0, 0x03F2(s0)             ## 000003F2
	lh      t1, 0x0048($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	bgezl   t1, lbl_80898014           
	lh      t3, 0x03F2(s0)             ## 000003F2
	lh      a1, 0x03EE(s0)             ## 000003EE
	lh      t2, 0x03F2(s0)             ## 000003F2
	bnel    a1, t2, lbl_80898014       
	lh      t3, 0x03F2(s0)             ## 000003F2
	sh      a1, 0x0048($sp)            
	lh      v0, 0x008A(s0)             ## 0000008A
	sh      v0, 0x0032(s0)             ## 00000032
	beq     $zero, $zero, lbl_8089816C 
	sh      v0, 0x00B6(s0)             ## 000000B6
	lh      t3, 0x03F2(s0)             ## 000003F2
lbl_80898014:
	lui     t5, %hi(var_8089C880)      ## t5 = 808A0000
	addiu   t5, t5, %lo(var_8089C880)  ## t5 = 8089C880
	sll     t4, t3,  2                 
	subu    t4, t4, t3                 
	sll     t4, t4,  2                 
	jal     func_8002140C              
	addu    a1, t4, t5                 
	sh      v0, 0x00B6(s0)             ## 000000B6
	lh      t7, 0x00B6(s0)             ## 000000B6
	lh      t6, 0x007E(s0)             ## 0000007E
	sh      v0, 0x008A(s0)             ## 0000008A
	sh      v0, 0x0032(s0)             ## 00000032
	subu    v1, t6, t7                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	bgezl   v1, lbl_80898068           
	lh      t9, 0x03E8(s0)             ## 000003E8
	subu    v1, $zero, v1              
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	lh      t9, 0x03E8(s0)             ## 000003E8
lbl_80898068:
	beql    t9, $zero, lbl_8089808C    
	lhu     t8, 0x0088(s0)             ## 00000088
	mtc1    $zero, $f18                ## $f18 = 0.00
	lwc1    $f4, 0x0068(s0)            ## 00000068
	c.lt.s  $f18, $f4                  
	nop
	bc1tl   lbl_808980AC               
	lh      t1, 0x03F2(s0)             ## 000003F2
	lhu     t8, 0x0088(s0)             ## 00000088
lbl_8089808C:
	slti    $at, v1, 0x5C19            
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	andi    t0, t8, 0x0008             ## t0 = 00000000
	beq     t0, $zero, lbl_8089814C    
	lui     a1, 0x4100                 ## a1 = 41000000
	bnel    $at, $zero, lbl_80898150   
	lh      v0, 0x008A(s0)             ## 0000008A
	lh      t1, 0x03F2(s0)             ## 000003F2
lbl_808980AC:
	lui     t3, %hi(var_8089C880)      ## t3 = 808A0000
	addiu   t3, t3, %lo(var_8089C880)  ## t3 = 8089C880
	sll     t2, t1,  2                 
	subu    t2, t2, t1                 
	sll     t2, t2,  2                 
	addu    a1, t2, t3                 
	jal     func_80021528              
	or      a0, s0, $zero              ## a0 = 00000000
	lwc1    $f6, 0x0044($sp)           
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x005C($sp)            
	c.lt.s  $f0, $f6                   
	lui     a2, 0x433F                 ## a2 = 433F0000
	bc1fl   lbl_80898124               
	lh      t6, 0x03EE(s0)             ## 000003EE
	jal     func_8089680C              
	ori     a2, a2, 0xFEE0             ## a2 = 433FFEE0
	bnel    v0, $zero, lbl_80898124    
	lh      t6, 0x03EE(s0)             ## 000003EE
	jal     func_808985FC              
	or      a0, s0, $zero              ## a0 = 00000000
	lhu     t4, 0x0088(s0)             ## 00000088
	lui     $at, 0x41A0                ## $at = 41A00000
	andi    t5, t4, 0x0008             ## t5 = 00000000
	beql    t5, $zero, lbl_808985EC    
	lw      $ra, 0x0024($sp)           
	mtc1    $at, $f8                   ## $f8 = 20.00
	beq     $zero, $zero, lbl_808985E8 
	swc1    $f8, 0x0060(s0)            ## 00000060
	lh      t6, 0x03EE(s0)             ## 000003EE
lbl_80898124:
	lui     t9, %hi(var_8089C880)      ## t9 = 808A0000
	addiu   t9, t9, %lo(var_8089C880)  ## t9 = 8089C880
	sll     t7, t6,  2                 
	subu    t7, t7, t6                 
	sll     t7, t7,  2                 
	addu    a1, t7, t9                 
	jal     func_8002140C              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089816C 
	sh      v0, 0x0032(s0)             ## 00000032
lbl_8089814C:
	lh      v0, 0x008A(s0)             ## 0000008A
lbl_80898150:
	mtc1    $zero, $f10                ## $f10 = 0.00
	lui     a2, 0x3F80                 ## a2 = 3F800000
	sh      v0, 0x0032(s0)             ## 00000032
	sh      v0, 0x00B6(s0)             ## 000000B6
	lui     a3, 0x3FC0                 ## a3 = 3FC00000
	jal     func_80064178              
	swc1    $f10, 0x0010($sp)          
lbl_8089816C:
	addiu   t8, s0, 0x0068             ## t8 = 00000068
lbl_80898170:
	sw      t8, 0x002C($sp)            
	lw      a0, 0x005C($sp)            
	jal     func_80026950              
	or      a1, s0, $zero              ## a1 = 00000000
	beq     v0, $zero, lbl_80898198    
	lw      a0, 0x002C($sp)            
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f16                  ## $f16 = 100.00
	nop
	swc1    $f16, 0x0040($sp)          
lbl_80898198:
	lui     $at, 0x428C                ## $at = 428C0000
	mtc1    $at, $f18                  ## $f18 = 70.00
	lwc1    $f4, 0x0040($sp)           
	lwc1    $f8, 0x0090(s0)            ## 00000090
	lui     a3, 0x3F00                 ## a3 = 3F000000
	add.s   $f6, $f18, $f4             
	lui     a1, 0x4100                 ## a1 = 41000000
	lui     a2, 0x3F80                 ## a2 = 3F800000
	c.le.s  $f8, $f6                   
	nop
	bc1fl   lbl_808981E8               
	mtc1    $zero, $f16                ## $f16 = 0.00
	mtc1    $zero, $f10                ## $f10 = 0.00
	lui     a1, 0xC100                 ## a1 = C1000000
	lui     a2, 0x3F80                 ## a2 = 3F800000
	jal     func_80064178              
	swc1    $f10, 0x0010($sp)          
	beq     $zero, $zero, lbl_808981F4 
	nop
	mtc1    $zero, $f16                ## $f16 = 0.00
lbl_808981E8:
	lui     a3, 0x3F00                 ## a3 = 3F000000
	jal     func_80064178              
	swc1    $f16, 0x0010($sp)          
lbl_808981F4:
	lui     $at, %hi(var_8089CB20)     ## $at = 808A0000
	lwc1    $f4, %lo(var_8089CB20)($at) 
	lwc1    $f18, 0x0068(s0)           ## 00000068
	lh      t2, 0x00B6(s0)             ## 000000B6
	lui     $at, 0x4316                ## $at = 43160000
	mul.s   $f6, $f18, $f4             
	swc1    $f6, 0x0158(s0)            ## 00000158
	lw      t0, 0x003C($sp)            
	lh      t3, 0x0048($sp)            
	lh      t1, 0x00B6(t0)             ## 000000B6
	subu    v1, t1, t2                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	bgezl   v1, lbl_80898240           
	lh      t4, 0x03EE(s0)             ## 000003EE
	subu    v1, $zero, v1              
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	lh      t4, 0x03EE(s0)             ## 000003EE
lbl_80898240:
	bnel    t3, t4, lbl_808982BC       
	lwc1    $f18, 0x0154(s0)           ## 00000154
	lwc1    $f8, 0x0090(s0)            ## 00000090
	mtc1    $at, $f10                  ## $f10 = 150.00
	lw      t5, 0x003C($sp)            
	c.lt.s  $f8, $f10                  
	nop
	bc1fl   lbl_808982BC               
	lwc1    $f18, 0x0154(s0)           ## 00000154
	lb      t6, 0x0833(t5)             ## 00000833
	slti    $at, v1, 0x1F40            
	beql    t6, $zero, lbl_808982BC    
	lwc1    $f18, 0x0154(s0)           ## 00000154
	bnel    $at, $zero, lbl_808982BC   
	lwc1    $f18, 0x0154(s0)           ## 00000154
	lh      v0, 0x008A(s0)             ## 0000008A
	sh      v0, 0x0032(s0)             ## 00000032
	jal     func_800CDCCC              ## Rand.Next() float
	sh      v0, 0x00B6(s0)             ## 000000B6
	lui     $at, %hi(var_8089CB24)     ## $at = 808A0000
	lwc1    $f16, %lo(var_8089CB24)($at) 
	or      a0, s0, $zero              ## a0 = 00000000
	c.lt.s  $f16, $f0                  
	nop
	bc1fl   lbl_808982BC               
	lwc1    $f18, 0x0154(s0)           ## 00000154
	jal     func_8089ABD4              
	lw      a1, 0x005C($sp)            
	beq     $zero, $zero, lbl_808985EC 
	lw      $ra, 0x0024($sp)           
	lwc1    $f18, 0x0154(s0)           ## 00000154
lbl_808982BC:
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	trunc.w.s $f4, $f18                  
	mfc1    t9, $f4                    
	jal     func_8008C9C0              
	sw      t9, 0x0054($sp)            
	mtc1    $zero, $f2                 ## $f2 = 0.00
	lwc1    $f0, 0x0158(s0)            ## 00000158
	or      a0, s0, $zero              ## a0 = 00000000
	c.le.s  $f2, $f0                   
	nop
	bc1fl   lbl_808982F8               
	neg.s   $f6, $f0                   
	beq     $zero, $zero, lbl_808982FC 
	swc1    $f0, 0x0030($sp)           
	neg.s   $f6, $f0                   
lbl_808982F8:
	swc1    $f6, 0x0030($sp)           
lbl_808982FC:
	lwc1    $f8, 0x0154(s0)            ## 00000154
	lwc1    $f10, 0x0030($sp)          
	c.le.s  $f2, $f0                   
	sub.s   $f16, $f8, $f10            
	trunc.w.s $f18, $f16                 
	mfc1    t0, $f18                   
	bc1f    lbl_80898324               
	sw      t0, 0x0050($sp)            
	beq     $zero, $zero, lbl_8089832C 
	swc1    $f0, 0x0030($sp)           
lbl_80898324:
	neg.s   $f4, $f0                   
	swc1    $f4, 0x0030($sp)           
lbl_8089832C:
	lh      t1, 0x0048($sp)            
	lh      t2, 0x03EE(s0)             ## 000003EE
	bnel    t1, t2, lbl_80898480       
	lh      t4, 0x001C(s0)             ## 0000001C
	jal     func_80021A28              
	addiu   a1, $zero, 0x11C7          ## a1 = 000011C7
	bne     v0, $zero, lbl_80898390    
	lui     $at, 0x42C8                ## $at = 42C80000
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f6                   ## $f6 = 0.50
	or      a0, s0, $zero              ## a0 = 00000000
	c.lt.s  $f6, $f0                   
	nop
	bc1f    lbl_80898380               
	nop
	jal     func_80898AB0              
	lw      a1, 0x005C($sp)            
	beq     $zero, $zero, lbl_80898480 
	lh      t4, 0x001C(s0)             ## 0000001C
lbl_80898380:
	jal     func_80897B48              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80898480 
	lh      t4, 0x001C(s0)             ## 0000001C
lbl_80898390:
	lwc1    $f8, 0x0090(s0)            ## 00000090
	mtc1    $at, $f10                  ## $f10 = 0.00
	nop
	c.lt.s  $f8, $f10                  
	nop
	bc1fl   lbl_80898438               
	lh      t3, 0x03E8(s0)             ## 000003E8
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_8089CB28)     ## $at = 808A0000
	lwc1    $f16, %lo(var_8089CB28)($at) 
	lw      a0, 0x005C($sp)            
	c.lt.s  $f16, $f0                  
	nop
	bc1f    lbl_808983F0               
	nop
	jal     func_808974B0              
	or      a1, s0, $zero              ## a1 = 00000000
	beq     v0, $zero, lbl_808983F0    
	nop
	jal     func_808991FC              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80898480 
	lh      t4, 0x001C(s0)             ## 0000001C
lbl_808983F0:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f18                  ## $f18 = 0.50
	or      a0, s0, $zero              ## a0 = 00000000
	c.lt.s  $f18, $f0                  
	nop
	bc1f    lbl_80898424               
	nop
	jal     func_8089ABD4              
	lw      a1, 0x005C($sp)            
	beq     $zero, $zero, lbl_80898480 
	lh      t4, 0x001C(s0)             ## 0000001C
lbl_80898424:
	jal     func_80897B48              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80898480 
	lh      t4, 0x001C(s0)             ## 0000001C
	lh      t3, 0x03E8(s0)             ## 000003E8
lbl_80898438:
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t3, $zero, lbl_80898454    
	nop
	jal     func_80898AB0              
	lw      a1, 0x005C($sp)            
	beq     $zero, $zero, lbl_80898480 
	lh      t4, 0x001C(s0)             ## 0000001C
lbl_80898454:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_8089CB2C)     ## $at = 808A0000
	lwc1    $f4, %lo(var_8089CB2C)($at) 
	c.lt.s  $f0, $f4                   
	nop
	bc1fl   lbl_80898480               
	lh      t4, 0x001C(s0)             ## 0000001C
	jal     func_80897B48              
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t4, 0x001C(s0)             ## 0000001C
lbl_80898480:
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	lw      a0, 0x005C($sp)            
	bnel    t4, $at, lbl_80898544      
	lw      t5, 0x005C($sp)            
	jal     func_80897650              
	or      a1, s0, $zero              ## a1 = 00000000
	bne     v0, $zero, lbl_808985E8    
	lui     $at, 0x4334                ## $at = 43340000
	lwc1    $f0, 0x0090(s0)            ## 00000090
	mtc1    $at, $f6                   ## $f6 = 180.00
	lui     $at, 0x4320                ## $at = 43200000
	c.lt.s  $f0, $f6                   
	nop
	bc1fl   lbl_80898544               
	lw      t5, 0x005C($sp)            
	mtc1    $at, $f8                   ## $f8 = 160.00
	or      a0, s0, $zero              ## a0 = 00000000
	c.lt.s  $f8, $f0                   
	nop
	bc1fl   lbl_80898544               
	lw      t5, 0x005C($sp)            
	jal     func_80021A28              
	addiu   a1, $zero, 0x071C          ## a1 = 0000071C
	beq     v0, $zero, lbl_80898540    
	lw      a0, 0x005C($sp)            
	jal     func_8002691C              
	or      a1, s0, $zero              ## a1 = 00000000
	beq     v0, $zero, lbl_80898530    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_8089CB30)     ## $at = 808A0000
	lwc1    $f10, %lo(var_8089CB30)($at) 
	c.lt.s  $f0, $f10                  
	nop
	bc1fl   lbl_80898544               
	lw      t5, 0x005C($sp)            
	lh      v0, 0x008A(s0)             ## 0000008A
	or      a0, s0, $zero              ## a0 = 00000000
	sh      v0, 0x00B6(s0)             ## 000000B6
	jal     func_808985FC              
	sh      v0, 0x0032(s0)             ## 00000032
	beq     $zero, $zero, lbl_808985EC 
	lw      $ra, 0x0024($sp)           
lbl_80898530:
	jal     func_8089ABD4              
	lw      a1, 0x005C($sp)            
	beq     $zero, $zero, lbl_808985EC 
	lw      $ra, 0x0024($sp)           
lbl_80898540:
	lw      t5, 0x005C($sp)            
lbl_80898544:
	lui     t6, 0x0001                 ## t6 = 00010000
	or      a0, s0, $zero              ## a0 = 00000000
	addu    t6, t6, t5                 
	lw      t6, 0x1DE4(t6)             ## 00011DE4
	andi    t7, t6, 0x005F             ## t7 = 00000000
	bnel    t7, $zero, lbl_8089856C    
	lwc1    $f16, 0x0154(s0)           ## 00000154
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3829          ## a1 = 00003829
	lwc1    $f16, 0x0154(s0)           ## 00000154
lbl_8089856C:
	lw      v0, 0x0054($sp)            
	lw      t0, 0x0050($sp)            
	trunc.w.s $f18, $f16                 
	slti    $at, t0, 0x0002            
	mfc1    t8, $f18                   
	nop
	beql    v0, t8, lbl_808985EC       
	lw      $ra, 0x0024($sp)           
	beq     $at, $zero, lbl_808985B0   
	lwc1    $f4, 0x0030($sp)           
	trunc.w.s $f6, $f4                   
	mfc1    t2, $f6                    
	nop
	addu    t3, t2, v0                 
	slti    $at, t3, 0x0004            
	beql    $at, $zero, lbl_808985E0   
	or      a0, s0, $zero              ## a0 = 00000000
lbl_808985B0:
	lw      t4, 0x0050($sp)            
	lwc1    $f8, 0x0030($sp)           
	slti    $at, t4, 0x0020            
	beql    $at, $zero, lbl_808985EC   
	lw      $ra, 0x0024($sp)           
	trunc.w.s $f10, $f8                  
	mfc1    t6, $f10                   
	nop
	addu    t7, t6, v0                 
	slti    $at, t7, 0x0022            
	bne     $at, $zero, lbl_808985E8   
	or      a0, s0, $zero              ## a0 = 00000000
lbl_808985E0:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x382E          ## a1 = 0000382E
lbl_808985E8:
	lw      $ra, 0x0024($sp)           
lbl_808985EC:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0058           ## $sp = 00000000
	jr      $ra                        
	nop


func_808985FC:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lui     $at, 0x4040                ## $at = 40400000
	mtc1    $at, $f4                   ## $f4 = 3.00
	lui     $at, 0xC040                ## $at = C0400000
	mtc1    $at, $f6                   ## $f6 = -3.00
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0x9530             ## a1 = 06009530
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lui     a2, 0x3F80                 ## a2 = 3F800000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f4, 0x0010($sp)           
	jal     func_8008D17C              
	swc1    $f6, 0x0018($sp)           
	lh      t8, 0x001C(s0)             ## 0000001C
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f8                   ## $f8 = 15.00
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	sw      $zero, 0x03E0(s0)          ## 000003E0
	sw      t7, 0x03D4(s0)             ## 000003D4
	bltz    t8, lbl_80898674           
	swc1    $f8, 0x0060(s0)            ## 00000060
	lui     $at, 0x4180                ## $at = 41800000
	mtc1    $at, $f10                  ## $f10 = 16.00
	beq     $zero, $zero, lbl_80898684 
	swc1    $f10, 0x0068(s0)           ## 00000068
lbl_80898674:
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f16                  ## $f16 = 10.00
	nop
	swc1    $f16, 0x0068(s0)           ## 00000068
lbl_80898684:
	addiu   t9, $zero, 0x000D          ## t9 = 0000000D
	sw      t9, 0x03CC(s0)             ## 000003CC
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x382F          ## a1 = 0000382F
	lui     a1, %hi(func_808986BC)     ## a1 = 808A0000
	addiu   a1, a1, %lo(func_808986BC) ## a1 = 808986BC
	jal     func_80896800              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_808986BC:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x003C($sp)            
	lw      t6, 0x03E0(s0)             ## 000003E0
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beq     t6, $zero, lbl_80898710    
	nop
	lwc1    $f0, 0x0080(s0)            ## 00000080
	lwc1    $f4, 0x0028(s0)            ## 00000028
	c.le.s  $f4, $f0                   
	nop
	bc1f    lbl_80898710               
	nop
	mtc1    $zero, $f6                 ## $f6 = 0.00
	mtc1    $zero, $f8                 ## $f8 = 0.00
	swc1    $f0, 0x0028(s0)            ## 00000028
	sw      $zero, 0x03D4(s0)          ## 000003D4
	swc1    $f6, 0x0060(s0)            ## 00000060
	swc1    $f8, 0x0068(s0)            ## 00000068
lbl_80898710:
	jal     func_8008C9C0              
	sw      a0, 0x0034($sp)            
	mtc1    $zero, $f0                 ## $f0 = 0.00
	beq     v0, $zero, lbl_80898790    
	lw      a0, 0x0034($sp)            
	lw      t7, 0x03E0(s0)             ## 000003E0
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0x8C6C             ## a1 = 06008C6C
	bne     t7, $zero, lbl_8089877C    
	lui     a2, 0x4040                 ## a2 = 40400000
	lui     $at, 0x4188                ## $at = 41880000
	mtc1    $at, $f10                  ## $f10 = 17.00
	lui     $at, 0xC040                ## $at = C0400000
	mtc1    $at, $f16                  ## $f16 = -3.00
	mfc1    a3, $f0                    
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	sw      t8, 0x0014($sp)            
	swc1    $f10, 0x0010($sp)          
	jal     func_8008D17C              
	swc1    $f16, 0x0018($sp)          
	addiu   t9, $zero, 0x000A          ## t9 = 0000000A
	sw      t9, 0x03E0(s0)             ## 000003E0
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x382F          ## a1 = 0000382F
	beq     $zero, $zero, lbl_80898794 
	lw      t0, 0x003C($sp)            
lbl_8089877C:
	swc1    $f0, 0x0068(s0)            ## 00000068
	sw      $zero, 0x03D4(s0)          ## 000003D4
	lw      a1, 0x003C($sp)            
	jal     func_80897E7C              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80898790:
	lw      t0, 0x003C($sp)            
lbl_80898794:
	lui     t1, 0x0001                 ## t1 = 00010000
	or      a0, s0, $zero              ## a0 = 00000000
	addu    t1, t1, t0                 
	lw      t1, 0x1DE4(t1)             ## 00011DE4
	andi    t2, t1, 0x005F             ## t2 = 00000000
	bnel    t2, $zero, lbl_808987BC    
	lh      t3, 0x001C(s0)             ## 0000001C
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3829          ## a1 = 00003829
	lh      t3, 0x001C(s0)             ## 0000001C
lbl_808987BC:
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	bnel    t3, $at, lbl_80898808      
	lw      $ra, 0x002C($sp)           
	lhu     t4, 0x0088(s0)             ## 00000088
	lw      a0, 0x003C($sp)            
	andi    t5, t4, 0x0003             ## t5 = 00000000
	beql    t5, $zero, lbl_80898808    
	lw      $ra, 0x002C($sp)           
	jal     func_808974B0              
	or      a1, s0, $zero              ## a1 = 00000000
	beq     v0, $zero, lbl_808987FC    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_808991FC              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80898808 
	lw      $ra, 0x002C($sp)           
lbl_808987FC:
	jal     func_8089ABD4              
	lw      a1, 0x003C($sp)            
	lw      $ra, 0x002C($sp)           
lbl_80898808:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_80898818:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0x8138             ## a1 = 06008138
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	lui     a2, 0xC080                 ## a2 = C0800000
	jal     func_8008D328              
	sw      a3, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	addiu   t6, $zero, 0x0006          ## t6 = 00000006
	lui     a1, %hi(func_80898864)     ## a1 = 808A0000
	addiu   a1, a1, %lo(func_80898864) ## a1 = 80898864
	jal     func_80896800              
	sw      t6, 0x03CC(a0)             ## 000003CC
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80898864:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	or      a2, a1, $zero              ## a2 = 00000000
	lw      t6, 0x1C44(a2)             ## 00001C44
	sw      a2, 0x0034($sp)            
	or      a0, a2, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_8089C408              
	sw      t6, 0x0024($sp)            
	bnel    v0, $zero, lbl_80898AA0    
	lw      $ra, 0x001C($sp)           
	lh      t7, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	lw      a0, 0x0034($sp)            
	bnel    t7, $at, lbl_808988C0      
	lh      a0, 0x00B6(s0)             ## 000000B6
	jal     func_80897650              
	or      a1, s0, $zero              ## a1 = 00000000
	bnel    v0, $zero, lbl_80898AA0    
	lw      $ra, 0x001C($sp)           
	lh      a0, 0x00B6(s0)             ## 000000B6
lbl_808988C0:
	lh      t8, 0x008A(s0)             ## 0000008A
	subu    v0, t8, a0                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	blezl   v0, lbl_80898914           
	mtc1    v0, $f6                    ## $f6 = 0.00
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0x3E80                ## $at = 3E800000
	mtc1    $at, $f8                   ## $f8 = 0.25
	cvt.s.w $f6, $f4                   
	lui     $at, 0x44FA                ## $at = 44FA0000
	mtc1    $at, $f16                  ## $f16 = 2000.00
	mul.s   $f10, $f6, $f8             
	add.s   $f18, $f10, $f16           
	trunc.w.s $f4, $f18                  
	mfc1    v1, $f4                    
	nop
	sll     v1, v1, 16                 
	beq     $zero, $zero, lbl_80898944 
	sra     v1, v1, 16                 
	mtc1    v0, $f6                    ## $f6 = 0.00
lbl_80898914:
	lui     $at, 0x3E80                ## $at = 3E800000
	mtc1    $at, $f10                  ## $f10 = 0.25
	cvt.s.w $f8, $f6                   
	lui     $at, 0x44FA                ## $at = 44FA0000
	mtc1    $at, $f18                  ## $f18 = 2000.00
	mul.s   $f16, $f8, $f10            
	sub.s   $f4, $f16, $f18            
	trunc.w.s $f6, $f4                   
	mfc1    v1, $f6                    
	nop
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
lbl_80898944:
	addu    t1, a0, v1                 
	sh      t1, 0x00B6(s0)             ## 000000B6
	lh      t2, 0x00B6(s0)             ## 000000B6
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	blez    v0, lbl_80898994           
	sh      t2, 0x0032(s0)             ## 00000032
	mtc1    v1, $f8                    ## $f8 = 0.00
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f12                  ## $f12 = 2.00
	cvt.s.w $f10, $f8                  
	lui     $at, 0x3FC0                ## $at = 3FC00000
	mtc1    $at, $f16                  ## $f16 = 1.50
	nop
	mul.s   $f2, $f10, $f16            
	c.lt.s  $f12, $f2                  
	nop
	bc1fl   lbl_808989CC               
	neg.s   $f8, $f2                   
	beq     $zero, $zero, lbl_808989C8 
	mov.s   $f2, $f12                  
lbl_80898994:
	mtc1    v1, $f18                   ## $f18 = 0.00
	lui     $at, 0xC000                ## $at = C0000000
	mtc1    $at, $f12                  ## $f12 = -2.00
	cvt.s.w $f4, $f18                  
	lui     $at, 0x3FC0                ## $at = 3FC00000
	mtc1    $at, $f6                   ## $f6 = 1.50
	nop
	mul.s   $f2, $f4, $f6              
	c.lt.s  $f2, $f12                  
	nop
	bc1fl   lbl_808989CC               
	neg.s   $f8, $f2                   
	mov.s   $f2, $f12                  
lbl_808989C8:
	neg.s   $f8, $f2                   
lbl_808989CC:
	jal     func_8008C9C0              
	swc1    $f8, 0x0158(s0)            ## 00000158
	lh      t3, 0x001C(s0)             ## 0000001C
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	bltzl   t3, lbl_80898A24           
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80896E68              
	lh      a1, 0x03EE(s0)             ## 000003EE
	sh      v0, 0x03EE(s0)             ## 000003EE
	lw      a0, 0x0024($sp)            
	addiu   a1, $zero, 0xFFFF          ## a1 = FFFFFFFF
	jal     func_80896E68              
	addiu   a0, a0, 0x0024             ## a0 = 00000024
	lh      t4, 0x03EE(s0)             ## 000003EE
	or      a0, s0, $zero              ## a0 = 00000000
	beql    v0, t4, lbl_80898A24       
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80897E7C              
	lw      a1, 0x0034($sp)            
	beq     $zero, $zero, lbl_80898AA0 
	lw      $ra, 0x001C($sp)           
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80898A24:
	jal     func_80021A28              
	addiu   a1, $zero, 0x1555          ## a1 = 00001555
	beql    v0, $zero, lbl_80898A78    
	lw      t5, 0x0034($sp)            
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_8089CB34)     ## $at = 808A0000
	lwc1    $f10, %lo(var_8089CB34)($at) 
	lw      a1, 0x0034($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	c.lt.s  $f10, $f0                  
	nop
	bc1f    lbl_80898A6C               
	nop
	jal     func_80898AB0              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80898A78 
	lw      t5, 0x0034($sp)            
lbl_80898A6C:
	jal     func_80897E7C              
	lw      a1, 0x0034($sp)            
	lw      t5, 0x0034($sp)            
lbl_80898A78:
	lui     t6, 0x0001                 ## t6 = 00010000
	or      a0, s0, $zero              ## a0 = 00000000
	addu    t6, t6, t5                 
	lw      t6, 0x1DE4(t6)             ## 00011DE4
	andi    t7, t6, 0x005F             ## t7 = 00000000
	bnel    t7, $zero, lbl_80898AA0    
	lw      $ra, 0x001C($sp)           
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3829          ## a1 = 00003829
	lw      $ra, 0x001C($sp)           
lbl_80898AA0:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80898AB0:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lh      t6, 0x001C(s0)             ## 0000001C
	or      a0, s0, $zero              ## a0 = 00000000
	bltz    t6, lbl_80898B1C           
	nop
	lh      a3, 0x00B6(s0)             ## 000000B6
	lw      a1, 0x0024($sp)            
	lui     a2, 0x4220                 ## a2 = 42200000
	addiu   a3, a3, 0x3FFF             ## a3 = 00003FFF
	sll     a3, a3, 16                 
	jal     func_80026850              
	sra     a3, a3, 16                 
	bne     v0, $zero, lbl_80898B1C    
	or      a0, s0, $zero              ## a0 = 00000000
	lh      a3, 0x00B6(s0)             ## 000000B6
	lw      a1, 0x0024($sp)            
	lui     a2, 0xC220                 ## a2 = C2200000
	addiu   a3, a3, 0x3FFF             ## a3 = 00003FFF
	sll     a3, a3, 16                 
	jal     func_80026850              
	sra     a3, a3, 16                 
	beq     v0, $zero, lbl_80898B9C    
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80898B1C:
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0x6388             ## a1 = 06016388
	jal     func_8008D2D4              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lui     $at, 0x4140                ## $at = 41400000
	mtc1    $at, $f12                  ## $f12 = 12.00
	jal     func_80026D90              
	nop
	lh      t7, 0x00B6(s0)             ## 000000B6
	swc1    $f0, 0x0068(s0)            ## 00000068
	jal     func_800CDCCC              ## Rand.Next() float
	sh      t7, 0x0032(s0)             ## 00000032
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f4                   ## $f4 = 10.00
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f8                   ## $f8 = 20.00
	mul.s   $f6, $f0, $f4              
	mtc1    $zero, $f18                ## $f18 = 0.00
	addiu   t0, $zero, 0x0007          ## t0 = 00000007
	lui     a1, %hi(func_80898BB8)     ## a1 = 808A0000
	sw      $zero, 0x03D4(s0)          ## 000003D4
	sw      t0, 0x03CC(s0)             ## 000003CC
	addiu   a1, a1, %lo(func_80898BB8) ## a1 = 80898BB8
	add.s   $f10, $f6, $f8             
	or      a0, s0, $zero              ## a0 = 00000000
	swc1    $f18, 0x03F8(s0)           ## 000003F8
	trunc.w.s $f16, $f10                 
	mfc1    t9, $f16                   
	jal     func_80896800              
	sw      t9, 0x03E0(s0)             ## 000003E0
	beq     $zero, $zero, lbl_80898BA8 
	lw      $ra, 0x001C($sp)           
lbl_80898B9C:
	jal     func_80897E7C              
	lw      a1, 0x0024($sp)            
	lw      $ra, 0x001C($sp)           
lbl_80898BA8:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80898BB8:
	addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x005C($sp)            
	lw      t6, 0x005C($sp)            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	lw      t7, 0x1C44(t6)             ## 00001C44
	swc1    $f4, 0x003C($sp)           
	addiu   a0, s0, 0x00B6             ## a0 = 000000B6
	sw      t7, 0x0040($sp)            
	lh      a1, 0x008A(s0)             ## 0000008A
	sw      t8, 0x0010($sp)            
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	jal     func_80064508              
	addiu   a3, $zero, 0x0FA0          ## a3 = 00000FA0
	lw      a0, 0x005C($sp)            
	jal     func_8089C408              
	or      a1, s0, $zero              ## a1 = 00000000
	bnel    v0, $zero, lbl_808991EC    
	lw      $ra, 0x0024($sp)           
	lh      t9, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	lw      a0, 0x005C($sp)            
	bnel    t9, $at, lbl_80898C38      
	lh      v0, 0x00B6(s0)             ## 000000B6
	jal     func_80897650              
	or      a1, s0, $zero              ## a1 = 00000000
	bnel    v0, $zero, lbl_808991EC    
	lw      $ra, 0x0024($sp)           
	lh      v0, 0x00B6(s0)             ## 000000B6
lbl_80898C38:
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addiu   t0, v0, 0x3A98             ## t0 = 00003A98
	sh      t0, 0x0032(s0)             ## 00000032
	lw      t1, 0x0040($sp)            
	lh      v1, 0x00B6(t1)             ## 000000B6
	addu    v1, v1, $at                
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	subu    a0, v1, v0                 
	sll     a0, a0, 16                 
	sra     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sh      v1, 0x0056($sp)            
	mtc1    $zero, $f6                 ## $f6 = 0.00
	nop
	c.le.s  $f6, $f0                   
	nop
	bc1f    lbl_80898CB8               
	lui     $at, 0xC100                ## $at = C1000000
	mtc1    $at, $f0                   ## $f0 = -8.00
	lui     $at, 0x3E80                ## $at = 3E800000
	mtc1    $at, $f10                  ## $f10 = 0.25
	lwc1    $f8, 0x0068(s0)            ## 00000068
	sub.s   $f18, $f8, $f10            
	swc1    $f18, 0x0068(s0)           ## 00000068
	lwc1    $f4, 0x0068(s0)            ## 00000068
	c.lt.s  $f4, $f0                   
	nop
	bc1fl   lbl_80898D1C               
	lh      t4, 0x001C(s0)             ## 0000001C
	beq     $zero, $zero, lbl_80898D18 
	swc1    $f0, 0x0068(s0)            ## 00000068
lbl_80898CB8:
	lh      t2, 0x0056($sp)            
	lh      t3, 0x00B6(s0)             ## 000000B6
	subu    a0, t2, t3                 
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	mtc1    $zero, $f6                 ## $f6 = 0.00
	lui     $at, 0x4100                ## $at = 41000000
	c.lt.s  $f0, $f6                   
	nop
	bc1fl   lbl_80898D1C               
	lh      t4, 0x001C(s0)             ## 0000001C
	mtc1    $at, $f0                   ## $f0 = 8.00
	lui     $at, 0x3E80                ## $at = 3E800000
	mtc1    $at, $f10                  ## $f10 = 0.25
	lwc1    $f8, 0x0068(s0)            ## 00000068
	add.s   $f18, $f8, $f10            
	swc1    $f18, 0x0068(s0)           ## 00000068
	lwc1    $f4, 0x0068(s0)            ## 00000068
	c.lt.s  $f0, $f4                   
	nop
	bc1fl   lbl_80898D1C               
	lh      t4, 0x001C(s0)             ## 0000001C
	swc1    $f0, 0x0068(s0)            ## 00000068
lbl_80898D18:
	lh      t4, 0x001C(s0)             ## 0000001C
lbl_80898D1C:
	bltzl   t4, lbl_80898D44           
	lhu     v0, 0x0088(s0)             ## 00000088
	lh      t5, 0x03E8(s0)             ## 000003E8
	beql    t5, $zero, lbl_80898E64    
	lw      a0, 0x005C($sp)            
	lwc1    $f6, 0x0068(s0)            ## 00000068
	neg.s   $f8, $f6                   
	beq     $zero, $zero, lbl_80898E60 
	swc1    $f8, 0x0068(s0)            ## 00000068
	lhu     v0, 0x0088(s0)             ## 00000088
lbl_80898D44:
	lwc1    $f0, 0x0068(s0)            ## 00000068
	or      a0, s0, $zero              ## a0 = 00000000
	andi    v0, v0, 0x0008             ## v0 = 00000000
	bne     v0, $zero, lbl_80898D88    
	nop
	lh      a3, 0x00B6(s0)             ## 000000B6
	mfc1    a2, $f0                    
	lw      a1, 0x005C($sp)            
	addiu   a3, a3, 0x3FFF             ## a3 = 00003FFF
	sll     a3, a3, 16                 
	jal     func_80026850              
	sra     a3, a3, 16                 
	bnel    v0, $zero, lbl_80898E64    
	lw      a0, 0x005C($sp)            
	lhu     v0, 0x0088(s0)             ## 00000088
	lwc1    $f0, 0x0068(s0)            ## 00000068
	andi    v0, v0, 0x0008             ## v0 = 00000000
lbl_80898D88:
	beq     v0, $zero, lbl_80898DE0    
	lui     $at, %hi(var_8089CB38)     ## $at = 808A0000
	mtc1    $zero, $f10                ## $f10 = 0.00
	nop
	c.le.s  $f10, $f0                  
	nop
	bc1fl   lbl_80898DC0               
	lh      v0, 0x00B6(s0)             ## 000000B6
	lh      v0, 0x00B6(s0)             ## 000000B6
	addiu   v0, v0, 0x3FFF             ## v0 = 00003FFF
	sll     v0, v0, 16                 
	beq     $zero, $zero, lbl_80898DCC 
	sra     v0, v0, 16                 
	lh      v0, 0x00B6(s0)             ## 000000B6
lbl_80898DC0:
	addiu   v0, v0, 0xC001             ## v0 = 00000000
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
lbl_80898DCC:
	lh      t6, 0x007E(s0)             ## 0000007E
	subu    v0, t6, v0                 
	sll     v0, v0, 16                 
	beq     $zero, $zero, lbl_80898DF0 
	sra     v0, v0, 16                 
lbl_80898DE0:
	lwc1    $f18, %lo(var_8089CB38)($at) 
	or      v0, $zero, $zero           ## v0 = 00000000
	mul.s   $f4, $f0, $f18             
	swc1    $f4, 0x0068(s0)            ## 00000068
lbl_80898DF0:
	bltz    v0, lbl_80898E00           
	subu    v1, $zero, v0              
	beq     $zero, $zero, lbl_80898E00 
	or      v1, v0, $zero              ## v1 = 00000000
lbl_80898E00:
	slti    $at, v1, 0x4001            
	bne     $at, $zero, lbl_80898E60   
	lui     $at, %hi(var_8089CB3C)     ## $at = 808A0000
	lwc1    $f8, %lo(var_8089CB3C)($at) 
	lwc1    $f6, 0x0068(s0)            ## 00000068
	mtc1    $zero, $f18                ## $f18 = 0.00
	lui     $at, 0x3F00                ## $at = 3F000000
	mul.s   $f10, $f6, $f8             
	swc1    $f10, 0x0068(s0)           ## 00000068
	lwc1    $f0, 0x0068(s0)            ## 00000068
	c.lt.s  $f0, $f18                  
	nop
	bc1fl   lbl_80898E54               
	mtc1    $at, $f8                   ## $f8 = 0.50
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f4                   ## $f4 = 0.50
	nop
	sub.s   $f6, $f0, $f4              
	beq     $zero, $zero, lbl_80898E60 
	swc1    $f6, 0x0068(s0)            ## 00000068
	mtc1    $at, $f8                   ## $f8 = 0.50
lbl_80898E54:
	nop
	add.s   $f10, $f0, $f8             
	swc1    $f10, 0x0068(s0)           ## 00000068
lbl_80898E60:
	lw      a0, 0x005C($sp)            
lbl_80898E64:
	jal     func_80026950              
	or      a1, s0, $zero              ## a1 = 00000000
	beq     v0, $zero, lbl_80898E80    
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f2                   ## $f2 = 100.00
	nop
	swc1    $f2, 0x003C($sp)           
lbl_80898E80:
	lui     $at, 0x428C                ## $at = 428C0000
	lwc1    $f2, 0x003C($sp)           
	mtc1    $at, $f18                  ## $f18 = 70.00
	lwc1    $f0, 0x0090(s0)            ## 00000090
	add.s   $f4, $f18, $f2             
	c.le.s  $f0, $f4                   
	nop
	bc1fl   lbl_80898ECC               
	lui     $at, 0x42B4                ## $at = 42B40000
	mtc1    $zero, $f6                 ## $f6 = 0.00
	addiu   a0, s0, 0x03F8             ## a0 = 000003F8
	lui     a1, 0xC080                 ## a1 = C0800000
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x3FC0                 ## a3 = 3FC00000
	jal     func_80064178              
	swc1    $f6, 0x0010($sp)           
	beq     $zero, $zero, lbl_80898F2C 
	lwc1    $f2, 0x03F8(s0)            ## 000003F8
	lui     $at, 0x42B4                ## $at = 42B40000
lbl_80898ECC:
	mtc1    $at, $f8                   ## $f8 = 90.00
	addiu   a0, s0, 0x03F8             ## a0 = 000003F8
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	add.s   $f10, $f8, $f2             
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x40B4                 ## a3 = 40B40000
	c.lt.s  $f10, $f0                  
	nop
	bc1fl   lbl_80898F1C               
	mtc1    $zero, $f4                 ## $f4 = 0.00
	mtc1    $zero, $f18                ## $f18 = 0.00
	addiu   a0, s0, 0x03F8             ## a0 = 000003F8
	lui     a1, 0x4080                 ## a1 = 40800000
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x3FC0                 ## a3 = 3FC00000
	jal     func_80064178              
	swc1    $f18, 0x0010($sp)          
	beq     $zero, $zero, lbl_80898F2C 
	lwc1    $f2, 0x03F8(s0)            ## 000003F8
	mtc1    $zero, $f4                 ## $f4 = 0.00
lbl_80898F1C:
	ori     a3, a3, 0xCCCD             ## a3 = 0000CCCD
	jal     func_80064178              
	swc1    $f4, 0x0010($sp)           
	lwc1    $f2, 0x03F8(s0)            ## 000003F8
lbl_80898F2C:
	mtc1    $zero, $f6                 ## $f6 = 0.00
	or      a0, s0, $zero              ## a0 = 00000000
	c.eq.s  $f6, $f2                   
	nop
	bc1tl   lbl_80898F94               
	mtc1    $zero, $f16                ## $f16 = 0.00
	mfc1    a2, $f2                    
	jal     func_8089697C              
	lw      a1, 0x005C($sp)            
	bnel    v0, $zero, lbl_80898F94    
	mtc1    $zero, $f16                ## $f16 = 0.00
	jal     func_800636C4              ## sins?
	lh      a0, 0x00B6(s0)             ## 000000B6
	lwc1    $f10, 0x03F8(s0)           ## 000003F8
	lwc1    $f8, 0x0024(s0)            ## 00000024
	lh      a0, 0x00B6(s0)             ## 000000B6
	mul.s   $f18, $f0, $f10            
	add.s   $f4, $f8, $f18             
	jal     func_80063684              ## coss?
	swc1    $f4, 0x0024(s0)            ## 00000024
	lwc1    $f10, 0x03F8(s0)           ## 000003F8
	lwc1    $f6, 0x002C(s0)            ## 0000002C
	mul.s   $f8, $f0, $f10             
	add.s   $f18, $f6, $f8             
	swc1    $f18, 0x002C(s0)           ## 0000002C
	mtc1    $zero, $f16                ## $f16 = 0.00
lbl_80898F94:
	lwc1    $f0, 0x0068(s0)            ## 00000068
	lwc1    $f2, 0x03F8(s0)            ## 000003F8
	c.le.s  $f16, $f0                  
	nop
	bc1fl   lbl_80898FB8               
	neg.s   $f14, $f0                  
	beq     $zero, $zero, lbl_80898FB8 
	mov.s   $f14, $f0                  
	neg.s   $f14, $f0                  
lbl_80898FB8:
	c.le.s  $f16, $f2                  
	nop
	bc1fl   lbl_80898FD4               
	neg.s   $f12, $f2                  
	beq     $zero, $zero, lbl_80898FD4 
	mov.s   $f12, $f2                  
	neg.s   $f12, $f2                  
lbl_80898FD4:
	c.le.s  $f12, $f14                 
	lui     $at, 0x3F40                ## $at = 3F400000
	bc1fl   lbl_80898FFC               
	lwc1    $f6, 0x0158(s0)            ## 00000158
	mtc1    $at, $f4                   ## $f4 = 0.75
	nop
	mul.s   $f10, $f0, $f4             
	beq     $zero, $zero, lbl_8089903C 
	swc1    $f10, 0x0158(s0)           ## 00000158
	lwc1    $f6, 0x0158(s0)            ## 00000158
lbl_80898FFC:
	mtc1    $zero, $f8                 ## $f8 = 0.00
	lui     $at, 0x3F40                ## $at = 3F400000
	c.lt.s  $f6, $f8                   
	nop
	bc1fl   lbl_80899030               
	mtc1    $at, $f10                  ## $f10 = 0.75
	lui     $at, 0xBF40                ## $at = BF400000
	mtc1    $at, $f18                  ## $f18 = -0.75
	nop
	mul.s   $f4, $f2, $f18             
	beq     $zero, $zero, lbl_8089903C 
	swc1    $f4, 0x0158(s0)            ## 00000158
	mtc1    $at, $f10                  ## $f10 = -0.75
lbl_80899030:
	nop
	mul.s   $f6, $f2, $f10             
	swc1    $f6, 0x0158(s0)            ## 00000158
lbl_8089903C:
	lwc1    $f8, 0x0154(s0)            ## 00000154
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	trunc.w.s $f18, $f8                  
	mfc1    v1, $f18                   
	jal     func_8008C9C0              
	sw      v1, 0x004C($sp)            
	mtc1    $zero, $f16                ## $f16 = 0.00
	lwc1    $f0, 0x0158(s0)            ## 00000158
	lw      v1, 0x004C($sp)            
	c.le.s  $f16, $f0                  
	nop
	bc1fl   lbl_8089907C               
	neg.s   $f12, $f0                  
	beq     $zero, $zero, lbl_8089907C 
	mov.s   $f12, $f0                  
	neg.s   $f12, $f0                  
lbl_8089907C:
	lwc1    $f2, 0x0154(s0)            ## 00000154
	c.le.s  $f16, $f0                  
	sub.s   $f4, $f2, $f12             
	trunc.w.s $f6, $f2                   
	trunc.w.s $f10, $f4                  
	mfc1    t0, $f6                    
	mfc1    v0, $f10                   
	bc1fl   lbl_808990AC               
	neg.s   $f12, $f0                  
	beq     $zero, $zero, lbl_808990AC 
	mov.s   $f12, $f0                  
	neg.s   $f12, $f0                  
lbl_808990AC:
	beq     v1, t0, lbl_80899104       
	slti    $at, v0, 0x000E            
	beql    $at, $zero, lbl_808990D8   
	slti    $at, v0, 0x001B            
	trunc.w.s $f8, $f12                  
	mfc1    t2, $f8                    
	nop
	addu    t3, t2, v1                 
	slti    $at, t3, 0x0010            
	beq     $at, $zero, lbl_808990F8   
	slti    $at, v0, 0x001B            
lbl_808990D8:
	beql    $at, $zero, lbl_80899108   
	lw      v1, 0x005C($sp)            
	trunc.w.s $f18, $f12                 
	mfc1    t5, $f18                   
	nop
	addu    t6, t5, v1                 
	slti    $at, t6, 0x001D            
	bne     $at, $zero, lbl_80899104   
lbl_808990F8:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x382E          ## a1 = 0000382E
lbl_80899104:
	lw      v1, 0x005C($sp)            
lbl_80899108:
	lui     $at, 0x0001                ## $at = 00010000
	or      a0, s0, $zero              ## a0 = 00000000
	addu    v1, v1, $at                
	lw      t7, 0x1DE4(v1)             ## 00001DE4
	addiu   a1, $zero, 0x3829          ## a1 = 00003829
	andi    t8, t7, 0x005F             ## t8 = 00000000
	bnel    t8, $zero, lbl_80899138    
	lh      t9, 0x0056($sp)            
	jal     func_80022FD0              
	sw      v1, 0x0028($sp)            
	lw      v1, 0x0028($sp)            
	lh      t9, 0x0056($sp)            
lbl_80899138:
	lh      t0, 0x00B6(s0)             ## 000000B6
	sw      v1, 0x0028($sp)            
	subu    a0, t9, t0                 
	sll     a0, a0, 16                 
	jal     func_80063684              ## coss?
	sra     a0, a0, 16                 
	lui     $at, %hi(var_8089CB40)     ## $at = 808A0000
	lwc1    $f4, %lo(var_8089CB40)($at) 
	lw      v1, 0x0028($sp)            
	lui     $at, 0x42C8                ## $at = 42C80000
	c.lt.s  $f0, $f4                   
	nop
	bc1tl   lbl_80899180               
	mtc1    $at, $f10                  ## $f10 = 100.00
	lw      v0, 0x03E0(s0)             ## 000003E0
	bne     v0, $zero, lbl_808991DC    
	nop
	mtc1    $at, $f10                  ## $f10 = 100.00
lbl_80899180:
	lwc1    $f6, 0x0090(s0)            ## 00000090
	lh      t1, 0x00B6(s0)             ## 000000B6
	c.le.s  $f6, $f10                  
	sh      t1, 0x0032(s0)             ## 00000032
	bc1f    lbl_808991CC               
	nop
	lw      t2, 0x1DE4(v1)             ## 00001DE4
	lw      a0, 0x005C($sp)            
	andi    t3, t2, 0x0003             ## t3 = 00000000
	bne     t3, $zero, lbl_808991CC    
	nop
	jal     func_808974B0              
	or      a1, s0, $zero              ## a1 = 00000000
	beq     v0, $zero, lbl_808991CC    
	nop
	jal     func_808991FC              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_808991EC 
	lw      $ra, 0x0024($sp)           
lbl_808991CC:
	jal     func_80897B48              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_808991EC 
	lw      $ra, 0x0024($sp)           
lbl_808991DC:
	beq     v0, $zero, lbl_808991E8    
	addiu   t4, v0, 0xFFFF             ## t4 = FFFFFFFF
	sw      t4, 0x03E0(s0)             ## 000003E0
lbl_808991E8:
	lw      $ra, 0x0024($sp)           
lbl_808991EC:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0058           ## $sp = 00000000
	jr      $ra                        
	nop


func_808991FC:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lui     a0, 0x0601                 ## a0 = 06010000
	jal     func_8008A194              
	addiu   a0, a0, 0xA3D4             ## a0 = 0600A3D4
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC080                ## $at = C0800000
	mtc1    $at, $f8                   ## $f8 = -4.00
	cvt.s.w $f6, $f4                   
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0xA3D4             ## a1 = 0600A3D4
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	swc1    $f6, 0x0010($sp)           
	lui     a2, 0x3FA0                 ## a2 = 3FA00000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
	lh      t7, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	addiu   t0, $zero, 0x0009          ## t0 = 00000009
	bne     t7, $at, lbl_80899274      
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, 0x3FE0                ## $at = 3FE00000
	mtc1    $at, $f10                  ## $f10 = 1.75
	nop
	swc1    $f10, 0x0158(s0)           ## 00000158
lbl_80899274:
	lbu     t8, 0x0464(s0)             ## 00000464
	sw      t0, 0x03CC(s0)             ## 000003CC
	addiu   a1, $zero, 0x3829          ## a1 = 00003829
	andi    t9, t8, 0xFFFB             ## t9 = 00000000
	jal     func_80022FD0              
	sb      t9, 0x0464(s0)             ## 00000464
	mtc1    $zero, $f16                ## $f16 = 0.00
	lui     a1, %hi(func_808992B8)     ## a1 = 808A0000
	addiu   a1, a1, %lo(func_808992B8) ## a1 = 808992B8
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80896800              
	swc1    $f16, 0x0068(s0)           ## 00000068
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_808992B8:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	lw      t6, 0x002C($sp)            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
	lw      t7, 0x1C44(t6)             ## 00001C44
	or      a0, s0, $zero              ## a0 = 00000000
	sw      t7, 0x0024($sp)            
	lwc1    $f6, 0x0154(s0)            ## 00000154
	swc1    $f4, 0x0068(s0)            ## 00000068
	trunc.w.s $f8, $f6                   
	mfc1    t9, $f8                    
	nop
	bne     t9, $at, lbl_80899308      
	nop
	jal     func_80022FD0              
	addiu   a1, $zero, 0x382A          ## a1 = 0000382A
lbl_80899308:
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beql    v0, $zero, lbl_80899534    
	lw      $ra, 0x001C($sp)           
	jal     func_8001A890              
	lw      a0, 0x0404(s0)             ## 00000404
	jal     func_80014254              
	or      a0, v0, $zero              ## a0 = 00000000
	lh      t0, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	or      a0, s0, $zero              ## a0 = 00000000
	bne     t0, $at, lbl_808993A8      
	nop
	jal     func_80021A28              
	addiu   a1, $zero, 0x1554          ## a1 = 00001554
	bne     v0, $zero, lbl_808993A8    
	nop
	jal     func_80897B48              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f2                   ## $f2 = 5.00
	nop
	mul.s   $f10, $f0, $f2             
	add.s   $f16, $f10, $f2            
	trunc.w.s $f18, $f16                 
	mfc1    t2, $f18                   
	jal     func_800CDCCC              ## Rand.Next() float
	sw      t2, 0x03E0(s0)             ## 000003E0
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f4                   ## $f4 = 20.00
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f8                   ## $f8 = 100.00
	mul.s   $f6, $f0, $f4              
	add.s   $f10, $f6, $f8             
	trunc.w.s $f16, $f10                 
	mfc1    t4, $f16                   
	beq     $zero, $zero, lbl_80899530 
	sh      t4, 0x03E4(s0)             ## 000003E4
lbl_808993A8:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_8089CB44)     ## $at = 808A0000
	lwc1    $f18, %lo(var_8089CB44)($at) 
	lui     $at, 0x42F0                ## $at = 42F00000
	c.lt.s  $f18, $f0                  
	nop
	bc1t    lbl_808993E8               
	nop
	lwc1    $f4, 0x0090(s0)            ## 00000090
	mtc1    $at, $f6                   ## $f6 = 120.00
	nop
	c.le.s  $f6, $f4                   
	nop
	bc1fl   lbl_80899420               
	lh      t7, 0x008A(s0)             ## 0000008A
lbl_808993E8:
	jal     func_80897B48              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f2                   ## $f2 = 5.00
	nop
	mul.s   $f8, $f0, $f2              
	add.s   $f10, $f8, $f2             
	trunc.w.s $f16, $f10                 
	mfc1    t6, $f16                   
	beq     $zero, $zero, lbl_80899530 
	sw      t6, 0x03E0(s0)             ## 000003E0
	lh      t7, 0x008A(s0)             ## 0000008A
lbl_80899420:
	jal     func_800CDCCC              ## Rand.Next() float
	sh      t7, 0x0032(s0)             ## 00000032
	lui     $at, %hi(var_8089CB48)     ## $at = 808A0000
	lwc1    $f18, %lo(var_8089CB48)($at) 
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t8, 0x0024($sp)            
	c.lt.s  $f18, $f0                  
	nop
	bc1fl   lbl_8089945C               
	lh      a0, 0x00B6(s0)             ## 000000B6
	jal     func_8089ABD4              
	lw      a1, 0x002C($sp)            
	beq     $zero, $zero, lbl_80899534 
	lw      $ra, 0x001C($sp)           
	lh      a0, 0x00B6(s0)             ## 000000B6
lbl_8089945C:
	lh      t9, 0x00B6(t8)             ## 000000B6
	lw      a1, 0x002C($sp)            
	subu    v0, t9, a0                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	bgezl   v0, lbl_80899488           
	slti    $at, v0, 0x2711            
	subu    v0, $zero, v0              
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x2711            
lbl_80899488:
	beq     $at, $zero, lbl_80899528   
	nop
	lh      v1, 0x008A(s0)             ## 0000008A
	lw      t0, 0x0024($sp)            
	subu    v0, v1, a0                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	bgez    v0, lbl_808994B8           
	or      a0, s0, $zero              ## a0 = 00000000
	subu    v0, $zero, v0              
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
lbl_808994B8:
	slti    $at, v0, 0x3E81            
	bnel    $at, $zero, lbl_808994DC   
	lw      t1, 0x066C(t0)             ## 0000066C
	sh      v1, 0x0032(s0)             ## 00000032
	jal     func_8089ABD4              
	lw      a1, 0x002C($sp)            
	beq     $zero, $zero, lbl_80899534 
	lw      $ra, 0x001C($sp)           
	lw      t1, 0x066C(t0)             ## 0000066C
lbl_808994DC:
	andi    t2, t1, 0x6010             ## t2 = 00000000
	beq     t2, $zero, lbl_80899518    
	nop
	lbu     t3, 0x010C(s0)             ## 0000010C
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t3, $zero, lbl_80899508    
	nop
	jal     func_808991FC              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80899534 
	lw      $ra, 0x001C($sp)           
lbl_80899508:
	jal     func_8089ABD4              
	lw      a1, 0x002C($sp)            
	beq     $zero, $zero, lbl_80899534 
	lw      $ra, 0x001C($sp)           
lbl_80899518:
	jal     func_808991FC              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80899534 
	lw      $ra, 0x001C($sp)           
lbl_80899528:
	jal     func_8089ABD4              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80899530:
	lw      $ra, 0x001C($sp)           
lbl_80899534:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80899544:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	mtc1    $zero, $f2                 ## $f2 = 0.00
	sw      $ra, 0x0024($sp)           
	sw      a0, 0x0028($sp)            
	lw      t6, 0x0028($sp)            
	lui     $at, 0x4040                ## $at = 40400000
	mtc1    $at, $f6                   ## $f6 = 3.00
	lwc1    $f4, 0x0154(t6)            ## 00000154
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   t7, $zero, 0x0002          ## t7 = 00000002
	sub.s   $f0, $f4, $f6              
	sw      t7, 0x0014($sp)            
	addiu   a1, a1, 0xA3D4             ## a1 = 0600A3D4
	swc1    $f2, 0x0018($sp)           
	mfc1    a3, $f0                    
	swc1    $f2, 0x0010($sp)           
	lui     a2, 0xBF80                 ## a2 = BF800000
	jal     func_8008D17C              
	addiu   a0, t6, 0x013C             ## a0 = 0000013C
	lw      a0, 0x0028($sp)            
	addiu   t8, $zero, 0x0008          ## t8 = 00000008
	lui     a1, %hi(func_808995B8)     ## a1 = 808A0000
	addiu   a1, a1, %lo(func_808995B8) ## a1 = 808995B8
	jal     func_80896800              
	sw      t8, 0x03CC(a0)             ## 000003CC
	lw      $ra, 0x0024($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_808995B8:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beql    v0, $zero, lbl_80899660    
	lw      $ra, 0x001C($sp)           
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_8089CB4C)     ## $at = 808A0000
	lwc1    $f4, %lo(var_8089CB4C)($at) 
	c.lt.s  $f4, $f0                   
	nop
	bc1f    lbl_8089960C               
	nop
	jal     func_80897B48              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80899660 
	lw      $ra, 0x001C($sp)           
lbl_8089960C:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, %hi(var_8089CB50)     ## $at = 808A0000
	lwc1    $f6, %lo(var_8089CB50)($at) 
	lw      a0, 0x0024($sp)            
	c.lt.s  $f6, $f0                   
	nop
	bc1fl   lbl_80899654               
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_808974B0              
	or      a1, s0, $zero              ## a1 = 00000000
	beql    v0, $zero, lbl_80899654    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_808991FC              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80899660 
	lw      $ra, 0x001C($sp)           
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80899654:
	jal     func_8089ABD4              
	lw      a1, 0x0024($sp)            
	lw      $ra, 0x001C($sp)           
lbl_80899660:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80899670:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lui     $at, 0xC040                ## $at = C0400000
	mtc1    $at, $f6                   ## $f6 = -3.00
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0x9530             ## a1 = 06009530
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lui     a2, 0xBF80                 ## a2 = BF800000
	lui     a3, 0x4040                 ## a3 = 40400000
	swc1    $f6, 0x0018($sp)           
	jal     func_8008D17C              
	swc1    $f4, 0x0010($sp)           
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f8                   ## $f8 = 15.00
	lui     $at, 0xC170                ## $at = C1700000
	mtc1    $at, $f10                  ## $f10 = -15.00
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	addiu   t8, $zero, 0x000B          ## t8 = 0000000B
	sw      $zero, 0x03E0(s0)          ## 000003E0
	sw      t7, 0x03D4(s0)             ## 000003D4
	sw      t8, 0x03CC(s0)             ## 000003CC
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x382F          ## a1 = 0000382F
	swc1    $f8, 0x0060(s0)            ## 00000060
	jal     func_80022FD0              
	swc1    $f10, 0x0068(s0)           ## 00000068
	lui     a1, %hi(func_80899710)     ## a1 = 808A0000
	addiu   a1, a1, %lo(func_80899710) ## a1 = 80899710
	jal     func_80896800              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80899710:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x003C($sp)            
	lw      t6, 0x03E0(s0)             ## 000003E0
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beq     t6, $zero, lbl_80899764    
	nop
	lwc1    $f0, 0x0080(s0)            ## 00000080
	lwc1    $f4, 0x0028(s0)            ## 00000028
	c.le.s  $f4, $f0                   
	nop
	bc1f    lbl_80899764               
	nop
	mtc1    $zero, $f6                 ## $f6 = 0.00
	mtc1    $zero, $f8                 ## $f8 = 0.00
	swc1    $f0, 0x0028(s0)            ## 00000028
	sw      $zero, 0x03D4(s0)          ## 000003D4
	swc1    $f6, 0x0060(s0)            ## 00000060
	swc1    $f8, 0x0068(s0)            ## 00000068
lbl_80899764:
	jal     func_8008C9C0              
	sw      a0, 0x0034($sp)            
	beq     v0, $zero, lbl_80899800    
	lw      a0, 0x0034($sp)            
	lw      t7, 0x03E0(s0)             ## 000003E0
	lw      a1, 0x003C($sp)            
	lui     t0, 0x0001                 ## t0 = 00010000
	bne     t7, $zero, lbl_808997D8    
	addu    t0, t0, a1                 
	lui     $at, 0x4188                ## $at = 41880000
	mtc1    $at, $f10                  ## $f10 = 17.00
	lui     $at, 0xC040                ## $at = C0400000
	mtc1    $at, $f16                  ## $f16 = -3.00
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	sw      t8, 0x0014($sp)            
	addiu   a1, a1, 0x8C6C             ## a1 = 06008C6C
	lui     a2, 0x4040                 ## a2 = 40400000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f10, 0x0010($sp)          
	jal     func_8008D17C              
	swc1    $f16, 0x0018($sp)          
	addiu   t9, $zero, 0x000A          ## t9 = 0000000A
	sw      t9, 0x03E0(s0)             ## 000003E0
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x382F          ## a1 = 0000382F
	beq     $zero, $zero, lbl_80899804 
	lw      t2, 0x003C($sp)            
lbl_808997D8:
	lw      t0, 0x1DE4(t0)             ## 00001DE4
	andi    t1, t0, 0x0001             ## t1 = 00000000
	beq     t1, $zero, lbl_808997F8    
	nop
	jal     func_8089ABD4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80899804 
	lw      t2, 0x003C($sp)            
lbl_808997F8:
	jal     func_80897B48              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80899800:
	lw      t2, 0x003C($sp)            
lbl_80899804:
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t3, 0x009C(t2)             ## 0000009C
	andi    t4, t3, 0x005F             ## t4 = 00000000
	bnel    t4, $zero, lbl_80899824    
	lw      $ra, 0x002C($sp)           
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3829          ## a1 = 00003829
	lw      $ra, 0x002C($sp)           
lbl_80899824:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_80899834:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	lhu     t6, 0x0088(a3)             ## 00000088
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	andi    t7, t6, 0x0001             ## t7 = 00000000
	beq     t7, $zero, lbl_80899898    
	lui     a1, 0x0601                 ## a1 = 06010000
	mtc1    $zero, $f2                 ## $f2 = 0.00
	lwc1    $f0, 0x0060(a3)            ## 00000060
	lui     $at, 0xC080                ## $at = C0800000
	c.eq.s  $f2, $f0                   
	nop
	bc1tl   lbl_80899890               
	swc1    $f2, 0x0068(a3)            ## 00000068
	mtc1    $at, $f4                   ## $f4 = -4.00
	nop
	c.eq.s  $f4, $f0                   
	nop
	bc1fl   lbl_8089989C               
	mtc1    $zero, $f2                 ## $f2 = 0.00
	swc1    $f2, 0x0068(a3)            ## 00000068
lbl_80899890:
	beq     $zero, $zero, lbl_808998A0 
	sw      $zero, 0x03D4(a3)          ## 000003D4
lbl_80899898:
	mtc1    $zero, $f2                 ## $f2 = 0.00
lbl_8089989C:
	sw      t8, 0x03D4(a3)             ## 000003D4
lbl_808998A0:
	lbu     t9, 0x0400(a3)             ## 00000400
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	addiu   t0, $zero, 0x0024          ## t0 = 00000024
	bne     t9, $at, lbl_808998BC      
	addiu   a1, a1, 0x57F8             ## a1 = 060157F8
	beq     $zero, $zero, lbl_808998CC 
	sh      t0, 0x03E6(a3)             ## 000003E6
lbl_808998BC:
	mfc1    a2, $f2                    
	jal     func_8008D278              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
lbl_808998CC:
	or      a0, a3, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x389E          ## a1 = 0000389E
	jal     func_80022FD0              
	sw      a3, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	addiu   t1, $zero, 0x000E          ## t1 = 0000000E
	lui     a1, %hi(func_80899904)     ## a1 = 808A0000
	addiu   a1, a1, %lo(func_80899904) ## a1 = 80899904
	jal     func_80896800              
	sw      t1, 0x03CC(a0)             ## 000003CC
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80899904:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	lhu     v0, 0x0088(a2)             ## 00000088
	andi    t6, v0, 0x0002             ## t6 = 00000000
	beql    t6, $zero, lbl_80899934    
	andi    t7, v0, 0x0001             ## t7 = 00000000
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lhu     v0, 0x0088(a2)             ## 00000088
	swc1    $f4, 0x0068(a2)            ## 00000068
	andi    t7, v0, 0x0001             ## t7 = 00000000
lbl_80899934:
	beql    t7, $zero, lbl_8089996C    
	lbu     t8, 0x0114(a2)             ## 00000114
	lwc1    $f0, 0x0068(a2)            ## 00000068
	mtc1    $zero, $f6                 ## $f6 = 0.00
	lui     $at, %hi(var_8089CB54)     ## $at = 808A0000
	c.lt.s  $f0, $f6                   
	nop
	bc1fl   lbl_80899968               
	sw      $zero, 0x03D4(a2)          ## 000003D4
	lwc1    $f8, %lo(var_8089CB54)($at) 
	add.s   $f10, $f0, $f8             
	swc1    $f10, 0x0068(a2)           ## 00000068
	sw      $zero, 0x03D4(a2)          ## 000003D4
lbl_80899968:
	lbu     t8, 0x0114(a2)             ## 00000114
lbl_8089996C:
	bnel    t8, $zero, lbl_80899B38    
	lw      $ra, 0x0014($sp)           
	lhu     t9, 0x0088(a2)             ## 00000088
	andi    t0, t9, 0x0001             ## t0 = 00000000
	beql    t0, $zero, lbl_80899B38    
	lw      $ra, 0x0014($sp)           
	lbu     t1, 0x00AF(a2)             ## 000000AF
	bnel    t1, $zero, lbl_808999A4    
	lh      t2, 0x001C(a2)             ## 0000001C
	jal     func_8089B4F0              
	or      a0, a2, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80899B38 
	lw      $ra, 0x0014($sp)           
	lh      t2, 0x001C(a2)             ## 0000001C
lbl_808999A4:
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	or      a0, a3, $zero              ## a0 = 00000000
	bne     t2, $at, lbl_808999CC      
	or      a1, a2, $zero              ## a1 = 00000000
	sw      a2, 0x0018($sp)            
	jal     func_80897650              
	sw      a3, 0x001C($sp)            
	lw      a2, 0x0018($sp)            
	bne     v0, $zero, lbl_80899B34    
	lw      a3, 0x001C($sp)            
lbl_808999CC:
	lui     t3, %hi(var_8089C9A4)      ## t3 = 808A0000
	lh      t3, %lo(var_8089C9A4)(t3)  
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	or      a0, a2, $zero              ## a0 = 00000000
	beql    t3, $at, lbl_808999F8      
	lh      a1, 0x00B6(a2)             ## 000000B6
	jal     func_80897584              
	or      a1, a3, $zero              ## a1 = 00000000
	beq     $zero, $zero, lbl_80899B38 
	lw      $ra, 0x0014($sp)           
	lh      a1, 0x00B6(a2)             ## 000000B6
lbl_808999F8:
	lh      t4, 0x007E(a2)             ## 0000007E
	lh      v1, 0x001C(a2)             ## 0000001C
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	subu    v0, t4, a1                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	bgez    v0, lbl_80899A24           
	or      a0, a3, $zero              ## a0 = 00000000
	subu    v0, $zero, v0              
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
lbl_80899A24:
	bnel    v1, $at, lbl_80899A88      
	or      a1, a2, $zero              ## a1 = 00000000
	lhu     t5, 0x0088(a2)             ## 00000088
	andi    t6, t5, 0x0008             ## t6 = 00000000
	beql    t6, $zero, lbl_80899A88    
	or      a1, a2, $zero              ## a1 = 00000000
	bltz    v0, lbl_80899A4C           
	subu    v1, $zero, v0              
	beq     $zero, $zero, lbl_80899A4C 
	or      v1, v0, $zero              ## v1 = 00000000
lbl_80899A4C:
	slti    $at, v1, 0x2EE0            
	beq     $at, $zero, lbl_80899A84   
	lui     $at, 0x42B4                ## $at = 42B40000
	mtc1    $at, $f18                  ## $f18 = 90.00
	lwc1    $f16, 0x0090(a2)           ## 00000090
	c.lt.s  $f16, $f18                 
	nop
	bc1fl   lbl_80899A88               
	or      a1, a2, $zero              ## a1 = 00000000
	sh      a1, 0x0032(a2)             ## 00000032
	jal     func_8089AA00              
	or      a0, a2, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80899B38 
	lw      $ra, 0x0014($sp)           
lbl_80899A84:
	or      a1, a2, $zero              ## a1 = 00000000
lbl_80899A88:
	sw      a2, 0x0018($sp)            
	jal     func_8089C408              
	sw      a3, 0x001C($sp)            
	lw      a2, 0x0018($sp)            
	bne     v0, $zero, lbl_80899B34    
	lw      a3, 0x001C($sp)            
	lh      t7, 0x001C(a2)             ## 0000001C
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	or      a0, a2, $zero              ## a0 = 00000000
	beql    t7, $at, lbl_80899AC8      
	lui     $at, 0x42C8                ## $at = 42C80000
	jal     func_80897584              
	or      a1, a3, $zero              ## a1 = 00000000
	beq     $zero, $zero, lbl_80899B38 
	lw      $ra, 0x0014($sp)           
	lui     $at, 0x42C8                ## $at = 42C80000
lbl_80899AC8:
	mtc1    $at, $f4                   ## $f4 = 100.00
	lwc1    $f6, 0x0090(a2)            ## 00000090
	lui     t8, 0x0001                 ## t8 = 00010000
	addu    t8, t8, a3                 
	c.le.s  $f6, $f4                   
	nop
	bc1fl   lbl_80899B2C               
	or      a0, a2, $zero              ## a0 = 00000000
	lw      t8, 0x1DE4(t8)             ## 00011DE4
	or      a0, a3, $zero              ## a0 = 00000000
	or      a1, a2, $zero              ## a1 = 00000000
	andi    t9, t8, 0x0003             ## t9 = 00000000
	beql    t9, $zero, lbl_80899B2C    
	or      a0, a2, $zero              ## a0 = 00000000
	sw      a2, 0x0018($sp)            
	jal     func_808974B0              
	sw      a3, 0x001C($sp)            
	lw      a2, 0x0018($sp)            
	beq     v0, $zero, lbl_80899B28    
	lw      a3, 0x001C($sp)            
	jal     func_808991FC              
	or      a0, a2, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80899B38 
	lw      $ra, 0x0014($sp)           
lbl_80899B28:
	or      a0, a2, $zero              ## a0 = 00000000
lbl_80899B2C:
	jal     func_80897584              
	or      a1, a3, $zero              ## a1 = 00000000
lbl_80899B34:
	lw      $ra, 0x0014($sp)           
lbl_80899B38:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80899B44:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x0044($sp)            
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     a0, 0x0601                 ## a0 = 06010000
	addiu   a0, a0, 0x19F4             ## a0 = 060119F4
	jal     func_8008A194              
	swc1    $f0, 0x003C($sp)           
	lw      t6, 0x03CC(s0)             ## 000003CC
	mtc1    v0, $f4                    ## $f4 = 0.00
	lwc1    $f0, 0x003C($sp)           
	slti    $at, t6, 0x0011            
	beq     $at, $zero, lbl_80899B90   
	cvt.s.w $f2, $f4                   
	lui     $at, 0xC080                ## $at = C0800000
	mtc1    $at, $f0                   ## $f0 = -4.00
	nop
lbl_80899B90:
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   t7, $zero, 0x0002          ## t7 = 00000002
	sw      t7, 0x0014($sp)            
	addiu   a1, a1, 0x19F4             ## a1 = 060119F4
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lui     a2, 0x4000                 ## a2 = 40000000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	swc1    $f2, 0x0010($sp)           
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
	mtc1    $zero, $f6                 ## $f6 = 0.00
	addiu   t8, $zero, 0x0012          ## t8 = 00000012
	sw      t8, 0x03CC(s0)             ## 000003CC
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	lh      a1, 0x03EE(s0)             ## 000003EE
	swc1    $f6, 0x0068(s0)            ## 00000068
	jal     func_80896E68              
	sw      a0, 0x0034($sp)            
	lw      a0, 0x0034($sp)            
	sh      v0, 0x03EE(s0)             ## 000003EE
	lw      a3, 0x0044($sp)            
	lh      a1, 0x03EE(s0)             ## 000003EE
	jal     func_80897030              
	lh      a2, 0x03F0(s0)             ## 000003F0
	lh      t9, 0x00B6(s0)             ## 000000B6
	lui     a1, %hi(func_80899C20)     ## a1 = 808A0000
	sh      v0, 0x03F2(s0)             ## 000003F2
	addiu   a1, a1, %lo(func_80899C20) ## a1 = 80899C20
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80896800              
	sh      t9, 0x0032(s0)             ## 00000032
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_80899C20:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x0034($sp)            
	lh      t6, 0x03F2(s0)             ## 000003F2
	lui     t8, %hi(var_8089C880)      ## t8 = 808A0000
	addiu   t8, t8, %lo(var_8089C880)  ## t8 = 8089C880
	sll     t7, t6,  2                 
	subu    t7, t7, t6                 
	sll     t7, t7,  2                 
	addu    a1, t7, t8                 
	jal     func_8002140C              
	or      a0, s0, $zero              ## a0 = 00000000
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addu    v1, v0, $at                
	sll     a1, v1, 16                 
	sh      v1, 0x002E($sp)            
	sra     a1, a1, 16                 
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	addiu   a3, $zero, 0x03E8          ## a3 = 000003E8
	jal     func_80064508              
	sw      $zero, 0x0010($sp)         
	lh      t9, 0x0032(s0)             ## 00000032
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sh      t9, 0x00B6(s0)             ## 000000B6
	beq     v0, $zero, lbl_80899CB8    
	lh      t0, 0x002E($sp)            
	addiu   $at, $zero, 0x8000         ## $at = FFFF8000
	addu    t1, t0, $at                
	sh      t1, 0x0032(s0)             ## 00000032
	lw      a1, 0x0034($sp)            
	jal     func_80899F84              
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	sh      t2, 0x03EA(s0)             ## 000003EA
lbl_80899CB8:
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80899CCC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	sw      $zero, 0x03D4(a3)          ## 000003D4
	lui     a1, %hi(var_8089CA70)      ## a1 = 808A0000
	lw      a1, %lo(var_8089CA70)(a1)  
	sw      a3, 0x0018($sp)            
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	jal     func_8008D21C              
	lui     a2, 0xC080                 ## a2 = C0800000
	lw      a0, 0x0018($sp)            
	mtc1    $zero, $f0                 ## $f0 = 0.00
	addiu   t6, $zero, 0x0014          ## t6 = 00000014
	lui     a1, %hi(func_80899D2C)     ## a1 = 808A0000
	addiu   a1, a1, %lo(func_80899D2C) ## a1 = 80899D2C
	sw      t6, 0x03CC(a0)             ## 000003CC
	swc1    $f0, 0x0068(a0)            ## 00000068
	swc1    $f0, 0x03FC(a0)            ## 000003FC
	jal     func_80896800              
	swc1    $f0, 0x03F8(a0)            ## 000003F8
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80899D2C:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s0, 0x0028($sp)            
	mtc1    $zero, $f2                 ## $f2 = 0.00
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x004C($sp)            
	lui     $at, 0x43C8                ## $at = 43C80000
	mtc1    $at, $f4                   ## $f4 = 400.00
	mfc1    a1, $f2                    
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x3F00                 ## a3 = 3F000000
	swc1    $f2, 0x0010($sp)           
	jal     func_80064178              
	swc1    $f4, 0x0040($sp)           
	lh      a1, 0x008A(s0)             ## 0000008A
	ori     $at, $zero, 0x8000         ## $at = 00008000
	sw      $zero, 0x0010($sp)         
	addu    a1, a1, $at                
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	addiu   a0, s0, 0x00B6             ## a0 = 000000B6
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	jal     func_80064508              
	addiu   a3, $zero, 0x0FA0          ## a3 = 00000FA0
	lui     $at, 0x43D2                ## $at = 43D20000
	mtc1    $at, $f8                   ## $f8 = 420.00
	lwc1    $f6, 0x0028(s0)            ## 00000028
	lui     $at, 0x437A                ## $at = 437A0000
	c.le.s  $f8, $f6                   
	nop
	bc1fl   lbl_80899DC0               
	lwc1    $f16, 0x0090(s0)           ## 00000090
	mtc1    $at, $f10                  ## $f10 = 250.00
	nop
	swc1    $f10, 0x0040($sp)          
	lwc1    $f16, 0x0090(s0)           ## 00000090
lbl_80899DC0:
	lwc1    $f18, 0x0040($sp)          
	c.lt.s  $f16, $f18                 
	nop
	bc1fl   lbl_80899E04               
	lw      t8, 0x03D4(s0)             ## 000003D4
	lw      t6, 0x03D4(s0)             ## 000003D4
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beql    t6, $at, lbl_80899E04      
	lw      t8, 0x03D4(s0)             ## 000003D4
	lh      t7, 0x0032(s0)             ## 00000032
	or      a0, s0, $zero              ## a0 = 00000000
	sh      t7, 0x00B6(s0)             ## 000000B6
	jal     func_80899B44              
	lw      a1, 0x004C($sp)            
	beq     $zero, $zero, lbl_80899F74 
	lw      $ra, 0x002C($sp)           
	lw      t8, 0x03D4(s0)             ## 000003D4
lbl_80899E04:
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lw      a0, 0x004C($sp)            
	beql    t8, $at, lbl_80899E20      
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8089C634              
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
lbl_80899E20:
	jal     func_8008C9C0              
	sw      a0, 0x0034($sp)            
	mtc1    $zero, $f2                 ## $f2 = 0.00
	beql    v0, $zero, lbl_80899F4C    
	lw      t7, 0x004C($sp)            
	lw      t9, 0x03D4(s0)             ## 000003D4
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	addiu   t0, t9, 0x0001             ## t0 = 00000001
	slti    $at, t0, 0x0003            
	bne     $at, $zero, lbl_80899E50   
	sw      t0, 0x03D4(s0)             ## 000003D4
	sw      $zero, 0x03D4(s0)          ## 000003D4
lbl_80899E50:
	lwc1    $f4, 0x03F8(s0)            ## 000003F8
	c.eq.s  $f2, $f4                   
	nop
	bc1fl   lbl_80899E7C               
	sw      t2, 0x03D4(s0)             ## 000003D4
	lwc1    $f6, 0x03FC(s0)            ## 000003FC
	c.eq.s  $f2, $f6                   
	nop
	bc1tl   lbl_80899E80               
	lw      t3, 0x03D4(s0)             ## 000003D4
	sw      t2, 0x03D4(s0)             ## 000003D4
lbl_80899E7C:
	lw      t3, 0x03D4(s0)             ## 000003D4
lbl_80899E80:
	lui     a0, %hi(var_8089CA70)      ## a0 = 808A0000
	sll     t4, t3,  2                 
	addu    a0, a0, t4                 
	jal     func_8008A194              
	lw      a0, %lo(var_8089CA70)(a0)  
	lw      v1, 0x03D4(s0)             ## 000003D4
	mtc1    v0, $f8                    ## $f8 = 0.00
	mtc1    $zero, $f2                 ## $f2 = 0.00
	beq     v1, $zero, lbl_80899EC4    
	cvt.s.w $f0, $f8                   
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beq     v1, $at, lbl_80899ED8      
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beql    v1, $at, lbl_80899F08      
	lwc1    $f8, 0x0080(s0)            ## 00000080
	beq     $zero, $zero, lbl_80899F1C 
	sll     t5, v1,  2                 
lbl_80899EC4:
	lwc1    $f10, 0x0080(s0)           ## 00000080
	swc1    $f2, 0x0060(s0)            ## 00000060
	lw      v1, 0x03D4(s0)             ## 000003D4
	beq     $zero, $zero, lbl_80899F18 
	swc1    $f10, 0x0028(s0)           ## 00000028
lbl_80899ED8:
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f18                  ## $f18 = 10.00
	lwc1    $f16, 0x03FC(s0)           ## 000003FC
	lwc1    $f6, 0x03F8(s0)            ## 000003F8
	swc1    $f2, 0x03F8(s0)            ## 000003F8
	add.s   $f4, $f16, $f18            
	swc1    $f2, 0x03FC(s0)            ## 000003FC
	lw      v1, 0x03D4(s0)             ## 000003D4
	swc1    $f6, 0x0068(s0)            ## 00000068
	beq     $zero, $zero, lbl_80899F18 
	swc1    $f4, 0x0060(s0)            ## 00000060
	lwc1    $f8, 0x0080(s0)            ## 00000080
lbl_80899F08:
	lui     $at, 0x4040                ## $at = 40400000
	mtc1    $at, $f0                   ## $f0 = 3.00
	lw      v1, 0x03D4(s0)             ## 000003D4
	swc1    $f8, 0x0028(s0)            ## 00000028
lbl_80899F18:
	sll     t5, v1,  2                 
lbl_80899F1C:
	lui     a1, %hi(var_8089CA70)      ## a1 = 808A0000
	addu    a1, a1, t5                 
	mfc1    a3, $f2                    
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sw      t6, 0x0014($sp)            
	lw      a1, %lo(var_8089CA70)(a1)  
	lw      a0, 0x0034($sp)            
	lui     a2, 0x3FC0                 ## a2 = 3FC00000
	swc1    $f0, 0x0010($sp)           
	jal     func_8008D17C              
	swc1    $f2, 0x0018($sp)           
	lw      t7, 0x004C($sp)            
lbl_80899F4C:
	lui     t8, 0x0001                 ## t8 = 00010000
	or      a0, s0, $zero              ## a0 = 00000000
	addu    t8, t8, t7                 
	lw      t8, 0x1DE4(t8)             ## 00011DE4
	andi    t9, t8, 0x005F             ## t9 = 00000000
	bnel    t9, $zero, lbl_80899F74    
	lw      $ra, 0x002C($sp)           
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3829          ## a1 = 00003829
	lw      $ra, 0x002C($sp)           
lbl_80899F74:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000
	jr      $ra                        
	nop


func_80899F84:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	sw      $zero, 0x03D4(s0)          ## 000003D4
	lui     a1, %hi(var_8089CA70)      ## a1 = 808A0000
	lw      a1, %lo(var_8089CA70)(a1)  
	jal     func_8008D1C4              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	addiu   t6, $zero, 0x0013          ## t6 = 00000013
	sw      t6, 0x03CC(s0)             ## 000003CC
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	lh      a1, 0x03EE(s0)             ## 000003EE
	jal     func_80896E68              
	sw      a0, 0x0024($sp)            
	lw      a0, 0x0024($sp)            
	sh      v0, 0x03EE(s0)             ## 000003EE
	lw      a3, 0x002C($sp)            
	lh      a1, 0x03EE(s0)             ## 000003EE
	jal     func_80897030              
	lh      a2, 0x03F0(s0)             ## 000003F0
	lui     a1, %hi(func_8089A004)     ## a1 = 808A0000
	sh      v0, 0x03F2(s0)             ## 000003F2
	addiu   a1, a1, %lo(func_8089A004) ## a1 = 8089A004
	jal     func_80896800              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089A004:
	addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
	sw      s1, 0x0038($sp)            
	sw      s0, 0x0034($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x003C($sp)           
	sdc1    $f20, 0x0028($sp)          
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f4                   ## $f4 = 1.00
	lui     t8, %hi(var_8089C880)      ## t8 = 808A0000
	lui     $at, %hi(var_8089CB58)     ## $at = 808A0000
	swc1    $f4, 0x0070($sp)           
	lh      t6, 0x03F2(s0)             ## 000003F2
	addiu   t8, t8, %lo(var_8089C880)  ## t8 = 8089C880
	lwc1    $f20, %lo(var_8089CB58)($at) 
	sll     t7, t6,  2                 
	subu    t7, t7, t6                 
	sll     t7, t7,  2                 
	addu    a1, t7, t8                 
	jal     func_80021528              
	or      a0, s0, $zero              ## a0 = 00000000
	swc1    $f0, 0x0074($sp)           
	lw      t9, 0x03D4(s0)             ## 000003D4
	lui     t0, 0x0001                 ## t0 = 00010000
	addu    t0, t0, s1                 
	sw      t9, 0x0054($sp)            
	lw      t0, 0x1DE4(t0)             ## 00011DE4
	or      a0, s0, $zero              ## a0 = 00000000
	andi    t1, t0, 0x005F             ## t1 = 00000000
	bnel    t1, $zero, lbl_8089A08C    
	lui     $at, 0x43D2                ## $at = 43D20000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3829          ## a1 = 00003829
	lui     $at, 0x43D2                ## $at = 43D20000
lbl_8089A08C:
	mtc1    $at, $f8                   ## $f8 = 420.00
	lwc1    $f6, 0x0028(s0)            ## 00000028
	lui     $at, 0x438C                ## $at = 438C0000
	or      a0, s0, $zero              ## a0 = 00000000
	c.le.s  $f8, $f6                   
	nop
	bc1fl   lbl_8089A0B8               
	lh      t2, 0x03F2(s0)             ## 000003F2
	mtc1    $at, $f20                  ## $f20 = 280.00
	nop
	lh      t2, 0x03F2(s0)             ## 000003F2
lbl_8089A0B8:
	lui     t4, %hi(var_8089C880)      ## t4 = 808A0000
	addiu   t4, t4, %lo(var_8089C880)  ## t4 = 8089C880
	sll     t3, t2,  2                 
	subu    t3, t3, t2                 
	sll     t3, t3,  2                 
	jal     func_8002140C              
	addu    a1, t3, t4                 
	sh      v0, 0x005A($sp)            
	lw      a3, 0x03D4(s0)             ## 000003D4
	lui     v1, %hi(var_8089D2F0)      ## v1 = 808A0000
	lh      t5, 0x005A($sp)            
	beq     a3, $zero, lbl_8089A108    
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beq     a3, $at, lbl_8089A28C      
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beql    a3, $at, lbl_8089A3F0      
	lwc1    $f6, 0x014C(s0)            ## 0000014C
	beq     $zero, $zero, lbl_8089A410 
	lw      t3, 0x0054($sp)            
lbl_8089A108:
	sh      t5, 0x0032(s0)             ## 00000032
	lh      t6, 0x005A($sp)            
	addiu   v1, v1, %lo(var_8089D2F0)  ## v1 = 8089D2F0
	or      a0, s0, $zero              ## a0 = 00000000
	addu    t7, t6, $at                
	sh      t7, 0x00B6(s0)             ## 000000B6
	sw      $zero, 0x0000(v1)          ## 8089D2F0
	lh      t8, 0x03EE(s0)             ## 000003EE
	or      a1, s1, $zero              ## a1 = 00000000
	lui     a2, 0x42D6                 ## a2 = 42D60000
	jal     func_8089680C              
	sh      t8, 0x03F0(s0)             ## 000003F0
	sltiu   v1, v0, 0x0001             
	sw      v1, 0x0050($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, s1, $zero              ## a1 = 00000000
	jal     func_8089680C              
	lui     a2, 0x435C                 ## a2 = 435C0000
	lw      v1, 0x0050($sp)            
	lw      t1, 0x03D4(s0)             ## 000003D4
	sltiu   t9, v0, 0x0001             
	sll     t0, t9,  1                 
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	or      v1, v1, t0                 ## v1 = 00000000
	addiu   t2, t1, 0x0001             ## t2 = 00000001
	beq     v1, $at, lbl_8089A188      
	sw      t2, 0x03D4(s0)             ## 000003D4
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     v1, $at, lbl_8089A1C4      
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bnel    v1, $at, lbl_8089A1E4      
	lui     $at, 0x42D6                ## $at = 42D60000
lbl_8089A188:
	lhu     t3, 0x0088(s0)             ## 00000088
	lui     $at, 0x4140                ## $at = 41400000
	mtc1    $at, $f10                  ## $f10 = 12.00
	andi    t4, t3, 0x0008             ## t4 = 00000000
	beq     t4, $zero, lbl_8089A1B4    
	swc1    $f10, 0x0060(s0)           ## 00000060
	lui     $at, 0x4100                ## $at = 41000000
	mtc1    $at, $f18                  ## $f18 = 8.00
	lwc1    $f16, 0x0060(s0)           ## 00000060
	add.s   $f4, $f16, $f18            
	swc1    $f4, 0x0060(s0)            ## 00000060
lbl_8089A1B4:
	lui     $at, 0x4100                ## $at = 41000000
	mtc1    $at, $f6                   ## $f6 = 8.00
	beq     $zero, $zero, lbl_8089A284 
	swc1    $f6, 0x0068(s0)            ## 00000068
lbl_8089A1C4:
	lui     $at, 0x4170                ## $at = 41700000
	mtc1    $at, $f8                   ## $f8 = 15.00
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f10                  ## $f10 = 20.00
	swc1    $f8, 0x0060(s0)            ## 00000060
	beq     $zero, $zero, lbl_8089A284 
	swc1    $f10, 0x0068(s0)           ## 00000068
	lui     $at, 0x42D6                ## $at = 42D60000
lbl_8089A1E4:
	mtc1    $at, $f16                  ## $f16 = 107.00
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f18                  ## $f18 = 10.00
	lui     $at, 0x4100                ## $at = 41000000
	mtc1    $at, $f4                   ## $f4 = 8.00
	lui     $at, %hi(var_8089CB5C)     ## $at = 808A0000
	lwc1    $f6, %lo(var_8089CB5C)($at) 
	addiu   v1, $zero, 0x0014          ## v1 = 00000014
	add.s   $f20, $f16, $f18           
	add.s   $f0, $f4, $f6              
lbl_8089A20C:
	mfc1    a2, $f20                   
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, s1, $zero              ## a1 = 00000000
	sw      v1, 0x004C($sp)            
	jal     func_8089680C              
	swc1    $f0, 0x0060($sp)           
	lw      v1, 0x004C($sp)            
	bne     v0, $zero, lbl_8089A244    
	lwc1    $f0, 0x0060($sp)           
	lui     $at, 0x4140                ## $at = 41400000
	mtc1    $at, $f8                   ## $f8 = 12.00
	swc1    $f0, 0x0068(s0)            ## 00000068
	beq     $zero, $zero, lbl_8089A264 
	swc1    $f8, 0x0060(s0)            ## 00000060
lbl_8089A244:
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f18                  ## $f18 = 10.00
	lui     $at, %hi(var_8089CB60)     ## $at = 808A0000
	lwc1    $f16, %lo(var_8089CB60)($at) 
	add.s   $f20, $f20, $f18           
	addiu   v1, v1, 0xFFFF             ## v1 = FFFFFFFF
	bgez    v1, lbl_8089A20C           
	add.s   $f0, $f0, $f16             
lbl_8089A264:
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lwc1    $f18, 0x0068(s0)           ## 00000068
	c.eq.s  $f0, $f18                  
	nop
	bc1f    lbl_8089A284               
	nop
	jal     func_80899CCC              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8089A284:
	beq     $zero, $zero, lbl_8089A40C 
	lw      a3, 0x03D4(s0)             ## 000003D4
lbl_8089A28C:
	lhu     v0, 0x0088(s0)             ## 00000088
	or      a0, s0, $zero              ## a0 = 00000000
	andi    t5, v0, 0x0002             ## t5 = 00000000
	bne     t5, $zero, lbl_8089A2A8    
	andi    t6, v0, 0x0001             ## t6 = 00000000
	beq     t6, $zero, lbl_8089A3AC    
	lh      a1, 0x005A($sp)            
lbl_8089A2A8:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3828          ## a1 = 00003828
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lwc1    $f4, 0x0080(s0)            ## 00000080
	lui     $at, 0x4000                ## $at = 40000000
	swc1    $f0, 0x0060(s0)            ## 00000060
	swc1    $f4, 0x0028(s0)            ## 00000028
	swc1    $f0, 0x0068(s0)            ## 00000068
	mtc1    $at, $f6                   ## $f6 = 2.00
	addiu   t7, $zero, 0x0002          ## t7 = 00000002
	sw      t7, 0x0010($sp)            
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0018($sp)         
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a2, s0, 0x04E0             ## a2 = 000004E0
	lui     a3, 0x4040                 ## a3 = 40400000
	jal     func_800260E8              
	swc1    $f6, 0x0014($sp)           
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f8                   ## $f8 = 2.00
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	sw      t8, 0x0010($sp)            
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a2, s0, 0x04D4             ## a2 = 000004D4
	lui     a3, 0x4040                 ## a3 = 40400000
	sw      $zero, 0x0018($sp)         
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0020($sp)         
	jal     func_800260E8              
	swc1    $f8, 0x0014($sp)           
	lwc1    $f10, 0x0090(s0)           ## 00000090
	lwc1    $f16, 0x0074($sp)          
	lui     $at, 0x42A0                ## $at = 42A00000
	c.le.s  $f20, $f10                 
	nop
	bc1fl   lbl_8089A35C               
	mtc1    $at, $f18                  ## $f18 = 80.00
	jal     func_80899CCC              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089A39C 
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f18                  ## $f18 = 2.00
lbl_8089A35C:
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	c.lt.s  $f16, $f18                 
	nop
	bc1fl   lbl_8089A39C               
	lui     $at, 0x4000                ## $at = 40000000
	lh      a1, 0x03EE(s0)             ## 000003EE
	jal     func_80896E68              
	sw      a0, 0x0044($sp)            
	lw      a0, 0x0044($sp)            
	sh      v0, 0x03EE(s0)             ## 000003EE
	lh      a1, 0x03EE(s0)             ## 000003EE
	lh      a2, 0x03F0(s0)             ## 000003F0
	jal     func_80897030              
	or      a3, s1, $zero              ## a3 = 00000000
	sh      v0, 0x03F2(s0)             ## 000003F2
	lui     $at, 0x4000                ## $at = 40000000
lbl_8089A39C:
	mtc1    $at, $f4                   ## $f4 = 2.00
	sw      $zero, 0x03D4(s0)          ## 000003D4
	beq     $zero, $zero, lbl_8089A3E4 
	swc1    $f4, 0x0070($sp)           
lbl_8089A3AC:
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	addiu   a3, $zero, 0x0FA0          ## a3 = 00000FA0
	jal     func_80064508              
	sw      $zero, 0x0010($sp)         
	lh      t9, 0x0032(s0)             ## 00000032
	ori     $at, $zero, 0x8000         ## $at = 00008000
	lui     v1, %hi(var_8089D2F0)      ## v1 = 808A0000
	addu    t0, t9, $at                
	addiu   v1, v1, %lo(var_8089D2F0)  ## v1 = 8089D2F0
	sh      t0, 0x00B6(s0)             ## 000000B6
	lw      t1, 0x0000(v1)             ## 8089D2F0
	addiu   t2, t1, 0x0001             ## t2 = 00000001
	sw      t2, 0x0000(v1)             ## 8089D2F0
lbl_8089A3E4:
	beq     $zero, $zero, lbl_8089A40C 
	lw      a3, 0x03D4(s0)             ## 000003D4
	lwc1    $f6, 0x014C(s0)            ## 0000014C
lbl_8089A3F0:
	lwc1    $f8, 0x0154(s0)            ## 00000154
	c.eq.s  $f6, $f8                   
	nop
	bc1fl   lbl_8089A410               
	lw      t3, 0x0054($sp)            
	sw      $zero, 0x03D4(s0)          ## 000003D4
	or      a3, $zero, $zero           ## a3 = 00000000
lbl_8089A40C:
	lw      t3, 0x0054($sp)            
lbl_8089A410:
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	sll     t4, a3,  2                 
	beq     t3, a3, lbl_8089A430       
	lui     a1, %hi(var_8089CA70)      ## a1 = 808A0000
	addu    a1, a1, t4                 
	lw      a1, %lo(var_8089CA70)(a1)  
	jal     func_8008D278              
	lw      a2, 0x0070($sp)            
lbl_8089A430:
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lw      $ra, 0x003C($sp)           
	ldc1    $f20, 0x0028($sp)          
	lw      s0, 0x0034($sp)            
	lw      s1, 0x0038($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0078           ## $sp = 00000000


func_8089A450:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0x366C             ## a1 = 0601366C
	jal     func_8008D1C4              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lh      t6, 0x0032(s0)             ## 00000032
	mtc1    $zero, $f4                 ## $f4 = 0.00
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addiu   t8, $zero, 0x0015          ## t8 = 00000015
	addu    t7, t6, $at                
	sh      t7, 0x0032(s0)             ## 00000032
	sw      t8, 0x03CC(s0)             ## 000003CC
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	lh      a1, 0x03EE(s0)             ## 000003EE
	swc1    $f4, 0x0068(s0)            ## 00000068
	jal     func_80896E68              
	sw      a0, 0x0024($sp)            
	lw      a0, 0x0024($sp)            
	sh      v0, 0x03EE(s0)             ## 000003EE
	lw      a3, 0x002C($sp)            
	lh      a1, 0x03EE(s0)             ## 000003EE
	jal     func_80897030              
	lh      a2, 0x03F0(s0)             ## 000003F0
	lui     a1, %hi(func_8089A4E4)     ## a1 = 808A0000
	sh      v0, 0x03F2(s0)             ## 000003F2
	addiu   a1, a1, %lo(func_8089A4E4) ## a1 = 8089A4E4
	jal     func_80896800              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089A4E4:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x0034($sp)            
	lh      t6, 0x008A(s0)             ## 0000008A
	lui     $at, 0x41D0                ## $at = 41D00000
	mtc1    $at, $f6                   ## $f6 = 26.00
	sh      t6, 0x002E($sp)            
	lwc1    $f4, 0x0154(s0)            ## 00000154
	lh      a1, 0x002E($sp)            
	addiu   a0, s0, 0x00B6             ## a0 = 000000B6
	c.le.s  $f6, $f4                   
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	addiu   a3, $zero, 0x1770          ## a3 = 00001770
	bc1f    lbl_8089A530               
	nop
	jal     func_80064508              
	sw      $zero, 0x0010($sp)         
lbl_8089A530:
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beq     v0, $zero, lbl_8089A560    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3829          ## a1 = 00003829
	lh      t7, 0x002E($sp)            
	addiu   t8, $zero, 0xFFFF          ## t8 = FFFFFFFF
	sw      t8, 0x03D4(s0)             ## 000003D4
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80897B48              
	sh      t7, 0x0032(s0)             ## 00000032
lbl_8089A560:
	lui     $at, 0x41B0                ## $at = 41B00000
	mtc1    $at, $f8                   ## $f8 = 22.00
	lwc1    $f10, 0x0154(s0)           ## 00000154
	c.eq.s  $f8, $f10                  
	nop
	bc1fl   lbl_8089A584               
	lw      $ra, 0x0024($sp)           
	sh      $zero, 0x03EA(s0)          ## 000003EA
	lw      $ra, 0x0024($sp)           
lbl_8089A584:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089A594:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lui     a0, 0x0601                 ## a0 = 06010000
	jal     func_8008A194              
	addiu   a0, a0, 0x57F8             ## a0 = 060157F8
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC080                ## $at = C0800000
	mtc1    $at, $f8                   ## $f8 = -4.00
	cvt.s.w $f6, $f4                   
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0x57F8             ## a1 = 060157F8
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	swc1    $f6, 0x0010($sp)           
	lui     a2, 0x3FC0                 ## a2 = 3FC00000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
	lhu     t7, 0x0088(s0)             ## 00000088
	lui     $at, 0xC080                ## $at = C0800000
	mtc1    $at, $f2                   ## $f2 = -4.00
	andi    t8, t7, 0x0001             ## t8 = 00000000
	beq     t8, $zero, lbl_8089A638    
	or      a0, s0, $zero              ## a0 = 00000000
	lwc1    $f0, 0x0060(s0)            ## 00000060
	mtc1    $zero, $f10                ## $f10 = 0.00
	nop
	c.eq.s  $f10, $f0                  
	nop
	bc1tl   lbl_8089A630               
	swc1    $f2, 0x0068(s0)            ## 00000068
	c.eq.s  $f2, $f0                   
	nop
	bc1fl   lbl_8089A63C               
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	swc1    $f2, 0x0068(s0)            ## 00000068
lbl_8089A630:
	beq     $zero, $zero, lbl_8089A640 
	sw      $zero, 0x03D4(s0)          ## 000003D4
lbl_8089A638:
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
lbl_8089A63C:
	sw      t9, 0x03D4(s0)             ## 000003D4
lbl_8089A640:
	lh      v0, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	bne     v0, $at, lbl_8089A65C      
	lui     $at, 0x4090                ## $at = 40900000
	mtc1    $at, $f16                  ## $f16 = 4.50
	lh      v0, 0x001C(s0)             ## 0000001C
	swc1    $f16, 0x0158(s0)           ## 00000158
lbl_8089A65C:
	bgez    v0, lbl_8089A66C           
	nop
	lh      t0, 0x008A(s0)             ## 0000008A
	sh      t0, 0x0032(s0)             ## 00000032
lbl_8089A66C:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x382B          ## a1 = 0000382B
	addiu   t1, $zero, 0x0010          ## t1 = 00000010
	lui     a1, %hi(func_8089A6A0)     ## a1 = 808A0000
	sw      t1, 0x03CC(s0)             ## 000003CC
	addiu   a1, a1, %lo(func_8089A6A0) ## a1 = 8089A6A0
	jal     func_80896800              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089A6A0:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	lhu     v1, 0x0088(s0)             ## 00000088
	addiu   a0, s0, 0x00B6             ## a0 = 000000B6
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	andi    t6, v1, 0x0002             ## t6 = 00000000
	beq     t6, $zero, lbl_8089A6D8    
	addiu   a3, $zero, 0x1194          ## a3 = 00001194
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lhu     v1, 0x0088(s0)             ## 00000088
	swc1    $f4, 0x0068(s0)            ## 00000068
lbl_8089A6D8:
	andi    t7, v1, 0x0001             ## t7 = 00000000
	beql    t7, $zero, lbl_8089A714    
	lh      a1, 0x008A(s0)             ## 0000008A
	lwc1    $f0, 0x0068(s0)            ## 00000068
	mtc1    $zero, $f6                 ## $f6 = 0.00
	lui     $at, %hi(var_8089CB64)     ## $at = 808A0000
	c.lt.s  $f0, $f6                   
	nop
	bc1fl   lbl_8089A710               
	sw      $zero, 0x03D4(s0)          ## 000003D4
	lwc1    $f8, %lo(var_8089CB64)($at) 
	add.s   $f10, $f0, $f8             
	swc1    $f10, 0x0068(s0)           ## 00000068
	sw      $zero, 0x03D4(s0)          ## 000003D4
lbl_8089A710:
	lh      a1, 0x008A(s0)             ## 0000008A
lbl_8089A714:
	jal     func_80064508              
	sw      $zero, 0x0010($sp)         
	lh      t8, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	lw      a0, 0x002C($sp)            
	bne     t8, $at, lbl_8089A740      
	nop
	jal     func_80897650              
	or      a1, s0, $zero              ## a1 = 00000000
	bnel    v0, $zero, lbl_8089A9F0    
	lw      $ra, 0x0024($sp)           
lbl_8089A740:
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beql    v0, $zero, lbl_8089A9F0    
	lw      $ra, 0x0024($sp)           
	lhu     v1, 0x0088(s0)             ## 00000088
	lui     t0, %hi(var_8089C9A4)      ## t0 = 808A0000
	andi    t9, v1, 0x0001             ## t9 = 00000000
	beql    t9, $zero, lbl_8089A9F0    
	lw      $ra, 0x0024($sp)           
	lh      t0, %lo(var_8089C9A4)(t0)  
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	beql    t0, $at, lbl_8089A83C      
	lh      t8, 0x007E(s0)             ## 0000007E
	lbu     t1, 0x0400(s0)             ## 00000400
	addiu   $at, $zero, 0x000D         ## $at = 0000000D
	lui     v0, %hi(var_8089C9A0)      ## v0 = 808A0000
	bne     t1, $at, lbl_8089A798      
	addiu   v0, v0, %lo(var_8089C9A0)  ## v0 = 8089C9A0
	lh      t2, 0x0000(v0)             ## 8089C9A0
	addiu   t3, t2, 0x0001             ## t3 = 00000001
	beq     $zero, $zero, lbl_8089A9EC 
	sh      t3, 0x0000(v0)             ## 8089C9A0
lbl_8089A798:
	lh      t4, 0x00B6(s0)             ## 000000B6
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a2, 0x4307                 ## a2 = 43070000
	sh      t4, 0x0032(s0)             ## 00000032
	jal     func_8089680C              
	lw      a1, 0x002C($sp)            
	bne     v0, $zero, lbl_8089A7E0    
	lui     $at, 0x42B4                ## $at = 42B40000
	mtc1    $at, $f18                  ## $f18 = 90.00
	lwc1    $f16, 0x0090(s0)           ## 00000090
	c.lt.s  $f16, $f18                 
	nop
	bc1fl   lbl_8089A7E4               
	lui     $at, 0x42C8                ## $at = 42C80000
	jal     func_8089AA00              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089A9F0 
	lw      $ra, 0x0024($sp)           
lbl_8089A7E0:
	lui     $at, 0x42C8                ## $at = 42C80000
lbl_8089A7E4:
	mtc1    $at, $f4                   ## $f4 = 100.00
	lwc1    $f6, 0x0090(s0)            ## 00000090
	lw      t5, 0x002C($sp)            
	lui     t6, 0x0001                 ## t6 = 00010000
	c.le.s  $f6, $f4                   
	or      a0, s0, $zero              ## a0 = 00000000
	addu    t6, t6, t5                 
	bc1f    lbl_8089A828               
	nop
	lw      t6, 0x1DE4(t6)             ## 00011DE4
	andi    t7, t6, 0x0003             ## t7 = 00000000
	bne     t7, $zero, lbl_8089A828    
	nop
	jal     func_808991FC              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089A9F0 
	lw      $ra, 0x0024($sp)           
lbl_8089A828:
	jal     func_80897584              
	lw      a1, 0x002C($sp)            
	beq     $zero, $zero, lbl_8089A9F0 
	lw      $ra, 0x0024($sp)           
	lh      t8, 0x007E(s0)             ## 0000007E
lbl_8089A83C:
	lh      t9, 0x00B6(s0)             ## 000000B6
	andi    t1, v1, 0x0008             ## t1 = 00000000
	lw      a0, 0x002C($sp)            
	subu    v0, t8, t9                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	bgezl   v0, lbl_8089A86C           
	lh      t0, 0x001C(s0)             ## 0000001C
	subu    v0, $zero, v0              
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	lh      t0, 0x001C(s0)             ## 0000001C
lbl_8089A86C:
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	bne     t0, $at, lbl_8089A8C4      
	nop
	beq     t1, $zero, lbl_8089A8C4    
	nop
	bltz    v0, lbl_8089A890           
	subu    v1, $zero, v0              
	beq     $zero, $zero, lbl_8089A890 
	or      v1, v0, $zero              ## v1 = 00000000
lbl_8089A890:
	slti    $at, v1, 0x2EE0            
	beq     $at, $zero, lbl_8089A8C4   
	lui     $at, 0x42B4                ## $at = 42B40000
	mtc1    $at, $f10                  ## $f10 = 90.00
	lwc1    $f8, 0x0090(s0)            ## 00000090
	c.lt.s  $f8, $f10                  
	nop
	bc1f    lbl_8089A8C4               
	nop
	jal     func_8089AA00              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089A9F0 
	lw      $ra, 0x0024($sp)           
lbl_8089A8C4:
	jal     func_8089C408              
	or      a1, s0, $zero              ## a1 = 00000000
	bnel    v0, $zero, lbl_8089A9F0    
	lw      $ra, 0x0024($sp)           
	lh      t2, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	beql    t2, $at, lbl_8089A98C      
	lui     $at, 0x42C8                ## $at = 42C80000
	lh      t3, 0x00B6(s0)             ## 000000B6
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a2, 0x4307                 ## a2 = 43070000
	sh      t3, 0x0032(s0)             ## 00000032
	jal     func_8089680C              
	lw      a1, 0x002C($sp)            
	bne     v0, $zero, lbl_8089A930    
	lui     $at, 0x42B4                ## $at = 42B40000
	lwc1    $f16, 0x0090(s0)           ## 00000090
	mtc1    $at, $f18                  ## $f18 = 90.00
	nop
	c.lt.s  $f16, $f18                 
	nop
	bc1fl   lbl_8089A934               
	lui     $at, 0x42C8                ## $at = 42C80000
	jal     func_8089AA00              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089A9F0 
	lw      $ra, 0x0024($sp)           
lbl_8089A930:
	lui     $at, 0x42C8                ## $at = 42C80000
lbl_8089A934:
	mtc1    $at, $f4                   ## $f4 = 100.00
	lwc1    $f6, 0x0090(s0)            ## 00000090
	lw      t4, 0x002C($sp)            
	lui     t5, 0x0001                 ## t5 = 00010000
	c.le.s  $f6, $f4                   
	or      a0, s0, $zero              ## a0 = 00000000
	addu    t5, t5, t4                 
	bc1f    lbl_8089A978               
	nop
	lw      t5, 0x1DE4(t5)             ## 00011DE4
	andi    t6, t5, 0x0003             ## t6 = 00000000
	bne     t6, $zero, lbl_8089A978    
	nop
	jal     func_808991FC              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089A9F0 
	lw      $ra, 0x0024($sp)           
lbl_8089A978:
	jal     func_80897584              
	lw      a1, 0x002C($sp)            
	beq     $zero, $zero, lbl_8089A9F0 
	lw      $ra, 0x0024($sp)           
	lui     $at, 0x42C8                ## $at = 42C80000
lbl_8089A98C:
	mtc1    $at, $f8                   ## $f8 = 100.00
	lwc1    $f10, 0x0090(s0)           ## 00000090
	lw      t7, 0x002C($sp)            
	lui     t8, 0x0001                 ## t8 = 00010000
	c.le.s  $f10, $f8                  
	addu    t8, t8, t7                 
	bc1fl   lbl_8089A9E4               
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t8, 0x1DE4(t8)             ## 00011DE4
	or      a0, t7, $zero              ## a0 = 00000000
	andi    t9, t8, 0x0003             ## t9 = 00000000
	bnel    t9, $zero, lbl_8089A9E4    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_808974B0              
	or      a1, s0, $zero              ## a1 = 00000000
	beql    v0, $zero, lbl_8089A9E4    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_808991FC              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089A9F0 
	lw      $ra, 0x0024($sp)           
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8089A9E4:
	jal     func_80897584              
	lw      a1, 0x002C($sp)            
lbl_8089A9EC:
	lw      $ra, 0x0024($sp)           
lbl_8089A9F0:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089AA00:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	mtc1    $zero, $f0                 ## $f0 = 0.00
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lui     $at, 0x4040                ## $at = 40400000
	mtc1    $at, $f4                   ## $f4 = 3.00
	lui     a1, 0x0601                 ## a1 = 06010000
	mfc1    a3, $f0                    
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0x9530             ## a1 = 06009530
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lui     a2, 0x3F80                 ## a2 = 3F800000
	swc1    $f0, 0x0018($sp)           
	jal     func_8008D17C              
	swc1    $f4, 0x0010($sp)           
	lui     $at, 0x41B0                ## $at = 41B00000
	mtc1    $at, $f6                   ## $f6 = 22.00
	lui     $at, 0x40F0                ## $at = 40F00000
	mtc1    $at, $f8                   ## $f8 = 7.50
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	addiu   t8, $zero, 0x0016          ## t8 = 00000016
	sw      $zero, 0x03E0(s0)          ## 000003E0
	sw      t7, 0x03D4(s0)             ## 000003D4
	sw      t8, 0x03CC(s0)             ## 000003CC
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x382F          ## a1 = 0000382F
	swc1    $f6, 0x0060(s0)            ## 00000060
	jal     func_80022FD0              
	swc1    $f8, 0x0068(s0)            ## 00000068
	lh      t9, 0x00B6(s0)             ## 000000B6
	lui     a1, %hi(func_8089AAA8)     ## a1 = 808A0000
	addiu   a1, a1, %lo(func_8089AAA8) ## a1 = 8089AAA8
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80896800              
	sh      t9, 0x0032(s0)             ## 00000032
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089AAA8:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x003C($sp)            
	lh      a1, 0x008A(s0)             ## 0000008A
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	sw      t6, 0x0010($sp)            
	addiu   a0, s0, 0x00B6             ## a0 = 000000B6
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	jal     func_80064508              
	addiu   a3, $zero, 0x0FA0          ## a3 = 00000FA0
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f6                   ## $f6 = 5.00
	lwc1    $f4, 0x0060(s0)            ## 00000060
	lw      a0, 0x003C($sp)            
	c.le.s  $f6, $f4                   
	nop
	bc1fl   lbl_8089AB10               
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_80028320              
	addiu   a1, s0, 0x04E0             ## a1 = 000004E0
	lw      a0, 0x003C($sp)            
	jal     func_80028320              
	addiu   a1, s0, 0x04D4             ## a1 = 000004D4
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
lbl_8089AB10:
	jal     func_8008C9C0              
	sw      a0, 0x0030($sp)            
	beq     v0, $zero, lbl_8089ABC0    
	lw      a0, 0x0030($sp)            
	lw      t7, 0x03E0(s0)             ## 000003E0
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0xA3D4             ## a1 = 0600A3D4
	bne     t7, $zero, lbl_8089AB6C    
	lui     a2, 0x4040                 ## a2 = 40400000
	lui     $at, 0x4150                ## $at = 41500000
	mtc1    $zero, $f0                 ## $f0 = 0.00
	mtc1    $at, $f8                   ## $f8 = 13.00
	lui     $at, 0xC080                ## $at = C0800000
	mtc1    $at, $f10                  ## $f10 = -4.00
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	mfc1    a3, $f0                    
	sw      t8, 0x0014($sp)            
	swc1    $f8, 0x0010($sp)           
	jal     func_8008D17C              
	swc1    $f10, 0x0018($sp)          
	addiu   t9, $zero, 0x000A          ## t9 = 0000000A
	beq     $zero, $zero, lbl_8089ABC0 
	sw      t9, 0x03E0(s0)             ## 000003E0
lbl_8089AB6C:
	lhu     t0, 0x0088(s0)             ## 00000088
	or      a0, s0, $zero              ## a0 = 00000000
	andi    t1, t0, 0x0003             ## t1 = 00000000
	beql    t1, $zero, lbl_8089ABC4    
	lw      $ra, 0x002C($sp)           
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lh      v0, 0x008A(s0)             ## 0000008A
	lwc1    $f16, 0x0080(s0)           ## 00000080
	swc1    $f0, 0x0060(s0)            ## 00000060
	sh      v0, 0x00B6(s0)             ## 000000B6
	sh      v0, 0x0032(s0)             ## 00000032
	swc1    $f0, 0x0068(s0)            ## 00000068
	jal     func_808991FC              
	swc1    $f16, 0x0028(s0)           ## 00000028
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x382A          ## a1 = 0000382A
	lui     $at, 0x4150                ## $at = 41500000
	mtc1    $at, $f18                  ## $f18 = 13.00
	nop
	swc1    $f18, 0x0154(s0)           ## 00000154
lbl_8089ABC0:
	lw      $ra, 0x002C($sp)           
lbl_8089ABC4:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089ABD4:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x0034($sp)            
	lh      t6, 0x001C(s0)             ## 0000001C
	or      a0, s0, $zero              ## a0 = 00000000
	bltz    t6, lbl_8089AC40           
	nop
	lh      a3, 0x00B6(s0)             ## 000000B6
	lw      a1, 0x0034($sp)            
	lui     a2, 0x4220                 ## a2 = 42200000
	addiu   a3, a3, 0x3FFF             ## a3 = 00003FFF
	sll     a3, a3, 16                 
	jal     func_80026850              
	sra     a3, a3, 16                 
	bne     v0, $zero, lbl_8089AC40    
	or      a0, s0, $zero              ## a0 = 00000000
	lh      a3, 0x00B6(s0)             ## 000000B6
	lw      a1, 0x0034($sp)            
	lui     a2, 0xC220                 ## a2 = C2200000
	addiu   a3, a3, 0x3FFF             ## a3 = 00003FFF
	sll     a3, a3, 16                 
	jal     func_80026850              
	sra     a3, a3, 16                 
	beq     v0, $zero, lbl_8089AD54    
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8089AC40:
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0x6388             ## a1 = 06016388
	jal     func_8008D2D4              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lw      t7, 0x0034($sp)            
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	addiu   a0, s0, 0x00B6             ## a0 = 000000B6
	lw      t8, 0x1C44(t7)             ## 00001C44
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	addiu   a3, $zero, 0x0FA0          ## a3 = 00000FA0
	sw      t8, 0x0028($sp)            
	lh      a1, 0x008A(s0)             ## 0000008A
	jal     func_80064508              
	sw      t9, 0x0010($sp)            
	lw      t0, 0x0028($sp)            
	lh      t1, 0x00B6(s0)             ## 000000B6
	lh      v1, 0x00B6(t0)             ## 000000B6
	subu    a0, v1, t1                 
	sll     a0, a0, 16                 
	sra     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sh      v1, 0x002E($sp)            
	mtc1    $zero, $f2                 ## $f2 = 0.00
	lh      v1, 0x002E($sp)            
	lui     $at, 0xC0C0                ## $at = C0C00000
	c.le.s  $f2, $f0                   
	nop
	bc1fl   lbl_8089ACC4               
	lh      t2, 0x00B6(s0)             ## 000000B6
	mtc1    $at, $f4                   ## $f4 = -6.00
	beq     $zero, $zero, lbl_8089ACF8 
	swc1    $f4, 0x0068(s0)            ## 00000068
	lh      t2, 0x00B6(s0)             ## 000000B6
lbl_8089ACC4:
	subu    a0, v1, t2                 
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	mtc1    $zero, $f2                 ## $f2 = 0.00
	lui     $at, 0x40C0                ## $at = 40C00000
	c.lt.s  $f0, $f2                   
	nop
	bc1fl   lbl_8089ACFC               
	lh      t3, 0x00B6(s0)             ## 000000B6
	mtc1    $at, $f6                   ## $f6 = 6.00
	nop
	swc1    $f6, 0x0068(s0)            ## 00000068
lbl_8089ACF8:
	lh      t3, 0x00B6(s0)             ## 000000B6
lbl_8089ACFC:
	swc1    $f2, 0x03F8(s0)            ## 000003F8
	sw      $zero, 0x03D4(s0)          ## 000003D4
	addiu   t4, t3, 0x3FFF             ## t4 = 00003FFF
	jal     func_800CDCCC              ## Rand.Next() float
	sh      t4, 0x0032(s0)             ## 00000032
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f8                   ## $f8 = 10.00
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f16                  ## $f16 = 5.00
	mul.s   $f10, $f0, $f8             
	addiu   t7, $zero, 0x000C          ## t7 = 0000000C
	lui     a1, %hi(func_8089AD70)     ## a1 = 808A0000
	sw      t7, 0x03CC(s0)             ## 000003CC
	addiu   a1, a1, %lo(func_8089AD70) ## a1 = 8089AD70
	or      a0, s0, $zero              ## a0 = 00000000
	add.s   $f18, $f10, $f16           
	trunc.w.s $f4, $f18                  
	mfc1    t6, $f4                    
	jal     func_80896800              
	sw      t6, 0x03E0(s0)             ## 000003E0
	beq     $zero, $zero, lbl_8089AD60 
	lw      $ra, 0x0024($sp)           
lbl_8089AD54:
	jal     func_80897E7C              
	lw      a1, 0x0034($sp)            
	lw      $ra, 0x0024($sp)           
lbl_8089AD60:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089AD70:
	addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x005C($sp)            
	lw      t6, 0x005C($sp)            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	lw      t7, 0x1C44(t6)             ## 00001C44
	swc1    $f4, 0x0040($sp)           
	addiu   a0, s0, 0x00B6             ## a0 = 000000B6
	sw      t7, 0x0050($sp)            
	lh      a1, 0x008A(s0)             ## 0000008A
	sw      t8, 0x0010($sp)            
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	jal     func_80064508              
	addiu   a3, $zero, 0x0BB8          ## a3 = 00000BB8
	lh      t1, 0x001C(s0)             ## 0000001C
	lw      t9, 0x0050($sp)            
	bltz    t1, lbl_8089ADE4           
	lh      t0, 0x00B6(t9)             ## 000000B6
	lh      t2, 0x03E8(s0)             ## 000003E8
	beq     t2, $zero, lbl_8089ADDC    
	nop
	lwc1    $f6, 0x0068(s0)            ## 00000068
	neg.s   $f8, $f6                   
	swc1    $f8, 0x0068(s0)            ## 00000068
lbl_8089ADDC:
	beq     $zero, $zero, lbl_8089AF0C 
	lh      a1, 0x00B6(s0)             ## 000000B6
lbl_8089ADE4:
	lhu     v0, 0x0088(s0)             ## 00000088
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x005C($sp)            
	andi    v0, v0, 0x0008             ## v0 = 00000000
	bne     v0, $zero, lbl_8089AE28    
	nop
	lh      a3, 0x00B6(s0)             ## 000000B6
	lw      a2, 0x0068(s0)             ## 00000068
	sh      t0, 0x0056($sp)            
	addiu   a3, a3, 0x3FFF             ## a3 = 00003FFF
	sll     a3, a3, 16                 
	jal     func_80026850              
	sra     a3, a3, 16                 
	bne     v0, $zero, lbl_8089AF08    
	lh      t0, 0x0056($sp)            
	lhu     v0, 0x0088(s0)             ## 00000088
	andi    v0, v0, 0x0008             ## v0 = 00000000
lbl_8089AE28:
	beq     v0, $zero, lbl_8089AE84    
	lui     $at, %hi(var_8089CB68)     ## $at = 808A0000
	lwc1    $f10, 0x0068(s0)           ## 00000068
	mtc1    $zero, $f16                ## $f16 = 0.00
	nop
	c.le.s  $f16, $f10                 
	nop
	bc1fl   lbl_8089AE64               
	lh      v0, 0x00B6(s0)             ## 000000B6
	lh      v0, 0x00B6(s0)             ## 000000B6
	addiu   v0, v0, 0x3FFF             ## v0 = 00003FFF
	sll     v0, v0, 16                 
	beq     $zero, $zero, lbl_8089AE70 
	sra     v0, v0, 16                 
	lh      v0, 0x00B6(s0)             ## 000000B6
lbl_8089AE64:
	addiu   v0, v0, 0xC001             ## v0 = 00000000
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
lbl_8089AE70:
	lh      t3, 0x007E(s0)             ## 0000007E
	subu    v0, t3, v0                 
	sll     v0, v0, 16                 
	beq     $zero, $zero, lbl_8089AE98 
	sra     v0, v0, 16                 
lbl_8089AE84:
	lwc1    $f18, 0x0068(s0)           ## 00000068
	lwc1    $f4, %lo(var_8089CB68)($at) 
	or      v0, $zero, $zero           ## v0 = 00000000
	mul.s   $f6, $f18, $f4             
	swc1    $f6, 0x0068(s0)            ## 00000068
lbl_8089AE98:
	bltz    v0, lbl_8089AEA8           
	subu    v1, $zero, v0              
	beq     $zero, $zero, lbl_8089AEA8 
	or      v1, v0, $zero              ## v1 = 00000000
lbl_8089AEA8:
	slti    $at, v1, 0x4001            
	bne     $at, $zero, lbl_8089AF08   
	lui     $at, %hi(var_8089CB6C)     ## $at = 808A0000
	lwc1    $f10, %lo(var_8089CB6C)($at) 
	lwc1    $f8, 0x0068(s0)            ## 00000068
	mtc1    $zero, $f18                ## $f18 = 0.00
	lui     $at, 0x3F00                ## $at = 3F000000
	mul.s   $f16, $f8, $f10            
	swc1    $f16, 0x0068(s0)           ## 00000068
	lwc1    $f0, 0x0068(s0)            ## 00000068
	c.lt.s  $f0, $f18                  
	nop
	bc1fl   lbl_8089AEFC               
	mtc1    $at, $f8                   ## $f8 = 0.50
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f4                   ## $f4 = 0.50
	nop
	sub.s   $f6, $f0, $f4              
	beq     $zero, $zero, lbl_8089AF08 
	swc1    $f6, 0x0068(s0)            ## 00000068
	mtc1    $at, $f8                   ## $f8 = 0.50
lbl_8089AEFC:
	nop
	add.s   $f10, $f0, $f8             
	swc1    $f10, 0x0068(s0)           ## 00000068
lbl_8089AF08:
	lh      a1, 0x00B6(s0)             ## 000000B6
lbl_8089AF0C:
	subu    a0, t0, a1                 
	sll     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sra     a0, a0, 16                 
	mtc1    $zero, $f16                ## $f16 = 0.00
	nop
	c.le.s  $f16, $f0                  
	nop
	bc1f    lbl_8089AF48               
	lui     $at, 0x3E00                ## $at = 3E000000
	mtc1    $at, $f4                   ## $f4 = 0.13
	lwc1    $f18, 0x0068(s0)           ## 00000068
	add.s   $f6, $f18, $f4             
	beq     $zero, $zero, lbl_8089AF5C 
	swc1    $f6, 0x0068(s0)            ## 00000068
lbl_8089AF48:
	lui     $at, 0x3E00                ## $at = 3E000000
	mtc1    $at, $f10                  ## $f10 = 0.13
	lwc1    $f8, 0x0068(s0)            ## 00000068
	sub.s   $f16, $f8, $f10            
	swc1    $f16, 0x0068(s0)           ## 00000068
lbl_8089AF5C:
	lh      t4, 0x00B6(s0)             ## 000000B6
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   t5, t4, 0x4000             ## t5 = 00004000
	sh      t5, 0x0032(s0)             ## 00000032
	jal     func_80026950              
	lw      a0, 0x005C($sp)            
	beq     v0, $zero, lbl_8089AF88    
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f2                   ## $f2 = 100.00
	nop
	swc1    $f2, 0x0040($sp)           
lbl_8089AF88:
	lui     $at, 0x428C                ## $at = 428C0000
	lwc1    $f2, 0x0040($sp)           
	mtc1    $at, $f18                  ## $f18 = 70.00
	lwc1    $f0, 0x0090(s0)            ## 00000090
	add.s   $f4, $f18, $f2             
	c.le.s  $f0, $f4                   
	nop
	bc1fl   lbl_8089AFD4               
	lui     $at, 0x42B4                ## $at = 42B40000
	mtc1    $zero, $f6                 ## $f6 = 0.00
	addiu   a0, s0, 0x03F8             ## a0 = 000003F8
	lui     a1, 0xC080                 ## a1 = C0800000
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x3FC0                 ## a3 = 3FC00000
	jal     func_80064178              
	swc1    $f6, 0x0010($sp)           
	beq     $zero, $zero, lbl_8089B034 
	lwc1    $f2, 0x03F8(s0)            ## 000003F8
	lui     $at, 0x42B4                ## $at = 42B40000
lbl_8089AFD4:
	mtc1    $at, $f8                   ## $f8 = 90.00
	addiu   a0, s0, 0x03F8             ## a0 = 000003F8
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	add.s   $f10, $f8, $f2             
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x40B4                 ## a3 = 40B40000
	c.lt.s  $f10, $f0                  
	nop
	bc1fl   lbl_8089B024               
	mtc1    $zero, $f18                ## $f18 = 0.00
	mtc1    $zero, $f16                ## $f16 = 0.00
	addiu   a0, s0, 0x03F8             ## a0 = 000003F8
	lui     a1, 0x4080                 ## a1 = 40800000
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x3FC0                 ## a3 = 3FC00000
	jal     func_80064178              
	swc1    $f16, 0x0010($sp)          
	beq     $zero, $zero, lbl_8089B034 
	lwc1    $f2, 0x03F8(s0)            ## 000003F8
	mtc1    $zero, $f18                ## $f18 = 0.00
lbl_8089B024:
	ori     a3, a3, 0xCCCD             ## a3 = 0000CCCD
	jal     func_80064178              
	swc1    $f18, 0x0010($sp)          
	lwc1    $f2, 0x03F8(s0)            ## 000003F8
lbl_8089B034:
	mtc1    $zero, $f4                 ## $f4 = 0.00
	or      a0, s0, $zero              ## a0 = 00000000
	c.eq.s  $f4, $f2                   
	nop
	bc1tl   lbl_8089B09C               
	mtc1    $zero, $f14                ## $f14 = 0.00
	mfc1    a2, $f2                    
	jal     func_8089697C              
	lw      a1, 0x005C($sp)            
	bnel    v0, $zero, lbl_8089B09C    
	mtc1    $zero, $f14                ## $f14 = 0.00
	jal     func_800636C4              ## sins?
	lh      a0, 0x00B6(s0)             ## 000000B6
	lwc1    $f8, 0x03F8(s0)            ## 000003F8
	lwc1    $f6, 0x0024(s0)            ## 00000024
	lh      a0, 0x00B6(s0)             ## 000000B6
	mul.s   $f10, $f0, $f8             
	add.s   $f16, $f6, $f10            
	jal     func_80063684              ## coss?
	swc1    $f16, 0x0024(s0)           ## 00000024
	lwc1    $f4, 0x03F8(s0)            ## 000003F8
	lwc1    $f18, 0x002C(s0)           ## 0000002C
	mul.s   $f8, $f0, $f4              
	add.s   $f6, $f18, $f8             
	swc1    $f6, 0x002C(s0)            ## 0000002C
	mtc1    $zero, $f14                ## $f14 = 0.00
lbl_8089B09C:
	lwc1    $f0, 0x0068(s0)            ## 00000068
	lwc1    $f2, 0x03F8(s0)            ## 000003F8
	c.le.s  $f14, $f0                  
	nop
	bc1fl   lbl_8089B0C0               
	neg.s   $f12, $f0                  
	beq     $zero, $zero, lbl_8089B0C0 
	mov.s   $f12, $f0                  
	neg.s   $f12, $f0                  
lbl_8089B0C0:
	c.le.s  $f14, $f2                  
	nop
	bc1fl   lbl_8089B0DC               
	neg.s   $f10, $f2                  
	beq     $zero, $zero, lbl_8089B0E0 
	swc1    $f2, 0x0034($sp)           
	neg.s   $f10, $f2                  
lbl_8089B0DC:
	swc1    $f10, 0x0034($sp)          
lbl_8089B0E0:
	lwc1    $f16, 0x0034($sp)          
	lui     $at, 0x3F40                ## $at = 3F400000
	c.le.s  $f16, $f12                 
	nop
	bc1fl   lbl_8089B110               
	lwc1    $f6, 0x0158(s0)            ## 00000158
	mtc1    $at, $f18                  ## $f18 = 0.75
	neg.s   $f4, $f0                   
	mul.s   $f8, $f4, $f18             
	beq     $zero, $zero, lbl_8089B150 
	swc1    $f8, 0x0158(s0)            ## 00000158
	lwc1    $f6, 0x0158(s0)            ## 00000158
lbl_8089B110:
	mtc1    $zero, $f10                ## $f10 = 0.00
	lui     $at, 0x3F40                ## $at = 3F400000
	c.lt.s  $f6, $f10                  
	nop
	bc1fl   lbl_8089B144               
	mtc1    $at, $f18                  ## $f18 = 0.75
	lui     $at, 0xBF40                ## $at = BF400000
	mtc1    $at, $f16                  ## $f16 = -0.75
	nop
	mul.s   $f4, $f2, $f16             
	beq     $zero, $zero, lbl_8089B150 
	swc1    $f4, 0x0158(s0)            ## 00000158
	mtc1    $at, $f18                  ## $f18 = -0.75
lbl_8089B144:
	nop
	mul.s   $f8, $f2, $f18             
	swc1    $f8, 0x0158(s0)            ## 00000158
lbl_8089B150:
	lwc1    $f6, 0x0154(s0)            ## 00000154
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	trunc.w.s $f10, $f6                  
	mfc1    t7, $f10                   
	jal     func_8008C9C0              
	sw      t7, 0x004C($sp)            
	mtc1    $zero, $f14                ## $f14 = 0.00
	lwc1    $f0, 0x0158(s0)            ## 00000158
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	c.le.s  $f14, $f0                  
	nop
	bc1fl   lbl_8089B190               
	neg.s   $f16, $f0                  
	beq     $zero, $zero, lbl_8089B194 
	swc1    $f0, 0x0034($sp)           
	neg.s   $f16, $f0                  
lbl_8089B190:
	swc1    $f16, 0x0034($sp)          
lbl_8089B194:
	lwc1    $f4, 0x0154(s0)            ## 00000154
	lwc1    $f18, 0x0034($sp)          
	c.le.s  $f14, $f0                  
	sub.s   $f8, $f4, $f18             
	trunc.w.s $f6, $f8                   
	mfc1    t9, $f6                    
	bc1f    lbl_8089B1BC               
	sw      t9, 0x0048($sp)            
	beq     $zero, $zero, lbl_8089B1C4 
	swc1    $f0, 0x0034($sp)           
lbl_8089B1BC:
	neg.s   $f10, $f0                  
	swc1    $f10, 0x0034($sp)          
lbl_8089B1C4:
	jal     func_80896E68              
	lh      a1, 0x03EE(s0)             ## 000003EE
	sh      v0, 0x03EE(s0)             ## 000003EE
	lw      a0, 0x0050($sp)            
	addiu   a1, $zero, 0xFFFF          ## a1 = FFFFFFFF
	jal     func_80896E68              
	addiu   a0, a0, 0x0024             ## a0 = 00000024
	lh      t1, 0x03EE(s0)             ## 000003EE
	beql    v0, t1, lbl_8089B234       
	lh      t3, 0x001C(s0)             ## 0000001C
	lh      v1, 0x001C(s0)             ## 0000001C
	mtc1    $zero, $f16                ## $f16 = 0.00
	lui     t2, %hi(var_8089C9A4)      ## t2 = 808A0000
	bltz    v1, lbl_8089B21C           
	swc1    $f16, 0x0068(s0)           ## 00000068
	lh      t2, %lo(var_8089C9A4)(t2)  
	bnel    v1, t2, lbl_8089B220       
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80899CCC              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089B4E0 
	lw      $ra, 0x0024($sp)           
lbl_8089B21C:
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8089B220:
	jal     func_80897E7C              
	lw      a1, 0x005C($sp)            
	beq     $zero, $zero, lbl_8089B4E0 
	lw      $ra, 0x0024($sp)           
	lh      t3, 0x001C(s0)             ## 0000001C
lbl_8089B234:
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	lw      a0, 0x005C($sp)            
	bnel    t3, $at, lbl_8089B258      
	lw      v0, 0x03E0(s0)             ## 000003E0
	jal     func_80897650              
	or      a1, s0, $zero              ## a1 = 00000000
	bnel    v0, $zero, lbl_8089B4E0    
	lw      $ra, 0x0024($sp)           
	lw      v0, 0x03E0(s0)             ## 000003E0
lbl_8089B258:
	lw      t4, 0x0050($sp)            
	bne     v0, $zero, lbl_8089B434    
	addiu   t5, v0, 0xFFFF             ## t5 = FFFFFFFF
	lh      a1, 0x00B6(s0)             ## 000000B6
	lh      t5, 0x00B6(t4)             ## 000000B6
	lh      v1, 0x001C(s0)             ## 0000001C
	subu    v0, t5, a1                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	bgezl   v0, lbl_8089B294           
	slti    $at, v0, 0x3A98            
	subu    v0, $zero, v0              
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0x3A98            
lbl_8089B294:
	bne     $at, $zero, lbl_8089B308   
	nop
	bltz    v1, lbl_8089B2C0           
	lui     t6, %hi(var_8089C9A4)      ## t6 = 808A0000
	lh      t6, %lo(var_8089C9A4)(t6)  
	bne     v1, t6, lbl_8089B2C0       
	nop
	jal     func_80899CCC              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089B2FC 
	lw      v1, 0x005C($sp)            
lbl_8089B2C0:
	jal     func_80897B48              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f4                   ## $f4 = 5.00
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f8                   ## $f8 = 1.00
	mul.s   $f18, $f0, $f4             
	add.s   $f6, $f18, $f8             
	trunc.w.s $f10, $f6                  
	mfc1    t8, $f10                   
	nop
	sw      t8, 0x03E0(s0)             ## 000003E0
	lw      v1, 0x005C($sp)            
lbl_8089B2FC:
	lui     $at, 0x0001                ## $at = 00010000
	beq     $zero, $zero, lbl_8089B444 
	addu    v1, v1, $at                
lbl_8089B308:
	bltz    v1, lbl_8089B334           
	lui     t9, %hi(var_8089C9A4)      ## t9 = 808A0000
	lh      t9, %lo(var_8089C9A4)(t9)  
	bnel    v1, t9, lbl_8089B338       
	lui     $at, 0x42C8                ## $at = 42C80000
	jal     func_80899CCC              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      v1, 0x005C($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	beq     $zero, $zero, lbl_8089B444 
	addu    v1, v1, $at                
lbl_8089B334:
	lui     $at, 0x42C8                ## $at = 42C80000
lbl_8089B338:
	mtc1    $at, $f16                  ## $f16 = 100.00
	lwc1    $f4, 0x0090(s0)            ## 00000090
	sh      a1, 0x0032(s0)             ## 00000032
	lw      a3, 0x005C($sp)            
	c.le.s  $f4, $f16                  
	lui     $at, 0x0001                ## $at = 00010000
	addu    v1, a3, $at                
	bc1fl   lbl_8089B39C               
	lw      a3, 0x005C($sp)            
	lw      t1, 0x1DE4(v1)             ## 00001DE4
	or      a0, a3, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	andi    t2, t1, 0x0003             ## t2 = 00000000
	bnel    t2, $zero, lbl_8089B39C    
	lw      a3, 0x005C($sp)            
	jal     func_808974B0              
	sw      v1, 0x0028($sp)            
	beq     v0, $zero, lbl_8089B398    
	lw      v1, 0x0028($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_808991FC              
	sw      v1, 0x0028($sp)            
	beq     $zero, $zero, lbl_8089B444 
	lw      v1, 0x0028($sp)            
lbl_8089B398:
	lw      a3, 0x005C($sp)            
lbl_8089B39C:
	lui     $at, 0x0001                ## $at = 00010000
	lwc1    $f0, 0x0090(s0)            ## 00000090
	addu    v1, a3, $at                
	lui     $at, 0x438C                ## $at = 438C0000
	mtc1    $at, $f18                  ## $f18 = 280.00
	lui     $at, 0x4370                ## $at = 43700000
	c.lt.s  $f0, $f18                  
	nop
	bc1fl   lbl_8089B41C               
	lw      a1, 0x005C($sp)            
	mtc1    $at, $f8                   ## $f8 = 240.00
	lui     a2, 0x433F                 ## a2 = 433F0000
	ori     a2, a2, 0xFEE0             ## a2 = 433FFEE0
	c.lt.s  $f8, $f0                   
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, a3, $zero              ## a1 = 00000000
	bc1fl   lbl_8089B41C               
	lw      a1, 0x005C($sp)            
	jal     func_8089680C              
	sw      v1, 0x0028($sp)            
	bne     v0, $zero, lbl_8089B418    
	lw      v1, 0x0028($sp)            
	lw      t3, 0x1DE4(v1)             ## 00001DE4
	or      a0, s0, $zero              ## a0 = 00000000
	andi    t4, t3, 0x0001             ## t4 = 00000000
	bnel    t4, $zero, lbl_8089B41C    
	lw      a1, 0x005C($sp)            
	jal     func_808985FC              
	sw      v1, 0x0028($sp)            
	beq     $zero, $zero, lbl_8089B444 
	lw      v1, 0x0028($sp)            
lbl_8089B418:
	lw      a1, 0x005C($sp)            
lbl_8089B41C:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80897E7C              
	sw      v1, 0x0028($sp)            
	lw      v1, 0x0028($sp)            
	beq     $zero, $zero, lbl_8089B448 
	lwc1    $f6, 0x0154(s0)            ## 00000154
lbl_8089B434:
	sw      t5, 0x03E0(s0)             ## 000003E0
	lw      v1, 0x005C($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	addu    v1, v1, $at                
lbl_8089B444:
	lwc1    $f6, 0x0154(s0)            ## 00000154
lbl_8089B448:
	lw      v0, 0x004C($sp)            
	lw      a0, 0x0048($sp)            
	trunc.w.s $f10, $f6                  
	slti    $at, a0, 0x000E            
	mfc1    t7, $f10                   
	nop
	beql    v0, t7, lbl_8089B4C4       
	lw      t5, 0x1DE4(v1)             ## 00001DE4
	beq     $at, $zero, lbl_8089B488   
	lwc1    $f16, 0x0034($sp)          
	trunc.w.s $f4, $f16                  
	mfc1    t9, $f4                    
	nop
	addu    t1, t9, v0                 
	slti    $at, t1, 0x0010            
	beq     $at, $zero, lbl_8089B4AC   
lbl_8089B488:
	slti    $at, a0, 0x001B            
	beq     $at, $zero, lbl_8089B4C0   
	lwc1    $f18, 0x0034($sp)          
	trunc.w.s $f8, $f18                  
	mfc1    t3, $f8                    
	nop
	addu    t4, t3, v0                 
	slti    $at, t4, 0x001D            
	bne     $at, $zero, lbl_8089B4C0   
lbl_8089B4AC:
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x382E          ## a1 = 0000382E
	jal     func_80022FD0              
	sw      v1, 0x0028($sp)            
	lw      v1, 0x0028($sp)            
lbl_8089B4C0:
	lw      t5, 0x1DE4(v1)             ## 00001DE4
lbl_8089B4C4:
	or      a0, s0, $zero              ## a0 = 00000000
	andi    t6, t5, 0x005F             ## t6 = 00000000
	bnel    t6, $zero, lbl_8089B4E0    
	lw      $ra, 0x0024($sp)           
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3829          ## a1 = 00003829
	lw      $ra, 0x0024($sp)           
lbl_8089B4E0:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0058           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089B4F0:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lui     a0, 0x0601                 ## a0 = 06010000
	jal     func_8008A194              
	addiu   a0, a0, 0x4E60             ## a0 = 06014E60
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0xC080                ## $at = C0800000
	mtc1    $at, $f8                   ## $f8 = -4.00
	cvt.s.w $f6, $f4                   
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	sw      t6, 0x0014($sp)            
	addiu   a1, a1, 0x4E60             ## a1 = 06014E60
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	swc1    $f6, 0x0010($sp)           
	lui     a2, 0x3FC0                 ## a2 = 3FC00000
	addiu   a3, $zero, 0x0000          ## a3 = 00000000
	jal     func_8008D17C              
	swc1    $f8, 0x0018($sp)           
	lhu     t7, 0x0088(s0)             ## 00000088
	mtc1    $zero, $f2                 ## $f2 = 0.00
	addiu   t0, $zero, 0x000F          ## t0 = 0000000F
	andi    t8, t7, 0x0001             ## t8 = 00000000
	beq     t8, $zero, lbl_8089B598    
	lui     t3, %hi(var_8089C9A4)      ## t3 = 808A0000
	lwc1    $f0, 0x0060(s0)            ## 00000060
	lui     $at, 0xC080                ## $at = C0800000
	c.eq.s  $f2, $f0                   
	nop
	bc1tl   lbl_8089B590               
	swc1    $f2, 0x0068(s0)            ## 00000068
	mtc1    $at, $f10                  ## $f10 = -4.00
	nop
	c.eq.s  $f10, $f0                  
	nop
	bc1fl   lbl_8089B59C               
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	swc1    $f2, 0x0068(s0)            ## 00000068
lbl_8089B590:
	beq     $zero, $zero, lbl_8089B5A0 
	sw      $zero, 0x03D4(s0)          ## 000003D4
lbl_8089B598:
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
lbl_8089B59C:
	sw      t9, 0x03D4(s0)             ## 000003D4
lbl_8089B5A0:
	lw      t1, 0x0004(s0)             ## 00000004
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	sw      t0, 0x03CC(s0)             ## 000003CC
	and     t2, t1, $at                
	sw      t2, 0x0004(s0)             ## 00000004
	lh      t3, %lo(var_8089C9A4)(t3)  
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t3, $at, lbl_8089B624      
	addiu   a1, $zero, 0x382D          ## a1 = 0000382D
	lw      v0, 0x0120(s0)             ## 00000120
	addiu   t4, $zero, 0x005A          ## t4 = 0000005A
	beql    v0, $zero, lbl_8089B600    
	lw      t8, 0x0124(s0)             ## 00000124
	sh      t4, 0x03E4(v0)             ## 000003E4
	lw      v0, 0x0120(s0)             ## 00000120
	addiu   t6, $zero, 0x0003          ## t6 = 00000003
	lbu     t5, 0x00AF(v0)             ## 000000AF
	slti    $at, t5, 0x0003            
	beq     $at, $zero, lbl_8089B624   
	nop
	beq     $zero, $zero, lbl_8089B624 
	sb      t6, 0x00AF(v0)             ## 000000AF
	lw      t8, 0x0124(s0)             ## 00000124
lbl_8089B600:
	addiu   t7, $zero, 0x005A          ## t7 = 0000005A
	addiu   t0, $zero, 0x0003          ## t0 = 00000003
	sh      t7, 0x03E4(t8)             ## 000003E4
	lw      v0, 0x0124(s0)             ## 00000124
	lbu     t9, 0x00AF(v0)             ## 000000AF
	slti    $at, t9, 0x0003            
	beq     $at, $zero, lbl_8089B624   
	nop
	sb      t0, 0x00AF(v0)             ## 000000AF
lbl_8089B624:
	lui     $at, %hi(var_8089C9A0)     ## $at = 808A0000
	jal     func_80022FD0              
	sh      $zero, %lo(var_8089C9A0)($at) 
	lui     a1, %hi(func_8089B654)     ## a1 = 808A0000
	addiu   a1, a1, %lo(func_8089B654) ## a1 = 8089B654
	jal     func_80896800              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089B654:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	lhu     v0, 0x0088(s0)             ## 00000088
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	lui     a2, 0x3F80                 ## a2 = 3F800000
	andi    t6, v0, 0x0002             ## t6 = 00000000
	beq     t6, $zero, lbl_8089B68C    
	lui     a3, 0x3E19                 ## a3 = 3E190000
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lhu     v0, 0x0088(s0)             ## 00000088
	swc1    $f0, 0x0068(s0)            ## 00000068
lbl_8089B68C:
	mtc1    $zero, $f0                 ## $f0 = 0.00
	andi    t7, v0, 0x0001             ## t7 = 00000000
	beq     t7, $zero, lbl_8089B6AC    
	ori     a3, a3, 0x999A             ## a3 = 3E19999A
	mfc1    a1, $f0                    
	jal     func_80064178              
	swc1    $f0, 0x0010($sp)           
	sw      $zero, 0x03D4(s0)          ## 000003D4
lbl_8089B6AC:
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beql    v0, $zero, lbl_8089B754    
	lwc1    $f4, 0x0154(s0)            ## 00000154
	lbu     t8, 0x0002(s0)             ## 00000002
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	beql    t8, $at, lbl_8089B72C      
	lbu     v0, 0x03F4(s0)             ## 000003F4
	lh      t9, 0x001C(s0)             ## 0000001C
	lui     t0, %hi(var_8089C9A4)      ## t0 = 808A0000
	addiu   t1, $zero, 0xFFFF          ## t1 = FFFFFFFF
	bltz    t9, lbl_8089B70C           
	nop
	lh      t0, %lo(var_8089C9A4)(t0)  
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	lw      a0, 0x002C($sp)            
	bne     t0, $at, lbl_8089B70C      
	nop
	jal     func_800204D0              
	lh      a1, 0x03EC(s0)             ## 000003EC
	jal     func_800C6894              
	nop
	beq     $zero, $zero, lbl_8089B718 
	lw      a0, 0x002C($sp)            
lbl_8089B70C:
	lui     $at, %hi(var_8089C9A4)     ## $at = 808A0000
	sh      t1, %lo(var_8089C9A4)($at) 
	lw      a0, 0x002C($sp)            
lbl_8089B718:
	or      a2, s0, $zero              ## a2 = 00000000
	addiu   a3, $zero, 0x0006          ## a3 = 00000006
	jal     func_800265D4              
	addiu   a1, a0, 0x1C24             ## a1 = 00001C24
	lbu     v0, 0x03F4(s0)             ## 000003F4
lbl_8089B72C:
	beq     v0, $zero, lbl_8089B740    
	addiu   t4, v0, 0xFFFB             ## t4 = FFFFFFFB
	sb      t4, 0x03F4(s0)             ## 000003F4
	beq     $zero, $zero, lbl_8089B780 
	sb      t4, 0x00C8(s0)             ## 000000C8
lbl_8089B740:
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089B784 
	lw      $ra, 0x0024($sp)           
	lwc1    $f4, 0x0154(s0)            ## 00000154
lbl_8089B754:
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
	or      a0, s0, $zero              ## a0 = 00000000
	trunc.w.s $f6, $f4                   
	mfc1    v0, $f6                    
	nop
	beq     v0, $at, lbl_8089B778      
	addiu   $at, $zero, 0x0012         ## $at = 00000012
	bnel    v0, $at, lbl_8089B784      
	lw      $ra, 0x0024($sp)           
lbl_8089B778:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x387A          ## a1 = 0000387A
lbl_8089B780:
	lw      $ra, 0x0024($sp)           
lbl_8089B784:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089B794:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      a1, 0x001C($sp)            
	or      a1, a0, $zero              ## a1 = 00000000
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	lh      t6, 0x001C(a1)             ## 0000001C
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	bnel    t6, $at, lbl_8089B820      
	lh      t0, 0x03DC(a1)             ## 000003DC
	lw      t7, 0x03CC(a1)             ## 000003CC
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bnel    t7, $at, lbl_8089B820      
	lh      t0, 0x03DC(a1)             ## 000003DC
	lh      v0, 0x03E4(a1)             ## 000003E4
	beq     v0, $zero, lbl_8089B81C    
	sll     a0, v0,  2                 
	subu    a0, a0, v0                 
	sll     a0, a0,  2                 
	subu    a0, a0, v0                 
	sll     a0, a0,  4                 
	subu    a0, a0, v0                 
	sll     a0, a0,  3                 
	sll     a0, a0, 16                 
	sra     a0, a0, 16                 
	jal     func_800636C4              ## sins?
	sw      a1, 0x0018($sp)            
	lui     $at, %hi(var_8089CB70)     ## $at = 808A0000
	lwc1    $f4, %lo(var_8089CB70)($at) 
	lw      a1, 0x0018($sp)            
	mul.s   $f6, $f0, $f4              
	trunc.w.s $f8, $f6                   
	mfc1    t9, $f8                    
	beq     $zero, $zero, lbl_8089B8A8 
	sh      t9, 0x03DC(a1)             ## 000003DC
lbl_8089B81C:
	lh      t0, 0x03DC(a1)             ## 000003DC
lbl_8089B820:
	lh      t1, 0x00B6(a1)             ## 000000B6
	lh      v0, 0x008A(a1)             ## 0000008A
	addiu   t5, $zero, 0xF830          ## t5 = FFFFF830
	addu    t4, t0, t1                 
	subu    v0, v0, t4                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
	slti    $at, v0, 0xF830            
	beq     $at, $zero, lbl_8089B850   
	addiu   t9, $zero, 0xE329          ## t9 = FFFFE329
	beq     $zero, $zero, lbl_8089B868 
	sh      t5, 0x03DE(a1)             ## 000003DE
lbl_8089B850:
	slti    $at, v0, 0x07D1            
	bne     $at, $zero, lbl_8089B864   
	or      v1, v0, $zero              ## v1 = 00000000
	beq     $zero, $zero, lbl_8089B864 
	addiu   v1, $zero, 0x07D0          ## v1 = 000007D0
lbl_8089B864:
	sh      v1, 0x03DE(a1)             ## 000003DE
lbl_8089B868:
	lh      t6, 0x03DC(a1)             ## 000003DC
	lh      t7, 0x03DE(a1)             ## 000003DE
	addu    t8, t6, t7                 
	sh      t8, 0x03DC(a1)             ## 000003DC
	lh      v0, 0x03DC(a1)             ## 000003DC
	slti    $at, v0, 0xE329            
	beql    $at, $zero, lbl_8089B894   
	slti    $at, v0, 0x1CD8            
	beq     $zero, $zero, lbl_8089B8A8 
	sh      t9, 0x03DC(a1)             ## 000003DC
	slti    $at, v0, 0x1CD8            
lbl_8089B894:
	bne     $at, $zero, lbl_8089B8A4   
	or      v1, v0, $zero              ## v1 = 00000000
	beq     $zero, $zero, lbl_8089B8A4 
	addiu   v1, $zero, 0x1CD7          ## v1 = 00001CD7
lbl_8089B8A4:
	sh      v1, 0x03DC(a1)             ## 000003DC
lbl_8089B8A8:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089B8B8:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x0034($sp)            
	lbu     v0, 0x0419(s0)             ## 00000419
	andi    t6, v0, 0x0002             ## t6 = 00000000
	beql    t6, $zero, lbl_8089BA40    
	lw      $ra, 0x0024($sp)           
	lw      t7, 0x03CC(s0)             ## 000003CC
	slti    $at, t7, 0x000F            
	beql    $at, $zero, lbl_8089BA40   
	lw      $ra, 0x0024($sp)           
	lh      v1, 0x001C(s0)             ## 0000001C
	andi    t8, v0, 0xFFFD             ## t8 = 00000000
	sb      t8, 0x0419(s0)             ## 00000419
	bltz    v1, lbl_8089B90C           
	lui     t9, %hi(var_8089C9A4)      ## t9 = 808A0000
	lh      t9, %lo(var_8089C9A4)(t9)  
	beql    v1, t9, lbl_8089BA40       
	lw      $ra, 0x0024($sp)           
lbl_8089B90C:
	lbu     v0, 0x00B1(s0)             ## 000000B1
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	or      a0, s0, $zero              ## a0 = 00000000
	beq     v0, $at, lbl_8089BA3C      
	addiu   a1, s0, 0x0420             ## a1 = 00000420
	sb      v0, 0x0400(s0)             ## 00000400
	jal     func_800283BC              
	or      a2, $zero, $zero           ## a2 = 00000000
	lbu     v0, 0x00B1(s0)             ## 000000B1
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beq     v0, $at, lbl_8089B944      
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	bne     v0, $at, lbl_8089B984      
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8089B944:
	lw      t0, 0x03CC(s0)             ## 000003CC
	addiu   $at, $zero, 0x000E         ## $at = 0000000E
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t0, $at, lbl_8089BA3C      
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   t1, $zero, 0x0050          ## t1 = 00000050
	sw      t1, 0x0010($sp)            
	addiu   a2, $zero, 0x0078          ## a2 = 00000078
	jal     func_80027090              
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_80028390              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80899834              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089BA40 
	lw      $ra, 0x0024($sp)           
lbl_8089B984:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3829          ## a1 = 00003829
	addiu   t2, $zero, 0x0008          ## t2 = 00000008
	sw      t2, 0x0010($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x4000          ## a1 = 00004000
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	jal     func_80027090              
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_80028390              
	or      a0, s0, $zero              ## a0 = 00000000
	bne     v0, $zero, lbl_8089BA00    
	lui     t4, %hi(var_8089C9A4)      ## t4 = 808A0000
	addiu   a3, $zero, 0x0040          ## a3 = 00000040
	sh      a3, 0x002A($sp)            
	jal     func_8089B4F0              
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t3, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	lh      a3, 0x002A($sp)            
	bne     t3, $at, lbl_8089B9E0      
	lw      a0, 0x0034($sp)            
	addiu   a3, $zero, 0x00E0          ## a3 = 000000E0
lbl_8089B9E0:
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_80013A84              
	addiu   a2, s0, 0x0024             ## a2 = 00000024
	lw      a0, 0x0034($sp)            
	jal     func_80025B4C              
	or      a1, s0, $zero              ## a1 = 00000000
	beq     $zero, $zero, lbl_8089BA40 
	lw      $ra, 0x0024($sp)           
lbl_8089BA00:
	lh      t4, %lo(var_8089C9A4)(t4)  
	addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
	beq     t4, $at, lbl_8089BA34      
	nop
	lbu     v0, 0x00AF(s0)             ## 000000AF
	lbu     t5, 0x00B0(s0)             ## 000000B0
	addu    t6, v0, t5                 
	slti    $at, t6, 0x0004            
	bne     $at, $zero, lbl_8089BA34   
	slti    $at, v0, 0x0004            
	beq     $at, $zero, lbl_8089BA34   
	addiu   t7, $zero, 0x000D          ## t7 = 0000000D
	sb      t7, 0x0400(s0)             ## 00000400
lbl_8089BA34:
	jal     func_8089A594              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8089BA3C:
	lw      $ra, 0x0024($sp)           
lbl_8089BA40:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089BA50:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x003C($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8089B8B8              
	lw      a1, 0x003C($sp)            
	lbu     t6, 0x00B1(s0)             ## 000000B1
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	beql    t6, $at, lbl_8089BB6C      
	lbu     t5, 0x00AF(s0)             ## 000000AF
	lw      t7, 0x03D4(s0)             ## 000003D4
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	sh      $zero, 0x03E8(s0)          ## 000003E8
	beql    t7, $at, lbl_8089BB04      
	lh      t0, 0x03E8(s0)             ## 000003E8
	lw      t8, 0x03CC(s0)             ## 000003CC
	addiu   $at, $zero, 0x0013         ## $at = 00000013
	beql    t8, $at, lbl_8089BB04      
	lh      t0, 0x03E8(s0)             ## 000003E8
	lwc1    $f0, 0x0068(s0)            ## 00000068
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     $at, 0x3FC0                ## $at = 3FC00000
	c.eq.s  $f4, $f0                   
	nop
	bc1tl   lbl_8089BAE4               
	lh      t9, 0x03E8(s0)             ## 000003E8
	mtc1    $at, $f6                   ## $f6 = 1.50
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x003C($sp)            
	mul.s   $f8, $f0, $f6              
	mfc1    a2, $f8                    
	jal     func_8089680C              
	nop
	sh      v0, 0x03E8(s0)             ## 000003E8
	lh      t9, 0x03E8(s0)             ## 000003E8
lbl_8089BAE4:
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x003C($sp)            
	bnel    t9, $zero, lbl_8089BB04    
	lh      t0, 0x03E8(s0)             ## 000003E8
	jal     func_8089680C              
	addiu   a2, $zero, 0x0000          ## a2 = 00000000
	sh      v0, 0x03E8(s0)             ## 000003E8
	lh      t0, 0x03E8(s0)             ## 000003E8
lbl_8089BB04:
	bnel    t0, $zero, lbl_8089BB18    
	lui     $at, 0x4270                ## $at = 42700000
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, 0x4270                ## $at = 42700000
lbl_8089BB18:
	mtc1    $at, $f10                  ## $f10 = 60.00
	addiu   t1, $zero, 0x001D          ## t1 = 0000001D
	sw      t1, 0x0014($sp)            
	lw      a0, 0x003C($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	lui     a2, 0x41C8                 ## a2 = 41C80000
	lui     a3, 0x41F0                 ## a3 = 41F00000
	jal     func_80021E6C              
	swc1    $f10, 0x0010($sp)          
	lhu     t2, 0x0088(s0)             ## 00000088
	addiu   t4, $zero, 0x0001          ## t4 = 00000001
	andi    t3, t2, 0x0001             ## t3 = 00000000
	bnel    t3, $zero, lbl_8089BB58    
	lw      t9, 0x03D8(s0)             ## 000003D8
	sw      t4, 0x03D4(s0)             ## 000003D4
	lw      t9, 0x03D8(s0)             ## 000003D8
lbl_8089BB58:
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x003C($sp)            
	jalr    $ra, t9                    
	nop
	lbu     t5, 0x00AF(s0)             ## 000000AF
lbl_8089BB6C:
	blezl   t5, lbl_8089BC00           
	lw      t4, 0x03CC(s0)             ## 000003CC
	lw      v0, 0x03CC(s0)             ## 000003CC
	addiu   $at, $zero, 0x0009         ## $at = 00000009
	beq     v0, $at, lbl_8089BB94      
	addiu   $at, $zero, 0x000E         ## $at = 0000000E
	beq     v0, $at, lbl_8089BB94      
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8089B794              
	lw      a1, 0x003C($sp)            
lbl_8089BB94:
	lui     t6, %hi(var_8089C9A0)      ## t6 = 808A0000
	lh      t6, %lo(var_8089C9A0)(t6)  
	lui     t8, %hi(var_8089C9A4)      ## t8 = 808A0000
	beql    t6, $zero, lbl_8089BC00    
	lw      t4, 0x03CC(s0)             ## 000003CC
	lh      t7, 0x001C(s0)             ## 0000001C
	lh      t8, %lo(var_8089C9A4)(t8)  
	or      a0, s0, $zero              ## a0 = 00000000
	beql    t7, t8, lbl_8089BC00       
	lw      t4, 0x03CC(s0)             ## 000003CC
	jal     func_80899B44              
	lw      a1, 0x003C($sp)            
	lh      t0, 0x001C(s0)             ## 0000001C
	lui     $at, %hi(var_8089C9A4)     ## $at = 808A0000
	addiu   t1, $zero, 0x005A          ## t1 = 0000005A
	sh      t0, %lo(var_8089C9A4)($at) 
	lui     $at, %hi(var_8089C9A0)     ## $at = 808A0000
	sh      $zero, %lo(var_8089C9A0)($at) 
	lw      v0, 0x0120(s0)             ## 00000120
	beql    v0, $zero, lbl_8089BBF4    
	lw      t3, 0x0124(s0)             ## 00000124
	beq     $zero, $zero, lbl_8089BBFC 
	sh      t1, 0x03E4(v0)             ## 000003E4
	lw      t3, 0x0124(s0)             ## 00000124
lbl_8089BBF4:
	addiu   t2, $zero, 0x005A          ## t2 = 0000005A
	sh      t2, 0x03E4(t3)             ## 000003E4
lbl_8089BBFC:
	lw      t4, 0x03CC(s0)             ## 000003CC
lbl_8089BC00:
	addiu   a0, s0, 0x03DC             ## a0 = 000003DC
	or      a1, $zero, $zero           ## a1 = 00000000
	slti    $at, t4, 0x000F            
	bne     $at, $zero, lbl_8089BC88   
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	addiu   a3, $zero, 0x07D0          ## a3 = 000007D0
	jal     func_80064508              
	sw      $zero, 0x0010($sp)         
	lw      t9, 0x03CC(s0)             ## 000003CC
	slti    $at, t9, 0x0015            
	beql    $at, $zero, lbl_8089BC78   
	lh      v0, 0x03E4(s0)             ## 000003E4
	lh      v0, 0x03E4(s0)             ## 000003E4
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bnel    v0, $at, lbl_8089BC78      
	lh      v0, 0x03E4(s0)             ## 000003E4
	lhu     t5, 0x0088(s0)             ## 00000088
	andi    t6, t5, 0x0001             ## t6 = 00000000
	beql    t6, $zero, lbl_8089BC78    
	lh      v0, 0x03E4(s0)             ## 000003E4
	lbu     t7, 0x00AF(s0)             ## 000000AF
	or      a0, s0, $zero              ## a0 = 00000000
	blezl   t7, lbl_8089BC70           
	addiu   t8, v0, 0xFFFF             ## t8 = FFFFFFFF
	jal     func_8089A450              
	lw      a1, 0x003C($sp)            
	lh      v0, 0x03E4(s0)             ## 000003E4
	addiu   t8, v0, 0xFFFF             ## t8 = FFFFFFFF
lbl_8089BC70:
	sh      t8, 0x03E4(s0)             ## 000003E4
	lh      v0, 0x03E4(s0)             ## 000003E4
lbl_8089BC78:
	slti    $at, v0, 0x0002            
	bne     $at, $zero, lbl_8089BC88   
	addiu   t0, v0, 0xFFFF             ## t0 = FFFFFFFF
	sh      t0, 0x03E4(s0)             ## 000003E4
lbl_8089BC88:
	lw      t1, 0x0028(s0)             ## 00000028
	lui     $at, 0x4220                ## $at = 42200000
	lw      t2, 0x0024(s0)             ## 00000024
	sw      t1, 0x003C(s0)             ## 0000003C
	lwc1    $f16, 0x003C(s0)           ## 0000003C
	mtc1    $at, $f18                  ## $f18 = 40.00
	lbu     t3, 0x00AF(s0)             ## 000000AF
	sw      t2, 0x0038(s0)             ## 00000038
	add.s   $f4, $f16, $f18            
	lw      t2, 0x002C(s0)             ## 0000002C
	swc1    $f4, 0x003C(s0)            ## 0000003C
	blez    t3, lbl_8089BD5C           
	sw      t2, 0x0040(s0)             ## 00000040
	lbu     t4, 0x03F4(s0)             ## 000003F4
	addiu   $at, $zero, 0x00FF         ## $at = 000000FF
	or      a0, s0, $zero              ## a0 = 00000000
	bne     t4, $at, lbl_8089BD5C      
	addiu   a1, s0, 0x0408             ## a1 = 00000408
	jal     func_80050B00              
	sw      a1, 0x0028($sp)            
	lwc1    $f6, 0x0080(s0)            ## 00000080
	lwc1    $f8, 0x0028(s0)            ## 00000028
	c.eq.s  $f6, $f8                   
	nop
	bc1fl   lbl_8089BD18               
	lh      v0, 0x001C(s0)             ## 0000001C
	lw      t9, 0x03CC(s0)             ## 000003CC
	lw      a0, 0x003C($sp)            
	lw      a2, 0x0028($sp)            
	slti    $at, t9, 0x0011            
	beq     $at, $zero, lbl_8089BD14   
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	jal     func_8004C130              ## CollisionCheck_setOT
	addu    a1, a0, $at                
lbl_8089BD14:
	lh      v0, 0x001C(s0)             ## 0000001C
lbl_8089BD18:
	lui     t6, %hi(var_8089C9A4)      ## t6 = 808A0000
	bltzl   v0, lbl_8089BD34           
	lbu     t7, 0x0114(s0)             ## 00000114
	lh      t6, %lo(var_8089C9A4)(t6)  
	beql    v0, t6, lbl_8089BD60       
	lw      t2, 0x03CC(s0)             ## 000003CC
	lbu     t7, 0x0114(s0)             ## 00000114
lbl_8089BD34:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	beq     t7, $zero, lbl_8089BD50    
	lw      a0, 0x003C($sp)            
	lhu     t8, 0x0112(s0)             ## 00000112
	andi    t0, t8, 0x4000             ## t0 = 00000000
	bne     t0, $zero, lbl_8089BD5C    
lbl_8089BD50:
	addu    a1, a0, $at                
	jal     func_8004BF40              ## CollisionCheck_setAC
	lw      a2, 0x0028($sp)            
lbl_8089BD5C:
	lw      t2, 0x03CC(s0)             ## 000003CC
lbl_8089BD60:
	addiu   $at, $zero, 0x0009         ## $at = 00000009
	bne     t2, $at, lbl_8089BDF4      
	lui     $at, 0x4160                ## $at = 41600000
	mtc1    $at, $f10                  ## $f10 = 14.00
	lwc1    $f0, 0x0154(s0)            ## 00000154
	lui     $at, 0x41A0                ## $at = 41A00000
	c.le.s  $f10, $f0                  
	nop
	bc1fl   lbl_8089BDF8               
	lw      $ra, 0x0024($sp)           
	mtc1    $at, $f16                  ## $f16 = 20.00
	nop
	c.le.s  $f0, $f16                  
	nop
	bc1fl   lbl_8089BDF8               
	lw      $ra, 0x0024($sp)           
	lbu     v0, 0x0464(s0)             ## 00000464
	andi    t3, v0, 0x0004             ## t3 = 00000000
	bne     t3, $zero, lbl_8089BDDC    
	andi    t6, v0, 0xFFFB             ## t6 = 00000000
	lbu     t4, 0x0465(s0)             ## 00000465
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	andi    t9, t4, 0x0002             ## t9 = 00000000
	bne     t9, $zero, lbl_8089BDDC    
	lw      a0, 0x003C($sp)            
	addu    a1, a0, $at                
	jal     func_8004BD50              ## CollisionCheck_setAT
	addiu   a2, s0, 0x0454             ## a2 = 00000454
	beq     $zero, $zero, lbl_8089BDF8 
	lw      $ra, 0x0024($sp)           
lbl_8089BDDC:
	lbu     t7, 0x0465(s0)             ## 00000465
	sb      t6, 0x0464(s0)             ## 00000464
	or      a0, s0, $zero              ## a0 = 00000000
	andi    t8, t7, 0xFFFD             ## t8 = 00000000
	jal     func_80899544              
	sb      t8, 0x0465(s0)             ## 00000465
lbl_8089BDF4:
	lw      $ra, 0x0024($sp)           
lbl_8089BDF8:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089BE08:
	sw      a0, 0x0000($sp)            
	sw      a3, 0x000C($sp)            
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	beq     a1, $at, lbl_8089BE3C      
	lw      v0, 0x0010($sp)            
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	beq     a1, $at, lbl_8089BE54      
	lw      t0, 0x0014($sp)            
	addiu   $at, $zero, 0x0021         ## $at = 00000021
	beq     a1, $at, lbl_8089BE70      
	lw      t3, 0x0014($sp)            
	beq     $zero, $zero, lbl_8089BE8C 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_8089BE3C:
	lw      t7, 0x0014($sp)            
	lh      t6, 0x0002(v0)             ## 00000002
	lh      t8, 0x03DC(t7)             ## 000003DC
	subu    t9, t6, t8                 
	beq     $zero, $zero, lbl_8089BE88 
	sh      t9, 0x0002(v0)             ## 00000002
lbl_8089BE54:
	lh      t1, 0x03EA(t0)             ## 000003EA
	lui     t2, 0x0601                 ## t2 = 06010000
	addiu   t2, t2, 0xE198             ## t2 = 0600E198
	beql    t1, $zero, lbl_8089BE8C    
	or      v0, $zero, $zero           ## v0 = 00000000
	beq     $zero, $zero, lbl_8089BE88 
	sw      t2, 0x0000(a2)             ## 00000000
lbl_8089BE70:
	lh      t4, 0x03EA(t3)             ## 000003EA
	lui     t5, 0x0601                 ## t5 = 06010000
	addiu   t5, t5, 0x0060             ## t5 = 06010060
	beql    t4, $zero, lbl_8089BE8C    
	or      v0, $zero, $zero           ## v0 = 00000000
	sw      t5, 0x0000(a2)             ## 00000000
lbl_8089BE88:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_8089BE8C:
	jr      $ra                        
	nop


func_8089BE94:
	addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
	sw      $ra, 0x0024($sp)           
	sw      s1, 0x0020($sp)            
	sw      s0, 0x001C($sp)            
	sw      a0, 0x0060($sp)            
	sw      a1, 0x0064($sp)            
	sw      a2, 0x0068($sp)            
	sw      a3, 0x006C($sp)            
	lw      t6, 0x0064($sp)            
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	addiu   s1, $zero, 0xFFFF          ## s1 = FFFFFFFF
	bne     t6, $at, lbl_8089BFD8      
	lw      s0, 0x0070($sp)            
	lw      s0, 0x0070($sp)            
	lui     a0, %hi(var_8089CAAC)      ## a0 = 808A0000
	addiu   a0, a0, %lo(var_8089CAAC)  ## a0 = 8089CAAC
	addiu   a1, s0, 0x04A0             ## a1 = 000004A0
	jal     func_800AB958              
	sw      a1, 0x0034($sp)            
	lui     a0, %hi(var_8089CAB8)      ## a0 = 808A0000
	addiu   a1, s0, 0x0494             ## a1 = 00000494
	sw      a1, 0x0038($sp)            
	jal     func_800AB958              
	addiu   a0, a0, %lo(var_8089CAB8)  ## a0 = 8089CAB8
	lui     a0, %hi(var_8089CAC4)      ## a0 = 808A0000
	addiu   a1, s0, 0x04B8             ## a1 = 000004B8
	sw      a1, 0x002C($sp)            
	jal     func_800AB958              
	addiu   a0, a0, %lo(var_8089CAC4)  ## a0 = 8089CAC4
	lui     a0, %hi(var_8089CAD0)      ## a0 = 808A0000
	addiu   a3, s0, 0x04AC             ## a3 = 000004AC
	or      a1, a3, $zero              ## a1 = 000004AC
	sw      a3, 0x0030($sp)            
	jal     func_800AB958              
	addiu   a0, a0, %lo(var_8089CAD0)  ## a0 = 8089CAD0
	lw      t7, 0x002C($sp)            
	lw      a3, 0x0030($sp)            
	addiu   a0, s0, 0x0454             ## a0 = 00000454
	lw      a1, 0x0038($sp)            
	lw      a2, 0x0034($sp)            
	jal     func_80050B64              
	sw      t7, 0x0010($sp)            
	lui     a0, %hi(var_8089CA94)      ## a0 = 808A0000
	addiu   a0, a0, %lo(var_8089CA94)  ## a0 = 8089CA94
	jal     func_800AB958              
	addiu   a1, $sp, 0x0054            ## a1 = FFFFFFF4
	lui     a0, %hi(var_8089CAA0)      ## a0 = 808A0000
	addiu   a0, a0, %lo(var_8089CAA0)  ## a0 = 8089CAA0
	jal     func_800AB958              
	addiu   a1, $sp, 0x0048            ## a1 = FFFFFFE8
	lw      t8, 0x03CC(s0)             ## 000003CC
	addiu   $at, $zero, 0x0009         ## $at = 00000009
	bne     t8, $at, lbl_8089BFFC      
	lui     $at, 0x4160                ## $at = 41600000
	mtc1    $at, $f4                   ## $f4 = 14.00
	lwc1    $f0, 0x0154(s0)            ## 00000154
	lui     $at, 0x41A0                ## $at = 41A00000
	c.lt.s  $f0, $f4                   
	nop
	bc1fl   lbl_8089BFA4               
	mtc1    $at, $f6                   ## $f6 = 20.00
	jal     func_8001A890              
	lw      a0, 0x0404(s0)             ## 00000404
	jal     func_80014254              
	or      a0, v0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089C000 
	lw      v0, 0x0064($sp)            
	mtc1    $at, $f6                   ## $f6 = 0.00
lbl_8089BFA4:
	nop
	c.lt.s  $f0, $f6                   
	nop
	bc1fl   lbl_8089C000               
	lw      v0, 0x0064($sp)            
	jal     func_8001A890              
	lw      a0, 0x0404(s0)             ## 00000404
	or      a0, v0, $zero              ## a0 = 00000000
	addiu   a1, $sp, 0x0054            ## a1 = FFFFFFF4
	jal     func_80013F30              
	addiu   a2, $sp, 0x0048            ## a2 = FFFFFFE8
	beq     $zero, $zero, lbl_8089C000 
	lw      v0, 0x0064($sp)            
lbl_8089BFD8:
	lui     t9, %hi(var_8089CA88)      ## t9 = 808A0000
	addiu   a3, t9, %lo(var_8089CA88)  ## a3 = 8089CA88
	addiu   t0, $zero, 0x0026          ## t0 = 00000026
	sw      t0, 0x0010($sp)            
	sw      a3, 0x0014($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x0064($sp)            
	jal     func_8001F74C              
	addiu   a2, $zero, 0x002D          ## a2 = 0000002D
lbl_8089BFFC:
	lw      v0, 0x0064($sp)            
lbl_8089C000:
	addiu   $at, $zero, 0x0026         ## $at = 00000026
	lui     a0, %hi(var_8089CA88)      ## a0 = 808A0000
	beq     v0, $at, lbl_8089C030      
	addiu   a0, a0, %lo(var_8089CA88)  ## a0 = 8089CA88
	addiu   $at, $zero, 0x002D         ## $at = 0000002D
	bne     v0, $at, lbl_8089C03C      
	lui     a0, %hi(var_8089CA88)      ## a0 = 808A0000
	addiu   a0, a0, %lo(var_8089CA88)  ## a0 = 8089CA88
	jal     func_800AB958              
	addiu   a1, s0, 0x04E0             ## a1 = 000004E0
	beq     $zero, $zero, lbl_8089C03C 
	lw      v0, 0x0064($sp)            
lbl_8089C030:
	jal     func_800AB958              
	addiu   a1, s0, 0x04D4             ## a1 = 000004D4
	lw      v0, 0x0064($sp)            
lbl_8089C03C:
	lh      t1, 0x03E6(s0)             ## 000003E6
	addiu   t2, v0, 0xFFF7             ## t2 = FFFFFFF7
	sltiu   $at, t2, 0x0028            
	beql    t1, $zero, lbl_8089C0D8    
	lw      $ra, 0x0024($sp)           
	beq     $at, $zero, lbl_8089C0B0   
	sll     t2, t2,  2                 
	lui     $at, %hi(var_8089CB74)     ## $at = 808A0000
	addu    $at, $at, t2               
	lw      t2, %lo(var_8089CB74)($at) 
	jr      t2                         
	nop
var_8089C06C:
	beq     $zero, $zero, lbl_8089C0B0 
	or      s1, $zero, $zero           ## s1 = 00000000
var_8089C074:
	beq     $zero, $zero, lbl_8089C0B0 
	addiu   s1, $zero, 0x0001          ## s1 = 00000001
var_8089C07C:
	beq     $zero, $zero, lbl_8089C0B0 
	addiu   s1, $zero, 0x0002          ## s1 = 00000002
var_8089C084:
	beq     $zero, $zero, lbl_8089C0B0 
	addiu   s1, $zero, 0x0003          ## s1 = 00000003
var_8089C08C:
	beq     $zero, $zero, lbl_8089C0B0 
	addiu   s1, $zero, 0x0004          ## s1 = 00000004
var_8089C094:
	beq     $zero, $zero, lbl_8089C0B0 
	addiu   s1, $zero, 0x0005          ## s1 = 00000005
var_8089C09C:
	beq     $zero, $zero, lbl_8089C0B0 
	addiu   s1, $zero, 0x0006          ## s1 = 00000006
var_8089C0A4:
	beq     $zero, $zero, lbl_8089C0B0 
	addiu   s1, $zero, 0x0007          ## s1 = 00000007
var_8089C0AC:
	addiu   s1, $zero, 0x0008          ## s1 = 00000008
lbl_8089C0B0:
	bltz    s1, lbl_8089C0D4           
	lui     a0, %hi(var_8089CADC)      ## a0 = 808A0000
	sll     t3, s1,  2                 
	subu    t3, t3, s1                 
	sll     t3, t3,  2                 
	addu    a1, s0, t3                 
	addiu   a1, a1, 0x04EC             ## a1 = 000004EC
	jal     func_800AB958              
	addiu   a0, a0, %lo(var_8089CADC)  ## a0 = 8089CADC
lbl_8089C0D4:
	lw      $ra, 0x0024($sp)           
lbl_8089C0D8:
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0060           ## $sp = 00000000


func_8089C0E8:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s2, 0x0040($sp)            
	sw      s0, 0x0038($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s2, a1, $zero              ## s2 = 00000000
	sw      $ra, 0x0044($sp)           
	sw      s1, 0x003C($sp)            
	lw      s1, 0x0000(s2)             ## 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, s2, $zero              ## a1 = 00000000
	jal     func_80022438              
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	lui     a1, %hi(var_8089CAE8)      ## a1 = 808A0000
	addiu   a1, a1, %lo(var_8089CAE8)  ## a1 = 8089CAE8
	lui     t6, 0xD700                 ## t6 = D7000000
	ori     t6, t6, 0x0002             ## t6 = D7000002
	sw      t6, 0x0000(a1)             ## 8089CAE8
	lui     v1, 0x8012                 ## v1 = 80120000
	lw      v1, -0x4600(v1)            ## 8011BA00
	lh      t7, 0x06D6(v1)             ## 801206D6
	lh      t2, 0x06D4(v1)             ## 801206D4
	andi    t8, t7, 0xFFFF             ## t8 = 00000000
	sll     t3, t2, 16                 
	or      t4, t8, t3                 ## t4 = 00000000
	sw      t4, 0x0004(a1)             ## 8089CAEC
	lw      v0, 0x02C0(s1)             ## 000002C0
	lui     t6, 0xDB06                 ## t6 = DB060000
	ori     t6, t6, 0x0020             ## t6 = DB060020
	addiu   t5, v0, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s1)             ## 000002C0
	sw      a1, 0x0004(v0)             ## 00000004
	sw      t6, 0x0000(v0)             ## 00000000
	lbu     t7, 0x03F4(s0)             ## 000003F4
	addiu   $at, $zero, 0x00FF         ## $at = 000000FF
	bne     t7, $at, lbl_8089C290      
	nop
	jal     func_8007E298              
	lw      a0, 0x0000(s2)             ## 00000000
	lw      v0, 0x02C0(s1)             ## 000002C0
	lui     t2, 0xFB00                 ## t2 = FB000000
	lui     t5, 0xDB06                 ## t5 = DB060000
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(s1)             ## 000002C0
	sw      t2, 0x0000(v0)             ## 00000000
	lbu     t3, 0x03F4(s0)             ## 000003F4
	ori     t5, t5, 0x0024             ## t5 = DB060024
	or      a0, s2, $zero              ## a0 = 00000000
	sw      t3, 0x0004(v0)             ## 00000004
	lw      v0, 0x02C0(s1)             ## 000002C0
	lui     t6, 0x800F                 ## t6 = 800F0000
	addiu   t6, t6, 0x8520             ## t6 = 800E8520
	addiu   t4, v0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(s1)             ## 000002C0
	sw      t6, 0x0004(v0)             ## 00000004
	sw      t5, 0x0000(v0)             ## 00000000
	lw      a1, 0x0140(s0)             ## 00000140
	lw      a2, 0x015C(s0)             ## 0000015C
	lui     t7, %hi(func_8089BE94)     ## t7 = 808A0000
	addiu   t7, t7, %lo(func_8089BE94) ## t7 = 8089BE94
	sw      t7, 0x0010($sp)            
	sw      s0, 0x0014($sp)            
	lw      t9, 0x02C0(s1)             ## 000002C0
	lui     a3, %hi(func_8089BE08)     ## a3 = 808A0000
	addiu   a3, a3, %lo(func_8089BE08) ## a3 = 8089BE08
	jal     func_8008A414              
	sw      t9, 0x0018($sp)            
	sw      v0, 0x02C0(s1)             ## 000002C0
	lh      t2, 0x03E6(s0)             ## 000003E6
	beql    t2, $zero, lbl_8089C328    
	lw      $ra, 0x0044($sp)           
	lh      t4, 0x03E6(s0)             ## 000003E6
	lbu     t8, 0x0114(s0)             ## 00000114
	or      a0, s2, $zero              ## a0 = 00000000
	addiu   t5, t4, 0xFFFF             ## t5 = FFFFFFFF
	sh      t5, 0x03E6(s0)             ## 000003E6
	lh      v1, 0x03E6(s0)             ## 000003E6
	addiu   t3, t8, 0x0001             ## t3 = 00000001
	sb      t3, 0x0114(s0)             ## 00000114
	andi    t6, v1, 0x0003             ## t6 = 00000000
	bne     t6, $zero, lbl_8089C324    
	sra     v0, v1,  2                 
	sll     t7, v0,  2                 
	subu    t7, t7, v0                 
	lui     $at, %hi(var_8089CC14)     ## $at = 808A0000
	lwc1    $f4, %lo(var_8089CC14)($at) 
	sll     t7, t7,  2                 
	addu    a2, s0, t7                 
	addiu   t9, $zero, 0x0096          ## t9 = 00000096
	addiu   t2, $zero, 0x0096          ## t2 = 00000096
	addiu   t8, $zero, 0x00FA          ## t8 = 000000FA
	addiu   t3, $zero, 0x00EB          ## t3 = 000000EB
	addiu   t4, $zero, 0x00F5          ## t4 = 000000F5
	addiu   t5, $zero, 0x00FF          ## t5 = 000000FF
	sw      t5, 0x0024($sp)            
	sw      t4, 0x0020($sp)            
	sw      t3, 0x001C($sp)            
	sw      t8, 0x0018($sp)            
	sw      t2, 0x0014($sp)            
	sw      t9, 0x0010($sp)            
	addiu   a2, a2, 0x04EC             ## a2 = 000004EC
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a3, $zero, 0x0096          ## a3 = 00000096
	jal     func_8001DC4C              
	swc1    $f4, 0x0028($sp)           
	beq     $zero, $zero, lbl_8089C328 
	lw      $ra, 0x0044($sp)           
lbl_8089C290:
	jal     func_8007E2C0              
	lw      a0, 0x0000(s2)             ## 00000000
	lw      v0, 0x02D0(s1)             ## 000002D0
	lui     t7, 0xE700                 ## t7 = E7000000
	lui     t5, 0xDB06                 ## t5 = DB060000
	addiu   t6, v0, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s1)             ## 000002D0
	sw      $zero, 0x0004(v0)          ## 00000004
	sw      t7, 0x0000(v0)             ## 00000000
	lw      v0, 0x02D0(s1)             ## 000002D0
	lui     t2, 0xFB00                 ## t2 = FB000000
	ori     t5, t5, 0x0024             ## t5 = DB060024
	addiu   t9, v0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s1)             ## 000002D0
	sw      t2, 0x0000(v0)             ## 00000000
	lbu     t3, 0x03F4(s0)             ## 000003F4
	or      a0, s2, $zero              ## a0 = 00000000
	lui     a3, %hi(func_8089BE08)     ## a3 = 808A0000
	sw      t3, 0x0004(v0)             ## 00000004
	lw      v0, 0x02D0(s1)             ## 000002D0
	lui     t6, 0x800F                 ## t6 = 800F0000
	addiu   t6, t6, 0x8510             ## t6 = 800E8510
	addiu   t4, v0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02D0(s1)             ## 000002D0
	sw      t6, 0x0004(v0)             ## 00000004
	sw      t5, 0x0000(v0)             ## 00000000
	lw      a1, 0x0140(s0)             ## 00000140
	lw      a2, 0x015C(s0)             ## 0000015C
	lui     t7, %hi(func_8089BE94)     ## t7 = 808A0000
	addiu   t7, t7, %lo(func_8089BE94) ## t7 = 8089BE94
	sw      t7, 0x0010($sp)            
	sw      s0, 0x0014($sp)            
	lw      t9, 0x02D0(s1)             ## 000002D0
	addiu   a3, a3, %lo(func_8089BE08) ## a3 = 8089BE08
	jal     func_8008A414              
	sw      t9, 0x0018($sp)            
	sw      v0, 0x02D0(s1)             ## 000002D0
lbl_8089C324:
	lw      $ra, 0x0044($sp)           
lbl_8089C328:
	lw      s0, 0x0038($sp)            
	lw      s1, 0x003C($sp)            
	lw      s2, 0x0040($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000


func_8089C33C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lui     a1, 0x0601                 ## a1 = 06010000
	addiu   a1, a1, 0x6388             ## a1 = 06016388
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	lui     a2, 0xBF80                 ## a2 = BF800000
	jal     func_8008D328              
	sw      a3, 0x0018($sp)            
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f4                   ## $f4 = 10.00
	lui     $at, 0x4100                ## $at = 41000000
	mtc1    $at, $f8                   ## $f8 = 8.00
	mul.s   $f6, $f0, $f4              
	lw      a3, 0x0018($sp)            
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	lui     a1, %hi(func_8089AD70)     ## a1 = 808A0000
	lh      t8, 0x001C(a3)             ## 0000001C
	addiu   t3, $zero, 0x000C          ## t3 = 0000000C
	addiu   a1, a1, %lo(func_8089AD70) ## a1 = 8089AD70
	add.s   $f10, $f6, $f8             
	or      a0, a3, $zero              ## a0 = 00000000
	trunc.w.s $f16, $f10                 
	mfc1    t7, $f16                   
	bne     t8, $at, lbl_8089C3D8      
	sw      t7, 0x03E0(a3)             ## 000003E0
	lwc1    $f0, 0x001C($sp)           
	or      t9, t7, $zero              ## t9 = 00000000
	add.s   $f18, $f0, $f0             
	swc1    $f18, 0x0068(a3)           ## 00000068
	bgez    t9, lbl_8089C3D0           
	sra     t0, t9,  1                 
	addiu   $at, t9, 0x0001            ## $at = 00000001
	sra     t0, $at,  1                
lbl_8089C3D0:
	beq     $zero, $zero, lbl_8089C3E0 
	sw      t0, 0x03E0(a3)             ## 000003E0
lbl_8089C3D8:
	lwc1    $f4, 0x001C($sp)           
	swc1    $f4, 0x0068(a3)            ## 00000068
lbl_8089C3E0:
	lh      t1, 0x00B6(a3)             ## 000000B6
	sw      $zero, 0x03D4(a3)          ## 000003D4
	sw      t3, 0x03CC(a3)             ## 000003CC
	addiu   t2, t1, 0x3FFF             ## t2 = 00003FFF
	jal     func_80896800              
	sh      t2, 0x0032(a3)             ## 00000032
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089C408:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0020($sp)            
	or      a3, a1, $zero              ## a3 = 00000000
	lw      a0, 0x0020($sp)            
	or      a1, a3, $zero              ## a1 = 00000000
	lui     a2, 0x4416                 ## a2 = 44160000
	jal     func_80026614              
	sw      a3, 0x0024($sp)            
	lw      a3, 0x0024($sp)            
	beq     v0, $zero, lbl_8089C620    
	or      a1, v0, $zero              ## a1 = 00000000
	or      a0, a3, $zero              ## a0 = 00000000
	sw      v0, 0x001C($sp)            
	jal     func_800213B4              
	sw      a3, 0x0024($sp)            
	lw      a0, 0x0024($sp)            
	lui     a2, 0xC100                 ## a2 = C1000000
	lh      t7, 0x00B6(a0)             ## 000000B6
	subu    t1, v0, t7                 
	addiu   t8, t7, 0x3FFF             ## t8 = 00003FFF
	sll     t1, t1, 16                 
	sh      t8, 0x0032(a0)             ## 00000032
	sra     t1, t1, 16                 
	sh      t1, 0x001A($sp)            
	sh      $zero, 0x0018($sp)         
	jal     func_8089680C              
	lw      a1, 0x0020($sp)            
	lw      a3, 0x0024($sp)            
	lh      t0, 0x0018($sp)            
	beq     v0, $zero, lbl_8089C48C    
	lh      t1, 0x001A($sp)            
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
lbl_8089C48C:
	or      a0, a3, $zero              ## a0 = 00000000
	lw      a1, 0x0020($sp)            
	lui     a2, 0x4100                 ## a2 = 41000000
	sw      a3, 0x0024($sp)            
	sh      t0, 0x0018($sp)            
	jal     func_8089680C              
	sh      t1, 0x001A($sp)            
	lw      a3, 0x0024($sp)            
	lh      t0, 0x0018($sp)            
	beq     v0, $zero, lbl_8089C4C4    
	lh      t1, 0x001A($sp)            
	ori     t0, t0, 0x0002             ## t0 = 00000002
	sll     t0, t0, 16                 
	sra     t0, t0, 16                 
lbl_8089C4C4:
	lui     $at, 0x42B4                ## $at = 42B40000
	mtc1    $at, $f6                   ## $f6 = 90.00
	lwc1    $f4, 0x0090(a3)            ## 00000090
	lh      t9, 0x00B6(a3)             ## 000000B6
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	c.lt.s  $f4, $f6                   
	sh      t9, 0x0032(a3)             ## 00000032
	lw      a1, 0x0020($sp)            
	or      a0, a3, $zero              ## a0 = 00000000
	bc1t    lbl_8089C4F8               
	lui     a2, 0x4307                 ## a2 = 43070000
	bnel    t0, $at, lbl_8089C51C      
	lw      t2, 0x001C($sp)            
lbl_8089C4F8:
	sw      a3, 0x0024($sp)            
	sh      t0, 0x0018($sp)            
	jal     func_8089680C              
	sh      t1, 0x001A($sp)            
	lw      a3, 0x0024($sp)            
	lh      t0, 0x0018($sp)            
	beq     v0, $zero, lbl_8089C52C    
	lh      t1, 0x001A($sp)            
	lw      t2, 0x001C($sp)            
lbl_8089C51C:
	addiu   $at, $zero, 0x0066         ## $at = 00000066
	lh      t3, 0x0000(t2)             ## 00000000
	bnel    t3, $at, lbl_8089C540      
	lh      t4, 0x00B6(a3)             ## 000000B6
lbl_8089C52C:
	jal     func_8089AA00              
	or      a0, a3, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8089C624 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	lh      t4, 0x00B6(a3)             ## 000000B6
lbl_8089C540:
	sll     v1, t0, 16                 
	sra     v1, v1, 16                 
	addiu   t5, t4, 0x3FFF             ## t5 = 00003FFF
	bne     t0, $zero, lbl_8089C574    
	sh      t5, 0x0032(a3)             ## 00000032
	lw      t6, 0x0020($sp)            
	lui     v1, 0x0001                 ## v1 = 00010000
	addu    v1, v1, t6                 
	lw      v1, 0x1DE4(v1)             ## 00011DE4
	andi    v1, v1, 0x0001             ## v1 = 00000000
	sll     v1, v1, 16                 
	beq     $zero, $zero, lbl_8089C574 
	sra     v1, v1, 16                 
lbl_8089C574:
	bltz    t1, lbl_8089C584           
	subu    v0, $zero, t1              
	beq     $zero, $zero, lbl_8089C584 
	or      v0, t1, $zero              ## v0 = 00000000
lbl_8089C584:
	slti    $at, v0, 0x2000            
	bne     $at, $zero, lbl_8089C5AC   
	andi    t7, v1, 0x0001             ## t7 = 00000000
	bltz    t1, lbl_8089C5A0           
	subu    v0, $zero, t1              
	beq     $zero, $zero, lbl_8089C5A0 
	or      v0, t1, $zero              ## v0 = 00000000
lbl_8089C5A0:
	slti    $at, v0, 0x6000            
	bne     $at, $zero, lbl_8089C5D8   
	nop
lbl_8089C5AC:
	beq     t7, $zero, lbl_8089C5C8    
	or      a0, a3, $zero              ## a0 = 00000000
	or      a0, a3, $zero              ## a0 = 00000000
	jal     func_8089C33C              
	lui     a1, 0x4100                 ## a1 = 41000000
	beq     $zero, $zero, lbl_8089C624 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_8089C5C8:
	jal     func_8089C33C              
	lui     a1, 0xC100                 ## a1 = C1000000
	beq     $zero, $zero, lbl_8089C624 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_8089C5D8:
	bltz    t1, lbl_8089C5E8           
	subu    v0, $zero, t1              
	beq     $zero, $zero, lbl_8089C5E8 
	or      v0, t1, $zero              ## v0 = 00000000
lbl_8089C5E8:
	slti    $at, v0, 0x5FFF            
	beq     $at, $zero, lbl_8089C618   
	andi    t8, v1, 0x0001             ## t8 = 00000000
	beq     t8, $zero, lbl_8089C610    
	or      a0, a3, $zero              ## a0 = 00000000
	or      a0, a3, $zero              ## a0 = 00000000
	jal     func_8089C33C              
	lui     a1, 0x4080                 ## a1 = 40800000
	beq     $zero, $zero, lbl_8089C624 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_8089C610:
	jal     func_8089C33C              
	lui     a1, 0xC080                 ## a1 = C0800000
lbl_8089C618:
	beq     $zero, $zero, lbl_8089C624 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_8089C620:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_8089C624:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8089C634:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0028($sp)            
	sw      a1, 0x002C($sp)            
	sh      $zero, 0x001C($sp)         
	lw      a0, 0x0028($sp)            
	lw      a1, 0x002C($sp)            
	jal     func_80026614              
	lui     a2, 0x4416                 ## a2 = 44160000
	lw      a0, 0x002C($sp)            
	beq     v0, $zero, lbl_8089C864    
	or      a1, v0, $zero              ## a1 = 00000000
	jal     func_800213B4              
	nop
	lw      a0, 0x002C($sp)            
	lui     a2, 0xC28C                 ## a2 = C28C0000
	lh      t7, 0x00B6(a0)             ## 000000B6
	subu    a3, v0, t7                 
	addiu   t8, t7, 0x3FFF             ## t8 = 00003FFF
	sll     a3, a3, 16                 
	sh      t8, 0x0032(a0)             ## 00000032
	sra     a3, a3, 16                 
	sh      a3, 0x0022($sp)            
	sh      $zero, 0x0020($sp)         
	jal     func_8089680C              
	lw      a1, 0x0028($sp)            
	lw      a0, 0x002C($sp)            
	lh      a3, 0x0022($sp)            
	beq     v0, $zero, lbl_8089C6B0    
	lh      t0, 0x0020($sp)            
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
lbl_8089C6B0:
	lw      a1, 0x0028($sp)            
	lui     a2, 0x428C                 ## a2 = 428C0000
	sh      a3, 0x0022($sp)            
	jal     func_8089680C              
	sh      t0, 0x0020($sp)            
	lw      a0, 0x002C($sp)            
	lh      a3, 0x0022($sp)            
	beq     v0, $zero, lbl_8089C6E0    
	lh      t0, 0x0020($sp)            
	ori     t0, t0, 0x0002             ## t0 = 00000002
	sll     t0, t0, 16                 
	sra     t0, t0, 16                 
lbl_8089C6E0:
	mtc1    $zero, $f4                 ## $f4 = 0.00
	subu    v0, $zero, a3              
	bltz    a3, lbl_8089C6F8           
	swc1    $f4, 0x0068(a0)            ## 00000068
	beq     $zero, $zero, lbl_8089C6F8 
	or      v0, a3, $zero              ## v0 = 00000000
lbl_8089C6F8:
	slti    $at, v0, 0x2000            
	bne     $at, $zero, lbl_8089C720   
	nop
	bltz    a3, lbl_8089C714           
	subu    v0, $zero, a3              
	beq     $zero, $zero, lbl_8089C714 
	or      v0, a3, $zero              ## v0 = 00000000
lbl_8089C714:
	slti    $at, v0, 0x6000            
	bne     $at, $zero, lbl_8089C7A0   
	nop
lbl_8089C720:
	bne     t0, $zero, lbl_8089C758    
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lw      t9, 0x0028($sp)            
	lui     t1, 0x0001                 ## t1 = 00010000
	addiu   v1, $zero, 0xFFFA          ## v1 = FFFFFFFA
	addu    t1, t1, t9                 
	lw      t1, 0x1DE4(t1)             ## 00011DE4
	andi    t2, t1, 0x0001             ## t2 = 00000000
	beq     t2, $zero, lbl_8089C750    
	nop
	beq     $zero, $zero, lbl_8089C750 
	addiu   v1, $zero, 0x0006          ## v1 = 00000006
lbl_8089C750:
	beq     $zero, $zero, lbl_8089C798 
	sh      v1, 0x001E($sp)            
lbl_8089C758:
	beq     t0, $at, lbl_8089C780      
	addiu   v1, $zero, 0x0006          ## v1 = 00000006
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     t0, $at, lbl_8089C788      
	addiu   v1, $zero, 0xFFFA          ## v1 = FFFFFFFA
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	beq     t0, $at, lbl_8089C790      
	addiu   t3, $zero, 0x0005          ## t3 = 00000005
	beq     $zero, $zero, lbl_8089C798 
	nop
lbl_8089C780:
	beq     $zero, $zero, lbl_8089C798 
	sh      v1, 0x001E($sp)            
lbl_8089C788:
	beq     $zero, $zero, lbl_8089C798 
	sh      v1, 0x001E($sp)            
lbl_8089C790:
	sh      t3, 0x001C($sp)            
	sh      $zero, 0x001E($sp)         
lbl_8089C798:
	beq     $zero, $zero, lbl_8089C838 
	lh      v1, 0x001E($sp)            
lbl_8089C7A0:
	bltz    a3, lbl_8089C7B0           
	subu    v0, $zero, a3              
	beq     $zero, $zero, lbl_8089C7B0 
	or      v0, a3, $zero              ## v0 = 00000000
lbl_8089C7B0:
	slti    $at, v0, 0x5FFF            
	beql    $at, $zero, lbl_8089C838   
	lh      v1, 0x001E($sp)            
	bne     t0, $zero, lbl_8089C7F4    
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lw      t4, 0x0028($sp)            
	lui     t5, 0x0001                 ## t5 = 00010000
	addiu   v1, $zero, 0xFFFA          ## v1 = FFFFFFFA
	addu    t5, t5, t4                 
	lw      t5, 0x1DE4(t5)             ## 00011DE4
	andi    t6, t5, 0x0001             ## t6 = 00000000
	beq     t6, $zero, lbl_8089C7EC    
	nop
	beq     $zero, $zero, lbl_8089C7EC 
	addiu   v1, $zero, 0x0006          ## v1 = 00000006
lbl_8089C7EC:
	beq     $zero, $zero, lbl_8089C834 
	sh      v1, 0x001E($sp)            
lbl_8089C7F4:
	beq     t0, $at, lbl_8089C81C      
	addiu   v1, $zero, 0x0006          ## v1 = 00000006
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     t0, $at, lbl_8089C824      
	addiu   v1, $zero, 0xFFFA          ## v1 = FFFFFFFA
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	beq     t0, $at, lbl_8089C82C      
	addiu   t7, $zero, 0x000A          ## t7 = 0000000A
	beq     $zero, $zero, lbl_8089C838 
	lh      v1, 0x001E($sp)            
lbl_8089C81C:
	beq     $zero, $zero, lbl_8089C834 
	sh      v1, 0x001E($sp)            
lbl_8089C824:
	beq     $zero, $zero, lbl_8089C834 
	sh      v1, 0x001E($sp)            
lbl_8089C82C:
	sh      t7, 0x001C($sp)            
	sh      $zero, 0x001E($sp)         
lbl_8089C834:
	lh      v1, 0x001E($sp)            
lbl_8089C838:
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	mtc1    v1, $f6                    ## $f6 = NaN
	nop
	cvt.s.w $f8, $f6                   
	swc1    $f8, 0x03F8(a0)            ## 000003F8
	lh      t8, 0x001C($sp)            
	mtc1    t8, $f10                   ## $f10 = 0.00
	nop
	cvt.s.w $f16, $f10                 
	beq     $zero, $zero, lbl_8089C868 
	swc1    $f16, 0x03FC(a0)           ## 000003FC
lbl_8089C864:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_8089C868:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop

.section .data

var_8089C880: .word \
0x455E8000, 0x42C80000, 0xC4BDA000, 0x45462000, \
0x42C80000, 0xC4DCE000, 0x4545D000, 0x42C80000, \
0xC50A9000, 0x455EB000, 0x42C80000, 0xC5185000, \
0x4576A000, 0x42C80000, 0xC50A9000, 0x45766000, \
0x42C80000, 0xC4DCA000, 0x4532D000, 0x42C80000, \
0xC515A000, 0x452D8000, 0x42C80000, 0xC4F86000, \
0x458D7800, 0x4404C000, 0xC48F4000, 0x458AD000, \
0x4404C000, 0xC4AFA000, 0x45825000, 0x4404C000, \
0xC4AE6000, 0x457BE000, 0x4404C000, 0xC4914000, \
0x457AA000, 0x4404C000, 0xC45CC000, 0x45857000, \
0x4404C000, 0xC44A8000, 0x458D4000, 0x4404C000, \
0xC45C0000, 0x45852000, 0x4404C000, 0xC4816000, \
0x4594A800, 0x4404C000, 0xC48F4000, 0x4570A000, \
0x4404C000, 0xC45CC000, 0x4588E000, 0x4404C000, \
0xC42C8000, 0x45832800, 0x4404C000, 0xC4218000, \
0x457E6000, 0x4404C000, 0xC4C4E000, 0x4575A000, \
0x4404C000, 0xC4D52000, 0x456C4000, 0x4404C000, \
0xC4E56000, 0x455E8000, 0x4404C000, 0xC4F82000
var_8089C9A0: .word 0x00000000
var_8089C9A4: .word 0x00010000
var_8089C9A8: .word 0x00250500, 0x00000015, 0x001B0000, 0x00000558
.word func_80896AAC
.word func_80896DE4
.word func_8089BA50
.word func_8089C0E8
var_8089C9C8: .word \
0x00000909, 0x10010000, 0x01000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x00140046, 0x00000000, 0x00000000
var_8089C9F4: .word \
0x0A110D00, 0x00030000, 0x00000000, 0xFFCFFFFF, \
0x00080000, 0x00000000, 0x00000000, 0x81010000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_8089CA44: .word \
0x1002D102, 0x10020210, 0x010204D2, 0xF4D2D2D2, \
0xD260F360, 0x00000104, 0x02020804, 0x00000400
var_8089CA64: .word 0xB04C07D0, 0xC850000F, 0x386CF254
var_8089CA70: .word \
0x0601081C, 0x06010CAC, 0x06011070, 0x44898000, \
0xC42F0000, 0x00000000
var_8089CA88: .word 0x43960000, 0x00000000, 0x00000000
var_8089CA94: .word 0x43960000, 0xC4D48000, 0x00000000
var_8089CAA0: .word 0xC4160000, 0x43960000, 0x00000000
var_8089CAAC: .word 0x00000000, 0x44BB8000, 0x00000000
var_8089CAB8: .word 0xC4160000, 0xC53B8000, 0x447A0000
var_8089CAC4: .word 0xC4160000, 0xC53B8000, 0xC47A0000
var_8089CAD0: .word 0x44BB8000, 0xC53B8000, 0x00000000
var_8089CADC: .word 0x00000000, 0x00000000, 0x00000000
var_8089CAE8: .word \
0xD7000002, 0x0A000A00, 0xDF000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_8089CB00: .word 0x461C4000
var_8089CB04: .word 0x44124000
var_8089CB08: .word 0x47C34F00
var_8089CB0C: .word 0x47C34F80
var_8089CB10: .word 0x47C34F00
var_8089CB14: .word 0x47C34F80
var_8089CB18: .word 0x3E99999A
var_8089CB1C: .word 0x3E99999A
var_8089CB20: .word 0x3F99999A
var_8089CB24: .word 0x3F333333
var_8089CB28: .word 0x3D4CCCCD
var_8089CB2C: .word 0x3DCCCCCD
var_8089CB30: .word 0x3DCCCCCD
var_8089CB34: .word 0x3F4CCCCD
var_8089CB38: .word 0xBF4CCCCD
var_8089CB3C: .word 0xBF4CCCCD
var_8089CB40: .word 0xBF59999A
var_8089CB44: .word 0x3F333333
var_8089CB48: .word 0x3F333333
var_8089CB4C: .word 0x3F333333
var_8089CB50: .word 0x3E4CCCCD
var_8089CB54: .word 0x3D4CCCCD
var_8089CB58: .word 0x44098000
var_8089CB5C: .word 0x3F99999A
var_8089CB60: .word 0x3F99999A
var_8089CB64: .word 0x3D4CCCCD
var_8089CB68: .word 0xBF4CCCCD
var_8089CB6C: .word 0xBF4CCCCD
var_8089CB70: .word 0x462AA000
var_8089CB74: .word var_8089C06C
.word var_8089C074
.word lbl_8089C0B0
.word lbl_8089C0B0
.word lbl_8089C0B0
.word var_8089C09C
.word lbl_8089C0B0
.word var_8089C084
.word lbl_8089C0B0
.word lbl_8089C0B0
.word lbl_8089C0B0
.word lbl_8089C0B0
.word lbl_8089C0B0
.word lbl_8089C0B0
.word var_8089C08C
.word lbl_8089C0B0
.word var_8089C07C
.word lbl_8089C0B0
.word lbl_8089C0B0
.word lbl_8089C0B0
.word lbl_8089C0B0
.word lbl_8089C0B0
.word lbl_8089C0B0
.word lbl_8089C0B0
.word lbl_8089C0B0
.word lbl_8089C0B0
.word lbl_8089C0B0
.word lbl_8089C0B0
.word lbl_8089C0B0
.word lbl_8089C0B0
.word var_8089C0A4
.word lbl_8089C0B0
.word lbl_8089C0B0
.word lbl_8089C0B0
.word var_8089C0AC
.word lbl_8089C0B0
.word lbl_8089C0B0
.word lbl_8089C0B0
.word lbl_8089C0B0
.word var_8089C094
var_8089CC14: .word 0x3FB33333, 0x00000000, 0x00000000

.bss

var_8089D2F0: .space 0x10
