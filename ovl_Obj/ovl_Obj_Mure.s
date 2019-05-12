#include <mips.h>
.set noreorder
.set noat

.section .text
func_80944760:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	lh      v0, 0x0146(a0)             ## 00000146
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	lui     a1, %hi(var_809455EC)      ## a1 = 80940000
	beq     v0, $at, lbl_80944790      
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	beq     v0, $at, lbl_80944790      
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	bne     v0, $at, lbl_809447A0      
	nop
lbl_80944790:
	jal     func_80063F7C              
	addiu   a1, a1, %lo(var_809455EC)  ## a1 = 809455EC
	beq     $zero, $zero, lbl_809447A8 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_809447A0:
	beq     $zero, $zero, lbl_809447A8 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_809447A8:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_809447B8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	jal     func_80944760              
	nop
	bne     v0, $zero, lbl_809447D8    
	lw      $ra, 0x0014($sp)           
	beq     $zero, $zero, lbl_809447DC 
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_809447D8:
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_809447DC:
	jr      $ra                        
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_809447E4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lh      v0, 0x001C(a0)             ## 0000001C
	sra     t8, v0,  8                 
	andi    t9, t8, 0x0007             ## t9 = 00000000
	sh      t9, 0x0142(a0)             ## 00000142
	lh      t3, 0x0142(a0)             ## 00000142
	sra     t6, v0, 12                 
	sra     t0, v0,  5                 
	andi    t7, t6, 0x000F             ## t7 = 00000000
	andi    t1, t0, 0x0003             ## t1 = 00000000
	andi    t2, v0, 0x001F             ## t2 = 00000000
	slti    $at, t3, 0x0004            
	sh      t7, 0x0140(a0)             ## 00000140
	sh      t1, 0x0144(a0)             ## 00000144
	bne     $at, $zero, lbl_80944838   
	sh      t2, 0x0146(a0)             ## 00000146
	jal     func_80020EB4              
	nop
	beq     $zero, $zero, lbl_80944888 
	lw      $ra, 0x0014($sp)           
lbl_80944838:
	lh      t4, 0x0146(a0)             ## 00000146
	slti    $at, t4, 0x0005            
	bne     $at, $zero, lbl_80944858   
	nop
	jal     func_80020EB4              
	nop
	beq     $zero, $zero, lbl_80944888 
	lw      $ra, 0x0014($sp)           
lbl_80944858:
	jal     func_809447B8              
	sw      a0, 0x0018($sp)            
	bne     v0, $zero, lbl_80944878    
	lw      a0, 0x0018($sp)            
	jal     func_80020EB4              
	nop
	beq     $zero, $zero, lbl_80944888 
	lw      $ra, 0x0014($sp)           
lbl_80944878:
	lui     t5, %hi(func_80944E38)     ## t5 = 80940000
	addiu   t5, t5, %lo(func_80944E38) ## t5 = 80944E38
	sw      t5, 0x013C(a0)             ## 0000013C
	lw      $ra, 0x0014($sp)           
lbl_80944888:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80944894:
	sw      a0, 0x0000($sp)            
	sw      a1, 0x0004($sp)            
	jr      $ra                        
	nop


func_809448A4:
	lh      v1, 0x0140(a0)             ## 00000140
	bne     v1, $zero, lbl_809448C8    
	or      v0, v1, $zero              ## v0 = 00000000
	lh      t6, 0x0142(a0)             ## 00000142
	lui     v0, %hi(var_809455C4)      ## v0 = 80940000
	sll     t7, t6,  2                 
	addu    v0, v0, t7                 
	jr      $ra                        
	lw      v0, %lo(var_809455C4)(v0)  
lbl_809448C8:
	jr      $ra                        
	nop


func_809448D0:
	sw      a2, 0x0008($sp)            
	sw      a3, 0x000C($sp)            
	lw      t7, 0x0000(a1)             ## 00000000
	sw      t7, 0x0000(a0)             ## 00000000
	lw      t6, 0x0004(a1)             ## 00000004
	sw      t6, 0x0004(a0)             ## 00000004
	lw      t7, 0x0008(a1)             ## 00000008
	sw      t7, 0x0008(a0)             ## 00000008
	jr      $ra                        
	nop


func_809448F8:
	addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
	sw      s5, 0x0044($sp)            
	sw      s0, 0x0030($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s5, a1, $zero              ## s5 = 00000000
	sw      $ra, 0x0054($sp)           
	sw      s8, 0x0050($sp)            
	sw      s7, 0x004C($sp)            
	sw      s6, 0x0048($sp)            
	sw      s4, 0x0040($sp)            
	sw      s3, 0x003C($sp)            
	sw      s2, 0x0038($sp)            
	sw      s1, 0x0034($sp)            
	jal     func_809448A4              
	or      a0, s0, $zero              ## a0 = 00000000
	sw      v0, 0x006C($sp)            
	blez    v0, lbl_80944A90           
	or      s2, $zero, $zero           ## s2 = 00000000
	lui     s8, %hi(var_809455E0)      ## s8 = 80940000
	lui     s7, %hi(var_809455D4)      ## s7 = 80940000
	addiu   s7, s7, %lo(var_809455D4)  ## s7 = 809455D4
	addiu   s8, s8, %lo(var_809455E0)  ## s8 = 809455E0
	or      s4, s0, $zero              ## s4 = 00000000
	addiu   s6, $sp, 0x0074            ## s6 = FFFFFFEC
	lbu     v0, 0x0184(s4)             ## 00000184
lbl_8094495C:
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	addiu   s3, s5, 0x1C24             ## s3 = 00001C24
	beq     v0, $at, lbl_80944A78      
	sll     t6, s2,  2                 
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	addu    s1, s0, t6                 
	bne     v0, $at, lbl_80944A04      
	addiu   a1, s0, 0x0024             ## a1 = 00000024
	or      a0, s6, $zero              ## a0 = FFFFFFEC
	lh      a2, 0x0142(s0)             ## 00000142
	jal     func_809448D0              
	or      a3, s2, $zero              ## a3 = 00000000
	lh      v0, 0x0146(s0)             ## 00000146
	lwc1    $f4, 0x0078($sp)           
	lwc1    $f6, 0x007C($sp)           
	sll     v0, v0,  1                 
	addu    t7, s7, v0                 
	lh      a2, 0x0000(t7)             ## 00000000
	swc1    $f4, 0x0010($sp)           
	swc1    $f6, 0x0014($sp)           
	lh      t8, 0x0030(s0)             ## 00000030
	addu    t1, s8, v0                 
	lh      t2, 0x0000(t1)             ## 00000000
	sw      t8, 0x0018($sp)            
	lh      t9, 0x0032(s0)             ## 00000032
	or      a0, s3, $zero              ## a0 = 00001C24
	or      a1, s5, $zero              ## a1 = 00000000
	sw      t9, 0x001C($sp)            
	lh      t0, 0x0034(s0)             ## 00000034
	lw      a3, 0x0074($sp)            
	sw      t2, 0x0024($sp)            
	jal     func_80025110              ## ActorSpawn
	sw      t0, 0x0020($sp)            
	beq     v0, $zero, lbl_80944A78    
	sw      v0, 0x0148(s1)             ## 00000148
	lw      t3, 0x0004(v0)             ## 00000004
	ori     t4, t3, 0x0800             ## t4 = 00000800
	sw      t4, 0x0004(v0)             ## 00000004
	lw      t6, 0x0148(s1)             ## 00000148
	lb      t5, 0x0003(s0)             ## 00000003
	beq     $zero, $zero, lbl_80944A78 
	sb      t5, 0x0003(t6)             ## 00000003
lbl_80944A04:
	or      a0, s6, $zero              ## a0 = FFFFFFEC
	lh      a2, 0x0142(s0)             ## 00000142
	jal     func_809448D0              
	or      a3, s2, $zero              ## a3 = 00000000
	lh      v0, 0x0146(s0)             ## 00000146
	lwc1    $f8, 0x0078($sp)           
	lwc1    $f10, 0x007C($sp)          
	sll     v0, v0,  1                 
	addu    t7, s7, v0                 
	lh      a2, 0x0000(t7)             ## 00000000
	swc1    $f8, 0x0010($sp)           
	swc1    $f10, 0x0014($sp)          
	lh      t8, 0x0030(s0)             ## 00000030
	addu    t1, s8, v0                 
	lh      t2, 0x0000(t1)             ## 00000000
	sw      t8, 0x0018($sp)            
	lh      t9, 0x0032(s0)             ## 00000032
	or      a0, s3, $zero              ## a0 = 00001C24
	or      a1, s5, $zero              ## a1 = 00000000
	sw      t9, 0x001C($sp)            
	lh      t0, 0x0034(s0)             ## 00000034
	lw      a3, 0x0074($sp)            
	sw      t2, 0x0024($sp)            
	jal     func_80025110              ## ActorSpawn
	sw      t0, 0x0020($sp)            
	beq     v0, $zero, lbl_80944A78    
	sw      v0, 0x0148(s1)             ## 00000148
	lb      t3, 0x0003(s0)             ## 00000003
	sb      t3, 0x0003(v0)             ## 00000003
lbl_80944A78:
	lw      t5, 0x006C($sp)            
	addiu   s2, s2, 0x0001             ## s2 = 00000001
	addiu   s4, s4, 0x0001             ## s4 = 00000001
	slt     $at, s2, t5                
	bnel    $at, $zero, lbl_8094495C   
	lbu     v0, 0x0184(s4)             ## 00000185
lbl_80944A90:
	lw      $ra, 0x0054($sp)           
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
	addiu   $sp, $sp, 0x0088           ## $sp = 00000000


func_80944AC0:
	addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
	sw      s4, 0x0040($sp)            
	sw      s0, 0x0030($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	or      s4, a1, $zero              ## s4 = 00000000
	sw      $ra, 0x0054($sp)           
	sw      s8, 0x0050($sp)            
	sw      s7, 0x004C($sp)            
	sw      s6, 0x0048($sp)            
	sw      s5, 0x0044($sp)            
	sw      s3, 0x003C($sp)            
	sw      s2, 0x0038($sp)            
	sw      s1, 0x0034($sp)            
	jal     func_809448A4              
	or      a0, s0, $zero              ## a0 = 00000000
	or      s5, v0, $zero              ## s5 = 00000000
	blez    v0, lbl_80944BDC           
	or      s1, $zero, $zero           ## s1 = 00000000
	addiu   s6, s4, 0x1C24             ## s6 = 00001C24
	or      s2, s0, $zero              ## s2 = 00000000
	or      s3, s0, $zero              ## s3 = 00000000
	addiu   s7, s0, 0x0024             ## s7 = 00000024
	addiu   s8, $sp, 0x007C            ## s8 = FFFFFFEC
lbl_80944B1C:
	or      a0, s8, $zero              ## a0 = FFFFFFEC
	or      a1, s7, $zero              ## a1 = 00000024
	lh      a2, 0x0142(s0)             ## 00000142
	jal     func_809448D0              
	or      a3, s1, $zero              ## a3 = 00000000
	lh      v0, 0x0146(s0)             ## 00000146
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	or      a0, s6, $zero              ## a0 = 00001C24
	bne     v0, $at, lbl_80944B54      
	lwc1    $f4, 0x0080($sp)           
	bne     s1, $zero, lbl_80944B54    
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	beq     $zero, $zero, lbl_80944B64 
	sll     v1, v0,  1                 
lbl_80944B54:
	sll     v1, v0,  1                 
	lui     t0, %hi(var_809455E0)      ## t0 = 80940000
	addu    t0, t0, v1                 
	lh      t0, %lo(var_809455E0)(t0)  
lbl_80944B64:
	lwc1    $f6, 0x0084($sp)           
	swc1    $f4, 0x0010($sp)           
	lui     a2, %hi(var_809455D4)      ## a2 = 80940000
	swc1    $f6, 0x0014($sp)           
	lh      t6, 0x0030(s0)             ## 00000030
	addu    a2, a2, v1                 
	lh      a2, %lo(var_809455D4)(a2)  
	sw      t6, 0x0018($sp)            
	lh      t7, 0x0032(s0)             ## 00000032
	or      a1, s4, $zero              ## a1 = 00000000
	lw      a3, 0x007C($sp)            
	sw      t7, 0x001C($sp)            
	lh      t8, 0x0034(s0)             ## 00000034
	sw      t0, 0x0024($sp)            
	jal     func_80025110              ## ActorSpawn
	sw      t8, 0x0020($sp)            
	beq     v0, $zero, lbl_80944BC0    
	sw      v0, 0x0148(s2)             ## 00000148
	sb      $zero, 0x0184(s3)          ## 00000184
	lw      t1, 0x0148(s2)             ## 00000148
	lb      t9, 0x0003(s0)             ## 00000003
	beq     $zero, $zero, lbl_80944BC8 
	sb      t9, 0x0003(t1)             ## 00000003
lbl_80944BC0:
	addiu   t2, $zero, 0x0001          ## t2 = 00000001
	sb      t2, 0x0184(s3)             ## 00000184
lbl_80944BC8:
	addiu   s1, s1, 0x0001             ## s1 = 00000001
	slt     $at, s1, s5                
	addiu   s2, s2, 0x0004             ## s2 = 00000004
	bne     $at, $zero, lbl_80944B1C   
	addiu   s3, s3, 0x0001             ## s3 = 00000001
lbl_80944BDC:
	lw      $ra, 0x0054($sp)           
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
	addiu   $sp, $sp, 0x0090           ## $sp = 00000000


func_80944C0C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lh      v0, 0x0144(a0)             ## 00000144
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beq     v0, $zero, lbl_80944C34    
	nop
	beq     v0, $at, lbl_80944C44      
	nop
	beq     $zero, $zero, lbl_80944C50 
	lw      $ra, 0x0014($sp)           
lbl_80944C34:
	jal     func_809448F8              
	nop
	beq     $zero, $zero, lbl_80944C50 
	lw      $ra, 0x0014($sp)           
lbl_80944C44:
	jal     func_80944AC0              
	nop
	lw      $ra, 0x0014($sp)           
lbl_80944C50:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80944C5C:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      s6, 0x0030($sp)            
	or      s6, a1, $zero              ## s6 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      s5, 0x002C($sp)            
	sw      s4, 0x0028($sp)            
	sw      s3, 0x0024($sp)            
	sw      s2, 0x0020($sp)            
	sw      s1, 0x001C($sp)            
	sw      s0, 0x0018($sp)            
	jal     func_809448A4              
	sw      a0, 0x0038($sp)            
	blez    v0, lbl_80944D2C           
	lw      a0, 0x0038($sp)            
	sll     t6, v0,  2                 
	addu    s2, t6, a0                 
	or      s1, a0, $zero              ## s1 = 00000000
	or      s0, a0, $zero              ## s0 = 00000000
	addiu   s5, $zero, 0x0002          ## s5 = 00000002
	addiu   s4, $zero, 0x0001          ## s4 = 00000001
lbl_80944CAC:
	lbu     v0, 0x0184(s1)             ## 00000184
	beq     v0, s4, lbl_80944CC8       
	nop
	beql    v0, s5, lbl_80944CD4       
	lw      a0, 0x0148(s0)             ## 00000148
	beq     $zero, $zero, lbl_80944CF0 
	lw      a0, 0x0148(s0)             ## 00000148
lbl_80944CC8:
	beq     $zero, $zero, lbl_80944D1C 
	sw      $zero, 0x0148(s0)          ## 00000148
	lw      a0, 0x0148(s0)             ## 00000148
lbl_80944CD4:
	beql    a0, $zero, lbl_80944D20    
	addiu   s0, s0, 0x0004             ## s0 = 00000004
	jal     func_80020EB4              
	nop
	beq     $zero, $zero, lbl_80944D1C 
	sw      $zero, 0x0148(s0)          ## 0000014C
	lw      a0, 0x0148(s0)             ## 0000014C
lbl_80944CF0:
	beql    a0, $zero, lbl_80944D20    
	addiu   s0, s0, 0x0004             ## s0 = 00000008
	jal     func_80022BB0              
	or      a1, s6, $zero              ## a1 = 00000000
	beq     v0, $zero, lbl_80944D10    
	nop
	beq     $zero, $zero, lbl_80944D1C 
	sw      $zero, 0x0148(s0)          ## 00000150
lbl_80944D10:
	jal     func_80020EB4              
	lw      a0, 0x0148(s0)             ## 00000150
	sw      $zero, 0x0148(s0)          ## 00000150
lbl_80944D1C:
	addiu   s0, s0, 0x0004             ## s0 = 0000000C
lbl_80944D20:
	sltu    $at, s0, s2                
	bne     $at, $zero, lbl_80944CAC   
	addiu   s1, s1, 0x0001             ## s1 = 00000001
lbl_80944D2C:
	lw      $ra, 0x0034($sp)           
	lw      s0, 0x0018($sp)            
	lw      s1, 0x001C($sp)            
	lw      s2, 0x0020($sp)            
	lw      s3, 0x0024($sp)            
	lw      s4, 0x0028($sp)            
	lw      s5, 0x002C($sp)            
	lw      s6, 0x0030($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80944D54:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	jal     func_80944C5C              
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80944D74:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_809448A4              
	or      a0, s0, $zero              ## a0 = 00000000
	or      t2, v0, $zero              ## t2 = 00000000
	blez    v0, lbl_80944E24           
	or      a2, $zero, $zero           ## a2 = 00000000
	or      a1, s0, $zero              ## a1 = 00000000
	addiu   t1, $zero, 0x0002          ## t1 = 00000002
	addiu   t0, $zero, 0x0002          ## t0 = 00000002
	addiu   a3, $zero, 0x0001          ## a3 = 00000001
lbl_80944DAC:
	lw      v0, 0x0148(a1)             ## 00000148
	addu    v1, s0, a2                 
	beql    v0, $zero, lbl_80944E18    
	addiu   a2, a2, 0x0001             ## a2 = 00000001
	lbu     a0, 0x0184(v1)             ## 00000184
	bne     a0, $zero, lbl_80944DF8    
	nop
	lw      t6, 0x0130(v0)             ## 00000130
	beql    t6, $zero, lbl_80944DF0    
	sb      a3, 0x0184(v1)             ## 00000184
	lw      t7, 0x0004(v0)             ## 00000004
	andi    t8, t7, 0x0800             ## t8 = 00000000
	beql    t8, $zero, lbl_80944E18    
	addiu   a2, a2, 0x0001             ## a2 = 00000002
	beq     $zero, $zero, lbl_80944E14 
	sb      t0, 0x0184(v1)             ## 00000184
	sb      a3, 0x0184(v1)             ## 00000184
lbl_80944DF0:
	beq     $zero, $zero, lbl_80944E14 
	sw      $zero, 0x0148(a1)          ## 00000148
lbl_80944DF8:
	bnel    t1, a0, lbl_80944E18       
	addiu   a2, a2, 0x0001             ## a2 = 00000003
	lw      t9, 0x0130(v0)             ## 00000130
	bnel    t9, $zero, lbl_80944E18    
	addiu   a2, a2, 0x0001             ## a2 = 00000004
	sb      a3, 0x0184(v1)             ## 00000184
	sw      $zero, 0x0148(a1)          ## 00000148
lbl_80944E14:
	addiu   a2, a2, 0x0001             ## a2 = 00000005
lbl_80944E18:
	slt     $at, a2, t2                
	bne     $at, $zero, lbl_80944DAC   
	addiu   a1, a1, 0x0004             ## a1 = 00000004
lbl_80944E24:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80944E38:
	sw      a1, 0x0004($sp)            
	lui     t6, %hi(func_80944E50)     ## t6 = 80940000
	addiu   t6, t6, %lo(func_80944E50) ## t6 = 80944E50
	sw      t6, 0x013C(a0)             ## 0000013C
	jr      $ra                        
	nop


func_80944E50:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lh      t6, 0x0146(a0)             ## 00000146
	lwc1    $f0, 0x00EC(a0)            ## 000000EC
	lui     $at, %hi(var_809455B0)     ## $at = 80940000
	sll     t7, t6,  2                 
	addu    $at, $at, t7               
	lwc1    $f4, %lo(var_809455B0)($at) 
	abs.s   $f0, $f0                   
	lui     t8, %hi(func_809454B4)     ## t8 = 80940000
	c.lt.s  $f0, $f4                   
	nop
	bc1fl   lbl_80944EA4               
	lw      $ra, 0x0014($sp)           
	lw      t9, 0x0004(a0)             ## 00000004
	addiu   t8, t8, %lo(func_809454B4) ## t8 = 809454B4
	sw      t8, 0x013C(a0)             ## 0000013C
	ori     t0, t9, 0x0010             ## t0 = 00000010
	jal     func_80944C0C              
	sw      t0, 0x0004(a0)             ## 00000004
	lw      $ra, 0x0014($sp)           
lbl_80944EA4:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80944EB0:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sdc1    $f22, 0x0018($sp)          
	sw      s3, 0x0030($sp)            
	mtc1    a1, $f22                   ## $f22 = 0.00
	or      s3, a0, $zero              ## s3 = 00000000
	sw      $ra, 0x0034($sp)           
	sw      s2, 0x002C($sp)            
	sw      s1, 0x0028($sp)            
	sw      s0, 0x0024($sp)            
	sdc1    $f20, 0x0010($sp)          
	jal     func_809448A4              
	or      a0, s3, $zero              ## a0 = 00000000
	or      s2, v0, $zero              ## s2 = 00000000
	blez    v0, lbl_80944F64           
	or      s0, $zero, $zero           ## s0 = 00000000
	or      s1, s3, $zero              ## s1 = 00000000
lbl_80944EF0:
	lw      v0, 0x0148(s1)             ## 00000148
	beql    v0, $zero, lbl_80944F58    
	addiu   s0, s0, 0x0001             ## s0 = 00000001
	jal     func_800CDCCC              ## Rand.Next() float
	sw      $zero, 0x011C(v0)          ## 0000011C
	c.le.s  $f0, $f22                  
	nop
	bc1fl   lbl_80944F58               
	addiu   s0, s0, 0x0001             ## s0 = 00000002
	mtc1    s2, $f4                    ## $f4 = 0.00
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f8                   ## $f8 = 0.50
	cvt.s.w $f6, $f4                   
	jal     func_800CDCCC              ## Rand.Next() float
	sub.s   $f20, $f6, $f8             
	mul.s   $f10, $f0, $f20            
	trunc.w.s $f16, $f10                 
	mfc1    v0, $f16                   
	nop
	beq     s0, v0, lbl_80944F54       
	sll     t7, v0,  2                 
	addu    t8, s3, t7                 
	lw      t9, 0x0148(t8)             ## 00000148
	lw      t0, 0x0148(s1)             ## 00000148
	sw      t9, 0x011C(t0)             ## 0000011C
lbl_80944F54:
	addiu   s0, s0, 0x0001             ## s0 = 00000003
lbl_80944F58:
	slt     $at, s0, s2                
	bne     $at, $zero, lbl_80944EF0   
	addiu   s1, s1, 0x0004             ## s1 = 00000004
lbl_80944F64:
	lw      $ra, 0x0034($sp)           
	ldc1    $f20, 0x0010($sp)          
	ldc1    $f22, 0x0018($sp)          
	lw      s0, 0x0024($sp)            
	lw      s1, 0x0028($sp)            
	lw      s2, 0x002C($sp)            
	lw      s3, 0x0030($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000


func_80944F88:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	or      a0, a3, $zero              ## a0 = 00000000
	jal     func_809448A4              
	sw      a3, 0x0018($sp)            
	lw      a3, 0x0018($sp)            
	lw      t3, 0x001C($sp)            
	or      t1, v0, $zero              ## t1 = 00000000
	or      a1, $zero, $zero           ## a1 = 00000000
	blez    v0, lbl_809450F8           
	or      t2, $zero, $zero           ## t2 = 00000000
	or      a2, a3, $zero              ## a2 = 00000000
lbl_80944FC0:
	lw      v1, 0x0148(a2)             ## 00000148
	slt     $at, t2, t3                
	beql    v1, $zero, lbl_809450EC    
	addiu   a1, a1, 0x0001             ## a1 = 00000001
	beq     $at, $zero, lbl_809450D8   
	or      a0, $zero, $zero           ## a0 = 00000000
	addiu   t2, t2, 0x0001             ## t2 = 00000001
	blez    v0, lbl_809450E8           
	sw      v1, 0x011C(v1)             ## 0000011C
	andi    v1, v0, 0x0003             ## v1 = 00000000
	beq     v1, $zero, lbl_80945028    
	or      t0, v1, $zero              ## t0 = 00000000
lbl_80944FF0:
	beq     a1, a0, lbl_80945014       
	sll     t6, a0,  2                 
	addu    t7, a3, t6                 
	lw      v1, 0x0148(t7)             ## 00000148
	lw      t9, 0x0148(a2)             ## 00000148
	lw      t8, 0x011C(v1)             ## 0000011C
	bnel    t8, t9, lbl_80945018       
	addiu   a0, a0, 0x0001             ## a0 = 00000001
	sw      $zero, 0x011C(v1)          ## 0000011C
lbl_80945014:
	addiu   a0, a0, 0x0001             ## a0 = 00000002
lbl_80945018:
	bne     t0, a0, lbl_80944FF0       
	nop
	beql    a0, v0, lbl_809450EC       
	addiu   a1, a1, 0x0001             ## a1 = 00000002
lbl_80945028:
	beq     a1, a0, lbl_80945050       
	addiu   t8, a0, 0x0001             ## t8 = 00000003
	sll     t4, a0,  2                 
	addu    t5, a3, t4                 
	lw      v1, 0x0148(t5)             ## 00000148
	lw      t7, 0x0148(a2)             ## 00000148
	lw      t6, 0x011C(v1)             ## 0000011C
	bne     t6, t7, lbl_80945050       
	nop
	sw      $zero, 0x011C(v1)          ## 0000011C
lbl_80945050:
	beq     a1, t8, lbl_80945078       
	addiu   t7, a0, 0x0002             ## t7 = 00000004
	sll     t9, a0,  2                 
	addu    t4, a3, t9                 
	lw      v1, 0x014C(t4)             ## 0000014C
	lw      t6, 0x0148(a2)             ## 00000148
	lw      t5, 0x011C(v1)             ## 0000011C
	bne     t5, t6, lbl_80945078       
	nop
	sw      $zero, 0x011C(v1)          ## 0000011C
lbl_80945078:
	beq     a1, t7, lbl_809450A0       
	addiu   t6, a0, 0x0003             ## t6 = 00000005
	sll     t8, a0,  2                 
	addu    t9, a3, t8                 
	lw      v1, 0x0150(t9)             ## 00000150
	lw      t5, 0x0148(a2)             ## 00000148
	lw      t4, 0x011C(v1)             ## 0000011C
	bne     t4, t5, lbl_809450A0       
	nop
	sw      $zero, 0x011C(v1)          ## 0000011C
lbl_809450A0:
	beq     a1, t6, lbl_809450C4       
	sll     t7, a0,  2                 
	addu    t8, a3, t7                 
	lw      v1, 0x0154(t8)             ## 00000157
	lw      t4, 0x0148(a2)             ## 00000148
	lw      t9, 0x011C(v1)             ## 0000011C
	bnel    t9, t4, lbl_809450C8       
	addiu   a0, a0, 0x0004             ## a0 = 00000006
	sw      $zero, 0x011C(v1)          ## 0000011C
lbl_809450C4:
	addiu   a0, a0, 0x0004             ## a0 = 0000000A
lbl_809450C8:
	bne     a0, t1, lbl_80945028       
	nop
	beq     $zero, $zero, lbl_809450EC 
	addiu   a1, a1, 0x0001             ## a1 = 00000003
lbl_809450D8:
	lw      t5, 0x011C(v1)             ## 0000011C
	bnel    t5, v1, lbl_809450EC       
	addiu   a1, a1, 0x0001             ## a1 = 00000004
	sw      $zero, 0x011C(v1)          ## 0000011C
lbl_809450E8:
	addiu   a1, a1, 0x0001             ## a1 = 00000005
lbl_809450EC:
	slt     $at, a1, t1                
	bne     $at, $zero, lbl_80944FC0   
	addiu   a2, a2, 0x0004             ## a2 = 00000004
lbl_809450F8:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80945108:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lh      t6, 0x0194(s0)             ## 00000194
	bgtzl   t6, lbl_809452C0           
	lui     $at, 0x42F0                ## $at = 42F00000
	lh      t7, 0x0196(s0)             ## 00000196
	lui     $at, 0x4270                ## $at = 42700000
	beql    t7, $zero, lbl_809451E8    
	lwc1    $f4, 0x0090(s0)            ## 00000090
	jal     func_800CDCCC              ## Rand.Next() float
	sh      $zero, 0x0196(s0)          ## 00000196
	lui     $at, 0x3F00                ## $at = 3F000000
	mtc1    $at, $f4                   ## $f4 = 0.50
	lui     $at, %hi(var_80945610)     ## $at = 80940000
	lwc1    $f8, %lo(var_80945610)($at) 
	mul.s   $f6, $f0, $f4              
	or      a0, s0, $zero              ## a0 = 00000000
	add.s   $f10, $f6, $f8             
	mfc1    a1, $f10                   
	jal     func_80944EB0              
	nop
	lui     $at, 0x4270                ## $at = 42700000
	mtc1    $at, $f18                  ## $f18 = 60.00
	lwc1    $f16, 0x0090(s0)           ## 00000090
	c.lt.s  $f16, $f18                 
	nop
	bc1f    lbl_809451B4               
	nop
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x40B0                ## $at = 40B00000
	mtc1    $at, $f4                   ## $f4 = 5.50
	nop
	mul.s   $f6, $f0, $f4              
	trunc.w.s $f8, $f6                   
	mfc1    t1, $f8                    
	nop
	addiu   t2, t1, 0x0004             ## t2 = 00000004
	beq     $zero, $zero, lbl_809452BC 
	sh      t2, 0x0194(s0)             ## 00000194
lbl_809451B4:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x4222                ## $at = 42220000
	mtc1    $at, $f10                  ## $f10 = 40.50
	nop
	mul.s   $f16, $f0, $f10            
	trunc.w.s $f18, $f16                 
	mfc1    t6, $f18                   
	nop
	addiu   t7, t6, 0x0004             ## t7 = 00000004
	beq     $zero, $zero, lbl_809452BC 
	sh      t7, 0x0194(s0)             ## 00000194
	lwc1    $f4, 0x0090(s0)            ## 00000090
lbl_809451E8:
	mtc1    $at, $f6                   ## $f6 = 40.50
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	sh      t8, 0x0196(s0)             ## 00000196
	c.lt.s  $f4, $f6                   
	nop
	bc1f    lbl_80945264               
	nop
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x4128                ## $at = 41280000
	mtc1    $at, $f8                   ## $f8 = 10.50
	nop
	mul.s   $f10, $f0, $f8             
	trunc.w.s $f16, $f10                 
	mfc1    t2, $f16                   
	nop
	addiu   t3, t2, 0x0004             ## t3 = 00000004
	jal     func_800CDCCC              ## Rand.Next() float
	sh      t3, 0x0194(s0)             ## 00000194
	lui     $at, %hi(var_80945614)     ## $at = 80940000
	lwc1    $f18, %lo(var_80945614)($at) 
	lui     $at, %hi(var_80945618)     ## $at = 80940000
	lwc1    $f6, %lo(var_80945618)($at) 
	mul.s   $f4, $f0, $f18             
	or      a0, s0, $zero              ## a0 = 00000000
	add.s   $f8, $f4, $f6              
	mfc1    a1, $f8                    
	jal     func_80944EB0              
	nop
	beq     $zero, $zero, lbl_809452C0 
	lui     $at, 0x42F0                ## $at = 42F00000
lbl_80945264:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x4128                ## $at = 41280000
	mtc1    $at, $f10                  ## $f10 = 10.50
	nop
	mul.s   $f16, $f0, $f10            
	trunc.w.s $f18, $f16                 
	mfc1    t7, $f18                   
	nop
	addiu   t8, t7, 0x0004             ## t8 = 00000004
	jal     func_800CDCCC              ## Rand.Next() float
	sh      t8, 0x0194(s0)             ## 00000194
	lui     $at, %hi(var_8094561C)     ## $at = 80940000
	lwc1    $f4, %lo(var_8094561C)($at) 
	lui     $at, %hi(var_80945620)     ## $at = 80940000
	lwc1    $f8, %lo(var_80945620)($at) 
	mul.s   $f6, $f0, $f4              
	or      a0, s0, $zero              ## a0 = 00000000
	add.s   $f10, $f6, $f8             
	mfc1    a1, $f10                   
	jal     func_80944EB0              
	nop
lbl_809452BC:
	lui     $at, 0x42F0                ## $at = 42F00000
lbl_809452C0:
	mtc1    $at, $f18                  ## $f18 = 120.00
	lwc1    $f16, 0x0090(s0)           ## 00000090
	addiu   a1, $zero, 0x0001          ## a1 = 00000001
	or      a0, s0, $zero              ## a0 = 00000000
	c.lt.s  $f16, $f18                 
	nop
	bc1fl   lbl_809452F4               
	sh      $zero, 0x0198(s0)          ## 00000198
	lh      t9, 0x0198(s0)             ## 00000198
	addiu   t0, t9, 0x0001             ## t0 = 00000001
	beq     $zero, $zero, lbl_809452F4 
	sh      t0, 0x0198(s0)             ## 00000198
	sh      $zero, 0x0198(s0)          ## 00000198
lbl_809452F4:
	lh      t1, 0x0198(s0)             ## 00000198
	slti    $at, t1, 0x0050            
	bne     $at, $zero, lbl_80945314   
	nop
	jal     func_80944F88              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80945320 
	lw      $ra, 0x001C($sp)           
lbl_80945314:
	jal     func_80944F88              
	or      a1, $zero, $zero           ## a1 = 00000000
	lw      $ra, 0x001C($sp)           
lbl_80945320:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80945330:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	lh      t6, 0x0194(s0)             ## 00000194
	bgtz    t6, lbl_80945450           
	nop
	lh      t7, 0x0196(s0)             ## 00000196
	addiu   t8, $zero, 0x0001          ## t8 = 00000001
	beq     t7, $zero, lbl_80945400    
	nop
	jal     func_800CDCCC              ## Rand.Next() float
	sh      $zero, 0x0196(s0)          ## 00000196
	lui     $at, %hi(var_80945624)     ## $at = 80940000
	lwc1    $f4, %lo(var_80945624)($at) 
	or      a0, s0, $zero              ## a0 = 00000000
	mul.s   $f6, $f0, $f4              
	mfc1    a1, $f6                    
	jal     func_80944EB0              
	nop
	lui     $at, 0x4270                ## $at = 42700000
	mtc1    $at, $f10                  ## $f10 = 60.00
	lwc1    $f8, 0x0090(s0)            ## 00000090
	c.lt.s  $f8, $f10                  
	nop
	bc1f    lbl_809453D0               
	nop
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x40B0                ## $at = 40B00000
	mtc1    $at, $f16                  ## $f16 = 5.50
	nop
	mul.s   $f18, $f0, $f16            
	trunc.w.s $f4, $f18                  
	mfc1    t1, $f4                    
	nop
	addiu   t2, t1, 0x0004             ## t2 = 00000004
	beq     $zero, $zero, lbl_80945450 
	sh      t2, 0x0194(s0)             ## 00000194
lbl_809453D0:
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x4222                ## $at = 42220000
	mtc1    $at, $f6                   ## $f6 = 40.50
	nop
	mul.s   $f8, $f0, $f6              
	trunc.w.s $f10, $f8                  
	mfc1    t6, $f10                   
	nop
	addiu   t7, t6, 0x0004             ## t7 = 00000004
	beq     $zero, $zero, lbl_80945450 
	sh      t7, 0x0194(s0)             ## 00000194
lbl_80945400:
	jal     func_800CDCCC              ## Rand.Next() float
	sh      t8, 0x0196(s0)             ## 00000196
	lui     $at, %hi(var_80945628)     ## $at = 80940000
	lwc1    $f16, %lo(var_80945628)($at) 
	or      a0, s0, $zero              ## a0 = 00000000
	mul.s   $f18, $f0, $f16            
	mfc1    a1, $f18                   
	jal     func_80944EB0              
	nop
	jal     func_800CDCCC              ## Rand.Next() float
	nop
	lui     $at, 0x4128                ## $at = 41280000
	mtc1    $at, $f4                   ## $f4 = 10.50
	nop
	mul.s   $f6, $f0, $f4              
	trunc.w.s $f8, $f6                   
	mfc1    t2, $f8                    
	nop
	addiu   t3, t2, 0x0004             ## t3 = 00000004
	sh      t3, 0x0194(s0)             ## 00000194
lbl_80945450:
	jal     func_809448A4              
	or      a0, s0, $zero              ## a0 = 00000000
	blez    v0, lbl_809454A0           
	or      a0, s0, $zero              ## a0 = 00000000
	sll     t4, v0,  2                 
	addu    a2, t4, s0                 
	lw      v0, 0x0148(a0)             ## 00000148
lbl_8094546C:
	addiu   a0, a0, 0x0004             ## a0 = 00000004
	sltu    $at, a0, a2                
	beq     v0, $zero, lbl_80945498    
	nop
	lw      v1, 0x011C(v0)             ## 0000011C
	beq     v1, $zero, lbl_80945498    
	nop
	lw      t5, 0x0130(v1)             ## 00000130
	bne     t5, $zero, lbl_80945498    
	nop
	sw      $zero, 0x011C(v0)          ## 0000011C
lbl_80945498:
	bnel    $at, $zero, lbl_8094546C   
	lw      v0, 0x0148(a0)             ## 0000014C
lbl_809454A0:
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_809454B4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	jal     func_80944D74              
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	lui     $at, %hi(var_809455B0)     ## $at = 80940000
	lui     t6, %hi(func_80944E50)     ## t6 = 80940000
	lh      v0, 0x0146(a0)             ## 00000146
	lwc1    $f0, 0x00EC(a0)            ## 000000EC
	lui     v1, %hi(var_809455F8)      ## v1 = 80940000
	sll     v0, v0,  2                 
	addu    $at, $at, v0               
	lwc1    $f4, %lo(var_809455B0)($at) 
	lui     $at, 0x4220                ## $at = 42200000
	mtc1    $at, $f6                   ## $f6 = 40.00
	abs.s   $f0, $f0                   
	lw      a1, 0x001C($sp)            
	add.s   $f8, $f4, $f6              
	addiu   t6, t6, %lo(func_80944E50) ## t6 = 80944E50
	addu    v1, v1, v0                 
	c.le.s  $f8, $f0                   
	nop
	bc1f    lbl_80945538               
	nop
	lw      t7, 0x0004(a0)             ## 00000004
	addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
	sw      t6, 0x013C(a0)             ## 0000013C
	and     t8, t7, $at                
	jal     func_80944D54              
	sw      t8, 0x0004(a0)             ## 00000004
	beq     $zero, $zero, lbl_80945550 
	lw      $ra, 0x0014($sp)           
lbl_80945538:
	lw      v1, %lo(var_809455F8)(v1)  
	beql    v1, $zero, lbl_80945550    
	lw      $ra, 0x0014($sp)           
	jalr    $ra, v1                    
	nop
	lw      $ra, 0x0014($sp)           
lbl_80945550:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_8094555C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lh      v0, 0x0194(a0)             ## 00000194
	blez    v0, lbl_80945574           
	addiu   t6, v0, 0xFFFF             ## t6 = FFFFFFFF
	sh      t6, 0x0194(a0)             ## 00000194
lbl_80945574:
	lw      t9, 0x013C(a0)             ## 0000013C
	jalr    $ra, t9                    
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop

.section .data

var_80945590: .word 0x00940700, 0x00000000, 0x00010000, 0x0000019C
.word func_809447E4
.word func_80944894
.word func_8094555C
.word 0x00000000
var_809455B0: .word \
0x44C80000, 0x44C80000, 0x447A0000, 0x447A0000, \
0x447A0000
var_809455C4: .word 0x0000000C, 0x00000009, 0x00000008, 0x00000000
var_809455D4: .word 0x01250000, 0x00210020, 0x001E0000
var_809455E0: .word 0x00000002, 0xFFFF0000, 0xFFFF0000
var_809455EC: .word 0xB0F404B0, 0xB0F800C8, 0x30FC04B0
var_809455F8: .word 0x00000000, 0x00000000
.word func_80945108
.word func_80945108
.word func_80945330
.word 0x00000000

.section .rodata

var_80945610: .word 0x3DCCCCCD
var_80945614: .word 0x3E4CCCCD
var_80945618: .word 0x3F4CCCCD
var_8094561C: .word 0x3E4CCCCD
var_80945620: .word 0x3F19999A
var_80945624: .word 0x3E4CCCCD
var_80945628: .word 0x3F333333, 0x00000000

