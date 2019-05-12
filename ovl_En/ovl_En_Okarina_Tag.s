#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A86C00:
	sw      a0, 0x0000($sp)            
	sw      a1, 0x0004($sp)            
	jr      $ra                        
	nop


func_80A86C10:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	lh      v0, 0x001C(a2)             ## 0000001C
	lw      t6, 0x0004(a2)             ## 00000004
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	andi    t2, v0, 0x003F             ## t2 = 00000000
	sh      t2, 0x0144(a2)             ## 00000144
	lh      t3, 0x0144(a2)             ## 00000144
	sra     t8, v0, 10                 
	sra     t0, v0,  6                 
	and     t7, t6, $at                
	andi    t9, t8, 0x003F             ## t9 = 00000000
	andi    t1, t0, 0x000F             ## t1 = 00000000
	addiu   $at, $zero, 0x003F         ## $at = 0000003F
	sw      t7, 0x0004(a2)             ## 00000004
	sh      t9, 0x0140(a2)             ## 00000140
	bne     t3, $at, lbl_80A86C68      
	sh      t1, 0x0142(a2)             ## 00000142
	addiu   t4, $zero, 0xFFFF          ## t4 = FFFFFFFF
	sh      t4, 0x0144(a2)             ## 00000144
lbl_80A86C68:
	lh      t5, 0x0142(a2)             ## 00000142
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	bnel    t5, $at, lbl_80A86C88      
	lh      v0, 0x0034(a2)             ## 00000034
	sh      $zero, 0x0142(a2)          ## 00000142
	sh      t6, 0x0148(a2)             ## 00000148
	lh      v0, 0x0034(a2)             ## 00000034
lbl_80A86C88:
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	sb      t7, 0x001F(a2)             ## 0000001F
	blezl   v0, lbl_80A86CB4           
	lh      a1, 0x0144(a2)             ## 00000144
	mtc1    v0, $f4                    ## $f4 = 0.00
	lui     $at, 0x4220                ## $at = 42200000
	mtc1    $at, $f8                   ## $f8 = 40.00
	cvt.s.w $f6, $f4                   
	mul.s   $f10, $f6, $f8             
	swc1    $f10, 0x014C(a2)           ## 0000014C
	lh      a1, 0x0144(a2)             ## 00000144
lbl_80A86CB4:
	bltzl   a1, lbl_80A86CE4           
	lh      t8, 0x0140(a2)             ## 00000140
	or      a0, a3, $zero              ## a0 = 00000000
	jal     func_8002049C              
	sw      a2, 0x0018($sp)            
	beq     v0, $zero, lbl_80A86CE0    
	lw      a2, 0x0018($sp)            
	jal     func_80020EB4              
	or      a0, a2, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A86D6C 
	lw      $ra, 0x0014($sp)           
lbl_80A86CE0:
	lh      t8, 0x0140(a2)             ## 00000140
lbl_80A86CE4:
	addiu   t9, t8, 0xFFFF             ## t9 = FFFFFFFF
	sltiu   $at, t9, 0x0007            
	beq     $at, $zero, lbl_80A86D60   
	sll     t9, t9,  2                 
	lui     $at, %hi(var_80A87FF0)     ## $at = 80A80000
	addu    $at, $at, t9               
	lw      t9, %lo(var_80A87FF0)($at) 
	jr      t9                         
	nop
var_80A86D08:
	lui     t0, %hi(func_80A86D78)     ## t0 = 80A80000
	addiu   t0, t0, %lo(func_80A86D78) ## t0 = 80A86D78
	beq     $zero, $zero, lbl_80A86D68 
	sw      t0, 0x013C(a2)             ## 0000013C
var_80A86D18:
	lui     t1, 0x8012                 ## t1 = 80120000
	lw      t1, -0x5A2C(t1)            ## 8011A5D4
	bne     t1, $zero, lbl_80A86D38    
	nop
	jal     func_80020EB4              
	or      a0, a2, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A86D6C 
	lw      $ra, 0x0014($sp)           
lbl_80A86D38:
	lui     t2, %hi(func_80A87088)     ## t2 = 80A80000
	addiu   t2, t2, %lo(func_80A87088) ## t2 = 80A87088
	beq     $zero, $zero, lbl_80A86D68 
	sw      t2, 0x013C(a2)             ## 0000013C
var_80A86D48:
	lui     t4, %hi(func_80A87510)     ## t4 = 80A80000
	addiu   t3, $zero, 0x5021          ## t3 = 00005021
	addiu   t4, t4, %lo(func_80A87510) ## t4 = 80A87510
	sh      t3, 0x010E(a2)             ## 0000010E
	beq     $zero, $zero, lbl_80A86D68 
	sw      t4, 0x013C(a2)             ## 0000013C
lbl_80A86D60:
	jal     func_80020EB4              
	or      a0, a2, $zero              ## a0 = 00000000
lbl_80A86D68:
	lw      $ra, 0x0014($sp)           
lbl_80A86D6C:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A86D78:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x0024($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	lw      t6, 0x0024($sp)            
	lh      t7, 0x014A(a2)             ## 0000014A
	lh      a3, 0x0144(a2)             ## 00000144
	lw      t0, 0x1C44(t6)             ## 00001C44
	addiu   t8, t7, 0x0001             ## t8 = 00000001
	bltz    a3, lbl_80A86DD8           
	sh      t8, 0x014A(a2)             ## 0000014A
	lw      a0, 0x0024($sp)            
	or      a1, a3, $zero              ## a1 = 00000000
	sw      a2, 0x0020($sp)            
	jal     func_8002049C              
	sw      t0, 0x001C($sp)            
	lw      a2, 0x0020($sp)            
	beq     v0, $zero, lbl_80A86DD8    
	lw      t0, 0x001C($sp)            
	lw      t9, 0x0004(a2)             ## 00000004
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	and     t1, t9, $at                
	beq     $zero, $zero, lbl_80A86ECC 
	sw      t1, 0x0004(a2)             ## 00000004
lbl_80A86DD8:
	lh      a0, 0x0142(a2)             ## 00000142
	addiu   a1, $zero, 0x0006          ## a1 = 00000006
	lui     t2, 0x8012                 ## t2 = 80120000
	bne     a1, a0, lbl_80A86DF8       
	lui     $at, 0x42B4                ## $at = 42B40000
	lbu     t2, -0x476B(t2)            ## 8011B895
	beql    t2, $zero, lbl_80A86ED0    
	lw      $ra, 0x0014($sp)           
lbl_80A86DF8:
	lwc1    $f12, 0x014C(a2)           ## 0000014C
	mtc1    $at, $f4                   ## $f4 = 90.00
	lwc1    $f2, 0x0090(a2)            ## 00000090
	lw      a3, 0x0670(t0)             ## 00000670
	add.s   $f6, $f4, $f12             
	c.lt.s  $f2, $f6                   
	nop
	bc1fl   lbl_80A86ED0               
	lw      $ra, 0x0014($sp)           
	lwc1    $f8, 0x0028(t0)            ## 00000028
	lwc1    $f10, 0x0028(a2)           ## 00000028
	lui     $at, 0x42A0                ## $at = 42A00000
	mtc1    $at, $f16                  ## $f16 = 80.00
	sub.s   $f14, $f8, $f10            
	sll     t3, a3,  6                 
	abs.s   $f14, $f14                 
	c.lt.s  $f14, $f16                 
	nop
	bc1fl   lbl_80A86ED0               
	lw      $ra, 0x0014($sp)           
	bgez    t3, lbl_80A86E90           
	lui     $at, 0x4248                ## $at = 42480000
	andi    v0, a0, 0xFFFF             ## v0 = 00000000
	bne     a1, v0, lbl_80A86E60       
	lui     $at, 0x0080                ## $at = 00800000
	addiu   v0, $zero, 0x000A          ## v0 = 0000000A
lbl_80A86E60:
	or      t4, a3, $at                ## t4 = 00800000
	sw      t4, 0x0670(t0)             ## 00000670
	addiu   a1, v0, 0x0022             ## a1 = 0000002C
	andi    a1, a1, 0xFFFF             ## a1 = 0000002C
	sw      a2, 0x0020($sp)            
	jal     func_800DD400              
	lw      a0, 0x0024($sp)            
	lw      a2, 0x0020($sp)            
	lui     t5, %hi(func_80A86EDC)     ## t5 = 80A80000
	addiu   t5, t5, %lo(func_80A86EDC) ## t5 = 80A86EDC
	beq     $zero, $zero, lbl_80A86ECC 
	sw      t5, 0x013C(a2)             ## 0000013C
lbl_80A86E90:
	mtc1    $at, $f18                  ## $f18 = 0.00
	lui     $at, 0x4220                ## $at = 42200000
	add.s   $f4, $f18, $f12            
	c.lt.s  $f2, $f4                   
	nop
	bc1fl   lbl_80A86ED0               
	lw      $ra, 0x0014($sp)           
	mtc1    $at, $f6                   ## $f6 = 40.00
	nop
	c.lt.s  $f14, $f6                  
	nop
	bc1fl   lbl_80A86ED0               
	lw      $ra, 0x0014($sp)           
	sh      $zero, 0x014A(a2)          ## 0000014A
	sw      a2, 0x0698(t0)             ## 00000698
lbl_80A86ECC:
	lw      $ra, 0x0014($sp)           
lbl_80A86ED0:
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A86EDC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	or      a2, a1, $zero              ## a2 = 00000000
	lui     v0, 0x0001                 ## v0 = 00010000
	addu    v0, v0, a2                 
	lhu     v0, 0x04C6(v0)             ## 000104C6
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	lw      v1, 0x1C44(a2)             ## 00001C44
	bne     v0, $at, lbl_80A86F14      
	lui     t6, %hi(func_80A86D78)     ## t6 = 80A80000
	addiu   t6, t6, %lo(func_80A86D78) ## t6 = 80A86D78
	beq     $zero, $zero, lbl_80A87078 
	sw      t6, 0x013C(a3)             ## 0000013C
lbl_80A86F14:
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bnel    v0, $at, lbl_80A86F94      
	lh      t1, 0x0148(a3)             ## 00000148
	lh      a1, 0x0144(a3)             ## 00000144
	or      a0, a2, $zero              ## a0 = 00000000
	bltzl   a1, lbl_80A86F48           
	lh      t7, 0x00A4(a2)             ## 000000A4
	sw      a2, 0x001C($sp)            
	jal     func_800204D0              
	sw      a3, 0x0018($sp)            
	lw      a2, 0x001C($sp)            
	lw      a3, 0x0018($sp)            
	lh      t7, 0x00A4(a2)             ## 000000A4
lbl_80A86F48:
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	addiu   t9, $zero, 0x0004          ## t9 = 00000004
	bne     t7, $at, lbl_80A86F68      
	addiu   a0, $zero, 0x4802          ## a0 = 00004802
	lui     $at, 0x0001                ## $at = 00010000
	addu    $at, $at, a2               
	addiu   t8, $zero, 0x0037          ## t8 = 00000037
	sb      t8, 0x03DC($at)            ## 000103DC
lbl_80A86F68:
	lui     $at, 0x0001                ## $at = 00010000
	addu    $at, $at, a2               
	sh      t9, 0x04C6($at)            ## 000104C6
	jal     func_800646F0              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	lui     t0, %hi(func_80A86D78)     ## t0 = 80A80000
	addiu   t0, t0, %lo(func_80A86D78) ## t0 = 80A86D78
	beq     $zero, $zero, lbl_80A87078 
	sw      t0, 0x013C(a3)             ## 0000013C
	lh      t1, 0x0148(a3)             ## 00000148
lbl_80A86F94:
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	beql    t1, $zero, lbl_80A87030    
	slti    $at, v0, 0x0005            
	beq     v0, $at, lbl_80A86FD8      
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	beq     v0, $at, lbl_80A86FD8      
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	beq     v0, $at, lbl_80A86FD8      
	addiu   $at, $zero, 0x0008         ## $at = 00000008
	beq     v0, $at, lbl_80A86FD8      
	addiu   $at, $zero, 0x0009         ## $at = 00000009
	beq     v0, $at, lbl_80A86FD8      
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
	beq     v0, $at, lbl_80A86FD8      
	addiu   $at, $zero, 0x000D         ## $at = 0000000D
	bnel    v0, $at, lbl_80A87030      
	slti    $at, v0, 0x0005            
lbl_80A86FD8:
	lh      a1, 0x0144(a3)             ## 00000144
	or      a0, a2, $zero              ## a0 = 00000000
	bltzl   a1, lbl_80A87000           
	lui     $at, 0x0001                ## $at = 00010000
	sw      a2, 0x001C($sp)            
	jal     func_800204D0              
	sw      a3, 0x0018($sp)            
	lw      a2, 0x001C($sp)            
	lw      a3, 0x0018($sp)            
	lui     $at, 0x0001                ## $at = 00010000
lbl_80A87000:
	addu    $at, $at, a2               
	addiu   t2, $zero, 0x0004          ## t2 = 00000004
	sh      t2, 0x04C6($at)            ## 000104C6
	sw      a3, 0x0018($sp)            
	jal     func_800646F0              
	addiu   a0, $zero, 0x4802          ## a0 = 00004802
	lw      a3, 0x0018($sp)            
	lui     t3, %hi(func_80A86D78)     ## t3 = 80A80000
	addiu   t3, t3, %lo(func_80A86D78) ## t3 = 80A86D78
	beq     $zero, $zero, lbl_80A87078 
	sw      t3, 0x013C(a3)             ## 0000013C
	slti    $at, v0, 0x0005            
lbl_80A87030:
	bne     $at, $zero, lbl_80A8705C   
	slti    $at, v0, 0x000E            
	beq     $at, $zero, lbl_80A8705C   
	addiu   t4, $zero, 0x0004          ## t4 = 00000004
	lui     $at, 0x0001                ## $at = 00010000
	addu    $at, $at, a2               
	lui     t5, %hi(func_80A86D78)     ## t5 = 80A80000
	sh      t4, 0x04C6($at)            ## 000104C6
	addiu   t5, t5, %lo(func_80A86D78) ## t5 = 80A86D78
	beq     $zero, $zero, lbl_80A87078 
	sw      t5, 0x013C(a3)             ## 0000013C
lbl_80A8705C:
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bnel    v0, $at, lbl_80A8707C      
	lw      $ra, 0x0014($sp)           
	lw      t6, 0x0670(v1)             ## 00000670
	lui     $at, 0x0080                ## $at = 00800000
	or      t7, t6, $at                ## t7 = 00800000
	sw      t7, 0x0670(v1)             ## 00000670
lbl_80A87078:
	lw      $ra, 0x0014($sp)           
lbl_80A8707C:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A87088:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	addiu   t1, $zero, 0x0006          ## t1 = 00000006
	lh      t6, 0x014A(a2)             ## 0000014A
	lh      t8, 0x0142(a2)             ## 00000142
	lw      t0, 0x1C44(a3)             ## 00001C44
	addiu   t7, t6, 0x0001             ## t7 = 00000001
	bne     t1, t8, lbl_80A870C4       
	sh      t7, 0x014A(a2)             ## 0000014A
	lui     t9, 0x8012                 ## t9 = 80120000
	lbu     t9, -0x476B(t9)            ## 8011B895
	beql    t9, $zero, lbl_80A872C4    
	lw      $ra, 0x0014($sp)           
lbl_80A870C4:
	lh      a1, 0x0144(a2)             ## 00000144
	or      a0, a3, $zero              ## a0 = 00000000
	bltzl   a1, lbl_80A87110           
	lh      v1, 0x0140(a2)             ## 00000140
	sw      a2, 0x0020($sp)            
	sw      a3, 0x0024($sp)            
	jal     func_8002049C              
	sw      t0, 0x001C($sp)            
	lw      a2, 0x0020($sp)            
	lw      a3, 0x0024($sp)            
	lw      t0, 0x001C($sp)            
	beq     v0, $zero, lbl_80A8710C    
	addiu   t1, $zero, 0x0006          ## t1 = 00000006
	lw      t2, 0x0004(a2)             ## 00000004
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	and     t3, t2, $at                
	beq     $zero, $zero, lbl_80A872C0 
	sw      t3, 0x0004(a2)             ## 00000004
lbl_80A8710C:
	lh      v1, 0x0140(a2)             ## 00000140
lbl_80A87110:
	addiu   a0, $zero, 0x0004          ## a0 = 00000004
	lui     t4, 0x8012                 ## t4 = 80120000
	bne     a0, v1, lbl_80A87130       
	nop
	lhu     t4, -0x4B54(t4)            ## 8011B4AC
	andi    t5, t4, 0x0800             ## t5 = 00000000
	bnel    t5, $zero, lbl_80A872C4    
	lw      $ra, 0x0014($sp)           
lbl_80A87130:
	bne     t1, v1, lbl_80A87144       
	lui     t6, 0x8012                 ## t6 = 80120000
	lhu     t6, -0x4B5A(t6)            ## 8011B4A6
	andi    t7, t6, 0x2000             ## t7 = 00000000
	bne     t7, $zero, lbl_80A872C0    
lbl_80A87144:
	lui     $at, 0x42B4                ## $at = 42B40000
	mtc1    $at, $f4                   ## $f4 = 90.00
	lwc1    $f12, 0x014C(a2)           ## 0000014C
	lwc1    $f2, 0x0090(a2)            ## 00000090
	add.s   $f6, $f4, $f12             
	c.lt.s  $f2, $f6                   
	nop
	bc1fl   lbl_80A872C4               
	lw      $ra, 0x0014($sp)           
	lwc1    $f8, 0x0028(t0)            ## 00000028
	lwc1    $f10, 0x0028(a2)           ## 00000028
	lui     $at, 0x42A0                ## $at = 42A00000
	mtc1    $at, $f16                  ## $f16 = 80.00
	sub.s   $f14, $f8, $f10            
	abs.s   $f14, $f14                 
	c.lt.s  $f14, $f16                 
	nop
	bc1fl   lbl_80A872C4               
	lw      $ra, 0x0014($sp)           
	lw      t8, 0x0670(t0)             ## 00000670
	lui     $at, 0x4248                ## $at = 42480000
	sll     t9, t8,  7                 
	bgezl   t9, lbl_80A8727C           
	mtc1    $at, $f18                  ## $f18 = 50.00
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beq     v1, $at, lbl_80A871D4      
	addiu   a1, $zero, 0x0024          ## a1 = 00000024
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     v1, $at, lbl_80A871F0      
	addiu   a1, $zero, 0x0027          ## a1 = 00000027
	beq     v1, a0, lbl_80A8720C       
	addiu   a1, $zero, 0x0026          ## a1 = 00000026
	beq     v1, t1, lbl_80A87228       
	or      a0, a3, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A87244 
	or      a0, a2, $zero              ## a0 = 00000000
lbl_80A871D4:
	or      a0, a3, $zero              ## a0 = 00000000
	sw      a2, 0x0020($sp)            
	jal     func_800DD400              
	sw      t0, 0x001C($sp)            
	lw      a2, 0x0020($sp)            
	beq     $zero, $zero, lbl_80A87258 
	lw      t0, 0x001C($sp)            
lbl_80A871F0:
	or      a0, a3, $zero              ## a0 = 00000000
	sw      a2, 0x0020($sp)            
	jal     func_800DD400              
	sw      t0, 0x001C($sp)            
	lw      a2, 0x0020($sp)            
	beq     $zero, $zero, lbl_80A87258 
	lw      t0, 0x001C($sp)            
lbl_80A8720C:
	or      a0, a3, $zero              ## a0 = 00000000
	sw      a2, 0x0020($sp)            
	jal     func_800DD400              
	sw      t0, 0x001C($sp)            
	lw      a2, 0x0020($sp)            
	beq     $zero, $zero, lbl_80A87258 
	lw      t0, 0x001C($sp)            
lbl_80A87228:
	addiu   a1, $zero, 0x0024          ## a1 = 00000024
	sw      a2, 0x0020($sp)            
	jal     func_800DD400              
	sw      t0, 0x001C($sp)            
	lw      a2, 0x0020($sp)            
	beq     $zero, $zero, lbl_80A87258 
	lw      t0, 0x001C($sp)            
lbl_80A87244:
	sw      a2, 0x0020($sp)            
	jal     func_80020EB4              
	sw      t0, 0x001C($sp)            
	lw      a2, 0x0020($sp)            
	lw      t0, 0x001C($sp)            
lbl_80A87258:
	lw      t2, 0x0670(t0)             ## 00000670
	lui     $at, 0x0080                ## $at = 00800000
	lui     t4, %hi(func_80A872D0)     ## t4 = 80A80000
	or      t3, t2, $at                ## t3 = 00800000
	sw      t3, 0x0670(t0)             ## 00000670
	addiu   t4, t4, %lo(func_80A872D0) ## t4 = 80A872D0
	beq     $zero, $zero, lbl_80A872C0 
	sw      t4, 0x013C(a2)             ## 0000013C
	mtc1    $at, $f18                  ## $f18 = 0.00
lbl_80A8727C:
	lui     $at, 0x4220                ## $at = 42200000
	add.s   $f4, $f18, $f12            
	c.lt.s  $f2, $f4                   
	nop
	bc1fl   lbl_80A872C4               
	lw      $ra, 0x0014($sp)           
	mtc1    $at, $f6                   ## $f6 = 40.00
	nop
	c.lt.s  $f14, $f6                  
	nop
	bc1fl   lbl_80A872C4               
	lw      $ra, 0x0014($sp)           
	sh      $zero, 0x014A(a2)          ## 0000014A
	lw      t5, 0x0670(t0)             ## 00000670
	lui     $at, 0x0080                ## $at = 00800000
	or      t6, t5, $at                ## t6 = 00800000
	sw      t6, 0x0670(t0)             ## 00000670
lbl_80A872C0:
	lw      $ra, 0x0014($sp)           
lbl_80A872C4:
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A872D0:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a1, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lui     v0, 0x0001                 ## v0 = 00010000
	addu    v0, v0, s0                 
	lhu     v0, 0x04C6(v0)             ## 000104C6
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	lw      v1, 0x1C44(s0)             ## 00001C44
	bne     v0, $at, lbl_80A8730C      
	lui     t6, %hi(func_80A87088)     ## t6 = 80A80000
	addiu   t6, t6, %lo(func_80A87088) ## t6 = 80A87088
	beq     $zero, $zero, lbl_80A874FC 
	sw      t6, 0x013C(a2)             ## 0000013C
lbl_80A8730C:
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bne     v0, $at, lbl_80A874B0      
	addiu   a0, $zero, 0x4802          ## a0 = 00004802
	jal     func_800646F0              
	sw      a2, 0x0020($sp)            
	lw      a2, 0x0020($sp)            
	lh      a1, 0x0144(a2)             ## 00000144
	bltzl   a1, lbl_80A87340           
	lh      v0, 0x0140(a2)             ## 00000140
	jal     func_800204D0              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a2, 0x0020($sp)            
	lh      v0, 0x0140(a2)             ## 00000140
lbl_80A87340:
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	or      a0, s0, $zero              ## a0 = 00000000
	beq     v0, $at, lbl_80A87378      
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     v0, $at, lbl_80A8739C      
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	beq     v0, $at, lbl_80A873CC      
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	beq     v0, $at, lbl_80A873E8      
	lui     v1, 0x8012                 ## v1 = 80120000
	beq     $zero, $zero, lbl_80A87494 
	lui     $at, 0x0001                ## $at = 00010000
lbl_80A87378:
	jal     func_800204D0              
	lh      a1, 0x0144(a2)             ## 00000144
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	lhu     t7, 0x0EDA(v1)             ## 8011B4AA
	lw      a2, 0x0020($sp)            
	ori     t8, t7, 0x0200             ## t8 = 00000200
	beq     $zero, $zero, lbl_80A87490 
	sh      t8, 0x0EDA(v1)             ## 8011B4AA
lbl_80A8739C:
	lui     t9, %hi(var_80A876C0)      ## t9 = 80A80000
	addiu   t9, t9, %lo(var_80A876C0)  ## t9 = 80A876C0
	addiu   v1, v1, 0xA5D0             ## v1 = 80114BA0
	sw      t9, 0x1D68(s0)             ## 00001D68
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	sb      t0, 0x1414(v1)             ## 80115FB4
	lui     $at, %hi(var_80A8800C)     ## $at = 80A90000
	lwc1    $f12, %lo(var_80A8800C)($at) 
	jal     func_800C64A0              
	addiu   a1, $zero, 0x005A          ## a1 = 0000005A
	beq     $zero, $zero, lbl_80A87490 
	lw      a2, 0x0020($sp)            
lbl_80A873CC:
	lui     t1, %hi(var_80A87830)      ## t1 = 80A80000
	addiu   t1, t1, %lo(var_80A87830)  ## t1 = 80A87830
	addiu   v1, v1, 0xA5D0             ## v1 = FFFFA5D0
	sw      t1, 0x1D68(s0)             ## 00001D68
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	beq     $zero, $zero, lbl_80A87490 
	sb      t2, 0x1414(v1)             ## FFFFB9E4
lbl_80A873E8:
	addiu   v1, v1, 0xA5D0             ## v1 = FFFF4BA0
	lw      t3, 0x0004(v1)             ## FFFF4BA4
	lui     v0, 0x0200                 ## v0 = 02000000
	addiu   v0, v0, 0x5020             ## v0 = 02005020
	bne     t3, $zero, lbl_80A87440    
	addiu   a0, $zero, 0x4802          ## a0 = 00004802
	lui     v0, 0x0200                 ## v0 = 02000000
	addiu   v0, v0, 0x3C80             ## v0 = 02003C80
	sll     t4, v0,  4                 
	srl     t5, t4, 28                 
	sll     t6, t5,  2                 
	lui     t7, 0x8012                 ## t7 = 80120000
	addu    t7, t7, t6                 
	lui     $at, 0x00FF                ## $at = 00FF0000
	lw      t7, 0x0C38(t7)             ## 80120C38
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	and     t8, v0, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t9, t7, t8                 
	addu    t0, t9, $at                
	beq     $zero, $zero, lbl_80A87474 
	sw      t0, 0x1D68(s0)             ## 00001D68
lbl_80A87440:
	sll     t1, v0,  4                 
	srl     t2, t1, 28                 
	sll     t3, t2,  2                 
	lui     t4, 0x8012                 ## t4 = 80120000
	addu    t4, t4, t3                 
	lui     $at, 0x00FF                ## $at = 00FF0000
	lw      t4, 0x0C38(t4)             ## 80120C38
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	and     t5, v0, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t6, t4, t5                 
	addu    t7, t6, $at                
	sw      t7, 0x1D68(s0)             ## 00001D68
lbl_80A87474:
	lhu     t9, 0x0ED6(v1)             ## FFFF5A76
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	sb      t8, 0x1414(v1)             ## FFFF5FB4
	ori     t0, t9, 0x2000             ## t0 = 00002000
	jal     func_800646F0              
	sh      t0, 0x0ED6(v1)             ## FFFF5A76
	lw      a2, 0x0020($sp)            
lbl_80A87490:
	lui     $at, 0x0001                ## $at = 00010000
lbl_80A87494:
	addu    $at, $at, s0               
	addiu   t1, $zero, 0x0004          ## t1 = 00000004
	lui     t2, %hi(func_80A87088)     ## t2 = 80A80000
	sh      t1, 0x04C6($at)            ## 000104C6
	addiu   t2, t2, %lo(func_80A87088) ## t2 = 80A87088
	beq     $zero, $zero, lbl_80A874FC 
	sw      t2, 0x013C(a2)             ## 0000013C
lbl_80A874B0:
	slti    $at, v0, 0x0005            
	bne     $at, $zero, lbl_80A874E0   
	slti    $at, v0, 0x000E            
	beq     $at, $zero, lbl_80A874E0   
	addiu   t3, $zero, 0x0004          ## t3 = 00000004
	lui     $at, 0x0001                ## $at = 00010000
	addu    $at, $at, s0               
	lui     t4, %hi(func_80A87088)     ## t4 = 80A80000
	sh      t3, 0x04C6($at)            ## 000104C6
	addiu   t4, t4, %lo(func_80A87088) ## t4 = 80A87088
	beq     $zero, $zero, lbl_80A874FC 
	sw      t4, 0x013C(a2)             ## 0000013C
lbl_80A874E0:
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bnel    v0, $at, lbl_80A87500      
	lw      $ra, 0x001C($sp)           
	lw      t5, 0x0670(v1)             ## 00000670
	lui     $at, 0x0080                ## $at = 00800000
	or      t6, t5, $at                ## t6 = 00800000
	sw      t6, 0x0670(v1)             ## 00000670
lbl_80A874FC:
	lw      $ra, 0x001C($sp)           
lbl_80A87500:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A87510:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lw      a1, 0x001C($sp)            
	jal     func_80022930              
	sw      a0, 0x0018($sp)            
	beq     v0, $zero, lbl_80A87540    
	lw      a0, 0x0018($sp)            
	lui     t6, %hi(func_80A875D8)     ## t6 = 80A80000
	addiu   t6, t6, %lo(func_80A875D8) ## t6 = 80A875D8
	beq     $zero, $zero, lbl_80A875C8 
	sw      t6, 0x013C(a0)             ## 0000013C
lbl_80A87540:
	lui     $at, 0x42F0                ## $at = 42F00000
	mtc1    $at, $f4                   ## $f4 = 120.00
	lwc1    $f6, 0x0090(a0)            ## 00000090
	lh      t7, 0x008A(a0)             ## 0000008A
	lh      t8, 0x0032(a0)             ## 00000032
	c.lt.s  $f4, $f6                   
	lh      t9, 0x014A(a0)             ## 0000014A
	subu    v1, t7, t8                 
	sll     v1, v1, 16                 
	addiu   t0, t9, 0x0001             ## t0 = 00000001
	sra     v1, v1, 16                 
	bc1t    lbl_80A875C8               
	sh      t0, 0x014A(a0)             ## 0000014A
	lui     t1, 0x8010                 ## t1 = 80100000
	lui     t2, 0x8012                 ## t2 = 80120000
	lw      t2, -0x598C(t2)            ## 8011A674
	lw      t1, -0x73D4(t1)            ## 800F8C2C
	subu    v0, $zero, v1              
	addiu   t4, $zero, 0x5021          ## t4 = 00005021
	and     t3, t1, t2                 
	beq     t3, $zero, lbl_80A8759C    
	sll     v0, v0, 16                 
	sh      t4, 0x010E(a0)             ## 0000010E
lbl_80A8759C:
	bltz    v1, lbl_80A875B0           
	sra     v0, v0, 16                 
	sll     v0, v1, 16                 
	beq     $zero, $zero, lbl_80A875B0 
	sra     v0, v0, 16                 
lbl_80A875B0:
	slti    $at, v0, 0x4300            
	beq     $at, $zero, lbl_80A875C8   
	lui     a2, 0x428C                 ## a2 = 428C0000
	sh      $zero, 0x014A(a0)          ## 0000014A
	jal     func_80022A68              
	lw      a1, 0x001C($sp)            
lbl_80A875C8:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A875D8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_800DD464              
	addiu   a0, a0, 0x20D8             ## a0 = 000020D8
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bnel    v0, $at, lbl_80A87690      
	lw      $ra, 0x0014($sp)           
	jal     func_800D6110              
	lw      a0, 0x001C($sp)            
	beql    v0, $zero, lbl_80A87690    
	lw      $ra, 0x0014($sp)           
	jal     func_800D6218              
	lw      a0, 0x001C($sp)            
	lui     v1, 0x8012                 ## v1 = 80120000
	addiu   v1, v1, 0xA5D0             ## v1 = 8011A5D0
	lui     t6, 0x8010                 ## t6 = 80100000
	lw      t6, -0x73D4(t6)            ## 800F8C2C
	lw      t7, 0x00A4(v1)             ## 8011A674
	lui     v0, 0x0200                 ## v0 = 02000000
	addiu   v0, v0, 0x24A0             ## v0 = 020024A0
	and     t8, t6, t7                 
	bne     t8, $zero, lbl_80A8767C    
	sll     t9, v0,  4                 
	srl     t0, t9, 28                 
	sll     t1, t0,  2                 
	lui     t2, 0x8012                 ## t2 = 80120000
	addu    t2, t2, t1                 
	lui     $at, 0x00FF                ## $at = 00FF0000
	lw      t2, 0x0C38(t2)             ## 80120C38
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	and     t3, v0, $at                
	lw      t6, 0x001C($sp)            
	lui     $at, 0x8000                ## $at = 80000000
	addu    t4, t2, t3                 
	addu    t5, t4, $at                
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	sw      t5, 0x1D68(t6)             ## 80101D68
	sb      t7, 0x1414(v1)             ## 8011B9E4
lbl_80A8767C:
	lw      t9, 0x0018($sp)            
	lui     t8, %hi(func_80A87510)     ## t8 = 80A80000
	addiu   t8, t8, %lo(func_80A87510) ## t8 = 80A87510
	sw      t8, 0x013C(t9)             ## 0000013C
	lw      $ra, 0x0014($sp)           
lbl_80A87690:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A8769C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lw      t9, 0x013C(a0)             ## 0000013C
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop

.section .data

var_80A876C0: .word \
0x00000004, 0x00000168, 0x000003E8, 0x00000001, \
0x002A00C8, 0x00C900C9, 0x00000001, 0x00010000, \
0x014B0000, 0x00000000, 0x42700000, 0x0C1C00C9, \
0xFF9C3235, 0x00000000, 0x42700000, 0x0C1C00C9, \
0xFF9C3336, 0x00000000, 0x42700000, 0x0C1C00C9, \
0xFF9C392C, 0x00000000, 0x42700000, 0x0C6A00C9, \
0x00712C20, 0x00000000, 0x42700000, 0x0C6A00C9, \
0x00713235, 0x00000000, 0x42700000, 0x0C6A00C9, \
0x00713238, 0x00000000, 0x42700000, 0x0C6A00C9, \
0x00713639, 0xFF000000, 0x42700000, 0x0C6A00C9, \
0x00712C20, 0x00000002, 0x00010000, 0x01680000, \
0x0000001E, 0x42700000, 0x0BEE0089, 0xFFC03235, \
0x0000001E, 0x42700000, 0x0BEE0089, 0xFFC03336, \
0x0000005A, 0x42700000, 0x0BEE0089, 0xFFC0392C, \
0x0000005A, 0x42700000, 0x0C2E008E, 0x00602C20, \
0x0000001E, 0x42700000, 0x0C2E008E, 0x00603235, \
0x0000001E, 0x42700000, 0x0C2E008E, 0x00603238, \
0x0000001E, 0x42700000, 0x0C2E008E, 0x00603639, \
0xFF00001E, 0x42700000, 0x0C2E008E, 0x00602C20, \
0x00000003, 0x00000001, 0x0013001E, 0x001F0000, \
0x00000000, 0xFFFFFFFE, 0x00000000, 0x00000002, \
0xFFFFFFFE, 0x00000000, 0x00000002, 0x00000000, \
0x00000000, 0x00000000, 0xFFFFFFFF, 0x00000000
var_80A87830: .word \
0x00000012, 0x00000BB8, 0x00000021, 0x00000001, \
0x00010000, 0x0BB80000, 0x00000000, 0x00000000, \
0xFFFFFFAA, 0xFFFFFFAE, 0x00000000, 0xFFFFFFAA, \
0xFFFFFFAE, 0x00000000, 0x00000000, 0x00000000, \
0x0000000A, 0x00000003, 0x00110000, 0x00500000, \
0x80000000, 0x00000000, 0xFFFFFFD8, 0x00000578, \
0x00000000, 0xFFFFFFD8, 0x00000578, 0x00000000, \
0x00000000, 0x00000001, 0x00120050, 0x00C90000, \
0x80000000, 0x00000000, 0xFFFFFFD8, 0x00000578, \
0x00000000, 0xFFFFFFD8, 0x00000578, 0x00000000, \
0x00000000, 0x00000001, 0x000500C9, 0x02960000, \
0x80000000, 0x00000000, 0xFFFFFFD8, 0x00000578, \
0x00000000, 0xFFFFFFD8, 0x00000578, 0x00000000, \
0x00000000, 0x00000001, 0x00000003, 0x00000001, \
0x000D01FE, 0x02630000, 0x00000000, 0xFFFFFFFF, \
0x00000000, 0x00000000, 0xFFFFFFFF, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000030, 0x00000001, 0x000300A0, 0x01210000, \
0x00000000, 0x00000000, 0x00000014, 0x00000578, \
0x00000000, 0x0000003C, 0x00000578, 0x00000000, \
0x3E9EC27B, 0x00000000, 0x00000030, 0x00000003, \
0x00040154, 0x01A40000, 0x00000000, 0x00000000, \
0x00000078, 0x00000537, 0x00000000, 0x00000028, \
0x00000537, 0x00000000, 0xBF800000, 0x00000000, \
0x000401A4, 0x01D10000, 0x00000000, 0x00000000, \
0x00000028, 0x00000537, 0x00000000, 0x00000010, \
0x00000537, 0x00000000, 0xBF088889, 0x00000000, \
0x000201D1, 0x02070000, 0x00000000, 0x00000000, \
0x00000010, 0x00000537, 0x00000000, 0x00000010, \
0x00000537, 0x00000000, 0x00000000, 0x00000000, \
0x00000003, 0x00000001, 0x0003026C, 0x026D0000, \
0x00000000, 0x00000001, 0x00000000, 0xFFFFFFFF, \
0x00000001, 0x00000000, 0xFFFFFFFF, 0x00000000, \
0x00000000, 0x00000000, 0x0000002D, 0x00000001, \
0x00010152, 0x01550155, 0x0000002D, 0x00000001, \
0x00050158, 0x015D015D, 0x00000003, 0x00000001, \
0x000C0316, 0x03170000, 0x00000000, 0x00000000, \
0x00000000, 0x00000002, 0x00000000, 0x00000000, \
0x00000002, 0x00000000, 0x00000000, 0x00000000, \
0x0000002D, 0x00000001, 0x0001009D, 0x00A000A0, \
0x0000002D, 0x00000001, 0x0005009F, 0x00A600A6, \
0x00000056, 0x00000001, 0x005A0230, 0x02310000, \
0x00000000, 0x00000003, 0x00000000, 0x00000004, \
0x00000003, 0x00000000, 0x00000004, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x00010000, \
0x01C30000, 0x00000000, 0x42700000, 0x0002000B, \
0x0575A220, 0x00000000, 0x42700000, 0x0002000B, \
0x0575B820, 0x00000000, 0x42700000, 0x0002000B, \
0x0575D0A1, 0x00000000, 0x42700000, 0x0000001B, \
0x05A5BAEE, 0x00000000, 0x42700000, 0x0038001B, \
0x0569A5AF, 0x00000000, 0x42700000, 0xFFED001B, \
0x053DAE0A, 0x00000000, 0x42700000, 0xFFD4FFFC, \
0x0595A8A5, 0x00000000, 0x42700000, 0xFFD4FFFC, \
0x0595A5ED, 0x00000000, 0x42700000, 0xFFD4FFFC, \
0x0595A220, 0x00000000, 0x42700000, 0xFFD4FFFC, \
0x0595A5A4, 0x00000000, 0x42700000, 0xFFD4FFFC, \
0x059520BA, 0x00000000, 0x42700000, 0xFFD4FFFC, \
0x0595C9A5, 0x00000000, 0x42700000, 0xFFD4FFFC, \
0x0595A5A2, 0x00000000, 0x42700000, 0xFFD4FFFC, \
0x0595A5BB, 0x00000000, 0x42700000, 0xFFD4FFFC, \
0x0595AE0A, 0xFF000000, 0x42700000, 0xFFD4FFFC, \
0x0595B3A5, 0x00000001, 0x00010154, 0x05B50000, \
0x00000000, 0x42700000, 0xFFFA000F, 0x0618A220, \
0x00000000, 0x42700000, 0xFFFA000F, 0x0618B820, \
0x00000000, 0x42700000, 0xFFFA000F, 0x0618D0A1, \
0x00000000, 0x42700000, 0xFFFA000F, 0x0618BAEE, \
0x00000000, 0x42700000, 0xFFFA000F, 0x0618A5AF, \
0xFF000000, 0x42700000, 0xFFFA000F, 0x0618AE0A, \
0x00000001, 0x000101EA, 0x03AD0000, 0x00000000, \
0x42700000, 0x00000108, 0x0563A220, 0x00000000, \
0x42700000, 0x00000108, 0x0563B820, 0x00000000, \
0x42700000, 0x00000108, 0x0563D0A1, 0x00000000, \
0x42700000, 0x00000108, 0x0563BAEE, 0x00000000, \
0x42700000, 0x00000099, 0x0563A5AF, 0x00000000, \
0x42700000, 0x00370020, 0x0576AE0A, 0x00000000, \
0x42700000, 0x006FFFDA, 0x05E7A8A5, 0x00000000, \
0x42700000, 0x006FFFDA, 0x05E7A5ED, 0x00000000, \
0x42700000, 0x006FFFDA, 0x05E7A220, 0x00000000, \
0x42700000, 0x006FFFDA, 0x05E7A5A4, 0x00000000, \
0x42700000, 0x006FFFDA, 0x05E720BA, 0x00000000, \
0x42700000, 0x006FFFDA, 0x05E7C9A5, 0x00000000, \
0x42700000, 0x006FFFDA, 0x05E7A5A2, 0xFF000000, \
0x42700000, 0x006FFFDA, 0x05E7A5BB, 0x00000002, \
0x00010000, 0x01E00000, 0x0000001E, 0x42700000, \
0x00020024, 0x0537A220, 0x0000001E, 0x42700000, \
0x00020024, 0x0537B820, 0x0000001E, 0x42700000, \
0x00020024, 0x0537D0A1, 0x0000001E, 0x42700000, \
0x0000FFF8, 0x056FBAEE, 0x0000001E, 0x42700000, \
0x0001FFFB, 0x0576A5AF, 0x0000001E, 0x42700000, \
0xFFFEFFFD, 0x0572AE0A, 0x0000001E, 0x42700000, \
0x00050000, 0x0577A8A5, 0x0000001E, 0x42700000, \
0x0001000E, 0x0577A5ED, 0x0000001E, 0x42700000, \
0xFFF70021, 0x057AA220, 0x0000001E, 0x42700000, \
0xFFF20029, 0x0581A5A4, 0x0000001E, 0x42700000, \
0xFFF20029, 0x058120BA, 0x0000001E, 0x42700000, \
0xFFF20029, 0x0581C9A5, 0x0000001E, 0x42700000, \
0xFFF20029, 0x0581A5A2, 0x0000001E, 0x42700000, \
0xFFF20029, 0x0581A5BB, 0x0000001E, 0x42700000, \
0xFFF20029, 0x0581AE0A, 0xFF00001E, 0x42700000, \
0xFFF20029, 0x0581B3A5, 0x00000002, 0x00010154, \
0x05D20000, 0x0000001E, 0x42700000, 0xFFFD0030, \
0x0586A220, 0x0000001E, 0x42700000, 0xFFFD0030, \
0x0586B820, 0x000003E8, 0x42700000, 0xFFFD0030, \
0x0586D0A1, 0x0000001E, 0x42700000, 0xFFFD0030, \
0x0586BAEE, 0x0000001E, 0x42700000, 0xFFFD002F, \
0x0586A5AF, 0xFF00001E, 0x42700000, 0xFFFD002F, \
0x0586AE0A, 0x00000002, 0x000101EA, 0x03CA0000, \
0x0000001E, 0x42700000, 0x00000108, 0x04FAA220, \
0x0000003C, 0x42700000, 0x00000108, 0x04FAB820, \
0x0000003C, 0x42700000, 0x00000108, 0x04FAD0A1, \
0x0000001E, 0x42700000, 0x00000108, 0x04FABAEE, \
0x0000001E, 0x42700000, 0x000000AA, 0x04FBA5AF, \
0x0000001E, 0x42700000, 0x000A0033, 0x051AAE0A, \
0x0000001E, 0x42700000, 0x0044FFFE, 0x0590A8A5, \
0x0000001E, 0x42700000, 0x0044FFFE, 0x0590A5ED, \
0x0000001E, 0x42700000, 0x0044FFFE, 0x0590A220, \
0x0000001E, 0x42700000, 0x0044FFFE, 0x0590A5A4, \
0x0000001E, 0x42700000, 0x0044FFFE, 0x059020BA, \
0x0000001E, 0x42700000, 0x0044FFFE, 0x0590C9A5, \
0x0000001E, 0x42700000, 0x0044FFFE, 0x0590A5A2, \
0xFF00001E, 0x42700000, 0x0044FFFE, 0x0590A5BB, \
0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000
var_80A87FD0: .word 0x012E0600, 0x02000010, 0x00010000, 0x00000150
.word func_80A86C10
.word func_80A86C00
.word func_80A8769C
.word 0x00000000

.section .rodata

var_80A87FF0: .word lbl_80A86D38
.word var_80A86D18
.word lbl_80A86D60
.word lbl_80A86D38
.word var_80A86D48
.word lbl_80A86D38
.word var_80A86D08
var_80A8800C: .word 0x3F983809

