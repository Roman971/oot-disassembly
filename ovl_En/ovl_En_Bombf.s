#include <mips.h>
.set noreorder
.set noat

.section .text
func_808E9E80:
	sw      a1, 0x01EC(a0)             ## 000001EC
	jr      $ra                        
	nop


func_808E9E8C:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s1, 0x0020($sp)            
	sw      s0, 0x001C($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x0024($sp)           
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     a1, 0x3C23                 ## a1 = 3C230000
	ori     a1, a1, 0xD70A             ## a1 = 3C23D70A
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80020F88              
	swc1    $f4, 0x003C($sp)           
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	sw      t6, 0x01F0(s0)             ## 000001F0
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	sw      a1, 0x002C($sp)            
	jal     func_8004AB7C              
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x0188             ## a1 = 00000188
	sw      a1, 0x0030($sp)            
	jal     func_8004A484              
	or      a0, s1, $zero              ## a0 = 00000000
	lui     a3, %hi(var_808EB140)      ## a3 = 808F0000
	addiu   a3, a3, %lo(var_808EB140)  ## a3 = 808EB140
	or      a0, s1, $zero              ## a0 = 00000000
	lw      a1, 0x002C($sp)            
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	lui     a3, %hi(var_808EB190)      ## a3 = 808F0000
	addiu   t7, s0, 0x01A8             ## t7 = 000001A8
	sw      t7, 0x0010($sp)            
	addiu   a3, a3, %lo(var_808EB190)  ## a3 = 808EB190
	or      a0, s1, $zero              ## a0 = 00000000
	lw      a1, 0x0030($sp)            
	jal     func_8004A874              
	or      a2, s0, $zero              ## a2 = 00000000
	lh      t8, 0x001C(s0)             ## 0000001C
	lui     a2, 0x8002                 ## a2 = 80020000
	addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
	bne     t8, $zero, lbl_808E9F40    
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	lui     $at, 0x447A                ## $at = 447A0000
	mtc1    $at, $f6                   ## $f6 = 1000.00
	nop
	swc1    $f6, 0x003C($sp)           
lbl_808E9F40:
	lw      a1, 0x003C($sp)            
	jal     func_8001EC20              
	lui     a3, 0x4140                 ## a3 = 41400000
	lw      t0, 0x0024(s0)             ## 00000024
	lw      t9, 0x0028(s0)             ## 00000028
	lui     $at, %hi(var_808EB1E0)     ## $at = 808F0000
	sw      t0, 0x0038(s0)             ## 00000038
	lw      t0, 0x002C(s0)             ## 0000002C
	sw      t9, 0x003C(s0)             ## 0000003C
	or      a0, s1, $zero              ## a0 = 00000000
	sw      t0, 0x0040(s0)             ## 00000040
	lwc1    $f8, %lo(var_808EB1E0)($at) 
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a2, $zero, 0x005C          ## a2 = 0000005C
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	jal     func_80028158              
	swc1    $f8, 0x0010($sp)           
	beq     v0, $zero, lbl_808E9F98    
	addiu   t9, $zero, 0x00FF          ## t9 = 000000FF
	lw      t1, 0x0004(s0)             ## 00000004
	ori     t2, t1, 0x0020             ## t2 = 00000020
	sw      t2, 0x0004(s0)             ## 00000004
lbl_808E9F98:
	lh      t3, 0x001C(s0)             ## 0000001C
	addiu   v0, $zero, 0x000A          ## v0 = 0000000A
	sh      v0, 0x00A8(s0)             ## 000000A8
	sh      v0, 0x00AA(s0)             ## 000000AA
	bne     t3, $zero, lbl_808EA010    
	sb      $zero, 0x001F(s0)          ## 0000001F
	lui     $at, 0xBFC0                ## $at = BFC00000
	mtc1    $at, $f10                  ## $f10 = -1.50
	addiu   t4, $zero, 0x008C          ## t4 = 0000008C
	addiu   t5, $zero, 0x000F          ## t5 = 0000000F
	sh      t4, 0x01E8(s0)             ## 000001E8
	sh      t5, 0x01F6(s0)             ## 000001F6
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a1, s1, 0x1C24             ## a1 = 00001C24
	or      a2, s0, $zero              ## a2 = 00000000
	addiu   a3, $zero, 0x0003          ## a3 = 00000003
	jal     func_800265D4              
	swc1    $f10, 0x006C(s0)           ## 0000006C
	lw      t7, 0x0004(s0)             ## 00000004
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	addiu   t6, $zero, 0x00C8          ## t6 = 000000C8
	lui     a1, %hi(func_808EA3E0)     ## a1 = 808F0000
	and     t8, t7, $at                
	sb      t6, 0x00AE(s0)             ## 000000AE
	sw      t8, 0x0004(s0)             ## 00000004
	addiu   a1, a1, %lo(func_808EA3E0) ## a1 = 808EA3E0
	jal     func_808E9E80              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_808EA034 
	nop
lbl_808EA010:
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f16                  ## $f16 = 1.00
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	sb      t9, 0x00AE(s0)             ## 000000AE
	sb      t0, 0x01F4(s0)             ## 000001F4
	or      a0, s0, $zero              ## a0 = 00000000
	lh      a1, 0x001C(s0)             ## 0000001C
	jal     func_808EA0A8              
	swc1    $f16, 0x01FC(s0)           ## 000001FC
lbl_808EA034:
	lui     $at, %hi(var_808EB1E4)     ## $at = 808F0000
	lwc1    $f0, %lo(var_808EB1E4)($at) 
	lwc1    $f18, 0x00F8(s0)           ## 000000F8
	lwc1    $f6, 0x00F4(s0)            ## 000000F4
	add.s   $f4, $f18, $f0             
	add.s   $f8, $f6, $f0              
	swc1    $f4, 0x00F8(s0)            ## 000000F8
	swc1    $f8, 0x00F4(s0)            ## 000000F4
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000


func_808EA068:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a1, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_8004ABCC              
	addiu   a1, a1, 0x013C             ## a1 = 0000013C
	lw      a1, 0x0018($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_8004A550              
	addiu   a1, a1, 0x0188             ## a1 = 00000188
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808EA0A8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lui     a1, %hi(func_808EA0D0)     ## a1 = 808F0000
	jal     func_808E9E80              
	addiu   a1, a1, %lo(func_808EA0D0) ## a1 = 808EA0D0
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808EA0D0:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	lui     $at, 0x3F80                ## $at = 3F800000
	sw      s1, 0x0030($sp)            
	sw      s0, 0x002C($sp)            
	mtc1    $at, $f2                   ## $f2 = 1.00
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x0034($sp)           
	lwc1    $f0, 0x01FC(s0)            ## 000001FC
	lw      v1, 0x1C44(s1)             ## 00001C44
	or      a0, s0, $zero              ## a0 = 00000000
	c.le.s  $f2, $f0                   
	or      a1, s1, $zero              ## a1 = 00000000
	bc1fl   lbl_808EA34C               
	lh      t8, 0x01E8(s0)             ## 000001E8
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, s1, $zero              ## a1 = 00000000
	jal     func_80022BB0              
	sw      v1, 0x0040($sp)            
	beq     v0, $zero, lbl_808EA1C8    
	lw      v1, 0x0040($sp)            
	lwc1    $f4, 0x0028(s0)            ## 00000028
	lw      a3, 0x0024(s0)             ## 00000024
	addiu   a0, s1, 0x1C24             ## a0 = 00001C24
	swc1    $f4, 0x0010($sp)           
	lwc1    $f6, 0x002C(s0)            ## 0000002C
	sw      v1, 0x0040($sp)            
	sw      $zero, 0x0024($sp)         
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0018($sp)         
	or      a1, s1, $zero              ## a1 = 00000000
	addiu   a2, $zero, 0x004C          ## a2 = 0000004C
	jal     func_80025110              ## ActorSpawn
	swc1    $f6, 0x0014($sp)           
	lw      v1, 0x0040($sp)            
	beq     v0, $zero, lbl_808EA1A4    
	or      a1, v0, $zero              ## a1 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022D64              
	or      a2, s1, $zero              ## a2 = 00000000
	mtc1    $zero, $f8                 ## $f8 = 0.00
	addiu   t6, $zero, 0x00B4          ## t6 = 000000B4
	sh      t6, 0x01E8(s0)             ## 000001E8
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x086A          ## a1 = 0000086A
	jal     func_80022FD0              
	swc1    $f8, 0x01FC(s0)            ## 000001FC
	lw      t7, 0x0004(s0)             ## 00000004
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	and     t8, t7, $at                
	beq     $zero, $zero, lbl_808EA3CC 
	sw      t8, 0x0004(s0)             ## 00000004
lbl_808EA1A4:
	sw      $zero, 0x011C(v1)          ## 0000011C
	sw      $zero, 0x039C(v1)          ## 0000039C
	sw      $zero, 0x0428(v1)          ## 00000428
	sw      $zero, 0x0118(s0)          ## 00000118
	lw      t9, 0x066C(v1)             ## 0000066C
	addiu   $at, $zero, 0xF7FF         ## $at = FFFFF7FF
	and     t0, t9, $at                
	beq     $zero, $zero, lbl_808EA3CC 
	sw      t0, 0x066C(v1)             ## 0000066C
lbl_808EA1C8:
	lbu     v0, 0x014D(s0)             ## 0000014D
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x0024             ## a1 = 00000024
	andi    t1, v0, 0x0002             ## t1 = 00000000
	beq     t1, $zero, lbl_808EA260    
	lui     a2, 0x41F0                 ## a2 = 41F00000
	lw      t3, 0x0144(s0)             ## 00000144
	andi    t2, v0, 0xFFFD             ## t2 = 00000000
	sb      t2, 0x014D(s0)             ## 0000014D
	lbu     t4, 0x0002(t3)             ## 00000002
	addiu   $at, $zero, 0x0009         ## $at = 00000009
	addiu   a0, s1, 0x1C24             ## a0 = 00001C24
	beq     t4, $at, lbl_808EA3CC      
	or      a1, s1, $zero              ## a1 = 00000000
	lwc1    $f10, 0x0028(s0)           ## 00000028
	lw      a3, 0x0024(s0)             ## 00000024
	addiu   a2, $zero, 0x004C          ## a2 = 0000004C
	swc1    $f10, 0x0010($sp)          
	lwc1    $f16, 0x002C(s0)           ## 0000002C
	sw      $zero, 0x0024($sp)         
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0018($sp)         
	jal     func_80025110              ## ActorSpawn
	swc1    $f16, 0x0014($sp)          
	beq     v0, $zero, lbl_808EA3CC    
	addiu   t5, $zero, 0x0001          ## t5 = 00000001
	sw      t5, 0x01F0(v0)             ## 000001F0
	sh      $zero, 0x01E8(v0)          ## 000001E8
	lw      t7, 0x0004(s0)             ## 00000004
	mtc1    $zero, $f18                ## $f18 = 0.00
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	addiu   t6, $zero, 0x00B4          ## t6 = 000000B4
	and     t8, t7, $at                
	sh      t6, 0x01E8(s0)             ## 000001E8
	sw      t8, 0x0004(s0)             ## 00000004
	beq     $zero, $zero, lbl_808EA3CC 
	swc1    $f18, 0x01FC(s0)           ## 000001FC
lbl_808EA260:
	lui     a3, 0x4248                 ## a3 = 42480000
	sw      v1, 0x0040($sp)            
	jal     func_80079A20              
	sw      a1, 0x0038($sp)            
	beq     v0, $zero, lbl_808EA2DC    
	lw      v1, 0x0040($sp)            
	lwc1    $f4, 0x0028(s0)            ## 00000028
	lw      a3, 0x0024(s0)             ## 00000024
	addiu   a0, s1, 0x1C24             ## a0 = 00001C24
	swc1    $f4, 0x0010($sp)           
	lwc1    $f6, 0x002C(s0)            ## 0000002C
	sw      $zero, 0x0024($sp)         
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0018($sp)         
	or      a1, s1, $zero              ## a1 = 00000000
	addiu   a2, $zero, 0x004C          ## a2 = 0000004C
	jal     func_80025110              ## ActorSpawn
	swc1    $f6, 0x0014($sp)           
	beq     v0, $zero, lbl_808EA3CC    
	addiu   t9, $zero, 0x0064          ## t9 = 00000064
	sh      t9, 0x01E8(v0)             ## 000001E8
	lw      t1, 0x0004(s0)             ## 00000004
	mtc1    $zero, $f8                 ## $f8 = 0.00
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	addiu   t0, $zero, 0x00B4          ## t0 = 000000B4
	and     t2, t1, $at                
	sh      t0, 0x01E8(s0)             ## 000001E8
	sw      t2, 0x0004(s0)             ## 00000004
	beq     $zero, $zero, lbl_808EA3CC 
	swc1    $f8, 0x01FC(s0)            ## 000001FC
lbl_808EA2DC:
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, s1, $zero              ## a1 = 00000000
	jal     func_80022BB0              
	sw      v1, 0x0040($sp)            
	bne     v0, $zero, lbl_808EA308    
	lw      v1, 0x0040($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022D20              
	or      a1, s1, $zero              ## a1 = 00000000
	beq     $zero, $zero, lbl_808EA3D0 
	lw      $ra, 0x0034($sp)           
lbl_808EA308:
	sw      $zero, 0x011C(v1)          ## 0000011C
	sw      $zero, 0x039C(v1)          ## 0000039C
	sw      $zero, 0x0428(v1)          ## 00000428
	sw      $zero, 0x0118(s0)          ## 00000118
	lw      t3, 0x066C(v1)             ## 0000066C
	addiu   $at, $zero, 0xF7FF         ## $at = FFFFF7FF
	and     t4, t3, $at                
	sw      t4, 0x066C(v1)             ## 0000066C
	lw      t7, 0x0008(s0)             ## 00000008
	lw      t5, 0x0038($sp)            
	sw      t7, 0x0000(t5)             ## 00000000
	lw      t6, 0x000C(s0)             ## 0000000C
	sw      t6, 0x0004(t5)             ## 00000004
	lw      t7, 0x0010(s0)             ## 00000010
	beq     $zero, $zero, lbl_808EA3CC 
	sw      t7, 0x0008(t5)             ## 00000008
	lh      t8, 0x01E8(s0)             ## 000001E8
lbl_808EA34C:
	lui     $at, %hi(var_808EB1E8)     ## $at = 808F0000
	bne     t8, $zero, lbl_808EA384    
	nop
	lwc1    $f10, %lo(var_808EB1E8)($at) 
	add.s   $f16, $f0, $f10            
	swc1    $f16, 0x01FC(s0)           ## 000001FC
	lwc1    $f18, 0x01FC(s0)           ## 000001FC
	c.le.s  $f2, $f18                  
	nop
	bc1f    lbl_808EA384               
	nop
	lw      t9, 0x0004(s0)             ## 00000004
	ori     t0, t9, 0x0001             ## t0 = 00000001
	sw      t0, 0x0004(s0)             ## 00000004
lbl_808EA384:
	jal     func_80022BB0              
	sw      v1, 0x0040($sp)            
	beq     v0, $zero, lbl_808EA3CC    
	lw      v1, 0x0040($sp)            
	sw      $zero, 0x011C(v1)          ## 0000011C
	sw      $zero, 0x039C(v1)          ## 0000039C
	sw      $zero, 0x0428(v1)          ## 00000428
	sw      $zero, 0x0118(s0)          ## 00000118
	lw      t1, 0x066C(v1)             ## 0000066C
	addiu   $at, $zero, 0xF7FF         ## $at = FFFFF7FF
	and     t2, t1, $at                
	sw      t2, 0x066C(v1)             ## 0000066C
	lw      t4, 0x0008(s0)             ## 00000008
	lw      t3, 0x000C(s0)             ## 0000000C
	sw      t4, 0x0024(s0)             ## 00000024
	lw      t4, 0x0010(s0)             ## 00000010
	sw      t3, 0x0028(s0)             ## 00000028
	sw      t4, 0x002C(s0)             ## 0000002C
lbl_808EA3CC:
	lw      $ra, 0x0034($sp)           
lbl_808EA3D0:
	lw      s0, 0x002C($sp)            
	lw      s1, 0x0030($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000


func_808EA3E0:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x002C($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022BB0              
	lw      a1, 0x002C($sp)            
	beq     v0, $zero, lbl_808EA428    
	or      a0, s0, $zero              ## a0 = 00000000
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lui     a1, %hi(func_808EA504)     ## a1 = 808F0000
	addiu   a1, a1, %lo(func_808EA504) ## a1 = 808EA504
	jal     func_808E9E80              
	swc1    $f0, 0x01FC(s0)            ## 000001FC
	addiu   t6, $zero, 0xFFFF          ## t6 = FFFFFFFF
	beq     $zero, $zero, lbl_808EA4F0 
	sb      t6, 0x0003(s0)             ## 00000003
lbl_808EA428:
	lhu     t7, 0x0088(s0)             ## 00000088
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f2                   ## $f2 = 1.00
	andi    t8, t7, 0x0001             ## t8 = 00000000
	bne     t8, $zero, lbl_808EA468    
	swc1    $f2, 0x01FC(s0)            ## 000001FC
	mtc1    $zero, $f0                 ## $f0 = 0.00
	mfc1    a2, $f2                    
	lui     a3, 0x3CCC                 ## a3 = 3CCC0000
	mfc1    a1, $f0                    
	ori     a3, a3, 0xCCCD             ## a3 = 3CCCCCCD
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	jal     func_80064178              
	swc1    $f0, 0x0010($sp)           
	beq     $zero, $zero, lbl_808EA4F4 
	lw      $ra, 0x0024($sp)           
lbl_808EA468:
	mtc1    $zero, $f0                 ## $f0 = 0.00
	mfc1    a2, $f2                    
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	mfc1    a1, $f0                    
	lui     a3, 0x3FC0                 ## a3 = 3FC00000
	jal     func_80064178              
	swc1    $f0, 0x0010($sp)           
	lhu     t9, 0x0088(s0)             ## 00000088
	lui     $at, 0xC0C0                ## $at = C0C00000
	andi    t0, t9, 0x0002             ## t0 = 00000000
	beql    t0, $zero, lbl_808EA4D8    
	lh      t1, 0x01E8(s0)             ## 000001E8
	lwc1    $f4, 0x0060(s0)            ## 00000060
	mtc1    $at, $f6                   ## $f6 = -6.00
	lw      a0, 0x002C($sp)            
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_808EA4D8               
	lh      t1, 0x01E8(s0)             ## 000001E8
	jal     func_80022FFC              
	or      a1, s0, $zero              ## a1 = 00000000
	lui     $at, 0xBF00                ## $at = BF000000
	mtc1    $at, $f10                  ## $f10 = -0.50
	lwc1    $f8, 0x0060(s0)            ## 00000060
	mul.s   $f16, $f8, $f10            
	beq     $zero, $zero, lbl_808EA4F0 
	swc1    $f16, 0x0060(s0)           ## 00000060
	lh      t1, 0x01E8(s0)             ## 000001E8
lbl_808EA4D8:
	or      a0, s0, $zero              ## a0 = 00000000
	slti    $at, t1, 0x0004            
	bnel    $at, $zero, lbl_808EA4F4   
	lw      $ra, 0x0024($sp)           
	jal     func_80022D20              
	lw      a1, 0x002C($sp)            
lbl_808EA4F0:
	lw      $ra, 0x0024($sp)           
lbl_808EA4F4:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_808EA504:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_80022D40              
	lw      a1, 0x001C($sp)            
	beq     v0, $zero, lbl_808EA54C    
	lw      t6, 0x0018($sp)            
	lui     a1, %hi(func_808EA3E0)     ## a1 = 808F0000
	addiu   a1, a1, %lo(func_808EA3E0) ## a1 = 808EA3E0
	jal     func_808E9E80              
	lw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_808EA3E0              
	lw      a1, 0x001C($sp)            
	beq     $zero, $zero, lbl_808EA55C 
	lw      $ra, 0x0014($sp)           
lbl_808EA54C:
	mtc1    $zero, $f4                 ## $f4 = 0.00
	nop
	swc1    $f4, 0x0060(t6)            ## 00000060
	lw      $ra, 0x0014($sp)           
lbl_808EA55C:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808EA568:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lw      v0, 0x01A4(s0)             ## 000001A4
	addiu   a1, $zero, 0x00FF          ## a1 = 000000FF
	addiu   a2, $zero, 0x0014          ## a2 = 00000014
	lh      v1, 0x002E(v0)             ## 0000002E
	bnel    v1, $zero, lbl_808EA5B8    
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	lw      t6, 0x0004(s0)             ## 00000004
	lwc1    $f12, 0x0090(s0)           ## 00000090
	addiu   a3, $zero, 0x0096          ## a3 = 00000096
	ori     t7, t6, 0x0020             ## t7 = 00000020
	jal     func_800915CC              
	sw      t7, 0x0004(s0)             ## 00000004
	lw      v0, 0x01A4(s0)             ## 000001A4
	lh      v1, 0x002E(v0)             ## 0000002E
	addiu   t8, v1, 0x0008             ## t8 = 00000008
lbl_808EA5B8:
	sh      t8, 0x002E(v0)             ## 0000002E
	lw      v0, 0x01A4(s0)             ## 000001A4
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	addiu   a2, s0, 0x0188             ## a2 = 00000188
	lh      t9, 0x002E(v0)             ## 0000002E
	sh      t9, 0x0036(v0)             ## 00000036
	lh      t0, 0x001C(s0)             ## 0000001C
	lw      a0, 0x0024($sp)            
	bne     t0, $at, lbl_808EA5EC      
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	jal     func_8004BD50              ## CollisionCheck_setAT
	addu    a1, a0, $at                
lbl_808EA5EC:
	lw      v0, 0x0024($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	addu    v0, v0, $at                
	lh      v1, 0x0AB6(v0)             ## 00000AB6
	beq     v1, $zero, lbl_808EA608    
	addiu   t2, v1, 0xFFE7             ## t2 = FFFFFFE7
	sh      t2, 0x0AB6(v0)             ## 00000AB6
lbl_808EA608:
	lh      v1, 0x0AB8(v0)             ## 00000AB8
	beq     v1, $zero, lbl_808EA618    
	addiu   t3, v1, 0xFFE7             ## t3 = FFFFFFE7
	sh      t3, 0x0AB8(v0)             ## 00000AB8
lbl_808EA618:
	lh      v1, 0x0ABA(v0)             ## 00000ABA
	beq     v1, $zero, lbl_808EA628    
	addiu   t4, v1, 0xFFE7             ## t4 = FFFFFFE7
	sh      t4, 0x0ABA(v0)             ## 00000ABA
lbl_808EA628:
	lh      v1, 0x0AB0(v0)             ## 00000AB0
	beq     v1, $zero, lbl_808EA638    
	addiu   t5, v1, 0xFFE7             ## t5 = FFFFFFE7
	sh      t5, 0x0AB0(v0)             ## 00000AB0
lbl_808EA638:
	lh      v1, 0x0AB2(v0)             ## 00000AB2
	beq     v1, $zero, lbl_808EA648    
	addiu   t6, v1, 0xFFE7             ## t6 = FFFFFFE7
	sh      t6, 0x0AB2(v0)             ## 00000AB2
lbl_808EA648:
	lh      v1, 0x0AB4(v0)             ## 00000AB4
	beq     v1, $zero, lbl_808EA658    
	addiu   t7, v1, 0xFFE7             ## t7 = FFFFFFE7
	sh      t7, 0x0AB4(v0)             ## 00000AB4
lbl_808EA658:
	lh      t8, 0x01E8(s0)             ## 000001E8
	lw      t9, 0x0024($sp)            
	bnel    t8, $zero, lbl_808EA6AC    
	lw      $ra, 0x001C($sp)           
	lw      v0, 0x1C44(t9)             ## 00001C44
	lw      v1, 0x066C(v0)             ## 0000066C
	andi    t0, v1, 0x0800             ## t0 = 00000000
	beq     t0, $zero, lbl_808EA6A0    
	nop
	lw      t1, 0x039C(v0)             ## 0000039C
	addiu   $at, $zero, 0xF7FF         ## $at = FFFFF7FF
	and     t2, v1, $at                
	bne     s0, t1, lbl_808EA6A0       
	nop
	sw      $zero, 0x011C(v0)          ## 0000011C
	sw      $zero, 0x039C(v0)          ## 0000039C
	sw      $zero, 0x0428(v0)          ## 00000428
	sw      t2, 0x066C(v0)             ## 0000066C
lbl_808EA6A0:
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x001C($sp)           
lbl_808EA6AC:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_808EA6BC:
	addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      a1, 0x009C($sp)            
	lui     t7, %hi(var_808EB1A0)      ## t7 = 808F0000
	addiu   t7, t7, %lo(var_808EB1A0)  ## t7 = 808EB1A0
	lw      t9, 0x0000(t7)             ## 808EB1A0
	addiu   t6, $sp, 0x008C            ## t6 = FFFFFFF4
	lw      t8, 0x0004(t7)             ## 808EB1A4
	sw      t9, 0x0000(t6)             ## FFFFFFF4
	lw      t9, 0x0008(t7)             ## 808EB1A8
	lui     t2, %hi(var_808EB1AC)      ## t2 = 808F0000
	addiu   t2, t2, %lo(var_808EB1AC)  ## t2 = 808EB1AC
	sw      t8, 0x0004(t6)             ## FFFFFFF8
	sw      t9, 0x0008(t6)             ## FFFFFFFC
	lw      t4, 0x0000(t2)             ## 808EB1AC
	addiu   t1, $sp, 0x0080            ## t1 = FFFFFFE8
	lw      t3, 0x0004(t2)             ## 808EB1B0
	sw      t4, 0x0000(t1)             ## FFFFFFE8
	lw      t4, 0x0008(t2)             ## 808EB1B4
	lui     t6, %hi(var_808EB1B8)      ## t6 = 808F0000
	addiu   t6, t6, %lo(var_808EB1B8)  ## t6 = 808EB1B8
	sw      t3, 0x0004(t1)             ## FFFFFFEC
	sw      t4, 0x0008(t1)             ## FFFFFFF0
	lw      t8, 0x0000(t6)             ## 808EB1B8
	addiu   t5, $sp, 0x0074            ## t5 = FFFFFFDC
	lw      t7, 0x0004(t6)             ## 808EB1BC
	sw      t8, 0x0000(t5)             ## FFFFFFDC
	lw      t8, 0x0008(t6)             ## 808EB1C0
	lui     t1, %hi(var_808EB1C4)      ## t1 = 808F0000
	addiu   t1, t1, %lo(var_808EB1C4)  ## t1 = 808EB1C4
	sw      t7, 0x0004(t5)             ## FFFFFFE0
	sw      t8, 0x0008(t5)             ## FFFFFFE4
	lw      t3, 0x0000(t1)             ## 808EB1C4
	addiu   t9, $sp, 0x005C            ## t9 = FFFFFFC4
	lw      t2, 0x0004(t1)             ## 808EB1C8
	sw      t3, 0x0000(t9)             ## FFFFFFC4
	lw      t3, 0x0008(t1)             ## 808EB1CC
	lui     t4, %hi(var_808EB1D0)      ## t4 = 808F0000
	sw      t2, 0x0004(t9)             ## FFFFFFC8
	sw      t3, 0x0008(t9)             ## FFFFFFCC
	lw      t4, %lo(var_808EB1D0)(t4)  
	or      a0, s0, $zero              ## a0 = 00000000
	sw      t4, 0x0058($sp)            
	lw      t5, 0x01F0(s0)             ## 000001F0
	beql    t5, $zero, lbl_808EA790    
	lbu     t7, 0x01F4(s0)             ## 000001F4
	lh      v0, 0x01E8(s0)             ## 000001E8
	beq     v0, $zero, lbl_808EA78C    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x01E8(s0)             ## 000001E8
lbl_808EA78C:
	lbu     t7, 0x01F4(s0)             ## 000001F4
lbl_808EA790:
	bnel    t7, $zero, lbl_808EA808    
	lw      t9, 0x01EC(s0)             ## 000001EC
	jal     func_80022BB0              
	lw      a1, 0x009C($sp)            
	bne     v0, $zero, lbl_808EA804    
	lui     $at, 0x41A0                ## $at = 41A00000
	lwc1    $f4, 0x0090(s0)            ## 00000090
	mtc1    $at, $f6                   ## $f6 = 20.00
	lui     $at, 0x42A0                ## $at = 42A00000
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	c.le.s  $f6, $f4                   
	nop
	bc1tl   lbl_808EA804               
	sb      t8, 0x01F4(s0)             ## 000001F4
	lwc1    $f0, 0x0094(s0)            ## 00000094
	mtc1    $zero, $f8                 ## $f8 = 0.00
	mtc1    $at, $f10                  ## $f10 = 80.00
	c.le.s  $f8, $f0                   
	nop
	bc1fl   lbl_808EA7F0               
	neg.s   $f2, $f0                   
	beq     $zero, $zero, lbl_808EA7F0 
	mov.s   $f2, $f0                   
	neg.s   $f2, $f0                   
lbl_808EA7F0:
	c.le.s  $f10, $f2                  
	nop
	bc1fl   lbl_808EA808               
	lw      t9, 0x01EC(s0)             ## 000001EC
	sb      t8, 0x01F4(s0)             ## 000001F4
lbl_808EA804:
	lw      t9, 0x01EC(s0)             ## 000001EC
lbl_808EA808:
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x009C($sp)            
	jalr    $ra, t9                    
	nop
	lh      t1, 0x001C(s0)             ## 0000001C
	bnel    t1, $zero, lbl_808EA830    
	mtc1    $zero, $f2                 ## $f2 = 0.00
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	mtc1    $zero, $f2                 ## $f2 = 0.00
lbl_808EA830:
	lwc1    $f16, 0x006C(s0)           ## 0000006C
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	lui     t3, 0x8012                 ## t3 = 80120000
	c.eq.s  $f2, $f16                  
	or      a1, s0, $zero              ## a1 = 00000000
	lui     a2, 0x40A0                 ## a2 = 40A00000
	bc1tl   lbl_808EA884               
	lh      t6, 0x001C(s0)             ## 0000001C
	lw      t3, -0x4600(t3)            ## 8011BA00
	addiu   t4, $zero, 0x001F          ## t4 = 0000001F
	lui     a3, 0x4120                 ## a3 = 41200000
	sh      t2, 0x0560(t3)             ## 80120560
	sw      t4, 0x0014($sp)            
	swc1    $f2, 0x0010($sp)           
	jal     func_80021E6C              
	lw      a0, 0x009C($sp)            
	lui     t5, 0x8012                 ## t5 = 80120000
	lw      t5, -0x4600(t5)            ## 8011BA00
	mtc1    $zero, $f2                 ## $f2 = 0.00
	sh      $zero, 0x0560(t5)          ## 80120560
	lh      t6, 0x001C(s0)             ## 0000001C
lbl_808EA884:
	bnel    t6, $zero, lbl_808EAD30    
	lw      t3, 0x0028(s0)             ## 00000028
	lwc1    $f0, 0x0060(s0)            ## 00000060
	c.lt.s  $f2, $f0                   
	nop
	bc1fl   lbl_808EA8BC               
	lwc1    $f4, 0x0068(s0)            ## 00000068
	lhu     t7, 0x0088(s0)             ## 00000088
	andi    t8, t7, 0x0010             ## t8 = 00000000
	beql    t8, $zero, lbl_808EA8BC    
	lwc1    $f4, 0x0068(s0)            ## 00000068
	neg.s   $f18, $f0                  
	swc1    $f18, 0x0060(s0)           ## 00000060
	lwc1    $f4, 0x0068(s0)            ## 00000068
lbl_808EA8BC:
	c.eq.s  $f2, $f4                   
	nop
	bc1tl   lbl_808EA990               
	lbu     t2, 0x014D(s0)             ## 0000014D
	lhu     t9, 0x0088(s0)             ## 00000088
	andi    t1, t9, 0x0008             ## t1 = 00000000
	beql    t1, $zero, lbl_808EA990    
	lbu     t2, 0x014D(s0)             ## 0000014D
	lh      a0, 0x007E(s0)             ## 0000007E
	lh      t2, 0x0032(s0)             ## 00000032
	subu    a1, a0, t2                 
	sll     v0, a1, 16                 
	sra     v0, v0, 16                 
	bltz    v0, lbl_808EA900           
	subu    v1, $zero, v0              
	beq     $zero, $zero, lbl_808EA900 
	or      v1, v0, $zero              ## v1 = 00000000
lbl_808EA900:
	slti    $at, v1, 0x4001            
	bne     $at, $zero, lbl_808EA918   
	addu    t3, a1, a0                 
	addiu   $at, $zero, 0x8000         ## $at = FFFF8000
	addu    t4, t3, $at                
	sh      t4, 0x0032(s0)             ## 00000032
lbl_808EA918:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x282F          ## a1 = 0000282F
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     t6, 0x8012                 ## t6 = 80120000
	lw      t6, -0x4600(t6)            ## 8011BA00
	addiu   t5, $zero, 0x0001          ## t5 = 00000001
	mtc1    $zero, $f6                 ## $f6 = 0.00
	sh      t5, 0x0560(t6)             ## 80120560
	addiu   t7, $zero, 0x001F          ## t7 = 0000001F
	sw      t7, 0x0014($sp)            
	lw      a0, 0x009C($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	lui     a2, 0x40A0                 ## a2 = 40A00000
	lui     a3, 0x4120                 ## a3 = 41200000
	jal     func_80021E6C              
	swc1    $f6, 0x0010($sp)           
	lui     t8, 0x8012                 ## t8 = 80120000
	lw      t8, -0x4600(t8)            ## 8011BA00
	lui     $at, %hi(var_808EB1EC)     ## $at = 808F0000
	sh      $zero, 0x0560(t8)          ## 80120560
	lwc1    $f8, 0x0068(s0)            ## 00000068
	lwc1    $f10, %lo(var_808EB1EC)($at) 
	lhu     t9, 0x0088(s0)             ## 00000088
	mul.s   $f16, $f8, $f10            
	andi    t1, t9, 0xFFF7             ## t1 = 00000000
	sh      t1, 0x0088(s0)             ## 00000088
	swc1    $f16, 0x0068(s0)           ## 00000068
	lbu     t2, 0x014D(s0)             ## 0000014D
lbl_808EA990:
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	andi    t3, t2, 0x0002             ## t3 = 00000000
	bnel    t3, $zero, lbl_808EA9C8    
	sw      t8, 0x01F0(s0)             ## 000001F0
	lbu     t4, 0x014E(s0)             ## 0000014E
	andi    t5, t4, 0x0002             ## t5 = 00000000
	beql    t5, $zero, lbl_808EA9D4    
	lh      t9, 0x01E8(s0)             ## 000001E8
	lw      t6, 0x0148(s0)             ## 00000148
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	lbu     t7, 0x0002(t6)             ## 00000002
	bnel    t7, $at, lbl_808EA9D4      
	lh      t9, 0x01E8(s0)             ## 000001E8
	sw      t8, 0x01F0(s0)             ## 000001F0
lbl_808EA9C8:
	beq     $zero, $zero, lbl_808EA9FC 
	sh      $zero, 0x01E8(s0)          ## 000001E8
	lh      t9, 0x01E8(s0)             ## 000001E8
lbl_808EA9D4:
	lw      a0, 0x009C($sp)            
	addiu   a1, s0, 0x0024             ## a1 = 00000024
	slti    $at, t9, 0x0065            
	bne     $at, $zero, lbl_808EA9FC   
	lui     a2, 0x41F0                 ## a2 = 41F00000
	jal     func_80079A20              
	lui     a3, 0x4248                 ## a3 = 42480000
	beq     v0, $zero, lbl_808EA9FC    
	addiu   t1, $zero, 0x0064          ## t1 = 00000064
	sh      t1, 0x01E8(s0)             ## 000001E8
lbl_808EA9FC:
	lw      t2, 0x01F0(s0)             ## 000001F0
	mtc1    $zero, $f2                 ## $f2 = 0.00
	lui     $at, %hi(var_808EB1F0)     ## $at = 808F0000
	beql    t2, $zero, lbl_808EAD30    
	lw      t3, 0x0028(s0)             ## 00000028
	lwc1    $f18, %lo(var_808EB1F0)($at) 
	addiu   t3, s0, 0x0024             ## t3 = 00000024
	sw      t3, 0x003C($sp)            
	swc1    $f18, 0x0060($sp)          
	lw      t7, 0x0000(t3)             ## 00000024
	addiu   t4, $sp, 0x0068            ## t4 = FFFFFFD0
	lui     $at, 0x41C8                ## $at = 41C80000
	sw      t7, 0x0000(t4)             ## FFFFFFD0
	lw      t6, 0x0004(t3)             ## 00000028
	mtc1    $at, $f6                   ## $f6 = 25.00
	lui     t9, 0x0001                 ## t9 = 00010000
	sw      t6, 0x0004(t4)             ## FFFFFFD4
	lw      t7, 0x0008(t3)             ## 0000002C
	sw      t7, 0x0008(t4)             ## FFFFFFD8
	lwc1    $f4, 0x006C($sp)           
	lw      t8, 0x009C($sp)            
	add.s   $f8, $f4, $f6              
	addu    t9, t9, t8                 
	swc1    $f8, 0x006C($sp)           
	lh      v0, 0x01E8(s0)             ## 000001E8
	slti    $at, v0, 0x007F            
	beql    $at, $zero, lbl_808EAAF0   
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	lw      t9, 0x1DE4(t9)             ## 00011DE4
	or      a0, t8, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	andi    t1, t9, 0x0001             ## t1 = 00000000
	bne     t1, $zero, lbl_808EAA94    
	addiu   a2, $sp, 0x0068            ## a2 = FFFFFFD0
	addiu   t2, $sp, 0x0074            ## t2 = FFFFFFDC
	sw      t2, 0x0010($sp)            
	jal     func_8001CC7C              
	addiu   a3, $sp, 0x008C            ## a3 = FFFFFFF4
lbl_808EAA94:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x100D          ## a1 = 0000100D
	lui     $at, 0x4040                ## $at = 40400000
	mtc1    $at, $f16                  ## $f16 = 3.00
	lwc1    $f10, 0x006C($sp)          
	addiu   t3, $sp, 0x0058            ## t3 = FFFFFFC0
	addiu   t4, $zero, 0x0032          ## t4 = 00000032
	add.s   $f18, $f10, $f16           
	addiu   t5, $zero, 0x0005          ## t5 = 00000005
	sw      t5, 0x001C($sp)            
	sw      t4, 0x0018($sp)            
	swc1    $f18, 0x006C($sp)          
	sw      t3, 0x0010($sp)            
	sw      t3, 0x0014($sp)            
	lw      a0, 0x009C($sp)            
	addiu   a1, $sp, 0x0068            ## a1 = FFFFFFD0
	addiu   a2, $sp, 0x008C            ## a2 = FFFFFFF4
	jal     func_8001BD94              
	addiu   a3, $sp, 0x005C            ## a3 = FFFFFFC4
	mtc1    $zero, $f2                 ## $f2 = 0.00
	lh      v0, 0x01E8(s0)             ## 000001E8
	addiu   $at, $zero, 0x0003         ## $at = 00000003
lbl_808EAAF0:
	beq     v0, $at, lbl_808EAB10      
	addiu   $at, $zero, 0x001E         ## $at = 0000001E
	beq     v0, $at, lbl_808EAB10      
	addiu   $at, $zero, 0x0032         ## $at = 00000032
	beq     v0, $at, lbl_808EAB10      
	addiu   $at, $zero, 0x0046         ## $at = 00000046
	bnel    v0, $at, lbl_808EAB24      
	slti    $at, v0, 0x0064            
lbl_808EAB10:
	lh      t6, 0x01F6(s0)             ## 000001F6
	lh      v0, 0x01E8(s0)             ## 000001E8
	sra     t7, t6,  1                 
	sh      t7, 0x01F6(s0)             ## 000001F6
	slti    $at, v0, 0x0064            
lbl_808EAB24:
	beql    $at, $zero, lbl_808EAB7C   
	lh      t8, 0x01F6(s0)             ## 000001F6
	lh      v1, 0x01F6(s0)             ## 000001F6
	addiu   t9, v1, 0x0001             ## t9 = 00000001
	and     t1, v0, t9                 
	beql    t1, $zero, lbl_808EAB7C    
	lh      t8, 0x01F6(s0)             ## 000001F6
	mtc1    v1, $f4                    ## $f4 = 0.00
	lui     $at, 0x4316                ## $at = 43160000
	mtc1    $at, $f0                   ## $f0 = 150.00
	cvt.s.w $f6, $f4                   
	addiu   a0, s0, 0x01F8             ## a0 = 000001F8
	mfc1    a1, $f0                    
	lui     a2, 0x3F80                 ## a2 = 3F800000
	swc1    $f2, 0x0010($sp)           
	div.s   $f8, $f0, $f6              
	mfc1    a3, $f8                    
	jal     func_80064178              
	nop
	beq     $zero, $zero, lbl_808EABB0 
	lh      v0, 0x01E8(s0)             ## 000001E8
	lh      t8, 0x01F6(s0)             ## 000001F6
lbl_808EAB7C:
	lui     $at, 0x4316                ## $at = 43160000
	mtc1    $at, $f0                   ## $f0 = 150.00
	mtc1    t8, $f10                   ## $f10 = 0.00
	mfc1    a1, $f2                    
	swc1    $f2, 0x0010($sp)           
	cvt.s.w $f16, $f10                 
	addiu   a0, s0, 0x01F8             ## a0 = 000001F8
	lui     a2, 0x3F80                 ## a2 = 3F800000
	div.s   $f18, $f0, $f16            
	mfc1    a3, $f18                   
	jal     func_80064178              
	nop
	lh      v0, 0x01E8(s0)             ## 000001E8
lbl_808EABB0:
	slti    $at, v0, 0x0003            
	beq     $at, $zero, lbl_808EABDC   
	lui     $at, %hi(var_808EB1F4)     ## $at = 808F0000
	lwc1    $f6, %lo(var_808EB1F4)($at) 
	lwc1    $f4, 0x0050(s0)            ## 00000050
	or      a0, s0, $zero              ## a0 = 00000000
	add.s   $f8, $f4, $f6              
	mfc1    a1, $f8                    
	jal     func_80020F88              
	nop
	lh      v0, 0x01E8(s0)             ## 000001E8
lbl_808EABDC:
	bne     v0, $zero, lbl_808EAD2C    
	lw      t3, 0x003C($sp)            
	lw      t5, 0x0000(t3)             ## 00000000
	lw      a1, 0x009C($sp)            
	addiu   t2, $sp, 0x0068            ## t2 = FFFFFFD0
	sw      t5, 0x0000(t2)             ## FFFFFFD0
	lw      t4, 0x0004(t3)             ## 00000004
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f16                  ## $f16 = 10.00
	sw      t4, 0x0004(t2)             ## FFFFFFD4
	lw      t5, 0x0008(t3)             ## 00000008
	lui     $at, 0x0001                ## $at = 00010000
	addu    v1, a1, $at                
	sw      t5, 0x0008(t2)             ## FFFFFFD8
	lwc1    $f10, 0x006C($sp)          
	sw      v1, 0x0038($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	add.s   $f18, $f10, $f16           
	jal     func_80022BB0              
	swc1    $f18, 0x006C($sp)          
	beq     v0, $zero, lbl_808EAC48    
	lw      v1, 0x0038($sp)            
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f6                   ## $f6 = 30.00
	lwc1    $f4, 0x006C($sp)           
	add.s   $f8, $f4, $f6              
	swc1    $f8, 0x006C($sp)           
lbl_808EAC48:
	addiu   t6, $zero, 0x0064          ## t6 = 00000064
	addiu   t7, $zero, 0x0013          ## t7 = 00000013
	sw      t7, 0x0014($sp)            
	sw      t6, 0x0010($sp)            
	lw      a0, 0x009C($sp)            
	addiu   a1, $sp, 0x0068            ## a1 = FFFFFFD0
	addiu   a2, $sp, 0x008C            ## a2 = FFFFFFF4
	addiu   a3, $sp, 0x0080            ## a3 = FFFFFFE8
	jal     func_8001C97C              
	sw      v1, 0x0038($sp)            
	lwc1    $f10, 0x0080(s0)           ## 00000080
	lui     $at, 0xC6FA                ## $at = C6FA0000
	mtc1    $at, $f16                  ## $f16 = -32000.00
	swc1    $f10, 0x006C($sp)          
	lwc1    $f18, 0x0080(s0)           ## 00000080
	lw      v1, 0x0038($sp)            
	lw      a0, 0x009C($sp)            
	c.lt.s  $f16, $f18                 
	addiu   a1, $sp, 0x0068            ## a1 = FFFFFFD0
	addiu   a2, $sp, 0x008C            ## a2 = FFFFFFF4
	addiu   a3, $sp, 0x0074            ## a3 = FFFFFFDC
	bc1fl   lbl_808EACB4               
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8001CB1C              
	sw      v1, 0x0038($sp)            
	lw      v1, 0x0038($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
lbl_808EACB4:
	addiu   a1, $zero, 0x180E          ## a1 = 0000180E
	jal     func_80022FD0              
	sw      v1, 0x0038($sp)            
	lw      v1, 0x0038($sp)            
	addiu   t0, $zero, 0x00FA          ## t0 = 000000FA
	addiu   a1, $zero, 0x0002          ## a1 = 00000002
	sh      t0, 0x0ABA(v1)             ## 00000ABA
	lh      v0, 0x0ABA(v1)             ## 00000ABA
	sh      t0, 0x0AB4(v1)             ## 00000AB4
	addiu   a2, $zero, 0x000B          ## a2 = 0000000B
	sh      v0, 0x0AB8(v1)             ## 00000AB8
	sh      v0, 0x0AB6(v1)             ## 00000AB6
	lh      v0, 0x0AB4(v1)             ## 00000AB4
	addiu   a3, $zero, 0x0008          ## a3 = 00000008
	sh      v0, 0x0AB2(v1)             ## 00000AB2
	sh      v0, 0x0AB0(v1)             ## 00000AB0
	lw      a0, 0x009C($sp)            
	jal     func_800497A4              
	addiu   a0, a0, 0x01E0             ## a0 = 000001E0
	lw      t8, 0x0004(s0)             ## 00000004
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	addiu   t1, $zero, 0x000A          ## t1 = 0000000A
	lui     a1, %hi(func_808EA568)     ## a1 = 808F0000
	ori     t2, t8, 0x0020             ## t2 = 00000020
	sh      t9, 0x001C(s0)             ## 0000001C
	sh      t1, 0x01E8(s0)             ## 000001E8
	sw      t2, 0x0004(s0)             ## 00000004
	addiu   a1, a1, %lo(func_808EA568) ## a1 = 808EA568
	jal     func_808E9E80              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_808EAD2C:
	lw      t3, 0x0028(s0)             ## 00000028
lbl_808EAD30:
	lui     $at, 0x4120                ## $at = 41200000
	lw      t4, 0x0024(s0)             ## 00000024
	sw      t3, 0x003C(s0)             ## 0000003C
	lwc1    $f4, 0x003C(s0)            ## 0000003C
	mtc1    $at, $f6                   ## $f6 = 10.00
	lh      t5, 0x001C(s0)             ## 0000001C
	sw      t4, 0x0038(s0)             ## 00000038
	add.s   $f8, $f4, $f6              
	lw      t4, 0x002C(s0)             ## 0000002C
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	swc1    $f8, 0x003C(s0)            ## 0000003C
	bgtz    t5, lbl_808EADC4           
	sw      t4, 0x0040(s0)             ## 00000040
	jal     func_80050B00              
	sw      a1, 0x003C($sp)            
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f16                  ## $f16 = 1.00
	lwc1    $f10, 0x01FC(s0)           ## 000001FC
	c.le.s  $f16, $f10                 
	nop
	bc1fl   lbl_808EADB0               
	lw      a0, 0x009C($sp)            
	lbu     t6, 0x01F4(s0)             ## 000001F4
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	beq     t6, $zero, lbl_808EADAC    
	lw      a0, 0x009C($sp)            
	addu    a1, a0, $at                
	jal     func_8004C130              ## CollisionCheck_setOT
	lw      a2, 0x003C($sp)            
lbl_808EADAC:
	lw      a0, 0x009C($sp)            
lbl_808EADB0:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	lw      a2, 0x003C($sp)            
	jal     func_8004BF40              ## CollisionCheck_setAC
	addu    a1, a0, $at                
lbl_808EADC4:
	lui     $at, %hi(var_808EB1F8)     ## $at = 808F0000
	lwc1    $f4, %lo(var_808EB1F8)($at) 
	lwc1    $f18, 0x0050(s0)           ## 00000050
	c.le.s  $f4, $f18                  
	nop
	bc1fl   lbl_808EAE58               
	lw      $ra, 0x002C($sp)           
	lh      t1, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beq     t1, $at, lbl_808EAE54      
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f8                   ## $f8 = 20.00
	lwc1    $f6, 0x0084(s0)            ## 00000084
	lw      a0, 0x009C($sp)            
	addiu   a1, s0, 0x00E4             ## a1 = 000000E4
	c.le.s  $f8, $f6                   
	addiu   a2, $zero, 0x180F          ## a2 = 0000180F
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	bc1f    lbl_808EAE34               
	addiu   t2, $zero, 0x000A          ## t2 = 0000000A
	sw      t8, 0x0010($sp)            
	jal     func_8001E510              
	sw      t2, 0x0014($sp)            
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_808EAE58 
	lw      $ra, 0x002C($sp)           
lbl_808EAE34:
	lhu     v0, 0x0088(s0)             ## 00000088
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x2817          ## a1 = 00002817
	andi    t3, v0, 0x0040             ## t3 = 00000000
	beq     t3, $zero, lbl_808EAE54    
	andi    t4, v0, 0xFFBF             ## t4 = 00000000
	jal     func_80022FD0              
	sh      t4, 0x0088(s0)             ## 00000088
lbl_808EAE54:
	lw      $ra, 0x002C($sp)           
lbl_808EAE58:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0098           ## $sp = 00000000
	jr      $ra                        
	nop


func_808EAE68:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	lw      a2, 0x02C4(a3)             ## 000002C4
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1DA0           ## $at = 00011DA0
	addiu   a2, a2, 0xFFD0             ## a2 = FFFFFFD0
	sw      a2, 0x02C4(a3)             ## 000002C4
	sw      a3, 0x0030($sp)            
	sw      a2, 0x001C($sp)            
	jal     func_800ABE54              
	addu    a0, a1, $at                
	lw      a2, 0x001C($sp)            
	lw      a3, 0x0030($sp)            
	addiu   t6, a2, 0x0008             ## t6 = 00000008
	lui     t7, 0xDA38                 ## t7 = DA380000
	ori     t7, t7, 0x0003             ## t7 = DA380003
	sw      t6, 0x0028($sp)            
	sw      t7, 0x0000(a2)             ## 00000000
	sw      a2, 0x0024($sp)            
	jal     func_800AB900              
	or      a0, a3, $zero              ## a0 = 00000000
	lw      a1, 0x0024($sp)            
	lw      a2, 0x001C($sp)            
	lui     t8, 0xDF00                 ## t8 = DF000000
	sw      v0, 0x0004(a1)             ## 00000004
	lw      v1, 0x0028($sp)            
	sw      t8, 0x0000(v1)             ## 00000000
	sw      $zero, 0x0004(v1)          ## 00000004
	or      v0, a2, $zero              ## v0 = 00000000
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_808EAEF0:
	addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
	sw      s2, 0x0020($sp)            
	sw      s1, 0x001C($sp)            
	or      s1, a1, $zero              ## s1 = 00000000
	or      s2, a0, $zero              ## s2 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      s0, 0x0018($sp)            
	lh      t6, 0x001C(s2)             ## 0000001C
	lw      a2, 0x0000(s1)             ## 00000000
	or      a0, $zero, $zero           ## a0 = 00000000
	bgtz    t6, lbl_808EB0F8           
	or      s0, a2, $zero              ## s0 = 00000000
	jal     func_8007E298              
	or      a0, a2, $zero              ## a0 = 00000000
	lh      t7, 0x001C(s2)             ## 0000001C
	beql    t7, $zero, lbl_808EAFCC    
	lw      v1, 0x02C0(s0)             ## 000002C0
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t9, 0xDA38                 ## t9 = DA380000
	ori     t9, t9, 0x0003             ## t9 = DA380003
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s0)             ## 000002C0
	sw      t9, 0x0000(v1)             ## 00000000
	lw      a0, 0x0000(s1)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x004C($sp)            
	lw      t0, 0x004C($sp)            
	mtc1    $zero, $f12                ## $f12 = 0.00
	lui     t1, 0xDE00                 ## t1 = DE000000
	sw      v0, 0x0004(t0)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t3, 0x0600                 ## t3 = 06000000
	addiu   t3, t3, 0x0340             ## t3 = 06000340
	addiu   t2, v1, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(s0)             ## 000002C0
	sw      t3, 0x0004(v1)             ## 00000004
	sw      t1, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t5, 0x0600                 ## t5 = 06000000
	addiu   t5, t5, 0x0530             ## t5 = 06000530
	addiu   t4, v1, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(s0)             ## 000002C0
	sw      t5, 0x0004(v1)             ## 00000004
	sw      t1, 0x0000(v1)             ## 00000000
	lui     $at, 0x447A                ## $at = 447A0000
	mtc1    $at, $f14                  ## $f14 = 1000.00
	mfc1    a2, $f12                   
	jal     func_800AA7F4              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lwc1    $f12, 0x01FC(s2)           ## 000001FC
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mfc1    a2, $f12                   
	jal     func_800AA8FC              
	mov.s   $f14, $f12                 
	lw      v1, 0x02C0(s0)             ## 000002C0
lbl_808EAFCC:
	lui     t8, 0xC8FF                 ## t8 = C8FF0000
	ori     t8, t8, 0xC8FF             ## t8 = C8FFC8FF
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s0)             ## 000002C0
	lui     t7, 0xFA00                 ## t7 = FA000000
	sw      t7, 0x0000(v1)             ## 00000000
	sw      t8, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t2, 0xE700                 ## t2 = E7000000
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02C0(s0)             ## 000002C0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t2, 0x0000(v1)             ## 00000000
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t4, 0xFB00                 ## t4 = FB000000
	lui     $at, 0x0014                ## $at = 00140000
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s0)             ## 000002C0
	sw      t4, 0x0000(v1)             ## 00000000
	lwc1    $f4, 0x01F8(s2)            ## 000001F8
	trunc.w.s $f6, $f4                   
	mfc1    t9, $f6                    
	nop
	sll     t2, t9, 24                 
	or      t3, t2, $at                ## t3 = E7140000
	ori     t4, t3, 0x0A00             ## t4 = E7140A00
	sw      t4, 0x0004(v1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t6, 0xDA38                 ## t6 = DA380000
	ori     t6, t6, 0x0003             ## t6 = DA380003
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s0)             ## 000002C0
	sw      t6, 0x0000(v1)             ## 00000000
	lw      a0, 0x0000(s1)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x0034($sp)            
	lw      a2, 0x0034($sp)            
	lui     t8, 0xDB06                 ## t8 = DB060000
	sw      v0, 0x0004(a2)             ## 00000004
	lw      s2, 0x02C0(s0)             ## 000002C0
	ori     t8, t8, 0x0020             ## t8 = DB060020
	or      a1, s1, $zero              ## a1 = 00000000
	addiu   t7, s2, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s0)             ## 000002C0
	sw      t8, 0x0000(s2)             ## 00000000
	jal     func_808EAE68              
	lw      a0, 0x0000(s1)             ## 00000000
	sw      v0, 0x0028($sp)            
	lw      a0, 0x0000(s1)             ## 00000000
	jal     func_808EAE68              
	or      a1, s1, $zero              ## a1 = 00000000
	lw      t2, 0x0028($sp)            
	lui     t6, 0x8012                 ## t6 = 80120000
	lui     $at, 0x00FF                ## $at = 00FF0000
	sll     t3, t2,  4                 
	srl     t4, t3, 28                 
	sll     t5, t4,  2                 
	addu    t6, t6, t5                 
	lw      t6, 0x0C38(t6)             ## 80120C38
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	and     t9, v0, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t7, t9, t6                 
	addu    t8, t7, $at                
	sw      t8, 0x0004(s2)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t4, 0x0600                 ## t4 = 06000000
	addiu   t4, t4, 0x0408             ## t4 = 06000408
	addiu   t2, v1, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(s0)             ## 000002C0
	lui     t3, 0xDE00                 ## t3 = DE000000
	sw      t3, 0x0000(v1)             ## 00000000
	sw      t4, 0x0004(v1)             ## 00000004
	beq     $zero, $zero, lbl_808EB104 
	lw      $ra, 0x0024($sp)           
lbl_808EB0F8:
	jal     func_80050CE4              
	addiu   a1, s2, 0x0188             ## a1 = 00000188
	lw      $ra, 0x0024($sp)           
lbl_808EB104:
	lw      s0, 0x0018($sp)            
	lw      s1, 0x001C($sp)            
	lw      s2, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0060           ## $sp = 00000000
	nop
	nop

.section .data

var_808EB120: .word 0x004C0600, 0x00000011, 0x00310000, 0x00000200
.word func_808E9E8C
.word func_808EA068
.word func_808EA6BC
.word func_808EAEF0
var_808EB140: .word \
0x0A002939, 0x20010000, 0x02000000, 0x00000000, \
0x00000000, 0x0003F828, 0x00000000, 0x00010100, \
0x00090012, 0x000A0000, 0x00000000
var_808EB16C: .word \
0x00000000, 0x00000008, 0x00080000, 0x00000000, \
0x00000000, 0x19000000, 0x00000000, 0x00000000, \
0x00000064
var_808EB190: .word 0x0A390000, 0x00000000, 0x00000001
.word var_808EB16C
var_808EB1A0: .word 0x00000000, 0x00000000, 0x00000000
var_808EB1AC: .word 0x00000000, 0x3DCCCCCD, 0x00000000
var_808EB1B8: .word 0x00000000, 0x00000000, 0x00000000
var_808EB1C4: .word 0x00000000, 0x3F19999A, 0x00000000
var_808EB1D0: .word 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_808EB1E0: .word 0x461C4000
var_808EB1E4: .word 0x46F23000
var_808EB1E8: .word 0x3D4CCCCD
var_808EB1EC: .word 0x3F333333
var_808EB1F0: .word 0x3E4CCCCD
var_808EB1F4: .word 0x3B03126F
var_808EB1F8: .word 0x3C23D70A, 0x00000000

