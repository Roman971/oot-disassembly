#include <mips.h>
.set noreorder
.set noat

.section .text
func_8090FB40:
	sw      a1, 0x0204(a0)             ## 00000204
	jr      $ra                        
	nop


func_8090FB4C:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	sw      a1, 0x0020($sp)            
	jal     func_8004B858              
	lw      a0, 0x002C($sp)            
	lui     a3, %hi(var_80910700)      ## a3 = 80910000
	lw      a1, 0x0020($sp)            
	addiu   a3, a3, %lo(var_80910700)  ## a3 = 80910700
	lw      a0, 0x002C($sp)            
	jal     func_8004B960              
	or      a2, s0, $zero              ## a2 = 00000000
	lui     a1, %hi(func_8090FC08)     ## a1 = 80910000
	addiu   a1, a1, %lo(func_8090FC08) ## a1 = 8090FC08
	jal     func_8090FB40              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t7, 0x0024(s0)             ## 00000024
	lw      t6, 0x0028(s0)             ## 00000028
	sw      t7, 0x01D8(s0)             ## 000001D8
	lw      t7, 0x002C(s0)             ## 0000002C
	sw      t6, 0x01DC(s0)             ## 000001DC
	sw      t7, 0x01E0(s0)             ## 000001E0
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000


func_8090FBC0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	lw      v0, 0x01F0(a2)             ## 000001F0
	or      a0, a3, $zero              ## a0 = 00000000
	beq     v0, $zero, lbl_8090FBF0    
	nop
	lw      t6, 0x0004(v0)             ## 00000004
	addiu   $at, $zero, 0xDFFF         ## $at = FFFFDFFF
	and     t7, t6, $at                
	sw      t7, 0x0004(v0)             ## 00000004
lbl_8090FBF0:
	jal     func_8004B8A8              
	addiu   a1, a2, 0x013C             ## a1 = 0000013C
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8090FC08:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x0024($sp)            
	lw      t6, 0x0118(a0)             ## 00000118
	lui     a1, %hi(func_8090FDD8)     ## a1 = 80910000
	lw      t7, 0x0024($sp)            
	bne     t6, $zero, lbl_8090FC78    
	addiu   a1, a1, %lo(func_8090FDD8) ## a1 = 8090FDD8
	lw      v0, 0x1C44(t7)             ## 00001C44
	addiu   $at, $zero, 0x0010         ## $at = 00000010
	lb      t8, 0x0141(v0)             ## 00000141
	addiu   v0, $zero, 0x001A          ## v0 = 0000001A
	bne     t8, $at, lbl_8090FC48      
	nop
	beq     $zero, $zero, lbl_8090FC48 
	addiu   v0, $zero, 0x000D          ## v0 = 0000000D
lbl_8090FC48:
	sw      v0, 0x0018($sp)            
	jal     func_8090FB40              
	sw      a0, 0x0020($sp)            
	lw      a0, 0x0020($sp)            
	jal     func_800212E4              
	lui     a1, 0x41A0                 ## a1 = 41A00000
	lw      t9, 0x0024($sp)            
	lw      a0, 0x0020($sp)            
	lw      v0, 0x0018($sp)            
	lw      t0, 0x1C44(t9)             ## 00001C44
	sh      v0, 0x0200(a0)             ## 00000200
	sw      t0, 0x0118(a0)             ## 00000118
lbl_8090FC78:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8090FC88:
	lw      v0, 0x0118(a0)             ## 00000118
	sw      v0, 0x011C(a0)             ## 0000011C
	sw      a0, 0x0118(v0)             ## 00000118
	jr      $ra                        
	nop


func_8090FC9C:
	sw      a0, 0x011C(a1)             ## 0000011C
	sw      a0, 0x039C(a1)             ## 0000039C
	lw      t6, 0x011C(a0)             ## 0000011C
	or      v0, $zero, $zero           ## v0 = 00000000
	beq     t6, $zero, lbl_8090FCC4    
	nop
	sw      $zero, 0x0118(a1)          ## 00000118
	sw      $zero, 0x011C(a0)          ## 0000011C
	jr      $ra                        
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_8090FCC4:
	jr      $ra                        
	nop


func_8090FCCC:
	lw      v0, 0x01F0(a0)             ## 000001F0
	beq     v0, $zero, lbl_8090FCEC    
	nop
	lw      t6, 0x0004(v0)             ## 00000004
	addiu   $at, $zero, 0xDFFF         ## $at = FFFFDFFF
	and     t7, t6, $at                
	sw      t7, 0x0004(v0)             ## 00000004
	sw      $zero, 0x01F0(a0)          ## 000001F0
lbl_8090FCEC:
	jr      $ra                        
	nop


func_8090FCF4:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0020($sp)            
	lw      t6, 0x0020($sp)            
	lw      a0, 0x0118(t6)             ## 00000118
	jal     func_80079BD4              
	sw      a0, 0x001C($sp)            
	beq     v0, $zero, lbl_8090FD7C    
	lw      a2, 0x001C($sp)            
	lb      t7, 0x0141(a2)             ## 00000141
	lb      t8, 0x0144(a2)             ## 00000144
	lw      a0, 0x0020($sp)            
	bnel    t7, t8, lbl_8090FD58       
	sh      $zero, 0x0200(a0)          ## 00000200
	lw      t9, 0x0004(a2)             ## 00000004
	andi    t0, t9, 0x0100             ## t0 = 00000000
	bnel    t0, $zero, lbl_8090FD58    
	sh      $zero, 0x0200(a0)          ## 00000200
	lw      t1, 0x066C(a2)             ## 0000066C
	lui     $at, 0x0400                ## $at = 04000000
	ori     $at, $at, 0x0080           ## $at = 04000080
	and     t2, t1, $at                
	beql    t2, $zero, lbl_8090FD80    
	or      v0, $zero, $zero           ## v0 = 00000000
	sh      $zero, 0x0200(a0)          ## 00000200
lbl_8090FD58:
	jal     func_8090FCCC              
	sw      a2, 0x001C($sp)            
	lw      a2, 0x001C($sp)            
	lw      a0, 0x0020($sp)            
	addiu   a1, a2, 0x03B8             ## a1 = 000003B8
	jal     func_80063CAC              ## Vec3f_Copy
	addiu   a0, a0, 0x0024             ## a0 = 00000024
	beq     $zero, $zero, lbl_8090FD80 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_8090FD7C:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_8090FD80:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_8090FD90:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	or      a3, a1, $zero              ## a3 = 00000000
	lw      t6, 0x0004(a3)             ## 00000004
	addiu   a0, a3, 0x0024             ## a0 = 00000024
	ori     t7, t6, 0x2000             ## t7 = 00002000
	sw      t7, 0x0004(a3)             ## 00000004
	lw      t8, 0x0018($sp)            
	sw      a3, 0x01F0(t8)             ## 000001F0
	lw      t9, 0x0018($sp)            
	addiu   a1, t9, 0x0024             ## a1 = 00000024
	jal     func_80063D48              ## Vec3f_Sub
	addiu   a2, t9, 0x01F4             ## a2 = 000001F4
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8090FDD8:
	addiu   $sp, $sp, 0xFF38           ## $sp = FFFFFF38
	sw      s0, 0x0030($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      a1, 0x00CC($sp)            
	lw      t7, 0x0118(s0)             ## 00000118
	lw      t6, 0x00CC($sp)            
	beq     t7, $zero, lbl_8090FE10    
	lw      a2, 0x1C44(t6)             ## 00001C44
	or      a0, a2, $zero              ## a0 = 00000000
	jal     func_80079BD4              
	sw      a2, 0x00C4($sp)            
	bne     v0, $zero, lbl_8090FE28    
	lw      a0, 0x00C4($sp)            
lbl_8090FE10:
	jal     func_8090FCCC              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80910434 
	lw      $ra, 0x0034($sp)           
lbl_8090FE28:
	jal     func_800230A0              
	addiu   a1, $zero, 0x100B          ## a1 = 0000100B
	jal     func_8090FCF4              
	or      a0, s0, $zero              ## a0 = 00000000
	lh      v1, 0x0200(s0)             ## 00000200
	beq     v1, $zero, lbl_8090FEF8    
	nop
	lbu     t8, 0x014C(s0)             ## 0000014C
	andi    t9, t8, 0x0002             ## t9 = 00000000
	beq     t9, $zero, lbl_8090FEF8    
	nop
	lw      v0, 0x0174(s0)             ## 00000174
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	lbu     t0, 0x0014(v0)             ## 00000014
	beq     t0, $at, lbl_8090FEF8      
	nop
	lw      a1, 0x0140(s0)             ## 00000140
	lw      t1, 0x0130(a1)             ## 00000130
	beq     t1, $zero, lbl_8090FEC4    
	nop
	lw      t2, 0x0004(a1)             ## 00000004
	andi    t3, t2, 0x0600             ## t3 = 00000000
	beq     t3, $zero, lbl_8090FEC4    
	nop
	lbu     t4, 0x0016(v0)             ## 00000016
	or      a0, s0, $zero              ## a0 = 00000000
	andi    t5, t4, 0x0004             ## t5 = 00000000
	beq     t5, $zero, lbl_8090FEC4    
	nop
	jal     func_8090FD90              
	sw      a1, 0x00C0($sp)            
	lw      a1, 0x00C0($sp)            
	addiu   $at, $zero, 0x0400         ## $at = 00000400
	lw      t6, 0x0004(a1)             ## 00000004
	andi    t7, t6, 0x0400             ## t7 = 00000000
	bne     t7, $at, lbl_8090FEC4      
	nop
	jal     func_8090FC88              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_8090FEC4:
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t8, 0x8010                 ## t8 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	sh      $zero, 0x0200(s0)          ## 00000200
	addiu   t8, t8, 0x43A8             ## t8 = 801043A8
	sw      t8, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x1814          ## a0 = 00001814
	addiu   a1, s0, 0x00E4             ## a1 = 000000E4
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_80910434 
	lw      $ra, 0x0034($sp)           
lbl_8090FEF8:
	bnel    v1, $zero, lbl_8090FF0C    
	addiu   t9, v1, 0xFFFF             ## t9 = FFFFFFFF
	beq     $zero, $zero, lbl_8090FF14 
	or      v0, $zero, $zero           ## v0 = 00000000
	addiu   t9, v1, 0xFFFF             ## t9 = FFFFFFFF
lbl_8090FF0C:
	sh      t9, 0x0200(s0)             ## 00000200
	lh      v0, 0x0200(s0)             ## 00000200
lbl_8090FF14:
	bne     v0, $zero, lbl_809101FC    
	nop
	lw      a3, 0x01F0(s0)             ## 000001F0
	beql    a3, $zero, lbl_8090FFE8    
	lw      a0, 0x00C4($sp)            
	lw      t0, 0x0130(a3)             ## 00000130
	beql    t0, $zero, lbl_8090FF4C    
	or      a3, $zero, $zero           ## a3 = 00000000
	lw      t1, 0x0004(a3)             ## 00000004
	addiu   $at, $zero, 0x2000         ## $at = 00002000
	andi    t2, t1, 0x2000             ## t2 = 00000000
	beql    t2, $at, lbl_8090FF58      
	lw      t3, 0x011C(s0)             ## 0000011C
	or      a3, $zero, $zero           ## a3 = 00000000
lbl_8090FF4C:
	beq     $zero, $zero, lbl_8090FFE4 
	sw      $zero, 0x01F0(s0)          ## 000001F0
	lw      t3, 0x011C(s0)             ## 0000011C
lbl_8090FF58:
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, a3, $zero              ## a1 = 00000000
	beql    t3, $zero, lbl_8090FFE8    
	lw      a0, 0x00C4($sp)            
	jal     func_800214AC              
	sw      a3, 0x00BC($sp)            
	swc1    $f0, 0x0094($sp)           
	lwc1    $f2, 0x01F4(s0)            ## 000001F4
	lwc1    $f12, 0x01F8(s0)           ## 000001F8
	lwc1    $f14, 0x01FC(s0)           ## 000001FC
	mul.s   $f4, $f2, $f2              
	lw      a3, 0x00BC($sp)            
	addiu   a1, s0, 0x01F4             ## a1 = 000001F4
	mul.s   $f6, $f12, $f12            
	addiu   a2, s0, 0x0024             ## a2 = 00000024
	addiu   a0, a3, 0x0024             ## a0 = 00000024
	mul.s   $f10, $f14, $f14           
	add.s   $f8, $f4, $f6              
	add.s   $f0, $f8, $f10             
	sqrt.s  $f0, $f0                   
	jal     func_80063D48              ## Vec3f_Sub
	swc1    $f0, 0x0090($sp)           
	lwc1    $f6, 0x0094($sp)           
	lwc1    $f8, 0x0090($sp)           
	lui     $at, 0x4248                ## $at = 42480000
	mtc1    $at, $f4                   ## $f4 = 50.00
	sub.s   $f10, $f6, $f8             
	lw      a3, 0x00BC($sp)            
	c.lt.s  $f4, $f10                  
	nop
	bc1fl   lbl_8090FFE8               
	lw      a0, 0x00C4($sp)            
	jal     func_8090FCCC              
	or      a0, s0, $zero              ## a0 = 00000000
	or      a3, $zero, $zero           ## a3 = 00000000
lbl_8090FFE4:
	lw      a0, 0x00C4($sp)            
lbl_8090FFE8:
	addiu   a1, s0, 0x0024             ## a1 = 00000024
	sw      a1, 0x0044($sp)            
	addiu   a0, a0, 0x03B8             ## a0 = 000003B8
	sw      a0, 0x0040($sp)            
	addiu   a2, $sp, 0x00B0            ## a2 = FFFFFFE8
	jal     func_80063E5C              
	sw      a3, 0x00BC($sp)            
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f12                  ## $f12 = 30.00
	lw      a0, 0x0040($sp)            
	lw      a3, 0x00BC($sp)            
	c.lt.s  $f0, $f12                  
	lwc1    $f6, 0x00B0($sp)           
	addiu   a1, $sp, 0x00A4            ## a1 = FFFFFFDC
	bc1fl   lbl_8091003C               
	lw      t4, 0x011C(s0)             ## 0000011C
	mtc1    $zero, $f2                 ## $f2 = 0.00
	mtc1    $zero, $f16                ## $f16 = 0.00
	beq     $zero, $zero, lbl_80910088 
	nop
	lw      t4, 0x011C(s0)             ## 0000011C
lbl_8091003C:
	beq     t4, $zero, lbl_8091004C    
	nop
	beq     $zero, $zero, lbl_8091006C 
	mov.s   $f2, $f12                  
lbl_8091004C:
	beq     a3, $zero, lbl_80910064    
	lui     $at, 0x4348                ## $at = 43480000
	lui     $at, 0x4248                ## $at = 42480000
	mtc1    $at, $f2                   ## $f2 = 50.00
	beq     $zero, $zero, lbl_80910070 
	c.le.s  $f0, $f2                   
lbl_80910064:
	mtc1    $at, $f2                   ## $f2 = 50.00
	nop
lbl_8091006C:
	c.le.s  $f0, $f2                   
lbl_80910070:
	sub.s   $f16, $f0, $f2             
	bc1fl   lbl_80910088               
	div.s   $f2, $f16, $f0             
	mtc1    $zero, $f16                ## $f16 = 0.00
	nop
	div.s   $f2, $f16, $f0             
lbl_80910088:
	mul.s   $f8, $f6, $f2              
	lwc1    $f4, 0x00B4($sp)           
	lwc1    $f6, 0x00B8($sp)           
	lw      a2, 0x00C4($sp)            
	mul.s   $f10, $f4, $f2             
	addiu   a2, a2, 0x005C             ## a2 = 0000005C
	swc1    $f8, 0x00A4($sp)           
	mul.s   $f8, $f6, $f2              
	swc1    $f10, 0x00A8($sp)          
	swc1    $f8, 0x00AC($sp)           
	lw      t5, 0x011C(s0)             ## 0000011C
	bnel    t5, $zero, lbl_80910130    
	addiu   a0, $sp, 0x00B0            ## a0 = FFFFFFE8
	beq     a3, $zero, lbl_809100F4    
	addiu   a1, $sp, 0x00A4            ## a1 = FFFFFFDC
	lh      t6, 0x0000(a3)             ## 00000000
	addiu   $at, $zero, 0x00D5         ## $at = 000000D5
	lw      a2, 0x0044($sp)            
	bnel    t6, $at, lbl_809100F8      
	lw      a2, 0x0044($sp)            
	addiu   a0, a3, 0x0024             ## a0 = 00000024
	jal     func_80063D48              ## Vec3f_Sub
	addiu   a1, s0, 0x01F4             ## a1 = 000001F4
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f16                  ## $f16 = 1.00
	beq     $zero, $zero, lbl_8091016C 
	lui     $at, 0x4248                ## $at = 42480000
lbl_809100F4:
	lw      a2, 0x0044($sp)            
lbl_809100F8:
	sw      a3, 0x00BC($sp)            
	jal     func_80063D10              ## Vec3f_Add
	swc1    $f16, 0x009C($sp)          
	lw      a3, 0x00BC($sp)            
	lwc1    $f16, 0x009C($sp)          
	lw      a0, 0x0044($sp)            
	beq     a3, $zero, lbl_80910168    
	addiu   a1, s0, 0x01F4             ## a1 = 000001F4
	addiu   a2, a3, 0x0024             ## a2 = 00000024
	jal     func_80063D10              ## Vec3f_Add
	swc1    $f16, 0x009C($sp)          
	beq     $zero, $zero, lbl_80910168 
	lwc1    $f16, 0x009C($sp)          
	addiu   a0, $sp, 0x00B0            ## a0 = FFFFFFE8
lbl_80910130:
	jal     func_80063D48              ## Vec3f_Sub
	swc1    $f16, 0x009C($sp)          
	lwc1    $f2, 0x00B0($sp)           
	lwc1    $f18, 0x00B8($sp)          
	lwc1    $f14, 0x00B4($sp)          
	mul.s   $f4, $f2, $f2              
	neg.s   $f14, $f14                 
	mul.s   $f10, $f18, $f18           
	add.s   $f0, $f4, $f10             
	jal     func_800AA4F8              
	sqrt.s  $f12, $f0                  
	lw      t7, 0x00C4($sp)            
	lwc1    $f16, 0x009C($sp)          
	sh      v0, 0x0030(t7)             ## 00000030
lbl_80910168:
	lui     $at, 0x4248                ## $at = 42480000
lbl_8091016C:
	mtc1    $at, $f6                   ## $f6 = 50.00
	or      a0, s0, $zero              ## a0 = 00000000
	c.lt.s  $f16, $f6                  
	nop
	bc1fl   lbl_80910434               
	lw      $ra, 0x0034($sp)           
	jal     func_8090FCCC              
	swc1    $f16, 0x009C($sp)          
	lwc1    $f16, 0x009C($sp)          
	mtc1    $zero, $f8                 ## $f8 = 0.00
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a1, %hi(func_8090FC08)     ## a1 = 80910000
	c.eq.s  $f16, $f8                  
	nop
	bc1fl   lbl_80910434               
	lw      $ra, 0x0034($sp)           
	jal     func_8090FB40              
	addiu   a1, a1, %lo(func_8090FC08) ## a1 = 8090FC08
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8090FC9C              
	lw      a1, 0x00C4($sp)            
	beql    v0, $zero, lbl_80910434    
	lw      $ra, 0x0034($sp)           
	lw      v0, 0x00C4($sp)            
	lw      a0, 0x0044($sp)            
	addiu   a1, v0, 0x0024             ## a1 = 00000024
	jal     func_80063D48              ## Vec3f_Sub
	addiu   a2, v0, 0x005C             ## a2 = 0000005C
	lw      t8, 0x00C4($sp)            
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f10                  ## $f10 = 20.00
	lwc1    $f4, 0x0060(t8)            ## 00000060
	sub.s   $f6, $f4, $f10             
	swc1    $f6, 0x0060(t8)            ## 00000060
	beq     $zero, $zero, lbl_80910434 
	lw      $ra, 0x0034($sp)           
lbl_809101FC:
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	sw      a0, 0x0044($sp)            
	addiu   a1, s0, 0x0100             ## a1 = 00000100
	jal     func_80063D48              ## Vec3f_Sub
	addiu   a2, $sp, 0x006C            ## a2 = FFFFFFA4
	addiu   a0, s0, 0x01D8             ## a0 = 000001D8
	or      a2, a0, $zero              ## a2 = 000001D8
	sw      a0, 0x0040($sp)            
	jal     func_80063D10              ## Vec3f_Add
	addiu   a1, $sp, 0x006C            ## a1 = FFFFFFA4
	lwc1    $f14, 0x0060(s0)           ## 00000060
	lwc1    $f12, 0x0068(s0)           ## 00000068
	jal     func_800AA4F8              
	neg.s   $f14, $f14                 
	lwc1    $f0, 0x01E4(s0)            ## 000001E4
	lwc1    $f8, 0x01D8(s0)            ## 000001D8
	sh      v0, 0x00B4(s0)             ## 000000B4
	lw      a0, 0x00CC($sp)            
	sub.s   $f4, $f8, $f0              
	addiu   t9, $sp, 0x0088            ## t9 = FFFFFFC0
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	addiu   t1, $zero, 0x0001          ## t1 = 00000001
	sub.s   $f10, $f0, $f4             
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	addiu   t3, $zero, 0x0001          ## t3 = 00000001
	addiu   t4, $sp, 0x0084            ## t4 = FFFFFFBC
	swc1    $f10, 0x0060($sp)          
	lwc1    $f6, 0x01DC(s0)            ## 000001DC
	lwc1    $f2, 0x01E8(s0)            ## 000001E8
	addiu   a0, a0, 0x07C0             ## a0 = 000007C0
	lw      a2, 0x0040($sp)            
	sub.s   $f8, $f6, $f2              
	addiu   a1, $sp, 0x0060            ## a1 = FFFFFF98
	addiu   a3, $sp, 0x0078            ## a3 = FFFFFFB0
	sub.s   $f4, $f2, $f8              
	swc1    $f4, 0x0064($sp)           
	lwc1    $f10, 0x01E0(s0)           ## 000001E0
	lwc1    $f12, 0x01EC(s0)           ## 000001EC
	sw      a0, 0x003C($sp)            
	sw      t4, 0x0024($sp)            
	sub.s   $f6, $f10, $f12            
	sw      t3, 0x0020($sp)            
	sw      t2, 0x001C($sp)            
	sw      t1, 0x0018($sp)            
	sub.s   $f8, $f12, $f6             
	sw      t0, 0x0014($sp)            
	sw      t9, 0x0010($sp)            
	jal     func_800308B4              
	swc1    $f8, 0x0068($sp)           
	beq     v0, $zero, lbl_80910418    
	lw      a3, 0x0084($sp)            
	addiu   t5, $sp, 0x0078            ## t5 = FFFFFFB0
	sw      t5, 0x0010($sp)            
	lw      a0, 0x00CC($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_800231BC              
	lw      a2, 0x0088($sp)            
	bne     v0, $zero, lbl_80910418    
	lui     $at, %hi(var_809107C0)     ## $at = 80910000
	lwc1    $f0, %lo(var_809107C0)($at) 
	lw      t6, 0x0088($sp)            
	lw      a0, 0x0044($sp)            
	addiu   a1, $sp, 0x0078            ## a1 = FFFFFFB0
	lh      t7, 0x0008(t6)             ## 00000008
	mtc1    t7, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f10, $f4                  
	mul.s   $f6, $f10, $f0             
	swc1    $f6, 0x005C($sp)           
	lh      t8, 0x000C(t6)             ## 0000000C
	mtc1    t8, $f8                    ## $f8 = 0.00
	nop
	cvt.s.w $f4, $f8                   
	mul.s   $f10, $f4, $f0             
	jal     func_80063CAC              ## Vec3f_Copy
	swc1    $f10, 0x0058($sp)          
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f0                   ## $f0 = 10.00
	lwc1    $f8, 0x005C($sp)           
	lwc1    $f6, 0x0024(s0)            ## 00000024
	mul.s   $f4, $f0, $f8              
	lwc1    $f8, 0x002C(s0)            ## 0000002C
	add.s   $f10, $f6, $f4             
	swc1    $f10, 0x0024(s0)           ## 00000024
	lwc1    $f6, 0x0058($sp)           
	sh      $zero, 0x0200(s0)          ## 00000200
	mul.s   $f4, $f0, $f6              
	add.s   $f10, $f8, $f4             
	swc1    $f10, 0x002C(s0)           ## 0000002C
	lw      a2, 0x0084($sp)            
	lw      a1, 0x0088($sp)            
	jal     func_8003469C              
	lw      a0, 0x003C($sp)            
	beq     v0, $zero, lbl_809103E0    
	lw      a0, 0x00CC($sp)            
	lw      a3, 0x0084($sp)            
	addiu   $at, $zero, 0x0032         ## $at = 00000032
	beq     a3, $at, lbl_809103A8      
	lw      a0, 0x003C($sp)            
	jal     func_80031464              
	or      a1, a3, $zero              ## a1 = 00000000
	beq     v0, $zero, lbl_809103A8    
	or      a1, v0, $zero              ## a1 = 00000000
	jal     func_8090FD90              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_809103A8:
	jal     func_8090FC88              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t9, 0x8010                 ## t9 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t9, t9, 0x43A8             ## t9 = 801043A8
	sw      t9, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x1829          ## a0 = 00001829
	addiu   a1, s0, 0x00E4             ## a1 = 000000E4
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_80910434 
	lw      $ra, 0x0034($sp)           
lbl_809103E0:
	jal     func_800511B8              
	lw      a1, 0x0044($sp)            
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t0, 0x8010                 ## t0 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t0, t0, 0x43A8             ## t0 = 801043A8
	sw      t0, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x1813          ## a0 = 00001813
	addiu   a1, s0, 0x00E4             ## a1 = 000000E4
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_80910434 
	lw      $ra, 0x0034($sp)           
lbl_80910418:
	lw      t1, 0x00CC($sp)            
	lhu     t2, 0x0020(t1)             ## 00000020
	andi    t3, t2, 0xC01F             ## t3 = 00000000
	beql    t3, $zero, lbl_80910434    
	lw      $ra, 0x0034($sp)           
	sh      $zero, 0x0200(s0)          ## 00000200
	lw      $ra, 0x0034($sp)           
lbl_80910434:
	lw      s0, 0x0030($sp)            
	addiu   $sp, $sp, 0x00C8           ## $sp = 00000000
	jr      $ra                        
	nop


func_80910444:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	lw      t9, 0x0204(a0)             ## 00000204
	jalr    $ra, t9                    
	nop
	lw      a0, 0x0018($sp)            
	lw      t7, 0x01D8(a0)             ## 000001D8
	lw      t6, 0x01DC(a0)             ## 000001DC
	sw      t7, 0x01E4(a0)             ## 000001E4
	lw      t7, 0x01E0(a0)             ## 000001E0
	sw      t6, 0x01E8(a0)             ## 000001E8
	sw      t7, 0x01EC(a0)             ## 000001EC
	lw      $ra, 0x0014($sp)           
	jr      $ra                        
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80910484:
	addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
	sw      s0, 0x001C($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      s1, 0x0020($sp)            
	sw      a1, 0x0084($sp)            
	lw      t6, 0x0084($sp)            
	lw      v0, 0x1C44(t6)             ## 00001C44
	lw      t7, 0x0134(v0)             ## 00000134
	beql    t7, $zero, lbl_809106C4    
	lw      $ra, 0x0024($sp)           
	lbu     t8, 0x014D(v0)             ## 0000014D
	addiu   $at, $zero, 0x000F         ## $at = 0000000F
	bnel    t8, $at, lbl_809106C4      
	lw      $ra, 0x0024($sp)           
	lw      t9, 0x0204(s0)             ## 00000204
	lui     t0, %hi(func_8090FDD8)     ## t0 = 80910000
	addiu   t0, t0, %lo(func_8090FDD8) ## t0 = 8090FDD8
	bne     t9, t0, lbl_809104E8       
	lw      s1, 0x0000(t6)             ## 00000000
	lh      t1, 0x0200(s0)             ## 00000200
	lui     a0, %hi(var_8091077C)      ## a0 = 80910000
	addiu   a0, a0, %lo(var_8091077C)  ## a0 = 8091077C
	bgtz    t1, lbl_80910524           
	addiu   a1, s0, 0x01D8             ## a1 = 000001D8
lbl_809104E8:
	lui     a0, %hi(var_80910770)      ## a0 = 80910000
	addiu   a0, a0, %lo(var_80910770)  ## a0 = 80910770
	addiu   a1, s0, 0x01D8             ## a1 = 000001D8
	jal     func_800AB958              
	sw      v0, 0x0074($sp)            
	lui     a0, %hi(var_80910788)      ## a0 = 80910000
	addiu   a0, a0, %lo(var_80910788)  ## a0 = 80910788
	jal     func_800AB958              
	addiu   a1, $sp, 0x005C            ## a1 = FFFFFFDC
	lui     a0, %hi(var_80910794)      ## a0 = 80910000
	addiu   a0, a0, %lo(var_80910794)  ## a0 = 80910794
	jal     func_800AB958              
	addiu   a1, $sp, 0x0050            ## a1 = FFFFFFD0
	beq     $zero, $zero, lbl_8091054C 
	sw      $zero, 0x01BC(s0)          ## 000001BC
lbl_80910524:
	jal     func_800AB958              
	sw      v0, 0x0074($sp)            
	lui     a0, %hi(var_809107A0)      ## a0 = 80910000
	addiu   a0, a0, %lo(var_809107A0)  ## a0 = 809107A0
	jal     func_800AB958              
	addiu   a1, $sp, 0x005C            ## a1 = FFFFFFDC
	lui     a0, %hi(var_809107AC)      ## a0 = 80910000
	addiu   a0, a0, %lo(var_809107AC)  ## a0 = 809107AC
	jal     func_800AB958              
	addiu   a1, $sp, 0x0050            ## a1 = FFFFFFD0
lbl_8091054C:
	addiu   t2, $sp, 0x0050            ## t2 = FFFFFFD0
	sw      t2, 0x0010($sp)            
	lw      a0, 0x0084($sp)            
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	addiu   a2, s0, 0x01BC             ## a2 = 000001BC
	jal     func_8007AF14              
	addiu   a3, $sp, 0x005C            ## a3 = FFFFFFDC
	lw      t3, 0x0084($sp)            
	jal     func_8007E298              
	lw      a0, 0x0000(t3)             ## 00000000
	lw      v1, 0x02C0(s1)             ## 000002C0
	lui     t5, 0xDA38                 ## t5 = DA380000
	ori     t5, t5, 0x0003             ## t5 = DA380003
	addiu   t4, v1, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(s1)             ## 000002C0
	sw      t5, 0x0000(v1)             ## 00000000
	lw      t7, 0x0084($sp)            
	lw      a0, 0x0000(t7)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x003C($sp)            
	lw      a1, 0x003C($sp)            
	lui     t6, 0xDE00                 ## t6 = DE000000
	or      a3, $zero, $zero           ## a3 = 00000000
	sw      v0, 0x0004(a1)             ## 00000004
	lw      v1, 0x02C0(s1)             ## 000002C0
	lui     t9, 0x0603                 ## t9 = 06030000
	addiu   t9, t9, 0xB288             ## t9 = 0602B288
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s1)             ## 000002C0
	sw      t9, 0x0004(v1)             ## 00000004
	sw      t6, 0x0000(v1)             ## 00000000
	lwc1    $f12, 0x0024(s0)           ## 00000024
	lwc1    $f14, 0x0028(s0)           ## 00000028
	jal     func_800AA7F4              
	lw      a2, 0x002C(s0)             ## 0000002C
	lw      a0, 0x0074($sp)            
	addiu   a1, s0, 0x0024             ## a1 = 00000024
	addiu   a2, $sp, 0x0068            ## a2 = FFFFFFE8
	jal     func_80063D48              ## Vec3f_Sub
	addiu   a0, a0, 0x03B8             ## a0 = 000003B8
	lwc1    $f12, 0x0068($sp)          
	lwc1    $f14, 0x0070($sp)          
	mul.s   $f4, $f12, $f12            
	nop
	mul.s   $f6, $f14, $f14            
	add.s   $f2, $f4, $f6              
	sqrt.s  $f0, $f2                   
	swc1    $f2, 0x0048($sp)           
	jal     func_800CD76C              
	swc1    $f0, 0x004C($sp)           
	mov.s   $f12, $f0                  
	jal     func_800AAB94              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lwc1    $f2, 0x006C($sp)           
	lwc1    $f14, 0x004C($sp)          
	jal     func_800CD76C              
	neg.s   $f12, $f2                  
	mov.s   $f12, $f0                  
	jal     func_800AA9E0              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	lwc1    $f2, 0x006C($sp)           
	lwc1    $f10, 0x0048($sp)          
	lui     $at, %hi(var_809107C4)     ## $at = 80910000
	mul.s   $f8, $f2, $f2              
	lwc1    $f12, %lo(var_809107C4)($at) 
	lui     $at, %hi(var_809107C8)     ## $at = 80910000
	lwc1    $f16, %lo(var_809107C8)($at) 
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mov.s   $f14, $f12                 
	add.s   $f0, $f8, $f10             
	sqrt.s  $f0, $f0                   
	mul.s   $f18, $f0, $f16            
	mfc1    a2, $f18                   
	jal     func_800AA8FC              
	nop
	lw      s0, 0x02C0(s1)             ## 000002C0
	lui     t1, 0xDA38                 ## t1 = DA380000
	ori     t1, t1, 0x0003             ## t1 = DA380003
	addiu   t0, s0, 0x0008             ## t0 = 00000008
	sw      t0, 0x02C0(s1)             ## 000002C0
	sw      t1, 0x0000(s0)             ## 00000000
	lw      t2, 0x0084($sp)            
	jal     func_800AB900              
	lw      a0, 0x0000(t2)             ## 00000000
	sw      v0, 0x0004(s0)             ## 00000004
	lw      v1, 0x02C0(s1)             ## 000002C0
	lui     t5, 0x0603                 ## t5 = 06030000
	addiu   t5, t5, 0xAFF0             ## t5 = 0602AFF0
	addiu   t3, v1, 0x0008             ## t3 = 00000008
	sw      t3, 0x02C0(s1)             ## 000002C0
	lui     t4, 0xDE00                 ## t4 = DE000000
	sw      t4, 0x0000(v1)             ## 00000000
	sw      t5, 0x0004(v1)             ## 00000004
	lw      $ra, 0x0024($sp)           
lbl_809106C4:
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0080           ## $sp = 00000000
	nop
	nop
	nop

.section .data

var_809106E0: .word 0x00660700, 0x00000030, 0x00140000, 0x00000208
.word func_8090FB4C
.word func_8090FBC0
.word func_80910444
.word func_80910484
var_80910700: .word \
0x0A090000, 0x08030000, 0x02000000, 0x00000080, \
0x00010000, 0xFFCFFFFF, 0x00000000, 0x05000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x3F000000, 0x00000000, 0x00000000, \
0x3F000000, 0x00000000, 0xFFFF64FF, 0xFF320000
var_80910770: .word 0x00000000, 0x00000000, 0x00000000
var_8091077C: .word 0x00000000, 0x00000000, 0x44610000
var_80910788: .word 0x00000000, 0x43FA0000, 0xC53B8000
var_80910794: .word 0x00000000, 0xC3FA0000, 0xC53B8000
var_809107A0: .word 0x00000000, 0x43FA0000, 0x44960000
var_809107AC: .word \
0x00000000, 0xC3FA0000, 0x44960000, 0x00000000, \
0x00000000

.section .rodata

var_809107C0: .word 0x38000100
var_809107C4: .word 0x3C75C28F
var_809107C8: .word 0x3C23D70A, 0x00000000

