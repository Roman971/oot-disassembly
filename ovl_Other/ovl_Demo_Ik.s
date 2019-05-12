#include <mips.h>
.set noreorder
.set noat

.section .text
func_80A6B580:
	sw      a0, 0x0000($sp)            
	sw      a1, 0x0004($sp)            
	jr      $ra                        
	nop


func_80A6B590:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	lui     $at, 0x41F0                ## $at = 41F00000
	sw      a1, 0x0024($sp)            
	mtc1    $at, $f0                   ## $f0 = 30.00
	or      a1, a0, $zero              ## a1 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0020($sp)            
	mfc1    a3, $f0                    
	addiu   t6, $zero, 0x0005          ## t6 = 00000005
	sw      t6, 0x0014($sp)            
	lw      a0, 0x0024($sp)            
	lui     a2, 0x4296                 ## a2 = 42960000
	jal     func_80021E6C              
	swc1    $f0, 0x0010($sp)           
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6B5D8:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	or      a1, a0, $zero              ## a1 = 00000000
	jal     func_8008C9C0              
	addiu   a0, a1, 0x013C             ## a0 = 0000013C
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6B5FC:
	lbu     t6, 0x1D6C(a0)             ## 00001D6C
	sll     t7, a1,  2                 
	addu    t8, a0, t7                 
	beql    t6, $zero, lbl_80A6B61C    
	or      v0, $zero, $zero           ## v0 = 00000000
	jr      $ra                        
	lw      v0, 0x1D8C(t8)             ## 00001D8C
lbl_80A6B618:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80A6B61C:
	jr      $ra                        
	nop


func_80A6B624:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	jal     func_80A6B5FC              
	or      a1, a2, $zero              ## a1 = 00000000
	beq     v0, $zero, lbl_80A6B658    
	lw      $ra, 0x0014($sp)           
	lhu     t6, 0x001E($sp)            
	lhu     t7, 0x0000(v0)             ## 00000000
	bnel    t6, t7, lbl_80A6B65C       
	or      v0, $zero, $zero           ## v0 = 00000000
	beq     $zero, $zero, lbl_80A6B65C 
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
lbl_80A6B658:
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80A6B65C:
	jr      $ra                        
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000


func_80A6B664:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      a1, 0x001C($sp)            
	or      a1, a0, $zero              ## a1 = 00000000
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	lbu     t6, 0x0171(a1)             ## 00000171
	addiu   a2, a1, 0x013C             ## a2 = 0000013C
	lui     a3, 0x3F80                 ## a3 = 3F800000
	ori     t7, t6, 0x0001             ## t7 = 00000001
	sb      t7, 0x0171(a1)             ## 00000171
	jal     func_8008B778              
	lw      a0, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6B6A4:
	lbu     t6, 0x0171(a0)             ## 00000171
	andi    t7, t6, 0xFFFE             ## t7 = 00000000
	sb      t7, 0x0171(a0)             ## 00000171
	jr      $ra                        
	nop


func_80A6B6B8:
	lwc1    $f0, 0x0154(a0)            ## 00000154
	jr      $ra                        
	nop


func_80A6B6C4:
	sw      a1, 0x0004($sp)            
	sw      a2, 0x0008($sp)            
	sw      a3, 0x000C($sp)            
	andi    a3, a3, 0x00FF             ## a3 = 00000000
	andi    a2, a2, 0x00FF             ## a2 = 00000000
	andi    a1, a1, 0x00FF             ## a1 = 00000000
	lw      v1, 0x02C4(a0)             ## 000002C4
	lui     t6, 0xFA00                 ## t6 = FA000000
	sll     t8, a1, 24                 
	addiu   v1, v1, 0xFFE0             ## v1 = FFFFFFE0
	sw      v1, 0x02C4(a0)             ## 000002C4
	andi    t9, a2, 0x00FF             ## t9 = 00000000
	sll     t0, t9, 16                 
	andi    t2, a3, 0x00FF             ## t2 = 00000000
	sll     t3, t2,  8                 
	or      t1, t8, t0                 ## t1 = 00000000
	or      t4, t1, t3                 ## t4 = 00000000
	ori     t5, t4, 0x00FF             ## t5 = 000000FF
	sw      t5, 0x0004(v1)             ## FFFFFFE4
	sw      t6, 0x0000(v1)             ## FFFFFFE0
	lui     t6, 0xFB00                 ## t6 = FB000000
	sw      t6, 0x0008(v1)             ## FFFFFFE8
	lbu     t2, 0x0017($sp)            
	lbu     t9, 0x0013($sp)            
	lbu     t5, 0x001B($sp)            
	sll     t1, t2, 16                 
	sll     t8, t9, 24                 
	or      t3, t8, t1                 ## t3 = 00000000
	sll     t6, t5,  8                 
	or      t7, t3, t6                 ## t7 = FB000000
	ori     t9, t7, 0x00FF             ## t9 = FB0000FF
	sw      t9, 0x000C(v1)             ## FFFFFFEC
	lui     t0, 0xDF00                 ## t0 = DF000000
	sw      t0, 0x0010(v1)             ## FFFFFFF0
	sw      $zero, 0x0014(v1)          ## FFFFFFF4
	or      v0, v1, $zero              ## v0 = FFFFFFE0
	jr      $ra                        
	nop


func_80A6B75C:
	bne     a0, $zero, lbl_80A6B76C    
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beq     $zero, $zero, lbl_80A6B77C 
	addiu   v1, $zero, 0x0005          ## v1 = 00000005
lbl_80A6B76C:
	bne     a0, $at, lbl_80A6B77C      
	addiu   v1, $zero, 0x0007          ## v1 = 00000007
	beq     $zero, $zero, lbl_80A6B77C 
	addiu   v1, $zero, 0x0006          ## v1 = 00000006
lbl_80A6B77C:
	or      v0, v1, $zero              ## v0 = 00000006
	jr      $ra                        
	nop


func_80A6B788:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0020($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x0024($sp)           
	lh      v0, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beq     v0, $zero, lbl_80A6B7C8    
	nop
	beq     v0, $at, lbl_80A6B804      
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	beq     v0, $at, lbl_80A6B840      
	addiu   a0, s0, 0x013C             ## a0 = 0000013C
	beq     $zero, $zero, lbl_80A6B878 
	lw      $ra, 0x0024($sp)           
lbl_80A6B7C8:
	jal     func_8008D6A8              
	lui     a1, 0x40A0                 ## a1 = 40A00000
	beq     v0, $zero, lbl_80A6B874    
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t6, 0x8010                 ## t6 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t6, t6, 0x43A8             ## t6 = 801043A8
	sw      t6, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x392D          ## a0 = 0000392D
	addiu   a1, s0, 0x00E4             ## a1 = 000000E4
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_80A6B878 
	lw      $ra, 0x0024($sp)           
lbl_80A6B804:
	jal     func_8008D6A8              
	lui     a1, 0x4120                 ## a1 = 41200000
	beq     v0, $zero, lbl_80A6B874    
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t7, 0x8010                 ## t7 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t7, t7, 0x43A8             ## t7 = 801043A8
	sw      t7, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x392F          ## a0 = 0000392F
	addiu   a1, s0, 0x00E4             ## a1 = 000000E4
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	beq     $zero, $zero, lbl_80A6B878 
	lw      $ra, 0x0024($sp)           
lbl_80A6B840:
	jal     func_8008D6A8              
	lui     a1, 0x4110                 ## a1 = 41100000
	beq     v0, $zero, lbl_80A6B874    
	lui     a3, 0x8010                 ## a3 = 80100000
	lui     t8, 0x8010                 ## t8 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t8, t8, 0x43A8             ## t8 = 801043A8
	sw      t8, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x392E          ## a0 = 0000392E
	addiu   a1, s0, 0x00E4             ## a1 = 000000E4
	jal     func_800C806C              
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
lbl_80A6B874:
	lw      $ra, 0x0024($sp)           
lbl_80A6B878:
	lw      s0, 0x0020($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6B888:
	addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
	sw      s6, 0x0060($sp)            
	sw      s1, 0x004C($sp)            
	or      s1, a0, $zero              ## s1 = 00000000
	or      s6, a1, $zero              ## s6 = 00000000
	sw      $ra, 0x0064($sp)           
	sw      s5, 0x005C($sp)            
	sw      s4, 0x0058($sp)            
	sw      s3, 0x0054($sp)            
	sw      s2, 0x0050($sp)            
	sw      s0, 0x0048($sp)            
	jal     func_80A6B75C              
	lh      a0, 0x001C(s1)             ## 0000001C
	or      s0, v0, $zero              ## s0 = 00000000
	or      a0, s6, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x0005          ## a1 = 00000005
	jal     func_80A6B624              
	or      a2, v0, $zero              ## a2 = 00000000
	beq     v0, $zero, lbl_80A6BA04    
	addiu   s2, $sp, 0x0078            ## s2 = FFFFFFE0
	lui     t6, %hi(var_80A6C840)      ## t6 = 80A70000
	addiu   t6, t6, %lo(var_80A6C840)  ## t6 = 80A6C840
	lw      t8, 0x0000(t6)             ## 80A6C840
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	lui     t0, %hi(var_80A6C84C)      ## t0 = 80A70000
	sw      t8, 0x0000(s2)             ## FFFFFFE0
	lw      t7, 0x0004(t6)             ## 80A6C844
	or      v0, $zero, $zero           ## v0 = 00000000
	addiu   t0, t0, %lo(var_80A6C84C)  ## t0 = 80A6C84C
	sw      t7, 0x0004(s2)             ## FFFFFFE4
	lw      t8, 0x0008(t6)             ## 80A6C848
	addiu   s5, $sp, 0x0084            ## s5 = FFFFFFEC
	bne     s0, $at, lbl_80A6B918      
	sw      t8, 0x0008(s2)             ## FFFFFFE8
	beq     $zero, $zero, lbl_80A6B934 
	addiu   s4, $zero, 0x0004          ## s4 = 00000004
lbl_80A6B918:
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	bne     s0, $at, lbl_80A6B930      
	addiu   v0, $zero, 0x0008          ## v0 = 00000008
	addiu   v0, $zero, 0x0004          ## v0 = 00000004
	beq     $zero, $zero, lbl_80A6B934 
	addiu   s4, $zero, 0x0008          ## s4 = 00000008
lbl_80A6B930:
	addiu   s4, $zero, 0x000B          ## s4 = 0000000B
lbl_80A6B934:
	slt     $at, v0, s4                
	beq     $at, $zero, lbl_80A6BA04   
	sll     t9, v0,  2                 
	sll     t1, s4,  2                 
	subu    t1, t1, s4                 
	subu    t9, t9, v0                 
	sll     t9, t9,  2                 
	sll     t1, t1,  2                 
	addu    s3, t1, t0                 
	addu    s0, t9, t0                 
	lwc1    $f4, 0x0000(s0)            ## 00000000
lbl_80A6B960:
	lwc1    $f6, 0x0024(s1)            ## 00000024
	lwc1    $f10, 0x0004(s0)           ## 00000004
	addiu   t2, $zero, 0x000A          ## t2 = 0000000A
	add.s   $f8, $f4, $f6              
	lwc1    $f4, 0x0008(s0)            ## 00000008
	addiu   t3, $zero, 0x0007          ## t3 = 00000007
	addiu   t4, $zero, 0x00FF          ## t4 = 000000FF
	swc1    $f8, 0x0084($sp)           
	lwc1    $f16, 0x0028(s1)           ## 00000028
	addiu   t5, $zero, 0x00FF          ## t5 = 000000FF
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	add.s   $f18, $f10, $f16           
	addiu   t7, $zero, 0x00FF          ## t7 = 000000FF
	addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
	addiu   t9, $zero, 0x0001          ## t9 = 00000001
	swc1    $f18, 0x0088($sp)          
	lwc1    $f6, 0x002C(s1)            ## 0000002C
	addiu   t1, $zero, 0x0009          ## t1 = 00000009
	addiu   t0, $zero, 0x0001          ## t0 = 00000001
	add.s   $f8, $f4, $f6              
	sw      t0, 0x003C($sp)            
	sw      t1, 0x0038($sp)            
	sw      t9, 0x0034($sp)            
	swc1    $f8, 0x008C($sp)           
	sw      t8, 0x0030($sp)            
	sw      $zero, 0x002C($sp)         
	sw      $zero, 0x0028($sp)         
	sw      t7, 0x0024($sp)            
	sw      t6, 0x0020($sp)            
	sw      t5, 0x001C($sp)            
	sw      t4, 0x0018($sp)            
	sw      t3, 0x0014($sp)            
	sw      t2, 0x0010($sp)            
	or      a0, s6, $zero              ## a0 = 00000000
	or      a1, s5, $zero              ## a1 = FFFFFFEC
	or      a2, s2, $zero              ## a2 = FFFFFFE0
	jal     func_8001E1D4              
	or      a3, s2, $zero              ## a3 = FFFFFFE0
	addiu   s0, s0, 0x000C             ## s0 = 0000000C
	bnel    s0, s3, lbl_80A6B960       
	lwc1    $f4, 0x0000(s0)            ## 0000000C
lbl_80A6BA04:
	lw      $ra, 0x0064($sp)           
	lw      s0, 0x0048($sp)            
	lw      s1, 0x004C($sp)            
	lw      s2, 0x0050($sp)            
	lw      s3, 0x0054($sp)            
	lw      s4, 0x0058($sp)            
	lw      s5, 0x005C($sp)            
	lw      s6, 0x0060($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0098           ## $sp = 00000000


func_80A6BA2C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a1, 0x001C($sp)            
	or      a3, a0, $zero              ## a3 = 00000000
	lw      a0, 0x001C($sp)            
	or      a1, a2, $zero              ## a1 = 00000000
	jal     func_80A6B5FC              
	sw      a3, 0x0018($sp)            
	beq     v0, $zero, lbl_80A6BA9C    
	lw      a3, 0x0018($sp)            
	lw      t6, 0x000C(v0)             ## 0000000C
	mtc1    t6, $f4                    ## $f4 = 0.00
	nop
	cvt.s.w $f6, $f4                   
	swc1    $f6, 0x0024(a3)            ## 00000024
	lw      t7, 0x0010(v0)             ## 00000010
	mtc1    t7, $f8                    ## $f8 = 0.00
	nop
	cvt.s.w $f10, $f8                  
	swc1    $f10, 0x0028(a3)           ## 00000028
	lw      t8, 0x0014(v0)             ## 00000014
	mtc1    t8, $f16                   ## $f16 = 0.00
	nop
	cvt.s.w $f18, $f16                 
	swc1    $f18, 0x002C(a3)           ## 0000002C
	lh      v1, 0x0008(v0)             ## 00000008
	sh      v1, 0x00B6(a3)             ## 000000B6
	sh      v1, 0x0032(a3)             ## 00000032
lbl_80A6BA9C:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6BAAC:
	addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
	sw      s0, 0x0024($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      s1, 0x0028($sp)            
	sw      a1, 0x005C($sp)            
	lh      v0, 0x001C(s0)             ## 0000001C
	addiu   a0, s0, 0x00B4             ## a0 = 000000B4
	addiu   a1, $zero, 0x0000          ## a1 = 00000000
	beq     v0, $zero, lbl_80A6BAEC    
	lui     a2, 0x8002                 ## a2 = 80020000
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beq     v0, $at, lbl_80A6BB0C      
	lui     t7, 0x0600                 ## t7 = 06000000
	beq     $zero, $zero, lbl_80A6BB28 
	lui     t8, 0x0600                 ## t8 = 06000000
lbl_80A6BAEC:
	lui     t6, 0x0600                 ## t6 = 06000000
	lui     $at, 0x41F0                ## $at = 41F00000
	addiu   t6, t6, 0x0C90             ## t6 = 06000C90
	lui     s1, 0x0600                 ## s1 = 06000000
	mtc1    $at, $f0                   ## $f0 = 30.00
	sw      t6, 0x0048($sp)            
	beq     $zero, $zero, lbl_80A6BB40 
	addiu   s1, s1, 0x0C6C             ## s1 = 06000C6C
lbl_80A6BB0C:
	lui     $at, 0x4120                ## $at = 41200000
	addiu   t7, t7, 0x0660             ## t7 = 06000660
	lui     s1, 0x0600                 ## s1 = 06000000
	mtc1    $at, $f0                   ## $f0 = 10.00
	sw      t7, 0x0048($sp)            
	beq     $zero, $zero, lbl_80A6BB40 
	addiu   s1, s1, 0x0634             ## s1 = 06000634
lbl_80A6BB28:
	lui     $at, 0x41A0                ## $at = 41A00000
	addiu   t8, t8, 0x0380             ## t8 = 06000380
	lui     s1, 0x0600                 ## s1 = 06000000
	mtc1    $at, $f0                   ## $f0 = 20.00
	sw      t8, 0x0048($sp)            
	addiu   s1, s1, 0x035C             ## s1 = 0600035C
lbl_80A6BB40:
	mfc1    a3, $f0                    
	jal     func_8001EC20              
	addiu   a2, a2, 0xEFF4             ## a2 = 8001EFF4
	addiu   a1, s0, 0x013C             ## a1 = 0000013C
	addiu   t9, s0, 0x0180             ## t9 = 00000180
	addiu   t0, s0, 0x018C             ## t0 = 0000018C
	addiu   t1, $zero, 0x0002          ## t1 = 00000002
	sw      t1, 0x0018($sp)            
	sw      t0, 0x0014($sp)            
	sw      t9, 0x0010($sp)            
	sw      a1, 0x0034($sp)            
	lw      a0, 0x005C($sp)            
	lw      a2, 0x0048($sp)            
	jal     func_8008C684              
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_8008A194              
	or      a0, s1, $zero              ## a0 = 0600035C
	mtc1    v0, $f4                    ## $f4 = 0.00
	mtc1    $zero, $f0                 ## $f0 = 0.00
	addiu   t2, $zero, 0x0002          ## t2 = 00000002
	cvt.s.w $f6, $f4                   
	mfc1    a3, $f0                    
	sw      t2, 0x0014($sp)            
	lw      a0, 0x0034($sp)            
	or      a1, s1, $zero              ## a1 = 0600035C
	lui     a2, 0x3F80                 ## a2 = 3F800000
	swc1    $f6, 0x0010($sp)           
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0024($sp)            
	lw      s1, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0058           ## $sp = 00000000


func_80A6BBC8:
	sw      $zero, 0x0198(a0)          ## 00000198
	sw      $zero, 0x019C(a0)          ## 0000019C
	sb      $zero, 0x00C8(a0)          ## 000000C8
	jr      $ra                        
	nop


func_80A6BBDC:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_80A6B6A4              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A6B75C              
	lh      a0, 0x001C(s0)             ## 0000001C
	or      a0, s0, $zero              ## a0 = 00000000
	lw      a1, 0x0024($sp)            
	jal     func_80A6BA2C              
	or      a2, v0, $zero              ## a2 = 00000000
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   v0, $zero, 0x0001          ## v0 = 00000001
	addiu   t6, $zero, 0x00FF          ## t6 = 000000FF
	sw      v0, 0x0198(s0)             ## 00000198
	sw      v0, 0x019C(s0)             ## 0000019C
	sb      t6, 0x00C8(s0)             ## 000000C8
	swc1    $f4, 0x0154(s0)            ## 00000154
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6BC40:
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   t6, $zero, 0x0002          ## t6 = 00000002
	addiu   t7, $zero, 0x0001          ## t7 = 00000001
	addiu   t8, $zero, 0x00FF          ## t8 = 000000FF
	sw      t6, 0x0198(a0)             ## 00000198
	sw      t7, 0x019C(a0)             ## 0000019C
	sb      t8, 0x00C8(a0)             ## 000000C8
	swc1    $f4, 0x0154(a0)            ## 00000154
	jr      $ra                        
	nop


func_80A6BC68:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	jal     func_80A6B75C              
	lh      a0, 0x001C(s0)             ## 0000001C
	lw      a0, 0x002C($sp)            
	jal     func_80A6B5FC              
	or      a1, v0, $zero              ## a1 = 00000000
	beql    v0, $zero, lbl_80A6BD18    
	lw      $ra, 0x001C($sp)           
	lhu     t6, 0x0000(v0)             ## 00000000
	sw      t6, 0x0020($sp)            
	lw      v1, 0x01A0(s0)             ## 000001A0
	addiu   t8, t6, 0xFFFF             ## t8 = FFFFFFFF
	sltiu   $at, t8, 0x0006            
	beql    t6, v1, lbl_80A6BD18       
	lw      $ra, 0x001C($sp)           
	beq     $at, $zero, lbl_80A6BD0C   
	sll     t8, t8,  2                 
	lui     $at, %hi(var_80A6C920)     ## $at = 80A70000
	addu    $at, $at, t8               
	lw      t8, %lo(var_80A6C920)($at) 
	jr      t8                         
	nop
var_80A6BCD0:
	jal     func_80A6BBC8              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A6BD10 
	lw      t9, 0x0020($sp)            
var_80A6BCE0:
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A6BBDC              
	lw      a1, 0x002C($sp)            
	beq     $zero, $zero, lbl_80A6BD10 
	lw      t9, 0x0020($sp)            
var_80A6BCF4:
	jal     func_80A6BC40              
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A6BD10 
	lw      t9, 0x0020($sp)            
var_80A6BD04:
	jal     func_80020EB4              
	or      a0, s0, $zero              ## a0 = 00000000
lbl_80A6BD0C:
	lw      t9, 0x0020($sp)            
lbl_80A6BD10:
	sw      t9, 0x01A0(s0)             ## 000001A0
	lw      $ra, 0x001C($sp)           
lbl_80A6BD18:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6BD28:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	jal     func_80A6BC68              
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6BD48:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_80A6B590              
	lw      a1, 0x001C($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_80A6BC68              
	lw      a1, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6BD80:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x0024($sp)            
	jal     func_80A6B5D8              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A6B788              
	or      a0, s0, $zero              ## a0 = 00000000
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A6B664              
	lw      a1, 0x0024($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A6B590              
	lw      a1, 0x0024($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A6B888              
	lw      a1, 0x0024($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_80A6BC68              
	lw      a1, 0x0024($sp)            
	lw      $ra, 0x001C($sp)           
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6BDE8:
	addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
	sw      $ra, 0x0014($sp)           
	sw      a2, 0x0040($sp)            
	sw      a3, 0x0044($sp)            
	lw      a2, 0x0000(a0)             ## 00000000
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bne     a1, $at, lbl_80A6BED4      
	lw      t6, 0x0048($sp)            
	lh      v0, 0x001C(t6)             ## 0000001C
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	lui     t8, 0xDA38                 ## t8 = DA380000
	beql    v0, $zero, lbl_80A6BE30    
	lw      v1, 0x02D0(a2)             ## 000002D0
	beq     v0, $at, lbl_80A6BE84      
	lui     t3, 0xDA38                 ## t3 = DA380000
	beq     $zero, $zero, lbl_80A6BED8 
	lw      $ra, 0x0014($sp)           
	lw      v1, 0x02D0(a2)             ## 000002D0
lbl_80A6BE30:
	ori     t8, t8, 0x0003             ## t8 = DA380003
	or      a0, a2, $zero              ## a0 = 00000000
	addiu   t7, v1, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(a2)             ## 000002D0
	sw      t8, 0x0000(v1)             ## 00000000
	sw      a2, 0x0034($sp)            
	jal     func_800AB900              
	sw      v1, 0x0024($sp)            
	lw      a1, 0x0024($sp)            
	lw      a2, 0x0034($sp)            
	lui     t0, 0xDE00                 ## t0 = DE000000
	sw      v0, 0x0004(a1)             ## 00000004
	lw      v1, 0x02D0(a2)             ## 000002D0
	lui     t1, 0x0601                 ## t1 = 06010000
	addiu   t1, t1, 0x6BE0             ## t1 = 06016BE0
	addiu   t9, v1, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(a2)             ## 000002D0
	sw      t1, 0x0004(v1)             ## 00000004
	sw      t0, 0x0000(v1)             ## 00000000
	beq     $zero, $zero, lbl_80A6BED8 
	lw      $ra, 0x0014($sp)           
lbl_80A6BE84:
	lw      v1, 0x02D0(a2)             ## 000002D0
	ori     t3, t3, 0x0003             ## t3 = 00000003
	or      a0, a2, $zero              ## a0 = 00000000
	addiu   t2, v1, 0x0008             ## t2 = 00000008
	sw      t2, 0x02D0(a2)             ## 000002D0
	sw      t3, 0x0000(v1)             ## 00000000
	sw      a2, 0x0034($sp)            
	jal     func_800AB900              
	sw      v1, 0x001C($sp)            
	lw      a1, 0x001C($sp)            
	lw      a2, 0x0034($sp)            
	lui     t5, 0xDE00                 ## t5 = DE000000
	sw      v0, 0x0004(a1)             ## 00000004
	lw      v1, 0x02D0(a2)             ## 000002D0
	lui     t6, 0x0601                 ## t6 = 06010000
	addiu   t6, t6, 0x6F88             ## t6 = 06016F88
	addiu   t4, v1, 0x0008             ## t4 = 00000008
	sw      t4, 0x02D0(a2)             ## 000002D0
	sw      t6, 0x0004(v1)             ## 00000004
	sw      t5, 0x0000(v1)             ## 00000000
lbl_80A6BED4:
	lw      $ra, 0x0014($sp)           
lbl_80A6BED8:
	addiu   $sp, $sp, 0x0038           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6BEE4:
	addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
	sw      $ra, 0x002C($sp)           
	sw      s0, 0x0028($sp)            
	sw      a0, 0x0058($sp)            
	lw      s0, 0x0000(a1)             ## 00000000
	lw      a0, 0x0058($sp)            
	or      a2, $zero, $zero           ## a2 = 00000000
	jal     func_80022438              
	sw      a1, 0x005C($sp)            
	jal     func_8007E298              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8007E2C0              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t7, 0xDB06                 ## t7 = DB060000
	ori     t7, t7, 0x0020             ## t7 = DB060020
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s0)             ## 000002C0
	sw      t7, 0x0000(v1)             ## 00000000
	addiu   t8, $zero, 0x001E          ## t8 = 0000001E
	addiu   t9, $zero, 0x001E          ## t9 = 0000001E
	sw      t9, 0x0014($sp)            
	sw      t8, 0x0010($sp)            
	sw      $zero, 0x0018($sp)         
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x00F5          ## a1 = 000000F5
	addiu   a2, $zero, 0x00E1          ## a2 = 000000E1
	addiu   a3, $zero, 0x009B          ## a3 = 0000009B
	jal     func_80A6B6C4              
	sw      v1, 0x003C($sp)            
	lw      t0, 0x003C($sp)            
	lui     t3, 0xDB06                 ## t3 = DB060000
	ori     t3, t3, 0x0024             ## t3 = DB060024
	sw      v0, 0x0004(t0)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	addiu   t4, $zero, 0x0028          ## t4 = 00000028
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t2, v1, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(s0)             ## 000002C0
	sw      t3, 0x0000(v1)             ## 00000000
	sw      $zero, 0x0018($sp)         
	sw      $zero, 0x0014($sp)         
	sw      t4, 0x0010($sp)            
	addiu   a1, $zero, 0x00FF          ## a1 = 000000FF
	addiu   a2, $zero, 0x0028          ## a2 = 00000028
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_80A6B6C4              
	sw      v1, 0x0038($sp)            
	lw      t1, 0x0038($sp)            
	lui     t6, 0xDB06                 ## t6 = DB060000
	ori     t6, t6, 0x0028             ## t6 = DB060028
	sw      v0, 0x0004(t1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	addiu   t7, $zero, 0x0014          ## t7 = 00000014
	addiu   t8, $zero, 0x0028          ## t8 = 00000028
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s0)             ## 000002C0
	sw      t6, 0x0000(v1)             ## 00000000
	addiu   t9, $zero, 0x001E          ## t9 = 0000001E
	sw      t9, 0x0018($sp)            
	sw      t8, 0x0014($sp)            
	sw      t7, 0x0010($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x00FF          ## a1 = 000000FF
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	addiu   a3, $zero, 0x00FF          ## a3 = 000000FF
	jal     func_80A6B6C4              
	sw      v1, 0x0034($sp)            
	lw      t0, 0x0034($sp)            
	lw      t1, 0x0058($sp)            
	or      a3, $zero, $zero           ## a3 = 00000000
	sw      v0, 0x0004(t0)             ## 00000004
	addiu   v1, t1, 0x013C             ## v1 = 0000013C
	lui     t2, %hi(func_80A6BDE8)     ## t2 = 80A70000
	addiu   t2, t2, %lo(func_80A6BDE8) ## t2 = 80A6BDE8
	lw      a1, 0x0004(v1)             ## 00000140
	lw      a2, 0x0020(v1)             ## 0000015C
	sw      t1, 0x0014($sp)            
	sw      t2, 0x0010($sp)            
	jal     func_8008993C              
	lw      a0, 0x005C($sp)            
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0058           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6C03C:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      s1, 0x0028($sp)            
	or      s1, a0, $zero              ## s1 = 00000000
	sw      $ra, 0x002C($sp)           
	sw      s0, 0x0024($sp)            
	sw      a1, 0x0054($sp)            
	lh      v0, 0x001C(s1)             ## 0000001C
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	lw      a0, 0x0054($sp)            
	beq     v0, $at, lbl_80A6C088      
	addiu   a1, s1, 0x013C             ## a1 = 0000013C
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	beq     v0, $at, lbl_80A6C09C      
	lui     a2, 0x0602                 ## a2 = 06020000
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	beq     v0, $at, lbl_80A6C0AC      
	lui     a2, 0x0600                 ## a2 = 06000000
	beq     $zero, $zero, lbl_80A6C0BC 
	lui     a2, 0x0600                 ## a2 = 06000000
lbl_80A6C088:
	lui     a2, 0x0602                 ## a2 = 06020000
	lui     s0, 0x0602                 ## s0 = 06020000
	addiu   a2, a2, 0xEB40             ## a2 = 0601EB40
	beq     $zero, $zero, lbl_80A6C0C8 
	addiu   s0, s0, 0xEB14             ## s0 = 0601EB14
lbl_80A6C09C:
	lui     s0, 0x0602                 ## s0 = 06020000
	addiu   a2, a2, 0xEE60             ## a2 = 0601D9A0
	beq     $zero, $zero, lbl_80A6C0C8 
	addiu   s0, s0, 0xEE34             ## s0 = 0601EE34
lbl_80A6C0AC:
	lui     s0, 0x0600                 ## s0 = 06000000
	addiu   a2, a2, 0x0F30             ## a2 = 0601E8D0
	beq     $zero, $zero, lbl_80A6C0C8 
	addiu   s0, s0, 0x0F0C             ## s0 = 06000F0C
lbl_80A6C0BC:
	lui     s0, 0x0600                 ## s0 = 06000000
	addiu   a2, a2, 0x0900             ## a2 = 0601F1D0
	addiu   s0, s0, 0x08DC             ## s0 = 060008DC
lbl_80A6C0C8:
	addiu   t6, s1, 0x0180             ## t6 = 00000180
	addiu   t7, s1, 0x018C             ## t7 = 0000018C
	addiu   t8, $zero, 0x0002          ## t8 = 00000002
	sw      t8, 0x0018($sp)            
	sw      t7, 0x0014($sp)            
	sw      t6, 0x0010($sp)            
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_8008C788              
	sw      a1, 0x0034($sp)            
	jal     func_8008A194              
	or      a0, s0, $zero              ## a0 = 060008DC
	mtc1    v0, $f4                    ## $f4 = 0.00
	mtc1    $zero, $f0                 ## $f0 = 0.00
	addiu   t9, $zero, 0x0002          ## t9 = 00000002
	cvt.s.w $f6, $f4                   
	mfc1    a3, $f0                    
	sw      t9, 0x0014($sp)            
	lw      a0, 0x0034($sp)            
	or      a1, s0, $zero              ## a1 = 060008DC
	lui     a2, 0x3F80                 ## a2 = 3F800000
	swc1    $f6, 0x0010($sp)           
	jal     func_8008D17C              
	swc1    $f0, 0x0018($sp)           
	addiu   t0, $zero, 0x0003          ## t0 = 00000003
	sw      t0, 0x0198(s1)             ## 00000198
	sw      $zero, 0x019C(s1)          ## 0000019C
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0024($sp)            
	lw      s1, 0x0028($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000


func_80A6C144:
	addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
	mtc1    a1, $f12                   ## $f12 = 0.00
	sw      $ra, 0x001C($sp)           
	sw      a0, 0x0020($sp)            
	lw      a0, 0x0020($sp)            
	mfc1    a1, $f12                   
	jal     func_8008D6A8              
	addiu   a0, a0, 0x013C             ## a0 = 0000013C
	beq     v0, $zero, lbl_80A6C194    
	lui     a3, 0x8010                 ## a3 = 80100000
	lw      a1, 0x0020($sp)            
	lui     t6, 0x8010                 ## t6 = 80100000
	addiu   a3, a3, 0x43A0             ## a3 = 801043A0
	addiu   t6, t6, 0x43A8             ## t6 = 801043A8
	sw      t6, 0x0014($sp)            
	sw      a3, 0x0010($sp)            
	addiu   a0, $zero, 0x392C          ## a0 = 0000392C
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_800C806C              
	addiu   a1, a1, 0x00E4             ## a1 = 000000E4
lbl_80A6C194:
	lw      $ra, 0x001C($sp)           
	addiu   $sp, $sp, 0x0020           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6C1A4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lh      v0, 0x001C(a0)             ## 0000001C
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	beq     v0, $at, lbl_80A6C1CC      
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	beq     v0, $at, lbl_80A6C1DC      
	nop
	beq     $zero, $zero, lbl_80A6C1E8 
	lw      $ra, 0x0014($sp)           
lbl_80A6C1CC:
	jal     func_80A6C144              
	lui     a1, 0x4204                 ## a1 = 42040000
	beq     $zero, $zero, lbl_80A6C1E8 
	lw      $ra, 0x0014($sp)           
lbl_80A6C1DC:
	jal     func_80A6C144              
	lui     a1, 0x4230                 ## a1 = 42300000
	lw      $ra, 0x0014($sp)           
lbl_80A6C1E8:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6C1F4:
	addiu   t6, $zero, 0x0003          ## t6 = 00000003
	sw      t6, 0x0198(a0)             ## 00000198
	sw      $zero, 0x019C(a0)          ## 0000019C
	jr      $ra                        
	nop


func_80A6C208:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	addiu   a2, $zero, 0x0004          ## a2 = 00000004
	jal     func_80A6BA2C              
	sw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   t6, $zero, 0x0004          ## t6 = 00000004
	addiu   t7, $zero, 0x0002          ## t7 = 00000002
	sw      t6, 0x0198(a0)             ## 00000198
	sw      t7, 0x019C(a0)             ## 0000019C
	swc1    $f4, 0x0154(a0)            ## 00000154
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6C248:
	mtc1    $zero, $f4                 ## $f4 = 0.00
	addiu   t6, $zero, 0x0005          ## t6 = 00000005
	addiu   t7, $zero, 0x0002          ## t7 = 00000002
	sw      t6, 0x0198(a0)             ## 00000198
	sw      t7, 0x019C(a0)             ## 0000019C
	swc1    $f4, 0x0154(a0)            ## 00000154
	jr      $ra                        
	nop


func_80A6C268:
	addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
	sw      s0, 0x0018($sp)            
	or      s0, a0, $zero              ## s0 = 00000000
	sw      $ra, 0x001C($sp)           
	sw      a1, 0x002C($sp)            
	lw      a0, 0x002C($sp)            
	jal     func_80A6B5FC              
	addiu   a1, $zero, 0x0004          ## a1 = 00000004
	beql    v0, $zero, lbl_80A6C320    
	lw      $ra, 0x001C($sp)           
	lhu     a2, 0x0000(v0)             ## 00000000
	lw      v1, 0x01A0(s0)             ## 000001A0
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beql    a2, v1, lbl_80A6C320       
	lw      $ra, 0x001C($sp)           
	beq     a2, $at, lbl_80A6C2D8      
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	beq     a2, $at, lbl_80A6C2E8      
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   $at, $zero, 0x0006         ## $at = 00000006
	beq     a2, $at, lbl_80A6C2FC      
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   $at, $zero, 0x0007         ## $at = 00000007
	beq     a2, $at, lbl_80A6C30C      
	or      a0, s0, $zero              ## a0 = 00000000
	beq     $zero, $zero, lbl_80A6C31C 
	sw      a2, 0x01A0(s0)             ## 000001A0
lbl_80A6C2D8:
	jal     func_80A6C1F4              
	sw      a2, 0x0020($sp)            
	beq     $zero, $zero, lbl_80A6C318 
	lw      a2, 0x0020($sp)            
lbl_80A6C2E8:
	lw      a1, 0x002C($sp)            
	jal     func_80A6C208              
	sw      a2, 0x0020($sp)            
	beq     $zero, $zero, lbl_80A6C318 
	lw      a2, 0x0020($sp)            
lbl_80A6C2FC:
	jal     func_80A6C248              
	sw      a2, 0x0020($sp)            
	beq     $zero, $zero, lbl_80A6C318 
	lw      a2, 0x0020($sp)            
lbl_80A6C30C:
	jal     func_80020EB4              
	sw      a2, 0x0020($sp)            
	lw      a2, 0x0020($sp)            
lbl_80A6C318:
	sw      a2, 0x01A0(s0)             ## 000001A0
lbl_80A6C31C:
	lw      $ra, 0x001C($sp)           
lbl_80A6C320:
	lw      s0, 0x0018($sp)            
	addiu   $sp, $sp, 0x0028           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6C330:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	jal     func_80A6C268              
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6C350:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	jal     func_80A6C268              
	nop
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6C370:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a1, 0x001C($sp)            
	jal     func_80A6B5D8              
	lw      a0, 0x0018($sp)            
	jal     func_80A6C1A4              
	lw      a0, 0x0018($sp)            
	lw      a0, 0x0018($sp)            
	jal     func_80A6C268              
	lw      a1, 0x001C($sp)            
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6C3AC:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	sw      a0, 0x0018($sp)            
	sw      a2, 0x0020($sp)            
	sw      a3, 0x0024($sp)            
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bnel    a1, $at, lbl_80A6C3F8      
	or      v0, $zero, $zero           ## v0 = 00000000
	jal     func_80A6B6B8              
	lw      a0, 0x002C($sp)            
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f4                   ## $f4 = 30.00
	lw      t6, 0x0020($sp)            
	c.lt.s  $f0, $f4                   
	nop
	bc1fl   lbl_80A6C3F8               
	or      v0, $zero, $zero           ## v0 = 00000000
	sw      $zero, 0x0000(t6)          ## 00000000
	or      v0, $zero, $zero           ## v0 = 00000000
lbl_80A6C3F8:
	lw      $ra, 0x0014($sp)           
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6C408:
	addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
	sw      s0, 0x0014($sp)            
	sw      a2, 0x0058($sp)            
	or      a2, a0, $zero              ## a2 = 00000000
	lw      s0, 0x0060($sp)            
	sw      $ra, 0x001C($sp)           
	sw      s1, 0x0018($sp)            
	sw      a0, 0x0050($sp)            
	sw      a1, 0x0054($sp)            
	sw      a3, 0x005C($sp)            
	lw      s1, 0x0000(a2)             ## 00000000
	jal     func_80A6B6B8              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      t6, 0x0054($sp)            
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	bne     t6, $at, lbl_80A6C5CC      
	lui     $at, 0x41F0                ## $at = 41F00000
	mtc1    $at, $f4                   ## $f4 = 30.00
	nop
	c.le.s  $f4, $f0                   
	nop
	bc1fl   lbl_80A6C5D0               
	lw      $ra, 0x001C($sp)           
	lh      v0, 0x001C(s0)             ## 0000001C
	addiu   $at, $zero, 0x0003         ## $at = 00000003
	lui     t8, 0xDA38                 ## t8 = DA380000
	beq     v0, $at, lbl_80A6C494      
	addiu   $at, $zero, 0x0004         ## $at = 00000004
	beq     v0, $at, lbl_80A6C4E4      
	lui     t3, 0xDA38                 ## t3 = DA380000
	addiu   $at, $zero, 0x0005         ## $at = 00000005
	beq     v0, $at, lbl_80A6C534      
	lui     t8, 0xDA38                 ## t8 = DA380000
	beq     $zero, $zero, lbl_80A6C584 
	lui     t3, 0xDA38                 ## t3 = DA380000
lbl_80A6C494:
	lw      s0, 0x02D0(s1)             ## 000002D0
	ori     t8, t8, 0x0003             ## t8 = DA380003
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   t7, s0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s1)             ## 000002D0
	sw      t8, 0x0000(s0)             ## 00000000
	jal     func_800AB900              
	sw      s0, 0x0038($sp)            
	lw      a1, 0x0038($sp)            
	lui     t0, 0xDE00                 ## t0 = DE000000
	sw      v0, 0x0004(a1)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t1, 0x0601                 ## t1 = 06010000
	addiu   t1, t1, 0x7028             ## t1 = 06017028
	addiu   t9, s0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s1)             ## 000002D0
	sw      t1, 0x0004(s0)             ## 00000004
	sw      t0, 0x0000(s0)             ## 00000000
	beq     $zero, $zero, lbl_80A6C5D0 
	lw      $ra, 0x001C($sp)           
lbl_80A6C4E4:
	lw      s0, 0x02D0(s1)             ## 000002D0
	ori     t3, t3, 0x0003             ## t3 = 00000003
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   t2, s0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02D0(s1)             ## 000002D0
	sw      t3, 0x0000(s0)             ## 00000000
	jal     func_800AB900              
	sw      s0, 0x0030($sp)            
	lw      a1, 0x0030($sp)            
	lui     t5, 0xDE00                 ## t5 = DE000000
	sw      v0, 0x0004(a1)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t6, 0x0601                 ## t6 = 06010000
	addiu   t6, t6, 0x7170             ## t6 = 06017170
	addiu   t4, s0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02D0(s1)             ## 000002D0
	sw      t6, 0x0004(s0)             ## 00000004
	sw      t5, 0x0000(s0)             ## 00000000
	beq     $zero, $zero, lbl_80A6C5D0 
	lw      $ra, 0x001C($sp)           
lbl_80A6C534:
	lw      s0, 0x02D0(s1)             ## 000002D0
	ori     t8, t8, 0x0003             ## t8 = 00000003
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   t7, s0, 0x0008             ## t7 = 00000008
	sw      t7, 0x02D0(s1)             ## 000002D0
	sw      t8, 0x0000(s0)             ## 00000000
	jal     func_800AB900              
	sw      s0, 0x0028($sp)            
	lw      a1, 0x0028($sp)            
	lui     t0, 0xDE00                 ## t0 = DE000000
	sw      v0, 0x0004(a1)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t1, 0x0601                 ## t1 = 06010000
	addiu   t1, t1, 0x6BE0             ## t1 = 06016BE0
	addiu   t9, s0, 0x0008             ## t9 = 00000008
	sw      t9, 0x02D0(s1)             ## 000002D0
	sw      t1, 0x0004(s0)             ## 00000004
	sw      t0, 0x0000(s0)             ## 00000000
	beq     $zero, $zero, lbl_80A6C5D0 
	lw      $ra, 0x001C($sp)           
lbl_80A6C584:
	lw      s0, 0x02D0(s1)             ## 000002D0
	ori     t3, t3, 0x0003             ## t3 = 00000003
	or      a0, s1, $zero              ## a0 = 00000000
	addiu   t2, s0, 0x0008             ## t2 = 00000008
	sw      t2, 0x02D0(s1)             ## 000002D0
	sw      t3, 0x0000(s0)             ## 00000000
	jal     func_800AB900              
	sw      s0, 0x0020($sp)            
	lw      a1, 0x0020($sp)            
	lui     t5, 0xDE00                 ## t5 = DE000000
	sw      v0, 0x0004(a1)             ## 00000004
	lw      s0, 0x02D0(s1)             ## 000002D0
	lui     t6, 0x0601                 ## t6 = 06010000
	addiu   t6, t6, 0x6CD8             ## t6 = 06016CD8
	addiu   t4, s0, 0x0008             ## t4 = 00000008
	sw      t4, 0x02D0(s1)             ## 000002D0
	sw      t6, 0x0004(s0)             ## 00000004
	sw      t5, 0x0000(s0)             ## 00000000
lbl_80A6C5CC:
	lw      $ra, 0x001C($sp)           
lbl_80A6C5D0:
	lw      s0, 0x0014($sp)            
	lw      s1, 0x0018($sp)            
	jr      $ra                        
	addiu   $sp, $sp, 0x0050           ## $sp = 00000000


func_80A6C5E0:
	addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
	sw      $ra, 0x002C($sp)           
	sw      s0, 0x0028($sp)            
	sw      a0, 0x0058($sp)            
	lw      s0, 0x0000(a1)             ## 00000000
	lw      a0, 0x0058($sp)            
	or      a2, $zero, $zero           ## a2 = 00000000
	jal     func_80022438              
	sw      a1, 0x005C($sp)            
	jal     func_8007E298              
	or      a0, s0, $zero              ## a0 = 00000000
	jal     func_8007E2C0              
	or      a0, s0, $zero              ## a0 = 00000000
	lw      v1, 0x02C0(s0)             ## 000002C0
	lui     t7, 0xDB06                 ## t7 = DB060000
	ori     t7, t7, 0x0020             ## t7 = DB060020
	addiu   t6, v1, 0x0008             ## t6 = 00000008
	sw      t6, 0x02C0(s0)             ## 000002C0
	sw      t7, 0x0000(v1)             ## 00000000
	addiu   t8, $zero, 0x001E          ## t8 = 0000001E
	addiu   t9, $zero, 0x001E          ## t9 = 0000001E
	sw      t9, 0x0014($sp)            
	sw      t8, 0x0010($sp)            
	sw      $zero, 0x0018($sp)         
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x00F5          ## a1 = 000000F5
	addiu   a2, $zero, 0x00E1          ## a2 = 000000E1
	addiu   a3, $zero, 0x009B          ## a3 = 0000009B
	jal     func_80A6B6C4              
	sw      v1, 0x003C($sp)            
	lw      t0, 0x003C($sp)            
	lui     t3, 0xDB06                 ## t3 = DB060000
	ori     t3, t3, 0x0024             ## t3 = DB060024
	sw      v0, 0x0004(t0)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	addiu   t4, $zero, 0x0028          ## t4 = 00000028
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   t2, v1, 0x0008             ## t2 = 00000008
	sw      t2, 0x02C0(s0)             ## 000002C0
	sw      t3, 0x0000(v1)             ## 00000000
	sw      $zero, 0x0018($sp)         
	sw      $zero, 0x0014($sp)         
	sw      t4, 0x0010($sp)            
	addiu   a1, $zero, 0x00FF          ## a1 = 000000FF
	addiu   a2, $zero, 0x0028          ## a2 = 00000028
	or      a3, $zero, $zero           ## a3 = 00000000
	jal     func_80A6B6C4              
	sw      v1, 0x0038($sp)            
	lw      t1, 0x0038($sp)            
	lui     t6, 0xDB06                 ## t6 = DB060000
	ori     t6, t6, 0x0028             ## t6 = DB060028
	sw      v0, 0x0004(t1)             ## 00000004
	lw      v1, 0x02C0(s0)             ## 000002C0
	addiu   t7, $zero, 0x0014          ## t7 = 00000014
	addiu   t8, $zero, 0x0028          ## t8 = 00000028
	addiu   t5, v1, 0x0008             ## t5 = 00000008
	sw      t5, 0x02C0(s0)             ## 000002C0
	sw      t6, 0x0000(v1)             ## 00000000
	addiu   t9, $zero, 0x001E          ## t9 = 0000001E
	sw      t9, 0x0018($sp)            
	sw      t8, 0x0014($sp)            
	sw      t7, 0x0010($sp)            
	or      a0, s0, $zero              ## a0 = 00000000
	addiu   a1, $zero, 0x00FF          ## a1 = 000000FF
	addiu   a2, $zero, 0x00FF          ## a2 = 000000FF
	addiu   a3, $zero, 0x00FF          ## a3 = 000000FF
	jal     func_80A6B6C4              
	sw      v1, 0x0034($sp)            
	lw      t0, 0x0034($sp)            
	lw      t1, 0x0058($sp)            
	lui     t2, %hi(func_80A6C3AC)     ## t2 = 80A70000
	sw      v0, 0x0004(t0)             ## 00000004
	addiu   v1, t1, 0x013C             ## v1 = 0000013C
	lw      a1, 0x0004(v1)             ## 00000140
	lw      a2, 0x0020(v1)             ## 0000015C
	lbu     a3, 0x0002(v1)             ## 0000013E
	lui     t3, %hi(func_80A6C408)     ## t3 = 80A70000
	addiu   t3, t3, %lo(func_80A6C408) ## t3 = 80A6C408
	addiu   t2, t2, %lo(func_80A6C3AC) ## t2 = 80A6C3AC
	sw      t2, 0x0010($sp)            
	sw      t3, 0x0014($sp)            
	sw      t1, 0x0018($sp)            
	jal     func_80089D8C              
	lw      a0, 0x005C($sp)            
	lw      $ra, 0x002C($sp)           
	lw      s0, 0x0028($sp)            
	addiu   $sp, $sp, 0x0058           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6C744:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lw      v0, 0x0198(a0)             ## 00000198
	bltz    v0, lbl_80A6C77C           
	slti    $at, v0, 0x0006            
	beq     $at, $zero, lbl_80A6C77C   
	sll     t6, v0,  2                 
	lui     v1, %hi(var_80A6C8D0)      ## v1 = 80A70000
	addu    v1, v1, t6                 
	lw      v1, %lo(var_80A6C8D0)(v1)  
	beql    v1, $zero, lbl_80A6C780    
	lw      $ra, 0x0014($sp)           
	jalr    $ra, v1                    
	nop
lbl_80A6C77C:
	lw      $ra, 0x0014($sp)           
lbl_80A6C780:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6C78C:
	sw      a0, 0x0000($sp)            
	sw      a1, 0x0004($sp)            
	jr      $ra                        
	nop


func_80A6C79C:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lw      v0, 0x019C(a0)             ## 0000019C
	bltz    v0, lbl_80A6C7D4           
	slti    $at, v0, 0x0003            
	beq     $at, $zero, lbl_80A6C7D4   
	sll     t6, v0,  2                 
	lui     v1, %hi(var_80A6C8E8)      ## v1 = 80A70000
	addu    v1, v1, t6                 
	lw      v1, %lo(var_80A6C8E8)(v1)  
	beql    v1, $zero, lbl_80A6C7D8    
	lw      $ra, 0x0014($sp)           
	jalr    $ra, v1                    
	nop
lbl_80A6C7D4:
	lw      $ra, 0x0014($sp)           
lbl_80A6C7D8:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop


func_80A6C7E4:
	addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
	sw      $ra, 0x0014($sp)           
	lh      v0, 0x001C(a0)             ## 0000001C
	addiu   $at, $zero, 0x0001         ## $at = 00000001
	beq     v0, $zero, lbl_80A6C80C    
	nop
	beq     v0, $at, lbl_80A6C80C      
	addiu   $at, $zero, 0x0002         ## $at = 00000002
	bne     v0, $at, lbl_80A6C81C      
	nop
lbl_80A6C80C:
	jal     func_80A6BAAC              
	nop
	beq     $zero, $zero, lbl_80A6C828 
	lw      $ra, 0x0014($sp)           
lbl_80A6C81C:
	jal     func_80A6C03C              
	nop
	lw      $ra, 0x0014($sp)           
lbl_80A6C828:
	addiu   $sp, $sp, 0x0018           ## $sp = 00000000
	jr      $ra                        
	nop
	nop
	nop
	nop

.section .data

var_80A6C840: .word 0x00000000, 0x00000000, 0x00000000
var_80A6C84C: .word \
0xC1600000, 0x40A00000, 0x40A00000, 0xC1A00000, \
0x41400000, 0x00000000, 0xC0A00000, 0x41200000, \
0xBF800000, 0xC1200000, 0x41000000, 0x41600000, \
0xC0400000, 0x41200000, 0x40E00000, 0xC1200000, \
0x41300000, 0x00000000, 0x41100000, 0x41200000, \
0xC1000000, 0x40800000, 0x41200000, 0x40400000, \
0xC0C00000, 0x41500000, 0xC0A00000, 0x3F800000, \
0x41100000, 0x40400000, 0xC1200000, 0x41100000, \
0x3F800000
var_80A6C8D0: .word func_80A6BD28
.word func_80A6BD48
.word func_80A6BD80
.word func_80A6C330
.word func_80A6C350
.word func_80A6C370
var_80A6C8E8: .word func_80A6C78C
.word func_80A6BEE4
.word func_80A6C5E0
var_80A6C8F4: .word 0x01140400, 0x00000010, 0x01060000, 0x000001A4
.word func_80A6C7E4
.word func_80A6B580
.word func_80A6C744
.word func_80A6C79C
.word 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80A6C920: .word var_80A6BCD0
.word var_80A6BCE0
.word var_80A6BCF4
.word var_80A6BD04
.word lbl_80A6BD0C
.word lbl_80A6BD0C
.word 0x00000000, 0x00000000

