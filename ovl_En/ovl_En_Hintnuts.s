#include <mips.h>
.set noreorder
.set noat

.section .text
func_80B3DE80:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      s1, 0x0038($sp)            
	sw      s0, 0x0034($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x003C($sp)           
	lui     a1, %hi(var_80B3F6D8)      ## a1 = 80B40000
	addiu   a1, a1, %lo(var_80B3F6D8)  ## a1 = 80B3F6D8
	jal     func_80063F7C              
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t6, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	bne     t6, $at, lbl_80B3DED0      
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	lw      t7, 0x0004(s0)             ## 00000004
	addiu   $at, $zero, 0xFFFA         ## $at = FFFFFFFA
	and     t8, t7, $at                
	beq     $zero, $zero, lbl_80B3E00C 
	sw      t8, 0x0004(s0)             ## 00000004
lbl_80B3DED0:
	lui     a2, 0x8002                 ## a2 = 80020000
	addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
	jal     func_8001EC20              
	lui     a3, 0x420C                 ## a3 = 420C0000
	lui     a2, 0x0600                 ## a2 = 06000000
	lui     a3, 0x0600                 ## a3 = 06000000
	addiu   t9, s0, 0x018A             ## t9 = 0000018A
	addiu   t0, s0, 0x01C6             ## t0 = 000001C6
	addiu   t1, $zero, 0x000A          ## t1 = 0000000A
	sw      t1, 0x0018($sp)            
	sw      t0, 0x0014($sp)            
	sw      t9, 0x0010($sp)            
	addiu   a3, a3, 0x2F7C             ## a3 = 06002F7C
	addiu   a2, a2, 0x23B8             ## a2 = 060023B8
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8008C684              
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	addiu   a1, s0, 0x0204             ## a1 = 00000204
	sw      a1, 0x0044($sp)            
	jal     func_8004AB7C              
	or      a0, s1, $zero              ## a0 = 00000000
	lui     a3, %hi(var_80B3F6A0)      ## a3 = 80B40000
	lw      a1, 0x0044($sp)            
	addiu   a3, a3, %lo(var_80B3F6A0)  ## a3 = 80B3F6A0
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8004ACEC              
	or      a2, s0, $zero              ## a2 = 00000000
	lui     a2, %hi(var_80B3F6CC)      ## a2 = 80B40000
	addiu   a2, a2, %lo(var_80B3F6CC)  ## a2 = 80B3F6CC
	addiu   a0, s0, 0x0098             ## a0 = 00000098
	jal     func_80050344              
	or      a1, $zero, $zero           ## a1 = 00000000
	lh      a2, 0x001C(s0)             ## 0000001C
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	sra     a2, a2,  8                 
	andi    a2, a2, 0x00FF             ## a2 = 00000000
	sll     a2, a2, 16                 
	jal     func_800267D4              
	sra     a2, a2, 16                 
	lh      t3, 0x001C(s0)             ## 0000001C
	lhu     t2, 0x010E(s0)             ## 0000010E
	lui     $at, %hi(var_80B3F6D4)     ## $at = 80B40000
	andi    t4, t3, 0x00FF             ## t4 = 00000000
	sh      t4, 0x001C(s0)             ## 0000001C
	sh      t2, 0x0188(s0)             ## 00000188
	sh      $zero, %lo(var_80B3F6D4)($at) 
	lhu     t5, 0x010E(s0)             ## 0000010E
	addiu   $at, $zero, 0x109B         ## $at = 0000109B
	or      a0, s1, $zero              ## a0 = 00000000
	bne     t5, $at, lbl_80B3DFC0      
	nop
	jal     func_80020640              
	addiu   a1, $zero, 0x0009          ## a1 = 00000009
	beq     v0, $zero, lbl_80B3DFC0    
	nop
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B3E010 
	lw      $ra, 0x003C($sp)           
lbl_80B3DFC0:
	jal     func_80B3E0E0              
	or      a0, s0, $zero              ## a0 = 00000000
	lwc1    $f4, 0x0024(s0)            ## 00000024
	addiu   t7, $zero, 0x000A          ## t7 = 0000000A
	addiu   a0, s1, 0x1C24             ## a0 = 00001C24
	swc1    $f4, 0x0010($sp)           
	lwc1    $f6, 0x0028(s0)            ## 00000028
	or      a1, s0, $zero              ## a1 = 00000000
	or      a2, s1, $zero              ## a2 = 00000000
	swc1    $f6, 0x0014($sp)           
	lwc1    $f8, 0x002C(s0)            ## 0000002C
	sw      $zero, 0x001C($sp)         
	addiu   a3, $zero, 0x0192          ## a3 = 00000192
	swc1    $f8, 0x0018($sp)           
	lh      t6, 0x0032(s0)             ## 00000032
	sw      t7, 0x0028($sp)            
	sw      $zero, 0x0024($sp)         
	jal     func_800253F0              
	sw      t6, 0x0020($sp)            
lbl_80B3E00C:
	lw      $ra, 0x003C($sp)           
lbl_80B3E010:
	lw      s0, 0x0034($sp)            
	lw      s1, 0x0038($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000


func_80B3E020:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	or      a3, a1, $zero              ## a3 = 00000000
	lh      t6, 0x001C(a2)             ## 0000001C
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
	or      a0, a3, $zero              ## a0 = 00000000
	beql    t6, $at, lbl_80B3E050      
	lw      $ra, 0x0014($sp)           
	jal     func_8004ABCC              
	addiu   a1, a2, 0x0204             ## a1 = 00000204
	lw      $ra, 0x0014($sp)           
lbl_80B3E050:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3E05C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	lhu     t6, 0x010E(a2)             ## 0000010E
	beql    t6, $zero, lbl_80B3E0D4    
	lw      $ra, 0x0014($sp)           
	lbu     t7, 0x0002(a2)             ## 00000002
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bnel    t7, $at, lbl_80B3E0D4      
	lw      $ra, 0x0014($sp)           
	lh      t8, 0x001C(a2)             ## 0000001C
	lui     t9, %hi(var_80B3F6D4)      ## t9 = 80B40000
	beql    t8, $zero, lbl_80B3E0AC    
	lw      t0, 0x0004(a2)             ## 00000004
	lh      t9, %lo(var_80B3F6D4)(t9)  
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	bnel    t9, $at, lbl_80B3E0D4      
	lw      $ra, 0x0014($sp)           
	lw      t0, 0x0004(a2)             ## 00000004
lbl_80B3E0AC:
	addiu   $at, $zero, 0xFFFA         ## $at = FFFFFFFA
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
	and     t1, t0, $at                
	sw      t1, 0x0004(a2)             ## 00000004
	ori     t3, t1, 0x0009             ## t3 = 00000009
	sw      t3, 0x0004(a2)             ## 00000004
	lw      a0, 0x001C($sp)            
	jal     func_800265D4              
	addiu   a1, a0, 0x1C24             ## a1 = 00001C24
	lw      $ra, 0x0014($sp)           
lbl_80B3E0D4:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3E0E0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x2B90             ## a1 = 06002B90
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	addiu   a2, $zero, 0x0000          ## a2 = 00000000
	jal     func_8008D278              
	sw      a3, 0x0018($sp)            
	addiu   a0, $zero, 0x0064          ## a0 = 00000064
	jal     func_80063BF0              
	addiu   a1, $zero, 0x0032          ## a1 = 00000032
	lw      a3, 0x0018($sp)            
	lui     t1, %hi(func_80B3E590)     ## t1 = 80B40000
	addiu   t6, $zero, 0x0005          ## t6 = 00000005
	lw      t8, 0x0008(a3)             ## 00000008
	lbu     t9, 0x0215(a3)             ## 00000215
	lw      t7, 0x000C(a3)             ## 0000000C
	sw      t8, 0x0024(a3)             ## 00000024
	lw      t8, 0x0010(a3)             ## 00000010
	addiu   t1, t1, %lo(func_80B3E590) ## t1 = 80B3E590
	andi    t0, t9, 0xFFFE             ## t0 = 00000000
	sh      v0, 0x0184(a3)             ## 00000184
	sh      t6, 0x0246(a3)             ## 00000246
	sb      t0, 0x0215(a3)             ## 00000215
	sw      t1, 0x0180(a3)             ## 00000180
	sw      t7, 0x0028(a3)             ## 00000028
	sw      t8, 0x002C(a3)             ## 0000002C
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3E160:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x2894             ## a1 = 06002894
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	jal     func_8008D2D4              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	lui     t7, %hi(func_80B3E7F4)     ## t7 = 80B40000
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	addiu   t7, t7, %lo(func_80B3E7F4) ## t7 = 80B3E7F4
	sh      t6, 0x0184(a2)             ## 00000184
	sw      t7, 0x0180(a2)             ## 00000180
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3E1A8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x0168             ## a1 = 06000168
	jal     func_8008D1C4              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	lw      t7, 0x0018($sp)            
	lui     t6, %hi(func_80B3E93C)     ## t6 = 80B40000
	addiu   t6, t6, %lo(func_80B3E93C) ## t6 = 80B3E93C
	sw      t6, 0x0180(t7)             ## 00000180
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3E1E8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x2F7C             ## a1 = 06002F7C
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	lui     a2, 0xC040                 ## a2 = C0400000
	jal     func_8008D328              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	lui     t6, %hi(func_80B3E93C)     ## t6 = 80B40000
	addiu   t6, t6, %lo(func_80B3E93C) ## t6 = 80B3E93C
	lw      t7, 0x0180(a3)             ## 00000180
	lui     t0, %hi(func_80B3E878)     ## t0 = 80B40000
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	bne     t6, t7, lbl_80B3E238       
	addiu   t0, t0, %lo(func_80B3E878) ## t0 = 80B3E878
	addiu   t8, $zero, 0x1002          ## t8 = 00001002
	beq     $zero, $zero, lbl_80B3E23C 
	sh      t8, 0x0184(a3)             ## 00000184
lbl_80B3E238:
	sh      t9, 0x0184(a3)             ## 00000184
lbl_80B3E23C:
	sw      t0, 0x0180(a3)             ## 00000180
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3E250:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x24CC             ## a1 = 060024CC
	lui     a2, 0xC0A0                 ## a2 = C0A00000
	jal     func_8008D21C              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	lw      a0, 0x0018($sp)            
	jal     func_80022FD0              
	addiu   a1, $zero, 0x387D          ## a1 = 0000387D
	lw      t7, 0x0018($sp)            
	lui     t6, %hi(func_80B3EA78)     ## t6 = 80B40000
	addiu   t6, t6, %lo(func_80B3EA78) ## t6 = 80B3EA78
	sw      t6, 0x0180(t7)             ## 00000180
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3E2A0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x26C4             ## a1 = 060026C4
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	lui     a2, 0xC040                 ## a2 = C0400000
	jal     func_8008D21C              
	sw      a3, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	addiu   t6, $zero, 0x0025          ## t6 = 00000025
	addiu   a1, $zero, 0x3880          ## a1 = 00003880
	jal     func_80022FD0              
	sh      t6, 0x0246(a0)             ## 00000246
	lw      a3, 0x0018($sp)            
	lui     t5, %hi(func_80B3EB8C)     ## t5 = 80B40000
	addiu   t5, t5, %lo(func_80B3EB8C) ## t5 = 80B3EB8C
	lbu     t7, 0x0215(a3)             ## 00000215
	lh      v1, 0x001C(a3)             ## 0000001C
	andi    t8, t7, 0xFFFE             ## t8 = 00000000
	blez    v1, lbl_80B3E37C           
	sb      t8, 0x0215(a3)             ## 00000215
	slti    $at, v1, 0x0004            
	beql    $at, $zero, lbl_80B3E380   
	sw      t5, 0x0180(a3)             ## 00000180
	lbu     t9, 0x0002(a3)             ## 00000002
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	lui     a1, %hi(var_80B3F6D4)      ## a1 = 80B40000
	bne     t9, $at, lbl_80B3E37C      
	addiu   a1, a1, %lo(var_80B3F6D4)  ## a1 = 80B3F6D4
	lh      v0, 0x0000(a1)             ## 80B3F6D4
	addiu   $at, $zero, 0xFFFC         ## $at = FFFFFFFC
	lui     t4, %hi(func_80B3EBF0)     ## t4 = 80B40000
	bnel    v0, $at, lbl_80B3E33C      
	addiu   a0, v0, 0x0001             ## a0 = 00000001
	sh      $zero, 0x0000(a1)          ## 80B3F6D4
	lh      v0, 0x0000(a1)             ## 80B3F6D4
	lh      v1, 0x001C(a3)             ## 0000001C
	addiu   a0, v0, 0x0001             ## a0 = 00000001
lbl_80B3E33C:
	bne     a0, v1, lbl_80B3E34C       
	nop
	beq     $zero, $zero, lbl_80B3E364 
	sh      a0, 0x0000(a1)             ## 80B3F6D4
lbl_80B3E34C:
	blez    v0, lbl_80B3E35C           
	subu    t0, $zero, v0              
	sh      t0, 0x0000(a1)             ## 80B3F6D4
	lh      v0, 0x0000(a1)             ## 80B3F6D4
lbl_80B3E35C:
	addiu   t1, v0, 0xFFFF             ## t1 = FFFFFFFF
	sh      t1, 0x0000(a1)             ## 80B3F6D4
lbl_80B3E364:
	lw      t2, 0x0004(a3)             ## 00000004
	addiu   t4, t4, %lo(func_80B3EBF0) ## t4 = 80B3EBF0
	sw      t4, 0x0180(a3)             ## 00000180
	ori     t3, t2, 0x0010             ## t3 = 00000010
	beq     $zero, $zero, lbl_80B3E380 
	sw      t3, 0x0004(a3)             ## 00000004
lbl_80B3E37C:
	sw      t5, 0x0180(a3)             ## 00000180
lbl_80B3E380:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3E390:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a2, a0, $zero              ## a2 = 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x3128             ## a1 = 06003128
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	jal     func_8008D2D4              
	sw      a2, 0x0018($sp)            
	lw      a2, 0x0018($sp)            
	lui     t7, %hi(func_80B3ECC0)     ## t7 = 80B40000
	addiu   t6, $zero, 0x0005          ## t6 = 00000005
	addiu   t7, t7, %lo(func_80B3ECC0) ## t7 = 80B3ECC0
	sh      t6, 0x0184(a2)             ## 00000184
	sw      t7, 0x0180(a2)             ## 00000180
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3E3D8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a3, a0, $zero              ## a3 = 00000000
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x2E84             ## a1 = 06002E84
	addiu   a0, a3, 0x013C             ## a0 = 0000013C
	lui     a2, 0xC0A0                 ## a2 = C0A00000
	jal     func_8008D328              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	lui     t6, %hi(func_80B3EF50)     ## t6 = 80B40000
	addiu   t6, t6, %lo(func_80B3EF50) ## t6 = 80B3EF50
	sw      t6, 0x0180(a3)             ## 00000180
	swc1    $f4, 0x0068(a3)            ## 00000068
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3E424:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s0, 0x0030($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      a1, 0x003C($sp)            
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x3128             ## a1 = 06003128
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008D328              
	lui     a2, 0xC0A0                 ## a2 = C0A00000
	lbu     t8, 0x0216(s0)             ## 00000216
	lw      t0, 0x0004(s0)             ## 00000004
	lui     $at, 0x4040                ## $at = 40400000
	mtc1    $at, $f4                   ## $f4 = 3.00
	lh      t7, 0x00B6(s0)             ## 000000B6
	addiu   t6, $zero, 0x0064          ## t6 = 00000064
	andi    t9, t8, 0xFFFE             ## t9 = 00000000
	ori     t1, t0, 0x0010             ## t1 = 00000010
	sh      t6, 0x0184(s0)             ## 00000184
	sb      t9, 0x0216(s0)             ## 00000216
	sw      t1, 0x0004(s0)             ## 00000004
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x3880          ## a1 = 00003880
	swc1    $f4, 0x0068(s0)            ## 00000068
	jal     func_80022FD0              
	sh      t7, 0x0032(s0)             ## 00000032
	lwc1    $f6, 0x0028(s0)            ## 00000028
	lw      a3, 0x0024(s0)             ## 00000024
	lw      a1, 0x003C($sp)            
	swc1    $f6, 0x0010($sp)           
	lwc1    $f8, 0x002C(s0)            ## 0000002C
	addiu   t2, $zero, 0x0003          ## t2 = 00000003
	sw      t2, 0x0024($sp)            
	sw      $zero, 0x0020($sp)         
	sw      $zero, 0x001C($sp)         
	sw      $zero, 0x0018($sp)         
	addiu   a2, $zero, 0x0015          ## a2 = 00000015
	addiu   a0, a1, 0x1C24             ## a0 = 00001C24
	jal     func_80025110              ## ActorSpawn
	swc1    $f8, 0x0014($sp)           
	lui     t3, %hi(func_80B3EFBC)     ## t3 = 80B40000
	addiu   t3, t3, %lo(func_80B3EFBC) ## t3 = 80B3EFBC
	sw      t3, 0x0180(s0)             ## 00000180
	lw      $ra, 0x0034($sp)           
	lw      s0, 0x0030($sp)            
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3E4E4:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x29BC             ## a1 = 060029BC
	jal     func_8008D2D4              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	lw      t6, 0x0004(s0)             ## 00000004
	addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
	addiu   t8, $zero, 0x0064          ## t8 = 00000064
	and     t7, t6, $at                
	sw      t7, 0x0004(s0)             ## 00000004
	sw      t8, 0x0010($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	jal     func_80027090              
	or      a3, $zero, $zero           ## a3 = 00000000
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	sb      t9, 0x0114(s0)             ## 00000114
	sh      $zero, 0x0184(s0)          ## 00000184
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3882          ## a1 = 00003882
	lui     t0, %hi(var_80B3F6D4)      ## t0 = 80B40000
	lh      t0, %lo(var_80B3F6D4)(t0)  
	addiu   $at, $zero, 0xFFFD         ## $at = FFFFFFFD
	bne     t0, $at, lbl_80B3E570      
	nop
	jal     func_800646F0              
	addiu   a0, $zero, 0x4806          ## a0 = 00004806
	addiu   t1, $zero, 0xFFFC          ## t1 = FFFFFFFC
	lui     $at, %hi(var_80B3F6D4)     ## $at = 80B40000
	sh      t1, %lo(var_80B3F6D4)($at) 
lbl_80B3E570:
	lui     t2, %hi(func_80B3F178)     ## t2 = 80B40000
	addiu   t2, t2, %lo(func_80B3F178) ## t2 = 80B3F178
	sw      t2, 0x0180(s0)             ## 00000180
	lw      $ra, 0x0024($sp)           
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3E590:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0034($sp)            
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f6                   ## $f6 = 0.50
	lwc1    $f4, 0x0158(s0)            ## 00000158
	or      v1, $zero, $zero           ## v1 = 00000000
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	c.lt.s  $f4, $f6                   
	lui     a1, 0x4110                 ## a1 = 41100000
	bc1f    lbl_80B3E5CC               
	nop
	addiu   v1, $zero, 0x0001          ## v1 = 00000001
lbl_80B3E5CC:
	beql    v1, $zero, lbl_80B3E5E8    
	sw      v1, 0x002C($sp)            
	lh      v0, 0x0184(s0)             ## 00000184
	beq     v0, $zero, lbl_80B3E5E4    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x0184(s0)             ## 00000184
lbl_80B3E5E4:
	sw      v1, 0x002C($sp)            
lbl_80B3E5E8:
	jal     func_8008D6A8              
	sw      a0, 0x0020($sp)            
	lui     $at, 0x4110                ## $at = 41100000
	mtc1    $at, $f12                  ## $f12 = 9.00
	beq     v0, $zero, lbl_80B3E610    
	lw      a0, 0x0020($sp)            
	lbu     t7, 0x0215(s0)             ## 00000215
	ori     t8, t7, 0x0001             ## t8 = 00000001
	beq     $zero, $zero, lbl_80B3E63C 
	sb      t8, 0x0215(s0)             ## 00000215
lbl_80B3E610:
	jal     func_8008D6A8              
	lui     a1, 0x4100                 ## a1 = 41000000
	lui     $at, 0x4110                ## $at = 41100000
	mtc1    $at, $f12                  ## $f12 = 9.00
	beq     v0, $zero, lbl_80B3E63C    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x387C          ## a1 = 0000387C
	lui     $at, 0x4110                ## $at = 41100000
	mtc1    $at, $f12                  ## $f12 = 9.00
	nop
lbl_80B3E63C:
	lwc1    $f0, 0x0154(s0)            ## 00000154
	lui     $at, 0x4140                ## $at = 41400000
	c.lt.s  $f0, $f12                  
	nop
	bc1fl   lbl_80B3E660               
	mtc1    $at, $f14                  ## $f14 = 12.00
	beq     $zero, $zero, lbl_80B3E684 
	mov.s   $f0, $f12                  
	mtc1    $at, $f14                  ## $f14 = 12.00
lbl_80B3E660:
	nop
	c.lt.s  $f14, $f0                  
	nop
	bc1fl   lbl_80B3E680               
	mov.s   $f2, $f0                   
	beq     $zero, $zero, lbl_80B3E680 
	mov.s   $f2, $f14                  
	mov.s   $f2, $f0                   
lbl_80B3E680:
	mov.s   $f0, $f2                   
lbl_80B3E684:
	sub.s   $f8, $f0, $f12             
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f16                  ## $f16 = 5.00
	lui     $at, 0x42F0                ## $at = 42F00000
	mul.s   $f10, $f8, $f12            
	add.s   $f18, $f10, $f16           
	trunc.w.s $f4, $f18                  
	mfc1    t0, $f4                    
	nop
	sh      t0, 0x0246(s0)             ## 00000246
	lw      t1, 0x002C($sp)            
	bne     t1, $zero, lbl_80B3E6E4    
	nop
	lwc1    $f6, 0x0090(s0)            ## 00000090
	mtc1    $at, $f8                   ## $f8 = 120.00
	nop
	c.lt.s  $f6, $f8                   
	nop
	bc1f    lbl_80B3E6E4               
	nop
	jal     func_80B3E250              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B3E764 
	lw      t3, 0x002C($sp)            
lbl_80B3E6E4:
	jal     func_8008C9C0              
	lw      a0, 0x0020($sp)            
	beq     v0, $zero, lbl_80B3E760    
	lui     $at, 0x42F0                ## $at = 42F00000
	lwc1    $f2, 0x0090(s0)            ## 00000090
	mtc1    $at, $f10                  ## $f10 = 120.00
	nop
	c.lt.s  $f2, $f10                  
	nop
	bc1fl   lbl_80B3E724               
	lh      t2, 0x0184(s0)             ## 00000184
	jal     func_80B3E250              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B3E764 
	lw      t3, 0x002C($sp)            
	lh      t2, 0x0184(s0)             ## 00000184
lbl_80B3E724:
	lui     $at, 0x43A0                ## $at = 43A00000
	bne     t2, $zero, lbl_80B3E758    
	nop
	mtc1    $at, $f16                  ## $f16 = 320.00
	nop
	c.lt.s  $f16, $f2                  
	nop
	bc1f    lbl_80B3E758               
	nop
	jal     func_80B3E160              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B3E764 
	lw      t3, 0x002C($sp)            
lbl_80B3E758:
	jal     func_80B3E1E8              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80B3E760:
	lw      t3, 0x002C($sp)            
lbl_80B3E764:
	lui     $at, 0x4320                ## $at = 43200000
	beql    t3, $zero, lbl_80B3E7E4    
	lw      $ra, 0x001C($sp)           
	lwc1    $f2, 0x0090(s0)            ## 00000090
	mtc1    $at, $f18                  ## $f18 = 160.00
	nop
	c.lt.s  $f18, $f2                  
	nop
	bc1fl   lbl_80B3E7E4               
	lw      $ra, 0x001C($sp)           
	lwc1    $f0, 0x0094(s0)            ## 00000094
	lui     $at, 0x42F0                ## $at = 42F00000
	mtc1    $at, $f4                   ## $f4 = 120.00
	abs.s   $f0, $f0                   
	c.lt.s  $f0, $f4                   
	nop
	bc1fl   lbl_80B3E7E4               
	lw      $ra, 0x001C($sp)           
	lh      t4, 0x0184(s0)             ## 00000184
	lui     $at, 0x43F0                ## $at = 43F00000
	beql    t4, $zero, lbl_80B3E7D4    
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f6                   ## $f6 = 1.00
	nop
	c.lt.s  $f2, $f6                   
	nop
	bc1f    lbl_80B3E7E0               
	lui     $at, 0x3F80                ## $at = 3F800000
lbl_80B3E7D4:
	mtc1    $at, $f8                   ## $f8 = 1.00
	nop
	swc1    $f8, 0x0158(s0)            ## 00000158
lbl_80B3E7E0:
	lw      $ra, 0x001C($sp)           
lbl_80B3E7E4:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3E7F4:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x0024($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	addiu   a0, a2, 0x013C             ## a0 = 0000013C
	sw      a0, 0x001C($sp)            
	jal     func_8008C9C0              
	sw      a2, 0x0020($sp)            
	lw      a0, 0x001C($sp)            
	jal     func_8008D6A8              
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	beq     v0, $zero, lbl_80B3E838    
	lw      a2, 0x0020($sp)            
	lh      v0, 0x0184(a2)             ## 00000184
	beq     v0, $zero, lbl_80B3E838    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x0184(a2)             ## 00000184
lbl_80B3E838:
	lui     $at, 0x42F0                ## $at = 42F00000
	mtc1    $at, $f6                   ## $f6 = 120.00
	lwc1    $f4, 0x0090(a2)            ## 00000090
	c.lt.s  $f4, $f6                   
	nop
	bc1t    lbl_80B3E860               
	nop
	lh      t7, 0x0184(a2)             ## 00000184
	bnel    t7, $zero, lbl_80B3E86C    
	lw      $ra, 0x0014($sp)           
lbl_80B3E860:
	jal     func_80B3E250              
	or      a0, a2, $zero              ## a0 = 00000000
	lw      $ra, 0x0014($sp)           
lbl_80B3E86C:
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3E878:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a0, 0x0024($sp)            
	lw      a0, 0x0024($sp)            
	jal     func_8008D6A8              
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	beq     v0, $zero, lbl_80B3E8BC    
	addiu   a0, s0, 0x00B6             ## a0 = 000000B6
	lh      v0, 0x0184(s0)             ## 00000184
	beq     v0, $zero, lbl_80B3E8BC    
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x0184(s0)             ## 00000184
lbl_80B3E8BC:
	lh      t7, 0x0184(s0)             ## 00000184
	addiu   a2, $zero, 0x0002          ## a2 = 00000002
	addiu   a3, $zero, 0x0E38          ## a3 = 00000E38
	andi    t8, t7, 0x1000             ## t8 = 00000000
	bnel    t8, $zero, lbl_80B3E8E0    
	lui     $at, 0x42F0                ## $at = 42F00000
	jal     func_80064624              
	lh      a1, 0x008A(s0)             ## 0000008A
	lui     $at, 0x42F0                ## $at = 42F00000
lbl_80B3E8E0:
	mtc1    $at, $f6                   ## $f6 = 120.00
	lwc1    $f4, 0x0090(s0)            ## 00000090
	c.lt.s  $f4, $f6                   
	nop
	bc1t    lbl_80B3E908               
	nop
	lh      v0, 0x0184(s0)             ## 00000184
	addiu   $at, $zero, 0x1000         ## $at = 00001000
	bne     v0, $at, lbl_80B3E918      
	nop
lbl_80B3E908:
	jal     func_80B3E250              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B3E92C 
	lw      $ra, 0x001C($sp)           
lbl_80B3E918:
	bnel    v0, $zero, lbl_80B3E92C    
	lw      $ra, 0x001C($sp)           
	jal     func_80B3E1A8              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x001C($sp)           
lbl_80B3E92C:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3E93C:
	addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
	sw      s0, 0x0030($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      a1, 0x004C($sp)            
	addiu   a0, s0, 0x00B6             ## a0 = 000000B6
	lh      a1, 0x008A(s0)             ## 0000008A
	addiu   a2, $zero, 0x0002          ## a2 = 00000002
	jal     func_80064624              
	addiu   a3, $zero, 0x0E38          ## a3 = 00000E38
	lui     $at, 0x42F0                ## $at = 42F00000
	mtc1    $at, $f6                   ## $f6 = 120.00
	lwc1    $f4, 0x0090(s0)            ## 00000090
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	c.lt.s  $f4, $f6                   
	nop
	bc1f    lbl_80B3E994               
	nop
	jal     func_80B3E250              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B3EA68 
	lw      $ra, 0x0034($sp)           
lbl_80B3E994:
	jal     func_8008C9C0              
	sw      a0, 0x0038($sp)            
	beq     v0, $zero, lbl_80B3E9B4    
	lw      a0, 0x0038($sp)            
	jal     func_80B3E1E8              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B3EA68 
	lw      $ra, 0x0034($sp)           
lbl_80B3E9B4:
	jal     func_8008D6A8              
	lui     a1, 0x40C0                 ## a1 = 40C00000
	beql    v0, $zero, lbl_80B3EA68    
	lw      $ra, 0x0034($sp)           
	jal     func_800636C4              ## sins?
	lh      a0, 0x00B6(s0)             ## 000000B6
	lui     $at, 0x41B8                ## $at = 41B80000
	mtc1    $at, $f8                   ## $f8 = 23.00
	lwc1    $f16, 0x0024(s0)           ## 00000024
	lui     $at, 0x4140                ## $at = 41400000
	mul.s   $f10, $f0, $f8             
	mtc1    $at, $f6                   ## $f6 = 12.00
	add.s   $f18, $f10, $f16           
	swc1    $f18, 0x003C($sp)          
	lwc1    $f4, 0x0028(s0)            ## 00000028
	add.s   $f8, $f4, $f6              
	swc1    $f8, 0x0040($sp)           
	jal     func_80063684              ## coss?
	lh      a0, 0x00B6(s0)             ## 000000B6
	lui     $at, 0x41B8                ## $at = 41B80000
	mtc1    $at, $f10                  ## $f10 = 23.00
	lwc1    $f18, 0x002C(s0)           ## 0000002C
	lwc1    $f4, 0x0040($sp)           
	mul.s   $f16, $f0, $f10            
	lw      a1, 0x004C($sp)            
	swc1    $f4, 0x0010($sp)           
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	addiu   a2, $zero, 0x0193          ## a2 = 00000193
	lw      a3, 0x003C($sp)            
	addiu   a0, a1, 0x1C24             ## a0 = 00001C24
	add.s   $f2, $f16, $f18            
	swc1    $f2, 0x0014($sp)           
	lh      t6, 0x00B4(s0)             ## 000000B4
	sw      t6, 0x0018($sp)            
	lh      t7, 0x00B6(s0)             ## 000000B6
	sw      t7, 0x001C($sp)            
	lh      t8, 0x00B8(s0)             ## 000000B8
	sw      t9, 0x0024($sp)            
	jal     func_80025110              ## ActorSpawn
	sw      t8, 0x0020($sp)            
	beq     v0, $zero, lbl_80B3EA64    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x387E          ## a1 = 0000387E
lbl_80B3EA64:
	lw      $ra, 0x0034($sp)           
lbl_80B3EA68:
	lw      s0, 0x0030($sp)            
	addiu   $sp, $sp, 0x0048           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3EA78:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0034($sp)            
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a0, 0x0024($sp)            
	beq     v0, $zero, lbl_80B3EAB0    
	lui     $at, 0x3F80                ## $at = 3F800000
	jal     func_80B3E0E0              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B3EB38 
	lw      a0, 0x0024($sp)            
lbl_80B3EAB0:
	mtc1    $at, $f2                   ## $f2 = 0.00
	lwc1    $f0, 0x0154(s0)            ## 00000154
	lui     $at, 0x4040                ## $at = 40400000
	c.lt.s  $f0, $f2                   
	nop
	bc1fl   lbl_80B3EAD8               
	mtc1    $at, $f4                   ## $f4 = 3.00
	beq     $zero, $zero, lbl_80B3EB00 
	mov.s   $f0, $f2                   
	mtc1    $at, $f4                   ## $f4 = 3.00
lbl_80B3EAD8:
	lui     $at, 0x4040                ## $at = 40400000
	c.lt.s  $f4, $f0                   
	nop
	bc1fl   lbl_80B3EAFC               
	mov.s   $f2, $f0                   
	mtc1    $at, $f2                   ## $f2 = 3.00
	beq     $zero, $zero, lbl_80B3EB00 
	mov.s   $f0, $f2                   
	mov.s   $f2, $f0                   
lbl_80B3EAFC:
	mov.s   $f0, $f2                   
lbl_80B3EB00:
	lui     $at, 0x4040                ## $at = 40400000
	mtc1    $at, $f6                   ## $f6 = 3.00
	lui     $at, 0x4140                ## $at = 41400000
	mtc1    $at, $f10                  ## $f10 = 12.00
	sub.s   $f8, $f6, $f0              
	lui     $at, 0x40A0                ## $at = 40A00000
	mtc1    $at, $f18                  ## $f18 = 5.00
	mul.s   $f16, $f8, $f10            
	add.s   $f4, $f16, $f18            
	trunc.w.s $f6, $f4                   
	mfc1    t7, $f6                    
	nop
	sh      t7, 0x0246(s0)             ## 00000246
	lw      a0, 0x0024($sp)            
lbl_80B3EB38:
	jal     func_8008D6A8              
	lui     a1, 0x4080                 ## a1 = 40800000
	beq     v0, $zero, lbl_80B3EB54    
	addiu   a0, s0, 0x0024             ## a0 = 00000024
	lbu     t8, 0x0215(s0)             ## 00000215
	andi    t9, t8, 0xFFFE             ## t9 = 00000000
	sb      t9, 0x0215(s0)             ## 00000215
lbl_80B3EB54:
	lw      a1, 0x0008(s0)             ## 00000008
	lui     a2, 0x3F00                 ## a2 = 3F000000
	jal     func_80064280              
	lui     a3, 0x4040                 ## a3 = 40400000
	addiu   a0, s0, 0x002C             ## a0 = 0000002C
	lw      a1, 0x0010(s0)             ## 00000010
	lui     a2, 0x3F00                 ## a2 = 3F000000
	jal     func_80064280              
	lui     a3, 0x4040                 ## a3 = 40400000
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3EB8C:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_8008C9C0              
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beql    v0, $zero, lbl_80B3EBCC    
	addiu   a0, s0, 0x00B6             ## a0 = 000000B6
	lh      t6, 0x008A(s0)             ## 0000008A
	ori     $at, $zero, 0x8000         ## $at = 00008000
	or      a0, s0, $zero              ## a0 = 00000000
	addu    t7, t6, $at                
	jal     func_80B3E390              
	sh      t7, 0x0186(s0)             ## 00000186
	addiu   a0, s0, 0x00B6             ## a0 = 000000B6
lbl_80B3EBCC:
	lh      a1, 0x008A(s0)             ## 0000008A
	addiu   a2, $zero, 0x0002          ## a2 = 00000002
	jal     func_80064624              
	addiu   a3, $zero, 0x0E38          ## a3 = 00000E38
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3EBF0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_8008C9C0              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	beql    v0, $zero, lbl_80B3EC20    
	lw      $ra, 0x0014($sp)           
	jal     func_80B3E4E4              
	lw      a0, 0x0018($sp)            
	lw      $ra, 0x0014($sp)           
lbl_80B3EC20:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3EC2C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lbu     t6, 0x0002(a0)             ## 00000002
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	beql    t6, $at, lbl_80B3ECB4      
	lw      $ra, 0x0014($sp)           
	lbu     t7, 0x0216(a0)             ## 00000216
	andi    t8, t7, 0x0002             ## t8 = 00000000
	bnel    t8, $zero, lbl_80B3EC64    
	lw      t0, 0x0004(a0)             ## 00000004
	lbu     t9, 0x010C(a0)             ## 0000010C
	beql    t9, $zero, lbl_80B3EC78    
	lw      t2, 0x0004(a0)             ## 00000004
	lw      t0, 0x0004(a0)             ## 00000004
lbl_80B3EC64:
	lui     $at, 0x0001                ## $at = 00010000
	or      t1, t0, $at                ## t1 = 00010000
	beq     $zero, $zero, lbl_80B3EC88 
	sw      t1, 0x0004(a0)             ## 00000004
	lw      t2, 0x0004(a0)             ## 00000004
lbl_80B3EC78:
	lui     $at, 0xFFFE                ## $at = FFFE0000
	ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
	and     t3, t2, $at                
	sw      t3, 0x0004(a0)             ## 00000004
lbl_80B3EC88:
	lui     $at, 0x4302                ## $at = 43020000
	mtc1    $at, $f6                   ## $f6 = 130.00
	lwc1    $f4, 0x0090(a0)            ## 00000090
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_80B3ECB4               
	lw      $ra, 0x0014($sp)           
	lhu     t4, 0x0188(a0)             ## 00000188
	jal     func_80022A90              
	sh      t4, 0x010E(a0)             ## 0000010E
	lw      $ra, 0x0014($sp)           
lbl_80B3ECB4:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3ECC0:
	addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	sw      a1, 0x0044($sp)            
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a0, 0x002C($sp)            
	lw      a0, 0x002C($sp)            
	jal     func_8008D6A8              
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	beq     v0, $zero, lbl_80B3ED04    
	lui     a1, 0x40C0                 ## a1 = 40C00000
	lh      v1, 0x0184(s0)             ## 00000184
	beq     v1, $zero, lbl_80B3ED04    
	addiu   t6, v1, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x0184(s0)             ## 00000184
lbl_80B3ED04:
	bnel    v0, $zero, lbl_80B3ED1C    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8008D6A8              
	lw      a0, 0x002C($sp)            
	beq     v0, $zero, lbl_80B3ED24    
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80B3ED1C:
	jal     func_80022FD0              
	addiu   a1, $zero, 0x387F          ## a1 = 0000387F
lbl_80B3ED24:
	addiu   a0, s0, 0x0068             ## a0 = 00000068
	lui     a1, 0x40F0                 ## a1 = 40F00000
	jal     func_8006385C              
	lui     a2, 0x3F80                 ## a2 = 3F800000
	lh      a1, 0x0186(s0)             ## 00000186
	addiu   t7, $zero, 0x00B6          ## t7 = 000000B6
	sw      t7, 0x0010($sp)            
	addiu   a0, s0, 0x0032             ## a0 = 00000032
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	jal     func_80064508              
	addiu   a3, $zero, 0x0E38          ## a3 = 00000E38
	bnel    v0, $zero, lbl_80B3EE50    
	lh      t6, 0x0032(s0)             ## 00000032
	lhu     v0, 0x0088(s0)             ## 00000088
	or      a0, s0, $zero              ## a0 = 00000000
	andi    t8, v0, 0x0020             ## t8 = 00000000
	beq     t8, $zero, lbl_80B3ED7C    
	andi    t9, v0, 0x0008             ## t9 = 00000000
	jal     func_8002140C              
	addiu   a1, s0, 0x0008             ## a1 = 00000008
	beq     $zero, $zero, lbl_80B3EE4C 
	sh      v0, 0x0186(s0)             ## 00000186
lbl_80B3ED7C:
	beql    t9, $zero, lbl_80B3ED94    
	lh      t1, 0x0184(s0)             ## 00000184
	lh      t0, 0x007E(s0)             ## 0000007E
	beq     $zero, $zero, lbl_80B3EE4C 
	sh      t0, 0x0186(s0)             ## 00000186
	lh      t1, 0x0184(s0)             ## 00000184
lbl_80B3ED94:
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    t1, $zero, lbl_80B3EE40    
	lh      t4, 0x008A(s0)             ## 0000008A
	jal     func_8002140C              
	addiu   a1, s0, 0x0008             ## a1 = 00000008
	lh      a1, 0x008A(s0)             ## 0000008A
	subu    v1, v0, a1                 
	sll     v1, v1, 16                 
	sra     v1, v1, 16                 
	bltz    v1, lbl_80B3EDC8           
	subu    a0, $zero, v1              
	beq     $zero, $zero, lbl_80B3EDC8 
	or      a0, v1, $zero              ## a0 = 00000000
lbl_80B3EDC8:
	slti    $at, a0, 0x2001            
	bnel    $at, $zero, lbl_80B3EDE0   
	mtc1    v1, $f4                    ## $f4 = 0.00
	beq     $zero, $zero, lbl_80B3EE4C 
	sh      v0, 0x0186(s0)             ## 00000186
	mtc1    v1, $f4                    ## $f4 = 0.00
lbl_80B3EDE0:
	mtc1    $zero, $f8                 ## $f8 = 0.00
	mtc1    a1, $f18                   ## $f18 = 0.00
	cvt.s.w $f6, $f4                   
	lui     $at, 0xBF80                ## $at = BF800000
	c.le.s  $f8, $f6                   
	nop
	bc1fl   lbl_80B3EE14               
	mtc1    $at, $f0                   ## $f0 = -1.00
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f0                   ## $f0 = 1.00
	beq     $zero, $zero, lbl_80B3EE1C 
	lui     $at, 0xC600                ## $at = C6000000
	mtc1    $at, $f0                   ## $f0 = -8192.00
lbl_80B3EE14:
	nop
	lui     $at, 0xC600                ## $at = C6000000
lbl_80B3EE1C:
	mtc1    $at, $f10                  ## $f10 = -8192.00
	cvt.s.w $f4, $f18                  
	mul.s   $f16, $f0, $f10            
	add.s   $f6, $f16, $f4             
	trunc.w.s $f8, $f6                   
	mfc1    t3, $f8                    
	beq     $zero, $zero, lbl_80B3EE4C 
	sh      t3, 0x0186(s0)             ## 00000186
	lh      t4, 0x008A(s0)             ## 0000008A
lbl_80B3EE40:
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addu    t5, t4, $at                
	sh      t5, 0x0186(s0)             ## 00000186
lbl_80B3EE4C:
	lh      t6, 0x0032(s0)             ## 00000032
lbl_80B3EE50:
	ori     $at, $zero, 0x8000         ## $at = 00008000
	or      a0, s0, $zero              ## a0 = 00000000
	addu    t7, t6, $at                
	sh      t7, 0x00B6(s0)             ## 000000B6
	jal     func_80022930              
	lw      a1, 0x0044($sp)            
	beql    v0, $zero, lbl_80B3EE84    
	lh      t8, 0x0184(s0)             ## 00000184
	jal     func_80B3E3D8              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B3EF40 
	lw      $ra, 0x0024($sp)           
	lh      t8, 0x0184(s0)             ## 00000184
lbl_80B3EE84:
	or      a0, s0, $zero              ## a0 = 00000000
	bnel    t8, $zero, lbl_80B3EF34    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80021528              
	addiu   a1, s0, 0x0008             ## a1 = 00000008
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f10                  ## $f10 = 20.00
	nop
	c.lt.s  $f0, $f10                  
	nop
	bc1fl   lbl_80B3EF34               
	or      a0, s0, $zero              ## a0 = 00000000
	lwc1    $f18, 0x0028(s0)           ## 00000028
	lwc1    $f16, 0x000C(s0)           ## 0000000C
	lui     $at, 0x4000                ## $at = 40000000
	mtc1    $at, $f4                   ## $f4 = 2.00
	sub.s   $f0, $f18, $f16            
	abs.s   $f0, $f0                   
	c.lt.s  $f0, $f4                   
	nop
	bc1fl   lbl_80B3EF34               
	or      a0, s0, $zero              ## a0 = 00000000
	lbu     t9, 0x0002(s0)             ## 00000002
	mtc1    $zero, $f6                 ## $f6 = 0.00
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bne     t9, $at, lbl_80B3EF20      
	swc1    $f6, 0x0068(s0)            ## 00000068
	lw      t0, 0x0004(s0)             ## 00000004
	lui     $at, 0xFFFE                ## $at = FFFE0000
	ori     $at, $at, 0xFFF6           ## $at = FFFEFFF6
	lw      a0, 0x0044($sp)            
	and     t1, t0, $at                
	sw      t1, 0x0004(s0)             ## 00000004
	ori     t3, t1, 0x0005             ## t3 = 00000005
	sw      t3, 0x0004(s0)             ## 00000004
	or      a2, s0, $zero              ## a2 = 00000000
	addiu   a3, $zero, 0x0005          ## a3 = 00000005
	jal     func_800265D4              
	addiu   a1, a0, 0x1C24             ## a1 = 00001C24
lbl_80B3EF20:
	jal     func_80B3E250              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B3EF40 
	lw      $ra, 0x0024($sp)           
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80B3EF34:
	jal     func_80B3EC2C              
	lw      a1, 0x0044($sp)            
	lw      $ra, 0x0024($sp)           
lbl_80B3EF40:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0040           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3EF50:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0020($sp)            
	sw      a1, 0x0024($sp)            
	lw      a0, 0x0020($sp)            
	jal     func_8008C9C0              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	lw      v1, 0x0020($sp)            
	addiu   t6, $zero, 0x0100          ## t6 = 00000100
	addiu   a2, $zero, 0x0003          ## a2 = 00000003
	lh      a1, 0x008A(v1)             ## 0000008A
	sw      t6, 0x0010($sp)            
	addiu   a3, $zero, 0x0400          ## a3 = 00000400
	jal     func_80064508              
	addiu   a0, v1, 0x00B6             ## a0 = 000000B6
	lw      a0, 0x0024($sp)            
	jal     func_800DD464              
	addiu   a0, a0, 0x20D8             ## a0 = 000020D8
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bne     v0, $at, lbl_80B3EFAC      
	lw      a0, 0x0020($sp)            
	jal     func_80B3E424              
	lw      a1, 0x0024($sp)            
lbl_80B3EFAC:
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3EFBC:
	addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
	sw      s1, 0x0018($sp)            
	sw      s0, 0x0014($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x001C($sp)           
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a0, 0x0024($sp)            
	lh      v1, 0x0184(s0)             ## 00000184
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	beq     v1, $zero, lbl_80B3EFF4    
	addiu   t6, v1, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x0184(s0)             ## 00000184
lbl_80B3EFF4:
	jal     func_8008D6A8              
	lw      a0, 0x0024($sp)            
	bne     v0, $zero, lbl_80B3F010    
	lw      a0, 0x0024($sp)            
	jal     func_8008D6A8              
	lui     a1, 0x40C0                 ## a1 = 40C00000
	beq     v0, $zero, lbl_80B3F01C    
lbl_80B3F010:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x387F          ## a1 = 0000387F
lbl_80B3F01C:
	lhu     t7, 0x0088(s0)             ## 00000088
	andi    t8, t7, 0x0008             ## t8 = 00000000
	beql    t8, $zero, lbl_80B3F038    
	lh      t9, 0x07A0(s1)             ## 000007A0
	beq     $zero, $zero, lbl_80B3F0D8 
	lh      a1, 0x007E(s0)             ## 0000007E
	lh      t9, 0x07A0(s1)             ## 000007A0
lbl_80B3F038:
	sll     t0, t9,  2                 
	addu    t1, s1, t0                 
	jal     func_8004977C              
	lw      a0, 0x0790(t1)             ## 00000790
	lh      t2, 0x008A(s0)             ## 0000008A
	addiu   $at, $zero, 0x8000         ## $at = FFFF8000
	subu    a1, t2, v0                 
	addu    a1, a1, $at                
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
	bltz    a1, lbl_80B3F070           
	subu    v0, $zero, a1              
	beq     $zero, $zero, lbl_80B3F070 
	or      v0, a1, $zero              ## v0 = 00000000
lbl_80B3F070:
	slti    $at, v0, 0x4001            
	bnel    $at, $zero, lbl_80B3F0A8   
	lh      t6, 0x07A0(s1)             ## 000007A0
	lh      t3, 0x07A0(s1)             ## 000007A0
	sll     t4, t3,  2                 
	addu    t5, s1, t4                 
	jal     func_8004977C              
	lw      a0, 0x0790(t5)             ## 00000790
	ori     $at, $zero, 0x8000         ## $at = 00008000
	addu    a1, v0, $at                
	sll     a1, a1, 16                 
	beq     $zero, $zero, lbl_80B3F0D8 
	sra     a1, a1, 16                 
	lh      t6, 0x07A0(s1)             ## 000007A0
lbl_80B3F0A8:
	sll     t7, t6,  2                 
	addu    t8, s1, t7                 
	lw      a0, 0x0790(t8)             ## 00000790
	jal     func_8004977C              
	sh      a1, 0x002E($sp)            
	lh      a1, 0x002E($sp)            
	ori     $at, $zero, 0x8000         ## $at = 00008000
	sra     t9, a1,  1                 
	subu    a1, v0, t9                 
	addu    a1, a1, $at                
	sll     a1, a1, 16                 
	sra     a1, a1, 16                 
lbl_80B3F0D8:
	addiu   a0, s0, 0x00B6             ## a0 = 000000B6
	jal     func_80063704              
	addiu   a2, $zero, 0x0800          ## a2 = 00000800
	lh      t1, 0x0184(s0)             ## 00000184
	lh      t0, 0x00B6(s0)             ## 000000B6
	beq     t1, $zero, lbl_80B3F110    
	sh      t0, 0x0032(s0)             ## 00000032
	lwc1    $f4, 0x00EC(s0)            ## 000000EC
	mtc1    $zero, $f6                 ## $f6 = 0.00
	nop
	c.lt.s  $f4, $f6                   
	nop
	bc1fl   lbl_80B3F168               
	lw      $ra, 0x001C($sp)           
lbl_80B3F110:
	jal     func_800D6218              
	or      a0, s1, $zero              ## a0 = 00000000
	lh      t2, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	or      a0, s1, $zero              ## a0 = 00000000
	bnel    t2, $at, lbl_80B3F144      
	lw      a2, 0x011C(s0)             ## 0000011C
	jal     func_80020658              
	lb      a1, 0x0003(s0)             ## 00000003
	addiu   t3, $zero, 0x0003          ## t3 = 00000003
	lui     $at, %hi(var_80B3F6D4)     ## $at = 80B40000
	sh      t3, %lo(var_80B3F6D4)($at) 
	lw      a2, 0x011C(s0)             ## 0000011C
lbl_80B3F144:
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   a1, s1, 0x1C24             ## a1 = 00001C24
	beq     a2, $zero, lbl_80B3F15C    
	nop
	jal     func_800265D4              
	addiu   a3, $zero, 0x0006          ## a3 = 00000006
lbl_80B3F15C:
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x001C($sp)           
lbl_80B3F168:
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0030           ## $sp = 00000000


func_80B3F178:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	addiu   t6, $zero, 0x0001          ## t6 = 00000001
	sb      t6, 0x0114(s0)             ## 00000114
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	jal     func_8008C9C0              
	sw      a0, 0x0024($sp)            
	lw      a0, 0x0024($sp)            
	jal     func_8008D6A8              
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	beq     v0, $zero, lbl_80B3F1BC    
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80022FD0              
	addiu   a1, $zero, 0x3882          ## a1 = 00003882
lbl_80B3F1BC:
	lh      t7, 0x0184(s0)             ## 00000184
	lui     v0, %hi(var_80B3F6D4)      ## v0 = 80B40000
	lui     $at, 0x420C                ## $at = 420C0000
	bnel    t7, $zero, lbl_80B3F21C    
	lwc1    $f4, 0x000C(s0)            ## 0000000C
	lh      v0, %lo(var_80B3F6D4)(v0)  
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	bnel    v0, $at, lbl_80B3F208      
	addiu   $at, $zero, 0xFFFC         ## $at = FFFFFFFC
	lw      a2, 0x011C(s0)             ## 0000011C
	lw      a0, 0x002C($sp)            
	beq     a2, $zero, lbl_80B3F1F8    
	addiu   a1, a0, 0x1C24             ## a1 = 00001C24
	jal     func_800265D4              
	addiu   a3, $zero, 0x0006          ## a3 = 00000006
lbl_80B3F1F8:
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	beq     $zero, $zero, lbl_80B3F290 
	sh      t8, 0x0184(s0)             ## 00000184
	addiu   $at, $zero, 0xFFFC         ## $at = FFFFFFFC
lbl_80B3F208:
	bne     v0, $at, lbl_80B3F290      
	addiu   t9, $zero, 0x0002          ## t9 = 00000002
	beq     $zero, $zero, lbl_80B3F290 
	sh      t9, 0x0184(s0)             ## 00000184
	lwc1    $f4, 0x000C(s0)            ## 0000000C
lbl_80B3F21C:
	mtc1    $at, $f6                   ## $f6 = NaN
	addiu   a0, s0, 0x0028             ## a0 = 00000028
	lui     a2, 0x40E0                 ## a2 = 40E00000
	sub.s   $f8, $f4, $f6              
	mfc1    a1, $f8                    
	jal     func_8006385C              
	nop
	beql    v0, $zero, lbl_80B3F294    
	lw      $ra, 0x001C($sp)           
	lh      t0, 0x0184(s0)             ## 00000184
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	lui     t5, %hi(var_80B3F6CC)      ## t5 = 80B40000
	bnel    t0, $at, lbl_80B3F268      
	lw      t1, 0x0004(s0)             ## 00000004
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B3F294 
	lw      $ra, 0x001C($sp)           
	lw      t1, 0x0004(s0)             ## 00000004
lbl_80B3F268:
	addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
	or      a0, s0, $zero              ## a0 = 00000000
	ori     t2, t1, 0x0001             ## t2 = 00000001
	sw      t2, 0x0004(s0)             ## 00000004
	and     t4, t2, $at                
	sw      t4, 0x0004(s0)             ## 00000004
	lbu     t5, %lo(var_80B3F6CC)(t5)  
	sb      $zero, 0x0114(s0)          ## 00000114
	jal     func_80B3E0E0              
	sb      t5, 0x00AF(s0)             ## 000000AF
lbl_80B3F290:
	lw      $ra, 0x001C($sp)           
lbl_80B3F294:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3F2A4:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	or      a3, a1, $zero              ## a3 = 00000000
	lbu     v0, 0x0215(s0)             ## 00000215
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, s0, 0x021C             ## a1 = 0000021C
	andi    t6, v0, 0x0002             ## t6 = 00000000
	beq     t6, $zero, lbl_80B3F324    
	andi    t7, v0, 0xFFFD             ## t7 = 00000000
	sb      t7, 0x0215(s0)             ## 00000215
	sw      a3, 0x0024($sp)            
	jal     func_800283BC              
	addiu   a2, $zero, 0x0001          ## a2 = 00000001
	lw      t8, 0x020C(s0)             ## 0000020C
	addiu   $at, $zero, 0x0193         ## $at = 00000193
	lw      a3, 0x0024($sp)            
	lh      t9, 0x0000(t8)             ## 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	beq     t9, $at, lbl_80B3F30C      
	nop
	jal     func_80B3E250              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B3F348 
	lw      $ra, 0x001C($sp)           
lbl_80B3F30C:
	jal     func_80B3E05C              
	or      a1, a3, $zero              ## a1 = 00000000
	jal     func_80B3E2A0              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80B3F348 
	lw      $ra, 0x001C($sp)           
lbl_80B3F324:
	lbu     t0, 0x1C26(a3)             ## 00001C26
	or      a0, s0, $zero              ## a0 = 00000000
	beql    t0, $zero, lbl_80B3F348    
	lw      $ra, 0x001C($sp)           
	jal     func_80B3E05C              
	or      a1, a3, $zero              ## a1 = 00000000
	jal     func_80B3E2A0              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      $ra, 0x001C($sp)           
lbl_80B3F348:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3F358:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s1, 0x0020($sp)            
	sw      s0, 0x001C($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s1, a1, $zero              ## s1 = 00000000
	sw      $ra, 0x0024($sp)           
	lh      t6, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
	or      a0, s0, $zero              ## a0 = 00000000
	beql    t6, $at, lbl_80B3F4D0      
	lw      $ra, 0x0024($sp)           
	jal     func_80B3F2A4              
	or      a1, s1, $zero              ## a1 = 00000000
	lw      t9, 0x0180(s0)             ## 00000180
	or      a0, s0, $zero              ## a0 = 00000000
	or      a1, s1, $zero              ## a1 = 00000000
	jalr    $ra, t9                    
	nop
	lw      v1, 0x0180(s0)             ## 00000180
	lui     t7, %hi(func_80B3F178)     ## t7 = 80B40000
	addiu   t7, t7, %lo(func_80B3F178) ## t7 = 80B3F178
	beq     t7, v1, lbl_80B3F400       
	lui     t8, %hi(func_80B3EBF0)     ## t8 = 80B40000
	addiu   t8, t8, %lo(func_80B3EBF0) ## t8 = 80B3EBF0
	beql    t8, v1, lbl_80B3F404       
	addiu   a1, s0, 0x0204             ## a1 = 00000204
	jal     func_8002121C              
	or      a0, s0, $zero              ## a0 = 00000000
	lh      t0, 0x0244(s0)             ## 00000244
	lh      t1, 0x0246(s0)             ## 00000246
	addiu   t2, $zero, 0x001D          ## t2 = 0000001D
	mtc1    t0, $f4                    ## $f4 = 0.00
	mtc1    t1, $f6                    ## $f6 = 0.00
	sw      t2, 0x0014($sp)            
	cvt.s.w $f4, $f4                   
	or      a0, s1, $zero              ## a0 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	lui     a2, 0x41A0                 ## a2 = 41A00000
	cvt.s.w $f8, $f6                   
	mfc1    a3, $f4                    
	jal     func_80021E6C              
	swc1    $f8, 0x0010($sp)           
lbl_80B3F400:
	addiu   a1, s0, 0x0204             ## a1 = 00000204
lbl_80B3F404:
	sw      a1, 0x0028($sp)            
	jal     func_80050B00              
	or      a0, s0, $zero              ## a0 = 00000000
	lbu     t3, 0x0215(s0)             ## 00000215
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	andi    t4, t3, 0x0001             ## t4 = 00000000
	beq     t4, $zero, lbl_80B3F434    
	or      a0, s1, $zero              ## a0 = 00000000
	addu    a1, s1, $at                
	jal     func_8004BF40              ## CollisionCheck_setAC
	lw      a2, 0x0028($sp)            
lbl_80B3F434:
	lui     $at, 0x0001                ## $at = 00010000
	ori     $at, $at, 0x1E60           ## $at = 00011E60
	addu    a1, s1, $at                
	or      a0, s1, $zero              ## a0 = 00000000
	jal     func_8004C130              ## CollisionCheck_setOT
	lw      a2, 0x0028($sp)            
	lw      v1, 0x0180(s0)             ## 00000180
	lui     t5, %hi(func_80B3E590)     ## t5 = 80B40000
	addiu   t5, t5, %lo(func_80B3E590) ## t5 = 80B3E590
	bne     t5, v1, lbl_80B3F474       
	lui     t6, %hi(func_80B3EA78)     ## t6 = 80B40000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80020F04              
	lw      a1, 0x0154(s0)             ## 00000154
	beq     $zero, $zero, lbl_80B3F4D0 
	lw      $ra, 0x0024($sp)           
lbl_80B3F474:
	addiu   t6, t6, %lo(func_80B3EA78) ## t6 = FFFFEA78
	bne     t6, v1, lbl_80B3F4C4       
	or      a0, s0, $zero              ## a0 = 00000000
	lui     a0, 0x0600                 ## a0 = 06000000
	jal     func_8008A194              
	addiu   a0, a0, 0x24CC             ## a0 = 060024CC
	lui     $at, 0x41A0                ## $at = 41A00000
	mtc1    $at, $f0                   ## $f0 = 20.00
	lwc1    $f10, 0x0154(s0)           ## 00000154
	mtc1    v0, $f18                   ## $f18 = 0.00
	or      a0, s0, $zero              ## a0 = 00000000
	mul.s   $f16, $f10, $f0            
	cvt.s.w $f4, $f18                  
	div.s   $f6, $f16, $f4             
	sub.s   $f8, $f0, $f6              
	mfc1    a1, $f8                    
	jal     func_80020F04              
	nop
	beq     $zero, $zero, lbl_80B3F4D0 
	lw      $ra, 0x0024($sp)           
lbl_80B3F4C4:
	jal     func_80020F04              
	lui     a1, 0x41A0                 ## a1 = 41A00000
	lw      $ra, 0x0024($sp)           
lbl_80B3F4D0:
	lw      s0, 0x001C($sp)            
	lw      s1, 0x0020($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80B3F4E0:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a2, 0x0020($sp)            
	sw      a3, 0x0024($sp)            
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	bne     a1, $at, lbl_80B3F600      
	lw      v0, 0x002C($sp)            
	lw      t7, 0x0180(v0)             ## 00000180
	lui     t6, %hi(func_80B3E93C)     ## t6 = 80B40000
	addiu   t6, t6, %lo(func_80B3E93C) ## t6 = 80B3E93C
	bne     t6, t7, lbl_80B3F600       
	lui     $at, 0x40C0                ## $at = 40C00000
	mtc1    $at, $f18                  ## $f18 = 6.00
	lwc1    $f0, 0x0154(v0)            ## 00000154
	lui     $at, 0x40E0                ## $at = 40E00000
	c.le.s  $f0, $f18                  
	nop
	bc1fl   lbl_80B3F568               
	mtc1    $at, $f2                   ## $f2 = 7.00
	lui     $at, 0x3F80                ## $at = 3F800000
	mtc1    $at, $f18                  ## $f18 = 1.00
	lui     $at, %hi(var_80B3F6F0)     ## $at = 80B40000
	lwc1    $f4, %lo(var_80B3F6F0)($at) 
	lui     $at, %hi(var_80B3F6F4)     ## $at = 80B40000
	lwc1    $f8, %lo(var_80B3F6F4)($at) 
	mul.s   $f6, $f0, $f4              
	nop
	mul.s   $f10, $f0, $f8             
	sub.s   $f14, $f18, $f6            
	add.s   $f12, $f10, $f18           
	beq     $zero, $zero, lbl_80B3F5F4 
	mov.s   $f16, $f12                 
	mtc1    $at, $f2                   ## $f2 = 0.00
lbl_80B3F568:
	lui     $at, 0x4120                ## $at = 41200000
	c.le.s  $f0, $f2                   
	nop
	bc1fl   lbl_80B3F5B0               
	mtc1    $at, $f4                   ## $f4 = 10.00
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f4                   ## $f4 = 0.50
	lui     $at, %hi(var_80B3F6F8)     ## $at = 80B40000
	lwc1    $f6, %lo(var_80B3F6F8)($at) 
	sub.s   $f0, $f0, $f18             
	lui     $at, %hi(var_80B3F6FC)     ## $at = 80B40000
	lwc1    $f8, %lo(var_80B3F6FC)($at) 
	add.s   $f14, $f4, $f0             
	mul.s   $f10, $f0, $f8             
	sub.s   $f12, $f6, $f10            
	beq     $zero, $zero, lbl_80B3F5F4 
	mov.s   $f16, $f12                 
	mtc1    $at, $f4                   ## $f4 = 0.00
lbl_80B3F5B0:
	lui     $at, 0x3F80                ## $at = 3F800000
	c.le.s  $f0, $f4                   
	nop
	bc1f    lbl_80B3F5EC               
	nop
	mtc1    $at, $f12                  ## $f12 = 1.00
	sub.s   $f8, $f0, $f2              
	lui     $at, %hi(var_80B3F700)     ## $at = 80B40000
	lwc1    $f6, %lo(var_80B3F700)($at) 
	lui     $at, 0x3FC0                ## $at = 3FC00000
	mtc1    $at, $f4                   ## $f4 = 1.50
	mul.s   $f10, $f8, $f6             
	mov.s   $f16, $f12                 
	beq     $zero, $zero, lbl_80B3F5F4 
	sub.s   $f14, $f4, $f10            
lbl_80B3F5EC:
	beq     $zero, $zero, lbl_80B3F604 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B3F5F4:
	mfc1    a2, $f16                   
	jal     func_800AA8FC              
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
lbl_80B3F600:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80B3F604:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80B3F614:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0020($sp)            
	sw      a1, 0x0024($sp)            
	lw      t6, 0x0020($sp)            
	addiu   $at, $zero, 0x000A         ## $at = 0000000A
	lui     a3, %hi(func_80B3F4E0)     ## a3 = 80B40000
	lh      t7, 0x001C(t6)             ## 0000001C
	addiu   a3, a3, %lo(func_80B3F4E0) ## a3 = 80B3F4E0
	lw      a0, 0x0024($sp)            
	bne     t7, $at, lbl_80B3F65C      
	lw      t8, 0x0020($sp)            
	lui     a1, 0x0600                 ## a1 = 06000000
	addiu   a1, a1, 0x14E0             ## a1 = 060014E0
	jal     func_80028048              
	lw      a0, 0x0024($sp)            
	beq     $zero, $zero, lbl_80B3F674 
	lw      $ra, 0x001C($sp)           
lbl_80B3F65C:
	lw      a1, 0x0140(t8)             ## 00000140
	lw      a2, 0x015C(t8)             ## 0000015C
	sw      t8, 0x0014($sp)            
	jal     func_8008993C              
	sw      $zero, 0x0010($sp)         
	lw      $ra, 0x001C($sp)           
lbl_80B3F674:
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop

.section .data

var_80B3F680: .word 0x01920500, 0x00000005, 0x01640000, 0x00000250
.word func_80B3DE80
.word func_80B3E020
.word func_80B3F358
.word func_80B3F614
var_80B3F6A0: .word \
0x06000939, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x00120020, 0x00000000, 0x00000000
var_80B3F6CC: .word 0x01000012, 0x0020FE00
var_80B3F6D4: .word 0x00000000
var_80B3F6D8: .word \
0xB06CFFFF, 0x8917000A, 0x304C0A28, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80B3F6F0: .word 0x3DAA9931
var_80B3F6F4: .word 0x3DEF0069
var_80B3F6F8: .word 0x3FD9999A
var_80B3F6FC: .word 0x3F333333
var_80B3F700: .word 0x3E2AB368, 0x00000000, 0x00000000, 0x00000000

