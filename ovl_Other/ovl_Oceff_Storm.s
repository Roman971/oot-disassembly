#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B38E70:
	sw      a1, 0x0144(a0)             ## 00000144
	jr      $ra                        
	nop


func_80B38E7C:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0030($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      a1, 0x003C($sp)            
	lui     a1, %hi(func_80B38F98)     ## a1 = 80B40000
	addiu   a1, a1, %lo(func_80B38F98) ## a1 = 80B38F98
	jal     func_80B38E70              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x003C($sp)            
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lh      t7, 0x001C(s0)             ## 0000001C
	sh      $zero, 0x0142(s0)          ## 00000142
	lh      t6, 0x0142(s0)             ## 00000142
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	sh      $zero, 0x013C(s0)          ## 0000013C
	sb      $zero, 0x013E(s0)          ## 0000013E
	sb      $zero, 0x013F(s0)          ## 0000013F
	swc1    $f0, 0x0054(s0)            ## 00000054
	swc1    $f0, 0x0058(s0)            ## 00000058
	swc1    $f0, 0x0050(s0)            ## 00000050
	bne     t7, $at, lbl_80B38EF8      
	sh      t6, 0x0140(s0)             ## 00000140
	lui     a1, %hi(func_80B3915C)     ## a1 = 80B40000
	addiu   a1, a1, %lo(func_80B3915C) ## a1 = 80B3915C
	jal     func_80B38E70              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     t8, %hi(func_80B391E8)     ## t8 = 80B40000
	addiu   t8, t8, %lo(func_80B391E8) ## t8 = 80B391E8
	beq     $zero, $zero, lbl_80B38F38 
	sw      t8, 0x0134(s0)             ## 00000134
lbl_80B38EF8:
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f6                   ## $f6 = 30.00
	lwc1    $f4, 0x0028(s0)            ## 00000028
	lw      a3, 0x0024(s0)             ## 00000024
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	sub.s   $f8, $f4, $f6              
	addiu   a0, a1, 0x1C24             ## a0 = 00001C24
	addiu   a2, $zero, 0x0170          ## a2 = 00000170
	swc1    $f8, 0x0010($sp)           
	lwc1    $f10, 0x002C(s0)           ## 0000002C
	sw      t9, 0x0024($sp)            
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0018($sp)         
	jal     func_80025110              ## ActorSpawn
	swc1    $f10, 0x0014($sp)          
lbl_80B38F38:
	lw      $ra, 0x0034($sp)           
	lw      s0, 0x0030($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B38F4C:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0020($sp)            
	lw      v0, 0x1C44(a1)             ## 00001C44
	or      a0, a1, $zero              ## a0 = 00000000
	jal     func_80072548              
	sw      v0, 0x0018($sp)            
	lui     t6, 0x8012                 ## t6 = 80120000
	lh      t6, -0x4668(t6)            ## 8011B998
	lw      v0, 0x0018($sp)            
	beql    t6, $zero, lbl_80B38F8C    
	lw      $ra, 0x0014($sp)           
	lbu     t7, 0x0682(v0)             ## 00000682
	ori     t8, t7, 0x0040             ## t8 = 00000040
	sb      t8, 0x0682(v0)             ## 00000682
	lw      $ra, 0x0014($sp)           
lbl_80B38F8C:
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B38F98:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lhu     a2, 0x013C(a0)             ## 0000013C
	slti    $at, a2, 0x0014            
	beq     $at, $zero, lbl_80B38FF0   
	or      v0, a2, $zero              ## v0 = 00000000
	mtc1    a2, $f4                    ## $f4 = 0.00
	lui     $at, 0x4F80                ## $at = 4F800000
	bgez    a2, lbl_80B38FD0           
	cvt.s.w $f6, $f4                   
	mtc1    $at, $f8                   ## $f8 = 4294967000.00
	nop
	add.s   $f6, $f6, $f8              
lbl_80B38FD0:
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f10                  ## $f10 = 5.00
	nop
	mul.s   $f16, $f6, $f10            
	trunc.w.s $f18, $f16                 
	mfc1    t7, $f18                   
	beq     $zero, $zero, lbl_80B39034 
	sb      t7, 0x013E(a0)             ## 0000013E
lbl_80B38FF0:
	slti    $at, v0, 0x0051            
	bne     $at, $zero, lbl_80B39024   
	addiu   t8, $zero, 0x0064          ## t8 = 00000064
	subu    t9, t8, v0                 
	mtc1    t9, $f4                    ## $f4 = 0.00
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f6                   ## $f6 = 5.00
	cvt.s.w $f8, $f4                   
	mul.s   $f10, $f8, $f6             
	trunc.w.s $f16, $f10                 
	mfc1    t1, $f16                   
	beq     $zero, $zero, lbl_80B39034 
	sb      t1, 0x013E(a0)             ## 0000013E
lbl_80B39024:
	lhu     a2, 0x013C(a0)             ## 0000013C
	addiu   t2, $zero, 0x0064          ## t2 = 00000064
	sb      t2, 0x013E(a0)             ## 0000013E
	or      v0, a2, $zero              ## v0 = 00000000
lbl_80B39034:
	slti    $at, v0, 0x000A            
	bne     $at, $zero, lbl_80B39048   
	slti    $at, v0, 0x005A            
	bnel    $at, $zero, lbl_80B3905C   
	slti    $at, v0, 0x0042            
lbl_80B39048:
	lhu     a2, 0x013C(a0)             ## 0000013C
	sb      $zero, 0x013F(a0)          ## 0000013F
	beq     $zero, $zero, lbl_80B390E4 
	or      v0, a2, $zero              ## v0 = 00000000
	slti    $at, v0, 0x0042            
lbl_80B3905C:
	beql    $at, $zero, lbl_80B390A4   
	slti    $at, v0, 0x0042            
	lbu     v0, 0x013F(a0)             ## 0000013F
	slti    $at, v0, 0x00C9            
	beq     $at, $zero, lbl_80B39078   
	addiu   t3, v0, 0x000A             ## t3 = 0000000A
	sb      t3, 0x013F(a0)             ## 0000013F
lbl_80B39078:
	lui     $at, %hi(var_80B3A940)     ## $at = 80B40000
	lwc1    $f0, %lo(var_80B3A940)($at) 
	lui     $at, %hi(var_80B3A944)     ## $at = 80B40000
	lhu     a2, 0x013C(a0)             ## 0000013C
	swc1    $f0, 0x0058(a0)            ## 00000058
	swc1    $f0, 0x0050(a0)            ## 00000050
	lwc1    $f18, %lo(var_80B3A944)($at) 
	or      v0, a2, $zero              ## v0 = 00000000
	beq     $zero, $zero, lbl_80B390E4 
	swc1    $f18, 0x0054(a0)           ## 00000054
	slti    $at, v0, 0x0042            
lbl_80B390A4:
	bne     $at, $zero, lbl_80B390C8   
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	subu    t4, $zero, v0              
	sll     t5, t4,  2                 
	addu    t5, t5, t4                 
	sll     t5, t5,  1                 
	addiu   t6, t5, 0x0384             ## t6 = 00000384
	beq     $zero, $zero, lbl_80B390E4 
	sb      t6, 0x013F(a0)             ## 0000013F
lbl_80B390C8:
	lui     $at, %hi(var_80B3A948)     ## $at = 80B40000
	lwc1    $f0, %lo(var_80B3A948)($at) 
	lhu     a2, 0x013C(a0)             ## 0000013C
	sb      t7, 0x013F(a0)             ## 0000013F
	swc1    $f0, 0x0058(a0)            ## 00000058
	swc1    $f0, 0x0050(a0)            ## 00000050
	or      v0, a2, $zero              ## v0 = 00000000
lbl_80B390E4:
	slti    $at, v0, 0x003D            
	bnel    $at, $zero, lbl_80B39134   
	slti    $at, v0, 0x0064            
	lh      v1, 0x0140(a0)             ## 00000140
	lui     $at, %hi(var_80B3A94C)     ## $at = 80B40000
	lwc1    $f6, %lo(var_80B3A94C)($at) 
	mtc1    v1, $f4                    ## $f4 = 0.00
	lwc1    $f16, 0x0028(a0)           ## 00000028
	lh      a1, 0x0142(a0)             ## 00000142
	cvt.s.w $f8, $f4                   
	lhu     a2, 0x013C(a0)             ## 0000013C
	addu    t8, v1, a1                 
	addiu   t9, a1, 0x000A             ## t9 = 0000000A
	sh      t8, 0x0140(a0)             ## 00000140
	sh      t9, 0x0142(a0)             ## 00000142
	mul.s   $f10, $f8, $f6             
	or      v0, a2, $zero              ## v0 = 00000000
	add.s   $f18, $f16, $f10           
	swc1    $f18, 0x0028(a0)           ## 00000028
	slti    $at, v0, 0x0064            
lbl_80B39134:
	beq     $at, $zero, lbl_80B39144   
	addiu   t0, a2, 0x0001             ## t0 = 00000001
	beq     $zero, $zero, lbl_80B3914C 
	sh      t0, 0x013C(a0)             ## 0000013C
lbl_80B39144:
	jal     func_80020EB4              
	nop
lbl_80B3914C:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3915C:
	sw      a1, 0x0004($sp)            
	lbu     v0, 0x013E(a0)             ## 0000013E
	slti    $at, v0, 0x0064            
	beq     $at, $zero, lbl_80B39174   
	addiu   t6, v0, 0x0005             ## t6 = 00000005
	sb      t6, 0x013E(a0)             ## 0000013E
lbl_80B39174:
	jr      $ra                        
	nop


func_80B3917C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lw      v0, 0x1C44(a1)             ## 00001C44
	lw      t7, 0x0024(v0)             ## 00000024
	sw      t7, 0x0024(a2)             ## 00000024
	lw      t6, 0x0028(v0)             ## 00000028
	sw      t6, 0x0028(a2)             ## 00000028
	lw      t7, 0x002C(v0)             ## 0000002C
	sw      t7, 0x002C(a2)             ## 0000002C
	lh      t8, 0x07A0(a1)             ## 000007A0
	sll     t9, t8,  2                 
	addu    t0, a1, t9                 
	lw      a0, 0x0790(t0)             ## 00000790
	sw      a2, 0x0018($sp)            
	jal     func_8004977C              
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	lw      a1, 0x001C($sp)            
	lw      t9, 0x0144(a0)             ## 00000144
	sh      v0, 0x00B6(a0)             ## 000000B6
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B391E8:
	addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
	sw      $ra, 0x0034($sp)           
	sw      a0, 0x0060($sp)            
	lw      t1, 0x009C(a1)             ## 0000009C
	andi    t1, t1, 0x0FFF             ## t1 = 00000000
	lw      t0, 0x0000(a1)             ## 00000000
	lw      v1, 0x02D0(t0)             ## 000002D0
	lui     t7, 0xE700                 ## t7 = E7000000
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(t0)             ## 000002D0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t7, 0x0000(v1)             ## 00000000
	lw      a0, 0x02D0(t0)             ## 000002D0
	sw      t1, 0x005C($sp)            
	sw      t0, 0x0054($sp)            
	jal     func_8007E360              
	sw      a1, 0x0064($sp)            
	lw      t0, 0x0054($sp)            
	lw      t1, 0x005C($sp)            
	lui     t4, 0xDE00                 ## t4 = DE000000
	addiu   t8, v0, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(t0)             ## 000002D0
	lui     t9, 0xE300                 ## t9 = E3000000
	ori     t9, t9, 0x1A01             ## t9 = E3001A01
	addiu   t5, $zero, 0x0020          ## t5 = 00000020
	sw      t5, 0x0004(v0)             ## 00000004
	sw      t9, 0x0000(v0)             ## 00000000
	lw      v1, 0x02D0(t0)             ## 000002D0
	lui     t7, 0xE300                 ## t7 = E3000000
	ori     t7, t7, 0x1801             ## t7 = E3001801
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(t0)             ## 000002D0
	addiu   t8, $zero, 0x0080          ## t8 = 00000080
	sw      t8, 0x0004(v1)             ## 00000004
	sw      t7, 0x0000(v1)             ## 00000000
	lw      v1, 0x02D0(t0)             ## 000002D0
	lui     t5, 0xFA00                 ## t5 = FA000000
	ori     t5, t5, 0x8080             ## t5 = FA008080
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(t0)             ## 000002D0
	sw      t5, 0x0000(v1)             ## 00000000
	lw      t6, 0x0060($sp)            
	lui     $at, 0xC8C8                ## $at = C8C80000
	ori     $at, $at, 0x9600           ## $at = C8C89600
	lbu     t8, 0x013E(t6)             ## 00000146
	or      a1, $zero, $zero           ## a1 = 00000000
	sll     a2, t1,  3                 
	or      t9, t8, $at                ## t9 = C8C89680
	sw      t9, 0x0004(v1)             ## 00000004
	lw      v1, 0x02D0(t0)             ## 000002D0
	lui     t6, %hi(var_80B3A5B0)      ## t6 = 80B40000
	addiu   t6, t6, %lo(var_80B3A5B0)  ## t6 = 80B3A5B0
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02D0(t0)             ## 000002D0
	sw      t6, 0x0004(v1)             ## 00000004
	sw      t4, 0x0000(v1)             ## 00000000
	lw      v1, 0x02D0(t0)             ## 000002D0
	sll     a3, t1,  2                 
	addiu   t9, $zero, 0x0040          ## t9 = 00000040
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(t0)             ## 000002D0
	sw      t4, 0x0000(v1)             ## 00000000
	lw      t8, 0x0064($sp)            
	addiu   t7, $zero, 0x0040          ## t7 = 00000040
	addiu   t5, $zero, 0x0040          ## t5 = 00000040
	lw      a0, 0x0000(t8)             ## 00000080
	addiu   t8, $zero, 0x0040          ## t8 = 00000040
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	sw      t6, 0x0018($sp)            
	sw      t8, 0x0028($sp)            
	sw      t0, 0x0054($sp)            
	sw      t7, 0x0024($sp)            
	sw      a3, 0x0020($sp)            
	sw      a3, 0x001C($sp)            
	sw      t5, 0x0014($sp)            
	sw      t9, 0x0010($sp)            
	jal     func_8007EB84              
	sw      v1, 0x0038($sp)            
	lw      t3, 0x0038($sp)            
	lw      t0, 0x0054($sp)            
	sw      v0, 0x0004(t3)             ## 00000004
	lw      v1, 0x02D0(t0)             ## 000002D0
	lui     t5, 0xE450                 ## t5 = E4500000
	ori     t5, t5, 0x03C0             ## t5 = E45003C0
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(t0)             ## 000002D0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t5, 0x0000(v1)             ## 00000000
	lw      v1, 0x02D0(t0)             ## 000002D0
	lui     t7, 0xE100                 ## t7 = E1000000
	lui     t9, 0xF100                 ## t9 = F1000000
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(t0)             ## 000002D0
	sw      $zero, 0x0004(v1)          ## 00000004
	sw      t7, 0x0000(v1)             ## 00000000
	lw      v1, 0x02D0(t0)             ## 000002D0
	lui     t5, 0x008C                 ## t5 = 008C0000
	ori     t5, t5, 0xFF74             ## t5 = 008CFF74
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(t0)             ## 000002D0
	sw      t5, 0x0004(v1)             ## 00000004
	sw      t9, 0x0000(v1)             ## 00000000
	lw      $ra, 0x0034($sp)           
	addiu   $sp, $sp, 0x0060           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B39390:
	addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
	sw      s1, 0x0038($sp)            
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x003C($sp)           
	sw      s0, 0x0034($sp)            
	sw      a0, 0x0070($sp)            
	lw      t2, 0x009C(s1)             ## 0000009C
	andi    t2, t2, 0x0FFF             ## t2 = 00000000
	lw      a0, 0x0000(s1)             ## 00000000
	sw      t2, 0x006C($sp)            
	jal     func_8007E2C0              
	or      s0, a0, $zero              ## s0 = 00000000
	lw      t2, 0x006C($sp)            
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t7, 0xFA00                 ## t7 = FA000000
	ori     t7, t7, 0x8080             ## t7 = FA008080
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s0)             ## 000002D0
	addiu   t8, $zero, 0xC8FF          ## t8 = FFFFC8FF
	sw      t8, 0x0004(v1)             ## 00000004
	sw      t7, 0x0000(v1)             ## 00000000
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t7, 0x9696                 ## t7 = 96960000
	ori     t7, t7, 0x0080             ## t7 = 96960080
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s0)             ## 000002D0
	lui     t6, 0xFB00                 ## t6 = FB000000
	sw      t6, 0x0000(v1)             ## 00000000
	sw      t7, 0x0004(v1)             ## 00000004
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t9, 0xE300                 ## t9 = E3000000
	ori     t9, t9, 0x1A01             ## t9 = E3001A01
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s0)             ## 000002D0
	addiu   t6, $zero, 0x0020          ## t6 = 00000020
	sw      t6, 0x0004(v1)             ## 00000004
	sw      t9, 0x0000(v1)             ## 00000000
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t8, 0xE300                 ## t8 = E3000000
	ori     t8, t8, 0x1801             ## t8 = E3001801
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s0)             ## 000002D0
	addiu   t9, $zero, 0x0080          ## t9 = 00000080
	sw      t9, 0x0004(v1)             ## 00000004
	sw      t8, 0x0000(v1)             ## 00000000
	lw      a2, 0x0070($sp)            
	lbu     v0, 0x013F(a2)             ## 0000013F
	lui     $at, %hi(var_80B3A7F7)     ## $at = 80B40000
	sra     v0, v0,  1                 
	sb      v0, %lo(var_80B3A7F7)($at) 
	lui     $at, %hi(var_80B3A767)     ## $at = 80B40000
	sb      v0, %lo(var_80B3A767)($at) 
	lui     $at, %hi(var_80B3A6C7)     ## $at = 80B40000
	sb      v0, %lo(var_80B3A6C7)($at) 
	lui     $at, %hi(var_80B3A667)     ## $at = 80B40000
	sb      v0, %lo(var_80B3A667)($at) 
	lbu     a1, 0x013F(a2)             ## 0000013F
	lui     $at, %hi(var_80B3A7C7)     ## $at = 80B40000
	sb      a1, %lo(var_80B3A7C7)($at) 
	lui     $at, %hi(var_80B3A707)     ## $at = 80B40000
	sb      a1, %lo(var_80B3A707)($at) 
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t7, 0xDA38                 ## t7 = DA380000
	ori     t7, t7, 0x0003             ## t7 = DA380003
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s0)             ## 000002D0
	sw      t7, 0x0000(v1)             ## 00000000
	lw      a0, 0x0000(s1)             ## 00000000
	sw      t2, 0x006C($sp)            
	jal     func_800AB900              
	sw      v1, 0x0048($sp)            
	lw      t3, 0x0048($sp)            
	lw      t2, 0x006C($sp)            
	lui     t5, 0xDE00                 ## t5 = DE000000
	sw      v0, 0x0004(t3)             ## 00000004
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t9, %hi(var_80B3A808)      ## t9 = 80B40000
	addiu   t9, t9, %lo(var_80B3A808)  ## t9 = 80B3A808
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02D0(s0)             ## 000002D0
	sw      t9, 0x0004(v1)             ## 00000004
	sw      t5, 0x0000(v1)             ## 00000000
	lw      v1, 0x02D0(s0)             ## 000002D0
	addiu   t7, $zero, 0x0020          ## t7 = 00000020
	subu    t1, $zero, t2              
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s0)             ## 000002D0
	sw      t5, 0x0000(v1)             ## 00000000
	lw      a0, 0x0000(s1)             ## 00000000
	sw      t7, 0x0010($sp)            
	sll     t7, t1,  2                 
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	sw      t9, 0x0018($sp)            
	subu    t7, t7, t1                 
	sll     t7, t7,  2                 
	addiu   t9, $zero, 0x0020          ## t9 = 00000020
	sll     t6, t2,  3                 
	addiu   t8, $zero, 0x0020          ## t8 = 00000020
	sw      t8, 0x0014($sp)            
	sw      t8, 0x0024($sp)            
	sw      t6, 0x001C($sp)            
	sw      t9, 0x0028($sp)            
	sw      t7, 0x0020($sp)            
	sll     a3, t1,  3                 
	or      a1, $zero, $zero           ## a1 = 00000000
	sll     a2, t2,  2                 
	jal     func_8007EB84              
	sw      v1, 0x0040($sp)            
	lw      t4, 0x0040($sp)            
	lui     t7, 0xDE00                 ## t7 = DE000000
	or      a1, s1, $zero              ## a1 = 00000000
	sw      v0, 0x0004(t4)             ## 00000004
	lw      v1, 0x02D0(s0)             ## 000002D0
	lui     t8, %hi(var_80B3A8B0)      ## t8 = 80B40000
	addiu   t8, t8, %lo(var_80B3A8B0)  ## t8 = 80B3A8B0
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02D0(s0)             ## 000002D0
	sw      t8, 0x0004(v1)             ## 00000004
	sw      t7, 0x0000(v1)             ## 00000000
	jal     func_80B391E8              
	lw      a0, 0x0070($sp)            
	lw      $ra, 0x003C($sp)           
	lw      s0, 0x0034($sp)            
	lw      s1, 0x0038($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0070           ## $sp = 00000000
	nop
	nop

.section .data

var_80B39590: .word 0x018B0700, 0x02000030, 0x00010000, 0x00000148
.word func_80B38E7C
.word func_80B38F4C
.word func_80B3917C
.word func_80B39390
var_80B395B0: .word \
0x2F6E6F59, 0x6197B3CC, 0xC8AD8E6C, 0x5333170A, \
0x17366173, 0x86ABC7C6, 0xA9928C7E, 0x55496341, \
0x40705B59, 0x79A5DAE8, 0xC9A5927F, 0x6F50270D, \
0x17304F6C, 0x8BAAC3B9, 0x9189A0A5, 0x854A2F1F, \
0x33808E74, 0x709BB7CC, 0xC6B18E69, 0x4627100D, \
0x21406880, 0x9BC2DAC1, 0x92808378, 0x514B7350, \
0x386E6768, 0x80AAE1E4, 0xC6A0866D, 0x644B2513, \
0x2541617F, 0xA2BBD7C6, 0x9C97B8B9, 0x86322A2C, \
0x3381A28F, 0x82A0BECA, 0xCBBF956B, 0x40210A15, \
0x2F4D718F, 0xB1D7E8BA, 0x856B706D, 0x49447654, \
0x366C6C71, 0x87ADDFD8, 0xB8967B68, 0x543A1B15, \
0x32537094, 0xB5D1E5CF, 0xAEA9C9CD, 0x9F3C3235, \
0x3883AEA8, 0x98A4C1C5, 0xC9CCA576, 0x45210D1D, \
0x3C5D7E9F, 0xC3E7EFAF, 0x785B5C5B, 0x3935684F, \
0x36646A79, 0x8FADD5C9, 0xA6877561, 0x40271721, \
0x406180A5, 0xC7E2EED5, 0xC1BDCACD, 0xAD46333D, \
0x3A82B5BB, 0xADADC5BD, 0xC4D5B282, 0x532C152A, \
0x4B6D8FB0, 0xD5F4F4AD, 0x73534F4D, 0x2D28584D, \
0x3C5E6981, 0x9AB0CCBB, 0x987B775E, 0x2D151B2F, \
0x507192B8, 0xDAF0F2D6, 0xD0CAC1C0, 0xB5573241, \
0x4180B2C3, 0xBFB9C8B3, 0xB9CCB085, 0x5E392138, \
0x5B7DA1C3, 0xE5FBF8BC, 0x805B534F, 0x383C605E, \
0x5363738F, 0xA9B7CAB1, 0x8E79805E, 0x1F10233F, \
0x6081A4CA, 0xEAFAF1CF, 0xD4CBB0B2, 0xC06E3246, \
0x4D7BA9C3, 0xC8C4CAAB, 0xA5AF9777, 0x62463249, \
0x6B90B4D4, 0xF2FEFBD3, 0xA47B6B69, 0x686B7D7E, \
0x777D869D, 0xB4C3C6A8, 0x8E888E5F, 0x1B173050, \
0x7292B8DC, 0xF6FFE7C0, 0xC2B99CAC, 0xC682334E, \
0x57779EBB, 0xCBCFD0A4, 0x8D856E58, 0x5B514459, \
0x7BA1C6E5, 0xFAFFFEE9, 0xC9A48D8F, 0x8C868E92, \
0x8C999DA8, 0xBCCABE9F, 0x99A4A065, 0x23254060, \
0x83A4CBEB, 0xFCFFDDAC, 0xA69D8CAF, 0xC8993A56, \
0x617998B5, 0xCBD7D29F, 0x765B4138, 0x505D596E, \
0x8CB2D6F1, 0xFEFFFEF8, 0xE7C5B0AD, 0xA295979B, \
0x99AFB3B2, 0xC3CAB197, 0xA9C1B36F, 0x32354F72, \
0x94B5DCF6, 0xFFFFD99F, 0x8E898BB8, 0xC3A84A5D, \
0x6E819AB5, 0xCEDECF98, 0x65402323, 0x4B6B7283, \
0x9EC1E4FA, 0xFFFFFCF7, 0xF6DAC7C2, 0xAC96929D, \
0xA2BFC5BD, 0xC9C6A192, 0xB6D7C682, 0x49466281, \
0xA4C4ECFD, 0xFFFFDFAD, 0x95919DBE, 0xB8B26768, \
0x8190A4BC, 0xD5DFC38C, 0x61402328, 0x547D8C99, \
0xADCFEBFA, 0xFEFFFAF1, 0xF3DCD0C8, 0x9C808AA2, \
0xA9C9D4CA, 0xD0C09D94, 0xB9DCD7A2, 0x685D7290, \
0xB2CFF4FF, 0xFFFFEBC6, 0xADA2AABE, 0xB1B98781, \
0x99A2B1C6, 0xDEDBAD7E, 0x6957393A, 0x6995A8AF, \
0xBED7E7EF, 0xF7FEFAED, 0xE8D1CEC1, 0x907595AA, \
0xB3CEDFD7, 0xD5B69F99, 0xADCEE4C4, 0x8B7482A0, \
0xBFCFF2FC, 0xFEFFF7DD, 0xC7B5B2B5, 0xB0B69390, \
0xADB8C0D4, 0xE9D69970, 0x74745656, 0x82AEC0C0, \
0xC9D9DBDC, 0xEAF8FAEB, 0xDEC9C4B8, 0x8F71A5B5, \
0xC1D6E7E4, 0xD7AFA39D, 0x9CBAECE1, 0xAD8A93AF, \
0xC5C6E1F1, 0xFAFEFCED, 0xDAC6B0A6, 0xACAD9094, \
0xB5CDD2E3, 0xF3D38D69, 0x808A6D70, 0xA0C7CECB, \
0xD1D8CCC6, 0xD4EFF9E9, 0xD5C3BCAD, 0x937AB7BE, \
0xCBDFEFEE, 0xD3A5A097, 0x88A4EDF6, 0xC39CA2BF, \
0xC4B5C9DE, 0xEEF7F9ED, 0xDAC4A092, 0xA0967C8B, \
0xB1DFE4EE, 0xF9DA926C, 0x83927C84, 0xBCD7D5D5, \
0xD8D5C0B2, 0xB9DDF4E1, 0xCFBCB4A4, 0xA190C5C3, \
0xCFE3F4F6, 0xCD9B9388, 0x7899E8F9, 0xCCA8B3CD, \
0xBDA0ACC3, 0xDBEDF4E4, 0xD7C09481, 0x8B7C5B71, \
0xABEDEDF0, 0xFCE6A97A, 0x818B8198, 0xD1DDD5DC, \
0xDDD2B9A4, 0x9FCCECD5, 0xCCBAAF9F, 0xACAACAC9, \
0xDAEBF8FA, 0xC68F7E72, 0x6F98E2F1, 0xCBB1C2D8, \
0xB49191A8, 0xC6E4EAD7, 0xCCBB8B75, 0x7867495E, \
0xADF6EFE5, 0xF7F1C692, 0x817F84A9, 0xDEDBD2E3, \
0xDECCB299, 0x8ABBE1C7, 0xCAB6A7A4, 0xB5C1C6C4, \
0xE1F4FCFC, 0xC3876A5E, 0x6C98DAE8, 0xC4B8CFDA, \
0xA9858399, 0xBBDEDCC9, 0xC2B2846D, 0x6D5D4357, \
0xBCFBEAD2, 0xE7F7E1AF, 0x85798DB9, 0xDFD2D1E5, \
0xD6BCA48C, 0x81B1DABF, 0xCBB399A9, 0xBFC9B1B1, \
0xE1FAFEFE, 0xC8895F55, 0x6D9DD8DF, 0xC1C2D3D0, \
0x9E80829D, 0xBFDACDB7, 0xB8B0846E, 0x6E5E4061, \
0xD3FEE5BC, 0xCFECF1CF, 0x9882A0CA, 0xDAC7CEDD, \
0xC19F8B7D, 0x82B5D7C0, 0xCBB288A1, 0xB4B98E8F, \
0xD9FEFFFE, 0xD697695C, 0x729FDADB, 0xC5C8C9BC, \
0x928392B5, 0xCCD3BFA8, 0xB3B49178, 0x77603C76, \
0xE6FFE6AB, 0xB1D4EDE6, 0xB094B9D3, 0xD1C0C6CB, \
0xA37E6F6E, 0x92C0D5C3, 0xCAAC758F, 0x9F996568, \
0xC8FEFFFF, 0xE6B28271, 0x7BA5DFD9, 0xC8C7B9A0, \
0x878CAECF, 0xD2CBB69D, 0xB2B9A485, 0x7D5C368E, \
0xF2FFE89F, 0x95B8DAF3, 0xC9A9CCD5, 0xC7BCBDB3, \
0x84615364, 0xA6C7D3C9, 0xC3A06472, 0x8372444B, \
0xB1FAFFFF, 0xF4D1A890, 0x8BB1E1D6, 0xC9C09F87, \
0x7A95C9DF, 0xD2BDAF93, 0xB3C0B290, 0x7C5138A6, \
0xFAFFE38F, 0x88A4BFF2, 0xDDBAD7D0, 0xC0BCB09A, \
0x70534569, 0xB9C6CAC6, 0xB18D5B51, 0x5F50363F, \
0x92F0FFFF, 0xFDE9CDB5, 0xA8C1DECE, 0xC4B18B74, \
0x6B98DBE4, 0xC9B0A48A, 0xA9BAB494, 0x784541BD, \
0xFCFAC978, 0x8DA8A6E6, 0xE9C6DAC5, 0xBDBFA385, \
0x6E61537A, 0xC3BAB7B3, 0x97765141, 0x50433D4A, \
0x70D8FFFF, 0xFCF3E6D6, 0xC6D0D7C4, 0xBCA17E69, \
0x5B90E1DF, 0xC3AD9C80, 0x93A3A38D, 0x723C4ECA, \
0xF3EBA45D, 0x99BC98D7, 0xF0CDD2BA, 0xB9BD9475, \
0x7A7D6C91, 0xC2A6A29C, 0x7C634A3A, 0x50414A64, \
0x55B9FDFF, 0xF7E6F1ED, 0xE0DACEBA, 0xB394725F, \
0x4A7AD6D8, 0xC1AF9C7C, 0x7D888680, 0x6E3557CA, \
0xDECF7743, 0xA2CD99CF, 0xEFCFC7AF, 0xB1B38063, \
0x809482A2, 0xBC978E82, 0x6A5E4339, 0x4D3F5077, \
0x4B90FBFF, 0xF1CEE6F1, 0xF0DFC3B0, 0xA8896454, \
0x3A60C2D1, 0xB9A99F85, 0x64656776, 0x743854BA, \
0xBBAA4E2D, 0x9CCFA4D6, 0xEDCCBDA5, 0xA19F6D54, \
0x7B998AA4, 0xB79A8B71, 0x615E4145, 0x49384B79, \
0x4F67F7FF, 0xEDB7CCDF, 0xEBDCB9A5, 0x9A7C5846, \
0x2F43A4C3, 0xADA0A097, 0x624B5576, 0x85504A95, \
0x8C853A1F, 0x80BCBBDF, 0xE6CAB9A3, 0x92885E46, \
0x65827B95, 0xA59B9778, 0x5C57546E, 0x5B333D67, \
0x574DF0FF, 0xEFACAFBD, 0xD2DAAD98, 0x896E4D39, \
0x282882AD, 0x9D9298A0, 0x7E5F6188, 0xA27A516C, \
0x5F6A3817, 0x5C99CEE7, 0xDFCBBDA8, 0x8E7D5E48, \
0x4D5E6079, 0x8D929B8C, 0x584E75A1, 0x86412C4B, \
0x583AE8FF, 0xF5B99292, 0xB3D3A48A, 0x775E412C, \
0x21196191, 0x8F8187A4, 0x9A857D9F, 0xBFA9724E, \
0x3C5F3A15, 0x3871DAE8, 0xDAD1C6B3, 0x9B887055, \
0x4139405D, 0x73859FA4, 0x584E9ECC, 0xB7632338, \
0x513ADAFF, 0xFBCA7E6A, 0x90CDA17F, 0x6B533821, \
0x1B10457A, 0x8C807A9F, 0xB7AB96AD, 0xCECC9C4A, \
0x2C624013, 0x2151E1DE, 0xD7D2CEBC, 0xAEA28A68, \
0x411F324E, 0x536F9FB9, 0x6C6FC7ED, 0xE1872736, \
0x4D3FC6FE, 0xFEDA724A, 0x72C2A57F, 0x6E59361D, \
0x1710356D, 0x918A7D9B, 0xCFC09FA7, 0xC7D2B854, \
0x326E4113, 0x2540DCD5, 0xD5CCD0BB, 0xBEB9A378, \
0x481D4055, 0x4D63A2C1, 0x939FE2FC, 0xFAA42F3F, \
0x4B45AAFB, 0xFFE46838, 0x63B5B091, 0x87744F2A, \
0x1B15356D, 0x97998EA9, 0xCBB58F8A, 0xA4B9B553, \
0x417D3F17, 0x2D39D8CF, 0xD1BECBB3, 0xC6C6B583, \
0x4527606D, 0x576DAFBF, 0xB8C5F3FD, 0xFFB93541, \
0x494D86F2, 0xFEE25932, 0x5DB0BAA4, 0x9F967343, \
0x21193C72, 0x9FA9A4BD, 0xB8926C62, 0x748A9549, \
0x51873D19, 0x3238D4CE, 0xC8ADC2A6, 0xC4C9C089, \
0x3F2D7F8A, 0x6A7DBCB8, 0xD6E4FAFE, 0xFFC7333D, \
0x454A63DB, 0xF8D34D36, 0x61ADC0B2, 0xB1B3955E, \
0x2C214477, 0xA4B7BACC, 0x9E614438, 0x43516436, \
0x5F83391B, 0x3338CCCF, 0xBEA0BC9D, 0xC2C4C990, \
0x403A99A8, 0x8090C5B1, 0xE9F1FCFF, 0xFDD63238, \
0x394445BB, 0xDCB14540, 0x73B5C3BC, 0xBFC6AC72, \
0x3C304D7B, 0xA5BCC9DA, 0x7E362117, 0x1D27352F, \
0x5F723821, 0x3238C2D2, 0xB59DB99F, 0xC1C0D09B, \
0x4E46A9BC, 0x9DA9CAB5, 0xEDF5FEF9, 0xF6E43236, \
0x2D353592, 0xB08D544D, 0x88B9C3BF, 0xC0C4A97A, \
0x50455579, 0xA2BCCDDF, 0x74271319, 0x32251738, \
0x53553928, 0x3238B5D2, 0xB19DBCAB, 0xC0BFD8A9, \
0x624EADC9, 0xB7C3D2C3, 0xEFFAFEEF, 0xEDF03536, \
0x23233569, 0x7F797259, 0x99B5C3C3, 0xBBB2977C, \
0x6C65637B, 0x9FB9CEE3, 0x862F1932, 0x60401040, \
0x40393632, 0x383FA7D2, 0xB5A3BFB9, 0xC0C3E1B8, \
0x7759A7CF, 0xCCD9DFDA, 0xF2FEFDE6, 0xE8F23539, \
0x1F19324A, 0x50759267, 0xA5ADC5CA, 0xB59C827D, \
0x8A867680, 0x9EB8CCE8, 0xA03D2F57, 0x9664153D, \
0x2D283538, 0x414A98CF, 0xBAADBEC0, 0xC3CFE7C3, \
0x8A639FCC, 0xD8E6E8EB, 0xF6FFFDE5, 0xEBEA3238, \
0x1D173035, 0x3D7DA973, 0xA9A4C5CE, 0xAB82778A, \
0xA9A5888A, 0xA4BCC6E6, 0xBA4F548A, 0xC6881F33, \
0x302D3239, 0x535C8AC9, 0xBAB6BAC1, 0xCBD6E6CB, \
0x967195C3, 0xD7E6EEF8, 0xFAFFFDEB, 0xF1D42A35, \
0x1F25322F, 0x417DAF7D, 0xA6ACC0CE, 0xA27583A9, \
0xC9BF9898, 0xB0BEBEE1, 0xCC6585BB, 0xE7A53832, \
0x4E402F38, 0x697084C4, 0xB3BEB4BD, 0xD5D7E1CC, \
0x9F7E92BC, 0xD2E4EFFB, 0xFEFFFEF6, 0xF4B5212C, \
0x273C3A30, 0x4A70AC89, 0xA3B7BCCD, 0x9F7499C8, \
0xE1CFA3A4, 0xBCBDB0D7, 0xD87DB5DF, 0xF9BC604B, \
0x7454323D, 0x7C7D7FBF, 0xAAC1B1BE, 0xDFD8D9CB, \
0xA48994B5, 0xCEE1E6F1, 0xFEFFFFFE, 0xF59F2D30, \
0x3D574D36, 0x5462A394, 0xA2C2B9CF, 0xA277AFE1, \
0xF3DAABAF, 0xC4B69FCF, 0xE29FDBF6, 0xFECF947D, \
0x9C65414D, 0x898282BB, 0xA3C3B4C6, 0xE6DCD7C7, \
0xA2919CB6, 0xCFE1DBE2, 0xFDFFFFFF, 0xF4A56358, \
0x64725C3D, 0x5F5F9FA0, 0xA1C9B9D4, 0xA47BB8ED, \
0xFADFB5B9, 0xC8AE99CF, 0xECC3F3FE, 0xFEE1C3B2, \
0xBB765B69, 0x8D7D90BA, 0xA9C6BCD5, 0xEFE6DFC5, \
0x9F97A8C0, 0xD9E7CDCC, 0xF9FFFFFF, 0xF6C09D90, \
0x91866343, 0x6564A7AB, 0xA2CCC1DC, 0xA379B3E6, \
0xF6E1BEC4, 0xCBB2AADA, 0xF6E0FDFF, 0xFFF1E4D7, \
0xCD877D8B, 0x8E7596BD, 0xB6C8C7E5, 0xF6F3E8C3, \
0x9D9FB2CC, 0xE5ECB9B3, 0xF4FFFFFE, 0xF9DDC6B9, \
0xB78F6549, 0x646EB0B4, 0xA9D0CCE5, 0xA378A6D5, \
0xEBE1C6CC, 0xCCBFC6E8, 0xFBF5FEFF, 0xFFFBF4E9, \
0xD99FA2A9, 0x947399BD, 0xC1CCD2F1, 0xFBFCF2C3, \
0x9FA7BED5, 0xE9E4A299, 0xEBFEFFFD, 0xFAEFE3D5, \
0xCE8C6150, 0x657EB9BA, 0xAFD4D7EF, 0xA97D9AC3, \
0xDFDCCCCF, 0xCACAE0F6, 0xFCF7F7FE, 0xFFFEF3EA, \
0xDAB5B9BA, 0xA2819EBB, 0xC8D0DEFA, 0xFFFFF6C6, \
0xA7B3C5D1, 0xDECF887E, 0xD6F9FFFD, 0xF9EFE4D8, \
0xD5846160, 0x7396B9BD, 0xB9D7E3F7, 0xB48899B9, \
0xD2D7D2CD, 0xC0CAF1FD, 0xF1E4E6F9, 0xFFFDEBE0, \
0xD6BEBEBB, 0xA890A3BC, 0xC9D7EAFE, 0xFFFFF6C9, \
0xB4BDC2C0, 0xC2AC6963, 0xB6EBFEFD, 0xF8E6D7C9, \
0xCC78687A, 0x8DA3ADBB, 0xC6DEEDFB, 0xC79FAABB, \
0xCAD3D8C9, 0xACB5E8F8, 0xDEC9CDEB, 0xFDFAE7DA, \
0xCEB9B1AA, 0xA18F99B9, 0xCCE2F4FF, 0xFFFFF5CE, \
0xC0C0B7A6, 0x997E4948, 0x91D7FDFE, 0xF8E0CCC0, \
0xBC6B7192, 0x9FA39CB5, 0xD1E7F6FE, 0xDDBCC5C6, \
0xC9D5E3C4, 0x8F92D1E8, 0xC6A9B0DB, 0xF7F6E7D6, \
0xBCA3958D, 0x8A818AB1, 0xD3EDFBFF, 0xFFFFF2D2, \
0xC5BCA489, 0x6F542F32, 0x6BBEFBFF, 0xFADCC2B8, \
0xAE657AA9, 0xA9988AB1, 0xDDF1FCFF, 0xEDD7DDD0, \
0xCBDCEFBF, 0x716AB1D2, 0xAC9199CA, 0xEEEDE6D0, \
0xA884786E, 0x656373A1, 0xD6F4FFFE, 0xFFFFEFD3, \
0xC3B0906F, 0x4E331B23, 0x4FA5F7FF, 0xF8D7B8B1, \
0xA56780B5, 0xAC8785B3, 0xE9FBFFFF, 0xFAEDEDD4, \
0xCBE4F8BC, 0x57458FB9, 0x9B878FBC, 0xE1DFDFC4, \
0x916D5F50, 0x46455189, 0xCCF6FFFE, 0xFFFFE8CF, \
0xBA9F8260, 0x3A1F101F, 0x4692F4FE, 0xF4D1B0AC, \
0xA97382B3, 0xAB878CC2, 0xF2FEFFFF, 0xFEFAF1CF, \
0xC4E8FCB4, 0x453278A5, 0x968A92BB, 0xD6CED1B1, \
0x7C604E3A, 0x323C4B74, 0xB9F1FFFE, 0xFFFCE0C7, \
0xAE927956, 0x30151027, 0x4888EDFA, 0xEFCBA9A6, \
0xB28384AD, 0xB4969ED6, 0xFAFFFFFF, 0xFFFAE8C3, \
0xB6DDF4A9, 0x3925659A, 0x99959EBE, 0xCDBCBB9A, \
0x6C5B452C, 0x25435772, 0xA8EBFFFE, 0xFFF6D2BB, \
0xA2897250, 0x2C131730, 0x5186E4F1, 0xE5C3A5A3, \
0xBA9689A6, 0xC3ACB5EA, 0xFEFEFFFF, 0xFFF4D9B3, \
0xA2C5DC95, 0x301F5B96, 0xA4A5ACC3, 0xC3ABA183, \
0x60574121, 0x1F4D6A82, 0xA6EAFFFF, 0xFDECC4AC, \
0x96826D4E, 0x2F1B213F, 0x608BDBE2, 0xD5BAA3A2, \
0xBCA991A6, 0xD0C1CCF7, 0xFEFCFFFF, 0xFCE7C9A2, \
0x8AA0B87A, 0x271F5998, 0xB5B7B9C8, 0xB99D8A70, \
0x59503A19, 0x1F577F9E, 0xBFEFFFFF, 0xF7DEB59B, \
0x8A7D654D, 0x3D2F324E, 0x6F98D1CF, 0xC3AFA2A4, \
0xBAB79DAE, 0xD9D2E1FE, 0xFEFCFFFE, 0xF6D7B691, \
0x7576895C, 0x1D21599F, 0xCAC8C3C9, 0xAC907964, \
0x51453013, 0x215E92BD, 0xDAF6FFFC, 0xEDCEA58A, \
0x7D7A604E, 0x5549415E, 0x82A4CCBD, 0xADA09EA4, \
0xB5C1ADBB, 0xE1DFEFFF, 0xFEFCFFFB, 0xE9C5A581, \
0x61505B3F, 0x192A60A8, 0xDAD1C9C6, 0x9E836D5D, \
0x4936230D, 0x2361A5D9, 0xF1FDFEF7, 0xDDBC9476, \
0x6E745C53, 0x6B5F5371, 0x92B2C9AF, 0x9A8E919F, \
0xB1C8BEC9, 0xE4E7F9FF, 0xFEFDFEF3, 0xDAB29471, \
0x4F35352D, 0x1D3869B3, 0xE1D2C9C0, 0x91776859, \
0x3F251710, 0x2767B9EE, 0xFEFFFCEC, 0xCAA88364, \
0x5E6C5859, 0x7D706282, 0xA3C0C6A6, 0x8B7B7C8C, \
0xACC9C6CB, 0xDEEBFEFF, 0xFFFFFAE6, 0xC7A08563, \
0x3F231F27, 0x2A4874BB, 0xDFCBC3B7, 0x8A736C5B, \
0x3219131F, 0x2A69C6FA, 0xFFFFF6DC, 0xB8957253, \
0x4E5F5963, 0x84797394, 0xB5C9C09F, 0x826F6570, \
0xA5C6BFBC, 0xCFECFFFF, 0xFFFDEFD5, 0xB48F7454, \
0x3017172D, 0x3C5D82BD, 0xD5C0B9B0, 0x8C7D7A5B, \
0x271B132F, 0x306CD2FE, 0xFFFEEBCC, 0xA5856143, \
0x3C505B6D, 0x837B82A5, 0xC3CFB897, 0x7E695751, \
0x9CC0A9A0, 0xB8E6FFFF, 0xFFF6E2C8, 0xA47D6346, \
0x23101939, 0x4F7091C3, 0xCAB3ABA9, 0x99928955, \
0x1F23173A, 0x3975D9FE, 0xFFF8DCBA, 0x94765333, \
0x2C415D73, 0x7D7D92B6, 0xD2D0AE92, 0x7A675136, \
0x8EB38979, 0x9EDDFEFF, 0xFDECD4C1, 0x9B6F5039, \
0x190D2345, 0x6181A0C4, 0xC0A89FA6, 0xABA98F48, \
0x1B271940, 0x437CCFF4, 0xF3E4C3A1, 0x82674023, \
0x1F365E71, 0x757F9DC1, 0xD8C4A18A, 0x705D4F25, \
0x7C9F6756, 0x85C9EDF7, 0xEDD5C3B9, 0x8F5F3D2C, \
0x1310274A, 0x688DA4BC, 0xAD998FA0, 0xB2AD8236, \
0x23463343, 0x4B85C4E6, 0xE2CDAE8D, 0x72563215, \
0x15305F6F, 0x718AA9C6, 0xCEB99C84, 0x64534E25, \
0x658A5146, 0x78B3E1F2, 0xE2C1B4A9, 0x8759351F, \
0x0D173350, 0x7292ACBA, 0x9E8F8792, 0xA0956725, \
0x2A5C534B, 0x5691BCD9, 0xD5BB9E7D, 0x6245250D, \
0x13305F6F, 0x7999B8CA, 0xC0A89782, 0x5C4B5732, \
0x517A504B, 0x74AADCEF, 0xD7B4A497, 0x7E562D15, \
0x1023405E, 0x7E9FB7B9, 0x95898F97, 0x90734619
var_80B3A5B0: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xE200001C, 0x0C184340, 0xFB000000, 0x32320000, \
0xD9F0FBFF, 0x00000000, 0xFC272C60, 0x150C937F, \
0xFD900000
.word var_80B395B0
.word \
0xF5900000, 0x07018463, 0xE6000000, 0x00000000, \
0xF3000000, 0x077FF100, 0xE7000000, 0x00000000, \
0xF5881000, 0x00018463, 0xF2000000, 0x000FC0FC, \
0xFD900000
.word var_80B395B0
.word \
0xF5900000, 0x07018062, 0xE6000000, 0x00000000, \
0xF3000000, 0x077FF100, 0xE7000000, 0x00000000, \
0xF5881000, 0x01018062, 0xF2000000, 0x010FC0FC, \
0xDF000000, 0x00000000
var_80B3A658: .byte 0xFF, 0xDD, 0x00, 0x96, 0xFF, 0xDD, 0x00, 0x00, 0x07, 0x00, 0x02, 0x00, 0xFF, 0xFF, 0xFF
var_80B3A667: .word \
0x7EFFDD01, 0xF4FFDD00, 0x00070000, 0x00FFFFFF, \
0x00000001, 0xF4FFCE00, 0x00060000, 0x00FFFFFF, \
0x00002300, 0x00FFDD00, 0x00050004, 0x00FFFFFF, \
0x00003200, 0x96000000, 0x00040002, 0x00FFFFFF, \
0x00003200, 0x00000000, 0x00040004, 0x00FFFFFF, \
0x00002300, 0x96FFDD00, 0x00050002, 0x00FFFFFF
var_80B3A6C7: .word \
0x7E002301, 0xF4FFDD00, 0x00050000, 0x00FFFFFF, \
0x00003201, 0xF4000000, 0x00040000, 0x00FFFFFF, \
0x00000000, 0x00FFCE00, 0x00060004, 0x00FFFFFF, \
0x00000000, 0x96FFCE00, 0x00060002, 0x00FFFFFF
var_80B3A707: .word \
0xFFFFDD00, 0x00FFDD00, 0x00070004, 0x00FFFFFF, \
0x00FFCE00, 0x00000000, 0x00080004, 0x00FFFFFF, \
0x00FFCE00, 0x96000000, 0x00080002, 0x00FFFFFF, \
0x00FFCE01, 0xF4000000, 0x00080000, 0x00FFFFFF, \
0x00FFDD00, 0x00002300, 0x00010004, 0x00FFFFFF, \
0x00FFDD00, 0x96002300, 0x00010002, 0x00FFFFFF
var_80B3A767: .word \
0x7EFFCE00, 0x96000000, 0x00000002, 0x00FFFFFF, \
0x00FFCE00, 0x00000000, 0x00000004, 0x00FFFFFF, \
0x00FFDD01, 0xF4002300, 0x00010000, 0x00FFFFFF, \
0x00FFCE01, 0xF4000000, 0x00000000, 0x00FFFFFF, \
0x00000000, 0x00003200, 0x00020004, 0x00FFFFFF, \
0x00000000, 0x96003200, 0x00020002, 0x00FFFFFF
var_80B3A7C7: .word \
0xFF000001, 0xF4003200, 0x00020000, 0x00FFFFFF, \
0x00002300, 0x00002300, 0x00030004, 0x00FFFFFF, \
0x00002300, 0x96002300, 0x00030002, 0x00FFFFFF
var_80B3A7F7: .byte \
0x7E, 0x00, 0x23, 0x01, 0xF4, 0x00, 0x23, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, \
0x00
var_80B3A808: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000, 0x04032930, \
0xF5900000, 0x07017452, 0xE6000000, 0x00000000, \
0xF3000000, 0x071FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x00017452, 0xF2000000, 0x0007C07C, \
0xFD900000, 0x04032D30, 0xF5900100, 0x07017051, \
0xE6000000, 0x00000000, 0xF3000000, 0x071FF200, \
0xE7000000, 0x00000000, 0xF5880900, 0x01017051, \
0xF2000000, 0x0107C07C, 0xFC262A60, 0x1510937F, \
0xE200001C, 0x0C1849D8, 0xD9F0FBFF, 0x00000000, \
0xDF000000, 0x00000000
var_80B3A8B0: .word 0x0101B036
.word var_80B3A658
.word \
0x06000204, 0x0006080A, 0x060C0E10, 0x000C1008, \
0x0612140C, 0x00120C06, 0x0614040E, 0x00140E0C, \
0x06160014, 0x00161412, 0x06060C08, 0x00000414, \
0x06181A00, 0x00180016, 0x061A1C02, 0x001A0200, \
0x061E2022, 0x001E2224, 0x06202628, 0x00202822, \
0x062A2C20, 0x002A201E, 0x062C2E26, 0x002C2620, \
0x0630322C, 0x00302C2A, 0x0632342E, 0x00322E2C, \
0x060A0832, 0x000A3230, 0x06081034, 0x00083432, \
0xDF000000, 0x00000000

.section .rodata

var_80B3A940: .word 0x3ECCCCCD
var_80B3A944: .word 0x3E99999A
var_80B3A948: .word 0x3ECCCCCD
var_80B3A94C: .word 0x3C23D70A

