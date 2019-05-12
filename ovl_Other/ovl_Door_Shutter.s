#include <mips.h>
.set noreorder
.set noat

.section .text
func_808B8370:
	sw      a1, 0x0164(a0)             ## 00000164
	sb      $zero, 0x015F(a0)          ## 0000015F
	jr      $ra                        
	nop


func_808B8380:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	lw      t6, 0x001C($sp)            
	lhu     t8, 0x001C(a2)             ## 0000001C
	lui     t7, 0x0001                 ## t7 = 00010000
	addu    t7, t7, t6                 
	lw      t7, 0x1D38(t7)             ## 00011D38
	lbu     t2, 0x015B(a2)             ## 0000015B
	lbu     v0, 0x015A(a2)             ## 0000015A
	sra     t9, t8, 10                 
	sll     t1, t9,  4                 
	lui     t4, %hi(var_808BA1A0)      ## t4 = 808C0000
	addiu   t4, t4, %lo(var_808BA1A0)  ## t4 = 808BA1A0
	addiu   $at, $zero, 0x000B         ## $at = 0000000B
	addu    v1, t7, t1                 
	sll     t3, t2,  2                 
	lb      a3, 0x0000(v1)             ## 00000000
	beq     v0, $at, lbl_808B844C      
	addu    t0, t3, t4                 
	lb      t5, 0x0002(v1)             ## 00000002
	bnel    a3, t5, lbl_808B8418       
	lb      t9, 0x0003(a2)             ## 00000003
	lh      t6, 0x00B6(a2)             ## 000000B6
	lh      t8, 0x008A(a2)             ## 0000008A
	subu    v1, t6, t8                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	bltz    v1, lbl_808B8404           
	subu    a0, $zero, v1              
	beq     $zero, $zero, lbl_808B8404 
	or      a0, v1, $zero              ## a0 = 00000000
lbl_808B8404:
	slti    $at, a0, 0x4000            
	beql    $at, $zero, lbl_808B8418   
	lb      t9, 0x0003(a2)             ## 00000003
	addiu   a3, $zero, 0xFFFF          ## a3 = FFFFFFFF
	lb      t9, 0x0003(a2)             ## 00000003
lbl_808B8418:
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	bne     a3, t9, lbl_808B844C       
	nop
	bnel    v0, $at, lbl_808B8438      
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	beq     $zero, $zero, lbl_808B844C 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	addiu   $at, $zero, 0x0005         ## $at = 00000005
lbl_808B8438:
	bnel    v0, $at, lbl_808B844C      
	or      v0, $zero, $zero           ## v0 = 00000000
	beq     $zero, $zero, lbl_808B844C 
	addiu   v0, $zero, 0x0003          ## v0 = 00000003
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808B844C:
	bne     v0, $zero, lbl_808B8460    
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lbu     t7, 0x0002(t0)             ## 00000002
	beq     $zero, $zero, lbl_808B8468 
	sb      t7, 0x015C(a2)             ## 0000015C
lbl_808B8460:
	lbu     t1, 0x0003(t0)             ## 00000003
	sb      t1, 0x015C(a2)             ## 0000015C
lbl_808B8468:
	bne     v0, $at, lbl_808B84B0      
	lw      a0, 0x001C($sp)            
	lb      a1, 0x0003(a2)             ## 00000003
	jal     func_80020640              
	sw      a2, 0x0018($sp)            
	bne     v0, $zero, lbl_808B8544    
	lw      a2, 0x0018($sp)            
	lui     a1, %hi(func_808B8B44)     ## a1 = 808C0000
	addiu   a1, a1, %lo(func_808B8B44) ## a1 = 808B8B44
	or      a0, a2, $zero              ## a0 = 00000000
	jal     func_808B8370              
	sw      a2, 0x0018($sp)            
	lui     $at, 0x3F80                ## $at = 3F800000
	lw      a2, 0x0018($sp)            
	mtc1    $at, $f4                   ## $f4 = 1.00
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	beq     $zero, $zero, lbl_808B8558 
	swc1    $f4, 0x0160(a2)            ## 00000160
lbl_808B84B0:
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     v0, $at, lbl_808B84C8      
	lw      a0, 0x001C($sp)            
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	bnel    v0, $at, lbl_808B8528      
	addiu   $at, $zero, 0x0003         ## $at = 00000003
lbl_808B84C8:
	lh      a1, 0x001C(a2)             ## 0000001C
	sw      a2, 0x0018($sp)            
	jal     func_8002049C              
	andi    a1, a1, 0x003F             ## a1 = 00000000
	bne     v0, $zero, lbl_808B850C    
	lw      a2, 0x0018($sp)            
	lui     a1, %hi(func_808B8FE8)     ## a1 = 808C0000
	addiu   a1, a1, %lo(func_808B8FE8) ## a1 = 808B8FE8
	or      a0, a2, $zero              ## a0 = 00000000
	jal     func_808B8370              
	sw      a2, 0x0018($sp)            
	lui     $at, 0x3F80                ## $at = 3F800000
	lw      a2, 0x0018($sp)            
	mtc1    $at, $f6                   ## $f6 = 1.00
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	beq     $zero, $zero, lbl_808B8558 
	swc1    $f6, 0x0160(a2)            ## 00000160
lbl_808B850C:
	lui     a1, %hi(func_808B90A0)     ## a1 = 808C0000
	addiu   a1, a1, %lo(func_808B90A0) ## a1 = 808B90A0
	jal     func_808B8370              
	or      a0, a2, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_808B8558 
	or      v0, $zero, $zero           ## v0 = 00000000
	addiu   $at, $zero, 0x0003         ## $at = 00000003
lbl_808B8528:
	bne     v0, $at, lbl_808B8544      
	or      a0, a2, $zero              ## a0 = 00000000
	lui     a1, %hi(func_808B8BF0)     ## a1 = 808C0000
	jal     func_808B8370              
	addiu   a1, a1, %lo(func_808B8BF0) ## a1 = 808B8BF0
	beq     $zero, $zero, lbl_808B8558 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808B8544:
	lui     a1, %hi(func_808B8C00)     ## a1 = 808C0000
	addiu   a1, a1, %lo(func_808B8C00) ## a1 = 808B8C00
	jal     func_808B8370              
	or      a0, a2, $zero              ## a0 = 00000000
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808B8558:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808B8568:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	or      a2, a1, $zero              ## a2 = 00000000
	lui     a1, %hi(var_808BA2E0)      ## a1 = 808C0000
	addiu   a1, a1, %lo(var_808BA2E0)  ## a1 = 808BA2E0
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80063F7C              
	sw      a2, 0x004C($sp)            
	lwc1    $f4, 0x00BC(s0)            ## 000000BC
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_80035260              
	swc1    $f4, 0x0010(s0)            ## 00000010
	lh      t6, 0x001C(s0)             ## 0000001C
	lw      a2, 0x004C($sp)            
	lui     a3, %hi(var_808BA2D4)      ## a3 = 808C0000
	sra     t7, t6,  6                 
	andi    t8, t7, 0x000F             ## t8 = 00000000
	andi    t9, t8, 0x00FF             ## t9 = 00000000
	sb      t8, 0x015A(s0)             ## 0000015A
	addu    a3, a3, t9                 
	lb      a3, %lo(var_808BA2D4)(a3)  
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x17A4           ## $at = 000117A4
	bgez    a3, lbl_808B8610           
	lui     t6, %hi(var_808BA1A0)      ## t6 = 808C0000
	lui     v1, %hi(var_808BA2F0)      ## v1 = 808C0000
	addiu   v1, v1, %lo(var_808BA2F0)  ## v1 = 808BA2F0
	or      v0, $zero, $zero           ## v0 = 00000000
	lh      a0, 0x00A4(a2)             ## 000000A4
	addiu   a1, $zero, 0x0011          ## a1 = 00000011
lbl_808B85EC:
	lh      t0, 0x0000(v1)             ## 808BA2F0
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	beql    t0, a0, lbl_808B8608       
	lbu     a3, 0x0002(v1)             ## 808BA2F2
	bne     v0, a1, lbl_808B85EC       
	addiu   v1, v1, 0x0004             ## v1 = 808BA2F4
	lbu     a3, 0x0002(v1)             ## 808BA2F6
lbl_808B8608:
	beq     $zero, $zero, lbl_808B8668 
	sll     t5, a3,  2                 
lbl_808B8610:
	addiu   a1, $zero, 0x0006          ## a1 = 00000006
	bne     a3, a1, lbl_808B8660       
	addiu   t4, $zero, 0xFFFF          ## t4 = FFFFFFFF
	lui     v1, %hi(var_808BA338)      ## v1 = 808C0000
	addiu   v1, v1, %lo(var_808BA338)  ## v1 = 808BA338
	or      v0, $zero, $zero           ## v0 = 00000000
	lh      a0, 0x00A4(a2)             ## 000000A4
lbl_808B862C:
	lh      t1, 0x0000(v1)             ## 808BA338
	addiu   v0, v0, 0x0001             ## v0 = 00000001
	beql    t1, a0, lbl_808B8654       
	lbu     t3, 0x0004(v1)             ## 808BA33C
	lh      t2, 0x0002(v1)             ## 808BA33A
	beql    t2, a0, lbl_808B8654       
	lbu     t3, 0x0004(v1)             ## 808BA33C
	bne     v0, a1, lbl_808B862C       
	addiu   v1, v1, 0x0006             ## v1 = 808BA33E
	lbu     t3, 0x0004(v1)             ## 808BA342
lbl_808B8654:
	sh      t3, 0x0158(s0)             ## 00000158
	beq     $zero, $zero, lbl_808B8668 
	sll     t5, a3,  2                 
lbl_808B8660:
	sb      t4, 0x0003(s0)             ## 00000003
	sll     t5, a3,  2                 
lbl_808B8668:
	addiu   t6, t6, %lo(var_808BA1A0)  ## t6 = 808BA1A0
	addu    v0, t5, t6                 
	lh      a1, 0x0000(v0)             ## 00000001
	sw      v0, 0x0024($sp)            
	addu    a0, a2, $at                
	sw      a2, 0x004C($sp)            
	jal     func_80081628              ## ObjectIndex
	sw      a3, 0x003C($sp)            
	sll     t7, v0, 24                 
	sra     t8, t7, 24                 
	lw      a2, 0x004C($sp)            
	lw      a3, 0x003C($sp)            
	bgez    t8, lbl_808B86B0           
	sb      v0, 0x015D(s0)             ## 0000015D
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_808B8770 
	lw      $ra, 0x001C($sp)           
lbl_808B86B0:
	lui     a1, %hi(func_808B87F0)     ## a1 = 808C0000
	addiu   a1, a1, %lo(func_808B87F0) ## a1 = 808B87F0
	or      a0, s0, $zero              ## a0 = 00000000
	sw      a2, 0x004C($sp)            
	jal     func_808B8370              
	sw      a3, 0x003C($sp)            
	lbu     v0, 0x015A(s0)             ## 0000015A
	lw      a3, 0x003C($sp)            
	lw      a2, 0x004C($sp)            
	addiu   $at, $zero, 0x000B         ## $at = 0000000B
	beq     v0, $at, lbl_808B86EC      
	sb      a3, 0x015B(s0)             ## 0000015B
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bne     v0, $at, lbl_808B871C      
	lw      t0, 0x0024($sp)            
lbl_808B86EC:
	lh      a1, 0x001C(s0)             ## 0000001C
	or      a0, a2, $zero              ## a0 = 00000000
	jal     func_8002049C              
	andi    a1, a1, 0x003F             ## a1 = 00000000
	bne     v0, $zero, lbl_808B870C    
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t9, $zero, 0x000A          ## t9 = 0000000A
	sb      t9, 0x015E(s0)             ## 0000015E
lbl_808B870C:
	jal     func_80020F04              
	lui     a1, 0x4270                 ## a1 = 42700000
	beq     $zero, $zero, lbl_808B8770 
	lw      $ra, 0x001C($sp)           
lbl_808B871C:
	lui     t1, %hi(var_808BA1B0)      ## t1 = 808C0000
	addiu   t1, t1, %lo(var_808BA1B0)  ## t1 = 808BA1B0
	bne     t0, t1, lbl_808B8764       
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a1, 0x3DCC                 ## a1 = 3DCC0000
	ori     a1, a1, 0xCCCD             ## a1 = 3DCCCCCD
	jal     func_80020F88              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, 0x4348                ## $at = 43480000
	mtc1    $at, $f6                   ## $f6 = 200.00
	addiu   t2, $zero, 0x0064          ## t2 = 00000064
	sh      t2, 0x0156(s0)             ## 00000156
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	jal     func_80020F04              
	swc1    $f6, 0x00F8(s0)            ## 000000F8
	beq     $zero, $zero, lbl_808B8770 
	lw      $ra, 0x001C($sp)           
lbl_808B8764:
	jal     func_80020F04              
	lui     a1, 0x4270                 ## a1 = 42700000
	lw      $ra, 0x001C($sp)           
lbl_808B8770:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000
	jr      $ra                        
	nop


func_808B8780:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lw      a0, 0x001C($sp)            
	lw      a2, 0x013C(a3)             ## 0000013C
	sw      a3, 0x0018($sp)            
	jal     func_80031638              ## DynaPolyInfo_delReserve
	addiu   a1, a0, 0x0810             ## a1 = 00000810
	lw      a3, 0x0018($sp)            
	lw      t8, 0x001C($sp)            
	lui     t9, 0x0001                 ## t9 = 00010000
	lb      t7, 0x0003(a3)             ## 00000003
	bltzl   t7, lbl_808B87E4           
	lw      $ra, 0x0014($sp)           
	lhu     v1, 0x001C(a3)             ## 0000001C
	addu    t9, t9, t8                 
	lw      t9, 0x1D38(t9)             ## 00011D38
	sra     v1, v1, 10                 
	sll     t0, v1,  4                 
	addu    v0, t9, t0                 
	lh      t1, 0x0004(v0)             ## 00000004
	subu    t2, $zero, t1              
	sh      t2, 0x0004(v0)             ## 00000004
	lw      $ra, 0x0014($sp)           
lbl_808B87E4:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808B87F0:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0034($sp)            
	lw      a0, 0x0034($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x17A4           ## $at = 000117A4
	lb      a1, 0x015D(s0)             ## 0000015D
	jal     func_80081688              
	addu    a0, a0, $at                
	beql    v0, $zero, lbl_808B891C    
	lw      $ra, 0x001C($sp)           
	lbu     v0, 0x015A(s0)             ## 0000015A
	lb      t6, 0x015D(s0)             ## 0000015D
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	beq     v0, $at, lbl_808B8844      
	sb      t6, 0x001E(s0)             ## 0000001E
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	bne     v0, $at, lbl_808B8910      
	or      a0, s0, $zero              ## a0 = 00000000
lbl_808B8844:
	sw      $zero, 0x002C($sp)         
	lw      a0, 0x0034($sp)            
	jal     func_80020FA4              
	or      a1, s0, $zero              ## a1 = 00000000
	lbu     t7, 0x015B(s0)             ## 0000015B
	lui     t9, %hi(var_808BA1A2)      ## t9 = 808C0000
	lbu     t0, 0x015A(s0)             ## 0000015A
	sll     t8, t7,  2                 
	addu    t9, t9, t8                 
	lbu     t9, %lo(var_808BA1A2)(t9)  
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	bne     t0, $at, lbl_808B8884      
	sb      t9, 0x015C(s0)             ## 0000015C
	lui     a0, 0x0602                 ## a0 = 06020000
	beq     $zero, $zero, lbl_808B888C 
	addiu   a0, a0, 0xD9D0             ## a0 = 0601D9D0
lbl_808B8884:
	lui     a0, 0x0601                 ## a0 = 06010000
	addiu   a0, a0, 0x2FD0             ## a0 = 06012FD0
lbl_808B888C:
	jal     func_80033EF4              
	addiu   a1, $sp, 0x002C            ## a1 = FFFFFFFC
	lw      a0, 0x0034($sp)            
	or      a2, s0, $zero              ## a2 = 00000000
	lw      a3, 0x002C($sp)            
	jal     func_800313A4              ## DynaPolyInfo_setActor
	addiu   a1, a0, 0x0810             ## a1 = 00000810
	lbu     t1, 0x015A(s0)             ## 0000015A
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	sw      v0, 0x013C(s0)             ## 0000013C
	bne     t1, $at, lbl_808B88F4      
	or      a0, s0, $zero              ## a0 = 00000000
	lui     $at, 0xC000                ## $at = C0000000
	mtc1    $zero, $f4                 ## $f4 = 0.00
	mtc1    $at, $f6                   ## $f6 = -2.00
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x281C          ## a1 = 0000281C
	swc1    $f4, 0x0060(s0)            ## 00000060
	jal     func_80022FD0              
	swc1    $f6, 0x006C(s0)            ## 0000006C
	lui     a1, %hi(func_808B96D8)     ## a1 = 808C0000
	addiu   a1, a1, %lo(func_808B96D8) ## a1 = 808B96D8
	jal     func_808B8370              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_808B891C 
	lw      $ra, 0x001C($sp)           
lbl_808B88F4:
	lui     a1, %hi(func_808B9860)     ## a1 = 808C0000
	jal     func_808B8370              
	addiu   a1, a1, %lo(func_808B9860) ## a1 = 808B9860
	addiu   t2, $zero, 0x0007          ## t2 = 00000007
	sh      t2, 0x0154(s0)             ## 00000154
	beq     $zero, $zero, lbl_808B891C 
	lw      $ra, 0x001C($sp)           
lbl_808B8910:
	jal     func_808B8380              
	lw      a1, 0x0034($sp)            
	lw      $ra, 0x001C($sp)           
lbl_808B891C:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_808B892C:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      a3, 0x0044($sp)            
	mtc1    a2, $f12                   ## $f12 = 0.00
	or      a3, a0, $zero              ## a3 = 00000000
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0038($sp)            
	sw      a1, 0x003C($sp)            
	lw      v0, 0x1C44(a3)             ## 00001C44
	lw      a0, 0x003C($sp)            
	addiu   a1, $sp, 0x001C            ## a1 = FFFFFFE4
	lwc1    $f4, 0x0024(v0)            ## 00000024
	addiu   a2, $sp, 0x0028            ## a2 = FFFFFFF0
	swc1    $f4, 0x0028($sp)           
	lwc1    $f6, 0x0028(v0)            ## 00000028
	add.s   $f8, $f6, $f12             
	swc1    $f8, 0x002C($sp)           
	lwc1    $f10, 0x002C(v0)           ## 0000002C
	jal     func_8002154C              
	swc1    $f10, 0x0030($sp)          
	lwc1    $f0, 0x001C($sp)           
	lwc1    $f16, 0x0044($sp)          
	lwc1    $f18, 0x0048($sp)          
	abs.s   $f0, $f0                   
	lui     $at, %hi(var_808BA3A0)     ## $at = 808C0000
	c.lt.s  $f16, $f0                  
	lwc1    $f0, 0x0020($sp)           
	lw      $ra, 0x0014($sp)           
	bc1t    lbl_808B89B4               
	nop
	abs.s   $f0, $f0                   
	c.lt.s  $f18, $f0                  
	lwc1    $f0, 0x0024($sp)           
	bc1f    lbl_808B89BC               
	nop
lbl_808B89B4:
	beq     $zero, $zero, lbl_808B89BC 
	lwc1    $f0, %lo(var_808BA3A0)($at) 
lbl_808B89BC:
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_808B89C4:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0028($sp)            
	lw      t6, 0x1C44(a1)             ## 00001C44
	sw      a1, 0x002C($sp)            
	or      a0, a1, $zero              ## a0 = 00000000
	jal     func_8007943C              
	sw      t6, 0x0024($sp)            
	bne     v0, $zero, lbl_808B8B30    
	lw      a1, 0x0028($sp)            
	lbu     v0, 0x015C(a1)             ## 0000015C
	lui     t8, %hi(var_808BA1E4)      ## t8 = 808C0000
	addiu   t8, t8, %lo(var_808BA1E4)  ## t8 = 808BA1E4
	sll     t7, v0,  2                 
	subu    t7, t7, v0                 
	sll     t7, t7,  2                 
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	beq     v0, $at, lbl_808B8A1C      
	addu    v1, t7, t8                 
	mtc1    $zero, $f0                 ## $f0 = 0.00
	beq     $zero, $zero, lbl_808B8A2C 
	lbu     t9, 0x000A(v1)             ## 0000000A
lbl_808B8A1C:
	lui     $at, 0x42A0                ## $at = 42A00000
	mtc1    $at, $f0                   ## $f0 = 80.00
	nop
	lbu     t9, 0x000A(v1)             ## 0000000A
lbl_808B8A2C:
	mfc1    a2, $f0                    
	lw      a0, 0x002C($sp)            
	mtc1    t9, $f4                    ## $f4 = 0.00
	lui     $at, 0x4F80                ## $at = 4F800000
	bgez    t9, lbl_808B8A50           
	cvt.s.w $f4, $f4                   
	mtc1    $at, $f6                   ## $f6 = 4294967000.00
	nop
	add.s   $f4, $f4, $f6              
lbl_808B8A50:
	lbu     t0, 0x000B(v1)             ## 0000000B
	mfc1    a3, $f4                    
	lui     $at, 0x4F80                ## $at = 4F800000
	mtc1    t0, $f8                    ## $f8 = 0.00
	bgez    t0, lbl_808B8A74           
	cvt.s.w $f10, $f8                  
	mtc1    $at, $f16                  ## $f16 = 4294967000.00
	nop
	add.s   $f10, $f10, $f16           
lbl_808B8A74:
	jal     func_808B892C              
	swc1    $f10, 0x0010($sp)          
	lui     $at, 0x4248                ## $at = 42480000
	mtc1    $at, $f18                  ## $f18 = 50.00
	mov.s   $f2, $f0                   
	abs.s   $f0, $f0                   
	mtc1    $zero, $f12                ## $f12 = 0.00
	c.lt.s  $f0, $f18                  
	lw      t1, 0x0024($sp)            
	lw      t3, 0x0028($sp)            
	bc1fl   lbl_808B8B34               
	or      v0, $zero, $zero           ## v0 = 00000000
	lh      t2, 0x00B6(t1)             ## 000000B6
	lh      t4, 0x00B6(t3)             ## 000000B6
	c.lt.s  $f12, $f2                  
	ori     t5, $zero, 0x8000          ## t5 = 00008000
	subu    v0, t2, t4                 
	sll     v0, v0, 16                 
	bc1f    lbl_808B8AD0               
	sra     v0, v0, 16                 
	subu    v0, t5, v0                 
	sll     v0, v0, 16                 
	sra     v0, v0, 16                 
lbl_808B8AD0:
	bltz    v0, lbl_808B8AE0           
	subu    v1, $zero, v0              
	beq     $zero, $zero, lbl_808B8AE0 
	or      v1, v0, $zero              ## v1 = 00000000
lbl_808B8AE0:
	slti    $at, v1, 0x3000            
	beql    $at, $zero, lbl_808B8B34   
	or      v0, $zero, $zero           ## v0 = 00000000
	c.le.s  $f12, $f2                  
	lui     $at, 0xBF80                ## $at = BF800000
	bc1fl   lbl_808B8B1C               
	mtc1    $at, $f0                   ## $f0 = -1.00
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f0                   ## $f0 = 1.00
	nop
	trunc.w.s $f4, $f0                   
	mfc1    v0, $f4                    
	beq     $zero, $zero, lbl_808B8B38 
	lw      $ra, 0x001C($sp)           
	mtc1    $at, $f0                   ## $f0 = 1.00
lbl_808B8B1C:
	nop
	trunc.w.s $f4, $f0                   
	mfc1    v0, $f4                    
	beq     $zero, $zero, lbl_808B8B38 
	lw      $ra, 0x001C($sp)           
lbl_808B8B30:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808B8B34:
	lw      $ra, 0x001C($sp)           
lbl_808B8B38:
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_808B8B44:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s1, 0x0018($sp)            
	sw      s0, 0x0014($sp)            
	or      s0, a1, $zero              ## s0 = 00000000
	or      s1, a0, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80020640              
	lb      a1, 0x0003(s1)             ## 00000003
	bne     v0, $zero, lbl_808B8B80    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80020694              
	lb      a1, 0x0003(s1)             ## 00000003
	beq     v0, $zero, lbl_808B8BC0    
	or      a0, s1, $zero              ## a0 = 00000000
lbl_808B8B80:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80020658              
	lb      a1, 0x0003(s1)             ## 00000003
	lui     a1, %hi(func_808B925C)     ## a1 = 808C0000
	addiu   a1, a1, %lo(func_808B925C) ## a1 = 808B925C
	jal     func_808B8370              
	or      a0, s1, $zero              ## a0 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8006BA10              
	or      a1, s1, $zero              ## a1 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8006BA10              
	lw      a1, 0x1C44(s0)             ## 00001C44
	addiu   t6, $zero, 0xFF9C          ## t6 = FFFFFF9C
	beq     $zero, $zero, lbl_808B8BDC 
	sb      t6, 0x015F(s1)             ## 0000015F
lbl_808B8BC0:
	jal     func_808B89C4              
	or      a1, s0, $zero              ## a1 = 00000000
	beql    v0, $zero, lbl_808B8BE0    
	lw      $ra, 0x001C($sp)           
	lw      v0, 0x1C44(s0)             ## 00001C44
	addiu   t7, $zero, 0xFDFE          ## t7 = FFFFFDFE
	sh      t7, 0x0680(v0)             ## 00000680
lbl_808B8BDC:
	lw      $ra, 0x001C($sp)           
lbl_808B8BE0:
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_808B8BF0:
	sw      a0, 0x0000($sp)            
	sw      a1, 0x0004($sp)            
	jr      $ra                        
	nop


func_808B8C00:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lh      t6, 0x0154(s0)             ## 00000154
	lui     a1, %hi(func_808B910C)     ## a1 = 808C0000
	addiu   a1, a1, %lo(func_808B910C) ## a1 = 808B910C
	beq     t6, $zero, lbl_808B8CA0    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_808B8370              
	or      a0, s0, $zero              ## a0 = 00000000
	lb      t7, 0x015E(s0)             ## 0000015E
	mtc1    $zero, $f4                 ## $f4 = 0.00
	beq     t7, $zero, lbl_808B8D40    
	swc1    $f4, 0x0060(s0)            ## 00000060
	lh      a1, 0x001C(s0)             ## 0000001C
	lw      a0, 0x0024($sp)            
	jal     func_800204D0              
	andi    a1, a1, 0x003F             ## a1 = 00000000
	lbu     t8, 0x015A(s0)             ## 0000015A
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	lui     a2, 0x8012                 ## a2 = 80120000
	beq     t8, $at, lbl_808B8C90      
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a2, a2, 0xA5D0             ## a2 = 8011A5D0
	lhu     t9, 0x1402(a2)             ## 8011B9D2
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x287C          ## a1 = 0000287C
	addu    v0, a2, t9                 
	lb      t0, 0x00BC(v0)             ## 000000BC
	addiu   t1, t0, 0xFFFF             ## t1 = FFFFFFFF
	jal     func_80022FD0              
	sb      t1, 0x00BC(v0)             ## 000000BC
	beq     $zero, $zero, lbl_808B8D44 
	lw      $ra, 0x001C($sp)           
lbl_808B8C90:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x28A9          ## a1 = 000028A9
	beq     $zero, $zero, lbl_808B8D44 
	lw      $ra, 0x001C($sp)           
lbl_808B8CA0:
	jal     func_808B89C4              
	lw      a1, 0x0024($sp)            
	beql    v0, $zero, lbl_808B8D44    
	lw      $ra, 0x001C($sp)           
	lb      t3, 0x015E(s0)             ## 0000015E
	lw      t2, 0x0024($sp)            
	beq     t3, $zero, lbl_808B8D30    
	lw      v1, 0x1C44(t2)             ## 00001C44
	lbu     t4, 0x015A(s0)             ## 0000015A
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	lui     a2, 0x8012                 ## a2 = 80120000
	bne     t4, $at, lbl_808B8D08      
	addiu   a2, a2, 0xA5D0             ## a2 = 8011A5D0
	lui     a2, 0x8012                 ## a2 = 80120000
	addiu   a2, a2, 0xA5D0             ## a2 = 8011A5D0
	lhu     t6, 0x1402(a2)             ## 8011B9D2
	lui     t5, 0x8010                 ## t5 = 80100000
	lw      t5, -0x7410(t5)            ## 800F8BF0
	addu    t7, a2, t6                 
	lbu     t8, 0x00A8(t7)             ## 000000A8
	addiu   t0, $zero, 0xFDFC          ## t0 = FFFFFDFC
	and     t9, t5, t8                 
	bnel    t9, $zero, lbl_808B8D2C    
	addiu   t6, $zero, 0x000A          ## t6 = 0000000A
	beq     $zero, $zero, lbl_808B8D40 
	sh      t0, 0x0680(v1)             ## 00000680
lbl_808B8D08:
	lhu     t1, 0x1402(a2)             ## 8011B9D2
	addiu   t4, $zero, 0xFDFD          ## t4 = FFFFFDFD
	addu    t2, a2, t1                 
	lb      t3, 0x00BC(t2)             ## 000000BC
	bgtzl   t3, lbl_808B8D2C           
	addiu   t6, $zero, 0x000A          ## t6 = 0000000A
	beq     $zero, $zero, lbl_808B8D40 
	sh      t4, 0x0680(v1)             ## 00000680
	addiu   t6, $zero, 0x000A          ## t6 = 0000000A
lbl_808B8D2C:
	sh      t6, 0x041E(v1)             ## 0000041E
lbl_808B8D30:
	addiu   t7, $zero, 0x0002          ## t7 = 00000002
	sb      t7, 0x041C(v1)             ## 0000041C
	sb      v0, 0x041D(v1)             ## 0000041D
	sw      s0, 0x0420(v1)             ## 00000420
lbl_808B8D40:
	lw      $ra, 0x001C($sp)           
lbl_808B8D44:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_808B8D54:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0028($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	lbu     t6, 0x0002(s0)             ## 00000002
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
	bnel    t6, $at, lbl_808B8DFC      
	lw      $ra, 0x002C($sp)           
	lw      t7, 0x1C44(a1)             ## 00001C44
	addiu   t9, $zero, 0x000F          ## t9 = 0000000F
	or      a0, s0, $zero              ## a0 = 00000000
	sw      t7, 0x003C($sp)            
	lbu     t8, 0x015C(s0)             ## 0000015C
	sw      t9, 0x0034($sp)            
	sw      a1, 0x0044($sp)            
	jal     func_808B8380              
	sw      t8, 0x0038($sp)            
	beq     v0, $zero, lbl_808B8DA8    
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t0, $zero, 0x0020          ## t0 = 00000020
	sw      t0, 0x0034($sp)            
lbl_808B8DA8:
	lui     a1, %hi(func_808B910C)     ## a1 = 808C0000
	jal     func_808B8370              
	addiu   a1, a1, %lo(func_808B910C) ## a1 = 808B910C
	mtc1    $zero, $f0                 ## $f0 = 0.00
	lw      t1, 0x0038($sp)            
	addiu   t4, $zero, 0x000C          ## t4 = 0000000C
	swc1    $f0, 0x0160(s0)            ## 00000160
	sb      t1, 0x015C(s0)             ## 0000015C
	lw      t3, 0x003C($sp)            
	lw      t2, 0x0044($sp)            
	lw      t5, 0x0034($sp)            
	lh      a2, 0x045A(t3)             ## 0000045A
	lw      a0, 0x0790(t2)             ## 00000790
	addiu   t6, $zero, 0x000A          ## t6 = 0000000A
	mfc1    a3, $f0                    
	sw      t6, 0x0018($sp)            
	sw      t4, 0x0010($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_80049AE0              
	sw      t5, 0x0014($sp)            
	lw      $ra, 0x002C($sp)           
lbl_808B8DFC:
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_808B8E0C:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lbu     t6, 0x015C(s0)             ## 0000015C
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	beql    t6, $at, lbl_808B8EA8      
	lh      t7, 0x0156(s0)             ## 00000156
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lwc1    $f6, 0x0060(s0)            ## 00000060
	or      a0, s0, $zero              ## a0 = 00000000
	c.eq.s  $f4, $f6                   
	nop
	bc1fl   lbl_808B8E64               
	addiu   a0, s0, 0x0060             ## a0 = 00000060
	jal     func_80022FD0              
	addiu   a1, $zero, 0x2814          ## a1 = 00002814
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_808B8D54              
	lw      a1, 0x0024($sp)            
	addiu   a0, s0, 0x0060             ## a0 = 00000060
lbl_808B8E64:
	lui     a1, 0x4170                 ## a1 = 41700000
	jal     func_8006385C              
	lui     a2, 0x4040                 ## a2 = 40400000
	lui     $at, 0x4348                ## $at = 43480000
	mtc1    $at, $f10                  ## $f10 = 200.00
	lwc1    $f8, 0x000C(s0)            ## 0000000C
	addiu   a0, s0, 0x0028             ## a0 = 00000028
	lw      a2, 0x0060(s0)             ## 00000060
	add.s   $f16, $f8, $f10            
	mfc1    a1, $f16                   
	jal     func_8006385C              
	nop
	beql    v0, $zero, lbl_808B8EF0    
	or      v0, $zero, $zero           ## v0 = 00000000
	beq     $zero, $zero, lbl_808B8EF0 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	lh      t7, 0x0156(s0)             ## 00000156
lbl_808B8EA8:
	addiu   $at, $zero, 0x0064         ## $at = 00000064
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    t7, $at, lbl_808B8ED0      
	addiu   a0, s0, 0x0156             ## a0 = 00000156
	jal     func_80022FD0              
	addiu   a1, $zero, 0x2864          ## a1 = 00002864
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_808B8D54              
	lw      a1, 0x0024($sp)            
	addiu   a0, s0, 0x0156             ## a0 = 00000156
lbl_808B8ED0:
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_800637D4              
	addiu   a2, $zero, 0x000A          ## a2 = 0000000A
	beql    v0, $zero, lbl_808B8EF0    
	or      v0, $zero, $zero           ## v0 = 00000000
	beq     $zero, $zero, lbl_808B8EF0 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808B8EF0:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_808B8F04:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	lui     $at, 0x3F80                ## $at = 3F800000
	sw      s0, 0x0018($sp)            
	mtc1    $at, $f0                   ## $f0 = 1.00
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	sw      a2, 0x0028($sp)            
	lwc1    $f4, 0x0028($sp)           
	lwc1    $f8, 0x0160(s0)            ## 00000160
	sub.s   $f6, $f0, $f4              
	c.eq.s  $f6, $f8                   
	nop
	bc1fl   lbl_808B8FB8               
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	lbu     t6, 0x015C(s0)             ## 0000015C
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	lwc1    $f10, 0x0028($sp)          
	beql    t6, $at, lbl_808B8F8C      
	c.eq.s  $f10, $f0                  
	c.eq.s  $f4, $f0                   
	addiu   a1, $zero, 0x285A          ## a1 = 0000285A
	or      a0, s0, $zero              ## a0 = 00000000
	bc1f    lbl_808B8F78               
	nop
	jal     func_80022FD0              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_808B8FB8 
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
lbl_808B8F78:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x2859          ## a1 = 00002859
	beq     $zero, $zero, lbl_808B8FB8 
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
	c.eq.s  $f10, $f0                  
lbl_808B8F8C:
	addiu   a1, $zero, 0x2892          ## a1 = 00002892
	or      a0, s0, $zero              ## a0 = 00000000
	bc1f    lbl_808B8FAC               
	nop
	jal     func_80022FD0              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_808B8FB8 
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
lbl_808B8FAC:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x2891          ## a1 = 00002891
	lui     a2, 0x3E4C                 ## a2 = 3E4C0000
lbl_808B8FB8:
	ori     a2, a2, 0xCCCD             ## a2 = 3E4CCCCD
	addiu   a0, s0, 0x0160             ## a0 = 00000160
	jal     func_8006385C              
	lw      a1, 0x0028($sp)            
	beq     v0, $zero, lbl_808B8FD8    
	lw      $ra, 0x001C($sp)           
	beq     $zero, $zero, lbl_808B8FDC 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_808B8FD8:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808B8FDC:
	lw      s0, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_808B8FE8:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s1, 0x0018($sp)            
	sw      s0, 0x0014($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, s1, $zero              ## a1 = 00000000
	jal     func_808B8F04              
	lui     a2, 0x3F80                 ## a2 = 3F800000
	beql    v0, $zero, lbl_808B9090    
	lw      $ra, 0x001C($sp)           
	lh      a1, 0x001C(s0)             ## 0000001C
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8002049C              
	andi    a1, a1, 0x003F             ## a1 = 00000000
	beq     v0, $zero, lbl_808B9058    
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a1, %hi(func_808B925C)     ## a1 = 808C0000
	addiu   a1, a1, %lo(func_808B925C) ## a1 = 808B925C
	jal     func_808B8370              
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8006BA10              
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   t6, $zero, 0xFF9C          ## t6 = FFFFFF9C
	beq     $zero, $zero, lbl_808B908C 
	sb      t6, 0x015F(s0)             ## 0000015F
lbl_808B9058:
	jal     func_808B89C4              
	or      a1, s1, $zero              ## a1 = 00000000
	beql    v0, $zero, lbl_808B9090    
	lw      $ra, 0x001C($sp)           
	lh      t7, 0x00A4(s1)             ## 000000A4
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	lw      v0, 0x1C44(s1)             ## 00001C44
	bne     t7, $at, lbl_808B9088      
	addiu   t9, $zero, 0xFDFE          ## t9 = FFFFFDFE
	addiu   t8, $zero, 0xFDF5          ## t8 = FFFFFDF5
	beq     $zero, $zero, lbl_808B908C 
	sh      t8, 0x0680(v0)             ## 00000680
lbl_808B9088:
	sh      t9, 0x0680(v0)             ## 00000680
lbl_808B908C:
	lw      $ra, 0x001C($sp)           
lbl_808B9090:
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000


func_808B90A0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	lh      t6, 0x0154(a2)             ## 00000154
	lw      a0, 0x001C($sp)            
	bnel    t6, $zero, lbl_808B90F4    
	or      a0, a2, $zero              ## a0 = 00000000
	lh      a1, 0x001C(a2)             ## 0000001C
	sw      a2, 0x0018($sp)            
	jal     func_8002049C              
	andi    a1, a1, 0x003F             ## a1 = 00000000
	bne     v0, $zero, lbl_808B90F0    
	lw      a2, 0x0018($sp)            
	lui     a1, %hi(func_808B8FE8)     ## a1 = 808C0000
	addiu   a1, a1, %lo(func_808B8FE8) ## a1 = 808B8FE8
	jal     func_808B8370              
	or      a0, a2, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_808B9100 
	lw      $ra, 0x0014($sp)           
lbl_808B90F0:
	or      a0, a2, $zero              ## a0 = 00000000
lbl_808B90F4:
	jal     func_808B8C00              
	lw      a1, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
lbl_808B9100:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808B910C:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	lb      v0, 0x015E(s0)             ## 0000015E
	lui     t7, 0x0001                 ## t7 = 00010000
	addu    t7, t7, a1                 
	bne     v0, $zero, lbl_808B9138    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	beq     $zero, $zero, lbl_808B9140 
	or      v1, $zero, $zero           ## v1 = 00000000
lbl_808B9138:
	sb      t6, 0x015E(s0)             ## 0000015E
	lb      v1, 0x015E(s0)             ## 0000015E
lbl_808B9140:
	bnel    v1, $zero, lbl_808B924C    
	lw      $ra, 0x001C($sp)           
	lb      t7, 0x1CED(t7)             ## 00011CED
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    t7, $zero, lbl_808B924C    
	lw      $ra, 0x001C($sp)           
	jal     func_808B8E0C              
	sw      a1, 0x0024($sp)            
	beql    v0, $zero, lbl_808B924C    
	lw      $ra, 0x001C($sp)           
	lbu     t8, 0x015A(s0)             ## 0000015A
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	or      a0, s0, $zero              ## a0 = 00000000
	bne     t8, $at, lbl_808B9188      
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f0                   ## $f0 = 20.00
	beq     $zero, $zero, lbl_808B9198 
	lwc1    $f4, 0x0090(s0)            ## 00000090
lbl_808B9188:
	lui     $at, 0x4248                ## $at = 42480000
	mtc1    $at, $f0                   ## $f0 = 50.00
	nop
	lwc1    $f4, 0x0090(s0)            ## 00000090
lbl_808B9198:
	c.lt.s  $f0, $f4                   
	nop
	bc1fl   lbl_808B924C               
	lw      $ra, 0x001C($sp)           
	jal     func_808B8380              
	lw      a1, 0x0024($sp)            
	beq     v0, $zero, lbl_808B91C4    
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f6                   ## $f6 = 30.00
	nop
	swc1    $f6, 0x0060(s0)            ## 00000060
lbl_808B91C4:
	lbu     t9, 0x015C(s0)             ## 0000015C
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	addiu   a1, $zero, 0x281C          ## a1 = 0000281C
	beq     t9, $at, lbl_808B91F8      
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a1, %hi(func_808B94F8)     ## a1 = 808C0000
	addiu   a1, a1, %lo(func_808B94F8) ## a1 = 808B94F8
	jal     func_808B8370              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_808B924C 
	lw      $ra, 0x001C($sp)           
lbl_808B91F8:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x2865          ## a1 = 00002865
	lbu     v0, 0x015A(s0)             ## 0000015A
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     v0, $at, lbl_808B9218      
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	bne     v0, $at, lbl_808B9238      
	nop
lbl_808B9218:
	lh      a1, 0x001C(s0)             ## 0000001C
	lw      a0, 0x0024($sp)            
	jal     func_8002049C              
	andi    a1, a1, 0x003F             ## a1 = 00000000
	bne     v0, $zero, lbl_808B9238    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x2892          ## a1 = 00002892
lbl_808B9238:
	lui     a1, %hi(func_808B963C)     ## a1 = 808C0000
	addiu   a1, a1, %lo(func_808B963C) ## a1 = 808B963C
	jal     func_808B8370              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x001C($sp)           
lbl_808B924C:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_808B925C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lb      v0, 0x015F(a0)             ## 0000015F
	addiu   a2, $zero, 0x0000          ## a2 = 00000000
	beq     v0, $zero, lbl_808B92CC    
	nop
	bgez    v0, lbl_808B92C4           
	addiu   t2, v0, 0xFFFF             ## t2 = FFFFFFFF
	lw      t6, 0x009C(a1)             ## 0000009C
	addiu   t8, v0, 0x0001             ## t8 = 00000001
	andi    t7, t6, 0x0001             ## t7 = 00000000
	beq     t7, $zero, lbl_808B9294    
	nop
	sb      t8, 0x015F(a0)             ## 0000015F
lbl_808B9294:
	jal     func_80049DA4              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	addiu   t1, $zero, 0x0005          ## t1 = 00000005
	lbu     t9, 0x0002(a0)             ## 00000002
	beq     v0, t9, lbl_808B92BC       
	nop
	lb      t0, 0x015F(a0)             ## 0000015F
	bnel    t0, $zero, lbl_808B9320    
	lw      $ra, 0x0014($sp)           
lbl_808B92BC:
	beq     $zero, $zero, lbl_808B931C 
	sb      t1, 0x015F(a0)             ## 0000015F
lbl_808B92C4:
	beq     $zero, $zero, lbl_808B931C 
	sb      t2, 0x015F(a0)             ## 0000015F
lbl_808B92CC:
	jal     func_808B8F04              
	sw      a0, 0x0018($sp)            
	beq     v0, $zero, lbl_808B931C    
	lw      a0, 0x0018($sp)            
	lbu     v0, 0x015A(a0)             ## 0000015A
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lui     a1, %hi(func_808B8C00)     ## a1 = 808C0000
	beq     v0, $zero, lbl_808B930C    
	nop
	beq     v0, $at, lbl_808B930C      
	nop
	lui     a1, %hi(func_808B90A0)     ## a1 = 808C0000
	jal     func_808B8370              
	addiu   a1, a1, %lo(func_808B90A0) ## a1 = 808B90A0
	beq     $zero, $zero, lbl_808B9314 
	nop
lbl_808B930C:
	jal     func_808B8370              
	addiu   a1, a1, %lo(func_808B8C00) ## a1 = FFFF8C00
lbl_808B9314:
	jal     func_800C6894              
	nop
lbl_808B931C:
	lw      $ra, 0x0014($sp)           
lbl_808B9320:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808B932C:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      s1, 0x0018($sp)            
	sw      s0, 0x0014($sp)            
	or      s0, a1, $zero              ## s0 = 00000000
	or      s1, a0, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	lw      t6, 0x1C44(s0)             ## 00001C44
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a1, $sp, 0x003C            ## a1 = FFFFFFEC
	sw      t6, 0x004C($sp)            
	lb      v0, 0x0003(s1)             ## 00000003
	addiu   a2, t6, 0x0024             ## a2 = 00000024
	sll     v1, v0, 24                 
	bltz    v0, lbl_808B9494           
	sra     v1, v1, 24                 
	jal     func_8002154C              
	sb      v1, 0x004B($sp)            
	lwc1    $f4, 0x0044($sp)           
	mtc1    $zero, $f6                 ## $f6 = 0.00
	lui     $at, 0x0001                ## $at = 00010000
	addu    a0, s0, $at                
	c.lt.s  $f4, $f6                   
	lb      v1, 0x004B($sp)            
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	addiu   a1, $sp, 0x0028            ## a1 = FFFFFFD8
	bc1f    lbl_808B93A0               
	lui     $at, 0x0001                ## $at = 00010000
	beq     $zero, $zero, lbl_808B93A0 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808B93A0:
	lhu     t8, 0x001C(s1)             ## 0000001C
	lw      t7, 0x1D38(a0)             ## 00001D38
	sll     t2, v0,  1                 
	sra     t9, t8, 10                 
	sll     t0, t9,  4                 
	addu    t1, t7, t0                 
	addu    t3, t1, t2                 
	lb      t4, 0x0000(t3)             ## 00000000
	ori     $at, $at, 0x1CBC           ## $at = 00011CBC
	addu    v0, s0, $at                
	sb      t4, 0x0003(s1)             ## 00000003
	lb      t5, 0x0003(s1)             ## 00000003
	beql    v1, t5, lbl_808B9474       
	lui     $at, 0x0001                ## $at = 00010000
	lw      t8, 0x0000(v0)             ## 00000000
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1CD0           ## $at = 00011CD0
	sw      t8, 0x0000(a1)             ## FFFFFFD8
	lw      t6, 0x0004(v0)             ## 00000004
	addu    v1, s0, $at                
	lui     $at, 0x0001                ## $at = 00010000
	sw      t6, 0x0004(a1)             ## FFFFFFDC
	lw      t8, 0x0008(v0)             ## 00000008
	addu    $at, $at, s0               
	sw      t8, 0x0008(a1)             ## FFFFFFE0
	lw      t6, 0x000C(v0)             ## 0000000C
	sw      t6, 0x000C(a1)             ## FFFFFFE4
	lw      t8, 0x0010(v0)             ## 00000010
	sw      t8, 0x0010(a1)             ## FFFFFFE8
	lw      t7, 0x0000(v1)             ## 00000000
	sw      t7, 0x0000(v0)             ## 00000000
	lw      t9, 0x0004(v1)             ## 00000004
	sw      t9, 0x0004(v0)             ## 00000004
	lw      t7, 0x0008(v1)             ## 00000008
	sw      t7, 0x0008(v0)             ## 00000008
	lw      t9, 0x000C(v1)             ## 0000000C
	sw      t9, 0x000C(v0)             ## 0000000C
	lw      t7, 0x0010(v1)             ## 00000010
	sw      t7, 0x0010(v0)             ## 00000010
	lw      t1, 0x0000(a1)             ## FFFFFFD8
	sw      t1, 0x0000(v1)             ## 00000000
	lw      t0, 0x0004(a1)             ## FFFFFFDC
	sw      t0, 0x0004(v1)             ## 00000004
	lw      t1, 0x0008(a1)             ## FFFFFFE0
	sw      t1, 0x0008(v1)             ## 00000008
	lw      t0, 0x000C(a1)             ## FFFFFFE4
	sw      t0, 0x000C(v1)             ## 0000000C
	lw      t1, 0x0010(a1)             ## FFFFFFE8
	sw      t1, 0x0010(v1)             ## 00000010
	lbu     t2, 0x1CEC(a0)             ## 00001CEC
	xori    t3, t2, 0x0001             ## t3 = 00000001
	sb      t3, 0x1CEC($at)            ## 00011CEC
	lui     $at, 0x0001                ## $at = 00010000
lbl_808B9474:
	ori     $at, $at, 0x1CBC           ## $at = 00011CBC
	addu    a1, s0, $at                
	jal     func_80080C98              
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_8009D94C              
	addiu   a2, $zero, 0x0EFF          ## a2 = 00000EFF
lbl_808B9494:
	mtc1    $zero, $f8                 ## $f8 = 0.00
	sh      $zero, 0x0154(s1)          ## 00000154
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_808B8380              
	swc1    $f8, 0x0060(s1)            ## 00000060
	beq     v0, $zero, lbl_808B94E4    
	lw      t4, 0x004C($sp)            
	lw      t5, 0x066C(t4)             ## 0000066C
	or      a0, s1, $zero              ## a0 = 00000000
	lui     a1, %hi(func_808B9680)     ## a1 = 808C0000
	andi    t6, t5, 0x0800             ## t6 = 00000000
	bnel    t6, $zero, lbl_808B94E8    
	lw      $ra, 0x001C($sp)           
	jal     func_808B8370              
	addiu   a1, a1, %lo(func_808B9680) ## a1 = 808B9680
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	jal     func_800218EC              
	addiu   a2, $zero, 0x0002          ## a2 = 00000002
lbl_808B94E4:
	lw      $ra, 0x001C($sp)           
lbl_808B94E8:
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000


func_808B94F8:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s0, 0x0030($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      a1, 0x004C($sp)            
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f4                   ## $f4 = 20.00
	lwc1    $f0, 0x0060(s0)            ## 00000060
	addiu   a0, s0, 0x0060             ## a0 = 00000060
	lui     a1, 0x41A0                 ## a1 = 41A00000
	c.lt.s  $f0, $f4                   
	nop
	bc1fl   lbl_808B9540               
	mfc1    a2, $f0                    
	jal     func_8006385C              
	lui     a2, 0x4100                 ## a2 = 41000000
	lwc1    $f0, 0x0060(s0)            ## 00000060
	mfc1    a2, $f0                    
lbl_808B9540:
	addiu   a0, s0, 0x0028             ## a0 = 00000028
	jal     func_8006385C              
	lw      a1, 0x000C(s0)             ## 0000000C
	beq     v0, $zero, lbl_808B9628    
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f6                   ## $f6 = 20.00
	lwc1    $f8, 0x0060(s0)            ## 00000060
	lui     $at, 0x4100                ## $at = 41000000
	or      a1, s0, $zero              ## a1 = 00000000
	c.lt.s  $f6, $f8                   
	addiu   a2, s0, 0x0024             ## a2 = 00000024
	lui     a3, 0x4234                 ## a3 = 42340000
	addiu   t6, $zero, 0x000A          ## t6 = 0000000A
	bc1f    lbl_808B95A8               
	addiu   t7, $zero, 0x01F4          ## t7 = 000001F4
	lwc1    $f10, 0x000C(s0)           ## 0000000C
	mtc1    $at, $f16                  ## $f16 = 8.00
	addiu   t8, $zero, 0x000A          ## t8 = 0000000A
	swc1    $f10, 0x0080(s0)           ## 00000080
	sw      $zero, 0x0020($sp)         
	sw      t8, 0x001C($sp)            
	sw      t7, 0x0018($sp)            
	sw      t6, 0x0010($sp)            
	lw      a0, 0x004C($sp)            
	jal     func_800260E8              
	swc1    $f16, 0x0014($sp)          
lbl_808B95A8:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x281D          ## a1 = 0000281D
	lw      a0, 0x004C($sp)            
	jal     func_8009D2F0              
	or      a1, $zero, $zero           ## a1 = 00000000
	or      a0, v0, $zero              ## a0 = 00000000
	jal     func_8007D85C              
	addiu   a1, $zero, 0x0003          ## a1 = 00000003
	sll     a0, v0, 16                 
	sw      v0, 0x0044($sp)            
	sra     a0, a0, 16                 
	jal     func_8007D668              
	addiu   a1, $zero, 0x80E8          ## a1 = FFFF80E8
	lh      a0, 0x0046($sp)            
	addiu   a1, $zero, 0x0002          ## a1 = 00000002
	or      a2, $zero, $zero           ## a2 = 00000000
	or      a3, $zero, $zero           ## a3 = 00000000
	sw      $zero, 0x0010($sp)         
	jal     func_8007D738              
	sw      a0, 0x003C($sp)            
	lw      a0, 0x003C($sp)            
	jal     func_8007D6B0              
	addiu   a1, $zero, 0x000A          ## a1 = 0000000A
	lwc1    $f12, 0x008C(s0)           ## 0000008C
	addiu   a1, $zero, 0x00B4          ## a1 = 000000B4
	addiu   a2, $zero, 0x0014          ## a2 = 00000014
	jal     func_800915CC              
	addiu   a3, $zero, 0x0064          ## a3 = 00000064
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_808B932C              
	lw      a1, 0x004C($sp)            
lbl_808B9628:
	lw      $ra, 0x0034($sp)           
	lw      s0, 0x0030($sp)            
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000
	jr      $ra                        
	nop


func_808B963C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	addiu   a1, $zero, 0x0064          ## a1 = 00000064
	addiu   a2, $zero, 0x000A          ## a2 = 0000000A
	jal     func_800637D4              
	addiu   a0, a0, 0x0156             ## a0 = 00000156
	beq     v0, $zero, lbl_808B9670    
	lw      a0, 0x0018($sp)            
	jal     func_808B932C              
	lw      a1, 0x001C($sp)            
lbl_808B9670:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808B9680:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lb      v0, 0x015F(a3)             ## 0000015F
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x0007          ## a2 = 00000007
	slti    v1, v0, 0x001F             
	xori    v1, v1, 0x0001             ## v1 = 00000001
	addiu   t6, v0, 0x0001             ## t6 = 00000001
	beq     v1, $zero, lbl_808B96C8    
	sb      t6, 0x015F(a3)             ## 0000015F
	lw      a0, 0x001C($sp)            
	jal     func_800218EC              
	sw      a3, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_808B8380              
	lw      a1, 0x001C($sp)            
lbl_808B96C8:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808B96D8:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0030($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      a1, 0x0044($sp)            
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	mtc1    $zero, $f0                 ## $f0 = 0.00
	addiu   t6, $zero, 0x0004          ## t6 = 00000004
	sw      t6, 0x0014($sp)            
	mfc1    a2, $f0                    
	mfc1    a3, $f0                    
	lw      a0, 0x0044($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	jal     func_80021E6C              
	swc1    $f0, 0x0010($sp)           
	lhu     t7, 0x0088(s0)             ## 00000088
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a1, %hi(func_808B97D4)     ## a1 = 808C0000
	andi    t8, t7, 0x0001             ## t8 = 00000000
	beql    t8, $zero, lbl_808B97C4    
	lw      $ra, 0x0034($sp)           
	jal     func_808B8370              
	addiu   a1, a1, %lo(func_808B97D4) ## a1 = 808B97D4
	lui     t9, 0x8012                 ## t9 = 80120000
	lhu     t9, -0x4B4E(t9)            ## 8011B4B2
	addiu   t2, $zero, 0x000A          ## t2 = 0000000A
	andi    t0, t9, 0x0001             ## t0 = 00000000
	bnel    t0, $zero, lbl_808B97C4    
	lw      $ra, 0x0034($sp)           
	lw      t1, 0x0118(s0)             ## 00000118
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x281D          ## a1 = 0000281D
	sw      t1, 0x003C($sp)            
	jal     func_80022FD0              
	sh      t2, 0x0154(s0)             ## 00000154
	lw      t3, 0x003C($sp)            
	lw      a0, 0x0044($sp)            
	addiu   a1, $zero, 0x0002          ## a1 = 00000002
	addiu   a2, $zero, 0x000A          ## a2 = 0000000A
	jal     func_808BA0E8              
	lh      a3, 0x01AC(t3)             ## 000001AC
	lui     $at, 0x4100                ## $at = 41000000
	mtc1    $at, $f4                   ## $f4 = 8.00
	addiu   t4, $zero, 0x0014          ## t4 = 00000014
	addiu   t5, $zero, 0x01F4          ## t5 = 000001F4
	addiu   t6, $zero, 0x000A          ## t6 = 0000000A
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	sw      t7, 0x0020($sp)            
	sw      t6, 0x001C($sp)            
	sw      t5, 0x0018($sp)            
	sw      t4, 0x0010($sp)            
	lw      a0, 0x0044($sp)            
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   a2, s0, 0x0024             ## a2 = 00000024
	lui     a3, 0x428C                 ## a3 = 428C0000
	jal     func_800260E8              
	swc1    $f4, 0x0014($sp)           
	lw      $ra, 0x0034($sp)           
lbl_808B97C4:
	lw      s0, 0x0030($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_808B97D4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lh      v0, 0x0154(a0)             ## 00000154
	beq     v0, $zero, lbl_808B9850    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x0154(a0)             ## 00000154
	lh      t7, 0x0154(a0)             ## 00000154
	lui     $at, 0x437A                ## $at = 437A0000
	mtc1    $at, $f8                   ## $f8 = 250.00
	mtc1    t7, $f4                    ## $f4 = 0.00
	lui     $at, 0x42C8                ## $at = 42C80000
	mtc1    $at, $f16                  ## $f16 = 100.00
	cvt.s.w $f6, $f4                   
	sw      a0, 0x0018($sp)            
	mul.s   $f10, $f6, $f8             
	jal     func_800CF470              
	div.s   $f12, $f10, $f16           
	lw      a0, 0x0018($sp)            
	lui     $at, 0x4040                ## $at = 40400000
	mtc1    $at, $f6                   ## $f6 = 3.00
	lh      t8, 0x0154(a0)             ## 00000154
	lui     $at, 0x4120                ## $at = 41200000
	mtc1    $at, $f10                  ## $f10 = 10.00
	mtc1    t8, $f18                   ## $f18 = 0.00
	nop
	cvt.s.w $f4, $f18                  
	mul.s   $f8, $f4, $f6              
	div.s   $f16, $f8, $f10            
	mul.s   $f18, $f16, $f0            
	swc1    $f18, 0x00BC(a0)           ## 000000BC
lbl_808B9850:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808B9860:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0020($sp)            
	sw      a1, 0x0024($sp)            
	lw      t6, 0x0020($sp)            
	lw      t8, 0x0020($sp)            
	lui     $at, 0xC040                ## $at = C0400000
	lh      v0, 0x0154(t6)             ## 00000154
	beq     v0, $zero, lbl_808B9894    
	addiu   t7, v0, 0xFFFF             ## t7 = FFFFFFFF
	sh      t7, 0x0154(t8)             ## 00000154
	lw      t9, 0x0020($sp)            
	lh      v0, 0x0154(t9)             ## 00000154
lbl_808B9894:
	andi    t0, v0, 0x0001             ## t0 = 00000000
	beql    t0, $zero, lbl_808B98B0    
	mtc1    $zero, $f0                 ## $f0 = 0.00
	mtc1    $at, $f0                   ## $f0 = -3.00
	beq     $zero, $zero, lbl_808B98B8 
	lui     $at, 0xC208                ## $at = C2080000
	mtc1    $zero, $f0                 ## $f0 = 0.00
lbl_808B98B0:
	nop
	lui     $at, 0xC208                ## $at = C2080000
lbl_808B98B8:
	mtc1    $at, $f4                   ## $f4 = -34.00
	lw      a0, 0x0020($sp)            
	mtc1    $zero, $f8                 ## $f8 = 0.00
	add.s   $f6, $f4, $f0              
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lui     a3, 0x41A0                 ## a3 = 41A00000
	addiu   a0, a0, 0x0028             ## a0 = 00000028
	mfc1    a1, $f6                    
	jal     func_80064178              
	swc1    $f8, 0x0010($sp)           
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_808B98F0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lw      v0, 0x1C44(a1)             ## 00001C44
	lui     $at, 0x1000                ## $at = 10000000
	ori     $at, $at, 0x04C0           ## $at = 100004C0
	lw      t6, 0x066C(v0)             ## 0000066C
	and     t7, t6, $at                
	beql    t7, $zero, lbl_808B992C    
	lw      t9, 0x0164(a0)             ## 00000164
	lw      t9, 0x0164(a0)             ## 00000164
	lui     t8, %hi(func_808B87F0)     ## t8 = 808C0000
	addiu   t8, t8, %lo(func_808B87F0) ## t8 = 808B87F0
	bnel    t8, t9, lbl_808B9938       
	lw      $ra, 0x0014($sp)           
	lw      t9, 0x0164(a0)             ## 00000164
lbl_808B992C:
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x0014($sp)           
lbl_808B9938:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808B9944:
	addiu   $sp, $sp, 0xFF38           ## $sp = FFFFFF38
	sdc1    $f20, 0x0018($sp)          
	sw      s2, 0x0050($sp)            
	mtc1    $zero, $f20                ## $f20 = 0.00
	or      s2, a2, $zero              ## s2 = 00000000
	sw      $ra, 0x006C($sp)           
	sw      s8, 0x0068($sp)            
	sw      s7, 0x0064($sp)            
	sw      s6, 0x0060($sp)            
	sw      s5, 0x005C($sp)            
	sw      s4, 0x0058($sp)            
	sw      s3, 0x0054($sp)            
	sw      s1, 0x004C($sp)            
	sw      s0, 0x0048($sp)            
	sdc1    $f30, 0x0040($sp)          
	sdc1    $f28, 0x0038($sp)          
	sdc1    $f26, 0x0030($sp)          
	sdc1    $f24, 0x0028($sp)          
	sdc1    $f22, 0x0020($sp)          
	sw      a0, 0x00C8($sp)            
	sw      a1, 0x00CC($sp)            
	lw      t6, 0x00CC($sp)            
	lui     $at, %hi(var_808BA3A4)     ## $at = 808C0000
	lwc1    $f8, %lo(var_808BA3A4)($at) 
	lh      t7, 0x0156(t6)             ## 00000156
	mov.s   $f22, $f20                 
	addiu   a0, $sp, 0x0088            ## a0 = FFFFFFC0
	mtc1    t7, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	mul.s   $f10, $f6, $f8             
	jal     func_800AA740              
	swc1    $f10, 0x0080($sp)          
	lui     $at, %hi(var_808BA3A8)     ## $at = 808C0000
	lwc1    $f30, %lo(var_808BA3A8)($at) 
	lui     $at, %hi(var_808BA3AC)     ## $at = 808C0000
	lwc1    $f28, %lo(var_808BA3AC)($at) 
	lui     $at, 0x4448                ## $at = 44480000
	mtc1    $at, $f26                  ## $f26 = 800.00
	lui     $at, 0x3F80                ## $at = 3F800000
	lui     s3, %hi(var_808BA364)      ## s3 = 808C0000
	lui     s5, 0xDA38                 ## s5 = DA380000
	mtc1    $at, $f24                  ## $f24 = 1.00
	ori     s5, s5, 0x0003             ## s5 = DA380003
	addiu   s3, s3, %lo(var_808BA364)  ## s3 = 808BA364
	or      s1, $zero, $zero           ## s1 = 00000000
	addiu   s8, $zero, 0x0001          ## s8 = 00000001
	addiu   s7, $zero, 0x0008          ## s7 = 00000008
	lui     s6, 0xDE00                 ## s6 = DE000000
	addiu   s4, $zero, 0x0064          ## s4 = 00000064
lbl_808B9A0C:
	mov.s   $f12, $f22                 
	jal     func_800AAD4C              
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	andi    t8, s1, 0x0001             ## t8 = 00000000
	bne     t8, $zero, lbl_808B9A3C    
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mfc1    a2, $f20                   
	mov.s   $f12, $f20                 
	jal     func_800AA7F4              
	mov.s   $f14, $f26                 
	beq     $zero, $zero, lbl_808B9A80 
	lw      t9, 0x00CC($sp)            
lbl_808B9A3C:
	beq     s1, s8, lbl_808B9A4C       
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	bne     s1, $at, lbl_808B9A68      
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
lbl_808B9A4C:
	mfc1    a2, $f20                   
	mov.s   $f12, $f20                 
	mov.s   $f14, $f30                 
	jal     func_800AA7F4              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	beq     $zero, $zero, lbl_808B9A80 
	lw      t9, 0x00CC($sp)            
lbl_808B9A68:
	lui     $at, %hi(var_808BA3B0)     ## $at = 808C0000
	mfc1    a2, $f20                   
	lwc1    $f14, %lo(var_808BA3B0)($at) 
	jal     func_800AA7F4              
	mov.s   $f12, $f20                 
	lw      t9, 0x00CC($sp)            
lbl_808B9A80:
	lwc1    $f14, 0x0080($sp)          
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lh      t0, 0x0156(t9)             ## 00000156
	beql    s4, t0, lbl_808B9AA4       
	or      s0, s2, $zero              ## s0 = 00000000
	mfc1    a2, $f24                   
	jal     func_800AA8FC              
	mov.s   $f12, $f24                 
	or      s0, s2, $zero              ## s0 = 00000000
lbl_808B9AA4:
	sw      s5, 0x0000(s0)             ## 00000000
	lw      t1, 0x00C8($sp)            
	addiu   s2, s2, 0x0008             ## s2 = 00000008
	jal     func_800AB900              
	lw      a0, 0x0000(t1)             ## 00000000
	sw      v0, 0x0004(s0)             ## 00000004
	or      v1, s2, $zero              ## v1 = 00000008
	sw      s6, 0x0000(v1)             ## 00000008
	lw      t2, 0x0000(s3)             ## 808BA364
	addiu   s2, s2, 0x0008             ## s2 = 00000010
	sub.s   $f22, $f22, $f28           
	sw      t2, 0x0004(v1)             ## 0000000C
	jal     func_800AA764              
	addiu   a0, $sp, 0x0088            ## a0 = FFFFFFC0
	addiu   s1, s1, 0x0001             ## s1 = 00000001
	bne     s1, s7, lbl_808B9A0C       
	addiu   s3, s3, 0x0004             ## s3 = 808BA368
	or      v0, s2, $zero              ## v0 = 00000010
	lw      $ra, 0x006C($sp)           
	ldc1    $f20, 0x0018($sp)          
	ldc1    $f22, 0x0020($sp)          
	ldc1    $f24, 0x0028($sp)          
	ldc1    $f26, 0x0030($sp)          
	ldc1    $f28, 0x0038($sp)          
	ldc1    $f30, 0x0040($sp)          
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
	addiu   $sp, $sp, 0x00C8           ## $sp = 00000000


func_808B9B34:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	jal     func_8007943C              
	lw      a0, 0x001C($sp)            
	beq     v0, $zero, lbl_808B9B5C    
	lw      a1, 0x001C($sp)            
	beq     $zero, $zero, lbl_808B9BD0 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_808B9B5C:
	lw      a0, 0x0018($sp)            
	jal     func_8002140C              
	addiu   a1, a1, 0x00E0             ## a1 = 000000E0
	lw      t6, 0x0018($sp)            
	lh      v1, 0x00B6(t6)             ## 000000B6
	lh      t7, 0x008A(t6)             ## 0000008A
	subu    a0, v0, v1                 
	sll     a0, a0, 16                 
	subu    a1, t7, v1                 
	sra     a0, a0, 16                 
	sll     a1, a1, 16                 
	bgez    a0, lbl_808B9B94           
	sra     a1, a1, 16                 
	subu    a0, $zero, a0              
lbl_808B9B94:
	bgezl   a1, lbl_808B9BA4           
	slti    $at, a1, 0x4000            
	subu    a1, $zero, a1              
	slti    $at, a1, 0x4000            
lbl_808B9BA4:
	beq     $at, $zero, lbl_808B9BB0   
	slti    $at, a0, 0x4001            
	beq     $at, $zero, lbl_808B9BC8   
lbl_808B9BB0:
	slti    $at, a1, 0x4001            
	bne     $at, $zero, lbl_808B9BD0   
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	slti    $at, a0, 0x4000            
	beq     $at, $zero, lbl_808B9BD0   
	nop
lbl_808B9BC8:
	beq     $zero, $zero, lbl_808B9BD0 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_808B9BD0:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_808B9BE0:
	addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
	sw      s1, 0x0018($sp)            
	or      s1, a0, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      s0, 0x0014($sp)            
	sw      a1, 0x0064($sp)            
	lb      t6, 0x015D(s1)             ## 0000015D
	lb      t7, 0x001E(s1)             ## 0000001E
	bnel    t6, t7, lbl_808BA0D8       
	lw      $ra, 0x001C($sp)           
	lbu     t8, 0x015B(s1)             ## 0000015B
	or      a0, s1, $zero              ## a0 = 00000000
	beql    t8, $zero, lbl_808B9C2C    
	lbu     t9, 0x015C(s1)             ## 0000015C
	jal     func_808B9B34              
	lw      a1, 0x0064($sp)            
	beql    v0, $zero, lbl_808BA0D8    
	lw      $ra, 0x001C($sp)           
	lbu     t9, 0x015C(s1)             ## 0000015C
lbl_808B9C2C:
	lui     t1, %hi(var_808BA1E4)      ## t1 = 808C0000
	addiu   t1, t1, %lo(var_808BA1E4)  ## t1 = 808BA1E4
	sll     t0, t9,  2                 
	subu    t0, t0, t9                 
	sll     t0, t0,  2                 
	addu    t2, t0, t1                 
	sw      t2, 0x0050($sp)            
	lw      t3, 0x0064($sp)            
	lw      a0, 0x0000(t3)             ## 00000000
	jal     func_8007E298              
	or      s0, a0, $zero              ## s0 = 00000000
	lbu     t4, 0x015C(s1)             ## 0000015C
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	lw      a0, 0x0064($sp)            
	bne     t4, $at, lbl_808B9E1C      
	lw      t1, 0x0050($sp)            
	or      a1, s1, $zero              ## a1 = 00000000
	jal     func_808B9944              
	lw      a2, 0x02C0(s0)             ## 000002C0
	sw      v0, 0x02C0(s0)             ## 000002C0
	lwc1    $f0, 0x0160(s1)            ## 00000160
	mtc1    $zero, $f4                 ## $f4 = 0.00
	nop
	c.eq.s  $f4, $f0                   
	nop
	bc1tl   lbl_808BA06C               
	lb      t2, 0x015E(s1)             ## 0000015E
	lh      t5, 0x0156(s1)             ## 00000156
	lui     $at, %hi(var_808BA3B4)     ## $at = 808C0000
	lwc1    $f10, %lo(var_808BA3B4)($at) 
	mtc1    t5, $f6                    ## $f6 = 0.00
	lw      t6, 0x0064($sp)            
	cvt.s.w $f8, $f6                   
	mul.s   $f16, $f8, $f10            
	nop
	mul.s   $f18, $f16, $f0            
	swc1    $f18, 0x0044($sp)          
	jal     func_8007E298              
	lw      a0, 0x0000(t6)             ## 00000000
	mtc1    $zero, $f12                ## $f12 = 0.00
	lui     t8, 0xFB00                 ## t8 = FB000000
	lw      v0, 0x02C0(s0)             ## 000002C0
	lui     $at, 0x437F                ## $at = 437F0000
	mtc1    $at, $f4                   ## $f4 = 255.00
	addiu   t7, v0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s0)             ## 000002C0
	sw      t8, 0x0000(v0)             ## 00000000
	lwc1    $f6, 0x0044($sp)           
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	lui     $at, 0x4F00                ## $at = 4F000000
	mul.s   $f8, $f4, $f6              
	cfc1    t9, $f31                   
	ctc1    t0, $f31                   
	nop
	cvt.w.s $f10, $f8                  
	cfc1    t0, $f31                   
	nop
	andi    t0, t0, 0x0078             ## t0 = 00000000
	beql    t0, $zero, lbl_808B9D64    
	mfc1    t0, $f10                   
	mtc1    $at, $f10                  ## $f10 = 2147484000.00
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	sub.s   $f10, $f8, $f10            
	ctc1    t0, $f31                   
	nop
	cvt.w.s $f10, $f10                 
	cfc1    t0, $f31                   
	nop
	andi    t0, t0, 0x0078             ## t0 = 00000000
	bne     t0, $zero, lbl_808B9D58    
	nop
	mfc1    t0, $f10                   
	lui     $at, 0x8000                ## $at = 80000000
	beq     $zero, $zero, lbl_808B9D70 
	or      t0, t0, $at                ## t0 = 80000000
lbl_808B9D58:
	beq     $zero, $zero, lbl_808B9D70 
	addiu   t0, $zero, 0xFFFF          ## t0 = FFFFFFFF
	mfc1    t0, $f10                   
lbl_808B9D64:
	nop
	bltz    t0, lbl_808B9D58           
	nop
lbl_808B9D70:
	ctc1    t9, $f31                   
	andi    t1, t0, 0x00FF             ## t1 = 000000FF
	sw      t1, 0x0004(v0)             ## 00000004
	lw      t2, 0x0050($sp)            
	mov.s   $f14, $f12                 
	lui     $at, 0x4F80                ## $at = 4F800000
	lbu     t3, 0x0009(t2)             ## 00000009
	mtc1    t3, $f16                   ## $f16 = 0.00
	bgez    t3, lbl_808B9DA4           
	cvt.s.w $f16, $f16                 
	mtc1    $at, $f18                  ## $f18 = 4294967000.00
	nop
	add.s   $f16, $f16, $f18           
lbl_808B9DA4:
	mfc1    a2, $f16                   
	jal     func_800AA7F4              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lwc1    $f12, 0x0044($sp)          
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	mfc1    a2, $f12                   
	jal     func_800AA8FC              
	mov.s   $f14, $f12                 
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t5, 0xDA38                 ## t5 = DA380000
	ori     t5, t5, 0x0003             ## t5 = DA380003
	addiu   t4, v1, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(s0)             ## 000002C0
	sw      t5, 0x0000(v1)             ## 00000000
	lw      t6, 0x0064($sp)            
	lw      a0, 0x0000(t6)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x003C($sp)            
	lw      a1, 0x003C($sp)            
	sw      v0, 0x0004(a1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t8, 0xDE00                 ## t8 = DE000000
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s0)             ## 000002C0
	sw      t8, 0x0000(v1)             ## 00000000
	lw      t9, 0x0050($sp)            
	lw      t0, 0x0004(t9)             ## 00000004
	sw      t0, 0x0004(v1)             ## 00000004
	beq     $zero, $zero, lbl_808BA06C 
	lb      t2, 0x015E(s1)             ## 0000015E
lbl_808B9E1C:
	lw      t2, 0x0004(t1)             ## 00000004
	lw      v0, 0x0064($sp)            
	lui     $at, 0x0001                ## $at = 00010000
	beq     t2, $zero, lbl_808B9ED0    
	addu    v0, v0, $at                
	lhu     t4, 0x001C(s1)             ## 0000001C
	lb      t7, 0x1CD0(v0)             ## 00001CD0
	lw      t3, 0x1D38(v0)             ## 00001D38
	sra     t5, t4, 10                 
	sll     t6, t5,  4                 
	bgez    t7, lbl_808B9E5C           
	addu    v1, t3, t6                 
	lb      v0, 0x0000(v1)             ## 00000000
	lb      t8, 0x0002(v1)             ## 00000002
	bnel    v0, t8, lbl_808B9EB0       
	lb      t0, 0x0003(s1)             ## 00000003
lbl_808B9E5C:
	lw      a0, 0x0064($sp)            
	addiu   a1, s1, 0x0024             ## a1 = 00000024
	jal     func_80063F00              
	addiu   a0, a0, 0x00E0             ## a0 = 000000E0
	lh      t9, 0x00B6(s1)             ## 000000B6
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	subu    v1, t9, v0                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	bltz    v1, lbl_808B9E90           
	subu    a2, $zero, v1              
	beq     $zero, $zero, lbl_808B9E90 
	or      a2, v1, $zero              ## a2 = 00000000
lbl_808B9E90:
	slti    $at, a2, 0x4000            
	beq     $at, $zero, lbl_808B9F40   
	lui     $at, %hi(var_808BA3B8)     ## $at = 808C0000
	jal     func_800AAB94              
	lwc1    $f12, %lo(var_808BA3B8)($at) 
	beq     $zero, $zero, lbl_808B9F44 
	lw      v1, 0x02C0(s0)             ## 000002C0
	lb      t0, 0x0003(s1)             ## 00000003
lbl_808B9EB0:
	lui     $at, %hi(var_808BA3BC)     ## $at = 808C0000
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	bnel    t0, v0, lbl_808B9F44       
	lw      v1, 0x02C0(s0)             ## 000002C0
	jal     func_800AAB94              
	lwc1    $f12, %lo(var_808BA3BC)($at) 
	beq     $zero, $zero, lbl_808B9F44 
	lw      v1, 0x02C0(s0)             ## 000002C0
lbl_808B9ED0:
	lbu     t1, 0x015A(s1)             ## 0000015A
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bnel    t1, $at, lbl_808B9F44      
	lw      v1, 0x02C0(s0)             ## 000002C0
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t4, 0xDB06                 ## t4 = DB060000
	ori     t4, t4, 0x0020             ## t4 = DB060020
	addiu   t2, v1, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(s0)             ## 000002C0
	sw      t4, 0x0000(v1)             ## 00000000
	lh      t5, 0x0158(s1)             ## 00000158
	lui     a0, %hi(var_808BA384)      ## a0 = 808C0000
	lui     t0, 0x8012                 ## t0 = 80120000
	sll     t3, t5,  2                 
	addu    a0, a0, t3                 
	lw      a0, %lo(var_808BA384)(a0)  
	lui     $at, 0x00FF                ## $at = 00FF0000
	ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
	sll     t7, a0,  4                 
	srl     t8, t7, 28                 
	sll     t9, t8,  2                 
	addu    t0, t0, t9                 
	lw      t0, 0x0C38(t0)             ## 80120C38
	and     t6, a0, $at                
	lui     $at, 0x8000                ## $at = 80000000
	addu    t1, t6, t0                 
	addu    t2, t1, $at                
	sw      t2, 0x0004(v1)             ## 00000004
lbl_808B9F40:
	lw      v1, 0x02C0(s0)             ## 000002C0
lbl_808B9F44:
	lui     t5, 0xDA38                 ## t5 = DA380000
	ori     t5, t5, 0x0003             ## t5 = DA380003
	addiu   t4, v1, 0x0008             ## t4 = 00000008
	sw      t4, 0x02C0(s0)             ## 000002C0
	sw      t5, 0x0000(v1)             ## 00000000
	lw      t3, 0x0064($sp)            
	lw      a0, 0x0000(t3)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x0028($sp)            
	lw      a1, 0x0028($sp)            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	sw      v0, 0x0004(a1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t8, 0xDE00                 ## t8 = DE000000
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02C0(s0)             ## 000002C0
	sw      t8, 0x0000(v1)             ## 00000000
	lw      t9, 0x0050($sp)            
	lw      t6, 0x0000(t9)             ## 00000000
	sw      t6, 0x0004(v1)             ## 00000004
	lwc1    $f0, 0x0160(s1)            ## 00000160
	lw      t0, 0x0050($sp)            
	c.eq.s  $f4, $f0                   
	nop
	bc1tl   lbl_808BA06C               
	lb      t2, 0x015E(s1)             ## 0000015E
	lw      t1, 0x0004(t0)             ## 00000004
	beql    t1, $zero, lbl_808BA06C    
	lb      t2, 0x015E(s1)             ## 0000015E
	lbu     t2, 0x0008(t0)             ## 00000008
	mtc1    $zero, $f12                ## $f12 = 0.00
	lui     $at, 0x4F80                ## $at = 4F800000
	mtc1    t2, $f6                    ## $f6 = 0.00
	bgez    t2, lbl_808B9FDC           
	cvt.s.w $f8, $f6                   
	mtc1    $at, $f10                  ## $f10 = 4294967000.00
	nop
	add.s   $f8, $f8, $f10             
lbl_808B9FDC:
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f16                  ## $f16 = 1.00
	lbu     t4, 0x0009(t0)             ## 00000009
	lui     $at, 0x4F80                ## $at = 4F800000
	sub.s   $f18, $f16, $f0            
	mtc1    t4, $f4                    ## $f4 = 0.00
	mul.s   $f14, $f8, $f18            
	bgez    t4, lbl_808BA00C           
	cvt.s.w $f4, $f4                   
	mtc1    $at, $f6                   ## $f6 = 4294967000.00
	nop
	add.s   $f4, $f4, $f6              
lbl_808BA00C:
	mfc1    a2, $f4                    
	jal     func_800AA7F4              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t3, 0xDA38                 ## t3 = DA380000
	ori     t3, t3, 0x0003             ## t3 = DA380003
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s0)             ## 000002C0
	sw      t3, 0x0000(v1)             ## 00000000
	lw      t7, 0x0064($sp)            
	lw      a0, 0x0000(t7)             ## 00000000
	jal     func_800AB900              
	sw      v1, 0x0020($sp)            
	lw      a1, 0x0020($sp)            
	sw      v0, 0x0004(a1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t9, 0xDE00                 ## t9 = DE000000
	addiu   t8, v1, 0x0008             ## t8 = 00000008
	sw      t8, 0x02C0(s0)             ## 000002C0
	sw      t9, 0x0000(v1)             ## 00000000
	lw      t6, 0x0050($sp)            
	lw      t1, 0x0004(t6)             ## 00000004
	sw      t1, 0x0004(v1)             ## 00000004
	lb      t2, 0x015E(s1)             ## 0000015E
lbl_808BA06C:
	lui     a2, 0x3CCC                 ## a2 = 3CCC0000
	ori     a2, a2, 0xCCCD             ## a2 = 3CCCCCCD
	beq     t2, $zero, lbl_808BA0D4    
	lui     $at, %hi(var_808BA3C0)     ## $at = 808C0000
	lwc1    $f12, %lo(var_808BA3C0)($at) 
	lui     $at, %hi(var_808BA3C4)     ## $at = 808C0000
	lwc1    $f14, %lo(var_808BA3C4)($at) 
	jal     func_800AA8FC              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	lbu     t0, 0x015A(s1)             ## 0000015A
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	lw      a0, 0x0064($sp)            
	bnel    t0, $at, lbl_808BA0B0      
	lbu     t4, 0x015C(s1)             ## 0000015C
	beq     $zero, $zero, lbl_808BA0CC 
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	lbu     t4, 0x015C(s1)             ## 0000015C
lbl_808BA0B0:
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	or      v0, $zero, $zero           ## v0 = 00000000
	bne     t4, $at, lbl_808BA0C8      
	nop
	beq     $zero, $zero, lbl_808BA0C8 
	addiu   v0, $zero, 0x0002          ## v0 = 00000002
lbl_808BA0C8:
	or      a2, v0, $zero              ## a2 = 00000002
lbl_808BA0CC:
	jal     func_80026DC8              
	lb      a1, 0x015E(s1)             ## 0000015E
lbl_808BA0D4:
	lw      $ra, 0x001C($sp)           
lbl_808BA0D8:
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0060           ## $sp = 00000000


func_808BA0E8:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      a3, 0x0034($sp)            
	sll     a3, a3, 16                 
	sra     a3, a3, 16                 
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	sw      a2, 0x0030($sp)            
	sll     a1, a3, 16                 
	jal     func_8009D2F0              
	sra     a1, a1, 16                 
	or      a0, v0, $zero              ## a0 = 00000000
	jal     func_8007D85C              
	addiu   a1, $zero, 0x0003          ## a1 = 00000003
	mtc1    $zero, $f12                ## $f12 = 0.00
	sh      v0, 0x0026($sp)            
	addiu   a1, $zero, 0x00B4          ## a1 = 000000B4
	addiu   a2, $zero, 0x0014          ## a2 = 00000014
	jal     func_8009151C              
	addiu   a3, $zero, 0x0064          ## a3 = 00000064
	lh      a0, 0x0026($sp)            
	jal     func_8007D668              
	addiu   a1, $zero, 0x4E20          ## a1 = 00004E20
	lh      a0, 0x0026($sp)            
	lh      a1, 0x002E($sp)            
	or      a2, $zero, $zero           ## a2 = 00000000
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_8007D738              
	sw      $zero, 0x0010($sp)         
	lh      a0, 0x0026($sp)            
	jal     func_8007D6B0              
	lh      a1, 0x0032($sp)            
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop
	nop

.section .data

var_808BA180: .word 0x002E0A00, 0x00000010, 0x00010000, 0x00000168
.word func_808B8568
.word func_808B8780
.word func_808B98F0
.word func_808B9BE0
var_808BA1A0: .byte 0x00, 0x37
var_808BA1A2: .byte 0x04, 0x04, 0x00, 0x1C, 0x05, 0x05, 0x00, 0x36, 0x00, 0x01, 0x00, 0x2B, 0x02, 0x02
var_808BA1B0: .word \
0x00960303, 0x00010808, 0x00B00707, 0x00010808, \
0x002C090A, 0x01390B0B, 0x016D0606, 0x00590C0D, \
0x01870E0F, 0x006B1010, 0x004D1111, 0x01791212, \
0x018F1313
var_808BA1E4: .word \
0x060067A0, 0x04050600, 0x820C140F, 0x06006910, \
0x04050600, 0x820C140F, 0x060000C0, 0x060001F0, \
0xF00E460F, 0x06000590, 0x06006460, 0x006E460F, \
0x06012AB0, 0x00000000, 0x820C460F, 0x0601D820, \
0x00000000, 0x820C460F, 0x06000100, 0x060001F0, \
0xF00E320F, 0x060010C0, 0x00000000, 0x820C460F, \
0x0404F510, 0x04050600, 0x820C140F, 0x06010CB0, \
0x04050600, 0x820C140F, 0x06011F20, 0x04050600, \
0x820C140F, 0x060000C0, 0x04050600, 0x820C140F, \
0x06005D90, 0x04050600, 0x820C140F, 0x06007000, \
0x04050600, 0x820C140F, 0x06002620, 0x04050600, \
0x820C140F, 0x06003890, 0x04050600, 0x820C140F, \
0x06001D10, 0x04050600, 0x820C140F, 0x060010D0, \
0x04050600, 0x820C140F, 0x060020D0, 0x04050600, \
0x820C140F, 0x060000C0, 0x04050600, 0x820C140F
var_808BA2D4: .word 0xFFFFFFFF, 0x000601FF, 0x00FFFFFF
var_808BA2E0: .word 0xC0500001, 0xB0F40FA0, 0xB0F80064, 0x30FC0190
var_808BA2F0: .word \
0x00000200, 0x00010300, 0x00120300, 0x00020400, \
0x00030500, 0x00040800, 0x000A0900, 0x00190900, \
0x00060A00, 0x00170A00, 0x00050B00, 0x00070C00, \
0x00080C00, 0x00090D00, 0x000B0E00, 0x000D0F00, \
0x00411000, 0xFFFF0700
var_808BA338: .word \
0x00040015, 0x01000005, 0x00160200, 0x00070018, \
0x0300000A, 0x00190400, 0x00030014, 0x05000006, \
0x00170600, 0xFFFFFFFF, 0x00000000
var_808BA364: .word \
0x06000590, 0x06000BF0, 0x06002BD0, 0x060018B0, \
0x06001F10, 0x060018B0, 0x06001250, 0x06000BF0
var_808BA384: .word \
0x060065C0, 0x060035C0, 0x060055C0, 0x060045C0, \
0x06000000, 0x060025C0, 0x060015C0

.section .rodata

var_808BA3A0: .word 0x7F7FFFFF
var_808BA3A4: .word 0x3C23D70A
var_808BA3A8: .word 0x44542148
var_808BA3AC: .word 0x3F490FDB
var_808BA3B0: .word 0x44777C29
var_808BA3B4: .word 0x3C23D70A
var_808BA3B8: .word 0x40490FDB
var_808BA3BC: .word 0x40490FDB
var_808BA3C0: .word 0x3C23D70A
var_808BA3C4: .word 0x3C23D70A, 0x00000000, 0x00000000

