#include <mips.h>
.set noreorder
.set noat

.section .text
func_8090EE70:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_8002049C              
	addiu   a1, $zero, 0x001C          ## a1 = 0000001C
	beq     v0, $zero, lbl_8090EEA8    
	lh      t6, 0x001A($sp)            
	addiu   $at, $zero, 0x001C         ## $at = 0000001C
	beql    t6, $at, lbl_8090EEAC      
	lw      a0, 0x001C($sp)            
	beq     $zero, $zero, lbl_8090EEFC 
	addiu   v1, $zero, 0x0003          ## v1 = 00000003
lbl_8090EEA8:
	lw      a0, 0x001C($sp)            
lbl_8090EEAC:
	jal     func_8002049C              
	addiu   a1, $zero, 0x001D          ## a1 = 0000001D
	beq     v0, $zero, lbl_8090EED0    
	lh      t7, 0x001A($sp)            
	addiu   $at, $zero, 0x001D         ## $at = 0000001D
	beql    t7, $at, lbl_8090EED4      
	lw      a0, 0x001C($sp)            
	beq     $zero, $zero, lbl_8090EEFC 
	addiu   v1, $zero, 0x0002          ## v1 = 00000002
lbl_8090EED0:
	lw      a0, 0x001C($sp)            
lbl_8090EED4:
	jal     func_8002049C              
	addiu   a1, $zero, 0x001E          ## a1 = 0000001E
	beq     v0, $zero, lbl_8090EEF8    
	lh      t8, 0x001A($sp)            
	addiu   $at, $zero, 0x001E         ## $at = 0000001E
	beql    t8, $at, lbl_8090EEFC      
	or      v1, $zero, $zero           ## v1 = 00000000
	beq     $zero, $zero, lbl_8090EEFC 
	addiu   v1, $zero, 0x0001          ## v1 = 00000001
lbl_8090EEF8:
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_8090EEFC:
	or      v0, v1, $zero              ## v0 = 00000000
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8090EF10:
	sw      a1, 0x0004($sp)            
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	lui     v1, %hi(var_8090F9A8)      ## v1 = 80910000
	lui     v0, %hi(var_8090F9C8)      ## v0 = 80910000
	addiu   v0, v0, %lo(var_8090F9C8)  ## v0 = 8090F9C8
	addiu   v1, v1, %lo(var_8090F9A8)  ## v1 = 8090F9A8
lbl_8090EF2C:
	lw      t6, 0x0000(v1)             ## 8090F9A8
	addiu   v1, v1, 0x0010             ## v1 = 8090F9B8
	sll     t7, t6,  4                 
	addu    t8, a0, t7                 
	sh      a1, 0x0002(t8)             ## 00000002
	lw      t9, -0x000C(v1)            ## 8090F9AC
	sll     t0, t9,  4                 
	addu    t1, a0, t0                 
	sh      a1, 0x0002(t1)             ## 00000002
	lw      t2, -0x0008(v1)            ## 8090F9B0
	sll     t3, t2,  4                 
	addu    t4, a0, t3                 
	sh      a1, 0x0002(t4)             ## 00000002
	lw      t5, -0x0004(v1)            ## 8090F9B4
	sll     t6, t5,  4                 
	addu    t7, a0, t6                 
	bne     v1, v0, lbl_8090EF2C       
	sh      a1, 0x0002(t7)             ## 00000002
	jr      $ra                        
	nop


func_8090EF7C:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s1, 0x0018($sp)            
	sw      s0, 0x0014($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	lw      t6, 0x07C0(s1)             ## 000007C0
	lui     a1, %hi(var_8090F9C8)      ## a1 = 80910000
	addiu   a1, a1, %lo(var_8090F9C8)  ## a1 = 8090F9C8
	lw      t7, 0x0028(t6)             ## 00000028
	or      a0, s0, $zero              ## a0 = 00000000
	sw      t7, 0x0024($sp)            
	lh      v0, 0x001C(s0)             ## 0000001C
	sra     t9, v0,  8                 
	andi    t0, t9, 0x00FF             ## t0 = 00000000
	andi    t8, v0, 0x00FF             ## t8 = 00000000
	sw      t8, 0x0140(s0)             ## 00000140
	jal     func_80063F7C              
	sw      t0, 0x014C(s0)             ## 0000014C
	lw      t1, 0x0140(s0)             ## 00000140
	lwc1    $f0, 0x0028(s0)            ## 00000028
	sltiu   $at, t1, 0x0005            
	swc1    $f0, 0x0148(s0)            ## 00000148
	beq     $at, $zero, lbl_8090F1B8   
	swc1    $f0, 0x0144(s0)            ## 00000144
	sll     t1, t1,  2                 
	lui     $at, %hi(var_8090F9D0)     ## $at = 80910000
	addu    $at, $at, t1               
	lw      t1, %lo(var_8090F9D0)($at) 
	jr      t1                         
	nop
var_8090EFF8:
	addiu   a0, $zero, 0xFFFF          ## a0 = FFFFFFFF
	jal     func_8090EE70              
	or      a1, s1, $zero              ## a1 = 00000000
	sll     t2, v0,  3                 
	lui     t3, %hi(var_8090F964)      ## t3 = 80910000
	addu    t3, t3, t2                 
	lw      t3, %lo(var_8090F964)(t3)  
	sw      v0, 0x0020($sp)            
	lwc1    $f8, 0x0148(s0)            ## 00000148
	mtc1    t3, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	add.s   $f10, $f6, $f8             
	swc1    $f10, 0x0028(s0)           ## 00000028
	lwc1    $f16, 0x0028(s0)           ## 00000028
	lw      a0, 0x0024($sp)            
	trunc.w.s $f18, $f16                 
	mfc1    a1, $f18                   
	nop
	sll     a1, a1, 16                 
	jal     func_8090EF10              
	sra     a1, a1, 16                 
	lw      t5, 0x0020($sp)            
	lui     t7, %hi(var_8090F960)      ## t7 = 80910000
	or      a0, s1, $zero              ## a0 = 00000000
	sll     t6, t5,  3                 
	addu    t7, t7, t6                 
	lw      t7, %lo(var_8090F960)(t7)  
	addiu   a1, $zero, 0x001C          ## a1 = 0000001C
	jal     func_80020510              
	sh      t7, 0x001C(s0)             ## 0000001C
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_80020510              
	addiu   a1, $zero, 0x001D          ## a1 = 0000001D
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_80020510              
	addiu   a1, $zero, 0x001E          ## a1 = 0000001E
	lh      v0, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0x001C         ## $at = 0000001C
	or      a0, s1, $zero              ## a0 = 00000000
	beq     v0, $at, lbl_8090F0D4      
	addiu   $at, $zero, 0x001D         ## $at = 0000001D
	beq     v0, $at, lbl_8090F0C4      
	addiu   a1, $zero, 0x001D          ## a1 = 0000001D
	addiu   $at, $zero, 0x001E         ## $at = 0000001E
	bne     v0, $at, lbl_8090F0D4      
	addiu   a1, $zero, 0x001E          ## a1 = 0000001E
	jal     func_800204D0              
	or      a0, s1, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8090F0E0 
	lwc1    $f4, 0x0028(s0)            ## 00000028
lbl_8090F0C4:
	jal     func_800204D0              
	or      a0, s1, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_8090F0E0 
	lwc1    $f4, 0x0028(s0)            ## 00000028
lbl_8090F0D4:
	jal     func_800204D0              
	addiu   a1, $zero, 0x001C          ## a1 = 0000001C
	lwc1    $f4, 0x0028(s0)            ## 00000028
lbl_8090F0E0:
	beq     $zero, $zero, lbl_8090F1B8 
	swc1    $f4, 0x0144(s0)            ## 00000144
var_8090F0E8:
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8002049C              
	lw      a1, 0x014C(s0)             ## 0000014C
	beq     v0, $zero, lbl_8090F110    
	lui     $at, 0x42AA                ## $at = 42AA0000
	lwc1    $f6, 0x0148(s0)            ## 00000148
	mtc1    $at, $f8                   ## $f8 = 85.00
	nop
	add.s   $f10, $f6, $f8             
	swc1    $f10, 0x0028(s0)           ## 00000028
lbl_8090F110:
	lwc1    $f16, 0x0028(s0)           ## 00000028
	lw      t0, 0x0024($sp)            
	trunc.w.s $f18, $f16                 
	mfc1    t9, $f18                   
	beq     $zero, $zero, lbl_8090F1B8 
	sh      t9, 0x0062(t0)             ## 00000062
var_8090F128:
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8002049C              
	lw      a1, 0x014C(s0)             ## 0000014C
	beq     v0, $zero, lbl_8090F158    
	lui     $at, 0x42DC                ## $at = 42DC0000
	lwc1    $f4, 0x0148(s0)            ## 00000148
	mtc1    $at, $f6                   ## $f6 = 110.00
	nop
	add.s   $f8, $f4, $f6              
	swc1    $f8, 0x0028(s0)            ## 00000028
	lwc1    $f10, 0x0028(s0)           ## 00000028
	swc1    $f10, 0x0144(s0)           ## 00000144
lbl_8090F158:
	lwc1    $f16, 0x0028(s0)           ## 00000028
	lw      t3, 0x0024($sp)            
	trunc.w.s $f18, $f16                 
	mfc1    t2, $f18                   
	beq     $zero, $zero, lbl_8090F1B8 
	sh      t2, 0x0082(t3)             ## 00000082
var_8090F170:
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8002049C              
	lw      a1, 0x014C(s0)             ## 0000014C
	beq     v0, $zero, lbl_8090F1A0    
	lui     $at, 0x4320                ## $at = 43200000
	lwc1    $f4, 0x0148(s0)            ## 00000148
	mtc1    $at, $f6                   ## $f6 = 160.00
	nop
	add.s   $f8, $f4, $f6              
	swc1    $f8, 0x0028(s0)            ## 00000028
	lwc1    $f10, 0x0028(s0)           ## 00000028
	swc1    $f10, 0x0144(s0)           ## 00000144
lbl_8090F1A0:
	lwc1    $f16, 0x0028(s0)           ## 00000028
	lw      t6, 0x0024($sp)            
	trunc.w.s $f18, $f16                 
	mfc1    t5, $f18                   
	nop
	sh      t5, 0x0102(t6)             ## 00000102
lbl_8090F1B8:
	lui     t7, %hi(func_8090F1E8)     ## t7 = 80910000
	addiu   t7, t7, %lo(func_8090F1E8) ## t7 = 8090F1E8
	sw      t7, 0x013C(s0)             ## 0000013C
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_8090F1D8:
	sw      a0, 0x0000($sp)            
	sw      a1, 0x0004($sp)            
	jr      $ra                        
	nop


func_8090F1E8:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	or      a2, a1, $zero              ## a2 = 00000000
	lw      t6, 0x0140(s0)             ## 00000140
	sltiu   $at, t6, 0x0005            
	beq     $at, $zero, lbl_8090F37C   
	sll     t6, t6,  2                 
	lui     $at, %hi(var_8090F9E4)     ## $at = 80910000
	addu    $at, $at, t6               
	lw      t6, %lo(var_8090F9E4)($at) 
	jr      t6                         
	nop
var_8090F220:
	lh      a0, 0x001C(s0)             ## 0000001C
	sw      a2, 0x003C($sp)            
	or      a1, a2, $zero              ## a1 = 00000000
	jal     func_8090EE70              
	sh      a0, 0x002E($sp)            
	beq     v0, $zero, lbl_8090F2B0    
	lh      t7, 0x002E($sp)            
	sll     t8, v0,  3                 
	lui     t9, %hi(var_8090F960)      ## t9 = 80910000
	addu    t9, t9, t8                 
	lw      t9, %lo(var_8090F960)(t9)  
	lw      a0, 0x003C($sp)            
	addiu   a1, $zero, 0x0C30          ## a1 = 00000C30
	beq     t7, t9, lbl_8090F2B0       
	addiu   t1, $zero, 0xFF9C          ## t1 = FFFFFF9C
	subu    a2, t1, v0                 
	sll     a2, a2, 16                 
	sra     a2, a2, 16                 
	or      a3, $zero, $zero           ## a3 = 00000000
	sw      $zero, 0x0010($sp)         
	jal     func_8006B6FC              
	sw      v0, 0x0030($sp)            
	lw      t0, 0x0030($sp)            
	lui     t3, %hi(var_8090F960)      ## t3 = 80910000
	addiu   t3, t3, %lo(var_8090F960)  ## t3 = 8090F960
	sll     t2, t0,  3                 
	addu    v1, t2, t3                 
	lw      t4, 0x0000(v1)             ## 00000000
	lwc1    $f8, 0x0148(s0)            ## 00000148
	sh      t4, 0x001C(s0)             ## 0000001C
	lw      t5, 0x0004(v1)             ## 00000004
	mtc1    t5, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	add.s   $f10, $f6, $f8             
	swc1    $f10, 0x0144(s0)           ## 00000144
lbl_8090F2B0:
	lh      t6, 0x002E($sp)            
	lh      t8, 0x001C(s0)             ## 0000001C
	beql    t6, t8, lbl_8090F380       
	lwc1    $f16, 0x0028(s0)           ## 00000028
	beq     t6, $zero, lbl_8090F37C    
	lw      a0, 0x003C($sp)            
	jal     func_80020510              
	or      a1, t6, $zero              ## a1 = 00000000
	beq     $zero, $zero, lbl_8090F380 
	lwc1    $f16, 0x0028(s0)           ## 00000028
var_8090F2D8:
	or      a0, a2, $zero              ## a0 = 00000000
	jal     func_8002049C              
	lw      a1, 0x014C(s0)             ## 0000014C
	beq     v0, $zero, lbl_8090F304    
	lui     $at, 0x42AA                ## $at = 42AA0000
	lwc1    $f16, 0x0148(s0)           ## 00000148
	mtc1    $at, $f18                  ## $f18 = 85.00
	nop
	add.s   $f4, $f16, $f18            
	beq     $zero, $zero, lbl_8090F37C 
	swc1    $f4, 0x0144(s0)            ## 00000144
lbl_8090F304:
	lwc1    $f6, 0x0148(s0)            ## 00000148
	beq     $zero, $zero, lbl_8090F37C 
	swc1    $f6, 0x0144(s0)            ## 00000144
var_8090F310:
	or      a0, a2, $zero              ## a0 = 00000000
	jal     func_8002049C              
	lw      a1, 0x014C(s0)             ## 0000014C
	beq     v0, $zero, lbl_8090F33C    
	lui     $at, 0x42DC                ## $at = 42DC0000
	lwc1    $f8, 0x0148(s0)            ## 00000148
	mtc1    $at, $f10                  ## $f10 = 110.00
	nop
	add.s   $f16, $f8, $f10            
	beq     $zero, $zero, lbl_8090F37C 
	swc1    $f16, 0x0144(s0)           ## 00000144
lbl_8090F33C:
	lwc1    $f18, 0x0148(s0)           ## 00000148
	beq     $zero, $zero, lbl_8090F37C 
	swc1    $f18, 0x0144(s0)           ## 00000144
var_8090F348:
	or      a0, a2, $zero              ## a0 = 00000000
	jal     func_8002049C              
	lw      a1, 0x014C(s0)             ## 0000014C
	beq     v0, $zero, lbl_8090F374    
	lui     $at, 0x4320                ## $at = 43200000
	lwc1    $f4, 0x0148(s0)            ## 00000148
	mtc1    $at, $f6                   ## $f6 = 160.00
	nop
	add.s   $f8, $f4, $f6              
	beq     $zero, $zero, lbl_8090F37C 
	swc1    $f8, 0x0144(s0)            ## 00000144
lbl_8090F374:
	lwc1    $f10, 0x0148(s0)           ## 00000148
	swc1    $f10, 0x0144(s0)           ## 00000144
lbl_8090F37C:
	lwc1    $f16, 0x0028(s0)           ## 00000028
lbl_8090F380:
	lwc1    $f18, 0x0144(s0)           ## 00000144
	lui     t7, %hi(func_8090F3B4)     ## t7 = 80910000
	addiu   t7, t7, %lo(func_8090F3B4) ## t7 = 8090F3B4
	c.eq.s  $f16, $f18                 
	nop
	bc1tl   lbl_8090F3A4               
	lw      $ra, 0x0024($sp)           
	sw      t7, 0x013C(s0)             ## 0000013C
	lw      $ra, 0x0024($sp)           
lbl_8090F3A4:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_8090F3B4:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	or      a3, a1, $zero              ## a3 = 00000000
	lw      t6, 0x07C0(a3)             ## 000007C0
	lw      t7, 0x0028(t6)             ## 00000028
	sw      t7, 0x0020($sp)            
	lw      t8, 0x0140(s0)             ## 00000140
	sltiu   $at, t8, 0x0005            
	beq     $at, $zero, lbl_8090F644   
	sll     t8, t8,  2                 
	lui     $at, %hi(var_8090F9F8)     ## $at = 80910000
	addu    $at, $at, t8               
	lw      t8, %lo(var_8090F9F8)($at) 
	jr      t8                         
	nop
var_8090F3F8:
	lh      a0, 0x001C(s0)             ## 0000001C
	sw      a3, 0x0034($sp)            
	or      a1, a3, $zero              ## a1 = 00000000
	jal     func_8090EE70              
	sh      a0, 0x002A($sp)            
	beq     v0, $zero, lbl_8090F450    
	lh      a2, 0x002A($sp)            
	lui     t0, %hi(var_8090F960)      ## t0 = 80910000
	addiu   t0, t0, %lo(var_8090F960)  ## t0 = 8090F960
	sll     t9, v0,  3                 
	addu    v1, t9, t0                 
	lw      a0, 0x0000(v1)             ## 00000000
	beql    a2, a0, lbl_8090F454       
	lh      t2, 0x001C(s0)             ## 0000001C
	sh      a0, 0x001C(s0)             ## 0000001C
	lw      t1, 0x0004(v1)             ## 00000004
	lwc1    $f8, 0x0148(s0)            ## 00000148
	mtc1    t1, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	add.s   $f10, $f6, $f8             
	swc1    $f10, 0x0144(s0)           ## 00000144
lbl_8090F450:
	lh      t2, 0x001C(s0)             ## 0000001C
lbl_8090F454:
	beql    a2, t2, lbl_8090F470       
	addiu   a0, s0, 0x0028             ## a0 = 00000028
	beq     a2, $zero, lbl_8090F46C    
	lw      a0, 0x0034($sp)            
	jal     func_80020510              
	or      a1, a2, $zero              ## a1 = 00000000
lbl_8090F46C:
	addiu   a0, s0, 0x0028             ## a0 = 00000028
lbl_8090F470:
	lw      a1, 0x0144(s0)             ## 00000144
	jal     func_8006385C              
	lui     a2, 0x40A0                 ## a2 = 40A00000
	beq     v0, $zero, lbl_8090F4A4    
	lw      t3, 0x0034($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	addu    $at, $at, t3               
	lui     t4, %hi(func_8090F1E8)     ## t4 = 80910000
	sh      $zero, 0x1D30($at)         ## 00011D30
	addiu   t4, t4, %lo(func_8090F1E8) ## t4 = 8090F1E8
	sw      t4, 0x013C(s0)             ## 0000013C
	jal     func_800D6218              
	lw      a0, 0x0034($sp)            
lbl_8090F4A4:
	lwc1    $f16, 0x0028(s0)           ## 00000028
	lw      t5, 0x0034($sp)            
	trunc.w.s $f18, $f16                 
	lw      t6, 0x07C0(t5)             ## 000007C0
	mfc1    a1, $f18                   
	lw      a0, 0x0028(t6)             ## 00000028
	sll     a1, a1, 16                 
	jal     func_8090EF10              
	sra     a1, a1, 16                 
	beq     $zero, $zero, lbl_8090F648 
	lwc1    $f0, 0x0144(s0)            ## 00000144
var_8090F4D0:
	lw      a1, 0x014C(s0)             ## 0000014C
	sw      a3, 0x0034($sp)            
	jal     func_8002049C              
	or      a0, a3, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_8090F500    
	addiu   a0, s0, 0x0028             ## a0 = 00000028
	lui     $at, 0x42AA                ## $at = 42AA0000
	mtc1    $at, $f6                   ## $f6 = 85.00
	lwc1    $f4, 0x0148(s0)            ## 00000148
	add.s   $f8, $f4, $f6              
	beq     $zero, $zero, lbl_8090F508 
	swc1    $f8, 0x0144(s0)            ## 00000144
lbl_8090F500:
	lwc1    $f10, 0x0148(s0)           ## 00000148
	swc1    $f10, 0x0144(s0)           ## 00000144
lbl_8090F508:
	lw      a1, 0x0144(s0)             ## 00000144
	jal     func_8006385C              
	lui     a2, 0x3F80                 ## a2 = 3F800000
	beq     v0, $zero, lbl_8090F534    
	lw      t8, 0x0034($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	addu    $at, $at, t8               
	lui     t9, %hi(func_8090F1E8)     ## t9 = 80910000
	sh      $zero, 0x1D30($at)         ## 00011D30
	addiu   t9, t9, %lo(func_8090F1E8) ## t9 = 8090F1E8
	sw      t9, 0x013C(s0)             ## 0000013C
lbl_8090F534:
	lwc1    $f16, 0x0028(s0)           ## 00000028
	lw      t2, 0x0020($sp)            
	trunc.w.s $f18, $f16                 
	mfc1    t1, $f18                   
	beq     $zero, $zero, lbl_8090F644 
	sh      t1, 0x0062(t2)             ## 00000062
var_8090F54C:
	lw      a1, 0x014C(s0)             ## 0000014C
	sw      a3, 0x0034($sp)            
	jal     func_8002049C              
	or      a0, a3, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_8090F57C    
	addiu   a0, s0, 0x0028             ## a0 = 00000028
	lui     $at, 0x42DC                ## $at = 42DC0000
	mtc1    $at, $f6                   ## $f6 = 110.00
	lwc1    $f4, 0x0148(s0)            ## 00000148
	add.s   $f8, $f4, $f6              
	beq     $zero, $zero, lbl_8090F584 
	swc1    $f8, 0x0144(s0)            ## 00000144
lbl_8090F57C:
	lwc1    $f10, 0x0148(s0)           ## 00000148
	swc1    $f10, 0x0144(s0)           ## 00000144
lbl_8090F584:
	lw      a1, 0x0144(s0)             ## 00000144
	jal     func_8006385C              
	lui     a2, 0x3F80                 ## a2 = 3F800000
	beq     v0, $zero, lbl_8090F5B0    
	lw      t3, 0x0034($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	addu    $at, $at, t3               
	lui     t4, %hi(func_8090F1E8)     ## t4 = 80910000
	sh      $zero, 0x1D30($at)         ## 00011D30
	addiu   t4, t4, %lo(func_8090F1E8) ## t4 = 8090F1E8
	sw      t4, 0x013C(s0)             ## 0000013C
lbl_8090F5B0:
	lwc1    $f16, 0x0028(s0)           ## 00000028
	lw      t7, 0x0020($sp)            
	trunc.w.s $f18, $f16                 
	mfc1    t6, $f18                   
	beq     $zero, $zero, lbl_8090F644 
	sh      t6, 0x0082(t7)             ## 00000082
var_8090F5C8:
	lw      a1, 0x014C(s0)             ## 0000014C
	sw      a3, 0x0034($sp)            
	jal     func_8002049C              
	or      a0, a3, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_8090F5F8    
	addiu   a0, s0, 0x0028             ## a0 = 00000028
	lui     $at, 0x4320                ## $at = 43200000
	mtc1    $at, $f6                   ## $f6 = 160.00
	lwc1    $f4, 0x0148(s0)            ## 00000148
	add.s   $f8, $f4, $f6              
	beq     $zero, $zero, lbl_8090F600 
	swc1    $f8, 0x0144(s0)            ## 00000144
lbl_8090F5F8:
	lwc1    $f10, 0x0148(s0)           ## 00000148
	swc1    $f10, 0x0144(s0)           ## 00000144
lbl_8090F600:
	lw      a1, 0x0144(s0)             ## 00000144
	jal     func_8006385C              
	lui     a2, 0x3F80                 ## a2 = 3F800000
	beq     v0, $zero, lbl_8090F62C    
	lw      t8, 0x0034($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	addu    $at, $at, t8               
	lui     t9, %hi(func_8090F1E8)     ## t9 = 80910000
	sh      $zero, 0x1D30($at)         ## 00011D30
	addiu   t9, t9, %lo(func_8090F1E8) ## t9 = 8090F1E8
	sw      t9, 0x013C(s0)             ## 0000013C
lbl_8090F62C:
	lwc1    $f16, 0x0028(s0)           ## 00000028
	lw      t2, 0x0020($sp)            
	trunc.w.s $f18, $f16                 
	mfc1    t1, $f18                   
	nop
	sh      t1, 0x0102(t2)             ## 00000102
lbl_8090F644:
	lwc1    $f0, 0x0144(s0)            ## 00000144
lbl_8090F648:
	lwc1    $f2, 0x0028(s0)            ## 00000028
	addiu   a1, $zero, 0x0078          ## a1 = 00000078
	addiu   a2, $zero, 0x0014          ## a2 = 00000014
	c.lt.s  $f0, $f2                   
	nop
	bc1fl   lbl_8090F688               
	c.lt.s  $f2, $f0                   
	mtc1    $zero, $f12                ## $f12 = 0.00
	jal     func_800915CC              
	addiu   a3, $zero, 0x000A          ## a3 = 0000000A
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80023108              
	addiu   a1, $zero, 0x205E          ## a1 = 0000205E
	beq     $zero, $zero, lbl_8090F6B4 
	lw      $ra, 0x001C($sp)           
	c.lt.s  $f2, $f0                   
lbl_8090F688:
	addiu   a1, $zero, 0x0078          ## a1 = 00000078
	addiu   a2, $zero, 0x0014          ## a2 = 00000014
	bc1fl   lbl_8090F6B4               
	lw      $ra, 0x001C($sp)           
	mtc1    $zero, $f12                ## $f12 = 0.00
	jal     func_800915CC              
	addiu   a3, $zero, 0x000A          ## a3 = 0000000A
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80023108              
	addiu   a1, $zero, 0x205E          ## a1 = 0000205E
	lw      $ra, 0x001C($sp)           
lbl_8090F6B4:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_8090F6C4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a1, $zero              ## a2 = 00000000
	lw      t6, 0x0140(a0)             ## 00000140
	bnel    t6, $zero, lbl_8090F800    
	lw      t9, 0x013C(a0)             ## 0000013C
	lwc1    $f4, 0x0028(a0)            ## 00000028
	lui     $at, 0xC170                ## $at = C1700000
	mtc1    $at, $f2                   ## $f2 = -15.00
	trunc.w.s $f6, $f4                   
	or      a1, $zero, $zero           ## a1 = 00000000
	or      v1, $zero, $zero           ## v1 = 00000000
	lui     $at, %hi(var_8090FA10)     ## $at = 80910000
	mfc1    v0, $f6                    
	nop
	mtc1    v0, $f8                    ## $f8 = 0.00
	nop
	cvt.s.w $f0, $f8                   
	c.lt.s  $f0, $f2                   
	nop
	bc1f    lbl_8090F750               
	nop
	lui     $at, %hi(var_8090FA0C)     ## $at = 80910000
	lwc1    $f10, %lo(var_8090FA0C)($at) 
	lui     $at, 0x444D                ## $at = 444D0000
	mtc1    $at, $f18                  ## $f18 = 820.00
	sub.s   $f16, $f0, $f10            
	lui     $at, 0x4348                ## $at = 43480000
	mtc1    $at, $f6                   ## $f6 = 200.00
	div.s   $f4, $f16, $f18            
	mul.s   $f8, $f4, $f6              
	trunc.w.s $f10, $f8                  
	mfc1    v1, $f10                   
	beq     $zero, $zero, lbl_8090F7E8 
	sll     t6, a1,  8                 
lbl_8090F750:
	lwc1    $f12, %lo(var_8090FA10)($at) 
	lui     $at, %hi(var_8090FA14)     ## $at = 80910000
	c.lt.s  $f0, $f12                  
	nop
	bc1f    lbl_8090F79C               
	nop
	sub.s   $f16, $f0, $f2             
	lui     $at, 0x43E6                ## $at = 43E60000
	mtc1    $at, $f18                  ## $f18 = 460.00
	lui     $at, 0x42BE                ## $at = 42BE0000
	mtc1    $at, $f6                   ## $f6 = 95.00
	div.s   $f4, $f16, $f18            
	addiu   t1, $zero, 0x00FF          ## t1 = 000000FF
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	mul.s   $f8, $f4, $f6              
	trunc.w.s $f10, $f8                  
	mfc1    t0, $f10                   
	beq     $zero, $zero, lbl_8090F7E4 
	subu    v1, t1, t0                 
lbl_8090F79C:
	lwc1    $f16, %lo(var_8090FA14)($at) 
	lui     $at, 0x43A0                ## $at = 43A00000
	c.le.s  $f0, $f16                  
	nop
	bc1fl   lbl_8090F7E8               
	sll     t6, a1,  8                 
	sub.s   $f18, $f0, $f12            
	mtc1    $at, $f4                   ## $f4 = 320.00
	lui     $at, 0x42BE                ## $at = 42BE0000
	mtc1    $at, $f8                   ## $f8 = 95.00
	div.s   $f6, $f18, $f4             
	addiu   t4, $zero, 0x00FF          ## t4 = 000000FF
	addiu   a1, $zero, 0x0002          ## a1 = 00000002
	mul.s   $f10, $f6, $f8             
	trunc.w.s $f16, $f10                 
	mfc1    t3, $f16                   
	nop
	subu    v1, t4, t3                 
lbl_8090F7E4:
	sll     t6, a1,  8                 
lbl_8090F7E8:
	andi    t7, v1, 0x00FF             ## t7 = 00000000
	lui     $at, 0x0001                ## $at = 00010000
	addu    $at, $at, a2               
	or      t8, t6, t7                 ## t8 = 00000000
	sh      t8, 0x1D32($at)            ## 00011D32
	lw      t9, 0x013C(a0)             ## 0000013C
lbl_8090F800:
	or      a1, a2, $zero              ## a1 = 00000000
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8090F81C:
	addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
	sw      $ra, 0x003C($sp)           
	sw      s0, 0x0038($sp)            
	sw      a0, 0x0058($sp)            
	lui     v0, 0x0001                 ## v0 = 00010000
	addu    v0, v0, a1                 
	lw      a0, 0x0000(a1)             ## 00000000
	lw      v0, 0x1DE4(v0)             ## 00011DE4
	sw      a1, 0x005C($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	jal     func_8007E2C0              
	sw      v0, 0x0050($sp)            
	lw      v0, 0x0050($sp)            
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t7, 0xDB06                 ## t7 = DB060000
	ori     t7, t7, 0x0030             ## t7 = DB060030
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s0)             ## 000002D0
	sw      t7, 0x0000(v1)             ## 00000000
	lw      t8, 0x005C($sp)            
	subu    a2, $zero, v0              
	addiu   t9, $zero, 0x0020          ## t9 = 00000020
	lw      a0, 0x0000(t8)             ## 00000000
	addiu   t1, $zero, 0x0020          ## t1 = 00000020
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	addiu   t3, $zero, 0x0020          ## t3 = 00000020
	addiu   t4, $zero, 0x0020          ## t4 = 00000020
	sw      t4, 0x0028($sp)            
	sw      t3, 0x0024($sp)            
	sw      t2, 0x0018($sp)            
	sw      t1, 0x0014($sp)            
	sw      a2, 0x0020($sp)            
	sw      $zero, 0x001C($sp)         
	sw      t9, 0x0010($sp)            
	or      a1, $zero, $zero           ## a1 = 00000000
	or      a3, v0, $zero              ## a3 = 00000000
	jal     func_8007EB84              
	sw      v1, 0x0044($sp)            
	lw      t0, 0x0044($sp)            
	sw      v0, 0x0004(t0)             ## 00000004
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t6, 0xDA38                 ## t6 = DA380000
	ori     t6, t6, 0x0003             ## t6 = DA380003
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s0)             ## 000002D0
	sw      t6, 0x0000(v1)             ## 00000000
	lw      t7, 0x005C($sp)            
	lw      a0, 0x0000(t7)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x0040($sp)            
	lw      a3, 0x0040($sp)            
	lui     t6, 0xDE00                 ## t6 = DE000000
	sw      v0, 0x0004(a3)             ## 00000004
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t9, 0xFB00                 ## t9 = FB000000
	addiu   t1, $zero, 0xFF80          ## t1 = FFFFFF80
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s0)             ## 000002D0
	sw      t1, 0x0004(v1)             ## 00000004
	sw      t9, 0x0000(v1)             ## 00000000
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t3, 0xFA00                 ## t3 = FA000000
	addiu   t4, $zero, 0xFF66          ## t4 = FFFFFF66
	addiu   t2, v1, 0x0008             ## t2 = 00000008
	sw      t2, 0x02D0(s0)             ## 000002D0
	sw      t4, 0x0004(v1)             ## 00000004
	sw      t3, 0x0000(v1)             ## 00000000
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t7, 0x0600                 ## t7 = 06000000
	addiu   t7, t7, 0x4B20             ## t7 = 06004B20
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(s0)             ## 000002D0
	sw      t7, 0x0004(v1)             ## 00000004
	sw      t6, 0x0000(v1)             ## 00000000
	lw      $ra, 0x003C($sp)           
	lw      s0, 0x0038($sp)            
	addiu   $sp, $sp, 0x0058           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop

.section .data

var_8090F960: .word 0x00000000
var_8090F964: .word \
0x00000000, 0x0000001E, 0x00000000, 0x0000001D, \
0xFFFFFEC0, 0x0000001C, 0xFFFFFCF4
var_8090F980: .word 0x00650100, 0x00000030, 0x00590000, 0x00000150
.word func_8090EF7C
.word func_8090F1D8
.word func_8090F6C4
.word func_8090F81C
.word 0x00000000, 0x42DC0000
var_8090F9A8: .word \
0x00000002, 0x00000003, 0x00000005, 0x00000007, \
0x0000000C, 0x00000014, 0x00000015, 0x00000016
var_8090F9C8: .word 0x40500001, 0x00000000

.section .rodata

var_8090F9D0: .word var_8090EFF8
.word lbl_8090F1B8
.word var_8090F0E8
.word var_8090F128
.word var_8090F170
var_8090F9E4: .word var_8090F220
.word lbl_8090F37C
.word var_8090F2D8
.word var_8090F310
.word var_8090F348
var_8090F9F8: .word var_8090F3F8
.word lbl_8090F644
.word var_8090F4D0
.word var_8090F54C
.word var_8090F5C8
var_8090FA0C: .word 0xC450C000
var_8090FA10: .word 0x43DE8000
var_8090FA14: .word 0x443F4000, 0x00000000, 0x00000000

